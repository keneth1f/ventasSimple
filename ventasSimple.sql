-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 21:49:16
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
-- Base de datos: `okventa_by_parzibyte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bajas_inventario`
--

CREATE TABLE `bajas_inventario` (
  `rowid` int(11) NOT NULL,
  `codigo_producto` text NOT NULL,
  `nombre_producto` text NOT NULL,
  `numero_piezas` decimal(11,2) NOT NULL,
  `razon_baja` text NOT NULL,
  `usuario` tinytext NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `rowid` int(11) NOT NULL,
  `caja_chica` decimal(11,2) UNSIGNED NOT NULL,
  `ventas` decimal(11,2) NOT NULL,
  `gastos` decimal(11,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `no_venta` text NOT NULL,
  `usuario` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`rowid`, `caja_chica`, `ventas`, `gastos`, `fecha`, `no_venta`, `usuario`) VALUES
(4, 0.00, 0.00, 0.00, '2024-04-03 18:25:56', '1', 'keneth'),
(5, 0.00, 0.00, 0.00, '2024-04-03 18:27:11', '2', 'keneth'),
(6, 0.00, 0.00, 0.00, '2024-04-03 18:27:27', '3', 'keneth'),
(7, 0.00, 0.00, 0.00, '2024-04-03 18:28:12', '4', 'keneth'),
(8, 0.00, 0.00, 0.00, '2024-04-03 18:28:13', '5', 'keneth'),
(9, 0.00, 0.00, 0.00, '2024-04-03 18:28:14', '6', 'keneth'),
(10, 0.00, 0.00, 0.00, '2024-04-03 18:28:15', '7', 'keneth'),
(11, 500.00, 0.00, 0.00, '2024-04-21 19:59:36', 'null', 'keneth'),
(12, 0.00, 0.00, 0.00, '2024-04-21 20:00:09', '8', 'keneth'),
(13, 0.00, 0.00, 0.00, '2024-04-21 20:01:09', '9', 'keneth'),
(14, 0.00, 0.00, 0.00, '2024-04-21 20:03:33', '10', 'keneth'),
(15, 0.00, 0.00, 0.00, '2024-04-21 20:04:30', '11', 'keneth'),
(16, 0.00, 30.00, 0.00, '2024-04-21 20:06:15', '12', 'keneth'),
(17, 0.00, 0.00, 200.00, '2024-04-21 20:06:58', 'null', 'keneth'),
(18, 0.00, 30.00, 0.00, '2024-04-21 20:34:30', '13', 'keneth');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresa`
--

CREATE TABLE `datos_empresa` (
  `rowid` int(11) NOT NULL,
  `nombre` tinytext NOT NULL,
  `telefono` tinytext NOT NULL,
  `rfc` text DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `colonia` text DEFAULT NULL,
  `codigo_postal` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `rowid` int(11) NOT NULL,
  `importe` decimal(11,2) UNSIGNED NOT NULL,
  `concepto` text NOT NULL,
  `descripcion` text NOT NULL,
  `numero_remision` text DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `usuario` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`rowid`, `importe`, `concepto`, `descripcion`, `numero_remision`, `fecha`, `usuario`) VALUES
(1, 200.00, 'Descuento', 'Se hizo un descuento a un cliente', '1', '2024-04-21 20:06:58', 'keneth');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `rowid` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `nombre` text NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `utilidad` decimal(11,2) NOT NULL,
  `existencia` decimal(11,2) NOT NULL,
  `stock` decimal(11,2) NOT NULL,
  `familia` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`rowid`, `codigo`, `nombre`, `precio_compra`, `precio_venta`, `utilidad`, `existencia`, `stock`, `familia`) VALUES
(3, '5 021265221202	', 'MENOPACE PLUS			', 20.00, 30.00, 10.00, 17.00, 5.00, 'VITABIOTICS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `rowid` int(11) NOT NULL,
  `nombre` tinytext NOT NULL,
  `palabra_secreta` tinytext NOT NULL,
  `administrador` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`rowid`, `nombre`, `palabra_secreta`, `administrador`) VALUES
(4, 'keneth', '$2y$10$WM./D6/UbYIRngOhrwEquO1BbIH.xkgjQ51SkrVlTMrJ5TPYfXebG', b'1'),
(6, 'usuario1', '$2y$10$4rkjYwabP7NZw1sBGMRVxuA6d16bpu8GoJn9ohD2zSewfG2puoCLK', b'0'),
(7, 'admin', '$2y$10$E0AzpmZ1kJcVHTusUkuAwuJnMKjJcsNC194IGDSRUYgnKF7cfEw6K', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `numero_venta` int(11) NOT NULL,
  `codigo_producto` text NOT NULL,
  `nombre_producto` text NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `numero_productos` decimal(11,2) NOT NULL,
  `usuario` tinytext NOT NULL,
  `familia` tinytext NOT NULL,
  `utilidad` decimal(8,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`numero_venta`, `codigo_producto`, `nombre_producto`, `total`, `fecha`, `numero_productos`, `usuario`, `familia`, `utilidad`) VALUES
(1, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:25:56', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(2, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:27:11', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(3, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:27:27', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(4, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:28:12', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(5, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:28:13', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(6, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:28:14', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(7, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-03 18:28:15', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(8, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-21 20:00:09', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(9, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-21 20:01:09', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(10, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-21 20:03:33', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(11, '5 021265221202	', 'MENOPACE PLUS			', 0.00, '2024-04-21 20:04:30', 1.00, 'keneth', 'VITABIOTICS', 0.00),
(12, '5 021265221202	', 'MENOPACE PLUS			', 30.00, '2024-04-21 20:06:15', 1.00, 'keneth', 'VITABIOTICS', 10.00),
(13, '5 021265221202	', 'MENOPACE PLUS			', 30.00, '2024-04-21 20:34:30', 1.00, 'keneth', 'VITABIOTICS', 10.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bajas_inventario`
--
ALTER TABLE `bajas_inventario`
  ADD PRIMARY KEY (`rowid`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`rowid`);

--
-- Indices de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD PRIMARY KEY (`rowid`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`rowid`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`rowid`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`rowid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bajas_inventario`
--
ALTER TABLE `bajas_inventario`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
