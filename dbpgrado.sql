-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-05-2023 a las 00:39:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbpgrado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_usuarios'),
(22, 'Can change user', 6, 'change_usuarios'),
(23, 'Can delete user', 6, 'delete_usuarios'),
(24, 'Can view user', 6, 'view_usuarios'),
(25, 'Can add alumnos', 7, 'add_alumnos'),
(26, 'Can change alumnos', 7, 'change_alumnos'),
(27, 'Can delete alumnos', 7, 'delete_alumnos'),
(28, 'Can view alumnos', 7, 'view_alumnos'),
(29, 'Can add grupos alumnos', 8, 'add_gruposalumnos'),
(30, 'Can change grupos alumnos', 8, 'change_gruposalumnos'),
(31, 'Can delete grupos alumnos', 8, 'delete_gruposalumnos'),
(32, 'Can view grupos alumnos', 8, 'view_gruposalumnos'),
(33, 'Can add grupos indicadores', 9, 'add_gruposindicadores'),
(34, 'Can change grupos indicadores', 9, 'change_gruposindicadores'),
(35, 'Can delete grupos indicadores', 9, 'delete_gruposindicadores'),
(36, 'Can view grupos indicadores', 9, 'view_gruposindicadores'),
(37, 'Can add indicadores', 10, 'add_indicadores'),
(38, 'Can change indicadores', 10, 'change_indicadores'),
(39, 'Can delete indicadores', 10, 'delete_indicadores'),
(40, 'Can view indicadores', 10, 'view_indicadores'),
(41, 'Can add grupos relacion', 11, 'add_gruposrelacion'),
(42, 'Can change grupos relacion', 11, 'change_gruposrelacion'),
(43, 'Can delete grupos relacion', 11, 'delete_gruposrelacion'),
(44, 'Can view grupos relacion', 11, 'view_gruposrelacion'),
(45, 'Can add cumplimientos', 12, 'add_cumplimientos'),
(46, 'Can change cumplimientos', 12, 'change_cumplimientos'),
(47, 'Can delete cumplimientos', 12, 'delete_cumplimientos'),
(48, 'Can view cumplimientos', 12, 'view_cumplimientos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'myapp', 'alumnos'),
(12, 'myapp', 'cumplimientos'),
(8, 'myapp', 'gruposalumnos'),
(9, 'myapp', 'gruposindicadores'),
(11, 'myapp', 'gruposrelacion'),
(10, 'myapp', 'indicadores'),
(6, 'myapp', 'usuarios'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-18 15:30:13.082681'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-05-18 15:30:13.167688'),
(3, 'auth', '0001_initial', '2023-05-18 15:30:13.391706'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-05-18 15:30:13.448710'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-05-18 15:30:13.455713'),
(6, 'auth', '0004_alter_user_username_opts', '2023-05-18 15:30:13.464712'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-05-18 15:30:13.470711'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-05-18 15:30:13.474713'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-05-18 15:30:13.482712'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-05-18 15:30:13.491714'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-05-18 15:30:13.498716'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-05-18 15:30:13.517717'),
(13, 'auth', '0011_update_proxy_permissions', '2023-05-18 15:30:13.526717'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-05-18 15:30:13.534717'),
(15, 'myapp', '0001_initial', '2023-05-18 15:30:14.258775'),
(16, 'admin', '0001_initial', '2023-05-18 15:30:14.386788'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-05-18 15:30:14.398786'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-18 15:30:14.409787'),
(19, 'sessions', '0001_initial', '2023-05-18 15:30:14.445791');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mqswri4by9yhxstv47gdy1pl5asirgvz', '.eJxVjMsOwiAURP-FtSHgLS-X7v0GwuWCVA0kpV0Z_12adKGznHNm3syHbS1-62nxM7ELk-z022GIz1R3QI9Q743HVtdlRr4r_KCd3xql1_Vw_w5K6GWs1RmilAQ2aSu1QDKCaNJoCa2jrB0aGGQayVY4MJCjmkDL7EJQEdnnC8i1N1Q:1pzg28:8PMULfK0ROT4KEIphAR-plVRHHFI5Kt2C3m3OKM3whc', '2023-06-01 15:59:16.350764');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_alumnos`
--

CREATE TABLE `myapp_alumnos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `grupos_alumnos_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_cumplimientos`
--

CREATE TABLE `myapp_cumplimientos` (
  `id` bigint(20) NOT NULL,
  `cumplido` varchar(2) NOT NULL,
  `alumno_id` bigint(20) NOT NULL,
  `indicador_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_gruposalumnos`
--

CREATE TABLE `myapp_gruposalumnos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_gruposindicadores`
--

CREATE TABLE `myapp_gruposindicadores` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_gruposrelacion`
--

CREATE TABLE `myapp_gruposrelacion` (
  `id` bigint(20) NOT NULL,
  `grupo_estudiantes_id` bigint(20) NOT NULL,
  `grupo_indicadores_id` bigint(20) NOT NULL,
  `usuarios_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_indicadores`
--

CREATE TABLE `myapp_indicadores` (
  `id` bigint(20) NOT NULL,
  `enunciado` varchar(100) NOT NULL,
  `grupos_indicadores_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_usuarios`
--

CREATE TABLE `myapp_usuarios` (
  `id` bigint(20) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `myapp_usuarios`
--

INSERT INTO `myapp_usuarios` (`id`, `last_login`, `is_superuser`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `username`, `password`, `nombre`, `apellido`) VALUES
(1, '2023-05-18 15:59:16.347764', 0, '', '', '', 0, 1, '2023-05-18 15:37:50.417831', 'prueba', 'pbkdf2_sha256$600000$SC2ekiCXmlyINte8Tqz58h$g559oTB7Ettq71ejoCdvxV3VbpPnm/pTNksUZdch250=', 'Moncadf', 'Moncadf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_usuarios_groups`
--

CREATE TABLE `myapp_usuarios_groups` (
  `id` bigint(20) NOT NULL,
  `usuarios_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_usuarios_user_permissions`
--

CREATE TABLE `myapp_usuarios_user_permissions` (
  `id` bigint(20) NOT NULL,
  `usuarios_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_myapp_usuarios_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `myapp_alumnos`
--
ALTER TABLE `myapp_alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_alumnos_grupos_alumnos_id_686bc57e_fk_myapp_gru` (`grupos_alumnos_id`);

--
-- Indices de la tabla `myapp_cumplimientos`
--
ALTER TABLE `myapp_cumplimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_cumplimientos_alumno_id_7f41ccde_fk_myapp_alumnos_id` (`alumno_id`),
  ADD KEY `myapp_cumplimientos_indicador_id_46eae50a_fk_myapp_ind` (`indicador_id`);

--
-- Indices de la tabla `myapp_gruposalumnos`
--
ALTER TABLE `myapp_gruposalumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_gruposindicadores`
--
ALTER TABLE `myapp_gruposindicadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_gruposrelacion`
--
ALTER TABLE `myapp_gruposrelacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_gruposrelacion_grupo_estudiantes_id_6432ab8b_fk_myapp_gru` (`grupo_estudiantes_id`),
  ADD KEY `myapp_gruposrelacion_grupo_indicadores_id_d804f4ff_fk_myapp_gru` (`grupo_indicadores_id`),
  ADD KEY `myapp_gruposrelacion_usuarios_id_0c221b27_fk_myapp_usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `myapp_indicadores`
--
ALTER TABLE `myapp_indicadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_indicadores_grupos_indicadores_i_34c9d3c7_fk_myapp_gru` (`grupos_indicadores_id`);

--
-- Indices de la tabla `myapp_usuarios`
--
ALTER TABLE `myapp_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `myapp_usuarios_groups`
--
ALTER TABLE `myapp_usuarios_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_usuarios_groups_usuarios_id_group_id_55c503be_uniq` (`usuarios_id`,`group_id`),
  ADD KEY `myapp_usuarios_groups_group_id_79d69237_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `myapp_usuarios_user_permissions`
--
ALTER TABLE `myapp_usuarios_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_usuarios_user_perm_usuarios_id_permission_i_fe674848_uniq` (`usuarios_id`,`permission_id`),
  ADD KEY `myapp_usuarios_user__permission_id_8cb62540_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `myapp_alumnos`
--
ALTER TABLE `myapp_alumnos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_cumplimientos`
--
ALTER TABLE `myapp_cumplimientos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_gruposalumnos`
--
ALTER TABLE `myapp_gruposalumnos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_gruposindicadores`
--
ALTER TABLE `myapp_gruposindicadores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_gruposrelacion`
--
ALTER TABLE `myapp_gruposrelacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_indicadores`
--
ALTER TABLE `myapp_indicadores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_usuarios`
--
ALTER TABLE `myapp_usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myapp_usuarios_groups`
--
ALTER TABLE `myapp_usuarios_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_usuarios_user_permissions`
--
ALTER TABLE `myapp_usuarios_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_myapp_usuarios_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_usuarios` (`id`);

--
-- Filtros para la tabla `myapp_alumnos`
--
ALTER TABLE `myapp_alumnos`
  ADD CONSTRAINT `myapp_alumnos_grupos_alumnos_id_686bc57e_fk_myapp_gru` FOREIGN KEY (`grupos_alumnos_id`) REFERENCES `myapp_gruposalumnos` (`id`);

--
-- Filtros para la tabla `myapp_cumplimientos`
--
ALTER TABLE `myapp_cumplimientos`
  ADD CONSTRAINT `myapp_cumplimientos_alumno_id_7f41ccde_fk_myapp_alumnos_id` FOREIGN KEY (`alumno_id`) REFERENCES `myapp_alumnos` (`id`),
  ADD CONSTRAINT `myapp_cumplimientos_indicador_id_46eae50a_fk_myapp_ind` FOREIGN KEY (`indicador_id`) REFERENCES `myapp_indicadores` (`id`);

--
-- Filtros para la tabla `myapp_gruposrelacion`
--
ALTER TABLE `myapp_gruposrelacion`
  ADD CONSTRAINT `myapp_gruposrelacion_grupo_estudiantes_id_6432ab8b_fk_myapp_gru` FOREIGN KEY (`grupo_estudiantes_id`) REFERENCES `myapp_gruposalumnos` (`id`),
  ADD CONSTRAINT `myapp_gruposrelacion_grupo_indicadores_id_d804f4ff_fk_myapp_gru` FOREIGN KEY (`grupo_indicadores_id`) REFERENCES `myapp_gruposindicadores` (`id`),
  ADD CONSTRAINT `myapp_gruposrelacion_usuarios_id_0c221b27_fk_myapp_usuarios_id` FOREIGN KEY (`usuarios_id`) REFERENCES `myapp_usuarios` (`id`);

--
-- Filtros para la tabla `myapp_indicadores`
--
ALTER TABLE `myapp_indicadores`
  ADD CONSTRAINT `myapp_indicadores_grupos_indicadores_i_34c9d3c7_fk_myapp_gru` FOREIGN KEY (`grupos_indicadores_id`) REFERENCES `myapp_gruposindicadores` (`id`);

--
-- Filtros para la tabla `myapp_usuarios_groups`
--
ALTER TABLE `myapp_usuarios_groups`
  ADD CONSTRAINT `myapp_usuarios_groups_group_id_79d69237_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `myapp_usuarios_groups_usuarios_id_c6020c3a_fk_myapp_usuarios_id` FOREIGN KEY (`usuarios_id`) REFERENCES `myapp_usuarios` (`id`);

--
-- Filtros para la tabla `myapp_usuarios_user_permissions`
--
ALTER TABLE `myapp_usuarios_user_permissions`
  ADD CONSTRAINT `myapp_usuarios_user__permission_id_8cb62540_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `myapp_usuarios_user__usuarios_id_0c293e22_fk_myapp_usu` FOREIGN KEY (`usuarios_id`) REFERENCES `myapp_usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
