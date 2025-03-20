-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.7.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para esqueleto
CREATE DATABASE IF NOT EXISTS `skeleton` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `skeleton`;

-- Volcando estructura para tabla esqueleto.huesos
CREATE TABLE IF NOT EXISTS `huesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `parte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parte_id` (`parte_id`),
  CONSTRAINT `huesos_ibfk_1` FOREIGN KEY (`parte_id`) REFERENCES `partes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla esqueleto.huesos: ~56 rows (aproximadamente)
INSERT INTO `huesos` (`id`, `nombre`, `descripcion`, `parte_id`) VALUES
	(1, 'Frontal', 'Forma la frente y la parte superior de las órbitas oculares', 1),
	(2, 'Parietales', 'Dos huesos pares que forman los lados y la parte superior del cráneo.', 1),
	(3, 'Temporales', 'Ubicados a los lados del cráneo, contienen las estructuras del oído interno y contribuyen a la formación de las sienes.', 1),
	(4, 'Occipital', 'Forma la parte posterior y la base del cráneo, incluyendo el agujero magno por donde pasa la médula espinal.', 1),
	(5, 'Esfenoides', 'Un hueso complejo en forma de mariposa que forma parte de la base del cráneo y las órbitas oculares.', 1),
	(6, 'Etmoide', 'Ubicado entre las órbitas, forma parte de la cavidad nasal y contribuye a la estructura del tabique nasal.', 1),
	(7, 'Nasales', 'Forman el puente de la nariz.', 1),
	(8, 'Maxilares', 'Forman la mandíbula superior y sostienen los dientes superiores.', 1),
	(9, 'Cigomáticos', 'Conocidos como pómulos, forman las mejillas y parte de las órbitas oculares.', 1),
	(10, 'Mandíbula', 'Es el único hueso móvil del cráneo, forma la mandíbula inferior y sostiene los dientes inferiores.', 1),
	(11, 'Palatinos', 'Forman parte del paladar duro y la cavidad nasal.', 1),
	(12, 'Lagrimales', 'Huesos pequeños ubicados en la parte interna de las órbitas, cerca de los conductos lagrimales.', 1),
	(13, 'Vómer', 'Forma la parte inferior del tabique nasal.', 1),
	(14, 'Cornetes nasales inferiores', 'Estructuras óseas dentro de la cavidad nasal que ayudan a humidificar y filtrar el aire.', 1),
	(15, 'Esternón', 'Un hueso plano ubicado en la parte central del pecho. Se divide en tres partes: el manubrio (parte superior), el cuerpo (parte media) y el apéndice xifoides (parte inferior).', 2),
	(16, 'Costillas (24 en total, 12 pares)', 'Son huesos largos y curvos que se extienden desde la columna vertebral hasta el esternón.', 2),
	(17, 'Costillas verdaderas (7 pares)', 'Se conectan directamente al esternón a través de cartílago costal.', 2),
	(18, 'Costillas falsas (3 pares)', 'Se conectan indirectamente al esternón, uniéndose al cartílago de la costilla superior.', 2),
	(19, 'Costillas flotantes (2 pares)', 'No se conectan al esternón, terminan en la musculatura de la pared abdominal.', 2),
	(20, 'Vértebras torácicas (12)', 'Las costillas se articulan posteriormente con las vértebras torácicas de la columna vertebral. Cada vértebra torácica se conecta a un par de costillas.', 2),
	(21, 'Vértebras cervicales (7)', 'Ubicadas en el cuello. La primera se llama atlas (sostiene el cráneo) y la segunda es el axis (permite el movimiento de rotación de la cabeza). Son las vértebras más pequeñas y móviles.', 3),
	(22, 'Vértebras lumbares (5)', 'Ubicadas en la parte baja de la espalda. Son las vértebras más grandes y resistentes, ya que soportan la mayor parte del peso del cuerpo. Permiten movimientos de flexión y extensión.', 3),
	(23, 'Sacro', 'Ubicado debajo de las vértebras lumbares. Forma la parte posterior de la pelvis y se articula con los huesos de la cadera (ilion).', 3),
	(24, 'Cóccix', 'Conocido como el "hueso de la cola". Es una estructura pequeña y residual ubicada debajo del sacro.', 3),
	(25, 'Clavícula', 'Hueso largo y curvo ubicado en la parte superior del tórax, que conecta el brazo con el esternón.', 4),
	(26, 'Omóplato', 'Hueso plano y triangular ubicado en la parte posterior del hombro. Se articula con la clavícula y el húmero.', 4),
	(27, 'Húmero', 'Hueso largo del brazo, que se extiende desde el hombro hasta el codo.', 4),
	(28, 'Cúbito', 'Hueso del antebrazo, ubicado en el lado medial (lado del dedo meñique). Se articula con el húmero en el codo.', 4),
	(29, 'Radio', 'Hueso del antebrazo, ubicado en el lado lateral (lado del pulgar). Se articula con el húmero y el cúbito.', 4),
	(30, 'Clavícula', 'Igual que en el lado izquierdo, conecta el brazo derecho con el esternón.', 5),
	(31, 'Omóplato', 'Hueso plano y triangular en la parte posterior del hombro derecho, que se articula con la clavícula y el húmero.', 5),
	(32, 'Húmero', 'Hueso largo del brazo derecho, que va desde el hombro hasta el codo.', 5),
	(33, 'Cúbito', 'Hueso del antebrazo derecho, ubicado en el lado medial.', 5),
	(34, 'Radio', 'Hueso del antebrazo derecho, ubicado en el lado lateral.', 5),
	(35, 'Huesos del carpo (8 de la muñeca)', 'Fila proximal (cerca del antebrazo): escafoides, semilunar, piramidal y pisiforme. Fila distal (cerca de los metacarpianos): trapecio, trapezoide, grande y ganchoso.', 6),
	(36, 'Metacarpianos (5)', 'Huesos largos que forman la palma de la mano. Se numeran del I al V, comenzando desde el pulgar.', 6),
	(37, 'Falanges (14 huesos de los dedos)', 'Falanges proximales: Las más cercanas a la palma. Falanges medias: Solo presentes en los dedos II al V (no en el pulgar). Falanges distales: Las puntas de los dedos.', 6),
	(38, 'Huesos del carpo (8 de la muñeca)', 'Fila proximal (cerca del antebrazo): escafoides, semilunar, piramidal y pisiforme. Fila distal (cerca de los metacarpianos): trapecio, trapezoide, grande y ganchoso.', 7),
	(39, 'Metacarpianos (5)', 'Huesos largos que forman la palma de la mano. Se numeran del I al V, comenzando desde el pulgar.', 7),
	(40, 'Falanges (14 huesos de los dedos)', 'Falanges proximales: Las más cercanas a la palma. Falanges medias: Solo presentes en los dedos II al V (no en el pulgar). Falanges distales: Las puntas de los dedos.', 7),
	(41, 'Pelvis', 'Ilion: Parte superior de la pelvis. Pubis: Parte frontal de la pelvis. Isquion: Parte inferior de la pelvis, que soporta el peso al sentarse.', 8),
	(42, 'Fémur', 'Hueso más largo del cuerpo, ubicado en el muslo. Se articula con la pelvis en la cadera y con la tibia en la rodilla.', 8),
	(43, 'Rótula', 'Hueso pequeño y redondeado que protege la articulación de la rodilla.', 8),
	(44, 'Tibia', 'Hueso principal de la pierna, ubicado en la parte medial (lado interno). Soporta la mayor parte del peso.', 8),
	(45, 'Peroné', 'Hueso delgado ubicado en la parte lateral (lado externo) de la pierna. No soporta peso directamente, pero proporciona estabilidad.', 8),
	(46, 'Pelvis', 'Ilion: Parte superior de la pelvis. Pubis: Parte frontal de la pelvis. Isquion: Parte inferior de la pelvis, que soporta el peso al sentarse.', 9),
	(47, 'Fémur', 'Hueso más largo del cuerpo, ubicado en el muslo. Se articula con la pelvis en la cadera y con la tibia en la rodilla.', 9),
	(48, 'Rótula', 'Hueso pequeño y redondeado que protege la articulación de la rodilla.', 9),
	(49, 'Tibia', 'Hueso principal de la pierna, ubicado en la parte medial (lado interno). Soporta la mayor parte del peso.', 9),
	(50, 'Peroné', 'Hueso delgado ubicado en la parte lateral (lado externo) de la pierna. No soporta peso directamente, pero proporciona estabilidad.', 9),
	(51, 'Huesos del tarso (7)', 'Astrágalo: Se articula con la tibia y el peroné para formar el tobillo. Calcáneo: Forma el talón y es el hueso más grande del pie. Navicular: Ubicado delante del astrágalo. Cuboides: Ubicado en el lado lateral del pie. Cuneiformes (3): Tres huesos (medial, intermedio y lateral) que se articulan con los metatarsianos.', 10),
	(52, 'Metatarsianos (5)', 'Huesos largos que forman la parte media del pie. Se numeran del I al V, comenzando desde el dedo gordo.', 10),
	(53, 'Falanges (14 huesos de los dedos)', 'Falanges proximales: Las más cercanas a los metatarsianos. Falanges medias: Solo presentes en los dedos II al V (no en el dedo gordo). Falanges distales: Las puntas de los dedos.', 10),
	(54, 'Huesos del tarso (7)', 'Astrágalo: Se articula con la tibia y el peroné para formar el tobillo. Calcáneo: Forma el talón y es el hueso más grande del pie. Navicular: Ubicado delante del astrágalo. Cuboides: Ubicado en el lado lateral del pie. Cuneiformes (3): Tres huesos (medial, intermedio y lateral) que se articulan con los metatarsianos.', 11),
	(55, 'Metatarsianos (5)', 'Huesos largos que forman la parte media del pie. Se numeran del I al V, comenzando desde el dedo gordo.', 11),
	(56, 'Falanges (14 huesos de los dedos)', 'Falanges proximales: Las más cercanas a los metatarsianos. Falanges medias: Solo presentes en los dedos II al V (no en el dedo gordo). Falanges distales: Las puntas de los dedos.', 11);

-- Volcando estructura para tabla esqueleto.partes
CREATE TABLE IF NOT EXISTS `partes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla esqueleto.partes: ~11 rows (aproximadamente)
INSERT INTO `partes` (`id`, `nombre`, `descripcion`) VALUES
	(1, 'Cráneo', 'El cráneo proporciona un medio de protección al encéfalo y a órganos sensoriales especiales (vista, olfato, equilibrio y gusto). Este se compone de 8 huesos diferentes como el hueso frontal, maxilar superior, temporal izquierdo y derecho, pariental izquierdo y derecho, occipital, cigomático izquierdo y derecho, esfenoides y la mandíbula.'),
	(2, 'Caja torácica', 'La caja torácica es una estructura ósea similar a una jaula que enmarca la cavidad torácica. Las 24 costillas envuelven los costados del torso de delante hacia atrás. Se conectan con la columna torácica en la parte posterior y con el esternón en la parte frontal.'),
	(3, 'Columna vertebral', 'La columna vertebral está compuesta por 33 huesos diferentes y dividida en varias secciones. Las vértebras cervicales forman el cuello. Las vértebras torácicas comprenden la porción del tórax y tienen costillas adheridas a ellas. Las vértebras lumbares son las vértebras restantes que están por debajo del último hueso torácico y en la parte superior del sacro.'),
	(4, 'Extremidad superior izquierda', 'La extremidad superior izquierda se compone de 3 huesos, el húmero, cúbito y radio estos huesos forman la estructura ósea del brazo y el antebrazo. La clavícula y el omóplato no forman parte del brazo en sí pero son huesos clave que forman parte de la cintura escapular (o cintura pectoral), que conecta el brazo con el esqueleto axial (el torso).'),
	(5, 'Extremidad superior derecha', 'La extremidad superior derecha se compone de los mismos 3 huesos: el húmero, el cúbito y el radio, los cuales forman la estructura ósea del brazo y el antebrazo. Al igual que en el lado izquierdo, la clavícula y el omóplato no son parte del brazo en sí, pero son esenciales en la cintura escapular (o cintura pectoral), conectando esta extremidad con el esqueleto axial (el torso).'),
	(6, 'Mano izquierda', 'La mano izquierda está formada por 27 huesos, distribuidos en tres grupos: los carpianos (8 huesos en la muñeca), los metacarpianos (5 huesos en la palma) y las falanges (14 huesos en los dedos).'),
	(7, 'Mano derecha', 'La mano derecha cuenta con 27 huesos, organizados en los mismos grupos: carpianos (8 huesos), metacarpianos (5 huesos) y falanges (14 huesos), manteniendo la misma estructura que su contraparte izquierda.'),
	(8, 'Extremidad inferior izquierda', 'Desde la pelvis, que incluye el ilion, el pubis y el isquion, la extremidad inferior izquierda está formada por el fémur (hueso del muslo), la rótula (hueso de la rodilla), y los huesos de la pierna: la tibia y el peroné.'),
	(9, 'Extremidad inferior derecha', 'Desde la pelvis (compuesta por el ilion, el pubis y el isquion), la extremidad inferior derecha se compone del fémur, la rótula, la tibia y el peroné.'),
	(10, 'Pie izquierdo', 'El pie izquierdo está formado por tres grupos de huesos: los tarsianos (7 huesos, incluyendo el astrágalo y el calcáneo), los metatarsianos (5 huesos que forman la parte media del pie) y las falanges (14 huesos que conforman los dedos).'),
	(11, 'Pie derecho', 'El pie derecho se compone de los tarsianos (7 huesos), los metatarsianos (5 huesos) y las falanges (14 huesos), manteniendo la misma estructura que su contraparte izquierda.');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
