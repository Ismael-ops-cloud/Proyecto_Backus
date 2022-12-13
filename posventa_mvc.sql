-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2022 a las 23:57:57
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `posventa_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `estado`) VALUES
(1, 'Cristal', 'Activo'),
(2, 'Pilsen', 'Activo'),
(3, 'Cusqueña', 'Activo'),
(4, 'Golden', 'Activo'),
(5, 'Corona', 'Activo'),
(6, 'Guarana', 'Activo'),
(7, 'Mikes', 'Activo'),
(8, 'Lacteos', 'Activo'),
(9, 'ipolos', 'Activo'),
(10, 'Licoress', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` text NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`, `direccion`, `estado`) VALUES
(1, 'clientee', '92153784', 'cix', 'Activo'),
(2, 'clientee', '92153784', 'cix', 'Activo'),
(3, 'clientee', '92153780', 'cix', 'Activo'),
(7, 'clientee', '92153781', 'cix', 'Activo'),
(8, 'clientee', '92153741', 'cix', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_proveedor`, `total`, `fecha`) VALUES
(1, 1, '658', '2022-12-10 02:42:03'),
(2, 1, '1050', '2022-12-10 02:56:02'),
(3, 1, '1092', '2022-12-10 03:13:01'),
(4, 1, '1092', '2022-12-10 03:15:48'),
(5, 1, '1008', '2022-12-10 03:17:51'),
(6, 1, '1414', '2022-12-10 03:22:31'),
(7, 1, '1078', '2022-12-10 03:27:53'),
(8, 1, '1106', '2022-12-10 03:32:00'),
(9, 1, '1036', '2022-12-10 03:40:38'),
(10, 1, '11032', '2022-12-10 03:43:29'),
(11, 1, '630', '2022-12-10 04:00:47'),
(12, 1, '11032', '2022-12-10 04:18:32'),
(13, 1, '42', '2022-12-11 05:46:02'),
(14, 1, '98', '2022-12-11 05:47:00'),
(15, 1, '70', '2022-12-11 05:51:41'),
(16, 1, '168', '2022-12-11 05:55:20'),
(17, 1, '658', '2022-12-11 06:01:41'),
(18, 1, '1176', '2022-12-11 06:03:11'),
(19, 1, '1092', '2022-12-11 07:09:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `mensaje` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `mensaje`) VALUES
(1, '123456789', 'lucho', '987654321', 'Ugarte', 'Gracias por su preferencia.\r\n¡Merry Christmas!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id`, `id_compra`, `id_producto`, `precio`, `cantidad`, `subtotal`, `fecha`) VALUES
(3, 1, 1, '41', 5, '205', '2022-12-10 02:59:52'),
(5, 4, 3, '14', 78, '1092', '2022-12-10 03:15:48'),
(6, 5, 3, '14', 72, '1008', '2022-12-10 03:17:51'),
(7, 6, 3, '14', 101, '1414', '2022-12-10 03:22:31'),
(8, 7, 2, '14', 77, '1078', '2022-12-10 03:27:53'),
(9, 8, 1, '14', 79, '1106', '2022-12-10 03:32:00'),
(10, 9, 2, '14', 74, '1036', '2022-12-10 03:40:38'),
(11, 10, 2, '14', 788, '11032', '2022-12-10 03:43:29'),
(12, 11, 2, '14', 45, '630', '2022-12-10 04:00:47'),
(13, 12, 1, '14', 788, '11032', '2022-12-10 04:18:32'),
(14, 13, 2, '14', 3, '42', '2022-12-11 05:46:02'),
(15, 14, 2, '14', 7, '98', '2022-12-11 05:47:00'),
(16, 15, 4, '14', 5, '70', '2022-12-11 05:51:41'),
(17, 16, 4, '14', 12, '168', '2022-12-11 05:55:20'),
(18, 17, 3, '14', 47, '658', '2022-12-11 06:01:41'),
(19, 18, 3, '14', 84, '1176', '2022-12-11 06:03:11'),
(20, 19, 4, '14', 78, '1092', '2022-12-11 07:09:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidas`
--

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL,
  `medidas` varchar(20) NOT NULL,
  `nombre_corto` varchar(5) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medidas`
--

INSERT INTO `medidas` (`id`, `medidas`, `nombre_corto`, `estado`) VALUES
(1, 'xd', 'xd', 'Activo'),
(2, 'jaj', 'ashh', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `precio_compra` decimal(10,0) NOT NULL,
  `precio_venta` decimal(10,0) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_medida` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `cantidad`, `precio_compra`, `precio_venta`, `id_proveedor`, `id_medida`, `id_categoria`, `estado`) VALUES
(1, '4545454545', 'helado', 942, '14', '15', 2, 1, 1, 'Activado'),
(2, '7474747441', 'helado', 1072, '14', '15', 2, 1, 1, 'Activado'),
(3, '77777788', 'helado', 382, '14', '15', 2, 1, 1, 'Activado'),
(4, '554545454', 'Chela', 95, '14', '16', 2, 2, 8, 'Activado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `proveedor` varchar(200) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` text NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `ruc`, `proveedor`, `telefono`, `direccion`, `estado`) VALUES
(1, '10744602225', 'ismael', '921537564', 'av.queteimporta', 'Activo'),
(2, '10205154420', 'juanaproveedor', '921537564', 'dasdasda', 'Activo'),
(4, '12457854125', 'Ivancito', '957955788', 'Chiclayo', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `caja` varchar(15) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`, `caja`, `rol`, `estado`) VALUES
(1, 'admin', ' sifuentes', 'admin', 'General', 'Administrador', 'Activo'),
(2, 'ANGEL', 'ANGEL SIFUENTES', 'ANGEL', 'General', 'Administrador', 'Inactivo'),
(3, 'angel', 'angel sifuentes', 'angel', 'General', 'Administrador', 'Activo'),
(4, 'prueba', 'probando editado', 'prueba', 'General', 'Administrador', 'Inactivo'),
(5, 'Ana', 'Ana vega solis', '14789', 'General', 'Administrador', 'Activo'),
(6, 'Admin2', 'Antonio', 'Admin2', 'General', 'Administrador', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_compra` (`id_compra`);

--
-- Indices de la tabla `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_medida` (`id_medida`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `medidas`
--
ALTER TABLE `medidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`id_medida`) REFERENCES `medidas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
