-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2024 a las 16:26:15
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
-- Base de datos: `maravillas_del_mundo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `id_maravilla` int(10) UNSIGNED ZEROFILL NOT NULL,
  `actividad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `id_maravilla`, `actividad`) VALUES
(1, 0000000001, 'Parque de Diversiones Wonderland'),
(2, 0000000001, 'Gurudwara Bangla Sahib'),
(3, 0000000001, 'Tirumala Temple'),
(4, 0000000001, 'Fuerte y Palacio Amber'),
(5, 0000000002, 'Monasterio (Al Dayr)'),
(6, 0000000002, 'Domo del Tesoro (al-Khazna)'),
(7, 0000000002, 'Ruinas de Jerash'),
(8, 0000000002, 'Wadi Rum Protected Area'),
(9, 0000000003, 'Templo del Cielo (Parque Tiantan)'),
(10, 0000000003, 'Museo del Palacio'),
(11, 0000000003, 'Tiananmen Square (Tiananmen Guangchang)'),
(12, 0000000004, 'Excursión a Chichén Itzá, Cenote y Valladolid '),
(13, 0000000004, 'Chichen Itza Noche de Kukulkan'),
(14, 0000000004, 'Chichen Itza Tour'),
(15, 0000000005, 'Museo Larco'),
(16, 0000000005, 'Sacsayhuaman'),
(17, 0000000005, 'Los Jardines de Mandor'),
(18, 0000000006, 'Fontana de Trevi'),
(19, 0000000006, 'Panteón'),
(20, 0000000006, 'Museo Nazionale Romano'),
(21, 0000000006, 'Galleria Borghese'),
(22, 0000000007, 'Museu do Amanhã'),
(23, 0000000007, 'Escadaria Selarón'),
(24, 0000000007, 'Playa de Copacabana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maravilla`
--

CREATE TABLE `maravilla` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maravilla`
--

INSERT INTO `maravilla` (`id`, `nombre`, `descripcion`, `pais`, `ciudad`) VALUES
(1, 'Taj Mahal', 'El Taj Mahal es un monumento funerario construido entre 1632 y 1654 en la ciudad de Agra, estado de Uttar Pradesh, a orillas del río Yamuna, por el emperador musulmán Shah Jahan de la dinastía mogol.  construido por el emperador mogol Sha Jahan en honor a su esposa preferida, Mumtaz Mahal', 'India', 'Agra'),
(2, 'Petra', 'Petra es una ciudad arqueológica famosa en el desierto, al sudoeste de Jordania. Fundada alrededor del 300 a. C., era la capital del Reino Nabateo. Se puede acceder a través de un estrecho cañón llamado Al Siq y contiene tumbas y templos tallados en acantilados de arenisca de color rosa, motivo por el que se la conoce como la Ciudad Rosa', 'Jordania', 'Petra'),
(3, 'Muralla China', 'La Gran Muralla China es una antigua fortificación china, ​ construida y reconstruida entre el siglo V a. C. y el siglo XVI para proteger la frontera norte del Imperio chino durante las sucesivas dinastías imperiales de los ataques de los nómadas xiongnu de Mongolia y Manchuria', 'China', 'Pekìn'),
(4, 'Chichén Itzá', 'Chichén Itzá es un complejo de ruinas mayas famoso a nivel mundial en la península de Yucatán de México. Una enorme pirámide escalonada, conocida como El Castillo, domina los 6.5 km cuadrados de la antigua ciudad, que prosperó desde aproximadamente el año 600 d.C. hasta el siglo XIII. Los tallados gráficos en piedra sobreviven en estructuras como el campo de pelota, el Templo de los Guerreros y el Muro de las Calaveras. En las noches, espectáculos de luces y sonidos iluminan la sofisticada geometría de las construcciones.', 'México', 'Yucatan'),
(5, 'Machu Picchu', 'Machu Picchu es una ciudadela inca ubicada en las alturas de las montañas de los Andes en Perú, sobre el valle del río Urubamba. Se construyó en el siglo XV y luego fue abandonada, y es famosa por sus sofisticadas paredes de piedra seca que combinan enormes bloques sin el uso de un mortero, los edificios fascinantes que se relacionan con las alineaciones astronómicas y sus vistas panorámicas. El uso exacto que tuvo sigue siendo un misterio.', 'Perù', 'Cusco'),
(6, 'Coliseo', 'El Coliseo o Anfiteatro Flavio ​ es un anfiteatro de la época del Imperio romano, construido en el siglo I. Está ubicado en el este del Foro Romano, y fue el más grande de los que se construyeron en el Imperio romano', 'Italia', 'Roma'),
(7, 'Cristo Redentor', 'El Cristo Redentor o Cristo del Corcovado es una estatua art déco que representa a Jesús de Nazaret, con los brazos abiertos, mostrando a la ciudad de Río de Janeiro, Brasil. La estatua tiene una altura de treinta metros sobre un pedestal de ocho metros.', 'Brasil', 'Rio de Janeiro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maravilla`
--
ALTER TABLE `maravilla`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `maravilla`
--
ALTER TABLE `maravilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
