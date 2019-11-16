-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2019 a las 21:33:20
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paginaecogodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrios`
--

CREATE TABLE `barrios` (
  `bar_id` smallint(6) NOT NULL,
  `bar_nombre` varchar(20) NOT NULL,
  `com_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barrios`
--

INSERT INTO `barrios` (`bar_id`, `bar_nombre`, `com_id`) VALUES
(1, 'Agronomia', 15),
(2, 'Almagro', 5),
(3, 'Balvanera', 3),
(4, 'Barracas', 4),
(5, 'Belgrano', 13),
(6, 'Boedo', 5),
(7, 'Caballito', 6),
(8, 'Chacarita', 15),
(9, 'Coghlan', 12),
(10, 'Colegiales', 13),
(11, 'Constitución', 1),
(12, 'Flores', 7),
(13, 'Floresta', 10),
(14, 'La Boca', 4),
(15, 'La Paternal', 15),
(16, 'Liniers', 9),
(17, 'Mataderos', 9),
(18, 'Monte Castro', 10),
(19, 'Montserrrat', 1),
(20, 'Nueva Pompeya', 4),
(21, 'Nuñez', 13),
(22, 'Palermo', 14),
(23, 'Parque Avellaneda', 9),
(24, 'Parque Chacabuco', 7),
(25, 'Parque Chas', 15),
(26, 'Parque Patricios', 4),
(27, 'Puerto Madero', 1),
(28, 'Recoleta', 2),
(29, 'Retiro', 1),
(30, 'Saavedra', 12),
(31, 'San Cristobal', 3),
(32, 'San Nicolás ', 1),
(33, 'San Telmo', 1),
(34, 'Vélez Sársfield', 10),
(35, 'Versalles', 10),
(36, 'Villa Crespo', 15),
(37, 'Villa del Parque', 11),
(38, 'Villa Devoto', 11),
(39, 'Villa General Mitre', 11),
(40, 'Villa Lugano', 8),
(41, 'Villa Luro', 10),
(42, 'Villa Ortúzar', 15),
(43, 'Villa Pueyrredón', 12),
(44, 'Villa Real', 10),
(45, 'Villa Riachuelo ', 8),
(46, 'Villa Santa Rita', 11),
(47, 'Villa Soldati', 8),
(48, 'Villa Urquiza', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_puntos_verdes`
--

CREATE TABLE `categoria_puntos_verdes` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `com_id` tinyint(4) NOT NULL,
  `com_nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`com_id`, `com_nombre`) VALUES
(1, 'Comuna 1'),
(2, 'Comuna 2'),
(3, 'Comuna 3'),
(4, 'Comuna 4'),
(5, 'Comuna 5'),
(6, 'Comuna 6'),
(7, 'Comuna 7'),
(8, 'Comuna 8'),
(9, 'Comuna 9'),
(10, 'Comuna 10'),
(11, 'Comuna 11'),
(12, 'Comuna 12'),
(13, 'Comuna 13'),
(14, 'Comuna 14'),
(15, 'Comuna 15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejos`
--

CREATE TABLE `consejos` (
  `consejo_id` tinyint(11) NOT NULL,
  `consejo_nombre` varchar(15) NOT NULL,
  `consejo_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desafios-completados`
--

CREATE TABLE `desafios-completados` (
  `des_id` int(11) NOT NULL,
  `des_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `listado de barrios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `listado de barrios` (
`com_nombre` varchar(10)
,`bar_nombre` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_verdes`
--

CREATE TABLE `puntos_verdes` (
  `pv_id` smallint(11) NOT NULL,
  `pv_nombre` varchar(50) NOT NULL,
  `pv_direccion` varchar(50) NOT NULL,
  `pv_latitud` smallint(6) NOT NULL,
  `pv_longitud` smallint(6) NOT NULL,
  `pv_movil` tinyint(1) NOT NULL,
  `bar_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puntos_verdes`
--

INSERT INTO `puntos_verdes` (`pv_id`, `pv_nombre`, `pv_direccion`, `pv_latitud`, `pv_longitud`, `pv_movil`, `bar_id`) VALUES
(1, 'Plaza Libertad', 'Paraguay y Libertad', 0, 0, 0, 29),
(2, 'Plaza Rosario Vera Peñaloza', 'Av. San Juan y Chacabuco ', 0, 0, 0, 33),
(3, 'Plaza Constitución', 'Lima y Av. Juan de Garay', 0, 0, 0, 11),
(4, 'Plaza Monseñor De Andrea', 'Anchorena y Av. Córdoba', 0, 0, 0, 28),
(5, 'Plaza Emilio Mitre', 'Av. General Las Heras y Cantilo', 0, 0, 0, 28),
(6, 'Plaza Petrolina Rodriguez', 'Rodriguez Peña y Paraguay', 0, 0, 0, 28),
(7, 'Plaza 1ro de Mayo', 'Hipólito Yrigoyen y Pasco', 0, 0, 0, 3),
(8, 'Plaza Dr. J.M. Velazco Ibarra', 'Av. Jujuy y México', 0, 0, 0, 3),
(9, 'Plaza Vea', 'Av. San Juan 2860 ', 0, 0, 0, 31),
(10, 'Plaza Martin Fierro', 'General Urquiza y Cochabamba', 0, 0, 0, 31),
(11, 'Manzana 66', 'Moreno y Jujuy', 0, 0, 0, 3),
(12, 'Plaza Nueva Pompeya', 'Av. Saenz y Traful', 0, 0, 0, 20),
(13, 'Parque de los Patricios', 'Av. Caseros y Monteagudo', 0, 0, 0, 26),
(14, 'Polo Circo', 'Av. Juan de Garay y Pichincha', 0, 0, 0, 26),
(15, 'Parque Leonardo Pereyra', 'Velez Sarsfield e Iriarte', 0, 0, 0, 4),
(16, 'Plaza Matheu', 'General Araoz Lamadrid', 0, 0, 0, 14),
(17, 'Plaza Herrera', 'Herrera y Benito Quinquela Martin', 0, 0, 0, 4),
(18, 'Plaza Solis', 'Suarez y Ministro Brin', 0, 0, 0, 14),
(19, 'Plaza Florentino Ameghino', 'Caseros y Monasterio', 0, 0, 0, 26),
(20, 'Plaza Mariano Boedo', 'Estados Unidos y Sánchez de Loria ', 0, 0, 0, 6),
(21, 'Plaza Almagro', 'Sarmiento y Bulnes', 0, 0, 0, 2),
(22, 'Parque Centenario', 'Av. Patricias Argentinas y Av. Roentgen', 0, 0, 0, 7),
(23, 'Plaza Irlanda', 'Donato Alvarez y Gaona', 0, 0, 0, 7),
(24, 'Parque Rivadavia', 'Av. Rivadavia y Florencio Balcarce', 0, 0, 0, 7),
(25, 'Plaza Giordano Bruno', 'Giordano Bruno y Barral', 0, 0, 0, 7),
(26, 'Plaza Amadeo Sabattini', 'Colpayo y Vallese', 0, 0, 0, 7),
(27, 'Plaza Pueyrredón', 'Yerbal y Artigas', 0, 0, 0, 12),
(28, 'Plaza Angel Gris', 'Av. Avellaneda y Calcena', 0, 0, 0, 12),
(29, 'Plaza de los Periodistas', 'Nazca y Neuquen', 0, 0, 0, 12),
(30, 'Parque Chacabuco', 'Av. Asamblea y Hortiguera', 0, 0, 0, 24),
(31, 'Villa 1.11.14', 'Esteban Bonorino y Martín Fierro ', 0, 0, 0, 12),
(32, 'Plaza de la Misericordia', 'Lautaro y Francisco Bilbao', 0, 0, 0, 12),
(33, 'Plaza 11 de Noviembre', 'Av. Directorio y Italia ', 0, 0, 0, 12),
(34, 'Plaza Sudamérica', 'Av. Piedrabuena y Av. Fernández de la Cruz', 0, 0, 0, 40),
(35, 'Villa 20', 'Pola y Fernandez de la Cruz ', 0, 0, 0, 40),
(36, 'Estación Lugano', 'Delfin Gallo y Martiniano Leguizamon', 0, 0, 0, 40),
(37, 'Lugano 1 y 2', 'Av. Soldado de la Frontera y Manuel Jose Olascoaga', 0, 0, 0, 40),
(38, 'Plaza Calabria', 'Escalada y Castañares', 0, 0, 0, 40),
(39, 'Plaza Domingo Olivera', 'Av. Domingo Olivera 824 ', 0, 0, 0, 23),
(40, 'Parque Avellaneda', 'Av. Directorio y Fernandez', 0, 0, 0, 23),
(41, 'Plaza Romulo Zabala', 'Ercilla 7502', 0, 0, 0, 17),
(42, 'Carrefour Mataderos', 'Av. General Paz 12950', 0, 0, 0, 17),
(43, 'Plaza Sarmiento', 'Cosquin y Humaita ', 0, 0, 0, 16),
(44, 'Plaza Sargento Cabral', 'Jose Leon Suarez y Martinez de Hoz', 0, 0, 0, 16),
(45, 'Parque Santojanni', 'Lisandro de la Torre y Patrón ', 0, 0, 0, 16),
(46, 'Plaza Don Bosco', 'Av. Lope de Vega y Elpidio González', 0, 0, 0, 41),
(47, 'Plaza Ciudad de Banff', 'Arregui y Lisboa', 0, 0, 0, 35),
(48, 'Plaza Toscaneras de Villa Real', 'Ramon Lista y Moliere', 0, 0, 0, 44),
(49, 'Plaza Monte Castro', 'Gualeguaychu y Miranda', 0, 0, 0, 18),
(50, 'Plaza Monseñor Lafitte', 'Allende y Arregui', 0, 0, 0, 13),
(51, 'Plaza Coronel Ramon Falcon', 'Falcon y De Benedetti', 0, 0, 0, 13),
(52, 'Plaza Ciudad de Udine', 'Chivilcoy y Camarones', 0, 0, 0, 13),
(53, 'Plaza de la Bandera', 'Av. Juan B. Justo y Gaona', 0, 0, 0, 13),
(54, 'Carrefour Juan B. Justo', 'Av. Alvarez Jonte 6383', 0, 0, 0, 34),
(55, 'Plaza Aristóbulo del Valle', 'Campana y Baigorria', 0, 0, 0, 37),
(56, 'Plaza El Maestro', ' Av. Francisco Beiro y Pedro Calderón de la Barc', 0, 0, 0, 38),
(57, 'Plaza Roque Saenz Peña', 'Remedios de Escalada y Boyaca', 0, 0, 0, 39),
(58, 'Plaza Arenales', 'Nueva York y Mercedes', 0, 0, 0, 38),
(59, 'Parque Saavedra', 'Roque Pérez y Paroissien', 0, 0, 0, 30),
(60, 'Plaza Leandro N. Alem', 'Artigas y Larsen', 0, 0, 0, 48),
(61, 'Plaza Echeverria', 'Dr. Pedro Ignacio Rivera y Bauness', 0, 0, 0, 48),
(62, 'Plaza Alberdi', 'Larralde y Mariano Acha', 0, 0, 0, 48),
(63, 'Plaza Martin Rodriguez', 'Habana y Argerich', 0, 0, 0, 43),
(64, 'Plaza Zapiola', 'Juramento y Donado ', 0, 0, 0, 48),
(65, 'Plaza Marcos Sastre', 'Monroe y Miller', 0, 0, 0, 48),
(67, 'Balbin', 'Balbin y Arias', 0, 0, 0, 48),
(68, 'Plaza Benjamín Vicuña Mackenna', 'Cramer y Ramallo', 0, 0, 0, 30),
(69, 'Plaza Balcarce', 'Manzanares y Vuelta de Obligado', 0, 0, 0, 21),
(70, 'Ciudad Universitaria', 'Intendente Guiraldes 2160', 0, 0, 0, 21),
(71, 'Plaza Castelli', 'Juramento y Conde', 0, 0, 0, 5),
(72, 'Plaza Manuel Belgrano', 'Cuba y Juramento', 0, 0, 0, 5),
(73, 'Plaza Mafalda', 'Conde y Concepción de Arenal', 0, 0, 0, 10),
(74, 'Estación Nuñez', 'Grecia y Manuela Pedraza', 0, 0, 0, 21),
(75, 'Plaza San Miguel de Garicoitis', 'Virrey Loreto y Delgado', 0, 0, 0, 10),
(76, 'Paseo de las Americas', 'Ramsay y Blanco', 0, 0, 0, 5),
(77, 'Plaza Güemes', 'Medrano y Charcas', 0, 0, 0, 22),
(78, 'Plaza Inmigrantes de Armenia', 'Malabia y Costa Rica', 0, 0, 0, 22),
(79, 'Parque Las Heras', 'Salguero 2450', 0, 0, 0, 22),
(80, 'Plaza República de Peru', 'Av. Figueroa Alcorta y Jeronimo Salguero', 0, 0, 0, 22),
(81, 'Parque Los Andes', 'Av. Dorrego y Av. Guzmán', 0, 0, 0, 8),
(82, 'Plaza 25 de Agosto', 'Charlone y Heredia', 0, 0, 0, 42),
(83, 'Plaza Benito Nazar', 'Antezana y Olaya', 0, 0, 0, 36),
(84, 'Plaza Malaver', 'Montenegro y Heredia', 0, 0, 0, 42),
(85, 'Plaza 24 de Septiembre', 'Rojas y Antezana', 0, 0, 0, 7),
(86, 'Plaza Nobel', 'Bucarest y Hamburgo', 0, 0, 0, 25),
(87, 'Forest y Teodoro Garcia', 'Forest y Teodoro Garcia', 0, 0, 0, 8),
(88, '', 'Av. Corrientes y Reconquista', 0, 0, 1, 32),
(89, 'Plaza Vicente Lopez', 'Montevideo y Juncal', 0, 0, 1, 28),
(90, 'Plaza Francia', 'Av. del Libertador 1400', 0, 0, 1, 28),
(91, 'Plaza Colombia', 'Av. Montes de Oca y Brandsen', 0, 0, 1, 4),
(92, 'Parque Patricios - Feria Itinerante de Abastecimie', 'Av Caseros y Monteagudo', 0, 0, 1, 26),
(93, 'Parque Lezama', 'Av. Brasil y Defensa', 0, 0, 1, 33),
(94, 'Plaza Velez Sarsfield', 'Av. Avellaneda 3800', 0, 0, 1, 13),
(95, 'Plaza Dr. Juan B. Terán', 'Melincué 5402-5450', 0, 0, 1, 44),
(96, 'Plaza Ejército de los Andes', 'Av. Rivadavia 10300', 0, 0, 1, 41),
(97, 'Plaza Félix Lima', 'Ramallo 2200', 0, 0, 1, 21),
(98, 'Plaza Sobral- Feria Itinerante de Abastecimiento B', 'Jerónimo Salguero 2502', 0, 0, 1, 22),
(99, 'Cantero Ciudad de Pigüé', 'Av. Luis María Campos y Olleros', 0, 0, 1, 5),
(100, 'Alto Palermo Shopping', 'Av. Santa Fe 3253', 0, 0, 1, 22),
(101, 'Parque Indoamericano', 'Av. Escalada y Paseo Islas Malvinas', 0, 0, 1, 47),
(102, 'San Martin 913', 'San Martin 913', 0, 0, 1, 29),
(103, 'Bioferia', 'Av. del Libertador y Av. Dorrego', 0, 0, 1, 22),
(104, 'Parque Santojanni', 'Patrón 6222', 0, 0, 1, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residuos`
--

CREATE TABLE `residuos` (
  `residuo_id` tinyint(11) NOT NULL,
  `nombreresiduo` varchar(20) NOT NULL,
  `tipoderesiduo` varchar(15) NOT NULL,
  `beneficios` varchar(3000) NOT NULL,
  `res_consejos` varchar(2000) NOT NULL,
  `res_clasif` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `residuos`
--

INSERT INTO `residuos` (`residuo_id`, `nombreresiduo`, `tipoderesiduo`, `beneficios`, `res_consejos`, `res_clasif`) VALUES
(1, 'plastico', 'seco', 'El plástico desechado que va a ríos, lagunas y océanos, mata alrededor de 1 millón de animales por año. Una botella de plástico puede tardar hasta 1000 años de biodegradarse.\r\nReciclar una botella de plástico ahorra la cantidad de energía necesaria para hacer funcionar una bombilla de 60 watts por 3 horas, y además se necesita apenas la mitad de energía que se necesita para incinerarla.\r\n\r\n¿Cuál es la mejor manera de acopiarlo?\r\nEl plástico debe estar limpio sin ningún rastro de lo que contenía en su interior.\r\n\r\n¿Qué plásticos se reciclan?\r\nTapitas de Plástico, botellas de PET, envases de alimentos, sillas, bidones.\r\n\r\n¿Cómo identificar qué tipo de plástico es?\r\nBuscá en el envase el símbolo de reciclaje con un número en su interior o letras que lo indiquen. Pueden ser algunas de las siguientes categorías:\r\n\r\n1. PET ( POLIETILENO TEREFTALATO)\r\nTarda más de 150 años en descomponerse. El PET, una vez reciclado, se puede utilizar en muebles, alfombras, fibras textiles, piezas de automóvil, entre otros. Podés encontrarlo en: botellas de bebidas, detergente.\r\n\r\n2. PEAD (POLIETILENO DE ALTA DENSIDAD)\r\nPuede tardar más de 150 años en descomponerse. Podés encontrarlo en: envases de productos de limpieza del hogar, shampoo, dispositivos protectores (cascos, rodilleras, coderas), bolsas, contenedores.\r\n\r\n3. PVC ( VINÍLICOS O CLORURO DE POLIVINILO)\r\nPuede tardar hasta 1.000 años en descomponerse. Podés encontrarlo en: tuberías, botellas, envases, marcos de ventanas.\r\n\r\n4. PS (POLIESTIRENO)\r\nPuede tardar hasta 1.000 años en descomponerse. Podés encontrarlo en: juguetes, platos y vasos descartables, cortinas para baño, tuberías, cables.\r\n\r\n5. PEBD (POLIETILENO DE BAJA DENSIDAD)\r\nPuede tardar en descomponerse más de 150 años. Podés encontrarlo en: bolsas, film, cubiertos descartables, bolsas papas fritas, envases de yougurt.\r\n\r\n6. PP (POLIPROPILENO)\r\nPuede tardar en descomponerse entre 100 y 1.000 años. Podés encontrarlo en: bandejas de packaging, bolsas, sorbetes, tapitas, carcasas electrodomésticos.\r\n\r\n7. Otros\r\nLos plásticos tipo 7 son diferentes a todas las otras categorías de materiales plásticos, porque están hechos de una combinación de plásticos o material plástico que no entra en ninguna de las otras clasificaciones. El número 7 incluye los materiales antibalas, los DVD, las computadoras, los estuches de los reproductores de MP3, carteles plásticos entre otros. El tipo 7 es el plástico más difícil de reciclar, aunque ocasionalmente puede ser re-fabricado como maderas plásticas.', '0', ''),
(2, 'papel y carton', 'seco', '¿Qué beneficios trae al medio ambiente su reciclaje? Cada tonelada de papel reciclado equivale a no talar aproximadamente 20 árboles, y a no usar 1500 litros de gasoil, 4000 kilowats de energía y 25000 litros de agua. Esos 20 árboles salvados absorben un total de 110 kilos de dióxido de carbono por año.  ¿Qué se puede reciclar? SI: Papel blanco o de color, sobres de todo tipo de papel, formularios continuos, diarios y revistas, carpetas o biblioratos, folletos, guías telefónicas, cajas, envases. Todos limpios y secos.  NO: Servilletas, pañuelos descartables, papel de fax, planchas de etiquetas, papel fotográfico, de golosinas, papeles carbónicos, plastificado, metalizado, envoltorios de resmas de papel, papel con cintas, papeles autoadhesivos.  ¿Dónde reciclar el cartón y papel?', '0', ''),
(3, 'tetrabrik', 'seco', '', '', ''),
(4, 'vidrio', 'seco', 'El vidrio es 100% reciclable y puede ser reciclado ilimitadas veces. Este proceso consume sólo el 25% de la energía necesaria para hacer vidrio nuevo. A su vez, reciclando vidrio en vez de fabricar nuevo, reduce la contaminación del aire en un 20% y la del agua en un 50%.  El vidrio de las botellas tarda más de 4000 años en degradarse. Si bien el vidrio tiene una tasa de reciclaje muy alta, siempre es recomendable reutilizarlo antes de llevarlo a reciclarse.', 'Limpiarlo con agua y dejarlo en un lugar seco.', 'Botellas, frascos, envases, vasos de vidrio verde, blanco o marrón. Limpios y secos, sin restos de otros materiales. No llevar vidrio roto.  ¿Qué vidrios NO se pueden reciclar? Lamparitas, vidrio laminados, vidrio roto, espejos, lozas, focos.'),
(5, 'metal', 'seco', 'Los metales son recursos no renovables extraídos de la corteza terrestre a través de la explotación minera (en algunas ocasiones a cielo abierto), la cual utiliza grandes cantidades de agua, energía y otros elementos químicos. Las actividades mineras pueden provocar la contaminación de ríos y aguas subterráneas. Por lo tanto, su reciclaje y reutlización son indispensables para evitar seguir extrayendo estos metales. El aluminio, por ejemplo, puede reciclarse infinitas veces y nunca pierde la calidad. Se necesita apenas el 5% de la energía necesaria para hacer aluminio nuevo. Reciclar una lata ahorra un total de energía equivalente a 3 horas de una televisión prendida. Sin tratarse, el aluminio tarda 500 años en biodegradarse.  El aluminio por ejemplo puede reciclarse infinitas veces y nunca pierde la calidad. Se necesita apenas el 5% de la energía necesaria para hacer aluminio nuevo. Reciclar una lata ahorra un total de energía equivalente a 3 horas de una televisión prendida. El aluminio tarda 500 años en biodegradarse.', 'El metal debe estar limpio, sin ningún resto, aplastado para que ocupe menos espacio.', 'Latas y envases de acero, aluminio, hierro, plomo, cobre, bronce y otros metales ferrosos. Todos limpios y secos, sin restos de residuos.'),
(6, 'aceite vegetal', 'especial', 'Pueden tardar hasta 300 años en degradarse. Esto significa que si no reducimos, reciclamos y reutilizamos lo que desechamos, convertiremos nuestro mundo en un gigantesco vertedero contaminado. El objetivo del reciclaje es separar los materiales no peligrosos como el plástico, vidrio o metal, de los metales pesados y baterías que contiene el aparato eléctrico.', 'Minimizá el consumo de aparatos electrónicos. Intentá siempre arreglar antes de compra.', ''),
(7, 'pilas', 'especial', '', '0', ''),
(8, 'electrónicos', 'especial', '', '0', ''),
(9, 'electrodomésticos', 'especial', '', '0', ''),
(10, 'telgopor', 'especial', '', '0', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` smallint(6) NOT NULL,
  `usuario_nombre` varchar(20) NOT NULL,
  `usuario_password` varchar(30) NOT NULL,
  `usuario_mail` varchar(50) NOT NULL,
  `usuario_username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario_nombre`, `usuario_password`, `usuario_mail`, `usuario_username`) VALUES
(1, 'Pepe', '1234', 'pepe@gmail.com', 'pepe'),
(2, 'Mariana', '12345', 'mariana@gmail.com', 'mariana');

-- --------------------------------------------------------

--
-- Estructura para la vista `listado de barrios`
--
DROP TABLE IF EXISTS `listado de barrios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listado de barrios`  AS  select `comunas`.`com_nombre` AS `com_nombre`,`barrios`.`bar_nombre` AS `bar_nombre` from (`comunas` join `barrios`) where `comunas`.`com_id` = `barrios`.`com_id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrios`
--
ALTER TABLE `barrios`
  ADD PRIMARY KEY (`bar_id`),
  ADD KEY `com_id` (`com_id`);

--
-- Indices de la tabla `categoria_puntos_verdes`
--
ALTER TABLE `categoria_puntos_verdes`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`com_id`);

--
-- Indices de la tabla `consejos`
--
ALTER TABLE `consejos`
  ADD PRIMARY KEY (`consejo_id`);

--
-- Indices de la tabla `desafios-completados`
--
ALTER TABLE `desafios-completados`
  ADD PRIMARY KEY (`des_id`);

--
-- Indices de la tabla `puntos_verdes`
--
ALTER TABLE `puntos_verdes`
  ADD PRIMARY KEY (`pv_id`),
  ADD KEY `bar_id` (`bar_id`);

--
-- Indices de la tabla `residuos`
--
ALTER TABLE `residuos`
  ADD PRIMARY KEY (`residuo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_puntos_verdes`
--
ALTER TABLE `categoria_puntos_verdes`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consejos`
--
ALTER TABLE `consejos`
  MODIFY `consejo_id` tinyint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntos_verdes`
--
ALTER TABLE `puntos_verdes`
  MODIFY `pv_id` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `residuos`
--
ALTER TABLE `residuos`
  MODIFY `residuo_id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barrios`
--
ALTER TABLE `barrios`
  ADD CONSTRAINT `barrios_ibfk_1` FOREIGN KEY (`com_id`) REFERENCES `comunas` (`com_id`);

--
-- Filtros para la tabla `puntos_verdes`
--
ALTER TABLE `puntos_verdes`
  ADD CONSTRAINT `puntos_verdes_ibfk_1` FOREIGN KEY (`bar_id`) REFERENCES `barrios` (`bar_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
