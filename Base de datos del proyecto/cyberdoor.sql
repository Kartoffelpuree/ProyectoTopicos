-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2021 a las 17:28:54
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cyberdoor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch_offices`
--

CREATE TABLE `branch_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_categories` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_categories`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tarjetas madre', 'Motherboard B450', NULL, NULL),
(2, 'Procesadores', 'Procesadores para pc', NULL, NULL),
(3, 'Gabinetes', 'Gabinetes para pc', NULL, NULL),
(4, 'Memorias RAM', 'Memorias RAM PC', NULL, NULL),
(5, 'Periféricos', 'Periféricos de pc', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id_employees` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_branchOffice` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_11_25_073024_create_branch_offices_table', 1),
(11, '2021_11_25_073111_create_categories_table', 1),
(12, '2021_11_25_073137_create_products_table', 1),
(13, '2021_11_25_073211_create_sales_table', 1),
(14, '2021_11_25_073354_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00777a345035f45ffc9abad02e824f55e695427d3612ea51b865a01d0e34f0885c95b23b44e998d9', 9, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 19:49:28', '2021-11-29 19:49:28', '2022-11-29 13:49:28'),
('058a7d64d4fb4993ebf7ae210e4827695ea730d95b6172857e80a9160e2f981d44c978c8d239d03f', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:51:47', '2021-11-29 08:51:47', '2022-11-29 02:51:47'),
('0640ea18724d0f8b029180d31c7ca6c150de48ee3cd7168fd6393634df3cecda7f56ba74fc5b8f77', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-12-03 22:24:17', '2021-12-03 22:24:17', '2022-12-03 16:24:17'),
('0975de6dd586135a864fe6e871e2e24aa0a17bf4c44e12a2b8bab584ad708c441e8a20b248dea56e', 11, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:27:39', '2021-11-29 20:27:39', '2022-11-29 14:27:39'),
('0d12d32f8b13684ab9a2153498aaaf890399094eba870bd92ec9a0e857a179b5f6572cc603b400ab', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:51:30', '2021-11-29 08:51:30', '2022-11-29 02:51:30'),
('13bfd29dcb82f818398b5d9197b44297d55d241a7b3b67c727f6cd8ac0a4b00efef850abeab2aa89', 8, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 18:59:53', '2021-11-29 18:59:53', '2022-11-29 12:59:53'),
('1b6c9161816e2c30a7dc455a69d8af8673c994cd118ea19ce335a2ec6f00aa4cd9eb6bec736f1611', 7, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 18:14:26', '2021-11-29 18:14:26', '2022-11-29 12:14:26'),
('1f0b68e26706849bccd9b8fe8efd5e6dc0f3bd9b0b3800755171c610f3051c128943454617bc66f1', 15, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 22:06:56', '2021-11-29 22:06:56', '2022-11-29 16:06:56'),
('20bec15bef499c0868be3143690d7c02bdb11b3e68c19350dcafa59237a7f8194691c5830ed9b004', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-28 14:25:06', '2021-11-28 14:25:06', '2022-11-28 08:25:06'),
('24af5691c5007a03c04dae107880921c228dfc6e816ddabdd73a6d4f852835deca3ca794a696a74e', 12, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:48:43', '2021-11-29 20:48:43', '2022-11-29 14:48:43'),
('25f8b18a56e6fa1cc336673377072a2b32130bf54134e7563a1c23baaab9f8fdd0989651cb9335ee', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:25:21', '2021-11-29 08:25:21', '2022-11-29 02:25:21'),
('2b0177c6bf67e313f65d763023d9e80f4f37902fc2914356293f579ef8b8276892fe7cc59c38f325', 8, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 19:47:07', '2021-11-29 19:47:07', '2022-11-29 13:47:07'),
('2ef06d01e3828a040a687570ee75ad1f863a6e15e5dffdf815261b4f9289c7bfcc64214a8461a02d', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 16:09:22', '2021-11-29 16:09:22', '2022-11-29 10:09:22'),
('319d1f4120d05d23ddcc0841b3856ff8a7e0c57de50f2f1c92f0b2178b873c9c1ebf2f8707daa6ea', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:47:55', '2021-11-29 08:47:55', '2022-11-29 02:47:55'),
('32223d4dbb5e59ce27f47620fcf8c68971bee6b25c5027afa0d34501f04d6d831db5dc16638d58f1', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 10:03:00', '2021-11-29 10:03:00', '2022-11-29 04:03:00'),
('352f58a3a80cc62c9213ace953f80e47bbe06fb381738f530583fbde619fe31fdcfc00668febeba8', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:45:09', '2021-11-29 08:45:09', '2022-11-29 02:45:09'),
('3863badac31c4fa8c84020cff927afd64c7eed1695c90ebb267e7c3a845e9b5a3ab8e025a2147d5b', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:28:24', '2021-11-29 08:28:24', '2022-11-29 02:28:24'),
('39d29dd98716ef2eb1111d72e45edf072bdde4102a994cf6eb58ae6be5e6f94edded241a697e2850', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 07:37:05', '2021-11-29 07:37:05', '2022-11-29 01:37:05'),
('3afb9904541eef59d7e4c289bb47bdbe16f39964f85d3e2d643625ba0b2cb2fbd43f524a077545ca', 4, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 17:45:52', '2021-11-29 17:45:52', '2022-11-29 11:45:52'),
('3b927b160bbc4ca48267f507cb02e1959edcc85027747b4da190594cddd2dd2aad6b85d53496ca9c', 8, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:09:40', '2021-11-29 20:09:40', '2022-11-29 14:09:40'),
('3ccd0655b00684f9a8393409bea9018646838571135d490a8b0f1f218c272f709e2a94b394028b95', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 04:13:50', '2021-11-27 04:13:50', '2022-11-26 22:13:50'),
('3db413837a490a2a59c0012eb96b49545050c3181bee5cdd9d3082f8f705477d0a26e2bb612aa902', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 14:02:52', '2021-11-29 14:02:52', '2022-11-29 08:02:52'),
('3e85f2c1dc1a7f9d8cc342ae7883e7d4bf878a434c1b706a7ea48a96e9152b864ed03410a2604ed9', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 12:40:21', '2021-11-29 12:40:21', '2022-11-29 06:40:21'),
('43c72592c2bafb986ac1dad4cfbda01515094e1c9576032fa29a968351d14f28cf16883765085f21', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 10:07:10', '2021-11-29 10:07:10', '2022-11-29 04:07:10'),
('53cf2661fea82416c95e37ae47b792c0f26c062921d04621154a56b13ca99fc79a20f53d5197dfef', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 04:05:18', '2021-11-27 04:05:18', '2022-11-26 22:05:18'),
('546de8ad244c0e9a890297faaa9984fc643547fb403a91bd6e1f925ef11e8dc0d58e3233e10b3094', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 12:05:25', '2021-11-29 12:05:25', '2022-11-29 06:05:25'),
('58f9132fbcf64db6802baa2de424caf4cc7e6f68bf1028213fab628bef3f7fea165e7a1f529f9306', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 04:13:03', '2021-11-27 04:13:03', '2022-11-26 22:13:03'),
('59f3952b47bca79c668ec31a97ce7368944a15c5e3e2720d5507ee64cfd7bb69ef25addf6e709744', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 11:43:19', '2021-11-29 11:43:19', '2022-11-29 05:43:19'),
('5b64f283d379ad336b2bc5558006762570897d95637983de5f8a059487b53379bb567102949105d6', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 13:40:29', '2021-11-29 13:40:29', '2022-11-29 07:40:29'),
('5d752aba5fb6a1c9d31780513dbc3417b1c35e38a24acb1b1803604da6e47b214331462c07c5e7d6', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:43:29', '2021-11-29 08:43:29', '2022-11-29 02:43:29'),
('5df105ab14041d33f64eb5a334483fbec77a57f631e990a089c66a76c912fd37b1ae6f509ec342df', 10, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:22:07', '2021-11-29 20:22:07', '2022-11-29 14:22:07'),
('5e5fbe46077d133d663e4004a9a966bf99b17f7fb4d416fe4d3d312369cbfaad8dba42520b9f9679', 7, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 18:14:06', '2021-11-29 18:14:06', '2022-11-29 12:14:06'),
('5ee42c7c86b151b1acb85308a754305079730e70df7b1d5917b39ac6a88eefc6dde97f8947059eed', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 13:28:14', '2021-11-29 13:28:14', '2022-11-29 07:28:14'),
('5ee9521ca4261014ef6f389a512bdb989997d7c40de5083ca75e2a48828fa239ff84c478e42f7732', 11, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:27:27', '2021-11-29 20:27:27', '2022-11-29 14:27:27'),
('614e22afa95e51227c1bcc64a2628a5ffc6b4c6d62fb1e2e471474bdb9f5d839c01514121c4480f3', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 14:07:20', '2021-11-29 14:07:20', '2022-11-29 08:07:20'),
('6182cceb8cf836067938293dcba92acbd38e83c6265f83f3b5a1109c3e6453be6a15ac8e8a680e67', 13, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 21:42:55', '2021-11-29 21:42:55', '2022-11-29 15:42:55'),
('6230e23f126d5b4cbeb29773a02708fb85491b1312da744efb36b54ddab9abb5739e52b8c1f979f1', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 07:37:14', '2021-11-29 07:37:14', '2022-11-29 01:37:14'),
('67ca3287c82dbb0cf1fc90d955d488d77e3f83dbe8275b2bbfe0d700caee4d34b75fa329daec908a', 13, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 21:42:40', '2021-11-29 21:42:40', '2022-11-29 15:42:40'),
('67eb52dc2f7a085f560dad201ab52a909ce57212955155d2c43450ecdcc117da2d99f7100724ea99', 8, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 18:59:37', '2021-11-29 18:59:37', '2022-11-29 12:59:37'),
('68bd8fa92489393c6b580c2e3ff8b8ee5b63cb264862d226f69ae2086fa18408ea2202e14150a10a', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:47:11', '2021-11-29 08:47:11', '2022-11-29 02:47:11'),
('6deca6b447fd8a95951cf22707d9fd35f2c83bff465e305aeea89f92070309af9b83f04d9fcacb83', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 18:11:46', '2021-11-29 18:11:46', '2022-11-29 12:11:46'),
('77d7512265d174b6e57072114bf6b99861ff13730cf1d848577239879b6fe023c72644f76afafd48', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:39:58', '2021-11-29 08:39:58', '2022-11-29 02:39:58'),
('7893903a2570f009e475035f6aeca6fac90f21efb45d2f00cfee1892e9a391276788ba7ff1ca8cc4', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 16:17:29', '2021-11-29 16:17:29', '2022-11-29 10:17:29'),
('808276f0279d32d1e2ac72d1635c03102bfbde6c9ccb7ba719b6d19e066c25f0b7985d76c2965a58', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 12:40:16', '2021-11-29 12:40:16', '2022-11-29 06:40:16'),
('8f985c177caf1e449b586e60150eb176879223cf754931be03a744883e450f31ea6d62bf85e04528', 12, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:48:53', '2021-11-29 20:48:53', '2022-11-29 14:48:53'),
('8fc50914b157bd9d2bcdfdb829d32b81bb8c50c3d2fa4d05fd9194cf4afd184de48fe589a7971eec', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 18:34:34', '2021-11-27 18:34:34', '2022-11-27 12:34:34'),
('92cea3eb1bab84bbf70c80a2011550c8b622e237be6d80249c962680a5f52897f671792ce518b43e', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 10:08:29', '2021-11-29 10:08:29', '2022-11-29 04:08:29'),
('93e96a585de8151f10008e0fedfd79013cfa2b4e935db4a6b7681284ce68a1e893ec37101291237b', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 12:37:47', '2021-11-29 12:37:47', '2022-11-29 06:37:47'),
('977ec93bc2010b532563709871ccbc2b881cd42ff0d75f1e11ea599080877a588610b8310bc08614', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 12:33:35', '2021-11-29 12:33:35', '2022-11-29 06:33:35'),
('a3955043fe79c533aa34d6f8935c1877d6ccf79d3b98b8e5c07f524e30ee8bd66318957a7bfa5d3b', 10, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 20:21:47', '2021-11-29 20:21:47', '2022-11-29 14:21:47'),
('a402b7105eded98443fd99b6dcfb07557a0421262d5257a6137df8f806c43befe5914f80fb6adbe8', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 04:04:36', '2021-11-27 04:04:36', '2022-11-26 22:04:36'),
('a67bf9536277f7f85a488d05d7d7f4c3c1d48b8cf292a6b80b416161baca75724878ac0312d7c9c5', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 10:03:26', '2021-11-29 10:03:26', '2022-11-29 04:03:26'),
('a85fb2d86a07c1899772c44710b146f14f06a4a04d0a62146e91a249f4d69ce7d8c00afc6b2f4abd', 15, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 22:07:10', '2021-11-29 22:07:10', '2022-11-29 16:07:10'),
('ada6dbad42747f6f20ebe1e88662b0daac2d50a41985f6adef5c94b3438a21a644bb7e6d8b7cd838', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 06:22:07', '2021-11-27 06:22:07', '2022-11-27 00:22:07'),
('b45c9fcc5cc7521be92f59577031753738a2f85ee4d4643e63d9b9f3ebdb94151aab6efc8c3b53db', 4, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 17:46:40', '2021-11-29 17:46:40', '2022-11-29 11:46:40'),
('b7f16ff81e72d340be376a2996765084c4f73a5178d6c7dcf1da87e4a0a6597bfa036be85fa4a671', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:51:24', '2021-11-29 08:51:24', '2022-11-29 02:51:24'),
('b96219b70423ce85ae48de3c587a9431c666d4da434713a272d9b59b0555039f4042f2635a1cb577', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 07:36:07', '2021-11-29 07:36:07', '2022-11-29 01:36:07'),
('bdc4b8eb935599196d450911c597c188acf9bbca14fb7d6a81050d6557de62bb02a826fc63452677', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-28 14:30:26', '2021-11-28 14:30:26', '2022-11-28 08:30:26'),
('bf5e37680f1e4b49d400696ee1373e5dbb2b40a56aaa1ad34fb1160af25ee7f7e574d0e81b8a8b9a', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:44:27', '2021-11-29 08:44:27', '2022-11-29 02:44:27'),
('c869e37a2b10c41d33b4d25922ab65c197cd053bf47d7d75d32ad125831f5965dde06b4b230490e9', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 18:35:16', '2021-11-27 18:35:16', '2022-11-27 12:35:16'),
('c94233d64c86377966b607c41a0eb68e2650f630b62cca9375750e165cf73363b161fd200df8ffcb', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 13:41:21', '2021-11-29 13:41:21', '2022-11-29 07:41:21'),
('c9d138e4f40b11cc5729ace18133c194fe7cc18f66b27ad9e0e130dc56e5fc11268c307d3aacd2aa', 6, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 18:13:11', '2021-11-29 18:13:11', '2022-11-29 12:13:11'),
('d374932b7c7015095d7a36878c65a360f615f6baeeb093905514a80112d103b4a9da79f12da43737', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:16:54', '2021-11-29 08:16:54', '2022-11-29 02:16:54'),
('da849a43bdbf20e744f6929ee16710a07537b7cb6965327f892673eda8b4074958fd1e6fc0c582c6', 14, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 22:06:07', '2021-11-29 22:06:07', '2022-11-29 16:06:07'),
('db5faded56df74c30e29117f2ccb824f6a5d835057de50d6f7e41f9f34e6519733dd824569ee55b6', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 10:02:55', '2021-11-29 10:02:55', '2022-11-29 04:02:55'),
('e12062deb6ff86da600cceb7e06c7915c29ade48fee7b387460e2d0ef9163ad9001f3b5cd4146340', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 13:37:29', '2021-11-29 13:37:29', '2022-11-29 07:37:29'),
('e4009fb8ffebabe7fc5484d4bb3c1b4200234da07584202d9cdc1d63e6ddf843baa0d99f9f7db79d', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 08:41:06', '2021-11-29 08:41:06', '2022-11-29 02:41:06'),
('eafdbe5315513c6150246e72616c14fe15e9df388b8ad36d6cf9582ccf8ee027bca9ad044a0ae955', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 13:40:53', '2021-11-29 13:40:53', '2022-11-29 07:40:53'),
('f07cbe9a997a68d11b5345f051e4b5d4a22c96de5b14367b3c574aaf712516fd8cb381bc0ceb789d', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-11-29 13:35:26', '2021-11-29 13:35:26', '2022-11-29 07:35:26'),
('f0b505fec06b3a2e47bdce814ce156b4e73c99a144349324c495fd6ed35d26a8eb74957c20d6de87', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-12-03 22:22:07', '2021-12-03 22:22:07', '2022-12-03 16:22:07'),
('f5df465675c65f84adae3f072195b598e39a7808b31de763fb3ed30616a83a245b4df150701b554d', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 04:12:23', '2021-11-27 04:12:23', '2022-11-26 22:12:23'),
('fa709c97c93a0f24889bb71f36bc6cbb32bc84c16b4e4960fcc3ac2a8f3850b6d2ec2ec4473bf075', 3, 1, 'LaravelAuthApp', '[]', 0, '2021-11-27 18:34:45', '2021-11-27 18:34:45', '2022-11-27 12:34:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'EGf4KhstkwB7BZS0GG6aoAcCdyAJbhzx5kwOeLsR', NULL, 'http://localhost', 1, 0, 0, '2021-11-26 22:06:29', '2021-11-26 22:06:29'),
(2, NULL, 'Laravel Password Grant Client', 'C0VaTjK6ocL7NAZv54H5PMjPIkv4lQU5rr0qdOOY', 'users', 'http://localhost', 0, 1, 0, '2021-11-26 22:06:29', '2021-11-26 22:06:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-26 22:06:29', '2021-11-26 22:06:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_products` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_products`, `code`, `name`, `price`, `stock`, `categories_id`, `created_at`, `updated_at`) VALUES
(18, '048927', 'Gabinete pc', '1577.00', 89, 3, '2021-12-03 22:23:09', '2021-12-03 22:23:09'),
(19, 'COD001', 'Monitor', '7895.00', 98, 5, '2021-12-03 22:23:34', '2021-12-03 22:23:34'),
(20, 'COD003', 'fuete de poder', '986.00', 7, 5, '2021-12-03 22:23:55', '2021-12-03 22:23:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `dateSale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Efrain', 'efra@gmail.com', NULL, '$2y$10$2lkHEcSZb9jYbx/CD.3gh.Nreh/5fu.5dBHYDghAkQ.Botr8ycxjq', 'Nueva Florida', NULL, '2021-11-27 04:04:36', '2021-11-27 04:04:36'),
(2, 'Dario Maximiliano', 'Dario@gmail.com', NULL, '$2y$10$6Z9e6mnU/jE3xD3sTdnc1u2g5nXwD8fvl1LfnM/9Y8EQI5d83OSxS', 'Lomás del chalupin', NULL, '2021-11-27 18:34:34', '2021-11-27 18:34:34'),
(3, 'Litzi Lopez', 'litziq@gmail.com', NULL, '$2y$10$gzsQPdcsGrJRBi5nYyKB3upzpK0Vmp5Uo0qf.92z8nFxFvBtmWkD6', 'Lomás del chalupin', NULL, '2021-11-27 18:34:45', '2021-11-27 18:34:45'),
(4, 'Efrain', 'efra1120@hotmail.com', NULL, '$2y$10$x9S8UevxaEDTz0cA132H5u0tO1SuMI2c0aLlWQ1IliokWGP79p6P.', 'Esa dire', NULL, '2021-11-29 17:45:52', '2021-11-29 17:45:52'),
(5, 'David', 'VilManDav@gmai.com', NULL, '$2y$10$K/hc7URcXhJfeeCBJ3cG.uFJT3gE5Vs7xGCBbbJYxeIAhFLK1wsEi', 'San Francisco de los vivero #2403 Balcones de Oriente', NULL, '2021-11-29 18:11:46', '2021-11-29 18:11:46'),
(6, 'David', 'david@gmail.com', NULL, '$2y$10$yJPiRq10TVvLD6Uy4OOSQ.0Gfm7ZtzygHYs6IsMFt4.lQ6T0wrPbW', 'San Francisco de los vivero #2403 Balcones de Oriente', NULL, '2021-11-29 18:13:11', '2021-11-29 18:13:11'),
(7, 'Antonio', 'Antonio@gmail.com', NULL, '$2y$10$DUXb9NwmverTh/7QFB1zF.91NW2RegowmYcmqjd/u.IiXM2u8JOBu', 'San Francisco de los vivero #2403 Balcones de Oriente', NULL, '2021-11-29 18:14:06', '2021-11-29 18:14:06'),
(8, 'Juan Lopez', 'Juan@gmail.com', NULL, '$2y$10$O53aipjZQGti5be9T2vbm.87C9hkN9wiazAaXXuGtV1CgDNUckuNm', 'San Luis', NULL, '2021-11-29 18:59:37', '2021-11-29 18:59:37'),
(9, 'Dario Lopez', 'dario1@gmail.com', NULL, '$2y$10$d.VcTao./1yZZDmf96BCV.LK/VBLnsgiyEUbMXN5euoYfWWwUOT9G', 'San Francisco de los vivero #2403 Balcones de Oriente', NULL, '2021-11-29 19:49:28', '2021-11-29 19:49:28'),
(10, 'Daniela', 'Daniela@gmail.com', NULL, '$2y$10$uOR.WHabAWfeM.xEavKUZuS3qAp4S2XLS/qyoQ/sJOtT.uDoCW1Hq', 'Paseo del acantilado', NULL, '2021-11-29 20:21:47', '2021-11-29 20:21:47'),
(11, 'Maria', 'Maria11@gmail.com', NULL, '$2y$10$I5Uc3kK1jF/cCYR3y9ApnOh6jcNAji1MrKM/f32UJnCSh1cyMxaNy', '155 Paseo de la cuesta', NULL, '2021-11-29 20:27:27', '2021-11-29 20:27:27'),
(12, 'Mario', 'mario@gmail.com', NULL, '$2y$10$8M8K5iEJW6dgUdLivpicC.cJ5xGxelgA46sOgZYPImDDUQ7/yQVAu', '155 Paseo de la cuesta', NULL, '2021-11-29 20:48:43', '2021-11-29 20:48:43'),
(13, 'Mariana', 'Mariana1@gmail.com', NULL, '$2y$10$/8Hp2l8rxRcxKWMEArvH0eSQg77tkjlipA3JIT4Uj/6/EsYsJvJoe', 'Paseo del acantilado', NULL, '2021-11-29 21:42:40', '2021-11-29 21:42:40'),
(14, 'Pedro', 'pedro1@gmail.com', NULL, '$2y$10$w2mLHZkYTbgKbv2RR8huzeq.kjf4Z/8.EsfK0TIi00OESXUYKLjUW', '155 Paseo de la cuesta', NULL, '2021-11-29 22:06:07', '2021-11-29 22:06:07'),
(15, 'Juan', 'Juan1@gmail.com', NULL, '$2y$10$RAP7/meiKQKm.v6UL1hpBe0qZmNntZrGKulEv3GaBpb3cFlrAgOj.', '155 Paseo de la cuesta', NULL, '2021-11-29 22:06:56', '2021-11-29 22:06:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employees`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_id_branchoffice_foreign` (`id_branchOffice`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_users_id_foreign` (`users_id`),
  ADD KEY `sales_products_id_foreign` (`products_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employees` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_products` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_id_branchoffice_foreign` FOREIGN KEY (`id_branchOffice`) REFERENCES `branch_offices` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id_categories`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id_products`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
