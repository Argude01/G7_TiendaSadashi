-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 02:45:27
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda_sadashi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carrito`
--

CREATE TABLE `tbl_carrito` (
  `ID_CARRITO` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_carrito`
--

INSERT INTO `tbl_carrito` (`ID_CARRITO`, `ID_CLIENTE`, `ID_PRODUCTO`) VALUES
(1, 6, 4),
(2, 7, 1),
(3, 9, 5),
(4, 10, 3),
(5, 8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `CATEGORIA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`ID_CATEGORIA`, `CATEGORIA`) VALUES
(1, 'INFANTIL'),
(2, 'ADULTO'),
(3, 'ADULTO MAYOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `CLAVE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`ID_CLIENTE`, `NOMBRE`, `CORREO`, `CLAVE`) VALUES
(6, 'Flor Martinez', 'flmarti@gmail.com', 'hola123'),
(7, 'Gus Dapperton', 'gusd@gmail.com', 'cieloazul'),
(8, 'Elizabet Grant', 'lizbg@yahoo.com', 'elizag'),
(9, 'Mario Lopez', 'marlp@gmail.com', 'mario2'),
(10, 'Mariana Salas', 'marsls@yahoo.com', 'agua123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cupon`
--

CREATE TABLE `tbl_cupon` (
  `ID_CUPON` int(11) NOT NULL,
  `CODIGO` varchar(100) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cupon`
--

INSERT INTO `tbl_cupon` (`ID_CUPON`, `CODIGO`, `ID_CLIENTE`) VALUES
(1, 'F367521', 7),
(2, 'LIU8998', 9),
(3, 'D524261', 8),
(4, 'H908908', 10),
(5, 'H32T720', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido`
--

CREATE TABLE `tbl_pedido` (
  `ID_PEDIDO` int(11) NOT NULL,
  `TELEFONO` varchar(100) NOT NULL,
  `FORMA_DE_PAGO` varchar(100) NOT NULL,
  `TOTAL_A_PAGAR` int(100) NOT NULL,
  `DIRECCION` varchar(300) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pedido`
--

INSERT INTO `tbl_pedido` (`ID_PEDIDO`, `TELEFONO`, `FORMA_DE_PAGO`, `TOTAL_A_PAGAR`, `DIRECCION`, `ID_CLIENTE`, `ID_PRODUCTO`) VALUES
(1, '+504 98776655', 'Efectivo', 1000, 'Barrio La Independencia, Comayagua, Honduras', 6, 4),
(2, '+ 504 8866543', 'Tarjeta de crédito', 9955, 'Barrio Santa Lucia, Comayagua, Honduras', 8, 3),
(3, '+ 504 97543211', 'Efectivo', 1500, 'Colonia Brisas de Altamira, Comayagua, Honduras', 9, 1),
(4, '+ 504 90980055', 'Tarjeta de crédito', 597, 'Barrio La Joya, Comayagua, Honduras', 10, 4),
(5, '+504 99554433', 'Tarjeta de credito', 2500, 'Colonia Los Jasmines, Comayagua, Honduras', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `PRODUCTO` varchar(100) NOT NULL,
  `TALLA` varchar(5) NOT NULL,
  `PRECIO` int(100) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`ID_PRODUCTO`, `PRODUCTO`, `TALLA`, `PRECIO`, `ID_CATEGORIA`) VALUES
(1, 'PANTALON CORTE RECTO', 'XS', 100, 2),
(2, 'CHAQUETA CON ESTAMPADO DE CARICATURA', 'XS', 230, 1),
(3, 'BLUSA CON ESTAMPADO FLORAL', 'S', 300, 3),
(4, 'VESTIDO CON MANGAS', 'L', 590, 2),
(5, 'CALZONETA CON ESTAMPADO ', 'XL', 240, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
  ADD PRIMARY KEY (`ID_CARRITO`),
  ADD KEY `FK_CLIENTE_CARRITO` (`ID_CLIENTE`),
  ADD KEY `FK_PRODUCTO_CARRITO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_cupon`
--
ALTER TABLE `tbl_cupon`
  ADD PRIMARY KEY (`ID_CUPON`),
  ADD KEY `FK_CLIENTE_CUPONES` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_CLIENTE_PEDIDO` (`ID_CLIENTE`),
  ADD KEY `FK_PRODUCTO_PEDIDO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `FK_CATEGORIA_PRODUCTO` (`ID_CATEGORIA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
  MODIFY `ID_CARRITO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_cupon`
--
ALTER TABLE `tbl_cupon`
  MODIFY `ID_CUPON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
  ADD CONSTRAINT `FK_CLIENTE_CARRITO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCTO_CARRITO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `tbl_productos` (`ID_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_cupon`
--
ALTER TABLE `tbl_cupon`
  ADD CONSTRAINT `FK_CLIENTE_CUPONES` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD CONSTRAINT `FK_CLIENTE_PEDIDO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCTO_PEDIDO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `tbl_productos` (`ID_PRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD CONSTRAINT `FK_CATEGORIA_PRODUCTO` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tbl_categoria` (`ID_CATEGORIA`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
