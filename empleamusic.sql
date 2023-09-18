-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para empleamusic
CREATE DATABASE IF NOT EXISTS `empleamusic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `empleamusic`;

-- Volcando estructura para tabla empleamusic.administradores
CREATE TABLE IF NOT EXISTS `administradores` (
  `idadministrador` int NOT NULL,
  `idcategoria` int NOT NULL,
  `nombre` varchar(159) NOT NULL DEFAULT '',
  PRIMARY KEY (`idadministrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.administradores: ~0 rows (aproximadamente)

-- Volcando estructura para tabla empleamusic.agendas
CREATE TABLE IF NOT EXISTS `agendas` (
  `idagenda` int NOT NULL AUTO_INCREMENT,
  `idaprendiz` int DEFAULT NULL,
  `idclase` int NOT NULL,
  `fechaagendada` date NOT NULL,
  `fechahora` time NOT NULL,
  `descripcion` varchar(700) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idagenda`),
  KEY `fkaprendizagenda` (`idaprendiz`),
  CONSTRAINT `fkaprendizagenda` FOREIGN KEY (`idaprendiz`) REFERENCES `aprendizes` (`idaprendiz`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.agendas: ~24 rows (aproximadamente)
INSERT INTO `agendas` (`idagenda`, `idaprendiz`, `idclase`, `fechaagendada`, `fechahora`, `descripcion`, `created_at`, `updated_at`) VALUES
	(1, 1, 11, '2023-07-13', '09:00:00', 'Clase de matemáticas avanzadas', NULL, NULL),
	(2, 2, 2, '2023-07-14', '15:30:00', 'Lección de guitarra para principiantes', NULL, NULL),
	(3, 3, 13, '2023-07-15', '17:00:00', 'Tutoría de inglés para nivel intermedio', NULL, NULL),
	(4, 17, 1, '2023-07-16', '10:00:00', 'Sesión de yoga para relajación', NULL, NULL),
	(5, 5, 5, '2023-07-17', '14:00:00', 'Entrenamiento de tenis para competición', NULL, NULL),
	(6, 6, 16, '2023-07-18', '16:30:00', 'Clase de pintura al óleo', NULL, NULL),
	(7, 7, 7, '2023-07-19', '11:00:00', 'Lección de piano para todos los niveles', NULL, NULL),
	(8, 8, 8, '2023-07-20', '13:30:00', 'Tutoría de física para estudiantes universitarios', NULL, NULL),
	(9, 3, 19, '2023-07-21', '09:30:00', 'Sesión de meditación para principiantes', NULL, NULL),
	(10, 10, 20, '2023-07-22', '16:00:00', 'Entrenamiento de fútbol para niños', NULL, NULL),
	(11, 11, 11, '2023-07-23', '12:00:00', 'Clase de canto para mejorar técnica vocal', NULL, NULL),
	(12, 12, 12, '2023-07-24', '15:00:00', 'Lección de violín para estudiantes avanzados', NULL, NULL),
	(13, 11, 15, '2023-07-25', '18:00:00', 'Tutoría de química para exámenes', NULL, NULL),
	(14, 14, 5, '2023-07-26', '10:30:00', 'Sesión de pilates para fortalecimiento corporal', NULL, NULL),
	(15, 15, 2, '2023-07-27', '14:30:00', 'Entrenamiento de natación para adultos', NULL, NULL),
	(16, 16, 20, '2023-07-28', '16:00:00', 'Clase de ballet para niños y niñas', NULL, NULL),
	(17, 10, 10, '2023-07-29', '11:30:00', 'Lección de saxofón para todos los niveles', NULL, NULL),
	(18, 8, 8, '2023-07-30', '13:00:00', 'Tutoría de historia para estudiantes de secundaria', NULL, NULL),
	(19, 19, 3, '2023-07-31', '09:30:00', 'Sesión de mindfulness para reducir el estrés', NULL, NULL),
	(20, 20, 10, '2023-08-01', '17:00:00', 'Entrenamiento de baloncesto para jóvenes', NULL, NULL),
	(21, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:12:29', '2023-09-08 03:12:29'),
	(22, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:13:22', '2023-09-08 03:13:22'),
	(23, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:13:46', '2023-09-08 03:13:46'),
	(24, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:14:14', '2023-09-08 03:14:14'),
	(25, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:14:37', '2023-09-08 03:14:37'),
	(26, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:15:04', '2023-09-08 03:15:04'),
	(27, NULL, 23, '2024-02-12', '12:32:00', 'Hola', '2023-09-08 03:17:08', '2023-09-08 03:17:08'),
	(28, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:10:42', '2023-09-18 23:10:42'),
	(29, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:12:03', '2023-09-18 23:12:03'),
	(30, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:12:46', '2023-09-18 23:12:46'),
	(31, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:13:00', '2023-09-18 23:13:00'),
	(32, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:13:39', '2023-09-18 23:13:39'),
	(33, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:15:24', '2023-09-18 23:15:24'),
	(34, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:16:19', '2023-09-18 23:16:19'),
	(35, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:16:50', '2023-09-18 23:16:50'),
	(36, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:19:05', '2023-09-18 23:19:05'),
	(37, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:25:37', '2023-09-18 23:25:37'),
	(38, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:26:01', '2023-09-18 23:26:01'),
	(39, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:33:04', '2023-09-18 23:33:04'),
	(40, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:34:31', '2023-09-18 23:34:31'),
	(41, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:36:00', '2023-09-18 23:36:00'),
	(42, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:39:05', '2023-09-18 23:39:05'),
	(43, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:57:35', '2023-09-18 23:57:35'),
	(44, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:57:52', '2023-09-18 23:57:52'),
	(45, NULL, 24, '2025-11-23', '12:02:00', 'Hola', '2023-09-18 23:58:05', '2023-09-18 23:58:05'),
	(46, 79, 3, '2024-12-21', '13:03:00', 'hola quisiera mejorar mi tecnica', '2023-09-19 00:01:54', '2023-09-19 00:01:54');

-- Volcando estructura para tabla empleamusic.aprendizes
CREATE TABLE IF NOT EXISTS `aprendizes` (
  `idaprendiz` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contrasena` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefono` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(700) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Imagen` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `documento` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idaprendiz`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.aprendizes: ~17 rows (aproximadamente)
INSERT INTO `aprendizes` (`idaprendiz`, `nombre`, `apellido`, `email`, `contrasena`, `telefono`, `descripcion`, `created_at`, `updated_at`, `Imagen`, `documento`) VALUES
	(61, 'Juan', 'Pérez', 'juan@example.com', 'Contrasena123', '1234567890', 'Estudiante de música interesado en aprender piano', NULL, NULL, NULL, '0'),
	(62, 'María', 'González', 'maria@example.com', 'Passw0rd', '9876543210', 'Apasionada por la guitarra y deseando mejorar mis habilidades', NULL, NULL, NULL, '0'),
	(65, 'Luis', 'Rodríguez', 'luis@example.com', 'StrongPwd_456', '7891234560', 'Interesado en la batería y buscando un profesor', NULL, NULL, NULL, '0'),
	(66, 'Laura', 'Hernández', 'laura@example.com', 'MyP@ssw0rd', '6549873210', 'Busco clases de saxofón para mejorar mis habilidades musicales', NULL, NULL, NULL, '0'),
	(67, 'Carlos', 'Sánchez', 'carlos@example.com', 'SuperSecreto22', '9873216540', 'Deseo aprender a tocar el bajo eléctrico', NULL, NULL, NULL, '0'),
	(69, 'Miguel', 'Torres', 'miguel@example.com', '$2y$10$3Zo8AYp/FS4vxlRSzOQxgezwnaGUwCCQ.sDKtVPyllKYPil9BQXnm', '4561237890', 'Interesado en aprender piano y teoría musical', NULL, '2023-08-23 23:38:06', '1692815886_768290-anime-Alice-in-Wonderland-soft-shading-fantasy-art.jpg', '203938813'),
	(70, 'Carmen', 'Vargas', 'carmen@example.com', 'P@55w0rd', '7894561230', 'Busco clases de guitarra eléctrica para tocar rock', NULL, NULL, NULL, '0'),
	(71, 'Pablo', 'Flores', 'pablo@example.com', '$2y$10$xreejl6TL6be2LO7m0WoAuCWGK/IQmpkenr4gC/J4UGjm6zkU9S3i', '3217894560', 'Aspirante a compositor buscando conocimientos en armonía musical', NULL, '2023-08-31 03:34:22', '1693434862__ca4214e7-b6a1-4e42-93e3-1f4e5e0c8c6f.jpg', '1232133'),
	(72, 'Isabel', 'Mendoza', 'isabel@example.com', '$2y$10$31IeIsAQ0xf02tkSSbyhrOsgmuOfAZV3Lx9bAZz/APmpkrkJUtdre', '6541237890', 'Amante del jazz y buscando clases de improvisación', NULL, '2023-08-16 22:45:55', '1692207955__d2f45fb9-7f34-4fd2-a6df-50a7433f4334.jpg', '0'),
	(73, 'Jorge', 'Ortega', 'david@example.com', '$2y$10$1UTL0axtDCnfgqCcDmhOd.63wHchEK0MKifbM8rZTf9QgkLLPPjFS', '9874561230', 'Deseo aprender a tocar la flauta traversa', NULL, '2023-08-16 22:58:25', '1692208705_258107.jpg', '0'),
	(74, 'Elena', 'Ruiz', 'elena@example.com', '$2y$10$yP.6hAr4ZUZLH791XjuM5uip3BDEX4wvBk8F2SfGYGM/gY6.wpsMO', '1234567890', 'Estudiante de música clásica y deseando mejorar en el piano', NULL, '2023-08-15 03:17:56', '1692051476__c9b83294-aaf3-4eb9-8415-4be87604051c.jpg', '0'),
	(75, 'Carlos', 'Silva', 'javier@example.com', '$2y$10$LWoAUVIa1Prm.6R39hGp1uQTCS/8DQCVRR/sv4ELInai6Jz6se.Qu', '7891234560', 'Apasionado por el canto lírico y buscando un profesor de canto', NULL, '2023-08-16 22:59:00', '1692208740__75fe1602-ae24-4836-810c-f44f40f06d84.jpg', '0'),
	(79, 'Óscar', 'Rojas Pinilla', 'oscar@example.com', '$2y$10$8hKXD8Zdmptb/pWy/kPXmObAiubbvkiIvB1Dld2viMySssxNk5PMO', '6549873210', 'Deseo aprender a tocar el piano de forma autodidacta', NULL, '2023-08-31 08:11:56', '1692226570_3-33069_kiln-of-the-first-flame-dark-souls-wallpaper.jpg', '10232312'),
	(80, 'Clara', 'Fuentes', 'clara@example.com', 'R0bustP@ss', '3217894560', 'Interesada en clases de canto pop para cantar en eventos', NULL, NULL, NULL, '0'),
	(83, 'erik', 'hernandes', 'erikhs@ss.com', '$2y$10$xxJS2LB0b1P4B2FX9InmG.QSv0Dnwddp201Y8vcPsD6AAD15vzRaq', '3221289083', 'Hola quiero aprender percusion', '2023-08-15 01:55:43', '2023-08-15 03:17:41', '1692051461__ca4214e7-b6a1-4e42-93e3-1f4e5e0c8c6f.jpg', '0'),
	(84, 'Gabriel', 'Martinez', 'sadistic@sadsa', '$2y$10$OEg9ZaNws/ZS/ftnV6smXeYkgecK0fhg08cezhMWwkqHX..J0/ki2', '3122904567', 'nuevo en musica', '2023-08-15 02:28:03', '2023-08-15 02:41:37', '1692049296_3819574.jpg', '0'),
	(85, 'Juan', 'Motivar Moreno', 'holasoyjuan234@gmail.com', '$2y$10$cWwoca9wAmAD4LVW09Lu0.wL5aAVYvaHUfnhXZO9/CM.eZy5pp/22', '3208821875', 'Hola soy juan y me encanta la armónica', '2023-08-16 23:01:48', '2023-08-16 23:02:23', '1692208927__d2f45fb9-7f34-4fd2-a6df-50a7433f4334.jpg', '0'),
	(86, 'Edwin', 'Martinez', 'SADD@gmail.com', 'adsdsad', '320998214', 'Buen dia me encantan las danzas', '2023-08-29 00:19:33', '2023-08-29 00:19:33', 'DWodDqJow0xorAFOkB7wWFxWPThjY6ZXfMXFyOjJ.jpg', '100399242'),
	(87, 'Holandes', 'Volador', 'Flyviking@hotmail.com', '212322', '3208882122', 'Soy fanatico del new', '2023-08-29 01:17:33', '2023-08-29 01:17:33', 'hHkfXui6AY1VtAuFYxv4V613S0dYX7v3xNuGYncy.jpg', '10093322');

-- Volcando estructura para tabla empleamusic.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tipo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idcategoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.categorias: ~72 rows (aproximadamente)
INSERT INTO `categorias` (`idcategoria`, `nombre`, `tipo`, `created_at`, `updated_at`) VALUES
	(1, 'Piano', 'Teclado', '2023-08-23 22:29:16', '2023-08-23 22:29:17'),
	(2, 'Guitarra', 'Cuerdas', '2023-08-23 22:29:19', '2023-08-23 22:29:20'),
	(3, 'Violin', 'Cuerdas', '2023-08-23 22:29:21', '2023-08-23 22:29:22'),
	(4, 'Bateria', 'Percusion', '2023-08-23 22:29:23', '2023-08-23 22:29:24'),
	(5, 'Flauta', 'Vientos', '2023-07-23 22:29:25', '2023-08-23 22:29:26'),
	(6, 'Saxofon', 'Vientos', '2023-08-23 22:29:29', '2023-08-23 22:29:28'),
	(7, 'Trompeta', 'Vientos', '2023-08-23 22:29:26', '2023-08-23 22:29:27'),
	(8, 'Bajo', 'Cuerdas', '2023-08-23 22:29:30', '2023-08-23 22:29:30'),
	(9, 'Violonchelo', 'Cuerdas', '2023-08-23 22:29:31', '2023-08-23 22:29:31'),
	(10, 'Trombon', 'Vientos', '2023-08-23 22:29:32', '2023-08-23 22:29:34'),
	(11, 'Clarinete', 'Vientos', '2023-08-23 22:29:33', '2023-08-23 22:29:33'),
	(12, 'Arpa', 'Cuerdas', NULL, NULL),
	(13, 'Acordeon', 'Teclado', NULL, NULL),
	(14, 'Xilofono', 'Percusion', NULL, NULL),
	(15, 'Oboe', 'Vientos', NULL, NULL),
	(16, 'Tuba', 'Vientos', NULL, NULL),
	(17, 'Baritono', 'Vientos', NULL, NULL),
	(18, 'Platillos', 'Percusion', NULL, NULL),
	(19, 'Congas', 'Percusion', NULL, NULL),
	(20, 'Maracas', 'Percusion', NULL, NULL),
	(33, 'Acordeon', 'Teclado', NULL, NULL),
	(36, 'Tuba', 'Vientos', NULL, NULL),
	(37, 'Baritono', 'Vientos', NULL, NULL),
	(38, 'Platillos', 'Percusion', NULL, NULL),
	(39, 'Congas', 'Percusion', NULL, NULL),
	(40, 'Maracas', 'Percusion', NULL, NULL),
	(41, 'Piano', 'Teclado', NULL, NULL),
	(42, 'Guitarra', 'Cuerdas', NULL, NULL),
	(43, 'Violin', 'Cuerdas', NULL, NULL),
	(44, 'Bateria', 'Percusion', NULL, NULL),
	(45, 'Flauta', 'Vientos', NULL, NULL),
	(46, 'Saxofon', 'Vientos', NULL, NULL),
	(47, 'Trompeta', 'Vientos', NULL, NULL),
	(48, 'Bajo', 'Cuerdas', NULL, NULL),
	(49, 'Violonchelo', 'Cuerdas', NULL, NULL),
	(50, 'Trombon', 'Vientos', NULL, NULL),
	(51, 'Clarinete', 'Vientos', NULL, NULL),
	(52, 'Arpa', 'Cuerdas', NULL, NULL),
	(53, 'Acordeon', 'Teclado', NULL, NULL),
	(54, 'Xilofono', 'Percusion', NULL, NULL),
	(55, 'Oboe', 'Vientos', NULL, NULL),
	(56, 'Tuba', 'Vientos', NULL, NULL),
	(57, 'Baritono', 'Vientos', NULL, NULL),
	(58, 'Platillos', 'Percusion', NULL, NULL),
	(59, 'Congas', 'Percusion', NULL, NULL),
	(60, 'Maracas', 'Percusion', NULL, NULL),
	(61, 'Piano', 'Teclado', NULL, NULL),
	(62, 'Guitarra', 'Cuerdas', NULL, NULL),
	(63, 'Violin', 'Cuerdas', NULL, NULL),
	(64, 'Bateria', 'Percusion', NULL, NULL),
	(65, 'Flauta', 'Vientos', NULL, NULL),
	(66, 'Saxofon', 'Vientos', NULL, NULL),
	(67, 'Trompeta', 'Vientos', NULL, NULL),
	(68, 'Bajo', 'Cuerdas', NULL, NULL),
	(69, 'Violonchelo', 'Cuerdas', NULL, NULL),
	(70, 'Trombon', 'Vientos', NULL, NULL),
	(71, 'Clarinete', 'Vientos', NULL, NULL),
	(72, 'Arpa', 'Cuerdas', NULL, NULL),
	(73, 'Acordeon', 'Teclado', NULL, NULL),
	(74, 'Xilofono', 'Percusion', NULL, NULL),
	(75, 'Oboe', 'Vientos', NULL, NULL),
	(76, 'Tuba', 'Vientos', NULL, NULL),
	(77, 'Baritono', 'Vientos', NULL, NULL),
	(78, 'Platillos', 'Percusion', NULL, NULL),
	(79, 'Congas', 'Percusion', NULL, NULL),
	(80, 'Maracas', 'Percusion', NULL, NULL),
	(81, 'Bonjo', 'Cuerda', '2023-08-17 00:38:47', '2023-08-17 00:38:47'),
	(82, 'Danza Aerea', 'Danzas', '2023-08-30 23:21:32', '2023-08-30 23:21:32');

-- Volcando estructura para tabla empleamusic.clases
CREATE TABLE IF NOT EXISTS `clases` (
  `idclase` int NOT NULL AUTO_INCREMENT,
  `idprofesor` int NOT NULL,
  `idcategoria` int NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(700) NOT NULL,
  `costo` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `cupos` int NOT NULL,
  PRIMARY KEY (`idclase`),
  KEY `fkprofesorclase` (`idprofesor`),
  KEY `fkinstrumentosclases` (`idcategoria`) USING BTREE,
  CONSTRAINT `fkinstrumentosclases` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`),
  CONSTRAINT `fkprofesorclase` FOREIGN KEY (`idprofesor`) REFERENCES `profesores` (`idprofesor`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.clases: ~24 rows (aproximadamente)
INSERT INTO `clases` (`idclase`, `idprofesor`, `idcategoria`, `nombre`, `descripcion`, `costo`, `created_at`, `updated_at`, `fecha`, `horafin`, `horainicio`, `cupos`) VALUES
	(1, 10, 11, 'Clase de piano', 'Aprende a tocar el piano con un profesor experimentado', 50000, NULL, NULL, NULL, NULL, NULL, 5),
	(2, 2, 20, 'Lección de guitarra', 'Descubre los secretos de la guitarra de la mano de un experto', 40000, NULL, NULL, NULL, NULL, NULL, 4),
	(3, 13, 10, 'Tutoría de violín', 'Mejora tu técnica y expresión en el violín con un tutor profesional', 35000, NULL, NULL, '2025-08-30', '22:40:38', '12:40:39', 10),
	(4, 4, 1, 'Sesión de batería', 'Aprende a tocar la batería y desarrolla tu ritmo y coordinación', 30000, NULL, NULL, NULL, NULL, NULL, 12),
	(5, 20, 2, 'Entrenamiento de guitarra eléctrica', 'Mejora tus habilidades en la guitarra eléctrica con un entrenador especializado', 60000, NULL, NULL, '2023-08-30', NULL, NULL, 23),
	(6, 16, 5, 'Clase de flauta traversa', 'Aprende a tocar la flauta traversa y descubre su hermoso sonido', 35000, NULL, NULL, NULL, NULL, NULL, 1),
	(7, 1, 7, 'Lección de saxofón', 'Descubre y mejora tu técnica en el saxofón con un profesor de renombre', 450000, NULL, NULL, NULL, NULL, NULL, 2),
	(8, 3, 4, 'Tutoría de clarinete', 'Recibe apoyo y orientación en el aprendizaje del clarinete', 30000, NULL, NULL, NULL, NULL, NULL, 0),
	(9, 5, 5, 'Sesión de guitarra acústica', 'Explora el mundo de la guitarra acústica y aprende técnicas populares', 250000, NULL, NULL, '2023-08-30', NULL, NULL, 12),
	(10, 11, 16, 'Entrenamiento de violonchelo', 'Desarrolla tu habilidad y musicalidad en el violonchelo con un entrenador profesional', 50000, NULL, NULL, NULL, NULL, NULL, 6),
	(11, 19, 12, 'Clase de teclado', 'Aprende a tocar el teclado y descubre sus infinitas posibilidades musicales', 40000, NULL, NULL, NULL, NULL, NULL, 23),
	(12, 11, 18, 'Lección de bajo eléctrico', 'Descubre el groove del bajo eléctrico y aprende a crear líneas de bajo', 45000, NULL, NULL, NULL, NULL, NULL, 67),
	(13, 3, 20, 'Tutoría de trompeta', 'Mejora tu técnica y sonido en la trompeta con la ayuda de un tutor experimentado', 30000, NULL, NULL, NULL, NULL, NULL, 12),
	(14, 4, 19, 'Sesión de percusión', 'Explora la diversidad de los instrumentos de percusión y mejora tu ritmo', 250000, NULL, NULL, NULL, NULL, NULL, 8),
	(15, 20, 11, 'Entrenamiento de viola', 'Desarrolla tus habilidades en la viola y disfruta de su sonido cálido y profundo', 40000, NULL, NULL, '2023-08-30', NULL, NULL, 6),
	(16, 16, 13, 'Clase de arpa', 'Aprende a tocar el arpa y sumérgete en su belleza y expresividad musical', 35000, NULL, NULL, '2023-08-30', NULL, NULL, 4),
	(17, 17, 10, 'Lección de trombón', 'Mejora tu técnica y musicalidad en el trombón con la guía de un profesor experto', 500000, NULL, NULL, '2023-08-30', NULL, NULL, 30),
	(18, 8, 4, 'Tutoría de oboe', 'Recibe apoyo y asesoramiento en el aprendizaje del oboe', 30000, NULL, NULL, '2023-08-30', NULL, NULL, 21),
	(19, 2, 5, 'Sesión de guitarra flamenca', 'Explora el arte del flamenco y mejora tu técnica en la guitarra flamenca', 40000, NULL, NULL, '2023-08-30', NULL, NULL, 22),
	(20, 19, 7, 'Entrenamiento de violín eléctrico', 'Descubre el mundo moderno del violín eléctrico y mejora tu habilidad en él', 550000, NULL, NULL, '2023-08-30', NULL, NULL, 32),
	(21, 2, 46, 'saxofon', 'clase de saxofon', 20000, '2023-08-17 00:50:56', '2023-08-17 00:50:56', '2023-09-30', '15:00:00', '12:30:00', 22),
	(22, 2, 52, 'non', 'nnn', 121312, '2023-08-17 00:53:01', '2023-08-17 00:55:48', '2024-12-30', '16:02:00', '12:32:00', 12),
	(23, 2, 33, 'acordeon', 'hjghgjhghgjgd', 1000, '2023-08-17 00:55:39', '2023-08-17 00:55:39', '2024-08-30', '12:30:00', '11:11:00', 6),
	(24, 85, 8, 'Clase De Bajo', 'Primera sesion con jose', 25000, '2023-08-30 22:57:14', '2023-08-30 22:57:14', '2025-02-12', '05:15:00', '12:02:00', 12),
	(25, 2, 63, 'Danzas y violin', 'Violin', 20000, '2023-08-31 03:35:12', '2023-08-31 03:35:22', '2024-02-12', '03:02:00', '12:12:00', 2);

-- Volcando estructura para tabla empleamusic.comentarios
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(700) NOT NULL,
  `fechahora` timestamp NOT NULL,
  `tipo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idcomentario`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.comentarios: ~0 rows (aproximadamente)

-- Volcando estructura para tabla empleamusic.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla empleamusic.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.migrations: ~7 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_07_27_055417_create_usuarios_table', 1),
	(6, '2014_10_12_100000_create_password_resets_table', 2),
	(8, '2023_08_10_193440_intento_usuarios_n1', 3);

-- Volcando estructura para tabla empleamusic.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.password_resets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla empleamusic.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla empleamusic.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla empleamusic.profesores
CREATE TABLE IF NOT EXISTS `profesores` (
  `idprofesor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contrasena` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefono` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(700) NOT NULL,
  `aniosexperiencia` int NOT NULL,
  `especialidad` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Imagen` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `documento` int NOT NULL,
  PRIMARY KEY (`idprofesor`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleamusic.profesores: ~87 rows (aproximadamente)
INSERT INTO `profesores` (`idprofesor`, `nombre`, `apellido`, `email`, `contrasena`, `telefono`, `descripcion`, `aniosexperiencia`, `especialidad`, `created_at`, `updated_at`, `Imagen`, `documento`) VALUES
	(1, 'Juan', 'Pérez', 'juan@example.com', 'SecurePass123', '123456789', 'Experto en desarrollo web', 5, 'Guitarra, violin y arpa', NULL, NULL, NULL, 10203213),
	(2, 'María', 'González', 'maria@example.com', 'P@ssword2023', '987654321', 'Especialista en marketing digital', 8, 'Guitarra electrica y bateria', NULL, '2023-08-30 23:20:43', '1693419643_258107.jpg', 12323412),
	(3, 'Pedro', 'López', 'pedro@example.com', '1234Abcd$', '456789123', 'Ingeniero de software con experiencia en inteligencia artificial', 10, 'saxofon y tuba', NULL, NULL, NULL, 123123123),
	(4, 'Ana', 'Martínez', 'ana@example.com', 'StrongP@55', '321654987', 'Diseñadora gráfica con amplia experiencia en branding', 7, 'baritono', NULL, NULL, NULL, 123213123),
	(5, 'Luis', 'Rodríguez', 'luis@example.com', 'MySecretPwd_987', '789123456', 'Experto en análisis de datos y machine learning', 6, 'flauta, tompeta y piano', NULL, NULL, NULL, 234324),
	(6, 'Laura', 'Hernández', 'laura@example.com', 'Rainbow#789', '654987321', 'Arquitecta con experiencia en diseño sostenible', 9, 'piano', NULL, NULL, NULL, 34545345),
	(7, 'Carlos', 'Sánchez', 'carlos@example.com', 'Qwerty!123', '987123654', 'Consultor financiero con experiencia en inversiones internacionales', 12, 'violonchelo', NULL, NULL, NULL, 134135235),
	(8, 'Sofía', 'Gómez', 'sofia@example.com', 'Pa$$w0rd!2023', '123789456', 'Experta en gestión de proyectos y liderazgo de equipos', 8, 'oboe', NULL, NULL, NULL, 141344),
	(9, 'Miguel', 'Torres', 'miguel@example.com', 'NinjaWarrior$1', '456123789', 'Desarrollador de aplicaciones móviles con experiencia en iOS y Android', 4, 'trombon y clarinete', NULL, NULL, NULL, 34141343),
	(10, 'Carmen', 'Vargas', 'carmen@example.com', 'C0ffeeL0ver', '789456123', 'Especialista en redes sociales y estrategias de marketing digital', 6, 'maracas y congas', NULL, NULL, NULL, 534534346),
	(11, 'Pablo', 'Flores', 'pablo@example.com', 'Summer2023', '321789456', 'Ingeniero civil con experiencia en construcción de puentes y estructuras', 10, 'platillos, tuba y oboe', NULL, NULL, NULL, 7676573),
	(12, 'Isabel', 'Mendoza', 'isabel@example.com', 'I<3Coding$', '654123789', 'Diseñadora de moda con experiencia en pasarelas internacionales', 7, 'guitarra y violin', NULL, NULL, NULL, 234143432),
	(13, 'David', 'Ortega', 'david@example.com', 'M0nkeyP@ss', '987456123', 'Experto en seguridad informática y hacking ético', 9, 'violin y arpa y xilofono', NULL, NULL, NULL, 25235353),
	(14, 'Elena', 'Ruiz', 'elena@example.com', '2MuchSugar', '123456789', 'Psicóloga especializada en terapia familiar', 8, 'violin y arpa', NULL, NULL, NULL, 1241434),
	(15, 'Javier', 'Silva', 'javier@example.com', 'P@$$w0rdSafe', '789123456', 'Chef internacional con experiencia en cocina fusión', 12, 'violin y arpa', NULL, NULL, NULL, 12312323),
	(16, 'Paula', 'Navarro', 'paula@example.com', 'StarG@zer89', '456789123', 'Investigadora científica en biología marina', 6, 'xilofono', NULL, NULL, NULL, 168632424),
	(17, 'Roberto', 'González', 'roberto@example.com', 'Bl@ckC@t#13', '321654987', 'Periodista con amplia experiencia en cobertura de conflictos internacionales', 11, 'acordeon', NULL, NULL, NULL, 1242142),
	(18, 'Patricia', 'Luna', 'patricia@example.com', 'H0peful2023!', '987321654', 'Abogada especializada en derechos humanos', 9, 'platillos y tuba', NULL, NULL, NULL, 2131232),
	(19, 'Óscar', 'Rojas', 'oscar@example.com', 'P@ssionFruit', '654987321', 'Ingeniero eléctrico con experiencia en energías renovables', 8, 'oboe', NULL, NULL, NULL, 1231232),
	(20, 'Clara', 'Fuentes', 'clara@example.com', 'B3autifulD@y', '123654987', 'Artista plástica con exposiciones en galerías de renombre', 7, 'clarinete', NULL, NULL, NULL, 1232323),
	(21, 'Juan', 'Pérez', 'juan@example.com', 'SecurePass123', '123456789', 'Experto en desarrollo web', 5, 'Guitarra, violin y arpa', NULL, NULL, NULL, 32532523),
	(22, 'María', 'González', 'maria@example.com', 'P@ssword2023', '987654321', 'Especialista en marketing digital', 8, 'Guitarra electrica y bateria', NULL, NULL, NULL, 12312312),
	(23, 'Pedro', 'López', 'pedro@example.com', '1234Abcd$', '456789123', 'Ingeniero de software con experiencia en inteligencia artificial', 10, 'saxofon y tuba', NULL, NULL, NULL, 213123213),
	(24, 'Ana', 'Martínez', 'ana@example.com', 'StrongP@55', '321654987', 'Diseñadora gráfica con amplia experiencia en branding', 7, 'baritono', NULL, NULL, NULL, 123123213),
	(25, 'Luis', 'Rodríguez', 'luis@example.com', 'MySecretPwd_987', '789123456', 'Experto en análisis de datos y machine learning', 6, 'flauta, tompeta y piano', NULL, NULL, NULL, 12321312),
	(26, 'Laura', 'Hernández', 'laura@example.com', 'Rainbow#789', '654987321', 'Arquitecta con experiencia en diseño sostenible', 9, 'piano', NULL, NULL, NULL, 1242144),
	(27, 'Carlos', 'Sánchez', 'carlos@example.com', 'Qwerty!123', '987123654', 'Consultor financiero con experiencia en inversiones internacionales', 12, 'violonchelo', NULL, NULL, NULL, 2213311),
	(28, 'Sofía', 'Gómez', 'sofia@example.com', 'Pa$$w0rd!2023', '123789456', 'Experta en gestión de proyectos y liderazgo de equipos', 8, 'oboe', NULL, NULL, NULL, 2132131),
	(29, 'Miguel', 'Torres', 'miguel@example.com', 'NinjaWarrior$1', '456123789', 'Desarrollador de aplicaciones móviles con experiencia en iOS y Android', 4, 'trombon y clarinete', NULL, NULL, NULL, 31231311),
	(30, 'Carmen', 'Vargas', 'carmen@example.com', 'C0ffeeL0ver', '789456123', 'Especialista en redes sociales y estrategias de marketing digital', 6, 'maracas y congas', NULL, NULL, NULL, 123123213),
	(31, 'Pablo', 'Flores', 'pablo@example.com', 'Summer2023', '321789456', 'Ingeniero civil con experiencia en construcción de puentes y estructuras', 10, 'platillos, tuba y oboe', NULL, NULL, NULL, 12312321),
	(32, 'Isabel', 'Mendoza', 'isabel@example.com', 'I<3Coding$', '654123789', 'Diseñadora de moda con experiencia en pasarelas internacionales', 7, 'guitarra y violin', NULL, NULL, NULL, 12321312),
	(33, 'David', 'Ortega', 'david@example.com', 'M0nkeyP@ss', '987456123', 'Experto en seguridad informática y hacking ético', 9, 'violin y arpa y xilofono', NULL, NULL, NULL, 123213213),
	(34, 'Elena', 'Ruiz', 'elena@example.com', '2MuchSugar', '123456789', 'Psicóloga especializada en terapia familiar', 8, 'violin y arpa', NULL, NULL, NULL, 1002367172),
	(35, 'Javier', 'Silva', 'javier@example.com', 'P@$$w0rdSafe', '789123456', 'Chef internacional con experiencia en cocina fusión', 12, 'violin y arpa', NULL, NULL, NULL, 123232321),
	(36, 'Paula', 'Navarro', 'paula@example.com', 'StarG@zer89', '456789123', 'Investigadora científica en biología marina', 6, 'xilofono', NULL, NULL, NULL, 123213213),
	(37, 'Roberto', 'González', 'roberto@example.com', 'Bl@ckC@t#13', '321654987', 'Periodista con amplia experiencia en cobertura de conflictos internacionales', 11, 'acordeon', NULL, NULL, NULL, 123323213),
	(38, 'Patricia', 'Luna', 'patricia@example.com', 'H0peful2023!', '987321654', 'Abogada especializada en derechos humanos', 9, 'platillos y tuba', NULL, NULL, NULL, 5322141),
	(39, 'Óscar', 'Rojas', 'oscar@example.com', 'P@ssionFruit', '654987321', 'Ingeniero eléctrico con experiencia en energías renovables', 8, 'oboe', NULL, NULL, NULL, 1241424124),
	(40, 'Clara', 'Fuentes', 'clara@example.com', 'B3autifulD@y', '123654987', 'Artista plástica con exposiciones en galerías de renombre', 7, 'clarinete', NULL, NULL, NULL, 3425464),
	(41, 'Juan', 'Pérez', 'juan@example.com', 'SecurePass123', '123456789', 'Experto en desarrollo web', 5, 'Guitarra, violin y arpa', NULL, NULL, NULL, 32412355),
	(42, 'María', 'González', 'maria@example.com', 'P@ssword2023', '987654321', 'Especialista en marketing digital', 8, 'Guitarra electrica y bateria', NULL, NULL, NULL, 414178834),
	(43, 'Pedro', 'López', 'pedro@example.com', '1234Abcd$', '456789123', 'Ingeniero de software con experiencia en inteligencia artificial', 10, 'saxofon y tuba', NULL, NULL, NULL, 43414134),
	(44, 'Ana', 'Martínez', 'ana@example.com', 'StrongP@55', '321654987', 'Diseñadora gráfica con amplia experiencia en branding', 7, 'baritono', NULL, NULL, NULL, 43414134),
	(45, 'Luis', 'Rodríguez', 'luis@example.com', 'MySecretPwd_987', '789123456', 'Experto en análisis de datos y machine learning', 6, 'flauta, tompeta y piano', NULL, NULL, NULL, 7547547),
	(46, 'Laura', 'Hernández', 'laura@example.com', 'Rainbow#789', '654987321', 'Arquitecta con experiencia en diseño sostenible', 9, 'piano', NULL, NULL, NULL, 417547574),
	(47, 'Carlos', 'Sánchez', 'carlos@example.com', 'Qwerty!123', '987123654', 'Consultor financiero con experiencia en inversiones internacionales', 12, 'violonchelo', NULL, NULL, NULL, 21424214),
	(48, 'Sofía', 'Gómez', 'sofia@example.com', 'Pa$$w0rd!2023', '123789456', 'Experta en gestión de proyectos y liderazgo de equipos', 8, 'oboe', NULL, NULL, NULL, 21431242),
	(49, 'Miguel', 'Torres', 'miguel@example.com', 'NinjaWarrior$1', '456123789', 'Desarrollador de aplicaciones móviles con experiencia en iOS y Android', 4, 'trombon y clarinete', NULL, NULL, NULL, 63463324),
	(50, 'Carmen', 'Vargas', 'carmen@example.com', 'C0ffeeL0ver', '789456123', 'Especialista en redes sociales y estrategias de marketing digital', 6, 'maracas y congas', NULL, NULL, NULL, 1232145153),
	(51, 'Pablo', 'Flores', 'pablo@example.com', 'Summer2023', '321789456', 'Ingeniero civil con experiencia en construcción de puentes y estructuras', 10, 'platillos, tuba y oboe', NULL, NULL, NULL, 12312512),
	(52, 'Isabel', 'Mendoza', 'isabel@example.com', 'I<3Coding$', '654123789', 'Diseñadora de moda con experiencia en pasarelas internacionales', 7, 'guitarra y violin', NULL, NULL, NULL, 1251252514),
	(53, 'David', 'Ortega', 'david@example.com', 'M0nkeyP@ss', '987456123', 'Experto en seguridad informática y hacking ético', 9, 'violin y arpa y xilofono', NULL, NULL, NULL, 142125125),
	(54, 'Elena', 'Ruiz', 'elena@example.com', '2MuchSugar', '123456789', 'Psicóloga especializada en terapia familiar', 8, 'violin y arpa', NULL, NULL, NULL, 142412525),
	(55, 'Javier', 'Silva', 'javier@example.com', 'P@$$w0rdSafe', '789123456', 'Chef internacional con experiencia en cocina fusión', 12, 'violin y arpa', NULL, NULL, NULL, 124125124),
	(56, 'Paula', 'Navarro', 'paula@example.com', 'StarG@zer89', '456789123', 'Investigadora científica en biología marina', 6, 'xilofono', NULL, NULL, NULL, 124214124),
	(57, 'Roberto', 'González', 'roberto@example.com', 'Bl@ckC@t#13', '321654987', 'Periodista con amplia experiencia en cobertura de conflictos internacionales', 11, 'acordeon', NULL, NULL, NULL, 123124124),
	(58, 'Patricia', 'Luna', 'patricia@example.com', 'H0peful2023!', '987321654', 'Abogada especializada en derechos humanos', 9, 'platillos y tuba', NULL, NULL, NULL, 31244125),
	(59, 'Óscar', 'Rojas', 'oscar@example.com', 'P@ssionFruit', '654987321', 'Ingeniero eléctrico con experiencia en energías renovables', 8, 'oboe', NULL, NULL, NULL, 312312421),
	(60, 'Clara', 'Fuentes', 'clara@example.com', 'B3autifulD@y', '123654987', 'Artista plástica con exposiciones en galerías de renombre', 7, 'clarinete', NULL, NULL, NULL, 123124),
	(61, 'Juan', 'Pérez', 'juan@example.com', 'SecurePass123', '123456789', 'Experto en desarrollo web', 5, 'Guitarra, violin y arpa', NULL, NULL, NULL, 321321431),
	(62, 'María', 'González', 'maria@example.com', 'P@ssword2023', '987654321', 'Especialista en marketing digital', 8, 'Guitarra electrica y bateria', NULL, NULL, NULL, 12312415),
	(63, 'Pedro', 'López', 'pedro@example.com', '1234Abcd$', '456789123', 'Ingeniero de software con experiencia en inteligencia artificial', 10, 'saxofon y tuba', NULL, NULL, NULL, 41241234),
	(64, 'Ana', 'Martínez', 'ana@example.com', 'StrongP@55', '321654987', 'Diseñadora gráfica con amplia experiencia en branding', 7, 'baritono', NULL, NULL, NULL, 2343561),
	(65, 'Luis', 'Rodríguez', 'luis@example.com', 'MySecretPwd_987', '789123456', 'Experto en análisis de datos y machine learning', 6, 'flauta, tompeta y piano', NULL, NULL, NULL, 2313123),
	(66, 'Laura', 'Hernández', 'laura@example.com', 'Rainbow#789', '654987321', 'Arquitecta con experiencia en diseño sostenible', 9, 'piano', NULL, NULL, NULL, 124214212),
	(67, 'Carlos', 'Sánchez', 'carlos@example.com', 'Qwerty!123', '987123654', 'Consultor financiero con experiencia en inversiones internacionales', 12, 'violonchelo', NULL, NULL, NULL, 42341277),
	(68, 'Sofía', 'Gómez', 'sofia@example.com', 'Pa$$w0rd!2023', '123789456', 'Experta en gestión de proyectos y liderazgo de equipos', 8, 'oboe', NULL, NULL, NULL, 6324623),
	(69, 'Miguel', 'Torres', 'miguel@example.com', 'NinjaWarrior$1', '456123789', 'Desarrollador de aplicaciones móviles con experiencia en iOS y Android', 4, 'trombon y clarinete', NULL, NULL, NULL, 325235236),
	(70, 'Carmen', 'Vargas', 'carmen@example.com', 'C0ffeeL0ver', '789456123', 'Especialista en redes sociales y estrategias de marketing digital', 6, 'maracas y congas', NULL, NULL, NULL, 341313153),
	(71, 'Pablo', 'Flores', 'pablo@example.com', 'Summer2023', '321789456', 'Ingeniero civil con experiencia en construcción de puentes y estructuras', 10, 'platillos, tuba y oboe', NULL, NULL, NULL, 4325235),
	(72, 'Isabel', 'Mendoza', 'isabel@example.com', 'I<3Coding$', '654123789', 'Diseñadora de moda con experiencia en pasarelas internacionales', 7, 'guitarra y violin', NULL, NULL, NULL, 235235325),
	(73, 'David', 'Ortega', 'david@example.com', 'M0nkeyP@ss', '987456123', 'Experto en seguridad informática y hacking ético', 9, 'violin y arpa y xilofono', NULL, NULL, NULL, 342332),
	(74, 'Elena', 'Ruiz', 'elena@example.com', '2MuchSugar', '123456789', 'Psicóloga especializada en terapia familiar', 8, 'violin y arpa', NULL, NULL, NULL, 2352353),
	(75, 'Javier', 'Silva', 'javier@example.com', 'P@$$w0rdSafe', '789123456', 'Chef internacional con experiencia en cocina fusión', 12, 'violin y arpa', NULL, NULL, NULL, 235325325),
	(76, 'Paula', 'Navarro', 'paula@example.com', 'StarG@zer89', '456789123', 'Investigadora científica en biología marina', 6, 'xilofono', NULL, NULL, NULL, 235325),
	(77, 'Roberto', 'González', 'roberto@example.com', 'Bl@ckC@t#13', '321654987', 'Periodista con amplia experiencia en cobertura de conflictos internacionales', 11, 'acordeon', NULL, NULL, NULL, 325325325),
	(78, 'Patricia', 'Luna', 'patricia@example.com', 'H0peful2023!', '987321654', 'Abogada especializada en derechos humanos', 9, 'platillos y tuba', NULL, NULL, NULL, 325235235),
	(79, 'Óscar', 'Rojas', 'oscar@example.com', 'P@ssionFruit', '654987321', 'Ingeniero eléctrico con experiencia en energías renovables', 8, 'oboe', NULL, NULL, NULL, 32578797),
	(80, 'Clara', 'Fuentes', 'clara@example.com', 'B3autifulD@y', '123654987', 'Artista plástica con exposiciones en galerías de renombre', 7, 'clarinete', NULL, NULL, NULL, 8009070),
	(81, 'Juan', 'Valdez', 'estebonemoreno2002@gmail.com', '2331', '22323', 'Hola soy gran licenciado', 3, 'Percusion', '2023-08-17 00:58:51', '2023-08-17 00:58:51', NULL, 87967979),
	(82, 'Juan', 'Valdez', 'estebonemoreno2002@gmail.com', '2331', '22323', 'Hola soy gran licenciado', 3, 'Percusion', '2023-08-17 01:00:46', '2023-08-17 01:00:46', NULL, 43241241),
	(83, 'Juan', 'Valdez', 'estebonemoreno2002@gmail.com', '2331', '22323', 'Hola soy gran licenciado', 3, 'Percusion', '2023-08-17 01:01:30', '2023-08-17 01:01:30', NULL, 5645145),
	(84, 'Juan', 'Valdez', 'estebonemoreno2002@gmail.com', '2331', '22323', 'Hola soy gran licenciado', 3, 'Percusion', '2023-08-17 01:02:14', '2023-08-17 01:02:14', NULL, 432423235),
	(85, 'Juan', 'Valdezz', 'estebonemoreno2002@gmail.com', '234321', '22323', 'Hola soy gran licenciado', 3, 'Percusion', '2023-08-17 01:03:08', '2023-08-30 22:58:50', '1693418329_399193.jpg', 434352),
	(86, 'Fernando', 'Guitierrez', 'fergu23@hotmail.com', 'fergu23@@gmail.com', '7-333-443', 'Me encanta la musica y enseñarla mil veces mas!!', 23, 'Percusion y baile', '2023-08-29 03:42:01', '2023-08-29 03:42:01', 'YE0fdQKhdauErBiNRjQyBej0iW2VNgnQv9s7cxy7.jpg', 32432423),
	(87, 'Jorge', 'Ayala', 'ayalaj@gmail.com', '1232342', '320822134', 'Soy licenciado en musica y direccion musical de la UPTC', 2, 'Violin y piano', '2023-08-30 23:23:08', '2023-08-30 23:23:08', 'OoBqHQhxqnhbKcCLXL3nL1JBCKpTjz6VHJSbFY6m.jpg', 100993823);

-- Volcando estructura para tabla empleamusic.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.users: ~0 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Jorge', 'jorge@gmail.com', NULL, '$2y$10$oPDk.78oozukJSeCQcnbBuuUfFQyIZPUKObzsPTXw49VklvewbCoa', 'administrador', NULL, '2023-08-31 00:42:44', '2023-08-31 00:42:44');

-- Volcando estructura para tabla empleamusic.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla empleamusic.usuarios: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
