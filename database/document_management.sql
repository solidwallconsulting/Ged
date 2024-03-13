-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 25 jan. 2024 à 10:02
-- Version du serveur : 8.0.35-0ubuntu0.22.04.1
-- Version de PHP : 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `document_management`
--

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL,
  `pageId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actions`
--

INSERT INTO `actions` (`id`, `name`, `order`, `pageId`, `code`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'Edit User', 3, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_EDIT_USER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'Delete Role', 4, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_DELETE_ROLE', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'View Document Audit Trail', 1, '2396f81c-f8b5-49ac-88d1-94ed57333f49', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('229ad778-c7d3-4f5f-ab52-24b537c39514', 'Delete Document', 4, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_DELETE_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('239035d5-cd44-475f-bbc5-9ef51768d389', 'Create Document', 2, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_CREATE_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'Share Document', 6, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_SHARE_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'View Users', 1, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_VIEW_USERS', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('374d74aa-a580-4928-848d-f7553db39914', 'Delete User', 4, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_DELETE_USER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('391c1739-1045-4dd4-9705-4a960479f0a0', 'Upload New Version', 4, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('3ccaf408-8864-4815-a3e0-50632d90bcb6', 'Edit Reminder', 3, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_EDIT_REMINDER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('3da78b4d-d263-4b13-8e81-7aa164a3688c', 'Add Reminder', 5, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_ADD_REMINDER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'Manage SMTP Settings', 1, '2e3c07a4-fcac-4303-ae47-0d0f796403c9', 'EMAIL_MANAGE_SMTP_SETTINGS', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'View Roles', 1, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_VIEW_ROLES', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'Send Email', 8, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_SEND_EMAIL', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'Delete Reminder', 4, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_DELETE_REMINDER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'View Documents', 1, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('6719a065-8a4a-4350-8582-bfc41ce283fb', 'Download Document', 7, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('6bc0458e-22f5-4975-b387-4d6a4fb35201', 'Create Reminder', 2, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_CREATE_REMINDER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('6f2717fc-edef-4537-916d-2d527251a5c1', 'View Reminders', 1, '97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'REMINDER_VIEW_REMINDERS', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('72ca5c91-b415-4997-a234-b4d71ba03253', 'Manage Languages', 1, '8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'SETTING_MANAGE_LANGUAGE', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'View Dashboard', 1, '42e44f15-8e33-423a-ad7f-17edc23d6dd3', 'DASHBOARD_VIEW_DASHBOARD', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'Create User', 2, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_CREATE_USER', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('92596605-e49a-4ab6-8a39-60116eba8abe', 'Delete Document', 6, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'Manage Company Profile', 2, '8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'SETTING_MANAGE_PROFILE', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('a737284a-e43b-481d-9fdd-07e1680ffe11', 'Edit Document', 2, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('a8dd972d-e758-4571-8d39-c6fec74b361b', 'Edit Document', 3, 'eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'ALL_DOCUMENTS_EDIT_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'Share Document', 3, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('c04a1094-f289-4de7-b788-9f21ee3fe32a', 'Send Email', 5, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('c288b5d3-419d-4dc0-9e5a-083194016d2c', 'Edit Role', 3, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_EDIT_ROLE', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'Manage Document Category', 1, '5a5f7cf8-21a6-434a-9330-db91b17d867c', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('d4d724fc-fd38-49c4-85bc-73937b219e20', 'Reset Password', 5, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_RESET_PASSWORD', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'Create Role', 2, '090ea443-01c7-4638-a194-ad3416a5ea7a', 'ROLE_CREATE_ROLE', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('e506ec48-b99a-45b4-9ec9-6451bc67477b', 'Assign Permission', 7, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_ASSIGN_PERMISSION', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'Create Document', 1, 'fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('fbe77c07-3058-4dbe-9d56-8c75dc879460', 'Assign User Role', 6, '324bdc51-d71f-4f80-9f28-a30e8aae4009', 'USER_ASSIGN_USER_ROLE', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'View Login Audit Logs', 1, 'f042bbee-d15f-40fb-b79a-8368f2c2e287', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parentId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parentId`, `isDeleted`, `createdBy`, `modifiedBy`, `deletedBy`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('6f727379-2ee2-4db4-bee4-04e215a1e723', 'archive', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:13:39', '2024-01-23 20:13:56', NULL),
('77dd32ed-3fef-4379-9bd9-e263dc5094ec', 'comptabilité', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:14:07', '2024-01-23 20:14:07', NULL),
('b11ce530-1fd6-4078-9508-1d9de1042509', 'partagés', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:14:21', '2024-01-23 20:14:21', NULL),
('b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'administration', 'dd', NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-06 08:46:23', '2024-01-23 20:13:50', NULL),
('e5c0358d-114a-412f-91a8-cf36f69a70dd', 'finance', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:14:10', '2024-01-23 20:14:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `companyProfile`
--

CREATE TABLE `companyProfile` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logoUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannerUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companyProfile`
--

INSERT INTO `companyProfile` (`id`, `title`, `logoUrl`, `bannerUrl`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('793ab728-444e-44f7-8348-8964beeea9e5', 'Document Management System', 'images/5d17d7d2-ee66-403c-986d-a4cba1e0ebc3.vnd.microsoft.icon', 'images/2eb6ee13-b1ba-4560-8280-30c88c77d65e.webp', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:40:39', '2024-01-10 08:14:47', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dailyReminders`
--

CREATE TABLE `dailyReminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dayOfWeek` int NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dailyReminders`
--

INSERT INTO `dailyReminders` (`id`, `reminderId`, `dayOfWeek`, `isActive`) VALUES
('48d6caee-76cd-4993-bba0-092842dd915a', '4795134d-38cb-463a-9873-0ec0c7759fb1', 6, 1),
('4a28741a-16ff-4361-96ac-bda89498f823', '4795134d-38cb-463a-9873-0ec0c7759fb1', 2, 1),
('4ebed08f-63c7-4cc5-ab19-0dd0f0a7b1b5', '4795134d-38cb-463a-9873-0ec0c7759fb1', 3, 1),
('659a924f-0a84-4186-b60d-5683f4253b4d', '4795134d-38cb-463a-9873-0ec0c7759fb1', 5, 1),
('9b5139dd-2b7d-4f17-9d96-ebdc2d37ea8a', '4795134d-38cb-463a-9873-0ec0c7759fb1', 4, 1),
('c8ede082-3d05-46ee-80ca-c3e92a294bfa', '4795134d-38cb-463a-9873-0ec0c7759fb1', 1, 1),
('f87452a7-bd89-49b9-8c64-8af920d2a14b', '4795134d-38cb-463a-9873-0ec0c7759fb1', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `documentAuditTrails`
--

CREATE TABLE `documentAuditTrails` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operationName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assignToUserId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignToRoleId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documentAuditTrails`
--

INSERT INTO `documentAuditTrails` (`id`, `documentId`, `operationName`, `assignToUserId`, `assignToRoleId`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('1415f5a9-d3d4-49e4-a302-7ad50c9cb246', '963f9944-0d0c-4809-8a81-5327c00ecee5', 'Created', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 20:13:29', '2024-01-23 20:13:29', NULL),
('17a29d4f-1a4e-4ba9-8a9d-5354b54425fb', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:53:31', '2024-01-23 19:53:31', NULL),
('59127c59-061f-41e4-951f-6f5bb71d3ad7', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:53:28', '2024-01-23 19:53:28', NULL),
('69c1f6b0-32d5-4654-8d33-a59058614aa7', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:29:27', '2024-01-23 19:29:27', NULL),
('9a3495b4-dfc6-4d31-b189-0aa2d08585b2', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 19:28:29', '2024-01-06 19:28:29', NULL),
('bc9e958a-981b-4207-a3e4-af24d15b6024', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:12', '2024-01-06 08:47:12', NULL),
('bcb0837a-f914-46de-9371-0a99a835e071', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Created', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('e8be7ff0-07d3-4730-acd8-2c8eab64a7a6', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Created', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:29:25', '2024-01-23 19:29:25', NULL),
('f1824e0c-3589-426e-a55e-fd1a6b56da7f', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Download', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:16', '2024-01-06 08:47:16', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documentComments`
--

CREATE TABLE `documentComments` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documentMetaDatas`
--

CREATE TABLE `documentMetaDatas` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metatag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documentMetaDatas`
--

INSERT INTO `documentMetaDatas` (`id`, `documentId`, `metatag`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('42f5f1e9-23c8-483b-b1e4-325b572d0f79', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'bb', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('849373cb-8533-40d5-874c-8e0a5059536b', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'nn', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documentRolePermissions`
--

CREATE TABLE `documentRolePermissions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `isTimeBound` tinyint(1) NOT NULL,
  `isAllowDownload` tinyint(1) NOT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `categoryId`, `name`, `description`, `url`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`, `deletedBy`, `deleted_at`) VALUES
('0e014747-0af2-4e0f-9aad-881415e5f9d5', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'Screenshot from 2024-01-23 20-29-00.png', NULL, 'documents/779dd150-e834-4d7e-81e2-d5ff435cc967.png', '2024-01-23 19:29:25', '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 19:29:25', '8abea112-4317-4338-98ce-32220efaa874', 0, NULL, NULL),
('3f66334a-0e4d-46a6-9037-669d60e7978d', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', '73155817-document-management-license.pdf', 'bb', 'documents/78368c12-c415-4ecb-bbed-322aa3f96d21.pdf', '2024-01-06 08:47:08', '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 10:40:12', '8abea112-4317-4338-98ce-32220efaa874', 1, '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 09:40:12'),
('963f9944-0d0c-4809-8a81-5327c00ecee5', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'LOGO-FINAL.png', NULL, 'documents/343c1214-427c-429a-aa3e-89179345a1a0.png', '2024-01-23 20:13:29', '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 20:13:29', '8abea112-4317-4338-98ce-32220efaa874', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documentTokens`
--

CREATE TABLE `documentTokens` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documentUserPermissions`
--

CREATE TABLE `documentUserPermissions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `isTimeBound` tinyint(1) NOT NULL,
  `isAllowDownload` tinyint(1) NOT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documentUserPermissions`
--

INSERT INTO `documentUserPermissions` (`id`, `documentId`, `userId`, `startDate`, `endDate`, `isTimeBound`, `isAllowDownload`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('42c6b4a8-861a-432d-a88f-07c269cab749', '0e014747-0af2-4e0f-9aad-881415e5f9d5', '8abea112-4317-4338-98ce-32220efaa874', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:29:25', '2024-01-23 19:29:25', NULL),
('cc9ba704-2c2e-4e87-aee8-6794319132b5', '3f66334a-0e4d-46a6-9037-669d60e7978d', '8abea112-4317-4338-98ce-32220efaa874', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('ea26d7c2-95ea-483e-9fe9-641c881a8bf6', '963f9944-0d0c-4809-8a81-5327c00ecee5', '8abea112-4317-4338-98ce-32220efaa874', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 20:13:29', '2024-01-23 20:13:29', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `documentVersions`
--

CREATE TABLE `documentVersions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emailSMTPSettings`
--

CREATE TABLE `emailSMTPSettings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int NOT NULL,
  `isDefault` tinyint(1) NOT NULL,
  `fromName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `halfYearlyReminders`
--

CREATE TABLE `halfYearlyReminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int NOT NULL,
  `month` int NOT NULL,
  `quarter` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `imageUrl`, `createdBy`, `modifiedBy`, `order`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('04906ab8-15b0-11ee-83f2-d85ed3312c1f', 'ru', 'Russian', 'images/flags/russia.svg', '8abea112-4317-4338-98ce-32220efaa874', '', 5, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('10ac83d1-15b0-11ee-83f2-d85ed3312c1f', 'ja', 'Japanese', 'images/flags/japan.svg', '8abea112-4317-4338-98ce-32220efaa874', '', 6, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1d9a6233-15b0-11ee-83f2-d85ed3312c1f', 'fr', 'French', 'images/flags/france.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 1, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:10:54', NULL),
('9ed7278c-c7e7-4c91-9a83-83833603eb47', 'ko', 'Korean ', 'images/flags/south-korea.svg', '8abea112-4317-4338-98ce-32220efaa874', '', 8, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('df8a9fe2-15af-11ee-83f2-d85ed3312c1f', 'en', 'English', 'images/flags/united-states.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 2, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:00', NULL),
('ef46fe64-15af-11ee-83f2-d85ed3312c1f', 'cn', 'Chinese', 'images/flags/china.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 4, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:17', NULL),
('f8041d27-15af-11ee-83f2-d85ed3312c1f', 'es', 'Spanish', 'images/flags/france.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 7, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:36', NULL),
('fe78a067-15af-11ee-83f2-d85ed3312c1f', 'ar', 'Arabic', 'images/flags/saudi-arabia.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 3, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:44', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `loginAudits`
--

CREATE TABLE `loginAudits` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loginTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remoteIP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `loginAudits`
--

INSERT INTO `loginAudits` (`id`, `userName`, `loginTime`, `remoteIP`, `status`, `provider`, `latitude`, `longitude`) VALUES
('0b1259a5-78e9-4c20-97c9-576d26ee8fba', 'klilmecha@gmail.com', '2024-01-23 19:33:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('114c8fa5-1286-44d5-988e-a999414549ed', 'klilmecha@gmail.com', '2024-01-23 20:25:39', '127.0.0.1', 'Error', NULL, NULL, NULL),
('16619fdc-1422-4327-834c-a5dcbc049bbf', 'khalil.mecha@gmail.com', '2024-01-23 20:20:37', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1c5bdeea-dc53-4537-933d-e63dcc64e50b', 'klilmecha@gmail.com', '2024-01-24 09:30:53', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1ebfc745-b962-4494-bf0b-494d405c6cdb', 'klilmecha@gmail.com', '2024-01-23 14:36:38', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1f5b4724-81f3-47ec-adbc-03b94089021b', 'klilmecha@gmail.com', '2024-01-06 19:28:00', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2886cefc-6dd2-420b-aaf6-9bbf05531500', 'klilmecha@gmail.com', '2024-01-23 10:35:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2bba9c26-f6be-49ee-a5bd-7c7f3413fec2', 'klilmecha@gmail.com', '2024-01-23 19:42:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('30360b4f-c6a8-4e8b-a2f5-dc1ddae21b5e', 'klilmecha@gmail.com', '2024-01-20 09:02:46', '127.0.0.1', 'Error', NULL, NULL, NULL),
('3603b009-0014-4ad9-9512-ff045131d17c', 'superadmin@root.com', '2024-01-20 09:01:48', '127.0.0.1', 'Error', NULL, NULL, NULL),
('3729a085-7dd4-4f71-a55c-43bd5dde65eb', 'klilmecha@gmail.com', '2024-01-10 08:15:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('372b6fb2-fa44-4b10-bb4d-404f1e798191', 'klilmecha@gmail.com', '2024-01-24 19:05:19', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3fbd3b98-5223-4c85-abac-ed2f2416bdaa', 'khalil.mecha@gmail.com', '2024-01-23 20:23:02', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4896b8da-9091-412a-be6c-0c29c7885668', 'klilmecha@gmail.com', '2024-01-06 08:38:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4aa48a37-8cfd-4726-93c7-0a7a3f1272e3', 'klilmecha@gmail.com', '2024-01-23 16:39:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4ed9feb2-6457-4ce7-8834-9a0f58fcc19f', 'superadmin@root.com', '2024-01-06 08:31:33', '127.0.0.1', 'Error', NULL, NULL, NULL),
('56a470cf-5a78-4c6d-be22-6551ff17d1eb', 'superadmin@root.com', '2024-01-06 15:52:23', '127.0.0.1', 'Error', NULL, NULL, NULL),
('6547ca76-362a-42ef-8f63-bcc4b2da599c', 'klilmecha@gmail.com', '2024-01-23 20:25:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('7001245c-e98b-48cc-9266-77b3f5ddefee', 'superadmin@root.com', '2024-01-20 09:01:04', '127.0.0.1', 'Error', NULL, NULL, NULL),
('78b10b5d-b364-4d9b-98f4-ff5dfe6398f4', 'klilmecha@gmail.com', '2024-01-23 16:45:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('79b3acdd-90ed-40c3-bda0-b18ab60aec44', 'superadmin@root.com', '2024-01-20 09:01:19', '127.0.0.1', 'Error', NULL, NULL, NULL),
('8d15b349-2c7f-4f8d-a526-de0567f79b38', 'klilmecha@gmail.com', '2024-01-06 15:53:04', '127.0.0.1', 'Error', NULL, NULL, NULL),
('93128e9d-45ca-4bfb-95f6-9e0938aaaf57', 'klilmecha@gmail.com', '2024-01-22 08:44:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('94c9d3e0-4453-44ee-b398-1a6b120aaffb', 'klilmecha@gmail.com', '2024-01-06 15:52:59', '127.0.0.1', 'Error', NULL, NULL, NULL),
('9ff57dc3-6a70-4b05-818d-f4cfc7ebb2fe', 'klilmecha@gmail.com', '2024-01-24 09:34:11', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a232a220-9afb-4817-a539-0709f2ccc5e7', 'klilmecha@gmail.com', '2024-01-22 08:44:37', '127.0.0.1', 'Error', NULL, NULL, NULL),
('a3e0dd9b-3bda-4675-a0f1-086bd3b63615', 'khalil.mecha@gmail.com', '2024-01-23 20:22:42', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a4f43992-1cdb-40c9-ab6a-ec9981586d13', 'klilmecha@gmail.com', '2024-01-23 14:46:25', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a551e8e5-6648-402e-b99e-7320469df9af', 'klilmecha@gmail.com', '2024-01-23 16:45:51', '127.0.0.1', 'Error', NULL, NULL, NULL),
('b462dc8a-bb65-40eb-ad6f-25a61983f807', 'superadmin@root.com', '2024-01-06 08:34:13', '127.0.0.1', 'Error', NULL, NULL, NULL),
('c13c5769-2e64-497c-a6a2-05c8f365d86d', 'klilmecha@gmail.com', '2024-01-20 11:29:52', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d5337696-c951-4783-8a5d-08aae899a355', 'klilmecha@gmail.com', '2024-01-23 16:54:07', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d850bed3-7d9a-4479-ab19-9d010cee57a4', 'klilmecha@gmail.com', '2024-01-24 22:15:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('db142a96-eebc-42a4-8f79-06ca7f3801a7', 'klilmecha@gmail.com', '2024-01-23 19:27:09', '127.0.0.1', 'Success', NULL, NULL, NULL),
('deab38ac-fbce-4eaf-a112-1990e0a9149d', 'klilmecha@gmail.com', '2024-01-23 16:53:45', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e1c7a2db-ecf9-412f-947a-c47a7e7a0a9e', 'klilmecha@gmail.com', '2024-01-10 08:13:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fcd8f4af-cd8c-43e1-9d53-882ed12a568d', 'klilmecha@gmail.com', '2024-01-20 09:02:50', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fe1f9904-5121-476d-9b82-e489c2e180eb', 'klilmecha@gmail.com', '2024-01-23 19:26:16', '127.0.0.1', 'Success', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_12_07_080139_create_users_table', 1),
(3, '2022_12_07_101203_create_roles_table', 1),
(4, '2022_12_08_055649_create_user_roles_table', 1),
(5, '2022_12_08_064517_create_categories_table', 1),
(6, '2023_01_06_103543_create_pages_table', 1),
(7, '2023_01_06_103807_create_actions_table', 1),
(8, '2023_01_07_084251_create_role_claims_table', 1),
(9, '2023_01_07_102537_create_user_claims_table', 1),
(10, '2023_01_23_062456_create_email_s_m_t_p_settings_table', 1),
(11, '2023_01_23_082532_create_documents_table', 1),
(12, '2023_01_25_091840_create_document_meta_datas_table', 1),
(13, '2023_01_26_105856_create_document_versions_table', 1),
(14, '2023_01_26_112250_create_document_role_permissions_table', 1),
(15, '2023_01_26_112318_create_document_user_permissions_table', 1),
(16, '2023_01_28_075359_create_document_comments_table', 1),
(17, '2023_01_31_063051_create_document_audit_trails_table', 1),
(18, '2023_02_07_112502_create_login_audits_table', 1),
(19, '2023_02_08_080324_create_reminders_table', 1),
(20, '2023_02_13_063925_create_reminder_users_table', 1),
(21, '2023_02_13_064215_create_half_yearly_reminders_table', 1),
(22, '2023_02_13_064719_create_quarterly_reminders_table', 1),
(23, '2023_02_13_064914_create_daily_reminders_table', 1),
(24, '2023_02_18_071307_create_reminder_notifications_table', 1),
(25, '2023_02_18_073159_create_user_notifications_table', 1),
(26, '2023_02_18_092637_create_send_emails_table', 1),
(27, '2023_02_18_101836_create_reminder_schedulers_table', 1),
(28, '2023_03_04_073617_create_document_tokens_table', 1),
(29, '2023_07_18_175356_add_encryption_to_email_s_m_t_p_settings_table', 1),
(30, '2023_07_19_084757_create_languages_table', 1),
(31, '2023_07_19_162944_create_company_profile_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `name`, `order`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('090ea443-01c7-4638-a194-ad3416a5ea7a', 'Role', 7, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('2396f81c-f8b5-49ac-88d1-94ed57333f49', 'Document Audit Trail', 5, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('2e3c07a4-fcac-4303-ae47-0d0f796403c9', 'Email', 8, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('324bdc51-d71f-4f80-9f28-a30e8aae4009', 'User', 6, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('42e44f15-8e33-423a-ad7f-17edc23d6dd3', 'Dashboard', 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('5a5f7cf8-21a6-434a-9330-db91b17d867c', 'Document Category', 4, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('8fbb83d6-9fde-4970-ac80-8e235cab1ff2', 'Settings', 9, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('97ff6eb0-39b3-4ddd-acf1-43205d5a9bb3', 'Reminder', 9, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('eddf9e8e-0c70-4cde-b5f9-117a879747d6', 'All Documents', 2, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('f042bbee-d15f-40fb-b79a-8368f2c2e287', 'Login Audit', 10, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('fc97dc8f-b4da-46b1-a179-ab206d8b7efd', 'Assigned Documents', 3, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, 0, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quarterlyReminders`
--

CREATE TABLE `quarterlyReminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int NOT NULL,
  `month` int NOT NULL,
  `quarter` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reminderNotifications`
--

CREATE TABLE `reminderNotifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetchDateTime` datetime NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `isEmailNotification` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` int DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `dayOfWeek` int DEFAULT NULL,
  `isRepeated` tinyint(1) NOT NULL,
  `isEmailNotification` tinyint(1) NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reminders`
--

INSERT INTO `reminders` (`id`, `subject`, `message`, `frequency`, `startDate`, `endDate`, `dayOfWeek`, `isRepeated`, `isEmailNotification`, `documentId`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('4795134d-38cb-463a-9873-0ec0c7759fb1', 'test', 'test', 0, '2024-01-06 08:47:13', NULL, NULL, 1, 0, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 1, '2024-01-06 08:45:47', '2024-01-22 08:45:20', '2024-01-22 07:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `reminderSchedulers`
--

CREATE TABLE `reminderSchedulers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `frequency` int DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `isEmailNotification` tinyint(1) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reminderUsers`
--

CREATE TABLE `reminderUsers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reminderUsers`
--

INSERT INTO `reminderUsers` (`id`, `reminderId`, `userId`) VALUES
('97aca820-d10e-4a54-bd13-7dee19ee39c7', '4795134d-38cb-463a-9873-0ec0c7759fb1', '8abea112-4317-4338-98ce-32220efaa874');

-- --------------------------------------------------------

--
-- Structure de la table `roleClaims`
--

CREATE TABLE `roleClaims` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claimValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roleClaims`
--

INSERT INTO `roleClaims` (`id`, `actionId`, `roleId`, `claimType`, `claimValue`) VALUES
('00e8124d-44d7-4ca7-ac57-eb1c8d51c4bc', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('0292a840-c99b-40d5-acb4-aa278b06af73', '239035d5-cd44-475f-bbc5-9ef51768d389', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('02cd4fad-7117-451d-bcac-4530bb27c1f0', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_EDIT_USER', NULL),
('09905de3-d579-482b-8aa8-cc0b3854d393', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('158f7c8d-ccac-425a-8f05-98f7ae1f4387', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_VIEW_USERS', NULL),
('17f860da-5224-4410-a38b-383827d3bb83', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('352b2f0d-248b-4944-9257-d83bdf430cf6', 'a737284a-e43b-481d-9fdd-07e1680ffe11', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('35de1121-40cb-4ed4-b770-9e030779e563', '374d74aa-a580-4928-848d-f7553db39914', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_DELETE_USER', NULL),
('406b4236-e173-4668-8ca2-34b4a94914a5', '3da78b4d-d263-4b13-8e81-7aa164a3688c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('468f9851-8301-4a6b-9869-ae7b9f47a262', '6719a065-8a4a-4350-8582-bfc41ce283fb', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('478e85b8-96fb-4a26-933b-c5be8f5e6784', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('52eee1f4-be68-4bcf-a4b7-397951ae51ff', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_DELETE_REMINDER', NULL),
('55b65322-cdea-4e6c-a5cd-f2a1ff2b8e76', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('55b9b3fb-5404-4e78-a208-de317cca856d', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('5982e63b-92d5-40ec-8940-72e752e4564f', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('5abcc490-9434-4fc7-ae9c-31d366487d02', 'c288b5d3-419d-4dc0-9e5a-083194016d2c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_EDIT_ROLE', NULL),
('693ad770-b88b-48c5-a3e7-9c7e5cbb1c66', '18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_DELETE_ROLE', NULL),
('6a0d5cd1-8076-428b-a521-9ab36a961974', '391c1739-1045-4dd4-9705-4a960479f0a0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('6cf119a7-07ba-49a4-925b-e84763defcbd', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('6d841515-1250-4915-a346-7226b6bf2c1a', '72ca5c91-b415-4997-a234-b4d71ba03253', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_LANGUAGE', NULL),
('742ce555-5b8e-41b6-b48c-4df866ba98a1', 'a8dd972d-e758-4571-8d39-c6fec74b361b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('8153d157-e31e-4d26-a50e-3e31824d58cc', '6bc0458e-22f5-4975-b387-4d6a4fb35201', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_CREATE_REMINDER', NULL),
('85040ac2-ff12-48b3-be56-c181218089ec', '92596605-e49a-4ab6-8a39-60116eba8abe', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('8643fe20-0f0b-4c85-a4b8-817baf2f005c', '6f2717fc-edef-4537-916d-2d527251a5c1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_VIEW_REMINDERS', NULL),
('9deef80e-5665-421a-a9da-1585aa7bb956', 'a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_PROFILE', NULL),
('a85939fd-b0d4-44b6-bb46-c359c5d22d8b', 'db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_CREATE_ROLE', NULL),
('afad029e-82fc-48e1-afe3-3134ff5e430d', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_PERMISSION', NULL),
('b4d7f4b9-a7e1-481b-8cc9-6c665a1b22d7', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('ba714f5f-5875-44d2-9482-be827cb7037f', '229ad778-c7d3-4f5f-ab52-24b537c39514', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('bbb991a9-7623-48f3-bed0-e3e9c1501e37', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_VIEW_ROLES', NULL),
('c8e29664-4e77-4249-aa72-5db041e1f518', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('cb08eacb-3571-4310-8094-f40a24512cd6', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_USER_ROLE', NULL),
('cf5ca56f-cc18-419b-a8b5-30333a9f8ecc', 'd4d724fc-fd38-49c4-85bc-73937b219e20', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_RESET_PASSWORD', NULL),
('d10c855e-632e-4df3-a68b-32cb1b8c0327', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('d70f1521-9663-47ed-98b8-7e0a49992fae', '3ccaf408-8864-4815-a3e0-50632d90bcb6', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_EDIT_REMINDER', NULL),
('f53a798f-0c9f-4d60-905e-7a36be390668', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_CREATE_USER', NULL),
('feda459a-8aad-4faa-b343-df8747a1e2fc', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `isDeleted`, `name`, `createdBy`, `modifiedBy`, `deletedBy`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 0, 'Super Admin', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('ff635a8f-4bb3-4d70-a3ed-c7749030696c', 0, 'Employee', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sendEmails`
--

CREATE TABLE `sendEmails` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isSend` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userClaims`
--

CREATE TABLE `userClaims` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claimValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userNotifications`
--

CREATE TABLE `userNotifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isRead` tinyint(1) NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `userRoles`
--

CREATE TABLE `userRoles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `userRoles`
--

INSERT INTO `userRoles` (`id`, `userId`, `roleId`) VALUES
('0c1b9661-9d08-4ae8-a828-d98b394f37b6', '8abea112-4317-4338-98ce-32220efaa874', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c'),
('aba49b6c-9497-433d-abf7-9ff45cebce16', '8abea112-4317-4338-98ce-32220efaa874', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4'),
('af65baf8-cda6-466c-bedf-aa0a3b245596', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normalizedUserName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normalizedEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailConfirmed` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `securityStamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `concurrencyStamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumberConfirmed` tinyint(1) NOT NULL,
  `twoFactorEnabled` tinyint(1) NOT NULL,
  `lockoutEnd` timestamp NULL DEFAULT NULL,
  `lockoutEnabled` tinyint(1) NOT NULL,
  `accessFailedCount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `isDeleted`, `userName`, `normalizedUserName`, `email`, `normalizedEmail`, `emailConfirmed`, `password`, `securityStamp`, `concurrencyStamp`, `phoneNumber`, `phoneNumberConfirmed`, `twoFactorEnabled`, `lockoutEnd`, `lockoutEnabled`, `accessFailedCount`) VALUES
('4d2689d8-6f72-4aa6-911d-2414c1a751af', 'khalil', 'mecha', 0, 'khalil.mecha@gmail.com', NULL, 'khalil.mecha@gmail.com', NULL, 0, '$2y$10$6XSITLy31Vh9DY9bXE3QKej5stgdOB96PMSfF7eT9Vrn4PDyucbja', NULL, NULL, '22274477', 0, 0, NULL, 0, 0),
('8abea112-4317-4338-98ce-32220efaa874', 'khalil', 'mecha', 0, 'klilmecha@gmail.com', NULL, 'klilmecha@gmail.com', NULL, 0, '$2y$10$8NvcU0QGc/FjUatPVd.y3.wZUbNzNQzNTTQ6dgh8Xc9K.Y3Id9jtq', NULL, NULL, NULL, 0, 0, NULL, 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actions_pageid_foreign` (`pageId`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parentid_foreign` (`parentId`);

--
-- Index pour la table `companyProfile`
--
ALTER TABLE `companyProfile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyprofile_createdby_foreign` (`createdBy`);

--
-- Index pour la table `dailyReminders`
--
ALTER TABLE `dailyReminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dailyreminders_reminderid_foreign` (`reminderId`);

--
-- Index pour la table `documentAuditTrails`
--
ALTER TABLE `documentAuditTrails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentaudittrails_documentid_foreign` (`documentId`),
  ADD KEY `documentaudittrails_assigntouserid_foreign` (`assignToUserId`),
  ADD KEY `documentaudittrails_assigntoroleid_foreign` (`assignToRoleId`),
  ADD KEY `documentaudittrails_createdby_foreign` (`createdBy`);

--
-- Index pour la table `documentComments`
--
ALTER TABLE `documentComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentcomments_documentid_foreign` (`documentId`),
  ADD KEY `documentcomments_createdby_foreign` (`createdBy`);

--
-- Index pour la table `documentMetaDatas`
--
ALTER TABLE `documentMetaDatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentmetadatas_documentid_foreign` (`documentId`);

--
-- Index pour la table `documentRolePermissions`
--
ALTER TABLE `documentRolePermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrolepermissions_documentid_foreign` (`documentId`),
  ADD KEY `documentrolepermissions_roleid_foreign` (`roleId`),
  ADD KEY `documentrolepermissions_createdby_foreign` (`createdBy`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_categoryid_foreign` (`categoryId`),
  ADD KEY `documents_createdby_foreign` (`createdBy`);

--
-- Index pour la table `documentTokens`
--
ALTER TABLE `documentTokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documentUserPermissions`
--
ALTER TABLE `documentUserPermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentuserpermissions_documentid_foreign` (`documentId`),
  ADD KEY `documentuserpermissions_userid_foreign` (`userId`),
  ADD KEY `documentuserpermissions_createdby_foreign` (`createdBy`);

--
-- Index pour la table `documentVersions`
--
ALTER TABLE `documentVersions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentversions_documentid_foreign` (`documentId`),
  ADD KEY `documentversions_createdby_foreign` (`createdBy`);

--
-- Index pour la table `emailSMTPSettings`
--
ALTER TABLE `emailSMTPSettings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `halfYearlyReminders`
--
ALTER TABLE `halfYearlyReminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `halfyearlyreminders_reminderid_foreign` (`reminderId`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_createdby_foreign` (`createdBy`);

--
-- Index pour la table `loginAudits`
--
ALTER TABLE `loginAudits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `quarterlyReminders`
--
ALTER TABLE `quarterlyReminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quarterlyreminders_reminderid_foreign` (`reminderId`);

--
-- Index pour la table `reminderNotifications`
--
ALTER TABLE `reminderNotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remindernotifications_reminderid_foreign` (`reminderId`);

--
-- Index pour la table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_documentid_foreign` (`documentId`),
  ADD KEY `reminders_createdby_foreign` (`createdBy`);

--
-- Index pour la table `reminderSchedulers`
--
ALTER TABLE `reminderSchedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminderschedulers_documentid_foreign` (`documentId`),
  ADD KEY `reminderschedulers_userid_foreign` (`userId`);

--
-- Index pour la table `reminderUsers`
--
ALTER TABLE `reminderUsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminderusers_reminderid_foreign` (`reminderId`),
  ADD KEY `reminderusers_userid_foreign` (`userId`);

--
-- Index pour la table `roleClaims`
--
ALTER TABLE `roleClaims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleclaims_actionid_foreign` (`actionId`),
  ADD KEY `roleclaims_roleid_foreign` (`roleId`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sendEmails`
--
ALTER TABLE `sendEmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendemails_documentid_foreign` (`documentId`),
  ADD KEY `sendemails_createdby_foreign` (`createdBy`);

--
-- Index pour la table `userClaims`
--
ALTER TABLE `userClaims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userclaims_actionid_foreign` (`actionId`),
  ADD KEY `userclaims_userid_foreign` (`userId`);

--
-- Index pour la table `userNotifications`
--
ALTER TABLE `userNotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usernotifications_userid_foreign` (`userId`),
  ADD KEY `usernotifications_documentid_foreign` (`documentId`);

--
-- Index pour la table `userRoles`
--
ALTER TABLE `userRoles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userroles_userid_foreign` (`userId`),
  ADD KEY `userroles_roleid_foreign` (`roleId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_pageid_foreign` FOREIGN KEY (`pageId`) REFERENCES `pages` (`id`);

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parentid_foreign` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `companyProfile`
--
ALTER TABLE `companyProfile`
  ADD CONSTRAINT `companyprofile_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `dailyReminders`
--
ALTER TABLE `dailyReminders`
  ADD CONSTRAINT `dailyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Contraintes pour la table `documentAuditTrails`
--
ALTER TABLE `documentAuditTrails`
  ADD CONSTRAINT `documentaudittrails_assigntoroleid_foreign` FOREIGN KEY (`assignToRoleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `documentaudittrails_assigntouserid_foreign` FOREIGN KEY (`assignToUserId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentaudittrails_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentaudittrails_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Contraintes pour la table `documentComments`
--
ALTER TABLE `documentComments`
  ADD CONSTRAINT `documentcomments_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentcomments_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Contraintes pour la table `documentMetaDatas`
--
ALTER TABLE `documentMetaDatas`
  ADD CONSTRAINT `documentmetadatas_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Contraintes pour la table `documentRolePermissions`
--
ALTER TABLE `documentRolePermissions`
  ADD CONSTRAINT `documentrolepermissions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentrolepermissions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `documentrolepermissions_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `documents_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `documentUserPermissions`
--
ALTER TABLE `documentUserPermissions`
  ADD CONSTRAINT `documentuserpermissions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentuserpermissions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `documentuserpermissions_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `documentVersions`
--
ALTER TABLE `documentVersions`
  ADD CONSTRAINT `documentversions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentversions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Contraintes pour la table `halfYearlyReminders`
--
ALTER TABLE `halfYearlyReminders`
  ADD CONSTRAINT `halfyearlyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Contraintes pour la table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `quarterlyReminders`
--
ALTER TABLE `quarterlyReminders`
  ADD CONSTRAINT `quarterlyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Contraintes pour la table `reminderNotifications`
--
ALTER TABLE `reminderNotifications`
  ADD CONSTRAINT `remindernotifications_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Contraintes pour la table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reminders_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Contraintes pour la table `reminderSchedulers`
--
ALTER TABLE `reminderSchedulers`
  ADD CONSTRAINT `reminderschedulers_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `reminderschedulers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reminderUsers`
--
ALTER TABLE `reminderUsers`
  ADD CONSTRAINT `reminderusers_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`),
  ADD CONSTRAINT `reminderusers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `roleClaims`
--
ALTER TABLE `roleClaims`
  ADD CONSTRAINT `roleclaims_actionid_foreign` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `roleclaims_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `sendEmails`
--
ALTER TABLE `sendEmails`
  ADD CONSTRAINT `sendemails_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sendemails_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Contraintes pour la table `userClaims`
--
ALTER TABLE `userClaims`
  ADD CONSTRAINT `userclaims_actionid_foreign` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `userclaims_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `userNotifications`
--
ALTER TABLE `userNotifications`
  ADD CONSTRAINT `usernotifications_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `usernotifications_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `userRoles`
--
ALTER TABLE `userRoles`
  ADD CONSTRAINT `userroles_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userroles_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
