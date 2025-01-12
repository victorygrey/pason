-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 02:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pason`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `document_id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'vxq8e5yzeusibcych2vkt3ac', 'About the strapi blog', '2024-12-08 14:47:56.836000', '2024-12-08 14:47:56.836000', '2024-12-08 14:47:56.817000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `abouts_cmps`
--

CREATE TABLE `abouts_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts_cmps`
--

INSERT INTO `abouts_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 6, 'shared.quote', 'blocks', NULL),
(2, 1, 11, 'shared.rich-text', 'blocks', NULL),
(3, 1, 6, 'shared.media', 'blocks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'plpnlybsnvj9n3h1ka9xkvjn', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-12-08 14:47:48.153000', '2024-12-08 14:47:48.153000', '2024-12-08 14:47:48.154000', NULL, NULL, NULL),
(5, 'tfuif95x40j1hde0a0gplp0y', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-08 14:47:48.196000', '2024-12-08 14:47:48.196000', '2024-12-08 14:47:48.196000', NULL, NULL, NULL),
(6, 'ee2v7randyjzm7qxn5vfc6wm', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-12-08 14:47:48.206000', '2024-12-08 14:47:48.206000', '2024-12-08 14:47:48.206000', NULL, NULL, NULL),
(10, 'orqthbqlq7qox6y4kz4z0vfc', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-08 14:47:48.247000', '2024-12-08 14:47:48.247000', '2024-12-08 14:47:48.247000', NULL, NULL, NULL),
(11, 'p49csfcz38eu6rt92n965stt', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-12-08 14:47:48.255000', '2024-12-08 14:47:48.255000', '2024-12-08 14:47:48.256000', NULL, NULL, NULL),
(15, 'd7h5qre78hxrx4nmfi09xz2f', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-08 14:47:48.284000', '2024-12-08 14:47:48.284000', '2024-12-08 14:47:48.284000', NULL, NULL, NULL),
(16, 'sl59unb1fs22uakld1oterwn', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2024-12-08 14:47:48.306000', '2024-12-08 14:47:48.306000', '2024-12-08 14:47:48.306000', NULL, NULL, NULL),
(20, 'i4k62ad4o37x6nb3pusj27ij', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-12-08 14:47:48.348000', '2024-12-08 14:47:48.348000', '2024-12-08 14:47:48.349000', NULL, NULL, NULL),
(21, 'rzgvjcv0zydsi5839i7lfe18', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2024-12-08 14:47:48.357000', '2024-12-08 14:47:48.357000', '2024-12-08 14:47:48.358000', NULL, NULL, NULL),
(25, 's5e2u0gi2k4pj0m009s1241o', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2024-12-08 14:47:48.393000', '2024-12-08 14:47:48.393000', '2024-12-08 14:47:48.393000', NULL, NULL, NULL),
(26, 'x1n6u6k8xujjpzxuypmtlhdg', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.408000', '2024-12-08 14:47:48.408000', '2024-12-08 14:47:48.408000', NULL, NULL, NULL),
(27, 'h9xv14kb0q5x76qk46mltry4', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.416000', '2024-12-08 14:47:48.416000', '2024-12-08 14:47:48.416000', NULL, NULL, NULL),
(28, 'vl0zjn18iz33pkkk8ket5bho', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.424000', '2024-12-08 14:47:48.424000', '2024-12-08 14:47:48.424000', NULL, NULL, NULL),
(29, 'q33eh3ckmbq3sbhv6nuf09re', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.432000', '2024-12-08 14:47:48.432000', '2024-12-08 14:47:48.432000', NULL, NULL, NULL),
(30, 'ie555m1ue9yhiqf9ro23xp2k', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.441000', '2024-12-08 14:47:48.441000', '2024-12-08 14:47:48.441000', NULL, NULL, NULL),
(31, 'al2an6fjrablybmeznx0gm3t', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.449000', '2024-12-08 14:47:48.449000', '2024-12-08 14:47:48.449000', NULL, NULL, NULL),
(32, 'c1s1eewofh1eq5m59xnxdk9z', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.464000', '2024-12-08 14:47:48.464000', '2024-12-08 14:47:48.464000', NULL, NULL, NULL),
(36, 'tf9rm80nwxkh5iepdaki50uo', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.495000', '2024-12-08 14:47:48.495000', '2024-12-08 14:47:48.496000', NULL, NULL, NULL),
(37, 'dnibj0kzd9wgh68dma1avik4', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.503000', '2024-12-08 14:47:48.503000', '2024-12-08 14:47:48.504000', NULL, NULL, NULL),
(41, 'v96vigqdtmhczdnnac30wcdc', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.544000', '2024-12-08 14:47:48.544000', '2024-12-08 14:47:48.545000', NULL, NULL, NULL),
(42, 'dymyf6k45ioufye4b4r07mby', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.554000', '2024-12-08 14:47:48.554000', '2024-12-08 14:47:48.554000', NULL, NULL, NULL),
(46, 'i7jg7csyxyn93xz3psilwwzt', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.587000', '2024-12-08 14:47:48.587000', '2024-12-08 14:47:48.587000', NULL, NULL, NULL),
(47, 'g3ouhw67zge9y4lkn3slpnrk', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.595000', '2024-12-08 14:47:48.595000', '2024-12-08 14:47:48.595000', NULL, NULL, NULL),
(51, 's7m79nwffc1q0vxfjqzpvr6x', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.631000', '2024-12-08 14:47:48.631000', '2024-12-08 14:47:48.631000', NULL, NULL, NULL),
(52, 'wwpw9ipmtjaosyuuzkfzd92n', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.645000', '2024-12-08 14:47:48.645000', '2024-12-08 14:47:48.645000', NULL, NULL, NULL),
(53, 'm3io40s3p6ivayyeoeh3kl98', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.653000', '2024-12-08 14:47:48.653000', '2024-12-08 14:47:48.653000', NULL, NULL, NULL),
(54, 'tntppgx5i5ivq7280ts53n11', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.661000', '2024-12-08 14:47:48.661000', '2024-12-08 14:47:48.661000', NULL, NULL, NULL),
(55, 'rfnugtxrpamrdc9tb7xa4v25', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-12-08 14:47:48.669000', '2024-12-08 14:47:48.669000', '2024-12-08 14:47:48.669000', NULL, NULL, NULL),
(56, 'rnpggjszibzeiqku2edzaaja', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.676000', '2024-12-08 14:47:48.676000', '2024-12-08 14:47:48.676000', NULL, NULL, NULL),
(57, 'mrgubr8tao9o22ga6rab0bry', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-12-08 14:47:48.686000', '2024-12-08 14:47:48.686000', '2024-12-08 14:47:48.686000', NULL, NULL, NULL),
(58, 'l8kcro6pi94lz32e2n5q8ton', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2024-12-08 14:47:48.754000', '2024-12-08 14:47:48.754000', '2024-12-08 14:47:48.755000', NULL, NULL, NULL),
(59, 'gy5eg5h70fcodhwwib8jqdxr', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-12-08 14:47:48.763000', '2024-12-08 14:47:48.763000', '2024-12-08 14:47:48.763000', NULL, NULL, NULL),
(63, 'u5wz500jtp94vvi5l5shddcm', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-08 14:47:48.796000', '2024-12-08 14:47:48.796000', '2024-12-08 14:47:48.796000', NULL, NULL, NULL),
(64, 'yhjajknd7p0aik0l3dyord9b', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2024-12-08 14:47:48.804000', '2024-12-08 14:47:48.804000', '2024-12-08 14:47:48.805000', NULL, NULL, NULL),
(65, 'wwfladoj060o8s5efi2028kv', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-12-08 14:47:48.813000', '2024-12-08 14:47:48.813000', '2024-12-08 14:47:48.813000', NULL, NULL, NULL),
(69, 'c3f4r8olpv5w01etdywv12eu', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-08 14:47:48.851000', '2024-12-08 14:47:48.851000', '2024-12-08 14:47:48.851000', NULL, NULL, NULL),
(70, 'rebcfa6e5rtaywsmz4w2cj3t', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2024-12-08 14:47:48.861000', '2024-12-08 14:47:48.861000', '2024-12-08 14:47:48.861000', NULL, NULL, NULL),
(71, 'dapni28rhqbjww4bwszq3tdx', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-12-08 14:47:48.870000', '2024-12-08 14:47:48.870000', '2024-12-08 14:47:48.870000', NULL, NULL, NULL),
(75, 'mnxvsyznq1aom0idiizezhne', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-12-08 14:47:48.907000', '2024-12-08 14:47:48.907000', '2024-12-08 14:47:48.907000', NULL, NULL, NULL),
(76, 'nlb89rg84b1amin8gqjefd88', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-12-08 14:47:48.917000', '2024-12-08 14:47:48.917000', '2024-12-08 14:47:48.918000', NULL, NULL, NULL),
(77, 'elevco4x8i29pecetj347p6q', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2024-12-08 14:47:48.927000', '2024-12-08 14:47:48.927000', '2024-12-08 14:47:48.927000', NULL, NULL, NULL),
(81, 'dfyds3uuqaml37542v47i1jt', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-12-08 14:47:48.966000', '2024-12-08 14:47:48.966000', '2024-12-08 14:47:48.967000', NULL, NULL, NULL),
(82, 'i3iunmkyvg02sieq7a5ibvim', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-12-08 14:47:48.975000', '2024-12-08 14:47:48.975000', '2024-12-08 14:47:48.975000', NULL, NULL, NULL),
(83, 'oye1qyqt6fjk1tk266sahe6m', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2024-12-08 14:47:48.985000', '2024-12-08 14:47:48.985000', '2024-12-08 14:47:48.985000', NULL, NULL, NULL),
(87, 'xyw9wqddfxkt4j3uyzbvdgkj', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2024-12-08 14:47:49.026000', '2024-12-08 14:47:49.026000', '2024-12-08 14:47:49.026000', NULL, NULL, NULL),
(88, 'dzabetgf9ymke5my1skthqxy', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.035000', '2024-12-08 14:47:49.035000', '2024-12-08 14:47:49.035000', NULL, NULL, NULL),
(89, 'z4p05rotfh6pxtv97fnofhkn', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.044000', '2024-12-08 14:47:49.044000', '2024-12-08 14:47:49.044000', NULL, NULL, NULL),
(90, 'xrjj3ks5pg8a5drx8qudhwno', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.054000', '2024-12-08 14:47:49.054000', '2024-12-08 14:47:49.054000', NULL, NULL, NULL),
(91, 'ha1dwpetx5p5ao5bfn2ra8hk', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.063000', '2024-12-08 14:47:49.063000', '2024-12-08 14:47:49.063000', NULL, NULL, NULL),
(92, 'fq6fvblx0dr3o1ck8mh82wey', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.072000', '2024-12-08 14:47:49.072000', '2024-12-08 14:47:49.072000', NULL, NULL, NULL),
(93, 'm7u6qkrdkqj5lhyepo8dyodn', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.083000', '2024-12-08 14:47:49.083000', '2024-12-08 14:47:49.083000', NULL, NULL, NULL),
(94, 'q4olcsljq4y3zw78s53ktqb8', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.092000', '2024-12-08 14:47:49.092000', '2024-12-08 14:47:49.093000', NULL, NULL, NULL),
(95, 'agpn5fqtq8jiasasypu9coib', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.103000', '2024-12-08 14:47:49.103000', '2024-12-08 14:47:49.103000', NULL, NULL, NULL),
(96, 'io85z3g674fom8c124q1pm94', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.112000', '2024-12-08 14:47:49.112000', '2024-12-08 14:47:49.113000', NULL, NULL, NULL),
(97, 'j1ztt2mn2r8op5obbfztsrgl', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.122000', '2024-12-08 14:47:49.122000', '2024-12-08 14:47:49.122000', NULL, NULL, NULL),
(98, 'j8fgds561wq5wztkp0sdcuct', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.132000', '2024-12-08 14:47:49.132000', '2024-12-08 14:47:49.132000', NULL, NULL, NULL),
(99, 'vrhh9w807g5m8p31c9igc725', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.141000', '2024-12-08 14:47:49.141000', '2024-12-08 14:47:49.142000', NULL, NULL, NULL),
(100, 'wb05xnaen666jul31is53nap', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.154000', '2024-12-08 14:47:49.154000', '2024-12-08 14:47:49.155000', NULL, NULL, NULL),
(101, 'vsn93rvq9df02775b8e36b1s', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.164000', '2024-12-08 14:47:49.164000', '2024-12-08 14:47:49.164000', NULL, NULL, NULL),
(102, 'xvbdhtkam5s7eau5arnivm7m', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.173000', '2024-12-08 14:47:49.173000', '2024-12-08 14:47:49.173000', NULL, NULL, NULL),
(103, 'v1zv1ed08awb58no41mkdusu', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.184000', '2024-12-08 14:47:49.184000', '2024-12-08 14:47:49.184000', NULL, NULL, NULL),
(104, 'krpf365b4iwq2m2eu9l9jr3a', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.194000', '2024-12-08 14:47:49.194000', '2024-12-08 14:47:49.195000', NULL, NULL, NULL),
(105, 'zd0dgucfzj4llj6cf0tunsm5', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.205000', '2024-12-08 14:47:49.205000', '2024-12-08 14:47:49.205000', NULL, NULL, NULL),
(106, 'ey2xrhl3ch497d1dn3wtf7jt', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.213000', '2024-12-08 14:47:49.213000', '2024-12-08 14:47:49.213000', NULL, NULL, NULL),
(107, 'z1fapqt8i0s0kics7f4peemw', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.221000', '2024-12-08 14:47:49.221000', '2024-12-08 14:47:49.221000', NULL, NULL, NULL),
(108, 'mszt7o3xm023pxjmnpgxia3j', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.228000', '2024-12-08 14:47:49.228000', '2024-12-08 14:47:49.228000', NULL, NULL, NULL),
(109, 'v4it31khyd0v7wum0fbzecn8', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.237000', '2024-12-08 14:47:49.237000', '2024-12-08 14:47:49.237000', NULL, NULL, NULL),
(110, 'n8yl9w7bw7wrxllqygtgefct', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.245000', '2024-12-08 14:47:49.245000', '2024-12-08 14:47:49.245000', NULL, NULL, NULL),
(111, 'k9pwbtu8h4sh2ep5vx3jolts', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.253000', '2024-12-08 14:47:49.253000', '2024-12-08 14:47:49.253000', NULL, NULL, NULL),
(112, 'c2v5rtqvnrf6dhe0i7szgh7r', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.262000', '2024-12-08 14:47:49.262000', '2024-12-08 14:47:49.262000', NULL, NULL, NULL),
(113, 'vxc83kzsc91x1n02xxty97mo', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.270000', '2024-12-08 14:47:49.270000', '2024-12-08 14:47:49.270000', NULL, NULL, NULL),
(114, 'eeb3t2n810998gp3yjdjlihl', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.278000', '2024-12-08 14:47:49.278000', '2024-12-08 14:47:49.279000', NULL, NULL, NULL),
(115, 'llqejx98twcizyd4qduotd7f', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.287000', '2024-12-08 14:47:49.287000', '2024-12-08 14:47:49.288000', NULL, NULL, NULL),
(116, 'oluyl8q5dfy1ood0167hz8g1', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.296000', '2024-12-08 14:47:49.296000', '2024-12-08 14:47:49.296000', NULL, NULL, NULL),
(117, 'cdk0bbjui5c8or4buu2kbqe1', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.306000', '2024-12-08 14:47:49.306000', '2024-12-08 14:47:49.306000', NULL, NULL, NULL),
(118, 'gjp9om0fztyy0zyvrnl445dm', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.313000', '2024-12-08 14:47:49.313000', '2024-12-08 14:47:49.314000', NULL, NULL, NULL),
(119, 'b887ukn7o7p7gmt6doow468p', 'admin::users.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.320000', '2024-12-08 14:47:49.320000', '2024-12-08 14:47:49.320000', NULL, NULL, NULL),
(120, 's3k6u8ij98bcd7u74tae8a7a', 'admin::users.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.327000', '2024-12-08 14:47:49.327000', '2024-12-08 14:47:49.327000', NULL, NULL, NULL),
(121, 'kvlda9zge26qb4wro2c52r75', 'admin::users.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.334000', '2024-12-08 14:47:49.334000', '2024-12-08 14:47:49.334000', NULL, NULL, NULL),
(122, 'xxkqw4xmia3evi9xfwj2u55n', 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.341000', '2024-12-08 14:47:49.341000', '2024-12-08 14:47:49.342000', NULL, NULL, NULL),
(123, 'rfpspctiav3zsp1z81rfwaf7', 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.349000', '2024-12-08 14:47:49.349000', '2024-12-08 14:47:49.349000', NULL, NULL, NULL),
(124, 'e913am289zwwhifk68coyift', 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.355000', '2024-12-08 14:47:49.355000', '2024-12-08 14:47:49.356000', NULL, NULL, NULL),
(125, 'ugutxc3c3ejx24qxt4fs5d3x', 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.363000', '2024-12-08 14:47:49.363000', '2024-12-08 14:47:49.363000', NULL, NULL, NULL),
(126, 'x4hz3x1bhmswzgizhww6h8wg', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.370000', '2024-12-08 14:47:49.370000', '2024-12-08 14:47:49.370000', NULL, NULL, NULL),
(127, 'gnxqrenjrzi3g64yzru9xmlu', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.377000', '2024-12-08 14:47:49.377000', '2024-12-08 14:47:49.377000', NULL, NULL, NULL),
(128, 'g5emdv9q3gsu2abszqfjjx0s', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.383000', '2024-12-08 14:47:49.383000', '2024-12-08 14:47:49.384000', NULL, NULL, NULL),
(129, 'zmw9vy6uhjte01t8momjgeof', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.390000', '2024-12-08 14:47:49.390000', '2024-12-08 14:47:49.391000', NULL, NULL, NULL),
(130, 'b87r6g086ch3i1ut0j4k4fk7', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.397000', '2024-12-08 14:47:49.397000', '2024-12-08 14:47:49.398000', NULL, NULL, NULL),
(131, 'rqdun4exrlj6ogs5q1kwb4xd', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.405000', '2024-12-08 14:47:49.405000', '2024-12-08 14:47:49.405000', NULL, NULL, NULL),
(132, 'oyyeyw8mo2qwbatw0o4h1gji', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.412000', '2024-12-08 14:47:49.412000', '2024-12-08 14:47:49.413000', NULL, NULL, NULL),
(133, 'qwarsjkz016mqaie606vptja', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.421000', '2024-12-08 14:47:49.421000', '2024-12-08 14:47:49.421000', NULL, NULL, NULL),
(134, 'slnnfq99go43hd4sphu3lngy', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.430000', '2024-12-08 14:47:49.430000', '2024-12-08 14:47:49.430000', NULL, NULL, NULL),
(135, 'ui2ch461irlloevqv3o6mukp', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.437000', '2024-12-08 14:47:49.437000', '2024-12-08 14:47:49.438000', NULL, NULL, NULL),
(136, 'st0q9xif6lcdnelemm5i0w3y', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.445000', '2024-12-08 14:47:49.445000', '2024-12-08 14:47:49.445000', NULL, NULL, NULL),
(137, 'hcd9fc2ixzyxq3uoixvllzi5', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.453000', '2024-12-08 14:47:49.453000', '2024-12-08 14:47:49.453000', NULL, NULL, NULL),
(138, 'wumyrir4tej0ytu36dv35o6h', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.461000', '2024-12-08 14:47:49.461000', '2024-12-08 14:47:49.461000', NULL, NULL, NULL),
(139, 'h91wp3bixp5y8tcjwaiv2arz', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.469000', '2024-12-08 14:47:49.469000', '2024-12-08 14:47:49.469000', NULL, NULL, NULL),
(140, 'rfvkpyphhqkyh1vmvslybse3', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-12-08 14:47:49.477000', '2024-12-08 14:47:49.477000', '2024-12-08 14:47:49.477000', NULL, NULL, NULL),
(144, 'crm1it4mllh2n7ekyeqesp0d', 'plugin::content-manager.explorer.delete', '{}', 'api::post.post', '{}', '[]', '2024-12-08 14:53:01.973000', '2024-12-08 14:53:01.973000', '2024-12-08 14:53:01.974000', NULL, NULL, NULL),
(145, 'n0sq2au4tam89v2zre7rg0rj', 'plugin::content-manager.explorer.publish', '{}', 'api::post.post', '{}', '[]', '2024-12-08 14:53:01.985000', '2024-12-08 14:53:01.985000', '2024-12-08 14:53:01.986000', NULL, NULL, NULL),
(149, 't3ruaxtdtl5psjhz5xb6yxpx', 'plugin::content-manager.explorer.delete', '{}', 'api::product.product', '{}', '[]', '2024-12-08 15:45:55.213000', '2024-12-08 15:45:55.213000', '2024-12-08 15:45:55.214000', NULL, NULL, NULL),
(150, 'jt4bu2akjtyh3zhsn6wg963i', 'plugin::content-manager.explorer.publish', '{}', 'api::product.product', '{}', '[]', '2024-12-08 15:45:55.223000', '2024-12-08 15:45:55.223000', '2024-12-08 15:45:55.223000', NULL, NULL, NULL),
(160, 'ia9n5ggc0nzrqidog8o8n2xx', 'plugin::content-manager.explorer.create', '{}', 'api::post.post', '{\"fields\":[\"judul\",\"konten\",\"features\",\"products\"]}', '[]', '2024-12-08 17:30:29.150000', '2024-12-08 17:30:29.150000', '2024-12-08 17:30:29.152000', NULL, NULL, NULL),
(161, 'hptm2adazy0yl7h1qcn31i2h', 'plugin::content-manager.explorer.read', '{}', 'api::post.post', '{\"fields\":[\"judul\",\"konten\",\"features\",\"products\"]}', '[]', '2024-12-08 17:30:29.164000', '2024-12-08 17:30:29.164000', '2024-12-08 17:30:29.164000', NULL, NULL, NULL),
(162, 'y66bjo45v1skivlnr5n8gd08', 'plugin::content-manager.explorer.update', '{}', 'api::post.post', '{\"fields\":[\"judul\",\"konten\",\"features\",\"products\"]}', '[]', '2024-12-08 17:30:29.171000', '2024-12-08 17:30:29.171000', '2024-12-08 17:30:29.171000', NULL, NULL, NULL),
(169, 'x3yo6p6c0hu8w3f4wonlikno', 'plugin::content-manager.explorer.delete', '{}', 'api::userapp.userapp', '{}', '[]', '2024-12-08 17:42:48.114000', '2024-12-08 17:42:48.114000', '2024-12-08 17:42:48.115000', NULL, NULL, NULL),
(170, 'i2pv1uyqfjkxwtpc05l5em6r', 'plugin::content-manager.explorer.publish', '{}', 'api::userapp.userapp', '{}', '[]', '2024-12-08 17:42:48.125000', '2024-12-08 17:42:48.125000', '2024-12-08 17:42:48.126000', NULL, NULL, NULL),
(180, 'wkr46lr2bp36iy1nhif96qii', 'plugin::content-manager.explorer.delete', '{}', 'api::merchant.merchant', '{}', '[]', '2024-12-08 20:16:19.560000', '2024-12-08 20:16:19.560000', '2024-12-08 20:16:19.562000', NULL, NULL, NULL),
(181, 'gxc3oxc2r9g3tcx515gvzeii', 'plugin::content-manager.explorer.publish', '{}', 'api::merchant.merchant', '{}', '[]', '2024-12-08 20:16:19.599000', '2024-12-08 20:16:19.599000', '2024-12-08 20:16:19.600000', NULL, NULL, NULL),
(184, 'stytsius94d1z9fk8pgs7j72', 'plugin::content-manager.explorer.create', '{}', 'api::userapp.userapp', '{\"fields\":[\"email\",\"password\",\"name\",\"date_birth\",\"gender\",\"address\",\"phone\",\"role\",\"transactions\"]}', '[]', '2024-12-08 21:06:52.257000', '2024-12-08 21:06:52.257000', '2024-12-08 21:06:52.258000', NULL, NULL, NULL),
(187, 'st6omfyun7lmurqfchvtn9ub', 'plugin::content-manager.explorer.read', '{}', 'api::userapp.userapp', '{\"fields\":[\"email\",\"password\",\"name\",\"date_birth\",\"gender\",\"address\",\"phone\",\"role\",\"transactions\"]}', '[]', '2024-12-08 21:06:52.348000', '2024-12-08 21:06:52.348000', '2024-12-08 21:06:52.349000', NULL, NULL, NULL),
(190, 'u69abymhs33hewm5i1ld44rq', 'plugin::content-manager.explorer.update', '{}', 'api::userapp.userapp', '{\"fields\":[\"email\",\"password\",\"name\",\"date_birth\",\"gender\",\"address\",\"phone\",\"role\",\"transactions\"]}', '[]', '2024-12-08 21:06:52.448000', '2024-12-08 21:06:52.448000', '2024-12-08 21:06:52.449000', NULL, NULL, NULL),
(191, 'orx8ngyizbc5mf9sslol1td1', 'plugin::content-manager.explorer.delete', '{}', 'api::transaction.transaction', '{}', '[]', '2024-12-08 21:06:52.475000', '2024-12-08 21:06:52.475000', '2024-12-08 21:06:52.476000', NULL, NULL, NULL),
(192, 'oh55r32udlcf143sdm0dynyu', 'plugin::content-manager.explorer.publish', '{}', 'api::transaction.transaction', '{}', '[]', '2024-12-08 21:06:52.512000', '2024-12-08 21:06:52.512000', '2024-12-08 21:06:52.513000', NULL, NULL, NULL),
(193, 'idj0uqwumjtmcmdcmqk16pj1', 'plugin::content-manager.explorer.create', '{}', 'api::list-item-transaction.list-item-transaction', '{\"fields\":[\"transaction\",\"item_name\",\"price\",\"qty\",\"total\"]}', '[]', '2024-12-08 21:18:57.029000', '2024-12-08 21:18:57.029000', '2024-12-08 21:18:57.033000', NULL, NULL, NULL),
(194, 'y0fomi2758bhcm49ut61sdw9', 'plugin::content-manager.explorer.create', '{}', 'api::transaction.transaction', '{\"fields\":[\"user_app\",\"merchant\",\"delivery_time\",\"grand_total\",\"delivery_service\",\"list_item_transactions\"]}', '[]', '2024-12-08 21:18:57.116000', '2024-12-08 21:18:57.116000', '2024-12-08 21:18:57.118000', NULL, NULL, NULL),
(195, 'j4czlk9pl0jl72hxoq8vcwvy', 'plugin::content-manager.explorer.read', '{}', 'api::list-item-transaction.list-item-transaction', '{\"fields\":[\"transaction\",\"item_name\",\"price\",\"qty\",\"total\"]}', '[]', '2024-12-08 21:18:57.171000', '2024-12-08 21:18:57.171000', '2024-12-08 21:18:57.172000', NULL, NULL, NULL),
(196, 'dn2bd1wi5hnyw69nzk7fuu96', 'plugin::content-manager.explorer.read', '{}', 'api::transaction.transaction', '{\"fields\":[\"user_app\",\"merchant\",\"delivery_time\",\"grand_total\",\"delivery_service\",\"list_item_transactions\"]}', '[]', '2024-12-08 21:18:57.210000', '2024-12-08 21:18:57.210000', '2024-12-08 21:18:57.211000', NULL, NULL, NULL),
(197, 'nrnijjgabnnbrpo6dxs7t4ib', 'plugin::content-manager.explorer.update', '{}', 'api::list-item-transaction.list-item-transaction', '{\"fields\":[\"transaction\",\"item_name\",\"price\",\"qty\",\"total\"]}', '[]', '2024-12-08 21:18:57.253000', '2024-12-08 21:18:57.253000', '2024-12-08 21:18:57.254000', NULL, NULL, NULL),
(198, 'fguxz4vjscm3pxfhvq53913q', 'plugin::content-manager.explorer.update', '{}', 'api::transaction.transaction', '{\"fields\":[\"user_app\",\"merchant\",\"delivery_time\",\"grand_total\",\"delivery_service\",\"list_item_transactions\"]}', '[]', '2024-12-08 21:18:57.288000', '2024-12-08 21:18:57.288000', '2024-12-08 21:18:57.289000', NULL, NULL, NULL),
(199, 'k9zwynnt64kbnr4pfau8ddgd', 'plugin::content-manager.explorer.delete', '{}', 'api::list-item-transaction.list-item-transaction', '{}', '[]', '2024-12-08 21:18:57.319000', '2024-12-08 21:18:57.319000', '2024-12-08 21:18:57.320000', NULL, NULL, NULL),
(200, 'w1lyhxvm5esnbulyl8wtg418', 'plugin::content-manager.explorer.publish', '{}', 'api::list-item-transaction.list-item-transaction', '{}', '[]', '2024-12-08 21:18:57.374000', '2024-12-08 21:18:57.374000', '2024-12-08 21:18:57.376000', NULL, NULL, NULL),
(201, 'orstgo67igwf8thx9vqsgpvu', 'plugin::content-manager.explorer.create', '{}', 'api::merchant.merchant', '{\"fields\":[\"user_app\",\"merchant_name\",\"merchant_description\",\"merchant_address\",\"merchant_account_number\",\"transactions\",\"merchant_products\"]}', '[]', '2024-12-08 21:36:25.861000', '2024-12-08 21:36:25.861000', '2024-12-08 21:36:25.867000', NULL, NULL, NULL),
(202, 'n1c3lf6hzxh7ivvzbmzknbe5', 'plugin::content-manager.explorer.create', '{}', 'api::merchant-product.merchant-product', '{\"fields\":[\"merchant\",\"product\",\"price\",\"stock\",\"description\",\"status_product\",\"discount\"]}', '[]', '2024-12-08 21:36:25.956000', '2024-12-08 21:36:25.956000', '2024-12-08 21:36:25.958000', NULL, NULL, NULL),
(204, 'jccyqquye7p2p0oi3pmlbx7a', 'plugin::content-manager.explorer.read', '{}', 'api::merchant.merchant', '{\"fields\":[\"user_app\",\"merchant_name\",\"merchant_description\",\"merchant_address\",\"merchant_account_number\",\"transactions\",\"merchant_products\"]}', '[]', '2024-12-08 21:36:26.034000', '2024-12-08 21:36:26.034000', '2024-12-08 21:36:26.036000', NULL, NULL, NULL),
(205, 'tqk53902tyo3n1t2kr7xa05b', 'plugin::content-manager.explorer.read', '{}', 'api::merchant-product.merchant-product', '{\"fields\":[\"merchant\",\"product\",\"price\",\"stock\",\"description\",\"status_product\",\"discount\"]}', '[]', '2024-12-08 21:36:26.068000', '2024-12-08 21:36:26.068000', '2024-12-08 21:36:26.069000', NULL, NULL, NULL),
(207, 'k5e6xsc33oon0s2h002q3hre', 'plugin::content-manager.explorer.update', '{}', 'api::merchant.merchant', '{\"fields\":[\"user_app\",\"merchant_name\",\"merchant_description\",\"merchant_address\",\"merchant_account_number\",\"transactions\",\"merchant_products\"]}', '[]', '2024-12-08 21:36:26.191000', '2024-12-08 21:36:26.191000', '2024-12-08 21:36:26.192000', NULL, NULL, NULL),
(208, 'shbg8mnymjut7t19vngpam2a', 'plugin::content-manager.explorer.update', '{}', 'api::merchant-product.merchant-product', '{\"fields\":[\"merchant\",\"product\",\"price\",\"stock\",\"description\",\"status_product\",\"discount\"]}', '[]', '2024-12-08 21:36:26.235000', '2024-12-08 21:36:26.235000', '2024-12-08 21:36:26.236000', NULL, NULL, NULL),
(210, 'er0nsa2g22lvu8503dj7m6yj', 'plugin::content-manager.explorer.delete', '{}', 'api::merchant-product.merchant-product', '{}', '[]', '2024-12-08 21:36:26.296000', '2024-12-08 21:36:26.296000', '2024-12-08 21:36:26.297000', NULL, NULL, NULL),
(211, 'jwgqmfbjlee9qtp5jqai9wy6', 'plugin::content-manager.explorer.publish', '{}', 'api::merchant-product.merchant-product', '{}', '[]', '2024-12-08 21:36:26.328000', '2024-12-08 21:36:26.328000', '2024-12-08 21:36:26.329000', NULL, NULL, NULL),
(243, 'qatbchj8g0hctd853putnoh9', 'plugin::content-manager.explorer.create', '{}', 'api::product.product', '{\"fields\":[\"name_product\",\"vitamin\",\"benefit\",\"merchant_product\",\"picture\",\"category\"]}', '[]', '2025-01-12 18:50:22.121000', '2025-01-12 18:50:22.121000', '2025-01-12 18:50:22.123000', NULL, NULL, NULL),
(244, 'c8chn5lftd0eaznhyi6bjjwe', 'plugin::content-manager.explorer.read', '{}', 'api::product.product', '{\"fields\":[\"name_product\",\"vitamin\",\"benefit\",\"merchant_product\",\"picture\",\"category\"]}', '[]', '2025-01-12 18:50:22.147000', '2025-01-12 18:50:22.147000', '2025-01-12 18:50:22.148000', NULL, NULL, NULL),
(245, 'u5161x0tm8e2esdzdmz1abnj', 'plugin::content-manager.explorer.update', '{}', 'api::product.product', '{\"fields\":[\"name_product\",\"vitamin\",\"benefit\",\"merchant_product\",\"picture\",\"category\"]}', '[]', '2025-01-12 18:50:22.161000', '2025-01-12 18:50:22.161000', '2025-01-12 18:50:22.162000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(5, 5, 2, 5),
(6, 6, 2, 6),
(10, 10, 2, 10),
(11, 11, 2, 11),
(15, 15, 2, 15),
(16, 16, 2, 16),
(20, 20, 2, 20),
(21, 21, 2, 21),
(25, 25, 2, 25),
(26, 26, 2, 26),
(27, 27, 2, 27),
(28, 28, 2, 28),
(29, 29, 2, 29),
(30, 30, 2, 30),
(31, 31, 2, 31),
(32, 32, 3, 1),
(36, 36, 3, 5),
(37, 37, 3, 6),
(41, 41, 3, 10),
(42, 42, 3, 11),
(46, 46, 3, 15),
(47, 47, 3, 16),
(51, 51, 3, 20),
(52, 52, 3, 21),
(53, 53, 3, 22),
(54, 54, 3, 23),
(55, 55, 3, 24),
(56, 56, 3, 25),
(57, 57, 3, 26),
(58, 58, 1, 1),
(59, 59, 1, 2),
(63, 63, 1, 6),
(64, 64, 1, 7),
(65, 65, 1, 8),
(69, 69, 1, 12),
(70, 70, 1, 13),
(71, 71, 1, 14),
(75, 75, 1, 18),
(76, 76, 1, 19),
(77, 77, 1, 20),
(81, 81, 1, 24),
(82, 82, 1, 25),
(83, 83, 1, 26),
(87, 87, 1, 30),
(88, 88, 1, 31),
(89, 89, 1, 32),
(90, 90, 1, 33),
(91, 91, 1, 34),
(92, 92, 1, 35),
(93, 93, 1, 36),
(94, 94, 1, 37),
(95, 95, 1, 38),
(96, 96, 1, 39),
(97, 97, 1, 40),
(98, 98, 1, 41),
(99, 99, 1, 42),
(100, 100, 1, 43),
(101, 101, 1, 44),
(102, 102, 1, 45),
(103, 103, 1, 46),
(104, 104, 1, 47),
(105, 105, 1, 48),
(106, 106, 1, 49),
(107, 107, 1, 50),
(108, 108, 1, 51),
(109, 109, 1, 52),
(110, 110, 1, 53),
(111, 111, 1, 54),
(112, 112, 1, 55),
(113, 113, 1, 56),
(114, 114, 1, 57),
(115, 115, 1, 58),
(116, 116, 1, 59),
(117, 117, 1, 60),
(118, 118, 1, 61),
(119, 119, 1, 62),
(120, 120, 1, 63),
(121, 121, 1, 64),
(122, 122, 1, 65),
(123, 123, 1, 66),
(124, 124, 1, 67),
(125, 125, 1, 68),
(126, 126, 1, 69),
(127, 127, 1, 70),
(128, 128, 1, 71),
(129, 129, 1, 72),
(130, 130, 1, 73),
(131, 131, 1, 74),
(132, 132, 1, 75),
(133, 133, 1, 76),
(134, 134, 1, 77),
(135, 135, 1, 78),
(136, 136, 1, 79),
(137, 137, 1, 80),
(138, 138, 1, 81),
(139, 139, 1, 82),
(140, 140, 1, 83),
(144, 144, 1, 87),
(145, 145, 1, 88),
(149, 149, 1, 92),
(150, 150, 1, 93),
(160, 160, 1, 100),
(161, 161, 1, 101),
(162, 162, 1, 102),
(169, 169, 1, 109),
(170, 170, 1, 110),
(180, 180, 1, 117),
(181, 181, 1, 118),
(184, 184, 1, 121),
(187, 187, 1, 124),
(190, 190, 1, 127),
(191, 191, 1, 128),
(192, 192, 1, 129),
(193, 193, 1, 130),
(194, 194, 1, 131),
(195, 195, 1, 132),
(196, 196, 1, 133),
(197, 197, 1, 134),
(198, 198, 1, 135),
(199, 199, 1, 136),
(200, 200, 1, 137),
(201, 201, 1, 138),
(202, 202, 1, 139),
(204, 204, 1, 141),
(205, 205, 1, 142),
(207, 207, 1, 144),
(208, 208, 1, 145),
(210, 210, 1, 147),
(211, 211, 1, 148),
(243, 243, 1, 149),
(244, 244, 1, 150),
(245, 245, 1, 151);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'e0l9rtdq3fdrdtggbg7f1cq5', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-12-08 14:47:48.114000', '2024-12-08 14:47:48.114000', '2024-12-08 14:47:48.114000', NULL, NULL, NULL),
(2, 'oylrt1edjmbz5c5t339j8o54', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-12-08 14:47:48.126000', '2024-12-08 14:47:48.126000', '2024-12-08 14:47:48.126000', NULL, NULL, NULL),
(3, 't9bcebadfgetqgcekerug29n', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-12-08 14:47:48.134000', '2024-12-08 14:47:48.134000', '2024-12-08 14:47:48.134000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'fyyiw9g0lf853ec47vxf1ceq', 'Faizal', 'Hamzah', NULL, 'muhfaizalhamzah@gmail.com', '$2a$10$BQ/rj2pyAFDgXKdpja.pYOjU3H0/GwQAn3YG3lIBbhuABsthTYgra', NULL, NULL, 1, 0, NULL, '2024-12-08 14:50:34.442000', '2024-12-08 14:50:34.442000', '2024-12-08 14:50:34.446000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_media`
--

CREATE TABLE `components_shared_media` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_shared_media`
--

INSERT INTO `components_shared_media` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_quotes`
--

CREATE TABLE `components_shared_quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_shared_quotes`
--

INSERT INTO `components_shared_quotes` (`id`, `title`, `body`) VALUES
(1, 'Thelonius Monk', 'You\'ve got to dig it to dig it, you dig?'),
(2, 'Thelonius Monk', 'You\'ve got to dig it to dig it, you dig?'),
(3, 'Thelonius Monk', 'You\'ve got to dig it to dig it, you dig?'),
(4, 'Thelonius Monk', 'You\'ve got to dig it to dig it, you dig?'),
(5, 'Thelonius Monk', 'You\'ve got to dig it to dig it, you dig?'),
(6, 'Thelonius Monk', 'You\'ve got to dig it to dig it, you dig?');

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_rich_texts`
--

CREATE TABLE `components_shared_rich_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_shared_rich_texts`
--

INSERT INTO `components_shared_rich_texts` (`id`, `body`) VALUES
(1, '## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. '),
(2, '## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!'),
(3, '## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. '),
(4, '## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!'),
(5, '## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. '),
(6, '## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!'),
(7, '## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. '),
(8, '## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!'),
(9, '## Probant \n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. \n\n## Abit sua\n\nse Lorem markdownum negat. Argo *saxa* videnda cornuaque hunc qui tanta spes teneas! Obliquis est dicenti est salutat ille tamen iuvenum nostrae dolore. - Colores nocituraque comitata eripiunt - Addit quodcunque solum cui et dextram illis - Nulli meus nec extemplo ille ferebat pressit Se blandita fulvae vox gravem Pittheus cesserunt sanguine herbis tu comitum tenuit. Sui in ruunt; Doridaque maculosae fuissem! Et loqui. '),
(10, '## Spatiantia astra \n\nFoeda, medio silva *errandum*: onus formam munere. Mutata bibulis est auxiliare arces etiamnunc verbis virgineo Priamidas illa Thescelus, nam fit locis lucis auras. Exitus hospes gratulor ut pondere [speslimite](http://www.curas.io/figuram); quid habent, Avernales faciente de. Pervenit Ino sonabile supplex cognoscenti vires, Bacchumque errat miserarum venandi dignabere dedisti. Discrimina iuncosaque virgaque tot sine superest [fissus](http://quos.org/sitet.aspx). Non color esset potest non sumit, sed vix arserat. Nisi immo silva tantum pectusque quos pennis quisquam artus!'),
(11, '## Dedit imago conspicuus cum capillis totidem inhibere\n\nLorem markdownum **rerum**, est limine: columbas: ab infelix hostem arbore nudis\ncrudelis. Videtur reliquit ambo ferrum dote sub amne fatis **illuc**, in magis,\nnec.');

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos`
--

CREATE TABLE `components_shared_seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_shared_seos`
--

INSERT INTO `components_shared_seos` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Page', 'A blog made with Strapi');

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_sliders`
--

CREATE TABLE `components_shared_sliders` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_shared_sliders`
--

INSERT INTO `components_shared_sliders` (`id`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `document_id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'opid0sgcy0sjgomp1o3e38lq', 'daviddoe@strapi', 'An image uploaded to Strapi called daviddoe@strapi', 'daviddoe@strapi', 2418, 2711, '{\"thumbnail\":{\"name\":\"thumbnail_daviddoe@strapi\",\"hash\":\"thumbnail_daviddoe_strapi_5ced0f845d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":139,\"height\":156,\"size\":4.18,\"sizeInBytes\":4175,\"url\":\"/uploads/thumbnail_daviddoe_strapi_5ced0f845d.jpeg\"},\"medium\":{\"name\":\"medium_daviddoe@strapi\",\"hash\":\"medium_daviddoe_strapi_5ced0f845d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":669,\"height\":750,\"size\":44.37,\"sizeInBytes\":44372,\"url\":\"/uploads/medium_daviddoe_strapi_5ced0f845d.jpeg\"},\"small\":{\"name\":\"small_daviddoe@strapi\",\"hash\":\"small_daviddoe_strapi_5ced0f845d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":446,\"height\":500,\"size\":22.51,\"sizeInBytes\":22509,\"url\":\"/uploads/small_daviddoe_strapi_5ced0f845d.jpeg\"},\"large\":{\"name\":\"large_daviddoe@strapi\",\"hash\":\"large_daviddoe_strapi_5ced0f845d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":892,\"height\":1000,\"size\":74.56,\"sizeInBytes\":74560,\"url\":\"/uploads/large_daviddoe_strapi_5ced0f845d.jpeg\"}}', 'daviddoe_strapi_5ced0f845d', '.jpeg', 'image/jpeg', 587.69, '/uploads/daviddoe_strapi_5ced0f845d.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:50.432000', '2024-12-08 14:47:50.432000', '2024-12-08 14:47:50.434000', NULL, NULL, NULL),
(2, 'vqyad3cv6ny36kh0u89glbk0', 'sarahbaker@strapi', 'An image uploaded to Strapi called sarahbaker@strapi', 'sarahbaker@strapi', 3321, 2746, '{\"thumbnail\":{\"name\":\"thumbnail_sarahbaker@strapi\",\"hash\":\"thumbnail_sarahbaker_strapi_03228b00e4\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":189,\"height\":156,\"size\":6.68,\"sizeInBytes\":6681,\"url\":\"/uploads/thumbnail_sarahbaker_strapi_03228b00e4.jpeg\"},\"large\":{\"name\":\"large_sarahbaker@strapi\",\"hash\":\"large_sarahbaker_strapi_03228b00e4\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":827,\"size\":101.98,\"sizeInBytes\":101978,\"url\":\"/uploads/large_sarahbaker_strapi_03228b00e4.jpeg\"},\"medium\":{\"name\":\"medium_sarahbaker@strapi\",\"hash\":\"medium_sarahbaker_strapi_03228b00e4\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":620,\"size\":61.37,\"sizeInBytes\":61368,\"url\":\"/uploads/medium_sarahbaker_strapi_03228b00e4.jpeg\"},\"small\":{\"name\":\"small_sarahbaker@strapi\",\"hash\":\"small_sarahbaker_strapi_03228b00e4\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":413,\"size\":30.58,\"sizeInBytes\":30578,\"url\":\"/uploads/small_sarahbaker_strapi_03228b00e4.jpeg\"}}', 'sarahbaker_strapi_03228b00e4', '.jpeg', 'image/jpeg', 795.13, '/uploads/sarahbaker_strapi_03228b00e4.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:51.157000', '2024-12-08 14:47:51.157000', '2024-12-08 14:47:51.157000', NULL, NULL, NULL),
(3, 'padnk8y7duyqzdh2hcjtpwvr', 'the-internet-s-own-boy', 'An image uploaded to Strapi called the-internet-s-own-boy', 'the-internet-s-own-boy', 1200, 707, '{\"thumbnail\":{\"name\":\"thumbnail_the-internet-s-own-boy\",\"hash\":\"thumbnail_the_internet_s_own_boy_74875e2f49\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":144,\"size\":8.38,\"sizeInBytes\":8380,\"url\":\"/uploads/thumbnail_the_internet_s_own_boy_74875e2f49.jpeg\"},\"large\":{\"name\":\"large_the-internet-s-own-boy\",\"hash\":\"large_the_internet_s_own_boy_74875e2f49\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":589,\"size\":70.11,\"sizeInBytes\":70105,\"url\":\"/uploads/large_the_internet_s_own_boy_74875e2f49.jpeg\"},\"medium\":{\"name\":\"medium_the-internet-s-own-boy\",\"hash\":\"medium_the_internet_s_own_boy_74875e2f49\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":442,\"size\":45.93,\"sizeInBytes\":45925,\"url\":\"/uploads/medium_the_internet_s_own_boy_74875e2f49.jpeg\"},\"small\":{\"name\":\"small_the-internet-s-own-boy\",\"hash\":\"small_the_internet_s_own_boy_74875e2f49\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":295,\"size\":25.31,\"sizeInBytes\":25308,\"url\":\"/uploads/small_the_internet_s_own_boy_74875e2f49.jpeg\"}}', 'the_internet_s_own_boy_74875e2f49', '.jpeg', 'image/jpeg', 91.55, '/uploads/the_internet_s_own_boy_74875e2f49.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:51.354000', '2024-12-08 14:47:51.354000', '2024-12-08 14:47:51.354000', NULL, NULL, NULL),
(4, 'ica2wua0qa1kww4ujkjvrvbr', 'coffee-art', 'An image uploaded to Strapi called coffee-art', 'coffee-art', 5824, 3259, '{\"thumbnail\":{\"name\":\"thumbnail_coffee-art\",\"hash\":\"thumbnail_coffee_art_bbe93fe102\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":137,\"size\":5.86,\"sizeInBytes\":5860,\"url\":\"/uploads/thumbnail_coffee_art_bbe93fe102.jpeg\"},\"large\":{\"name\":\"large_coffee-art\",\"hash\":\"large_coffee_art_bbe93fe102\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":559,\"size\":40.78,\"sizeInBytes\":40778,\"url\":\"/uploads/large_coffee_art_bbe93fe102.jpeg\"},\"medium\":{\"name\":\"medium_coffee-art\",\"hash\":\"medium_coffee_art_bbe93fe102\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":419,\"size\":27.06,\"sizeInBytes\":27063,\"url\":\"/uploads/medium_coffee_art_bbe93fe102.jpeg\"},\"small\":{\"name\":\"small_coffee-art\",\"hash\":\"small_coffee_art_bbe93fe102\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":280,\"size\":15.27,\"sizeInBytes\":15273,\"url\":\"/uploads/small_coffee_art_bbe93fe102.jpeg\"}}', 'coffee_art_bbe93fe102', '.jpeg', 'image/jpeg', 978.11, '/uploads/coffee_art_bbe93fe102.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:52.756000', '2024-12-08 14:47:52.756000', '2024-12-08 14:47:52.756000', NULL, NULL, NULL),
(5, 'tyv7mty995niba8e6rnwn1vk', 'coffee-beans', 'An image uploaded to Strapi called coffee-beans', 'coffee-beans', 5021, 3347, '{\"thumbnail\":{\"name\":\"thumbnail_coffee-beans\",\"hash\":\"thumbnail_coffee_beans_16527127f1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":7.96,\"sizeInBytes\":7962,\"url\":\"/uploads/thumbnail_coffee_beans_16527127f1.jpeg\"},\"large\":{\"name\":\"large_coffee-beans\",\"hash\":\"large_coffee_beans_16527127f1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":666,\"size\":115.66,\"sizeInBytes\":115659,\"url\":\"/uploads/large_coffee_beans_16527127f1.jpeg\"},\"medium\":{\"name\":\"medium_coffee-beans\",\"hash\":\"medium_coffee_beans_16527127f1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":500,\"size\":67.95,\"sizeInBytes\":67954,\"url\":\"/uploads/medium_coffee_beans_16527127f1.jpeg\"},\"small\":{\"name\":\"small_coffee-beans\",\"hash\":\"small_coffee_beans_16527127f1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":333,\"size\":31.11,\"sizeInBytes\":31106,\"url\":\"/uploads/small_coffee_beans_16527127f1.jpeg\"}}', 'coffee_beans_16527127f1', '.jpeg', 'image/jpeg', 2346.20, '/uploads/coffee_beans_16527127f1.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:54.458000', '2024-12-08 14:47:54.458000', '2024-12-08 14:47:54.458000', NULL, NULL, NULL),
(6, 'k9da5nxg70vxmly0manfnhxu', 'this-shrimp-is-awesome', 'An image uploaded to Strapi called this-shrimp-is-awesome', 'this-shrimp-is-awesome', 1200, 630, '{\"thumbnail\":{\"name\":\"thumbnail_this-shrimp-is-awesome\",\"hash\":\"thumbnail_this_shrimp_is_awesome_e5caec9d14\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":129,\"size\":9.63,\"sizeInBytes\":9633,\"url\":\"/uploads/thumbnail_this_shrimp_is_awesome_e5caec9d14.jpeg\"},\"medium\":{\"name\":\"medium_this-shrimp-is-awesome\",\"hash\":\"medium_this_shrimp_is_awesome_e5caec9d14\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":394,\"size\":48.38,\"sizeInBytes\":48380,\"url\":\"/uploads/medium_this_shrimp_is_awesome_e5caec9d14.jpeg\"},\"large\":{\"name\":\"large_this-shrimp-is-awesome\",\"hash\":\"large_this_shrimp_is_awesome_e5caec9d14\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":525,\"size\":72.87,\"sizeInBytes\":72867,\"url\":\"/uploads/large_this_shrimp_is_awesome_e5caec9d14.jpeg\"},\"small\":{\"name\":\"small_this-shrimp-is-awesome\",\"hash\":\"small_this_shrimp_is_awesome_e5caec9d14\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":263,\"size\":26.93,\"sizeInBytes\":26930,\"url\":\"/uploads/small_this_shrimp_is_awesome_e5caec9d14.jpeg\"}}', 'this_shrimp_is_awesome_e5caec9d14', '.jpeg', 'image/jpeg', 95.48, '/uploads/this_shrimp_is_awesome_e5caec9d14.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:54.720000', '2024-12-08 14:47:54.720000', '2024-12-08 14:47:54.720000', NULL, NULL, NULL),
(7, 'g5x3gfgki6gv93xrae9fbnrm', 'a-bug-is-becoming-a-meme-on-the-internet', 'An image uploaded to Strapi called a-bug-is-becoming-a-meme-on-the-internet', 'a-bug-is-becoming-a-meme-on-the-internet', 3628, 2419, '{\"thumbnail\":{\"name\":\"thumbnail_a-bug-is-becoming-a-meme-on-the-internet\",\"hash\":\"thumbnail_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":6.74,\"sizeInBytes\":6743,\"url\":\"/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d.jpeg\"},\"large\":{\"name\":\"large_a-bug-is-becoming-a-meme-on-the-internet\",\"hash\":\"large_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":666,\"size\":51.05,\"sizeInBytes\":51046,\"url\":\"/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d.jpeg\"},\"medium\":{\"name\":\"medium_a-bug-is-becoming-a-meme-on-the-internet\",\"hash\":\"medium_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":500,\"size\":33.58,\"sizeInBytes\":33577,\"url\":\"/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d.jpeg\"},\"small\":{\"name\":\"small_a-bug-is-becoming-a-meme-on-the-internet\",\"hash\":\"small_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":333,\"size\":19.27,\"sizeInBytes\":19268,\"url\":\"/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_5b706c452d.jpeg\"}}', 'a_bug_is_becoming_a_meme_on_the_internet_5b706c452d', '.jpeg', 'image/jpeg', 234.02, '/uploads/a_bug_is_becoming_a_meme_on_the_internet_5b706c452d.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:55.297000', '2024-12-08 14:47:55.297000', '2024-12-08 14:47:55.297000', NULL, NULL, NULL),
(8, 'tcgcm3am5gic4b30fryptyry', 'beautiful-picture', 'An image uploaded to Strapi called beautiful-picture', 'beautiful-picture', 3824, 2548, '{\"thumbnail\":{\"name\":\"thumbnail_beautiful-picture\",\"hash\":\"thumbnail_beautiful_picture_a037fecc66\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":6.43,\"sizeInBytes\":6427,\"url\":\"/uploads/thumbnail_beautiful_picture_a037fecc66.jpeg\"},\"medium\":{\"name\":\"medium_beautiful-picture\",\"hash\":\"medium_beautiful_picture_a037fecc66\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":500,\"size\":47.89,\"sizeInBytes\":47888,\"url\":\"/uploads/medium_beautiful_picture_a037fecc66.jpeg\"},\"large\":{\"name\":\"large_beautiful-picture\",\"hash\":\"large_beautiful_picture_a037fecc66\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":666,\"size\":83.42,\"sizeInBytes\":83416,\"url\":\"/uploads/large_beautiful_picture_a037fecc66.jpeg\"},\"small\":{\"name\":\"small_beautiful-picture\",\"hash\":\"small_beautiful_picture_a037fecc66\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":333,\"size\":23.38,\"sizeInBytes\":23380,\"url\":\"/uploads/small_beautiful_picture_a037fecc66.jpeg\"}}', 'beautiful_picture_a037fecc66', '.jpeg', 'image/jpeg', 710.28, '/uploads/beautiful_picture_a037fecc66.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:55.939000', '2024-12-08 14:47:55.939000', '2024-12-08 14:47:55.939000', NULL, NULL, NULL),
(9, 'n9qzz6hl5uzzyb685y15ove6', 'what-s-inside-a-black-hole', 'An image uploaded to Strapi called what-s-inside-a-black-hole', 'what-s-inside-a-black-hole', 800, 466, '{\"thumbnail\":{\"name\":\"thumbnail_what-s-inside-a-black-hole\",\"hash\":\"thumbnail_what_s_inside_a_black_hole_5254ca6933\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":143,\"size\":1.55,\"sizeInBytes\":1549,\"url\":\"/uploads/thumbnail_what_s_inside_a_black_hole_5254ca6933.jpeg\"},\"small\":{\"name\":\"small_what-s-inside-a-black-hole\",\"hash\":\"small_what_s_inside_a_black_hole_5254ca6933\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":291,\"size\":3.89,\"sizeInBytes\":3889,\"url\":\"/uploads/small_what_s_inside_a_black_hole_5254ca6933.jpeg\"},\"medium\":{\"name\":\"medium_what-s-inside-a-black-hole\",\"hash\":\"medium_what_s_inside_a_black_hole_5254ca6933\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":437,\"size\":6.94,\"sizeInBytes\":6935,\"url\":\"/uploads/medium_what_s_inside_a_black_hole_5254ca6933.jpeg\"}}', 'what_s_inside_a_black_hole_5254ca6933', '.jpeg', 'image/jpeg', 7.50, '/uploads/what_s_inside_a_black_hole_5254ca6933.jpeg', NULL, 'local', NULL, '/', '2024-12-08 14:47:56.130000', '2024-12-08 14:47:56.130000', '2024-12-08 14:47:56.130000', NULL, NULL, NULL),
(10, 'n448xav4blo041b0qbt5nm1m', 'favicon', 'An image uploaded to Strapi called favicon', 'favicon', 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_favicon\",\"hash\":\"thumbnail_favicon_f292e59c72\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.69,\"sizeInBytes\":4690,\"url\":\"/uploads/thumbnail_favicon_f292e59c72.png\"},\"small\":{\"name\":\"small_favicon\",\"hash\":\"small_favicon_f292e59c72\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":20.56,\"sizeInBytes\":20560,\"url\":\"/uploads/small_favicon_f292e59c72.png\"}}', 'favicon_f292e59c72', '.png', 'image/png', 2.78, '/uploads/favicon_f292e59c72.png', NULL, 'local', NULL, '/', '2024-12-08 14:47:56.333000', '2024-12-08 14:47:56.333000', '2024-12-08 14:47:56.333000', NULL, NULL, NULL),
(11, 'zt23vayz1pwi0gvlw2kycscc', 'default-image', 'An image uploaded to Strapi called default-image', 'default-image', 1208, 715, '{\"thumbnail\":{\"name\":\"thumbnail_default-image\",\"hash\":\"thumbnail_default_image_cc843d5cea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":145,\"size\":20.58,\"sizeInBytes\":20584,\"url\":\"/uploads/thumbnail_default_image_cc843d5cea.png\"},\"medium\":{\"name\":\"medium_default-image\",\"hash\":\"medium_default_image_cc843d5cea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":444,\"size\":170.46,\"sizeInBytes\":170458,\"url\":\"/uploads/medium_default_image_cc843d5cea.png\"},\"small\":{\"name\":\"small_default-image\",\"hash\":\"small_default_image_cc843d5cea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":296,\"size\":74.36,\"sizeInBytes\":74359,\"url\":\"/uploads/small_default_image_cc843d5cea.png\"},\"large\":{\"name\":\"large_default-image\",\"hash\":\"large_default_image_cc843d5cea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":592,\"size\":323.36,\"sizeInBytes\":323356,\"url\":\"/uploads/large_default_image_cc843d5cea.png\"}}', 'default_image_cc843d5cea', '.png', 'image/png', 81.62, '/uploads/default_image_cc843d5cea.png', NULL, 'local', NULL, '/', '2024-12-08 14:47:56.781000', '2024-12-08 14:47:56.781000', '2024-12-08 14:47:56.781000', NULL, NULL, NULL),
(12, 'lilu3jyzcw3olyjrx3dvv2xs', 'Kentang.jpg', NULL, NULL, 1200, 900, '{\"thumbnail\":{\"name\":\"thumbnail_Kentang.jpg\",\"hash\":\"thumbnail_Kentang_4d4de5e05b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":208,\"height\":156,\"size\":4.75,\"sizeInBytes\":4746,\"url\":\"/uploads/thumbnail_Kentang_4d4de5e05b.jpg\"},\"large\":{\"name\":\"large_Kentang.jpg\",\"hash\":\"large_Kentang_4d4de5e05b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":750,\"size\":35.02,\"sizeInBytes\":35024,\"url\":\"/uploads/large_Kentang_4d4de5e05b.jpg\"},\"medium\":{\"name\":\"medium_Kentang.jpg\",\"hash\":\"medium_Kentang_4d4de5e05b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":562,\"size\":26.01,\"sizeInBytes\":26010,\"url\":\"/uploads/medium_Kentang_4d4de5e05b.jpg\"},\"small\":{\"name\":\"small_Kentang.jpg\",\"hash\":\"small_Kentang_4d4de5e05b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":375,\"size\":16.15,\"sizeInBytes\":16150,\"url\":\"/uploads/small_Kentang_4d4de5e05b.jpg\"}}', 'Kentang_4d4de5e05b', '.jpg', 'image/jpeg', 47.60, '/uploads/Kentang_4d4de5e05b.jpg', NULL, 'local', NULL, '/', '2025-01-05 23:36:40.272000', '2025-01-12 18:21:11.535000', '2025-01-05 23:36:40.274000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_mph`
--

INSERT INTO `files_related_mph` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'api::author.author', 'avatar', 1),
(2, 2, 2, 'api::author.author', 'avatar', 1),
(3, 4, 1, 'shared.media', 'file', 1),
(4, 4, 1, 'shared.slider', 'files', 1),
(5, 5, 1, 'shared.slider', 'files', 2),
(6, 3, 1, 'api::article.article', 'cover', 1),
(7, 4, 2, 'shared.media', 'file', 1),
(8, 4, 2, 'shared.slider', 'files', 1),
(9, 5, 2, 'shared.slider', 'files', 2),
(10, 6, 2, 'api::article.article', 'cover', 1),
(11, 4, 3, 'shared.media', 'file', 1),
(12, 4, 3, 'shared.slider', 'files', 1),
(13, 5, 3, 'shared.slider', 'files', 2),
(14, 7, 3, 'api::article.article', 'cover', 1),
(15, 4, 4, 'shared.media', 'file', 1),
(16, 4, 4, 'shared.slider', 'files', 1),
(17, 5, 4, 'shared.slider', 'files', 2),
(18, 8, 4, 'api::article.article', 'cover', 1),
(19, 4, 5, 'shared.media', 'file', 1),
(20, 4, 5, 'shared.slider', 'files', 1),
(21, 5, 5, 'shared.slider', 'files', 2),
(22, 9, 5, 'api::article.article', 'cover', 1),
(23, 11, 1, 'shared.seo', 'shareImage', 1),
(24, 10, 1, 'api::global.global', 'favicon', 1),
(25, 4, 6, 'shared.media', 'file', 1),
(26, 12, 3, 'api::product.product', 'picture', 1),
(27, 12, 237, 'api::product.product', 'picture', 1),
(29, 12, 238, 'api::product.product', 'picture', 1),
(30, 12, 239, 'api::product.product', 'picture', 1),
(31, 12, 240, 'api::product.product', 'picture', 1),
(33, 12, 241, 'api::product.product', 'picture', 1),
(35, 12, 242, 'api::product.product', 'picture', 1),
(37, 12, 243, 'api::product.product', 'picture', 1),
(40, 12, 244, 'api::product.product', 'picture', 1),
(43, 12, 245, 'api::product.product', 'picture', 1),
(44, 12, 30, 'api::product.product', 'picture', 1),
(45, 12, 246, 'api::product.product', 'picture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `globals`
--

CREATE TABLE `globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `globals`
--

INSERT INTO `globals` (`id`, `document_id`, `site_name`, `site_description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'egfqu3txa0jun19vnsvmmk8t', 'Strapi Blog', 'A Blog made with Strapi', '2024-12-08 14:47:56.801000', '2024-12-08 14:47:56.801000', '2024-12-08 14:47:56.792000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `globals_cmps`
--

CREATE TABLE `globals_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `globals_cmps`
--

INSERT INTO `globals_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'shared.seo', 'defaultSeo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'owhgl8dqv4ipu4uka5sbzkhd', 'English (en)', 'en', '2024-12-08 14:47:47.847000', '2024-12-08 14:47:47.847000', '2024-12-08 14:47:47.849000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_item_transactions`
--

CREATE TABLE `list_item_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_item_transactions_transaction_lnk`
--

CREATE TABLE `list_item_transactions_transaction_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `list_item_transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `list_item_transaction_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  `merchant_description` longtext DEFAULT NULL,
  `merchant_address` longtext DEFAULT NULL,
  `merchant_account_number` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `document_id`, `merchant_name`, `merchant_description`, `merchant_address`, `merchant_account_number`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'syaempsrx3mzfi7ah4qz3e3w', 'Toko Izal', 'Lorem Ipsum', 'Ujung Berung Indah', '0895385759496', '2024-12-08 20:49:56.541000', '2024-12-08 20:55:54.151000', NULL, 1, 1, NULL),
(3, 'syaempsrx3mzfi7ah4qz3e3w', 'Toko Izal', 'Lorem Ipsum', 'Ujung Berung Indah', '0895385759496', '2024-12-08 20:49:56.541000', '2024-12-08 20:55:54.151000', '2024-12-08 20:55:54.357000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merchants_user_app_lnk`
--

CREATE TABLE `merchants_user_app_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `userapp_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchants_user_app_lnk`
--

INSERT INTO `merchants_user_app_lnk` (`id`, `merchant_id`, `userapp_id`) VALUES
(1, 1, 1),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_products`
--

CREATE TABLE `merchant_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `status_product` tinyint(1) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_products_merchant_lnk`
--

CREATE TABLE `merchant_products_merchant_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_product_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_product_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_products_product_lnk`
--

CREATE TABLE `merchant_products_product_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `konten` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`konten`)),
  `features` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `document_id`, `judul`, `konten`, `features`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'l06cdpc3hjqtkfi5dylu2mlw', 'ini judul', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"ini konten\"}]}]', 1, '2024-12-08 14:55:02.284000', '2024-12-08 14:55:02.284000', NULL, 1, 1, NULL),
(2, 'l06cdpc3hjqtkfi5dylu2mlw', 'ini judul', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"ini konten\"}]}]', 1, '2024-12-08 14:55:02.284000', '2024-12-08 14:55:02.284000', '2024-12-08 14:55:02.314000', 1, 1, NULL),
(3, 'sec76fba2r2hm9t0jqjfw4zf', 'judul lagi', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"konten lagi\"}]}]', 0, '2024-12-08 14:55:30.575000', '2024-12-08 14:55:30.575000', NULL, 1, 1, NULL),
(4, 'sec76fba2r2hm9t0jqjfw4zf', 'judul lagi', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"konten lagi\"}]}]', 0, '2024-12-08 14:55:30.575000', '2024-12-08 14:55:30.575000', '2024-12-08 14:55:30.592000', 1, 1, NULL),
(5, 'sl57lcis48t1242tjiwmo5s8', 'coba dari postman', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"nah, ini isi konten nya.\"}]}]', 0, '2024-12-08 15:24:05.607000', '2024-12-08 15:24:05.607000', NULL, NULL, NULL, NULL),
(6, 'sl57lcis48t1242tjiwmo5s8', 'coba dari postman', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"nah, ini isi konten nya.\"}]}]', 0, '2024-12-08 15:24:05.607000', '2024-12-08 15:24:05.607000', '2024-12-08 15:24:05.618000', NULL, NULL, NULL),
(7, 'k6qzrtonu24kdswoxvimk0gh', 'coba dari postman', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"nah, ini isi konten nya.\"}]}]', 0, '2024-12-08 16:22:42.209000', '2024-12-08 16:22:42.209000', NULL, NULL, NULL, NULL),
(8, 'k6qzrtonu24kdswoxvimk0gh', 'coba dari postman', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"nah, ini isi konten nya.\"}]}]', 0, '2024-12-08 16:22:42.209000', '2024-12-08 16:22:42.209000', '2024-12-08 16:22:42.232000', NULL, NULL, NULL),
(9, 'ufmmya8vph3nl5iwtn74nr14', 'ya judul lah', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"nyoba lagi\"}]}]', 0, '2024-12-08 17:28:45.215000', '2024-12-08 17:35:37.720000', NULL, 1, 1, NULL),
(11, 'ufmmya8vph3nl5iwtn74nr14', 'ya judul lah', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"nyoba lagi\"}]}]', 0, '2024-12-08 17:28:45.215000', '2024-12-08 17:35:37.720000', '2024-12-08 17:35:37.769000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_products_lnk`
--

CREATE TABLE `posts_products_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_products_lnk`
--

INSERT INTO `posts_products_lnk` (`id`, `post_id`, `product_id`, `product_ord`) VALUES
(1, 9, 50, 1),
(2, 11, 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `vitamin` longtext DEFAULT NULL,
  `benefit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`benefit`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `document_id`, `name_product`, `vitamin`, `benefit`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `category`) VALUES
(3, 'qzxvpn80j0gebnamkaoaxc8v', 'Kentang', 'Vitamin C, Vitamin B6, kalium, magnesium dan fosfor', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"meredahlan Asam lambung, mengurangin peradangan, menbantu menurunkan darah tinggi\"}]}]', '2024-12-08 16:32:52.803000', '2025-01-05 23:37:12.483000', NULL, 1, 1, NULL, NULL),
(8, 'sinzx59rxt4nij2o8rzgs68f', 'Brokoli', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, menjaga kesehatan tulang dan mata\"}]}]', '2024-12-08 16:53:46.991000', '2024-12-08 16:53:46.991000', NULL, NULL, NULL, NULL, NULL),
(9, 'bt80l73ztyw8858l0kkrx242', 'Bayam', 'Vitamin A, C, K, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan mata, meningkatkan energi, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:46.995000', '2024-12-08 16:53:46.995000', NULL, NULL, NULL, NULL, NULL),
(10, 'w92eikno37fazwuv2lf1px3r', 'Wortel', 'Vitamin A, C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan mata, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:47.000000', '2024-12-08 16:53:47.000000', NULL, NULL, NULL, NULL, NULL),
(12, 'tsq7w81vbqmw4c2wmz6uuau6', 'Daging Ayam', 'Vitamin B3, B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung pembentukan otot, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:47.009000', '2024-12-08 16:53:47.009000', NULL, NULL, NULL, NULL, NULL),
(13, 'f8cnju1mc8v2tld6bqvs4wli', 'Daging Sapi', 'Vitamin B12, B6, Zat Besi', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan produksi sel darah merah, menjaga energi tubuh\"}]}]', '2024-12-08 16:53:47.012000', '2024-12-08 16:53:47.012000', NULL, NULL, NULL, NULL, NULL),
(14, 'flmjhxlwdtaxi9c8k9zakot7', 'Tomat', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, melindungi kulit dari kerusakan\"}]}]', '2024-12-08 16:53:47.015000', '2024-12-08 16:53:47.015000', NULL, NULL, NULL, NULL, NULL),
(15, 'zddhcm74psavej9ropu2hccg', 'Sawi Hijau', 'Vitamin K, C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:47.018000', '2024-12-08 16:53:47.018000', NULL, NULL, NULL, NULL, NULL),
(16, 'lldv2ej9hxqocacm65axglvn', 'Ikan Salmon', 'Vitamin D, B12, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan otak, memperkuat tulang, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:47.020000', '2024-12-08 16:53:47.020000', NULL, NULL, NULL, NULL, NULL),
(18, 'tsq7w81vbqmw4c2wmz6uuau6', 'Daging Ayam', 'Vitamin B3, B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung pembentukan otot, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:47.009000', '2024-12-08 16:53:47.009000', '2024-12-08 16:53:47.116000', NULL, NULL, NULL, NULL),
(19, 'f8cnju1mc8v2tld6bqvs4wli', 'Daging Sapi', 'Vitamin B12, B6, Zat Besi', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan produksi sel darah merah, menjaga energi tubuh\"}]}]', '2024-12-08 16:53:47.012000', '2024-12-08 16:53:47.012000', '2024-12-08 16:53:47.120000', NULL, NULL, NULL, NULL),
(20, 'bt80l73ztyw8858l0kkrx242', 'Bayam', 'Vitamin A, C, K, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan mata, meningkatkan energi, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:46.995000', '2024-12-08 16:53:46.995000', '2024-12-08 16:53:47.123000', NULL, NULL, NULL, NULL),
(21, 'sinzx59rxt4nij2o8rzgs68f', 'Brokoli', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, menjaga kesehatan tulang dan mata\"}]}]', '2024-12-08 16:53:46.991000', '2024-12-08 16:53:46.991000', '2024-12-08 16:53:47.126000', NULL, NULL, NULL, NULL),
(23, 'w92eikno37fazwuv2lf1px3r', 'Wortel', 'Vitamin A, C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan mata, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:47.000000', '2024-12-08 16:53:47.000000', '2024-12-08 16:53:47.137000', NULL, NULL, NULL, NULL),
(24, 'flmjhxlwdtaxi9c8k9zakot7', 'Tomat', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, melindungi kulit dari kerusakan\"}]}]', '2024-12-08 16:53:47.015000', '2024-12-08 16:53:47.015000', '2024-12-08 16:53:47.141000', NULL, NULL, NULL, NULL),
(25, 'zddhcm74psavej9ropu2hccg', 'Sawi Hijau', 'Vitamin K, C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:47.018000', '2024-12-08 16:53:47.018000', '2024-12-08 16:53:47.145000', NULL, NULL, NULL, NULL),
(26, 'lldv2ej9hxqocacm65axglvn', 'Ikan Salmon', 'Vitamin D, B12, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan otak, memperkuat tulang, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:47.020000', '2024-12-08 16:53:47.020000', '2024-12-08 16:53:47.148000', NULL, NULL, NULL, NULL),
(27, 'ni0n60tf8atc0e8tjlsir8bc', 'Kacang Hijau', 'Vitamin B1, B6, B9, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung perkembangan janin pada ibu hamil\"}]}]', '2024-12-08 16:53:47.179000', '2024-12-08 16:53:47.179000', NULL, NULL, NULL, NULL, NULL),
(28, 'y19ekthw98o26psay1o5rsch', 'Kubis', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, mendukung kesehatan pencernaan\"}]}]', '2024-12-08 16:53:47.183000', '2024-12-08 16:53:47.183000', NULL, NULL, NULL, NULL, NULL),
(29, 'otifesfeq8bb4r93s55a7hjl', 'Paprika Merah', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kesehatan mata, membantu produksi kolagen\"}]}]', '2024-12-08 16:53:47.199000', '2024-12-08 16:53:47.199000', NULL, NULL, NULL, NULL, NULL),
(30, 'cs5qmp8zkk9fqaa03kg9dzyz', 'Alpukat', 'Vitamin K, B5, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, mendukung kesehatan jantung\"}]}]', '2024-12-08 16:53:47.203000', '2025-01-12 18:50:42.673000', NULL, NULL, 1, NULL, 'Buah'),
(31, 'y7e209emtxr6y0odvyjt9ghc', 'Jamur', 'Vitamin D, B2, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kekuatan tulang, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:47.210000', '2024-12-08 16:53:47.210000', NULL, NULL, NULL, NULL, NULL),
(32, 'pi214fv2edbm7e0qthxzne7s', 'Kacang Almond', 'Vitamin E, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan energi\"}]}]', '2024-12-08 16:53:47.268000', '2024-12-08 16:53:47.268000', NULL, NULL, NULL, NULL, NULL),
(33, 'qvivp6aoued3hdoja24sgzyz', 'Kiwi', 'Vitamin C, K, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, mendukung kesehatan jantung\"}]}]', '2024-12-08 16:53:47.272000', '2024-12-08 16:53:47.272000', NULL, NULL, NULL, NULL, NULL),
(34, 'uga5ltb8hdg09ntdzkcjgdwd', 'Mangga', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:47.284000', '2024-12-08 16:53:47.284000', NULL, NULL, NULL, NULL, NULL),
(35, 's4tya0467i3sd7ze1v1o2ykq', 'Kembang Kol', 'Vitamin C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otak, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:47.292000', '2024-12-08 16:53:47.292000', NULL, NULL, NULL, NULL, NULL),
(36, 'd0x4gd6j8bmltgyboqj0jbdp', 'Pepaya', 'Vitamin C, A, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:47.296000', '2024-12-08 16:53:47.296000', NULL, NULL, NULL, NULL, NULL),
(38, 'ni0n60tf8atc0e8tjlsir8bc', 'Kacang Hijau', 'Vitamin B1, B6, B9, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung perkembangan janin pada ibu hamil\"}]}]', '2024-12-08 16:53:47.179000', '2024-12-08 16:53:47.179000', '2024-12-08 16:53:47.729000', NULL, NULL, NULL, NULL),
(39, 'y19ekthw98o26psay1o5rsch', 'Kubis', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, mendukung kesehatan pencernaan\"}]}]', '2024-12-08 16:53:47.183000', '2024-12-08 16:53:47.183000', '2024-12-08 16:53:47.734000', NULL, NULL, NULL, NULL),
(40, 'otifesfeq8bb4r93s55a7hjl', 'Paprika Merah', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kesehatan mata, membantu produksi kolagen\"}]}]', '2024-12-08 16:53:47.199000', '2024-12-08 16:53:47.199000', '2024-12-08 16:53:47.736000', NULL, NULL, NULL, NULL),
(41, 'pi214fv2edbm7e0qthxzne7s', 'Kacang Almond', 'Vitamin E, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan energi\"}]}]', '2024-12-08 16:53:47.268000', '2024-12-08 16:53:47.268000', '2024-12-08 16:53:47.941000', NULL, NULL, NULL, NULL),
(42, 'y7e209emtxr6y0odvyjt9ghc', 'Jamur', 'Vitamin D, B2, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kekuatan tulang, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:47.210000', '2024-12-08 16:53:47.210000', '2024-12-08 16:53:47.944000', NULL, NULL, NULL, NULL),
(43, 'qvivp6aoued3hdoja24sgzyz', 'Kiwi', 'Vitamin C, K, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, mendukung kesehatan jantung\"}]}]', '2024-12-08 16:53:47.272000', '2024-12-08 16:53:47.272000', '2024-12-08 16:53:47.949000', NULL, NULL, NULL, NULL),
(44, 'uga5ltb8hdg09ntdzkcjgdwd', 'Mangga', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:47.284000', '2024-12-08 16:53:47.284000', '2024-12-08 16:53:47.951000', NULL, NULL, NULL, NULL),
(45, 's4tya0467i3sd7ze1v1o2ykq', 'Kembang Kol', 'Vitamin C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otak, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:47.292000', '2024-12-08 16:53:47.292000', '2024-12-08 16:53:47.966000', NULL, NULL, NULL, NULL),
(46, 'd0x4gd6j8bmltgyboqj0jbdp', 'Pepaya', 'Vitamin C, A, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:47.296000', '2024-12-08 16:53:47.296000', '2024-12-08 16:53:47.970000', NULL, NULL, NULL, NULL),
(47, 'zafjj4tytzuaoc4744jkq816', 'Labu Kuning', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan mata, melindungi kulit dari kerusakan\"}]}]', '2024-12-08 16:53:48.005000', '2024-12-08 16:53:48.005000', NULL, NULL, NULL, NULL, NULL),
(48, 'rvfb5nu3t9gyphkzowobf31c', 'Zucchini', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:48.013000', '2024-12-08 16:53:48.013000', NULL, NULL, NULL, NULL, NULL),
(49, 'gi0red6ovwtidmp2lsrme1rx', 'Kale', 'Vitamin K, A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:48.062000', '2024-12-08 16:53:48.062000', NULL, NULL, NULL, NULL, NULL),
(50, 'tq2witspbjj2n91jwvxrcjxp', 'Anggur', 'Vitamin C, K, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan jantung, melindungi sel dari radikal bebas\"}]}]', '2024-12-08 16:53:48.073000', '2024-12-08 16:53:48.073000', NULL, NULL, NULL, NULL, NULL),
(51, 'lu18uaa3ca9eyt59b909y34r', 'Stroberi', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.081000', '2024-12-08 16:53:48.081000', NULL, NULL, NULL, NULL, NULL),
(52, 'mxzkxsk0fypowbmwa9woc703', 'Buah Naga', 'Vitamin C, B1, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, membantu produksi energi\"}]}]', '2024-12-08 16:53:48.172000', '2024-12-08 16:53:48.172000', NULL, NULL, NULL, NULL, NULL),
(53, 'x64hnbs395k0clo1q0ww9gbn', 'Buncis', 'Vitamin C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan pencernaan, membantu metabolisme\"}]}]', '2024-12-08 16:53:48.183000', '2024-12-08 16:53:48.183000', NULL, NULL, NULL, NULL, NULL),
(54, 'dfd9ku4pmsr4n7def0izcjew', 'Leunca', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otot, menjaga kekebalan tubuh\"}]}]', '2024-12-08 16:53:48.188000', '2024-12-08 16:53:48.188000', NULL, NULL, NULL, NULL, NULL),
(55, 'blabs0ebpgl1rw7ceiwhpldu', 'Buah Pir', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.195000', '2024-12-08 16:53:48.195000', NULL, NULL, NULL, NULL, NULL),
(56, 'vzs3rgkjbxf05wx6qb5uuerq', 'Jagung Manis', 'Vitamin B1, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Memberikan energi, mendukung kesehatan otak\"}]}]', '2024-12-08 16:53:48.200000', '2024-12-08 16:53:48.200000', NULL, NULL, NULL, NULL, NULL),
(57, 'zafjj4tytzuaoc4744jkq816', 'Labu Kuning', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan mata, melindungi kulit dari kerusakan\"}]}]', '2024-12-08 16:53:48.005000', '2024-12-08 16:53:48.005000', '2024-12-08 16:53:48.203000', NULL, NULL, NULL, NULL),
(58, 'rvfb5nu3t9gyphkzowobf31c', 'Zucchini', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:48.013000', '2024-12-08 16:53:48.013000', '2024-12-08 16:53:48.246000', NULL, NULL, NULL, NULL),
(59, 'gi0red6ovwtidmp2lsrme1rx', 'Kale', 'Vitamin K, A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:48.062000', '2024-12-08 16:53:48.062000', '2024-12-08 16:53:48.250000', NULL, NULL, NULL, NULL),
(60, 'tq2witspbjj2n91jwvxrcjxp', 'Anggur', 'Vitamin C, K, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan jantung, melindungi sel dari radikal bebas\"}]}]', '2024-12-08 16:53:48.073000', '2024-12-08 16:53:48.073000', '2024-12-08 16:53:48.254000', NULL, NULL, NULL, NULL),
(61, 'mxzkxsk0fypowbmwa9woc703', 'Buah Naga', 'Vitamin C, B1, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, membantu produksi energi\"}]}]', '2024-12-08 16:53:48.172000', '2024-12-08 16:53:48.172000', '2024-12-08 16:53:48.265000', NULL, NULL, NULL, NULL),
(62, 'lu18uaa3ca9eyt59b909y34r', 'Stroberi', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.081000', '2024-12-08 16:53:48.081000', '2024-12-08 16:53:48.273000', NULL, NULL, NULL, NULL),
(63, 'x64hnbs395k0clo1q0ww9gbn', 'Buncis', 'Vitamin C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan pencernaan, membantu metabolisme\"}]}]', '2024-12-08 16:53:48.183000', '2024-12-08 16:53:48.183000', '2024-12-08 16:53:48.278000', NULL, NULL, NULL, NULL),
(64, 'bs8pg9yczeuikgsowbd7mwb5', 'Melon', 'Vitamin C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, melindungi tubuh dari radikal bebas\"}]}]', '2024-12-08 16:53:48.286000', '2024-12-08 16:53:48.286000', NULL, NULL, NULL, NULL, NULL),
(65, 'dfd9ku4pmsr4n7def0izcjew', 'Leunca', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otot, menjaga kekebalan tubuh\"}]}]', '2024-12-08 16:53:48.188000', '2024-12-08 16:53:48.188000', '2024-12-08 16:53:48.289000', NULL, NULL, NULL, NULL),
(66, 'blabs0ebpgl1rw7ceiwhpldu', 'Buah Pir', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.195000', '2024-12-08 16:53:48.195000', '2024-12-08 16:53:48.298000', NULL, NULL, NULL, NULL),
(67, 'vzs3rgkjbxf05wx6qb5uuerq', 'Jagung Manis', 'Vitamin B1, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Memberikan energi, mendukung kesehatan otak\"}]}]', '2024-12-08 16:53:48.200000', '2024-12-08 16:53:48.200000', '2024-12-08 16:53:48.302000', NULL, NULL, NULL, NULL),
(68, 'ly1mpmxdahsl75je86wea5rd', 'Buah Nanas', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.351000', '2024-12-08 16:53:48.351000', NULL, NULL, NULL, NULL, NULL),
(69, 'tte7i0fvbay1dew9zfjcg5f2', 'Buah Delima', 'Vitamin C, K, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kesehatan jantung, mendukung produksi sel darah merah\"}]}]', '2024-12-08 16:53:48.355000', '2024-12-08 16:53:48.355000', NULL, NULL, NULL, NULL, NULL),
(70, 'bs8pg9yczeuikgsowbd7mwb5', 'Melon', 'Vitamin C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, melindungi tubuh dari radikal bebas\"}]}]', '2024-12-08 16:53:48.286000', '2024-12-08 16:53:48.286000', '2024-12-08 16:53:48.762000', NULL, NULL, NULL, NULL),
(71, 'ly1mpmxdahsl75je86wea5rd', 'Buah Nanas', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.351000', '2024-12-08 16:53:48.351000', '2024-12-08 16:53:48.774000', NULL, NULL, NULL, NULL),
(72, 'tte7i0fvbay1dew9zfjcg5f2', 'Buah Delima', 'Vitamin C, K, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kesehatan jantung, mendukung produksi sel darah merah\"}]}]', '2024-12-08 16:53:48.355000', '2024-12-08 16:53:48.355000', '2024-12-08 16:53:48.776000', NULL, NULL, NULL, NULL),
(73, 'iidnt0h6r0qm24bzn8bhmnrh', 'Ubi Jalar', 'Vitamin A, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan mata, meningkatkan energi\"}]}]', '2024-12-08 16:53:48.865000', '2024-12-08 16:53:48.865000', NULL, NULL, NULL, NULL, NULL),
(74, 'wkk9c3mn2oikkn0wjb9qh89f', 'Blewah', 'Vitamin A, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kelembapan kulit, meningkatkan sistem imun\"}]}]', '2024-12-08 16:53:48.869000', '2024-12-08 16:53:48.869000', NULL, NULL, NULL, NULL, NULL),
(75, 'eg8cogiacqlenb665vd0fwp7', 'Tempe', 'Vitamin B2, B3, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan otot, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:48.877000', '2024-12-08 16:53:48.877000', NULL, NULL, NULL, NULL, NULL),
(76, 'vor7ldrq5qk1kirxqw4m1iks', 'Tahu', 'Vitamin B1, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan energi\"}]}]', '2024-12-08 16:53:48.886000', '2024-12-08 16:53:48.886000', NULL, NULL, NULL, NULL, NULL),
(77, 'ft0mpeao1aygtli874ft6ju3', 'Buah Sirsak', 'Vitamin C, B1, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.899000', '2024-12-08 16:53:48.899000', NULL, NULL, NULL, NULL, NULL),
(78, 'd6fxowgpkqwahgwmkw82xbr2', 'Bayam Merah', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pembentukan darah, mendukung kesehatan mata\"}]}]', '2024-12-08 16:53:48.904000', '2024-12-08 16:53:48.904000', NULL, NULL, NULL, NULL, NULL),
(79, 'xahlyka4sqi0h784tdksm7lp', 'Daun Kelor', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, menjaga kesehatan kulit\"}]}]', '2024-12-08 16:53:48.910000', '2024-12-08 16:53:48.910000', NULL, NULL, NULL, NULL, NULL),
(80, 'cg50y8kc1gwmi2hm4lcl7jp2', 'Buah Jambu Biji', 'Vitamin C, A, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, melancarkan pencernaan\"}]}]', '2024-12-08 16:53:48.914000', '2024-12-08 16:53:48.914000', NULL, NULL, NULL, NULL, NULL),
(81, 'ompypmisg8uh26on0o6fvgt1', 'Selada', 'Vitamin K, C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, membantu metabolisme\"}]}]', '2024-12-08 16:53:48.918000', '2024-12-08 16:53:48.918000', NULL, NULL, NULL, NULL, NULL),
(82, 'iidnt0h6r0qm24bzn8bhmnrh', 'Ubi Jalar', 'Vitamin A, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan mata, meningkatkan energi\"}]}]', '2024-12-08 16:53:48.865000', '2024-12-08 16:53:48.865000', '2024-12-08 16:53:48.959000', NULL, NULL, NULL, NULL),
(83, 'wkk9c3mn2oikkn0wjb9qh89f', 'Blewah', 'Vitamin A, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kelembapan kulit, meningkatkan sistem imun\"}]}]', '2024-12-08 16:53:48.869000', '2024-12-08 16:53:48.869000', '2024-12-08 16:53:48.962000', NULL, NULL, NULL, NULL),
(84, 'eg8cogiacqlenb665vd0fwp7', 'Tempe', 'Vitamin B2, B3, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan otot, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:48.877000', '2024-12-08 16:53:48.877000', '2024-12-08 16:53:48.965000', NULL, NULL, NULL, NULL),
(85, 'vor7ldrq5qk1kirxqw4m1iks', 'Tahu', 'Vitamin B1, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan energi\"}]}]', '2024-12-08 16:53:48.886000', '2024-12-08 16:53:48.886000', '2024-12-08 16:53:48.970000', NULL, NULL, NULL, NULL),
(86, 'ft0mpeao1aygtli874ft6ju3', 'Buah Sirsak', 'Vitamin C, B1, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:48.899000', '2024-12-08 16:53:48.899000', '2024-12-08 16:53:48.973000', NULL, NULL, NULL, NULL),
(87, 'wdkccjkci8rxynnfjlfkdp5s', 'Cabai Merah', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan metabolisme, melindungi kulit\"}]}]', '2024-12-08 16:53:48.978000', '2024-12-08 16:53:48.978000', NULL, NULL, NULL, NULL, NULL),
(88, 'd6fxowgpkqwahgwmkw82xbr2', 'Bayam Merah', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pembentukan darah, mendukung kesehatan mata\"}]}]', '2024-12-08 16:53:48.904000', '2024-12-08 16:53:48.904000', '2024-12-08 16:53:48.979000', NULL, NULL, NULL, NULL),
(89, 'xahlyka4sqi0h784tdksm7lp', 'Daun Kelor', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, menjaga kesehatan kulit\"}]}]', '2024-12-08 16:53:48.910000', '2024-12-08 16:53:48.910000', '2024-12-08 16:53:48.982000', NULL, NULL, NULL, NULL),
(90, 'cg50y8kc1gwmi2hm4lcl7jp2', 'Buah Jambu Biji', 'Vitamin C, A, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, melancarkan pencernaan\"}]}]', '2024-12-08 16:53:48.914000', '2024-12-08 16:53:48.914000', '2024-12-08 16:53:48.984000', NULL, NULL, NULL, NULL),
(91, 'ompypmisg8uh26on0o6fvgt1', 'Selada', 'Vitamin K, C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, membantu metabolisme\"}]}]', '2024-12-08 16:53:48.918000', '2024-12-08 16:53:48.918000', '2024-12-08 16:53:48.988000', NULL, NULL, NULL, NULL),
(92, 'pi2odin4izkz0004ok0ibwcy', 'Labu Siam', 'Vitamin C, B9, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.019000', '2024-12-08 16:53:49.019000', NULL, NULL, NULL, NULL, NULL),
(93, 'hwtc62lc1x9x2ofk3uw6hyls', 'Belimbing', 'Vitamin C, B5, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, membantu fungsi saraf\"}]}]', '2024-12-08 16:53:49.086000', '2024-12-08 16:53:49.086000', NULL, NULL, NULL, NULL, NULL),
(94, 'pb1fsyl0vpeoax9dul19woyd', 'Buah Ceri', 'Vitamin C, A, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melawan peradangan, meningkatkan kesehatan mata\"}]}]', '2024-12-08 16:53:49.102000', '2024-12-08 16:53:49.102000', NULL, NULL, NULL, NULL, NULL),
(95, 'j23sxrld909yiffv9a6amvs9', 'Jamur Enoki', 'Vitamin D, B2, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan kulit, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.113000', '2024-12-08 16:53:49.113000', NULL, NULL, NULL, NULL, NULL),
(96, 'mkvoyt8ho3co2hswgp8m2y1r', 'Caisim', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, meningkatkan sistem imun\"}]}]', '2024-12-08 16:53:49.124000', '2024-12-08 16:53:49.124000', NULL, NULL, NULL, NULL, NULL),
(97, 'wdkccjkci8rxynnfjlfkdp5s', 'Cabai Merah', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan metabolisme, melindungi kulit\"}]}]', '2024-12-08 16:53:48.978000', '2024-12-08 16:53:48.978000', '2024-12-08 16:53:49.127000', NULL, NULL, NULL, NULL),
(98, 'lnsk306526i25w2ec3gx954k', 'Edamame', 'Vitamin K, B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.136000', '2024-12-08 16:53:49.136000', NULL, NULL, NULL, NULL, NULL),
(99, 'l7shir3gc59c3ecdbtkpntp8', 'Nangka', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.141000', '2024-12-08 16:53:49.141000', NULL, NULL, NULL, NULL, NULL),
(100, 'vhl82fyerlawiozy0cc0iklw', 'Buah Pisang', 'Vitamin B6, C, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan otak, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.144000', '2024-12-08 16:53:49.144000', NULL, NULL, NULL, NULL, NULL),
(101, 'rglwlypyl4ypg9a7i0cv5awd', 'Semangka', 'Vitamin C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga hidrasi tubuh, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.147000', '2024-12-08 16:53:49.147000', NULL, NULL, NULL, NULL, NULL),
(102, 'pi2odin4izkz0004ok0ibwcy', 'Labu Siam', 'Vitamin C, B9, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.019000', '2024-12-08 16:53:49.019000', '2024-12-08 16:53:49.186000', NULL, NULL, NULL, NULL),
(103, 'hwtc62lc1x9x2ofk3uw6hyls', 'Belimbing', 'Vitamin C, B5, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, membantu fungsi saraf\"}]}]', '2024-12-08 16:53:49.086000', '2024-12-08 16:53:49.086000', '2024-12-08 16:53:49.200000', NULL, NULL, NULL, NULL),
(104, 'pb1fsyl0vpeoax9dul19woyd', 'Buah Ceri', 'Vitamin C, A, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melawan peradangan, meningkatkan kesehatan mata\"}]}]', '2024-12-08 16:53:49.102000', '2024-12-08 16:53:49.102000', '2024-12-08 16:53:49.213000', NULL, NULL, NULL, NULL),
(105, 'j23sxrld909yiffv9a6amvs9', 'Jamur Enoki', 'Vitamin D, B2, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan kulit, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.113000', '2024-12-08 16:53:49.113000', '2024-12-08 16:53:49.218000', NULL, NULL, NULL, NULL),
(106, 'mkvoyt8ho3co2hswgp8m2y1r', 'Caisim', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, meningkatkan sistem imun\"}]}]', '2024-12-08 16:53:49.124000', '2024-12-08 16:53:49.124000', '2024-12-08 16:53:49.223000', NULL, NULL, NULL, NULL),
(107, 'zqmfysjarzuaaad6mxvdgohk', 'Kacang Merah', 'Vitamin B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.227000', '2024-12-08 16:53:49.227000', NULL, NULL, NULL, NULL, NULL),
(108, 'rglwlypyl4ypg9a7i0cv5awd', 'Semangka', 'Vitamin C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga hidrasi tubuh, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.147000', '2024-12-08 16:53:49.147000', '2024-12-08 16:53:49.228000', NULL, NULL, NULL, NULL),
(109, 'lnsk306526i25w2ec3gx954k', 'Edamame', 'Vitamin K, B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.136000', '2024-12-08 16:53:49.136000', '2024-12-08 16:53:49.233000', NULL, NULL, NULL, NULL),
(110, 'l7shir3gc59c3ecdbtkpntp8', 'Nangka', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.141000', '2024-12-08 16:53:49.141000', '2024-12-08 16:53:49.236000', NULL, NULL, NULL, NULL),
(111, 'vhl82fyerlawiozy0cc0iklw', 'Buah Pisang', 'Vitamin B6, C, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan otak, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.144000', '2024-12-08 16:53:49.144000', '2024-12-08 16:53:49.241000', NULL, NULL, NULL, NULL),
(112, 'v3unkej0xx2sjtez1rh775g2', 'Kacang Kedelai', 'Vitamin B1, B6, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung metabolisme, meningkatkan kesehatan otak\"}]}]', '2024-12-08 16:53:49.310000', '2024-12-08 16:53:49.310000', NULL, NULL, NULL, NULL, NULL),
(113, 'nwusjxfqad7zjethrdepahwj', 'Buah Aprikot', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi kulit, menjaga kesehatan mata\"}]}]', '2024-12-08 16:53:49.316000', '2024-12-08 16:53:49.316000', NULL, NULL, NULL, NULL, NULL),
(114, 'ijb13is2d8pptinx2m6vpi0i', 'Buah Kurma', 'Vitamin B6, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung fungsi otak\"}]}]', '2024-12-08 16:53:49.329000', '2024-12-08 16:53:49.329000', NULL, NULL, NULL, NULL, NULL),
(115, 'mjcke6mo23b2u5niu6jveapx', 'Buah Ciplukan', 'Vitamin C, B1, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menurunkan peradangan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.334000', '2024-12-08 16:53:49.334000', NULL, NULL, NULL, NULL, NULL),
(116, 'zqmfysjarzuaaad6mxvdgohk', 'Kacang Merah', 'Vitamin B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.227000', '2024-12-08 16:53:49.227000', '2024-12-08 16:53:49.335000', NULL, NULL, NULL, NULL),
(117, 'coss9jzsyks6seo4d9de24qu', 'Mentimun', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi kulit, menjaga hidrasi tubuh\"}]}]', '2024-12-08 16:53:49.345000', '2024-12-08 16:53:49.345000', NULL, NULL, NULL, NULL, NULL),
(118, 'wd7olixaiya0h0y7nhz29y03', 'Pokcoy', 'Vitamin K, C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:49.412000', '2024-12-08 16:53:49.412000', NULL, NULL, NULL, NULL, NULL),
(119, 'pwhn740n0yvc46tntp2gc03t', 'Buah Markisa', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menenangkan saraf, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.421000', '2024-12-08 16:53:49.421000', NULL, NULL, NULL, NULL, NULL),
(120, 'lorgqlb1dxiklitbfm9ul8an', 'Kecambah', 'Vitamin B6, B9, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu regenerasi sel, mendukung metabolisme\"}]}]', '2024-12-08 16:53:49.429000', '2024-12-08 16:53:49.429000', NULL, NULL, NULL, NULL, NULL),
(121, 'nidmz4cc09b31604zpbwye5l', 'Daun Singkong', 'Vitamin A, C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, mendukung kesehatan mata\"}]}]', '2024-12-08 16:53:49.434000', '2024-12-08 16:53:49.434000', NULL, NULL, NULL, NULL, NULL),
(122, 'v3unkej0xx2sjtez1rh775g2', 'Kacang Kedelai', 'Vitamin B1, B6, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung metabolisme, meningkatkan kesehatan otak\"}]}]', '2024-12-08 16:53:49.310000', '2024-12-08 16:53:49.310000', '2024-12-08 16:53:49.464000', NULL, NULL, NULL, NULL),
(123, 'h4p9rhqugzcove6ijvi9ke4w', 'Buah Durian', 'Vitamin B6, B9, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung fungsi saraf\"}]}]', '2024-12-08 16:53:49.497000', '2024-12-08 16:53:49.497000', NULL, NULL, NULL, NULL, NULL),
(124, 'nwusjxfqad7zjethrdepahwj', 'Buah Aprikot', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi kulit, menjaga kesehatan mata\"}]}]', '2024-12-08 16:53:49.316000', '2024-12-08 16:53:49.316000', '2024-12-08 16:53:49.499000', NULL, NULL, NULL, NULL),
(125, 'ijb13is2d8pptinx2m6vpi0i', 'Buah Kurma', 'Vitamin B6, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung fungsi otak\"}]}]', '2024-12-08 16:53:49.329000', '2024-12-08 16:53:49.329000', '2024-12-08 16:53:49.505000', NULL, NULL, NULL, NULL),
(126, 'mjcke6mo23b2u5niu6jveapx', 'Buah Ciplukan', 'Vitamin C, B1, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menurunkan peradangan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.334000', '2024-12-08 16:53:49.334000', '2024-12-08 16:53:49.514000', NULL, NULL, NULL, NULL),
(127, 'nidmz4cc09b31604zpbwye5l', 'Daun Singkong', 'Vitamin A, C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, mendukung kesehatan mata\"}]}]', '2024-12-08 16:53:49.434000', '2024-12-08 16:53:49.434000', '2024-12-08 16:53:49.532000', NULL, NULL, NULL, NULL),
(128, 'coss9jzsyks6seo4d9de24qu', 'Mentimun', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi kulit, menjaga hidrasi tubuh\"}]}]', '2024-12-08 16:53:49.345000', '2024-12-08 16:53:49.345000', '2024-12-08 16:53:49.535000', NULL, NULL, NULL, NULL),
(129, 'wd7olixaiya0h0y7nhz29y03', 'Pokcoy', 'Vitamin K, C, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:49.412000', '2024-12-08 16:53:49.412000', '2024-12-08 16:53:49.539000', NULL, NULL, NULL, NULL),
(130, 'pwhn740n0yvc46tntp2gc03t', 'Buah Markisa', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menenangkan saraf, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.421000', '2024-12-08 16:53:49.421000', '2024-12-08 16:53:49.541000', NULL, NULL, NULL, NULL),
(131, 'lorgqlb1dxiklitbfm9ul8an', 'Kecambah', 'Vitamin B6, B9, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu regenerasi sel, mendukung metabolisme\"}]}]', '2024-12-08 16:53:49.429000', '2024-12-08 16:53:49.429000', '2024-12-08 16:53:49.544000', NULL, NULL, NULL, NULL),
(132, 'yx4h8ueu4gtu17qdbafujy85', 'Buah Kelapa', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga hidrasi tubuh, mendukung sistem imun\"}]}]', '2024-12-08 16:53:49.575000', '2024-12-08 16:53:49.575000', NULL, NULL, NULL, NULL, NULL),
(133, 'qts00xk2or749lsws6l8w63u', 'Belut', 'Vitamin A, B12, D', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan produksi sel darah merah\"}]}]', '2024-12-08 16:53:49.579000', '2024-12-08 16:53:49.579000', NULL, NULL, NULL, NULL, NULL),
(134, 'o99qahhhaoxeltre5kh3nhrt', 'Ikan Tuna', 'Vitamin D, B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung fungsi otak, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:49.581000', '2024-12-08 16:53:49.581000', NULL, NULL, NULL, NULL, NULL),
(135, 'h4p9rhqugzcove6ijvi9ke4w', 'Buah Durian', 'Vitamin B6, B9, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung fungsi saraf\"}]}]', '2024-12-08 16:53:49.497000', '2024-12-08 16:53:49.497000', '2024-12-08 16:53:49.584000', NULL, NULL, NULL, NULL),
(136, 'nizytstzc3nz9o7cwfqex5c1', 'Lele', 'Vitamin B12, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan otot, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.634000', '2024-12-08 16:53:49.634000', NULL, NULL, NULL, NULL, NULL),
(137, 'ozm5yvn4uahstjnoxvf8owwt', 'Ceker Ayam', 'Vitamin B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu regenerasi kolagen, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:49.656000', '2024-12-08 16:53:49.656000', NULL, NULL, NULL, NULL, NULL),
(138, 'k9bmc644263bht7ev42ku7u8', 'Buah Plum', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.663000', '2024-12-08 16:53:49.663000', NULL, NULL, NULL, NULL, NULL),
(139, 'jkmm7gzjnecfgz5qv1glgj3u', 'Daun Mint', 'Vitamin A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menenangkan pencernaan, membantu kesehatan mulut\"}]}]', '2024-12-08 16:53:49.716000', '2024-12-08 16:53:49.716000', NULL, NULL, NULL, NULL, NULL),
(140, 'x4s5bi53kejevy9wvahu1p5k', 'Brokoli Ungu', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.728000', '2024-12-08 16:53:49.728000', NULL, NULL, NULL, NULL, NULL),
(141, 'bzgi15yxj0ikjbgpi5n0z97k', 'Kale Merah', 'Vitamin K, A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan metabolisme, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:49.750000', '2024-12-08 16:53:49.750000', NULL, NULL, NULL, NULL, NULL),
(142, 'qts00xk2or749lsws6l8w63u', 'Belut', 'Vitamin A, B12, D', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan produksi sel darah merah\"}]}]', '2024-12-08 16:53:49.579000', '2024-12-08 16:53:49.579000', '2024-12-08 16:53:49.751000', NULL, NULL, NULL, NULL),
(143, 'ozm5yvn4uahstjnoxvf8owwt', 'Ceker Ayam', 'Vitamin B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu regenerasi kolagen, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:49.656000', '2024-12-08 16:53:49.656000', '2024-12-08 16:53:49.756000', NULL, NULL, NULL, NULL),
(144, 'yx4h8ueu4gtu17qdbafujy85', 'Buah Kelapa', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga hidrasi tubuh, mendukung sistem imun\"}]}]', '2024-12-08 16:53:49.575000', '2024-12-08 16:53:49.575000', '2024-12-08 16:53:49.764000', NULL, NULL, NULL, NULL),
(145, 'o99qahhhaoxeltre5kh3nhrt', 'Ikan Tuna', 'Vitamin D, B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung fungsi otak, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:49.581000', '2024-12-08 16:53:49.581000', '2024-12-08 16:53:49.779000', NULL, NULL, NULL, NULL),
(146, 'ovwn1gknbbsg6q4zugurqe06', 'Buah Kismis', 'Vitamin B6, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otot, menjaga keseimbangan elektrolit\"}]}]', '2024-12-08 16:53:49.784000', '2024-12-08 16:53:49.784000', NULL, NULL, NULL, NULL, NULL),
(147, 'nizytstzc3nz9o7cwfqex5c1', 'Lele', 'Vitamin B12, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan otot, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.634000', '2024-12-08 16:53:49.634000', '2024-12-08 16:53:49.786000', NULL, NULL, NULL, NULL),
(148, 'k9bmc644263bht7ev42ku7u8', 'Buah Plum', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.663000', '2024-12-08 16:53:49.663000', '2024-12-08 16:53:49.791000', NULL, NULL, NULL, NULL),
(149, 'jkmm7gzjnecfgz5qv1glgj3u', 'Daun Mint', 'Vitamin A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menenangkan pencernaan, membantu kesehatan mulut\"}]}]', '2024-12-08 16:53:49.716000', '2024-12-08 16:53:49.716000', '2024-12-08 16:53:49.812000', NULL, NULL, NULL, NULL),
(150, 'lhmxvmsh1s979x7m13nlx7de', 'Kacang Mete', 'Vitamin E, B1, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan kulit, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.832000', '2024-12-08 16:53:49.832000', NULL, NULL, NULL, NULL, NULL),
(151, 'x4s5bi53kejevy9wvahu1p5k', 'Brokoli Ungu', 'Vitamin C, K, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.728000', '2024-12-08 16:53:49.728000', '2024-12-08 16:53:49.835000', NULL, NULL, NULL, NULL),
(152, 'bzgi15yxj0ikjbgpi5n0z97k', 'Kale Merah', 'Vitamin K, A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan metabolisme, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:49.750000', '2024-12-08 16:53:49.750000', '2024-12-08 16:53:49.852000', NULL, NULL, NULL, NULL),
(153, 'xq4zi95p6bgsotuwbvw33hx3', 'Buah Bit', 'Vitamin C, B9, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pembentukan sel darah merah, mendukung kesehatan otak\"}]}]', '2024-12-08 16:53:49.898000', '2024-12-08 16:53:49.898000', NULL, NULL, NULL, NULL, NULL),
(154, 'thfebe9sspv90bvte180utjl', 'Bok Choy', 'Vitamin K, A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.903000', '2024-12-08 16:53:49.903000', NULL, NULL, NULL, NULL, NULL),
(155, 'sdz93auzk4t60xmk08w1yfbq', 'Paprika Kuning', 'Vitamin C, B6, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan metabolisme, mendukung kesehatan mata\"}]}]', '2024-12-08 16:53:49.913000', '2024-12-08 16:53:49.913000', NULL, NULL, NULL, NULL, NULL),
(156, 'd0pwbc0akfdjjvork9atawsk', 'Buah Arbei', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi sel tubuh dari radikal bebas, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.917000', '2024-12-08 16:53:49.917000', NULL, NULL, NULL, NULL, NULL),
(157, 'i74ynavclp3a9zj4s6wsokdj', 'Buah Anggur Hijau', 'Vitamin K, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan jantung, meningkatkan produksi energi\"}]}]', '2024-12-08 16:53:50.011000', '2024-12-08 16:53:50.011000', NULL, NULL, NULL, NULL, NULL),
(158, 'ovwn1gknbbsg6q4zugurqe06', 'Buah Kismis', 'Vitamin B6, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otot, menjaga keseimbangan elektrolit\"}]}]', '2024-12-08 16:53:49.784000', '2024-12-08 16:53:49.784000', '2024-12-08 16:53:49.933000', NULL, NULL, NULL, NULL),
(159, 'ezqpemyvvz0k0bf3js7s6drz', 'Kelapa Muda', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga hidrasi, mendukung fungsi otak\"}]}]', '2024-12-08 16:53:50.060000', '2024-12-08 16:53:50.060000', NULL, NULL, NULL, NULL, NULL),
(160, 'lhmxvmsh1s979x7m13nlx7de', 'Kacang Mete', 'Vitamin E, B1, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan kulit, meningkatkan energi\"}]}]', '2024-12-08 16:53:49.832000', '2024-12-08 16:53:49.832000', '2024-12-08 16:53:50.081000', NULL, NULL, NULL, NULL),
(161, 'qvpuagl3vlv3nd85y4q9p5ml', 'Kentang Ungu', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otak, meningkatkan energi\"}]}]', '2024-12-08 16:53:50.100000', '2024-12-08 16:53:50.100000', NULL, NULL, NULL, NULL, NULL),
(162, 'rhhh1zsxkmbmconsxnjcaz98', 'Ikan Kakap', 'Vitamin D, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.106000', '2024-12-08 16:53:50.106000', NULL, NULL, NULL, NULL, NULL),
(163, 'thfebe9sspv90bvte180utjl', 'Bok Choy', 'Vitamin K, A, C', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan tulang, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:49.903000', '2024-12-08 16:53:49.903000', '2024-12-08 16:53:50.110000', NULL, NULL, NULL, NULL),
(164, 'xq4zi95p6bgsotuwbvw33hx3', 'Buah Bit', 'Vitamin C, B9, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pembentukan sel darah merah, mendukung kesehatan otak\"}]}]', '2024-12-08 16:53:49.898000', '2024-12-08 16:53:49.898000', '2024-12-08 16:53:50.116000', NULL, NULL, NULL, NULL),
(165, 'd0pwbc0akfdjjvork9atawsk', 'Buah Arbei', 'Vitamin C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi sel tubuh dari radikal bebas, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:49.917000', '2024-12-08 16:53:49.917000', '2024-12-08 16:53:50.126000', NULL, NULL, NULL, NULL),
(166, 'sdz93auzk4t60xmk08w1yfbq', 'Paprika Kuning', 'Vitamin C, B6, A', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan metabolisme, mendukung kesehatan mata\"}]}]', '2024-12-08 16:53:49.913000', '2024-12-08 16:53:49.913000', '2024-12-08 16:53:50.137000', NULL, NULL, NULL, NULL),
(167, 'rcv0wb7eyppfzvx57rz5imk5', 'Ikan Tenggiri', 'Vitamin D, B3, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan fungsi otak, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:50.155000', '2024-12-08 16:53:50.155000', NULL, NULL, NULL, NULL, NULL),
(168, 'i74ynavclp3a9zj4s6wsokdj', 'Buah Anggur Hijau', 'Vitamin K, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan jantung, meningkatkan produksi energi\"}]}]', '2024-12-08 16:53:50.011000', '2024-12-08 16:53:50.011000', '2024-12-08 16:53:50.166000', NULL, NULL, NULL, NULL),
(169, 'ezqpemyvvz0k0bf3js7s6drz', 'Kelapa Muda', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga hidrasi, mendukung fungsi otak\"}]}]', '2024-12-08 16:53:50.060000', '2024-12-08 16:53:50.060000', '2024-12-08 16:53:50.181000', NULL, NULL, NULL, NULL),
(170, 'aenms9mdga9rmp7mnrv8yeq7', 'Jamur Shitake', 'Vitamin D, B2, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung sistem imun, membantu kesehatan kulit\"}]}]', '2024-12-08 16:53:50.191000', '2024-12-08 16:53:50.191000', NULL, NULL, NULL, NULL, NULL),
(171, 'qvpuagl3vlv3nd85y4q9p5ml', 'Kentang Ungu', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan otak, meningkatkan energi\"}]}]', '2024-12-08 16:53:50.100000', '2024-12-08 16:53:50.100000', '2024-12-08 16:53:50.213000', NULL, NULL, NULL, NULL),
(172, 'm6o9nttrcv2gr26s4nz86ilh', 'Tempe Goreng', 'Vitamin B2, B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan otot, mendukung produksi energi\"}]}]', '2024-12-08 16:53:50.234000', '2024-12-08 16:53:50.234000', NULL, NULL, NULL, NULL, NULL),
(173, 'b2y55e0tizwk350dj7z34pza', 'Daun Bawang', 'Vitamin K, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan mata, mendukung metabolisme\"}]}]', '2024-12-08 16:53:50.243000', '2024-12-08 16:53:50.243000', NULL, NULL, NULL, NULL, NULL),
(174, 'rhhh1zsxkmbmconsxnjcaz98', 'Ikan Kakap', 'Vitamin D, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.106000', '2024-12-08 16:53:50.106000', '2024-12-08 16:53:50.251000', NULL, NULL, NULL, NULL),
(175, 'vo4bak3kqgyhx478gkj26kaz', 'Kacang Polong', 'Vitamin K, B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan jantung, mendukung pertumbuhan\"}]}]', '2024-12-08 16:53:50.277000', '2024-12-08 16:53:50.277000', NULL, NULL, NULL, NULL, NULL),
(176, 'nmr67diugqvr974ncsrds487', 'Pare', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan pencernaan, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.282000', '2024-12-08 16:53:50.282000', NULL, NULL, NULL, NULL, NULL),
(177, 'rcv0wb7eyppfzvx57rz5imk5', 'Ikan Tenggiri', 'Vitamin D, B3, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan fungsi otak, menjaga kesehatan jantung\"}]}]', '2024-12-08 16:53:50.155000', '2024-12-08 16:53:50.155000', '2024-12-08 16:53:50.326000', NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `document_id`, `name_product`, `vitamin`, `benefit`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `category`) VALUES
(178, 'py5c6utj3ylngn8t7unx48bd', 'Selai Kacang', 'Vitamin E, B3, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Memberikan energi, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:50.340000', '2024-12-08 16:53:50.340000', NULL, NULL, NULL, NULL, NULL),
(179, 'nrrrw2wsuxg1auisryj6uu90', 'Bayam Air', 'Vitamin A, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan mata, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:50.349000', '2024-12-08 16:53:50.349000', NULL, NULL, NULL, NULL, NULL),
(180, 'aenms9mdga9rmp7mnrv8yeq7', 'Jamur Shitake', 'Vitamin D, B2, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung sistem imun, membantu kesehatan kulit\"}]}]', '2024-12-08 16:53:50.191000', '2024-12-08 16:53:50.191000', '2024-12-08 16:53:50.380000', NULL, NULL, NULL, NULL),
(181, 'hb4giobatfl3p9s9sbc0xxlk', 'Kol Merah', 'Vitamin C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.390000', '2024-12-08 16:53:50.390000', NULL, NULL, NULL, NULL, NULL),
(182, 'm6o9nttrcv2gr26s4nz86ilh', 'Tempe Goreng', 'Vitamin B2, B6, B12', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan otot, mendukung produksi energi\"}]}]', '2024-12-08 16:53:50.234000', '2024-12-08 16:53:50.234000', '2024-12-08 16:53:50.392000', NULL, NULL, NULL, NULL),
(183, 'b2y55e0tizwk350dj7z34pza', 'Daun Bawang', 'Vitamin K, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan mata, mendukung metabolisme\"}]}]', '2024-12-08 16:53:50.243000', '2024-12-08 16:53:50.243000', '2024-12-08 16:53:50.420000', NULL, NULL, NULL, NULL),
(184, 'qia6t2poh3q5u18cgrqt83pq', 'Buah Salak', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.430000', '2024-12-08 16:53:50.430000', NULL, NULL, NULL, NULL, NULL),
(185, 'vo4bak3kqgyhx478gkj26kaz', 'Kacang Polong', 'Vitamin K, B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan jantung, mendukung pertumbuhan\"}]}]', '2024-12-08 16:53:50.277000', '2024-12-08 16:53:50.277000', '2024-12-08 16:53:50.433000', NULL, NULL, NULL, NULL),
(186, 'or3cz8z5wdw6x5a3deb6y19i', 'Buah Mangga Muda', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan kulit, mendukung sistem imun\"}]}]', '2024-12-08 16:53:50.461000', '2024-12-08 16:53:50.461000', NULL, NULL, NULL, NULL, NULL),
(187, 'nrrrw2wsuxg1auisryj6uu90', 'Bayam Air', 'Vitamin A, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan mata, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:50.349000', '2024-12-08 16:53:50.349000', '2024-12-08 16:53:50.463000', NULL, NULL, NULL, NULL),
(188, 'nmr67diugqvr974ncsrds487', 'Pare', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan pencernaan, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.282000', '2024-12-08 16:53:50.282000', '2024-12-08 16:53:50.473000', NULL, NULL, NULL, NULL),
(189, 'py5c6utj3ylngn8t7unx48bd', 'Selai Kacang', 'Vitamin E, B3, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Memberikan energi, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:50.340000', '2024-12-08 16:53:50.340000', '2024-12-08 16:53:50.483000', NULL, NULL, NULL, NULL),
(190, 'skb3bjqabcaaxx9w798ew6ho', 'Belimbing Wuluh', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi sel tubuh dari radikal bebas, membantu pencernaan\"}]}]', '2024-12-08 16:53:50.510000', '2024-12-08 16:53:50.510000', NULL, NULL, NULL, NULL, NULL),
(191, 'hb4giobatfl3p9s9sbc0xxlk', 'Kol Merah', 'Vitamin C, K, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.390000', '2024-12-08 16:53:50.390000', '2024-12-08 16:53:50.551000', NULL, NULL, NULL, NULL),
(192, 'xm4bakuknpnn4vxpkh25pqhk', 'Daun Kemangi', 'Vitamin A, C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan pencernaan, menenangkan tubuh\"}]}]', '2024-12-08 16:53:50.566000', '2024-12-08 16:53:50.566000', NULL, NULL, NULL, NULL, NULL),
(193, 'o5c2zwsamed78e7n525p1121', 'Buah Lo Han Kuo', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pernapasan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.579000', '2024-12-08 16:53:50.579000', NULL, NULL, NULL, NULL, NULL),
(194, 'jav6qkx4df7sq530r4zaoe7v', 'Daun Katuk', 'Vitamin A, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung produksi ASI, membantu kesehatan tulang\"}]}]', '2024-12-08 16:53:50.596000', '2024-12-08 16:53:50.596000', NULL, NULL, NULL, NULL, NULL),
(195, 'qia6t2poh3q5u18cgrqt83pq', 'Buah Salak', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.430000', '2024-12-08 16:53:50.430000', '2024-12-08 16:53:50.635000', NULL, NULL, NULL, NULL),
(196, 'rllk7qgod0k5w28g7gp5352s', 'Jeruk Limau', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi tubuh dari radikal bebas, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.652000', '2024-12-08 16:53:50.652000', NULL, NULL, NULL, NULL, NULL),
(197, 'gxep991d0s8jufvl22snhhxv', 'Buah Apel Hijau', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, menjaga kesehatan kulit\"}]}]', '2024-12-08 16:53:50.667000', '2024-12-08 16:53:50.667000', NULL, NULL, NULL, NULL, NULL),
(198, 'or3cz8z5wdw6x5a3deb6y19i', 'Buah Mangga Muda', 'Vitamin A, C, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan kulit, mendukung sistem imun\"}]}]', '2024-12-08 16:53:50.461000', '2024-12-08 16:53:50.461000', '2024-12-08 16:53:50.708000', NULL, NULL, NULL, NULL),
(199, 't7uwidzo0zwasukizu24ak2x', 'Ubi Ungu', 'Vitamin A, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan mata, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.732000', '2024-12-08 16:53:50.732000', NULL, NULL, NULL, NULL, NULL),
(200, 'skb3bjqabcaaxx9w798ew6ho', 'Belimbing Wuluh', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi sel tubuh dari radikal bebas, membantu pencernaan\"}]}]', '2024-12-08 16:53:50.510000', '2024-12-08 16:53:50.510000', '2024-12-08 16:53:50.770000', NULL, NULL, NULL, NULL),
(201, 'kyejdn7b57h4zuicfq0k1rdl', 'Buah Nangka Muda', 'Vitamin C, B6, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, mendukung sistem imun\"}]}]', '2024-12-08 16:53:50.779000', '2024-12-08 16:53:50.779000', NULL, NULL, NULL, NULL, NULL),
(202, 'xm4bakuknpnn4vxpkh25pqhk', 'Daun Kemangi', 'Vitamin A, C, K', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu kesehatan pencernaan, menenangkan tubuh\"}]}]', '2024-12-08 16:53:50.566000', '2024-12-08 16:53:50.566000', '2024-12-08 16:53:50.780000', NULL, NULL, NULL, NULL),
(203, 'o5c2zwsamed78e7n525p1121', 'Buah Lo Han Kuo', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pernapasan, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.579000', '2024-12-08 16:53:50.579000', '2024-12-08 16:53:50.783000', NULL, NULL, NULL, NULL),
(204, 'jav6qkx4df7sq530r4zaoe7v', 'Daun Katuk', 'Vitamin A, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung produksi ASI, membantu kesehatan tulang\"}]}]', '2024-12-08 16:53:50.596000', '2024-12-08 16:53:50.596000', '2024-12-08 16:53:50.789000', NULL, NULL, NULL, NULL),
(205, 'cs7jlje2z64h0s2xfu1bue84', 'Edamame Hijau', 'Vitamin K, B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan energi\"}]}]', '2024-12-08 16:53:50.817000', '2024-12-08 16:53:50.817000', NULL, NULL, NULL, NULL, NULL),
(206, 'rllk7qgod0k5w28g7gp5352s', 'Jeruk Limau', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melindungi tubuh dari radikal bebas, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.652000', '2024-12-08 16:53:50.652000', '2024-12-08 16:53:50.818000', NULL, NULL, NULL, NULL),
(207, 'gxep991d0s8jufvl22snhhxv', 'Buah Apel Hijau', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, menjaga kesehatan kulit\"}]}]', '2024-12-08 16:53:50.667000', '2024-12-08 16:53:50.667000', '2024-12-08 16:53:50.835000', NULL, NULL, NULL, NULL),
(208, 'ijqfyau7rgnabyi2ko9rnt8f', 'Buah Kersen', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu menurunkan kolesterol, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.849000', '2024-12-08 16:53:50.849000', NULL, NULL, NULL, NULL, NULL),
(209, 't7uwidzo0zwasukizu24ak2x', 'Ubi Ungu', 'Vitamin A, C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan mata, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.732000', '2024-12-08 16:53:50.732000', '2024-12-08 16:53:50.898000', NULL, NULL, NULL, NULL),
(210, 'z7bm4e4c4dmso8uci2c4gp0x', 'Jamur Tiram', 'Vitamin D, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, mendukung metabolisme\"}]}]', '2024-12-08 16:53:50.914000', '2024-12-08 16:53:50.914000', NULL, NULL, NULL, NULL, NULL),
(211, 'oujegp349fxx9mmxaea4b2ge', 'Buah Langsat', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, membantu melancarkan pencernaan\"}]}]', '2024-12-08 16:53:50.917000', '2024-12-08 16:53:50.917000', NULL, NULL, NULL, NULL, NULL),
(212, 'ybdi42hmcavuzqasf4zifv96', 'Kacang Hitam', 'Vitamin B1, B6, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan energi\"}]}]', '2024-12-08 16:53:50.929000', '2024-12-08 16:53:50.929000', NULL, NULL, NULL, NULL, NULL),
(213, 'kyejdn7b57h4zuicfq0k1rdl', 'Buah Nangka Muda', 'Vitamin C, B6, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, mendukung sistem imun\"}]}]', '2024-12-08 16:53:50.779000', '2024-12-08 16:53:50.779000', '2024-12-08 16:53:50.934000', NULL, NULL, NULL, NULL),
(214, 'zbgapngxib50b4bwca3qpqtz', 'Daging Bebek', 'Vitamin B12, B3, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung pembentukan otot, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.953000', '2024-12-08 16:53:50.953000', NULL, NULL, NULL, NULL, NULL),
(215, 'cs7jlje2z64h0s2xfu1bue84', 'Edamame Hijau', 'Vitamin K, B1, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan tulang, meningkatkan energi\"}]}]', '2024-12-08 16:53:50.817000', '2024-12-08 16:53:50.817000', '2024-12-08 16:53:50.969000', NULL, NULL, NULL, NULL),
(216, 'c8cywx7liqb3p42p0u4gxldb', 'Daging Kambing', 'Vitamin B12, B6, Zat Besi', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung kesehatan darah\"}]}]', '2024-12-08 16:53:50.989000', '2024-12-08 16:53:50.989000', NULL, NULL, NULL, NULL, NULL),
(217, 'wochxm5p19wqm3lshc1eu5mh', 'Labu Air', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:50.994000', '2024-12-08 16:53:50.994000', NULL, NULL, NULL, NULL, NULL),
(218, 'ijqfyau7rgnabyi2ko9rnt8f', 'Buah Kersen', 'Vitamin C, A, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu menurunkan kolesterol, meningkatkan daya tahan tubuh\"}]}]', '2024-12-08 16:53:50.849000', '2024-12-08 16:53:50.849000', '2024-12-08 16:53:51.029000', NULL, NULL, NULL, NULL),
(219, 'j7g9pdqtsxcbynau6020ffwz', 'Daun Daun Cincau', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu meredakan peradangan, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:51.034000', '2024-12-08 16:53:51.034000', NULL, NULL, NULL, NULL, NULL),
(220, 'oujegp349fxx9mmxaea4b2ge', 'Buah Langsat', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan kekebalan tubuh, membantu melancarkan pencernaan\"}]}]', '2024-12-08 16:53:50.917000', '2024-12-08 16:53:50.917000', '2024-12-08 16:53:51.038000', NULL, NULL, NULL, NULL),
(221, 'z7bm4e4c4dmso8uci2c4gp0x', 'Jamur Tiram', 'Vitamin D, B2', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, mendukung metabolisme\"}]}]', '2024-12-08 16:53:50.914000', '2024-12-08 16:53:50.914000', '2024-12-08 16:53:51.055000', NULL, NULL, NULL, NULL),
(222, 'ybdi42hmcavuzqasf4zifv96', 'Kacang Hitam', 'Vitamin B1, B6, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung kesehatan jantung, meningkatkan energi\"}]}]', '2024-12-08 16:53:50.929000', '2024-12-08 16:53:50.929000', '2024-12-08 16:53:51.065000', NULL, NULL, NULL, NULL),
(223, 'r2krzv760r4vnc8j54blk3go', 'Buah Melinjo', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, mendukung kesehatan tulang\"}]}]', '2024-12-08 16:53:51.075000', '2024-12-08 16:53:51.075000', NULL, NULL, NULL, NULL, NULL),
(224, 'zbgapngxib50b4bwca3qpqtz', 'Daging Bebek', 'Vitamin B12, B3, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Mendukung pembentukan otot, meningkatkan metabolisme\"}]}]', '2024-12-08 16:53:50.953000', '2024-12-08 16:53:50.953000', '2024-12-08 16:53:51.102000', NULL, NULL, NULL, NULL),
(225, 'i608slm6nmy5zepj20cs4ziw', 'Jagung Putih', 'Vitamin B1, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Memberikan energi, mendukung kesehatan otak\"}]}]', '2024-12-08 16:53:51.112000', '2024-12-08 16:53:51.112000', NULL, NULL, NULL, NULL, NULL),
(226, 'c8cywx7liqb3p42p0u4gxldb', 'Daging Kambing', 'Vitamin B12, B6, Zat Besi', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Meningkatkan energi, mendukung kesehatan darah\"}]}]', '2024-12-08 16:53:50.989000', '2024-12-08 16:53:50.989000', '2024-12-08 16:53:51.113000', NULL, NULL, NULL, NULL),
(227, 'wochxm5p19wqm3lshc1eu5mh', 'Labu Air', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Melancarkan pencernaan, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:50.994000', '2024-12-08 16:53:50.994000', '2024-12-08 16:53:51.140000', NULL, NULL, NULL, NULL),
(228, 'm1q0r0xs1suo793udrr2rdcn', 'Ikan Bandeng', 'Vitamin D, B12, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan jantung, mendukung metabolisme\"}]}]', '2024-12-08 16:53:51.147000', '2024-12-08 16:53:51.147000', NULL, NULL, NULL, NULL, NULL),
(229, 'j7g9pdqtsxcbynau6020ffwz', 'Daun Daun Cincau', 'Vitamin C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu meredakan peradangan, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:51.034000', '2024-12-08 16:53:51.034000', '2024-12-08 16:53:51.164000', NULL, NULL, NULL, NULL),
(230, 'r2krzv760r4vnc8j54blk3go', 'Buah Melinjo', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu pencernaan, mendukung kesehatan tulang\"}]}]', '2024-12-08 16:53:51.075000', '2024-12-08 16:53:51.075000', '2024-12-08 16:53:51.183000', NULL, NULL, NULL, NULL),
(231, 'i268p24krr0yufwxgwf8xi8x', 'Buah Kedondong', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:51.197000', '2024-12-08 16:53:51.197000', NULL, NULL, NULL, NULL, NULL),
(232, 'sfqn8ie1q46z8ly2t40iljjj', 'Buah Gandaria', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu regenerasi sel, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:51.202000', '2024-12-08 16:53:51.202000', NULL, NULL, NULL, NULL, NULL),
(233, 'i608slm6nmy5zepj20cs4ziw', 'Jagung Putih', 'Vitamin B1, C, B9', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Memberikan energi, mendukung kesehatan otak\"}]}]', '2024-12-08 16:53:51.112000', '2024-12-08 16:53:51.112000', '2024-12-08 16:53:51.236000', NULL, NULL, NULL, NULL),
(234, 'm1q0r0xs1suo793udrr2rdcn', 'Ikan Bandeng', 'Vitamin D, B12, B3', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan jantung, mendukung metabolisme\"}]}]', '2024-12-08 16:53:51.147000', '2024-12-08 16:53:51.147000', '2024-12-08 16:53:51.282000', NULL, NULL, NULL, NULL),
(235, 'i268p24krr0yufwxgwf8xi8x', 'Buah Kedondong', 'Vitamin C, B1', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan pencernaan, meningkatkan kekebalan tubuh\"}]}]', '2024-12-08 16:53:51.197000', '2024-12-08 16:53:51.197000', '2024-12-08 16:53:51.316000', NULL, NULL, NULL, NULL),
(236, 'sfqn8ie1q46z8ly2t40iljjj', 'Buah Gandaria', 'Vitamin C, B6', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Membantu regenerasi sel, mendukung kesehatan kulit\"}]}]', '2024-12-08 16:53:51.202000', '2024-12-08 16:53:51.202000', '2024-12-08 16:53:51.328000', NULL, NULL, NULL, NULL),
(237, 'qzxvpn80j0gebnamkaoaxc8v', 'Kentang', 'Vitamin C, Vitamin B6, kalium, magnesium dan fosfor', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"meredahlan Asam lambung, mengurangin peradangan, menbantu menurunkan darah tinggi\"}]}]', '2024-12-08 16:32:52.803000', '2025-01-05 23:37:12.483000', '2025-01-05 23:37:12.584000', 1, 1, NULL, NULL),
(239, 'd5smgh1jrrrhfbt6zysv7mtt', 'Kecubung', 'OKAWKOAWKOAWKOAWKOWAK', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"JADI GELO\"}]}]', '2025-01-07 20:43:54.918000', '2025-01-07 20:43:54.918000', NULL, 1, 1, NULL, NULL),
(240, 'd5smgh1jrrrhfbt6zysv7mtt', 'Kecubung', 'OKAWKOAWKOAWKOAWKOWAK', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"JADI GELO\"}]}]', '2025-01-07 20:43:54.918000', '2025-01-07 20:43:54.918000', '2025-01-07 20:43:55.014000', 1, 1, NULL, NULL),
(246, 'cs5qmp8zkk9fqaa03kg9dzyz', 'Alpukat', 'Vitamin K, B5, E', '[{\"type\":\"paragraph\",\"children\":[{\"type\":\"text\",\"text\":\"Menjaga kesehatan kulit, mendukung kesehatan jantung\"}]}]', '2024-12-08 16:53:47.203000', '2025-01-12 18:50:42.673000', '2025-01-12 18:50:42.766000', NULL, 1, NULL, 'Buah');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"stageRequiredToPublish\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToOne\",\"required\":false},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::about.about\":{\"kind\":\"singleType\",\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::about.about\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"abouts\"}}},\"apiName\":\"about\",\"globalId\":\"About\",\"uid\":\"api::about.about\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]}},\"kind\":\"singleType\"},\"modelName\":\"about\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"globals\"}}},\"apiName\":\"global\",\"globalId\":\"Global\",\"uid\":\"api::global.global\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelName\":\"global\",\"actions\":{},\"lifecycles\":{}},\"api::list-item-transaction.list-item-transaction\":{\"kind\":\"collectionType\",\"collectionName\":\"list_item_transactions\",\"info\":{\"singularName\":\"list-item-transaction\",\"pluralName\":\"list-item-transactions\",\"displayName\":\"List Item Transaction\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"transaction\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::transaction.transaction\",\"inversedBy\":\"list_item_transactions\"},\"item_name\":{\"type\":\"string\",\"required\":true},\"price\":{\"type\":\"integer\",\"required\":true},\"qty\":{\"type\":\"integer\",\"required\":true,\"default\":1},\"total\":{\"type\":\"integer\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::list-item-transaction.list-item-transaction\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"list_item_transactions\"}}},\"apiName\":\"list-item-transaction\",\"globalId\":\"ListItemTransaction\",\"uid\":\"api::list-item-transaction.list-item-transaction\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"list_item_transactions\",\"info\":{\"singularName\":\"list-item-transaction\",\"pluralName\":\"list-item-transactions\",\"displayName\":\"List Item Transaction\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"transaction\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::transaction.transaction\",\"inversedBy\":\"list_item_transactions\"},\"item_name\":{\"type\":\"string\",\"required\":true},\"price\":{\"type\":\"integer\",\"required\":true},\"qty\":{\"type\":\"integer\",\"required\":true,\"default\":1},\"total\":{\"type\":\"integer\",\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"list-item-transaction\",\"actions\":{},\"lifecycles\":{}},\"api::merchant.merchant\":{\"kind\":\"collectionType\",\"collectionName\":\"merchants\",\"info\":{\"singularName\":\"merchant\",\"pluralName\":\"merchants\",\"displayName\":\"Merchant\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"user_app\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::userapp.userapp\"},\"merchant_name\":{\"type\":\"string\",\"required\":true},\"merchant_description\":{\"type\":\"text\",\"required\":false},\"merchant_address\":{\"type\":\"text\",\"required\":true},\"merchant_account_number\":{\"type\":\"string\",\"required\":true},\"transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"mappedBy\":\"merchant\"},\"merchant_products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::merchant-product.merchant-product\",\"mappedBy\":\"merchant\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::merchant.merchant\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"merchants\"}}},\"apiName\":\"merchant\",\"globalId\":\"Merchant\",\"uid\":\"api::merchant.merchant\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"merchants\",\"info\":{\"singularName\":\"merchant\",\"pluralName\":\"merchants\",\"displayName\":\"Merchant\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"user_app\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::userapp.userapp\"},\"merchant_name\":{\"type\":\"string\",\"required\":true},\"merchant_description\":{\"type\":\"text\",\"required\":false},\"merchant_address\":{\"type\":\"text\",\"required\":true},\"merchant_account_number\":{\"type\":\"string\",\"required\":true},\"transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"mappedBy\":\"merchant\"},\"merchant_products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::merchant-product.merchant-product\",\"mappedBy\":\"merchant\"}},\"kind\":\"collectionType\"},\"modelName\":\"merchant\",\"actions\":{},\"lifecycles\":{}},\"api::merchant-product.merchant-product\":{\"kind\":\"collectionType\",\"collectionName\":\"merchant_products\",\"info\":{\"singularName\":\"merchant-product\",\"pluralName\":\"merchant-products\",\"displayName\":\"Merchant Product\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"merchant\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::merchant.merchant\",\"inversedBy\":\"merchant_products\"},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"inversedBy\":\"merchant_product\"},\"price\":{\"type\":\"integer\",\"required\":true},\"stock\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"description\":{\"type\":\"blocks\"},\"status_product\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"discount\":{\"type\":\"decimal\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::merchant-product.merchant-product\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"merchant_products\"}}},\"apiName\":\"merchant-product\",\"globalId\":\"MerchantProduct\",\"uid\":\"api::merchant-product.merchant-product\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"merchant_products\",\"info\":{\"singularName\":\"merchant-product\",\"pluralName\":\"merchant-products\",\"displayName\":\"Merchant Product\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"merchant\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::merchant.merchant\",\"inversedBy\":\"merchant_products\"},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\",\"inversedBy\":\"merchant_product\"},\"price\":{\"type\":\"integer\",\"required\":true},\"stock\":{\"type\":\"integer\",\"default\":0,\"required\":true},\"description\":{\"type\":\"blocks\"},\"status_product\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"discount\":{\"type\":\"decimal\",\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"merchant-product\",\"actions\":{},\"lifecycles\":{}},\"api::post.post\":{\"kind\":\"collectionType\",\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"judul\":{\"type\":\"string\",\"required\":true},\"konten\":{\"type\":\"blocks\",\"required\":true},\"features\":{\"type\":\"boolean\",\"default\":false},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::post.post\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"posts\"}}},\"apiName\":\"post\",\"globalId\":\"Post\",\"uid\":\"api::post.post\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"judul\":{\"type\":\"string\",\"required\":true},\"konten\":{\"type\":\"blocks\",\"required\":true},\"features\":{\"type\":\"boolean\",\"default\":false},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"}},\"kind\":\"collectionType\"},\"modelName\":\"post\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name_product\":{\"type\":\"string\",\"required\":true},\"vitamin\":{\"type\":\"text\",\"required\":true},\"benefit\":{\"type\":\"blocks\",\"required\":true},\"merchant_product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::merchant-product.merchant-product\",\"mappedBy\":\"product\"},\"picture\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"enumeration\",\"enum\":[\"Buah\",\"Sayur\",\"Daging\",\"Bumbu Dapur\",\"Sembako\"],\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"products\"}}},\"apiName\":\"product\",\"globalId\":\"Product\",\"uid\":\"api::product.product\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name_product\":{\"type\":\"string\",\"required\":true},\"vitamin\":{\"type\":\"text\",\"required\":true},\"benefit\":{\"type\":\"blocks\",\"required\":true},\"merchant_product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::merchant-product.merchant-product\",\"mappedBy\":\"product\"},\"picture\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"enumeration\",\"enum\":[\"Buah\",\"Sayur\",\"Daging\",\"Bumbu Dapur\",\"Sembako\"],\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"product\",\"actions\":{},\"lifecycles\":{}},\"api::transaction.transaction\":{\"kind\":\"collectionType\",\"collectionName\":\"transactions\",\"info\":{\"singularName\":\"transaction\",\"pluralName\":\"transactions\",\"displayName\":\"Transaction\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"user_app\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::userapp.userapp\",\"inversedBy\":\"transactions\"},\"merchant\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::merchant.merchant\",\"inversedBy\":\"transactions\"},\"delivery_time\":{\"type\":\"time\",\"required\":true,\"unique\":false},\"grand_total\":{\"type\":\"integer\",\"required\":true},\"delivery_service\":{\"type\":\"string\",\"required\":true},\"list_item_transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::list-item-transaction.list-item-transaction\",\"mappedBy\":\"transaction\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"transactions\"}}},\"apiName\":\"transaction\",\"globalId\":\"Transaction\",\"uid\":\"api::transaction.transaction\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"transactions\",\"info\":{\"singularName\":\"transaction\",\"pluralName\":\"transactions\",\"displayName\":\"Transaction\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"user_app\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::userapp.userapp\",\"inversedBy\":\"transactions\"},\"merchant\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::merchant.merchant\",\"inversedBy\":\"transactions\"},\"delivery_time\":{\"type\":\"time\",\"required\":true,\"unique\":false},\"grand_total\":{\"type\":\"integer\",\"required\":true},\"delivery_service\":{\"type\":\"string\",\"required\":true},\"list_item_transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::list-item-transaction.list-item-transaction\",\"mappedBy\":\"transaction\"}},\"kind\":\"collectionType\"},\"modelName\":\"transaction\",\"actions\":{},\"lifecycles\":{}},\"api::userapp.userapp\":{\"kind\":\"collectionType\",\"collectionName\":\"userapps\",\"info\":{\"singularName\":\"userapp\",\"pluralName\":\"userapps\",\"displayName\":\"User app\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"email\",\"required\":true},\"password\":{\"type\":\"password\",\"required\":true},\"name\":{\"type\":\"string\",\"required\":true},\"date_birth\":{\"type\":\"date\",\"required\":false},\"gender\":{\"type\":\"enumeration\",\"enum\":[\"male\",\"female\"],\"required\":true},\"address\":{\"type\":\"text\",\"required\":true},\"phone\":{\"type\":\"string\"},\"role\":{\"type\":\"enumeration\",\"enum\":[\"merchant\",\"client\"],\"required\":true},\"transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"mappedBy\":\"user_app\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::userapp.userapp\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"userapps\"}}},\"apiName\":\"userapp\",\"globalId\":\"Userapp\",\"uid\":\"api::userapp.userapp\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"userapps\",\"info\":{\"singularName\":\"userapp\",\"pluralName\":\"userapps\",\"displayName\":\"User app\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"email\",\"required\":true},\"password\":{\"type\":\"password\",\"required\":true},\"name\":{\"type\":\"string\",\"required\":true},\"date_birth\":{\"type\":\"date\",\"required\":false},\"gender\":{\"type\":\"enumeration\",\"enum\":[\"male\",\"female\"],\"required\":true},\"address\":{\"type\":\"text\",\"required\":true},\"phone\":{\"type\":\"string\"},\"role\":{\"type\":\"enumeration\",\"enum\":[\"merchant\",\"client\"],\"required\":true},\"transactions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::transaction.transaction\",\"mappedBy\":\"user_app\"}},\"kind\":\"collectionType\"},\"modelName\":\"userapp\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_components::shared.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"files\"],\"edit\":[[{\"name\":\"files\",\"size\":6}]]},\"uid\":\"shared.slider\",\"isComponent\":true}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_components::shared.rich-text', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"body\",\"size\":12}]]},\"uid\":\"shared.rich-text\",\"isComponent\":true}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_components::shared.quote', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"body\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"body\",\"size\":6}]]},\"uid\":\"shared.quote\",\"isComponent\":true}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_components::shared.media', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"file\":{\"edit\":{\"label\":\"file\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"file\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"file\"],\"edit\":[[{\"name\":\"file\",\"size\":6}]]},\"uid\":\"shared.media\",\"isComponent\":true}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_components::shared.seo', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6}]]},\"uid\":\"shared.seo\",\"isComponent\":true}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"stageRequiredToPublish\":{\"edit\":{\"label\":\"stageRequiredToPublish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stageRequiredToPublish\",\"searchable\":true,\"sortable\":true}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\",\"stageRequiredToPublish\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"stageRequiredToPublish\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::api::about.about', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}]]},\"uid\":\"api::about.about\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::api::global.global', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"siteDescription\":{\"edit\":{\"label\":\"siteDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteDescription\",\"searchable\":true,\"sortable\":true}},\"defaultSeo\":{\"edit\":{\"label\":\"defaultSeo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"defaultSeo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"siteName\",\"favicon\",\"siteDescription\"],\"edit\":[[{\"name\":\"siteName\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"siteDescription\",\"size\":6}],[{\"name\":\"defaultSeo\",\"size\":12}]]},\"uid\":\"api::global.global\"}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(26, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(29, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(30, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(31, 'plugin_upload_metrics', '{\"weeklySchedule\":\"16 24 22 * * 0\",\"lastWeeklyUpdate\":1736090656031}', 'object', NULL, NULL),
(32, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(33, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(34, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(35, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(36, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(37, 'type_setup_initHasRun', 'true', 'boolean', 'development', NULL),
(38, 'plugin_content_manager_configuration_content_types::api::post.post', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"judul\",\"defaultSortBy\":\"judul\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"judul\":{\"edit\":{\"label\":\"judul\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"judul\",\"searchable\":true,\"sortable\":true}},\"konten\":{\"edit\":{\"label\":\"konten\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"konten\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"features\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name_product\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"judul\",\"features\",\"createdAt\"],\"edit\":[[{\"name\":\"judul\",\"size\":6}],[{\"name\":\"konten\",\"size\":12}],[{\"name\":\"features\",\"size\":4}],[{\"name\":\"products\",\"size\":6}]]},\"uid\":\"api::post.post\"}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name_product\",\"defaultSortBy\":\"name_product\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name_product\":{\"edit\":{\"label\":\"name_product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name_product\",\"searchable\":true,\"sortable\":true}},\"vitamin\":{\"edit\":{\"label\":\"vitamin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"vitamin\",\"searchable\":true,\"sortable\":true}},\"benefit\":{\"edit\":{\"label\":\"benefit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"benefit\",\"searchable\":false,\"sortable\":false}},\"merchant_product\":{\"edit\":{\"label\":\"merchant_product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"merchant_product\",\"searchable\":true,\"sortable\":true}},\"picture\":{\"edit\":{\"label\":\"picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"picture\",\"searchable\":false,\"sortable\":false}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name_product\",\"vitamin\",\"merchant_product\"],\"edit\":[[{\"name\":\"name_product\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"vitamin\",\"size\":6}],[{\"name\":\"benefit\",\"size\":12}],[{\"name\":\"merchant_product\",\"size\":6},{\"name\":\"category\",\"size\":6}]]},\"uid\":\"api::product.product\"}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::userapp.userapp', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"date_birth\":{\"edit\":{\"label\":\"date_birth\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_birth\",\"searchable\":true,\"sortable\":true}},\"gender\":{\"edit\":{\"label\":\"gender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"gender\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"transactions\":{\"edit\":{\"label\":\"transactions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"delivery_service\"},\"list\":{\"label\":\"transactions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"password\",\"size\":6}],[{\"name\":\"role\",\"size\":4},{\"name\":\"name\",\"size\":6}],[{\"name\":\"date_birth\",\"size\":4},{\"name\":\"gender\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"transactions\",\"size\":6}]]},\"uid\":\"api::userapp.userapp\"}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::api::merchant.merchant', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"merchant_name\",\"defaultSortBy\":\"merchant_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"user_app\":{\"edit\":{\"label\":\"user_app\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"user_app\",\"searchable\":true,\"sortable\":true}},\"merchant_name\":{\"edit\":{\"label\":\"merchant_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"merchant_name\",\"searchable\":true,\"sortable\":true}},\"merchant_description\":{\"edit\":{\"label\":\"merchant_description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"merchant_description\",\"searchable\":true,\"sortable\":true}},\"merchant_address\":{\"edit\":{\"label\":\"merchant_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"merchant_address\",\"searchable\":true,\"sortable\":true}},\"merchant_account_number\":{\"edit\":{\"label\":\"merchant_account_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"merchant_account_number\",\"searchable\":true,\"sortable\":true}},\"transactions\":{\"edit\":{\"label\":\"transactions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"delivery_service\"},\"list\":{\"label\":\"transactions\",\"searchable\":false,\"sortable\":false}},\"merchant_products\":{\"edit\":{\"label\":\"merchant_products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"merchant_products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"user_app\",\"merchant_name\",\"merchant_description\"],\"edit\":[[{\"name\":\"user_app\",\"size\":6},{\"name\":\"merchant_name\",\"size\":6}],[{\"name\":\"merchant_description\",\"size\":6},{\"name\":\"merchant_address\",\"size\":6}],[{\"name\":\"merchant_account_number\",\"size\":6},{\"name\":\"transactions\",\"size\":6}],[{\"name\":\"merchant_products\",\"size\":6}]]},\"uid\":\"api::merchant.merchant\"}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::api::transaction.transaction', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"delivery_service\",\"defaultSortBy\":\"delivery_service\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"user_app\":{\"edit\":{\"label\":\"user_app\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"user_app\",\"searchable\":true,\"sortable\":true}},\"merchant\":{\"edit\":{\"label\":\"merchant\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"merchant_name\"},\"list\":{\"label\":\"merchant\",\"searchable\":true,\"sortable\":true}},\"delivery_time\":{\"edit\":{\"label\":\"delivery_time\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delivery_time\",\"searchable\":true,\"sortable\":true}},\"grand_total\":{\"edit\":{\"label\":\"grand_total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"grand_total\",\"searchable\":true,\"sortable\":true}},\"delivery_service\":{\"edit\":{\"label\":\"delivery_service\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delivery_service\",\"searchable\":true,\"sortable\":true}},\"list_item_transactions\":{\"edit\":{\"label\":\"list_item_transactions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"item_name\"},\"list\":{\"label\":\"list_item_transactions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"user_app\",\"merchant\",\"delivery_time\"],\"edit\":[[{\"name\":\"user_app\",\"size\":6},{\"name\":\"merchant\",\"size\":6}],[{\"name\":\"delivery_time\",\"size\":4},{\"name\":\"grand_total\",\"size\":4}],[{\"name\":\"delivery_service\",\"size\":6},{\"name\":\"list_item_transactions\",\"size\":6}]]},\"uid\":\"api::transaction.transaction\"}', 'object', NULL, NULL),
(43, 'plugin_content_manager_configuration_content_types::api::list-item-transaction.list-item-transaction', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"item_name\",\"defaultSortBy\":\"item_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"transaction\":{\"edit\":{\"label\":\"transaction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"delivery_service\"},\"list\":{\"label\":\"transaction\",\"searchable\":true,\"sortable\":true}},\"item_name\":{\"edit\":{\"label\":\"item_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"item_name\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"qty\":{\"edit\":{\"label\":\"qty\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"qty\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"transaction\",\"item_name\",\"price\"],\"edit\":[[{\"name\":\"transaction\",\"size\":6},{\"name\":\"item_name\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"qty\",\"size\":4},{\"name\":\"total\",\"size\":4}]]},\"uid\":\"api::list-item-transaction.list-item-transaction\"}', 'object', NULL, NULL),
(44, 'plugin_content_manager_configuration_content_types::api::merchant-product.merchant-product', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"merchant\":{\"edit\":{\"label\":\"merchant\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"merchant_name\"},\"list\":{\"label\":\"merchant\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name_product\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"stock\":{\"edit\":{\"label\":\"stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"status_product\":{\"edit\":{\"label\":\"status_product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status_product\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"discount\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"merchant\",\"product\",\"price\"],\"edit\":[[{\"name\":\"merchant\",\"size\":6},{\"name\":\"product\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"stock\",\"size\":4}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"status_product\",\"size\":4},{\"name\":\"discount\",\"size\":4}]]},\"uid\":\"api::merchant-product.merchant-product\"}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(24, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"abouts_cmps\",\"indexes\":[{\"name\":\"abouts_field_idx\",\"columns\":[\"field\"]},{\"name\":\"abouts_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"abouts_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"abouts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"abouts\",\"indexes\":[{\"name\":\"abouts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"globals_cmps\",\"indexes\":[{\"name\":\"globals_field_idx\",\"columns\":[\"field\"]},{\"name\":\"globals_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"globals_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals\",\"indexes\":[{\"name\":\"globals_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"list_item_transactions\",\"indexes\":[{\"name\":\"list_item_transactions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"list_item_transactions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"list_item_transactions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"list_item_transactions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"list_item_transactions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"item_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"qty\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"merchants\",\"indexes\":[{\"name\":\"merchants_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"merchants_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"merchants_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"merchants_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"merchants_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"merchant_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"merchant_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"merchant_address\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"merchant_account_number\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"merchant_products\",\"indexes\":[{\"name\":\"merchant_products_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"merchant_products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"merchant_products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"merchant_products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"merchant_products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stock\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status_product\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"discount\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"posts\",\"indexes\":[{\"name\":\"posts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"posts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"posts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"posts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"posts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"judul\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"konten\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"features\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name_product\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"vitamin\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"benefit\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"category\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"transactions\",\"indexes\":[{\"name\":\"transactions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"transactions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"transactions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"transactions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"transactions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"delivery_time\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"grand_total\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"delivery_service\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"userapps\",\"indexes\":[{\"name\":\"userapps_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"userapps_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"userapps_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"userapps_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"userapps_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date_birth\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"gender\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"role\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_sliders\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_shared_seos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_rich_texts\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_quotes\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_media\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_uq\",\"columns\":[\"workflow_id\",\"workflow_stage_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_fk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stage_required_to_publish_lnk_ifk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"list_item_transactions_transaction_lnk\",\"indexes\":[{\"name\":\"list_item_transactions_transaction_lnk_fk\",\"columns\":[\"list_item_transaction_id\"]},{\"name\":\"list_item_transactions_transaction_lnk_ifk\",\"columns\":[\"transaction_id\"]},{\"name\":\"list_item_transactions_transaction_lnk_uq\",\"columns\":[\"list_item_transaction_id\",\"transaction_id\"],\"type\":\"unique\"},{\"name\":\"list_item_transactions_transaction_lnk_oifk\",\"columns\":[\"list_item_transaction_ord\"]}],\"foreignKeys\":[{\"name\":\"list_item_transactions_transaction_lnk_fk\",\"columns\":[\"list_item_transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"list_item_transactions\",\"onDelete\":\"CASCADE\"},{\"name\":\"list_item_transactions_transaction_lnk_ifk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"list_item_transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"list_item_transaction_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"merchants_user_app_lnk\",\"indexes\":[{\"name\":\"merchants_user_app_lnk_fk\",\"columns\":[\"merchant_id\"]},{\"name\":\"merchants_user_app_lnk_ifk\",\"columns\":[\"userapp_id\"]},{\"name\":\"merchants_user_app_lnk_uq\",\"columns\":[\"merchant_id\",\"userapp_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"merchants_user_app_lnk_fk\",\"columns\":[\"merchant_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"merchants\",\"onDelete\":\"CASCADE\"},{\"name\":\"merchants_user_app_lnk_ifk\",\"columns\":[\"userapp_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"userapps\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"merchant_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"userapp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"merchant_products_merchant_lnk\",\"indexes\":[{\"name\":\"merchant_products_merchant_lnk_fk\",\"columns\":[\"merchant_product_id\"]},{\"name\":\"merchant_products_merchant_lnk_ifk\",\"columns\":[\"merchant_id\"]},{\"name\":\"merchant_products_merchant_lnk_uq\",\"columns\":[\"merchant_product_id\",\"merchant_id\"],\"type\":\"unique\"},{\"name\":\"merchant_products_merchant_lnk_oifk\",\"columns\":[\"merchant_product_ord\"]}],\"foreignKeys\":[{\"name\":\"merchant_products_merchant_lnk_fk\",\"columns\":[\"merchant_product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"merchant_products\",\"onDelete\":\"CASCADE\"},{\"name\":\"merchant_products_merchant_lnk_ifk\",\"columns\":[\"merchant_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"merchants\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"merchant_product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"merchant_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"merchant_product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"merchant_products_product_lnk\",\"indexes\":[{\"name\":\"merchant_products_product_lnk_fk\",\"columns\":[\"merchant_product_id\"]},{\"name\":\"merchant_products_product_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"merchant_products_product_lnk_uq\",\"columns\":[\"merchant_product_id\",\"product_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"merchant_products_product_lnk_fk\",\"columns\":[\"merchant_product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"merchant_products\",\"onDelete\":\"CASCADE\"},{\"name\":\"merchant_products_product_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"merchant_product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"posts_products_lnk\",\"indexes\":[{\"name\":\"posts_products_lnk_fk\",\"columns\":[\"post_id\"]},{\"name\":\"posts_products_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"posts_products_lnk_uq\",\"columns\":[\"post_id\",\"product_id\"],\"type\":\"unique\"},{\"name\":\"posts_products_lnk_ofk\",\"columns\":[\"product_ord\"]}],\"foreignKeys\":[{\"name\":\"posts_products_lnk_fk\",\"columns\":[\"post_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"posts\",\"onDelete\":\"CASCADE\"},{\"name\":\"posts_products_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"post_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transactions_user_app_lnk\",\"indexes\":[{\"name\":\"transactions_user_app_lnk_fk\",\"columns\":[\"transaction_id\"]},{\"name\":\"transactions_user_app_lnk_ifk\",\"columns\":[\"userapp_id\"]},{\"name\":\"transactions_user_app_lnk_uq\",\"columns\":[\"transaction_id\",\"userapp_id\"],\"type\":\"unique\"},{\"name\":\"transactions_user_app_lnk_oifk\",\"columns\":[\"transaction_ord\"]}],\"foreignKeys\":[{\"name\":\"transactions_user_app_lnk_fk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"},{\"name\":\"transactions_user_app_lnk_ifk\",\"columns\":[\"userapp_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"userapps\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"userapp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transaction_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"transactions_merchant_lnk\",\"indexes\":[{\"name\":\"transactions_merchant_lnk_fk\",\"columns\":[\"transaction_id\"]},{\"name\":\"transactions_merchant_lnk_ifk\",\"columns\":[\"merchant_id\"]},{\"name\":\"transactions_merchant_lnk_uq\",\"columns\":[\"transaction_id\",\"merchant_id\"],\"type\":\"unique\"},{\"name\":\"transactions_merchant_lnk_oifk\",\"columns\":[\"transaction_ord\"]}],\"foreignKeys\":[{\"name\":\"transactions_merchant_lnk_fk\",\"columns\":[\"transaction_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"transactions\",\"onDelete\":\"CASCADE\"},{\"name\":\"transactions_merchant_lnk_ifk\",\"columns\":[\"merchant_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"merchants\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transaction_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"merchant_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transaction_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2025-01-12 18:50:20', 'fcecf3a101c075a8f77788f9c2078661');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2024-12-08 14:47:43'),
(2, '5.0.0-02-created-document-id', '2024-12-08 14:47:43'),
(3, '5.0.0-03-created-locale', '2024-12-08 14:47:43'),
(4, '5.0.0-04-created-published-at', '2024-12-08 14:47:43'),
(5, '5.0.0-05-drop-slug-fields-index', '2024-12-08 14:47:43'),
(6, 'core::5.0.0-discard-drafts', '2024-12-08 14:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stage_required_to_publish_lnk`
--

CREATE TABLE `strapi_workflows_stage_required_to_publish_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `delivery_time` time(3) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `delivery_service` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `document_id`, `delivery_time`, `grand_total`, `delivery_service`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'nd80gyywhskbohbp7dpbfw0k', '08:47:00.000', 5000000, 'jnt', '2024-12-08 21:11:06.445000', '2024-12-08 21:11:06.445000', NULL, 1, 1, NULL),
(2, 'nd80gyywhskbohbp7dpbfw0k', '08:47:00.000', 5000000, 'jnt', '2024-12-08 21:11:06.445000', '2024-12-08 21:11:06.445000', '2024-12-08 21:11:06.624000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_merchant_lnk`
--

CREATE TABLE `transactions_merchant_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions_merchant_lnk`
--

INSERT INTO `transactions_merchant_lnk` (`id`, `transaction_id`, `merchant_id`, `transaction_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_user_app_lnk`
--

CREATE TABLE `transactions_user_app_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `userapp_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions_user_app_lnk`
--

INSERT INTO `transactions_user_app_lnk` (`id`, `transaction_id`, `userapp_id`, `transaction_ord`) VALUES
(1, 1, 3, 1),
(2, 2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'vpisrlbsdfo47bqjcnay4lc4', 'plugin::users-permissions.user.me', '2024-12-08 14:47:48.030000', '2024-12-08 14:47:48.030000', '2024-12-08 14:47:48.031000', NULL, NULL, NULL),
(2, 'mwnssz2z19fv7fpul063iria', 'plugin::users-permissions.auth.changePassword', '2024-12-08 14:47:48.030000', '2024-12-08 14:47:48.030000', '2024-12-08 14:47:48.032000', NULL, NULL, NULL),
(3, 'm7cs9eh8k20v8tzxlpzs59nj', 'plugin::users-permissions.auth.callback', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', NULL, NULL, NULL),
(4, 'axp6t84pn2vlkcmdlf8cpsht', 'plugin::users-permissions.auth.connect', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', NULL, NULL, NULL),
(5, 'dki7xay46kfywi1qwikx83m3', 'plugin::users-permissions.auth.forgotPassword', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', NULL, NULL, NULL),
(6, 'xp96k9sfkm0jkgahul5h97sa', 'plugin::users-permissions.auth.resetPassword', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.051000', NULL, NULL, NULL),
(7, 'ef3r5x7zuagrmjatz9hz3txu', 'plugin::users-permissions.auth.register', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.051000', NULL, NULL, NULL),
(8, 'h3wtgj7tw5pcr3rtrvstqn98', 'plugin::users-permissions.auth.emailConfirmation', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.051000', NULL, NULL, NULL),
(9, 't6x874vbrvjvmkqpy9c78hnk', 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.050000', '2024-12-08 14:47:48.051000', NULL, NULL, NULL),
(16, 'd5eg3mbcfl9sc6e05pdmbs0x', 'api::global.global.find', '2024-12-08 14:47:49.609000', '2024-12-08 14:47:49.609000', '2024-12-08 14:47:49.610000', NULL, NULL, NULL),
(19, 'fuddva3rswhblfoegwt7ix1e', 'api::about.about.find', '2024-12-08 14:47:49.609000', '2024-12-08 14:47:49.609000', '2024-12-08 14:47:49.610000', NULL, NULL, NULL),
(20, 'znsqlzp66q37zd08uc3acrnq', 'api::post.post.find', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.776000', NULL, NULL, NULL),
(21, 'p2xws6gif1jvabbzj0jstl4u', 'api::post.post.findOne', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.777000', NULL, NULL, NULL),
(22, 'gjbtgx5s3wapql3fm696i8xh', 'api::post.post.create', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.778000', NULL, NULL, NULL),
(23, 'lzsc57tgxs0skg4zi7sbxaae', 'api::post.post.update', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.779000', NULL, NULL, NULL),
(24, 'cz6tv1fi00k870b4qw3hnst1', 'api::post.post.delete', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.774000', '2024-12-08 15:10:25.780000', NULL, NULL, NULL),
(25, 'ckikb6315x7gw0lald3nyzu8', 'api::product.product.find', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.456000', NULL, NULL, NULL),
(26, 'intg87rrrpggu860nm1e3irz', 'api::product.product.findOne', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.457000', NULL, NULL, NULL),
(27, 'ktau00fxt0dpeik25bsnu73v', 'api::product.product.create', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.458000', NULL, NULL, NULL),
(28, 's5kfv8y55hivctj28r03s267', 'api::product.product.update', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.458000', NULL, NULL, NULL),
(29, 'ccrfdv8eu20j5b8eomups7zd', 'api::product.product.delete', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.456000', '2024-12-08 16:16:25.459000', NULL, NULL, NULL),
(30, 'vjl3l2ex3g54m73gzwbrxyf8', 'api::userapp.userapp.find', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.602000', NULL, NULL, NULL),
(31, 'v0aqgm82783jrnb8gj3hv5a9', 'api::userapp.userapp.findOne', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.604000', NULL, NULL, NULL),
(32, 'utg9pj8s08sth5c4yroa700y', 'api::userapp.userapp.create', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.606000', NULL, NULL, NULL),
(33, 'tb09kd3e5arfj97b3fc6w1i3', 'api::userapp.userapp.update', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.608000', NULL, NULL, NULL),
(34, 'ccodo4bog2p7whdig5ctbk2o', 'api::userapp.userapp.delete', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.601000', '2024-12-08 19:29:24.610000', NULL, NULL, NULL),
(35, 'gy56dhfr3ffqceupp4l7c2po', 'api::merchant.merchant.find', '2024-12-08 20:50:31.114000', '2024-12-08 20:50:31.114000', '2024-12-08 20:50:31.123000', NULL, NULL, NULL),
(36, 'zlnw401p9z45h4mkfu8mkw1c', 'api::merchant.merchant.findOne', '2024-12-08 20:50:31.114000', '2024-12-08 20:50:31.114000', '2024-12-08 20:50:31.138000', NULL, NULL, NULL),
(37, 'u9q64usjusrokqexha8bsjri', 'api::merchant.merchant.create', '2024-12-08 20:50:31.115000', '2024-12-08 20:50:31.115000', '2024-12-08 20:50:31.141000', NULL, NULL, NULL),
(38, 'iftg2sitv9kcubxvje2agb7h', 'api::merchant.merchant.update', '2024-12-08 20:50:31.115000', '2024-12-08 20:50:31.115000', '2024-12-08 20:50:31.148000', NULL, NULL, NULL),
(39, 'bmkd6ho7grd3itcj1sixas03', 'api::merchant.merchant.delete', '2024-12-08 20:50:31.115000', '2024-12-08 20:50:31.115000', '2024-12-08 20:50:31.154000', NULL, NULL, NULL),
(40, 'iy8cc59933mpwwbtyevyj7qr', 'api::transaction.transaction.find', '2024-12-08 21:11:58.850000', '2024-12-08 21:11:58.850000', '2024-12-08 21:11:58.853000', NULL, NULL, NULL),
(41, 'dvyusho19yz6jr5v7ps4qrd8', 'api::transaction.transaction.findOne', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.861000', NULL, NULL, NULL),
(42, 'fr336jl6ktbelavut7ekclli', 'api::transaction.transaction.create', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.865000', NULL, NULL, NULL),
(43, 'iz4xgusu1tm1sa7cvh0u9o9y', 'api::transaction.transaction.update', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.868000', NULL, NULL, NULL),
(44, 'gpvki6m19ambvw18pyd4epvc', 'api::transaction.transaction.delete', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.851000', '2024-12-08 21:11:58.922000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 5, 2, 1),
(5, 4, 2, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 8, 2, 1),
(9, 9, 2, 2),
(13, 16, 2, 3),
(19, 19, 2, 4),
(20, 20, 2, 5),
(21, 21, 2, 5),
(22, 22, 2, 5),
(23, 23, 2, 5),
(24, 24, 2, 6),
(25, 26, 2, 7),
(26, 29, 2, 7),
(27, 25, 2, 7),
(28, 27, 2, 7),
(29, 28, 2, 7),
(30, 30, 2, 8),
(31, 32, 2, 8),
(32, 34, 2, 8),
(33, 31, 2, 8),
(34, 33, 2, 9),
(35, 36, 2, 10),
(36, 35, 2, 10),
(37, 37, 2, 10),
(38, 38, 2, 10),
(39, 39, 2, 11),
(40, 40, 2, 12),
(41, 41, 2, 12),
(42, 42, 2, 12),
(43, 43, 2, 12),
(44, 44, 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'pyok7b34iw1lxh800fz4ayjg', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-12-08 14:47:48.007000', '2024-12-08 14:47:48.007000', '2024-12-08 14:47:48.008000', NULL, NULL, NULL),
(2, 'gxqoc03mb6livzmirisgmjir', 'Public', 'Default role given to unauthenticated user.', 'public', '2024-12-08 14:47:48.015000', '2024-12-08 21:11:58.767000', '2024-12-08 14:47:48.016000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userapps`
--

CREATE TABLE `userapps` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userapps`
--

INSERT INTO `userapps` (`id`, `document_id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `email`, `password`, `role`, `name`, `date_birth`, `gender`, `address`, `phone`) VALUES
(1, 'bvq76oyiihembz1feheg9fxj', '2024-12-08 19:27:51.703000', '2024-12-08 19:27:51.703000', NULL, 1, 1, NULL, 'faizal@gmail.com', '$2a$10$a8dIW6bmXGhYEaxIP/eRQuLVtUhlw9f4TuqcTyoj6ABqhtSRtnlDC', 'merchant', 'Faizal Hamzah', '1998-08-20', 'male', 'uber', '0895385759496'),
(2, 'bvq76oyiihembz1feheg9fxj', '2024-12-08 19:27:51.703000', '2024-12-08 19:27:51.703000', '2024-12-08 19:27:51.821000', 1, 1, NULL, 'faizal@gmail.com', '$2a$10$aMyNfsvmCijzdQLi2sT/kOmR9Rm50b3Mgs6eICc37L4LKEI3Lh8Cy', 'merchant', 'Faizal Hamzah', '1998-08-20', 'male', 'uber', '0895385759496'),
(3, 'vrqsp5kmc0xg09x2jhmmn0u5', '2024-12-08 20:32:04.415000', '2024-12-08 20:32:04.415000', NULL, 1, 1, NULL, 'rohot@gmail.com', '$2a$10$OhmpBxpnKMYJmubjrJDSa.MxLp/aK7e/iouZqXjh1TVA0crQsBFnq', 'client', 'Rohot Silaban', '2001-02-15', 'male', 'Cicalengka', '082299008023'),
(4, 'vrqsp5kmc0xg09x2jhmmn0u5', '2024-12-08 20:32:04.415000', '2024-12-08 20:32:04.415000', '2024-12-08 20:32:04.511000', 1, 1, NULL, 'rohot@gmail.com', '$2a$10$0eWBGTbjtrNSR.iXXLieke8w1..Bna18tCnsT1YBsYq.fVQYfrzDS', 'client', 'Rohot Silaban', '2001-02-15', 'male', 'Cicalengka', '082299008023'),
(5, 's308ukkqmz76f018zuo9mkf6', '2025-01-05 23:06:04.869000', '2025-01-05 23:06:04.869000', NULL, NULL, NULL, NULL, 'ijal@pason.com', '$2a$10$qHQnl6qMjq0fX/YAKuP8ne9zQPaHyI4ZXf8KKifi1Fv22cahNHl/O', 'client', 'Ijal', '2000-01-12', 'male', 'Uber', '08112039847'),
(6, 's308ukkqmz76f018zuo9mkf6', '2025-01-05 23:06:04.869000', '2025-01-05 23:06:04.869000', '2025-01-05 23:06:04.894000', NULL, NULL, NULL, 'ijal@pason.com', '$2a$10$Ccg6oVSGicovVfzKRA.UneahJs96diR6fiH6CVvob66GdzfYoEEJa', 'client', 'Ijal', '2000-01-12', 'male', 'Uber', '08112039847');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `abouts_created_by_id_fk` (`created_by_id`),
  ADD KEY `abouts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abouts_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `abouts_field_idx` (`field`),
  ADD KEY `abouts_component_type_idx` (`component_type`),
  ADD KEY `abouts_entity_fk` (`entity_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`),
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`),
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`),
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`);

--
-- Indexes for table `components_shared_media`
--
ALTER TABLE `components_shared_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`),
  ADD KEY `files_folder_lnk_fk` (`file_id`),
  ADD KEY `files_folder_lnk_ifk` (`folder_id`),
  ADD KEY `files_folder_lnk_oifk` (`file_ord`);

--
-- Indexes for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_mph_fk` (`file_id`),
  ADD KEY `files_related_mph_oidx` (`order`),
  ADD KEY `files_related_mph_idix` (`related_id`);

--
-- Indexes for table `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globals_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `globals_created_by_id_fk` (`created_by_id`),
  ADD KEY `globals_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `globals_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `globals_field_idx` (`field`),
  ADD KEY `globals_component_type_idx` (`component_type`),
  ADD KEY `globals_entity_fk` (`entity_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `list_item_transactions`
--
ALTER TABLE `list_item_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_item_transactions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `list_item_transactions_created_by_id_fk` (`created_by_id`),
  ADD KEY `list_item_transactions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `list_item_transactions_transaction_lnk`
--
ALTER TABLE `list_item_transactions_transaction_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `list_item_transactions_transaction_lnk_uq` (`list_item_transaction_id`,`transaction_id`),
  ADD KEY `list_item_transactions_transaction_lnk_fk` (`list_item_transaction_id`),
  ADD KEY `list_item_transactions_transaction_lnk_ifk` (`transaction_id`),
  ADD KEY `list_item_transactions_transaction_lnk_oifk` (`list_item_transaction_ord`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchants_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `merchants_created_by_id_fk` (`created_by_id`),
  ADD KEY `merchants_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `merchants_user_app_lnk`
--
ALTER TABLE `merchants_user_app_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchants_user_app_lnk_uq` (`merchant_id`,`userapp_id`),
  ADD KEY `merchants_user_app_lnk_fk` (`merchant_id`),
  ADD KEY `merchants_user_app_lnk_ifk` (`userapp_id`);

--
-- Indexes for table `merchant_products`
--
ALTER TABLE `merchant_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_products_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `merchant_products_created_by_id_fk` (`created_by_id`),
  ADD KEY `merchant_products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `merchant_products_merchant_lnk`
--
ALTER TABLE `merchant_products_merchant_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_products_merchant_lnk_uq` (`merchant_product_id`,`merchant_id`),
  ADD KEY `merchant_products_merchant_lnk_fk` (`merchant_product_id`),
  ADD KEY `merchant_products_merchant_lnk_ifk` (`merchant_id`),
  ADD KEY `merchant_products_merchant_lnk_oifk` (`merchant_product_ord`);

--
-- Indexes for table `merchant_products_product_lnk`
--
ALTER TABLE `merchant_products_product_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_products_product_lnk_uq` (`merchant_product_id`,`product_id`),
  ADD KEY `merchant_products_product_lnk_fk` (`merchant_product_id`),
  ADD KEY `merchant_products_product_lnk_ifk` (`product_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `posts_created_by_id_fk` (`created_by_id`),
  ADD KEY `posts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `posts_products_lnk`
--
ALTER TABLE `posts_products_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_products_lnk_uq` (`post_id`,`product_id`),
  ADD KEY `posts_products_lnk_fk` (`post_id`),
  ADD KEY `posts_products_lnk_ifk` (`product_id`),
  ADD KEY `posts_products_lnk_ofk` (`product_ord`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`);

--
-- Indexes for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`);

--
-- Indexes for table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stage_required_to_publish_lnk_uq` (`workflow_id`,`workflow_stage_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_fk` (`workflow_id`),
  ADD KEY `strapi_workflows_stage_required_to_publish_lnk_ifk` (`workflow_stage_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `transactions_created_by_id_fk` (`created_by_id`),
  ADD KEY `transactions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `transactions_merchant_lnk`
--
ALTER TABLE `transactions_merchant_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_merchant_lnk_uq` (`transaction_id`,`merchant_id`),
  ADD KEY `transactions_merchant_lnk_fk` (`transaction_id`),
  ADD KEY `transactions_merchant_lnk_ifk` (`merchant_id`),
  ADD KEY `transactions_merchant_lnk_oifk` (`transaction_ord`);

--
-- Indexes for table `transactions_user_app_lnk`
--
ALTER TABLE `transactions_user_app_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_user_app_lnk_uq` (`transaction_id`,`userapp_id`),
  ADD KEY `transactions_user_app_lnk_fk` (`transaction_id`),
  ADD KEY `transactions_user_app_lnk_ifk` (`userapp_id`),
  ADD KEY `transactions_user_app_lnk_oifk` (`transaction_ord`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `up_users_role_lnk_fk` (`user_id`),
  ADD KEY `up_users_role_lnk_ifk` (`role_id`),
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`);

--
-- Indexes for table `userapps`
--
ALTER TABLE `userapps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userapps_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `userapps_created_by_id_fk` (`created_by_id`),
  ADD KEY `userapps_updated_by_id_fk` (`updated_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_shared_media`
--
ALTER TABLE `components_shared_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_item_transactions`
--
ALTER TABLE `list_item_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_item_transactions_transaction_lnk`
--
ALTER TABLE `list_item_transactions_transaction_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `merchants_user_app_lnk`
--
ALTER TABLE `merchants_user_app_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merchant_products`
--
ALTER TABLE `merchant_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_products_merchant_lnk`
--
ALTER TABLE `merchant_products_merchant_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_products_product_lnk`
--
ALTER TABLE `merchant_products_product_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts_products_lnk`
--
ALTER TABLE `posts_products_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions_merchant_lnk`
--
ALTER TABLE `transactions_merchant_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions_user_app_lnk`
--
ALTER TABLE `transactions_user_app_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userapps`
--
ALTER TABLE `userapps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `abouts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD CONSTRAINT `abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globals`
--
ALTER TABLE `globals`
  ADD CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `list_item_transactions`
--
ALTER TABLE `list_item_transactions`
  ADD CONSTRAINT `list_item_transactions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `list_item_transactions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `list_item_transactions_transaction_lnk`
--
ALTER TABLE `list_item_transactions_transaction_lnk`
  ADD CONSTRAINT `list_item_transactions_transaction_lnk_fk` FOREIGN KEY (`list_item_transaction_id`) REFERENCES `list_item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `list_item_transactions_transaction_lnk_ifk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `merchants_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `merchants_user_app_lnk`
--
ALTER TABLE `merchants_user_app_lnk`
  ADD CONSTRAINT `merchants_user_app_lnk_fk` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `merchants_user_app_lnk_ifk` FOREIGN KEY (`userapp_id`) REFERENCES `userapps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchant_products`
--
ALTER TABLE `merchant_products`
  ADD CONSTRAINT `merchant_products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `merchant_products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `merchant_products_merchant_lnk`
--
ALTER TABLE `merchant_products_merchant_lnk`
  ADD CONSTRAINT `merchant_products_merchant_lnk_fk` FOREIGN KEY (`merchant_product_id`) REFERENCES `merchant_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `merchant_products_merchant_lnk_ifk` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchant_products_product_lnk`
--
ALTER TABLE `merchant_products_product_lnk`
  ADD CONSTRAINT `merchant_products_product_lnk_fk` FOREIGN KEY (`merchant_product_id`) REFERENCES `merchant_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `merchant_products_product_lnk_ifk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts_products_lnk`
--
ALTER TABLE `posts_products_lnk`
  ADD CONSTRAINT `posts_products_lnk_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_products_lnk_ifk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stage_required_to_publish_lnk`
--
ALTER TABLE `strapi_workflows_stage_required_to_publish_lnk`
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_fk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stage_required_to_publish_lnk_ifk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions_merchant_lnk`
--
ALTER TABLE `transactions_merchant_lnk`
  ADD CONSTRAINT `transactions_merchant_lnk_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_merchant_lnk_ifk` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions_user_app_lnk`
--
ALTER TABLE `transactions_user_app_lnk`
  ADD CONSTRAINT `transactions_user_app_lnk_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_app_lnk_ifk` FOREIGN KEY (`userapp_id`) REFERENCES `userapps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userapps`
--
ALTER TABLE `userapps`
  ADD CONSTRAINT `userapps_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `userapps_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
