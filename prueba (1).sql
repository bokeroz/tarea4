-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2014 at 04:53 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prueba`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogo`
--

CREATE TABLE IF NOT EXISTS `catalogo` (
`id` int(5) NOT NULL,
  `id_c` int(5) NOT NULL,
  `nombre_c` varchar(30) NOT NULL,
  `tipo` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo`
--

INSERT INTO `catalogo` (`id`, `id_c`, `nombre_c`, `tipo`) VALUES
(1, 1, 'carro', 0),
(2, 2, 'camioneta', 0),
(3, 3, 'carrito', 0),
(4, 4, 'carrito', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cte`
--

CREATE TABLE IF NOT EXISTS `cte` (
`id_c` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cte`
--

INSERT INTO `cte` (`id_c`, `nombre`, `puesto`) VALUES
(1, 'Eduardo', 'SPMR'),
(2, 'Daniela', 'ADMIN'),
(3, 'GIL', 'SPMR');

-- --------------------------------------------------------

--
-- Table structure for table `fuerzaventamen`
--

CREATE TABLE IF NOT EXISTS `fuerzaventamen` (
`id` int(8) NOT NULL,
  `nomina` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `ap_paterno` varchar(50) NOT NULL,
  `ap_materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `fecha_nacim` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuerzaventamen`
--

INSERT INTO `fuerzaventamen` (`id`, `nomina`, `division`, `ap_paterno`, `ap_materno`, `nombres`, `fecha_nacim`) VALUES
(1, 'ED154585', 'SPMR', 'Marquez', 'Cardona', 'Eduardo', '03-01-1990'),
(2, 'MAU457815', 'SOP', 'Contreras', 'Veraz', 'Mauricio', '15-08-1992'),
(3, 'MAU457815', 'SOP', 'Contreras', 'Veraz', 'Mauricio', '15-08-1992');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(8) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`) VALUES
(1, 'eduardo', 'eduardo@edu.com'),
(2, 'daniel', 'daniel@edu.com'),
(3, 'asd', 'qweq@th.com'),
(4, 'Gilberto', 'GIL@asd.com'),
(5, 'lasjd', 'asd@dsf'),
(6, 'adfa', 'qeqeqw@sdfsdf.com'),
(7, 'eduardo', 'eduardom@edui.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogo`
--
ALTER TABLE `catalogo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cte`
--
ALTER TABLE `cte`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `fuerzaventamen`
--
ALTER TABLE `fuerzaventamen`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogo`
--
ALTER TABLE `catalogo`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cte`
--
ALTER TABLE `cte`
MODIFY `id_c` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fuerzaventamen`
--
ALTER TABLE `fuerzaventamen`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
