-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2022 at 04:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_items`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Backdrops'),
(2, 'Beverage Tubs'),
(3, 'Candles'),
(4, 'Catering'),
(5, 'Chairs'),
(6, 'Chair Sashes'),
(7, 'Chargers'),
(8, 'Dishes'),
(9, 'Glasses'),
(10, 'Napkins'),
(11, 'Tablecloths'),
(12, 'Tables'),
(13, 'Vases'),
(14, 'Specialty'),
(15, 'Signs'),
(16, 'Dessert Servers');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `categoryID` int(11) NOT NULL,
  `imgURL` varchar(655) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(1, 'images/backdrops/blackSequin.jpg', 'Black Sequin Backdrop', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/silverSequin.jpg', 'Silver Sequin Backdrop', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/champagneSequin.jpg', 'Champagne Sequin Backdrop', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/goldSequin.jpg', 'Gold Sequin Backdrop', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/pinkSequin.jpg', 'Pink Sequin Backdrop', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/OnceUponATimeVinyl.jpg', 'Vinyl ''Once Upon A Time'' Backdrop', '7'' H x 5'' W'),
(1, 'images/backdrops/bamboo.jpg', 'Bamboo Backdrop', '6'' H x 8'' W'),
(1, 'images/backdrops/GoldLighted.JPG', 'Gold Lighted', '12'' H x 4'' 4" W'),
(1, 'images/backdrops/goldPayette.jpg', 'Gold Payette', '12'' H x 4'' 4" W'),
(1, 'images/backdrops/turquoisePayette.jpg', 'Iridescent Payette', '12'' H x 4'' 4" W'),
(1, 'images/backdrops/GoldMetalRing.jpg', 'Gold Metallic Ring', '5'' D'),
(1, 'images/backdrops/NavyBlueMetallicSparkle.jpg', 'Navy Blue Metallic Sparkle', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/goldMetallicSparkle.JPG', 'Gold Metallic Sparkle', 'Max 20'' W x Max 10'' H'),
(1, 'images/backdrops/smallBoxwood.jpg', 'Small Boxwood', '11'' Square'),
(1, 'images/backdrops/squareHydrangea.jpg', 'Hydrangea', '11'' Square'),
(1, 'images/misc/AdjustableBackdropStand.jpg', 'Backdrop Stand', 'Adjustable to 12'' H x 11'' W');


INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(2, 'images/BeverageTubs/AcrylicBeverageTub.jpg', 'Clear Acrylic', '19" W x 13.5" H"'),
(2, 'images/BeverageTubs/BeverageTub.jpg', 'Beverage Tub with Pedestal & Scoop', '18/8 Stainless Steel 30 qt. capacity'),
(2, 'images/BeverageTubs/AcrylicBeverageTray8comparments.jpg', 'Acrylic Wine / Champagne Server', '8 Compartments'),
(2, 'images/BeverageTubs/OctopusBevTub.jpg', 'Octopus Beverage Dispenser', '21.5" H (with stand and lid) x 16" W, holds 2 Gallons'),
(2, 'images/BeverageTubs/BirdsNestBeverageTub.jpg', 'Nested Drink Tub', '22.3" W x 16.8" D x 9.8" H'),
(2, 'images/BeverageTubs/BrassandStainlessDrinkDispenser.jpg', 'Gold Plated Cold Beverage / Juice Dispenser', '2.2 Gallon'),
(2, 'images/BeverageTubs/ChampagneBeverageTub.jpg', 'XL Champagne / Wine Bucket', 'Can hold 8 or more standard size bottles'),
(2, 'images/BeverageTubs/CoffeeMakerandDispenser.jpg', 'Hot Beverage / Coffee Brewer Dispenser', '2.5 Gallons or 60 cups'),
(2, 'images/BeverageTubs/GlassTablePitchers.jpg', 'Clear Glass Dispensers', 'Various Sizes'),
(2, 'images/BeverageTubs/OctopusBeverageTub.jpeg', 'Octupus & Base', '19" W x 13.5" D x 9" H');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
-- fix title and descriptions 
(3, 'images/Candels/CandelabraCrystal.jpg', 'Candelabra', '4 arms Crystal 20 3/4" H'),
(3, 'images/Candels/CandelabraAntiqueWhite.jpg', 'Candelabra', '4 arms Small Crystal & Antique White'),
(3, 'images/Candels/SquareGlassTaperHolders.JPG', 'Square Glass Taper Candle Holder', '2.5" H x 1.5" W'),
(3, 'images/Candels/SquareGlassTaperHoldersLarger.JPG', 'Square Glass Taper Candle Holder', '3" H x 1.5" W'),
(3, 'images/Candels/GradeHurricaneVotiveHolder.jpg', 'Grande Hurricane Votive Holder', 'Frosted White | 3.5" H x 3" W'),
(3, 'images/Candels/WhiteGlassPillarHolders.JPG', 'White Glass Pillar Holders', '3 sizes - 6.5"H, 8.5" H, 11.5" H x 4" W'),
(3, 'images/Candels/VotiveGoldStripe.jpg', 'Votive Gold Stripe Tea Light', 'Gold Stripe 4 1/4" H x 2 1/2" W'),
(3, 'images/Candels/PinkRosesVotive.jpg', 'Votive Tea Light', 'Pink Roses 3 1/4" H x 2 1/2" W'),
(3, 'images/Candels/PinchedGoldMercuryVotive.jpg', 'Votive Tea Light', 'Pinched Gold Mercury - 3" H x 2 3/4" W'),
(3, 'images/Candels/FrostedSparkleVotive.jpg', 'Votive Tea Light', 'Frosted Sparkle - 2 3/4" H x 2 1/4" W'),
(3, 'images/Candels/BlackLaceTealight.JPG', 'Votive Black Lace', '2.75" H x 2.25" W'),
(3, 'images/Candels/VotiveHoneycomb.png', 'Votive Honeycomb', '3" H x 2 3/4" W'),
(3, 'images/Candels/VotiveHobbnailBlue.png', 'Votive Hobnail Blue', '2.5" H x 2.25" W'),
(3, 'images/Candels/VotiveAquaRolyMercury.png', 'Votive Aqua Roly Mercury', '3.16" H x 3.75" W'),
(3, 'images/Candels/VotiveWindowMercury.png', 'Votive Aqua Window Mercury', '.5" H x 3.25" W'),
(3, 'images/Candels/GreenMercuryTealight.jpg', 'Votive Green Mercury', '3" H x 2.8" W'),
(3, 'images/Candels/GreenOasisTealight.JPG', 'Votive Green Oasis', '2.75" H x 2.5" W'),
(3, 'images/Candels/ChunkyVotiveHolder.jpg', 'Chunky Votive Holder', '2.5" H x 2.5" W'),
(3, 'images/Candels/CrystalVotiveHolder.jpg', 'Crystal Votive Holder', '2.5" H x 2" W'),
(3, 'images/Candels/DottieCandleholder.jpg', 'Dottie Votive Holder', '4.25" H x 2.5" W'),
(3, 'images/Candels/FrostedVotiveHolder.png', 'Frosted Sparkle Votive', '2.7" H x 2.25" W'),
(3, 'images/Candels/PrimroseMetallicGold.jpg', 'Primrose Metallic Gold', '3.25" H x 2.5" W'),
(3, 'images/Candels/TealightCandleholderDecorativeWood.JPG', 'Decorative Wood Candle Holder', '3.25" H x 3" W'),
(3, 'images/Candels/Winterwood.jpg', 'Winterwood Pillar Candle Holder', 'Varying Sizes approx. 6" H x 5.5" W');


INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(4, 'images/catering/RectangleRollTopChafingDish.jpg', 'Rectangle Roll Top', 'Chafing Dish'),
(4, 'images/catering/RoundRollTopChafingDish.jpg', 'Round Roll Top', 'Chafing Dish'),
(4, 'images/catering/SeafoodFishBowl.jpg', 'Seafood Fish Bowl', '17" W x 11" D x 5" H'),
(4, 'images/catering/SeafoodCrabBowl.jpg', 'Seafood Crab Bowl', '18" W x 12" D x 5" H'),
(4, 'images/catering/SoupWarmers2.jpg', 'Soup Warmers', '2 available'),
(4, 'images/catering/ClearandGoldSaltnPepperShakers.jpg', 'Clear and Gold Salt and Pepper Shakers', '30 sets available'),
(4, 'images/catering/GoldSaltnPepperShakers.jpg', 'Gold Salt and Pepper Shakers', '30 sets available'),
-- fix
(4, 'images/catering/GoldDessertServers.jpg', '', '');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(5, 'images/chairs/ChiavariClearChampagne.png', 'Chiavari', 'Clear Champagne'),
(5, 'images/chairs/BrideAndGroomChair.png', 'Bride & Groom Chair', 'Pink Champagne'),
(5, 'images/chairs/BridalTableWhitePearlandAcrylicChair.jpg', 'Bridal Table Chair', 'White Pearl & Acrylic'),
(5, 'images/chairs/ChiavariGold.jpg', 'Chiavari', 'Gold'),
(5, 'images/chairs/whiteChair.jpg', 'Classic Folding Chair', 'White'),
(5, 'images/chairs/PhoenixDoubleC.jpg', 'Phoenix Double C', 'Clear'),
(5, 'images/chairs/RattanChair.png', 'Rattan Folding Garden Chair', 'Wooden'),
(5, 'images/chairs/GoldCushion.jpg', 'Cushion', 'Gold'),
(5, 'images/chairs/IvoryCushion.jpg', 'Cushion', 'Ivory'),
(5, 'images/chairs/BlackCloth.png', 'Cushion', 'Black'),
(5, 'images/chairs/WhiteVinylSeatCover.png', 'Cushion', 'White Vinyl');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(6, 'images/chairSashes/BlueDenim.jpg', 'Blue Denim', 'Chair Sash Linen'),
(6, 'images/chairSashes/Burlap.jpg', 'Burlap', 'Chair Sash Linen'),
(6, 'images/chairSashes/white.jpg', 'White', 'Chair Sash Linen');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(7, 'images/chargers/ItalianBubbleCharger.png', 'Italian Bubble Clear Glass', '13" Charger'),
(7, 'images/chargers/GoldFloralCharger.png', 'Gold Floral Charger', '13" Charger'),
(7, 'images/chargers/GoldRimmedandHammeredGlass.jpg', 'Gold Rimmed and Hammered Glass', '13" Charger'),
(7, 'images/chargers/SilverRimmedandHammeredGlass.jpg', 'Silver Rimmed and Hammered Glass', '13" Charger'),
(7, 'images/chargers/BuoyWhite.jpg', 'Buoy White', '13" Charger'),
(7, 'images/chargers/GoldSunburst.jpg', 'Gold Sunburst', '13" Charger'),
(7, 'images/chargers/WhiteWoodScrollCharger.jpg', 'White Wood Scroll', '13" Charger'),
(7, 'images/chargers/CasablancaBlush.jpg', 'Casablanca Blush', '13" Charger'),
(7, 'images/chargers/SilverGlitter.jpg', 'Silver Glitter', '13" Charger'),
(7, 'images/chargers/ChampagneGlitter.jpg', 'Champagne Glitter', '13" Charger'),
(7, 'images/chargers/Leaf.jpg', 'Palm Leaf', '16.5" x 18" Charger');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(8, 'images/Dishes/AntiqueRed.jpg', 'Garden Party', 'Dessert / Salad' ),
(8, 'images/Dishes/Gold.JPG', 'Trestle Gold', 'Dessert / Salad'),

(8, 'images/Dishes/BluePlate.jpg', 'Trestle Aqua', 'Dessert / Salad'),
(8, 'images/Dishes/SaladSoupTrestleAqua.jpg', 'Trestle Aqua Bowl', 'Salad / Soup'),
(8, 'images/Dishes/Pineapple.jpg', 'British Colonial Pineapple', 'Dessert / Salad'),
(8, 'images/Dishes/BritishColonial.jpg', 'British Colonial Bamboo', 'Dessert / Salad'),
(8, 'images/Dishes/BritishColonialBowl.jpg', 'British Colonial Bowl', 'Soup'),
(8, 'images/Dishes/BlueBritishColonial.jpg', 'British Colonial Blue', 'Dessert / Salad'),
(8, 'images/Dishes/CasablancaBlackGold.jpg', 'Casablanca Black and Gold', 'Charger / Dinner / Salad'),
(8, 'images/Dishes/CasablancaSet.jpg', 'Casablanca Pink and Gold', 'Charger / Dinner / Salad / Bread & Butter'),
(8, 'images/Dishes/ClearCloud.jpg', 'Clear Hammered Cloud', 'Dinner / Salad'),
(8, 'images/Dishes/SlantedHammeredGlassBowl.jpg', 'Slanted Hammered Glass', 'Soup'),
(8, 'images/Dishes/PalmLeafDinnerwareDinnerbreadandbutteronly.jpg', 'Palm Leaf Dinnerware', 'Dinner Plate / Bread & Butter Plate'),
(8, 'images/Dishes/PeacockDinnerwaredinbreadonly.jpg', 'Peacock Dinnerware', 'Dinner Plate / Bread & Butter Plate'),
(8, 'images/Dishes/iridescentBowl.png', 'Iridescent Clear Bowl', 'Soup /  Salad'),
(8, 'images/Dishes/IridescentClear.jpg', 'Iridescent Clear', 'Dinner / Salad');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(9, 'images/glasses/AcopaLoBallRocksDoubleOldFashionedWater10oz.png', 'Acopa 10 oz.', 'LoBall / Rocks / Double Old Fashioned / Water'),
(9, 'images/glasses/catalina12ozMargarita.jpg', 'Catalina 12 oz.', 'Margarita'),
(9, 'images/glasses/Coffee8.5oz.png', 'Clear Cup 8.5 oz.', 'Coffee / Tea / Hot Chocolate'),
(9, 'images/glasses/FitsnFloydAquaWaterWineSpecialityCocktail12oz.jpg', 'Fits & Floyd 12 oz.', 'Water / Wine / Specialty Cocktail'),
(9, 'images/glasses/godingerBlush7oz.jpg', 'Godinger Flute 7 oz.', 'Champagne'),
(9, 'images/glasses/godingerBlush9_5ozMargarita.jpg', 'Godinger 9.5 oz.', 'Margarita'),
(9, 'images/glasses/IridescentStemlessWine18oz.jpg', 'Iridescent Stemless 18 oz.', 'Wine'),
(9, 'images/glasses/IridescentLoBallRocksWater.png', 'Iridescent', 'LoBall / Rocks / Water'),
(9, 'images/glasses/IridescentWine20_5oz.jpg', 'Iridescent 20.5 oz', 'Wine'),
(9, 'images/glasses/stemlessChampagneIridescent10_5oz.jpg', 'Iridescent Stemless 10.5 oz.', 'Champagne'),
(9, 'images/glasses/HiBallWaterTea14.5oz.jpg', 'HiBall 14.5 oz.', 'HiBall / Water / Tea'),
(9, 'images/glasses/MarquisbyWaterfordBradyLoBallRocksDoubleOldFashionedWater11oz.jpg', 'Marquis by Waterford Brady 11 oz.', 'LoBall / Rocks / Double Old Fashioned / Water'),
(9, 'images/glasses/MarquisbyWaterfordBradyWine12oz.jpg', 'Marquis by Waterford Brady 12 oz.', 'Wine'),
(9, 'images/glasses/MarquisbyWaterfordMarkhamWaterTeaDoubleOldFashionedHiBallSpecialtyDrink13oz.jpg', 'Marquis by Waterford Brady 13 oz.', ' Water / Tea / Double Old Fashioned / HiBall / Specialty Drink'),
(9, 'images/glasses/MarquisbyWaterfordWaterTeaDoubleOldFashionedHiBallSpecialtyDrink15oz.jpg', 'Marquis by Waterford 15 oz.', 'Water / Tea / Double Old Fashioned / HiBall / Specialty Drink'),
(9, 'images/glasses/MarquizByWaterfordMarkhamLoBallRocksDoubleOldFashionedWater11ozvertical.jpg', 'Marquis by Waterford LoBall 11 oz.', 'Markham / Rocks / Double Old Fashioned / Water'),
(9, 'images/glasses/MarquisbyWaterfordMarkham12ozWine.jpg', 'Marquis by Waterford LoBall 12 oz.', 'Markham / Wine'),
(9, 'images/glasses/MastersReserveContourWine12oz.png', 'Master''s Reserve Contour 12 oz.', 'Wine'),
(9, 'images/glasses/MastersReserveLoBallRocksDoubleOldFashionedWater9oz.png', 'Master''s Reserve LoBall 9 oz.', 'Rocks / Double Old Fashioned / Water'),
(9, 'images/glasses/MastersReservePrismWine13oz.png', 'Master''s Reserve Prism 13 oz.', 'Wine'),
(9, 'images/glasses/PerfectPortionDessertTasterMartiniGlass2_5oz.png', 'Perfect Portion Dessert Taster 2.5 oz.', 'Mini Martini Glass'),
(9, 'images/glasses/PerfectPortionMartiniDessertGlass2_5oz.png', 'Martini Dessert Glass 2.5 oz.', 'Mini Dessert Glass'),
(9, 'images/glasses/SeriesVMartiniDessertGlass7_6oz.png', 'Series V Martin 7.6 oz.', 'Dessert Glass'),
(9, 'images/glasses/spiritDessertShotGlass1_75oz.png', 'Spirit Shot Glass 1.75 oz.', 'Shot / Dessert Glass'),
(9, 'images/glasses/Tulip9ozChampagne.jpg', 'Tulip 9 oz.', 'Champagne'),
(9, 'images/glasses/stolzle6_5oz.png', 'Stolzle 6.5 oz.', 'Wine / Champagne'),
(9, 'images/glasses/EmbassyRoyaleWaterTeaBeer16oz.jpg', 'Embassy Royale 16 oz.', 'Water / Tea / Beer'),
(9, 'images/glasses/EmbassyWaterBeerSangriaSpecialtyCocktail19_25oz.jpg', 'Embassy 19.25 oz.', 'Water / Beer / Sangria / Specialty Cocktail'),
(9, 'images/glasses/EmbassyFootedWaterTeaHiBall9oz.jpg', 'Embassy Footed 9 oz.', 'Water / Tea'),
(9, 'images/glasses/EmbassySmallWine6_5oz.jpg', 'Embassy Small 6.5 oz.', 'Wine');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(10, 'images/napkins/ChampagneSatin.jpg', 'Champagne', 'Satin'),
(10, 'images/napkins/AntiqueGoldSatin.jpg', 'Antique Gold', 'Satin'),
(10, 'images/napkins/BrightGoldSatin.jpg', 'Bright Gold', 'Satin'),
(10, 'images/napkins/NavyBlueSatin.jpg', 'Navy Blue', 'Satin'),
(10, 'images/napkins/AppleRed.jpg', 'Apple Red', 'Polyester'),
(10, 'images/napkins/RedPolyester.jpg', 'Red', 'Polyester'),
(10, 'images/napkins/AquaBluePolyester.jpg', 'Aqua Blue', 'Polyester'),
(10, 'images/napkins/BabyBluePolyester.jpg', 'Baby Blue', 'Polyester'),
(10, 'images/napkins/BlushRoseGoldPolyesterjpg.jpg', 'Blush Rose Gold', 'Polyester'),
(10, 'images/napkins/BlackPolyester.jpg', 'Black', 'Polyester'),
(10, 'images/napkins/ChartreuseGreenPolyester.jpg', 'Chartreuse Green', 'Polyester'),
(10, 'images/napkins/EmeraldGreenPolyester.jpg', 'Emerald Green', 'Polyester'),
(10, 'images/napkins/FuschiaPolyester.jpg', 'Fuschia', 'Polyester'),
(10, 'images/napkins/GoldPolyester.jpg', 'Gold', 'Polyester'),
(10, 'images/napkins/IvoryPolyester.jpg', 'Ivory', 'Polyester'),
(10, 'images/napkins/NavyBluePolyester.jpg', 'Navy Blue', 'Polyester'),
(10, 'images/napkins/NudePolyester.jpg', 'Nude', 'Polyester'),
(10, 'images/napkins/OffWhitePolyester.jpg', 'Off White', 'Polyester'),
(10, 'images/napkins/PastelPinkPolyester.jpg', 'Pastel Pink', 'Polyester'),
(10, 'images/napkins/PinkPolyester.jpg', 'Pink', 'Polyester'),
(10, 'images/napkins/PoolBluePolyester.jpg', 'Pool Blue', 'Polyester'),
(10, 'images/napkins/RoyalBluePolyester.jpg', 'Royal Blue', 'Polyester'),
(10, 'images/napkins/TurquoisePolyester.jpg', 'Turquoise', 'Polyester'),
(10, 'images/napkins/WhitePolyester.jpg', 'White', 'Polyester');


INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(11, 'images/tablecloths/Burlap.jpg', '', ''),
(11, 'images/tablecloths/MedallionJaquardSheerGold120Round.jpg', '', ''),
(11, 'images/tablecloths/MelroseWhiteDamask.jpg', '', ''),
(11, 'images/tablecloths/PayetteBlack.jpg', '', ''),
(11, 'images/tablecloths/PayetteGold.jpg', '', ''),
(11, 'images/tablecloths/PayetteSilver.jpg', '', ''),
(11, 'images/tablecloths/PintuckBlackRound.jpg', '', ''),
(11, 'images/tablecloths/PinktuckBlushRound.jpg', '', ''),
(11, 'images/tablecloths/PintuckChampagneRound.jpg', '', ''),
(11, 'images/tablecloths/PintuckGoldRound.jpg', '', ''),
(11, 'images/tablecloths/PintuckIvoryRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterAppleGreenRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterAppleRedRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterAquaRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterBlackRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterDustyBlueRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterEmeraldGreenRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterFuschiaRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterGoldRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterGrayRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterIvoryRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterLightBlueRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterLightPinkRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterNavyBlueRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterNudeRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterOffWhiteRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterPinkRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterPoolBlueRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterRedRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterRoyalBlueRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterSageGreenRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterTurquoiseRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterWhiteRound.jpg', '', ''),
(11, 'images/tablecloths/PolyesterWillowGreenRound.jpg', '', ''),
(11, 'images/tablecloths/RedSpandex.jpg', '', ''),
(11, 'images/tablecloths/SatinChampagneRound.jpg', '', ''),
(11, 'images/tablecloths/SatinDustyRoseRound.jpg', '', ''),
(11, 'images/tablecloths/SatinGoldRound.jpg', '', ''),
(11, 'images/tablecloths/SatinOffWhiteRound.jpg', '', ''),
(11, 'images/tablecloths/SatinRoundnavyBlue.jpg', '', ''),
(11, 'images/tablecloths/SatinSilverRound.jpg', '', ''),
(11, 'images/tablecloths/SatinWhiteRound.jpg', '', ''),
(11, 'images/tablecloths/SequinBlackRound.jpg', '', ''),
(11, 'images/tablecloths/SequinChampagneRound.jpg', '', ''),
(11, 'images/tablecloths/SpandexBlack.jpg', '', ''),
(11, 'images/tablecloths/SpandexDustyBlue.jpg', '', ''),
(11, 'images/tablecloths/SpandexLightPink.jpg', '', ''),
(11, 'images/tablecloths/SpandexNavyBlue.jpg', '', ''),
(11, 'images/tablecloths/SpandexRoyalBlue.jpg', '', ''),
(11, 'images/tablecloths/SpandexShinyMetalicChampagne.jpg', '', ''),
(11, 'images/tablecloths/SpandexWhite.jpg', '', '');


INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(12, 'images/tables/36inWhiteRoundCocktail.JPG', 'White Folding Table', '36" Round'),
(12, 'images/tables/60inWhiteRoundFold.JPG', 'White Folding Table', '60" Round'),
(12, 'images/tables/6ftRectangleFold.JPG', 'White Folding Table', '6'' Rectangle'),
(12, 'images/tables/coolingTable.jpg', 'White Folding Table', 'Built-In Cooler with White Table Skirt Included'),
(12, 'images/tables/80inClearAcrylicHead.JPG', 'Clear Acrylic Head', '81" x 30" Rectangle');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(13, 'images/vases/SmallSingleFlowerRippledGlassPinkVase.jpg', 'Pink Single Flower Rippled Glass', '4 3/8" H x 3 5/8" L x 2 1/4" W Opening 3/4"'),
(13, 'images/vases/SmallSingleFlowerRippledGlassPinkVase2.jpg', 'Pink Single Flower Rippled Glass', '4 3/4" H x 2 3/4" L x 2 1/4" W Opening 3/4"'),
(13, 'images/vases/RoundRidgeSolidPinkGlassVase.png', 'Round Ridge Solid Pink Glass Vase', '5" H x 4 1/2" W 1" Opening'),
(13, 'images/vases/RoundPinkGlassVase.png', 'Round Pink Glass Vase', '5 1/4" H x 4 1/4" W 2 1/2" Opening'),
(13, 'images/vases/RidgedClearPinkGlassVase.png', 'Round Pink Glass Vase', '5 1/4" H x 4 1/4" W 2 1/2" Opening'),
(13, 'images/vases/PrestigeGoldUrn.jpg', 'Prestige Gold Urn', '2 sizes - 12.75" W x 10" H & 9" H x 8" W'),
(13, 'images/vases/PedestalMetalUrn.jpg', 'Pedestal Metal Urn', '11" H x 5" W'),
(13, 'images/vases/MossCoveredCowboyBoot.png', 'Moss Covered Cowboy Boot', 'Plastic Liner Inside | 13" H x 4.5" W x 10.5" L'),
(13, 'images/vases/MossCoveredPurse.jpg', 'Natural Preserve Moss Covered Purse', 'Plastic Liner Inside | 14 3/4" H x 4.5" W x 12.5" L'),
(13, 'images/vases/GoldPrismCut2sizes.jpg', 'Gold Prism Cut Vase', '2 sizes - 7 1/4" H x 4 3/4" W & 9 1/2" H x 4 1/4" W'),
(13, 'images/vases/GoldLuster2sizes.jpg', 'Gold Luster Vase', '2 sizes - 8 1/4" H x 7 1/2" W & 4 1/4" H x 5" W'),
(13, 'images/vases/InvertedCircleGoldGlassVase2sizes.jpg', 'Inverted Circle Gold Glass Vase', '2 sizes - 7 3/4" H x 5 1/8" W & 6" H x 4 1/2" W'),
(13, 'images/vases/GoldKingsCrownVases.jpg', 'Gold Kings Crown Vases', 'Various Sizes'),
(13, 'images/vases/GoldMercuryCarrawayFlowerVase.jpg', 'Gold Mercury Carraway Flower Vase', '4 1/4" H x 7 1/2 L x 5 1/4" W');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(14, 'images/misc/BeerBar.jpg', 'Beer Bar', 'Portable'),
(14, 'images/misc/SpecialtyMultilightPartyBar.png', 'Specialty Multi-light Party Bar', '4'' H x 6'' W'),
(14, 'images/misc/GoldEtagere.jpg', 'Gold Metal Etagere', '70.88"H x 30" W'),
(14, 'images/misc/Mandap.JPG', 'Mandap / Pergola / Arch', '8'' H x 12'' W'),
(14, 'images/misc/AcrylicAdjustableEasel.jpg', 'Acrylic Easel', 'Adjustable'),
(14, 'images/misc/AcrylicFlowerPedestal.jpg', 'Acrylic Flower Pedestal', '3 sizes - 24” 30” 48”'),
(14, 'images/misc/BalloonArch.jpg', 'Balloon Arch', 'Adjustable'),
(14, 'images/misc/PrincessCarriages.jpg', 'Princess Carriages (6)', '12.5” H x 5” W x 12” L'),
(14, 'images/misc/GoldCardBox.jpg', 'Card Box', 'Mirror Gold'),
(14, 'images/misc/WhiteWoodCardBox.jpg', 'Card Box', 'Decorative White Wood'),
(14, 'images/misc/AdjustableBackdropStand.jpg', 'Backdrop Stand', 'Adjustable to 12'' H x 11'' W');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(15, 'images/signs/mrandmrs.JPG', 'Mr. and Mrs. Neon Sign', 'Precut holes for hanging | 20 1/4" W x 8" H'),
(15, 'images/signs/BubblyBar.jpg', 'Bubbly Bar', '8" x 10"'),
(15, 'images/signs/GuestBook.jpg', 'Please Sign Our Guest Book!', '8" x 10"'),
(15, 'images/signs/cheers.jpg', 'Cheers! Neon Sign', 'Precut holes for handing | 30" W x 15" H'),
(15, 'images/signs/aSweetEnding.jpg', 'Lighted Chalk Board Sign', '35.5" H x 22" W'),
(15, 'images/signs/tableNumbers.jpg', 'Table Numbers', '5" x 7"'),
(15, 'images/signs/howSweetitIs.jpg', 'How Sweet It Is To Be Loved By You', '3'' H x 6'' W'),
(15, 'images/misc/AcrylicAdjustableEasel.jpg', 'Acrylic Easel / Sign Holder', 'Adjustable');

INSERT INTO `products` (`categoryID`, `imgURL`, `productName`, `productDesc`) VALUES
(16, 'images/dessertServers/BlackGlassBeadCakeStand.jpg', 'Black Glass Bead Cake Stand', '10 1/4" W x 5" H'),
(16, 'images/dessertServers/BlackGlassHobnailCakeStand.jpg', 'Black Glass Hobnail Cake Stand', '8 1/2" W x 4 3/4" H');
(16, 'images/dessertServers/BlackMetalCakeStand.png', 'Black Metal Cake Stand', '8" W x 5" T');
(16, 'images/dessertServers/CrystalCakeStand.png', 'Crystal Cake Stand', '8" W x 5" T');
(16, 'images/dessertServers/GoldMetalCakeStand.jpg', 'Gold Metal Cake Stand', '8" W x 5" T');
(16, 'images/dessertServers/GreenGlassCakeStand.jpg', 'Green Glass Cake Stand', '9 3/4" W x 4.5" H');
(16, 'images/dessertServers/MosserWhiteMilkGlassCakeStand.png', 'Mosser White Milk Glass Cake Stand', '10" W x 10" H');
(16, 'images/dessertServers/PinkGlassCakeStand.jpg', 'Pink Glass Cake Stand', '8.5" W x 5" T');
(16, 'images/dessertServers/WhiteMilkGlassCakeStand.jpg', 'White Millk Glass Cake Stand', '8.5" W x 5" T');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productName`),
  ADD UNIQUE KEY `productName` (`productName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productName` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
