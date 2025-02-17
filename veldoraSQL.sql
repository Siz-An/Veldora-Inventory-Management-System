-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2025 at 06:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `veldora`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2025-02-16 10:41:04'),
(3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2025-02-16 10:41:04'),
(4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2025-02-16 10:41:04'),
(5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2025-02-16 10:41:04'),
(6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2025-02-16 10:41:04'),
(7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2025-02-16 10:41:04'),
(8, 0, 2, 'Companies', 'fa-building', 'companies', NULL, '2025-02-16 04:23:54', '2025-02-16 10:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(129, 1, 'auth/logs/127,128', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 10:54:07', '2025-02-16 10:54:07'),
(130, 1, 'auth/logs', 'GET', '127.0.0.1', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:07', '2025-02-16 10:54:07'),
(131, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:12', '2025-02-16 10:54:12'),
(132, 1, 'auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:14', '2025-02-16 10:54:14'),
(133, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:15', '2025-02-16 10:54:15'),
(134, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:17', '2025-02-16 10:54:17'),
(135, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:19', '2025-02-16 10:54:19'),
(136, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:20', '2025-02-16 10:54:20'),
(137, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:22', '2025-02-16 10:54:22'),
(138, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:24', '2025-02-16 10:54:24'),
(139, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:33', '2025-02-16 10:54:33'),
(140, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:34', '2025-02-16 10:54:34'),
(141, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:37', '2025-02-16 10:54:37'),
(142, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:38', '2025-02-16 10:54:38'),
(143, 1, 'auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:54:44', '2025-02-16 10:54:44'),
(144, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"company2\",\"name\":\"bookVerse\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 10:55:03', '2025-02-16 10:55:03'),
(145, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 10:55:04', '2025-02-16 10:55:04'),
(146, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 10:56:22', '2025-02-16 10:56:22'),
(147, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-16 11:01:54', '2025-02-16 11:01:54'),
(148, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:01:59', '2025-02-16 11:01:59'),
(149, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:02:00', '2025-02-16 11:02:00'),
(150, 1, 'auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:02:02', '2025-02-16 11:02:02'),
(151, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demo\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:02:12', '2025-02-16 11:02:12'),
(152, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:02:12', '2025-02-16 11:02:12'),
(153, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:02:23', '2025-02-16 11:02:23'),
(154, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:02:23', '2025-02-16 11:02:23'),
(155, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:07:01', '2025-02-16 11:07:01'),
(156, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:07:01', '2025-02-16 11:07:01'),
(157, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:07:39', '2025-02-16 11:07:39'),
(158, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:07:39', '2025-02-16 11:07:39'),
(159, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:07:51', '2025-02-16 11:07:51'),
(160, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:07:51', '2025-02-16 11:07:51'),
(161, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:08:13', '2025-02-16 11:08:13'),
(162, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:08:13', '2025-02-16 11:08:13'),
(163, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:08:29', '2025-02-16 11:08:29'),
(164, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:08:29', '2025-02-16 11:08:29'),
(165, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:09:27', '2025-02-16 11:09:27'),
(166, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:09:27', '2025-02-16 11:09:27'),
(167, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"demosdsdsds\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:10:12', '2025-02-16 11:10:12'),
(168, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:10:12', '2025-02-16 11:10:12'),
(169, 1, 'auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:10:21', '2025-02-16 11:10:21'),
(170, 1, 'auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"demo\",\"name\":\"demo\",\"password\":null,\"password_confirmation\":\"$2y$12$dtdt5T6irgzdkFEXRP3vg.HkhayLT2MaLrnFpNNZeP6rAl\\/KpEeRa\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:10:34', '2025-02-16 11:10:34'),
(171, 1, 'auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-16 11:10:34', '2025-02-16 11:10:34'),
(172, 1, 'auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"demo\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\"}', '2025-02-16 11:10:43', '2025-02-16 11:10:43'),
(173, 1, 'auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2025-02-16 11:10:44', '2025-02-16 11:10:44'),
(174, 1, 'auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"demo\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"4\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\"}', '2025-02-16 11:11:09', '2025-02-16 11:11:09'),
(175, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:11:09', '2025-02-16 11:11:09'),
(176, 1, 'auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:12:02', '2025-02-16 11:12:02'),
(177, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"sizan\",\"name\":\"sizan\",\"password\":\"sizan\",\"password_confirmation\":\"sizan\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:12:15', '2025-02-16 11:12:15'),
(178, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:12:15', '2025-02-16 11:12:15'),
(179, 1, 'auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:12:31', '2025-02-16 11:12:31'),
(180, 1, 'auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\".67b218eba8ebc\",\"name\":\"sizan\",\"password\":\"sizan\",\"password_confirmation\":\"sizan\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:12:45', '2025-02-16 11:12:45'),
(181, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:12:46', '2025-02-16 11:12:46'),
(182, 1, 'auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:12:50', '2025-02-16 11:12:50'),
(183, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:12:53', '2025-02-16 11:12:53'),
(184, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:14:17', '2025-02-16 11:14:17'),
(185, 1, 'auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:14:21', '2025-02-16 11:14:21'),
(186, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:14:28', '2025-02-16 11:14:28'),
(187, 1, '_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"App_Models_User\",\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2025-02-16 11:14:31', '2025-02-16 11:14:31'),
(188, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:14:31', '2025-02-16 11:14:31'),
(189, 1, 'auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:14:34', '2025-02-16 11:14:34'),
(190, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"sizan\",\"name\":\"sizan\",\"password\":\"sizan\",\"password_confirmation\":\"sizan\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:14:45', '2025-02-16 11:14:45'),
(191, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:14:46', '2025-02-16 11:14:46'),
(192, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"sizan\",\"name\":\"sizan\",\"password\":\"sizan\",\"password_confirmation\":\"sizan\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:17:30', '2025-02-16 11:17:30'),
(193, 1, 'auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-16 11:17:30', '2025-02-16 11:17:30'),
(194, 1, 'auth/users', 'POST', '127.0.0.1', '{\"username\":\"sizan\",\"name\":\"sizan\",\"password\":\"sizan\",\"password_confirmation\":\"sizan\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\"}', '2025-02-16 11:17:38', '2025-02-16 11:17:38'),
(195, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:17:38', '2025-02-16 11:17:38'),
(196, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:23:08', '2025-02-16 11:23:08'),
(197, 1, 'auth/users/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:23:11', '2025-02-16 11:23:11'),
(198, 1, 'auth/users/4', 'PUT', '127.0.0.1', '{\"username\":\"sizan\",\"name\":\"sizan\",\"password\":\"sizan\",\"password_confirmation\":\"sizan\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:23:22', '2025-02-16 11:23:22'),
(199, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:23:22', '2025-02-16 11:23:22'),
(200, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:23:39', '2025-02-16 11:23:39'),
(201, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:23:42', '2025-02-16 11:23:42'),
(202, 1, 'auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:23:44', '2025-02-16 11:23:44'),
(203, 1, 'auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:23:55', '2025-02-16 11:23:55'),
(204, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:23:56', '2025-02-16 11:23:56'),
(205, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:24:00', '2025-02-16 11:24:00'),
(206, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:24:05', '2025-02-16 11:24:05'),
(207, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:24:06', '2025-02-16 11:24:06'),
(208, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:24:06', '2025-02-16 11:24:06'),
(209, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:12', '2025-02-16 11:24:12'),
(210, 1, 'auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:13', '2025-02-16 11:24:13'),
(211, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:14', '2025-02-16 11:24:14'),
(212, 1, 'auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:15', '2025-02-16 11:24:15'),
(213, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:16', '2025-02-16 11:24:16'),
(214, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:18', '2025-02-16 11:24:18'),
(215, 1, 'companies/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:20', '2025-02-16 11:24:20'),
(216, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:25', '2025-02-16 11:24:25'),
(217, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:30', '2025-02-16 11:24:30'),
(218, 1, 'auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:24:35', '2025-02-16 11:24:35'),
(219, 1, 'auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"demo\",\"name\":\"demo\",\"password\":\"demo\",\"password_confirmation\":\"demo\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/auth\\/users\"}', '2025-02-16 11:24:56', '2025-02-16 11:24:56'),
(220, 1, 'auth/users', 'GET', '127.0.0.1', '[]', '2025-02-16 11:24:57', '2025-02-16 11:24:57'),
(221, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:25:00', '2025-02-16 11:25:00'),
(222, 1, 'companies/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:25:02', '2025-02-16 11:25:02'),
(223, 1, 'companies', 'POST', '127.0.0.1', '{\"owner_id\":\"2\",\"name\":\"sizan\",\"email\":\"sizan@gmail.com\",\"website\":\"https:\\/\\/github.com\\/Siz-An\",\"about\":\"sadxzc\",\"status\":\"awsdzcx\",\"license_expire\":\"2025-02-16\",\"address\":\"tokha\",\"phone_number\":\"+977 9816207570\",\"phone_number_2\":\"+977 9866335989\",\"pobox\":\"100\",\"color\":\"#ff2727\",\"slogan\":\"dx\",\"facebook\":\"https:\\/\\/github.com\\/Siz-An\",\"twitter\":\"https:\\/\\/github.com\\/Siz-An\",\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/companies\"}', '2025-02-16 11:25:29', '2025-02-16 11:25:29'),
(224, 1, 'companies', 'GET', '127.0.0.1', '[]', '2025-02-16 11:25:29', '2025-02-16 11:25:29'),
(225, 1, 'companies', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,email,license_expire,name,owner_id,status,twitter\",\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:25:49', '2025-02-16 11:25:49'),
(226, 1, 'companies/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:25:52', '2025-02-16 11:25:52'),
(227, 1, 'companies/1', 'PUT', '127.0.0.1', '{\"owner_id\":\"2\",\"name\":\"sizan\",\"email\":\"sizan@gmail.com\",\"website\":\"https:\\/\\/github.com\\/Siz-An\",\"about\":\"sadxzc\",\"status\":\"active\",\"license_expire\":\"2025-02-16\",\"address\":\"tokha\",\"phone_number\":\"+977 9816207570\",\"phone_number_2\":\"+977 9866335989\",\"pobox\":\"100\",\"color\":\"#ff2727\",\"slogan\":\"dx\",\"facebook\":\"https:\\/\\/github.com\\/Siz-An\",\"twitter\":\"https:\\/\\/github.com\\/Siz-An\",\"_token\":\"38EjLPaqNvw6VWszKkrptBNZHyACOsUY0Dx83zF2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/companies?_columns_=created_at%2Cemail%2Clicense_expire%2Cname%2Cowner_id%2Cstatus%2Ctwitter\"}', '2025-02-16 11:25:58', '2025-02-16 11:25:58'),
(228, 1, 'companies', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,email,license_expire,name,owner_id,status,twitter\"}', '2025-02-16 11:25:58', '2025-02-16 11:25:58'),
(229, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-16 11:26:12', '2025-02-16 11:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2025-02-16 03:45:37', '2025-02-16 03:54:29'),
(2, 'Company Owner', 'company', '2025-02-16 03:55:45', '2025-02-16 03:55:45'),
(3, 'Company Worker', 'worker', '2025-02-16 03:56:25', '2025-02-16 03:56:25'),
(4, 'demo', 'demo', '2025-02-16 10:48:24', '2025-02-16 10:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(3, 1, NULL, NULL),
(4, 2, NULL, NULL),
(4, 1, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL),
(4, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 4, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `phone_number` text DEFAULT NULL,
  `phone_number_2` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `sex` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`, `company_id`, `first_name`, `last_name`, `phone_number`, `phone_number_2`, `address`, `sex`, `dob`, `status`, `email`) VALUES
(1, 'admin', '$2y$12$xsYLCnJHCKZ1XrX1sIY6VOe1V6YC2s3JfnYLC0VxTb9l538GjcCv6', 'Administrator', 'images/64581a534cb7379a017222c42953a680.png', 'MkBCE3jmNNqVf1xs9raoxlI2NFZr6JqvlwB6z4uah4ajqx5wWAVgZvyKq34o', '2025-02-16 03:45:37', '2025-02-16 11:23:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL),
(2, 'demo', '$2y$12$JCUcubEa4JBSfFEd1Vv7oOWL6m8y8hnKY1Yx6bRtQlXsIr/H50iHm', 'demo', NULL, NULL, '2025-02-16 11:10:12', '2025-02-16 11:25:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL),
(4, 'sizan', '$2y$12$Eve7v9TQvwrXfa8CXUR0heAppbaGFxP6ec/cJoC97xD8AFomW4r/i', 'sizan', NULL, NULL, '2025-02-16 11:17:38', '2025-02-16 11:23:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budget_programs`
--

CREATE TABLE `budget_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `total_collected` bigint(20) DEFAULT 0,
  `total_expected` bigint(20) DEFAULT 0,
  `total_in_pledge` bigint(20) DEFAULT 0,
  `budget_total` bigint(20) DEFAULT 0,
  `budget_spent` bigint(20) DEFAULT 0,
  `budget_balance` bigint(20) DEFAULT 0,
  `status` varchar(255) DEFAULT 'Active',
  `deadline` date DEFAULT NULL,
  `rsvp` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `is_default` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `groups` longtext DEFAULT NULL,
  `title` text DEFAULT NULL,
  `bottom` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `code_gens`
--

CREATE TABLE `code_gens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `table_name` text DEFAULT NULL,
  `end_point` text DEFAULT NULL,
  `other_1` text DEFAULT NULL,
  `other_2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `about` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `license_expire` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone_number` text DEFAULT NULL,
  `phone_number_2` text DEFAULT NULL,
  `pobox` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `slogan` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `currency` varchar(255) DEFAULT 'USD',
  `settings_worker_can_create_stock_item` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_create_stock_record` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_create_stock_category` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_view_balance` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_view_stats` varchar(255) DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `owner_id`, `name`, `email`, `logo`, `website`, `about`, `status`, `license_expire`, `address`, `phone_number`, `phone_number_2`, `pobox`, `color`, `slogan`, `facebook`, `twitter`, `currency`, `settings_worker_can_create_stock_item`, `settings_worker_can_create_stock_record`, `settings_worker_can_create_stock_category`, `settings_worker_can_view_balance`, `settings_worker_can_view_stats`) VALUES
(1, '2025-02-16 11:25:29', '2025-02-16 11:25:58', 2, 'sizan', 'sizan@gmail.com', NULL, 'https://github.com/Siz-An', 'sadxzc', 'active', '2025-02-16', 'tokha', '+977 9816207570', '+977 9866335989', '100', '#ff2727', 'dx', 'https://github.com/Siz-An', 'https://github.com/Siz-An', 'USD', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_categories`
--

CREATE TABLE `financial_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `total_income` bigint(20) DEFAULT NULL,
  `total_expense` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_categories`
--

INSERT INTO `financial_categories` (`id`, `created_at`, `updated_at`, `company_id`, `total_income`, `total_expense`, `name`, `description`) VALUES
(1, '2025-02-16 11:25:29', '2025-02-16 11:25:29', 1, NULL, NULL, 'Sales', NULL),
(2, '2025-02-16 11:25:29', '2025-02-16 11:25:29', 1, NULL, NULL, 'Purchase', NULL),
(3, '2025-02-16 11:25:29', '2025-02-16 11:25:29', 1, NULL, NULL, 'Expense', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `financial_periods`
--

CREATE TABLE `financial_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text DEFAULT NULL,
  `total_investment` bigint(20) NOT NULL DEFAULT 0,
  `total_sales` bigint(20) NOT NULL DEFAULT 0,
  `total_profit` bigint(20) NOT NULL DEFAULT 0,
  `total_expenses` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_records`
--

CREATE TABLE `financial_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `financial_category_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `recipient` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `receipt` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `financial_period_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_reports`
--

CREATE TABLE `financial_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `period_type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `file_generated` varchar(255) DEFAULT 'no',
  `file` text DEFAULT NULL,
  `total_income` decimal(15,2) DEFAULT NULL,
  `total_expense` decimal(15,2) DEFAULT NULL,
  `profit` decimal(15,2) DEFAULT NULL,
  `include_finance_accounts` varchar(255) DEFAULT NULL,
  `include_finance_records` varchar(255) DEFAULT NULL,
  `inventory_total_buying_price` decimal(15,2) DEFAULT NULL,
  `inventory_total_selling_price` decimal(15,2) DEFAULT NULL,
  `inventory_total_expected_profit` decimal(15,2) DEFAULT NULL,
  `inventory_total_earned_profit` decimal(15,2) DEFAULT NULL,
  `inventory_include_categories` varchar(255) DEFAULT NULL,
  `inventory_include_sub_categories` varchar(255) DEFAULT NULL,
  `inventory_include_products` varchar(255) DEFAULT NULL,
  `do_generate` varchar(255) DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gens`
--

CREATE TABLE `gens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_name` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `endpoint` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2016_01_04_173148_create_admin_tables', 2),
(5, '2025_02_16_094413_create_companies_table', 3),
(6, '2014_10_12_000000_create_users_table', 4),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 5),
(8, '2019_08_19_000000_create_failed_jobs_table', 6),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(10, '2023_12_27_191449_create_companies_table', 7),
(11, '2023_12_28_175439_add_more_data_to_users_table', 7),
(12, '2023_12_28_184634_create_stock_categories_table', 7),
(13, '2023_12_28_191608_create_stock_sub_categories_table', 7),
(14, '2023_12_29_185415_create_financial_periods_table', 7),
(15, '2023_12_29_193135_add_email_to_users_table', 7),
(16, '2023_12_30_170905_create_stock_items_table', 7),
(17, '2024_01_01_181454_add_in_stock_stock_sub_categories', 7),
(18, '2024_01_01_182639_create_stock_records_table', 7),
(19, '2024_01_03_174223_add_profit_col_stock_records', 7),
(20, '2024_01_03_175748_add_financial_period_id_to', 7),
(21, '2024_01_06_180349_add_currency_to_companies', 7),
(22, '2024_02_09_175542_create_code_gens_table', 7),
(23, '2024_03_21_210236_create_gens_table', 7),
(24, '2024_04_01_123859_create_financial_records_table', 7),
(25, '2024_04_01_125240_create_financial_categories_table', 7),
(26, '2024_04_01_190510_add_financial_period_ido_financial_records', 7),
(27, '2024_04_01_190855_add_created_by_id_to_financial_records', 7),
(28, '2024_04_02_201819_create_financial_reports_table', 7),
(29, '2024_04_02_211110_add_do_generate_financial_reports', 7),
(30, '2024_04_28_152333_create_budget_programs_table', 7),
(31, '2024_04_28_204616_create_contribution_records_table', 7),
(32, '2024_04_28_205622_create_handover_records_table', 7),
(33, '2024_04_28_210435_create_budget_item_categories_table', 7),
(34, '2024_04_28_211253_create_budget_items_table', 7),
(35, '2024_04_28_220225_add_auto_data_contribution_records', 7),
(36, '2024_04_28_231823_add_amount_handover_records', 7),
(37, '2024_04_29_003019_add_cat_contribution_records', 7),
(38, '2024_04_29_005531_create_data_exports_table', 7),
(39, '2024_04_30_090241_add_unit_budget_items', 7),
(40, '2024_04_30_091231_add_approved_budget_items', 7),
(41, '2024_04_30_100151_add_details_budget_items', 7),
(42, '2024_05_31_093512_add_status_to_budget_programs', 7),
(43, '2024_05_31_111210_make_change_user_id_on_organisations', 7),
(44, '2024_05_31_112507_add_new_status_to_budget_programs', 7),
(45, '2024_06_08_093141_add_new_fields_to_budget_programs', 7),
(46, '2024_06_08_165134_add_title_fields_to_budget_programs', 7),
(47, '2025_02_16_161532_create_sessions_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0iAu0VMXQMthJRrYVo4EubMqVmJx6QORwRQlSdpS', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzhFakxQYXFOdnc2VldzektrcnB0Qk5aSHlBQ09zVVkwRHg4M3pGMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDEvYXV0aC91c2VycyI7fX0=', 1739725872);

-- --------------------------------------------------------

--
-- Table structure for table `stock_categories`
--

CREATE TABLE `stock_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `image` text DEFAULT NULL,
  `buying_price` bigint(20) DEFAULT 0,
  `selling_price` bigint(20) DEFAULT 0,
  `expected_profit` bigint(20) DEFAULT 0,
  `earned_profit` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `stock_category_id` bigint(20) UNSIGNED NOT NULL,
  `stock_sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `financial_period_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `generate_sku` varchar(255) DEFAULT NULL,
  `update_sku` varchar(255) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `buying_price` bigint(20) NOT NULL DEFAULT 0,
  `selling_price` bigint(20) NOT NULL DEFAULT 0,
  `original_quantity` bigint(20) NOT NULL DEFAULT 0,
  `current_quantity` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_records`
--

CREATE TABLE `stock_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `stock_item_id` bigint(20) UNSIGNED NOT NULL,
  `stock_category_id` bigint(20) UNSIGNED NOT NULL,
  `stock_sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `measurement_unit` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `selling_price` double(8,2) NOT NULL,
  `total_sales` double(8,2) NOT NULL,
  `profit` bigint(20) NOT NULL DEFAULT 0,
  `financial_period_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_sub_categories`
--

CREATE TABLE `stock_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `stock_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `image` text DEFAULT NULL,
  `buying_price` bigint(20) DEFAULT 0,
  `selling_price` bigint(20) DEFAULT 0,
  `expected_profit` bigint(20) DEFAULT 0,
  `earned_profit` bigint(20) DEFAULT 0,
  `measurement_unit` varchar(255) NOT NULL,
  `current_quantity` bigint(20) DEFAULT 0,
  `reorder_level` bigint(20) DEFAULT 0,
  `in_stock` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `budget_programs`
--
ALTER TABLE `budget_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `code_gens`
--
ALTER TABLE `code_gens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `financial_categories`
--
ALTER TABLE `financial_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_periods`
--
ALTER TABLE `financial_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_records`
--
ALTER TABLE `financial_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financial_records_financial_period_id_foreign` (`financial_period_id`);

--
-- Indexes for table `financial_reports`
--
ALTER TABLE `financial_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gens`
--
ALTER TABLE `gens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_categories`
--
ALTER TABLE `stock_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_records`
--
ALTER TABLE `stock_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_sub_categories`
--
ALTER TABLE `stock_sub_categories`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `budget_programs`
--
ALTER TABLE `budget_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `code_gens`
--
ALTER TABLE `code_gens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_categories`
--
ALTER TABLE `financial_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `financial_periods`
--
ALTER TABLE `financial_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_records`
--
ALTER TABLE `financial_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_reports`
--
ALTER TABLE `financial_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gens`
--
ALTER TABLE `gens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_categories`
--
ALTER TABLE `stock_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_records`
--
ALTER TABLE `stock_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_sub_categories`
--
ALTER TABLE `stock_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financial_records`
--
ALTER TABLE `financial_records`
  ADD CONSTRAINT `financial_records_financial_period_id_foreign` FOREIGN KEY (`financial_period_id`) REFERENCES `financial_periods` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
