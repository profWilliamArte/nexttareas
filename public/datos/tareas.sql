-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-08-2024 a las 21:04:15
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tareas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` int NOT NULL,
  `idusuario` int NOT NULL,
  `idtipodetarea` int NOT NULL,
  `tarea` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `descripcion` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `completado` varchar(2) NOT NULL DEFAULT 'No',
  `fechacreacion` date NOT NULL,
  `fecharealizacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `idusuario`, `idtipodetarea`, `tarea`, `descripcion`, `completado`, `fechacreacion`, `fecharealizacion`) VALUES
(1, 1, 1, 'Limpiar la cocina', 'Lavar los platos y limpiar las superficies.', 'Sí', '2024-08-26', '2024-08-13'),
(2, 1, 2, 'Preparar la cena', 'Cocinar una cena saludable para la familia.', 'No', '2024-08-26', NULL),
(3, 2, 3, 'Hacer la compra', 'Comprar víveres para la semana.', 'No', '2024-08-26', NULL),
(4, 1, 4, 'Sacar a pasear al perro', 'Pasear al perro por el parque.', 'No', '2024-08-26', NULL),
(5, 2, 5, 'Reparar el grifo', 'Arreglar el grifo que gotea en la cocina.', 'No', '2024-08-26', NULL),
(6, 1, 1, 'Limpiar el salón', 'Pasar la aspiradora y quitar el polvo.', 'No', '2024-08-26', NULL),
(7, 1, 6, 'Planificar una actividad familiar', 'Organizar una salida al cine.', 'No', '2024-08-26', NULL),
(8, 2, 7, 'Ayudar con los deberes', 'Ayudar a los niños con sus tareas escolares.', 'No', '2024-08-26', NULL),
(9, 1, 8, 'Hacer ejercicio', 'Realizar una rutina de ejercicios en casa.', 'No', '2024-08-26', NULL),
(10, 2, 9, 'Pagar las facturas', 'Realizar el pago de las facturas del mes.', 'No', '2024-08-26', NULL),
(11, 1, 10, 'Organizar el armario', 'Clasificar la ropa y donar lo que no se usa.', 'No', '2024-08-26', NULL),
(12, 1, 1, 'Limpiar el baño', 'Desinfectar el inodoro y limpiar el lavabo.', 'No', '2024-08-26', NULL),
(13, 2, 2, 'Preparar el desayuno', 'Hacer un desayuno nutritivo para la familia.', 'No', '2024-08-26', NULL),
(14, 1, 3, 'Comprar regalos de cumpleaños', 'Comprar regalos para el cumpleaños de un amigo.', 'No', '2024-08-26', NULL),
(16, 1, 5, 'Revisar el jardín', 'Cortar el césped y regar las plantas.', 'No', '2024-08-26', NULL),
(17, 2, 6, 'Planificar vacaciones', 'Investigar destinos y precios para las vacaciones.', 'No', '2024-08-26', NULL),
(18, 1, 7, 'Revisar el correo', 'Leer y responder correos electrónicos importantes.', 'No', '2024-08-26', NULL),
(19, 2, 8, 'Hacer la colada', 'Lavar y secar la ropa.', 'No', '2024-08-26', NULL),
(20, 1, 9, 'Limpiar la nevera', 'Eliminar alimentos caducados y limpiar estantes.', 'No', '2024-08-26', NULL),
(21, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', '2024-08-26'),
(23, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', '2024-07-30'),
(24, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', '2024-07-31'),
(25, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', '2024-07-29'),
(26, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(27, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(28, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(29, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(30, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(31, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(32, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'No', '2024-08-26', NULL),
(33, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'Sí', '2024-08-26', '2024-08-03'),
(35, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'Sí', '2024-08-26', '2024-07-30'),
(36, 2, 10, 'Organizar documentos II', 'Clasificar y archivar documentos importantes.', 'Sí', '2024-08-26', '2024-08-06'),
(39, 5, 12, 'Reparar el sube vidrio II', 'de la puerta del chofer solo funciona en la mañana es decir cuando esta caliente por el sol no funciona', 'Sí', '2024-08-27', '2024-08-01'),
(40, 1, 6, 'Organizar la parte de arriba III', 'crear un hambiente mas bonito para poder alquiler ', 'No', '2024-08-27', '2024-07-30'),
(41, 9, 9, 'Instalar Next', 'Ejejercicios de la instalacion de next con bootstrap', 'No', '2024-08-27', NULL),
(42, 10, 14, 'Ir al ME', 'Pedir los Papeles vigentes', 'No', '2024-08-27', '2024-08-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodetarea`
--

CREATE TABLE `tipodetarea` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tipodetarea`
--

INSERT INTO `tipodetarea` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Limpieza', 'Tareas relacionadas con la limpieza del hogar.'),
(2, 'Cocina', 'Tareas relacionadas con la preparación de comidas y organización de la cocina.'),
(3, 'Compras', 'Tareas relacionadas con la compra de víveres y otros productos.'),
(4, 'Cuidado de Mascotas', 'Tareas relacionadas con el cuidado y atención de mascotas.'),
(5, 'Mantenimiento del Hogar', 'Tareas relacionadas con reparaciones y mantenimiento del hogar.'),
(6, 'Organización', 'Tareas relacionadas con la organización de espacios y documentos.'),
(7, 'Actividades Familiares', 'Tareas relacionadas con la planificación de actividades familiares.'),
(8, 'Estudio', 'Tareas relacionadas con el estudio y la educación de los hijos.'),
(9, 'Ejercicio', 'Actividades físicas y de ejercicio para la familia.'),
(10, 'Administración II', 'Tareas relacionadas con la gestión de finanzas y papeleo. w'),
(12, 'Camioneta', 'Reparar golpe del parachoque'),
(14, 'Academia Permisos', 'Todo lo que se necesita para actualizar los permisos ME');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `fechacreacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `clave`, `fechacreacion`) VALUES
(1, 'William  Arteaga', 'wear', '123', '2024-08-26'),
(2, 'Maria', 'maag', '123', '2024-08-26'),
(3, 'Mariana Auxiliadora', 'mvag', '123', '2024-08-26'),
(5, 'Pedro perez', 'wear', '123', '2024-08-26'),
(9, 'Luis David', 'uisda', '123456', '2024-08-27'),
(10, 'Angela Rivas', 'angela', '12345678', '2024-08-27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idcategoria` (`idtipodetarea`);

--
-- Indices de la tabla `tipodetarea`
--
ALTER TABLE `tipodetarea`
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
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `tipodetarea`
--
ALTER TABLE `tipodetarea`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tareas_ibfk_2` FOREIGN KEY (`idtipodetarea`) REFERENCES `tipodetarea` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
