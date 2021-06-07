-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2020 at 10:43 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventario_bibloteca`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

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
(25, 'Can add formulario', 7, 'add_formulario'),
(26, 'Can change formulario', 7, 'change_formulario'),
(27, 'Can delete formulario', 7, 'delete_formulario'),
(28, 'Can view formulario', 7, 'view_formulario'),
(29, 'Can add usuario', 8, 'add_usuario'),
(30, 'Can change usuario', 8, 'change_usuario'),
(31, 'Can delete usuario', 8, 'delete_usuario'),
(32, 'Can view usuario', 8, 'view_usuario'),
(33, 'Can add concepto', 9, 'add_concepto'),
(34, 'Can change concepto', 9, 'change_concepto'),
(35, 'Can delete concepto', 9, 'delete_concepto'),
(36, 'Can view concepto', 9, 'view_concepto'),
(37, 'Can add formulario', 10, 'add_formulario'),
(38, 'Can change formulario', 10, 'change_formulario'),
(39, 'Can delete formulario', 10, 'delete_formulario'),
(40, 'Can view formulario', 10, 'view_formulario'),
(41, 'Can add valores_conceptos', 11, 'add_valores_conceptos'),
(42, 'Can change valores_conceptos', 11, 'change_valores_conceptos'),
(43, 'Can delete valores_conceptos', 11, 'delete_valores_conceptos'),
(44, 'Can view valores_conceptos', 11, 'view_valores_conceptos');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$MrFnLbHNe8GG$eBGodGqk0VFL0Ktr8D5pxHVLYcXlTYPPQSieNXWYLlQ=', '2019-10-15 04:25:28.755052', 1, 'root', '', '', 'merrazuriz.ing@gmail.com', 1, 1, '2019-10-12 14:54:25.843425'),
(2, 'pbkdf2_sha256$150000$Kzyf9NPp2ING$g32XRyxPwJVSH1wBk8bsVsabVqHjlcXs8EKujRfQnIw=', '2020-03-11 17:04:51.792443', 1, 'rotten', '', '', 'bl4ck0t@gmail.com', 1, 1, '2020-03-11 17:04:33.253523');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE latin1_spanish_ci,
  `object_repr` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE latin1_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-11 17:05:37.585720', '1', 'hollaa', 1, '[{"added": {}}]', 10, 2),
(2, '2020-03-11 18:11:02.888527', '2', 'Manuel pereira', 1, '[{"added": {}}]', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'gestion_inventario', 'concepto'),
(7, 'gestion_inventario', 'formulario'),
(8, 'gestion_inventario', 'usuario'),
(10, 'inventario', 'formulario'),
(11, 'inventario', 'valores_conceptos'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-12 14:53:37.306769'),
(2, 'auth', '0001_initial', '2019-10-12 14:53:37.794011'),
(3, 'admin', '0001_initial', '2019-10-12 14:53:39.134053'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-12 14:53:39.360739'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-12 14:53:39.380050'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-12 14:53:39.611471'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-12 14:53:39.733321'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-12 14:53:39.855324'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-12 14:53:39.898767'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-12 14:53:40.021443'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-12 14:53:40.043699'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-12 14:53:40.086524'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-12 14:53:40.209590'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-12 14:53:40.343420'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-12 14:53:40.473652'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-12 14:53:40.494206'),
(17, 'sessions', '0001_initial', '2019-10-12 14:53:40.552939'),
(18, 'gestion_inventario', '0001_initial', '2019-10-13 23:54:24.268737'),
(19, 'gestion_inventario', '0002_auto_20191014_0028', '2019-10-14 00:28:55.974428'),
(20, 'gestion_inventario', '0003_auto_20191015_0325', '2019-10-15 03:26:02.795700'),
(21, 'gestion_inventario', '0004_auto_20191015_0628', '2019-10-15 06:29:01.234526'),
(22, 'gestion_inventario', '0005_auto_20191015_0709', '2019-10-15 07:09:29.409337'),
(23, 'inventario', '0001_initial', '2020-03-11 17:01:22.190664'),
(24, 'inventario', '0002_auto_20200311_1813', '2020-03-11 18:13:29.541940'),
(25, 'inventario', '0003_auto_20200312_1343', '2020-03-12 13:43:34.378083'),
(26, 'inventario', '0004_auto_20200327_0645', '2020-03-27 06:45:59.296940'),
(27, 'inventario', '0005_auto_20200327_0656', '2020-03-27 06:56:27.983651'),
(28, 'inventario', '0006_auto_20200327_0658', '2020-03-27 06:58:33.576970'),
(29, 'inventario', '0007_auto_20200327_0737', '2020-03-27 07:37:47.474561'),
(30, 'inventario', '0008_auto_20200327_0837', '2020-03-27 08:37:53.005983');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `session_data` longtext COLLATE latin1_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('55ryjs7gixlscj8a51ay855hhityiamv', 'NWE5YjFhNTIxNDliY2MyODlmOGM0Y2I5NmFlNWQyYThlOTc0MzRlYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZTU2YTdiNjc4OTg3ODlhMWQwYjJiOTdjYmE0Y2Y3ZDQ0N2U5MjE2In0=', '2020-03-25 17:04:51.833931'),
('5yrgg816hucbuihm66lk0e5ef004lbkh', 'YWM0Y2U5ODg0MmIyODdjNjBlMjFiOGY5ZWI5ZDI4ZTgwYzk5ZjRkMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNGZkZDlmZWY0MDU5Zjg3ZDY0OTE1ODI3ZTA1MTAxYmFhZjViZDMwIn0=', '2019-10-29 04:25:28.805491');

-- --------------------------------------------------------

--
-- Table structure for table `gestion_inventario_usuario`
--

CREATE TABLE IF NOT EXISTS `gestion_inventario_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `cargo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `contrasena` varchar(30) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `gestion_inventario_usuario`
--

INSERT INTO `gestion_inventario_usuario` (`id`, `nombre`, `cargo`, `email`, `contrasena`) VALUES
(1, 'Matias', 'Jefe de bibloteca', 'email@gmail.com', '123123'),
(2, 'Juan', 'Director de bibloteca', 'yo@gmail.com', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `inventario_formulario`
--

CREATE TABLE IF NOT EXISTS `inventario_formulario` (
  `id` int(11) NOT NULL,
  `nombre_responsable` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `bibloteca` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `fecha_termino` datetime(6) DEFAULT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `id_usuario_id` int(11) NOT NULL,
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `inventario_formulario`
--

INSERT INTO `inventario_formulario` (`id`, `nombre_responsable`, `bibloteca`, `fecha_inicio`, `fecha_termino`, `fecha_publicacion`, `id_usuario_id`, `disponible`) VALUES
(1, 'hollaa', 'mi casa', '2020-03-11 00:00:00.000000', '2020-03-09 12:00:00.000000', '2020-03-12 12:00:00.000000', 2, 1),
(2, 'Manuel pereira', 'Chillan', '2020-03-09 06:00:00.000000', '2020-03-09 06:00:00.000000', '2020-03-11 18:10:03.000000', 2, 1),
(7, 'porfin', 'porfin', NULL, NULL, '2020-03-27 07:52:51.268411', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventario_valores_conceptos`
--

CREATE TABLE IF NOT EXISTS `inventario_valores_conceptos` (
  `id` int(11) NOT NULL,
  `resp` int(11) NOT NULL,
  `cd` int(11) NOT NULL,
  `libros` int(11) NOT NULL,
  `ssue` int(11) NOT NULL,
  `nombre_concepto` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_formulario_id` int(11) NOT NULL,
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `inventario_valores_conceptos`
--

INSERT INTO `inventario_valores_conceptos` (`id`, `resp`, `cd`, `libros`, `ssue`, `nombre_concepto`, `id_formulario_id`, `disponible`) VALUES
(1, 11, 22, 33, 44, 'Total de items morosos academicos', 1, 1),
(2, 11, 11, 11, 11, 'Total de items en moroso alumnos', 1, 1),
(12, 20, 40, 50, 50, 'Items devueltos', 2, 1),
(13, 0, 0, 100, 0, 'Item robados', 1, 1),
(14, 4, 4, 4, 4, '5456', 7, 0);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `gestion_inventario_usuario`
--
ALTER TABLE `gestion_inventario_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario_formulario`
--
ALTER TABLE `inventario_formulario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_formulario_id_usuario_id_1b693687_fk_auth_user_id` (`id_usuario_id`);

--
-- Indexes for table `inventario_valores_conceptos`
--
ALTER TABLE `inventario_valores_conceptos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_valores_conceptos_id_formulario_id_30e00feb` (`id_formulario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `gestion_inventario_usuario`
--
ALTER TABLE `gestion_inventario_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventario_formulario`
--
ALTER TABLE `inventario_formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `inventario_valores_conceptos`
--
ALTER TABLE `inventario_valores_conceptos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `inventario_formulario`
--
ALTER TABLE `inventario_formulario`
  ADD CONSTRAINT `inventario_formulario_id_usuario_id_1b693687_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `inventario_valores_conceptos`
--
ALTER TABLE `inventario_valores_conceptos`
  ADD CONSTRAINT `inventario_valores_c_id_formulario_id_30e00feb_fk_inventari` FOREIGN KEY (`id_formulario_id`) REFERENCES `inventario_formulario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
