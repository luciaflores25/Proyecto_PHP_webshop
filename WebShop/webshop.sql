-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2018 a las 09:12:58
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(63) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `imagen` varchar(400) NOT NULL,
  `idApi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `tipo`, `imagen`, `idApi`) VALUES
(51, 'VANS OLD SKOOL estampado negro/blanco', 'Zapatillas old skool estampado negro/blanco VANS', '60', 'Zapatos', 'https://adablanes.files.wordpress.com/2018/01/vans-old-skool-negras.jpg', 0),
(52, 'ADIDAS NMD RUNNER R1 VAPOUR PINK', 'ADIDAS NMD RUNNER R1 VAPOUR PINK BY3059 BRAND NEW IN BOX, UK SIZES 5.5 & 6', '114.99', 'Zapatos', 'https://i.ebayimg.com/images/g/MKcAAOSwA3dYge8U/s-l300.jpg', 0),
(55, 'Botas tacón ancho Yokono marrón', 'Category : Boys Shoes - Brand : Nike - Model : Air Max Goadome - Shoe Type : Boots', '70', 'Zapatos', 'https://www.zalian.es/43048-large_default/botas-yokono-carla-007-choc-negro.jpg', 0),
(57, 'Nike Air Force 1 High 07 Mens Athletic Shoes', 'Category : Mens Shoes - Brand : Nike - Model : Air Force 1 High 07 - Shoe Type : Athletic', '99.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596064669.jpg', 1565881316),
(58, 'Nike Air Max Goadome Mens Boots Shoes', 'Category : Mens Shoes - Brand : Nike - Model : Air Max Goadome - Shoe Type : Boots', '169.90', 'Zapatos', 'https://img.shop.com/Image/260000/266600/266671/products/1521565879.jpg', 1490410040),
(60, 'Nike Air Jordan 12 Retro GG BlueCap/Purple Big Girls Basketball', 'Dual-inspired by the Japanese rising sun flag and a 19th century womens fashion shoe, these simple yet sleek Jordans originally dropped in 1996. Worn by MJ while leading the Chicago Bulls to their fifth championship. It is the first Jordan to sport a...', '99.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596065300.jpg', 1565881947),
(61, 'Nike Air Force 1 07 Womens White/White Basketball Shoes 315115-', 'The Air Force 1, Can a perfect shoe get any better? Meet the iconic AF1, the Nike Air Force 1 07 Shoe. This classic from 1982 delivers the sweetest ride in town.   Features:  - Low-cut collar provides a natural fit around the ankle - Perforations on...', '89.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596064734.jpg', 1565881381),
(62, 'Nike Air Presto Essential Black/Black-Black Mens Running Shoes ', 'The Nike Air Presto Essential Running Shoe is inspired by the comfort and minimalism of a classic T-shirt for lightweight everyday comfort while still giving you great support and cushion with each step you take.   Features:  - Dynamic mesh and...', '119.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596064800.jpg', 1565881447),
(63, 'Nike Air Max 95 Essential Mens Athletic Shoes', 'Category : Mens Shoes - Brand : Nike - Model : Air Max 95 Essential - Shoe Type : Athletic', '149.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1650170279.jpg', 1619990725),
(64, 'adidas Harden Vol. 1 Boys Athletic Shoes', 'Category : Boys Shoes - Brand : adidas - Model : Harden Vol. 1 - Shoe Type : Athletic', '79.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1707038184.jpg', 1676833630),
(65, 'Nike Presto Extreme Boys Athletic Shoes', 'Category : Boys Shoes - Brand : Nike - Model : Presto Extreme - Shoe Type : Athletic', '74.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1707038167.jpg', 1676833613),
(66, 'Nike Air Jordan 7 Retro Pure Money White/Metallic Silver Shoes ', 'The Air Jordan VII originally released in 1992 and was once again designed by Tinker Hatfield. Unlike the previous four models, the 7 did away with the visible Air unit in the heel and Nike Air logo on the heel. They featured a Huarache-like neoprene...', '189.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596065241.jpg', 1565881888),
(67, 'Nike Air Foamposite One Legion Green/Black Mens Basketball Shoe', 'When the Nike Air Foamposite debuted in 1997, it was groundbreaking for many reasons, like its price, construction process, and the new aesthetics it inspired and enabled. It�s been nearly two decades since the Air Foamposite first hit the hardwood....', '199.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1626626515.jpg', 1596445563),
(68, 'Nike Air Jordan 6 Retro Mens Athletic Shoes', 'Category : Mens Shoes - Brand : Nike - Model : Air Jordan 6 Retro - Shoe Type : Athletic', '189.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1626626504.jpg', 1596445552),
(69, 'Nike LeBron 12 Mens Athletic Shoes', 'Category : Mens Shoes - Brand : Nike - Model : LeBron 12 - Shoe Type : Athletic', '195.00', 'Zapatos', 'https://img.shop.com/Image/260000/267500/267594/products/1729067155.jpg', 1698862601),
(70, 'Nike Air Jordan 13 Retro Low Black/Chutney Mens Basketball Shoe', 'The Nike Air Jordan 13 Retro Low Mens Basketball Shoes took on a design from the original Air Jordan XIII which was inspired by MJs black cat alter ego. This version was originally released in 1998. Now, nearly two decades later, the Air Jordan XIII...', '159.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596064635.jpg', 1565881282),
(71, 'NIKE - NIKE AIR MORE UPTEMPO (GS) - 415082-007 - Basketball Sho', 'NIKE AIR MORE UPTEMPO (GS) - 415082-007 - Basketball Shoes - dark stucco, black', '181.00', 'Zapatos', 'https://img.shop.com/Image/260000/267500/267594/products/1639592660.jpg', 1609412901),
(72, 'Nike Mens NSW Gaiter Boot NikeLab Orange/Black AA0530-800', 'Style Name:  NSW Gaiter Boot Gyakusou   Color:  Orange/Black   Condition:  New with box   Condition Notes:  Brand new with original box. 100% Authentic  Style Code:  AA0530-800   GENDER :  Mens   MATERIAL :  Nylon   COLOR :  Orange/Black   YEAR :  2018', '199.00', 'Zapatos', 'https://img.shop.com/Image/260000/267800/267824/products/1639214469.jpg', 1609034699),
(73, 'Nike Air Max 97 Ultra 17 Blue/Obsidian-White Mens Running Shoes', 'Inspired by the original AM 97 and sleek look of a high-speed bullet train, Nike Air Max 97 Ultra 17 Shoe features a lightweight construction and responsive cushioning for lasting comfort we have come to love.   Features:  - Textile and synthetic...', '149.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1714113625.jpg', 1683909071),
(74, 'Nike Air Force 1 07 Wolf Grey/White Mens Basketball Shoes AA408', 'Can a perfect shoe get better? Meet the next-generation embodiment of the iconic AF1, the Nike Air Force 1 07 Shoe. This updated classic from 1982 delivers the sweetest ride in town.   Features:  - Leather upper for premium durability and fit -...', '99.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596470742.jpg', 1566287704),
(75, 'Nike Air Luanr Force 1 Duckboot 17 Grey/Anthracite Mens Shoes 9', 'An update to the classic AF1 that we have come to love, The Nike Lunar Force 1 Duckboot 17 lets you bring your classic AF1s to winter. Its built with an water-repellent leather upper and a WaterShield lining, designed to keep you dry and fresh. The...', '129.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1736477481.jpg', 1706272927),
(76, 'Nike Air Jordan 7 Retro Pantone Blue/White Mens Basketball Shoe', 'The Air Jordan VII originally released in 1992 and was once again designed by Tinker Hatfield. Unlike the previous four models, the 7 did away with the visible Air unit in the heel and Nike Air logo on the heel. They featured a Huarache-like neoprene...', '189.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596065393.jpg', 1565882040),
(77, 'Nike Penny Le Basketball Gradeschool Boys Shoes', 'With an oversized jeweled Swoosh and a visible wraparound Max Air unit in the sole,the Nike Air Max Penny 1 is usually considered the most coveted Anfernee Penny Hardaway signature sneaker.This colorway was allegedly inspired by the Orlando Magics...', '80.06', 'Zapatos', 'https://img.shop.com/Image/260000/266700/266708/products/1705865412.jpg', 1675660858),
(78, 'Nike Air Huarache Cobblestone/White Mens Running Shoes 318429-0', 'The Nike Air Huarache Running Shoes are making a comeback! Composed of a 2 part upper featuring mesh and leather overlays for comfort and strength. Padded tongue and collar complement the cushioned insole and provide you exceptional comfort.  ...', '79.95', 'Zapatos', 'https://img.shop.com/Image/260000/269600/269608/products/1596064737.jpg', 1565881384),
(79, 'Nike Mens Flyknit Trainer Cirrus Blue/Black AH8396-400', 'Style Name:  Flyknit Trainer   Color:  Cirrus Blue/Black   Condition:  New with box   Condition Notes:  Brand new with original box. 100% Authentic  Style Code:  AH8396-400   GENDER :  Mens   MATERIAL :  Flyknit   COLOR :  Cirrus Blue/Black   YEAR : ...', '89.00', 'Zapatos', 'https://img.shop.com/Image/260000/267800/267824/products/1589549164.jpg', 1559229294),
(80, 'Asics Gel Cumulus 19 Grey Black Directoire Blue Mens Athletic R', 'Asics is the leading manufacturer of sports and running shoes. Asics is all about a happy and healthy lifestyle, their athletic running shoes are sure to help keep you in shape and provide comfort. The shoes are one of the most comfortable athletic...', '83.99', 'Zapatos', 'https://img.shop.com/Image/260000/260000/260090/products/1625219124.jpg', 1595037899),
(81, 'Nike Mens Flyknit Trainer Pale Grey/Black AH8396-001', 'Style Name:  Flyknit Trainer   Color:  Pale Grey/Black   Condition:  New with box   Condition Notes:  Brand new with original box. 100% Authentic  Style Code:  AH8396-001   GENDER :  Mens   MATERIAL :  Flyknit   COLOR :  Pale Grey/Black   YEAR :  2017', '139.00', 'Zapatos', 'https://img.shop.com/Image/260000/267800/267824/products/1627960927.jpg', 1597780010),
(82, 'Nike Mens Air Max Woven Boot Navy 921854-400', 'Style Name:  Air Max Woven Boot   Color:  Navy   Condition:  New with box   Condition Notes:  Brand new with original box. 100% Authentic  Style Code:  921854-400   GENDER :  Mens   MATERIAL :  Woven   COLOR :  Navy   YEAR :  2017', '125.00', 'Zapatos', 'https://img.shop.com/Image/260000/267800/267824/products/1590011697.jpg', 1559701834),
(83, 'Nike Mens Air Max Woven Boot Grey/White 921854-001', 'Style Name:  Air Max Woven Boot   Color:  Grey/White   Condition:  New with box   Condition Notes:  Brand new with original box. 100% Authentic  Style Code:  921854-001   GENDER :  Mens   MATERIAL :  Woven   COLOR :  Grey/White   YEAR :  2017', '119.00', 'Zapatos', 'https://img.shop.com/Image/260000/267800/267824/products/1560903236.jpg', 1530175497),
(84, 'Nike Jordan Kids Jordan True Flight GP Basketball Shoe', 'Nike Jordan Kids Jordan True Flight GP Basketball Shoe The Jordan True Flight was inspired by the the design of the Air Jordan VII.   Pull-on tab for easy on and off A solid rubber outsole with herringbone pattern.', '74.90', 'Zapatos', 'https://img.shop.com/Image/260000/266600/266671/products/1683101321.jpg', 1652896767),
(85, 'NIKE - W AIR FOAMPOSITE ONE - AA3963-001 - Basketball Shoes', 'W AIR FOAMPOSITE ONE - AA3963-001 - Basketball Shoes - dark stucco, dark-stucco black', '202.00', 'Zapatos', 'https://img.shop.com/Image/260000/267500/267594/products/1627150553.jpg', 1596969618),
(86, 'Adidas Mens 1974 Track Pants Black', 'Drawcord Waist Hem with Side Seam Zip Pocket on Right Leg and 1974 Pirnted on Upper Left Leg Elastic Ankle Cuffs.', '63.75', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575555980.jpg', 1545050701),
(87, 'Adidas Mens City Energy Pants Black', 'Climalite Fabric Sweeps Sweat Away From Skin and Formotion Follows the Natural Movement of Sport for a Better Fit and Comfort. Slim Fit Drawcord on Elastic Waist with Reflective Details  Front Zip Pockets and', '55.00', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1570119723.jpg', 1539527118),
(88, 'Adidas Mens Sport Luxe Zip Pants Heather Grey', 'Loungy knit pants with reflective calf zippers and trefoil design on left thigh. Wide waistband with drawstring design.', '56.38', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1634684370.jpg', 1604504131),
(89, 'Adidas Mens Climahest Hydro Pants Black', 'Drawcord on Elastic Waist and Ankle Zips for Convenience Front Poclets with Curved Openings Additional Zip Pocket on Left Leg Water Repellant Fabric Overlay in Key Areas Tapered Leg. Climaheat Insulation Uses Hollow Core Fibers Inspired by Natural Fur...', '54.38', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575556838.jpg', 1545051559),
(90, 'Nike Mens Detroit Lions Empower Pants Black', 'Elastic waist with inner drawcord for easy adjustability. Elastic ankle cuffs for the perfect fit with contrast zips on the sides for freedom of movement when you need it. Side zip pockets and additional back zip pocket to stash your stuff safely...', '55.00', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575425797.jpg', 1544915532),
(91, 'Nike Mens Tech Fleece Tapered Sweat Pants Red', 'Elastic waistband with outer drawcord for easy adjustability. Front pockets and zip pocket on the right leg. Soft stretch cotton fabric for ultimate comfort and performance.', '76.75', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1624010301.jpg', 1593828935),
(92, 'Adidas Mens Silas 5 Pocket Pants Grey', 'Front Pockets and Coin Pocket on Right and Back Patch Pockets with Cordura Bottom Inserts. Denim-like Stretch Twill Fabric for Freedom of Movement with Belt Loops and Zip Fly', '51.25', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575555072.jpg', 1545049793),
(93, 'Nike Mens Racer Knit Track Pants Black', 'Stay warm before the starting gun goes off in the Nike Racer Knit Track Pants. Made for quick changes these babies boast ankle zip hems so you can slip em off and hit the starting line.These arent just for pre race warm up either. With Dri FIT...', '69.99', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575424732.jpg', 1544914467),
(94, 'Under Armour Mens Pursuit Cargo Pants Grey', 'Fuller cut for complete comfort. UA Storm technology repels water without sacrificing breathability. Durable stretch woven fabric is light but still has a substantial feel. Multi stretch construction moves better in every direction. Elastic waistband...', '53.74', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1669208490.jpg', 1639028936),
(95, 'Nike Mens Indianapolis Colts Empower Pants Royal Blue', 'Elastic waist with inner drawcord for easy adjustability. Elastic ankle cuffs for the perfect fit with contrast zips on the sides for freedom of movement when you need it. Side zip pockets and additional back zip pocket to stash your stuff safely...', '55.00', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575424757.jpg', 1544914492),
(96, 'Nike Womens Legend 2.0 Heather Dye Tight Pants Teal', 'Heather dye all over with Dri Fit that pulls away sweat to help keep you dry and comfortable. Wide waistband. Show off your muscles. An all around snug fit from waist to leg.', '74.99', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575553976.jpg', 1545048697),
(97, 'Nike Womens Bonded Woven Mishmash Pants White', 'Stretch woven fabric gives you room to move while the stretch ribbed waistband  drawcord and ankles ensure a stellar fit. Nike logo on the hem.  Zipper pocket on the left leg. Plus the jogger style silhouette lets you show off your footwear.', '74.99', 'Pantalones', 'https://img.shop.com/Image/260000/266700/266708/products/1575553999.jpg', 1545048720),
(98, 'Ralph Lauren Mens Varick Straight Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  99% Cotton 1% Elastane   Occasion:  Casual', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1723431708.jpg', 1693227154),
(99, 'Ralph Lauren Mens Big & Tall Classic Casual Chino Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Chino   Material:  100% Cotton   Occasion:  Casual', '50.96', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1723431660.jpg', 1693227106),
(100, 'Ralph Lauren Mens Solid Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  100% Cotton   Occasion:  Casual', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1664757722.jpg', 1634578168),
(101, 'Ralph Lauren Mens Classically Pleated Casual Chino Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Chino   Material:  100% Cotton   Occasion:  Casual', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1653162729.jpg', 1622983175),
(102, 'Ralph Lauren Mens Pleated Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  98% Cotton 2% Spandex   Occasion:  Casual', '67.45', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1736380295.jpg', 1706175741),
(103, 'Ralph Lauren Mens Textured Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  99% Cotton 1% Elastane   Occasion:  Casual', '65.00', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1730196291.jpg', 1699991737),
(104, 'Ralph Lauren Mens Cotton Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  100% Cotton   Occasion:  Casual', '49.40', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1730197244.jpg', 1699992690),
(105, 'Ralph Lauren Mens Classic Stretch Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  99% Cotton 1% Elastane   Occasion:  Casual', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1723415884.jpg', 1693211330),
(106, 'Ralph Lauren Mens Big & Tall Interlock Athletic Track Pants', 'Brand:  Ralph Lauren   Category:  Athletic Pants   Gender:  Mens   Style:  Track   Material:  100% Cotton   Occasion:  Athletic', '57.99', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1638613542.jpg', 1608433772),
(107, 'Ralph Lauren Mens Stretch Classic Casual Chino Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Chino   Material:  99% Cotton 1% Elastane   Occasion:  Casual', '65.00', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1730197292.jpg', 1699992738),
(108, 'Nike Mens Advance Fleece Athletic Track Pants', 'Brand:  Nike   Category:  Athletic Pants   Gender:  Mens   Style:  Track   Material:  76% Cotton 24% Polyester   Occasion:  Athletic', '57.60', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1736381541.jpg', 1706176987),
(109, 'Ralph Lauren Mens Stretch Casual Chino Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Chino   Material:  97% Cotton 3% Elastane   Occasion:  Casual', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1730195501.jpg', 1699990947),
(110, 'Ralph Lauren Mens Cotton Athletic Track Pants', 'Brand:  Ralph Lauren   Category:  Athletic Pants   Gender:  Mens   Style:  Track   Material:  100% Cotton   Occasion:  Athletic', '65.00', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1665523258.jpg', 1635343704),
(111, 'Ralph Lauren Mens Classic Cotton Casual Chino Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Chino   Material:  100% Cotton   Occasion:  Casual', '50.96', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1723431332.jpg', 1693226778),
(112, 'Ralph Lauren Mens Knit Cotton Athletic Track Pants', 'Brand:  Ralph Lauren   Category:  Athletic Pants   Gender:  Mens   Style:  Track   Material:  100% Cotton   Occasion:  Athletic', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1713953767.jpg', 1683749213),
(113, 'Ralph Lauren Mens Classic Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  100% Cotton   Occasion:  Casual', '49.40', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1723431425.jpg', 1693226871),
(114, 'Ralph Lauren Mens Prospect Casual Chino Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Chino   Material:  97% Cotton 3% Elastane   Occasion:  Casual', '51.22', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1723431515.jpg', 1693226961),
(115, 'Ralph Lauren Mens Stretch Classic Casual Corduroy Pants', 'Brand:  Ralph Lauren   Category:  Casual Pants   Gender:  Mens   Style:  Corduroy   Material:  99% Cotton 1% Elastane   Occasion:  Casual', '65.00', 'Pantalones', 'https://img.shop.com/Image/250000/253200/253251/products/1730196517.jpg', 1699991963),
(116, 'Adidas Golf 2017 Mens Performance Short Sleeve Polo Shirt - Viv', 'Simply put, the adidas performance polo is an essential garment for anyone with a flair for winning whether on the scorecard, in the clubhouse or back at the office. Its lightweight jersey fabric ensures comfort and breathability with its...', '50.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1547738898.jpg', 1516923641),
(117, 'Adidas Golf 2017 Mens Performance Short Sleeve Polo Shirt - Pet', 'Simply put, the adidas performance polo is an essential garment for anyone with a flair for winning whether on the scorecard, in the clubhouse or back at the office. Its lightweight jersey fabric ensures comfort and breathability with its...', '50.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1547738902.jpg', 1516923645),
(118, 'Adidas Golf 2017 Mens Branded Performance Short Sleeve Polo Shi', 'Ace the competition in the adidas performance polo, combining good looks with winning performance. Featuring a rib-knit collar and lightweight jersey fabric, to help wick away moisture and provide superior comfort and breathability no matter where you...', '50.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1547260520.jpg', 1516436469),
(119, 'Adidas Golf 2017 Mens ClimaChill Solid Club Polo Shirt - Icey B', 'climachill fabric provides 360 ventilation for maximum cooling. Self collar. 3-button placket. adidas silver \"badge of sport\" heat transfer at left sleeve. 100% Polyester. S-XXXL.  climachill fabric provides 360 degree ventilation for maximum cooling...', '70.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1547283102.jpg', 1516460713),
(120, 'Adidas Golf 2017 Mens ClimaCool 3-Stripes Mapped Polo Shirt - E', 'Engineered jacquard body fabric provides moisture-wicking comfort. Self button-down collar. adidas raised \"badge of sport\" heat transfer at left sleeve. 37%Cotton/ 37%Polyester / 26%MODAL. S-XXL.  Engineered jacquard body fabric provides...', '85.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1598948913.jpg', 1568766453),
(121, 'Adidas Golf 2017 Mens ClimaCool UPF Long Sleeve Polo Shirt', 'Woven Collar. Lightweight climacool body fabric for moisture-wicking comfort. UPF50+ fabrication for powerful sun protection. Four-button placket. 92% polyester/ 8% elastane.  Lightweight climacool body fabric for moisture-wicking comfort and UPF50+...', '65.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1463801578.jpg', 1432934695),
(122, 'Adidas Golf 2017 Mens ClimaCool 3-Stripes Short Sleeve Polo Shi', 'climacool technology provides zonal ventilation for cooling comfort. Lightweight body fabric. Two-color 3-Stripes branding on right shoulder. adidas raised \"badge of sport\" heat transfer at back yoke. UPF 30. 100% Polyester.  climacool technology...', '60.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1484064508.jpg', 1453410365),
(123, 'Adidas Golf 2017 Mens ClimaChill Tonal Stripe Polo Shirt - Icey', 'climachill fabric provides 360 ventilation for maximum cooling. climachill stretch fabric across back yoke provides mobility to swing freely. Stretch-woven collar. 3-button placket. adidas silver \"badge of sport\" heat transfer at left sleeve. 100%...', '75.00', 'Camisetas', 'https://img.shop.com/Image/240000/249500/249525/products/1570376014.jpg', 1539787133),
(124, 'Under Armour Mens Pursuit Wind Long Sleeve T Shirt White', 'This shirt provides a fuller cut for complete comfort. UA Storm technology repels water without sacrificing breathability. Durable woven canvas is lightweight with a more substantial feel. Mesh backed vents and mesh insets increase air flow. Droptail...', '53.11', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1669208915.jpg', 1639029361),
(125, 'Nike Mens Modern Crew Neck Pullover Shirt Dark Blue', 'Ribbed crewneck long sleeve shirt with ribbed cuffs for durability. Raglan sleeves for the perfect fit with no distractions and side zip for optional breathability. Embroidered patched Nike brandmark logo on the left chest', '49.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1669208585.jpg', 1639029031),
(126, 'Nike Mens Run Track and Field T Shirt Charcoal', 'With a classic look and a logo that reps a legendary relationship between Nike and the sport of track and field this t shirt is a must for racers and everyday runners alike. A trifecta of soft fabrics come together to make this tee ultra soft while...', '54.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550882.jpg', 1545045422),
(127, 'Nike Mens Dri Fit Wool Half Zip Running Shirt Muted Blue', 'Half zip front with raised collar and thumbholes on cuffs. Ergonomic seams help you avoid chafing. Advanced Dri Fit wool fabric wicks away sweat and keeps you just warm enough while the mesh lining allows for total breathability', '67.44', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575551118.jpg', 1545045658),
(128, 'Nike Mens Dri Fit Sprint Crew Long Sleeve Running Shirt Blue', 'Warm breathable comfort for high speeds in cool weather. Dri Fit insulating fabric keeps you warm dry and comfortable by wicking sweat away from your skin. Integrated reflective taping on the back and arm seams provide enhanced visibility in any...', '89.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550951.jpg', 1545045491),
(129, 'Nike Mens Dri FIT Wool Crew Running Shirt Red', 'Sweat and cold wont get you down in this tech boosted running shirt. Dri FIT fabric wicks away moisture while lightweight wool locks in just enough heat. Thumbholes and a dropped hem provide stellar coverage on the run while flat seams keep irritation...', '62.50', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550883.jpg', 1545045423),
(130, 'Nike Mens Element Shield Half Zip Running Shirt Dark Teal', 'This top has a mock neck and thumbholes at the cuffs to add coverage and help keep your hands warm on those chilly days. Too hot Nikes Dri FIT fabric wicks sweat from the skin and moves it toward the outer of the fabric where it evaporates keeping you...', '64.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550906.jpg', 1545045446),
(131, 'Nike Mens Dri FIT Knit Short Sleeve Shirt Orange', 'Powerhouse Dri FIT fabric is the base of this running shirt wicking away moisture to keep you dry as you push it on the run. Knit in mesh insets turn the intensity up a notch offering serious ventilation so you stay cool. Seamless construction and...', '50.00', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1601979014.jpg', 1571796637),
(132, 'Nike Mens Racer V Neck Short Sleeve Shirt Grey', 'Theres no need to run in sweat soaked gear any longer. Thanks to the Nike Racer V Neck Dri Fit  Running Shirt youll stay light and dry as you rack up the miles no matter how heated your run gets. Plus set in sleeves and an allover running specific...', '54.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550972.jpg', 1545045512),
(133, 'Nike Mens Pro Combat Hyperwarm Dri Fit Max Hooded Running Shirt', 'Quarter zip front with raised collar and hood. Mesh die and under arm inserts for easy breathability and thumbholes on cuffs. Nike Pro combat Dri Fit max keeps you dry inside and warm to the core moving sweat off the skin to the outer layer quickly....', '89.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550945.jpg', 1545045485),
(134, 'Adidas Mens Aggies Sideline Coaches Shirt Black', 'Contrast Quarter Zip with Low Stand Up Collar and Contrast Collar Hem with Contrast Band Across Upper Back and Backs of Sleeves. Embroidered Texas A&M Logo on Left Chest Embroidered Adidas Brandmark on Right Chest', '48.75', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575557146.jpg', 1545051867),
(135, 'Nike Mens Aeroreact Running Shirt Bright Orange', 'Crewneck running shirt constructed with breathable mesh material and Dri Fit technology that wicks sweat away from the skin to keep you dry cool and comfortable. Reflective details keep you visible in low light situations. Raglan short sleeves for the...', '55.19', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1602004397.jpg', 1571822020),
(136, 'Nike Mens Aeroreact Running Shirt Blue', 'Crewneck running shirt constructed with breathable mesh material and Dri Fit technology that wicks sweat away from the skin to keep you dry cool and comfortable. Reflective details keep you visible in low light situations. Raglan short sleeves for the...', '55.19', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1602003927.jpg', 1571821550),
(137, 'Nike Mens Ultimate Dry Training T Shirt Heather Grey', 'Crewneck athletic shirt with allover pattern and breathable moisture managing mesh material. Dri Fit technology wicks sweat away from the skin to keep you dry and comfortable. Nike swoosh on the left chest.', '49.75', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1602004709.jpg', 1571822332),
(138, 'Nike Mens Washington Nationals Therma Fit Crew Shirt Red', 'Nike Mens Washington Nationals Therma Fit Crew Shirt Red', '50.25', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575425995.jpg', 1544915730),
(139, 'Nike Mens Track and Field Utility T Shirt White', 'Nike track and field logo across chest with screen print designs on side sleeves. Long sleeves with bottom ribbed cuffs for durability. Drop back hem for added coverage and back camo zipper pocket made of contrast material to stash your stuff on the go', '49.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1602004161.jpg', 1571821784),
(140, 'Nike Mens Element Sphere Half Zip Running Shirt Heather Turquoi', 'Delivers warmth and comfort from the sweat wicking techno down to the thumbholes with fold over mittens. Its reflective details remain visible in low light keeping you on a route without limits.  Nike sphere fabric helps keep you warm. Raglan sleeves...', '84.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575554529.jpg', 1545049250),
(141, 'Adidas Mens Badgers Sideline Coaches Shirt Red', 'Quarter Zip with Low Stand Up Collar and Contrast Collar Hem Climalite Fabric Sweeps Sweat Away From Your Skin. Contrast Band Across Upper Back and Backs of Sleeves with Embroidered Wisconsin Logo on Left Chest and Embroidered Adidas Brandmark on...', '48.75', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575556466.jpg', 1545051187),
(142, 'Nike Mens Pro Combat Hyperwarm Dri Fit Max Hooded Running Shirt', 'Quarter zip front with raised collar and hood. Mesh die and under arm inserts for easy breathability and thumbholes on cuffs. Nike Pro combat Dri Fit max keeps you dry inside and warm to the core moving sweat off the skin to the outer layer quickly....', '89.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575551240.jpg', 1545045780),
(143, 'Adidas Mens AdiStar Prime Knit Athletic Shirt Blue', 'Stretch Material Running Top with Adidas Brandmark on Left Chest  .', '55.00', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575556255.jpg', 1545050976),
(144, 'Nike Mens 2015 Chicago Marathon Element Half Zip Shirt Royal Bl', 'Long sleeve half zip running shirt with Dri fit technology that wicks sweat away from skin to keep you dry and warm while you rack up the miles. This shirt blocks wind chill with the raised collar extra long sleeves with thumbholes. 2015 Chicago...', '50.00', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1575556675.jpg', 1545051396),
(145, 'Nike Mens Hyper Elite Hooded Shooter Basketball Shirt Blue', 'Hooded shirt with drop back hem. Mesh panels on sides and under arms for breathability. Dri Fit technology wicks sweat away from the skin to keep you dry cool and comfortable. Reflective Nike swoosh logo on bottom sleeve. Zip pocket on left chest', '74.99', 'Camisetas', 'https://img.shop.com/Image/260000/266700/266708/products/1624010340.jpg', 1593828974),
(148, 'Calvin Klein Womens Sleeveless Zipper Sheath Dress (8, Orange)', 'Polyester/Spandex  Dry clean  Country of Origin: China  Retail Price: $134.00', '74.99', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1726767301.jpg', 1696562747),
(150, 'Calvin Klein Womens Plus Size Sunburst Crepe Sheath Dress (20W,', 'Dress features no lining, round neck, no sleeves, pleated crepe fabric, sheath silhouette, and concealed back zipper closure.  Polyester/Spandex  No lining  Concealed back zipper  No sleeves  Pleated crepe fabric  Sheath silhouette  Dry clean  Country...', '99.98', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1737768551.jpg', 1707563997),
(152, 'Calvin Klein Womens Beaded-Trim Illusion Jersey Dress', 'Dress features full lining, illusion neckline, short sleeves, beaded trim, pleated jersey fabric, and concealed back zipper closure.  95% Polyester/5% Spandex, 80% Polyester/20% Spandex  Full lining: 100% Polyester  Concealed back zipper  Illusion...', '74.97', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1725754463.jpg', 1695549909),
(157, 'Calvin Klein Womens Satin Fit & Flare Dress (12, Regatta)', '100% Polyester  Dry clean  Country of Origin: China  Retail Price: $159.00', '62.99', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1729512429.jpg', 1699307875),
(158, 'Calvin Klein Womens Petite Embroidered Lace Sheath Dress (6P, K', 'Polyester/Nylon  Dry clean  Country of Origin: Indonesia  Retail Price: $149.00', '74.99', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1737576054.jpg', 1707371500),
(159, 'Calvin Klein Womens Petite Embroidered Lace Sheath Dress (8P, K', 'Polyester/Nylon  Dry clean  Country of Origin: Indonesia  Retail Price: $149.00', '79.99', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1726771728.jpg', 1696567174),
(160, 'Calvin Klein Womens Plus Sunburst Crepe Sheath Dress (18W, Rega', 'Dress features no lining, round neck, no sleeves, pleated crepe fabric, sheath silhouette, and concealed back zipper closure.   Polyester/Spandex  No lining  Concealed back zipper  No sleeves  Pleated crepe fabric  Sheath silhouette  Dry clean ...', '69.98', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1725757762.jpg', 1695553208),
(161, 'Calvin Klein Womens Embellished Crinkled Taffeta Sheath Dress', 'Dress features full lining, V-neckline, sleeveless, sheath silhouette, rayon blend fabric, and concealed back zipper closure.  38% Rayon/32% Polyester/27% Nylon/3% Spandex  Full lining: 100% Polyester  Concealed back zipper  V-neckline  Sleeveless ...', '63.96', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1725758897.jpg', 1695554343),
(166, 'Calvin Klein Womens Short-Sleeve Cowl-Back Sequin Sheath Dress ', 'Polyester  Dry clean  Country of Origin: China  Retail Price: $179.00', '68.99', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1726767818.jpg', 1696563264),
(167, 'Calvin Klein Womens Metallic Glitter Dress (8, Black/Multi)', 'Dress features full lining, V-neckline, long sleeves, glittered jersey fabric, sheath silhouette, clasp detail front, and concealed side zipper closure. Material note: Glitter shed may occur over time; during wearing and washing. This is not to be...', '69.97', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1725755010.jpg', 1695550456),
(168, 'Calvin Klein Womens Metallic Pintucked Sleeveless Dress', 'Dress features full lining, round neck, sleeveless, metallic pintucked knit fabric, sheath silhouette, concealed back zipper closure.  51% Nylon/40% Polyester/5% Spandex/4% Metallic, 80% Polyester/20% Spandex  Full lining: 100% Polyester  Concealed...', '63.96', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1725752777.jpg', 1695548223),
(169, 'Calvin Klein Womens Lace Sleeveless Sheath Dress', 'Dress features lining and cut out back.  Back zippers  Pull over style  Round neck  Sleeveless  Lined  Dry clean  Country of Origin: China  Retail Price: $169.00', '69.97', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1725757317.jpg', 1695552763),
(174, 'Calvin Klein Womens Sequined Sheath Dress (12, Gold)', '100% Polyester  Dry clean  Country of Origin: China  Retail Price: $199.00', '94.99', 'Vestidos', 'https://img.shop.com/Image/260000/264900/264928/products/1737614868.jpg', 1707410314),
(176, 'Adidas Mens Premium Fleece Crew Sweatshirt Light Grey', 'Pullover Sweater with Raglan Sleeves and Stitched Elbow Patchest Ribbed Crewneck Cuffs and Hem and Ribbed Side Panels. Embossed Adidas Wordmark and Trefoil on Chest', '57.50', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1569864320.jpg', 1539267150),
(177, 'Adidas Mens Premium Essentials Crew Sweatshirt Premium Green Me', 'Hidden Side Seam Pockets and Ribbed Crewneck with V-shaped Front Stitching Detail. Contrast Back Neck Tape with Ribbed Cuffs and Hem', '51.25', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1575425632.jpg', 1544915367),
(179, 'Nike Mens Track and Field Asymmetrical Crewneck Sweatshirt Blac', 'Lightweight and stylish asymmetrical crewneck has a sporty French Terry feel with a modern asymmetrical zippered pocket on the left side. The bold screen print on the front gives you great style and shows out for NTF. Raglan sleeves and ribbed cuffs...', '55.81', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1575424923.jpg', 1544914658),
(180, 'Adidas Mens Premium Fleece Crew Sweatshirt with Adidas Logo on ', 'Crewneck Sweatshirt with Stitched Elbow Details. Ribbed Neckline and Cuffs with Underarm and Side Gusset Details', '57.50', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1569864454.jpg', 1539267284),
(181, 'Adidas Mens Tracked Sweatshirt Grey', 'Full Zip with Kangarro Pockets and Drawcord Hood Ribbed Cuffs and Hem . Color Blocked Design with Contrasting Adidas Three Bands Along Top Sleeves', '51.25', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1569864354.jpg', 1539267184),
(182, 'Nike Mens Track and Field Asymmetrical Crewneck Sweatshirt Heat', 'Lightweight and stylish asymmetrical crewneck has a sporty French Terry feel with a modern asymmetrical zippered pocket on the left side. The bold screen print on the front gives you great style and shows out for NTF. Raglan sleeves and ribbed cuffs...', '55.81', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1575426066.jpg', 1544915801),
(183, 'Nike Mens AW77 Speed Stripe Crew Sweatshirt Grey', 'Crew Neck Pullover Sweat Shirt with Graphic Design on Front and Back and Contrast Sleeves and Hem. Small Nike Patch on Left Chest', '53.13', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1575425075.jpg', 1544914810),
(184, 'Nike Mens Flight Hooded Dri Fit Sweatshirt Cool Grey', 'Full zip sweatshirt with drawcord adjustable hood and front zip pockets. Ribbed cuffs and back hem. Contrast double layer front panel for added warmth and contrast zip and piping for a standout look. Embroidered Jumpman on left chest. Dri Fit...', '75.00', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1582753613.jpg', 1552342580),
(185, 'Nike Hyperwarm Dri-Fit Max Quarter-Zip Hoodie (Black/Volt/Volt)', 'The Nike Hyperwarm Athlete Sr.  Pullover Hoody offers warm comfort and freedom of movement during practice and under the game-day uniform with thermal fabric and strategically placed panels.  Ergonomic; flat seams keep distractions to a minimum when...', '89.99', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1575550985.jpg', 1545045525),
(187, 'Ralph Lauren Mens Logo Hoodie Sweatshirt', 'Brand:  Ralph Lauren   Category:  Sweatshirt   Gender:  Mens   Style:  Hoodie   Material:  100% Polyester   Occasion:  Casual   Pattern:  Graphic Print   Sleeve Length:  Long Sleeve', '65.00', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1730196419.jpg', 1699991865),
(190, 'Adidas Mens Originals Sweatshirt', 'Brand:  Adidas   Category:  Sweatshirt   Gender:  Mens   Style:  Sweatshirt   Material:  79% Cotton 21% Polyester   Occasion:  Casual   Pattern:  Graphic Print   Sleeve Length:  Long Sleeve', '60.00', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1736380000.jpg', 1706175446),
(191, 'Ralph Lauren Mens Double-Knit Sweatshirt', 'Brand:  Ralph Lauren   Category:  Sweatshirt   Gender:  Mens   Style:  Sweatshirt   Material:  58% Polyester 42% Cotton   Occasion:  Casual   Pattern:  Solid   Sleeve Length:  Long Sleeve', '65.00', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1713954383.jpg', 1683749829),
(193, 'Ralph Lauren Mens Solid Fleece Sweatshirt', 'Brand:  Ralph Lauren   Category:  Sweatshirt   Gender:  Mens   Style:  Sweatshirt   Material:  87% Cotton 13% Polyester   Occasion:  Casual   Sleeve Length:  Long Sleeve', '51.22', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1623949506.jpg', 1593768140),
(197, 'Ralph Lauren Mens Performance Hoodie Sweatshirt', 'Brand:  Ralph Lauren   Category:  Sweatshirt   Gender:  Mens   Style:  Hoodie   Material:  94% Cotton 6% Polyester   Occasion:  Casual   Pattern:  Camouflage   Sleeve Length:  Long Sleeve', '65.00', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1723431327.jpg', 1693226773),
(198, 'Fox Racing 2016 Mens George Military Fleece Hoodie Zip Sweatshi', 'Body/Hood/Body lining 100% Polyester rigid crossdye, 140gm. Sleeves 80% Cotton / 20% Polyester Fleece. 280gm. Fill: Quilted 120gm on hood and body only. High density Fox Head on chest. Chest zipper pocket. Logo tech zipper pulls.  Body/Hood/Body...', '69.99', 'Sudaderas', 'https://img.shop.com/Image/240000/249500/249525/products/1387560805.jpg', 1356195561),
(199, 'Nike Womens Obsessed Infinity Coverup Sweatshirt Blue', 'Pullover Sweat Shirt with Extra Long Fold Over Collar with Drawcord. Dri Fit Fabric Pulls Away Sweat to Help Keep You Dry and Comfortable', '53.13', 'Sudaderas', 'https://img.shop.com/Image/260000/266700/266708/products/1575554401.jpg', 1545049122),
(200, 'Ralph Lauren Mens Double Knit Sweatshirt', 'Brand:  Ralph Lauren   Category:  Sweatshirt   Gender:  Mens   Style:  Sweatshirt   Material:  58% Polyester 42% Cotton   Occasion:  Casual   Pattern:  Graphic Print   Sleeve Length:  Long Sleeve', '96.25', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1736380068.jpg', 1706175514),
(201, 'Calvin Klein Mens Colorblocked Hoodie Sweatshirt', 'Brand:  Calvin Klein   Category:  Sweatshirt   Gender:  Mens   Style:  Hoodie   Material:  70% Cotton 30% Polyester   Occasion:  Casual   Pattern:  Heathered   Sleeve Length:  Long Sleeve', '66.56', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1638614646.jpg', 1608434876),
(202, 'Calvin Klein Mens Constrast Hoodie Sweatshirt', 'Brand:  Calvin Klein   Category:  Sweatshirt   Gender:  Mens   Style:  Hoodie   Material:  100% Cotton   Occasion:  Casual   Pattern:  Solid   Sleeve Length:  Long Sleeve', '66.56', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1723416475.jpg', 1693211921),
(203, 'Tommy Hilfiger Mens Coleman Hoodie Sweatshirt', 'Brand:  Tommy Hilfiger   Category:  Sweatshirt   Gender:  Mens   Style:  Hoodie   Material:  69% Cotton 31% Polyester   Occasion:  Casual   Pattern:  Solid   Sleeve Length:  Long Sleeve', '51.48', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1713952933.jpg', 1683748379),
(204, 'Calvin Klein Mens Ottoman Cross-Stitch Hoodie Sweatshirt', 'Brand:  Calvin Klein   Category:  Sweatshirt   Gender:  Mens   Style:  Hoodie   Material:  100% Cotton   Occasion:  Casual   Pattern:  Ribbed   Sleeve Length:  Long Sleeve', '56.16', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1703552311.jpg', 1673347757),
(205, 'Tommy Hilfiger Mens Contrast Collar Sweatshirt', 'Brand:  Tommy Hilfiger   Category:  Sweatshirt   Gender:  Mens   Style:  Sweatshirt   Material:  73% Cotton 27% Polyester   Occasion:  Casual   Pattern:  Heathered   Sleeve Length:  Long Sleeve', '51.48', 'Sudaderas', 'https://img.shop.com/Image/250000/253200/253251/products/1730196078.jpg', 1699991524),
(206, 'Camiseta feminist stradivarius', 'ñsfkhfseñlhglizosdjgsopgjñilfhjspodfk phdoñithj uh pduhrpuh du pidu phpdrpgjdsur', '12.99', 'Camisetas', 'https://staticcdn01.chicfy.com/new_files/productos2/2017-08-08/38673150/detalle/cpro38673150_1_fotoarticulo.jpg?15', 0),
(207, 'Zapato Elena Nike Skateboarding Zoom', 'Add one of the most recognised and iconic sneakers in footwear history to your collection with a pair of Nike Air Max 90 trainers. Building on the legacy of signature Max Air technology, the Air Max 90 took the game to new heights with its combination of ', '999.99', 'Zapatos', 'https://asset2.surfcdn.com/zapatos-nike-skateboarding-zapato-nike-skateboarding-zoom-stefan-janoski-suede-barely-green.jpg?w=1200&h=1200&r=4&q=80&o=ONV36ePjUKOLHLdL@gYKJSKNmf0x&V=YZAG', 0),
(208, 'NIKE AIR HUARACHE | BIELA | 75', 'Este zapato lo ha elegido elena', '200', 'Zapatos', 'https://stat-s4.sizeer.com/media/cache/gallery/rc/wxvuyqcx/images/14/145425/m8f09998ecde0693651bd13c6ff54ff61_373179_z_1.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_talla`
--

CREATE TABLE `producto_talla` (
  `id_producto` int(11) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `cantidad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id_talla` int(11) NOT NULL,
  `nombre` varchar(4) CHARACTER SET armscii8 NOT NULL,
  `cantidad` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `talla`
--

INSERT INTO `talla` (`id_talla`, `nombre`, `cantidad`) VALUES
(1, 'XS', 20),
(2, 'S', 20),
(3, 'M', 20),
(4, 'L', 20),
(5, 'XL', 20),
(6, 'XXL', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(33) NOT NULL,
  `nombre` varchar(150) CHARACTER SET armscii8 NOT NULL,
  `apellidos` varchar(150) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `password`, `nombre`, `apellidos`) VALUES
(1, 'lucia@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Lucia', 'Padilla'),
(5, 'fpadillarebollo@hotmail.es', '773df701c3480b4a243dacf47a0c7883', 'Francisca', 'Padilla Rebollo'),
(6, 'elena@gmail.com', '7872f1f03e25fddfe3b971d191083cfb', 'poiu', 'derf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `fk_comentario_producto` (`id_producto`),
  ADD KEY `fk_comentario_usuario` (`id_usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `producto_talla`
--
ALTER TABLE `producto_talla`
  ADD PRIMARY KEY (`id_producto`,`id_talla`),
  ADD KEY `fk_producto_talla_producto` (`id_producto`),
  ADD KEY `fk_producto_talla_talla` (`id_talla`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id_talla`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT de la tabla `talla`
--
ALTER TABLE `talla`
  MODIFY `id_talla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `fk_comentario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `producto_talla`
--
ALTER TABLE `producto_talla`
  ADD CONSTRAINT `fk_producto_talla_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `fk_producto_talla_talla` FOREIGN KEY (`id_talla`) REFERENCES `talla` (`id_talla`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
