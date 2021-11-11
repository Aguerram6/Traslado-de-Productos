-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost: 3307
-- Tiempo de generación: 11-11-2021 a las 19:11:03
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotelsancarlos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `pkId` varchar(15) NOT NULL,
  `fkIdModulo` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `rutaChm` varchar(180) NOT NULL,
  `rutaHtml` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES
('0001', '1', 'Login Seguridad HSC', 1, '1', '0'),
('0002', '1', 'Registrar Usuario', 1, '2', '0'),
('0003', '1', 'Mantenimiento Aplicación', 1, '3', '0'),
('0004', '1', 'Mantenimiento Perfil', 1, '4', '0'),
('0005', '1', 'Asignación de Aplicación a Perfiles', 1, '5', '0'),
('0006', '1', 'Asignación de Aplicación a Usuarios', 1, '6', '0'),
('0007', '1', 'Asignación de Perfiles a Usuarios', 1, '7', '0'),
('0008', '1', 'Asignación Permisos', 1, '8', '0'),
('0009', '1', 'Recuperar Contraseña', 1, '9', '0'),
('0010', '1', 'Cambiar Contraseña', 1, '10', '0'),
('0011', '1', 'Consulta Bitácora', 1, '11', '0'),
('0012', '1', 'Mantenimiento Módulo', 1, '12', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacionperfil`
--

CREATE TABLE `aplicacionperfil` (
  `fkIdPerfil` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL,
  `permisoEscritura` int(11) DEFAULT NULL,
  `permisoLectura` int(11) DEFAULT NULL,
  `permisoModificar` int(11) DEFAULT NULL,
  `permisoEliminar` int(11) DEFAULT NULL,
  `permisoImprimir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacorausuario`
--

CREATE TABLE `bitacorausuario` (
  `pkId` int(11) NOT NULL,
  `fkIdUsuario` varchar(15) NOT NULL,
  `host` varchar(45) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `fkIdModulo` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL,
  `accion` varchar(200) NOT NULL,
  `conexionFecha` date DEFAULT NULL,
  `conexionHora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacorausuario`
--

INSERT INTO `bitacorausuario` (`pkId`, `fkIdUsuario`, `host`, `ip`, `fkIdModulo`, `fkIdAplicacion`, `accion`, `conexionFecha`, `conexionHora`) VALUES
(1, '1', 'LAPTOP-U4UAEC4I', '192.168.1.8', '1', '0001', 'Inicio de sesión exitoso', '2021-11-09', '20:21:52'),
(2, '1', 'LAPTOP-U4UAEC4I', '192.168.1.8', '1', '0001', 'Inicio de sesión exitoso', '2021-11-09', '20:31:32'),
(3, '1', 'LAPTOP-U4UAEC4I', '192.168.1.8', '1', '0001', 'Inicio de sesión exitoso', '2021-11-09', '21:04:54'),
(4, '1', 'LAPTOP-U4UAEC4I', '192.168.1.8', '1', '0001', 'Inicio de sesión exitoso', '2021-11-09', '21:06:08'),
(5, '1', 'LAPTOP-U4UAEC4I', '192.168.1.8', '1', '0001', 'Inicio de sesión exitoso', '2021-11-09', '21:18:40'),
(6, '1', 'LAPTOP-U4UAEC4I', '192.168.1.8', '1', '0001', 'Inicio de sesión exitoso', '2021-11-09', '21:24:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `pkid` varchar(15) NOT NULL,
  `fkidTipobodega` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(65) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`pkid`, `fkidTipobodega`, `nombre`, `direccion`, `estado`) VALUES
('1', '1', 'Central', 'Camino Real zona 10', 'A'),
('2', '1', 'Bodega Compartimiento', 'Zona 4 de mixco 9-07', 'A'),
('3', '1', 'Bodega Sur', 'zona 4 16 calle 06-21', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `idTipo` varchar(15) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `nit` varchar(15) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `idCuenta` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `idTipoCuenta` varchar(15) DEFAULT NULL,
  `cargo` float DEFAULT 0,
  `abono` float DEFAULT 0,
  `saldoAcumulado` float DEFAULT 0,
  `estado` varchar(1) DEFAULT NULL,
  `idCuentaPadre` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `pkIdEmpleado` varchar(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fechaDeNacimiento` varchar(45) NOT NULL,
  `sueldo` float NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `contratado` varchar(45) NOT NULL,
  `añosDeExperiencia` int(11) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fechaContratacion` date NOT NULL,
  `finDeContrato` date NOT NULL,
  `fkIdPuesto` varchar(15) NOT NULL,
  `fkIdEmpresa` varchar(15) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`pkIdEmpleado`, `nombre`, `apellido`, `fechaDeNacimiento`, `sueldo`, `correo`, `direccion`, `contratado`, `añosDeExperiencia`, `telefono`, `fechaContratacion`, `finDeContrato`, `fkIdPuesto`, `fkIdEmpresa`, `estado`) VALUES
('1', 'María', 'Hernandez', '1999-09-25', 4000, 'cmaria@gmail.com', 'zona 11', '4', 5, '789654123', '2016-10-25', '2021-12-25', '1', '1', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` varchar(15) NOT NULL,
  `nit` varchar(13) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` int(10) NOT NULL,
  `estatus` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `nit`, `nombre`, `direccion`, `telefono`, `estatus`) VALUES
('1', '65464-k', 'hotel san carlos', 'zona 6 de mixco', 65467654, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturadetalle`
--

CREATE TABLE `facturadetalle` (
  `idFacturaDetalle` varchar(15) NOT NULL,
  `idFacturaEncabezado` varchar(15) DEFAULT NULL,
  `idProducto` varchar(15) DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `concepto` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturaencabezado`
--

CREATE TABLE `facturaencabezado` (
  `idFacturaEncabezado` varchar(15) NOT NULL,
  `idProveedor` varchar(15) NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `total` float NOT NULL,
  `idOrdenCompra` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formapago`
--

CREATE TABLE `formapago` (
  `Pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto`
--

CREATE TABLE `impuesto` (
  `idImpuesto` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `porcentaje` float DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Pkid` varchar(15) NOT NULL,
  `fkidsucursal` varchar(15) NOT NULL,
  `Fktipoinventario` varchar(15) NOT NULL,
  `fkidbodega` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`Pkid`, `fkidsucursal`, `Fktipoinventario`, `fkidbodega`) VALUES
('1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `idLinea` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `idMarca` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `linea`
--

INSERT INTO `linea` (`idLinea`, `nombre`, `descripcion`, `idMarca`) VALUES
('1', 'ConfortO', 'lineal para personas con problemas de espalda', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idMarca` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idMarca`, `nombre`, `descripcion`) VALUES
('1', 'Colchonería ', 'marca que esta diseñada para problemas ortopédicos ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `pkId` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`pkId`, `nombre`, `descripcion`, `estado`) VALUES
('1', 'Seguridad', 'Módulo de Seguridad', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `idMovimiento` varchar(15) NOT NULL,
  `idOrdenCompra` varchar(15) NOT NULL,
  `total` float DEFAULT NULL,
  `abonado` float DEFAULT NULL,
  `stsMov` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencompra`
--

CREATE TABLE `ordencompra` (
  `idOrdenCompra` varchar(15) NOT NULL,
  `idProveedor` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `pkId` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`pkId`, `nombre`, `estado`) VALUES
('1', 'Administrador', '1'),
('2', 'Vendedor', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizadetalle`
--

CREATE TABLE `polizadetalle` (
  `idPolizaEncabezado` varchar(15) NOT NULL,
  `fechaPoliza` date NOT NULL,
  `idCuenta` varchar(15) NOT NULL,
  `saldo` float DEFAULT NULL,
  `idTipoOperacion` varchar(15) DEFAULT NULL,
  `concepto` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizaencabezado`
--

CREATE TABLE `polizaencabezado` (
  `idPolizaEncabezado` varchar(15) NOT NULL,
  `fechaPoliza` date NOT NULL,
  `idTipoPoliza` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `pkid` varchar(15) NOT NULL,
  `fkinventario` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Fkidlinea` varchar(15) NOT NULL,
  `Stock` int(11) NOT NULL,
  `StockMaximo` int(11) NOT NULL,
  `StockMinimo` int(11) NOT NULL,
  `Costo` float NOT NULL,
  `Precio` float NOT NULL,
  `Estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`pkid`, `fkinventario`, `Nombre`, `Fkidlinea`, `Stock`, `StockMaximo`, `StockMinimo`, `Costo`, `Precio`, `Estatus`) VALUES
('1', '1', 'Almohadas C', '1', 50, 10, 50, 200, 250, 'A'),
('2', '1', 'Colchón Super Confort', '1', 30, 10, 30, 1000, 1200, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `idEmpresa` varchar(15) DEFAULT NULL,
  `stsproveedor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `pkIdPuesto` varchar(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `añosDeExperiencia` int(11) DEFAULT NULL,
  `fkIdPuestoSuperior` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`pkIdPuesto`, `nombre`, `añosDeExperiencia`, `fkIdPuestoSuperior`) VALUES
('1', 'Gerente', 10, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_consultas`
--

CREATE TABLE `registro_consultas` (
  `id_registro` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `consulta` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `idReporte` varchar(15) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `ruta` varchar(180) NOT NULL,
  `idAplicacion` varchar(15) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` varchar(15) NOT NULL,
  `idEmpresa` varchar(15) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` int(10) NOT NULL,
  `codigoPostal` int(11) NOT NULL,
  `estatus` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idSucursal`, `idEmpresa`, `nombre`, `direccion`, `telefono`, `codigoPostal`, `estatus`) VALUES
('1', '1', 'Cede Olimpic', '16 calle zona 7', 55455392, 562, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipobodega`
--

CREATE TABLE `tipobodega` (
  `pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipobodega`
--

INSERT INTO `tipobodega` (`pkid`, `nombre`, `estado`) VALUES
('1', 'HotelBodega', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `idTipo` varchar(15) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `estatus` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocuenta`
--

CREATE TABLE `tipocuenta` (
  `idTipoCuenta` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinventario`
--

CREATE TABLE `tipoinventario` (
  `Pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoinventario`
--

INSERT INTO `tipoinventario` (`Pkid`, `nombre`, `estatus`) VALUES
('1', 'Mensaul', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipooperacion`
--

CREATE TABLE `tipooperacion` (
  `idTipoOperacion` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopoliza`
--

CREATE TABLE `tipopoliza` (
  `idTipoPoliza` varchar(15) NOT NULL,
  `descripcion` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trasladoproducto`
--

CREATE TABLE `trasladoproducto` (
  `pkId` varchar(15) NOT NULL,
  `fkidbodegaO` varchar(15) NOT NULL,
  `fkidbodegaD` varchar(15) NOT NULL,
  `fecha_salid` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fkidproducto` varchar(15) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trasladoproducto`
--

INSERT INTO `trasladoproducto` (`pkId`, `fkidbodegaO`, `fkidbodegaD`, `fecha_salid`, `fecha_ingreso`, `fkidproducto`, `cantidad`) VALUES
('1', '1', '2', '2021-11-02', '2021-11-06', '1', 4),
('2', '2', '2', '2021-10-30', '2021-11-05', '1', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `pkId` varchar(15) NOT NULL,
  `fkIdEmpleado` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `intento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`pkId`, `fkIdEmpleado`, `nombre`, `contraseña`, `estado`, `intento`) VALUES
('1', '1', 'admin', 'LKAekHU9EtweB49HAaTRfg==', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioaplicacion`
--

CREATE TABLE `usuarioaplicacion` (
  `fkIdUsuario` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL,
  `permisoEscritura` int(11) DEFAULT NULL,
  `permisoLectura` int(11) DEFAULT NULL,
  `permisoModificar` int(11) DEFAULT NULL,
  `permisoEliminar` int(11) DEFAULT NULL,
  `permisoImprimir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioaplicacionasignados`
--

CREATE TABLE `usuarioaplicacionasignados` (
  `fkIdUsuario` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioperfil`
--

CREATE TABLE `usuarioperfil` (
  `fkIdUsuario` varchar(15) NOT NULL,
  `fkIdPerfil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwpermisosperfil`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwpermisosperfil` (
`permisoEscritura` int(11)
,`permisoLectura` int(11)
,`permisoModificar` int(11)
,`permisoEliminar` int(11)
,`permisoImprimir` int(11)
,`pkIdPerfil` varchar(15)
,`Perfil` varchar(45)
,`pkIdAplicacion` varchar(15)
,`Aplicacion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwpermisosusuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwpermisosusuario` (
`permisoEscritura` int(11)
,`permisoLectura` int(11)
,`permisoModificar` int(11)
,`permisoEliminar` int(11)
,`permisoImprimir` int(11)
,`pkIdUsuario` varchar(15)
,`Usuario` varchar(30)
,`pkIdAplicacion` varchar(15)
,`Aplicacion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vwpermisosperfil`
--
DROP TABLE IF EXISTS `vwpermisosperfil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwpermisosperfil`  AS SELECT `a`.`permisoEscritura` AS `permisoEscritura`, `a`.`permisoLectura` AS `permisoLectura`, `a`.`permisoModificar` AS `permisoModificar`, `a`.`permisoEliminar` AS `permisoEliminar`, `a`.`permisoImprimir` AS `permisoImprimir`, `b`.`pkId` AS `pkIdPerfil`, `b`.`nombre` AS `Perfil`, `c`.`pkId` AS `pkIdAplicacion`, `c`.`nombre` AS `Aplicacion` FROM ((`aplicacionperfil` `a` join `perfil` `b` on(`b`.`pkId` = `a`.`fkIdPerfil`)) join `aplicacion` `c` on(`c`.`pkId` = `a`.`fkIdAplicacion`)) ORDER BY `a`.`fkIdPerfil` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwpermisosusuario`
--
DROP TABLE IF EXISTS `vwpermisosusuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwpermisosusuario`  AS SELECT `a`.`permisoEscritura` AS `permisoEscritura`, `a`.`permisoLectura` AS `permisoLectura`, `a`.`permisoModificar` AS `permisoModificar`, `a`.`permisoEliminar` AS `permisoEliminar`, `a`.`permisoImprimir` AS `permisoImprimir`, `b`.`pkId` AS `pkIdUsuario`, `b`.`nombre` AS `Usuario`, `c`.`pkId` AS `pkIdAplicacion`, `c`.`nombre` AS `Aplicacion` FROM ((`usuarioaplicacion` `a` join `usuario` `b` on(`b`.`pkId` = `a`.`fkIdUsuario`)) join `aplicacion` `c` on(`c`.`pkId` = `a`.`fkIdAplicacion`)) ORDER BY `a`.`fkIdUsuario` ASC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkIdModulo` (`fkIdModulo`);

--
-- Indices de la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`),
  ADD KEY `fkIdPerfil` (`fkIdPerfil`);

--
-- Indices de la tabla `bitacorausuario`
--
ALTER TABLE `bitacorausuario`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`),
  ADD KEY `fkIdModulo` (`fkIdModulo`),
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`pkid`),
  ADD KEY `fkidTipobodega` (`fkidTipobodega`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Pkid`),
  ADD KEY `idTipo` (`idTipo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`idCuenta`),
  ADD KEY `idTipoCuenta` (`idTipoCuenta`),
  ADD KEY `idCuentaPadre` (`idCuentaPadre`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`pkIdEmpleado`),
  ADD KEY `fkIdPuesto` (`fkIdPuesto`),
  ADD KEY `fkIdEmpresa` (`fkIdEmpresa`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `facturadetalle`
--
ALTER TABLE `facturadetalle`
  ADD PRIMARY KEY (`idFacturaDetalle`),
  ADD KEY `idFacturaEncabezado` (`idFacturaEncabezado`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `facturaencabezado`
--
ALTER TABLE `facturaencabezado`
  ADD PRIMARY KEY (`idFacturaEncabezado`),
  ADD KEY `idProveedor` (`idProveedor`),
  ADD KEY `idOrdenCompra` (`idOrdenCompra`);

--
-- Indices de la tabla `formapago`
--
ALTER TABLE `formapago`
  ADD PRIMARY KEY (`Pkid`);

--
-- Indices de la tabla `impuesto`
--
ALTER TABLE `impuesto`
  ADD PRIMARY KEY (`idImpuesto`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Pkid`),
  ADD KEY `Fktipoinventario` (`Fktipoinventario`),
  ADD KEY `fkidsucursal` (`fkidsucursal`),
  ADD KEY `fkidbodega` (`fkidbodega`);

--
-- Indices de la tabla `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`idLinea`),
  ADD KEY `idMarca` (`idMarca`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`pkId`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`idMovimiento`),
  ADD KEY `idOrdenCompra` (`idOrdenCompra`);

--
-- Indices de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD PRIMARY KEY (`idOrdenCompra`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pkId`);

--
-- Indices de la tabla `polizadetalle`
--
ALTER TABLE `polizadetalle`
  ADD PRIMARY KEY (`idPolizaEncabezado`,`fechaPoliza`,`idCuenta`),
  ADD KEY `idCuenta` (`idCuenta`),
  ADD KEY `idTipoOperacion` (`idTipoOperacion`);

--
-- Indices de la tabla `polizaencabezado`
--
ALTER TABLE `polizaencabezado`
  ADD PRIMARY KEY (`idPolizaEncabezado`,`fechaPoliza`),
  ADD KEY `idTipoPoliza` (`idTipoPoliza`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pkid`),
  ADD KEY `Fkidlinea` (`Fkidlinea`),
  ADD KEY `fkinventario` (`fkinventario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`pkIdPuesto`);

--
-- Indices de la tabla `registro_consultas`
--
ALTER TABLE `registro_consultas`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`idReporte`),
  ADD KEY `idAplicacion` (`idAplicacion`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `tipobodega`
--
ALTER TABLE `tipobodega`
  ADD PRIMARY KEY (`pkid`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `tipocuenta`
--
ALTER TABLE `tipocuenta`
  ADD PRIMARY KEY (`idTipoCuenta`);

--
-- Indices de la tabla `tipoinventario`
--
ALTER TABLE `tipoinventario`
  ADD PRIMARY KEY (`Pkid`);

--
-- Indices de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
  ADD PRIMARY KEY (`idTipoOperacion`);

--
-- Indices de la tabla `tipopoliza`
--
ALTER TABLE `tipopoliza`
  ADD PRIMARY KEY (`idTipoPoliza`);

--
-- Indices de la tabla `trasladoproducto`
--
ALTER TABLE `trasladoproducto`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkidbodegaO` (`fkidbodegaO`),
  ADD KEY `fkidbodegaD` (`fkidbodegaD`),
  ADD KEY `fkidproducto` (`fkidproducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkIdEmpleado` (`fkIdEmpleado`);

--
-- Indices de la tabla `usuarioaplicacion`
--
ALTER TABLE `usuarioaplicacion`
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`);

--
-- Indices de la tabla `usuarioaplicacionasignados`
--
ALTER TABLE `usuarioaplicacionasignados`
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`);

--
-- Indices de la tabla `usuarioperfil`
--
ALTER TABLE `usuarioperfil`
  ADD KEY `fkIdPerfil` (`fkIdPerfil`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacorausuario`
--
ALTER TABLE `bitacorausuario`
  MODIFY `pkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registro_consultas`
--
ALTER TABLE `registro_consultas`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD CONSTRAINT `aplicacion_ibfk_1` FOREIGN KEY (`fkIdModulo`) REFERENCES `modulo` (`pkId`);

--
-- Filtros para la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD CONSTRAINT `aplicacionperfil_ibfk_1` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`),
  ADD CONSTRAINT `aplicacionperfil_ibfk_2` FOREIGN KEY (`fkIdPerfil`) REFERENCES `perfil` (`pkId`);

--
-- Filtros para la tabla `bitacorausuario`
--
ALTER TABLE `bitacorausuario`
  ADD CONSTRAINT `bitacorausuario_ibfk_1` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`),
  ADD CONSTRAINT `bitacorausuario_ibfk_2` FOREIGN KEY (`fkIdModulo`) REFERENCES `modulo` (`pkId`),
  ADD CONSTRAINT `bitacorausuario_ibfk_3` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`);

--
-- Filtros para la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD CONSTRAINT `bodega_ibfk_1` FOREIGN KEY (`fkidTipobodega`) REFERENCES `tipobodega` (`pkid`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipocliente` (`idTipo`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`idTipoCuenta`) REFERENCES `tipocuenta` (`idTipoCuenta`),
  ADD CONSTRAINT `cuenta_ibfk_2` FOREIGN KEY (`idCuentaPadre`) REFERENCES `cuenta` (`idCuenta`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`fkIdPuesto`) REFERENCES `puesto` (`pkIdPuesto`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`fkIdEmpresa`) REFERENCES `empresa` (`idEmpresa`);

--
-- Filtros para la tabla `facturadetalle`
--
ALTER TABLE `facturadetalle`
  ADD CONSTRAINT `facturadetalle_ibfk_1` FOREIGN KEY (`idFacturaEncabezado`) REFERENCES `facturaencabezado` (`idFacturaEncabezado`),
  ADD CONSTRAINT `facturadetalle_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`pkid`);

--
-- Filtros para la tabla `facturaencabezado`
--
ALTER TABLE `facturaencabezado`
  ADD CONSTRAINT `facturaencabezado_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`),
  ADD CONSTRAINT `facturaencabezado_ibfk_2` FOREIGN KEY (`idOrdenCompra`) REFERENCES `ordencompra` (`idOrdenCompra`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`Fktipoinventario`) REFERENCES `tipoinventario` (`Pkid`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`fkidsucursal`) REFERENCES `sucursal` (`idSucursal`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`fkidbodega`) REFERENCES `bodega` (`pkid`);

--
-- Filtros para la tabla `linea`
--
ALTER TABLE `linea`
  ADD CONSTRAINT `linea_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`);

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `movimiento_ibfk_1` FOREIGN KEY (`idOrdenCompra`) REFERENCES `ordencompra` (`idOrdenCompra`);

--
-- Filtros para la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD CONSTRAINT `ordencompra_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);

--
-- Filtros para la tabla `polizadetalle`
--
ALTER TABLE `polizadetalle`
  ADD CONSTRAINT `polizadetalle_ibfk_1` FOREIGN KEY (`idPolizaEncabezado`) REFERENCES `polizaencabezado` (`idPolizaEncabezado`),
  ADD CONSTRAINT `polizadetalle_ibfk_2` FOREIGN KEY (`idCuenta`) REFERENCES `cuenta` (`idCuenta`),
  ADD CONSTRAINT `polizadetalle_ibfk_3` FOREIGN KEY (`idTipoOperacion`) REFERENCES `tipooperacion` (`idTipoOperacion`);

--
-- Filtros para la tabla `polizaencabezado`
--
ALTER TABLE `polizaencabezado`
  ADD CONSTRAINT `polizaencabezado_ibfk_1` FOREIGN KEY (`idTipoPoliza`) REFERENCES `tipopoliza` (`idTipoPoliza`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Fkidlinea`) REFERENCES `linea` (`idLinea`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`fkinventario`) REFERENCES `inventario` (`Pkid`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`);

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`idAplicacion`) REFERENCES `aplicacion` (`pkId`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`);

--
-- Filtros para la tabla `trasladoproducto`
--
ALTER TABLE `trasladoproducto`
  ADD CONSTRAINT `trasladoproducto_ibfk_1` FOREIGN KEY (`fkidbodegaO`) REFERENCES `bodega` (`pkid`),
  ADD CONSTRAINT `trasladoproducto_ibfk_2` FOREIGN KEY (`fkidbodegaD`) REFERENCES `bodega` (`pkid`),
  ADD CONSTRAINT `trasladoproducto_ibfk_3` FOREIGN KEY (`fkidproducto`) REFERENCES `producto` (`pkid`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fkIdEmpleado`) REFERENCES `empleado` (`pkIdEmpleado`);

--
-- Filtros para la tabla `usuarioaplicacion`
--
ALTER TABLE `usuarioaplicacion`
  ADD CONSTRAINT `usuarioaplicacion_ibfk_1` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`),
  ADD CONSTRAINT `usuarioaplicacion_ibfk_2` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`);

--
-- Filtros para la tabla `usuarioaplicacionasignados`
--
ALTER TABLE `usuarioaplicacionasignados`
  ADD CONSTRAINT `usuarioaplicacionasignados_ibfk_1` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`),
  ADD CONSTRAINT `usuarioaplicacionasignados_ibfk_2` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`);

--
-- Filtros para la tabla `usuarioperfil`
--
ALTER TABLE `usuarioperfil`
  ADD CONSTRAINT `usuarioperfil_ibfk_1` FOREIGN KEY (`fkIdPerfil`) REFERENCES `perfil` (`pkId`),
  ADD CONSTRAINT `usuarioperfil_ibfk_2` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
