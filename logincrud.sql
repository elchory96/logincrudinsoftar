-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-04-2019 a las 22:04:04
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `logincrud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0885595e7755ddfac797ae01515de99722fde850ac18a3d8e9d6baa8897d24544bfefe37f38bb91b', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:36:44', '2019-04-25 02:36:44', '2020-04-24 21:36:44'),
('0981e94b5c2b468b0aa0fdcf70e470e2e14b3e91650a813d15fb3fb7bf45a5f7d96e5c4c192ff4e7', 3, 1, 'MyApp', '[]', 0, '2019-04-25 01:51:55', '2019-04-25 01:51:55', '2020-04-24 20:51:55'),
('0d8d26567674ff1eb174d295934a7e5c41eabee6a147d97d5aa9f242502177cb1a87893fc350fc28', 5, 1, 'MyApp', '[]', 0, '2019-04-25 03:01:10', '2019-04-25 03:01:10', '2020-04-24 22:01:10'),
('1b9dc6b3f5c811efde75493e77db7724135d71e424aacfa19c948810fbf0695f6caafbf3a860eafb', 5, 1, 'MyApp', '[]', 0, '2019-04-25 03:01:53', '2019-04-25 03:01:53', '2020-04-24 22:01:53'),
('1e0dc10e7e49923ce1b2e2f7f03dfee7fdcf788a8e15870053f8a0a76e3ea3f029db6446a9151642', 3, 1, 'MyApp', '[]', 0, '2019-04-25 01:50:31', '2019-04-25 01:50:31', '2020-04-24 20:50:31'),
('234207e71f76700b9a73135329acdf224b3be5ea80fb381c34b3b6477dbf43c14d52b06fa30609da', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:33:58', '2019-04-25 02:33:58', '2020-04-24 21:33:58'),
('282fa566d75dba525d49718e977628eec1117cff993a0b2b052922f33d77741ffcba68b40d5dff54', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:30:28', '2019-04-25 02:30:28', '2020-04-24 21:30:28'),
('2a6b67a70880fa38fc1a8fa600152c44757d5fd4556f3fb13017bb03d655552eaf24daf4dba09a8c', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:55:21', '2019-04-25 02:55:21', '2020-04-24 21:55:21'),
('351366d6a10e1f511bffb36cd8e255db11b0738f55fffc77f840b9165213b3a7d89b0115d531ae09', 3, 1, 'MyApp', '[]', 0, '2019-04-25 00:59:13', '2019-04-25 00:59:13', '2020-04-24 19:59:13'),
('359ebf76c95c8fabc43841f2a5a0fd7ee5fb4c88cec0dd475164674ca0dcea17ffb4df0e0dac7efd', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:29:14', '2019-04-25 02:29:14', '2020-04-24 21:29:14'),
('43a93a6d51954ad8be55e1c8dab841e50091a9c2b8fd3edbf1d2ab0aa2f9413cdbd60cd50e9f9696', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:47:20', '2019-04-25 02:47:20', '2020-04-24 21:47:20'),
('4e1d0a4d868fc3ed3c59e2670898d67f3eba4adb2117d19e2581b3ae59fbd8b3d038e7d95791fe71', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:34:17', '2019-04-25 02:34:17', '2020-04-24 21:34:17'),
('5770c195c5fe1a13838eb0ec5e80f53d9a0db10a470ef8be6e8d557549810f0df4c4aaff864cf349', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:40:25', '2019-04-25 02:40:25', '2020-04-24 21:40:25'),
('5aadefcec2c088fb5511b9487714c6be1009228a5172fc1c7ff7cd98b156c977ca143a53c79f80aa', 3, 1, 'MyApp', '[]', 0, '2019-04-25 00:59:08', '2019-04-25 00:59:08', '2020-04-24 19:59:08'),
('5b65fe49a7d680a94ef155d91f0fcbf8f17d42448db95532bcdb52c40094b005803761c543747178', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:26:06', '2019-04-25 02:26:06', '2020-04-24 21:26:06'),
('5c96c53030485975e1861b2fe9ba76933d2886afd2fcc8bbd5fc62bf52a192db0cdc5722778e484d', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:55:03', '2019-04-25 02:55:03', '2020-04-24 21:55:03'),
('61689800d821986797633334f54b8d2d607b7b6866169b3318422e2e5fb363aa84ccdbd12ab19482', 1, 1, 'MyApp', '[]', 0, '2019-04-25 00:54:58', '2019-04-25 00:54:58', '2020-04-24 19:54:58'),
('625667242e22e99a458b878993e65f530540e28f6b08cb2c2c38e3ebde6083b47c9cbc24f92afd05', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:22:19', '2019-04-25 02:22:19', '2020-04-24 21:22:19'),
('6d40f31faa47afe5d03a79875b355756746f326997ec96a5aae648192a35efef130841cb9baee759', 3, 1, 'MyApp', '[]', 0, '2019-04-25 00:59:17', '2019-04-25 00:59:17', '2020-04-24 19:59:17'),
('72a7d34f4828454521a0cf573f3ed826eaa5c0a89f34c1877560199b2b82e671aecdff31d878b451', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:37:21', '2019-04-25 02:37:21', '2020-04-24 21:37:21'),
('7b2b297e509c9e05869725f48b1b3a526a84c684f1a883084e3a714306c6d0284dc00e645ff28645', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:28:36', '2019-04-25 02:28:36', '2020-04-24 21:28:36'),
('7bebfb10a73125884835fbd9ea052c2c55c8a95020bc3c52ca2cba1db0652a754d3937c2827ba18d', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:26:44', '2019-04-25 02:26:44', '2020-04-24 21:26:44'),
('867274cb02cbb9f8569ab0f310525ee9dfa5d00ccd71d3a46e90190acc6fd1816fac6c308dc851cd', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:53:41', '2019-04-25 02:53:41', '2020-04-24 21:53:41'),
('9a4161e3a4bc01702f67032257fe30194f6747ee272340eaf6866936d4f913242e07042f70e62433', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:21:22', '2019-04-25 02:21:22', '2020-04-24 21:21:22'),
('a51a7c6e3f405daeccd247b5538a8cb3b130a6789d0d46bee3d137b16c9caed343ffd8f61bd0d517', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:31:46', '2019-04-25 02:31:46', '2020-04-24 21:31:46'),
('a684e9c4b562c4dce6c5e9d8d0addc23820d5d9c69bebec95640188c458c2d9d4fc47fffea170e45', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:25:02', '2019-04-25 02:25:02', '2020-04-24 21:25:02'),
('ab3af50640681114a2b12365e9d17afcf52a359f4631429d8a1770e09c053e7119b786f652f7f3f1', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:09:13', '2019-04-25 02:09:13', '2020-04-24 21:09:13'),
('bb480cf3a4629755cc45fa465f422c5e0c98b150cb2a4cd8036a063e2bc3858dbdeed855967039a3', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:35:33', '2019-04-25 02:35:33', '2020-04-24 21:35:33'),
('c71f51065aa9e2e86c1351960e5ac8efcfc932a0a3541ab67fe81578b4919a9fde8bcae1f77ba51c', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:50:34', '2019-04-25 02:50:34', '2020-04-24 21:50:34'),
('c87284f0f4194ca8936d558499938019130a8828150db93d06e30a51ca3dad29801ff47c0179af0d', 3, 1, 'MyApp', '[]', 0, '2019-04-25 00:55:53', '2019-04-25 00:55:53', '2020-04-24 19:55:53'),
('d9b8487d24b68bd3883ac56c493c5760504d0776b8c1382e99a92460d82938b7a050d39cdc03ba9b', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:59:23', '2019-04-25 02:59:23', '2020-04-24 21:59:23'),
('dc7eaab14c200dbcb29b8b6225f64ab10f996bc8815f7635157f4c0eb1062d97a4d0379f3694b8ee', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:32:27', '2019-04-25 02:32:27', '2020-04-24 21:32:27'),
('e24fc6b74b56c265b2e4324cdcc247d995d3f89825bb66a06e7a3f2eb1f295623e65c62c7b4a0c8f', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:45:35', '2019-04-25 02:45:35', '2020-04-24 21:45:35'),
('e531481dbeddf5fc16bb7e3d6dfe64c5a04537f3909c36a552a234cb116796b1c09ef494405d6be0', 3, 1, 'MyApp', '[]', 0, '2019-04-25 00:59:15', '2019-04-25 00:59:15', '2020-04-24 19:59:15'),
('f09af770b43ec750a676f8e8872dce3686a9076b53fe4f79b0862c9f3d4747bb69ccd083ba633206', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:46:25', '2019-04-25 02:46:25', '2020-04-24 21:46:25'),
('f2efd5755bd25a7284a74194fffdad7e4991a07b6676d1adb23460d14ab896a283c8391b2d5b4615', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:36:17', '2019-04-25 02:36:17', '2020-04-24 21:36:17'),
('f5ee55e2d06dbbbbb7ccca15685ed1e8f120005f4685df27e47fd79b739d7dd2ce5f81ac42016435', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:33:00', '2019-04-25 02:33:00', '2020-04-24 21:33:00'),
('f815ca858ba2b628f1fd1fea22ffd71a72c0f683ab4d7a90ef3445ceda7a958191a0d986dbb7d4f0', 3, 1, 'MyApp', '[]', 0, '2019-04-25 02:59:07', '2019-04-25 02:59:07', '2020-04-24 21:59:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '2U9x9dParkJGXSL3xKgvfaZL4x4a9fveaY9MobgW', 'http://localhost', 1, 0, 0, '2019-04-25 00:35:11', '2019-04-25 00:35:11'),
(2, NULL, 'Laravel Password Grant Client', 'T8ZiBBH1cPjQ5rmOyduzBgo0UiPY6Xx6Yv3SawSu', 'http://localhost', 0, 1, 0, '2019-04-25 00:35:11', '2019-04-25 00:35:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-04-25 00:35:11', '2019-04-25 00:35:11');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Jhonatan rodriguez', 'test@test.com', NULL, '$2y$10$0ZUd1AbX9wzelVCSWacc0eUvBZfOoD3/WeKUDgMnfOcAx8eQz9NA.', NULL, '2019-04-25 03:01:10', '2019-04-25 03:01:10');

--
-- Índices para tablas volcadas
--

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;