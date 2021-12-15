-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 15, 2021 at 06:25 PM
-- Server version: 8.0.26
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `body`, `parent_id`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New cars', 'about new cars', NULL, 'main', NULL, NULL, NULL, NULL),
(2, 'Used cars', 'about pages used cars', NULL, 'main', NULL, NULL, NULL, NULL),
(3, 'Tires', 'blog about', NULL, 'main', NULL, NULL, NULL, NULL),
(4, 'Audi', 'car about', 1, 'main', NULL, NULL, NULL, NULL),
(7, 'Hyundai', 'About cars body', 1, 'main', NULL, '2021-12-01 18:08:33', '2021-12-01 18:08:33', NULL),
(8, 'Lexus', 'Vacancy us <a href=\"#\">Vacancy tut</a>', 1, 'main', NULL, '2021-12-01 18:16:00', '2021-12-01 18:16:00', NULL),
(10, 'Tesla', 'about Tesla', 1, 'main', NULL, NULL, NULL, NULL),
(11, '2020', 'Описание подержанных автомобилей 2020', 2, NULL, NULL, NULL, NULL, NULL),
(12, '2019', 'Описание подержанных автомобилей 2019', 2, NULL, NULL, NULL, NULL, NULL),
(13, '2010-2018', 'Подержанные авто 2010-218', 2, 'main', NULL, NULL, NULL, NULL),
(14, '2000-2010', 'Описание 200-2010', 2, 'main', NULL, NULL, NULL, NULL),
(15, '1990-2000', 'Описание 1990-2000', 2, 'main', NULL, NULL, NULL, NULL),
(16, 'Volvo', 'about Volvo', 1, 'main', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-12-08 17:41:53', '2021-12-08 17:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'catalog_id', 'text', 'Catalog Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(64, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(66, 9, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 3),
(67, 9, 'catalog_id', 'select_dropdown', 'Catalog Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(68, 9, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 9, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 6),
(70, 9, 'body_small', 'text', 'Body Small', 0, 1, 1, 1, 1, 1, '{}', 7),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(73, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(74, 9, 'product_belongsto_catalog_relationship', 'relationship', 'catalogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Catalog\",\"table\":\"catalogs\",\"type\":\"belongsTo\",\"column\":\"catalog_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(7, 'maintexts', 'maintexts', 'Maintext', 'Maintexts', 'voyager-company', 'App\\Models\\Maintext', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-08 18:00:56', '2021-12-08 18:03:09'),
(9, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-08 18:22:44', '2021-12-08 18:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintexts`
--

CREATE TABLE `maintexts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalog_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `catalog_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Контакты', '+375(29)7639382', 'contact', 1, NULL, NULL, NULL),
(2, 'О нас', 'Покупайте машины у нас', 'about', 2, '2021-11-04 17:11:52', '2021-11-04 17:11:52', NULL),
(3, 'Вакансии', 'Вакансии тут', 'vacancy', 1, NULL, NULL, NULL),
(4, 'Мы на карте', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d75225.01566777422!2d27.5349504!3d53.9000832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sby!4v1638981025732!5m2!1sen!2sby\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'map', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-08 17:41:52', '2021-12-08 17:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-12-08 17:41:52', '2021-12-08 17:41:52', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-12-08 17:41:52', '2021-12-08 17:41:52', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-12-08 17:41:53', '2021-12-08 17:41:53', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-12-08 17:41:53', '2021-12-08 17:41:53', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-12-08 17:41:53', '2021-12-08 17:41:53', 'voyager.pages.index', NULL),
(14, 1, 'Maintexts', '', '_self', 'voyager-company', NULL, NULL, 15, '2021-12-08 18:00:56', '2021-12-08 18:00:56', 'voyager.maintexts.index', NULL),
(15, 1, 'Products', '', '_self', NULL, NULL, NULL, 16, '2021-12-08 18:22:44', '2021-12-08 18:22:44', 'voyager.products.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_04_162100_create_maintexts_table', 1),
(6, '2021_11_24_183003_create_orders_table', 2),
(7, '2021_12_01_162025_create_catalogs_table', 3),
(8, '2016_01_01_000000_add_voyager_user_fields', 4),
(9, '2016_01_01_000000_create_data_types_table', 4),
(10, '2016_05_19_173453_create_menu_table', 4),
(11, '2016_10_21_190000_create_roles_table', 4),
(12, '2016_10_21_190000_create_settings_table', 4),
(13, '2016_11_30_135954_create_permission_table', 4),
(14, '2016_11_30_141208_create_permission_role_table', 4),
(15, '2016_12_26_201236_data_types__add__server_side', 4),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 4),
(17, '2017_01_14_005015_create_translations_table', 4),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 4),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 4),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 4),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 4),
(22, '2017_08_05_000000_add_group_to_settings_table', 4),
(23, '2017_11_26_013050_add_user_role_relationship', 4),
(24, '2017_11_26_015000_create_user_roles_table', 4),
(25, '2018_03_11_000000_add_user_settings', 4),
(26, '2018_03_14_000000_add_details_to_data_types_table', 4),
(27, '2018_03_16_000000_make_settings_value_nullable', 4),
(28, '2016_01_01_000000_create_pages_table', 5),
(29, '2016_01_01_000000_create_posts_table', 5),
(30, '2016_02_15_204651_create_categories_table', 5),
(31, '2017_04_11_000000_alter_post_nullable_fields_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, NULL, '2021-11-24 18:40:33', '2021-11-24 18:40:33'),
(2, 'asdfasdf', 1, NULL, '2021-11-24 18:51:48', '2021-11-24 18:51:48'),
(3, 'asdfasdfasdf', 1, NULL, '2021-11-24 18:51:54', '2021-11-24 18:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-08 17:41:54', '2021-12-08 17:41:54');

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
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(2, 'browse_bread', NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(3, 'browse_database', NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(4, 'browse_media', NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(5, 'browse_compass', NULL, '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(6, 'browse_menus', 'menus', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(7, 'read_menus', 'menus', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(8, 'edit_menus', 'menus', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(9, 'add_menus', 'menus', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(10, 'delete_menus', 'menus', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(11, 'browse_roles', 'roles', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(12, 'read_roles', 'roles', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(13, 'edit_roles', 'roles', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(14, 'add_roles', 'roles', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(15, 'delete_roles', 'roles', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(16, 'browse_users', 'users', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(17, 'read_users', 'users', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(18, 'edit_users', 'users', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(19, 'add_users', 'users', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(20, 'delete_users', 'users', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(21, 'browse_settings', 'settings', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(22, 'read_settings', 'settings', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(23, 'edit_settings', 'settings', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(24, 'add_settings', 'settings', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(25, 'delete_settings', 'settings', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(26, 'browse_categories', 'categories', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(27, 'read_categories', 'categories', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(28, 'edit_categories', 'categories', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(29, 'add_categories', 'categories', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(30, 'delete_categories', 'categories', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(31, 'browse_posts', 'posts', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(32, 'read_posts', 'posts', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(33, 'edit_posts', 'posts', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(34, 'add_posts', 'posts', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(35, 'delete_posts', 'posts', '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(36, 'browse_pages', 'pages', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(37, 'read_pages', 'pages', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(38, 'edit_pages', 'pages', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(39, 'add_pages', 'pages', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(40, 'delete_pages', 'pages', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(41, 'browse_maintexts', 'maintexts', '2021-12-08 18:00:56', '2021-12-08 18:00:56'),
(42, 'read_maintexts', 'maintexts', '2021-12-08 18:00:56', '2021-12-08 18:00:56'),
(43, 'edit_maintexts', 'maintexts', '2021-12-08 18:00:56', '2021-12-08 18:00:56'),
(44, 'add_maintexts', 'maintexts', '2021-12-08 18:00:56', '2021-12-08 18:00:56'),
(45, 'delete_maintexts', 'maintexts', '2021-12-08 18:00:56', '2021-12-08 18:00:56'),
(46, 'browse_products', 'products', '2021-12-08 18:22:44', '2021-12-08 18:22:44'),
(47, 'read_products', 'products', '2021-12-08 18:22:44', '2021-12-08 18:22:44'),
(48, 'edit_products', 'products', '2021-12-08 18:22:44', '2021-12-08 18:22:44'),
(49, 'add_products', 'products', '2021-12-08 18:22:44', '2021-12-08 18:22:44'),
(50, 'delete_products', 'products', '2021-12-08 18:22:44', '2021-12-08 18:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-08 17:41:53', '2021-12-08 17:41:53'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-08 17:41:53', '2021-12-08 17:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `catalog_id` int DEFAULT NULL,
  `picture` tinytext COLLATE utf8mb4_unicode_ci,
  `price` tinytext COLLATE utf8mb4_unicode_ci,
  `body_small` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `body`, `catalog_id`, `picture`, `price`, `body_small`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Продукт номер 1', '<p>Описание продукта</p>', 3, 'products/December2021/KppyEUnoxXtgbDAMrK8y.jpg', '100', 'small body', '2021-12-08 18:30:00', '2021-12-15 14:57:12', NULL),
(2, 'Lexus GS 450h', '<p><span class=\"ILfuVd\"><span class=\"hgKElc\">Марка премиальных автомобилей, производимых японской корпорацией Toyota Motor. Автомобили бренда продаются более чем в 90 странах мира. Lexus присутствует на российском рынке с 2002 года, на 25 января 2021 года у компании более 50 дилеров на территории страны. Автомобили бренда продаются более чем в 90 странах мира. Lexus присутствует на российском рынке с 2002 года, на 25 января 2021 года у компании более 50 дилеров на территории страны.<br /></span></span></p>\r\n<h3 class=\"LC20lb MBeuO DKV0Md\">Lexus - полный каталог моделей, характеристики, отзывы ...</h3>\r\n<p>И сейчас <em>Лексус</em> представляет собой филиал корпорации Toyota Motors Corporation. Основные производственные заводы расположены в Японии.</p>\r\n<p>&nbsp;</p>', 4, 'products/December2021/FUaqff1c8H2M3Ag4aRD6.jpg', '800000', 'марка премиальных автомобилей, производимых японской корпорацией Toyota Motor.', '2021-12-15 15:24:00', '2021-12-15 15:24:37', NULL),
(3, 'GTA 5 Lowriders DLC', '<h3 class=\"LC20lb MBeuO DKV0Md\">Lowriders | GTA Wiki</h3>\r\n<div class=\"IsZvec\">\r\n<div class=\"VwiC3b yXK7lf MUxGbd yDYNvb lyLwlc lEBKkf\" style=\"-webkit-line-clamp: 2;\"><em>GTA Online</em>: <em>Lowriders</em> is a content update for Grand Theft Auto Online and Grand Theft Auto V, exclusive to the Xbox One, PlayStation 4 and PC ports of the</div>\r\n</div>', 7, 'products/December2021/Ly3TpZM1KH6Ogt3vP1pL.jpg', '65584', 'Lowriders is a content update for Grand Theft Auto Online and Grand Theft Auto V, exclusive to the Xbox One, PlayStation 4 and PC ports', '2021-12-15 15:41:34', '2021-12-15 15:41:34', NULL),
(4, 'Hyundai santa fe sport', '<p>Big body for <a href=\"http://localhost:8000/#\">Hyundai santa fe sport</a></p>', 7, 'products/December2021/EAbYCD93RPnMvUrDChFC.jpg', '50000', 'About Hyundai santa fe sport', '2021-12-15 15:43:43', '2021-12-15 15:43:43', NULL),
(5, NULL, '<p>В Lexus LX прекрасно сочетаются дерзость и роскошь, грация и атлетизм. Кроссовер оснащается двумя типами двигателей. Пятиместный Lexus LX 450d - передовым дизельным двигателем V8 с рабочим объемом 4,5 л и двумя турбокомпрессорами. А Lexus LX 570 (вместимостью до 8 человек) - бензиновым двигателем V8 с рабочим объемом 5,7 л, 8-ступенчатой автоматической коробкой передач и двумя или тремя рядами кожаных сидений.</p>', 8, 'products/December2021/phfiA96ACaI7iRdDOlM6.jpg', '50500', 'А Lexus LX 570 (вместимостью до 8 человек) - бензиновым двигателем V8', '2021-12-15 16:07:39', '2021-12-15 16:07:39', NULL),
(6, 'Lexus NX 250', '<p>Описание Lexus NX 250</p>', 8, 'products/December2021/U02B84FevVYUZtg11qbU.jpg', '50600', 'Small body description for Lexus 250', '2021-12-15 16:09:45', '2021-12-15 16:09:45', NULL),
(7, 'LEXUS UX', '<p>Начиная со смелой передней части с фирменной решеткой радиатора и заканчивая спортивным силуэтом и уникальным дизайном задней части, абсолютно новый Lexus UX формирует новый подход к восприятию кроссовера. Салон новой модели не менее прекрасен: в основе дизайна &ndash; японская архитектурная концепция Энгава, согласно которой границы между внутренним и внешним пространством как будто не существуют. Почувствуйте себя как дома в роскошной и комфортной для водителя обстановке, предлагающей открытость наряду с безопасностью.</p>', 8, 'products/December2021/8Y5Ib639KltAPLdl4qkX.jpg', '50600', 'Описание lexus', '2021-12-15 16:35:05', '2021-12-15 16:35:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-12-08 17:41:52', '2021-12-08 17:41:52'),
(2, 'user', 'Normal User', '2021-12-08 17:41:52', '2021-12-08 17:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-08 17:41:54', '2021-12-08 17:41:54'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-08 17:41:54', '2021-12-08 17:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mikhalkevich', 'mikhalkevich@ya.ru', 'users/default.png', NULL, '$2y$10$./fx4KTPmA8p.nKOia8B9upVNbH0eB5EE/oEvdajONrsmVnnMEq4e', NULL, NULL, '2021-11-24 18:03:35', '2021-11-24 18:03:35'),
(2, 1, 'Admin', 'admin@ya.ru', 'users/default.png', NULL, '$2y$10$/iSQxf93MwqmWYyfvXs6hu9Ot5dVLcPVQjLrfQlwgXGrVqY.SfaCW', NULL, NULL, '2021-12-15 17:31:53', '2021-12-15 17:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
