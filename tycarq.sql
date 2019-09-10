-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-09-2019 a las 12:49:14
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpup`
--
CREATE DATABASE IF NOT EXISTS `tpup` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `tpup`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

DROP TABLE IF EXISTS `deportes`;
CREATE TABLE IF NOT EXISTS `deportes` (
  `id_deporte` int(11) NOT NULL AUTO_INCREMENT, -- El autoincremental no complica el post?
  `desc_deporte` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`iddeporte`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`iddeporte`, `desc_deporte`) VALUES
(1, 'Futbol'),
(7, 'Rugby'),
(3, 'Basquet'),
(10, 'Handball'),
(9, 'Tenis'),
(11, 'Paddle');
COMMIT;

-- Estructura Canales

DROP TABLE IF EXISTS `canales`;
CREATE TABLE IF NOT EXISTS `canales` (
  `id_canal` int(3) NOT NULL AUTO_INCREMENT, -- El autoincremental no complica el post?
  `desc_canal` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nro_canal` int(3),
  PRIMARY KEY (`id_canal)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--Datos  `canales`

INSERT INTO `canales` (`id_canal`, `desc_canal`, `nro_canal`) VALUES
(1, 'ESPN', 105),
(2, 'ESPN 2', 106),
(3, 'Fox Sports', 201),
(4, 'TyC Sports', 266),
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
