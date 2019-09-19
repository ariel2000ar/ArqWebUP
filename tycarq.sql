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
  PRIMARY KEY (`id_deporte`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id_deporte`, `desc_deporte`) VALUES
(1, 'Futbol'),
(7, 'Rugby'),
(3, 'Basquet'),
(10, 'Handball'),
(9, 'Tenis'),
(11, 'Paddle');

-- Estructura Canales

DROP TABLE IF EXISTS `canales`;
CREATE TABLE IF NOT EXISTS `canales` (
  `id_canal` int(3) NOT NULL AUTO_INCREMENT, -- El autoincremental no complica el post?
  `desc_canal` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nro_canal` int(3),
  PRIMARY KEY (`id_canal`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Datos para canales

INSERT INTO `canales` (`id_canal`, `desc_canal`, `nro_canal`) VALUES
(1, 'ESPN', 105),
(2, 'ESPN 2', 106),
(3, 'Fox Sports', 201),
(4, 'TyC Sports', 266);

-- Estructura Lugares

DROP TABLE IF EXISTS `lugares`;
CREATE TABLE IF NOT EXISTS `lugares` (
  `id_lugar` int(3) NOT NULL AUTO_INCREMENT, -- El autoincremental no complica el post?
  `desc_lugar` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `provincia_lugar` varchar(50) COLLATE latin1_spanish_ci,
  `pais_lugar` varchar(50) COLLATE latin1_spanish_ci,
  `cubierto_lugar` varchar(1) COLLATE latin1_spanish_ci,
  PRIMARY KEY (`id_lugar`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Datos para lugares

INSERT INTO `lugares` (`id_lugar`, `desc_lugar`, `provincia_lugar`, `pais_lugar`, `cubierto_lugar`) VALUES
(1, 'BOMBONERA', 'BUENOS AIRES', 'ARGENTINA', 'N'),
(2, 'MORUMBI', 'SAN PABLO', 'BRASIL', 'N'),
(3, 'ARTHUR ASHE', 'NEW YORK', 'ESTADOS UNIDOS', 'S'),
(4, 'AT&T CENTER', 'TEXAS', 'ESTADOS UNIDOS', 'S');

-- Estructura Eventos

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id_evento` int(5) NOT NULL AUTO_INCREMENT, 
  `desc_evento` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_deporte` int(11),
  `id_canal` int(3),
  `id_lugar` int(3),
  `fecha_evento` date,
  `horadesde` int(2),
  `horahasta` int(2),
  PRIMARY KEY (`id_evento`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Datos para eventos

INSERT INTO `eventos` (`id_evento`, `desc_evento`, `id_deporte`, `id_canal`, `id_lugar`, `fecha_evento`, `horadesde`, `horahasta`) VALUES
(1, 'FINAL US OPEN', 9, 1, 3, '2019-09-10', 12, 16),
(2, 'SEMI FINAL LIBERTADORES', 1, 3, 1, '2019-10-26', 21, 23),
(3, 'FINAL PLAY OFF', 3, 4, 4, '2019-09-30', 18, 20),
(4, 'FINAL COPA AMERICA 2019', 1, 2, 2, '2019-06-29', 16, 18),

COMMIT;
