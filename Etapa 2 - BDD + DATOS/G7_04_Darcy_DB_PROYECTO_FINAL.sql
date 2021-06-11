-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2021 a las 21:02:22
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
(1, 1, 1),
(2, 2, 4),
(3, 4, 2),
(4, 3, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias`
--

CREATE TABLE `tbl_categorias` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `CATEGORIA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`ID_CATEGORIA`, `CATEGORIA`) VALUES
(1, 'Infantil'),
(2, 'Adulto'),
(3, 'Adulto mayor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `CORREO_ELECTRONICO` varchar(100) NOT NULL,
  `CLAVE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`ID_CLIENTE`, `NOMBRE`, `CORREO_ELECTRONICO`, `CLAVE`) VALUES
(1, 'Darcy Moreno', 'Darcy@gmail.com', '1256'),
(2, 'Yoongi Min', 'Yoongi@gmail.com', '4598'),
(3, 'Jin Kim', 'Jin@gamil.com', '7562'),
(4, 'Jennie Park', 'Jennie@gmail.com', '45698'),
(5, 'Rose Lee', 'Rose@gmail.com', '14785'),
(6, 'Darcy', 'alondra@gmail.com', ' 123'),
(7, 'LEE JIN', 'Jiin@gmail.com', '78592');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cupon`
--

CREATE TABLE `tbl_cupon` (
  `ID_CUPON` int(11) NOT NULL,
  `CODIGO` varchar(50) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cupon`
--

INSERT INTO `tbl_cupon` (`ID_CUPON`, `CODIGO`, `ID_CLIENTE`) VALUES
(1, '68185AP', 1),
(2, '5897984BG', 3),
(3, '789416VF', 4),
(4, '569781NJ', 5),
(5, '65454', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido`
--

CREATE TABLE `tbl_pedido` (
  `ID_PEDIDO` int(11) NOT NULL,
  `TELEFONO` varchar(60) NOT NULL,
  `FORMA_DE_PAGO` varchar(100) NOT NULL,
  `TOTAL_A_PAGAR` int(50) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pedido`
--

INSERT INTO `tbl_pedido` (`ID_PEDIDO`, `TELEFONO`, `FORMA_DE_PAGO`, `TOTAL_A_PAGAR`, `DIRECCION`, `ID_CLIENTE`, `ID_PRODUCTO`) VALUES
(1, '+502 98564879', 'Tarjeta de crédito', 1000, 'Barrio la joya, Comayagua, Honduras ', 1, 1),
(2, '+506 98563245', 'Tarjeta de debito ', 2500, 'Barrio Brisas de Altamira, Comayagua, Honduras ', 3, 2),
(3, '+501 98562458', 'Efectivo ', 600, 'Colonia Casa Blanca, Comayagua, Honduras', 2, 3),
(4, '+504 98325674', 'Tarjeta de crédito ', 700, 'Barrio Arriba, Comayagua, Honduras', 3, 4),
(5, '+507 56237845', 'Tarjeta de crédito ', 800, 'Barrio Abajo, Comayagua, Honduras', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `PRODUCTO` varchar(100) NOT NULL,
  `TALLA` varchar(50) NOT NULL,
  `PRECIO` int(50) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`ID_PRODUCTO`, `PRODUCTO`, `TALLA`, `PRECIO`, `ID_CATEGORIA`) VALUES
(1, 'Pantalón acampanado ', 'S', 500, 2),
(2, 'Vestido estampado ', 'xs', 450, 2),
(3, 'Mameluco con flores', '80', 350, 1),
(4, 'Pijama', 'M', 250, 3),
(5, 'Calzoneta ', 'xs', 300, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_carrito`
--
ALTER TABLE `tbl_carrito`
  ADD PRIMARY KEY (`ID_CARRITO`),
  ADD KEY `FK_CARRITO_CLIENTE` (`ID_CLIENTE`),
  ADD KEY `FK_PRODUCTO_CARRITO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
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
-- AUTO_INCREMENT de la tabla `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  ADD CONSTRAINT `FK_CARRITO_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `FK_CATEGORIA_PRODUCTO` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tbl_categorias` (`ID_CATEGORIA`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
