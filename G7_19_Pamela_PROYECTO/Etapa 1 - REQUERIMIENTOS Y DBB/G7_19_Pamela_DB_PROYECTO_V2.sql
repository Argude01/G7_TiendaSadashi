-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2021 a las 15:45:01
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `ID_PRODUCTO` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias`
--

CREATE TABLE `tbl_categorias` (
  `ID_CATEGORIAS` int(11) NOT NULL,
  `CATEGORIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`ID_CATEGORIAS`, `CATEGORIA`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `CORREO_ELECTRONICO` varchar(100) NOT NULL,
  `CLAVE` varchar(100) NOT NULL,
  `NOMBRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`ID_CLIENTE`, `CORREO_ELECTRONICO`, `CLAVE`, `NOMBRE`) VALUES
(1, 'carlos89@gmail.com', '789', 0),
(2, 'susanamaddrid@gmail.com', '7890', 0),
(3, 'albertjuan@gmail.com', '9000', 0),
(4, 'sanchez67@gmail', '5643', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cupones`
--

CREATE TABLE `tbl_cupones` (
  `ID_CUPON` int(11) NOT NULL,
  `ID_NOMBRE` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido`
--

CREATE TABLE `tbl_pedido` (
  `ID_PEDIDO` int(11) NOT NULL,
  `TELEFONO` int(50) NOT NULL,
  `FORMA_DE_PAGO` varchar(100) NOT NULL,
  `TOTAL_A_PAGAR` int(50) NOT NULL,
  `DIRECCION` varchar(100) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `PROUCTO` varchar(100) NOT NULL,
  `TALLA` varchar(100) NOT NULL,
  `PRECIO` int(50) NOT NULL,
  `ID_CATEGORIA` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indices de la tabla `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  ADD PRIMARY KEY (`ID_CATEGORIAS`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_cupones`
--
ALTER TABLE `tbl_cupones`
  ADD PRIMARY KEY (`ID_CUPON`),
  ADD KEY `FK_CLIENTE_CUPONES` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_CLIENTE_PEDIDO` (`ID_CLIENTE`),
  ADD KEY `FK_PRODUCTO_PEDIDO` (`ID_PRODUCTO`) USING BTREE;

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `FK_CATEGORIA_PRODUCTO` (`ID_CATEGORIA`);

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
-- Filtros para la tabla `tbl_cupones`
--
ALTER TABLE `tbl_cupones`
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
  ADD CONSTRAINT `FK_CATEGORIA_PRODUCTO` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tbl_categorias` (`ID_CATEGORIAS`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
