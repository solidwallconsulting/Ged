-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 02:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
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
-- Dumping data for table `actions`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parentId`, `isDeleted`, `createdBy`, `modifiedBy`, `deletedBy`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('4f825ff9-255e-4a4e-91bb-2e076656afc5', 'hello world', 'xyccc', NULL, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-19 12:51:02', '2024-02-19 13:50:32', NULL),
('6600abca-46b3-4a6d-a6b6-9bebac9d900b', 'demo sub', 'exmple', NULL, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-23 09:55:53', '2024-02-23 09:55:53', NULL),
('6f727379-2ee2-4db4-bee4-04e215a1e723', 'archive', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:13:39', '2024-01-23 20:13:56', NULL),
('77dd32ed-3fef-4379-9bd9-e263dc5094ec', 'comptabilité', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:14:07', '2024-01-23 20:14:07', NULL),
('8f998c0f-25b3-4c0b-84d0-54b453533a45', 'Motorcycles', 'honda,yamaha,kawasaki', NULL, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-19 13:20:01', '2024-02-19 13:20:01', NULL),
('ad5e6241-c23a-4536-955a-b0ce56d6fd7e', 'waw', 'waw', '4f825ff9-255e-4a4e-91bb-2e076656afc5', 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-23 09:58:07', '2024-02-23 09:58:07', NULL),
('b11ce530-1fd6-4078-9508-1d9de1042509', 'partagés', NULL, NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-23 20:14:21', '2024-01-23 20:14:21', NULL),
('b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'administration', 'dd', NULL, 0, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-06 08:46:23', '2024-01-23 20:13:50', NULL),
('c12bb05b-cf85-4ec7-a4e4-70284ebd2afc', 'sub', 'sub', '4f825ff9-255e-4a4e-91bb-2e076656afc5', 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-23 09:57:26', '2024-02-23 09:57:26', NULL),
('d84ea81a-d33c-4107-ab2a-5487f50f6850', 'honda', 'honda', NULL, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-02-19 13:10:34', '2024-02-19 14:26:34', '2024-02-19 13:26:34'),
('e5c0358d-114a-412f-91a8-cf36f69a70dd', 'finance', NULL, NULL, 1, '8abea112-4317-4338-98ce-32220efaa874', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-01-23 20:14:10', '2024-02-19 14:09:18', '2024-02-19 13:09:18'),
('ed1443fa-b090-43b4-91eb-44fb0c01e9e7', 'demo', 'demo desception', '6f727379-2ee2-4db4-bee4-04e215a1e723', 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-19 09:18:33', '2024-02-19 09:18:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companyprofile`
--

CREATE TABLE `companyprofile` (
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
-- Dumping data for table `companyprofile`
--

INSERT INTO `companyprofile` (`id`, `title`, `logoUrl`, `bannerUrl`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('f736a09e-04a7-4399-83d0-17c477947160', 'Document Management System', '', '', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-01-30 10:20:35', '2024-03-04 10:55:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dailyreminders`
--

CREATE TABLE `dailyreminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dayOfWeek` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dailyreminders`
--

INSERT INTO `dailyreminders` (`id`, `reminderId`, `dayOfWeek`, `isActive`) VALUES
('29da4bba-0856-46d5-9b94-b1b3df169907', 'feb0f75a-49b3-4298-8945-25e1172a0160', 4, 1),
('3b4e2670-75f5-4e9a-b91f-08a42e5178de', 'feb0f75a-49b3-4298-8945-25e1172a0160', 1, 1),
('48d6caee-76cd-4993-bba0-092842dd915a', '4795134d-38cb-463a-9873-0ec0c7759fb1', 6, 1),
('4a28741a-16ff-4361-96ac-bda89498f823', '4795134d-38cb-463a-9873-0ec0c7759fb1', 2, 1),
('4ebed08f-63c7-4cc5-ab19-0dd0f0a7b1b5', '4795134d-38cb-463a-9873-0ec0c7759fb1', 3, 1),
('659a924f-0a84-4186-b60d-5683f4253b4d', '4795134d-38cb-463a-9873-0ec0c7759fb1', 5, 1),
('66c37e7b-a6c3-4039-837c-6b58095cb1c5', 'feb0f75a-49b3-4298-8945-25e1172a0160', 5, 1),
('7d59e9b7-b4e3-48ed-9c1d-53e90f7ee741', 'feb0f75a-49b3-4298-8945-25e1172a0160', 3, 1),
('9b5139dd-2b7d-4f17-9d96-ebdc2d37ea8a', '4795134d-38cb-463a-9873-0ec0c7759fb1', 4, 1),
('a5679348-b64f-44f9-a859-4d55686704e8', 'feb0f75a-49b3-4298-8945-25e1172a0160', 0, 1),
('ba8c0798-8f94-4a1b-a1bc-679355bae964', 'feb0f75a-49b3-4298-8945-25e1172a0160', 6, 1),
('c8ede082-3d05-46ee-80ca-c3e92a294bfa', '4795134d-38cb-463a-9873-0ec0c7759fb1', 1, 1),
('d937c564-6a9c-4115-b7c0-839f143beb1c', 'feb0f75a-49b3-4298-8945-25e1172a0160', 2, 1),
('f87452a7-bd89-49b9-8c64-8af920d2a14b', '4795134d-38cb-463a-9873-0ec0c7759fb1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documentaudittrails`
--

CREATE TABLE `documentaudittrails` (
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
-- Dumping data for table `documentaudittrails`
--

INSERT INTO `documentaudittrails` (`id`, `documentId`, `operationName`, `assignToUserId`, `assignToRoleId`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('0d9d5654-8382-4ef7-84ed-e833befa3363', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'Add_Permission', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('10b0ec93-d424-401e-9af9-ab0431ca909e', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', NULL, '564c88ed-50f1-4c6e-9303-d4c08c28cd6a', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('1415f5a9-d3d4-49e4-a302-7ad50c9cb246', '963f9944-0d0c-4809-8a81-5327c00ecee5', 'Created', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 20:13:29', '2024-01-23 20:13:29', NULL),
('17a29d4f-1a4e-4ba9-8a9d-5354b54425fb', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:53:31', '2024-01-23 19:53:31', NULL),
('18597d23-aea2-4588-bfa4-767eda8f965e', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'Add_Permission', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('1c58989e-f8a1-4ed4-94aa-ced48ed2c580', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Created', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:16', '2024-03-06 14:39:16', NULL),
('1ca3dc70-a2af-4d34-ad72-34b9e0e7cc36', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 09:09:54', '2024-03-11 09:09:54', NULL),
('2ebdca11-db87-411d-b59d-523e27d25f03', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-16 14:20:05', '2024-02-16 14:20:05', NULL),
('2f390653-7264-429b-a906-13b716079857', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:28:13', '2024-02-14 14:28:13', NULL),
('2f876623-9a37-4fd2-8cf3-3122c7fe4723', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 09:57:10', '2024-03-05 09:57:10', NULL),
('32cf3476-4128-48f4-ace7-3382d986e814', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', NULL, '40299d6b-b82c-401f-82cd-ed2d2ce25dda', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('358dcd26-ae91-46a9-800c-bfc6e9394e32', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Created', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('37385b0b-fbfc-44a1-9dd2-49b34aaedd9f', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Download', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 12:16:18', '2024-03-06 12:16:18', NULL),
('3cada2bc-3cb7-43b5-a384-81b62ae98d28', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Modified', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:27:38', '2024-03-05 12:27:38', NULL),
('3ccb4012-e9f0-4917-88aa-73f092e3e5b1', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'Add_Permission', NULL, '40299d6b-b82c-401f-82cd-ed2d2ce25dda', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('40b844c9-2c0d-4ed7-9903-acf5a9a94f3a', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', NULL, '188884cf-13e2-4549-936e-3e0e69367286', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('40c4eeb0-7351-4a64-9f02-7b114fab048d', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', NULL, '79207c11-1e36-414b-8c06-d88307fc2a66', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('425803df-65a1-4bbe-8634-340414832b07', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:20:17', '2024-03-11 11:20:17', NULL),
('4337dfab-7950-4aec-855d-ce72c1b6af22', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Download', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 12:16:07', '2024-03-06 12:16:07', NULL),
('563203cf-ecfa-450a-8387-32ebfad27d7e', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 11:52:01', '2024-03-06 11:52:01', NULL),
('59127c59-061f-41e4-951f-6f5bb71d3ad7', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:53:28', '2024-01-23 19:53:28', NULL),
('5efd3366-1e2a-4f11-b2dc-ba98f869b550', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:27:22', '2024-03-11 11:27:22', NULL),
('61b8bb5a-16e3-4d2f-ab34-60b250f46dc6', '963f9944-0d0c-4809-8a81-5327c00ecee5', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:27:48', '2024-02-14 14:27:48', NULL),
('675a3b6f-9534-4dae-b6a9-f3f246f4170c', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:27:53', '2024-02-14 14:27:53', NULL),
('69c1f6b0-32d5-4654-8d33-a59058614aa7', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:29:27', '2024-01-23 19:29:27', NULL),
('6c8bc1e3-b243-4d2a-85bd-f4b17302f26c', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 10:46:45', '2024-03-11 10:46:45', NULL),
('6ca96a54-9123-441b-a5db-2b09d9337fe9', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:29', '2024-03-05 12:18:29', NULL),
('7182a1f1-d1ed-45fb-a79a-dd0ce88e7f7c', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Created', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:28:10', '2024-02-14 14:28:10', NULL),
('79cfb87a-deca-4bfc-9ce8-583eeb03c4f1', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:28:19', '2024-02-14 14:28:19', NULL),
('7e996b08-32f3-4874-ab6a-60491ca0ca88', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Download', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:28:28', '2024-02-14 14:28:28', NULL),
('80f7548f-237e-4cd1-bd74-fa2f36c72d96', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 09:23:34', '2024-03-11 09:23:34', NULL),
('81913591-9c70-4327-9097-c40f2313d881', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 09:57:33', '2024-03-05 09:57:33', NULL),
('8761a9ea-b860-4dd3-b07c-f1eac215c20f', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Send_Email', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 13:48:21', '2024-03-07 13:48:21', NULL),
('8931be98-5527-433f-8c67-5055905d4c08', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 12:10:03', '2024-03-06 12:10:03', NULL),
('89f2f518-3a31-40a6-9579-7ebf4e893fae', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', NULL, '4ab326ad-bd78-4ec4-8600-bb3bf841e654', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:57:01', '2024-03-11 11:57:01', NULL),
('990b51ff-be75-45ca-9eed-3e13dbda805f', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'Add_Permission', NULL, '188884cf-13e2-4549-936e-3e0e69367286', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('9a3495b4-dfc6-4d31-b189-0aa2d08585b2', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 19:28:29', '2024-01-06 19:28:29', NULL),
('9e0c323c-782c-44d3-8d20-aabbe9e5947c', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Remove_Permission', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 09:58:35', '2024-03-11 09:58:35', NULL),
('9f29d5d2-c130-4c10-90a0-59b54dee37a0', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('a1b5e167-819a-4425-9364-b4f50365818a', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', NULL, '96f6bf55-7ac5-4275-bec6-357d40fa86aa', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:55:23', '2024-03-11 11:55:23', NULL),
('b1f90485-abf6-404c-ab91-57e1d3d08208', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', NULL, '188884cf-13e2-4549-936e-3e0e69367286', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('bc9e958a-981b-4207-a3e4-af24d15b6024', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Read', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:12', '2024-01-06 08:47:12', NULL),
('bcb0837a-f914-46de-9371-0a99a835e071', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Created', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('be3ce84a-f4a1-46fa-9f69-04f55b518df7', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 09:07:26', '2024-03-05 09:07:26', NULL),
('bf22e143-cab7-4153-9e5f-e5d4b4d1fa59', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Modified', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:29:26', '2024-03-05 12:29:26', NULL),
('c3405f5d-b0f8-4f81-9216-5d5896aab82a', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', NULL, '40299d6b-b82c-401f-82cd-ed2d2ce25dda', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('cee42b2a-f54c-43da-aa96-1975568a7ba2', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'Deleted', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 12:36:20', '2024-03-07 12:36:20', NULL),
('da379458-9300-4963-9571-d783fe8c6365', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 11:54:53', '2024-03-06 11:54:53', NULL),
('deb2eed2-a656-4eb1-9e3d-feaf3843eed5', '2f9f3370-d3e7-4a24-af97-655ef923c7d5', 'Created', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 09:13:10', '2024-03-07 09:13:10', NULL),
('e0fc255c-61ba-4b53-92b5-f46974807a9e', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Add_Permission', NULL, '4ab326ad-bd78-4ec4-8600-bb3bf841e654', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:49:28', '2024-03-11 11:49:28', NULL),
('e20478f2-8d7b-4787-97b9-041701303e1d', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 09:03:32', '2024-03-05 09:03:32', NULL),
('e59205fd-b4d0-46fd-b1ab-7f354d5718c8', '71a8124e-6a2b-4868-95f2-577427b6efca', 'Add_Permission', NULL, '4ab326ad-bd78-4ec4-8600-bb3bf841e654', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('e8be7ff0-07d3-4730-acd8-2c8eab64a7a6', '0e014747-0af2-4e0f-9aad-881415e5f9d5', 'Created', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:29:25', '2024-01-23 19:29:25', NULL),
('e996cd40-b2f8-485b-93a1-ac09772e59b2', '963f9944-0d0c-4809-8a81-5327c00ecee5', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-26 10:22:48', '2024-02-26 10:22:48', NULL),
('f1824e0c-3589-426e-a55e-fd1a6b56da7f', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'Download', NULL, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:16', '2024-01-06 08:47:16', NULL),
('f99e5c15-6994-4907-8ff5-dd91ec090ad5', '2f9f3370-d3e7-4a24-af97-655ef923c7d5', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 09:13:14', '2024-03-07 09:13:14', NULL),
('fa7d309a-39d3-4f4e-b8ae-835acd4fdca2', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'Remove_Permission', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 10:01:13', '2024-03-11 10:01:13', NULL),
('fc913586-45f9-468a-b37c-a14f14399ffe', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'Read', NULL, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:46:53', '2024-03-07 10:46:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentcomments`
--

CREATE TABLE `documentcomments` (
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

--
-- Dumping data for table `documentcomments`
--

INSERT INTO `documentcomments` (`id`, `documentId`, `comment`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('0a6a1ddd-f1c0-4cb0-ad22-8e7ed20ad3a7', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'okay !!!', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 13:12:05', '2024-03-07 13:12:05', NULL),
('87f9dc70-2788-4a8e-9b3a-6ff0259e944e', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'hi', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-16 15:36:24', '2024-02-16 15:36:24', NULL),
('df2b2ea9-83db-40ed-9fc2-7502d4831d1e', '2f9f3370-d3e7-4a24-af97-655ef923c7d5', 'hi', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 12:56:05', '2024-03-07 12:56:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentmetadatas`
--

CREATE TABLE `documentmetadatas` (
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
-- Dumping data for table `documentmetadatas`
--

INSERT INTO `documentmetadatas` (`id`, `documentId`, `metatag`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('380738f4-c18e-42cd-92cf-97321f9cb46a', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'stupid', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('42f5f1e9-23c8-483b-b1e4-325b572d0f79', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'bb', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('50cc0b01-3733-4577-9ac5-7ca62b129e41', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'ssdds', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('593b3a26-a5cb-412d-9332-1edfbd3331ae', '2f9f3370-d3e7-4a24-af97-655ef923c7d5', 'hi', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 09:13:09', '2024-03-07 09:13:09', NULL),
('5944d84d-3984-4b9a-aab5-9e94e42f5fde', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 'xcsds', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('72c0d67f-bbcf-49fa-b7c1-70515d4c82ea', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'file', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('7866d12a-94f5-42e3-9df0-b6e41750eed0', '71a8124e-6a2b-4868-95f2-577427b6efca', 'pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 13:47:18', '2024-03-05 13:47:18', NULL),
('849373cb-8533-40d5-874c-8e0a5059536b', '3f66334a-0e4d-46a6-9037-669d60e7978d', 'nn', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('8e559273-9a10-4d8f-852e-a9eb7b42f8b1', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', 'kjb', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 13:20:58', '2024-03-05 13:20:58', NULL),
('bdca2df3-26af-45e8-afb5-defa8ffe3588', '71a8124e-6a2b-4868-95f2-577427b6efca', 'dump', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 13:47:18', '2024-03-05 13:47:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentrolepermissions`
--

CREATE TABLE `documentrolepermissions` (
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

--
-- Dumping data for table `documentrolepermissions`
--

INSERT INTO `documentrolepermissions` (`id`, `documentId`, `roleId`, `startDate`, `endDate`, `isTimeBound`, `isAllowDownload`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('17bfdf48-1fc4-428d-a436-2145dc6c126a', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', '2024-03-11 00:00:00', '2024-03-23 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:49:28', '2024-03-11 11:49:28', NULL),
('435bf319-56f9-4673-a1d7-6a1dd7190d20', '71a8124e-6a2b-4868-95f2-577427b6efca', '79207c11-1e36-414b-8c06-d88307fc2a66', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('4918e363-d801-4bf4-88f8-4f800ca9d5b4', '8177559a-33cd-408e-8796-e4bf7c6f39a1', '40299d6b-b82c-401f-82cd-ed2d2ce25dda', '2024-03-07 00:00:00', '2024-03-08 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('548ca875-5624-4d4a-900d-cde13b0adaf6', '71a8124e-6a2b-4868-95f2-577427b6efca', '564c88ed-50f1-4c6e-9303-d4c08c28cd6a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('6155c554-e7c8-43dd-9b9d-362527e117f7', '8177559a-33cd-408e-8796-e4bf7c6f39a1', '188884cf-13e2-4549-936e-3e0e69367286', '2024-03-07 00:00:00', '2024-03-08 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('62769469-e5e4-4e94-8561-3bcd6079bf52', '71a8124e-6a2b-4868-95f2-577427b6efca', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('8d08a755-493d-4138-97ec-19d53bba69d6', '71a8124e-6a2b-4868-95f2-577427b6efca', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:57:01', '2024-03-11 11:57:01', NULL),
('a4e48660-afac-438f-801c-0223b6e39611', '71a8124e-6a2b-4868-95f2-577427b6efca', '188884cf-13e2-4549-936e-3e0e69367286', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('a6090817-f711-48bd-9082-9c593ad7a3ae', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '188884cf-13e2-4549-936e-3e0e69367286', '2024-03-06 00:00:00', '2024-03-06 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('a885b33c-072b-481d-9f1a-cc6ce73fa416', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '40299d6b-b82c-401f-82cd-ed2d2ce25dda', '2024-03-06 00:00:00', '2024-03-06 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('b21ce090-f1dc-4f3f-a450-72cc4253d00e', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '96f6bf55-7ac5-4275-bec6-357d40fa86aa', '2024-03-16 00:00:00', '2024-03-17 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:55:23', '2024-03-11 11:55:23', NULL),
('f3209a96-9901-48d5-982b-7c08e24c29dc', '71a8124e-6a2b-4868-95f2-577427b6efca', '40299d6b-b82c-401f-82cd-ed2d2ce25dda', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `categoryId`, `name`, `description`, `url`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `isDeleted`, `deletedBy`, `deleted_at`) VALUES
('0e014747-0af2-4e0f-9aad-881415e5f9d5', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'Screenshot from 2024-01-23 20-29-00.png', NULL, 'documents/779dd150-e834-4d7e-81e2-d5ff435cc967.png', '2024-01-23 19:29:25', '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 19:29:25', '8abea112-4317-4338-98ce-32220efaa874', 0, NULL, NULL),
('294d241f-41c2-4ff8-b251-b94c2ad3c4d3', '77dd32ed-3fef-4379-9bd9-e263dc5094ec', '354644538_3470985656562853_8661605633210371355_n.jpg', 'this a Z750 side clutch cover', 'documents/66c96360-b50a-4475-a57f-202c9eac8946.jpg', '2024-02-14 14:28:10', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-05 13:20:58', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 0, NULL, NULL),
('2f9f3370-d3e7-4a24-af97-655ef923c7d5', 'ad5e6241-c23a-4536-955a-b0ce56d6fd7e', 'adidas', 'adidas', 'documents/621528e4-7033-404f-8c4e-8d04ba1a1f75.jpg', '2024-03-07 09:13:09', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-07 12:42:26', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-07 11:42:26'),
('3f66334a-0e4d-46a6-9037-669d60e7978d', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', '73155817-document-management-license.pdf', 'bb', 'documents/78368c12-c415-4ecb-bbed-322aa3f96d21.pdf', '2024-01-06 08:47:08', '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 10:40:12', '8abea112-4317-4338-98ce-32220efaa874', 1, '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 09:40:12'),
('71a8124e-6a2b-4868-95f2-577427b6efca', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'holly cow', 'this a dumb pdf', 'documents/075d6846-e73f-4717-8897-7358179a6170.pdf', '2024-03-06 12:15:33', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-06 12:15:33', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 0, NULL, NULL),
('8177559a-33cd-408e-8796-e4bf7c6f39a1', '4f825ff9-255e-4a4e-91bb-2e076656afc5', '65e836fb135a3.pdf', 'stupid file', 'documents/7743f12f-5b4e-4c68-a6e5-9d24cf80dec6.pdf', '2024-03-07 10:47:20', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-07 12:36:19', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-07 11:36:19'),
('963f9944-0d0c-4809-8a81-5327c00ecee5', 'b5d6a430-8d92-4d7b-b8fd-416f5937a833', 'LOGO-FINAL.png', NULL, 'documents/343c1214-427c-429a-aa3e-89179345a1a0.png', '2024-01-23 20:13:29', '8abea112-4317-4338-98ce-32220efaa874', '2024-01-23 20:13:29', '8abea112-4317-4338-98ce-32220efaa874', 0, NULL, NULL),
('a05004e1-0f84-43a5-a9e0-7ffe209ca592', '4f825ff9-255e-4a4e-91bb-2e076656afc5', 'taher', 'kjhdkjbkjb', 'documents/24ad7f04-ad57-434a-aedc-81b2d8040ea6.jpg', '2024-03-06 14:39:15', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-06 14:39:15', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documenttokens`
--

CREATE TABLE `documenttokens` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentuserpermissions`
--

CREATE TABLE `documentuserpermissions` (
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
-- Dumping data for table `documentuserpermissions`
--

INSERT INTO `documentuserpermissions` (`id`, `documentId`, `userId`, `startDate`, `endDate`, `isTimeBound`, `isAllowDownload`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('1634d0b8-05bc-4417-937e-bc2f4782a2e5', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 14:39:15', '2024-03-06 14:39:15', NULL),
('24d14107-17d1-4828-8b5d-a2b117c00c4b', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '4aad275b-a827-4c51-a259-aaba9b0b490f', '2024-03-13 00:00:00', '2024-03-14 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:20:17', '2024-03-11 11:20:17', NULL),
('384514b5-cb43-4e7d-ab65-fbfa7ec324ce', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '4aad275b-a827-4c51-a259-aaba9b0b490f', '2024-03-11 00:00:00', '2024-03-11 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 09:23:34', '2024-03-11 09:23:34', NULL),
('42c6b4a8-861a-432d-a88f-07c269cab749', '0e014747-0af2-4e0f-9aad-881415e5f9d5', '8abea112-4317-4338-98ce-32220efaa874', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 19:29:25', '2024-01-23 19:29:25', NULL),
('507331dd-cb5b-4210-a967-ed7a0ca64791', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956', '2024-03-11 00:00:00', '2024-03-13 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 10:46:45', '2024-03-11 10:46:45', NULL),
('62f7ea21-d08f-4ced-8adb-18d7b132643d', '8177559a-33cd-408e-8796-e4bf7c6f39a1', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '2024-03-07 00:00:00', '2024-03-08 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('6e2227f1-0e0c-4e81-a80e-d3a618ab0999', '71a8124e-6a2b-4868-95f2-577427b6efca', '4aad275b-a827-4c51-a259-aaba9b0b490f', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-11 11:27:22', '2024-03-11 11:27:22', NULL),
('bd61cb06-474e-445f-82b6-969106b52584', '2f9f3370-d3e7-4a24-af97-655ef923c7d5', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 09:13:09', '2024-03-07 09:13:09', NULL),
('cc9ba704-2c2e-4e87-aee8-6794319132b5', '3f66334a-0e4d-46a6-9037-669d60e7978d', '8abea112-4317-4338-98ce-32220efaa874', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-06 08:47:08', '2024-01-06 08:47:08', NULL),
('e33daf89-7435-4cfb-81f0-d7169486943b', '8177559a-33cd-408e-8796-e4bf7c6f39a1', '4aad275b-a827-4c51-a259-aaba9b0b490f', '2024-03-07 00:00:00', '2024-03-08 23:59:59', 1, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('e5776393-0b36-40a9-b88d-24cf13650ff5', '294d241f-41c2-4ff8-b251-b94c2ad3c4d3', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 14:28:10', '2024-02-14 14:28:10', NULL),
('e86cede8-967a-4b0f-abc0-38b84985807f', '71a8124e-6a2b-4868-95f2-577427b6efca', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 12:18:18', NULL),
('ea26d7c2-95ea-483e-9fe9-641c881a8bf6', '963f9944-0d0c-4809-8a81-5327c00ecee5', '8abea112-4317-4338-98ce-32220efaa874', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '', 0, '2024-01-23 20:13:29', '2024-01-23 20:13:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documentversions`
--

CREATE TABLE `documentversions` (
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

--
-- Dumping data for table `documentversions`
--

INSERT INTO `documentversions` (`id`, `documentId`, `url`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('0dbed212-2c10-43c5-97be-07e7d2267b8c', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'documents/d182f746-b9d3-4f73-8f07-abcc8e415322.pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:03:57', '2024-03-07 10:03:57', NULL),
('37e91547-c06a-4784-954f-0b60558246ab', '71a8124e-6a2b-4868-95f2-577427b6efca', 'documents/075d6846-e73f-4717-8897-7358179a6170.pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 12:00:33', '2024-03-06 12:00:33', NULL),
('3e82aff7-7c7a-497f-b23c-3634cddf0c70', '71a8124e-6a2b-4868-95f2-577427b6efca', 'documents/075d6846-e73f-4717-8897-7358179a6170.pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 12:08:27', '2024-03-06 12:08:27', NULL),
('42acb19a-66f5-4d5e-9f8f-5748fe68be22', '71a8124e-6a2b-4868-95f2-577427b6efca', 'documents/976f75f3-30bb-4262-8751-994661cdcfbe.pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 13:59:57', '2024-03-05 13:59:57', NULL),
('46b60c0a-b453-4e1f-abc6-6e04b37f1fcc', '71a8124e-6a2b-4868-95f2-577427b6efca', 'documents/075d6846-e73f-4717-8897-7358179a6170.pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-05 12:18:18', '2024-03-05 13:21:36', NULL),
('66d4c7c0-de3a-450f-b77e-b36ae49b7db3', '71a8124e-6a2b-4868-95f2-577427b6efca', 'documents/075d6846-e73f-4717-8897-7358179a6170.pdf', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-06 12:14:55', '2024-03-06 12:14:55', NULL),
('afb418f4-d31d-4a0f-aad7-5348a6ece2c2', '8177559a-33cd-408e-8796-e4bf7c6f39a1', 'documents/8dd5da28-6705-4272-b53a-8fb5cb56174a.png', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 10:43:14', '2024-03-07 10:43:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emailsmtpsettings`
--

CREATE TABLE `emailsmtpsettings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int(11) NOT NULL,
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

--
-- Dumping data for table `emailsmtpsettings`
--

INSERT INTO `emailsmtpsettings` (`id`, `host`, `userName`, `password`, `port`, `isDefault`, `fromName`, `encryption`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('398f8bb8-2a13-4952-85c0-d721e2835140', 'soliwall.comx', 'chourabi', '123456789', 443, 1, 'Chourabi taher', 'tls', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, 0, '2024-03-04 08:55:52', '2024-03-04 10:24:44', NULL),
('490035c7-bc31-498a-9c8b-59d28b6f3d31', 'demo.com', 'demo', 'demo', 500, 0, 'demo', 'ssl', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 1, '2024-03-04 08:21:46', '2024-03-04 10:26:03', '2024-03-04 09:26:03'),
('f6df40ac-e8aa-4b49-9eed-136332d0b4d5', 'lknlnlknkjn', 'kljnkj', 'kjnjnkjn', 54, 0, 'kjnjn', NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 1, '2024-03-04 08:54:39', '2024-03-04 10:25:59', '2024-03-04 09:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `halfyearlyreminders`
--

CREATE TABLE `halfyearlyreminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `quarter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `imageUrl`, `createdBy`, `modifiedBy`, `order`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('04906ab8-15b0-11ee-83f2-d85ed3312c1f', 'ru', 'Russian', 'images/flags/russia.svg', '8abea112-4317-4338-98ce-32220efaa874', '', 5, '', 0, '0000-00-00 00:00:00', '2024-03-01 14:23:51', '2024-03-01 13:23:51'),
('10ac83d1-15b0-11ee-83f2-d85ed3312c1f', 'ja', 'Japanese', 'images/flags/japan.svg', '8abea112-4317-4338-98ce-32220efaa874', '', 6, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('1d9a6233-15b0-11ee-83f2-d85ed3312c1f', 'fr', 'French', 'images/flags/france.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 1, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:10:54', NULL),
('9ed7278c-c7e7-4c91-9a83-83833603eb47', 'ko', 'Korean ', 'images/flags/south-korea.svg', '8abea112-4317-4338-98ce-32220efaa874', '', 8, '', 0, '0000-00-00 00:00:00', '2024-03-01 13:45:13', '2024-03-01 12:45:13'),
('df8a9fe2-15af-11ee-83f2-d85ed3312c1f', 'en', 'English', 'images/flags/united-states.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 2, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:00', NULL),
('ef46fe64-15af-11ee-83f2-d85ed3312c1f', 'cn', 'Chinese', 'images/flags/china.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 4, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:17', NULL),
('f8041d27-15af-11ee-83f2-d85ed3312c1f', 'es', 'Spanish', 'images/flags/france.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 7, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:36', NULL),
('fe78a067-15af-11ee-83f2-d85ed3312c1f', 'ar', 'Arabic', 'images/flags/saudi-arabia.svg', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 3, '', 0, '0000-00-00 00:00:00', '2024-01-23 20:11:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loginaudits`
--

CREATE TABLE `loginaudits` (
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
-- Dumping data for table `loginaudits`
--

INSERT INTO `loginaudits` (`id`, `userName`, `loginTime`, `remoteIP`, `status`, `provider`, `latitude`, `longitude`) VALUES
('0037edf3-95e3-496b-9d5b-10ae68a6012c', 'chourabi@gmail.com', '2024-02-26 13:00:54', '127.0.0.1', 'Success', NULL, NULL, NULL),
('00587922-6c58-427a-bb50-032a87a98845', 'chourabi@gmail.com', '2024-02-16 12:42:56', '127.0.0.1', 'Success', NULL, NULL, NULL),
('006e9425-845a-49de-b024-359e2f6f6dc7', 'admin@admin.com', '2024-03-05 09:02:38', '127.0.0.1', 'Success', NULL, NULL, NULL),
('0214212d-572c-4734-bb75-f69298edaff3', 'chourabi@gmail.com', '2024-02-16 14:56:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('07df25eb-687d-4907-8b6a-632d474fd4eb', 'chourabi@gmail.com', '2024-02-29 11:40:07', '127.0.0.1', 'Success', NULL, NULL, NULL),
('0a736ad3-2d08-4622-852c-1be2b12b9876', 'admin@admin.com', '2024-02-29 12:43:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('0b1259a5-78e9-4c20-97c9-576d26ee8fba', 'klilmecha@gmail.com', '2024-01-23 19:33:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('0b1918c1-5c47-4660-9c14-ffa76e6df4c7', 'chourabi@gmail.com2007', '2024-02-19 14:46:05', '127.0.0.1', 'Error', NULL, NULL, NULL),
('0c205162-08c7-447c-b028-33402783ce2d', 'admin@gmail.com', '2024-01-30 09:56:21', '127.0.0.1', 'Error', NULL, NULL, NULL),
('0d397b60-15af-4e62-ae79-7659319a72cc', 'admin@admin.com', '2024-03-05 09:00:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('0efb2a26-0c37-468f-b710-7d7f31af4cb8', 'rhaim.boujezza@gmail.com', '2024-01-30 09:55:50', '127.0.0.1', 'Error', NULL, NULL, NULL),
('10dc065e-d8da-4079-9738-1e92fd4dec34', 'admin@gmail.com', '2024-01-30 09:59:56', '127.0.0.1', 'Error', NULL, NULL, NULL),
('114c8fa5-1286-44d5-988e-a999414549ed', 'klilmecha@gmail.com', '2024-01-23 20:25:39', '127.0.0.1', 'Error', NULL, NULL, NULL),
('129cb21c-7d62-45eb-925f-efba4a7bd103', 'admin@admin.com', '2024-03-06 11:48:57', '127.0.0.1', 'Success', NULL, NULL, NULL),
('12ccc064-6918-4873-86bf-bb4616552cfa', 'chourabi@gmail.com', '2024-02-19 12:40:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('12f6ccb4-1b71-49b1-b8be-1715cd8154b5', 'admin@admin.com', '2024-03-05 09:00:49', '127.0.0.1', 'Error', NULL, NULL, NULL),
('1321a825-88d6-467a-a8e5-2db3aed22ed0', 'chourabi@gmail.com', '2024-02-14 13:18:54', '127.0.0.1', 'Error', NULL, NULL, NULL),
('15c5f38e-1aec-42cb-a197-1daf08d134d5', 'chourabi@gmail.com', '2024-01-30 14:22:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('16064d79-306a-4a8e-b331-8675cb8809b6', 'admin@admin.com', '2024-03-07 09:42:01', '127.0.0.1', 'Success', NULL, NULL, NULL),
('16619fdc-1422-4327-834c-a5dcbc049bbf', 'khalil.mecha@gmail.com', '2024-01-23 20:20:37', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1682a994-234d-4175-b01f-01cb730fe243', 'chourabi@gmail.com', '2024-02-23 11:37:10', '127.0.0.1', 'Success', NULL, NULL, NULL),
('196cdaef-b459-4dad-a0ae-3d56c239de25', 'admin@admin.com', '2024-03-07 09:39:47', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1a9413c2-9361-485b-b586-fd890523ee64', 'chourabi@gmail.com', '2024-02-14 13:12:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1c5bdeea-dc53-4537-933d-e63dcc64e50b', 'klilmecha@gmail.com', '2024-01-24 09:30:53', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1e879bdf-17d8-4ba2-968c-e38f1cf47c51', 'admin@admin.com', '2024-03-01 13:21:54', '127.0.0.1', 'Error', NULL, NULL, NULL),
('1e9a18fd-8935-4c92-a6ec-1265564e40f4', 'admin@admin.com', '2024-03-06 11:49:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1ebfc745-b962-4494-bf0b-494d405c6cdb', 'klilmecha@gmail.com', '2024-01-23 14:36:38', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1ee18579-1c5b-435c-aa3d-9ff1f5a54fca', 'chourabi@gmail.com', '2024-02-19 10:25:05', '127.0.0.1', 'Success', NULL, NULL, NULL),
('1f5b4724-81f3-47ec-adbc-03b94089021b', 'klilmecha@gmail.com', '2024-01-06 19:28:00', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2342f1ca-330a-4c09-b4b0-eb122d5f04c9', 'chourabi@gmail.com', '2024-01-30 11:09:35', '127.0.0.1', 'Success', NULL, NULL, NULL),
('23c6240c-9ed8-4953-b1a5-74b61d0d1d1e', 'admin@admin.app', '2024-03-11 08:51:13', '127.0.0.1', 'Error', NULL, NULL, NULL),
('25c9e43f-ae07-422d-8223-797bcdd0c5bb', 'admin@admin.com', '2024-03-12 12:04:35', '127.0.0.1', 'Success', NULL, NULL, NULL),
('25d40dc3-a002-464d-b465-b1fbcd43d111', 'admin@admin.com', '2024-03-11 08:51:30', '127.0.0.1', 'Success', NULL, NULL, NULL),
('26ead9c9-419d-41b7-8fbd-6b85457f050b', 'admin@admin.com', '2024-03-04 08:18:13', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2886cefc-6dd2-420b-aaf6-9bbf05531500', 'klilmecha@gmail.com', '2024-01-23 10:35:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('29b08164-024f-4ab8-99e6-1af6727bcbf2', 'admin@admin.com', '2024-03-05 13:48:01', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2ab90fbf-5cc0-4303-9085-8a7abba5d9dc', 'ala@gmail.com', '2024-03-11 12:15:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2bba9c26-f6be-49ee-a5bd-7c7f3413fec2', 'klilmecha@gmail.com', '2024-01-23 19:42:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2e05b51d-e9c5-49f8-ae37-c24764acd5e1', 'chourabi@gmail.com', '2024-02-29 11:39:20', '127.0.0.1', 'Success', NULL, NULL, NULL),
('2fe50703-9247-45c1-b0cf-f8ee5606aca9', 'chourabi@gmail.com', '2024-02-16 14:56:14', '127.0.0.1', 'Success', NULL, NULL, NULL),
('30360b4f-c6a8-4e8b-a2f5-dc1ddae21b5e', 'klilmecha@gmail.com', '2024-01-20 09:02:46', '127.0.0.1', 'Error', NULL, NULL, NULL),
('32cbd00f-b3fa-4f1d-b051-14f2ac25d184', 'chourabi@gmail.com', '2024-02-23 10:46:54', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3603b009-0014-4ad9-9512-ff045131d17c', 'superadmin@root.com', '2024-01-20 09:01:48', '127.0.0.1', 'Error', NULL, NULL, NULL),
('36d66cc5-0393-4be6-90c6-62fc2a653572', 'admin@admin.com', '2024-03-06 14:24:12', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3729a085-7dd4-4f71-a55c-43bd5dde65eb', 'klilmecha@gmail.com', '2024-01-10 08:15:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('372b6fb2-fa44-4b10-bb4d-404f1e798191', 'klilmecha@gmail.com', '2024-01-24 19:05:19', '127.0.0.1', 'Success', NULL, NULL, NULL),
('384ca765-0c90-492c-942e-68ce2695dcfa', 'admin@admin.com', '2024-03-06 12:39:54', '127.0.0.1', 'Success', NULL, NULL, NULL),
('39dcd6c3-80a6-4661-9ed3-30f4fe4d8029', 'chourabi@gmail.com', '2024-02-29 11:38:48', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3aa180e3-595a-4485-8cfc-2d27fe5189d7', 'admin@admin.com', '2024-03-11 08:50:01', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3f2edcd2-8471-440c-811f-a975abd105f5', 'chourabi@gmail.com', '2024-02-28 11:05:21', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3fbd3b98-5223-4c85-abac-ed2f2416bdaa', 'khalil.mecha@gmail.com', '2024-01-23 20:23:02', '127.0.0.1', 'Success', NULL, NULL, NULL),
('3fcac884-4a6b-4895-aadc-f452ae20009e', 'chourabi@gmail.com', '2024-02-23 10:45:08', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4053f9f3-d62d-4bf9-836a-398e2aae2f98', 'admin@admin.com', '2024-03-01 14:21:57', '127.0.0.1', 'Success', NULL, NULL, NULL),
('438c9547-d588-400b-81b3-4601ab0722cb', 'admin@admin.com', '2024-03-06 13:31:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('44bf6b3d-2851-45ad-9fc9-996145c6f904', 'admin@admin.com', '2024-02-29 11:44:50', '127.0.0.1', 'Success', NULL, NULL, NULL),
('45e773fa-b39e-41e0-b2e3-cc443ea95231', 'admin@admin.com', '2024-03-12 11:12:03', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4896b8da-9091-412a-be6c-0c29c7885668', 'klilmecha@gmail.com', '2024-01-06 08:38:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('48e28e20-c419-4540-9b0f-a726d25e7e56', 'admin@admin.com', '2024-03-04 10:23:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4aa48a37-8cfd-4726-93c7-0a7a3f1272e3', 'klilmecha@gmail.com', '2024-01-23 16:39:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('4d9d982b-2979-4b10-80ff-3425b8fa1b39', 'chourabi@gmail.com', '2024-03-07 10:42:24', '127.0.0.1', 'Error', NULL, NULL, NULL),
('4ed9feb2-6457-4ce7-8834-9a0f58fcc19f', 'superadmin@root.com', '2024-01-06 08:31:33', '127.0.0.1', 'Error', NULL, NULL, NULL),
('4f640102-624c-4e46-b79e-97d595eb236a', 'admin@admin.com', '2024-03-07 13:39:19', '127.0.0.1', 'Success', NULL, NULL, NULL),
('50a145e5-e113-439a-9864-e4d0d7b599a5', 'chourabi@gmail.com', '2024-02-16 10:36:14', '127.0.0.1', 'Success', NULL, NULL, NULL),
('52ef59a0-0588-46fa-b4f3-f0ea895c5866', 'chourabi@gmail.com', '2024-02-14 13:20:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5422316c-5718-497c-ba5b-e6ac4b4317cf', 'tchourabi@gmail.comx', '2024-02-14 10:27:07', '127.0.0.1', 'Error', NULL, NULL, NULL),
('54485d81-eb89-4efc-830d-eab1d470c1dd', 'admin@admin.com', '2024-03-01 13:21:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('56a470cf-5a78-4c6d-be22-6551ff17d1eb', 'superadmin@root.com', '2024-01-06 15:52:23', '127.0.0.1', 'Error', NULL, NULL, NULL),
('56d2e680-88a4-4c69-8094-aef4eaf475ad', 'chourabi@gmail.com', '2024-02-26 10:03:10', '127.0.0.1', 'Success', NULL, NULL, NULL),
('57045d51-acba-41e8-b545-0132a7473c3e', 'chourabi@gmail.com', '2024-02-14 10:29:03', '127.0.0.1', 'Success', NULL, NULL, NULL),
('588368c1-474e-4d3a-a077-1f92d6b38782', 'chourabi@gmail.com', '2024-02-23 09:56:45', '127.0.0.1', 'Success', NULL, NULL, NULL),
('58ce9010-e313-4650-b10e-9c50f23e1d98', 'admin@admin.com', '2024-03-07 13:47:41', '127.0.0.1', 'Success', NULL, NULL, NULL),
('58e9bb4d-5dae-427e-b129-19e7a9d2f6bd', 'admin@admin.com', '2024-03-12 09:27:14', '127.0.0.1', 'Success', NULL, NULL, NULL),
('591a719b-0c4b-4e88-98b7-64ac15057b0a', 'ala@gmail.com', '2024-03-11 12:11:45', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5a30aca2-12fa-42fd-8e37-4b6951c805f8', 'admin@admin.com', '2024-03-04 09:19:36', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5a43d666-e7d1-4b5f-95b2-2a9ff3ec4db1', 'admin@admin.com', '2024-03-05 12:19:04', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5b6ee004-6018-4b1f-8578-3df94b04ed20', 'admin@admin.com', '2024-03-07 10:42:48', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5c8d83b6-91b8-4ad6-a357-5a23310aa404', 'admin@admin.com', '2024-03-12 11:20:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5c9673e4-4e5a-4f15-867b-39aaa510ed77', 'chourabi@gmail.com', '2024-02-19 12:50:46', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5d50fd72-e72b-4399-ac26-014ac543ede4', 'chourabi@gmail.com', '2024-02-14 15:27:31', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5da25ca3-74a8-440b-a8fe-1398e35805e9', 'chourabi@gmail.com', '2024-02-19 09:28:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5e397ee6-4fb1-489e-ae14-776100ed9b6c', 'chourabi@gmail.com', '2024-02-26 11:00:20', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5eadade7-ecb7-4c5a-824b-8d938592e4e0', 'chourabi@gmail.com', '2024-01-31 14:30:37', '127.0.0.1', 'Success', NULL, NULL, NULL),
('5f19c977-1cdc-47ca-bd8c-5654c376e58b', 'chourabi@gmail.com', '2024-02-19 14:45:46', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6547ca76-362a-42ef-8f63-bcc4b2da599c', 'klilmecha@gmail.com', '2024-01-23 20:25:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('667f6090-1bdf-47bd-a26f-2c3ec1cf52ee', 'tchourabi@gmail.com', '2024-03-12 13:05:28', '127.0.0.1', 'Error', NULL, NULL, NULL),
('6b1969f0-8618-4958-990c-9fe0504fd1a4', 'chourabi@gmail.com', '2024-02-16 10:44:34', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6bfaac8b-82ae-4a5f-a59f-d6a7a375c9f1', 'chourabi@gmail.com', '2024-02-26 12:22:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6c228aae-c2eb-4dbd-9bdc-29f4d1ea732f', 'admin@admin.com', '2024-03-05 10:03:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6c572285-e894-4fea-9ffe-fe83eb6efb32', 'admin@admin.com', '2024-03-01 13:21:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6e12a932-9f4a-4177-9f29-da1f45d2f9c0', 'chourabi@gmail.com', '2024-02-19 10:30:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('6f128aa9-e19c-45c3-9db3-eb2528684990', 'admin@admin.com', '2024-03-12 12:27:20', '127.0.0.1', 'Success', NULL, NULL, NULL),
('7001245c-e98b-48cc-9266-77b3f5ddefee', 'superadmin@root.com', '2024-01-20 09:01:04', '127.0.0.1', 'Error', NULL, NULL, NULL),
('70551c19-2df8-4d4c-8f30-d735944a04de', 'chourabi@gmail.com', '2024-02-19 08:38:49', '127.0.0.1', 'Success', NULL, NULL, NULL),
('708088ea-7417-44ed-966a-eb4a6492046d', 'chourabi@gmail.com', '2024-02-29 11:03:42', '127.0.0.1', 'Success', NULL, NULL, NULL),
('71953739-36e7-4eda-8da6-b5d94b73a4d9', 'admin@admin.com', '2024-03-05 13:19:27', '127.0.0.1', 'Success', NULL, NULL, NULL),
('74fd0093-4fb6-4499-99a0-b45258fb397b', 'admin@gmail.com', '2024-01-30 09:59:53', '127.0.0.1', 'Error', NULL, NULL, NULL),
('7612ed88-6cf5-465b-ba1d-a8664562579d', 'admin@admin.com', '2024-03-05 12:16:47', '127.0.0.1', 'Success', NULL, NULL, NULL),
('7670e6b7-ffc3-4b55-9b90-8ca5dfe20d0a', 'chourabi@gmail.com', '2024-02-16 14:50:27', '127.0.0.1', 'Success', NULL, NULL, NULL),
('77d44c12-8146-41ca-8556-3a8bd49d5bc9', 'chourabi@gmail.com', '2024-02-14 13:34:39', '127.0.0.1', 'Success', NULL, NULL, NULL),
('78b10b5d-b364-4d9b-98f4-ff5dfe6398f4', 'klilmecha@gmail.com', '2024-01-23 16:45:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('794ebad9-71e4-4da8-86ce-f025773b45fb', 'chourabi@gmail.com', '2024-02-14 13:32:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('79b3acdd-90ed-40c3-bda0-b18ab60aec44', 'superadmin@root.com', '2024-01-20 09:01:19', '127.0.0.1', 'Error', NULL, NULL, NULL),
('7a9b61fa-d97b-4d62-a840-36c13eb60012', 'admin@admin.com', '2024-03-11 11:39:34', '127.0.0.1', 'Success', NULL, NULL, NULL),
('7e87581d-8c68-4fa2-bc0b-38fcc1d37da8', 'chourabi@gmail.com', '2024-02-19 08:26:52', '127.0.0.1', 'Success', NULL, NULL, NULL),
('81a17c8c-85c3-4481-8c3f-b421b8916c40', 'admin@admin.com', '2024-03-01 14:15:21', '127.0.0.1', 'Success', NULL, NULL, NULL),
('83be5f5e-9443-4efa-9e5a-0d7ae73f5563', 'admin@admin.com', '2024-02-29 11:50:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('8454bda5-06e7-46f4-ae2f-59195f9e23da', 'admin@admin.com', '2024-03-11 08:51:25', '127.0.0.1', 'Success', NULL, NULL, NULL),
('8582aed6-5d83-4e72-bc2c-9552ff27f088', 'admin@gmail.com', '2024-01-30 10:03:47', '127.0.0.1', 'Error', NULL, NULL, NULL),
('868635b3-b854-4e9a-ad2e-42e0653edb48', 'chourabi@gmail.com', '2024-02-28 10:40:58', '127.0.0.1', 'Success', NULL, NULL, NULL),
('87a81137-786b-4bbc-9198-5da71e74dd6c', 'admin@admin.com', '2024-03-07 08:31:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('89f5cbc8-99eb-4e41-a7ff-43c7b80bf55a', 'chourabi@gmail.com', '2024-02-29 11:39:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('8b4e8b2d-d35e-465a-9b0e-ba02a124d651', 'chourabi@gmail.com', '2024-02-19 14:46:07', '127.0.0.1', 'Success', NULL, NULL, NULL),
('8b9ed318-1d1c-4edc-8a81-c1796ceeb47e', 'chourabi@gmail.com', '2024-02-14 13:33:58', '127.0.0.1', 'Success', NULL, NULL, NULL),
('8d15b349-2c7f-4f8d-a526-de0567f79b38', 'klilmecha@gmail.com', '2024-01-06 15:53:04', '127.0.0.1', 'Error', NULL, NULL, NULL),
('8fb770a2-9940-4815-adc0-ab4b2f5183f1', 'chourabi@gmail.com', '2024-02-14 14:26:12', '127.0.0.1', 'Success', NULL, NULL, NULL),
('905b44cc-c600-45b1-a264-073e754ad411', 'chourabi@gmail.com', '2024-02-26 10:06:15', '127.0.0.1', 'Success', NULL, NULL, NULL),
('93128e9d-45ca-4bfb-95f6-9e0938aaaf57', 'klilmecha@gmail.com', '2024-01-22 08:44:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('93722e74-5d68-466d-83e7-b68f8d93d48f', 'chourabi@gmail.com', '2024-01-30 10:19:25', '127.0.0.1', 'Success', NULL, NULL, NULL),
('94c9d3e0-4453-44ee-b398-1a6b120aaffb', 'klilmecha@gmail.com', '2024-01-06 15:52:59', '127.0.0.1', 'Error', NULL, NULL, NULL),
('99ae4071-9db1-49eb-bc5c-a5b3ceec53e5', 'chourabi@gmail.com', '2024-02-28 09:45:01', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9c23250f-5544-416d-951e-c4fda95cd62f', 'chourabi@gmail.com', '2024-01-31 08:50:42', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9c83a218-00ab-4ee8-b90a-a307d5703263', 'admin@admin.com', '2024-03-12 09:27:07', '127.0.0.1', 'Error', NULL, NULL, NULL),
('9cb6447b-f10f-47ec-82a0-23bb29f0e4fa', 'chourabi@gmail.com', '2024-02-29 10:50:10', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9d24e997-9629-47b2-8c70-057ae9363dc2', 'chourabi@gmail.com', '2024-02-19 13:44:03', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9fa3cbf4-60c7-478e-ba4d-839058b0fc7c', 'chourabi@gmail.com', '2024-02-16 15:24:25', '127.0.0.1', 'Success', NULL, NULL, NULL),
('9ff57dc3-6a70-4b05-818d-f4cfc7ebb2fe', 'klilmecha@gmail.com', '2024-01-24 09:34:11', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a232a220-9afb-4817-a539-0709f2ccc5e7', 'klilmecha@gmail.com', '2024-01-22 08:44:37', '127.0.0.1', 'Error', NULL, NULL, NULL),
('a32f3603-ecbd-49e2-9755-d5b639fe92e5', 'ala@gmail.com', '2024-03-12 12:01:56', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a3e0dd9b-3bda-4675-a0f1-086bd3b63615', 'khalil.mecha@gmail.com', '2024-01-23 20:22:42', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a4424379-da21-4cc1-9d4e-c422d8ea3b66', 'admin@admin.com', '2024-03-07 13:13:08', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a495d04d-3749-4f65-b2fb-c316fa84a5b1', 'tchourabi@gmail.com', '2024-02-14 10:28:34', '127.0.0.1', 'Error', NULL, NULL, NULL),
('a4bf9ef6-3657-4258-ae9c-dc80dd17b302', 'chourabi@gmail.com', '2024-02-16 14:56:23', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a4f43992-1cdb-40c9-ab6a-ec9981586d13', 'klilmecha@gmail.com', '2024-01-23 14:46:25', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a507d456-56a5-462a-b77c-2f82ce505900', 'chourabi@gmail.com', '2024-02-23 09:20:29', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a551e8e5-6648-402e-b99e-7320469df9af', 'klilmecha@gmail.com', '2024-01-23 16:45:51', '127.0.0.1', 'Error', NULL, NULL, NULL),
('a7746ac4-f9f7-4795-947a-103f17cbfaf8', 'chourabi@gmail.com', '2024-01-30 10:13:38', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a8550785-a4cc-41fd-a362-a09632b7eeff', 'chourabi@gmail.com', '2024-02-14 13:22:37', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a859fe3b-e3a5-4a08-85f9-38cd92bb1361', 'admin@admin.com', '2024-03-05 14:20:39', '127.0.0.1', 'Success', NULL, NULL, NULL),
('a9293139-a1d9-4795-b0a3-a4a8efae01bf', 'chourabi@gmail.com', '2024-02-19 10:12:53', '127.0.0.1', 'Success', NULL, NULL, NULL),
('ab8989bd-0062-4035-a68b-512130bfc8c1', 'admin@admin.com', '2024-03-04 08:17:36', '127.0.0.1', 'Success', NULL, NULL, NULL),
('af26db74-6904-4f04-aff6-f7297d91275d', 'admin@gmail.com', '2024-01-30 09:56:56', '127.0.0.1', 'Error', NULL, NULL, NULL),
('b2da232e-7ac8-4260-a070-6eaa39997797', 'chourabi@gmail.com', '2024-02-16 12:13:54', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b31aa38a-33d7-4f92-8d99-c9a7b517a69d', 'admin@admin.com', '2024-03-05 09:01:22', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b34bd935-b88e-4fda-96ee-aff8dfd08e60', 'chourabi@gmail.com', '2024-02-29 11:38:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b462dc8a-bb65-40eb-ad6f-25a61983f807', 'superadmin@root.com', '2024-01-06 08:34:13', '127.0.0.1', 'Error', NULL, NULL, NULL),
('b4c7eb2d-cd9d-4841-80df-589bdb662167', 'admin@gmail.com', '2024-01-30 10:03:28', '127.0.0.1', 'Error', NULL, NULL, NULL),
('b5928818-1b0f-4da0-9dc4-03fa073ac4bb', 'chourabi@gmail.com', '2024-02-19 13:41:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b6008b44-ba30-4a53-b3fd-4f9834eba443', 'admin@admin.com', '2024-03-04 09:23:49', '127.0.0.1', 'Success', NULL, NULL, NULL),
('b87f1c45-3168-45b3-b86d-5e71ef0bb5aa', 'chourabi@gmail.com', '2024-02-16 15:14:36', '127.0.0.1', 'Success', NULL, NULL, NULL),
('bb965f76-1832-4075-8b73-51d354610829', 'admin@admin.com', '2024-03-11 10:45:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('bc881e14-b81c-49b2-9d39-d7ac3bcbd5a7', 'admin@admin.com', '2024-03-07 12:05:44', '127.0.0.1', 'Success', NULL, NULL, NULL),
('bc88bccc-1e0d-4b59-936a-135db7963a34', 'chourabi@gmail.com', '2024-02-26 12:04:56', '127.0.0.1', 'Success', NULL, NULL, NULL),
('bca3c13c-1773-4916-bf29-9641ab9f6ce4', 'admin_ged@yopmail.com', '2024-01-30 10:06:12', '127.0.0.1', 'Error', NULL, NULL, NULL),
('c072e4d5-9331-4015-86ab-31f14eb69195', 'admin@admin.com', '2024-03-01 13:21:18', '127.0.0.1', 'Error', NULL, NULL, NULL),
('c0afcf62-4b14-4039-8cda-62e81dc692b6', 'admin@admin.com', '2024-03-04 10:22:45', '127.0.0.1', 'Error', NULL, NULL, NULL),
('c1005f77-c5ce-4a2e-92c2-54d21df7a07b', 'admin@gmail.com', '2024-01-30 10:02:02', '127.0.0.1', 'Error', NULL, NULL, NULL),
('c13c5769-2e64-497c-a6a2-05c8f365d86d', 'klilmecha@gmail.com', '2024-01-20 11:29:52', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c1d3acf0-8051-40ec-a323-51a116bd08ae', 'admin@admin.com', '2024-03-05 09:01:47', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c27ff915-ac3a-48e9-8727-3c8e8ef375f2', 'admin@admin.com', '2024-03-11 09:21:26', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c2c6337d-493b-485f-9c04-65a6354c3e50', 'chourabi@gmail.com', '2024-02-14 13:43:32', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c3f7e77b-7a8e-4480-871f-8da1d8c7f835', 'chourabi@gmail.com', '2024-02-16 14:33:38', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c4263bce-d560-49fa-9331-327b3e63edd7', 'chourabi@gmail.com', '2024-02-29 09:56:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c4ce1c22-f1bc-407c-a0ed-d7e201582bcb', 'chourabi@gmail.com', '2024-02-14 10:31:55', '127.0.0.1', 'Success', NULL, NULL, NULL),
('c7314658-6e5d-47fe-98cd-3f4016a07f55', 'admin@admin.com', '2024-03-12 13:05:33', '127.0.0.1', 'Success', NULL, NULL, NULL),
('cb36f532-e360-4b92-97ef-0f053b4b5506', 'admin@gmail.com', '2024-01-30 10:00:00', '127.0.0.1', 'Error', NULL, NULL, NULL),
('cd8d4f25-319f-48db-8842-31b1dadddd26', 'admin@admin.com', '2024-03-07 13:34:34', '127.0.0.1', 'Success', NULL, NULL, NULL),
('cf23c3e6-b326-4fbc-8ed7-ca6196d0b0db', 'chourabi@gmail.com', '2024-01-31 09:17:28', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d0766596-83be-4944-9554-3759fa071523', 'admin@admin.com', '2024-03-07 10:42:28', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d1189494-ccf0-4652-945f-da3b03eec708', 'admin@admin.com', '2024-03-06 12:55:18', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d178838e-46d8-4ed4-86da-6e826f541a86', 'chourabi@gmail.com', '2024-02-16 10:40:06', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d2f4f951-0d7b-491e-ad50-d32b7396a689', 'chourabi@gmail.com', '2024-02-16 15:34:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d366e2bc-21ca-4b9f-be0f-0307397689e2', 'chourabi@gmail.com', '2024-02-26 11:17:52', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d3ec6489-1854-4a67-b478-ba0f3017b63d', 'admin@admin.com', '2024-03-12 13:17:45', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d4cc583e-4fc1-4409-ae8d-ecab89d04534', 'admin@gmail.com', '2024-01-30 10:00:06', '127.0.0.1', 'Error', NULL, NULL, NULL),
('d5337696-c951-4783-8a5d-08aae899a355', 'klilmecha@gmail.com', '2024-01-23 16:54:07', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d5ba7d14-71a6-43e8-8012-8f1c0e2e52d8', 'admin@admin.com', '2024-03-12 10:18:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d6ce5417-0936-4b0e-aa55-9ea661887448', 'chourabi@gmail.com', '2024-02-29 11:39:43', '127.0.0.1', 'Success', NULL, NULL, NULL),
('d850bed3-7d9a-4479-ab19-9d010cee57a4', 'klilmecha@gmail.com', '2024-01-24 22:15:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('da6e2925-da2a-4b67-b214-7128812698e3', 'chourabi@gmail.com', '2024-02-28 09:46:40', '127.0.0.1', 'Success', NULL, NULL, NULL),
('dad843c9-4ac7-49c2-a147-83f1ec776bb7', 'chourabi@gmail.com', '2024-02-14 14:20:47', '127.0.0.1', 'Success', NULL, NULL, NULL),
('db142a96-eebc-42a4-8f79-06ca7f3801a7', 'klilmecha@gmail.com', '2024-01-23 19:27:09', '127.0.0.1', 'Success', NULL, NULL, NULL),
('dc6348dc-a3d2-4669-891c-7a2bd42ede09', 'admin@admin.com', '2024-03-01 14:15:17', '127.0.0.1', 'Error', NULL, NULL, NULL),
('deab38ac-fbce-4eaf-a112-1990e0a9149d', 'klilmecha@gmail.com', '2024-01-23 16:53:45', '127.0.0.1', 'Success', NULL, NULL, NULL),
('dfe009e9-58c6-4e2e-bd8f-cc90ad55f035', 'admin@admin.com', '2024-03-12 09:04:02', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e03235cf-5575-475b-b8b1-e479eb54b59f', 'admin@admin.com', '2024-03-12 10:18:33', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e194ed43-338b-4b3b-b022-83617b098a27', 'admin@admin.com', '2024-03-11 12:12:31', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e1c7a2db-ecf9-412f-947a-c47a7e7a0a9e', 'klilmecha@gmail.com', '2024-01-10 08:13:59', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e3fe303f-8b35-4101-a37e-8a528277eef6', 'admin@admin.com', '2024-03-11 11:44:14', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e51d934a-1294-4b54-9f9b-ebdeb8b2cfc3', 'admin@admin.com', '2024-03-11 10:28:15', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e69f4083-7346-456c-af79-555d5baa793a', 'chourabi@gmail.com', '2024-02-29 09:56:00', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e884299e-63fc-4385-94e8-6be924d0c54a', 'admin@admin.com', '2024-03-07 12:33:24', '127.0.0.1', 'Success', NULL, NULL, NULL),
('e926f72f-a08c-4b6b-8d88-798e53f09652', 'admin@gmail.com', '2024-01-30 10:05:37', '127.0.0.1', 'Error', NULL, NULL, NULL),
('ec1bd6a6-2923-4669-b008-a68cdba5466c', 'chourabi@gmail.com', '2024-02-14 11:13:47', '127.0.0.1', 'Success', NULL, NULL, NULL),
('ecd3d89b-c524-4ca1-8e05-544bce2976a9', 'admin@admin.com', '2024-03-07 08:41:29', '127.0.0.1', 'Success', NULL, NULL, NULL),
('ed567350-949b-4794-9379-5beec5206e08', 'admin@admin.com', '2024-03-04 10:22:50', '127.0.0.1', 'Success', NULL, NULL, NULL),
('edd23760-a500-49a1-b02e-750b9240703b', 'chourabi@gmail.com', '2024-02-28 11:33:52', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f235229a-8741-4a3e-8762-60d7aa0de3a2', 'admin@admin.com', '2024-03-11 13:08:49', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f2ac49cb-a672-4491-b31c-4b89e70a23e5', NULL, '2024-01-30 10:05:22', '127.0.0.1', 'Error', NULL, NULL, NULL),
('f3099227-429a-4cdf-b4c1-5d105d7172c9', 'admin@admin.com', '2024-03-06 13:56:18', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f501aa96-0a20-43b7-99b0-e5e19af62f7c', 'chourabi@gmail.com', '2024-02-29 11:39:32', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f530c41e-c777-4803-a167-ed3b306da895', 'chourabi@gmail.com', '2024-01-31 09:14:31', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f697e902-c3ca-42bd-a60c-abc5324635dc', 'chourabi@gmail.com', '2024-02-14 13:22:42', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f70ada1f-eeef-4899-8ec5-86555bdef523', 'admin@admin.com', '2024-02-29 12:31:34', '127.0.0.1', 'Success', NULL, NULL, NULL),
('f8f73f40-2aa7-41b3-86c9-2a50adb83dd1', 'chourabi@gmail.com', '2024-02-23 11:45:27', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fb72d117-c647-485c-be89-ab24f2b11c1e', 'chourabi@gmail.com', '2024-02-16 13:43:23', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fbf08937-0ea0-41db-8168-9e56542d58bb', 'chourabi@gmail.com', '2024-02-16 14:19:17', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fcd8f4af-cd8c-43e1-9d53-882ed12a568d', 'klilmecha@gmail.com', '2024-01-20 09:02:50', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fde2faef-6cc8-4e26-bb77-5ab7990c6ea3', 'chourabi@gmail.com', '2024-02-14 13:49:28', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fe1f9904-5121-476d-9b82-e489c2e180eb', 'klilmecha@gmail.com', '2024-01-23 19:26:16', '127.0.0.1', 'Success', NULL, NULL, NULL),
('fe81d43e-31a8-4ced-8199-976b3cfca32c', 'admin@admin.com', '2024-03-05 11:07:30', '127.0.0.1', 'Success', NULL, NULL, NULL);

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
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `createdBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifiedBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quarterlyreminders`
--

CREATE TABLE `quarterlyreminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `quarter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remindernotifications`
--

CREATE TABLE `remindernotifications` (
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
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `dayOfWeek` int(11) DEFAULT NULL,
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
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `subject`, `message`, `frequency`, `startDate`, `endDate`, `dayOfWeek`, `isRepeated`, `isEmailNotification`, `documentId`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('09b75ff7-a493-4667-9d5b-62c6442f079a', 'document reminder', 'hello world', 6, '2024-03-12 10:37:37', NULL, 2, 0, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-12 10:37:49', '2024-03-12 10:37:49', NULL),
('34cb675b-1735-456e-8c42-21a4652f53f7', 'demo eception', 'hello world', 2, '2024-03-12 10:53:01', NULL, NULL, 1, 0, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 1, '2024-03-12 10:53:28', '2024-03-12 11:32:17', '2024-03-12 10:32:17'),
('4795134d-38cb-463a-9873-0ec0c7759fb1', 'test', 'test', 0, '2024-01-06 08:47:13', NULL, NULL, 1, 0, NULL, '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', 1, '2024-01-06 08:45:47', '2024-01-22 08:45:20', '2024-01-22 07:45:20'),
('95a4aaa4-f34c-4c86-b5c5-dbc20bddb063', 'another demo', 'demo', 1, '2024-03-12 10:47:01', NULL, 2, 1, 0, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-12 10:52:40', '2024-03-12 10:52:40', NULL),
('b5558322-b0f7-4188-b366-064a2154eefe', 'no repete', 'no no', 6, '2024-03-12 10:54:24', NULL, 2, 0, 0, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 1, '2024-03-12 10:55:14', '2024-03-12 11:28:58', '2024-03-12 10:28:58'),
('c7c8f8fb-94bd-4f99-8eb2-860e4bf90339', 'Demo mail', 'demo', 6, '2024-02-14 13:55:27', NULL, 2, 0, 0, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-02-14 13:55:37', '2024-02-14 13:55:37', NULL),
('feb0f75a-49b3-4298-8945-25e1172a0160', 'super reminder', 'hello world this a demo', 0, '2024-03-12 10:36:25', '2024-03-16 10:36:52', NULL, 1, 1, NULL, '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-12 10:37:00', '2024-03-12 10:37:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reminderschedulers`
--

CREATE TABLE `reminderschedulers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `frequency` int(11) DEFAULT NULL,
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
-- Table structure for table `reminderusers`
--

CREATE TABLE `reminderusers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminderId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reminderusers`
--

INSERT INTO `reminderusers` (`id`, `reminderId`, `userId`) VALUES
('02ca282c-f09f-4359-b780-ab90bbf3bc50', '09b75ff7-a493-4667-9d5b-62c6442f079a', '4d2689d8-6f72-4aa6-911d-2414c1a751af'),
('264352ae-ed70-4e16-bf3e-3e20916a2e8a', '95a4aaa4-f34c-4c86-b5c5-dbc20bddb063', '4d2689d8-6f72-4aa6-911d-2414c1a751af'),
('40c68c67-614a-4d72-942a-ad0d135a4e72', 'c7c8f8fb-94bd-4f99-8eb2-860e4bf90339', '4d2689d8-6f72-4aa6-911d-2414c1a751af'),
('47ee5e1b-16b0-4637-a8db-8abc46fe8b1c', '34cb675b-1735-456e-8c42-21a4652f53f7', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956'),
('5729a8f6-600c-4b76-9618-570c32990ac5', 'b5558322-b0f7-4188-b366-064a2154eefe', '4d2689d8-6f72-4aa6-911d-2414c1a751af'),
('927748f1-8f07-4b00-bf42-186b71055b24', '34cb675b-1735-456e-8c42-21a4652f53f7', '4d2689d8-6f72-4aa6-911d-2414c1a751af'),
('b465746a-5a50-48e0-b0bb-c8b4f3b0fafb', '34cb675b-1735-456e-8c42-21a4652f53f7', '3d1b20c8-86ec-43cd-a2cd-e52c13bb880d'),
('d2872694-92a8-4b4f-85af-ddcc3f9c74a8', '34cb675b-1735-456e-8c42-21a4652f53f7', '4aad275b-a827-4c51-a259-aaba9b0b490f'),
('f055686e-80d9-465d-b865-92e6a5f1af4f', 'feb0f75a-49b3-4298-8945-25e1172a0160', '3d1b20c8-86ec-43cd-a2cd-e52c13bb880d');

-- --------------------------------------------------------

--
-- Table structure for table `roleclaims`
--

CREATE TABLE `roleclaims` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claimValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roleclaims`
--

INSERT INTO `roleclaims` (`id`, `actionId`, `roleId`, `claimType`, `claimValue`) VALUES
('00e8124d-44d7-4ca7-ac57-eb1c8d51c4bc', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('024a101c-053d-4d6e-ba0f-405b59deaeda', 'a8dd972d-e758-4571-8d39-c6fec74b361b', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('0292a840-c99b-40d5-acb4-aa278b06af73', '239035d5-cd44-475f-bbc5-9ef51768d389', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('02cd4fad-7117-451d-bcac-4530bb27c1f0', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_EDIT_USER', NULL),
('05a0140f-ea04-4fd0-ba6f-c99e03dd5617', '239035d5-cd44-475f-bbc5-9ef51768d389', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('09905de3-d579-482b-8aa8-cc0b3854d393', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'ff635a8f-4bb3-4d70-a3ed-c7749030696c', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('09b34f89-e04a-467d-ae4b-a57d55ccd101', '229ad778-c7d3-4f5f-ab52-24b537c39514', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('0b85efc2-04e8-44f7-be42-ea261b3042f3', 'd4d724fc-fd38-49c4-85bc-73937b219e20', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'USER_RESET_PASSWORD', NULL),
('0d987e66-101d-47b4-b4f9-5555c472def7', '239035d5-cd44-475f-bbc5-9ef51768d389', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('0ee0553d-5f52-4088-8fd6-7ad6030f1ae9', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_VIEW_USERS', NULL),
('158f7c8d-ccac-425a-8f05-98f7ae1f4387', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_VIEW_USERS', NULL),
('17f860da-5224-4410-a38b-383827d3bb83', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('18753c43-912a-4432-943d-b00b99af2c7f', '92596605-e49a-4ab6-8a39-60116eba8abe', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('1b4b86de-28ad-4da0-8b34-b5e346ea38ea', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('1ffed57f-97fe-4577-bfd0-29ea43e2e504', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('23f4f47c-1ac9-4aa3-b903-2ed8fb538938', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('352b2f0d-248b-4944-9257-d83bdf430cf6', 'a737284a-e43b-481d-9fdd-07e1680ffe11', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('354fa313-4531-4587-9794-e06efecbac16', 'a737284a-e43b-481d-9fdd-07e1680ffe11', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('35de1121-40cb-4ed4-b770-9e030779e563', '374d74aa-a580-4928-848d-f7553db39914', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_DELETE_USER', NULL),
('370aa185-4910-4665-92f2-02a5cafbd643', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '84743e36-10f1-4c8b-8f9f-4b44c0927b99', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('3ba55d80-e039-49d4-a188-6717c0472406', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('3d654e51-b2ff-4b09-bf9f-fa21d765479e', '6bc0458e-22f5-4975-b387-4d6a4fb35201', '188884cf-13e2-4549-936e-3e0e69367286', 'REMINDER_CREATE_REMINDER', NULL),
('406b4236-e173-4668-8ca2-34b4a94914a5', '3da78b4d-d263-4b13-8e81-7aa164a3688c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('43e5b208-c36b-4386-b97f-8450ee6b8d63', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('447e17cc-f3d2-479a-bab8-884d91927b0f', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_ASSIGN_PERMISSION', NULL),
('4590fd10-dcab-4a18-8435-7c3f56eca163', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', '84743e36-10f1-4c8b-8f9f-4b44c0927b99', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('45e9e87c-c20e-4f46-8ddd-fd0fa883e243', '6719a065-8a4a-4350-8582-bfc41ce283fb', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('468f9851-8301-4a6b-9869-ae7b9f47a262', '6719a065-8a4a-4350-8582-bfc41ce283fb', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('469cb17d-9e6e-4296-a2c6-e9ecbf86709f', '3da78b4d-d263-4b13-8e81-7aa164a3688c', '188884cf-13e2-4549-936e-3e0e69367286', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('478e85b8-96fb-4a26-933b-c5be8f5e6784', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('4af7a3ee-7038-4575-a79e-971f81bf6970', '0a2e19fc-d9f2-446c-8ca3-e6b8b73b5f9b', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_EDIT_USER', NULL),
('4b1eb4fb-2a19-4aeb-84de-c26c1c68380d', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('4d13321e-1a5f-438d-aec8-ac0a4885d3df', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', '84743e36-10f1-4c8b-8f9f-4b44c0927b99', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('4e4a2bed-7e37-481e-82eb-63e76362d9f4', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('526bc939-ead3-4843-b2bd-8ad70a3c2a31', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'REMINDER_DELETE_REMINDER', NULL),
('52eee1f4-be68-4bcf-a4b7-397951ae51ff', '5ea48d56-2ed3-4239-bb90-dd4d70a1b0b2', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_DELETE_REMINDER', NULL),
('55b65322-cdea-4e6c-a5cd-f2a1ff2b8e76', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('55b9b3fb-5404-4e78-a208-de317cca856d', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('5982e63b-92d5-40ec-8940-72e752e4564f', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('5abcc490-9434-4fc7-ae9c-31d366487d02', 'c288b5d3-419d-4dc0-9e5a-083194016d2c', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_EDIT_ROLE', NULL),
('5f63cbca-d8ec-4c45-9552-f0247025de69', 'd4d724fc-fd38-49c4-85bc-73937b219e20', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_RESET_PASSWORD', NULL),
('62f4af0b-cca8-4a67-92ff-f3b3565bc79a', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('66b1c845-ff83-470d-b474-27d008e82e41', '41f65d07-9023-4cfb-9c7c-0e3247a012e0', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'EMAIL_MANAGE_SMTP_SETTINGS', NULL),
('6784151b-700c-448e-bb0c-60d3a8ee416f', 'fa91ffd9-61ee-4bb1-bf86-6a593cdc7be9', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'ASSIGNED_DOCUMENTS_CREATE_DOCUMENT', NULL),
('693ad770-b88b-48c5-a3e7-9c7e5cbb1c66', '18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_DELETE_ROLE', NULL),
('698d6f34-2a05-4bcc-934b-c9f8f0277dc0', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '188884cf-13e2-4549-936e-3e0e69367286', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('6a0d5cd1-8076-428b-a521-9ab36a961974', '391c1739-1045-4dd4-9705-4a960479f0a0', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('6b4c2cf8-318a-4dc9-abff-0598ab05724c', '6719a065-8a4a-4350-8582-bfc41ce283fb', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_DOWNLOAD_DOCUMENT', NULL),
('6babb0a3-df6e-4aba-813f-51aa99ba4249', 'a737284a-e43b-481d-9fdd-07e1680ffe11', '188884cf-13e2-4549-936e-3e0e69367286', 'ASSIGNED_DOCUMENTS_EDIT_DOCUMENT', NULL),
('6c015029-b139-4b7c-9c56-d2f3476d9373', '6f2717fc-edef-4537-916d-2d527251a5c1', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'REMINDER_VIEW_REMINDERS', NULL),
('6cf119a7-07ba-49a4-925b-e84763defcbd', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('6d841515-1250-4915-a346-7226b6bf2c1a', '72ca5c91-b415-4997-a234-b4d71ba03253', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_LANGUAGE', NULL),
('71ccc066-55d5-4db8-9d19-268dba6f4ea2', '31cb6438-7d4a-4385-8a34-b4e8f6096a48', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'USER_VIEW_USERS', NULL),
('742ce555-5b8e-41b6-b48c-4df866ba98a1', 'a8dd972d-e758-4571-8d39-c6fec74b361b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('8093b60a-d36e-46d5-b39e-e458d94fff69', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('8153d157-e31e-4d26-a50e-3e31824d58cc', '6bc0458e-22f5-4975-b387-4d6a4fb35201', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_CREATE_REMINDER', NULL),
('817a61af-cede-48a4-b25b-36967f1f6a52', 'a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'SETTING_MANAGE_PROFILE', NULL),
('85040ac2-ff12-48b3-be56-c181218089ec', '92596605-e49a-4ab6-8a39-60116eba8abe', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_DELETE_DOCUMENT', NULL),
('85054f35-f886-4d0c-b05a-b2a5bef5bdd3', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('85a3bdd1-15a8-4f26-bb86-6ad41f9f212c', 'c288b5d3-419d-4dc0-9e5a-083194016d2c', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ROLE_EDIT_ROLE', NULL),
('8643fe20-0f0b-4c85-a4b8-817baf2f005c', '6f2717fc-edef-4537-916d-2d527251a5c1', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_VIEW_REMINDERS', NULL),
('8c4c36e3-5935-410e-aac9-86f961784111', '6f2717fc-edef-4537-916d-2d527251a5c1', '188884cf-13e2-4549-936e-3e0e69367286', 'REMINDER_VIEW_REMINDERS', NULL),
('8e580b88-1a81-4164-ac80-04eae47ddc0e', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('8f4ca2c7-3611-4f39-9f9a-0505edf3e721', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ROLE_VIEW_ROLES', NULL),
('90234de0-0115-47e9-8c2d-9e2761b98b44', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL),
('9490cf6b-fa55-46b7-8adc-2c94f1b836ae', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_ASSIGN_USER_ROLE', NULL),
('949ff233-7eb1-4b26-9740-f2551c43b5dc', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'd6f042a7-d936-4c5c-b5e1-d579db21d940', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('964e0be0-212f-49ac-bd40-7a9f4645e747', '3da78b4d-d263-4b13-8e81-7aa164a3688c', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('98817d9b-9c59-4042-be2c-70bc2a61b6c0', '3da78b4d-d263-4b13-8e81-7aa164a3688c', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('9deef80e-5665-421a-a9da-1585aa7bb956', 'a57b1ad5-8fbc-429b-b776-fbb468e5c6a4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'SETTING_MANAGE_PROFILE', NULL),
('a382e563-2330-46a6-8914-1d932fef0794', '3ccaf408-8864-4815-a3e0-50632d90bcb6', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'REMINDER_EDIT_REMINDER', NULL),
('a64ae68a-122d-49aa-a010-e9b199822724', '72ca5c91-b415-4997-a234-b4d71ba03253', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'SETTING_MANAGE_LANGUAGE', NULL),
('a85939fd-b0d4-44b6-bb46-c359c5d22d8b', 'db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_CREATE_ROLE', NULL),
('ae108f8c-43f3-4df5-9982-16e1d5af5719', '374d74aa-a580-4928-848d-f7553db39914', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_DELETE_USER', NULL),
('afad029e-82fc-48e1-afe3-3134ff5e430d', 'e506ec48-b99a-45b4-9ec9-6451bc67477b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_PERMISSION', NULL),
('b0d4620b-b39e-4695-ac58-65cfc638ac63', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', 'd6f042a7-d936-4c5c-b5e1-d579db21d940', 'DASHBOARD_VIEW_DASHBOARD', NULL),
('b4c541e8-29f2-4d5a-a65d-ff77fc7bb5ef', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'ROLE_VIEW_ROLES', NULL),
('b4d7f4b9-a7e1-481b-8cc9-6c665a1b22d7', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('b6a38fae-4fd9-4e00-84dc-c1e9fd4b506e', '1c7d3e31-08ad-43cf-9cf7-4ffafdda9029', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'DOCUMENT_AUDIT_TRAIL_VIEW_DOCUMENT_AUDIT_TRAIL', NULL),
('b98fd993-6a3d-41a4-867d-49501f2b5713', '18a5a8f6-7cb6-4178-857d-b6a981ea3d4f', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ROLE_DELETE_ROLE', NULL),
('ba714f5f-5875-44d2-9482-be827cb7037f', '229ad778-c7d3-4f5f-ab52-24b537c39514', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('bad0d03e-ac2f-4c75-a1da-3b446ef444bd', '3da78b4d-d263-4b13-8e81-7aa164a3688c', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_ADD_REMINDER', NULL),
('bbb991a9-7623-48f3-bed0-e3e9c1501e37', '57216dcd-1a1c-4f94-a33d-83a5af2d7a46', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ROLE_VIEW_ROLES', NULL),
('bf69c523-5f79-4e7f-8a95-68126835a64f', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'USER_CREATE_USER', NULL),
('c02632ee-7ca5-499f-ba3a-2fe2fab24e48', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '84743e36-10f1-4c8b-8f9f-4b44c0927b99', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('c0e1cd57-b50b-4f5f-bfcf-dd4fb5b45e6b', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', '188884cf-13e2-4549-936e-3e0e69367286', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('c0ef19f0-0528-4859-af7c-b3d2ad65bbe5', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('c8e29664-4e77-4249-aa72-5db041e1f518', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('c984a548-503b-4d43-bc69-a7d697d9807a', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('c9c2bdbd-9839-45fa-afda-b2a760870c95', 'a8dd972d-e758-4571-8d39-c6fec74b361b', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_EDIT_DOCUMENT', NULL),
('cb08eacb-3571-4310-8094-f40a24512cd6', 'fbe77c07-3058-4dbe-9d56-8c75dc879460', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_ASSIGN_USER_ROLE', NULL),
('cf5ca56f-cc18-419b-a8b5-30333a9f8ecc', 'd4d724fc-fd38-49c4-85bc-73937b219e20', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_RESET_PASSWORD', NULL),
('d10c855e-632e-4df3-a68b-32cb1b8c0327', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('d3a43e1f-1fc7-4cc4-b004-ff2957305474', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', '188884cf-13e2-4549-936e-3e0e69367286', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('d68fc3ba-b0d7-4041-b093-24a1995338c2', '72ca5c91-b415-4997-a234-b4d71ba03253', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'SETTING_MANAGE_LANGUAGE', NULL),
('d70f1521-9663-47ed-98b8-7e0a49992fae', '3ccaf408-8864-4815-a3e0-50632d90bcb6', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'REMINDER_EDIT_REMINDER', NULL),
('d75560b4-b06a-4f3e-8dcc-de4c3bfcfde0', '229ad778-c7d3-4f5f-ab52-24b537c39514', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 'ALL_DOCUMENTS_DELETE_DOCUMENT', NULL),
('dab82f01-6864-49b8-a83e-4b5a2c14a24b', 'c04a1094-f289-4de7-b788-9f21ee3fe32a', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'ASSIGNED_DOCUMENTS_SEND_EMAIL', NULL),
('df60b29a-fa74-4c87-9af7-f974b641709d', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('e0ac19f1-65b2-4da8-a438-f220879b67f0', '6f2717fc-edef-4537-916d-2d527251a5c1', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'REMINDER_VIEW_REMINDERS', NULL),
('e5ff5b35-6c5f-42b9-9689-fcc6aca1d054', '239035d5-cd44-475f-bbc5-9ef51768d389', '4ab326ad-bd78-4ec4-8600-bb3bf841e654', 'ALL_DOCUMENTS_CREATE_DOCUMENT', NULL),
('e7ce7dcd-138a-4b0d-a3f9-c6c413b2a20c', '595a769d-f7ef-45f3-9f9e-60c58c5e1542', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_SEND_EMAIL', NULL),
('ecf04f4f-7cd7-4150-9499-00154d183b65', 'cd46a3a4-ede5-4941-a49b-3df7eaa46428', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'DOCUMENT_CATEGORY_MANAGE_DOCUMENT_CATEGORY', NULL),
('ed2ef7fc-ab3d-40ea-b951-175fb107d1d4', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', '564c88ed-50f1-4c6e-9303-d4c08c28cd6a', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('f2a44e72-561f-4ad9-9c27-4c624ae78255', '6bc0458e-22f5-4975-b387-4d6a4fb35201', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'REMINDER_CREATE_REMINDER', NULL),
('f3194795-8446-4535-8e19-d3da7b40adfb', '63ed1277-1db5-4cf7-8404-3e3426cb4bc5', '188884cf-13e2-4549-936e-3e0e69367286', 'ALL_DOCUMENTS_VIEW_DOCUMENTS', NULL),
('f53a798f-0c9f-4d60-905e-7a36be390668', '86ce1382-a2b1-48ed-ae81-c9908d00cf3b', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'USER_CREATE_USER', NULL),
('f549b1cd-5ecd-4e9d-b1c8-1ab85aa1a21d', 'db8825b1-ee4e-49f6-9a08-b0210ed53fd4', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ROLE_CREATE_ROLE', NULL),
('fdc38b2f-6c6d-43b2-bfd4-6572274c4759', '391c1739-1045-4dd4-9705-4a960479f0a0', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ASSIGNED_DOCUMENTS_UPLOAD_NEW_VERSION', NULL),
('fe0ad716-8f0b-4240-9e12-d008ee3b28a4', '2ea6ba08-eb36-4e34-92d9-f1984c908b31', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 'ALL_DOCUMENTS_SHARE_DOCUMENT', NULL),
('feda459a-8aad-4faa-b343-df8747a1e2fc', 'ac6d6fbc-6348-4149-9c0c-154ab79d1166', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 'ASSIGNED_DOCUMENTS_SHARE_DOCUMENT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
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
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `isDeleted`, `name`, `createdBy`, `modifiedBy`, `deletedBy`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('188884cf-13e2-4549-936e-3e0e69367286', 0, 'KAWASAKI KX', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-28 10:01:57', '2024-02-28 10:40:13', NULL),
('3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0', 0, 'Agent', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-03-11 12:10:25', '2024-03-11 12:10:25', NULL),
('40299d6b-b82c-401f-82cd-ed2d2ce25dda', 0, 'DREAMER', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-26 12:23:36', '2024-02-26 12:23:36', NULL),
('4ab326ad-bd78-4ec4-8600-bb3bf841e654', 0, 'HOLIGAN', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-26 12:07:40', '2024-02-26 12:07:40', NULL),
('564c88ed-50f1-4c6e-9303-d4c08c28cd6a', 0, 'sym', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-28 09:54:18', '2024-02-28 09:54:18', NULL),
('79207c11-1e36-414b-8c06-d88307fc2a66', 0, 'Symfony', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-28 09:49:58', '2024-02-28 09:49:58', NULL),
('84743e36-10f1-4c8b-8f9f-4b44c0927b99', 0, 'demo x', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-26 12:05:38', '2024-02-26 12:05:38', NULL),
('96f6bf55-7ac5-4275-bec6-357d40fa86aa', 0, 'GOV', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-28 09:56:43', '2024-02-28 09:56:43', NULL),
('b90dd7cb-0161-437c-a1ee-9a3fce937e8f', 0, 'simp', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-28 09:50:56', '2024-02-28 09:50:56', NULL),
('d6f042a7-d936-4c5c-b5e1-d579db21d940', 0, 'yamaha', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, '2024-02-28 10:13:45', '2024-02-28 10:13:45', NULL),
('f8b6ace9-a625-4397-bdf8-f34060dbd8e4', 0, 'Super Admin', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL),
('ff635a8f-4bb3-4d70-a3ed-c7749030696c', 0, 'Employee', '8abea112-4317-4338-98ce-32220efaa874', '8abea112-4317-4338-98ce-32220efaa874', NULL, '2024-01-06 08:38:04', '2024-01-06 08:38:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sendemails`
--

CREATE TABLE `sendemails` (
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

--
-- Dumping data for table `sendemails`
--

INSERT INTO `sendemails` (`id`, `subject`, `message`, `fromEmail`, `documentId`, `isSend`, `email`, `createdBy`, `modifiedBy`, `deletedBy`, `isDeleted`, `createdDate`, `modifiedDate`, `deleted_at`) VALUES
('bf9e5b85-8ffb-4d38-8ba0-56c0964a40b7', 'honda', '<p>hello world</p>', 'chourabi', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 0, 'honda@demo.com', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 13:48:20', '2024-03-07 13:48:20', NULL),
('ed85aeca-dfd3-4ed6-9f21-3edd796b9a94', 'demi', 'demo', 'chourabi', 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', 0, 'tchourabi@gmail.com', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '4d2689d8-6f72-4aa6-911d-2414c1a751af', '', 0, '2024-03-07 13:51:39', '2024-03-07 13:51:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userclaims`
--

CREATE TABLE `userclaims` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claimValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userclaims`
--

INSERT INTO `userclaims` (`id`, `actionId`, `userId`, `claimType`, `claimValue`) VALUES
('1223bee7-1a85-4f36-9d6e-238291c1bf23', 'ff4b3b73-c29f-462a-afa4-94a40e6b2c4a', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 'LOGIN_AUDIT_VIEW_LOGIN_AUDIT_LOGS', NULL),
('647520c2-d1aa-4b55-a725-c803c42e0477', '7ba630ca-a9d3-42ee-99c8-766e2231fec1', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 'DASHBOARD_VIEW_DASHBOARD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usernotifications`
--

CREATE TABLE `usernotifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isRead` tinyint(1) NOT NULL,
  `documentId` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usernotifications`
--

INSERT INTO `usernotifications` (`id`, `userId`, `message`, `isRead`, `documentId`, `createdDate`, `modifiedDate`) VALUES
('1', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 'hello world', 0, '0e014747-0af2-4e0f-9aad-881415e5f9d5', '2024-02-14 14:53:51', '2024-02-14 14:09:28'),
('1315312f-311e-459f-ba55-13be8c02909f', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 11:55:23', '2024-03-11 11:55:23'),
('1f5d4833-452b-4a80-a952-f1250607f86b', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', NULL, 0, '71a8124e-6a2b-4868-95f2-577427b6efca', '2024-03-05 12:18:18', '2024-03-05 12:18:18'),
('46aa92d8-fd57-4413-8f93-4311e91038e7', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 11:49:28', '2024-03-11 11:49:28'),
('49593ca9-d0ae-48b4-b812-d8362ad5e5b6', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, 0, '8177559a-33cd-408e-8796-e4bf7c6f39a1', '2024-03-07 10:03:57', '2024-03-07 10:03:57'),
('551a88d8-6950-4a6c-94a9-c20f4d1e503b', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-06 14:39:15', '2024-03-06 14:39:15'),
('6936bfb1-471c-48b8-af34-bea68c792d0e', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', NULL, 0, '8177559a-33cd-408e-8796-e4bf7c6f39a1', '2024-03-07 10:03:57', '2024-03-07 10:03:57'),
('84eb7d40-20f8-4978-9a63-b76d792797ae', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', NULL, 0, '71a8124e-6a2b-4868-95f2-577427b6efca', '2024-03-11 11:57:01', '2024-03-11 11:57:01'),
('96372c4d-313c-4785-957a-b966dc2cb70b', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, 0, '8177559a-33cd-408e-8796-e4bf7c6f39a1', '2024-03-07 10:03:57', '2024-03-07 10:03:57'),
('a813b5de-6cc6-4aac-a114-0791589c2f8d', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 09:23:34', '2024-03-11 09:23:34'),
('b7636fc3-1381-425e-9975-1ea82e59a333', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 11:49:28', '2024-03-11 11:49:28'),
('c3f60e48-c17a-4ad7-90b1-8a143337af1e', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', NULL, 0, '8177559a-33cd-408e-8796-e4bf7c6f39a1', '2024-03-07 10:03:57', '2024-03-07 10:03:57'),
('cae2c242-c4f3-48d8-8b17-a9af5d9b6ee3', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-06 14:39:15', '2024-03-06 14:39:15'),
('cb2d1fb1-e097-4b31-8e41-954d43c9c72a', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-06 14:39:15', '2024-03-06 14:39:15'),
('dc9a5fed-b0c5-47a6-8998-25f090540a62', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, 0, '71a8124e-6a2b-4868-95f2-577427b6efca', '2024-03-11 11:27:22', '2024-03-11 11:27:22'),
('e49ffdfb-a37b-42bb-951d-eb8fe7ffd51f', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 11:20:17', '2024-03-11 11:20:17'),
('ef89fded-d05e-431e-833e-b2c113df0ebc', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', NULL, 0, '71a8124e-6a2b-4868-95f2-577427b6efca', '2024-03-05 12:18:18', '2024-03-05 12:18:18'),
('efc73130-cea2-412a-bfce-43348e978802', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 10:46:45', '2024-03-11 10:46:45'),
('f0907cd4-ccb7-4bb1-a788-a5af132563b8', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', NULL, 0, '71a8124e-6a2b-4868-95f2-577427b6efca', '2024-03-11 11:57:01', '2024-03-11 11:57:01'),
('f83de3e1-311d-4a8f-895a-57eee26a9945', '4aad275b-a827-4c51-a259-aaba9b0b490f', NULL, 0, '71a8124e-6a2b-4868-95f2-577427b6efca', '2024-03-05 12:18:18', '2024-03-05 12:18:18'),
('fe450fbe-391f-4787-97b2-6b326b8585a7', '4d2689d8-6f72-4aa6-911d-2414c1a751af', NULL, 0, 'a05004e1-0f84-43a5-a9e0-7ffe209ca592', '2024-03-11 09:09:54', '2024-03-11 09:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`id`, `userId`, `roleId`) VALUES
('06f89f61-0d8d-4253-b337-f3d708b78713', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', '40299d6b-b82c-401f-82cd-ed2d2ce25dda'),
('0f28bf07-e520-4712-a4c9-e3ce487f46da', '3d1b20c8-86ec-43cd-a2cd-e52c13bb880d', '3e0c00c8-0f0f-49c7-ae26-14ab0e7c6aa0'),
('1f901b6e-e659-44bd-9b5a-32da0922dfc9', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', '4ab326ad-bd78-4ec4-8600-bb3bf841e654'),
('462fdb7b-8697-4735-8d4b-ee436699981c', '1a78019f-27ea-47b2-bc74-f58b1bfedcac', '40299d6b-b82c-401f-82cd-ed2d2ce25dda'),
('548a2ff6-750c-48b2-8628-cb74d4fccbea', '27d0d7ab-d900-4b8a-8c42-697f563f4f85', '4ab326ad-bd78-4ec4-8600-bb3bf841e654'),
('82dded41-93f1-4534-bfe1-6e498d89594a', '4d2689d8-6f72-4aa6-911d-2414c1a751af', 'f8b6ace9-a625-4397-bdf8-f34060dbd8e4'),
('9e6ba3de-3c15-41d7-9bb9-90d88075dc77', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956', '96f6bf55-7ac5-4275-bec6-357d40fa86aa'),
('cdc5c569-cf9c-4234-b082-1d0f9de5f543', '4aad275b-a827-4c51-a259-aaba9b0b490f', '40299d6b-b82c-401f-82cd-ed2d2ce25dda'),
('d36b72d2-e9de-4f30-bead-6a0a83922519', '9b1c57fc-5f57-4538-8cd4-a7db51a4a956', 'b90dd7cb-0161-437c-a1ee-9a3fce937e8f');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `accessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `isDeleted`, `userName`, `normalizedUserName`, `email`, `normalizedEmail`, `emailConfirmed`, `password`, `securityStamp`, `concurrencyStamp`, `phoneNumber`, `phoneNumberConfirmed`, `twoFactorEnabled`, `lockoutEnd`, `lockoutEnabled`, `accessFailedCount`) VALUES
('1a78019f-27ea-47b2-bc74-f58b1bfedcac', 'Ali', 'chouerreb', 1, NULL, NULL, 'ali@gmail.com', NULL, 0, '$2y$10$TYEAsj0TRuZSu7jr3.KDB./99tNql.QJ8vnAYQ79rsA.NRmnyaA0e', NULL, NULL, '93863732', 0, 0, NULL, 0, 0),
('27d0d7ab-d900-4b8a-8c42-697f563f4f85', 'chiraz', 'gomni', 1, 'chourabi@gmail.comsdsd', NULL, NULL, NULL, 0, '$2y$10$2CII1AxKZLrchc4v6F.5fOjuXgR6r1sLHheXv9vDaENJtFSjFNcqq', NULL, NULL, '99663211', 0, 0, NULL, 0, 0),
('3d1b20c8-86ec-43cd-a2cd-e52c13bb880d', 'jlassi', 'ala', 0, 'ala@gmail.com', NULL, 'ala@gmail.com', NULL, 0, '$2y$10$1ZONVYiMbc6x5ieW/MNBTO.ltGo/bezmRKm7hjlBpS38z93rG1ESO', NULL, NULL, '22556633', 0, 0, NULL, 0, 0),
('4aad275b-a827-4c51-a259-aaba9b0b490f', 'khalil', 'kassab', 0, 'ghazikhaldi777@icloud.com', NULL, 'ghazikhaldi777@icloud.com', NULL, 0, '$2y$10$/DaKSs3XHz417W.lQUaEGOxYaMPYOlq6zOAxUdAFSn2KooM9.lXne', NULL, NULL, '+21624710224', 0, 0, NULL, 0, 0),
('4d2689d8-6f72-4aa6-911d-2414c1a751af', 'admin', 'admin', 0, 'admin@admin.com', NULL, 'admin@admin.com', NULL, 0, '$2y$10$XnYSKdQXSmKqBYMhIe8zc.ac1Rja/.bZMj00hgEGgs40XypSj/AGK', NULL, NULL, '22274477', 0, 0, NULL, 0, 0),
('8abea112-4317-4338-98ce-32220efaa874', 'chourabi', 'taher', 1, 'chourabi@gmail.com', NULL, '-', NULL, 0, '$2y$10$8NvcU0QGc/FjUatPVd.y3.wZUbNzNQzNTTQ6dgh8Xc9K.Y3Id9jtq', NULL, NULL, NULL, 0, 0, NULL, 0, 0),
('9b1c57fc-5f57-4538-8cd4-a7db51a4a956', 'khalil', 'kassab', 0, 'ghazikhaldi7j77@icloud.com', NULL, 'ghazikhaldi7j77@icloud.com', NULL, 0, '$2y$10$Ko0qEYm1rYeTK43U/.qbreyx3m3ZSJ/uHDpsmI53x.M/7D.UNxC96', NULL, NULL, '+21624710224', 0, 0, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actions_pageid_foreign` (`pageId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parentid_foreign` (`parentId`);

--
-- Indexes for table `companyprofile`
--
ALTER TABLE `companyprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyprofile_createdby_foreign` (`createdBy`);

--
-- Indexes for table `dailyreminders`
--
ALTER TABLE `dailyreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dailyreminders_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `documentaudittrails`
--
ALTER TABLE `documentaudittrails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentaudittrails_documentid_foreign` (`documentId`),
  ADD KEY `documentaudittrails_assigntouserid_foreign` (`assignToUserId`),
  ADD KEY `documentaudittrails_assigntoroleid_foreign` (`assignToRoleId`),
  ADD KEY `documentaudittrails_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documentcomments`
--
ALTER TABLE `documentcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentcomments_documentid_foreign` (`documentId`),
  ADD KEY `documentcomments_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documentmetadatas`
--
ALTER TABLE `documentmetadatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentmetadatas_documentid_foreign` (`documentId`);

--
-- Indexes for table `documentrolepermissions`
--
ALTER TABLE `documentrolepermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrolepermissions_documentid_foreign` (`documentId`),
  ADD KEY `documentrolepermissions_roleid_foreign` (`roleId`),
  ADD KEY `documentrolepermissions_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_categoryid_foreign` (`categoryId`),
  ADD KEY `documents_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documenttokens`
--
ALTER TABLE `documenttokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentuserpermissions`
--
ALTER TABLE `documentuserpermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentuserpermissions_documentid_foreign` (`documentId`),
  ADD KEY `documentuserpermissions_userid_foreign` (`userId`),
  ADD KEY `documentuserpermissions_createdby_foreign` (`createdBy`);

--
-- Indexes for table `documentversions`
--
ALTER TABLE `documentversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentversions_documentid_foreign` (`documentId`),
  ADD KEY `documentversions_createdby_foreign` (`createdBy`);

--
-- Indexes for table `emailsmtpsettings`
--
ALTER TABLE `emailsmtpsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halfyearlyreminders`
--
ALTER TABLE `halfyearlyreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `halfyearlyreminders_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_createdby_foreign` (`createdBy`);

--
-- Indexes for table `loginaudits`
--
ALTER TABLE `loginaudits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quarterlyreminders`
--
ALTER TABLE `quarterlyreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quarterlyreminders_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `remindernotifications`
--
ALTER TABLE `remindernotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remindernotifications_reminderid_foreign` (`reminderId`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_documentid_foreign` (`documentId`),
  ADD KEY `reminders_createdby_foreign` (`createdBy`);

--
-- Indexes for table `reminderschedulers`
--
ALTER TABLE `reminderschedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminderschedulers_documentid_foreign` (`documentId`),
  ADD KEY `reminderschedulers_userid_foreign` (`userId`);

--
-- Indexes for table `reminderusers`
--
ALTER TABLE `reminderusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminderusers_reminderid_foreign` (`reminderId`),
  ADD KEY `reminderusers_userid_foreign` (`userId`);

--
-- Indexes for table `roleclaims`
--
ALTER TABLE `roleclaims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleclaims_actionid_foreign` (`actionId`),
  ADD KEY `roleclaims_roleid_foreign` (`roleId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sendemails`
--
ALTER TABLE `sendemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendemails_documentid_foreign` (`documentId`),
  ADD KEY `sendemails_createdby_foreign` (`createdBy`);

--
-- Indexes for table `userclaims`
--
ALTER TABLE `userclaims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userclaims_actionid_foreign` (`actionId`),
  ADD KEY `userclaims_userid_foreign` (`userId`);

--
-- Indexes for table `usernotifications`
--
ALTER TABLE `usernotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usernotifications_userid_foreign` (`userId`),
  ADD KEY `usernotifications_documentid_foreign` (`documentId`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userroles_userid_foreign` (`userId`),
  ADD KEY `userroles_roleid_foreign` (`roleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_pageid_foreign` FOREIGN KEY (`pageId`) REFERENCES `pages` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parentid_foreign` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companyprofile`
--
ALTER TABLE `companyprofile`
  ADD CONSTRAINT `companyprofile_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `dailyreminders`
--
ALTER TABLE `dailyreminders`
  ADD CONSTRAINT `dailyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `documentaudittrails`
--
ALTER TABLE `documentaudittrails`
  ADD CONSTRAINT `documentaudittrails_assigntoroleid_foreign` FOREIGN KEY (`assignToRoleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `documentaudittrails_assigntouserid_foreign` FOREIGN KEY (`assignToUserId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentaudittrails_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentaudittrails_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `documentcomments`
--
ALTER TABLE `documentcomments`
  ADD CONSTRAINT `documentcomments_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentcomments_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `documentmetadatas`
--
ALTER TABLE `documentmetadatas`
  ADD CONSTRAINT `documentmetadatas_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `documentrolepermissions`
--
ALTER TABLE `documentrolepermissions`
  ADD CONSTRAINT `documentrolepermissions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentrolepermissions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `documentrolepermissions_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `documents_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `documentuserpermissions`
--
ALTER TABLE `documentuserpermissions`
  ADD CONSTRAINT `documentuserpermissions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentuserpermissions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `documentuserpermissions_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `documentversions`
--
ALTER TABLE `documentversions`
  ADD CONSTRAINT `documentversions_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `documentversions_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `halfyearlyreminders`
--
ALTER TABLE `halfyearlyreminders`
  ADD CONSTRAINT `halfyearlyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);

--
-- Constraints for table `quarterlyreminders`
--
ALTER TABLE `quarterlyreminders`
  ADD CONSTRAINT `quarterlyreminders_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `remindernotifications`
--
ALTER TABLE `remindernotifications`
  ADD CONSTRAINT `remindernotifications_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`);

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reminders_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `reminderschedulers`
--
ALTER TABLE `reminderschedulers`
  ADD CONSTRAINT `reminderschedulers_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `reminderschedulers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `reminderusers`
--
ALTER TABLE `reminderusers`
  ADD CONSTRAINT `reminderusers_reminderid_foreign` FOREIGN KEY (`reminderId`) REFERENCES `reminders` (`id`),
  ADD CONSTRAINT `reminderusers_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `roleclaims`
--
ALTER TABLE `roleclaims`
  ADD CONSTRAINT `roleclaims_actionid_foreign` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `roleclaims_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

--
-- Constraints for table `sendemails`
--
ALTER TABLE `sendemails`
  ADD CONSTRAINT `sendemails_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sendemails_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`);

--
-- Constraints for table `userclaims`
--
ALTER TABLE `userclaims`
  ADD CONSTRAINT `userclaims_actionid_foreign` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `userclaims_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `usernotifications`
--
ALTER TABLE `usernotifications`
  ADD CONSTRAINT `usernotifications_documentid_foreign` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`),
  ADD CONSTRAINT `usernotifications_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `userroles`
--
ALTER TABLE `userroles`
  ADD CONSTRAINT `userroles_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `userroles_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
