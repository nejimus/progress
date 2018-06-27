-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2018 a las 19:30:08
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `progress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animes`
--

CREATE TABLE `animes` (
  `idAnime` int(3) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `title` varchar(80) NOT NULL,
  `sinopsis` text NOT NULL,
  `episodios` int(3) NOT NULL,
  `fuente` enum('Novela Ligera','Manga','Original','Juego') NOT NULL,
  `temporada` varchar(25) NOT NULL,
  `precuela` int(3) NOT NULL,
  `secuela` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `animes`
--

INSERT INTO `animes` (`idAnime`, `titulo`, `title`, `sinopsis`, `episodios`, `fuente`, `temporada`, `precuela`, `secuela`) VALUES
(1, 'Shingeki no Kyojin', 'Attack on Titan', 'Hace siglos, la humanidad fue masacrada hasta casi su extinción por monstruosas criaturas humanoides llamadas titanes. Para asegurar su supervivencia, los remanentes de la humanidad comenzaron a vivir dentro de barreras defensivas, resultando en cien años sin un solo encuentro titánico. Sin embargo, esa frágil calma pronto se rompe cuando un colosal titán logra romper la supuestamente inexpugnable muralla exterior, reiniciando la lucha por la supervivencia contra las abominaciones devoradoras de hombres.', 25, 'Manga', 'Primavera 2013', 0, 0),
(2, 'Fate/Zero', 'Fate/Zero', 'Fate/Zero describe los eventos 10 años antes de la noche de Fate/stay. El tan odiado \"Asesino de Magos\" Kiritsugu Emiya es contratado por los Einzberns, con el matrimonio con su única hija Irisviel como contrato vinculante. Kiritsugu está ahora en el centro de un despiadado juego de supervivencia. Acompañado por su propio familiar, Saber, el famoso mercenario pronto encuentra a su mayor oponente en Kirei Kotomine, un sacerdote que busca la salvación del vacío dentro de sí mismo en busca de Kiritsugu.', 12, 'Novela Ligera', 'Otoño 2011', 0, 3),
(3, 'Fate/Zero 2nd Season', 'Fate/Zero Season 2', 'La batalla por el Santo Grial continúa, con más vidas perdidas y más secretos revelados. Cuando caiga el telón, ¿quién saldrá victorioso? Y lo que realmente significa \"victorioso\" es aún más cuestionable.', 12, 'Novela Ligera', 'Primavera 2012', 2, 4),
(4, 'Fate/stay night', 'Fate/stay night', 'Después de que un misterioso infierno mata a su familia, Shirou es salvado y adoptado por Kiritsugu Emiya, quien le enseña los caminos de la magia y la justicia. Una noche, años después de la muerte de Kiritsugu, Shirou se encuentra atrapado en medio de un encuentro mortal entre dos Siervos. Milagrosamente, sobrevive, pero el Siervo regresa para terminar lo que empezó. En su desesperación, Shirou convoca a su propio sirviente, Saber. Ahora los dos deben participar en la Quinta Guerra del Santo Grial.', 24, 'Novela Ligera', 'Invierno 2006', 3, 0),
(5, 'Shigatsu wa Kimi no Uso', 'Your Lie in April', 'La música acompaña el camino del metrónomo humano, el prodigioso pianista Kousei Arima. Pero tras el fallecimiento de su madre, Saki Arima, Kousei cae en una espiral descendente que le impide escuchar el sonido de su propio piano.', 22, 'Manga', 'Otoño 2014', 0, 0),
(6, 'Hai to Gensou no Grimgar', '', 'Miedo, supervivencia, instinto. Arrojados a una tierra extraña con nada más que recuerdos confusos y el conocimiento de su nombre, sólo pueden sentir estas tres emociones resonando en lo más profundo de sus almas. A un grupo de desconocidos no se les da otra opción que aceptar el único trabajo remunerado en este mundo de juego -el papel de un soldado en el Ejército de Reserva- y eliminar cualquier cosa que amenace la paz en su nuevo mundo, Grimgar.', 12, 'Novela Ligera', 'Invierno 2016', 0, 0),
(7, 'Haikyuu!!', 'Haikyu!!', 'Inspirado después de ver en acción a un as del voleibol apodado \"Little Giant\", Shouyou Hinata, revive el club de voleibol de su escuela secundaria. El equipo recién formado incluso llega a un torneo; sin embargo, es aplastado brutalmente por el \"Rey de la Corte\", Tobio Kageyama. Hinata promete superar a Kageyama, así que después de graduarse de la escuela secundaria, se une al equipo de voleibol de la Escuela Secundaria Karasuno para descubrir que su rival, Kageyama, es ahora su compañero de equipo.', 25, 'Manga', 'Primavera 2014', 0, 0),
(8, 'Kill la Kill', '', 'Tras el asesinato de su padre, Ryuuko Matoi ha estado vagando en busca de su asesino. Siguiendo su única pista -la mitad de la hoja tijera- llega a la prestigiosa Honnouji Academy. La academia está gobernada por la presidenta del consejo estudiantil Satsuki Kiryuuin junto a sus poderosos subordinados, los Elite Four. En la jerarquía brutalmente competitiva de la escuela, Satsuki otorga a aquellos que se encuentran en la cima ropa especial llamada \"Goku Uniforms\",  que le otorgan al portador habilidades sobrehumanas únicas.', 24, 'Manga', 'Otoño 2013', 0, 0),
(9, 'Ansatsu Kyoushitsu', '', 'Cuando una misteriosa criatura corta la luna por la mitad, los estudiantes de la clase 3-E de la Escuela Secundaria Kunugigaoka se enfrentan a una enorme tarea: asesinar a la criatura responsable del desastre antes de que la Tierra sufra un destino similar. Además, los inadaptados de 3-E pronto descubren que la extraña bestia de tentáculos es algo más que indomable: ¡es el mejor maestro que han tenido!', 22, 'Manga', 'Invierno 2015', 0, 0),
(10, 'Psycho-Pass', 'Psycho-Pass', 'En el siglo XXII, Japón aplica el Sistema Sibil, un medio objetivo de determinar el nivel de amenaza de cada ciudadano examinando su estado mental en busca de signos de intención delictiva, conocido como su Psycho-Pass. Los inspectores defienden la ley subyugando a cualquiera que albergue la más mínima mala voluntad; junto a ellos están los agentes del orden, inspectores hartos que se han convertido en criminales latentes, a los que se les concede una libertad relativa a cambio de llevar a cabo el trabajo sucio de los inspectores.', 22, 'Original', 'Otoño 2012', 0, 0),
(11, 'Boku no Hero Academia', 'My Hero Academia', 'La aparición de \"rarezas\", nuevas superpotencias descubiertas, ha ido aumentando constantemente a lo largo de los años, con el 80 por ciento de la humanidad poseyendo varias habilidades, desde la manipulación de los elementos hasta el cambio de forma. Esto deja al resto del mundo completamente impotente, e Izuku Midoriya es uno de ellos.', 13, 'Manga', 'Primavera 2016', 0, 0),
(12, 'Haikyuu!! Second Season', 'Haikyu!! 2nd Season', 'Después de su participación en el Inter-High, el equipo de voleibol de la Escuela Secundaria de Karasuno intenta reorientar sus esfuerzos, con el objetivo de conquistar el torneo de primavera.', 25, 'Manga', 'Otoño 2015', 7, 15),
(13, 'Koutetsujou no Kabaneri', '', 'El mundo se encuentra en medio de la revolución industrial, cuando criaturas horribles emergen de un virus misterioso, rasgando la carne de los seres humanos para saciar su apetito interminable. La única manera de matar a estos seres, conocidos como \"Kabane\", es destruyendo sus corazones recubiertos de acero. Sin embargo, si es mordido por uno de estos monstruos, la víctima está condenada a un destino peor que la muerte, ya que los caídos se levantan una vez más para unirse a las filas de sus compañeros no-muertos.', 12, 'Original', 'Primavera 2016', 0, 0),
(14, 'Orange', 'Orange', 'El primer día de Naho Takamiya en su segundo año de bachillerato ha tenido un comienzo incómodo. Después de levantarse tarde, recibe una extraña carta dirigida a ella. Sin embargo, la carta es de ella misma - ¡10 años en el futuro! Al principio, Naho se muestra escéptica con respecto a la nota; sin embargo, después de presenciar varios de los eventos descritos, se da cuenta de que la carta realmente es de su yo de 26 años.', 13, 'Manga', 'Verano 2016', 0, 0),
(15, 'Haikyuu!!: Karasuno Koukou VS Shiratorizawa Gakuen Koukou', 'Haikyu!! 3rd Season', '¡La tercera temporada de Haikyuu!', 10, 'Manga', 'Otoño 2016', 12, 0),
(16, 'Shingeki no Kyojin Season 2', 'Attack on Titan Season 2', 'Durante siglos, la humanidad ha sido cazada por gigantescos y misteriosos depredadores conocidos como los Titanes. Tres poderosas murallas -María, Rosa y Sheena- proporcionaron paz y protección a la humanidad durante más de cien años. Esa paz, sin embargo, se rompió cuando apareció el Coloso Titán y el Titán Blindado y destruyó el muro más exterior, el Muro María. Obligada a retirarse detrás de la Rosa de la Muralla, la humanidad esperó con ansiedad a que los Titanes reaparecieran y destruyeran una vez más su refugio seguro.', 12, 'Manga', 'Primavera 2017', 0, 0),
(17, 'Sword Art Online', 'Sword Art Online', 'Todo empieza en el año 2022, para concluir en el 2025, cuando se desarrolla un VRMMORPG (Virtual Reality Massive Multiplayer Online Role Playing Game) llamado Sword Art Online (SAO). Este videojuego consta de 100 pisos, que contienen un jefe cada uno, precedidos de largas mazmorras. Sin embargo en el primer día de estreno en el mercado 10,000 jugadores se conectan inmediatamente al mismo, pero luego de unos minutos desde su conexión, descubren que la opción de desconexión del mismo desaparece misteriosamente.', 25, 'Novela Ligera', 'Verano 2012', 0, 0),
(18, 'Boku no Hero Academia 2nd Season', 'My Hero Academia 2', 'En la Academia UA, ni siquiera un ataque violento puede interrumpir su evento más prestigioso: el festival deportivo escolar. Conocido en todo Japón, este festival es una oportunidad para que los aspirantes a héroes muestren sus habilidades, tanto al público como a potenciales reclutadores.', 25, 'Manga', 'Primavera 2017', 0, 0),
(19, 'Fate/Apocrypha', '', 'In the city of Trifas, two factions will fight for the control of the sacred relic, each of them possessing their own team of seven Servants: the Black Faction whose members are part of Yggdmillennia, protecting the Grail, and the Red Faction whose members were sent by the Mage\'s Association, trying to take the Grail back. For an event of this scale, the Grail itself summons its own Servant, the holy Ruler, to oversee the conflict.', 25, 'Novela Ligera', 'Verano 2017', 0, 0),
(20, 'Dragon Ball Super', '', 'Siete años después de los eventos de Dragon Ball Z, la Tierra está en paz, y su gente vive libre de cualquier peligro que acecha en el universo. Sin embargo, esta paz es efímera; un mal dormido despierta en la oscuridad de la galaxia: Beerus, el despiadado Dios de la Destrucción.', 131, 'Manga', 'Verano 2015', 0, 0),
(21, 'Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka', 'Is It Wrong to Try to Pick Up Girls in a Dungeon?', 'Narra las aventuras de Bell Cranel, un joven ingenuo que espera convertirse en el mayor aventurero. Después de un encuentro casual con la diosa Hestia, sus sueños se acercan un poco más a la realidad. Con su apoyo, Bell se embarca en una búsqueda fantástica mientras se adentra en las catacumbas llenas de monstruos conocidas como el \"Calabozo\". La muerte acecha en cada rincón de las cavernosas profundidades de este laberinto, y un misterioso poder se mueve entre las sombras.', 13, 'Novela Ligera', 'Primavera 2015', 0, 0),
(22, 'Sword Art Online II', 'Sword Art Online II', 'Un año después de escapar de SAO, Kazuto Kirigaya ha vuelto al mundo real. Sin embargo, su paz es efímera ya que un nuevo incidente ocurre en un juego llamado Gun Gale Online, donde un jugador llamado Death Gun parece estar matando gente en el mundo real al dispararles dentro del juego. Cuando las autoridades se acercan a Kazuto para ayudar en la investigación de los asesinatos, Kazuto asume su personaje de Kirito una vez más y entra en Gun Gale Online, con la intención de detener al asesino.', 24, 'Novela Ligera', 'Verano 2014', 0, 0),
(23, 'Sword Art Online Alternative: Gun Gale Online', 'SAO Alternative Gun Gale Online', 'Karen Kohiruimaki siempre se sintió fuera de lugar en el mundo real. Debido a su altura extrema, le resultaba difícil hacer amistad con otras niñas de su edad. Todo cambia cuando conoce a VR y Gun Gale Online. En GGO, Karen es libre de jugar al lindo avatar chibi de sus sueños! ¿Puede Karen encontrar amistad en este MMO cargado de balas...?', 12, 'Novela Ligera', 'Primavera 2018', 0, 0),
(24, 'Death Parade', 'Death Parade', 'Después de la muerte, no hay cielo ni infierno, sólo una barra que se interpone entre la reencarnación y el olvido. Allí el asistente, uno tras otro, desafiará a los pares de los recién fallecidos a un juego al azar en el que su destino de ya sea ascender a la reencarnación o caer en el vacío se apostará.', 12, 'Original', 'Invierno 2015', 0, 0),
(25, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'Re:ZERO -Starting Life in Another World-', 'Cuando Subaru Natsuki abandona la tienda, lo último que espera es ser arrojado a un mundo de fantasía. Poco después de su llegada, es atacado por algunos matones. Armado con sólo una bolsa de comestibles y un teléfono móvil ahora inútil, es golpeado hasta quedar hecho papilla. Afortunadamente, una chica misteriosa llamada Satella lo salva. Para agradecer a la chica honesta y de buen corazón, Subaru se ofrece a ayudarla en su búsqueda.', 25, 'Novela Ligera', 'Primavera 2016', 0, 0),
(26, 'Danmachi Sword Oratoria', 'Sword Oratoria: Is it Wrong to Try to Pick Up Girls in a Dungeon? On the Side', 'Después de haber descendido sobre este mundo, los dioses han creado gremios donde los aventureros pueden poner a prueba su temple. Estos gremios, conocidos como \"familia\", otorgan a los aventureros la oportunidad de explorar, reunirse, cazar o simplemente divertirse.', 12, 'Novela Ligera', 'Primavera 2017', 0, 0),
(27, 'Cardcaptor Sakura: Clear Card-hen', 'Cardcaptor Sakura: Clear Card', 'Sakura, ahora con catorce años de edad, comienza la escuela secundaria junto a sus amigos, entre ellos Syaoran, que acababa de regresar a Tomoeda. Después de tener un sueño con una misteriosa figura camuflada, todas las cartas de Sakura quedan en blanco y se vuelven impotentes, por lo que comienza su búsqueda para averiguar qué es lo que está pasando. Al hacerlo, Sakura y sus aliados descubren y capturan nuevas cartas transparentes usando una nueva llave.', 22, 'Manga', 'Invierno 2018', 0, 0),
(28, 'Nanatsu no Taizai: Imashime no Fukkatsu', 'The Seven Deadly Sins: Revival of the Commandments', 'Nanatsu no Taizai está de vuelta para otra temporada. Una vez más seguiremos a los pecados capitales, un grupo de caballeros legendarios que una vez protegieron a la nación de Britania, antes de que traicionaran a sus camaradas y tratarán de derrocar al rey. Enemigos aún más peligrosos se asoman en el horizonte, ya que el temible Clan de los Demonios, que fue sellado hace más de 300 años luego de casi destruir el mundo, esta planeando su terrible regreso.', 24, 'Manga', 'Invierno 2018', 0, 0),
(29, 'Akatsuki no Yona', 'Yona of the Dawn', 'La Princesa Yona vive una vida de lujo y tranquilidad, completamente protegida de los problemas del aparentemente pacífico Reino de Kouka; sin embargo, el repentino asesinato del rey y la traición de su querido primo Su-won ponen la vida de Yona en peligro mortal. Obligada a escapar sólo con Son Hak, su amigo de la infancia y guardaespaldas, la ingenua princesa pronto descubre que Kouka no es el lugar idílico que imaginaba que sería.', 24, 'Manga', 'Otoño 2014', 0, 0),
(30, 'PERSONA5 the Animation', 'Persona 5 the Animation', 'Ren Amamiya está a punto de ingresar a su segundo año de secundaria, luego de ser transferido a la Academia Shujin en Tokio. Después de un particular incidente, su Persona despierta, y junto con sus amigos forman los \"Phantom Thieves of Hearts\" para reformar los corazones de los adultos corrompidos. Al mismo tiempo, una serie de crímenes extraños e inexplicables ocurren uno tras otro. Mientras por el día viven una vida normal como estudiantes, durante la noche imparten justicia como los Phantom Thieves.', 24, 'Juego', 'Primavera 2018', 0, 0),
(31, 'Boku no Hero Academia 3rd Season', 'My Hero Academia 3', 'Tercera temporada de Boku no Hero Academia.', 25, 'Manga', 'Primavera 2018', 0, 0),
(32, 'Black Clover', 'Black Clover', 'Asta y Yuno fueron abandonados en la misma iglesia el mismo día. Criados juntos cuando eran niños, conocieron al Rey Mago, un título otorgado al mago más fuerte del reino, y prometieron que competirían entre ellos por el puesto del próximo Rey Mago. Sin embargo, a medida que crecían, la diferencia entre ellos se hizo evidente. Mientras que Yuno es capaz de manejar la magia con un poder y control asombrosos, Asta no puede usar la magia en absoluto e intenta desesperadamente despertar sus poderes entrenando físicamente. ', 51, 'Manga', 'Otoño 2017', 0, 0),
(33, 'Shingeki no Kyojin Season 3', 'Attack on Titan Season 3', 'Tercera temporada de la serie de anime Shingeki no Kyojin.', 0, 'Manga', 'Verano 2018', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animes_genero`
--

CREATE TABLE `animes_genero` (
  `Anime` int(3) NOT NULL,
  `Genero` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `animes_genero`
--

INSERT INTO `animes_genero` (`Anime`, `Genero`) VALUES
(1, 1),
(1, 7),
(1, 9),
(1, 33),
(1, 37),
(2, 1),
(2, 9),
(2, 38),
(3, 1),
(3, 9),
(3, 38),
(3, 39),
(4, 1),
(4, 9),
(4, 17),
(4, 26),
(4, 38),
(5, 7),
(5, 21),
(5, 26),
(5, 28),
(5, 33),
(6, 1),
(6, 2),
(6, 7),
(6, 9),
(7, 4),
(7, 7),
(7, 28),
(7, 33),
(7, 36),
(8, 1),
(8, 4),
(8, 8),
(8, 28),
(8, 37),
(9, 1),
(9, 4),
(9, 28),
(9, 33),
(10, 1),
(10, 24),
(10, 25),
(10, 29),
(11, 1),
(11, 4),
(11, 28),
(11, 33),
(11, 37),
(12, 1),
(12, 4),
(12, 28),
(12, 33),
(12, 37),
(13, 1),
(13, 7),
(13, 9),
(13, 14),
(14, 7),
(14, 26),
(14, 28),
(14, 29),
(14, 31),
(15, 4),
(15, 7),
(15, 28),
(15, 33),
(15, 36),
(16, 1),
(16, 7),
(16, 9),
(16, 33),
(16, 37),
(17, 1),
(17, 2),
(17, 9),
(17, 10),
(17, 26),
(18, 1),
(18, 4),
(18, 28),
(18, 33),
(18, 37),
(20, 2),
(21, 1),
(21, 2),
(21, 4),
(21, 9),
(21, 26),
(22, 1),
(22, 2),
(22, 9),
(22, 10),
(22, 26),
(23, 1),
(23, 9),
(23, 10),
(23, 20),
(23, 29),
(24, 7),
(24, 10),
(24, 22),
(24, 25),
(24, 39),
(25, 7),
(25, 9),
(25, 25),
(25, 39),
(26, 1),
(26, 2),
(26, 9),
(27, 2),
(27, 4),
(27, 9),
(27, 17),
(27, 26),
(27, 31),
(28, 1),
(28, 9),
(28, 33),
(29, 1),
(29, 2),
(29, 9),
(29, 26),
(29, 31),
(30, 1),
(30, 9),
(30, 38),
(31, 1),
(31, 4),
(31, 33),
(32, 1),
(32, 4),
(32, 9),
(32, 17),
(32, 33),
(33, 1),
(33, 7),
(33, 9),
(33, 20),
(33, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comics`
--

CREATE TABLE `comics` (
  `idComic` int(3) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(50) NOT NULL,
  `detalle` text NOT NULL,
  `linea` varchar(20) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `paginas` int(3) NOT NULL,
  `contiene` varchar(100) NOT NULL,
  `lanzamiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comics`
--

INSERT INTO `comics` (`idComic`, `titulo`, `subtitulo`, `detalle`, `linea`, `autor`, `paginas`, `contiene`, `lanzamiento`) VALUES
(1, 'La Visión 1', 'Visiones del futuro', '¡Llega una de las más aclamadas series del momento! La Visión quiere ser humano. ¿Y qué hay más humano que la familia? Ahora, la tiene. Una mujer y dos hijos. Se parecen a él, tienen sus poderes y la necesidad de confundirse con los demás. ¿Qué puede ir mal?', '100% Marvel', 'Tom King, Gabriel Hernández Walta', 144, 'The Vision v2, 1-6 USA', '2016-06-17'),
(2, 'Punisher: El Castigador 1', 'El invierno muerto', 'Frank... ¡Ha llegado la hora de volver al trabajo! Para Punisher, la muerte siempre ha sido algo sencillo. Las cosas se complican sólo cuando se trata de vivir. Greg Rucka (Batman) regresa a Marvel, con la misión de guiar el camino del vigilante por excelencia de La Casa de las Ideas. Punisher ha vuelto para servir a la justicia con todo lo que tiene... Pero el mundo criminal de Nueva York es más peligroso que nunca.', '100% Marvel', 'Greg Rucka, Marco Checchetto, Matthew Southworth', 216, 'Punisher v7, 1-9 y Spider-Island: I Love New York City USA', '2012-09-01'),
(3, 'Lobezno: El viejo Logan', '', 'Una epopeya apocalíptica protagonizada por Lobezno en el mejor estilo de Mad Max que nos lleva varias décadas hacia el futuro. Nadie sabe qué ocurrió la noche en que los héroes cayeron: Sólo que todos desaparecieron y el mal ha triunfado desde entonces. En el último medio siglo, nadie ha visto al hombre simplemente conocido como Logan. Pero algo le hará salir de las sombras. Su amigo Ojo de Halcón necesita recorrer miles de kilómetros para poner su familia a salvo. Lobezno se prepara para el viaje de su vida… Edición de lujo con un montón de extras.', 'Marvel Deluxe', 'Mark Millar, Steve McNiven', 240, 'Wolverine v3, 66-72 y Old Man Logan Giant-Size Special.', '2013-05-01'),
(4, 'Los Vengadores: Desunidos', '', '¡El cómic que lo cambió todo, reunido por primera vez en un único tomo! El poderoso equipo creativo formado por Brian Michael Bendis y David Finch tomó el mando de Los Héroes Más Poderosos de La Tierra para llevarlos más allá de lo que cualquier fan hubiera soñado jamás. La acción empieza con el regreso de un miembro del equipo que todos habían dado por muerto… ¡Y, cuando todo acabe, cualquier cosa que supieras sobre Los Vengadores formará parte del pasado! No te pierdas la dramática saga que removió los cimientos la historia del Universo Marvel.', 'Marvel Deluxe', 'Brian Michael Bendis, David Finch', 176, 'The Avengers 500-503 y Avengers: Finale USA', '2009-02-01'),
(5, 'La Visión 2', 'Poco mejor que una bestia', 'La conclusión de la más aclamada obra Marvel de los últimos tiempos. Hace algún tiempo, un robot creó una familia, y las cosas fueron bien por un tiempo. Luego llegaron las muertes, las mentiras, las traiciones, las batallas ganadas y las perdidas.', '100% Marvel', 'Tom King, Gabriel Hernández Walta', 144, 'The Vision v2, 7-12 USA', '2017-02-10'),
(6, 'The Pulse 1', 'Desde el cielo', '¡El primer tomo de la aclamada serie realizada por Brian Michael Bendis y Mark Bagley, el equipo creativo de Ultimate Spider-Man! Los viejos amigos del Daily Bugle, con J. Jonah Jameson, Robbie Robertson y Ben Urich a la cabeza, regresan a primera plana del Universo Marvel, para acoger a la nueva asesora del rotativo: Jessica Jones. Una aventura determinante en el desarrollo del Universo Marvel en general y las vidas de Spiderman y Norman Osborn en particular. ¡El camino hacia “Reinado oscuro” empezó aquí!', 'Marvel Deluxe', 'Mark Bagley, Brian Michael Bendis', 144, 'The Pulse 1-5 USA', '2010-01-01'),
(7, 'Punisher: El Castigador 2', 'El Efecto Omega', '¡Llega \"El Efecto Omega\", una historia que envuelve las vidas de Punisher, Daredevil y Spiderman alrededor de un artefacto que contiene algunos de los peores secretos del Universo Marvel y que podría cambiar la vida de nuestros héroes! \"No confíes en nadie, dispara contra todos\", es lo único en lo que puede pensar Frank Castle en una situación así. Pero, cuando se cierre el caso, El Castigador tendrá que enfrentarse a una alianza entre antiguos agentes de Hydra e IMA para acabar con él.', '100% Marvel', 'Mark Waid, Greg Rucka, Matthew Southworth', 200, 'Punisher v7, 10-16, Avenging Spider-Man 6 y Daredevil v3, 11 USA', '2013-02-01'),
(8, 'Capitana Marvel 1', 'Anhelando volar', 'Carol Danvers tiene un nuevo nombre, una nueva misión y todo el poder que necesita para hacer de su vida un auténtico infierno. Kelly Sue DeConnick, la guionista de Vengadores Reuníos, presenta su colección más personal dentro de La Casa de las Ideas, con el espectacular arte de Dexter Soy y Emma Ríos, y un primer arco argumental en el que un desafío del pasado pondrá en jaque a la Capitana Marvel. \"9 sobre 10\", ha dicho IGN.', '100% Marvel', 'Kelly Sue Deconnick, Dexter Soy, Emma Ríos', 136, 'Captain Marvel v6, 1-6 USA', '2013-05-01'),
(9, 'Lobezno 1: Enemigo del Estado', '', 'Con la primera parte, de dos, de la etapa completa de Lobezno en manos de Mark Millar y John Romita Jr. ¡Una gigantesca aventura en la que la más mortal arma viviente cae en las peores manos posibles! Aliado con sus peores enemigos, Lobezno lucha a muerte contra La Patrulla-X, Los 4 Fantásticos, SHIELD y muchos más. ¿Por qué quiere destruir aquello que le es más querido? ¿Cómo responderán sus amigos ante este reto? ¿Alguno de ellos será capaz de detener a Logan en la más sangrienta escalada de violencia? Edición especial llena de extras.', 'Marvel Deluxe', 'Mark Millar, John Romita Jr.', 160, 'Wolverine vol. 3, 20-25 USA', '2009-04-01'),
(10, 'Lobezno 2: Agente de SHIELD', '', '¡La conclusión de la atronadora etapa de Mark Millar y John Romita Jr. en la serie del mutante de las garras de Adamántium! Puede que Lobezno haya sido derrotado y ahora esté bajo la custodia de SHIELD… Pero, ¿a qué precio? Mientras La Patrulla-X lloran la pérdida de uno de sus compañeros, Hydra celebra la coronación de un nuevo líder y La Mano continúa con su reinado de terror. ¿Conseguirán los héroes desprogramar a Lobezno a tiempo para que detenga la masacre? Además: ¡El origen secreto del Gorgón!', 'Marvel Deluxe', 'Mark Millar, John Romita Jr.', 160, 'Wolverine vol. 3, 26-31 USA', '2009-08-01'),
(11, 'Spiderman: Entre los muertos', '', 'La peor pesadilla de Spiderman se ha hecho realidad. Uno de sus enemigos ha descubierto su identidad secreta y está usando esa información para golpear a la familia de Peter Parker. Ahora, Tía May ha sido secuestrada, y Mary Jane puede ser la siguiente. Forzado a un terrible juego del gato y el ratón, Spidey tendrá que enfrentarse a todos sus grandes enemigos, en una de sus mejores y más excitantes sagas del siglo XXI.', 'Marvel Integral', 'Mark Millar, Terry Dodson, Frank Cho', 312, 'Marvel Knights: Spider-Man 1-12 USA', '2017-06-21'),
(12, 'Spiderman: Nuevos Vengadores', '', 'Con un arco argumental que supone un giro para la vida de Peter Parker y su familia. El trepamuros forma ahora parte de Los Nuevos Vengadores… ¡Y eso significa que Spiderman, tía May y Mary Jane tienen un nuevo hogar! Pero ningún nuevo comienzo es fácil, y éste no iba a ser diferente. Por si los problemas domésticos no fueran suficientes, cierta organización terrorista mundial se prepara a conquistar el mundo… ¡Hail HYDRA!', 'Marvel Deluxe', 'Mike Deodato, Joe Michael Straczynski', 144, 'Amazing Spider-Man 519-524 USA', '2010-01-01'),
(13, 'Astonishing X-Men 1', 'El Don', '¡Al fin recopilada, en lujosos tomos cargados de extras, la obra maestra mutante cortesía de Joss Whedon y John Cassaday! Un cómic que marcó una nueva era para La Patrulla-X. Cíclope y Emma Frost reinventan el equipo de mutantes con el objetivo de asombrar al mundo que les teme y les odia. Pero, al tiempo que entra en escena la nueva encarnación de hombres-X, un sorprendente anuncio consigue los principales titulares en todas partes: Alguien ha descubierto como eliminar el gen mutante y convertir en meros humanos a quien así lo desee. ¡La cura está disponible!', 'Marvel Deluxe', 'Joss Whedon, John Cassaday', 160, 'Astonishing X-Men vol. 3, 1-6 USA', '2009-03-01'),
(14, 'Astonishing X-Men 2', 'Peligroso', '¡Con “Peligroso”, el segundo volumen dedicado a la obra maestra que redefinió la Franquicia Mutante! Una trágica muerte desvela la presencia de un poderoso enemigo oculto dentro del Instituto Xavier. Es el enemigo más insospechado, y no, no se trata de Magneto. Las cosas se complican de una manera que los mutantes no hubieran esperado jamás. ¿Conseguirá el grupo salvar la situación, si ni siquiera pueden confiar en sí mismos?', 'Marvel Deluxe', 'Joss Whedon, John Cassaday', 160, 'Astonishing X-Men vol. 3, 7-12 USA', '2009-07-01'),
(15, 'Capitán América: El soldado de invierno', '', '¡El legendario clásico en que se inspira la película! Durante más de cincuenta años, la Unión Soviética tuvo un agentes encubierto... un indetectable asesino conocido como El Soldado de Invierno. Ahora, ha vuelto, trabajando a las órdenes del General Lukin, que ha conseguido hacerse con un Cubo Cósmico arrebatado a Cráneo Rojo. El Capitán América ha jurado acabar con Lukin, pero en el camino se verá enfrentado contra El Soldado de Invierno, cuya verdadera identidad esconde el mayor secreto del Universo Marvel en más de medio siglo...', 'Marvel Integral', 'Steve Epting, Ed Brubaker', 352, 'Captain America v5, 1-14 USA', '2014-03-01'),
(16, 'Los Nuevos Vengadores 1', 'Fuga', '¡La saga que marcó un revolucionario nuevo comienzo en la historia de Los Héroes Más Poderosos de la Tierra! Tras la destrucción de Los Vengadores originales, una nueva amenaza sirve para que el Capitán América reúna un nuevo equipo. El destino colocará en el mismo lugar al Capi, Iron Man, Spiderman, Lobezno, Luke Cage, Daredevil y Spiderwoman. Ellos son los únicos que pueden detener una fuga masiva de presos superpoderosos de La Balsa. ¡Descubre desde la primera página los eventos que cambiaron de arriba abajo el Universo Marvel!', 'Marvel Deluxe', 'Brian Michael Bendis, David Finch', 160, 'The New Avengers 1-6 USA', '2009-09-01'),
(17, 'El Guantelete del Infinito', 'Colección Jim Starlin 3', 'Para Thanos, el Guantelete del Infinito es el Santo Grial, el premio definitivo por su adoración hacia la muerte. Con él, lo controla todo. Liderados por Adam Warlock, los superhéroes de la Tierra representan la última esperanza del Universo.', 'Héroes Marvel', 'George Pérez, Jim Starlin, Ron Lim', 288, 'The Infinity Gauntlet 1-6 USA', '2018-03-08'),
(18, 'Secret War', '', 'Los principales héroes de la Casa de las Ideas, muchos de los que luego formarán Los Nuevos Vengadores, se unen bajo las órdenes de Nick Furia para derrocar el gobierno de Latveria. Es una misión secreta, que el gobierno de EE.UU. no aprueba. Y cuando termine, será cuando empiecen los verdaderos problemas.', 'Marvel Deluxe', 'Brian Michael Bendis, Gabrielle Dell’Otto', 256, 'Secret War 1-5 y Secret War: From The Files of Nick Fury USA', '2009-05-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolladoras`
--

CREATE TABLE `desarrolladoras` (
  `idDes` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `desarrolladoras`
--

INSERT INTO `desarrolladoras` (`idDes`, `nombre`) VALUES
(1, 'Nintendo'),
(2, 'Naughty Dog'),
(3, 'SCE Santa Monica Studio'),
(4, 'Square Enix'),
(5, 'From Software'),
(6, 'CDProjekt'),
(7, 'Crystal Dynamics'),
(8, 'Game Freak'),
(9, 'Traveller\'s Tales'),
(10, 'Atlus'),
(11, 'Telltale Games'),
(12, 'The Creative Assembly'),
(13, 'Ubisoft Quebec'),
(14, 'Gearbox Software'),
(15, 'Eidos Montreal'),
(16, 'Arkane Studios'),
(17, 'Ubisoft Montreal'),
(18, 'Bioware'),
(19, 'EA DICE'),
(20, 'SEGA'),
(21, 'Insomniac Games'),
(22, 'Bandai Namco Entertainment'),
(23, 'Team ICO'),
(24, 'Supermassive Games'),
(25, 'Vicarious Visions'),
(26, 'Level 5'),
(27, 'Ninja Theory'),
(28, 'Platinum Games'),
(29, 'Guerrilla Games'),
(30, 'Spike Chunsoft'),
(31, 'Dontnod Entertainment'),
(32, 'Ubisoft Milan'),
(33, 'MercurySteam'),
(34, 'Sidebar Games'),
(35, 'Studio MDHR'),
(36, 'Irrational Games'),
(37, 'Obsidian'),
(38, 'Team Ninja'),
(39, 'Monolith Soft'),
(40, 'Tales Studio'),
(41, 'WayForward'),
(42, 'Sony'),
(43, 'ConcernedApe'),
(44, 'Quantic Dream'),
(45, 'Camelot');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos_animes`
--

CREATE TABLE `generos_animes` (
  `idGenero` int(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos_animes`
--

INSERT INTO `generos_animes` (`idGenero`, `nombre`) VALUES
(1, 'Acción'),
(2, 'Aventura'),
(3, 'Coches'),
(4, 'Comedia'),
(5, 'Demencia'),
(6, 'Demonios'),
(7, 'Drama'),
(8, 'Ecchi'),
(9, 'Fantasía'),
(10, 'Juegos'),
(11, 'Harem'),
(12, 'Hentai'),
(13, 'Histórico'),
(14, 'Horror'),
(15, 'Josei'),
(16, 'Infantil'),
(17, 'Magia'),
(18, 'Artes marciales'),
(19, 'Mecha'),
(20, 'Militar'),
(21, 'Música'),
(22, 'Misterio'),
(23, 'Parodia'),
(24, 'Policiaca'),
(25, 'Psicológica'),
(26, 'Romance'),
(27, 'Samurai'),
(28, 'Colegio'),
(29, 'Sci-Fi'),
(30, 'Seinen'),
(31, 'Shoujo'),
(32, 'Shoujo Ai'),
(33, 'Shounen'),
(34, 'Shounen Ai'),
(35, 'Espacio'),
(36, 'Deportes'),
(37, 'Superpoderes'),
(38, 'Supernatural'),
(39, 'Thriller'),
(40, 'Vampiros'),
(41, 'Yaoi'),
(42, 'Yuri');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos_juegos`
--

CREATE TABLE `generos_juegos` (
  `idGenero` int(3) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos_juegos`
--

INSERT INTO `generos_juegos` (`idGenero`, `nombre`) VALUES
(1, 'Acción'),
(2, 'Acción táctica'),
(3, 'Aventura'),
(4, 'Hack and Slash'),
(5, 'Lucha'),
(6, 'Plataformas'),
(7, 'Primera persona (FPS)'),
(8, 'Shoot\'Em Up'),
(9, 'Shooter'),
(10, 'Supervivencia'),
(11, 'Ciencia Ficción'),
(12, 'Fantasía'),
(13, 'Humor'),
(14, 'Misterio'),
(15, 'Terror'),
(16, 'Rol'),
(17, 'Acción RPG'),
(18, 'Combate por turnos'),
(19, 'Puzle'),
(20, 'Música'),
(21, 'Estrategia'),
(22, 'Gestión y Temáticos'),
(23, 'Vida Virtual'),
(24, 'Aventura interactiva'),
(25, 'Walking Simulator'),
(26, 'Deportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos_series`
--

CREATE TABLE `generos_series` (
  `idGenero` int(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generos_series`
--

INSERT INTO `generos_series` (`idGenero`, `nombre`) VALUES
(1, 'Acción'),
(2, 'Animación'),
(3, 'Artes Marciales'),
(4, 'Aventura'),
(5, 'Biografía'),
(6, 'Ciencia ficción'),
(7, 'Clásico'),
(8, 'Comedia'),
(9, 'Comedia dramática'),
(10, 'Comedia musical'),
(11, 'Crimen'),
(12, 'Deporte'),
(13, 'Desconocido'),
(14, 'Dibujos animados'),
(15, 'Documental'),
(16, 'Doramas'),
(17, 'Drama'),
(18, 'Épico'),
(19, 'Erótico'),
(20, 'Espionaje'),
(21, 'Familia'),
(22, 'Fantasía'),
(23, 'Guerra'),
(24, 'Histórico'),
(25, 'Judicial'),
(26, 'Médico'),
(27, 'Musical'),
(28, 'Romántico'),
(29, 'Show'),
(30, 'Suspense'),
(31, 'Teleserie'),
(32, 'Terror'),
(33, 'Webisode'),
(34, 'Western');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `idJuego` int(5) NOT NULL,
  `titulo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(520) CHARACTER SET latin1 NOT NULL,
  `desarrollador` int(3) DEFAULT NULL,
  `lanzamiento` date NOT NULL,
  `universo` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`idJuego`, `titulo`, `title`, `descripcion`, `desarrollador`, `lanzamiento`, `universo`) VALUES
(1, 'Uncharted 4: El Desenlace del Ladrón', 'Uncharted 4: A Thief\'s End', 'Acción, aventuras y plataformas con ritmo cinematográfico de manos de los creadores de The Last of Us y Crash Bandicoot, entre muchos otros, que promete elevar el listón de espectacularidad de los juegos anteriores con un sinfín de escenas de ritmo trepidante dispuestas a llevarnos al límite en tiroteos, acrobacias y secuencias de plataformas.', 2, '2016-05-10', 1),
(2, 'Borderlands: Una Colección muy Guapa', 'Borderlands: The Handsome Collection', 'Pack que incluye Borderlands 2 y Borderlands: The Pre-Sequel para Xbox One y PlayStation 4, con todos los contenidos descargables de ambos incluidos.', 14, '2015-03-27', 3),
(3, 'Ratchet & Clank', 'Ratchet & Clank', 'Reimaginación para PS4 del clásico videojuego de Insomniac Games, Ratchet y Clank. Esta versión especial para PlayStation 4 incluye controles actualizados sobre la versión original de PS2, nuevas armas e inventos como el Pixelador o el Molatrón, nuevas secciones de juego actualizadas, y una jugabilidad totalmente nueva para Clank. Visualmente el juego es una delicia tanto a nivel de fondos como de sus impecables animaciones y producción sonora.', 21, '2016-04-20', NULL),
(4, 'Far Cry Primal', 'Far Cry Primal', 'Far Cry Primal lleva a la Edad de Piedra, una época de peligros en la que los mamuts gigantes y los tigres dientes de sable dominaban la Tierra y la humanidad estaba en la cola de la cadena alimentaria. Bajo el rol de Takkar, un cazador veterano de la tribu de los Wenja, tu objetivo consiste en repeler a los depredadores y superar en ingenio a las tribus enemigas para conquistar la tierra de Oros y convertirte en el superdepredador.', 17, '2016-02-23', NULL),
(5, 'Back to the Future: The Game 30th Anniversary Edition', 'Back to the Future: The Game 30th Anniversary Edition', 'Una aventura mítica que trasciende al tiempo y al espacio. Revive la epopeya de Marty McFly en el tiempo de la mano de Telltale y sus aventuras narrativas. Una revisión del juego de PC con gráficos mejorados y nuevos añadidos en la interpretación.', 11, '2015-10-16', NULL),
(6, 'Tales from the Borderlands', 'Tales from the Borderlands', 'Telltale Games firma una aventura gráfica, basada en este reconocido universo de ciencia ficción de Gearbox, que expande el universo de Pandora con nuevas historias tras los sucesos acaecidos en Borderlands 2. Tales from the Borderlands promete hacer gala de las decisiones y consecuencias vistos en otros títulos del estudio bajo el protagonismo de Rhys, un trabajador corriente, y Fiona, una artista de la estafa.', 11, '2014-12-03', NULL),
(7, 'Dark Souls II: Scholar of the First Sin', 'Dark Souls II: Scholar of the First Sin', 'Segunda parte de Dark Souls, el RPG de From Software, que sigue las bases impuestas por su inolvidable título original en esta ocasión con una versión para consolas de nueva generación. Uno de los juegos más desafiantes y adictivos que podemos encontrar dentro del Action-RPG que en esta edición trae consigo nuevos contenidos como eventos in-game para expandir la historia o NPCs extra.', 5, '2015-04-07', 2),
(8, 'Assassin\'s Creed: Syndicate', 'Assassin\'s Creed: Syndicate', 'El peculiar enfrentamiento entre Assassins y Templarios de esta entrega nos traslada a la impresionante capital británica en el siglo XIX, justo en plena Revolución Industrial. Desde Buckingham Palace a Whitechapel pasando por los túneles subterráneos, el gigantesco mundo abierto del Londres Victoriano es fiel testigo de una revolución histórica, pero también de una revolución de las clases trabajadoras.', 13, '2015-10-23', 5),
(9, 'Minecraft: Modo Historia', 'Minecraft: Story Mode', 'El mundo de Minecraft visto desde la perspectiva de una aventura gráfica. Esta es la nueva propuesta del equipo de Telltale Games, en la que tendremos ocasión de conocer nuevos personajes y vivir situaciones totalmente originales dentro de este universo cúbico.', 11, '2015-10-13', NULL),
(10, 'Mass Effect 3', 'Mass Effect 3', 'Tercera entrega del aclamado RPG creado por BioWare. Con Mass Effect 3 la saga da un giro fuerte para agilizar la acción de sus tiroteos y combates, presentando además una mayor escala de los acontecimientos que viviremos.', 18, '2012-03-08', NULL),
(11, 'Saint Seiya: Soldiers\' Soul', 'Saint Seiya: Soldiers\' Soul', 'Los Caballeros del Zodiaco protagonizan este arcade de lucha 3D en el que es posible pelear con los personajes más famosos del anime Saint Seiya: Soul of Gold. El argumento del juego gira en torno a Aioria, el Caballero Dorado de Leo y la historia transcurre tras los sucedido en la Saga de Hades, pudiendo asistir a la resurrección de los Caballeros Dorados que, junto con Seiya y sus amigos, deberán acabar con un nuevo enemigo.', 22, '2015-09-25', NULL),
(12, 'Dark Souls III', 'Dark Souls III', 'Dark Souls 3 es la tercera entrega de la desafiante saga RPG de FromSoftware y Hidetaka Miyazaki. Un videojuego que mezcla y refina todo lo aprendido anteriormente por sus creadores con la saga Souls y Bloodborne para presentar un título más redondo en lo jugable, combates más dinámicos y vivos, escenarios llenos de secretos y, como no, impresionantes y desafiantes jefes finales.', 5, '2016-04-12', 2),
(13, 'LEGO Marvel Super Heroes', 'LEGO Marvel Super Heroes', 'Aventura de acción protagonizada por los héroes de Marvel, que deben enfrentarse a enemigos tan poderosos como Galactus o Loki con el habitual sentido del humor propio de los juegos de LEGO.', 9, '2013-11-29', NULL),
(14, 'Deus Ex: Mankind Divided', 'Deus Ex: Mankind Divided', 'Deus Ex: Mankind Divided es la secuela de Deus Ex: Human Revolution. Un videojuego de ciencia ficción protagonizado por Adam Jensen que se ambienta en el año 2029, justo después del terrible apartheid cibernético generado por la terrible guerra entre los seres humanos \"puros\" y aquellos que han sido \"aumentados\" con prostéticos de diferente clase.', 15, '2016-08-23', NULL),
(15, 'Dishonored', 'Dishonored', 'Ambientado en un mundo industrial y retrofuturista, Dishonored es definido por sus propios autores como un juego sobre la violencia brutal. La ciudad portuaria está infectada por la peste; la mitad de la población está muerta o agonizando, y la otra mitad vive con miedo a un régimen opresor.', 16, '2012-10-12', NULL),
(16, 'Alien Isolation', 'Alien Isolation', 'Creative Assembly regresa a las raíces de la saga Alien en una entrega que recupera la esencia de la primera película, dirigida por Ridley Scott. Un survival horror en primera persona en el que controlamos a Amanda Ripley quince años después de la desaparición de su madre.', 12, '2014-10-07', NULL),
(17, 'Thief', 'Thief', 'Thief, una de las sagas más reconocidas dentro del género de infiltración regresa con esta cuarta entrega protagonizada de nuevo por Garreth, y creada por Eidos Montreal. Una producción planteada en primera persona, que lleva las cotas de infiltración clásicas de la serie a los nuevos límites que plantea un desarrollo entre esta generación y la que viene.', 15, '2014-02-28', NULL),
(18, 'The Witcher 3: Wild Hunt', 'The Witcher 3: Wild Hunt', 'The Witcher 3: Wild Hunt es la tercera entrega de la serie The Witcher, que nos devuelve al conocido cazador de bestias Geralt de Rivia en una nueva aventura. En esta ocasión enfrentándose a la famosa Cacería Salvaje que le da nombre, y que se convierte en un desafío de dimensiones colosales para la primera incursión de la serie RPG del estudio polaco CD Projekt Red en los videojuegos de mundo abierto.', 6, '2015-05-19', NULL),
(19, 'The Witcher 3: Wild Hunt - Hearts of Stone', 'The Witcher 3: Wild Hunt - Hearts of Stone', 'Primera expansión de carácter masivo para The Witcher III: Wild Hunt, en esta ocasión de unas 10 horas de duración. En ella Geralt viaja a la Tierra de Nadie y los callejones de Oxenfurt. ¿El motivo? Debemos completar un contrato del misterioso Hombre de Cristal para el que nos hace falta toda nuestra astucia.', 6, '2015-10-13', NULL),
(20, 'The Witcher 3: Wild Hunt - Blood and Wine', 'The Witcher 3: Wild Hunt - Blood and Wine', 'Segunda expansión de carácter \"masivo\" para The Witcher III: Wild Hunt. Con una duración de algo más de 20 horas, aquí viajamos a Tussaint para conocer una tierra no azotada por la guerra donde abundan los rituales sangrientos entre caballeros y los secretos que descubrir.', 6, '2016-05-31', NULL),
(21, 'Final Fantasy XV', 'Final Fantasy XV', 'Entrega de la famosa saga JRPG Final Fantasy de Square Enix que supone el debut de la serie de la compañía nipona en las consolas PlayStation 4 y Xbox One. El universo de Final Fantasy XV está basado en la fábula Nova Crystallis que también inspiró a Final Fantasy XIII, pero que en este caso tiene una fuerte orientación hacia el género de la acción como ya demostró en su momento la demostración jugable del Episode Duscae.', 4, '2016-11-29', NULL),
(22, 'Pokémon Sol', 'Pokémon Sun', 'Pokémon Sol / Pokémon Luna presenta un entorno tropical y un conjunto de personajes e inéditos pokémon, opciones de personalización para el protagonista, nueva modalidad de juego llamada Battle Royal, escenarios mucho más grandes, el RotomDex, que es una nueva Pokédesk, códigos QR distribuidos por Alola y muchos, muchos nuevos pokemon, contando además con unos pokémon legendarios más importantes.', 8, '2016-11-23', NULL),
(23, 'The Last Guardian', 'The Last Guardian', 'Una historia profunda, melancólica, y la relación entre la bestia, a la que no controlamos directamente, y el niño, son los pilares de una experiencia jugable para PS4 que cuenta con un apartado gráfico y técnico que acusa los casi 10 años de desarrollo pero que sí disfruta de la habitual maestría artística de sus creadores. Mención especial para la inteligencia artificial de Trico, una verdadera locura para uno de los mejores compañeros que se h', 23, '2016-12-07', NULL),
(24, 'Rise of the Tomb Raider', 'Rise of the Tomb Raider', 'La veterana Lara Croft protagoniza este videojuego de acción y supervivencia dentro del ya conocido reseteo de la saga Tomb Raider que sigue explorando los orígenes de la conocida heroína y aventurera. El juego nos presenta a una protagonista algo más madura que en el Tomb Raider original de 2013, y vive una aventura cargada de acción, exploración, sigilo y emoción con esta obra de Crystal Dynamics.', 7, '2016-01-28', NULL),
(25, 'Until Dawn', 'Until Dawn', 'Terror y decisiones son el alma de este videojuego exclusivo para PS4 protagonizado por ocho adolescentes atrapados que deben intentar sobrevivir. Un título donde no falta un lugar inhóspito, un grupo de adolescentes y un misterio con grandes dosis de tensión que tanto gustan a los aficionados al terror teenager.', 24, '2015-08-26', NULL),
(26, 'Far Cry 3', 'Far Cry 3', 'Tercera entrega de la saga que regresará al exótico y peligroso entorno africano.', 17, '2012-11-29', NULL),
(27, 'Borderlands 2', 'Borderlands 2', 'Segunda entrega del innovador shooter de Gearbox que cuenta con nuevos personajes principales, habilidades, entornos, enemigos, y por supuesto armas y equipo que se juntan esta vez en una nueva historia más ambiciosa.', 14, '2016-03-27', 3),
(28, 'Borderlands: The Pre-Sequel!', 'Borderlands: The Pre-Sequel!', 'Entrega de la serie Borderlands que ejerce a modo de precuela y se sitúa argumentalmente entre el primer y el segundo juego de la serie. El título está protagonizado por cuatro nuevos héroes para la franquicia: Athena, Wilhelm, Claptrap y Nisha.', 14, '2016-03-27', 3),
(29, 'Hatsune Miku: Project Diva Future Tone', 'Hatsune Miku: Project Diva Future Tone', 'Una nueva aventura musical de Hatsune Miku. El videojuego te lleva a bailar todas sus melodías oídas en PSP, PlayStation 3 y PlayStation 4, un total de 224 canciones, a ritmo de DualShock 4. El objetivo es simple: Intenta presionar los botones en el orden y momento exacto para mejorar tu puntuación y la propia coreografía de Miku, una ídolo virtual japonesa que levanta pasiones allá por donde va.', 20, '2017-01-10', NULL),
(30, 'Lego Harry Potter: Años 1-4', 'Lego Harry Potter: Years 1-4', 'Juego basado en el universo Lego sobre el popular aprendiz de mago Harry Potter, y sus aventuras en Hogwarts, cuya historia abarca las cuatro primeras partes de la exitosa saga.', 9, '2010-06-25', NULL),
(31, 'Bloodborne', 'Bloodborne', 'Bloodborne es un videojuego exclusivo para PS4 de la desarroladora FromSoftware. El videojuego nos traslada al siglo XIX, a un oscuro y tétrico Londres victoriano donde encontraremos todos los ingredientes de la saga Souls. Bloodborne se orienta al combate ofensivo, arrebatándonos el escudo de entre las manos y obligándonos a atacar con las numerosas armas de fuego y nuevos movimientos.', 5, '2015-03-25', NULL),
(32, 'Kingdom Hearts: Birth by Sleep FINAL MIX', 'Kingdom Hearts: Birth by Sleep FINAL MIX', 'Juego de la saga Kingdom Hearts que llegó a PSP con una nueva historia en la que, tres personajes desconocidos de la serie, se embarcan en la búsqueda de un maestro perdido.', 4, '2014-12-05', 8),
(33, 'Kingdom Hearts', 'Kingdom Hearts', 'Kingdom Hearts es un videojuego de rol de acción desarrollado y publicado por Squaresoft (actual Square Enix) en el 2002 para la consola Sony PlayStation 2. Kingdom Hearts es el resultado de una colaboración entre Square y The Walt Disney Company. El juego combina personajes y escenarios de los dibujos animados de Disney con los de la saga Final Fantasy, desarrollada por Square.', 4, '2002-09-16', 8),
(34, 'Kingdom Hearts II', 'Kingdom Hearts II', 'Ambientado un año después de la primera parte, Kingdom Hearts 2 transcurre en una mezcla de mundos nuevos y conocidos en los que nuestro trío de héroes deberá hacer frente una vez más a los sin corazón.', 4, '2006-09-29', 8),
(35, 'World of Final Fantasy', 'World of Final Fantasy', 'World of Final Fantasy combina los talentos de varios de los creativos en Square Enix (como Tetsuya Nomura) dentro de un videojuego dirigido especialmente a los fans, pero también a aquellos que quieran experimentar por primera vez esta licencia. La historia gira en torno a Reynn y Lann, gemelos que han perdido la memoria y son trasladados al mundo de Grymoire.', 4, '2016-10-28', NULL),
(36, 'The Legend of Zelda: Breath of the Wild', 'The Legend of Zelda: Breath of the Wild', 'El videojuego más grande en la historia de Nintendo. The Legend of Zelda: Breath of the Wild es una épica aventura que lleva la acción de esta veterana franquicia a un gigantesco mundo abierto que podemos explorar con total libertad. ¡No hay límites! Link puede coger un caballo, o cualquier otra montura, y explorar la nueva Hyrule siguiendo el orden que desee el jugador, pues la historia ya no sigue un camino lineal.', 1, '2017-03-03', 12),
(37, 'God of War: Ascension', 'God of War: Ascension', 'Cuarta entrega de la saga de acción God of War protagonizada por Kratos, el poderoso y devastador dios de la guerra. El juego, por primera vez en la historia de la saga, incluye modos multijugador.', 3, '2013-03-13', 11),
(38, 'Uncharted 2: El reino de los ladrones', 'Uncharted 2: Among Thieves', 'Segunda entrega del juego de acción y aventuras Uncharted. En esta ocasión la aventura de su protagonista, Nathan Drake, girará en torno a los viajes del explorador Marco Polo en el siglo XIII.', 2, '2009-10-15', 1),
(39, 'Uncharted 3: La Traición de Drake', 'Uncharted 3: Drake\'s Deception', 'Las aventuras del cazatesoros Nathan Drake nos llevan en Uncharted 3 a seguir la pista de su antepasado Sir Francis Drake a través de un valioso anillo a modo de legado. Junto con su mentor y compañero Victor \"Sully\" Sullivan, desentrañan la versión verdadera de la historia del nombrado caballero de Isabel I.', 2, '2011-11-02', 1),
(40, 'Uncharted: El Tesoro de Drake', 'Uncharted: Drake\'s Fortune', 'De los creadores Crash Bandicoot y Jak & Daxter, llega este sugerente título de acción y aventura en tercera persona, protagonizado por un joven aventurero que deberá encontrar un misterioso y muy preciado tesoro.', 2, '2007-12-05', 1),
(41, 'Persona 5', 'Persona 5', 'Persona 5 es el nuevo episodio de esta veterana serie de aventuras de rol creada por Atlus, que ahora en PlayStation 4 y PS3, nos pone a los mandos de los Phantom Thieves of Hearts, un grupo de héroes nocturnos, una suerte de ladrones, dedicados a robar los oscuros objetos de deseo que atormentan a la sociedad desde el Metaverso, esa extraña dimensión que representa el inconsciente colectivo de la humanidad.', 10, '2017-04-04', 13),
(42, 'Mirror\'s Edge Catalyst', 'Mirror\'s Edge Catalyst', 'Mirror’s Edge 2 es la segunda parte del colorido juego de acción y plataformas en primera persona creado por DICE y EA, que actúa como precuela de Mirror\'s Edge. En el videojuego, esta vez planteado como un mundo abierto en la ciudad de Glass, el jugador descubre detalles no conocidos de la vida de Faith, la chica protagonista del primer título que usa el entorno, la inercia y su físico para superar cualquier desafío.', 19, '2016-06-09', NULL),
(43, 'Catherine', 'Catherine', 'Acción, decisiones, surrealismo y erotismo, se combinan en este aventura desarrollada por los responsables de Persona, y cuyo protagonista es Vincent, un hombre que descubrirá su verdadero amor.', 10, '2012-02-10', NULL),
(44, 'Crash Bandicoot: N. Sane Trilogy', 'Crash Bandicoot: N. Sane Trilogy', '¡Crash vuelve! La trilogía original desarrollada por Naughty Dog para PlayStation se adapta a los tiempos actuales dos décadas después por Vicarious Visions (Skylanders) en PS4 bajo el nombre de Crash Bandicoot N. Sane Trilogy. Compuesto por Crash Bandicoot (1996), Cortex Strikes Back (1997) y Warped (1998), el recopilatorio está a medio camino entre el remake y la remasterización, con un planteamiento de respeto a la obra original y añadiendo nu', 25, '2017-06-30', NULL),
(45, 'Juego de Tronos', 'Game of Thrones: A Telltale Games Series', 'El afamado estudio Telltale Games, firma esta serie de aventuras gráficas ambientadas en las novelas de Canción de Hielo y Fuego.', 11, '2014-12-09', NULL),
(46, 'El profesor Layton y la máscara de los prodigios', 'Profesor Layton 5, Professor Layton and the Mask of Miracles', 'Nueva entrega de la serie Profesor Layton, desarrollada en exclusiva para Nintendo 3DS. En esta ocasión, el arqueólogo y experto en puzles se embarcará en una aventura que le llevará a explorar su pasado más lejano, enfrentándose a más de 150 nuevos acertijos y nuevos minijuegos cortesía del baúl del profesor.', 26, '2012-10-26', NULL),
(47, 'Mass Effect: Andromeda', 'Mass Effect 4', 'Un nuevo viaje sin el comandante Shepard como protagonista y con la familia al frente Ryder, de la que podremos escoger a cualquiera de los dos hermanos para liderar nuestra cruzada en los confines del espacio.Una cuarta aventura épica y colosal con nuevos mundos que descubrir, personajes interesantes y acción intensa que tiene lugar muy lejos y mucho tiempo después de los eventos ocurridos en la trilogía original', 18, '2017-03-23', NULL),
(48, 'Hellblade: Senua\'s Sacrifice', 'Hellblade: Senua\'s Sacrifice', 'Hellblade: Senua\'s Sacrifice es un videojuego de Ninja Theory, auténticos expertos en el desarrollo de grandes aventuras de acción en tercera persona como DMC, Enslaved o Heavenly Sword. Con este título, que corre bajo Unreal Engine 4 en cuanto a su motor gráfico, sus creadores se pasan al desarrollo indie sin perder su enfoque inclinado hacia la acción y aventura que ha caracterizado a títulos anteriores. ', 27, '2017-08-08', NULL),
(49, 'NieR: Automata', 'NieR 2', 'NieR: Automata es un intenso videojuego RPG de acción con abundante exploración, plataformas y un destacado sentido de la verticalidad, desarrollado por Platinum Games y Square Enix. En la sintética piel del androide 2B nos embarcamos en una arriesgada misión por recuperar el hogar de la humanidad.', 28, '2017-03-07', NULL),
(50, 'Horizon: Zero Dawn', 'Horizon: Zero Dawn', 'Horizon: Zero Dawn es un videojuego de Guerrilla Games, los creadores de la saga Killzone, que presenta un cuidado universo de fantasía con un sugerente planteamiento argumental y jugable. Se ambienta en un mundo abierto en el que la naturaleza ha reclamado las ruinas de una civilización olvidada y la humanidad ya no es la especie dominante, sino unas avanzadas maquinas de origen desconocido.', 29, '2017-03-01', NULL),
(51, 'J-Stars Victory Vs+', 'J-Stars Victory Vs+', 'Crossover de héroes manga en el que no faltan algunos de los más míticos personajes de todas las épocas de la Shonen Jump. Goku contra Naruto, Luffy, Toriko o Ichigo en una batalla histórica que cuenta con varios modos de juego.', 30, '2015-06-26', NULL),
(52, 'Life is Strange', 'Life is Strange', 'Life is Strange es una aventura compuesta por cinco episodios, ambientada en la ciudad ficticia de Arcadia Bay, en Oregón. Aquí es donde regresa una estudiante de último año, Max Caulfield, después de 5 años de ausencia para reencontrarse con su amiga de la infancia, Chloe. Juntas intentarán descubrir la incómoda verdad tras la misteriosa desaparición de su compañera de estudios Rachel Amber.', 31, '2015-01-30', NULL),
(53, 'Yakuza 0', 'Yakuza Zero: The Oath’s Place', 'El brillo, el glamour y la decadencia desenfrenada del Japón de los años 80 sirven de telón de fondo para Yakuza 0, precuela de la la conocida saga de de acción y aventuras de SEGA donde los jugadores tienen la oportunidad de conocer desde el principio la historia de Kazuma. El videojuego también permite ponerse en la piel de Majima Goro -el Perro Loco de Shimano-, y viajar hasta el sórdido submundo de las ciudades de Tokio y Osaka.', 20, '2017-01-24', NULL),
(54, 'Mario + Rabbids Kingdom Battle', 'Mario + Rabbids Kingdom Battle', 'Mario + Rabbids Battle Kingdom (Mario X Rabbids) es un juego de rol y estrategia por turnos de Ubisoft para Nintendo Switch que utiliza el motor de juego de Ubisoft, Snowdrop Engine. El videojuego nos propone un tour o viaje al Reino Champiñón en modo de cooperativo local con todo el humor de las dos conocidas franquicias. Los jugadores eligen entre 8 personajes jugables: Mario, Luigi, Yoshi y la princesa Peach de la franquicia Mario, así como su', 32, '2017-08-29', NULL),
(55, 'Final Fantasy Type-0 HD', 'Final Fantasy Type-0 HD', 'Versión remasterizada en alta definición para PS4 y Xbox One de Final Fantasy Type-0, un Final Fantasy para PSP cuyo lanzamiento quedó inédito en Occidente. El videojuego destaca por su tono adulto en la historia, la cantidad de personajes controlables y su sistema de batalla en tiempo real.', 4, '2015-03-20', NULL),
(56, 'Yakuza: Kiwami', 'Yakuza: Kiwami', 'Yakuza Kiwami es un remake del primer Yakuza que incluye importantes mejoras gráficas y nuevas opciones de juego basadas en lo visto en los últimos capítulos de esta veterana franquicia. ', 20, '2017-08-29', NULL),
(57, 'Metroid: Samus Returns', 'Metroid: Samus Returns', 'Samus Aran regresa con todo su encanto clásico en este Metroid: Samus Returns para Nintendo 3DS. Una revisión moderna de la aventura para Game Boy de 1992 Metroid II: Return of Samus. El arsenal de la cazarrecompensas intergaláctica Samus Aran ha sido mejorado con nuevos movimientos y habilidades, como los potentes Contragolpe, el modo Disparo Libre y las misteriosas habilidades Aeion.', 33, '2017-09-15', NULL),
(58, 'Golf Story', 'Golf Story', 'Golf Story es un RPG que nos pone en la piel de un deportista que lo abandona todo con tal de convertirse en el mejor golfista posible. Durante esta aventura de rol para Nintendo Switch el jugador debe lidiar con una gran variedad de problemas valiéndose de las habilidades especiales del protagonista relacionadas, claro, con el mundo del golf.', 34, '2017-09-28', NULL),
(59, 'Cuphead', 'Cuphead', 'Cuphead es un videojuego de acción-shooter, con elementos de plataformas y basado en la clásica mecánica de dispara y corre, ambientado en un simpático mundo repleto de misterios y poderes especiales así como jefazos a los que plantar cara. Con componente cooperativo, esta aventura invita a atravesar mundos extraños, adquirir nuevas armas, aprender poderosos movimientos y descubrir secretos ocultos mientras el protagonista salda su deuda con el d', 35, '2017-09-29', NULL),
(60, 'BioShock Infinite', 'BioShock 3', 'Tercera entrega de la saga Bioshock que se ambienta en el año 1912 y presenta una experiencia narrativa totalmente nueva que saca a los jugadores del entorno familiar de Rapture, y les lanza a Columbia, una inmensa y vertiginosa ciudad en el cielo.', 36, '2013-03-26', NULL),
(61, 'Super Mario Odyssey', 'Super Mario Odyssey', 'Super Mario Odyssey se desarrolla en el planeta Tierra, ya que Mario deja el Reino Champiñón para embarcarse en un viaje por lugares misteriosos y vivir nuevas aventuras a bordo de una aeronave, demostrando el hábil manejo de su gorra, ya que gracias a ella Mario puede tomar el control de los enemigos.', 1, '2017-10-27', NULL),
(62, 'South Park: La Vara de la Verdad', 'South Park: The Stick of Truth', 'South Park: La Vara de la Verdad es un videojuego de rol basado en la serie South Park que cuenta con un guión a cargo de los propios responsables de la serie de animación, protagonizado por un chico completamente nuevo que tendrá que crear lazos de amistad con los peculiares habitantes mientras defiende el pueblo de variadas amenazas.', 37, '2014-03-06', NULL),
(63, 'Assassin\'s Creed: Origins', 'Assassin\'s Creed: Origins', ' Bayek (y su águila Senu) es el protagonista de Assassin\'s Creed: Origins, el regreso de la franquicia de acción en mundo abierto de Ubisoft tras su merecido descanso en el 2016. El videojuego observa esta vez abundantes cambios jugables, con una experiencia jugable más centrada en la naturaleza y con un cuidado e histórico retrato del antiguo Egipto ambientado, exactamente, en el año 50 a.C, bajo el reinado de la emblemática Cleopatra, donde se ', 17, '2017-10-27', 5),
(64, 'Ni-Oh', 'Ni-Oh', 'Nioh es un título de acción hack\'n slash protagonizado por un valeroso samurái llamado William, que tiene que lidiar contra demonios y criaturas imposibles con la particularidad de que los combates con éstas se desarrollan en un marco histórico, el del período Azuchi-Momoyama, con mucho interés por mantener la integridad de nombres y situaciones que, en realidad, sí sucedieron.', 38, '2017-02-08', NULL),
(65, 'Xenoblade Chronicles 2', 'Xenoblade Chronicles 2', 'Exploración de un vasto mundo abierto, un extraño mundo dominado por gigantescas criaturas sobre las que habitan los humanos, y una potente narrativa para contar una historia cargada de emotividad.', 39, '2017-12-01', NULL),
(66, 'Tales of Xillia', 'Tales of Xillia', 'JRPG de la conocida saga Tales of que cuenta con 2 protagonistas que viven en el mundo de Liese Maxia, donde humanos, espíritus y demonios residen en armonía.', 40, '2013-08-09', NULL),
(67, 'Shantae: Half-Genie Hero', 'Shantae: Half-Genie Hero', 'Shantae: Half-Genie Hero es una secuela directa de una aventura de acción y plataformas en 2D aparecida en DSiWare. El juego presenta un diseño de niveles muy logrado, una fantástica ambientación, grandes animaciones y una jugabilidad de espíritu retro que encantará a cualquier amante de los juegos de plantaformas más clásicos.', 41, '2017-06-08', NULL),
(68, 'Ni no Kuni 2: Revenant Kingdom', 'Ni no Kuni 2: El Renacer de un Reino', 'Ni No Kuni II: El Renacer de un Reino es una secuela para PS4 y PC en toda regla que cuenta con una atmósfera o ambientación fantástica realmente atractiva, y que transporta al jugador a una aventura rolera (esta vez en tiempo real y no por turnos) muy emotiva que parece una película de animación pero en formato videojuego.', 26, '2018-03-23', NULL),
(69, 'Ni no Kuni: La Ira de la Bruja Blanca', 'Ninokuni: Queen of the White Ashes', 'RPG desarrollado por Level 5 en colaboración con el estudio Ghibli, quien se encarga de de algunos diseños y de las escenas de animación. El juego contará con una edición especial que incluirá un libro idéntico al que lleva el protagonista de la historia sobre magia y conjuros, que el jugador tendrá que consultar en algunas partes del juego.', 26, '2013-02-01', NULL),
(70, 'God of War 3', 'God of War III', 'God of War III marca el estreno de una de las franquicias estrella de Sony en PlayStation 3. El violento hack and slash cierra la trilogía GoW a modo de secuela continuando la historia de God of War II en PlayStation 2, donde tras asesinar a Poseidón, continúa la guerra con los dioses del Olimpo y bestias de la mitología grecolatina, esta vez contra Zeus.', 42, '2010-03-18', 11),
(71, 'God of War', 'God of War 4', 'Gof of War traslada su fórmula jugable desde la antigua Grecia de las aventuras de Kratos a una ambientación nórdica de lo más llamativa donde retorna su carismático protagonista en una historia de padre e hijo que promete recuperar una parte de la humanidad perdida del espartano.', 42, '2018-04-20', 11),
(72, 'Stardew Valley', 'Stardew Valley', 'Has heredado la antigua granja del abuelo. Ahora, armado con las herramientas agrícolas te dispones a comenzar una nueva vida. ¿Eres capaz de sacarle partido a la tierra y construir un hogar próspero? ', 43, '2016-02-26', NULL),
(73, 'Beyond: Two Souls', 'Beyond: Dos Almas', 'Beyond: Two Souls nos invita a vivir la historia de dos seres especiales, unidos de forma indisoluble en el cuerpo de un ser humano marcado por la fatalidad, bajo un formato de videojuego de aventura que vuelve a mirar al cine y al futuro y que cuenta con una historia fascinante.', 44, '2015-11-24', NULL),
(74, 'Profesor Layton vs Phoenix Wright', 'El Profesor Layton vs. Phoenix Wright: Ace Attorney', 'Aventuras y puzles se unen en este título protagonizado por el profesor Layton y Phoenix Wright, los cuales se encuentran en una misteriosa ciudad controlada por un villano capaz de hacer realidad todo lo que escribe con su pluma.', 26, '2014-03-28', NULL),
(75, 'Tales of Zestiria', 'Tales of Zestiria', ' Tales of celebra su vigésimo aniversario con otra entrega de su saga de rol oriental con sistema de combate en tiempo real renovado para ser más rápido y contar con movimientos laterales. En la aventura el jugador será Sorey, un joven aventurero de corazón puro cuyo destino será convertirse en el Pastor, un ser capaz de acabar con la malicia en el mundo. Además, tendrá la opción de comunicarse con los serafines, fusionarse con su esencia para cr', 40, '2015-10-20', NULL),
(76, 'Mario Tennis Aces', 'Mario Tennis Aces', 'Mario Tennis Aces rescata para Nintendo Switch la emblemática saga spin-off protagonizada por el bigotudo fontanero armado con una raqueta y dispuesto a enfrentarse a diferentes personajes en auténticos combates de tenis.', 45, '2018-06-22', NULL),
(77, 'Tales of Berseria', 'Tales of Berseria', 'ales of Berseria es una aventura de rol basada en esta franquicia que conmemora su 20 aniversario. Está protagonizada por una pirata llamada Velvet con ansias de venganza, y entre las principales novedades de este videojuego se incluye el llamado Break Soul, una técnica especial de cada personaje para sobrepasar el limite de artes realizables por combo; y el nuevo sistema de combate llamado Liberation Linear Motion Battle System.', 22, '2017-01-27', NULL),
(78, 'Octopath Traveler', 'Octopath Traveler', 'Acquire, los autores de Bravely Default, dan vida a Octopath Traveler, un JRPG para Nintendo Switch que combina una estética retro con elementos gráficos propios de la actualidad. El videojuego apuesta por conservar la esencia más tradicional de las aventuras de rol: buena historia (contada a través de ocho personajes), combates de dificultad ajustada que no se resuelven nunca por fuerza bruta, sino encontrando las debilidades de nuestros enemigos, y un inspirado apartado audiovisual.', 4, '2018-07-13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_generos`
--

CREATE TABLE `juegos_generos` (
  `Juego` int(5) NOT NULL,
  `Genero` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juegos_generos`
--

INSERT INTO `juegos_generos` (`Juego`, `Genero`) VALUES
(1, 1),
(1, 3),
(1, 9),
(2, 1),
(2, 7),
(2, 9),
(3, 1),
(3, 6),
(3, 9),
(4, 1),
(4, 3),
(4, 7),
(5, 3),
(5, 11),
(6, 3),
(6, 11),
(7, 16),
(7, 17),
(8, 1),
(8, 3),
(9, 3),
(9, 12),
(9, 13),
(10, 16),
(10, 17),
(11, 1),
(11, 5),
(12, 16),
(12, 17),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(14, 7),
(15, 1),
(15, 3),
(15, 7),
(16, 1),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 16),
(18, 17),
(19, 16),
(19, 17),
(20, 16),
(20, 17),
(21, 16),
(21, 17),
(22, 16),
(22, 18),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(26, 7),
(27, 1),
(27, 7),
(27, 9),
(28, 1),
(28, 7),
(28, 9),
(29, 20),
(30, 1),
(30, 3),
(31, 16),
(31, 17),
(32, 16),
(32, 17),
(33, 16),
(33, 17),
(34, 16),
(34, 17),
(35, 16),
(35, 18),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(37, 4),
(38, 1),
(38, 3),
(38, 9),
(39, 1),
(39, 3),
(39, 9),
(40, 1),
(40, 3),
(40, 9),
(41, 16),
(41, 18),
(42, 1),
(42, 3),
(42, 6),
(42, 7),
(43, 3),
(43, 19),
(44, 1),
(44, 6),
(45, 3),
(45, 12),
(45, 14),
(46, 13),
(46, 14),
(46, 19),
(47, 16),
(47, 17),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(49, 4),
(50, 1),
(50, 3),
(51, 1),
(51, 5),
(52, 3),
(52, 12),
(52, 14),
(53, 1),
(53, 3),
(54, 18),
(54, 21),
(55, 16),
(55, 18),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(57, 9),
(58, 16),
(58, 17),
(59, 1),
(59, 6),
(59, 9),
(60, 1),
(60, 3),
(60, 7),
(61, 1),
(61, 6),
(62, 16),
(62, 18),
(63, 1),
(63, 3),
(63, 17),
(64, 16),
(64, 17),
(65, 16),
(65, 18),
(66, 16),
(66, 17),
(66, 18),
(67, 1),
(67, 6),
(68, 16),
(68, 17),
(69, 16),
(69, 18),
(70, 1),
(70, 3),
(70, 4),
(71, 1),
(71, 3),
(71, 4),
(72, 21),
(72, 22),
(72, 23),
(73, 24),
(73, 25),
(74, 13),
(74, 14),
(74, 19),
(75, 16),
(75, 17),
(76, 13),
(76, 26),
(77, 16),
(77, 18),
(78, 16),
(78, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_plataformas`
--

CREATE TABLE `juegos_plataformas` (
  `Juego` int(5) NOT NULL,
  `Plataforma` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juegos_plataformas`
--

INSERT INTO `juegos_plataformas` (`Juego`, `Plataforma`) VALUES
(1, 1),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 3),
(5, 9),
(6, 1),
(6, 3),
(6, 4),
(6, 5),
(6, 9),
(6, 10),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(7, 9),
(8, 1),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 8),
(9, 9),
(9, 10),
(10, 2),
(10, 4),
(10, 5),
(10, 9),
(11, 1),
(11, 4),
(11, 5),
(12, 1),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 9),
(13, 10),
(14, 1),
(14, 3),
(14, 4),
(15, 4),
(15, 5),
(15, 9),
(16, 1),
(16, 3),
(16, 4),
(16, 5),
(16, 9),
(17, 1),
(17, 3),
(17, 4),
(17, 5),
(17, 9),
(18, 1),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 3),
(20, 4),
(21, 1),
(21, 3),
(21, 4),
(22, 6),
(23, 1),
(24, 1),
(24, 3),
(24, 4),
(24, 9),
(25, 1),
(26, 4),
(26, 5),
(26, 9),
(27, 4),
(27, 5),
(27, 9),
(28, 4),
(28, 5),
(28, 9),
(29, 1),
(30, 4),
(30, 5),
(30, 9),
(31, 1),
(33, 7),
(34, 7),
(35, 1),
(35, 4),
(35, 10),
(36, 8),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 1),
(41, 5),
(43, 5),
(43, 9),
(44, 1),
(44, 3),
(44, 4),
(44, 8),
(45, 1),
(45, 3),
(45, 4),
(45, 5),
(45, 9),
(46, 6),
(47, 1),
(47, 3),
(47, 4),
(48, 1),
(48, 4),
(49, 1),
(49, 4),
(50, 1),
(51, 1),
(51, 5),
(51, 10),
(52, 1),
(52, 3),
(52, 4),
(52, 5),
(52, 9),
(53, 1),
(54, 8),
(55, 1),
(55, 3),
(55, 4),
(56, 1),
(57, 6),
(58, 8),
(59, 3),
(59, 4),
(60, 4),
(60, 5),
(60, 9),
(61, 8),
(62, 1),
(62, 3),
(62, 4),
(62, 5),
(62, 9),
(63, 1),
(63, 3),
(63, 4),
(64, 1),
(65, 8),
(66, 5),
(67, 1),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(67, 8),
(67, 9),
(67, 10),
(68, 1),
(68, 4),
(69, 5),
(70, 5),
(71, 1),
(72, 1),
(72, 3),
(72, 4),
(72, 8),
(73, 1),
(73, 5),
(74, 6),
(75, 1),
(75, 4),
(75, 5),
(76, 8),
(77, 1),
(77, 4),
(78, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataformas`
--

CREATE TABLE `plataformas` (
  `id` int(2) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `tipo` enum('sobremesa','portatil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plataformas`
--

INSERT INTO `plataformas` (`id`, `nombre`, `siglas`, `tipo`) VALUES
(1, 'Play Station 4', 'PS4', 'sobremesa'),
(2, 'Wii U', 'WII U', 'sobremesa'),
(3, 'Xbox One', 'XONE', 'sobremesa'),
(4, 'PC', 'PC', 'sobremesa'),
(5, 'Play Station 3', 'PS3', 'sobremesa'),
(6, 'Nintendo 3DS', '3DS', 'portatil'),
(7, 'Play Station 2', 'PS2', 'sobremesa'),
(8, 'Nintendo Switch', 'SWITCH', 'sobremesa'),
(9, 'Xbox 360', 'X360', 'sobremesa'),
(10, 'Play Station Vita', 'VITA', 'portatil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `idSerie` int(3) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `sinopsis` text NOT NULL,
  `runtime` int(3) NOT NULL,
  `network` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`idSerie`, `titulo`, `sinopsis`, `runtime`, `network`) VALUES
(1, 'Juego de Tronos', 'HBO, desde la calidad que caracteriza a la cadena, nos brinda una vez más una magistral adaptación televisiva de la serie de novelas \'Canción de hielo y fuego\' del escritor estadounidense George R. R. Martin. La versión para la pequeña pantalla de esta historia comparte título con el primero de los libros de la saga, \'Juego de tronos\', y está escrita y producida por David Benioff (\'Troya\', \'X-Men Origins: Wolverine\') y D.B. Weiss.', 0, ''),
(2, 'Marvel\'s Jessica Jones', 'Jessica Jones nació como un personaje secundario, como una joven normal con un cuelgue por Peter Parker (\'Spider-Man\') y más tarde por Johnny Storm (\'La Antorcha Humana\'). Un día volvía a casa en coche con su familia y tuvieron la mala suerte de chocar contra un convoy militar que cargaba productos radioactivos. Su familia murió y ella entró en coma para despertar más tarde con fuerza sobrehumana, invulnerabilidad y capacidad para volar. ', 0, ''),
(3, 'Gotham', 'Todo el mundo conoce el nombre de el Comisario Gordon. Es uno de los mayores enemigos del mundo del crimen, un hombre cuya reputación es sinónimo de ley y orden. ¿Pero qué sabemos sobre la historia de Gordon y su ascenso de novato detective a Comisario de Policía? ¿Qué fue necesario para navegar por las múltiples capas de corrupción que manipulaban secretamente Gotham City, territorio de los villanos más icónicos del mundo? ¿Qué circunstancias crearon a los personajes conocidos como Catwoman, el Pingüino, Enigma, Dos Caras o el Jóker?', 0, ''),
(4, 'Marvel\'s Daredevil', '\'Daredevil\' gira en torno a Matt Murdock, un abogado de día y superhéroe de noche. A pesar de ser ciego, posee un oído, un olfato, una fuerza y una agilidad increíblemente desarrolladas. Sin descanso, Matt Murdoch recorrerá las calles de Hell\'s Kitchen, en Nueva York, a la caza de todo tipo de criminales a los que no puede castigar un tribunal.', 0, ''),
(5, 'Silicon Valley', '\'Silicon Valley\' gira en torno a un grupo de personas de las más calificadas que buscan abrirse camino en el entorno competitivo de Silicon Valley intentando lanzar su propia startup. Todo esto con telón de fondo la fiebre del oro de la alta tecnología moderna de Silicon Valley, donde las personas más calificadas para tener éxito son las menos capaces de manejarlo.', 0, ''),
(6, 'The Flash (2014)', 'Barry Allen perdiÃ³ a su madre con tan sÃ³lo 11 aÃ±os cuando fue asesinada y su padre cargo con el crimen, siendo condenado injustamente. AÃ±os mÃ¡s tarde, Barry se convierte en un excelente investigador gracias a su mente privilegiada, algo que aprovecha para intentar averiguar lo que realmente ocurriÃ³ en el asesinato de su madre.\nSin embargo, todo cambiarÃ¡ cuando sea alcanzado por un rayo mientras trabajaba en un proyecto de acelerador de partÃ­culas. DespuÃ©s de estar nueve meses en coma, Barry Allen se despierta y ya no es el mismo. El rayo le ha dotado de una velocidad sobrenatural.', 0, ''),
(7, 'Marvel\'s Agent Carter', 'Serie ambientada en 1946 y que gira en torno a la Agente Peggy Carter (Hayley Atwell). La paz llega tras la Segunda Guerra Mundial, lo que ha supuesto un duro golpe para ella que se encuentra marginada cuando los hombres regresan a casa despuÃ©s del combate en el extranjero. Trabajando de manera encubierta en la Reserva CientÃ­fica EstratÃ©gica, Peggy se encuentra a sÃ­ misma atrapada haciendo trabajo de administrativa cuando preferirÃ­a estar de vuelta en el campo de batalla, poniendo sus conocimientos en juego y derribando a los malos.', 0, ''),
(8, 'Mr. Robot', 'Elliot Anderson es un joven y brillante programador con problemas para las relaciones sociales que durante el día trabaja como técnico de ciberseguridad de una importante empresa informática y por la noche es un desinteresado justiciero cibernético, que se verá envuelto en una oscura trama. ', 0, ''),
(9, 'Marvel\'s Luke Cage', 'Como producto de un experimento fallido de una organización secreta para recrear la fórmula del supersoldado que hizo posible la existencia del Capitán América, Luke Cage (Mike Colter), un hombre que hasta entonces ha llevado una vida normal, adquiere increíbles habilidades tales como fuerza superhumana y una piel irrompible. Tras el fracaso de este experimento, Luke Cage se convierte en un fugitivo que intenta reconstruir su vida en Nueva York, tratando de enterrar un pasado que lo atormenta. Sin embargo, la situación lo obliga a salir de las sombras para luchar por el corazón de su ciudad, enfrentándose a los episodios de su historia personal que ha intentado dejar atrás e intentando encontrar a los responsables de que él se haya convertido en este individuo con grandes poderes.', 0, ''),
(10, 'Black Mirror', 'Producción británica desarrollada por Charlie Brooker (\'Dead set: Muerte en directo\') para Channel 4, \'Black Mirror\' es una miniserie de tres episodios independientes entre sí y, con reparto y tramas totalmente diferentes, cuyo único punto común es el poder de las nuevas tecnologías para mover el mundo.', 0, ''),
(11, 'Sherlock', 'Sherlock es una serie de televisión británica que comenzó en 2010, realizada por la BBC y protagonizada por Benedict Cumberbatch y Martin Freeman. Coproducida por Hartswood Films y WGBH, la serie fue creada por Steven Moffat y Mark Gatiss.', 0, ''),
(12, 'Marvel\'s Iron Fist', 'Iron Fist gira en torno Daniel Rand, un maestro de Kung Fu que tiene una gran fuerza, agilidad, velocidad y reflejos sobrehumanos. A sus 19 años consiguió derrotar al dragón Shou-Lao el Inmortal y se llevó un arañazo en el pecho de este místico animal. Gracias a esta herida, Daniel consiguió el poder de concentrar toda su energía espiritual en el puño volviéndolo tan fuerte como el hierro. Su filosofía personal y de educación llevan a Daniel a ayudar a los débiles bajo la máscara del héroe enmascarado Iron Fist (Puño de Hierro).', 0, ''),
(13, 'Marvel - Agentes de S.H.I.E.L.D.', 'Serie de acción y aventuras que se sumerge en el universo Marvel, concretamente en \'S.H.I.E.L.D.\', la organización antiterrorista \"Strategic Homeland Intervention, Enforcement and Logistics Division\" en la que se han centrado películas de éxito como \'Los Vengadores\'. La serie es desarrollada por Joss Whedon (\'Buffy cazavampiros\', \'Angel\', \'Los Vengadores\').', 0, ''),
(14, 'Marvel\'s The Defenders', 'Daredevil, Jessica Jones, Iron Fist y Luke Cage están juntos por primera vez. Los Defensores es un equipo formado por estos cuatro superhéroes cuya misión es proteger Hell\'s Kitchen. Un abogado ciego, una mujer con súper fuerza, un multimillonario experto en artes marciales y un auténtico hombre de acero serán los encargados de detener a la villana Alexandra, que amenaza con destruir todo cuanto quieren.', 0, ''),
(15, 'Stranger Things', 'Serie de televisión dramática de misterio que está ambientada en una localidad de Indiana. Dicho lugar adquiere fama por los extraños acontecimientos que están sucediendo, similares a los del \'Proyecto Montauk\', un supuesto proyecto secreto llevado a cabo por el gobierno de los Estados Unidos en el que se realizaban experimentos con la finalidad de desarrollar técnicas de guerra psicológica.', 55, 'Netflix'),
(16, 'Marvel\'s The Punisher', 'Marvel’s The Punisher sigue la vida de \'El Castigador\'. Así se hace llamar Frank Castle, un ex soldado lleno de dolor y venganza que quiere acabar con aquellos que le arrebataron a su familia en un brutal asesinato. Castle se toma así la justicia por su mano al descubrir una conspiración que oculta el mundo criminal de Nueva York y decide acabar con todo aquel que considera maleantes.', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series_generos`
--

CREATE TABLE `series_generos` (
  `Serie` int(3) NOT NULL,
  `Genero` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporadas`
--

CREATE TABLE `temporadas` (
  `idTempo` int(3) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `serie` int(2) NOT NULL,
  `temporada` int(3) NOT NULL,
  `capitulos` int(2) NOT NULL,
  `lanzamiento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `temporadas`
--

INSERT INTO `temporadas` (`idTempo`, `nombre`, `serie`, `temporada`, `capitulos`, `lanzamiento`) VALUES
(1, 'Sherlock T4', 11, 4, 3, 'enero 2017'),
(2, 'Luke Cage T1', 9, 1, 13, 'septiembre 2016'),
(3, 'Juego de Tronos T3', 1, 3, 10, 'marzo 2013'),
(4, 'Juego de Tronos T4', 1, 4, 10, 'abril 2014'),
(5, 'Iron Fist T1', 12, 1, 13, 'marzo 2017'),
(6, 'Juego de Tronos T5', 1, 5, 10, 'abril 2015'),
(7, 'Juego de Tronos T6', 1, 6, 10, 'abril 2016'),
(8, 'Jessica Jones T1', 2, 1, 13, 'noviembre 2015'),
(9, 'Gotham T1', 3, 1, 22, 'septiembre 2014'),
(10, 'Gotham T2', 3, 2, 22, 'septiembre 2015'),
(11, 'Daredevil T1', 4, 1, 13, 'abril 2015'),
(12, 'Daredevil T2', 4, 2, 13, 'marzo 2016'),
(13, 'Silicon Valley T1', 5, 1, 8, 'abril 2014'),
(14, 'Silicon Valley T2', 5, 2, 10, 'abril 2015'),
(15, 'The Flash T1', 6, 1, 23, 'octubre 2014'),
(16, 'The Flash T2', 6, 2, 23, 'octubre 2015'),
(17, 'Mr. Robot T1', 8, 1, 10, 'junio 2015'),
(18, 'Black Mirror T1', 10, 1, 3, 'diciembre 2011'),
(19, 'Black Mirror T2', 10, 2, 4, 'febrero 2013'),
(20, 'Black Mirror T3', 10, 3, 6, 'octubre 2016'),
(21, 'SHIELD T1', 13, 1, 22, 'septiembre 2013'),
(22, 'Juego de Tronos T7', 1, 7, 7, 'julio 2017'),
(23, 'Defenders T1', 14, 1, 8, 'agosto 2017'),
(24, 'Silicon Valley T3', 5, 3, 10, 'abril 2016'),
(25, 'Silicon Valley T4', 5, 4, 10, 'abril 2017'),
(26, 'SHIELD T2', 13, 2, 22, 'septiembre 2014'),
(27, 'Stranger T1', 15, 1, 8, 'julio 2016'),
(28, 'Stranger T2', 15, 2, 9, 'octubre 2017'),
(29, 'Jessica Jones T2', 2, 2, 13, 'marzo 2018'),
(30, 'Punisher T1', 16, 1, 13, 'noviembre 2017');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universos`
--

CREATE TABLE `universos` (
  `id` int(3) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `universos`
--

INSERT INTO `universos` (`id`, `nombre`) VALUES
(1, 'Uncharted'),
(2, 'Dark Souls'),
(3, 'Borderlands'),
(4, 'Far Cry'),
(5, 'Assassin\'s Creed'),
(6, 'Saint Seiya'),
(7, 'LEGO'),
(8, 'Kingdom Hearts'),
(9, 'Dark Souls'),
(10, 'Final Fantasy'),
(11, 'God of War'),
(12, 'The Legend of Zelda'),
(13, 'Persona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUser` int(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `descrip` varchar(160) NOT NULL,
  `twitter` varchar(30) NOT NULL,
  `role` enum('admin','mod','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUser`, `email`, `password`, `nick`, `descrip`, `twitter`, `role`) VALUES
(1, 'guest@progress.com', '0c0438a2d770051789cbafdd47fe25a9d7f74587', 'invitado', 'Hola! Soy una cuenta de invitado. Si quieres gozar de todas las ventajas de la web, regístrate.', '', 'user'),
(2, 'sefirot.maya@gmail.com', '6223e7cf6562ddb74335e20447ced220498233ff', 'nejima', 'Freak y Geek amante del bit. Otaku, prototipo malo de escritor y Zeldadicto. Support en mis ratos libres y Gamer 24/7. Metroid es Bien. De la casa Ravenclaw.', '@nejimaerland', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_animes`
--

CREATE TABLE `usuarios_animes` (
  `cod_usu` int(1) NOT NULL,
  `cod_ani` int(3) NOT NULL,
  `fecha` date NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `puntuacion` decimal(3,2) NOT NULL,
  `estado` enum('Completado','Viendo','Pendiente') NOT NULL,
  `empezado` date NOT NULL,
  `favorito` enum('Si','No','Por determinar') NOT NULL DEFAULT 'Por determinar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_animes`
--

INSERT INTO `usuarios_animes` (`cod_usu`, `cod_ani`, `fecha`, `hora`, `puntuacion`, `estado`, `empezado`, `favorito`) VALUES
(1, 1, '0000-00-00', '2018-06-20 00:02:59', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 2, '0000-00-00', '2018-06-20 00:08:19', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 3, '2016-04-05', '2016-04-05 21:43:14', '0.00', 'Completado', '0000-00-00', 'No'),
(1, 4, '0000-00-00', '2018-06-20 00:11:35', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 5, '0000-00-00', '2018-06-20 00:12:15', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 6, '2016-04-02', '2016-04-05 22:08:46', '0.00', 'Completado', '0000-00-00', 'No'),
(1, 7, '2016-03-20', '2016-04-05 22:19:36', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 8, '2016-02-22', '2016-04-05 22:23:46', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 10, '2016-06-24', '2016-04-08 00:19:57', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 11, '2016-06-28', '2016-06-27 19:08:25', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 12, '2016-08-14', '2016-06-28 20:27:10', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 13, '2017-07-24', '2017-07-25 07:20:36', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 14, '2016-09-25', '2016-09-24 20:40:59', '0.00', 'Completado', '0000-00-00', 'No'),
(1, 15, '2016-12-09', '2016-12-19 17:12:53', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 16, '2017-06-18', '2017-07-02 07:00:09', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 17, '0000-00-00', '2018-06-19 23:40:05', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 18, '2017-10-13', '2017-08-12 21:23:33', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 19, '0000-00-00', '2018-06-20 00:42:58', '0.00', 'Pendiente', '0000-00-00', 'Por determinar'),
(1, 20, '2018-03-25', '2017-08-14 10:04:40', '7.50', 'Completado', '0000-00-00', 'No'),
(1, 21, '2017-11-21', '2017-08-20 18:32:15', '0.00', 'Completado', '0000-00-00', 'Por determinar'),
(1, 22, '0000-00-00', '2018-06-20 00:39:37', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 23, '0000-00-00', '2018-06-19 23:56:15', '0.00', 'Pendiente', '0000-00-00', 'No'),
(1, 24, '2018-01-23', '2017-12-04 14:45:19', '0.00', 'Completado', '0000-00-00', 'No'),
(1, 25, '2018-02-11', '2018-02-20 21:57:03', '0.00', 'Completado', '0000-00-00', 'Si'),
(1, 26, '2018-02-21', '2018-02-20 22:06:03', '0.00', 'Completado', '0000-00-00', 'No'),
(1, 27, '2018-06-10', '2018-02-20 22:10:47', '8.10', 'Completado', '2018-01-07', 'Si'),
(1, 28, '0000-00-00', '2018-02-20 22:14:35', '0.00', 'Viendo', '0000-00-00', 'Si'),
(1, 29, '2018-03-04', '2018-02-27 11:05:34', '8.20', 'Completado', '0000-00-00', 'No'),
(1, 30, '0000-00-00', '2018-05-14 13:05:24', '0.00', 'Viendo', '2018-04-08', 'Si'),
(1, 31, '0000-00-00', '2018-06-13 15:22:43', '0.00', 'Pendiente', '0000-00-00', 'No'),
(1, 32, '0000-00-00', '2018-06-13 15:31:34', '0.00', 'Pendiente', '0000-00-00', 'Por determinar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_comics`
--

CREATE TABLE `usuarios_comics` (
  `cod_usu` int(1) NOT NULL,
  `cod_com` int(3) NOT NULL,
  `comprado` enum('Si','No') NOT NULL,
  `favorito` enum('Si','No','Por determinar') NOT NULL,
  `fecha` date NOT NULL,
  `puntuacion` decimal(3,2) NOT NULL,
  `estado` enum('Leido','Por leer','Por comprar') NOT NULL,
  `prioridad` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_comics`
--

INSERT INTO `usuarios_comics` (`cod_usu`, `cod_com`, `comprado`, `favorito`, `fecha`, `puntuacion`, `estado`, `prioridad`) VALUES
(1, 1, 'Si', 'Si', '2016-08-23', '8.70', 'Leido', NULL),
(1, 2, 'Si', 'Si', '2016-09-01', '8.50', 'Leido', NULL),
(1, 3, 'Si', 'Si', '2016-11-01', '9.10', 'Leido', NULL),
(1, 4, 'Si', 'Si', '2017-02-15', '9.25', 'Leido', NULL),
(1, 5, 'Si', 'Si', '2017-02-10', '8.80', 'Leido', NULL),
(1, 6, 'Si', 'Si', '2017-07-31', '8.20', 'Leido', NULL),
(1, 7, 'Si', 'Si', '0000-00-00', '0.00', 'Leido', NULL),
(1, 8, 'Si', 'No', '2017-04-27', '8.00', 'Leido', NULL),
(1, 9, 'Si', 'Por determinar', '0000-00-00', '0.00', 'Por leer', 3),
(1, 10, 'Si', 'Por determinar', '0000-00-00', '0.00', 'Por leer', 4),
(1, 11, 'Si', 'Por determinar', '0000-00-00', '0.00', 'Por leer', 2),
(1, 12, 'Si', 'Por determinar', '0000-00-00', '0.00', 'Por leer', 5),
(1, 13, 'No', 'Por determinar', '0000-00-00', '0.00', 'Por comprar', 1),
(1, 14, 'No', 'Por determinar', '0000-00-00', '0.00', 'Por comprar', 2),
(1, 15, 'No', 'Por determinar', '0000-00-00', '0.00', 'Por comprar', 3),
(1, 16, 'No', 'Por determinar', '0000-00-00', '0.00', 'Por comprar', 4),
(1, 17, 'Si', 'Por determinar', '0000-00-00', '0.00', 'Por leer', 1),
(1, 18, 'No', 'Por determinar', '0000-00-00', '0.00', 'Por comprar', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_juegos`
--

CREATE TABLE `usuarios_juegos` (
  `cod_usu` int(1) NOT NULL,
  `cod_jue` int(3) NOT NULL,
  `plataforma` int(2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `puntuacion` decimal(3,2) NOT NULL,
  `estado` enum('Completado','Jugando','Pendiente') NOT NULL,
  `coleccion` enum('Si','No') NOT NULL,
  `favorito` enum('Si','No','Por determinar') NOT NULL DEFAULT 'Por determinar',
  `prioridad` int(1) DEFAULT NULL,
  `empezado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_juegos`
--

INSERT INTO `usuarios_juegos` (`cod_usu`, `cod_jue`, `plataforma`, `fecha`, `hora`, `puntuacion`, `estado`, `coleccion`, `favorito`, `prioridad`, `empezado`) VALUES
(1, 1, 1, '2016-05-18', '2016-05-28 23:41:33', '9.40', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 3, 1, '2016-05-12', '2016-05-29 10:35:31', '9.10', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 4, 1, '2016-03-20', '2016-05-29 12:38:20', '8.50', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 5, 1, '2016-06-06', '2016-06-08 19:25:11', '8.10', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 6, 1, '2016-07-03', '2016-07-03 10:13:44', '8.55', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 7, 4, '2016-07-30', '2016-08-04 18:35:46', '9.05', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 8, 1, '2016-08-11', '2016-08-14 22:14:51', '8.30', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 9, 1, '2016-08-20', '2016-08-20 16:39:15', '8.20', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 10, 4, '2016-08-21', '2016-08-20 16:43:40', '9.25', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 11, 1, '2016-09-11', '2016-09-11 18:47:04', '8.75', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 12, 1, '2017-09-05', '2016-09-11 18:52:57', '9.50', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 13, 1, '2016-09-18', '2016-09-24 20:48:52', '8.80', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 14, 1, '2016-10-17', '2016-10-17 18:33:18', '8.90', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 15, 4, '2016-10-23', '2016-10-22 22:34:21', '9.20', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 16, 1, '0000-00-00', '2016-10-23 09:02:40', '0.00', 'Pendiente', 'Si', 'No', NULL, '0000-00-00'),
(1, 17, 4, '0000-00-00', '2016-10-23 09:11:35', '0.00', 'Pendiente', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 18, 1, '2016-12-04', '2016-11-05 15:23:41', '9.75', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 19, 1, '2016-12-08', '2016-12-19 16:46:39', '9.30', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 20, 1, '2016-12-18', '2016-12-19 16:52:26', '9.60', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 21, 1, '2017-01-02', '2016-12-19 16:57:30', '8.50', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 22, 6, '2017-08-08', '2016-12-19 17:03:48', '8.75', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 23, 1, '0000-00-00', '2016-12-20 16:58:00', '0.00', 'Pendiente', 'Si', 'Por determinar', 1, '0000-00-00'),
(1, 24, 4, '2017-01-14', '2016-12-20 16:52:52', '9.30', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 25, 1, '2016-01-13', '2016-12-20 17:08:01', '8.50', 'Completado', 'No', 'Si', NULL, '0000-00-00'),
(1, 26, 5, '2015-08-20', '2016-12-20 17:12:50', '9.00', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 27, 1, '2016-07-10', '2016-12-20 17:42:05', '9.10', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 30, 4, '2017-01-14', '2017-01-14 18:35:39', '8.30', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 31, 1, '2017-01-29', '2017-01-29 13:18:26', '9.40', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 32, 5, '2017-02-18', '2017-02-03 20:49:05', '0.99', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 33, 7, '0000-00-00', '2017-02-05 11:20:01', '9.20', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 34, 7, '0000-00-00', '2017-02-05 11:49:02', '9.55', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 36, 8, '2017-04-09', '2017-03-18 12:12:05', '9.80', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 37, 5, '2017-04-02', '2017-03-18 12:28:50', '8.80', 'Completado', 'No', 'No', NULL, '0000-00-00'),
(1, 38, 5, '2009-10-25', '2017-04-04 16:55:38', '9.70', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 39, 5, '2011-11-16', '2017-04-04 16:57:26', '9.60', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 40, 5, '2008-12-16', '2017-04-04 17:05:27', '9.30', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 41, 1, '2017-06-05', '2017-04-09 09:31:49', '9.70', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 42, 1, '0000-00-00', '2017-04-09 09:34:52', '0.00', 'Pendiente', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 43, 9, '0000-00-00', '2017-05-15 20:19:11', '0.00', 'Pendiente', 'No', 'Por determinar', NULL, '0000-00-00'),
(1, 44, 1, '2017-08-03', '2017-07-02 07:18:00', '9.05', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 45, 1, '2017-07-19', '2017-08-01 15:17:43', '7.80', 'Completado', 'No', 'No', NULL, '0000-00-00'),
(1, 46, 6, '2017-08-01', '2017-08-01 15:24:43', '8.70', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 47, 4, '2017-08-03', '2017-08-01 15:33:53', '8.70', 'Completado', 'No', 'No', NULL, '0000-00-00'),
(1, 49, 1, '2017-10-05', '2017-09-20 14:41:49', '9.55', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 50, 1, '2017-10-28', '2017-09-12 16:02:22', '9.45', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 51, 1, '0000-00-00', '2017-08-21 09:53:45', '0.00', 'Pendiente', 'Si', 'No', NULL, '0000-00-00'),
(1, 52, 1, '2017-08-30', '2017-08-25 10:46:08', '8.90', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 53, 1, '2017-09-24', '2017-08-30 11:12:45', '9.25', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 54, 8, '2017-09-13', '2017-09-06 08:58:21', '9.00', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 55, 1, '0000-00-00', '2017-09-12 15:49:54', '0.00', 'Pendiente', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 56, 1, '2017-11-21', '2017-09-12 16:01:43', '9.15', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 57, 6, '0000-00-00', '2017-09-12 16:15:42', '0.00', 'Jugando', 'No', 'Por determinar', NULL, '0000-00-00'),
(1, 58, 8, '2018-03-10', '2017-09-28 18:37:32', '8.25', 'Completado', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 59, 4, '2017-10-10', '2017-10-06 00:01:08', '8.90', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 60, 4, '2017-10-13', '2017-10-11 23:10:43', '9.25', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 61, 8, '2017-10-30', '2017-11-01 14:55:04', '9.75', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 62, 4, '0000-00-00', '2017-11-01 14:56:56', '0.00', 'Pendiente', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 63, 1, '2018-01-21', '2017-11-01 15:01:19', '9.00', 'Completado', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 64, 1, '2018-03-06', '2018-02-20 21:41:45', '9.15', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 65, 8, '2018-04-05', '2018-03-10 14:29:55', '9.35', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 66, 5, '2018-03-20', '2018-03-15 21:01:34', '8.60', 'Completado', 'Si', 'Por determinar', NULL, '0000-00-00'),
(1, 67, 8, '2018-03-22', '2018-03-22 20:30:53', '8.60', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 68, 1, '2018-04-14', '2018-04-16 09:14:36', '9.00', 'Completado', 'Si', 'No', NULL, '0000-00-00'),
(1, 69, 5, '2013-09-19', '2018-04-16 09:20:41', '9.35', 'Completado', 'Si', 'Si', NULL, '0000-00-00'),
(1, 70, 5, '2010-03-19', '2018-04-16 10:05:11', '9.45', 'Completado', 'No', 'Si', NULL, '0000-00-00'),
(1, 71, 1, '2018-05-17', '2018-04-16 10:15:45', '9.55', 'Completado', 'Si', 'Si', NULL, '2018-04-24'),
(1, 72, 4, '0000-00-00', '2018-06-18 15:20:18', '0.00', 'Pendiente', '', 'Por determinar', 2, '0000-00-00'),
(1, 73, 1, '2018-06-06', '2018-06-06 10:23:53', '8.00', 'Completado', 'Si', 'No', NULL, '2018-06-04'),
(1, 74, 6, '0000-00-00', '2018-06-06 11:07:59', '0.00', 'Jugando', 'No', 'Si', NULL, '2018-06-28'),
(1, 75, 4, '0000-00-00', '2018-06-13 16:21:25', '0.00', 'Jugando', 'No', 'Por determinar', NULL, '2018-06-13'),
(1, 76, 8, '0000-00-00', '2018-06-21 17:06:42', '0.00', 'Pendiente', 'Si', 'Por determinar', 3, '0000-00-00'),
(1, 77, 4, '0000-00-00', '2018-06-21 17:11:45', '0.00', 'Pendiente', 'No', 'Por determinar', 4, '0000-00-00'),
(1, 78, 8, '0000-00-00', '2018-06-21 17:47:56', '0.00', 'Pendiente', 'No', 'Por determinar', 5, '0000-00-00'),
(2, 36, 8, '0000-00-00', '2018-06-05 18:14:14', '0.00', 'Jugando', '', 'Por determinar', NULL, '2018-06-12'),
(2, 50, 1, '0000-00-00', '2018-06-19 18:13:14', '0.00', 'Pendiente', 'No', 'Por determinar', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_series`
--

CREATE TABLE `usuarios_series` (
  `cod_usu` int(1) NOT NULL,
  `cod_ser` int(3) NOT NULL,
  `fecha` date NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `puntuacion` decimal(3,2) NOT NULL,
  `estado` enum('Completada','Viendo','Pendiente') NOT NULL,
  `favorito` enum('Si','No','Por determinar') NOT NULL DEFAULT 'Por determinar',
  `empezada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_series`
--

INSERT INTO `usuarios_series` (`cod_usu`, `cod_ser`, `fecha`, `hora`, `puntuacion`, `estado`, `favorito`, `empezada`) VALUES
(1, 1, '2017-02-07', '2017-08-13 17:11:34', '8.10', 'Completada', 'Si', '0000-00-00'),
(1, 2, '2016-10-25', '2017-08-13 17:08:11', '8.00', 'Completada', 'No', '0000-00-00'),
(1, 3, '2016-05-27', '2017-08-13 17:36:46', '9.70', 'Completada', 'No', '0000-00-00'),
(1, 4, '2016-06-02', '2017-08-13 17:36:46', '9.70', 'Completada', 'No', '0000-00-00'),
(1, 5, '2017-08-11', '2017-08-13 18:13:33', '7.80', 'Completada', 'No', '0000-00-00'),
(1, 6, '2016-07-19', '2017-08-13 18:18:23', '8.90', 'Completada', 'No', '0000-00-00'),
(1, 7, '2016-07-21', '2017-08-13 18:18:23', '9.30', 'Completada', 'No', '0000-00-00'),
(1, 8, '2016-05-27', '2017-08-13 18:30:12', '8.90', 'Completada', 'Si', '0000-00-00'),
(1, 9, '0000-00-00', '2017-08-13 18:33:55', '0.00', 'Pendiente', 'Por determinar', '0000-00-00'),
(1, 11, '2016-03-12', '2017-08-13 18:38:31', '9.60', 'Completada', 'Si', '0000-00-00'),
(1, 12, '2016-03-27', '2017-08-13 18:38:31', '9.40', 'Completada', 'Si', '0000-00-00'),
(1, 13, '2016-02-28', '2017-08-13 18:41:15', '9.40', 'Completada', 'Si', '0000-00-00'),
(1, 14, '2017-08-18', '2017-08-13 18:41:15', '9.50', 'Completada', 'Si', '0000-00-00'),
(1, 15, '2016-02-28', '2017-08-13 18:43:59', '8.90', 'Completada', 'Si', '0000-00-00'),
(1, 16, '0000-00-00', '2017-08-13 18:43:59', '0.00', 'Pendiente', 'Por determinar', '0000-00-00'),
(1, 17, '0000-00-00', '2017-08-13 19:31:04', '0.00', 'Pendiente', 'Por determinar', '0000-00-00'),
(1, 18, '2016-11-22', '2017-08-13 19:34:09', '9.20', 'Completada', 'Por determinar', '0000-00-00'),
(1, 19, '2016-11-24', '2017-08-13 19:34:09', '9.30', 'Completada', 'Por determinar', '0000-00-00'),
(1, 20, '2017-01-10', '2017-08-13 19:34:42', '9.10', 'Completada', 'Por determinar', '0000-00-00'),
(1, 21, '2017-08-20', '2017-08-13 19:38:30', '8.50', 'Completada', 'Por determinar', '0000-00-00'),
(1, 22, '2017-08-28', '2017-08-14 10:06:42', '9.30', 'Completada', 'Si', '0000-00-00'),
(1, 23, '2017-08-19', '2017-08-19 11:04:39', '9.30', 'Completada', 'Si', '0000-00-00'),
(1, 24, '2017-08-25', '2017-08-19 11:08:36', '9.30', 'Completada', 'Si', '0000-00-00'),
(1, 25, '2017-09-19', '2017-08-25 20:53:23', '0.00', 'Completada', 'Si', '0000-00-00'),
(1, 26, '0000-00-00', '2017-08-20 18:28:46', '0.00', 'Viendo', 'Por determinar', '0000-00-00'),
(1, 27, '2017-09-16', '2017-09-18 18:44:39', '9.50', 'Completada', 'Si', '0000-00-00'),
(1, 28, '2018-03-15', '2018-03-15 21:53:32', '0.00', 'Completada', 'Si', '0000-00-00'),
(1, 29, '0000-00-00', '2018-05-14 16:20:46', '0.00', 'Pendiente', 'Por determinar', '0000-00-00'),
(1, 30, '0000-00-00', '2018-05-14 16:26:51', '0.00', 'Pendiente', 'Por determinar', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`idAnime`,`precuela`,`secuela`),
  ADD KEY `precuela` (`precuela`),
  ADD KEY `secuela` (`secuela`);

--
-- Indices de la tabla `animes_genero`
--
ALTER TABLE `animes_genero`
  ADD PRIMARY KEY (`Anime`,`Genero`),
  ADD KEY `Genero` (`Genero`);

--
-- Indices de la tabla `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`idComic`);

--
-- Indices de la tabla `desarrolladoras`
--
ALTER TABLE `desarrolladoras`
  ADD PRIMARY KEY (`idDes`);

--
-- Indices de la tabla `generos_animes`
--
ALTER TABLE `generos_animes`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `generos_juegos`
--
ALTER TABLE `generos_juegos`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `generos_series`
--
ALTER TABLE `generos_series`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`idJuego`),
  ADD KEY `universo` (`universo`),
  ADD KEY `desarrollador` (`desarrollador`);

--
-- Indices de la tabla `juegos_generos`
--
ALTER TABLE `juegos_generos`
  ADD PRIMARY KEY (`Juego`,`Genero`),
  ADD KEY `Genero` (`Genero`);

--
-- Indices de la tabla `juegos_plataformas`
--
ALTER TABLE `juegos_plataformas`
  ADD PRIMARY KEY (`Juego`,`Plataforma`),
  ADD KEY `juegosplataforma_ibfk_2` (`Plataforma`);

--
-- Indices de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`idSerie`);

--
-- Indices de la tabla `series_generos`
--
ALTER TABLE `series_generos`
  ADD PRIMARY KEY (`Serie`,`Genero`),
  ADD KEY `Genero` (`Genero`);

--
-- Indices de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD PRIMARY KEY (`idTempo`),
  ADD KEY `temporadas_ibfk_1` (`serie`);

--
-- Indices de la tabla `universos`
--
ALTER TABLE `universos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUser`);

--
-- Indices de la tabla `usuarios_animes`
--
ALTER TABLE `usuarios_animes`
  ADD PRIMARY KEY (`cod_usu`,`cod_ani`),
  ADD KEY `cod_ele` (`cod_ani`);

--
-- Indices de la tabla `usuarios_comics`
--
ALTER TABLE `usuarios_comics`
  ADD PRIMARY KEY (`cod_usu`,`cod_com`),
  ADD KEY `comic` (`cod_com`);

--
-- Indices de la tabla `usuarios_juegos`
--
ALTER TABLE `usuarios_juegos`
  ADD PRIMARY KEY (`cod_usu`,`cod_jue`,`plataforma`),
  ADD KEY `cod_jue` (`cod_jue`),
  ADD KEY `plataforma` (`plataforma`);

--
-- Indices de la tabla `usuarios_series`
--
ALTER TABLE `usuarios_series`
  ADD PRIMARY KEY (`cod_usu`,`cod_ser`),
  ADD KEY `cod_ser` (`cod_ser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animes`
--
ALTER TABLE `animes`
  MODIFY `idAnime` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `comics`
--
ALTER TABLE `comics`
  MODIFY `idComic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `desarrolladoras`
--
ALTER TABLE `desarrolladoras`
  MODIFY `idDes` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `generos_animes`
--
ALTER TABLE `generos_animes`
  MODIFY `idGenero` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `generos_juegos`
--
ALTER TABLE `generos_juegos`
  MODIFY `idGenero` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `generos_series`
--
ALTER TABLE `generos_series`
  MODIFY `idGenero` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `idJuego` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `idSerie` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `idTempo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `universos`
--
ALTER TABLE `universos`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animes_genero`
--
ALTER TABLE `animes_genero`
  ADD CONSTRAINT `animes_genero_ibfk_1` FOREIGN KEY (`Anime`) REFERENCES `animes` (`idAnime`) ON DELETE CASCADE,
  ADD CONSTRAINT `animes_genero_ibfk_2` FOREIGN KEY (`Genero`) REFERENCES `generos_animes` (`idGenero`);

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_4` FOREIGN KEY (`universo`) REFERENCES `universos` (`id`),
  ADD CONSTRAINT `juegos_ibfk_7` FOREIGN KEY (`desarrollador`) REFERENCES `desarrolladoras` (`idDes`);

--
-- Filtros para la tabla `juegos_generos`
--
ALTER TABLE `juegos_generos`
  ADD CONSTRAINT `juegos_generos_ibfk_1` FOREIGN KEY (`Juego`) REFERENCES `juegos` (`idJuego`) ON DELETE CASCADE,
  ADD CONSTRAINT `juegos_generos_ibfk_2` FOREIGN KEY (`Genero`) REFERENCES `generos_juegos` (`idGenero`) ON DELETE CASCADE;

--
-- Filtros para la tabla `juegos_plataformas`
--
ALTER TABLE `juegos_plataformas`
  ADD CONSTRAINT `juegos_plataformas_ibfk_1` FOREIGN KEY (`Juego`) REFERENCES `juegos` (`idJuego`) ON DELETE CASCADE,
  ADD CONSTRAINT `juegos_plataformas_ibfk_2` FOREIGN KEY (`Plataforma`) REFERENCES `plataformas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `series_generos`
--
ALTER TABLE `series_generos`
  ADD CONSTRAINT `series_generos_ibfk_1` FOREIGN KEY (`Serie`) REFERENCES `series` (`idSerie`) ON DELETE CASCADE,
  ADD CONSTRAINT `series_generos_ibfk_2` FOREIGN KEY (`Genero`) REFERENCES `generos_series` (`idGenero`) ON DELETE CASCADE;

--
-- Filtros para la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD CONSTRAINT `temporadas_ibfk_1` FOREIGN KEY (`serie`) REFERENCES `series` (`idSerie`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios_animes`
--
ALTER TABLE `usuarios_animes`
  ADD CONSTRAINT `usuarios_animes_ibfk_1` FOREIGN KEY (`cod_ani`) REFERENCES `animes` (`idAnime`),
  ADD CONSTRAINT `usuarios_animes_ibfk_2` FOREIGN KEY (`cod_usu`) REFERENCES `usuarios` (`idUser`);

--
-- Filtros para la tabla `usuarios_comics`
--
ALTER TABLE `usuarios_comics`
  ADD CONSTRAINT `usuarios_comics_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `usuarios` (`idUser`),
  ADD CONSTRAINT `usuarios_comics_ibfk_2` FOREIGN KEY (`cod_com`) REFERENCES `comics` (`idComic`);

--
-- Filtros para la tabla `usuarios_juegos`
--
ALTER TABLE `usuarios_juegos`
  ADD CONSTRAINT `usuarios_juegos_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `usuarios` (`idUser`),
  ADD CONSTRAINT `usuarios_juegos_ibfk_2` FOREIGN KEY (`cod_jue`) REFERENCES `juegos` (`idJuego`),
  ADD CONSTRAINT `usuarios_juegos_ibfk_3` FOREIGN KEY (`plataforma`) REFERENCES `plataformas` (`id`);

--
-- Filtros para la tabla `usuarios_series`
--
ALTER TABLE `usuarios_series`
  ADD CONSTRAINT `usuarios_series_ibfk_1` FOREIGN KEY (`cod_usu`) REFERENCES `usuarios` (`idUser`),
  ADD CONSTRAINT `usuarios_series_ibfk_2` FOREIGN KEY (`cod_ser`) REFERENCES `temporadas` (`idTempo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
