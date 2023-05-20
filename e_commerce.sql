-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 09:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `u_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`u_id`, `username`, `password`, `email`) VALUES
(1, 'midhunprtz', '123', 'midhunprtz@gmail.com'),
(7, 'leo', '123', 'leo@gmail.com'),
(8, 'midhun', '123', 'midhun@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add login', 8, 'add_login'),
(30, 'Can change login', 8, 'change_login'),
(31, 'Can delete login', 8, 'delete_login'),
(32, 'Can view login', 8, 'view_login'),
(33, 'Can add accounts', 9, 'add_accounts'),
(34, 'Can change accounts', 9, 'change_accounts'),
(35, 'Can delete accounts', 9, 'delete_accounts'),
(36, 'Can view accounts', 9, 'view_accounts'),
(37, 'Can add products', 10, 'add_products'),
(38, 'Can change products', 10, 'change_products'),
(39, 'Can delete products', 10, 'delete_products'),
(40, 'Can view products', 10, 'view_products'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$3uqaBVGAlCZ4nPl86ZlxLM$E3zh89QySWBHL9LrWJSBo8eLM7XL8pVR6Q0IEuDq1qw=', '2023-05-16 17:28:26.601403', 1, 'admin', '', '', 'midhunprtz@gmail.com', 1, 1, '2023-05-16 17:26:44.582677'),
(2, 'pbkdf2_sha256$600000$19ImT4pJaIscv89rBnfvXn$r5YRNGP3Db+kdsa6KYQIPM61IqE3a8s55aMBJHwPTnI=', '2023-05-18 10:15:46.859732', 1, 'false', '', '', '', 1, 1, '2023-05-18 10:15:29.893789');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `u_id`, `total`) VALUES
(1, 1, 43),
(7, 7, 36),
(8, 8, 37);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cartitem_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`cartitem_id`, `c_id`, `p_id`, `quantity`) VALUES
(39, 1, 1, 1),
(40, 7, 2, 1),
(41, 8, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-18 11:27:10.292082', '1', 'Products object (1)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(2, '2023-05-18 11:27:17.703738', '2', 'Products object (2)', 2, '[{\"changed\": {\"fields\": [\"P name\", \"P image\"]}}]', 10, 2),
(3, '2023-05-18 11:27:25.664577', '3', 'Products object (3)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(4, '2023-05-18 11:27:37.161890', '4', 'Products object (4)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(5, '2023-05-18 11:27:44.784448', '5', 'Products object (5)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(6, '2023-05-18 11:27:50.163718', '6', 'Products object (6)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(7, '2023-05-18 11:27:55.097042', '7', 'Products object (7)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(8, '2023-05-18 11:28:00.247410', '8', 'Products object (8)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(9, '2023-05-18 11:53:28.514055', '1', 'Products object (1)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(10, '2023-05-18 11:55:39.851720', '4', 'Products object (4)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(11, '2023-05-18 11:56:09.476071', '4', 'Products object (4)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(12, '2023-05-18 12:00:48.158567', '1', 'Products object (1)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(13, '2023-05-18 12:00:53.496465', '2', 'Products object (2)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(14, '2023-05-18 12:01:00.158688', '3', 'Products object (3)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(15, '2023-05-18 12:01:05.591920', '4', 'Products object (4)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(16, '2023-05-18 12:01:10.294021', '5', 'Products object (5)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(17, '2023-05-18 12:01:16.746093', '6', 'Products object (6)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(18, '2023-05-18 12:01:24.380784', '7', 'Products object (7)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(19, '2023-05-18 12:01:29.334744', '8', 'Products object (8)', 2, '[{\"changed\": {\"fields\": [\"P image\"]}}]', 10, 2),
(20, '2023-05-18 14:40:24.408446', '2', 'Cart object (2)', 2, '[{\"changed\": {\"fields\": [\"P\"]}}]', 11, 2),
(21, '2023-05-18 14:57:33.745240', '2', 'Cart object (2)', 2, '[]', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'accounts', 'accounts'),
(7, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'cart', 'cart'),
(5, 'contenttypes', 'contenttype'),
(8, 'login', 'login'),
(10, 'products', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2023-05-16 14:42:43.928514'),
(2, 'accounts', '0002_delete_user', '2023-05-16 14:42:43.943517'),
(3, 'accounts', '0003_initial', '2023-05-16 14:42:43.955863'),
(4, 'accounts', '0004_rename_person_accounts', '2023-05-16 14:42:43.964473'),
(5, 'accounts', '0005_user_delete_accounts', '2023-05-16 14:42:43.981497'),
(6, 'accounts', '0006_delete_user', '2023-05-16 14:42:43.988549'),
(7, 'contenttypes', '0001_initial', '2023-05-16 14:42:44.018546'),
(8, 'auth', '0001_initial', '2023-05-16 14:42:44.400067'),
(9, 'admin', '0001_initial', '2023-05-16 14:42:44.507404'),
(10, 'admin', '0002_logentry_remove_auto_add', '2023-05-16 14:42:44.516474'),
(11, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-16 14:42:44.523477'),
(12, 'contenttypes', '0002_remove_content_type_name', '2023-05-16 14:42:44.582440'),
(13, 'auth', '0002_alter_permission_name_max_length', '2023-05-16 14:42:44.644529'),
(14, 'auth', '0003_alter_user_email_max_length', '2023-05-16 14:42:44.661727'),
(15, 'auth', '0004_alter_user_username_opts', '2023-05-16 14:42:44.669366'),
(16, 'auth', '0005_alter_user_last_login_null', '2023-05-16 14:42:44.714398'),
(17, 'auth', '0006_require_contenttypes_0002', '2023-05-16 14:42:44.717395'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2023-05-16 14:42:44.726167'),
(19, 'auth', '0008_alter_user_username_max_length', '2023-05-16 14:42:44.748461'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2023-05-16 14:42:44.767609'),
(21, 'auth', '0010_alter_group_name_max_length', '2023-05-16 14:42:44.784680'),
(22, 'auth', '0011_update_proxy_permissions', '2023-05-16 14:42:44.794447'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2023-05-16 14:42:44.812476'),
(24, 'sessions', '0001_initial', '2023-05-16 14:42:44.839625'),
(25, 'accounts', '0007_initial', '2023-05-16 14:45:13.295903'),
(26, 'accounts', '0008_accounts_delete_user', '2023-05-16 15:01:07.018287'),
(27, 'login', '0001_initial', '2023-05-16 15:01:07.021104'),
(28, 'accounts', '0009_alter_accounts_table', '2023-05-16 15:41:37.235195'),
(29, 'products', '0001_initial', '2023-05-16 17:16:52.519287'),
(30, 'cart', '0001_initial', '2023-05-17 11:32:42.067435'),
(31, 'cart', '0002_alter_cart_options', '2023-05-18 14:08:16.836279'),
(32, 'cart', '0003_remove_cart_quantity_remove_cart_total_cart_accounts_and_more', '2023-05-18 14:13:09.269980');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5afuub5vu0bd9ag6v6w4tcmk9g6wlevz', '.eJxVjsEOgjAQRP-lZ9O0tGzBo3e-odludy1qIKFwMv67kHDQ67yZl3mriNta4lZ5iWNWV2XV5TdLSE-eDpAfON1nTfO0LmPSR0WftOphzvy6nd0_QcFa9nViSc4xZTDBtxLI294D9M5iEG8gi5BpkCxB1_TGsoNgMLedowTCsku341_z-QK36zpS:1pzFb6:sh9qaeSqp_yN8EsJE5b6fuq29NIZdNN4z-ceCyOp4XQ', '2023-05-31 11:45:36.115573'),
('gdi4785n707t8au6i9r06ym1mdn40099', 'eyJ1aWQiOjF9:1pzILg:2yuiIBGnT7AvGuaMuovAQjmbRskW6ti1NYwQSYVvBNo', '2023-05-31 14:41:52.238518'),
('mdfu41svbk83pk408vwa5kbftxfz6k03', 'eyJ1aWQiOjF9:1q0DoK:dihPIrHc898hqIA8VzE3lxrFhh2m8zbeJA2Wo2EXd7c', '2023-06-03 04:03:16.032956'),
('u3urcnwzbp9424vt5ykfah1lbelt5uq3', '.eJxVjLsOAiEUBf-F2hDeD0t7v2Fz4YKsGkiWpTL-u5Jss-3MnPMhY0VydReywNjLMnralkmIICcWIL5SnQKfUB-Nxlb3bQ10JvSwnd4bpvftaE8HBXr5r0FBDFIzESy3AWxwRrrsERm3SjJmEufMaUBUOWPSzHPtjY7KWu4ECPL9AVU2OVo:1q0GyQ:hsG3_yKTM8UBIPW70trxFXgXRr9kb37KwNOtoix_AWc', '2023-06-03 07:25:54.297056');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `username`, `password`, `u_id`, `type`) VALUES
(1, 'midhunprtz', '123', 1, 'user'),
(7, 'leo', '123', 7, 'user'),
(8, 'midhun', '123', 8, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(10) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_price`, `p_image`) VALUES
(1, 'Parle Kaccha Mango Bite', 43, 'product_images/kacha.jpg'),
(2, 'Candyman Eclairs', 36, 'product_images/candyman.jpg'),
(3, 'Parle Mango Bite', 37, 'product_images/mango-bite.jpg'),
(4, 'PARLE Melody Chocolaty', 85, 'product_images/melody_rQ8hrpW.jpg'),
(5, 'Cadbury 5 Star', 108, 'product_images/5Star.jpg'),
(6, 'BRITANNIA Little Hearts', 25, 'product_images/little-hearts.jpg'),
(7, 'PARLE Wafers', 23, 'product_images/parles.jpg'),
(8, 'KURKURE Puffcorn', 19, 'product_images/puffcorn.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cartitem_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cartitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
