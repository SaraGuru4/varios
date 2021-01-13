-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2021 a las 10:55:41
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acofal`
--
CREATE DATABASE IF NOT EXISTS `acofal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `acofal`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombreProducto`, `descripcion`, `foto`, `tipo`) VALUES
(1, 'Cambio de Ruedas', 'Se realiza el cambio de 2 ruedas o 4 en función de la necesidad de cada coche.', '', 'Coche'),
(2, 'Cambio de Aceite', 'Se realiza un cambio de aceite, siempre respetando el medio ambiente y llevándolo a un punto limpio.', '', 'Coche'),
(3, 'Revisión', 'Revisión general del coche para poder visualizar posibles averías o preparar el coche para pasar la itv.', '', 'Coche'),
(4, 'Reparación de avería', 'En función del problema de su coche, se lo reparamos con una garantía de 4 meses.', '', 'Coche'),
(5, 'Xiaomi Redmi 9', 'Xiaomi Redmi 9, Morado, 64 GB, 4 GB, 6.53\" Full HD+, MediaTek Helio G80, Quad Cam, 5020 mAh, Android', '', 'Movil'),
(6, 'Lavadora carga frontal', 'Bosch WAN24264ES, 8 kg, 1200 rpm, A+++, Blanco', '', 'lavadora'),
(7, 'Television LED 32', 'OK ODL 32661HN, HD, TDT2, Dolby Audio', '', 'television'),
(8, 'Microondas', 'OK OMW 22223 DM, Con Grill, 20 litros, 9 Niveles de potencia, 700 W, Inox, Negro', '', 'microondas'),
(9, 'Calefactor', 'Taurus Tropicano 5C, 3 Temperaturas, 1500W, Ventilación, Blanco', '', 'calefactor'),
(10, 'Ibuprofeno', 'Espididol 400 mg 18 Comprimidos', '', 'Ibuprofeno'),
(11, 'Almax', 'Almax Forte 24 Sobres 1.5gr. Almax Forte es un tratamiento sintomático de la acidez de estómago que actúa de forma eficaz y rápida.', '', 'almax'),
(12, 'Balsamo labial Isdin Acniben Rx', 'Bálsamo Labial Reparador 10ml. Labial reparador, indicado para el uso durante los tratamientos contra el acné. Evita y repara la sequedad en la piel, labios y mucosa nasal. Protege los labios, clama y repara las zonas agredidas.', '', 'balsamo'),
(13, 'Biberón Anticólico', 'Twistshake 260ml.Este biberón ha sido diseñado para reducir de forma activa los cólicos y asegurar un flujo uniforme.\r\n', '', 'biberon'),
(14, 'Tiritas', 'Tiritas Tela Classic 6x10cm 10 Unidades. Tiritas de tela resistentes y recortables a tu medida. El tamaño de 6x10 cm. No se adhiere a la herida. Transpirables. Bien toleradas por la piel gracias a su adhesivo hipoalergénico.', '', 'tiritas'),
(15, 'Corte Señora', 'Corte de cabello de señora. Moderno, clásico o como desesee.', '', 'corte'),
(16, 'Peinado', 'Peinado de cabello en tamaño corto, medio y largo. Ideal para salir de fiesta o para bodas también.', '', 'peinado'),
(17, 'Tinte', 'Se realiza coloración de cabello al gusto del cliente, color báse, mechas, sunshine y todo tipo de coloración.', '', 'color'),
(18, 'Laca Spray de Viaje', 'La laca spray Nelly respeta la estructura capilar, lo que permite su utilización diaria. Protege el cabello de la humedad y el viento, manteniéndolo durante toda la jornada. Se elimina fácilmente con un ligero cepillado. Formato spray, ideal para viajes.', '', 'laca'),
(19, 'Crema Definidora De Rizos', 'TIGI Curls Rock Amplifier 150ML. Una crema para la definición de rizos y ondas. Este fantástico producto de styling proporciona definición y separación, fijación y control ¡todo lo que necesitan las ondas y rizos!', '', 'peinado'),
(20, 'Pan', 'El pan, del latín panis, es un alimento básico que forma parte de la dieta tradicional en Europa, Medio Oriente, India, América y Oceanía. Se suele preparar mediante el horneado de una masa, elaborada fundamentalmente con harina de cereal, agua y sal.', '', 'pan'),
(21, 'Aceite Ecológico', 'Jesus Aranda produce este aceite en Falces.', '', 'aceite'),
(22, 'Chuletas', 'Una chuleta de cerdo es un corte de carne obtenido del espinazo del puerco. Una chuleta de cerdo adulto suele contener parte de una vértebra y parte de su correspondiente costilla, y en general es lo bastante grande como para ser servida como porción individual para una persona.', '', 'chuletas'),
(23, 'Jamon', 'El jamón es el nombre genérico del producto alimenticio obtenido de las patas traseras del cerdo. En España, la preparación más habitual del jamón es salado en crudo y curado de forma natural. Las patas delanteras del cerdo, pese a tener un proceso idéntico de elaboración, reciben el nombre de paleta o paletilla.', '', 'jamon'),
(24, 'Detergente Lavadora', 'Ariel Pods All in 1 +50% Gratis 41 unidades. Detergente súper concentrado. Innovadora fórmula en cápsulas. Combate las manchas eficazmente. Cantidad adecuada de detergente. Formato ahorro.', '', 'detergente'),
(25, 'Mimosin Concentrado', 'Suavizante Azul Vital 1,3L. Solución en suavizante de Mimosin preparado con aloe vera para dejar la ropa suave y con un aroma muy agradable de frescura.', '', 'suavizante'),
(26, 'Plátano de Canarias Ecológico', 'Posee el distintivo que acredita la procedencia orgánica de la fruta, el logotipo del Comité de Agricultura Ecológica de la Comunidad Valenciana (CAECV) y el logotipo ecológico de la UE.', '', 'platano'),
(27, 'Piña', 'Ananas comosus es una especie de la familia de las bromeliáceas, nativa de América del Sur. Planta de escaso porte y con hojas duras y lanceoladas de hasta 1 m de largo, fructifica una vez al año produciendo un único fruto fragante y dulce, muy apreciado en gastronomía.', '', 'piña'),
(28, 'Lomo Bajo de Pasto Entero', 'Pieza grande de forma rectangular situada en la maza trasera del cuarto trasero. Presenta un corte limpio en uno de sus extremos, y un nervio bastante grueso en uno de sus laterales. Junto con la tapa, el redondo y la culata forma lo que se conoce en carnicería como pierna o bola.', '', 'lomo'),
(29, 'Queso Idiazabal', 'El queso es un alimento sólido que se obtiene por maduración de la cuajada de la leche una vez eliminado el suero; sus diferentes variedades dependen del origen de la leche empleada, de los métodos de elaboración seguidos y del grado de madurez alcanzada.', '', 'queso'),
(30, 'Ajos', 'No hace muchos años casi todas las familias de la localidad se dedicaban al cultivo de ajo, producto típico por excelencia de Falces, lo cual le hizo ser conocido a nivel nacional. De todos los puntos de España se acercaba gente en verano para llevarse unas horcas de este preciado producto y en todos los sitios se anunciaba el ajo de Falces como algo excepcional.', '', 'ajos'),
(31, 'Aguacate', 'Persea americana, llamado popularmente aguacate, ​​​ palto ​​ o aguacatero, ​ es una especie arbórea del género Persea perteneciente a la familia Lauraceae, cuyo fruto, el aguacate​​ o palta, ​​ es una baya comestible.', '', 'aguacate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `idStock` int(11) NOT NULL,
  `idTienda` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `descuento` int(11) NOT NULL DEFAULT 0,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`idStock`, `idTienda`, `idProducto`, `precio`, `descuento`, `cantidad`) VALUES
(1, 3, 2, 30, 10, 40),
(2, 4, 2, 40, 0, 40),
(3, 3, 1, 40, 0, 50),
(4, 4, 1, 45, 0, 60),
(5, 3, 3, 35, 0, 100),
(6, 4, 3, 50, 0, 50),
(7, 16, 10, 4, 0, 200),
(8, 16, 11, 3, 0, 100),
(9, 16, 12, 5, 0, 40),
(10, 16, 13, 12, 5, 20),
(11, 16, 14, 2, 0, 200),
(12, 17, 10, 6, 10, 20),
(13, 17, 11, 4, 0, 20),
(14, 17, 12, 6, 5, 30),
(15, 17, 13, 15, 10, 5),
(16, 17, 14, 4, 0, 20),
(17, 18, 15, 20, 10, 100),
(18, 18, 16, 15, 0, 100),
(19, 18, 17, 60, 10, 50),
(20, 19, 15, 15, 0, 200),
(21, 19, 16, 20, 5, 20),
(22, 19, 17, 40, 10, 200),
(23, 19, 18, 10, 10, 20),
(24, 19, 19, 12, 20, 10),
(25, 20, 18, 6, 0, 10),
(26, 20, 19, 10, 5, 20),
(27, 21, 18, 12, 10, 10),
(28, 21, 19, 20, 20, 10),
(29, 22, 20, 1, 60, 100),
(30, 22, 21, 12, 10, 20),
(31, 22, 23, 6, 0, 20),
(32, 22, 24, 6, 0, 20),
(33, 22, 25, 12, 10, 5),
(34, 22, 26, 4, 5, 20),
(35, 22, 27, 3, 10, 6),
(36, 22, 28, 6, 0, 10),
(37, 22, 29, 12, 10, 5),
(38, 22, 30, 30, 0, 10),
(39, 22, 31, 4, 10, 20),
(40, 25, 21, 12, 10, 20),
(41, 25, 22, 6, 10, 100),
(42, 25, 23, 12, 20, 100),
(43, 25, 28, 6, 0, 20),
(44, 25, 29, 20, 20, 10),
(45, 25, 31, 4, 10, 10),
(46, 28, 30, 20, 10, 300),
(47, 29, 30, 18, 5, 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `idTienda` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `nombreTienda` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `tipoWeb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`idTienda`, `idUsuario`, `nombreTienda`, `direccion`, `telefono`, `logo`, `foto`, `texto`, `idTipo`, `tipoWeb`) VALUES
(3, 2, 'Talleres Gurucharri', 'NA-6210 junto a la Gasolinera', 948714924, 'gurucharri.jpg', '', 'Talleres Gurucharri es una empresa familiar creada por Clemente Gurucharri, paso a formar parte de su hijo Jose Felix y ahora es el regente de el taller. Dispone de electromecánica, Grua, asistencia en carretera, cambio de neumáticos, de aceite y todo tipo de arreglos mecánicos.', 7, 1),
(4, 3, 'Taller Baleztena y Villar', 'Av. del Salvador, 97', 948734227, 'baleztena.jpg', '', 'Bueno como no se mucho acerca de ellos vamos por que son la competencia vamos a decir que es un taller de electromecánica regentado por dos amigos Baleztena y Villar. Llevan 30 años en el negocio y son muy competentes.', 7, 1),
(5, 4, 'Taller J. Iñigo (Metalúrgia J.J.)', 'C/ Don Clemente Añorbe, (En frente del 2)', 948734112, 'inigo.jpg', '', 'Es un taller de soldadura dedicado a maquinaria de campo como tractores, remolques, cosechadoras etc. Realizan arreglos en la maquinaria tanto de soldadura como otros temas.', 7, 1),
(6, 5, 'Bodegas Aguirre', 'Pcta. de Añorbe, 1', 948734155, 'aguirre.gif', '', 'Empresa de vino familiar, lleva 50 años en el pueblo con un vino de gran calidad. Se produce en km0 todo se realiza en el pueblo y es un vino excepcional.', 2, 3),
(7, 6, 'Bodegas Inurrieta', 'NA-6100', 948737309, 'inurrieta.jpg', '', 'Localizados en un microvalle cruzado por el río Arga , en la Ribera Alta de Navarra, nuestros viñedos crecen en 3 tipos de suelos entre los 300 y los 480 metros de altitud. Esto nos permite cultivar 6 variedades de uva en las mejores condiciones.', 2, 3),
(8, 7, 'Bodegas Armendariz', 'Av. del Salvador, 9', 948734135, 'armendariz.jpg', '', 'La fundación de la empresa es anterior a 1888, fue fundada primero como alcoholera y posteriormente se transformó en bodega de elaboración de vinos, por D. Sergio Armendáriz, quien posteriormente se asoció con D. Pedro Armendáriz (también “Armendáriz” pero sin vinculación familiar alguna) ,en 1954 Sergio dejaría la empresa en manos de Pedro Armendáriz, quien dio un gran impulso al negocio, entrando a formar parte de la Denominación de Origen Navarra y comenzando a comercializar los primeros vino', 2, 3),
(9, 8, 'Veterinaria Armendariz', 'C/ La Cruz, s/n (En frente del 6)', 948701875, 'veterinario.jpg', '', 'Alberto Armendáriz lleva 40 años siendo el veterinario del pueblo. Es de Falces pero también tiene una clínica Veterinaria en Tafalla. Si no le encontráis en falces podéis ir a Tafalla y os atenderá encantado.', 9, 2),
(10, 11, 'Floristería Maite', 'C/ San José, 6', 948734620, 'floristeria.png', '', '​Somos una floristería con amplia trayectoria en el sector. Visítanos, estamos situados en la localidad de Falces. En Floristería Maite ponemos a tu disposición frescas flores. Consulta por nuestros servicios de floristería, te esperamos. Si buscas un servicio de Teleflora rápido y eficiente, ponte en contacto con nosotros. Estaremos encantados de atenderte.', 5, 3),
(11, 9, 'Taxi José Félix Gurucharri Bailos', 'Falces', 948714924, 'taxi.png', '', 'Taxi Gurucharri es una empresa familiar creada por Clemente Gurucharri, paso a formar parte de su hijo Jose Felix y ahora es el regente de el taller. Dispone de electromecánica, Grua, asistencia en carretera, cambio de neumáticos, de aceite y todo tipo de arreglos mecánicos.', 8, 1),
(12, 10, 'Autobuses Sánchez', 'C/ Doña Fausta Elorz, 3-4', 948714720, 'autobuses.png', '', 'Desde su fundación en 1942 por los hermanos Sánchez y hasta hoy en día, Autobuses Sánchez se caracteriza por su trato directo con el cliente, atendiendo sus propuestas y aconsejando desde la experiencia. Nuestra política de calidad es el marco por el que nos regimos. Nuestros principios son ofrecer siempre un servicio de máxima calidad por lo que todos los integrantes de Autobuses Sánchez adquirimos un compromiso para cumplir satisfactoriamente las necesidades y requisitos de nuestros clientes.', 8, 1),
(13, 20, 'Baleztena Soluciones Informáticas', 'C/ Bardenas Reales, 7', 948086058, 'baleztena.jpg', '', 'La informática es la disciplina o campo de estudio que abarca el conjunto de conocimientos, métodos y técnicas referentes al tratamiento automático de la información, junto con sus teorías y aplicaciones prácticas, con el fin de almacenar, procesar y transmitir datos e información en formato digital utilizando sistemas computacionales. Los datos son la materia prima para que, mediante su proceso, se obtenga como resultado información. Para ello, la informática crea y/o emplea sistemas de procesa', 3, 1),
(14, 21, 'Soto Alfaro Electricidad S.L.', 'Pcta. del Círculo, 2 Bajo', 948734058, 'soto.jpg', '', 'Cuando en el medio rural se empezaba a entrar en la modernidad de la luz eléctrica, ya había un Soto en Falces que vendía y colocaba las lámparas eléctricas. Era D. Juan Bautista Soto, a la par Practicante y Barbero. Y fue él quien, por el año 1920, realizó la primera iluminación e instalación eléctrica de la Iglesia Parroquial de Falces.\r\n\r\nSu hijo, Joaquín Soto Pascual, heredó la afición por la electricidad y en 1940 creó Radio Electricidad Soto.', 3, 1),
(15, 22, 'Electrodomésticos Ibañez', 'C/ San José, 10', 948734206, 'ibanez.jpg', '', 'Contamos con una amplia experiencia en el mercado, y te ofreceremos las marcas más punteras. Disponemos de una exposición de un total de 300m2, con productos y marcas de alta gama, destinadas a ofrecerte un resultado profesional en tu hogar. Con nuestra amplia experiencia en el mercado te asesoraremos, logrando así que tengas siempre todo lo que necesitas de una forma mucho más rápida.', 3, 1),
(16, 23, 'Farmacia Victoria Eza', 'C/Corazón de Jesús, 5', 948734840, 'eza.jpg', '', 'Farmacia creada en el año 2002 por dos farmacéuticas, Mercedes Diaz y Victoria Eza. En el año 2006, se incorporó a nuestro equipo Laura Alfaro.', 4, 2),
(17, 24, 'Farmacia El Salvador', 'Av. del Salvador, 5', 684231492, 'salvador.jpg', '', 'La farmacia (del griego φάρμακον /fármakon/, \'medicamento, veneno, tóxico\') es la ciencia y práctica de la preparación, conservación, presentación y dispensación de medicamentos; también es el lugar donde se preparan, dispensan y venden los productos medicinales. Esta definición es la más universal y clásica, que se solapa con el concepto de Farmacia Galénica (Galeno fue un médico griego del siglo II, experto en preparar medicamentos).', 4, 2),
(18, 25, 'Falcestyle', 'C/ San Andrés, 23 Bajo', 948734617, 'falcestyle.jpg', '', 'Una peluquería o barbería es un local donde se ofrecen varios servicios estéticos, principalmente el corte de cabello, pero también suelen realizarse otros como: 1-corte y delineado de barba 2-delineado de barba 3-tinte de barba 4-tinte de cabello 5-alisado de cabello 6-exfoliación 7-mascarilla 8-tratamiento facial 9-tratamientos capilares etc.', 6, 2),
(19, 26, 'Peluquería Impacto', 'C/ Mayor, 9', 948714763, 'impacto.png', '', 'Últimamente la \"barberia\" esta de moda, los caballeros que ingresan al salón quieren un cambio de look,sentirse cómodos, despejarse, es ahí cuando el barbero le brinda sus servicios de corte de pelo o de barba dependiento de lo que requiera el cliente y le convida refrescos o alguna botana, para salir contento del local,y con muy buen autoestima.', 6, 2),
(20, 27, 'Estética Aroma', 'C/ Mayor, 22 Bajo', 948714059, 'aroma.png', '', 'La estética (del griego αἰσθητική [aisthetikê], ‘sensación’, ‘percepción’, y este de[aísthesis], ‘sensación’, ‘sensibilidad’, e -ικά [-icá], ‘relativo a’) es la rama de la filosofía que estudia la esencia y la percepción de la belleza.', 6, 2),
(21, 28, 'Estética Leire', 'C/ Urbasa, 5 Bajo', 608363623, 'leire.jpg', '', 'La estética estudia las más amplias y vastas historias del conocimiento isabelino, así como las diferentes formas del arte. La estética, así definida, es el campo de la filosofía que estudia el arte y sus cualidades, tales como la belleza, lo eminente, lo feo o la disonancia. Es la rama de la filosofía que estudia el origen del sentimiento puro y su manifestación, que es el arte, se puede decir que es la ciencia cuyo objeto primordial es la reflexión sobre los problemas del arte, la estética ana', 6, 2),
(22, 12, 'Cada día', 'C/ La Cava, 19', 618885548, 'dia.jpg', '', 'Este año desde Dia queremos estar cerca de ti y te ofrecemos los productos más dulces para que disfrutes estas fiestas. Porque no se trata de estar en el mismo lugar, se trata de estar juntos.', 1, 3),
(23, 13, 'Covirán', 'Av. del Salvador, 80', 0, 'coviran.png', '', '​​​​Covirán es una Cooperativa de detallistas dedicada a la distribución alimentaria y una de las empresas más importantes de la economía social española y portuguesa, con una larga trayectoria. Una empresa de origen granadino que comenzó su actividad en 1961 y que se ha convertido hoy en un referente de su sector en la Península Ibérica, con más de 2.855 supermercados.', 1, 3),
(24, 14, 'Trady’s', 'C/ Jesús Elorz, 5', 601015884, 'tradys.png', '', 'Orientada al autoempleo y definida desde la central como un “concepto de ultra proximidad”, la marca está integrada en el Grupo Covalco, que también gestiona la enseña Coaliment, con la que comparte los siguientes valores diferenciales.', 1, 3),
(25, 15, 'Carnicería Aranda', 'C/ Don Jesús Elorz, 6', 948734085, 'aranda.png', '', 'La Carnicería Aranda es un establecimiento generacional que desde hace más de 25 años cuenta con productos ecológicos, gracias a nuestro convencimiento sobre la agricultura y ganadería ecológica. Al consumir carne ecológica estas comiendo sano, un alimento saludable, sin venenos, ni pesticidas, ni colorantes, ni antioxidantes, ni hormonas, ni sustancias que aportan gusto y sabor de forma artificial.', 1, 3),
(26, 16, 'Carnicería Ortega', 'C/ Congreso, 5', 948734575, 'ortega.jpg', '', 'Una carnicería es un establecimiento donde se comercializan diferentes tipos de carnes destinadas al consumo humano. Generalmente en la carnicería se realizan tareas de procesado finales tales como el despiece y picado de las carnes. El equipamiento mínimo de una carnicería consta de un refrigerador industrial, un soporte para el despiece, un conjunto de cuchillos y un mostrador refrigerado. Las personas que realizan dichas tareas en las carnicerías reciben el nombre de carnicero.', 1, 3),
(27, 17, 'Carnicería Inda', 'Pza. de los Fueros, 9', 948734157, 'inda.jpg', '', 'Desde la época romana el oficio de carnicero estuvo reglamentado, diversificado y a veces dotado de ciertos privilegios. En la edad media europea era un cargo hereditario. En 1096 se creó el primer establecimiento de venta de carne en París (actual Place du Châtelet) de esta forma se inició la casta de la Grande-Boucherie en manos de unas familias determinadas que fueron poco a poco haciéndose más ricas (eran solo unas 20 familias aproximadamente). Los estatutos de 1589 en Francia obligaron a lo', 1, 3),
(28, 18, 'Ajos Gomez', 'Av. del Salvador, 96', 948734231, 'gomez.jpg', '', 'Los mejores ajos,de Falces,de Nafarroa y de todo el país. Pruébalo ,iras a por más,seguro. AJOS GÓMEZ,LOS MEJORES!!!!', 1, 3),
(29, 19, 'Placido Tainta Ausejo', 'C/ San Andrés, Nº 1', 686589862, 'tainta.jpg', '', 'Placido Tainta es un agricultor dedicado al cultivo de alimentos ecológicos, siendo uno de sus productos principales el ajo rojo de Falces. En esta página podrá encontrar información sobre nuestros métodos de producción 100% ecológicos y nuestros productos. La agricultura ecológica también conocida como biológica u orgánica, es una forma de cultivar y cuidar la tierra y de criar el ganado de manera respetuosa con la Naturaleza, sin utilizar productos químicos tóxicos (abonos, pesticidas, herbici', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotienda`
--

CREATE TABLE `tipotienda` (
  `idTipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipotienda`
--

INSERT INTO `tipotienda` (`idTipo`, `nombre`, `foto`) VALUES
(1, 'Alimentacion', 'alimentacion.jpg'),
(2, 'Bodegas', 'bodegas.jpg'),
(3, 'Electricidad e Informatica', 'electricidad.jpg'),
(4, 'Farmacia', 'farmacia.jpg'),
(5, 'Floristeria', 'floristeria.jpg'),
(6, 'Peluqueria', 'peluqueria.jpg'),
(7, 'Talleres', 'talleres.jpg'),
(8, 'Transporte', 'transporte.jpg'),
(9, 'Veterinario', 'veterinario.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `apellidos`, `correo`, `password`, `admin`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', 'admin', 1),
(2, 'Jose Felix', 'Gurucharri Bailos', 'jose@jose.com', 'jose', 3),
(3, 'Isidoro', 'Baleztena', 'isidoro@isidoro.com', 'isidoro', 4),
(4, 'Carlos', 'Granada', 'granada@granada.com', 'granada', 5),
(5, 'Angel', 'Aguirre ', 'aguirre@aguirre.com', 'aguirre', 6),
(6, 'Inurrieta', 'Inurrieta', 'inurrieta@inurrieta.com', 'inurrieta', 7),
(7, 'Armendariz', 'Armendariz', 'armendariz@armendariz.com', 'armendariz', 8),
(8, 'Alberto', 'Armendariz Rubio', 'alberto@alberto.com', 'alberto', 9),
(9, 'Taxi', 'Gurucharri', 'taxi@taxi.com', 'taxi', 11),
(10, 'Autobuses', 'Sanchez', 'sanchez@sanchez.com', 'sanchez', 12),
(11, 'Floristeria', 'Maite', 'maite@maite.com', 'maite', 10),
(12, 'dia', 'dia', 'dia@dia.com', 'dia', 22),
(13, 'coviran', 'coviran', 'coviran@coviran.com', 'coviran', 23),
(14, 'tradys', 'tradys', 'tradys@tradys.com', 'tradys', 24),
(15, 'Aranda', 'Aranda', 'aranda@aranda.com', 'aranda', 25),
(16, 'Ortega', 'Ortega', 'ortega@ortega.com', 'ortega', 26),
(17, 'Inda', 'Inda', 'inda@inda.com', 'inda', 27),
(18, 'Gomez', 'Gomez', 'gomez@gomez.com', 'gomez', 28),
(19, 'Tainta', 'Tainta', 'tainta@tainta.com', 'tainta', 29),
(20, 'Baleztena', 'Baleztena', 'baleztena@baleztena.com', 'baleztena', 13),
(21, 'Alberto', 'Soto Armendariz', 'soto@soto.com', 'soto', 14),
(22, 'Ibañez', 'Ibañez', 'ibañez@ibañez.com', 'ibañez', 15),
(23, 'Victoria', 'Eza', 'eza@eza.com', 'eza', 16),
(24, 'El Salvador', 'Salvador', 'salvador@salvador.com', 'salvador', 17),
(25, 'Falcestyle', 'Falcestyle', 'falcestyle@falcestyle.com', 'falcestyle', 18),
(26, 'Impacto', 'Impacto', 'impacto@impacto.com', 'impacto', 19),
(27, 'Aroma', 'Aroma', 'aroma@aroma.com', 'aroma', 20),
(28, 'Leire', 'Leire', 'leire@leire.com', 'leire', 21),
(29, 'Sara', 'Gurucharri', 'sara@guru.com', 'sara', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idTienda` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idStock`),
  ADD KEY `fkTienda2` (`idTienda`),
  ADD KEY `fkProducto2` (`idProducto`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`idTienda`),
  ADD KEY `fkUsuario2` (`idUsuario`),
  ADD KEY `fkTipoTienda` (`idTipo`);

--
-- Indices de la tabla `tipotienda`
--
ALTER TABLE `tipotienda`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `fkUsuario` (`idUsuario`),
  ADD KEY `fkProducto` (`idProducto`),
  ADD KEY `fkTienda` (`idTienda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `idStock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `idTienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tipotienda`
--
ALTER TABLE `tipotienda`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fkProducto2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkTienda2` FOREIGN KEY (`idTienda`) REFERENCES `tiendas` (`idTienda`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD CONSTRAINT `fkTipoTienda` FOREIGN KEY (`idTipo`) REFERENCES `tipotienda` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkUsuario2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fkProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkTienda` FOREIGN KEY (`idTienda`) REFERENCES `tiendas` (`idTienda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
