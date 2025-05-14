-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2025 at 12:05 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u985817387_efarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_tokens`
--

CREATE TABLE `api_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expired_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api_tokens`
--

INSERT INTO `api_tokens` (`id`, `user_id`, `token`, `created_at`, `expired_at`) VALUES
(5, 1, '1000e0b83fdf686efbeece365dc45aee037ab97b7562fb1a697bcf531208d065', '2025-04-30 08:48:25', '2025-05-01 08:48:25'),
(8, 3, '3deb46fa9427c00995acfe961fa91ab7c85b57f9f6740f118ae1f333c79fa84b', '2025-04-30 08:53:13', '2025-05-01 08:53:13'),
(31, 4, '830df1feb259ef42cd83bfd2f78fa423fcdd864817a967f8e9626f9c7bbc2375', '2025-05-07 03:16:09', '2025-05-08 03:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `previous_hash` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `nonce` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `previous_hash`, `hash`, `data`, `nonce`, `created_by`, `created_at`) VALUES
(1, 'hash_topup_request', '49fc35721e3ac588e39f2e96218c6fd8', '{\"action\":\"topup_approved\",\"user_id\":\"3\",\"amount\":\"50000.00\"}', 399985, 1, '2025-04-30 08:49:04'),
(2, '49fc35721e3ac588e39f2e96218c6fd8', '2f091ddbc5849abb493bafc302b6cb4c', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":5500,\"total_price\":5500,\"date\":\"2025-05-01\",\"buyer_name\":\"Toko Susu A\"}', 549958, 4, '2025-05-01 13:35:44'),
(3, '2f091ddbc5849abb493bafc302b6cb4c', '0bd6fffd68b4f81b57766b6aa0ddfad8', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":5500,\"total_price\":5500,\"date\":\"2025-05-01\",\"buyer_name\":\"Toko Susu A\"}', 237328, 4, '2025-05-01 13:36:07'),
(4, '0bd6fffd68b4f81b57766b6aa0ddfad8', 'd03eea704681d190ad70ef6a7fff40af', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":5500,\"total_price\":5500,\"date\":\"2025-05-01\",\"buyer_name\":\"Toko Susu A\"}', 254649, 4, '2025-05-01 13:36:58'),
(5, 'previous_hash_placeholder', '1ec581e0671be25248b73af93b9ffe0a', '{\"transaction_id\":64,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":50000,\"description\":\"Makanan Sapi\"}', 876741, 1, '2025-05-01 13:39:59'),
(6, '1ec581e0671be25248b73af93b9ffe0a', '04a3c8818f948374c9b192d4ce4f814e', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":5500,\"total_price\":5500,\"date\":\"2025-05-02\",\"buyer_name\":\"Toko Susu A\"}', 621814, 4, '2025-05-02 06:22:27'),
(7, '04a3c8818f948374c9b192d4ce4f814e', '7f1a824074e5d9571ccf348abc48da74', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":5500,\"total_price\":5500,\"date\":\"2025-05-02\",\"buyer_name\":\"Toko Susu A\"}', 795415, 4, '2025-05-02 06:24:20'),
(8, '7f1a824074e5d9571ccf348abc48da74', '4a293c724b6a8a45f21f930157877d72', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":6000,\"total_price\":6000,\"date\":\"2025-05-02\",\"buyer_name\":\"Test\"}', 241822, 4, '2025-05-02 06:48:02'),
(9, '4a293c724b6a8a45f21f930157877d72', '345267fab5a617737949c98763dc72d1', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":6000,\"total_price\":6000,\"date\":\"2025-05-02\",\"buyer_name\":\"test\"}', 412425, 4, '2025-05-02 07:22:31'),
(10, 'previous_hash_placeholder', 'b7872e944b529307213f3d869f6419da', '{\"transaction_id\":69,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Trst\"}', 778250, 1, '2025-05-02 08:08:17'),
(11, 'previous_hash_placeholder', '2bdaf0e6be7c07d3d777f1fff29d801d', '{\"transaction_id\":70,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":10000,\"description\":\"Pakan Sapi\"}', 137965, 1, '2025-05-02 08:09:14'),
(12, 'previous_hash_placeholder', 'a25c65642432492871023667878dae8e', '{\"transaction_id\":71,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Test\"}', 855864, 1, '2025-05-02 08:10:21'),
(13, 'previous_hash_placeholder', '02fdda555d8cd50e7a82a5a816ab8dae', '{\"transaction_id\":72,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Test Pakan Sapi\"}', 180942, 1, '2025-05-02 08:12:18'),
(14, 'previous_hash_placeholder', '5c954e9f9f4a7652c5e083718c3cd5ee', '{\"transaction_id\":73,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Test Beli Pakan\"}', 789589, 1, '2025-05-02 08:13:22'),
(15, 'previous_hash_placeholder', '0f1297a33d540f26f44e851e92a43e49', '{\"transaction_id\":74,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Pakan Sapi\"}', 186289, 1, '2025-05-02 08:15:32'),
(16, '0f1297a33d540f26f44e851e92a43e49', '45c27d0432d325642c1f5c0024169760', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":6000,\"total_price\":6000,\"date\":\"2025-05-02\",\"buyer_name\":\"Toko A\"}', 186143, 4, '2025-05-02 08:16:04'),
(17, 'previous_hash_placeholder', 'b6575b7cbba0e215b5d02226b91e73d3', '{\"transaction_id\":76,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"1\"}', 582262, 1, '2025-05-02 08:16:20'),
(18, 'previous_hash_placeholder', 'a135efd07fd125a37ae42c4692219c0e', '{\"transaction_id\":77,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Test Beli pakan\"}', 357780, 1, '2025-05-02 08:17:21'),
(19, 'previous_hash_placeholder', 'ee3467a9eb42e34b4cb69cb7fea87b10', '{\"transaction_id\":78,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":1000,\"description\":\"Test\"}', 313703, 1, '2025-05-02 08:17:41'),
(20, 'previous_hash_placeholder', '548747a1177faeece19234db2e075c37', '{\"transaction_id\":79,\"type\":\"expense\",\"from_farm_id\":\"4\",\"to_farm_id\":null,\"amount\":10000,\"description\":\"Pakan Sapi\"}', 456169, 1, '2025-05-02 08:18:56'),
(21, '548747a1177faeece19234db2e075c37', 'c2347daed8f63e9d22da79b7bd9c5050', '{\"type\":\"milk_sale\",\"farm_id\":\"4\",\"volume_liters\":1,\"price_per_liter\":5500,\"total_price\":5500,\"date\":\"2025-05-02\",\"buyer_name\":\"Toko Susu A\"}', 958288, 4, '2025-05-07 03:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `cattle`
--

CREATE TABLE `cattle` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `age_months` int(4) DEFAULT NULL,
  `category` enum('calf','young','adult') DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `health_status` enum('healthy','sick','recovered','quarantined','dead') DEFAULT 'healthy',
  `age` float DEFAULT NULL,
  `lactation` enum('Active','Inactive','Pregnant') DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cattle`
--

INSERT INTO `cattle` (`id`, `farm_id`, `birth_date`, `age_months`, `category`, `name`, `breed`, `gender`, `health_status`, `age`, `lactation`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, '2022-01-15', 39, 'adult', 'Sapi Putih Baru', 'Limousin', NULL, 'healthy', NULL, 'Active', 4, NULL, '2025-04-30 09:02:07', NULL),
(2, 4, '2024-01-15', 15, 'young', 'Sapi', 'Simmental', NULL, 'healthy', NULL, 'Pregnant', 4, 4, '2025-04-30 09:04:52', NULL),
(4, 4, '2024-04-30', 12, 'young', 'Cow 001', 'Test', NULL, 'healthy', NULL, 'Active', 4, 4, '2025-04-30 12:12:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `id` int(11) NOT NULL,
  `item_type` enum('cow','feed','vaccine','product') NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `from_farm_id` int(11) DEFAULT NULL,
  `to_farm_id` int(11) DEFAULT NULL,
  `from_location` varchar(100) DEFAULT NULL,
  `to_location` varchar(100) DEFAULT NULL,
  `dispatch_date` date NOT NULL,
  `dispatched_by` int(11) NOT NULL,
  `received_by` int(11) DEFAULT NULL,
  `status` enum('pending','in_transit','delivered','cancelled') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` enum('feed','vaccine','salary','maintenance','utilities','others') NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `weight_kg` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `wallet_transaction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `farm_id`, `date`, `type`, `description`, `amount`, `weight_kg`, `created_at`, `wallet_transaction_id`) VALUES
(1, 4, '2025-04-28', 'feed', 'Makanan Sapi', 50000.00, 100, '2025-05-01 13:39:59', 64),
(2, 4, '2025-05-02', 'feed', 'Trst', 1000.00, 1, '2025-05-02 08:08:17', 69),
(3, 4, '2025-05-02', 'feed', 'Pakan Sapi', 10000.00, 10, '2025-05-02 08:09:14', 70),
(4, 4, '2025-05-02', 'feed', 'Test', 1000.00, 1, '2025-05-02 08:10:21', 71),
(5, 4, '2025-05-02', 'feed', 'Test Pakan Sapi', 1000.00, 1, '2025-05-02 08:12:18', 72),
(6, 4, '2025-05-02', 'feed', 'Test Beli Pakan', 1000.00, 1, '2025-05-02 08:13:22', 73),
(7, 4, '2025-05-02', 'feed', 'Pakan Sapi', 1000.00, 1, '2025-05-02 08:15:32', 74),
(8, 4, '2025-05-02', 'feed', '1', 1000.00, 1, '2025-05-02 08:16:20', 76),
(9, 4, '2025-05-02', 'feed', 'Test Beli pakan', 1000.00, 1, '2025-05-02 08:17:21', 77),
(10, 4, '2025-05-02', 'feed', 'Test', 1000.00, 1, '2025-05-02 08:17:41', 78),
(11, 4, '2025-05-02', 'feed', 'Pakan Sapi', 10000.00, 10, '2025-05-02 08:18:56', 79);

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE `farms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `zone` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`id`, `name`, `zone`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Admin Farm', 0, 1, 1, '2025-04-30 07:02:26', '0000-00-00 00:00:00'),
(2, 'Farhan Farm', 0, 2, 2, '2025-04-30 07:02:26', '0000-00-00 00:00:00'),
(3, 'Firmansyah Farm', 0, 3, 3, '2025-04-30 07:02:48', '0000-00-00 00:00:00'),
(4, 'Supriyadi Farms', 0, 1, 1, '2025-04-30 08:56:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `farm_wallets`
--

CREATE TABLE `farm_wallets` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `balance` decimal(12,2) DEFAULT 0.00,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm_wallets`
--

INSERT INTO `farm_wallets` (`id`, `farm_id`, `balance`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 500000.00, 1, 1, '2025-04-30 08:51:35', '0000-00-00 00:00:00'),
(2, 2, 800000.00, 2, 2, '2025-04-30 08:51:43', '0000-00-00 00:00:00'),
(3, 3, 700000.00, 3, 3, '2025-04-30 08:51:52', '0000-00-00 00:00:00'),
(4, 4, 573000.00, 1, 1, '2025-04-30 08:57:10', '2025-04-30 08:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `id` int(11) NOT NULL,
  `cattle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` enum('morning','evening') NOT NULL,
  `session` enum('morning','evening') DEFAULT NULL,
  `feed_type` varchar(100) NOT NULL,
  `weight_kg` float DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed_inventory`
--

CREATE TABLE `feed_inventory` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `feed_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `feed_in` decimal(10,2) DEFAULT 0.00,
  `feed_out` decimal(10,2) DEFAULT 0.00,
  `feed_waste` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_blocks`
--

CREATE TABLE `inventory_blocks` (
  `id` int(11) NOT NULL,
  `previous_hash` varchar(255) DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `nonce` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_blocks`
--

INSERT INTO `inventory_blocks` (`id`, `previous_hash`, `hash`, `data`, `nonce`, `created_by`, `created_at`) VALUES
(1, NULL, '359399c2275f4ee774136cfc93e1a54b', '{\"action\":\"milk_in\",\"item\":\"Milk\",\"qty\":2,\"unit\":\"liter\",\"farm_id\":\"4\",\"date\":\"2025-04-30\",\"description\":\"Milk collected from cattle ID 1\"}', 552036, 4, '2025-04-30 09:10:01'),
(2, '359399c2275f4ee774136cfc93e1a54b', 'cee199067a81e602a2f05dae263e8d89', '{\"action\":\"milk_in\",\"item\":\"Milk\",\"qty\":1,\"unit\":\"liter\",\"farm_id\":\"4\",\"date\":\"2025-04-30\",\"description\":\"Milk collected from cattle ID 2\"}', 274823, 4, '2025-04-30 09:10:05'),
(3, 'cee199067a81e602a2f05dae263e8d89', 'fea541a84d297754b26a86efba098bea', '{\"action\":\"milk_in\",\"item\":\"Milk\",\"qty\":5,\"unit\":\"liter\",\"farm_id\":\"4\",\"date\":\"2025-04-30\",\"description\":\"Milk collected from cattle ID 4\"}', 889893, 4, '2025-04-30 12:37:26'),
(4, 'fea541a84d297754b26a86efba098bea', '5b56b8a90c16c992aaa5a731c2f1434b', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-01\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-01 13:35:44'),
(5, '5b56b8a90c16c992aaa5a731c2f1434b', '2dd356afa972091e5003d1c458685d2a', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-01\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-01 13:36:07'),
(6, '2dd356afa972091e5003d1c458685d2a', 'ab72b7e6f510138cd7d52024c1982030', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-01\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-01 13:36:58'),
(7, 'ab72b7e6f510138cd7d52024c1982030', '272285f988940fb1287a189ca19e50a2', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":100,\"unit\":\"kg\",\"date\":\"2025-04-28\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-01 13:39:59'),
(8, '272285f988940fb1287a189ca19e50a2', '9c7eef2756dd573c476a3f346fc76829', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-02\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-02 06:22:27'),
(9, '9c7eef2756dd573c476a3f346fc76829', '70aa628efcc835febc3de3c69fb7e53e', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-02\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-02 06:24:20'),
(10, '70aa628efcc835febc3de3c69fb7e53e', '80b37d7ab73da2b8ebafbfcdf8f542a0', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-02\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-02 06:48:02'),
(11, '80b37d7ab73da2b8ebafbfcdf8f542a0', 'ba788cebe57dabee878abd6fecb26b21', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-02\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-02 07:22:31'),
(12, 'ba788cebe57dabee878abd6fecb26b21', '5d4e68e35c1ad47acbb473cac9d76fcb', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:08:17'),
(13, '5d4e68e35c1ad47acbb473cac9d76fcb', '83954dc39c5275fab6237f2698b3543a', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":10,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:09:14'),
(14, '83954dc39c5275fab6237f2698b3543a', '5485c9cb536ee29b273f47a1e2a6cc81', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:10:21'),
(15, '5485c9cb536ee29b273f47a1e2a6cc81', '3bf46f26cf8aa05370316124a4878686', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:12:18'),
(16, '3bf46f26cf8aa05370316124a4878686', 'f33a519a79abc0391a5a67abaa6a5456', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:13:22'),
(17, 'f33a519a79abc0391a5a67abaa6a5456', '6078e538b6931010cd11761d8d5db4f0', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:15:32'),
(18, '6078e538b6931010cd11761d8d5db4f0', '27a32eb3fce508fbd60d4447929c17ad', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-02\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-02 08:16:04'),
(19, '27a32eb3fce508fbd60d4447929c17ad', 'c1733cc17479510fa0ce14ea809c88d6', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:16:20'),
(20, 'c1733cc17479510fa0ce14ea809c88d6', 'c666e250e5ab4a72c02d39b57421149b', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:17:21'),
(21, 'c666e250e5ab4a72c02d39b57421149b', '3eea8f268d267cce7a4e396975aacc00', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:17:41'),
(22, '3eea8f268d267cce7a4e396975aacc00', 'cd1cf5a6bf65c2a1bf5036bbc1077bb6', '{\"action\":\"feed_in\",\"farm_id\":\"4\",\"qty\":10,\"unit\":\"kg\",\"date\":\"2025-05-02\",\"description\":\"Feed purchased\"}', 0, 4, '2025-05-02 08:18:56'),
(23, 'cd1cf5a6bf65c2a1bf5036bbc1077bb6', 'd7ffc78cf535fe6e8cd3b6108d569104', '{\"action\":\"milk_in\",\"item\":\"Milk\",\"qty\":6,\"unit\":\"liter\",\"farm_id\":\"4\",\"date\":\"2025-05-02\",\"description\":\"Milk collected from cattle ID 1\"}', 843840, 4, '2025-05-02 12:06:03'),
(24, 'd7ffc78cf535fe6e8cd3b6108d569104', '26166bf5b0f3143657fd5254c0e04bb8', '{\"action\":\"milk_out\",\"farm_id\":\"4\",\"qty\":1,\"unit\":\"liter\",\"date\":\"2025-05-02\",\"description\":\"Milk sold\"}', 0, 4, '2025-05-07 03:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `investor_name` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `wallet_transaction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_payout_failed`
--

CREATE TABLE `investment_payout_failed` (
  `id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `expected_amount` double NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_programs`
--

CREATE TABLE `investment_programs` (
  `id` int(11) NOT NULL,
  `cattle_id` int(11) DEFAULT NULL,
  `average_milk_per_day` decimal(6,2) DEFAULT NULL,
  `milk_price_per_liter` decimal(10,2) DEFAULT NULL,
  `price_mode` enum('fixed','dynamic') DEFAULT 'fixed',
  `target_amount` decimal(15,2) DEFAULT NULL,
  `current_amount` decimal(15,2) DEFAULT 0.00,
  `total_investor` int(11) DEFAULT 0,
  `duration_months` int(11) DEFAULT NULL,
  `profit_share_investor` decimal(5,2) DEFAULT NULL,
  `profit_share_farmer` decimal(5,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `status` enum('open','closed','completed') DEFAULT 'open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_returns`
--

CREATE TABLE `investment_returns` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `return_amount` decimal(15,2) DEFAULT NULL,
  `paid_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_transactions`
--

CREATE TABLE `investment_transactions` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `investor_id` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `return_amount` decimal(15,2) DEFAULT 0.00,
  `status` varchar(30) NOT NULL DEFAULT 'ongoing',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ir_evaluations`
--

CREATE TABLE `ir_evaluations` (
  `id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `query` text DEFAULT NULL,
  `prec` float DEFAULT NULL,
  `recall` float DEFAULT NULL,
  `f1_score` float DEFAULT NULL,
  `accuracy` float DEFAULT NULL,
  `waktu` float DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ir_evaluations`
--

INSERT INTO `ir_evaluations` (`id`, `model`, `query`, `prec`, `recall`, `f1_score`, `accuracy`, `waktu`, `timestamp`) VALUES
(1, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 2.43757, '2025-05-09 11:06:32'),
(2, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 1.8679, '2025-05-09 11:06:52'),
(3, 'TF-IDF Only', 'Harga susu di Jawa Tengah?', 0.2, 1, 0.333333, 0.995776, 1.72573, '2025-05-09 11:07:03'),
(4, 'TinyBERT Only', 'Harga susu di Jawa Tengah?', 1, 0.00527983, 0.0105042, 0.00527983, 2.14297, '2025-05-09 11:07:11'),
(5, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 1.83599, '2025-05-09 11:08:46'),
(6, 'TF-IDF Only', 'Harga susu di Jawa Tengah?', 0.2, 1, 0.333333, 0.995776, 1.73472, '2025-05-09 11:09:32'),
(7, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 2.40763, '2025-05-09 11:09:47'),
(8, 'TinyBERT Only', 'Harga susu di Jawa Tengah?', 1, 0.00527983, 0.0105042, 0.00527983, 1.89687, '2025-05-09 11:10:14'),
(9, 'TinyBERT Only', 'Harga susu di Jawa Tengah?', 1, 0.00527983, 0.0105042, 0.00527983, 1.90087, '2025-05-09 11:13:03'),
(10, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 1.82541, '2025-05-09 11:23:08'),
(11, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 2.12999, '2025-05-09 11:36:59'),
(12, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 2.26053, '2025-05-09 11:38:11'),
(13, 'TF-IDF + TinyBERT', 'Harga susu di Jawa Tengah?', 1, 0.15625, 0.27027, 0.971489, 1.95449, '2025-05-13 08:44:03'),
(14, 'TinyBERT Only', 'Harga susu di Jawa Tengah?', 1, 0.00527983, 0.0105042, 0.00527983, 1.60976, '2025-05-13 09:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `ir_results`
--

CREATE TABLE `ir_results` (
  `id` int(11) NOT NULL,
  `query_id` int(11) DEFAULT NULL,
  `milk_reference_id` int(11) DEFAULT NULL,
  `score_tfidf` float DEFAULT NULL,
  `score_bert` float DEFAULT NULL,
  `score_fusion` float DEFAULT NULL,
  `label_manual` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masti_scan`
--

CREATE TABLE `masti_scan` (
  `id` int(11) NOT NULL,
  `cattle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `visc_FR` float DEFAULT NULL,
  `visc_FL` float DEFAULT NULL,
  `visc_BR` float DEFAULT NULL,
  `visc_BL` float DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `milk_input`
--

CREATE TABLE `milk_input` (
  `id` int(11) NOT NULL,
  `cattle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `milk_input`
--

INSERT INTO `milk_input` (`id`, `cattle_id`, `date`, `amount`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(21, 1, '2025-04-30', 2, 4, NULL, '2025-04-30 09:10:01', NULL),
(22, 2, '2025-04-30', 1, 4, NULL, '2025-04-30 09:10:05', NULL),
(23, 4, '2025-04-30', 5, 4, NULL, '2025-04-30 12:37:26', NULL),
(24, 1, '2025-05-02', 6, 4, NULL, '2025-05-02 12:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `milk_inventory`
--

CREATE TABLE `milk_inventory` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `milk_in` decimal(10,2) DEFAULT 0.00,
  `milk_out` decimal(10,2) DEFAULT 0.00,
  `milk_waste` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `milk_reference`
--

CREATE TABLE `milk_reference` (
  `id` int(11) NOT NULL,
  `wilayah` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `sumber` text DEFAULT NULL,
  `source_type` enum('news','internal','survey','other') DEFAULT 'news',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `harga_normalisasi` int(11) DEFAULT NULL,
  `embedding_bert` blob DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `voice_url` text DEFAULT NULL,
  `ocr_text` text DEFAULT NULL,
  `transcript_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milk_reference`
--

INSERT INTO `milk_reference` (`id`, `wilayah`, `tanggal`, `harga`, `unit`, `sumber`, `source_type`, `created_at`, `harga_normalisasi`, `embedding_bert`, `description`, `image_url`, `voice_url`, `ocr_text`, `transcript_text`) VALUES
(1, 'Boyolali', '2024-11-12', 7000, NULL, 'https://tempo.co/boyolali', 'internal', '2025-05-02 06:14:55', NULL, NULL, 'Harga susu sapi perah di Jawa Tengah rata-rata Rp7.000 per liter', NULL, NULL, '', ''),
(2, 'Pasuruan', '2024-11-01', 7300, NULL, 'https://radarbromo.com/pasuruan', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Jateng', '2024-10-27', 6900, NULL, 'https://lampost.co/jateng', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Jatim', '2024-11-01', 6000, NULL, 'https://timesindonesia.co.id/jatim', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Jabar', '2024-11-03', 6000, NULL, 'https://bisnis.com/jabar', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Nasional', '2024-09-27', 6000, NULL, 'https://kabarbursa.com/nasional', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Batu', '2024-11-05', 7100, NULL, 'https://beritabatu.com', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Lembang', '2024-10-25', 7200, NULL, 'https://lembangupdate.id', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Subang', '2024-11-07', 7150, NULL, 'https://subangnews.id', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Garut', '2024-11-08', 7050, NULL, 'https://garutonline.id', 'internal', '2025-05-02 06:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Boyolali', '2025-05-02', 5500, NULL, 'milk_sale_transaction_id_4', 'internal', '2025-05-02 06:22:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Boyolali', '2025-05-02', 5500, NULL, 'milk_sale_transaction_id_5', 'internal', '2025-05-02 06:24:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Boyolali', '2025-05-02', 6000, NULL, 'milk_sale_transaction_id_6', 'internal', '2025-05-02 06:48:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Boyolali', '2025-05-02', 6000, NULL, 'milk_sale_transaction_id_7', 'internal', '2025-05-02 07:22:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Boyolali', '2025-05-02', 6000, NULL, 'milk_sale_transaction_id_8', 'internal', '2025-05-02 08:16:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Jawa Tengah', NULL, 7000, NULL, 'Berita Peternakan', 'news', '2025-05-05 05:40:31', NULL, NULL, 'Harga susu sapi perah di Jawa Tengah naik menjadi Rp7000/liter bulan ini.', NULL, NULL, NULL, NULL),
(17, 'Jawa Barat', NULL, 6800, NULL, 'Laporan Dinas', '', '2025-05-05 05:40:31', NULL, NULL, 'Menurut laporan dinas peternakan, harga susu di Bandung sekitar Rp6800/liter.', NULL, NULL, NULL, NULL),
(18, 'NTB', NULL, 7200, NULL, 'Peternak Langsung', '', '2025-05-05 05:40:31', NULL, NULL, '', NULL, NULL, NULL, 'Susu sekarang 7200 per liter di Lombok, kata peternak.'),
(19, 'DIY', NULL, 6900, NULL, 'Katalog Pasar', '', '2025-05-05 05:40:31', NULL, NULL, '', NULL, NULL, 'Harga: Rp6900/liter - Pasar Peternakan DIY', NULL),
(20, 'Sumatera Barat', NULL, 6600, NULL, 'Laporan Harga', '', '2025-05-05 05:40:31', NULL, NULL, 'Di Bukittinggi, harga susu Rp6600 per liter untuk sapi perah lokal.', NULL, NULL, NULL, NULL),
(21, 'Bali', NULL, 7100, NULL, 'Peternak Mandiri', '', '2025-05-05 05:40:31', NULL, NULL, '', NULL, NULL, NULL, 'Harga susu naik jadi tujuh ribu seratus per liter'),
(22, 'Jawa Timur', NULL, 6750, NULL, 'Data Survey', 'news', '2025-05-05 05:40:31', NULL, NULL, 'Hasil survei menyatakan harga susu di Malang Rp6750/liter.', NULL, NULL, NULL, NULL),
(23, 'Sulawesi Selatan', NULL, 6400, NULL, 'Pasar Rakyat', '', '2025-05-05 05:40:31', NULL, NULL, '', NULL, NULL, 'Rp6400/liter - Harga Pasar Makassar', NULL),
(24, 'Kalimantan Barat', NULL, 6850, NULL, 'Voice Call', '', '2025-05-05 05:40:31', NULL, NULL, '', NULL, NULL, NULL, 'Peternak kami menjual susu Rp6850 perliter di Pontianak.'),
(25, 'Papua', NULL, 7500, NULL, 'Program Subsidi', 'news', '2025-05-05 05:40:31', NULL, NULL, 'Subsidi pemerintah menaikkan harga susu jadi Rp7500/liter di Papua.', NULL, NULL, NULL, NULL),
(26, 'Jawa Barat', NULL, 5500, NULL, 'Internal', 'news', '2025-05-05 09:37:57', NULL, NULL, NULL, '', '', NULL, NULL),
(27, 'Boyolali', '2025-05-02', 5500, NULL, 'milk_sale_transaction_id_9', 'internal', '2025-05-07 03:16:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Bali', NULL, 8765, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(29, 'Lampung', NULL, 5543, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(30, 'Jawa Tengah', NULL, 5997, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(31, 'Jawa Timur', NULL, 5070, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(32, 'Bali', NULL, 6945, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(33, 'Kalimantan Barat', NULL, 6873, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(34, 'Bali', NULL, 9015, NULL, 'Harian Ternak', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(35, 'Bali', NULL, 8610, NULL, 'Kompas', 'news', '2025-05-09 06:56:47', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(36, 'Jawa Timur', NULL, 7306, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(37, 'Sumatra Utara', NULL, 8187, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(38, 'Jawa Tengah', NULL, 5552, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(39, 'Lampung', NULL, 7278, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(40, 'Jawa Timur', NULL, 9557, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(41, 'Jawa Tengah', NULL, 6331, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(42, 'NTB', NULL, 6448, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(43, 'Kalimantan Barat', NULL, 9140, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(44, 'Sulawesi Selatan', NULL, 7580, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(45, 'Sulawesi Selatan', NULL, 8905, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(46, 'NTB', NULL, 7466, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(47, 'Jawa Tengah', NULL, 5733, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(48, 'Jawa Barat', NULL, 7773, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(49, 'Bali', NULL, 7538, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(50, 'Bali', NULL, 6168, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(51, 'Kalimantan Barat', NULL, 8510, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(52, 'Jawa Barat', NULL, 7812, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(53, 'Bali', NULL, 6748, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(54, 'Sumatra Utara', NULL, 6320, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(55, 'Jawa Timur', NULL, 5795, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(56, 'NTB', NULL, 9471, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(57, 'Sulawesi Selatan', NULL, 9999, NULL, 'Harian Ternak', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(58, 'Bali', NULL, 5129, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(59, 'Jawa Barat', NULL, 5354, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(60, 'Sumatra Utara', NULL, 6230, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(61, 'Sulawesi Selatan', NULL, 5437, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(62, 'Jawa Tengah', NULL, 5381, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(63, 'Jawa Barat', NULL, 8856, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(64, 'Jawa Tengah', NULL, 7285, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(65, 'Sumatra Utara', NULL, 6783, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(66, 'Jawa Barat', NULL, 6636, NULL, 'PeternakanNews', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(67, 'Bali', NULL, 6522, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(68, 'Jawa Timur', NULL, 6016, NULL, 'Harian Ternak', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(69, 'Lampung', NULL, 5152, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(70, 'NTB', NULL, 9351, NULL, 'Kompas', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(71, 'Kalimantan Barat', NULL, 6361, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(72, 'Sulawesi Selatan', NULL, 9091, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(73, 'Sulawesi Selatan', NULL, 8066, NULL, 'Harian Ternak', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(74, 'Sumatra Utara', NULL, 7741, NULL, 'PortalHarga', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(75, 'NTB', NULL, 7444, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(76, 'Lampung', NULL, 7649, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(77, 'Kalimantan Barat', NULL, 6811, NULL, 'Detik', 'news', '2025-05-09 06:56:48', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(78, 'Bali', NULL, 8765, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(79, 'Lampung', NULL, 5543, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(80, 'Jawa Tengah', NULL, 5997, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(81, 'Jawa Timur', NULL, 5070, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(82, 'Bali', NULL, 6945, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(83, 'Kalimantan Barat', NULL, 6873, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(84, 'Bali', NULL, 9015, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(85, 'Bali', NULL, 8610, NULL, 'Kompas', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(86, 'Jawa Timur', NULL, 7306, NULL, 'Detik', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(87, 'Sumatra Utara', NULL, 8187, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(88, 'Jawa Tengah', NULL, 5552, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(89, 'Lampung', NULL, 7278, NULL, 'Kompas', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(90, 'Jawa Timur', NULL, 9557, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(91, 'Jawa Tengah', NULL, 6331, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(92, 'NTB', NULL, 6448, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(93, 'Kalimantan Barat', NULL, 9140, NULL, 'Kompas', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(94, 'Sulawesi Selatan', NULL, 7580, NULL, 'Detik', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(95, 'Sulawesi Selatan', NULL, 8905, NULL, 'Kompas', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(96, 'NTB', NULL, 7466, NULL, 'Kompas', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(97, 'Jawa Tengah', NULL, 5733, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(98, 'Jawa Barat', NULL, 7773, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(99, 'Bali', NULL, 7538, NULL, 'Kompas', 'news', '2025-05-09 06:57:04', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(100, 'Bali', NULL, 6168, NULL, 'Kompas', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(101, 'Kalimantan Barat', NULL, 8510, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(102, 'Jawa Barat', NULL, 7812, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(103, 'Bali', NULL, 6748, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(104, 'Sumatra Utara', NULL, 6320, NULL, 'Detik', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(105, 'Jawa Timur', NULL, 5795, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(106, 'NTB', NULL, 9471, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(107, 'Sulawesi Selatan', NULL, 9999, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(108, 'Bali', NULL, 5129, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(109, 'Jawa Barat', NULL, 5354, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(110, 'Sumatra Utara', NULL, 6230, NULL, 'Detik', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(111, 'Sulawesi Selatan', NULL, 5437, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(112, 'Jawa Tengah', NULL, 5381, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(113, 'Jawa Barat', NULL, 8856, NULL, 'Kompas', 'news', '2025-05-09 06:57:05', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(114, 'Jawa Tengah', NULL, 7285, NULL, 'Detik', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(115, 'Sumatra Utara', NULL, 6783, NULL, 'Kompas', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(116, 'Jawa Barat', NULL, 6636, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(117, 'Bali', NULL, 6522, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(118, 'Jawa Timur', NULL, 6016, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(119, 'Lampung', NULL, 5152, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(120, 'NTB', NULL, 9351, NULL, 'Kompas', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(121, 'Kalimantan Barat', NULL, 6361, NULL, 'Detik', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(122, 'Sulawesi Selatan', NULL, 9091, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(123, 'Sulawesi Selatan', NULL, 8066, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(124, 'Sumatra Utara', NULL, 7741, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(125, 'NTB', NULL, 7444, NULL, 'Detik', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(126, 'Lampung', NULL, 7649, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(127, 'Kalimantan Barat', NULL, 6811, NULL, 'Detik', 'news', '2025-05-09 06:57:05', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(128, 'Bali', NULL, 8765, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:09', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(129, 'Lampung', NULL, 5543, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:09', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(130, 'Jawa Tengah', NULL, 5997, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:09', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(131, 'Jawa Timur', NULL, 5070, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:09', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(132, 'Bali', NULL, 6945, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(133, 'Kalimantan Barat', NULL, 6873, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(134, 'Bali', NULL, 9015, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(135, 'Bali', NULL, 8610, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(136, 'Jawa Timur', NULL, 7306, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(137, 'Sumatra Utara', NULL, 8187, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(138, 'Jawa Tengah', NULL, 5552, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(139, 'Lampung', NULL, 7278, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(140, 'Jawa Timur', NULL, 9557, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(141, 'Jawa Tengah', NULL, 6331, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(142, 'NTB', NULL, 6448, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(143, 'Kalimantan Barat', NULL, 9140, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(144, 'Sulawesi Selatan', NULL, 7580, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(145, 'Sulawesi Selatan', NULL, 8905, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(146, 'NTB', NULL, 7466, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(147, 'Jawa Tengah', NULL, 5733, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(148, 'Jawa Barat', NULL, 7773, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(149, 'Bali', NULL, 7538, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(150, 'Bali', NULL, 6168, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(151, 'Kalimantan Barat', NULL, 8510, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(152, 'Jawa Barat', NULL, 7812, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(153, 'Bali', NULL, 6748, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(154, 'Sumatra Utara', NULL, 6320, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(155, 'Jawa Timur', NULL, 5795, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(156, 'NTB', NULL, 9471, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(157, 'Sulawesi Selatan', NULL, 9999, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(158, 'Bali', NULL, 5129, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(159, 'Jawa Barat', NULL, 5354, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(160, 'Sumatra Utara', NULL, 6230, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(161, 'Sulawesi Selatan', NULL, 5437, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(162, 'Jawa Tengah', NULL, 5381, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(163, 'Jawa Barat', NULL, 8856, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(164, 'Jawa Tengah', NULL, 7285, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(165, 'Sumatra Utara', NULL, 6783, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(166, 'Jawa Barat', NULL, 6636, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(167, 'Bali', NULL, 6522, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(168, 'Jawa Timur', NULL, 6016, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(169, 'Lampung', NULL, 5152, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(170, 'NTB', NULL, 9351, NULL, 'Kompas', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(171, 'Kalimantan Barat', NULL, 6361, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(172, 'Sulawesi Selatan', NULL, 9091, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(173, 'Sulawesi Selatan', NULL, 8066, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(174, 'Sumatra Utara', NULL, 7741, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(175, 'NTB', NULL, 7444, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(176, 'Lampung', NULL, 7649, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(177, 'Kalimantan Barat', NULL, 6811, NULL, 'Detik', 'news', '2025-05-09 06:57:10', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(178, 'Bali', NULL, 8765, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(179, 'Lampung', NULL, 5543, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(180, 'Jawa Tengah', NULL, 5997, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(181, 'Jawa Timur', NULL, 5070, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(182, 'Bali', NULL, 6945, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(183, 'Kalimantan Barat', NULL, 6873, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(184, 'Bali', NULL, 9015, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(185, 'Bali', NULL, 8610, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(186, 'Jawa Timur', NULL, 7306, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(187, 'Sumatra Utara', NULL, 8187, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(188, 'Jawa Tengah', NULL, 5552, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(189, 'Lampung', NULL, 7278, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(190, 'Jawa Timur', NULL, 9557, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(191, 'Jawa Tengah', NULL, 6331, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(192, 'NTB', NULL, 6448, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(193, 'Kalimantan Barat', NULL, 9140, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(194, 'Sulawesi Selatan', NULL, 7580, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(195, 'Sulawesi Selatan', NULL, 8905, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(196, 'NTB', NULL, 7466, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(197, 'Jawa Tengah', NULL, 5733, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(198, 'Jawa Barat', NULL, 7773, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(199, 'Bali', NULL, 7538, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(200, 'Bali', NULL, 6168, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(201, 'Kalimantan Barat', NULL, 8510, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(202, 'Jawa Barat', NULL, 7812, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(203, 'Bali', NULL, 6748, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(204, 'Sumatra Utara', NULL, 6320, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(205, 'Jawa Timur', NULL, 5795, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(206, 'NTB', NULL, 9471, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(207, 'Sulawesi Selatan', NULL, 9999, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(208, 'Bali', NULL, 5129, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(209, 'Jawa Barat', NULL, 5354, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(210, 'Sumatra Utara', NULL, 6230, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(211, 'Sulawesi Selatan', NULL, 5437, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(212, 'Jawa Tengah', NULL, 5381, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(213, 'Jawa Barat', NULL, 8856, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(214, 'Jawa Tengah', NULL, 7285, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(215, 'Sumatra Utara', NULL, 6783, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(216, 'Jawa Barat', NULL, 6636, NULL, 'PeternakanNews', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(217, 'Bali', NULL, 6522, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(218, 'Jawa Timur', NULL, 6016, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(219, 'Lampung', NULL, 5152, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(220, 'NTB', NULL, 9351, NULL, 'Kompas', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(221, 'Kalimantan Barat', NULL, 6361, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(222, 'Sulawesi Selatan', NULL, 9091, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(223, 'Sulawesi Selatan', NULL, 8066, NULL, 'Harian Ternak', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(224, 'Sumatra Utara', NULL, 7741, NULL, 'PortalHarga', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(225, 'NTB', NULL, 7444, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(226, 'Lampung', NULL, 7649, NULL, 'BeritaSusu.id', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(227, 'Kalimantan Barat', NULL, 6811, NULL, 'Detik', 'news', '2025-05-09 06:57:15', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(228, 'NTB', NULL, 8001, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 8001 rupiah. Aliquid nulla itaque at consequuntur facere minima vitae.', NULL, NULL, NULL, NULL),
(229, 'Jawa Tengah', NULL, 9944, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Jawa Tengah menjual susu dengan harga fluktuatif. Eius maxime repellat hic asperiores libero.', NULL, NULL, NULL, NULL),
(230, 'Sumatra Barat', NULL, 7246, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Sumatra Barat menjual susu dengan harga fluktuatif. Voluptate odit illum quas maiores quibusdam.', NULL, NULL, NULL, NULL),
(231, 'Jawa Tengah', NULL, 8217, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Debitis vel dolorum quas.', NULL, NULL, NULL, NULL),
(232, 'Lampung', NULL, 6088, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Harga susu di Lampung mengalami kenaikan. Itaque veniam corrupti quo.', NULL, NULL, NULL, NULL),
(233, 'Bali', NULL, 10877, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 10877 rupiah. Esse culpa possimus fuga minus cupiditate tenetur.', NULL, NULL, NULL, NULL),
(234, 'Sumatra Barat', NULL, 6348, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke Sumatra Barat terganggu karena cuaca. Dolorem adipisci officia eum ipsa repellendus corrupti quaerat.', NULL, NULL, NULL, NULL),
(235, 'Lampung', NULL, 10565, 'liter', 'Detik', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 10565 rupiah. Provident doloribus eos.', NULL, NULL, NULL, NULL),
(236, 'Bali', NULL, 7076, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 7076 rupiah. Quos voluptate cumque quo id dignissimos sint.', NULL, NULL, NULL, NULL),
(237, 'Kalimantan Selatan', NULL, 7209, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Harga susu di Kalimantan Selatan mengalami kenaikan. Velit recusandae eum blanditiis.', NULL, NULL, NULL, NULL),
(238, 'Bali', NULL, 8181, 'liter', 'Kompas', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Provident quam neque hic error aspernatur aspernatur fugit.', NULL, NULL, NULL, NULL),
(239, 'Kalimantan Selatan', NULL, 10727, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke Kalimantan Selatan terganggu karena cuaca. Nulla sequi odit alias natus facere veritatis maiores.', NULL, NULL, NULL, NULL),
(240, 'Bali', NULL, 6055, 'liter', 'Kompas', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Ea consequatur culpa reiciendis sit exercitationem.', NULL, NULL, NULL, NULL),
(241, 'Jawa Tengah', NULL, 7639, 'kg', 'Kompas', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Harga susu di Jawa Tengah mengalami kenaikan. Minima eveniet soluta ut quos nihil.', NULL, NULL, NULL, NULL),
(242, 'NTB', NULL, 9812, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 9812 rupiah. Dolor ipsam accusantium.', NULL, NULL, NULL, NULL),
(243, 'Jawa Tengah', NULL, 10757, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Voluptatibus dolores placeat iure cumque ipsam mollitia.', NULL, NULL, NULL, NULL),
(244, 'NTB', NULL, 9756, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di NTB menjual susu dengan harga fluktuatif. Occaecati harum quam sequi quibusdam.', NULL, NULL, NULL, NULL),
(245, 'Sumatra Barat', NULL, 10472, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per kg di Sumatra Barat kini dijual seharga 10472 rupiah. Accusantium unde commodi fugiat deserunt autem nisi.', NULL, NULL, NULL, NULL),
(246, 'Kalimantan Selatan', NULL, 9408, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Kalimantan Selatan menjual susu dengan harga fluktuatif. Modi provident facere est hic aperiam.', NULL, NULL, NULL, NULL),
(247, 'Sumatra Barat', NULL, 9981, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per liter di Sumatra Barat kini dijual seharga 9981 rupiah. Officiis hic quae omnis dolor ipsa.', NULL, NULL, NULL, NULL),
(248, 'Kalimantan Selatan', NULL, 8429, 'liter', 'Detik', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Peternakan di Kalimantan Selatan melaporkan produksi susu menurun. Doloribus nihil nam praesentium quasi.', NULL, NULL, NULL, NULL),
(249, 'Jawa Tengah', NULL, 10510, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Corrupti corrupti id rem.', NULL, NULL, NULL, NULL),
(250, 'Jawa Barat', NULL, 10857, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Peternakan di Jawa Barat melaporkan produksi susu menurun. Deleniti ab enim iure.', NULL, NULL, NULL, NULL),
(251, 'Jawa Timur', NULL, 10949, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Jawa Timur menjual susu dengan harga fluktuatif. Itaque porro incidunt consequuntur nesciunt odit adipisci.', NULL, NULL, NULL, NULL),
(252, 'Jawa Timur', NULL, 10807, 'kg', 'BeritaSusu', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Peternakan di Jawa Timur melaporkan produksi susu menurun. Delectus necessitatibus quo non quod.', NULL, NULL, NULL, NULL),
(253, 'Lampung', NULL, 6681, 'liter', 'Kompas', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 6681 rupiah. Voluptates veritatis pariatur iure distinctio.', NULL, NULL, NULL, NULL),
(254, 'NTB', NULL, 8893, 'kg', 'Detik', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke NTB terganggu karena cuaca. Similique debitis voluptates.', NULL, NULL, NULL, NULL),
(255, 'Bali', NULL, 9374, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Distribusi susu segar ke Bali terganggu karena cuaca. Blanditiis deserunt alias harum magnam earum.', NULL, NULL, NULL, NULL),
(256, 'Jawa Barat', NULL, 7841, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Susu sapi per liter di Jawa Barat kini dijual seharga 7841 rupiah. Porro rerum dolor deleniti aspernatur.', NULL, NULL, NULL, NULL),
(257, 'Lampung', NULL, 9429, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:01', NULL, NULL, 'Pedagang di Lampung menjual susu dengan harga fluktuatif. Eligendi facilis provident vel hic placeat.', NULL, NULL, NULL, NULL);
INSERT INTO `milk_reference` (`id`, `wilayah`, `tanggal`, `harga`, `unit`, `sumber`, `source_type`, `created_at`, `harga_normalisasi`, `embedding_bert`, `description`, `image_url`, `voice_url`, `ocr_text`, `transcript_text`) VALUES
(258, 'NTB', NULL, 8001, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 8001 rupiah. Aliquid nulla itaque at consequuntur facere minima vitae.', NULL, NULL, NULL, NULL),
(259, 'Jawa Tengah', NULL, 9944, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Pedagang di Jawa Tengah menjual susu dengan harga fluktuatif. Eius maxime repellat hic asperiores libero.', NULL, NULL, NULL, NULL),
(260, 'Sumatra Barat', NULL, 7246, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Pedagang di Sumatra Barat menjual susu dengan harga fluktuatif. Voluptate odit illum quas maiores quibusdam.', NULL, NULL, NULL, NULL),
(261, 'Jawa Tengah', NULL, 8217, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Debitis vel dolorum quas.', NULL, NULL, NULL, NULL),
(262, 'Lampung', NULL, 6088, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Harga susu di Lampung mengalami kenaikan. Itaque veniam corrupti quo.', NULL, NULL, NULL, NULL),
(263, 'Bali', NULL, 10877, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 10877 rupiah. Esse culpa possimus fuga minus cupiditate tenetur.', NULL, NULL, NULL, NULL),
(264, 'Sumatra Barat', NULL, 6348, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Distribusi susu segar ke Sumatra Barat terganggu karena cuaca. Dolorem adipisci officia eum ipsa repellendus corrupti quaerat.', NULL, NULL, NULL, NULL),
(265, 'Lampung', NULL, 10565, 'liter', 'Detik', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 10565 rupiah. Provident doloribus eos.', NULL, NULL, NULL, NULL),
(266, 'Bali', NULL, 7076, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 7076 rupiah. Quos voluptate cumque quo id dignissimos sint.', NULL, NULL, NULL, NULL),
(267, 'Kalimantan Selatan', NULL, 7209, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:12', NULL, NULL, 'Harga susu di Kalimantan Selatan mengalami kenaikan. Velit recusandae eum blanditiis.', NULL, NULL, NULL, NULL),
(268, 'Bali', NULL, 8181, 'liter', 'Kompas', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Provident quam neque hic error aspernatur aspernatur fugit.', NULL, NULL, NULL, NULL),
(269, 'Kalimantan Selatan', NULL, 10727, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Distribusi susu segar ke Kalimantan Selatan terganggu karena cuaca. Nulla sequi odit alias natus facere veritatis maiores.', NULL, NULL, NULL, NULL),
(270, 'Bali', NULL, 6055, 'liter', 'Kompas', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Ea consequatur culpa reiciendis sit exercitationem.', NULL, NULL, NULL, NULL),
(271, 'Jawa Tengah', NULL, 7639, 'kg', 'Kompas', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Harga susu di Jawa Tengah mengalami kenaikan. Minima eveniet soluta ut quos nihil.', NULL, NULL, NULL, NULL),
(272, 'NTB', NULL, 9812, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 9812 rupiah. Dolor ipsam accusantium.', NULL, NULL, NULL, NULL),
(273, 'Jawa Tengah', NULL, 10757, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Voluptatibus dolores placeat iure cumque ipsam mollitia.', NULL, NULL, NULL, NULL),
(274, 'NTB', NULL, 9756, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Pedagang di NTB menjual susu dengan harga fluktuatif. Occaecati harum quam sequi quibusdam.', NULL, NULL, NULL, NULL),
(275, 'Sumatra Barat', NULL, 10472, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Susu sapi per kg di Sumatra Barat kini dijual seharga 10472 rupiah. Accusantium unde commodi fugiat deserunt autem nisi.', NULL, NULL, NULL, NULL),
(276, 'Kalimantan Selatan', NULL, 9408, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Pedagang di Kalimantan Selatan menjual susu dengan harga fluktuatif. Modi provident facere est hic aperiam.', NULL, NULL, NULL, NULL),
(277, 'Sumatra Barat', NULL, 9981, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Susu sapi per liter di Sumatra Barat kini dijual seharga 9981 rupiah. Officiis hic quae omnis dolor ipsa.', NULL, NULL, NULL, NULL),
(278, 'Kalimantan Selatan', NULL, 8429, 'liter', 'Detik', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Peternakan di Kalimantan Selatan melaporkan produksi susu menurun. Doloribus nihil nam praesentium quasi.', NULL, NULL, NULL, NULL),
(279, 'Jawa Tengah', NULL, 10510, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Corrupti corrupti id rem.', NULL, NULL, NULL, NULL),
(280, 'Jawa Barat', NULL, 10857, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Peternakan di Jawa Barat melaporkan produksi susu menurun. Deleniti ab enim iure.', NULL, NULL, NULL, NULL),
(281, 'Jawa Timur', NULL, 10949, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Pedagang di Jawa Timur menjual susu dengan harga fluktuatif. Itaque porro incidunt consequuntur nesciunt odit adipisci.', NULL, NULL, NULL, NULL),
(282, 'Jawa Timur', NULL, 10807, 'kg', 'BeritaSusu', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Peternakan di Jawa Timur melaporkan produksi susu menurun. Delectus necessitatibus quo non quod.', NULL, NULL, NULL, NULL),
(283, 'Lampung', NULL, 6681, 'liter', 'Kompas', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 6681 rupiah. Voluptates veritatis pariatur iure distinctio.', NULL, NULL, NULL, NULL),
(284, 'NTB', NULL, 8893, 'kg', 'Detik', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Distribusi susu segar ke NTB terganggu karena cuaca. Similique debitis voluptates.', NULL, NULL, NULL, NULL),
(285, 'Bali', NULL, 9374, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Distribusi susu segar ke Bali terganggu karena cuaca. Blanditiis deserunt alias harum magnam earum.', NULL, NULL, NULL, NULL),
(286, 'Jawa Barat', NULL, 7841, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Susu sapi per liter di Jawa Barat kini dijual seharga 7841 rupiah. Porro rerum dolor deleniti aspernatur.', NULL, NULL, NULL, NULL),
(287, 'Lampung', NULL, 9429, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:13', NULL, NULL, 'Pedagang di Lampung menjual susu dengan harga fluktuatif. Eligendi facilis provident vel hic placeat.', NULL, NULL, NULL, NULL),
(288, 'NTB', NULL, 8001, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 8001 rupiah. Aliquid nulla itaque at consequuntur facere minima vitae.', NULL, NULL, NULL, NULL),
(289, 'Jawa Tengah', NULL, 9944, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Jawa Tengah menjual susu dengan harga fluktuatif. Eius maxime repellat hic asperiores libero.', NULL, NULL, NULL, NULL),
(290, 'Sumatra Barat', NULL, 7246, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Sumatra Barat menjual susu dengan harga fluktuatif. Voluptate odit illum quas maiores quibusdam.', NULL, NULL, NULL, NULL),
(291, 'Jawa Tengah', NULL, 8217, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Debitis vel dolorum quas.', NULL, NULL, NULL, NULL),
(292, 'Lampung', NULL, 6088, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Harga susu di Lampung mengalami kenaikan. Itaque veniam corrupti quo.', NULL, NULL, NULL, NULL),
(293, 'Bali', NULL, 10877, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 10877 rupiah. Esse culpa possimus fuga minus cupiditate tenetur.', NULL, NULL, NULL, NULL),
(294, 'Sumatra Barat', NULL, 6348, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke Sumatra Barat terganggu karena cuaca. Dolorem adipisci officia eum ipsa repellendus corrupti quaerat.', NULL, NULL, NULL, NULL),
(295, 'Lampung', NULL, 10565, 'liter', 'Detik', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 10565 rupiah. Provident doloribus eos.', NULL, NULL, NULL, NULL),
(296, 'Bali', NULL, 7076, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 7076 rupiah. Quos voluptate cumque quo id dignissimos sint.', NULL, NULL, NULL, NULL),
(297, 'Kalimantan Selatan', NULL, 7209, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Harga susu di Kalimantan Selatan mengalami kenaikan. Velit recusandae eum blanditiis.', NULL, NULL, NULL, NULL),
(298, 'Bali', NULL, 8181, 'liter', 'Kompas', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Provident quam neque hic error aspernatur aspernatur fugit.', NULL, NULL, NULL, NULL),
(299, 'Kalimantan Selatan', NULL, 10727, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke Kalimantan Selatan terganggu karena cuaca. Nulla sequi odit alias natus facere veritatis maiores.', NULL, NULL, NULL, NULL),
(300, 'Bali', NULL, 6055, 'liter', 'Kompas', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Ea consequatur culpa reiciendis sit exercitationem.', NULL, NULL, NULL, NULL),
(301, 'Jawa Tengah', NULL, 7639, 'kg', 'Kompas', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Harga susu di Jawa Tengah mengalami kenaikan. Minima eveniet soluta ut quos nihil.', NULL, NULL, NULL, NULL),
(302, 'NTB', NULL, 9812, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 9812 rupiah. Dolor ipsam accusantium.', NULL, NULL, NULL, NULL),
(303, 'Jawa Tengah', NULL, 10757, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Voluptatibus dolores placeat iure cumque ipsam mollitia.', NULL, NULL, NULL, NULL),
(304, 'NTB', NULL, 9756, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di NTB menjual susu dengan harga fluktuatif. Occaecati harum quam sequi quibusdam.', NULL, NULL, NULL, NULL),
(305, 'Sumatra Barat', NULL, 10472, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per kg di Sumatra Barat kini dijual seharga 10472 rupiah. Accusantium unde commodi fugiat deserunt autem nisi.', NULL, NULL, NULL, NULL),
(306, 'Kalimantan Selatan', NULL, 9408, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Kalimantan Selatan menjual susu dengan harga fluktuatif. Modi provident facere est hic aperiam.', NULL, NULL, NULL, NULL),
(307, 'Sumatra Barat', NULL, 9981, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per liter di Sumatra Barat kini dijual seharga 9981 rupiah. Officiis hic quae omnis dolor ipsa.', NULL, NULL, NULL, NULL),
(308, 'Kalimantan Selatan', NULL, 8429, 'liter', 'Detik', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Peternakan di Kalimantan Selatan melaporkan produksi susu menurun. Doloribus nihil nam praesentium quasi.', NULL, NULL, NULL, NULL),
(309, 'Jawa Tengah', NULL, 10510, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Corrupti corrupti id rem.', NULL, NULL, NULL, NULL),
(310, 'Jawa Barat', NULL, 10857, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Peternakan di Jawa Barat melaporkan produksi susu menurun. Deleniti ab enim iure.', NULL, NULL, NULL, NULL),
(311, 'Jawa Timur', NULL, 10949, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Jawa Timur menjual susu dengan harga fluktuatif. Itaque porro incidunt consequuntur nesciunt odit adipisci.', NULL, NULL, NULL, NULL),
(312, 'Jawa Timur', NULL, 10807, 'kg', 'BeritaSusu', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Peternakan di Jawa Timur melaporkan produksi susu menurun. Delectus necessitatibus quo non quod.', NULL, NULL, NULL, NULL),
(313, 'Lampung', NULL, 6681, 'liter', 'Kompas', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 6681 rupiah. Voluptates veritatis pariatur iure distinctio.', NULL, NULL, NULL, NULL),
(314, 'NTB', NULL, 8893, 'kg', 'Detik', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke NTB terganggu karena cuaca. Similique debitis voluptates.', NULL, NULL, NULL, NULL),
(315, 'Bali', NULL, 9374, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Distribusi susu segar ke Bali terganggu karena cuaca. Blanditiis deserunt alias harum magnam earum.', NULL, NULL, NULL, NULL),
(316, 'Jawa Barat', NULL, 7841, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Susu sapi per liter di Jawa Barat kini dijual seharga 7841 rupiah. Porro rerum dolor deleniti aspernatur.', NULL, NULL, NULL, NULL),
(317, 'Lampung', NULL, 9429, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:17', NULL, NULL, 'Pedagang di Lampung menjual susu dengan harga fluktuatif. Eligendi facilis provident vel hic placeat.', NULL, NULL, NULL, NULL),
(318, 'NTB', NULL, 8001, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 8001 rupiah. Aliquid nulla itaque at consequuntur facere minima vitae.', NULL, NULL, NULL, NULL),
(319, 'Jawa Tengah', NULL, 9944, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Jawa Tengah menjual susu dengan harga fluktuatif. Eius maxime repellat hic asperiores libero.', NULL, NULL, NULL, NULL),
(320, 'Sumatra Barat', NULL, 7246, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Sumatra Barat menjual susu dengan harga fluktuatif. Voluptate odit illum quas maiores quibusdam.', NULL, NULL, NULL, NULL),
(321, 'Jawa Tengah', NULL, 8217, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Debitis vel dolorum quas.', NULL, NULL, NULL, NULL),
(322, 'Lampung', NULL, 6088, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Harga susu di Lampung mengalami kenaikan. Itaque veniam corrupti quo.', NULL, NULL, NULL, NULL),
(323, 'Bali', NULL, 10877, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 10877 rupiah. Esse culpa possimus fuga minus cupiditate tenetur.', NULL, NULL, NULL, NULL),
(324, 'Sumatra Barat', NULL, 6348, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke Sumatra Barat terganggu karena cuaca. Dolorem adipisci officia eum ipsa repellendus corrupti quaerat.', NULL, NULL, NULL, NULL),
(325, 'Lampung', NULL, 10565, 'liter', 'Detik', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 10565 rupiah. Provident doloribus eos.', NULL, NULL, NULL, NULL),
(326, 'Bali', NULL, 7076, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per kg di Bali kini dijual seharga 7076 rupiah. Quos voluptate cumque quo id dignissimos sint.', NULL, NULL, NULL, NULL),
(327, 'Kalimantan Selatan', NULL, 7209, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Harga susu di Kalimantan Selatan mengalami kenaikan. Velit recusandae eum blanditiis.', NULL, NULL, NULL, NULL),
(328, 'Bali', NULL, 8181, 'liter', 'Kompas', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Provident quam neque hic error aspernatur aspernatur fugit.', NULL, NULL, NULL, NULL),
(329, 'Kalimantan Selatan', NULL, 10727, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke Kalimantan Selatan terganggu karena cuaca. Nulla sequi odit alias natus facere veritatis maiores.', NULL, NULL, NULL, NULL),
(330, 'Bali', NULL, 6055, 'liter', 'Kompas', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Bali menjual susu dengan harga fluktuatif. Ea consequatur culpa reiciendis sit exercitationem.', NULL, NULL, NULL, NULL),
(331, 'Jawa Tengah', NULL, 7639, 'kg', 'Kompas', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Harga susu di Jawa Tengah mengalami kenaikan. Minima eveniet soluta ut quos nihil.', NULL, NULL, NULL, NULL),
(332, 'NTB', NULL, 9812, 'liter', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per liter di NTB kini dijual seharga 9812 rupiah. Dolor ipsam accusantium.', NULL, NULL, NULL, NULL),
(333, 'Jawa Tengah', NULL, 10757, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Voluptatibus dolores placeat iure cumque ipsam mollitia.', NULL, NULL, NULL, NULL),
(334, 'NTB', NULL, 9756, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di NTB menjual susu dengan harga fluktuatif. Occaecati harum quam sequi quibusdam.', NULL, NULL, NULL, NULL),
(335, 'Sumatra Barat', NULL, 10472, 'kg', 'AgriNews', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per kg di Sumatra Barat kini dijual seharga 10472 rupiah. Accusantium unde commodi fugiat deserunt autem nisi.', NULL, NULL, NULL, NULL),
(336, 'Kalimantan Selatan', NULL, 9408, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Kalimantan Selatan menjual susu dengan harga fluktuatif. Modi provident facere est hic aperiam.', NULL, NULL, NULL, NULL),
(337, 'Sumatra Barat', NULL, 9981, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per liter di Sumatra Barat kini dijual seharga 9981 rupiah. Officiis hic quae omnis dolor ipsa.', NULL, NULL, NULL, NULL),
(338, 'Kalimantan Selatan', NULL, 8429, 'liter', 'Detik', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Peternakan di Kalimantan Selatan melaporkan produksi susu menurun. Doloribus nihil nam praesentium quasi.', NULL, NULL, NULL, NULL),
(339, 'Jawa Tengah', NULL, 10510, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke Jawa Tengah terganggu karena cuaca. Corrupti corrupti id rem.', NULL, NULL, NULL, NULL),
(340, 'Jawa Barat', NULL, 10857, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Peternakan di Jawa Barat melaporkan produksi susu menurun. Deleniti ab enim iure.', NULL, NULL, NULL, NULL),
(341, 'Jawa Timur', NULL, 10949, 'liter', 'BeritaSusu', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Jawa Timur menjual susu dengan harga fluktuatif. Itaque porro incidunt consequuntur nesciunt odit adipisci.', NULL, NULL, NULL, NULL),
(342, 'Jawa Timur', NULL, 10807, 'kg', 'BeritaSusu', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Peternakan di Jawa Timur melaporkan produksi susu menurun. Delectus necessitatibus quo non quod.', NULL, NULL, NULL, NULL),
(343, 'Lampung', NULL, 6681, 'liter', 'Kompas', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per liter di Lampung kini dijual seharga 6681 rupiah. Voluptates veritatis pariatur iure distinctio.', NULL, NULL, NULL, NULL),
(344, 'NTB', NULL, 8893, 'kg', 'Detik', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke NTB terganggu karena cuaca. Similique debitis voluptates.', NULL, NULL, NULL, NULL),
(345, 'Bali', NULL, 9374, 'kg', 'Peternakan.id', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Distribusi susu segar ke Bali terganggu karena cuaca. Blanditiis deserunt alias harum magnam earum.', NULL, NULL, NULL, NULL),
(346, 'Jawa Barat', NULL, 7841, 'liter', 'AgriNews', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Susu sapi per liter di Jawa Barat kini dijual seharga 7841 rupiah. Porro rerum dolor deleniti aspernatur.', NULL, NULL, NULL, NULL),
(347, 'Lampung', NULL, 9429, 'liter', 'Harian Ternak', 'news', '2025-05-09 07:19:26', NULL, NULL, 'Pedagang di Lampung menjual susu dengan harga fluktuatif. Eligendi facilis provident vel hic placeat.', NULL, NULL, NULL, NULL),
(348, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(349, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(350, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(351, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(352, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(353, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(354, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(355, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(356, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(357, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(358, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(359, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:21:36', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(360, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(361, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(362, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(363, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(364, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(365, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(366, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(367, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(368, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(369, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(370, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(371, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(372, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(373, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(374, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(375, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(376, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(377, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(378, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(379, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(380, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(381, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(382, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(383, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(384, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(385, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(386, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(387, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(388, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(389, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:21:37', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(390, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(391, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(392, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(393, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(394, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(395, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(396, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(397, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:21:38', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(398, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:47', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(399, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:47', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(400, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:47', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(401, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:47', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(402, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(403, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(404, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(405, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(406, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(407, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(408, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(409, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(410, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(411, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(412, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(413, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(414, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(415, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(416, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(417, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(418, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(419, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(420, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(421, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(422, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(423, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(424, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(425, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(426, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(427, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(428, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(429, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(430, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(431, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(432, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(433, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(434, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(435, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(436, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(437, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(438, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(439, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(440, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(441, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(442, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(443, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(444, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(445, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(446, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(447, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:21:48', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(448, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(449, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(450, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(451, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(452, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(453, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(454, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(455, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(456, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(457, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(458, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(459, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(460, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(461, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(462, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(463, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(464, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(465, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(466, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(467, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(468, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(469, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(470, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(471, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(472, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(473, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(474, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(475, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(476, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(477, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(478, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(479, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(480, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(481, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(482, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(483, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(484, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(485, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(486, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(487, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(488, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(489, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(490, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(491, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(492, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(493, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(494, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(495, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(496, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(497, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:22:01', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(498, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(499, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL);
INSERT INTO `milk_reference` (`id`, `wilayah`, `tanggal`, `harga`, `unit`, `sumber`, `source_type`, `created_at`, `harga_normalisasi`, `embedding_bert`, `description`, `image_url`, `voice_url`, `ocr_text`, `transcript_text`) VALUES
(500, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(501, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(502, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(503, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(504, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(505, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(506, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(507, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(508, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(509, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(510, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(511, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(512, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(513, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(514, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(515, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(516, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(517, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(518, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(519, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(520, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(521, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(522, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(523, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(524, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(525, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(526, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(527, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(528, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(529, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(530, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(531, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(532, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(533, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(534, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(535, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(536, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(537, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(538, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(539, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(540, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:22:03', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(541, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(542, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(543, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(544, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(545, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(546, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(547, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:22:04', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(548, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(549, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(550, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(551, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(552, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(553, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(554, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(555, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(556, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(557, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(558, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(559, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(560, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(561, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(562, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(563, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(564, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(565, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(566, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(567, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(568, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(569, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(570, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(571, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(572, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(573, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(574, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(575, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(576, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(577, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(578, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(579, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(580, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(581, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(582, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(583, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(584, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(585, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(586, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(587, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(588, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(589, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(590, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(591, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(592, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(593, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(594, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(595, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(596, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(597, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:22:14', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(598, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:43', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(599, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:43', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(600, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:43', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(601, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:43', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(602, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(603, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(604, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(605, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(606, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(607, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(608, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(609, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(610, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(611, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(612, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(613, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(614, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(615, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(616, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(617, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(618, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(619, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(620, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(621, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(622, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(623, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(624, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(625, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(626, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(627, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(628, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(629, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(630, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(631, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(632, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(633, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(634, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(635, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(636, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(637, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(638, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(639, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(640, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(641, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(642, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(643, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(644, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(645, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(646, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(647, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:22:44', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(648, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(649, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(650, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(651, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(652, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(653, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(654, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(655, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(656, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(657, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(658, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(659, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(660, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(661, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(662, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(663, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(664, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(665, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(666, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(667, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(668, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(669, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(670, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(671, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(672, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(673, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(674, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(675, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(676, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(677, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(678, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(679, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(680, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(681, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(682, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(683, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(684, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(685, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(686, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(687, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(688, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(689, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(690, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(691, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(692, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(693, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(694, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(695, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(696, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(697, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:22:50', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(698, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(699, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(700, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(701, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(702, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(703, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(704, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(705, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(706, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(707, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(708, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(709, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(710, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(711, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(712, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(713, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(714, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(715, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(716, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(717, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(718, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(719, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(720, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(721, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(722, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(723, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(724, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(725, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(726, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(727, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(728, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(729, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(730, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(731, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(732, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(733, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(734, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(735, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(736, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(737, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(738, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(739, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(740, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(741, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(742, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(743, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(744, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(745, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(746, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(747, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:22:54', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(748, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(749, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(750, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(751, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(752, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(753, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(754, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(755, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL);
INSERT INTO `milk_reference` (`id`, `wilayah`, `tanggal`, `harga`, `unit`, `sumber`, `source_type`, `created_at`, `harga_normalisasi`, `embedding_bert`, `description`, `image_url`, `voice_url`, `ocr_text`, `transcript_text`) VALUES
(756, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(757, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(758, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(759, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(760, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(761, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(762, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(763, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(764, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(765, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(766, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(767, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(768, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(769, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(770, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(771, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(772, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(773, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(774, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(775, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(776, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(777, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(778, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(779, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(780, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(781, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(782, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(783, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(784, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(785, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(786, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(787, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(788, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(789, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(790, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(791, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(792, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(793, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(794, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(795, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(796, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(797, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:23:22', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(798, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(799, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(800, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(801, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(802, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(803, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(804, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(805, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(806, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(807, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(808, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(809, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(810, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(811, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(812, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(813, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(814, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(815, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(816, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(817, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(818, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(819, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(820, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(821, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(822, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(823, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(824, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(825, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(826, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(827, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(828, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(829, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(830, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(831, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(832, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(833, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(834, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(835, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(836, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(837, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(838, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(839, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(840, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(841, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(842, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(843, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(844, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(845, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(846, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(847, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:23:27', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(848, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(849, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(850, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(851, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(852, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(853, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(854, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(855, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(856, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(857, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(858, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(859, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(860, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(861, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(862, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(863, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(864, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(865, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(866, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(867, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(868, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(869, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(870, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(871, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(872, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(873, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(874, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(875, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(876, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(877, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(878, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(879, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(880, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(881, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(882, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(883, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(884, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(885, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(886, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(887, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(888, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(889, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(890, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(891, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(892, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(893, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(894, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(895, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(896, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(897, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:23:36', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL),
(898, 'Bali', NULL, 8765, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Pariatur qui impedit mollitia dolores voluptates.', NULL, NULL, NULL, NULL),
(899, 'Lampung', NULL, 5543, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Molestiae voluptates voluptas dolore sed quia praesentium.', NULL, NULL, NULL, NULL),
(900, 'Jawa Tengah', NULL, 5997, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Nobis quae explicabo nulla molestiae corrupti.', NULL, NULL, NULL, NULL),
(901, 'Jawa Timur', NULL, 5070, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Consectetur at aliquam inventore reprehenderit dicta doloribus mollitia minus ullam aliquam.', NULL, NULL, NULL, NULL),
(902, 'Bali', NULL, 6945, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Quisquam quibusdam dolore non modi corrupti quam culpa est accusamus sint corrupti eveniet.', NULL, NULL, NULL, NULL),
(903, 'Kalimantan Barat', NULL, 6873, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Minus reiciendis cum quasi et architecto iste consequuntur autem minima asperiores ipsam.', NULL, NULL, NULL, NULL),
(904, 'Bali', NULL, 9015, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Qui sint quos eos esse enim mollitia quia.', NULL, NULL, NULL, NULL),
(905, 'Bali', NULL, 8610, 'kg', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Modi eius possimus temporibus pariatur eius.', NULL, NULL, NULL, NULL),
(906, 'Jawa Timur', NULL, 7306, 'kg', 'Detik', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Perspiciatis assumenda illum delectus quis quasi est reiciendis magnam.', NULL, NULL, NULL, NULL),
(907, 'Sumatra Utara', NULL, 8187, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Error quod deleniti enim molestias magnam nemo temporibus maiores illo voluptatibus.', NULL, NULL, NULL, NULL),
(908, 'Jawa Tengah', NULL, 5552, 'kg', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Eum laborum natus voluptatum voluptates modi.', NULL, NULL, NULL, NULL),
(909, 'Lampung', NULL, 7278, 'kg', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Eaque et quia adipisci quaerat cupiditate voluptatibus ad totam iusto quo dolorem sunt.', NULL, NULL, NULL, NULL),
(910, 'Jawa Timur', NULL, 9557, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Animi incidunt temporibus assumenda praesentium officiis praesentium.', NULL, NULL, NULL, NULL),
(911, 'Jawa Tengah', NULL, 6331, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Sint voluptate perferendis quidem fugit architecto possimus.', NULL, NULL, NULL, NULL),
(912, 'NTB', NULL, 6448, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Eius placeat quae animi ex accusantium quis eum ipsam sapiente nesciunt odio ullam.', NULL, NULL, NULL, NULL),
(913, 'Kalimantan Barat', NULL, 9140, 'liter', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Dolore molestiae minus adipisci doloremque aspernatur quisquam a adipisci rem quasi quam.', NULL, NULL, NULL, NULL),
(914, 'Sulawesi Selatan', NULL, 7580, 'liter', 'Detik', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Voluptate aperiam omnis deserunt animi vero officia.', NULL, NULL, NULL, NULL),
(915, 'Sulawesi Selatan', NULL, 8905, 'liter', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Voluptates mollitia animi voluptatum distinctio tempora molestias dignissimos quisquam suscipit.', NULL, NULL, NULL, NULL),
(916, 'NTB', NULL, 7466, 'kg', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Quis illum perferendis consectetur et laudantium perferendis modi.', NULL, NULL, NULL, NULL),
(917, 'Jawa Tengah', NULL, 5733, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Facere architecto nisi nemo totam officiis maiores ab perspiciatis.', NULL, NULL, NULL, NULL),
(918, 'Jawa Barat', NULL, 7773, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Autem repellendus neque harum ipsa animi.', NULL, NULL, NULL, NULL),
(919, 'Bali', NULL, 7538, 'liter', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Tempora animi magnam consectetur dolorum impedit fugit doloribus eum ratione accusantium ea id.', NULL, NULL, NULL, NULL),
(920, 'Bali', NULL, 6168, 'kg', 'Kompas', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Molestiae fugiat mollitia corporis temporibus eos provident eveniet ea cumque quisquam.', NULL, NULL, NULL, NULL),
(921, 'Kalimantan Barat', NULL, 8510, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Consectetur a hic neque velit inventore perferendis veritatis in.', NULL, NULL, NULL, NULL),
(922, 'Jawa Barat', NULL, 7812, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Vero consequuntur vitae doloribus in sapiente deleniti excepturi sed placeat voluptatibus.', NULL, NULL, NULL, NULL),
(923, 'Bali', NULL, 6748, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Quos suscipit nesciunt nisi corrupti voluptates vitae nam commodi corrupti sit illum ipsum.', NULL, NULL, NULL, NULL),
(924, 'Sumatra Utara', NULL, 6320, 'kg', 'Detik', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Quisquam incidunt voluptatem quos cupiditate omnis vero totam nobis quisquam neque officia laboriosam.', NULL, NULL, NULL, NULL),
(925, 'Jawa Timur', NULL, 5795, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Reprehenderit id aliquam necessitatibus aliquam laboriosam odit doloremque recusandae omnis blanditiis.', NULL, NULL, NULL, NULL),
(926, 'NTB', NULL, 9471, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Sint culpa labore sequi sed doloremque maxime minima laboriosam.', NULL, NULL, NULL, NULL),
(927, 'Sulawesi Selatan', NULL, 9999, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Minima accusamus molestiae inventore commodi similique similique dicta quam ipsam dicta animi velit.', NULL, NULL, NULL, NULL),
(928, 'Bali', NULL, 5129, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Quos est id deleniti doloremque quisquam ad totam aliquam omnis.', NULL, NULL, NULL, NULL),
(929, 'Jawa Barat', NULL, 5354, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:47', NULL, NULL, 'Quod perferendis recusandae consequatur velit tempore quod corrupti.', NULL, NULL, NULL, NULL),
(930, 'Sumatra Utara', NULL, 6230, 'liter', 'Detik', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Nesciunt commodi ut quam deleniti alias esse rem dolores enim corporis ex debitis.', NULL, NULL, NULL, NULL),
(931, 'Sulawesi Selatan', NULL, 5437, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Eius rem inventore voluptates voluptates sapiente.', NULL, NULL, NULL, NULL),
(932, 'Jawa Tengah', NULL, 5381, 'kg', 'PeternakanNews', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Suscipit dolorum ut mollitia porro libero ipsum tempore.', NULL, NULL, NULL, NULL),
(933, 'Jawa Barat', NULL, 8856, 'liter', 'Kompas', 'news', '2025-05-09 07:23:48', NULL, NULL, 'A minima autem incidunt voluptate sequi commodi doloremque natus odio.', NULL, NULL, NULL, NULL),
(934, 'Jawa Tengah', NULL, 7285, 'liter', 'Detik', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Sequi commodi impedit accusantium sed praesentium libero beatae illo harum eligendi cumque.', NULL, NULL, NULL, NULL),
(935, 'Sumatra Utara', NULL, 6783, 'liter', 'Kompas', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Deserunt saepe suscipit labore corrupti temporibus eos.', NULL, NULL, NULL, NULL),
(936, 'Jawa Barat', NULL, 6636, 'liter', 'PeternakanNews', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Veritatis pariatur eos eum temporibus error expedita earum esse.', NULL, NULL, NULL, NULL),
(937, 'Bali', NULL, 6522, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Doloribus vitae tenetur corporis at amet deleniti.', NULL, NULL, NULL, NULL),
(938, 'Jawa Timur', NULL, 6016, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Illum ad neque inventore doloremque libero reprehenderit voluptates inventore itaque incidunt nobis doloremque.', NULL, NULL, NULL, NULL),
(939, 'Lampung', NULL, 5152, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Repellat pariatur ad totam consectetur pariatur nisi.', NULL, NULL, NULL, NULL),
(940, 'NTB', NULL, 9351, 'liter', 'Kompas', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Itaque fugiat consequatur delectus nam facere suscipit consequuntur.', NULL, NULL, NULL, NULL),
(941, 'Kalimantan Barat', NULL, 6361, 'kg', 'Detik', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Omnis occaecati possimus reprehenderit quasi assumenda neque voluptatem voluptatum.', NULL, NULL, NULL, NULL),
(942, 'Sulawesi Selatan', NULL, 9091, 'liter', 'PortalHarga', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Labore fugiat a iste blanditiis vitae.', NULL, NULL, NULL, NULL),
(943, 'Sulawesi Selatan', NULL, 8066, 'kg', 'Harian Ternak', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Porro rerum fuga vel dolor tempora labore sequi dicta nam maiores.', NULL, NULL, NULL, NULL),
(944, 'Sumatra Utara', NULL, 7741, 'kg', 'PortalHarga', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Ab corporis dolorum ducimus illo natus asperiores necessitatibus atque.', NULL, NULL, NULL, NULL),
(945, 'NTB', NULL, 7444, 'liter', 'Detik', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Quas sed omnis quis ipsum commodi in voluptatem amet.', NULL, NULL, NULL, NULL),
(946, 'Lampung', NULL, 7649, 'liter', 'BeritaSusu.id', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Beatae nostrum explicabo labore similique excepturi at fuga modi dolor aperiam amet.', NULL, NULL, NULL, NULL),
(947, 'Kalimantan Barat', NULL, 6811, 'kg', 'Detik', 'news', '2025-05-09 07:23:48', NULL, NULL, 'Officiis et perferendis blanditiis asperiores in velit quisquam.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `milk_sales`
--

CREATE TABLE `milk_sales` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `volume_liters` decimal(10,2) NOT NULL,
  `price_per_liter` decimal(10,2) NOT NULL,
  `total_price` decimal(15,2) GENERATED ALWAYS AS (`volume_liters` * `price_per_liter`) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `wallet_transaction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `milk_sales`
--

INSERT INTO `milk_sales` (`id`, `farm_id`, `date`, `buyer_name`, `description`, `volume_liters`, `price_per_liter`, `created_at`, `wallet_transaction_id`) VALUES
(1, 4, '2025-05-01', 'Toko Susu A', NULL, 1.00, 5500.00, '2025-05-01 13:35:44', 61),
(2, 4, '2025-05-01', 'Toko Susu A', NULL, 1.00, 5500.00, '2025-05-01 13:36:07', 62),
(3, 4, '2025-05-01', 'Toko Susu A', NULL, 1.00, 5500.00, '2025-05-01 13:36:58', 63),
(4, 4, '2025-05-02', 'Toko Susu A', NULL, 1.00, 5500.00, '2025-05-02 06:22:27', 65),
(5, 4, '2025-05-02', 'Toko Susu A', NULL, 1.00, 5500.00, '2025-05-02 06:24:20', 66),
(6, 4, '2025-05-02', 'Test', NULL, 1.00, 6000.00, '2025-05-02 06:48:02', 67),
(7, 4, '2025-05-02', 'test', NULL, 1.00, 6000.00, '2025-05-02 07:22:31', 68),
(8, 4, '2025-05-02', 'Toko A', NULL, 1.00, 6000.00, '2025-05-02 08:16:04', 75),
(9, 4, '2025-05-02', 'Toko Susu A', NULL, 1.00, 5500.00, '2025-05-07 03:16:20', 80);

-- --------------------------------------------------------

--
-- Table structure for table `query_logs`
--

CREATE TABLE `query_logs` (
  `id` int(11) NOT NULL,
  `query` text DEFAULT NULL,
  `result_ids` text DEFAULT NULL,
  `tfidf_score` text DEFAULT NULL,
  `bert_score` text DEFAULT NULL,
  `fusion_score` text DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `query_logs`
--

INSERT INTO `query_logs` (`id`, `query`, `result_ids`, `tfidf_score`, `bert_score`, `fusion_score`, `timestamp`) VALUES
(3, 'Harga susu di Jawa Tengah?', '16,1,22,20,17', '[0.5318514953507223, 0.4856478488846887, 0.23725353774935198, 0.22251150374236253, 0.2090851021110935]', '[0.9112532138824463, 0.9132711887359619, 0.8857913017272949, 0.8724602460861206, 0.8785192370414734]', '[0.7215523546165843, 0.6994595188103253, 0.5615224197383235, 0.5474858749142416, 0.5438021695762835]', '2025-05-05 09:17:35'),
(4, 'Harga susu di Jawa', '16,1,22,20,25', '[0.44072500557351374, 0.40243780975989457, 0.2863092568687804, 0.2685190867355346, 0.2697529000579937]', '[0.888957142829895, 0.894995927810669, 0.8679523468017578, 0.8584441542625427, 0.8366584181785583]', '[0.6648410742017044, 0.6487168687852818, 0.5771308018352691, 0.5634816204990387, 0.553205659118276]', '2025-05-05 09:17:46'),
(5, 'Harga susu di Jawa Tengah?', '16,20,17,19,22', '[0.48111708263585007, 0.2917741435672321, 0.19731447889413578, 0.0, 0.18492248008667542]', '[0.8741551637649536, 0.8207354545593262, 0.8246134519577026, 0.8523932695388794, 0.653252363204956]', '[0.6776361232004018, 0.5562547990632791, 0.5109639654259193, 0.4261966347694397, 0.41908742164581575]', '2025-05-05 09:33:44'),
(6, 'Harga susu di Jawa', '20,16,17,22,19', '[0.3698116623654632, 0.23998434610431335, 0.25008794321694766, 0.23438159712681927, 0.0]', '[0.808493971824646, 0.8406598567962646, 0.8097466826438904, 0.635193407535553, 0.842485785484314]', '[0.5891528170950546, 0.540322101450289, 0.529917312930419, 0.4347875023311861, 0.421242892742157]', '2025-05-05 09:33:53'),
(7, 'Harga susu di Jawa Tengah?', '16,20,17,19,22', '[0.48111708263585007, 0.2917741435672321, 0.19731447889413578, 0.0, 0.18492248008667542]', '[0.8741551637649536, 0.8207354545593262, 0.8246134519577026, 0.8523932695388794, 0.653252363204956]', '[0.6776361232004018, 0.5562547990632791, 0.5109639654259193, 0.4261966347694397, 0.41908742164581575]', '2025-05-05 09:37:08'),
(8, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-05 09:38:04'),
(9, 'Jawa Barat', '26,17,24,20,16', '[0.6342633895967885, 0.5340084906916417, 0.24702222786839853, 0.2529904532682573, 0.2529904532682573]', '[0.9124824404716492, 0.8832089304924011, 0.8442416191101074, 0.8325961828231812, 0.8096129894256592]', '[0.7733729150342188, 0.7086087105920214, 0.5456319234892529, 0.5427933180457192, 0.5313017213469582]', '2025-05-05 09:38:18'),
(10, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:27:27'),
(11, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:28:41'),
(12, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:29:45'),
(13, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:29:56'),
(14, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:30:09'),
(15, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:31:38'),
(16, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:31:48'),
(17, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:32:15'),
(18, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:33:27'),
(19, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:35:28'),
(20, 'Harga susu di Jawa bARAT', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:35:37'),
(21, 'Harga susu di Jawa bARAT', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:35:43'),
(22, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:35:59'),
(23, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:36:05'),
(24, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:40:22'),
(25, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:41:34'),
(26, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:43:47'),
(27, 'Harga susu di Jawa', '20,16,26,17,22', '[0.3846523987684974, 0.21387289694579778, 0.26809657599191816, 0.22571986694053728, 0.20882748262520354]', '[0.808493971824646, 0.8406598567962646, 0.7815535068511963, 0.8097466826438904, 0.635193407535553]', '[0.5965731852965717, 0.5272663768710312, 0.5248250414215572, 0.5177332747922139, 0.42201044508037827]', '2025-05-06 07:43:58'),
(28, 'Harga susu di Jawa', '20,16,26,17,22', '[0.3846523987684974, 0.21387289694579778, 0.26809657599191816, 0.22571986694053728, 0.20882748262520354]', '[0.808493971824646, 0.8406598567962646, 0.7815535068511963, 0.8097466826438904, 0.635193407535553]', '[0.5965731852965717, 0.5272663768710312, 0.5248250414215572, 0.5177332747922139, 0.42201044508037827]', '2025-05-06 07:44:04'),
(29, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:44:31'),
(30, 'Harga susu di Jawa Barat', '20,26,17,16,24', '[0.5137351608647351, 0.4602333053613768, 0.3874864871489639, 0.18357457555061213, 0.17924392026138772]', '[0.8521243333816528, 0.8328684568405151, 0.8453196883201599, 0.8463976979255676, 0.7601432800292969]', '[0.682929747123194, 0.6465508811009459, 0.6164030877345619, 0.5149861367380899, 0.4696936001453423]', '2025-05-06 07:44:41'),
(31, 'Harga susu di Jawa Bara', '20,26,17,16,19', '[0.3846523987684974, 0.26809657599191816, 0.22571986694053728, 0.21387289694579778, 0.0]', '[0.842418909072876, 0.8086678981781006, 0.8351263403892517, 0.8432862758636475, 0.830573320388794]', '[0.6135356539206867, 0.5383822370850093, 0.5304231036648945, 0.5285795864047226, 0.415286660194397]', '2025-05-06 07:44:49'),
(32, 'Harga susu di Gorontalo', '20,19,16,23,17', '[0.4798168303843956, 0.0, 0.0, 0.0, 0.0]', '[0.8116937875747681, 0.8094520568847656, 0.8031166791915894, 0.7755135893821716, 0.7568772435188293]', '[0.6457553089795818, 0.4047260284423828, 0.4015583395957947, 0.3877567946910858, 0.3784386217594147]', '2025-05-06 07:44:55'),
(33, 'Harga susu di papua', '25,20,19,16,23', '[0.3535533905932738, 0.33928173449224164, 0.0, 0.0, 0.0]', '[0.7801470756530762, 0.7207494974136353, 0.8002932667732239, 0.7570345401763916, 0.7329954504966736]', '[0.566850233123175, 0.5300156159529384, 0.40014663338661194, 0.3785172700881958, 0.3664977252483368]', '2025-05-06 07:45:12'),
(34, 'Harga susu di papua', '25,20,19,16,23', '[0.3535533905932738, 0.33928173449224164, 0.0, 0.0, 0.0]', '[0.7801470756530762, 0.7207494974136353, 0.8002932667732239, 0.7570345401763916, 0.7329954504966736]', '[0.566850233123175, 0.5300156159529384, 0.40014663338661194, 0.3785172700881958, 0.3664977252483368]', '2025-05-06 07:45:20'),
(35, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:55:12'),
(36, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.4669901887122657, 0.30011913878285235, 0.20917824444857114, 0.1761144666957999, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6705726762386097, 0.5604272966710893, 0.50798325507684, 0.5003639593267513, 0.4261966347694397]', '2025-05-06 07:57:20'),
(37, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-07 03:17:27'),
(38, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-07 03:17:37'),
(39, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-07 03:31:55'),
(40, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-07 03:32:42'),
(41, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-07 07:46:21'),
(42, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:12:18'),
(43, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:17:03'),
(44, 'Harga susu di Jawa Tengah?', '16,20,26,17,22', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '2025-05-08 03:17:17'),
(45, 'Harga susu di Jawa Tengah?', '16,19,17,20,23', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '2025-05-08 03:17:24'),
(46, 'Harga susu di Jawa Tengah?', '16,19,17,20,23', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '2025-05-08 03:17:34'),
(47, 'carikan harag susu jawa tengah', '16,19,18,21,17', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '2025-05-08 03:18:26'),
(48, 'carikan harag susu jawa tengah', '16,19,18,21,17', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '2025-05-08 03:18:33'),
(49, 'carikan harag susu jawa tengah', '16,26,17,22,19', '[0.5988557996290191, 0.27383238044208746, 0.22670589663760995, 0.20991005204897137, 0.0]', '[0.8734485507011414, 0.7712503671646118, 0.8044713735580444, 0.6705459952354431, 0.8524447083473206]', '[0.7361521751650802, 0.5225413738033496, 0.5155886350978272, 0.44022802364220726, 0.4262223541736603]', '2025-05-08 03:18:49'),
(50, 'carikan harag susu jawa tengah', '16,19,18,21,17', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '2025-05-08 03:19:06'),
(51, 'carikan harag susu jawa tengah', '16,19,18,21,17', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '2025-05-08 03:19:14'),
(52, 'carikan harag susu jawa tengah', '16,19,18,21,17', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '2025-05-08 03:19:22'),
(53, 'carikan harag susu jawa tengah', '16,19,18,21,17', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '[0.8734485507011414, 0.8524447083473206, 0.8321245908737183, 0.805444598197937, 0.8044713735580444]', '2025-05-08 03:19:28'),
(54, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:19:39'),
(55, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:19:45'),
(56, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:19:52'),
(57, 'Harga susu di Jawa Tengah?', '16,20,26,17,22', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '2025-05-08 03:20:24'),
(58, 'Harga susu di Jawa Tengah?', '16,19,17,20,23', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '2025-05-08 03:20:29'),
(59, 'Harga susu di Jawa Tengah?', '16,19,17,20,23', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '2025-05-08 03:20:36'),
(60, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:34:11'),
(61, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 03:34:22'),
(62, 'Harga susu di Jawa Tengah?', '16,20,26,17,22', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '2025-05-08 03:34:26'),
(63, 'Harga susu di Jawa Tengah?', '16,19,17,20,23', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '2025-05-08 03:34:31'),
(64, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-08 04:09:13'),
(65, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:37:14'),
(66, 'Harga susu di Jawa Tengah?', '16,20,26,17,22', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.16385714657100792]', '2025-05-09 06:37:35'),
(67, 'Harga susu di Jawa Tengah?', '16,19,17,20,23', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '[0.8741551637649536, 0.8523932695388794, 0.8246134519577026, 0.8207354545593262, 0.8095483779907227]', '2025-05-09 06:37:41'),
(68, 'Harga susu di Jawa barat?', '23,20,19,17,26', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8409335017204285, 0.8383927941322327, 0.8378223776817322, 0.8335365056991577, 0.8297909498214722]', '[0.8409335017204285, 0.8383927941322327, 0.8378223776817322, 0.8335365056991577, 0.8297909498214722]', '2025-05-09 06:38:09'),
(69, 'Harga susu di Jawa barat?', '20,26,17,16,24', '[0.5137228746037655, 0.46980911841363554, 0.3889550872929496, 0.18437387459378943, 0.18006938467261388]', '[0.8383927941322327, 0.8297909498214722, 0.8335365056991577, 0.8194931745529175, 0.7638766765594482]', '[0.676057834367999, 0.6498000341175538, 0.6112457964960536, 0.5019335245733535, 0.4719730306160311]', '2025-05-09 06:38:13'),
(70, 'Harga susu di Jawa barat?', '20,26,17,16,22', '[0.5137228746037655, 0.46980911841363554, 0.3889550872929496, 0.18437387459378943, 0.18006938467261388]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.5137228746037655, 0.46980911841363554, 0.3889550872929496, 0.18437387459378943, 0.18006938467261388]', '2025-05-09 06:38:17'),
(71, 'carikan saya harga susu di gorontalo', '20,2,1,4,5', '[0.4794970972367088, 0.0, 0.0, 0.0, 0.0]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.4794970972367088, 0.0, 0.0, 0.0, 0.0]', '2025-05-09 06:38:40'),
(72, 'carikan saya harga susu di gorontalo', '16,20,19,23,21', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8326722383499146, 0.8267900347709656, 0.8120228052139282, 0.8030484318733215, 0.7953413128852844]', '[0.8326722383499146, 0.8267900347709656, 0.8120228052139282, 0.8030484318733215, 0.7953413128852844]', '2025-05-09 06:38:43'),
(73, 'carikan saya harga susu di gorontalo', '20,16,19,23,21', '[0.4794970972367088, 0.0, 0.0, 0.0, 0.0]', '[0.8267900347709656, 0.8326722383499146, 0.8120228052139282, 0.8030484318733215, 0.7953413128852844]', '[0.6531435660038372, 0.4163361191749573, 0.4060114026069641, 0.40152421593666077, 0.3976706564426422]', '2025-05-09 06:38:47'),
(74, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:45:13'),
(75, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:45:24'),
(76, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:45:35'),
(77, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:49:04'),
(78, 'Harga susu di Jawa Tenga', '20,16,26,17,19', '[0.3839279278932587, 0.21492787173576045, 0.27383238044208746, 0.22670589663760995, 0.0]', '[0.8215111494064331, 0.8716545104980469, 0.7851383090019226, 0.8160885572433472, 0.8403915166854858]', '[0.6027195386498458, 0.5432911911169036, 0.529485344722005, 0.5213972269404785, 0.4201957583427429]', '2025-05-09 06:50:35'),
(79, 'Harga susu di ', '20,19,16,25,21', '[0.4794970972367088, 0.0, 0.0, 0.0, 0.0]', '[0.7652432918548584, 0.8243979215621948, 0.7796694040298462, 0.7513416409492493, 0.7456021308898926]', '[0.6223701945457836, 0.4121989607810974, 0.3898347020149231, 0.37567082047462463, 0.3728010654449463]', '2025-05-09 06:50:44'),
(80, 'Harga susu di ', '20,19,16,25,21', '[0.4794970972367088, 0.0, 0.0, 0.0, 0.0]', '[0.7652432918548584, 0.8243979215621948, 0.7796694040298462, 0.7513416409492493, 0.7456021308898926]', '[0.6223701945457836, 0.4121989607810974, 0.3898347020149231, 0.37567082047462463, 0.3728010654449463]', '2025-05-09 06:50:55'),
(81, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:53:53'),
(82, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:54:08'),
(83, 'Harga susu di Jawa Tengah?', '16,20,26,17,19', '[0.46747071698985454, 0.29969662786245455, 0.2137553302474492, 0.17696809167192362, 0.0]', '[0.8741551637649536, 0.8207354545593262, 0.8067882657051086, 0.8246134519577026, 0.8523932695388794]', '[0.6708129403774041, 0.5602160412108903, 0.510271797976279, 0.5007907718148131, 0.4261966347694397]', '2025-05-09 06:56:45'),
(84, 'Harga susu di Jawa Tengah?', '30,38,62,64,41', '[0.38081621001815114, 0.3626819160583562, 0.37523741758770457, 0.37820036853770966, 0.3752374175877046]', '[0.8889886140823364, 0.8873018622398376, 0.8677935600280762, 0.8615912199020386, 0.8592891693115234]', '[0.6349024120502438, 0.6249918891490969, 0.6215154888078904, 0.6198957942198742, 0.6172632934496141]', '2025-05-09 06:56:50'),
(85, 'Harga susu di Jawa Barat', '20,48,98,113,63', '[0.5165173519459166, 0.29356418297212494, 0.29356418297212494, 0.29553614011681795, 0.29553614011681795]', '[0.8521243333816528, 0.8758235573768616, 0.8758235573768616, 0.8574641942977905, 0.8574641942977905]', '[0.6843208426637848, 0.5846938701744933, 0.5846938701744933, 0.5765001672073042, 0.5765001672073042]', '2025-05-09 06:57:07'),
(86, 'Harga susu di Jawa Barat', '20,113,163,63,48', '[0.5154007365847539, 0.2798578946190507, 0.2798578946190507, 0.2798578946190507, 0.27799366199147957]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.5154007365847539, 0.2798578946190507, 0.2798578946190507, 0.2798578946190507, 0.27799366199147957]', '2025-05-09 06:57:13'),
(87, 'Harga susu di Jawa Barat', '48,98,148,198,172', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8758235573768616, 0.8758235573768616, 0.8758235573768616, 0.8758235573768616, 0.8608399629592896]', '[0.8758235573768616, 0.8758235573768616, 0.8758235573768616, 0.8758235573768616, 0.8608399629592896]', '2025-05-09 06:57:18'),
(88, 'Harga susu di Jawa Tengah?', '20,30,80,180,130', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.6159719154121226, 0.6030607919759836, 0.6030607919759836, 0.6030607919759836, 0.6030607919759836]', '2025-05-09 07:01:47'),
(89, 'Harga susu di Jawa Tengah?', '20,30,80,180,130', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '2025-05-09 07:01:54'),
(90, 'Harga susu di Jawa Tengah?', '30,80,130,180,188', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:01:58'),
(91, 'carikan saya harga susu di jawa barat', '73,173,123,223,16', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8791722059249878, 0.8791722059249878, 0.8791722059249878, 0.8791722059249878, 0.8789126873016357]', '[0.8791722059249878, 0.8791722059249878, 0.8791722059249878, 0.8791722059249878, 0.8789126873016357]', '2025-05-09 07:02:22'),
(92, 'carikan saya harga susu di jawa barat', '20,63,113,163,213', '[0.5145797599139359, 0.26929396935660965, 0.26929396935660965, 0.26929396935660965, 0.26929396935660965]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.5145797599139359, 0.26929396935660965, 0.26929396935660965, 0.26929396935660965, 0.26929396935660965]', '2025-05-09 07:02:28'),
(93, 'carikan saya harga susu di jawa barat', '20,66,116,166,216', '[0.5145797599139359, 0.2631433764377006, 0.2631433764377006, 0.2631433764377006, 0.2631433764377006]', '[0.8736976385116577, 0.8684451580047607, 0.8684451580047607, 0.8684451580047607, 0.8684451580047607]', '[0.6941386992127968, 0.5657942672212306, 0.5657942672212306, 0.5657942672212306, 0.5657942672212306]', '2025-05-09 07:02:32'),
(94, 'carikan saya harga susu di jakarta', '20,57,107,157,207', '[0.4955189398495406, 0.0, 0.0, 0.0, 0.0]', '[0.8299533128738403, 0.8712036609649658, 0.8712036609649658, 0.8712036609649658, 0.8712036609649658]', '[0.6627361263616904, 0.4356018304824829, 0.4356018304824829, 0.4356018304824829, 0.4356018304824829]', '2025-05-09 07:02:49'),
(95, 'carikan saya harga susu di jakarta', '20,2,1,3,4', '[0.4955189398495406, 0.0, 0.0, 0.0, 0.0]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.4955189398495406, 0.0, 0.0, 0.0, 0.0]', '2025-05-09 07:02:53'),
(96, 'carikan saya harga susu di jakarta', '57,157,107,207,123', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8712036609649658, 0.8712036609649658, 0.8712036609649658, 0.8712036609649658, 0.8675673604011536]', '[0.8712036609649658, 0.8712036609649658, 0.8712036609649658, 0.8712036609649658, 0.8675673604011536]', '2025-05-09 07:02:59'),
(97, 'Harga susu di Jawa Tengah?', '20,30,80,180,130', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.6159719154121226, 0.6030607919759836, 0.6030607919759836, 0.6030607919759836, 0.6030607919759836]', '2025-05-09 07:09:01'),
(98, 'Harga susu di Jawa Tengah?', '20,30,80,180,130', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '2025-05-09 07:09:16'),
(99, 'Harga susu di Jawa Tengah?', '30,80,130,180,188', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:09:22'),
(100, 'Harga susu di Jawa Tengah?', '20,30,80,180,130', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.6159719154121226, 0.6030607919759836, 0.6030607919759836, 0.6030607919759836, 0.6030607919759836]', '2025-05-09 07:17:07'),
(101, 'Harga susu di Jawa Tengah?', '20,30,80,180,130', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.41120837626491913, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074, 0.31713296986963074]', '2025-05-09 07:17:17'),
(102, 'Harga susu di Jawa Tengah?', '30,80,130,180,188', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:17:22'),
(103, 'Harga susu di Jawa Tengah?', '30,80,130,180,188', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:17:38'),
(104, 'Harga susu di Jawa Tengah?', '30,80,180,130,188', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:19:04'),
(105, 'Harga susu di Jawa Tengah?', '20,180,30,80,130', '[0.41914316411518887, 0.28877408937197857, 0.28877408937197857, 0.28877408937197857, 0.28877408937197857]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.6199393093372575, 0.5888813517271575, 0.5888813517271575, 0.5888813517271575, 0.5888813517271575]', '2025-05-09 07:19:16'),
(106, 'Harga susu di Jawa Tengah?', '20,214,64,164,114', '[0.4220969925578974, 0.28031038502947964, 0.28031038502947964, 0.28031038502947964, 0.28031038502947964]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.4220969925578974, 0.28031038502947964, 0.28031038502947964, 0.28031038502947964, 0.28031038502947964]', '2025-05-09 07:19:19'),
(107, 'Harga susu di Jawa Tengah?', '20,30,80,130,180', '[0.42460839551275764, 0.2690582471621896, 0.2690582471621896, 0.2690582471621896, 0.2690582471621896]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.622671925036042, 0.579023430622263, 0.579023430622263, 0.579023430622263, 0.579023430622263]', '2025-05-09 07:19:30'),
(108, 'Harga susu di Jawa Tengah?', '20,30,80,130,180', '[0.42460839551275764, 0.2690582471621896, 0.2690582471621896, 0.2690582471621896, 0.2690582471621896]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.622671925036042, 0.579023430622263, 0.579023430622263, 0.579023430622263, 0.579023430622263]', '2025-05-09 07:19:50'),
(109, 'Harga susu di Jawa Tengah?', '30,80,130,180,88', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:19:59'),
(110, 'Harga susu di Jawa Tengah?', '20,301,241,331,271', '[0.42460839551275764, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.42460839551275764, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217]', '2025-05-09 07:20:10'),
(111, 'Harga susu di Jawa Tengah?', '20,30,80,130,180', '[0.42460839551275764, 0.2690582471621896, 0.2690582471621896, 0.2690582471621896, 0.2690582471621896]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.622671925036042, 0.579023430622263, 0.579023430622263, 0.579023430622263, 0.579023430622263]', '2025-05-09 07:20:41'),
(112, 'Harga susu di Jawa Tengah?', '20,301,241,331,271', '[0.42460839551275764, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.42460839551275764, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217, 0.2760934088191217]', '2025-05-09 07:20:49'),
(113, 'Harga susu di Jawa Tengah?', '30,80,130,180,88', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8873018622398376]', '2025-05-09 07:20:53'),
(114, 'Harga susu di Sulawesi  Barat?', '111,211,161,61,122', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8703542947769165]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8703542947769165]', '2025-05-09 07:21:13'),
(115, 'Harga susu di Sulawesi  Barat?', '20,211,61,111,161', '[0.47548099174516284, 0.21842265104471487, 0.21842265104471487, 0.21842265104471487, 0.21842265104471487]', '[0.804037868976593, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '[0.6397594303608779, 0.5479107497891726, 0.5479107497891726, 0.5479107497891726, 0.5479107497891726]', '2025-05-09 07:21:16'),
(116, 'Harga susu di Sulawesi  Barat?', '111,211,161,61,122', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8703542947769165]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8703542947769165]', '2025-05-09 07:21:21'),
(117, 'Harga susu di Sulawesi  Barat?', '20,95,195,45,145', '[0.47548099174516284, 0.22329189322599202, 0.22329189322599202, 0.22329189322599202, 0.22329189322599202]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.47548099174516284, 0.22329189322599202, 0.22329189322599202, 0.22329189322599202, 0.22329189322599202]', '2025-05-09 07:21:25'),
(118, 'Harga susu di Sulawesi  Barat?', '20,95,195,365,145', '[0.47823736514807313, 0.21435141524638437, 0.21435141524638437, 0.21435141524638437, 0.21435141524638437]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.47823736514807313, 0.21435141524638437, 0.21435141524638437, 0.21435141524638437, 0.21435141524638437]', '2025-05-09 07:21:41'),
(119, 'Harga susu di Sulawesi  Barat?', '20,111,61,431,381', '[0.48024102634018967, 0.20393519771626337, 0.20393519771626337, 0.20393519771626337, 0.20393519771626337]', '[0.804037868976593, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '[0.6421394476583914, 0.5406670231249469, 0.5406670231249469, 0.5406670231249469, 0.5406670231249469]', '2025-05-09 07:21:51'),
(120, 'Harga susu di Sulawesi  Barat?', '20,415,45,465,145', '[0.481767837662516, 0.2020185738091837, 0.2020185738091837, 0.2020185738091837, 0.2020185738091837]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.481767837662516, 0.2020185738091837, 0.2020185738091837, 0.2020185738091837, 0.2020185738091837]', '2025-05-09 07:22:03'),
(121, 'Harga susu di Sulawesi  Barat?', '531,431,481,381,111', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '2025-05-09 07:22:07'),
(122, 'Harga susu di Sulawesi  Barat?', '20,581,61,211,381', '[0.4839509884999091, 0.19105852818625615, 0.19105852818625615, 0.19105852818625615, 0.19105852818625615]', '[0.804037868976593, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '[0.6439944287382511, 0.5342286883599433, 0.5342286883599433, 0.5342286883599433, 0.5342286883599433]', '2025-05-09 07:22:17'),
(123, 'Harga susu di Sulawesi  Barat?', '20,61,531,111,481', '[0.4847620498254983, 0.18798101973052841, 0.18798101973052841, 0.18798101973052841, 0.18798101973052841]', '[0.804037868976593, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '[0.6443999594010457, 0.5326899341320794, 0.5326899341320794, 0.5326899341320794, 0.5326899341320794]', '2025-05-09 07:22:47'),
(124, 'Harga susu di Sulawesi  Barat?', '20,615,665,515,415', '[0.48544694279625883, 0.18760209595072538, 0.18760209595072538, 0.18760209595072538, 0.18760209595072538]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.48544694279625883, 0.18760209595072538, 0.18760209595072538, 0.18760209595072538, 0.18760209595072538]', '2025-05-09 07:22:53'),
(125, 'Harga susu di Sulawesi  Barat?', '61,581,481,111,531', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '[0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304, 0.8773988485336304]', '2025-05-09 07:22:58'),
(126, 'Harga susu?', '731,581,61,681,631', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.798932671546936, 0.798932671546936, 0.798932671546936, 0.798932671546936, 0.798932671546936]', '[0.798932671546936, 0.798932671546936, 0.798932671546936, 0.798932671546936, 0.798932671546936]', '2025-05-09 07:23:26'),
(127, 'Harga susu?', '20,4,5,6,7', '[0.49840396876419546, 0.0, 0.0, 0.0, 0.0]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.49840396876419546, 0.0, 0.0, 0.0, 0.0]', '2025-05-09 07:23:30'),
(128, 'Harga susu?', '20,881,61,831,781', '[0.4984876979031982, 0.0, 0.0, 0.0, 0.0]', '[0.7442557215690613, 0.798932671546936, 0.798932671546936, 0.798932671546936, 0.798932671546936]', '[0.6213717097361298, 0.399466335773468, 0.399466335773468, 0.399466335773468, 0.399466335773468]', '2025-05-09 07:23:39'),
(129, 'Harga susu?', '20,1,2,3,4', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '2025-05-09 07:23:50'),
(130, 'Harga susu di Jawa Tengah?', '20,400,80,130,750', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.631010152566477, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062]', '2025-05-09 07:24:10'),
(131, 'Harga susu di Jawa Tengah?', '20,30,850,900,80', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '2025-05-09 07:24:14'),
(132, 'Harga susu', '20,1,2,3,4', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '2025-05-09 07:24:22'),
(133, 'Harga susu', '20,19,931,381,831', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '[0.7788405418395996, 0.811697781085968, 0.8097350001335144, 0.8097350001335144, 0.8097350001335144]', '[0.638702567410785, 0.405848890542984, 0.4048675000667572, 0.4048675000667572, 0.4048675000667572]', '2025-05-09 07:24:47'),
(134, 'Harga susu Jakarta', '20,742,692,122,642', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '[0.7785301804542542, 0.8446788191795349, 0.8446788191795349, 0.8446788191795349, 0.8446788191795349]', '[0.6385473867181123, 0.42233940958976746, 0.42233940958976746, 0.42233940958976746, 0.42233940958976746]', '2025-05-09 07:24:59'),
(135, 'Harga susu Jakarta', '20,1,2,3,4', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.4985645929819705, 0.0, 0.0, 0.0, 0.0]', '2025-05-09 07:25:02'),
(136, 'Harga susu Jakarta', '742,692,122,642,72', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8446788191795349, 0.8446788191795349, 0.8446788191795349, 0.8446788191795349, 0.8446788191795349]', '[0.8446788191795349, 0.8446788191795349, 0.8446788191795349, 0.8446788191795349, 0.8446788191795349]', '2025-05-09 07:25:06'),
(137, 'Harga susu di boyolali', '19,942,392,892,542', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.838283121585846, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743]', '[0.838283121585846, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743]', '2025-05-09 07:25:19'),
(138, 'Harga susu di boyolali', '1,20,13,14,15', '[0.41725256413003364, 0.3880959127505633, 0.3315596010076333, 0.3315596010076333, 0.3315596010076333]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.41725256413003364, 0.3880959127505633, 0.3315596010076333, 0.3315596010076333, 0.3315596010076333]', '2025-05-09 07:25:24'),
(139, 'Harga susu di boyolali', '20,1,13,11,14', '[0.3880959127505633, 0.41725256413003364, 0.3315596010076333, 0.3260301155500973, 0.3315596010076333]', '[0.8174045085906982, 0.7275175452232361, 0.6069498658180237, 0.6123805046081543, 0.6054427623748779]', '[0.6027502106706308, 0.5723850546766349, 0.46925473341282853, 0.4692053100791258, 0.46850118169125565]', '2025-05-09 07:25:30'),
(140, 'Harga susu di boyolali', '1,20,13,14,15', '[0.41725256413003364, 0.3880959127505633, 0.3315596010076333, 0.3315596010076333, 0.3315596010076333]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.41725256413003364, 0.3880959127505633, 0.3315596010076333, 0.3315596010076333, 0.3315596010076333]', '2025-05-09 07:25:53'),
(141, 'Harga susu di boyolali', '19,942,392,892,542', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.838283121585846, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743]', '[0.838283121585846, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743, 0.8241220712661743]', '2025-05-09 07:26:09'),
(142, 'Harga susu di Jawa Tengah?', '20,400,80,130,750', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.631010152566477, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062]', '2025-05-09 07:37:45'),
(143, 'Harga susu di Jawa Tengah?', '20,30,850,900,80', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '2025-05-09 07:37:56'),
(144, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:38:03'),
(145, 'Harga susu di Jawa Tengah?', '20,400,80,130,750', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.631010152566477, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062]', '2025-05-09 07:38:11'),
(146, 'Harga susu di Jawa Tengah?', '20,30,850,900,80', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '2025-05-09 07:38:19');
INSERT INTO `query_logs` (`id`, `query`, `result_ids`, `tfidf_score`, `bert_score`, `fusion_score`, `timestamp`) VALUES
(147, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:38:36'),
(148, 'Harga susu di Jawa Tengah?', '20,400,80,130,750', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.631010152566477, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062]', '2025-05-09 07:38:45'),
(149, 'Harga susu di Jawa Tengah?', '20,30,850,900,80', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '2025-05-09 07:38:52'),
(150, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:39:02'),
(151, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,858,458,138,188', '[0.48218042624907775, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8162815570831299, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.6492309916661039, 0.49639925388491296, 0.49639925388491296, 0.49639925388491296, 0.49639925388491296]', '2025-05-09 07:43:19'),
(152, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 07:43:28'),
(153, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:43:36'),
(154, 'Harga susu di Jawa Tengah?', '20,400,80,130,750', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.631010152566477, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062]', '2025-05-09 07:45:38'),
(155, 'Harga susu di Jawa Tengah?', '20,30,850,900,80', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '2025-05-09 07:45:42'),
(156, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:45:49'),
(157, 'Harga susu di Jawa Tengah?', '20,400,80,130,750', '[0.44128485057362776, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8207354545593262, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.631010152566477, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062, 0.5713918366869062]', '2025-05-09 07:45:56'),
(158, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,858,458,138,188', '[0.48218042624907775, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8162815570831299, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.6492309916661039, 0.49639925388491296, 0.49639925388491296, 0.49639925388491296, 0.49639925388491296]', '2025-05-09 07:48:12'),
(159, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 07:48:23'),
(160, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:48:31'),
(161, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,858,458,138,188', '[0.48218042624907775, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8162815570831299, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.6492309916661039, 0.49639925388491296, 0.49639925388491296, 0.49639925388491296, 0.49639925388491296]', '2025-05-09 07:52:22'),
(162, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 07:52:29'),
(163, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:52:39'),
(164, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '927,57,377,877,777', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8636394143104553, 0.8636394143104553, 0.8636394143104553, 0.8636394143104553, 0.8636394143104553]', '[0.7772754430770874, 0.7772754430770874, 0.7772754430770874, 0.7772754430770874, 0.7772754430770874]', '2025-05-09 07:56:41'),
(165, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 07:56:54'),
(166, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '927,57,377,877,777', '[0.0, 0.0, 0.0, 0.0, 0.0]', '[0.8636394143104553, 0.8636394143104553, 0.8636394143104553, 0.8636394143104553, 0.8636394143104553]', '[0.7772754430770874, 0.7772754430770874, 0.7772754430770874, 0.7772754430770874, 0.7772754430770874]', '2025-05-09 07:57:04'),
(167, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 07:58:23'),
(168, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 07:58:30'),
(169, 'Harga susu di Jawa Tengah?', '850,500,400,350,450', '[0.36697243424858017, 0.36697243424858017, 0.36697243424858017, 0.36697243424858017, 0.36697243424858017]', '[0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466]', '[0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466]', '2025-05-09 07:58:38'),
(170, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 07:59:09'),
(171, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 07:59:17'),
(172, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 08:04:56'),
(173, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 08:05:09'),
(174, 'Harga susu di Jawa Tengah?', '850,500,400,350,450', '[0.36697243424858017, 0.36697243424858017, 0.36697243424858017, 0.36697243424858017, 0.36697243424858017]', '[0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466]', '[0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466]', '2025-05-09 08:05:18'),
(175, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 08:53:24'),
(176, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 08:53:37'),
(177, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 08:54:09'),
(178, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '858,38,908,708,88', '[0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039]', '2025-05-09 08:56:08'),
(179, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 08:56:29'),
(180, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 08:56:35'),
(181, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 08:57:17'),
(182, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 08:57:33'),
(183, 'Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik.', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 08:59:02'),
(184, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '858,38,908,708,88', '[0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039]', '2025-05-09 08:59:25'),
(185, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 08:59:32'),
(186, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 08:59:37'),
(187, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '858,38,908,708,88', '[0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039]', '2025-05-09 09:04:16'),
(188, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 09:04:28'),
(189, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 09:04:37'),
(190, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '858,38,908,708,88', '[0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039]', '2025-05-09 09:04:55'),
(191, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '20,30,850,900,80', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '[0.8162815570831299, 0.816648006439209, 0.816648006439209, 0.816648006439209, 0.816648006439209]', '[0.48218042624907775, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005, 0.13865761504162005]', '2025-05-09 09:05:04'),
(192, 'Harga susu di Jawa Tengah?', '30,900,850,700,750', '[0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594, 0.25379505929147594]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '[0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364, 0.8889886140823364]', '2025-05-09 09:05:10'),
(193, 'Harga susu di Jawa Barat', '340,280,250,310,368', '[0.1927978618998399, 0.1927978618998399, 0.1927978618998399, 0.1927978618998399, 0.21628684465324977]', '[0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8758235573768616]', '[0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8758235573768616]', '2025-05-09 09:05:18'),
(194, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Barat dalam format numerik. dalam format numerik.', '20,933,383,483,213', '[0.5174446484876067, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046]', '[0.8179111480712891, 0.8180122971534729, 0.8180122971534729, 0.8180122971534729, 0.8180122971534729]', '[0.5174446484876067, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046]', '2025-05-09 09:05:27'),
(195, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Barat dalam format numerik. dalam format numerik.', '20,927,57,727,627', '[0.5174446484876067, 0.0, 0.0, 0.0, 0.0]', '[0.8179111480712891, 0.871338963508606, 0.871338963508606, 0.871338963508606, 0.871338963508606]', '[0.787864450429205, 0.7842050194740295, 0.7842050194740295, 0.7842050194740295, 0.7842050194740295]', '2025-05-09 09:05:33'),
(196, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Barat dalam format numerik. dalam format numerik.', '20,933,383,483,213', '[0.5174446484876067, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046]', '[0.8179111480712891, 0.8180122971534729, 0.8180122971534729, 0.8180122971534729, 0.8180122971534729]', '[0.5174446484876067, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046, 0.11789353377679046]', '2025-05-09 09:06:07'),
(197, 'Harga susu di Jawa Barat', '340,280,250,310,368', '[0.1927978618998399, 0.1927978618998399, 0.1927978618998399, 0.1927978618998399, 0.21628684465324977]', '[0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8758235573768616]', '[0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8773556351661682, 0.8758235573768616]', '2025-05-09 09:06:16'),
(198, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '858,38,908,708,88', '[0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039]', '2025-05-09 09:06:53'),
(199, 'Berikan informasi harga susu Berikan informasi harga susu Harga susu di Jawa Tengah? dalam format numerik. dalam format numerik.', '858,38,908,708,88', '[0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956, 0.13367730434727956]', '[0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464, 0.8591212034225464]', '[0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039, 0.7865767658313039]', '2025-05-09 09:07:06'),
(200, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:10:49'),
(201, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:10:55'),
(202, 'Harga susu di Jawa Tengah?', '850,500,400,350,450', '[0.36697243424858017, 0.36697243424858017, 0.36697243424858017, 0.36697243424858017, 0.36697243424858017]', '[0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466]', '[0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466, 0.9070748686790466]', '2025-05-09 09:11:00'),
(203, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:12:35'),
(204, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:12:40'),
(205, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:12:46'),
(206, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:14:40'),
(207, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:14:48'),
(208, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:14:55'),
(209, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:15:31'),
(210, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:15:57'),
(211, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:16:05'),
(212, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:21:00'),
(213, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:21:07'),
(214, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:21:12'),
(215, 'Harga susu di Jawa Tengah?', '20,458,408,38,858', '[0.35452535121251294, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8434433937072754, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.4767548618362035, 0.3669279158137646, 0.3669279158137646, 0.3669279158137646, 0.3669279158137646]', '2025-05-09 09:23:39'),
(216, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:24:11'),
(217, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:24:24'),
(218, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:24:35'),
(219, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:25:10'),
(220, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:25:17'),
(221, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:25:23'),
(222, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:26:11'),
(223, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:29:27'),
(224, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:29:33'),
(225, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:29:38'),
(226, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:31:26'),
(227, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:31:34'),
(228, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:31:40'),
(229, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:33:22'),
(230, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:33:29'),
(231, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:33:34'),
(232, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:34:32'),
(233, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:34:40'),
(234, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:34:46'),
(235, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:34:54'),
(236, 'Harga susu di Jawa Tengah?', '20,358,458,408,858', '[0.35452535121251294, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8434433937072754, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.5989843724598942, 0.5372276266430753, 0.5372276266430753, 0.5372276266430753, 0.5372276266430753]', '2025-05-09 09:36:49'),
(237, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:36:57'),
(238, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:37:03'),
(239, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:38:14'),
(240, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:38:19'),
(241, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:38:24'),
(242, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:39:56'),
(243, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:40:06'),
(244, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:40:10'),
(245, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:41:37'),
(246, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:41:45'),
(247, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:41:50'),
(248, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:41:59'),
(249, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:42:34'),
(250, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:42:45'),
(251, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:43:06'),
(252, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:44:12'),
(253, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:44:16'),
(254, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:45:13'),
(255, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:45:18'),
(256, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 09:46:47'),
(257, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 09:46:55'),
(258, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 09:47:01'),
(259, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 11:06:52'),
(260, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 11:07:02'),
(261, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 11:07:11'),
(262, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 11:08:45'),
(263, 'Harga susu di Jawa Tengah?', '20,30,900,850,80', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '[0.8434433937072754, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904, 0.8466079235076904]', '[0.35452535121251294, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303, 0.20049059528967303]', '2025-05-09 11:09:31'),
(264, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 11:10:13'),
(265, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-09 11:13:03');
INSERT INTO `query_logs` (`id`, `query`, `result_ids`, `tfidf_score`, `bert_score`, `fusion_score`, `timestamp`) VALUES
(266, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 11:23:08'),
(267, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 11:36:35'),
(268, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-09 11:38:10'),
(269, 'Harga susu di Jawa Tengah?', '358,38,408,758,908', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856, 0.8097071282071856]', '2025-05-13 08:44:03'),
(270, 'Harga susu di Jawa Tengah?', '908,38,808,858,88', '[0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385, 0.19662820498445385]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '[0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968, 0.8778270483016968]', '2025-05-13 09:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_topup`
--

CREATE TABLE `request_topup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_topup`
--

INSERT INTO `request_topup` (`id`, `user_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 50000.00, 'approved', '2025-04-30 08:47:35', '2025-04-30 08:49:04'),
(2, 3, 50000.00, 'pending', '2025-04-30 08:47:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `role` enum('super admin','admin','staff') DEFAULT 'staff',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `farm_id`, `username`, `password`, `name`, `image`, `role`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Zyarga', '$2y$10$oU0EMDT29e70vVh2ddlmtettT32yDRL78BIr3DXkTIs7bfgt6pvOi', 'Zyarga', 'default.png', 'super admin', 1, 1, '2025-04-30 07:04:32', '0000-00-00 00:00:00'),
(2, 2, 'farhan', '$2y$10$oU0EMDT29e70vVh2ddlmtettT32yDRL78BIr3DXkTIs7bfgt6pvOi', 'Farhan', 'default.png', 'admin', 2, 2, '2025-04-30 07:05:31', '0000-00-00 00:00:00'),
(3, 3, 'firmansyah', '$2y$10$oU0EMDT29e70vVh2ddlmtettT32yDRL78BIr3DXkTIs7bfgt6pvOi', 'Firmansyah', 'default.png', 'admin', 3, 3, '2025-04-30 07:06:03', '0000-00-00 00:00:00'),
(4, 4, 'supriyadi', '$2y$10$oU0EMDT29e70vVh2ddlmtettT32yDRL78BIr3DXkTIs7bfgt6pvOi', 'Supriyadi', 'default.png', 'admin', 1, 1, '2025-04-30 08:57:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` decimal(12,2) DEFAULT 0.00,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `user_id`, `balance`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, 1, 1, '2025-04-30 08:50:56', '0000-00-00 00:00:00'),
(2, 2, 0.00, 2, 2, '2025-04-30 08:50:56', '0000-00-00 00:00:00'),
(3, 3, 0.00, 3, 3, '2025-04-30 08:51:09', '0000-00-00 00:00:00'),
(4, 4, 0.00, 1, 1, '2025-04-30 08:58:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `id` int(11) NOT NULL,
  `cattle_id` int(11) NOT NULL,
  `vaccine_type_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_type`
--

CREATE TABLE `vaccine_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `interval_days` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccine_type`
--

INSERT INTO `vaccine_type` (`id`, `name`, `interval_days`, `created_at`) VALUES
(1, 'IBR Vaccine', 90, '2025-04-23 09:02:52'),
(2, 'Vaccine Type X', 30, '2025-04-23 09:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `to_farm_id` int(11) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `type` enum('user_to_user','topup','user_to_farm','refund','refunded','milk_sale','investment','expense') NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `signature` varchar(255) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `from_farm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `from_user_id`, `to_user_id`, `to_farm_id`, `amount`, `type`, `description`, `block_id`, `created_by`, `created_at`, `signature`, `updated_by`, `updated_at`, `from_farm_id`) VALUES
(60, NULL, 3, NULL, 50000.00, '', 'Topup request approved by admin', 1, 1, '2025-04-30 08:49:04', NULL, NULL, NULL, NULL),
(61, NULL, NULL, 4, 5500.00, 'milk_sale', 'Milk Sale to Toko Susu A', 2, 4, '2025-05-01 13:35:44', NULL, NULL, NULL, NULL),
(62, NULL, NULL, 4, 5500.00, 'milk_sale', 'Milk Sale to Toko Susu A', 3, 4, '2025-05-01 13:36:07', NULL, NULL, NULL, NULL),
(63, NULL, NULL, 4, 5500.00, 'milk_sale', 'Milk Sale to Toko Susu A', 4, 4, '2025-05-01 13:36:58', NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, 50000.00, 'expense', 'Makanan Sapi', NULL, NULL, '2025-05-01 13:39:59', NULL, NULL, NULL, 4),
(65, NULL, NULL, 4, 5500.00, 'milk_sale', 'Milk Sale to Toko Susu A', 6, 4, '2025-05-02 06:22:27', NULL, NULL, NULL, NULL),
(66, NULL, NULL, 4, 5500.00, 'milk_sale', 'Milk Sale to Toko Susu A', 7, 4, '2025-05-02 06:24:20', NULL, NULL, NULL, NULL),
(67, NULL, NULL, 4, 6000.00, 'milk_sale', 'Milk Sale to Test', 8, 4, '2025-05-02 06:48:02', NULL, NULL, NULL, NULL),
(68, NULL, NULL, 4, 6000.00, 'milk_sale', 'Milk Sale to test', 9, 4, '2025-05-02 07:22:31', NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, 1000.00, 'expense', 'Trst', NULL, NULL, '2025-05-02 08:08:17', NULL, NULL, NULL, 4),
(70, NULL, NULL, NULL, 10000.00, 'expense', 'Pakan Sapi', NULL, NULL, '2025-05-02 08:09:14', NULL, NULL, NULL, 4),
(71, NULL, NULL, NULL, 1000.00, 'expense', 'Test', NULL, NULL, '2025-05-02 08:10:21', NULL, NULL, NULL, 4),
(72, NULL, NULL, NULL, 1000.00, 'expense', 'Test Pakan Sapi', NULL, NULL, '2025-05-02 08:12:18', NULL, NULL, NULL, 4),
(73, NULL, NULL, NULL, 1000.00, 'expense', 'Test Beli Pakan', NULL, NULL, '2025-05-02 08:13:22', NULL, NULL, NULL, 4),
(74, NULL, NULL, NULL, 1000.00, 'expense', 'Pakan Sapi', NULL, NULL, '2025-05-02 08:15:32', NULL, NULL, NULL, 4),
(75, NULL, NULL, 4, 6000.00, 'milk_sale', 'Milk Sale to Toko A', 16, 4, '2025-05-02 08:16:04', NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, 1000.00, 'expense', '1', NULL, NULL, '2025-05-02 08:16:20', NULL, NULL, NULL, 4),
(77, NULL, NULL, NULL, 1000.00, 'expense', 'Test Beli pakan', NULL, NULL, '2025-05-02 08:17:21', NULL, NULL, NULL, 4),
(78, NULL, NULL, NULL, 1000.00, 'expense', 'Test', NULL, NULL, '2025-05-02 08:17:41', NULL, NULL, NULL, 4),
(79, NULL, NULL, NULL, 10000.00, 'expense', 'Pakan Sapi', NULL, NULL, '2025-05-02 08:18:56', NULL, NULL, NULL, 4),
(80, NULL, NULL, 4, 5500.00, 'milk_sale', 'Milk Sale to Toko Susu A', 21, 4, '2025-05-07 03:16:20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transaction_status`
--

CREATE TABLE `wallet_transaction_status` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `status` enum('pending','completed','refunded','cancelled','disputed') NOT NULL DEFAULT 'completed',
  `reason` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `cattle`
--
ALTER TABLE `cattle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm_wallets`
--
ALTER TABLE `farm_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cattle_id` (`cattle_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `feed_inventory`
--
ALTER TABLE `feed_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_blocks`
--
ALTER TABLE `inventory_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_payout_failed`
--
ALTER TABLE `investment_payout_failed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_programs`
--
ALTER TABLE `investment_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_returns`
--
ALTER TABLE `investment_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `investment_transactions`
--
ALTER TABLE `investment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `investor_id` (`investor_id`);

--
-- Indexes for table `ir_evaluations`
--
ALTER TABLE `ir_evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ir_results`
--
ALTER TABLE `ir_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masti_scan`
--
ALTER TABLE `masti_scan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cattle_id` (`cattle_id`);

--
-- Indexes for table `milk_input`
--
ALTER TABLE `milk_input`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cattle_id` (`cattle_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `milk_reference`
--
ALTER TABLE `milk_reference`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `milk_reference` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `milk_sales`
--
ALTER TABLE `milk_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query_logs`
--
ALTER TABLE `query_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `requested_by` (`requested_by`),
  ADD KEY `reviewed_by` (`reviewed_by`);

--
-- Indexes for table `request_topup`
--
ALTER TABLE `request_topup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cattle_id` (`cattle_id`),
  ADD KEY `vaccine_type_id` (`vaccine_type_id`);

--
-- Indexes for table `vaccine_type`
--
ALTER TABLE `vaccine_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `to_farm_id` (`to_farm_id`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `wallet_transaction_status`
--
ALTER TABLE `wallet_transaction_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cattle`
--
ALTER TABLE `cattle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dispatch`
--
ALTER TABLE `dispatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `farms`
--
ALTER TABLE `farms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `farm_wallets`
--
ALTER TABLE `farm_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_inventory`
--
ALTER TABLE `feed_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_blocks`
--
ALTER TABLE `inventory_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `investment`
--
ALTER TABLE `investment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_payout_failed`
--
ALTER TABLE `investment_payout_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_programs`
--
ALTER TABLE `investment_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_returns`
--
ALTER TABLE `investment_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_transactions`
--
ALTER TABLE `investment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ir_evaluations`
--
ALTER TABLE `ir_evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ir_results`
--
ALTER TABLE `ir_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masti_scan`
--
ALTER TABLE `masti_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `milk_input`
--
ALTER TABLE `milk_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `milk_reference`
--
ALTER TABLE `milk_reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=948;

--
-- AUTO_INCREMENT for table `milk_sales`
--
ALTER TABLE `milk_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `query_logs`
--
ALTER TABLE `query_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request_topup`
--
ALTER TABLE `request_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccine_type`
--
ALTER TABLE `vaccine_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `wallet_transaction_status`
--
ALTER TABLE `wallet_transaction_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD CONSTRAINT `api_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cattle`
--
ALTER TABLE `cattle`
  ADD CONSTRAINT `cattle_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `cattle_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cattle_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `farm_wallets`
--
ALTER TABLE `farm_wallets`
  ADD CONSTRAINT `farm_wallets_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);

--
-- Constraints for table `feed`
--
ALTER TABLE `feed`
  ADD CONSTRAINT `feed_ibfk_1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`),
  ADD CONSTRAINT `feed_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feed_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `investment_returns`
--
ALTER TABLE `investment_returns`
  ADD CONSTRAINT `investment_returns_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `investment_transactions` (`id`);

--
-- Constraints for table `investment_transactions`
--
ALTER TABLE `investment_transactions`
  ADD CONSTRAINT `investment_transactions_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `investment_programs` (`id`),
  ADD CONSTRAINT `investment_transactions_ibfk_2` FOREIGN KEY (`investor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `milk_input`
--
ALTER TABLE `milk_input`
  ADD CONSTRAINT `milk_input_ibfk_1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`),
  ADD CONSTRAINT `milk_input_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `milk_input_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD CONSTRAINT `refund_requests_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `wallet_transactions` (`id`),
  ADD CONSTRAINT `refund_requests_ibfk_2` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `refund_requests_ibfk_3` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `request_topup`
--
ALTER TABLE `request_topup`
  ADD CONSTRAINT `request_topup_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);

--
-- Constraints for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD CONSTRAINT `user_wallets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`cattle_id`) REFERENCES `cattle` (`id`),
  ADD CONSTRAINT `vaccine_ibfk_2` FOREIGN KEY (`vaccine_type_id`) REFERENCES `vaccine_type` (`id`);

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wallet_transactions_ibfk_3` FOREIGN KEY (`to_farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `wallet_transactions_ibfk_4` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`),
  ADD CONSTRAINT `wallet_transactions_ibfk_5` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wallet_transactions_ibfk_6` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_transaction_status`
--
ALTER TABLE `wallet_transaction_status`
  ADD CONSTRAINT `wallet_transaction_status_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `wallet_transactions` (`id`),
  ADD CONSTRAINT `wallet_transaction_status_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wallet_transaction_status_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
