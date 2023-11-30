-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-11-2023 a las 16:48:39
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuariosCuentas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ingresos` decimal(10,2) NOT NULL,
  `gastos` decimal(10,2) NOT NULL,
  `balance_general` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `balance`
--

INSERT INTO `balance` (`id`, `fecha`, `ingresos`, `gastos`, `balance_general`) VALUES
(101, '2023-11-27', '30000.00', '5000.00', '25000.00'),
(102, '2023-11-27', '15000.00', '500.00', '14500.00'),
(103, '2023-11-27', '7600.00', '6800.00', '800.00'),
(104, '2023-11-27', '7600.00', '8800.00', '8800.00'),
(105, '2023-11-28', '30000.00', '5000.00', '35000.00'),
(106, '2023-11-28', '62800.00', '3000.00', '159800.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `monto`, `fecha`) VALUES
(89, '5000.00', '2023-11-28'),
(90, '3000.00', '2023-11-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `monto`, `fecha`) VALUES
(91, '7600.00', '2023-11-27'),
(92, '30000.00', '2023-11-28'),
(93, '62800.00', '2023-11-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `codigo_producto` varchar(50) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `existencia_inicial` int(11) NOT NULL,
  `entradas` int(11) NOT NULL DEFAULT 0,
  `salidas` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `codigo_producto`, `nombre_producto`, `costo`, `precio_venta`, `existencia_inicial`, `entradas`, `salidas`, `stock`, `imagen`) VALUES
(9, '111', 'producto para probar', '10000.00', '15000.00', 200, 96, 117, 272, NULL),
(10, '001', 'Ampollas Capilares', '1000.00', '1800.00', 24, 0, 14, 10, NULL),
(11, '002', 'Sobres de Tratamiento', '1000.00', '2000.00', 30, 0, 16, 14, NULL),
(12, '003', 'Keratina Recamier', '15000.00', '26000.00', 16, 0, 3, 13, NULL),
(13, '004', 'Cepillo Secador', '24000.00', '40000.00', 6, 0, 1, 5, NULL),
(14, '005', 'Aplicador Capilar', '7000.00', '15000.00', 6, 0, 0, 6, NULL),
(15, '007', 'keratina ritual botanico', '30000.00', '50000.00', 6, 2, 2, 6, NULL),
(19, '008', 'Cepillo Flexible', '8000.00', '15000.00', 6, 2, 2, 6, NULL),
(20, '112', 'marolin', '1000.00', '2000.00', 12, 4, 0, 16, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contraseña`) VALUES
(1, 'yuriana', 'yuriana.casa@gmail.com', '$2y$10$SAJ6Jmzxf1YdcaTiZPvRAedmPef0KUs3s4ORCSPrz67lN1xSxKR8O'),
(2, 'yerson joel', 'abigaildangelis92@gmail.com', '$2y$10$N.Ikc4FZnO3LmYltRno7l.L9LAK7eU3s8hzH5lhpd/acCmf62veCi'),
(3, 'yerson joel', 'yrua@gmail.com', '$2y$10$SQSqG8.Lyo82zxhIZw8gke1cpkQQ8z3WDpQAROcdCc9zycB6.oo9a'),
(4, 'yuriana', 'jajaja@gmail.com', '$2y$10$tW853OHbPTIL8pns5aD5wuXzKAfggxcBwseJe1TxsK4nLUOcM9G4a'),
(5, 'amaranto', 'amarabto@', '$2y$10$NmDNnRhVu0B4ejAmCwwdz.dbkfZne3ShUmhyQDIEfgVR65cuX4A6W');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
