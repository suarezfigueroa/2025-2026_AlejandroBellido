-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2026 a las 22:18:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bxsports`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `checkins`
--

CREATE TABLE `checkins` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `altura` int(11) NOT NULL,
  `imc` decimal(4,2) DEFAULT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `checkins`
--

INSERT INTO `checkins` (`id`, `usuario_id`, `peso`, `altura`, `imc`, `nivel_id`, `fecha`) VALUES
(1, 1, 72.00, 165, 26.40, 2, '2025-01-06 07:00:00'),
(2, 1, 70.50, 165, 25.90, 2, '2025-01-13 07:00:00'),
(3, 1, 69.00, 165, 25.30, 2, '2025-01-20 07:00:00'),
(4, 1, 68.00, 165, 24.90, 2, '2025-01-27 07:00:00'),
(5, 2, 82.00, 162, 31.20, 1, '2025-01-06 07:00:00'),
(6, 2, 80.50, 162, 30.70, 1, '2025-01-13 07:00:00'),
(7, 2, 79.00, 162, 30.10, 1, '2025-01-20 07:00:00'),
(8, 2, 78.50, 162, 29.90, 1, '2025-01-27 07:00:00'),
(9, 3, 80.00, 178, 25.20, 2, '2025-01-06 07:00:00'),
(10, 3, 78.00, 178, 24.60, 3, '2025-01-13 07:00:00'),
(11, 3, 76.00, 178, 24.00, 3, '2025-01-20 07:00:00'),
(12, 3, 74.50, 178, 23.50, 4, '2025-01-27 07:00:00'),
(13, 3, 73.00, 178, 23.00, 4, '2025-02-03 07:00:00'),
(14, 4, 91.00, 174, 30.10, 1, '2025-01-06 07:00:00'),
(15, 4, 90.00, 174, 29.70, 1, '2025-01-13 07:00:00'),
(16, 4, 89.00, 174, 29.40, 1, '2025-01-20 07:00:00'),
(17, 4, 88.00, 174, 29.10, 1, '2025-01-27 07:00:00'),
(18, 5, 74.00, 176, 23.90, 3, '2025-01-06 07:00:00'),
(19, 5, 72.50, 176, 23.40, 3, '2025-01-13 07:00:00'),
(20, 5, 71.00, 176, 22.90, 3, '2025-01-20 07:00:00'),
(21, 5, 70.00, 176, 22.60, 3, '2025-01-27 07:00:00'),
(22, 6, 65.00, 168, 23.00, 3, '2025-01-06 07:00:00'),
(23, 6, 64.00, 168, 22.70, 3, '2025-01-13 07:00:00'),
(24, 6, 63.00, 168, 22.30, 3, '2025-01-20 07:00:00'),
(25, 6, 62.00, 168, 22.00, 3, '2025-01-27 07:00:00'),
(26, 7, 79.00, 180, 24.40, 3, '2025-01-06 07:00:00'),
(27, 7, 77.50, 180, 23.90, 3, '2025-01-13 07:00:00'),
(28, 7, 76.00, 180, 23.50, 4, '2025-01-20 07:00:00'),
(29, 7, 75.00, 180, 23.10, 4, '2025-01-27 07:00:00'),
(34, 9, 83.00, 182, 25.10, 3, '2025-01-06 07:00:00'),
(35, 9, 82.00, 182, 24.80, 4, '2025-01-13 07:00:00'),
(36, 9, 81.00, 182, 24.50, 4, '2025-01-20 07:00:00'),
(37, 9, 80.00, 182, 24.20, 5, '2025-01-27 07:00:00'),
(38, 10, 75.00, 177, 24.00, 3, '2025-01-06 07:00:00'),
(39, 10, 74.00, 177, 23.60, 4, '2025-01-13 07:00:00'),
(40, 10, 73.00, 177, 23.30, 4, '2025-01-20 07:00:00'),
(41, 10, 72.00, 177, 23.00, 4, '2025-01-27 07:00:00'),
(42, 1, 70.00, 165, 25.70, 2, '2026-05-28 10:06:41'),
(43, 1, 70.40, 165, 25.90, 2, '2026-05-28 10:08:26'),
(44, 1, 71.00, 165, 26.10, 2, '2026-05-28 10:08:40'),
(45, 1, 71.00, 168, 25.20, 2, '2026-05-28 10:08:52'),
(46, 1, 71.00, 168, 25.20, 1, '2026-05-28 10:09:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `asunto` varchar(200) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `asunto`, `mensaje`, `fecha`) VALUES
(1, 'Alejandro Bellido', 'alejandro178b@gmail.com', 'Dudas con las rutinas', 'Hay alguna mas compleja que el nivel 5?', '2026-05-20 09:54:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dieta`
--

CREATE TABLE `dieta` (
  `id` int(11) NOT NULL,
  `comida` enum('Desayuno','Comida','Almuerzo','Merienda','Cena','Recena') NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ingredientes` text DEFAULT NULL,
  `calorias` int(11) DEFAULT NULL,
  `proteinas` int(11) DEFAULT NULL,
  `carbohidratos` int(11) DEFAULT NULL,
  `grasas` int(11) DEFAULT NULL,
  `nivel_id` int(11) NOT NULL,
  `objetivo` enum('Ganar músculo','Perder peso','Mantenimiento') NOT NULL,
  `hora` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dieta`
--

INSERT INTO `dieta` (`id`, `comida`, `nombre`, `ingredientes`, `calorias`, `proteinas`, `carbohidratos`, `grasas`, `nivel_id`, `objetivo`, `hora`) VALUES
(1, 'Desayuno', 'Tostadas con huevo', 'Pan integral 60g, huevos 2 uds, aceite oliva 5ml', 380, 22, 42, 12, 1, 'Ganar músculo', '08:00'),
(2, 'Almuerzo', 'Snack de media mañana', 'Plátano 1 ud, nueces 20g', 200, 4, 30, 9, 1, 'Ganar músculo', '11:00'),
(3, 'Comida', 'Arroz con pollo', 'Arroz blanco 100g, pechuga pollo 150g, tomate frito 50g', 480, 38, 58, 8, 1, 'Ganar músculo', '14:00'),
(4, 'Merienda', 'Yogur con avena', 'Yogur natural 200g, avena 30g, miel 10g', 280, 12, 38, 6, 1, 'Ganar músculo', '17:30'),
(5, 'Cena', 'Merluza con patata', 'Merluza 180g, patata cocida 100g, ensalada verde libre', 360, 34, 30, 8, 1, 'Ganar músculo', '21:00'),
(6, 'Recena', 'Vaso de leche', 'Leche entera 250ml', 150, 8, 12, 8, 1, 'Ganar músculo', '23:00'),
(7, 'Desayuno', 'Café con tortilla francesa', 'Café solo, huevos 2 uds, espinacas 50g', 200, 18, 4, 12, 1, 'Perder peso', '08:00'),
(8, 'Almuerzo', 'Manzana', 'Manzana 1 ud', 80, 0, 20, 0, 1, 'Perder peso', '11:00'),
(9, 'Comida', 'Ensalada de pollo', 'Pechuga pollo 150g, lechuga, tomate, pepino, aceite 10ml', 300, 32, 10, 12, 1, 'Perder peso', '14:00'),
(10, 'Merienda', 'Infusión y frutos secos', 'Infusión sin azúcar, almendras 15g', 100, 3, 3, 9, 1, 'Perder peso', '17:30'),
(11, 'Cena', 'Verduras al vapor con huevo', 'Brócoli 150g, zanahoria 100g, huevo cocido 2 uds', 260, 20, 18, 10, 1, 'Perder peso', '21:00'),
(12, 'Recena', 'Infusión de manzanilla', 'Infusión sin azúcar', 5, 0, 1, 0, 1, 'Perder peso', '23:00'),
(13, 'Desayuno', 'Avena con fruta', 'Avena 60g, leche 200ml, fresas 80g', 310, 12, 50, 6, 1, 'Mantenimiento', '08:00'),
(14, 'Almuerzo', 'Tostada con pavo', 'Pan integral 40g, pavo 50g', 180, 12, 24, 4, 1, 'Mantenimiento', '11:00'),
(15, 'Comida', 'Pasta con atún', 'Pasta 90g, atún 100g, tomate frito 60g, aceite 10ml', 430, 28, 52, 10, 1, 'Mantenimiento', '14:00'),
(16, 'Merienda', 'Yogur griego', 'Yogur griego 150g, nueces 15g', 200, 10, 8, 14, 1, 'Mantenimiento', '17:30'),
(17, 'Cena', 'Pechuga a la plancha', 'Pechuga pollo 160g, arroz integral 80g, ensalada libre', 390, 36, 38, 8, 1, 'Mantenimiento', '21:00'),
(18, 'Recena', 'Leche semidesnatada', 'Leche semidesnatada 200ml', 100, 7, 10, 4, 1, 'Mantenimiento', '23:00'),
(19, 'Desayuno', 'Avena con huevos', 'Avena 80g, leche 200ml, huevos 2 uds, plátano 1 ud', 520, 30, 65, 12, 2, 'Ganar músculo', '07:30'),
(20, 'Almuerzo', 'Batido proteico', 'Proteína whey 30g, leche 200ml, plátano 1 ud', 300, 28, 36, 4, 2, 'Ganar músculo', '10:30'),
(21, 'Comida', 'Pollo con arroz y verduras', 'Pechuga 180g, arroz integral 120g, brócoli 100g', 560, 46, 62, 10, 2, 'Ganar músculo', '13:30'),
(22, 'Merienda', 'Tostadas con mantequilla', 'Pan integral 60g, mantequilla cacahuete 20g, manzana 1 ud', 320, 10, 42, 12, 2, 'Ganar músculo', '17:00'),
(23, 'Cena', 'Salmón con patata', 'Salmón 200g, patata cocida 120g, ensalada libre', 520, 42, 36, 18, 2, 'Ganar músculo', '20:30'),
(24, 'Recena', 'Caseína con leche', 'Proteína caseína 25g, leche 200ml', 220, 26, 14, 4, 2, 'Ganar músculo', '23:00'),
(25, 'Desayuno', 'Tortilla con verduras', 'Huevos 3 uds, pimiento 60g, cebolla 40g, aceite 5ml', 280, 22, 8, 16, 2, 'Perder peso', '07:30'),
(26, 'Almuerzo', 'Naranja', 'Naranja 1 ud grande', 80, 1, 19, 0, 2, 'Perder peso', '10:30'),
(27, '', 'Ensalada completa', 'Atún 100g, huevo 1 ud, lechuga, tomate, pepino, aceite 10ml', 320, 28, 10, 16, 2, 'Perder peso', '13:30'),
(28, 'Merienda', 'Queso fresco con pepino', 'Queso fresco 100g, pepino 1 ud', 130, 12, 4, 6, 2, 'Perder peso', '17:00'),
(29, 'Cena', 'Dorada al horno', 'Dorada 200g, calabacín 150g, tomate cherry, aceite 10ml', 300, 36, 8, 12, 2, 'Perder peso', '20:30'),
(30, 'Recena', 'Infusión con canela', 'Infusión sin azúcar', 5, 0, 1, 0, 2, 'Perder peso', '23:00'),
(31, 'Desayuno', 'Tostadas con aguacate', 'Pan integral 60g, aguacate 60g, huevo 1 ud, tomate', 380, 14, 36, 18, 2, 'Mantenimiento', '07:30'),
(32, 'Almuerzo', 'Fruta y yogur', 'Yogur natural 150g, kiwi 2 uds', 170, 8, 26, 4, 2, 'Mantenimiento', '10:30'),
(33, '', 'Lentejas con verduras', 'Lentejas 100g, zanahoria 80g, puerro 60g, aceite 10ml', 400, 20, 52, 10, 2, 'Mantenimiento', '13:30'),
(34, 'Merienda', 'Nueces y fruta', 'Nueces 20g, plátano 1 ud', 200, 4, 28, 10, 2, 'Mantenimiento', '17:00'),
(35, 'Cena', 'Pavo con quinoa', 'Pavo 160g, quinoa 80g, espárragos 100g', 410, 38, 40, 8, 2, 'Mantenimiento', '20:30'),
(36, 'Recena', 'Leche con canela', 'Leche semidesnatada 200ml, canela', 100, 7, 10, 4, 2, 'Mantenimiento', '23:00'),
(37, 'Desayuno', 'Avena proteica', 'Avena 100g, leche 250ml, huevos 3 uds, plátano 1 ud, miel 15g', 680, 42, 80, 14, 3, 'Ganar músculo', '07:00'),
(38, 'Almuerzo', 'Batido masa muscular', 'Proteína whey 40g, leche 250ml, avena 40g, plátano 1 ud', 480, 38, 56, 8, 3, 'Ganar músculo', '10:00'),
(39, '', 'Arroz con ternera', 'Ternera 200g, arroz integral 150g, brócoli 120g, aceite 10ml', 700, 52, 70, 16, 3, 'Ganar músculo', '13:00'),
(40, 'Merienda', 'Pan con mantequilla y fruta', 'Pan integral 80g, mantequilla cacahuete 30g, manzana 1 ud', 420, 14, 54, 16, 3, 'Ganar músculo', '16:30'),
(41, 'Cena', 'Salmón con arroz y verduras', 'Salmón 220g, arroz integral 120g, espinacas salteadas 100g', 640, 50, 52, 20, 3, 'Ganar músculo', '20:00'),
(42, 'Recena', 'Caseína con leche entera', 'Caseína 30g, leche entera 250ml, almendras 15g', 320, 32, 18, 14, 3, 'Ganar músculo', '23:00'),
(43, 'Desayuno', 'Claras con avena', 'Claras de huevo 5 uds, avena 50g, canela', 300, 28, 32, 4, 3, 'Perder peso', '07:00'),
(44, 'Almuerzo', 'Pepino con queso', 'Pepino 1 ud, queso fresco 80g', 110, 10, 4, 5, 3, 'Perder peso', '10:00'),
(45, '', 'Pechuga con boniato', 'Pechuga 200g, boniato 150g, ensalada libre, aceite 10ml', 420, 42, 36, 10, 3, 'Perder peso', '13:00'),
(46, 'Merienda', 'Proteína con agua', 'Proteína whey 25g, agua', 110, 22, 4, 1, 3, 'Perder peso', '16:30'),
(47, 'Cena', 'Merluza con verduras', 'Merluza 220g, judías verdes 150g, zanahoria 80g, aceite 10ml', 340, 40, 16, 10, 3, 'Perder peso', '20:00'),
(48, 'Recena', 'Infusión y almendras', 'Infusión sin azúcar, almendras 10g', 65, 2, 2, 6, 3, 'Perder peso', '23:00'),
(49, 'Desayuno', 'Avena con frutos rojos', 'Avena 80g, leche 200ml, arándanos 60g, nueces 15g', 440, 16, 60, 14, 3, 'Mantenimiento', '07:00'),
(50, 'Almuerzo', 'Yogur griego con fruta', 'Yogur griego 200g, kiwi 2 uds, miel 10g', 240, 14, 28, 8, 3, 'Mantenimiento', '10:00'),
(51, '', 'Garbanzos con bacalao', 'Garbanzos 120g, bacalao 150g, pimiento, aceite 10ml', 520, 38, 48, 14, 3, 'Mantenimiento', '13:00'),
(52, 'Merienda', 'Tostada con pavo y queso', 'Pan integral 60g, pavo 60g, queso 20g', 260, 18, 28, 6, 3, 'Mantenimiento', '16:30'),
(53, 'Cena', 'Pollo al horno con verduras', 'Pollo 180g, pimientos 120g, cebolla, tomate, aceite 10ml', 420, 38, 20, 14, 3, 'Mantenimiento', '20:00'),
(54, 'Recena', 'Leche con avena', 'Leche semidesnatada 200ml, avena 20g', 160, 9, 20, 4, 3, 'Mantenimiento', '23:00'),
(55, 'Desayuno', 'Avena con huevos y plátano', 'Avena 100g, leche 250ml, huevos 3 uds, plátano 1 ud', 680, 42, 80, 14, 4, 'Ganar músculo', '07:30'),
(56, 'Almuerzo', 'Tostadas )con pavo', 'Pan integral 80g, pavo 80g, queso 30g', 340, 26, 36, 8, 4, 'Ganar músculo', '10:30'),
(57, '', 'Arroz integral con pollo', 'Arroz integral 150g, pechuga 200g, brócoli 100g', 780, 62, 88, 12, 4, 'Ganar músculo', '13:00'),
(58, 'Merienda', 'Yogur griego con frutos', 'Yogur griego 200g, frutos secos 30g, manzana 1 ud', 380, 22, 34, 16, 4, 'Ganar músculo', '17:00'),
(59, 'Cena', 'Salmón con patata', 'Salmón 200g, patata 120g, ensalada verde libre', 620, 48, 40, 22, 4, 'Ganar músculo', '21:00'),
(60, 'Recena', 'Caseína con almendras', 'Caseína 30g, leche 200ml, almendras 20g', 280, 32, 10, 12, 4, 'Ganar músculo', '23:00'),
(61, 'Desayuno', 'Tortilla de claras', 'Claras 6 uds, espinacas 80g, tomate, aceite 5ml', 220, 28, 6, 8, 4, 'Perder peso', '07:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria` enum('Fuerza','Cardio','Flexibilidad') NOT NULL,
  `nivel_id` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT NULL,
  `repeticiones` varchar(20) DEFAULT NULL,
  `descanso` int(11) DEFAULT NULL,
  `dia` varchar(20) DEFAULT NULL,
  `grupo_muscular` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`id`, `nombre`, `descripcion`, `categoria`, `nivel_id`, `imagen`, `series`, `repeticiones`, `descanso`, `dia`, `grupo_muscular`) VALUES
(1, 'Sentadilla sin peso', 'Mantén espalda recta, baja hasta paralelo.', 'Fuerza', 1, 'img/Sentadilla_sin_peso.jpg', 3, '12-15', 60, 'Lun', 'Full Body'),
(2, 'Flexiones rodillas', 'Apoya rodillas, baja el pecho al suelo.', 'Fuerza', 1, 'img/Flexiones_rodillas.jpg', 3, '8-10', 60, 'Lun', 'Full Body'),
(3, 'Marcha en sitio', 'Eleva rodillas alternando durante el tiempo.', 'Cardio', 1, 'img/Marcha_sitio.jpg', 3, '45s', 45, 'Lun', 'Full Body'),
(4, 'Plancha básica', 'Antebrazos y punteras, cuerpo recto.', 'Fuerza', 1, 'img/Plancha.jpg', 3, '20s', 60, 'Lun', 'Full Body'),
(5, 'Estiramiento isquios', 'Tumbado, lleva pierna al pecho con las manos.', 'Flexibilidad', 1, 'img/Estiramientos_isquios.jpg', 3, '30s', 30, 'Lun', 'Full Body'),
(6, 'Zancadas sin peso', 'Paso largo adelante, rodilla trasera casi al suelo.', 'Fuerza', 1, 'img/zancada_sin_peso.png', 3, '10-12', 60, 'Jue', 'Full Body'),
(7, 'Superman', 'Boca abajo, eleva brazos y piernas a la vez.', 'Fuerza', 1, 'img/superman.png', 3, '12', 60, 'Jue', 'Full Body'),
(8, 'Saltos suaves', 'Salta en el sitio con rodillas ligeramente flexas.', 'Cardio', 1, 'img/saltos_suaves.png', 3, '30s', 45, 'Jue', 'Full Body'),
(9, 'Puente de glúteos', 'Tumbado, eleva cadera apretando glúteos arriba.', 'Fuerza', 1, 'img/Puente_gluteos.png', 3, '15', 60, 'Jue', 'Full Body'),
(10, 'Estiramiento cuádriceps', 'De pie, lleva talón al glúteo con la mano.', 'Flexibilidad', 1, 'img/estiramiento_cuadriceps.png', 3, '30s', 30, 'Jue', 'Full Body'),
(11, 'Sentadilla mancuernas', 'Mancuernas a los lados, baja controlado.', 'Fuerza', 2, 'img/sentadilla_mancuerna.png', 4, '10-12', 75, 'Lun', 'Full Body'),
(12, 'Flexiones completas', 'Cuerpo recto, baja pecho al suelo.', 'Fuerza', 2, 'img/flexiones_completas.png', 4, '10-12', 75, 'Lun', 'Full Body'),
(13, 'Saltos de tijera', 'Abre y cierra piernas y brazos saltando.', 'Cardio', 2, 'img/saltos_tijeras.png', 3, '40s', 45, 'Lun', 'Full Body'),
(14, 'Remo mancuerna', 'Apoya mano en banco, tira hacia la cadera.', 'Fuerza', 2, 'img/remo_con_mancuerna.png', 4, '10-12', 75, 'Lun', 'Full Body'),
(15, 'Movilidad cadera', 'Cuadrupedia, círculos amplios con cada rodilla.', 'Flexibilidad', 2, 'img/movilidad_cadera.png', 3, '30s', 30, 'Lun', 'Full Body'),
(16, 'Zancadas con mancuernas', 'Mancuernas a los lados, paso largo adelante.', 'Fuerza', 2, 'img/zancada_con_mancuernas.png', 4, '10-12', 75, 'Jue', 'Full Body'),
(17, 'Press hombro mancuernas', 'Sentado, empuja mancuernas sobre la cabeza.', 'Fuerza', 2, 'img/press_hombro_con_mancuerna.png', 4, '10-12', 75, 'Jue', 'Full Body'),
(18, 'Skipping', 'Corre en el sitio elevando rodillas al máximo.', 'Cardio', 2, 'img/skipping.png', 3, '40s', 45, 'Jue', 'Full Body'),
(19, 'Curl bíceps', 'De pie, sube mancuernas girando el antebrazo.', 'Fuerza', 2, 'img/curl_biceps.png', 4, '10-12', 75, 'Jue', 'Full Body'),
(20, 'Estiramiento hombros', 'Lleva brazo al pecho, sujeta con el otro.', 'Flexibilidad', 2, 'img/estiramiento_de_hombros.png', 3, '30s', 30, 'Jue', 'Full Body'),
(21, 'Flexiones rodillas', 'Apoya rodillas, baja el pecho al suelo.', 'Fuerza', 1, 'img/Flexiones_rodillas.jpg', 3, '8-10', 60, 'Lun', 'Push'),
(22, 'Press hombro sin peso', 'Sentado, simula empuje sobre la cabeza.', 'Fuerza', 1, 'img/Press_hombro.jpg', 3, '12', 60, 'Lun', 'Push'),
(23, 'Fondos silla', 'Manos en silla detrás, baja doblando codos.', 'Fuerza', 1, 'img/Fondos_silla.jpg', 3, '10', 60, 'Lun', 'Push'),
(24, 'Remo toalla', 'Puerta cerrada, tira hacia ti con una toalla.', 'Fuerza', 1, 'img/remo_toalla.png', 3, '12', 60, 'Mar', 'Pull'),
(25, 'Superman', 'Boca abajo, eleva brazos y piernas a la vez.', 'Fuerza', 1, 'img/superman.png', 3, '12', 60, 'Mar', 'Pull'),
(26, 'Curl bíceps sin peso', 'Simula curl apretando el brazo opuesto.', 'Fuerza', 1, NULL, 3, '12', 60, 'Mar', 'Pull'),
(27, 'Sentadilla sin peso', 'Mantén espalda recta, baja hasta paralelo.', 'Fuerza', 1, 'img/Sentadilla_sin_peso.jpg', 3, '15', 60, 'Jue', 'Piernas'),
(28, 'Puente glúteos', 'Tumbado, eleva cadera apretando glúteos.', 'Fuerza', 1, NULL, 3, '15', 60, 'Jue', 'Piernas'),
(29, 'Zancadas sin peso', 'Paso largo adelante, rodilla trasera al suelo.', 'Fuerza', 1, NULL, 3, '10', 60, 'Jue', 'Piernas'),
(30, 'Marcha en sitio', 'Eleva rodillas alternando durante el tiempo.', 'Cardio', 1, 'img/Marcha_sitio.jpg', 3, '45s', 45, 'Vie', 'Full Body'),
(31, 'Plancha básica', 'Antebrazos y punteras, cuerpo recto.', 'Fuerza', 1, 'img/Plancha.jpg', 3, '20s', 60, 'Vie', 'Full Body'),
(32, 'Estiramiento isquios', 'Tumbado, lleva pierna al pecho con las manos.', 'Flexibilidad', 1, 'img/Estiramientos_isquios.jpg', 3, '30s', 30, 'Vie', 'Full Body'),
(33, 'Flexiones completas', 'Cuerpo recto, baja pecho al suelo.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Lun', 'Push'),
(34, 'Press hombro mancuernas', 'Sentado, empuja mancuernas sobre la cabeza.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Lun', 'Push'),
(35, 'Fondos banco', 'Manos en banco detrás, baja doblando codos.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Lun', 'Push'),
(36, 'Remo mancuerna', 'Apoya mano en banco, tira hacia la cadera.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Mar', 'Pull'),
(37, 'Curl bíceps', 'De pie, sube mancuernas girando el antebrazo.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Mar', 'Pull'),
(38, 'Face pull banda', 'Tira de la banda hacia la cara, codos altos.', 'Fuerza', 2, NULL, 4, '12-15', 60, 'Mar', 'Pull'),
(39, 'Sentadilla mancuernas', 'Mancuernas a los lados, baja controlado.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Jue', 'Piernas'),
(40, 'Zancadas mancuernas', 'Mancuernas a los lados, paso largo adelante.', 'Fuerza', 2, NULL, 4, '10-12', 75, 'Jue', 'Piernas'),
(41, 'Puente glúteos cargado', 'Peso sobre caderas, eleva controlado.', 'Fuerza', 2, NULL, 4, '12', 75, 'Jue', 'Piernas'),
(42, 'Saltos de tijera', 'Abre y cierra piernas y brazos saltando.', 'Cardio', 2, NULL, 3, '40s', 45, 'Vie', 'Full Body'),
(43, 'Movilidad cadera', 'Cuadrupedia, círculos amplios con cada rodilla.', 'Flexibilidad', 2, NULL, 3, '30s', 30, 'Vie', 'Full Body'),
(44, 'Plancha lateral', 'Apoya antebrazo, eleva cadera lateral.', 'Fuerza', 2, NULL, 3, '20s', 45, 'Vie', 'Full Body'),
(45, 'Press banca mancuernas', 'Tumbado en banco, empuja mancuernas arriba.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Lun', 'Push'),
(46, 'Press inclinado', 'Banco inclinado 45°, empuja mancuernas.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Lun', 'Push'),
(47, 'Press militar barra', 'De pie, empuja barra desde clavícula.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Lun', 'Push'),
(48, 'Fondos paralelas', 'Baja entre paralelas doblando codos a 90°.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Lun', 'Push'),
(49, 'Dominadas supinas', 'Agarre supino, tira hasta que mentón supere barra.', 'Fuerza', 3, NULL, 4, '6-8', 90, 'Mar', 'Pull'),
(50, 'Remo barra', 'Espalda paralela al suelo, tira barra al ombligo.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Mar', 'Pull'),
(51, 'Curl martillo', 'Agarre neutro, sube mancuerna sin rotar.', 'Fuerza', 3, NULL, 4, '10-12', 75, 'Mar', 'Pull'),
(52, 'Face pull polea', 'Tira hacia la cara con codos altos en polea.', 'Fuerza', 3, NULL, 4, '12-15', 60, 'Mar', 'Pull'),
(53, 'Sentadilla búlgara', 'Pie trasero en banco, baja a 90° delantera.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Mie', 'Piernas'),
(54, 'Peso muerto rumano', 'Baja mancuernas por la pierna, espalda recta.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Mie', 'Piernas'),
(55, 'Prensa piernas', 'Empuja la plataforma con talones en prensa.', 'Fuerza', 3, NULL, 4, '10-12', 90, 'Mie', 'Piernas'),
(56, 'Gemelos de pie', 'Sube en puntillas lentamente, baja controlado.', 'Fuerza', 3, NULL, 4, '15-20', 60, 'Mie', 'Piernas'),
(57, 'Press banca plano', 'Barra al pecho, empuja hasta extensión.', 'Fuerza', 3, NULL, 4, '8-10', 90, 'Jue', 'Push'),
(58, 'Aperturas mancuernas', 'Tumbado, abre brazos en arco hasta paralelo.', 'Fuerza', 3, NULL, 4, '10-12', 75, 'Jue', 'Push'),
(59, 'Extensión tríceps', 'Polea alta, extiende codos hacia abajo.', 'Fuerza', 3, NULL, 4, '12-15', 60, 'Jue', 'Push'),
(60, 'Remo en polea baja', 'Siéntate, tira del cable hacia el abdomen.', 'Fuerza', 3, NULL, 4, '10-12', 75, 'Vie', 'Pull'),
(61, 'Jalón al pecho', 'Tira la barra hacia el pecho en polea alta.', 'Fuerza', 3, NULL, 4, '10-12', 75, 'Vie', 'Pull'),
(62, 'Curl concentrado', 'Codo en rodilla, sube mancuerna girando.', 'Fuerza', 3, NULL, 4, '10-12', 75, 'Vie', 'Pull'),
(63, 'Zancadas caminando', 'Camina dando zancadas largas con mancuernas.', 'Fuerza', 3, NULL, 4, '10-12', 90, 'Sab', 'Piernas'),
(64, 'Extensión cuádriceps', 'Siéntate en máquina, extiende piernas arriba.', 'Fuerza', 3, NULL, 4, '12-15', 75, 'Sab', 'Piernas'),
(65, 'Curl femoral', 'Boca abajo en máquina, flexiona rodillas.', 'Fuerza', 3, NULL, 4, '12-15', 75, 'Sab', 'Piernas'),
(66, 'Press banca 5x5', 'Barra al pecho en banco plano, empuje explosivo.', 'Fuerza', 4, NULL, 5, '5', 120, 'Lun', 'Push'),
(67, 'Press inclinado barra', 'Banco 45°, barra al pecho alto.', 'Fuerza', 4, NULL, 5, '6-8', 120, 'Lun', 'Push'),
(68, 'Press militar', 'De pie, empuja barra desde clavícula a extensión.', 'Fuerza', 4, NULL, 5, '5-6', 120, 'Lun', 'Push'),
(69, 'Fondos lastrados', 'Paralelas con lastre, baja a 90° controlado.', 'Fuerza', 4, NULL, 5, '6-8', 120, 'Lun', 'Push'),
(70, 'Dominadas lastradas', 'Cuelga con lastre, tira hasta mentón sobre barra.', 'Fuerza', 4, NULL, 5, '5-6', 120, 'Mar', 'Pull'),
(71, 'Remo barra pesado', 'Espalda paralela, tira barra al abdomen fuerte.', 'Fuerza', 4, NULL, 5, '5', 120, 'Mar', 'Pull'),
(72, 'Remo en T', 'Pecho apoyado, tira mancuernas hacia costillas.', 'Fuerza', 4, NULL, 5, '6-8', 120, 'Mar', 'Pull'),
(73, 'Curl barra', 'De pie, sube barra sin mover codos.', 'Fuerza', 4, NULL, 5, '6-8', 90, 'Mar', 'Pull'),
(74, 'Sentadilla profunda', 'Barra alta, baja por debajo del paralelo.', 'Fuerza', 4, NULL, 5, '5', 120, 'Mie', 'Piernas'),
(75, 'Peso muerto conv.', 'Agarre al ancho de caderas, empuja el suelo.', 'Fuerza', 4, NULL, 5, '5', 120, 'Mie', 'Piernas'),
(76, 'Prensa piernas pesada', 'Pies altos en plataforma, rango completo.', 'Fuerza', 4, NULL, 5, '6-8', 120, 'Mie', 'Piernas'),
(77, 'Sentadilla búlgara', 'Pie en banco, baja a 90° con mancuerna pesada.', 'Fuerza', 4, NULL, 5, '6-8', 120, 'Mie', 'Piernas'),
(78, 'Press banca agarre', 'Agarre más cerrado para más trabajo de tríceps.', 'Fuerza', 4, NULL, 5, '6-8', 120, 'Jue', 'Push'),
(79, 'Aperturas inclinadas', 'Banco 30°, abre en arco amplio con mancuernas.', 'Fuerza', 4, NULL, 5, '8-10', 90, 'Jue', 'Push'),
(80, 'Extensión tríceps barra', 'Barra EZ sobre cabeza, baja detrás de la nuca.', 'Fuerza', 4, NULL, 5, '8-10', 90, 'Jue', 'Push'),
(81, 'Jalón al pecho ancho', 'Agarre ancho en polea, tira al pecho.', 'Fuerza', 4, NULL, 5, '8-10', 90, 'Vie', 'Pull'),
(82, 'Remo cable neutro', 'Cable bajo, agarre neutro, tira al abdomen.', 'Fuerza', 4, NULL, 5, '8-10', 90, 'Vie', 'Pull'),
(83, 'Curl martillo alterno', 'Sube mancuernas en agarre neutro alternando.', 'Fuerza', 4, NULL, 5, '8-10', 90, 'Vie', 'Pull'),
(84, 'Peso muerto rumano uni', 'Una pierna, mancuerna opuesta, espalda neutra.', 'Fuerza', 4, NULL, 5, '8-10', 90, 'Sab', 'Piernas'),
(85, 'Extensión cuádriceps', 'Máquina, extiende con control y pausa arriba.', 'Fuerza', 4, NULL, 5, '10-12', 75, 'Sab', 'Piernas'),
(86, 'Curl femoral tumbado', 'Máquina, flexiona rodillas con control.', 'Fuerza', 4, NULL, 5, '10-12', 75, 'Sab', 'Piernas'),
(87, 'Sentadilla olímpica', 'Técnica olímpica, barra alta, bajada explosiva.', 'Fuerza', 5, NULL, 6, '3-5', 180, 'Lun', 'Push'),
(88, 'Press banca máximo', 'Trabajo al 85-90% del máximo, pausa en pecho.', 'Fuerza', 5, NULL, 6, '3-5', 180, 'Lun', 'Push'),
(89, 'Press militar pesado', 'De pie, empuje máximo sobre la cabeza.', 'Fuerza', 5, NULL, 6, '4-5', 150, 'Lun', 'Push'),
(90, 'Fondos lastrados máx', 'Lastre máximo, bajada lenta y subida explosiva.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Lun', 'Push'),
(91, 'Muscle-up', 'Dominada + fondo en barra en un movimiento fluido.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Mar', 'Pull'),
(92, 'Peso muerto máximo', 'Trabajo al 90% del máximo con técnica perfecta.', 'Fuerza', 5, NULL, 6, '3-5', 180, 'Mar', 'Pull'),
(93, 'Remo Pendlay', 'Barra al suelo entre reps, explosivo hacia abdomen.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Mar', 'Pull'),
(94, 'Curl barra pesado', 'Curl estricto sin balanceo al 80% del máximo.', 'Fuerza', 5, NULL, 6, '4-6', 120, 'Mar', 'Pull'),
(95, 'Pistol squat', 'Sentadilla a una pierna, extiende la libre al frente.', 'Fuerza', 5, NULL, 6, '5-6', 150, 'Mie', 'Piernas'),
(96, 'Peso muerto sumo', 'Pies abiertos, agarre interior, tirón vertical.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Mie', 'Piernas'),
(97, 'Sentadilla pausa', 'Pausa 3 segundos en el fondo antes de subir.', 'Fuerza', 5, NULL, 6, '4-5', 150, 'Mie', 'Piernas'),
(98, 'Zancada búlgara lastrad', 'Mancuernas pesadas, pie trasero elevado.', 'Fuerza', 5, NULL, 6, '6-8', 120, 'Mie', 'Piernas'),
(99, 'Press banca declinado', 'Banco declinado, más trabajo en pecho bajo.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Jue', 'Push'),
(100, 'Arnold press', 'Rotación completa al subir las mancuernas.', 'Fuerza', 5, NULL, 6, '6-8', 120, 'Jue', 'Push'),
(101, 'Skullcrusher pesado', 'Barra EZ, baja detrás de la nuca con control.', 'Fuerza', 5, NULL, 6, '6-8', 120, 'Jue', 'Push'),
(102, 'Dominadas lastradas máx', 'Lastre máximo, bajada lenta 4 segundos.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Vie', 'Pull'),
(103, 'Remo con mancuerna pes.', 'Mancuerna pesada, tira explosivo hacia cadera.', 'Fuerza', 5, NULL, 6, '5-6', 150, 'Vie', 'Pull'),
(104, 'Curl predicador', 'Codos fijos en banco predicador, curl estricto.', 'Fuerza', 5, NULL, 6, '6-8', 90, 'Vie', 'Pull'),
(105, 'Sentadilla frontal', 'Barra en clavículas, espalda vertical, bajada profunda.', 'Fuerza', 5, NULL, 6, '4-6', 150, 'Sab', 'Piernas'),
(106, 'Peso muerto conv. máx', 'Trabajo al 95% del máximo, técnica perfecta.', 'Fuerza', 5, NULL, 6, '2-3', 180, 'Sab', 'Piernas'),
(107, 'Extensión excéntrica', 'Baja en 5 segundos en máquina de cuádriceps.', 'Fuerza', 5, NULL, 6, '8-10', 90, 'Sab', 'Piernas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imc_min` decimal(4,1) DEFAULT NULL,
  `imc_max` decimal(4,1) DEFAULT NULL,
  `dias_min` int(11) DEFAULT NULL,
  `dias_max` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id`, `nombre`, `descripcion`, `imc_min`, `imc_max`, `dias_min`, `dias_max`, `color`) VALUES
(1, 'Iniciado', 'Estás dando tus primeros pasos.', 30.0, 99.9, 0, 1, '#888888'),
(2, 'Aspirante', 'Ya tienes constancia, sigue mejorando.', 25.0, 29.9, 2, 3, '#5b8fd4'),
(3, 'Guerrero', 'Entrenas con regularidad y disciplina.', 22.0, 24.9, 3, 4, '#7ec453'),
(4, 'Campeón', 'Alto rendimiento y buena forma física.', 19.0, 21.9, 5, 6, '#c8f135'),
(5, 'Élite', 'Máximo nivel. Disciplina total.', 10.0, 18.9, 6, 7, '#9b6fd4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `altura` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` enum('Masculino','Femenino') NOT NULL,
  `dias_entreno` enum('1-2','3-4','5-6','7') NOT NULL,
  `objetivo` enum('Ganar músculo','Perder peso','Mantenimiento') NOT NULL,
  `rol` enum('usuario','admin') DEFAULT 'usuario',
  `nivel_id` int(11) DEFAULT 1,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `peso`, `altura`, `edad`, `sexo`, `dias_entreno`, `objetivo`, `rol`, `nivel_id`, `foto`, `created_at`) VALUES
(1, 'Laura', 'Bellido', 'laura@bxsports.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 71.00, 168, 24, 'Femenino', '5-6', 'Perder peso', 'usuario', 1, 'uploads/avatars/avatar_1.png', '2026-05-25 20:09:20'),
(2, 'Maria José', 'Fernandez', 'mariaj@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 78.50, 162, 53, 'Femenino', '1-2', 'Perder peso', 'usuario', 1, NULL, '2026-05-25 20:09:20'),
(3, 'Alejandro', 'Bellido', 'alejandro@bxsports.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 73.00, 178, 19, 'Masculino', '5-6', 'Ganar músculo', 'usuario', 4, NULL, '2026-05-25 20:09:20'),
(4, 'Laureano', 'Bellido', 'laureano@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 88.00, 174, 55, 'Masculino', '1-2', 'Mantenimiento', 'usuario', 1, NULL, '2026-05-25 20:09:20'),
(5, 'Mario', 'Seco', 'mario@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 70.00, 176, 19, 'Masculino', '3-4', 'Ganar músculo', 'usuario', 3, NULL, '2026-05-25 20:09:20'),
(6, 'Karol', 'Lopez', 'karol@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 62.00, 168, 36, 'Femenino', '3-4', 'Mantenimiento', 'usuario', 3, NULL, '2026-05-25 20:09:20'),
(7, 'Daniel', 'Gordillo', 'daniel@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 75.00, 180, 20, 'Masculino', '5-6', 'Ganar músculo', 'usuario', 4, NULL, '2026-05-25 20:09:20'),
(9, 'Jesus', 'Morales', 'jesus@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 80.00, 182, 22, 'Masculino', '7', 'Ganar músculo', 'usuario', 5, NULL, '2026-05-25 20:09:20'),
(10, 'Miguel', 'Ramirez', 'miguel@bxsports.com', '$2y$10$TKh8H1.PtIqpL7/YUpL8pu1hOzBRp4T5CR6rURPAP5QZn.4yoYWRS', 72.00, 177, 21, 'Masculino', '5-6', 'Ganar músculo', 'usuario', 4, NULL, '2026-05-25 20:09:20'),
(11, 'Admin', 'BX Sports', 'admin@bxsports.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 70.00, 175, 25, 'Masculino', '3-4', 'Mantenimiento', 'admin', 3, NULL, '2026-05-26 11:52:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `checkins`
--
ALTER TABLE `checkins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dieta`
--
ALTER TABLE `dieta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `checkins`
--
ALTER TABLE `checkins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dieta`
--
ALTER TABLE `dieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `checkins`
--
ALTER TABLE `checkins`
  ADD CONSTRAINT `checkins_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `checkins_ibfk_2` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`);

--
-- Filtros para la tabla `dieta`
--
ALTER TABLE `dieta`
  ADD CONSTRAINT `dieta_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`);

--
-- Filtros para la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD CONSTRAINT `ejercicios_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
