-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 30. 17:49
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `1/13_autok`
--
CREATE DATABASE IF NOT EXISTS `1/13_autok` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `1/13_autok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autok`
--

CREATE TABLE `autok` (
  `Rendszam` varchar(7) COLLATE utf8_hungarian_ci NOT NULL,
  `Tipus` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `Szin` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `Ar` int(11) NOT NULL,
  `Elado vagy sem` tinyint(1) NOT NULL,
  `Futott km` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autok`
--
ALTER TABLE `autok`
  ADD PRIMARY KEY (`Rendszam`);
--
-- Adatbázis: `12a_csharp_pelda`
--
CREATE DATABASE IF NOT EXISTS `12a_csharp_pelda` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `12a_csharp_pelda`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `reg`) VALUES
(1, 'admin', 'admin@gmail.com', 'a', '2022-01-12 10:16:26'),
(2, 'user', 'user@gmail.com', 'b', '2022-01-10 10:16:26');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Adatbázis: `214szfte_minicms`
--
CREATE DATABASE IF NOT EXISTS `214szfte_minicms` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_minicms`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `reg` datetime DEFAULT NULL,
  `last` datetime DEFAULT NULL,
  `rights` varchar(30) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Adatbázis: `214szfte_mvc`
--
CREATE DATABASE IF NOT EXISTS `214szfte_mvc` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_mvc`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menu`
--

CREATE TABLE `menu` (
  `name` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menuitems`
--

CREATE TABLE `menuitems` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `menuitems`
--

INSERT INTO `menuitems` (`ID`, `name`, `url`, `status`) VALUES
(1, 'Főoldal', 'index', 1),
(2, 'Szolgáltatásaink', 'services', 1),
(3, 'Céginformáció', 'companyinfo', 1),
(4, 'Referenciáink', 'referencies', 1),
(5, 'Kapcsolatok', 'contacts', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `reg` date DEFAULT NULL,
  `last` date DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `address`, `gender`, `reg`, `last`, `status`) VALUES
(1, 'Ryley Biswell', 'rbiswell0@netvibes.com', 'ecd317f09f9e7a5d236e9b8c942963b2302acd30', '020 Dexter Point', 'Male', '2021-11-30', '2021-10-29', '1'),
(2, 'Byrann Wilmut', 'bwilmut1@plala.or.jp', 'cadf8c97bb3a1fb1236a930fd6c1ca33c7a30587', '3 Mosinee Place', 'Male', '2021-06-15', '2021-03-23', '0'),
(3, 'Ebony Pickworth', 'epickworth2@yandex.ru', '93b405ebe8934516c8d3c0e2af7ff861a00abfcb', '3 School Center', 'Female', '2021-07-02', '2021-11-05', '0'),
(4, 'Katharyn Pauel', 'kpauel3@auda.org.au', '837e7d68279e6c9ee6acaeb09b5c543f0d989d90', '638 Hoffman Crossing', 'Male', '2021-10-31', '2021-08-26', '1'),
(5, 'Carissa Skea', 'cskea4@blog.com', 'ba7dd085a66ed83e1d04a8aaa520f9ce74d8d1e1', '11 Stoughton Lane', 'Male', '2021-05-22', '2021-09-13', '1'),
(6, 'Vita Fishburn', 'vfishburn5@icq.com', 'f28f56a405908ba25a2683ed4cbe5a2c16609562', '4805 Rockefeller Terrace', 'Male', '2021-04-06', '2021-12-27', '1'),
(7, 'Bea Hartop', 'bhartop6@comsenz.com', '35dd55ce1569595e18e7f5d10357c3fffb79e126', '3 Sachs Center', 'Male', '2021-05-10', '2021-05-02', '1'),
(8, 'Jonell Cosin', 'jcosin7@patch.com', '5c6b0889e8031030ca19ecf717589ab8855d0a07', '10047 Portage Hill', 'Polygender', '2021-10-17', '2022-01-14', '0'),
(9, 'Roxanna Pyle', 'rpyle8@printfriendly.com', 'ff06e4ad9d2c92af4b3a775d8cc3b093f6099903', '6898 2nd Park', 'Male', '2021-07-05', '2022-02-09', '0'),
(10, 'Dinnie Pietrzak', 'dpietrzak9@gmpg.org', 'c67d13d2c53ee0bb5015a624a67fb4b6d318bf00', '21372 Waxwing Trail', 'Female', '2021-03-26', '2021-05-09', '0'),
(11, 'Nikola Woodcraft', 'nwoodcrafta@utexas.edu', '54d81e284899eb3eb9909c055d97f6a77a14839c', '44 Rowland Park', 'Male', '2021-06-25', '2021-07-05', '0'),
(12, 'Ives Tabbernor', 'itabbernorb@imgur.com', '0fdc42b2a84a20e73309af6cda13152771ac1fa5', '51 Sugar Terrace', 'Female', '2021-08-19', '2021-07-18', '0'),
(13, 'Dunstan McIver', 'dmciverc@indiatimes.com', 'ba7d46e8d8cd9711f05aa39ed4e36c13b3450287', '385 Harper Hill', 'Agender', '2021-10-15', '2021-08-25', '1'),
(14, 'Amaleta Heister', 'aheisterd@taobao.com', 'dd2878ff50ed5b47acaa83e8e8f4a29f0de60d85', '6153 Comanche Lane', 'Male', '2021-03-15', '2021-11-09', '0'),
(15, 'Laughton Stilgoe', 'lstilgoee@topsy.com', '8c1275866c96dbfe36d74d785020c77777a69185', '2 Springview Plaza', 'Male', '2021-04-03', '2021-12-22', '0'),
(16, 'Alvis Fortoun', 'afortounf@zdnet.com', 'e56d0111c763a654309db7d5506468fa037a3e93', '29 Rowland Circle', 'Female', '2022-02-18', '2021-11-14', '0'),
(17, 'Stanly Nelthorp', 'snelthorpg@unblog.fr', 'e0e353a49773297a2de48f653005bccc1569aeb7', '9930 Mayfield Way', 'Female', '2021-05-12', '2021-11-12', '1'),
(18, 'Reg Piscopo', 'rpiscopoh@ebay.com', 'e67fded45bfdd8fee0b8801fa750ef58615c74b8', '48 International Plaza', 'Female', '2021-12-11', '2022-01-23', '0'),
(19, 'Marcus Thurber', 'mthurberi@constantcontact.com', 'eae27f47f393fa714af757250312d89dfaa43161', '7 Luster Pass', 'Female', '2021-03-28', '2022-02-04', '1'),
(20, 'Moria Dillimore', 'mdillimorej@wufoo.com', '4018e256b11bcfa9df34fc9e2258a7dbd22dc77c', '292 Thompson Pass', 'Male', '2021-09-05', '2021-12-01', '0'),
(21, 'Law Jeanneau', 'ljeanneauk@usa.gov', '1f147cd7392025945dc63a458798631d365d0b8d', '7003 Sugar Road', 'Male', '2022-02-09', '2021-08-11', '1'),
(22, 'Rutledge Hyrons', 'rhyronsl@engadget.com', 'e8b760b79474cb9b8cc95a2a6b1af50f46f7e641', '336 Mcguire Lane', 'Female', '2021-08-19', '2021-08-30', '1'),
(23, 'Fred Krimmer', 'fkrimmerm@tinyurl.com', '752d0db0e124804807d69fe3467b54e303e87ac2', '0500 Trailsway Lane', 'Bigender', '2021-07-12', '2022-01-05', '1'),
(24, 'Derril Gatchell', 'dgatchelln@marriott.com', '13c16b2009a56799905b72d26c02aeac7afe46e7', '12660 Comanche Point', 'Female', '2021-04-10', '2022-02-12', '1'),
(25, 'Skipper Shirtcliffe', 'sshirtcliffeo@blogs.com', 'b8266685e1a3d71cfee1fab1150bbab6b3e02043', '6090 School Crossing', 'Female', '2021-06-28', '2021-11-03', '0'),
(26, 'Cissy Colquitt', 'ccolquittp@europa.eu', 'f6f242431574871e62092d343e66760ac20e0cf4', '518 Morrow Trail', 'Male', '2021-07-28', '2021-09-08', '1'),
(27, 'Domini Murden', 'dmurdenq@wufoo.com', 'c082267032c504dabe7031a37ac0c30d3c4764b9', '213 Sutherland Way', 'Female', '2021-12-04', '2021-03-21', '1'),
(28, 'Gregoor Ottey', 'gotteyr@huffingtonpost.com', '0f15c429d13139400c665bd846581235163db208', '2 Forest Drive', 'Male', '2021-03-31', '2021-06-25', '0'),
(29, 'Dorree Muzzlewhite', 'dmuzzlewhites@wikipedia.org', 'a20f26f65cff1fd272a1c8592228b543474c8f6a', '92143 Mifflin Point', 'Polygender', '2021-07-18', '2021-12-28', '1'),
(30, 'Neal Shardlow', 'nshardlowt@xinhuanet.com', 'db06f8983fcba94258a886f5cbf5cb4346cafe96', '90 Merchant Street', 'Male', '2021-12-22', '2021-05-17', '0'),
(31, 'Sully Guiso', 'sguisou@washington.edu', '782b90fd7ca838a8acffd7e51921532d1a24aaff', '1 Monument Road', 'Female', '2021-12-12', '2021-06-22', '1'),
(32, 'Ethelind Preece', 'epreecev@aboutads.info', '64ff67b26e6dc76bae0a52639efdbebe7e66262a', '45857 Barby Center', 'Genderfluid', '2021-03-15', '2021-07-08', '0'),
(33, 'Birch Trevna', 'btrevnaw@cloudflare.com', 'b5ecbe128e9268f7ef1a793313fd19ce14aac7ff', '66 Delladonna Junction', 'Female', '2021-10-18', '2021-04-19', '1'),
(34, 'Jonah Cosbey', 'jcosbeyx@indiatimes.com', '77f8c6ae194da964f5adabe475cc03c7473f7825', '350 Algoma Place', 'Male', '2021-12-26', '2022-02-21', '1'),
(35, 'Silvanus Barrows', 'sbarrowsy@google.nl', 'b49e02f9e7745a7a7b901d77c237b74c2e2742e5', '12 Lotheville Point', 'Male', '2021-07-26', '2021-09-20', '1'),
(36, 'Howard Lawton', 'hlawtonz@vistaprint.com', '3fd6458083ff133560f41a64a9c6ed16c1686f35', '10025 Ronald Regan Center', 'Polygender', '2021-04-07', '2021-04-19', '1'),
(37, 'Jerrylee Arundel', 'jarundel10@aol.com', '964e6ad0745a09e3138637f4905acae43dd55af7', '38 Annamark Court', 'Female', '2021-04-08', '2021-11-02', '1'),
(38, 'Johnath McOwan', 'jmcowan11@cargocollective.com', '5ba114fe66d75eafda3e13ac466fd25952bb4b35', '294 Jay Way', 'Male', '2021-09-26', '2021-10-27', '0'),
(39, 'Aloisia Clear', 'aclear12@vinaora.com', '924a94ff34edaef672ac932c653187239f512d6f', '271 Green Ridge Alley', 'Male', '2021-06-30', '2021-05-27', '0'),
(40, 'Kev Crowther', 'kcrowther13@sciencedaily.com', '36fb50e42035e4eb1a6cea6db7188b9ce7284289', '53747 Warbler Parkway', 'Male', '2021-11-01', '2021-06-15', '0'),
(41, 'Don Tegeller', 'dtegeller14@odnoklassniki.ru', '3913b1571c2c3138438529cb606ae18a03021569', '0 Delaware Street', 'Male', '2021-06-13', '2021-06-04', '1'),
(42, 'Trula Vanes', 'tvanes15@chicagotribune.com', '5b5f7b788d23cc2843cf4e2844aef6c04036fd4b', '243 Paget Street', 'Non-binary', '2021-09-19', '2022-01-11', '0'),
(43, 'Roth Grayson', 'rgrayson16@mac.com', '3174a565292473c79b9f5a3e64562f8aa21a1190', '288 Northfield Drive', 'Polygender', '2021-12-10', '2021-03-20', '0'),
(44, 'Pru Phillcock', 'pphillcock17@pinterest.com', '4ce543fb4fffc2bd78c6a0d0403985228d2a70cf', '541 Novick Junction', 'Female', '2021-04-29', '2021-05-03', '1'),
(45, 'Ivan Heineken', 'iheineken18@ask.com', '62bac899b8dcb47ec10f144f93e9d765e5f6ef5f', '5205 Bluejay Place', 'Female', '2021-10-31', '2021-11-15', '0'),
(46, 'Gretchen Ritch', 'gritch19@java.com', 'a4789d989fbc3a57ffe22494e4ef9a4cdf9540b7', '129 Golf Way', 'Female', '2021-05-06', '2021-04-02', '0'),
(47, 'Damaris Fitzsymon', 'dfitzsymon1a@feedburner.com', 'a1e9557784dcd7096dfb4ba5114450d1a8485618', '80382 Towne Pass', 'Female', '2021-04-03', '2021-05-27', '1'),
(48, 'Markos Farquar', 'mfarquar1b@ameblo.jp', 'e55dc037297f54d1463d503886ced5d19ab4f829', '18 Mitchell Pass', 'Male', '2021-04-13', '2022-01-19', '1'),
(49, 'Rhys Innett', 'rinnett1c@google.ru', 'cabd3ff443c97731ac2d19d113ce05f402cacb85', '1 Sutherland Drive', 'Polygender', '2022-02-10', '2021-07-30', '0'),
(50, 'Augy Ruffli', 'aruffli1d@google.co.uk', '66ad7b39863b70fe6ba454ba8442c72a5898ebb6', '20 Burning Wood Drive', 'Agender', '2022-01-03', '2021-03-27', '0');
--
-- Adatbázis: `214szfte_mvc_project`
--
CREATE DATABASE IF NOT EXISTS `214szfte_mvc_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_mvc_project`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `concerts`
--

CREATE TABLE `concerts` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `place` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `concerts`
--

INSERT INTO `concerts` (`id`, `date`, `place`, `description`, `price`) VALUES
(1, '2022-03-08', 'Baja', 'dsadsa', 2000),
(2, '2022-03-31', 'Pécs', 'fdsfaddafadffsfsdsd', 3000),
(3, '2022-03-18', 'Szeged', 'dasdasdsadasafsadsdfsdfsdfds', 3000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `content` text COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`) VALUES
(1, 'bio', 'Az 1985-ben alapított Hot Jazz Band egyedülálló eredményeket, páratlan karriert tudhat magáénak. A hat zenész mégis a legbüszkébb arra lehet, hogy eredeti célkitűzésük, hogy újra életre keltsék, megismertessék és megszerettessék a jazzkorszak hangzásvilágát, elérte célját.\r\n\r\nA megalakuláskor még főként dixielandet játszó zenészek hamar rájöttek, hogy ez a műfaj sokkal gazdagabb, mint az elsőre megismert dixieland-repertoár. Az 1920-as, ’30-as, ’40-es évek muzsikája talán a legszínesebb könnyűzenei műfaj. A méltán népszerű charleston, shimmy, fox trott táncok dallamai, a ’20-as évek gramofonos hangzása, a ’30-as évek fox, szving táncok lüktető zenéje és a ’40-es évek szving és amerikai dixieland revival stílusai keltek életre általuk. Amint első lemezük kritikájában 1996-ban a MaJazz folyóiratban Fridrich Károly, a Liszt Ferenc Zeneakadémia Jazztanszékének jazztörténet professzora írta:\r\n\r\n    Ez a zenekar a hazai be-bop előtti stílust játszó együttesek közül az egyetlen, amely kétség kívül jazzt játszik.\r\n\r\nA kezdetektől céljuk volt az ugyanebből a korból származó magyar szerzemények repertoárra tűzése. Ez a törekvésük hozta meg igazán az áttörést számukra Magyarországon. Ebben a témában egyedüliként négy koncertnyi anyagot dolgoztak fel, s nevük egybeforrt a Kabos, Jávor, Karády, Tolnay, Latabár filmek zenéivel. Egyedi hangszereléseik s játékmodoruk, amivel a filmzenéket a jazz-re jellemző rögtönzéssel is vegyítették, utánozhatatlan hangzást kölcsönöznek műsoraiknak. A zenekar alapítója, trombitás, bendzsós, énekese Bényei Tamás a kort idéző énekmodorával nemcsak a közönség soraiban népszerű, 2002-ben ezért részesítették eMeRTon díjban. Azóta számos tradicionális jazz együttes követte példájukat, s a kortárs könnyűzene jeles sztárjai is már a Hot Jazz Band által újraélesztett dalokat énekelik, ám velük ellentétben az együttes sajátja azonban még mindig az, hogy igazi időutazásra viszik hallgatóságukat a teljesen korhű hangzás és megjelenés által. Műsoraikat színesíti bendzsózenekaruk és mosódeszka show is. Koncertjeiket a derűs hangulat, a vicces konferanszok és a közönséggel közös éneklések jellemzik.\r\n\r\nA Hot Jazz Band négy nemzetközi díjat nyert külföldön, köztük Európa, egyben a világ legnagyobb létszámú tradicionális versenyén lettek elsők a franciaországi Saint Raphaelben, 1995-ben. Az, hogy négy év alatt zsinórban négy nemzetközi versenyen diadalmaskodtak, ezzel világviszonylatban is egyedül állóak lettek, s hasonló teljesítménnyel egyetlen hazai nagy elődjük vagy kortársuk sem dicsekedhet. \r\n\r\nA hazai elismerések sem várattak magukra, a Magyar Rádió könnyűzenei díját, az eMeRTon díjat, két ízben nyerték el - ebből egy alkalommal Bényei Tamás, mint az év férfi énekese -, miközben a Líra, a Louis Armstrong és az Ezüst Életfa díjat is megkapták. '),
(2, 'contacts', 'A Hot Jazz Band a legkülönfélébb alkalmakkor vállal közreműködést, koncerten, fesztiválon, gálaesteken, vállalati és magánrendezvényeken, esküvőn, születésnapon. Ez lehet koncertműsor, háttérzene, vacsorazene, tánczene (slow fox, keringő, tangó). Legújabb műsorunk egy interaktív 60 perces program gyerekeknek. Felkérés és érdeklődés esetén e-mailben keressék Bényei Tamás zenekarvezetőt.\r\n\r\nTel.: +36 30 425 4848\r\n\r\nE-mail:\r\nhotjazzband@hotjazzband.hu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `description` text COLLATE utf8_hungarian_ci DEFAULT NULL,
  `pucture` varchar(200) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `members`
--

INSERT INTO `members` (`id`, `name`, `position`, `description`, `pucture`) VALUES
(1, 'Fodor lászló', 'klarinét, szaxofon', '1969 november 22-én születtem Sárváron, egy tizenötezres nyugat dunántúli kisvárosban. Szüleim 10 évesen írattak be a helyi zeneiskolába akkor még nem tudva, hogy a zene az egész életemet meg fogja határozni.\r\n\r\n13 éves koromtól tudatosan zenész szerettem volna lenni, és ez a vágyam azóta is töretlen.\r\n\r\nA győri Richter János Zeneművészeti Szakközépiskolában érettségiztem, majd sikeres felvételi után főiskolai tanulmányaimat a Liszt Ferenc Zeneművészeti Főiskola Zeneiskolai Tanárképző Intézetének győri tagozatán folytattam.\r\n\r\nEkkor ismertem meg kezdetben lemezről, majd személyes találkozás útján a Molnár Dixieland klarinétosát, Molnár Gyulát, akinek játéka nagyon nagy hatással volt rám, és tulajdonképpen meghatározta további életem alakulását.\r\n\r\nA klarinét- és szolfézstanári diploma megszerzése után felvételt nyertem a budapesti Zeneakadémiára, ahol 1993-ban művésztanári diplomát szereztem Kovács Béla osztályában.', 'fodor-laszlo.jpg'),
(2, 'Galbács István', 'dob', 'Születtem Budapesten, az időm kezdetén, szemüvegesen - ha emlékeim nem csalnak -, bár ez elég rég történt, mikor is a frissen újjáépített Erzsébet hídon még a 44-es villamos vitt át Budára.\r\n\r\nKözéposztálybéli szüleim már korán nagy hangsúlyt fektettek zenei ízlésem formálására, ezért néha egy-egy a rádióban elhangzó Poór Péter és Aradszky László szám között kikapcsolták a készüléket. Persze még sokáig ez maradt számomra az egyetlen zenei forrás, ami miatt mostanában is ér meglepetés, ha régi, \"elfeledettnek\" hitt felvételeket hallok, és rájövök, hogy emlékszem a szövegükre.\r\n\r\nTízéves koromban egy \"toborzó\" keretében lettem a kerületi zeneiskola tanulója, és első tanáromnak (Siklósi Gábor - ma Szegeden tanít) köszönhetően rövid időn belül különbséget tudtam tenni az LGT és az Illés együttes között (minden értelemben). Ezt követően több éven keresztül hosszú, fáradságos utat jártam be, mialatt diáktársaim a szolfézstermek padjait koptatták. Ez az idő azonban nem múlt el nyomtalanul, ekkor szerzett tapasztalataimnak köszönhetően ma jobban ismerem Budapest utcáit, mint a zeneelmélet rögös útját. Sajnos. így nem is csoda, ha első sikeremet nem zenei téren, hanem egy építőtábori (fiúknak rendezett) lábszépségversenyen arattam. Az ifjabbak kedvéért: az építőtábor egy koedukált szórakozási lehetőség volt középiskolás diákok részére, azzal a céllal, hogy minél kisebb kárt okozzanak a mezőgazdaságnak.', 'galbacs-istvan.jpg'),
(3, 'Szabó Lóránt', 'gitár, bendzsó', '1976-ban születtem Siófokon. Mivel életem nagy részét itt éltem le, így a zenélés is a környékbeli zenekarokhoz köthető. A muzsikálás sokféle változatát kipróbáltam, templomi kórust kísérve és a beszédek között klasszikus darabokat játszva, vegyes kar tenor szólamában énekelve, helyi amatőr beat és rockzenekarokban, latin és dixieland zenekarban, jazz trióban, akusztikus gitár duóban, gitáron, basszusgitáron, vokált énekelve.\r\n\r\nFontosabb zenekaraim az Apáti Dixieland Band 1997-től 2013-ig - itt volt lehetőségem Apáti János irányításával magamba szívni a korai jazz alapjait -, Blokk együttes 2004-től 2012-ig, Los Companeros és Noah’s Ark.\r\n\r\nZenei tanulmányaimról: 1990-ben 14 évesen kezdtem el gitározni egy magántanárnál Zamárdiban. Nála két évet tanultam főként klasszikus darabokat. Utána néhány évig tartó autodidakta időszak következett, ami alatt az improvizálás területén kezdtem el bontogatni szárnyaimat. Ezután Budapestre jártam Tornóczky Ferenchez, akitől rengeteget tanultam. Ő készített fel az akkor még szárnyait bontogató Kőbányai Zenei Stúdió felvételiére. Itt 1997-től 2001-ig tanultam gitárt, majd 2002-től 2005-ig a dob szakot is elvégeztem. Ebben az időszakban tanáraim voltak gitáron: Tornóczky Ferenc és Maróthy Zoltán, dobon: Sramkó János, zenekari gyakorlaton: Babos Gyula, Fekete István, Fekete Kovács Kornél, László Attila, Maróthy Zoltán és Tóth János Rudolf.', 'szabo-lorant.jpg'),
(4, 'Juhász Zoltán', 'bőgő', '1962. január 30-án születtem Győrött. Gyermekéveimet is ebben a szép dunántúli városban töltöttem.\r\n\r\nSokat sportoltam: tíz évig úsztam és két évig kenuztam. Az általános iskola befejezése után szakmát tanultam. Zenei pályafutásom viszonylag későn kezdődött tizenhat éves koromban. Hartyándi Jenő barátom segítségével jutottam jazz-felvételekhez. Ebben az időben ez nem is volt egyszerű feladat. Jenő révén ismertem meg Tiborc Dénest, akitől egy évig szaxofonozni és basszusgitározni tanultam. Dénes testvére Tiborc András ekkor a Lakatos Tóni Quartett nagybőgőse volt. Egy győri koncertjük meghallgatása után úgy éreztem a nagybőgő az én hangszerem. Akkori munkahelyemen felmondtam, majd újságkihordóként kezdtem dolgozni. Emellett a munka mellett elegendő időm maradt a jazz-konzervatóriumi felvételire való felkészülésre. Ebben Tiborc András volt a segítségemre. Sokat köszönhetek neki.', 'juhasz-zoltan-2.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menuitems`
--

CREATE TABLE `menuitems` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `menuitems`
--

INSERT INTO `menuitems` (`id`, `name`, `url`) VALUES
(1, 'Biográfia', 'index'),
(2, 'Tagjaink', 'members'),
(3, 'Zenéink', 'musics'),
(4, 'Koncertek', 'concerts'),
(5, 'Elérhetőségek', 'contacts');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `musics`
--

CREATE TABLE `musics` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `musics`
--

INSERT INTO `musics` (`id`, `title`, `url`) VALUES
(1, 'Újévi koncert', 'mbXdXkJWdio'),
(2, 'Elég volt nékem magából', 'kIUcvhkR1fQ'),
(3, 'Kislány kezeket fel', 'eHJXXh7VR7g');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Adatbázis: `214szfte_próba2`
--
CREATE DATABASE IF NOT EXISTS `214szfte_próba2` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_próba2`;
--
-- Adatbázis: `214szfte_próba3`
--
CREATE DATABASE IF NOT EXISTS `214szfte_próba3` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_próba3`;
--
-- Adatbázis: `214szfte_sadasdsadsa.hu`
--
CREATE DATABASE IF NOT EXISTS `214szfte_sadasdsadsa.hu` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_sadasdsadsa.hu`;
--
-- Adatbázis: `214szfte_tarhely`
--
CREATE DATABASE IF NOT EXISTS `214szfte_tarhely` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_tarhely`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csomagok`
--

CREATE TABLE `csomagok` (
  `ID` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `ar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `csomagok`
--

INSERT INTO `csomagok` (`ID`, `nev`, `leiras`, `ar`) VALUES
(1, 'cPanel Webtárhely Small', '1 GB SSD Webtárhely\r\nKorlátlan hozzáadható domain\r\nKorlátlan e-mail fiók\r\nAjándék SSL tanúsítvány', 3000),
(2, 'cPanel Webtárhely Medium', '2 GB SSD Webtárhely\r\nKorlátlan hozzáadható domain\r\nKorlátlan e-mail fiók\r\nAjándék SSL tanúsítvány', 4000),
(3, 'cPanel Webtárhely Large', '4 GB SSD Webtárhely\r\nKorlátlan hozzáadható domain\r\nKorlátlan e-mail fiók\r\nAjándék SSL tanúsítvány', 7000),
(4, 'cPanel Webtárhely XL', '8 GB SSD Webtárhely\r\nKorlátlan hozzáadható domain\r\nKorlátlan e-mail fiók\r\nAjándék SSL tanúsítvány', 12000),
(5, 'cPanel Webtárhely XXL', '12 GB SSD Webtárhely\r\nKorlátlan hozzáadható domain\r\nKorlátlan e-mail fiók\r\nAjándék SSL tanúsítvány', 16000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `ID` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `jog` varchar(15) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`ID`, `nev`, `jelszo`, `jog`) VALUES
(1, 'admin', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'admin'),
(2, 'teszt1', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'felhasználó'),
(3, 'teszt2', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'felhasználó'),
(4, 'teszt3', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'felhasználó');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendelesek`
--

CREATE TABLE `rendelesek` (
  `ID` int(11) NOT NULL,
  `felhID` int(11) NOT NULL,
  `csomagID` int(11) NOT NULL,
  `domainname` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendelesek`
--

INSERT INTO `rendelesek` (`ID`, `felhID`, `csomagID`, `domainname`) VALUES
(1, 2, 3, 'www.szeretemaphpt.hu'),
(2, 2, 3, 'codeing.hu'),
(4, 2, 5, 'codetanar.hu'),
(5, 2, 4, 'www.elsodoaminem.hu'),
(6, 2, 4, 'www.szeretemaphpt.hu'),
(7, 2, 4, 'www.szeretemaphpt.hu'),
(8, 2, 4, 'www.szeretemaphpt.hu'),
(9, 2, 2, 'www.valami.hu'),
(10, 2, 2, 'www.akarmi.hu'),
(11, 2, 5, 'www.semmi.hu'),
(12, 2, 1, 'www.turr.hu'),
(13, 2, 1, 'www.turr.hu'),
(14, 2, 2, 'www.turr.hu'),
(15, 2, 2, 'www.turr.hu'),
(16, 2, 5, 'www.turr.hu'),
(17, 2, 3, 'www.turr.hu'),
(18, 2, 3, 'www.turr.hu'),
(19, 2, 2, 'www.turr.hu'),
(20, 2, 3, 'www.turr.hu'),
(21, 3, 3, 'www.valami.hu'),
(22, 3, 1, 'www.akarmi.hu'),
(23, 3, 1, 'www.akarmi.hu'),
(24, 3, 1, 'www.akarmi.hu'),
(25, 3, 2, 'www.semmi.hu'),
(26, 3, 1, 'www.semmi.hu'),
(27, 0, 1, 'sadasdsadsa.hu'),
(28, 0, 1, 'sadasdsadsa.hu'),
(29, 0, 1, 'teszt.hu'),
(30, 0, 2, 'próba2'),
(31, 2, 3, 'próba3'),
(32, 0, 3, 'www.almafa.hu');

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `rendelesreszletek`
-- (Lásd alább az aktuális nézetet)
--
CREATE TABLE `rendelesreszletek` (
`felhID` int(11)
,`felhNev` varchar(100)
,`csomID` int(11)
,`csomNev` varchar(100)
,`csomAr` double
,`domain` varchar(100)
);

-- --------------------------------------------------------

--
-- Nézet szerkezete `rendelesreszletek`
--
DROP TABLE IF EXISTS `rendelesreszletek`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rendelesreszletek`  AS SELECT `rendelesek`.`felhID` AS `felhID`, `felhasznalok`.`nev` AS `felhNev`, `csomagok`.`ID` AS `csomID`, `csomagok`.`nev` AS `csomNev`, `csomagok`.`ar` AS `csomAr`, `rendelesek`.`domainname` AS `domain` FROM ((`rendelesek` join `csomagok` on(`csomagok`.`ID` = `rendelesek`.`csomagID`)) join `felhasznalok` on(`felhasznalok`.`ID` = `rendelesek`.`felhID`)) ;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csomagok`
--
ALTER TABLE `csomagok`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csomagok`
--
ALTER TABLE `csomagok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `rendelesek`
--
ALTER TABLE `rendelesek`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Adatbázis: `214szfte_teszt.hu`
--
CREATE DATABASE IF NOT EXISTS `214szfte_teszt.hu` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_teszt.hu`;
--
-- Adatbázis: `214szfte_torpek`
--
CREATE DATABASE IF NOT EXISTS `214szfte_torpek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_torpek`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `torpek`
--

CREATE TABLE `torpek` (
  `id` int(3) NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `klan` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `nem` varchar(1) COLLATE utf8_hungarian_ci NOT NULL,
  `suly` int(3) NOT NULL,
  `magassag` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `torpek`
--

INSERT INTO `torpek` (`id`, `nev`, `klan`, `nem`, `suly`, `magassag`) VALUES
(1, 'Terrin Sak', 'Kova', 'F', 62, 130),
(2, 'Bal Eraffa', 'Vasököl', 'N', 45, 129),
(3, 'Sarsi Duri', 'Vasököl', 'F', 59, 141),
(4, 'Dorf Gein', 'Csille', 'F', 62, 138),
(5, 'Bombur Nori', 'Kova', 'N', 48, 132),
(6, 'Dorf Loopa', 'Csille', 'F', 63, 140),
(7, 'Trad Magraimn', 'Acél', 'F', 67, 138),
(8, 'Tardi Falgorran', 'Csille', 'F', 65, 140),
(9, 'Lok Dun', 'Acél', 'F', 70, 142),
(10, 'Sarrof Hro', 'Kova', 'F', 65, 137),
(11, 'Gor Morf', 'Csille', 'F', 58, 135),
(12, 'Heimal Morf', 'Vasököl', 'F', 61, 144),
(13, 'Odi Duri', 'Kova', 'F', 64, 145),
(14, 'Hardi Oggi', 'Vasököl', 'F', 64, 137),
(15, 'Bal Rian', 'Acél', 'N', 48, 134),
(16, 'Tor Edda', 'Vasököl', 'F', 61, 135),
(17, 'Forf Orsan', 'Csille', 'N', 50, 140),
(18, 'Krof Erag', 'Vasököl', 'N', 45, 145),
(19, 'Azul Luer', 'Vasököl', 'N', 43, 141),
(20, 'Forf Sak', 'Acél', 'F', 60, 146),
(21, 'Krof Glueggi', 'Kova', 'F', 62, 135),
(22, 'Tor Zian', 'Vasököl', 'N', 51, 138),
(23, 'Darrin Surroc', 'Acél', 'N', 48, 139),
(24, 'Nallid Grai', 'Vasököl', 'F', 58, 138),
(25, 'Lok Gran', 'Acél', 'F', 67, 140),
(26, 'Sarraain Sugran', 'Kova', 'F', 66, 138),
(27, 'Dorrin Dars', 'Csille', 'F', 68, 144),
(28, 'Nallid Fars', 'Vasököl', 'F', 71, 143),
(29, 'Dor Gerri', 'Kova', 'F', 69, 138),
(30, 'Darrin Rudga', 'Acél', 'F', 90, 140),
(31, 'Trad Morf', 'Vasököl', 'F', 69, 136),
(33, 'Lusti', 'Hupikék', 'F', 57, 133),
(34, 'Törpapa', 'Hupikék', 'F', 44, 156),
(35, 'Törpilla', 'Hupikék', 'N', 35, 122),
(36, 'Hami', 'Hupikék', 'F', 57, 147),
(38, 'Törperős', 'Hupikék', 'F', 55, 142),
(57, 'Okoska törp', 'Hupikék', 'F', 65, 133),
(58, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(59, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(60, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(61, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(62, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(63, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(64, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(65, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(66, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(67, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(68, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(69, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(70, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(71, 'Ügyifogyi', 'Hupikék', 'F', 35, 45),
(72, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(73, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(74, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(75, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(76, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(77, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(78, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(79, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(80, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(81, 'Ügyifogyi', 'Hupikék', 'F', 30, 45);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `torpek`
--
ALTER TABLE `torpek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `torpek`
--
ALTER TABLE `torpek`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- Adatbázis: `214szfte_www.almafa.hu`
--
CREATE DATABASE IF NOT EXISTS `214szfte_www.almafa.hu` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szfte_www.almafa.hu`;
--
-- Adatbázis: `214szft_chat`
--
CREATE DATABASE IF NOT EXISTS `214szft_chat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szft_chat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `passwd` varchar(25) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `passwd`) VALUES
(6, 'Koppány', 'katona@gmail.com', 'a');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Adatbázis: `214szft_mvc_project`
--
CREATE DATABASE IF NOT EXISTS `214szft_mvc_project` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szft_mvc_project`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menuitems`
--

CREATE TABLE `menuitems` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `menuitems`
--

INSERT INTO `menuitems` (`ID`, `name`, `url`) VALUES
(1, 'Biográfia', 'bio'),
(2, 'Tagok', 'members'),
(3, 'Zenék', 'musics'),
(4, 'Koncertek', 'concerts'),
(5, 'Kapcsolat', 'contact');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `menuitems`
--
ALTER TABLE `menuitems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Adatbázis: `214szft_stepcounter`
--
CREATE DATABASE IF NOT EXISTS `214szft_stepcounter` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szft_stepcounter`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `stepdatas`
--

CREATE TABLE `stepdatas` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `date` date NOT NULL,
  `stepcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `reg` datetime NOT NULL,
  `last` datetime DEFAULT NULL,
  `rights` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `reg`, `last`, `rights`, `status`) VALUES
(1, 'Administrator', 'admin@admin.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-19 00:00:00', NULL, 'admin', 1),
(2, 'Teszt user 1', 'test1@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-19 05:00:00', NULL, 'user', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `stepdatas`
--
ALTER TABLE `stepdatas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `stepdatas`
--
ALTER TABLE `stepdatas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `stepdatas`
--
ALTER TABLE `stepdatas`
  ADD CONSTRAINT `stepdatas_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`);
--
-- Adatbázis: `autok`
--
CREATE DATABASE IF NOT EXISTS `autok` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `autok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autok`
--

CREATE TABLE `autok` (
  `Rendszám` varchar(7) DEFAULT NULL,
  `Típus` varchar(6) DEFAULT NULL,
  `Szín` varchar(5) DEFAULT NULL,
  `Gyártási év` int(4) DEFAULT NULL,
  `Érték` varchar(10) DEFAULT NULL,
  `Első tulajdonos` int(1) DEFAULT NULL,
  `Tulajdonos` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `autok`
--

INSERT INTO `autok` (`Rendszám`, `Típus`, `Szín`, `Gyártási év`, `Érték`, `Első tulajdonos`, `Tulajdonos`) VALUES
('ABC-123', 'Audi', 'Fehér', 1946, '1 200 000', 1, 'Vincs Eszter'),
('BIT-333', 'Lada', 'Kék', 2001, '1 250 000', 1, 'ORFK'),
('BIT-345', 'Lada', 'Fehér', 2003, '3 200 000', 1, 'ORFK'),
('BIT-346', 'Lada', 'Piros', 2003, '3 100 000', 1, 'ORFK'),
('BKV-123', 'Skoda', 'Piros', 2002, '3 400 000', 1, 'BKV'),
('BKV-124', 'Skoda', 'Piros', 1997, '500 000', 0, 'BKV'),
('BKV-129', 'Skoda', 'Piros', 1999, '2 000 000', 0, 'BKV'),
('BKV-201', 'Opel', 'Piros', 2002, '230 000', 0, 'BKV'),
('BOND-55', 'Opel', 'Piros', 1963, '230 000', 1, 'Luc Erna'),
('BOT-347', 'Opel', 'Fehér', 1998, '1 200 000', 0, 'ORFK'),
('BUU-202', 'Lada', 'Kék', 2002, '1 200 000', 1, 'ORFK'),
('CML-994', 'Lada', 'Fehér', 1985, '350 000', 0, 'Ló Pál'),
('CUC-888', 'Suzuki', 'Kék', 2003, '2 000 000', 1, 'Liaváry Adél'),
('CSIN-95', 'Suzuki', 'Fehér', 1912, '567 000', 1, 'Mahurincs Mónika'),
('GGG-333', 'Opel', 'Fehér', 1995, '120 000', 0, 'Boda Gizella'),
('HAJ-001', 'Audi', 'Piros', 1963, '80 000', 1, 'Hajanincs Bódog'),
('HOO-001', 'Lada', 'Fehér', 2001, '140 000', 0, 'Hó Virág'),
('HUJ-777', 'Lada', 'Piros', 1954, '230 000', 1, 'BKV'),
('IJJ-942', 'Opel', 'Kék', 2000, '2 000 000', 1, 'Kiss Béla'),
('IKN-593', 'Suzuki', 'Sárga', 2002, '1 900 000', 1, 'Őszi Virág'),
('KARA-2', 'Suzuki', 'Kék', 1958, '120 000', 0, 'Karam Ella'),
('KIUT-01', 'Lada', 'Kék', 1967, '240 000', 1, 'ORFK'),
('KIUT-02', 'Lada', 'Kék', 1967, '244 000', 0, 'ORFK'),
('KUN-888', 'Audi', 'Fehér', 2000, '4 800 000', 1, 'Karap Pál'),
('LAPOS-1', 'Opel', 'Kék', 1998, '2 300 000', 1, 'Lapos Elemér'),
('LAPOS-2', 'Suzuki', 'Piros', 1976, '890 000', 1, 'Olcsó Lujza'),
('NEA-111', 'Audi', 'Kék', 1901, '10 000 000', 0, 'Neandervölgyi Pál'),
('RACS-34', 'Audi', 'Fehér', 1967, '8 900 000', 0, 'Mekk Elek'),
('SKL-345', 'Opel', 'Kék', 1997, '3 500 000', 1, 'Skara Pál'),
('SZL-832', 'Opel', 'Piros', 1976, '341 200', 1, 'Szemte Lenke'),
('UJA-235', 'Lada', 'Kék', 2001, '1 000 000', 0, 'ORFK'),
('VIC-266', 'Suzuki', 'Kék', 1952, '320 000', 0, 'Tekerna Nóra'),
('VOL-287', 'Audi', 'Fehér', 1988, '120 000', 0, 'Lenkei Imre'),
('WIN-200', 'Opel', 'Kék', 2000, '1 000 000', 1, 'Kala Pál'),
('WIN-995', 'Suzuki', 'Kék', 1995, '1 000 000', 0, 'Hidegvölgyi Lilla'),
('WIN-998', 'Audi', 'Kék', 1998, '1 000 000', 0, 'Csocsó Csaba'),
('ZIU-876', 'Skoda', 'Fehér', 2003, '2 800 000', 1, 'Júliusi Anna'),
('ZSU-344', 'Opel', 'Piros', 1988, '340 000', 0, 'Kincses Bea');
--
-- Adatbázis: `autoker`
--
CREATE DATABASE IF NOT EXISTS `autoker` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `autoker`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autok`
--

CREATE TABLE `autok` (
  `ID` int(11) NOT NULL,
  `gyarto` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tipus` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `evjarat` int(11) NOT NULL,
  `uzemanyag` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `szin` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `extrak` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `autok`
--

INSERT INTO `autok` (`ID`, `gyarto`, `tipus`, `evjarat`, `uzemanyag`, `szin`, `extrak`, `ar`) VALUES
(6, 'q', 'w', 33, 'wwwqq', 'syaa', 'nimcs', 20000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autok`
--
ALTER TABLE `autok`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `autok`
--
ALTER TABLE `autok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Adatbázis: `bajnokok`
--
CREATE DATABASE IF NOT EXISTS `bajnokok` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bajnokok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bek`
--

CREATE TABLE `bek` (
  `COL 1` varchar(4) DEFAULT NULL,
  `COL 2` varchar(13) DEFAULT NULL,
  `COL 3` varchar(21) DEFAULT NULL,
  `COL 4` varchar(9) DEFAULT NULL,
  `COL 5` varchar(24) DEFAULT NULL,
  `COL 6` varchar(8) DEFAULT NULL,
  `COL 7` varchar(9) DEFAULT NULL,
  `COL 8` varchar(8) DEFAULT NULL,
  `COL 9` varchar(12) DEFAULT NULL,
  `COL 10` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `bek`
--

INSERT INTO `bek` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`) VALUES
('ev', 'helyszin', 'gyoztes', 'gy_orszag', 'vesztes', 'v_orszag', 'gy_goljai', 'v_goljai', 'hosszabbitas', 'tizenegyesek'),
('1956', 'Párizs', 'Real Madrid', 'ESP', 'Stade Reims', 'FRA', '4', '3', 'HAMIS', 'HAMIS'),
('1957', 'Madrid', 'Real Madrid', 'ESP', 'Fiorentina', 'ITA', '2', '0', 'HAMIS', 'HAMIS'),
('1958', 'Brüsszel', 'Real Madrid', 'ESP', 'AC Milan', 'ITA', '3', '2', 'HAMIS', 'HAMIS'),
('1959', 'Stuttgart', 'Real Madrid', 'ESP', 'Stade Reims', 'FRA', '2', '0', 'HAMIS', 'HAMIS'),
('1960', 'Glasgow', 'Real Madrid', 'ESP', 'Eintracht Frankfurt', 'FRG', '7', '3', 'HAMIS', 'HAMIS'),
('1961', 'Bern', 'Benfica', 'POR', 'FC Barcelona', 'ESP', '3', '2', 'HAMIS', 'HAMIS'),
('1962', 'Amszterdam', 'Benfica', 'POR', 'Real Madrid', 'ESP', '5', '3', 'HAMIS', 'HAMIS'),
('1963', 'London', 'AC Milan', 'ITA', 'Benfica', 'POR', '2', '1', 'HAMIS', 'HAMIS'),
('1964', 'Bécs', 'Internazionale', 'ITA', 'Real Madrid', 'ESP', '3', '1', 'HAMIS', 'HAMIS'),
('1965', 'Milánó', 'Internazionale', 'ITA', 'Benfica', 'POR', '1', '0', 'HAMIS', 'HAMIS'),
('1966', 'Brüsszel', 'Real Madrid', 'ESP', 'Partizan Beograd', 'YUG', '2', '1', 'HAMIS', 'HAMIS'),
('1967', 'Lisszabon', 'Celtic Glasgow', 'SCO', 'Internazionale', 'ITA', '2', '1', 'HAMIS', 'HAMIS'),
('1968', 'London', 'Manchester United', 'ENG', 'Benfica', 'POR', '4', '1', 'IGAZ', 'HAMIS'),
('1969', 'Madrid', 'AC Milan', 'ITA', 'Ajax Amsterdam', 'NED', '4', '1', 'HAMIS', 'HAMIS'),
('1970', 'Milánó', 'Feyenoord Rotterdam', 'NED', 'Celtic Glasgow', 'SCO', '2', '1', 'IGAZ', 'HAMIS'),
('1971', 'London', 'Ajax Amsterdam', 'NED', 'Panathinaikosz', 'GRE', '2', '0', 'HAMIS', 'HAMIS'),
('1972', 'Rotterdam', 'Ajax Amsterdam', 'NED', 'Internazionale', 'ITA', '2', '0', 'HAMIS', 'HAMIS'),
('1973', 'Belgrád', 'Ajax Amsterdam', 'NED', 'Juventus FC', 'ITA', '1', '0', 'HAMIS', 'HAMIS'),
('1974', 'Brüsszel', 'Bayern München', 'FRG', 'Atlético Madrid', 'ESP', '4', '0', 'IGAZ', 'HAMIS'),
('1975', 'Párizs', 'Bayern München', 'FRG', 'Leeds United', 'ENG', '2', '0', 'HAMIS', 'HAMIS'),
('1976', 'Glasgow', 'Bayern München', 'FRG', 'AS Saint–Étienne', 'FRA', '1', '0', 'HAMIS', 'HAMIS'),
('1977', 'Róma', 'FC Liverpool', 'ENG', 'Borussia Mönchengladbach', 'FRG', '3', '1', 'HAMIS', 'HAMIS'),
('1978', 'London', 'FC Liverpool', 'ENG', 'FC Bruges', 'BEL', '1', '0', 'HAMIS', 'HAMIS'),
('1979', 'München', 'Nottingham Forest', 'ENG', 'Malmö FF', 'SWE', '1', '0', 'HAMIS', 'HAMIS'),
('1980', 'Madrid', 'Nottingham Forest', 'ENG', 'Hamburger SV', 'FRG', '1', '0', 'HAMIS', 'HAMIS'),
('1981', 'Párizs', 'FC Liverpool', 'ENG', 'Real Madrid', 'ESP', '1', '0', 'HAMIS', 'HAMIS'),
('1982', 'Rotterdam', 'Aston Villa', 'ENG', 'Bayern München', 'FRG', '1', '0', 'HAMIS', 'HAMIS'),
('1983', 'Athén', 'Hamburger SV', 'FRG', 'Juventus FC', 'ITA', '1', '0', 'HAMIS', 'HAMIS'),
('1984', 'Róma', 'FC Liverpool', 'ENG', 'AS Roma', 'ITA', '1', '1', 'IGAZ', 'IGAZ'),
('1985', 'Brüsszel', 'Juventus FC', 'ITA', 'FC Liverpool', 'ENG', '1', '0', 'HAMIS', 'HAMIS'),
('1986', 'Sevilla', 'Steaua Bucuresti', 'ROM', 'FC Barcelona', 'ESP', '0', '0', 'IGAZ', 'IGAZ'),
('1987', 'Bécs', 'FC Porto', 'POR', 'Bayern München', 'FRG', '2', '1', 'HAMIS', 'HAMIS'),
('1988', 'Stuttgart', 'PSV Eindhoven', 'NED', 'Benfica', 'POR', '0', '0', 'IGAZ', 'IGAZ'),
('1989', 'Barcelona', 'AC Milan', 'ITA', 'Steaua Bucuresti', 'ROM', '4', '0', 'HAMIS', 'HAMIS'),
('1990', 'Bécs', 'AC Milan', 'ITA', 'Benfica', 'POR', '1', '0', 'HAMIS', 'HAMIS'),
('1991', 'Bari', 'Crvena Zvezda Beograd', 'YUG', 'Olympique Marseille', 'FRA', '0', '0', 'IGAZ', 'IGAZ'),
('1992', 'London', 'FC Barcelona', 'ESP', 'Sampdoria', 'ITA', '1', '0', 'IGAZ', 'HAMIS'),
('1993', 'München', 'Olympique Marseille', 'FRA', 'AC Milan', 'ITA', '1', '0', 'HAMIS', 'HAMIS'),
('1994', 'Athén', 'AC Milan', 'ITA', 'FC Barcelona', 'ESP', '4', '0', 'HAMIS', 'HAMIS'),
('1995', 'Bécs', 'Ajax Amsterdam', 'NED', 'AC Milan', 'ITA', '1', '0', 'HAMIS', 'HAMIS'),
('1996', 'Róma', 'Juventus FC', 'ITA', 'Ajax Amsterdam', 'NED', '1', '1', 'IGAZ', 'HAMIS'),
('1997', 'München', 'Borussia Dortmund', 'GER', 'Juventus FC', 'ITA', '3', '1', 'HAMIS', 'HAMIS'),
('1998', 'Amszterdam', 'Real Madrid', 'ESP', 'Juventus FC', 'ITA', '1', '0', 'HAMIS', 'HAMIS'),
('1999', 'Barcelona', 'Manchester United', 'ENG', 'Bayern München', 'GER', '2', '1', 'HAMIS', 'HAMIS'),
('2000', 'Saint–Denis', 'Real Madrid', 'ESP', 'Valencia', 'ESP', '3', '0', 'HAMIS', 'HAMIS'),
('2001', 'Milánó', 'Bayern München', 'GER', 'Valencia', 'ESP', '1', '1', 'IGAZ', 'IGAZ'),
('2002', 'Glasgow', 'Real Madrid', 'ESP', 'Bayer Leverkusen', 'GER', '2', '1', 'HAMIS', 'HAMIS'),
('2003', 'Manchester', 'AC Milan', 'ITA', 'Juventus FC', 'ITA', '0', '0', 'IGAZ', 'IGAZ'),
('2004', 'Gelsenkirchen', 'FC Porto', 'POR', 'AS Monaco', 'FRA', '3', '0', 'HAMIS', 'HAMIS');
--
-- Adatbázis: `csv_db 27`
--
CREATE DATABASE IF NOT EXISTS `csv_db 27` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `csv_db 27`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bek`
--

CREATE TABLE `bek` (
  `COL 1` varchar(91) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `bek`
--

INSERT INTO `bek` (`COL 1`) VALUES
('ev;helyszin;gyoztes;gy_orszag;vesztes;v_orszag;gy_goljai;v_goljai;hosszabbitas;tizenegyesek'),
('1956;Párizs;Real Madrid;ESP;Stade Reims;FRA;4;3;HAMIS;HAMIS'),
('1957;Madrid;Real Madrid;ESP;Fiorentina;ITA;2;0;HAMIS;HAMIS'),
('1958;Brüsszel;Real Madrid;ESP;AC Milan;ITA;3;2;HAMIS;HAMIS'),
('1959;Stuttgart;Real Madrid;ESP;Stade Reims;FRA;2;0;HAMIS;HAMIS'),
('1960;Glasgow;Real Madrid;ESP;Eintracht Frankfurt;FRG;7;3;HAMIS;HAMIS'),
('1961;Bern;Benfica;POR;FC Barcelona;ESP;3;2;HAMIS;HAMIS'),
('1962;Amszterdam;Benfica;POR;Real Madrid;ESP;5;3;HAMIS;HAMIS'),
('1963;London;AC Milan;ITA;Benfica;POR;2;1;HAMIS;HAMIS'),
('1964;Bécs;Internazionale;ITA;Real Madrid;ESP;3;1;HAMIS;HAMIS'),
('1965;Milánó;Internazionale;ITA;Benfica;POR;1;0;HAMIS;HAMIS'),
('1966;Brüsszel;Real Madrid;ESP;Partizan Beograd;YUG;2;1;HAMIS;HAMIS'),
('1967;Lisszabon;Celtic Glasgow;SCO;Internazionale;ITA;2;1;HAMIS;HAMIS'),
('1968;London;Manchester United;ENG;Benfica;POR;4;1;IGAZ;HAMIS'),
('1969;Madrid;AC Milan;ITA;Ajax Amsterdam;NED;4;1;HAMIS;HAMIS'),
('1970;Milánó;Feyenoord Rotterdam;NED;Celtic Glasgow;SCO;2;1;IGAZ;HAMIS'),
('1971;London;Ajax Amsterdam;NED;Panathinaikosz;GRE;2;0;HAMIS;HAMIS'),
('1972;Rotterdam;Ajax Amsterdam;NED;Internazionale;ITA;2;0;HAMIS;HAMIS'),
('1973;Belgrád;Ajax Amsterdam;NED;Juventus FC;ITA;1;0;HAMIS;HAMIS'),
('1974;Brüsszel;Bayern München;FRG;Atlético Madrid;ESP;4;0;IGAZ;HAMIS'),
('1975;Párizs;Bayern München;FRG;Leeds United;ENG;2;0;HAMIS;HAMIS'),
('1976;Glasgow;Bayern München;FRG;AS Saint–Étienne;FRA;1;0;HAMIS;HAMIS'),
('1977;Róma;FC Liverpool;ENG;Borussia Mönchengladbach;FRG;3;1;HAMIS;HAMIS'),
('1978;London;FC Liverpool;ENG;FC Bruges;BEL;1;0;HAMIS;HAMIS'),
('1979;München;Nottingham Forest;ENG;Malmö FF;SWE;1;0;HAMIS;HAMIS'),
('1980;Madrid;Nottingham Forest;ENG;Hamburger SV;FRG;1;0;HAMIS;HAMIS'),
('1981;Párizs;FC Liverpool;ENG;Real Madrid;ESP;1;0;HAMIS;HAMIS'),
('1982;Rotterdam;Aston Villa;ENG;Bayern München;FRG;1;0;HAMIS;HAMIS'),
('1983;Athén;Hamburger SV;FRG;Juventus FC;ITA;1;0;HAMIS;HAMIS'),
('1984;Róma;FC Liverpool;ENG;AS Roma;ITA;1;1;IGAZ;IGAZ'),
('1985;Brüsszel;Juventus FC;ITA;FC Liverpool;ENG;1;0;HAMIS;HAMIS'),
('1986;Sevilla;Steaua Bucuresti;ROM;FC Barcelona;ESP;0;0;IGAZ;IGAZ'),
('1987;Bécs;FC Porto;POR;Bayern München;FRG;2;1;HAMIS;HAMIS'),
('1988;Stuttgart;PSV Eindhoven;NED;Benfica;POR;0;0;IGAZ;IGAZ'),
('1989;Barcelona;AC Milan;ITA;Steaua Bucuresti;ROM;4;0;HAMIS;HAMIS'),
('1990;Bécs;AC Milan;ITA;Benfica;POR;1;0;HAMIS;HAMIS'),
('1991;Bari;Crvena Zvezda Beograd;YUG;Olympique Marseille;FRA;0;0;IGAZ;IGAZ'),
('1992;London;FC Barcelona;ESP;Sampdoria;ITA;1;0;IGAZ;HAMIS'),
('1993;München;Olympique Marseille;FRA;AC Milan;ITA;1;0;HAMIS;HAMIS'),
('1994;Athén;AC Milan;ITA;FC Barcelona;ESP;4;0;HAMIS;HAMIS'),
('1995;Bécs;Ajax Amsterdam;NED;AC Milan;ITA;1;0;HAMIS;HAMIS'),
('1996;Róma;Juventus FC;ITA;Ajax Amsterdam;NED;1;1;IGAZ;HAMIS'),
('1997;München;Borussia Dortmund;GER;Juventus FC;ITA;3;1;HAMIS;HAMIS'),
('1998;Amszterdam;Real Madrid;ESP;Juventus FC;ITA;1;0;HAMIS;HAMIS'),
('1999;Barcelona;Manchester United;ENG;Bayern München;GER;2;1;HAMIS;HAMIS'),
('2000;Saint–Denis;Real Madrid;ESP;Valencia;ESP;3;0;HAMIS;HAMIS'),
('2001;Milánó;Bayern München;GER;Valencia;ESP;1;1;IGAZ;IGAZ'),
('2002;Glasgow;Real Madrid;ESP;Bayer Leverkusen;GER;2;1;HAMIS;HAMIS'),
('2003;Manchester;AC Milan;ITA;Juventus FC;ITA;0;0;IGAZ;IGAZ'),
('2004;Gelsenkirchen;FC Porto;POR;AS Monaco;FRA;3;0;HAMIS;HAMIS');
--
-- Adatbázis: `csv_db 28`
--
CREATE DATABASE IF NOT EXISTS `csv_db 28` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `csv_db 28`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hajok`
--

CREATE TABLE `hajok` (
  `COL 1` varchar(8) DEFAULT NULL,
  `COL 2` varchar(5) DEFAULT NULL,
  `COL 3` varchar(8) DEFAULT NULL,
  `COL 4` varchar(7) DEFAULT NULL,
  `COL 5` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `hajok`
--

INSERT INTO `hajok` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('hajó', 'irány', 'cél', 'költség', 'személy'),
('Tündér', 'kelet', 'túra', '11500', '4'),
('Szilas', 'dél', 'halászat', '7500', '3'),
('Csuka', 'észak', 'mentés', '10900', '2'),
('Tündér', 'észak', 'halászat', '7000', '1'),
('Csuka', 'dél', 'mentés', '3100', '5'),
('Szilas', 'kelet', 'halászat', '13500', '3'),
('Csuka', 'dél', 'halászat', '14700', '4'),
('Napkelet', 'kelet', 'mentés', '8800', '4'),
('Napkelet', 'kelet', 'mentés', '8800', '1'),
('Tündér', 'dél', 'mentés', '9500', '2'),
('Tündér', 'dél', 'túra', '10500', '1'),
('Tündér', 'dél', 'mentés', '9300', '3'),
('Orbánc', 'kelet', 'mentés', '9800', '5'),
('Szilas', 'dél', 'halászat', '12200', '2'),
('Orbánc', 'dél', 'túra', '7600', '1'),
('Csuka', 'dél', 'mentés', '10600', '5'),
('Napkelet', 'dél', 'mentés', '3300', '2'),
('Tündér', 'dél', 'mentés', '12500', '5'),
('Tündér', 'észak', 'túra', '13000', '2'),
('Csuka', 'kelet', 'halászat', '7200', '5'),
('Szilas', 'észak', 'túra', '10700', '1'),
('Szilas', 'észak', 'mentés', '13700', '5'),
('Szilas', 'észak', 'halászat', '7500', '3'),
('Csuka', 'kelet', 'mentés', '14100', '1'),
('Tündér', 'észak', 'halászat', '14000', '5'),
('Csuka', 'dél', 'túra', '7200', '3'),
('Csuka', 'kelet', 'mentés', '7100', '5'),
('Orbánc', 'dél', 'túra', '13700', '3'),
('Orbánc', 'észak', 'halászat', '11400', '4'),
('Orbánc', 'észak', 'halászat', '11500', '4'),
('Csuka', 'kelet', 'mentés', '11900', '1'),
('Szilas', 'dél', 'túra', '8500', '5'),
('Orbánc', 'dél', 'halászat', '14600', '2'),
('Napkelet', 'dél', 'túra', '4300', '2'),
('Csuka', 'kelet', 'túra', '5000', '2'),
('Szilas', 'kelet', 'mentés', '10500', '1'),
('Tündér', 'észak', 'mentés', '11700', '4'),
('Csuka', 'dél', 'mentés', '8000', '1'),
('Csuka', 'észak', 'halászat', '13600', '5'),
('Szilas', 'kelet', 'mentés', '13900', '5'),
('Orbánc', 'dél', 'túra', '4000', '3'),
('Napkelet', 'dél', 'túra', '5600', '1'),
('Napkelet', 'észak', 'túra', '11200', '4'),
('Tündér', 'kelet', 'mentés', '12600', '4'),
('Szilas', 'kelet', 'túra', '12000', '2'),
('Orbánc', 'kelet', 'túra', '11400', '1'),
('Tündér', 'dél', 'mentés', '5000', '3'),
('Napkelet', 'észak', 'halászat', '5500', '5'),
('Csuka', 'észak', 'mentés', '12500', '4'),
('Orbánc', 'kelet', 'túra', '11300', '5'),
('Szilas', 'észak', 'halászat', '8000', '2'),
('Szilas', 'dél', 'halászat', '10600', '1'),
('Orbánc', 'észak', 'halászat', '12500', '5'),
('Tündér', 'észak', 'túra', '5000', '4'),
('Csuka', 'kelet', 'túra', '10900', '2'),
('Szilas', 'kelet', 'halászat', '6000', '5'),
('Tündér', 'kelet', 'halászat', '9900', '3'),
('Napkelet', 'észak', 'halászat', '9900', '4'),
('Orbánc', 'dél', 'halászat', '9200', '3'),
('Tündér', 'észak', 'halászat', '9100', '1'),
('Szilas', 'dél', 'halászat', '3000', '3'),
('Tündér', 'dél', 'mentés', '13500', '2'),
('Tündér', 'észak', 'halászat', '14600', '2'),
('Szilas', 'dél', 'túra', '12200', '5'),
('Szilas', 'dél', 'halászat', '13600', '3'),
('Szilas', 'dél', 'mentés', '14800', '1'),
('Napkelet', 'kelet', 'mentés', '13000', '2'),
('Napkelet', 'kelet', 'túra', '10100', '2'),
('Napkelet', 'dél', 'túra', '13100', '1'),
('Napkelet', 'dél', 'túra', '8500', '4'),
('Tündér', 'észak', 'mentés', '10400', '4'),
('Orbánc', 'észak', 'mentés', '6000', '5'),
('Napkelet', 'dél', 'túra', '14100', '2'),
('Tündér', 'kelet', 'túra', '4100', '1'),
('Napkelet', 'kelet', 'halászat', '11700', '2'),
('Szilas', 'dél', 'túra', '9200', '4'),
('Szilas', 'dél', 'halászat', '9300', '4'),
('Napkelet', 'kelet', 'túra', '7800', '5'),
('Csuka', 'kelet', 'mentés', '10500', '3'),
('Orbánc', 'kelet', 'halászat', '6500', '1'),
('Orbánc', 'kelet', 'túra', '8300', '2'),
('Csuka', 'kelet', 'halászat', '11100', '3'),
('Napkelet', 'kelet', 'halászat', '6000', '3'),
('Csuka', 'dél', 'halászat', '3600', '2'),
('Napkelet', 'kelet', 'túra', '7200', '2'),
('Napkelet', 'kelet', 'halászat', '7500', '4'),
('Napkelet', 'észak', 'halászat', '11400', '4'),
('Tündér', 'dél', 'mentés', '5800', '3'),
('Orbánc', 'kelet', 'mentés', '11400', '1'),
('Csuka', 'kelet', 'túra', '12400', '2'),
('Napkelet', 'kelet', 'halászat', '4000', '3'),
('Tündér', 'dél', 'halászat', '12300', '3'),
('Tündér', 'kelet', 'mentés', '11500', '3'),
('Napkelet', 'észak', 'túra', '6100', '1'),
('Tündér', 'kelet', 'halászat', '6100', '1'),
('Tündér', 'észak', 'mentés', '11400', '4'),
('Tündér', 'kelet', 'túra', '6400', '4'),
('Napkelet', 'kelet', 'mentés', '13500', '4'),
('Szilas', 'észak', 'túra', '4900', '5'),
('Tündér', 'kelet', 'halászat', '4400', '4'),
('Tündér', 'kelet', 'halászat', '10000', '3'),
('Orbánc', 'kelet', 'mentés', '4000', '5'),
('Csuka', 'dél', 'túra', '7500', '2'),
('Csuka', 'észak', 'halászat', '11500', '3'),
('Orbánc', 'dél', 'halászat', '5000', '3'),
('Szilas', 'észak', 'túra', '6000', '4'),
('Tündér', 'észak', 'túra', '4700', '5'),
('Orbánc', 'dél', 'halászat', '4700', '3'),
('Orbánc', 'dél', 'halászat', '14100', '5'),
('Tündér', 'észak', 'túra', '8200', '2'),
('Napkelet', 'kelet', 'mentés', '4100', '3'),
('Napkelet', 'kelet', 'túra', '5800', '4'),
('Csuka', 'kelet', 'halászat', '10800', '2'),
('Csuka', 'dél', 'túra', '5300', '3'),
('Szilas', 'dél', 'túra', '4600', '2'),
('Napkelet', 'kelet', 'halászat', '7700', '1'),
('Napkelet', 'dél', 'halászat', '13400', '5'),
('Szilas', 'kelet', 'túra', '4200', '2'),
('Szilas', 'dél', 'halászat', '9600', '2'),
('Napkelet', 'észak', 'halászat', '7800', '3'),
('Napkelet', 'dél', 'halászat', '5100', '2'),
('Orbánc', 'dél', 'túra', '9000', '2'),
('Szilas', 'kelet', 'túra', '13000', '3'),
('Csuka', 'dél', 'túra', '6200', '2'),
('Tündér', 'kelet', 'túra', '7700', '2'),
('Tündér', 'észak', 'mentés', '14100', '5'),
('Napkelet', 'dél', 'mentés', '11200', '5'),
('Orbánc', 'dél', 'túra', '10400', '5'),
('Csuka', 'észak', 'halászat', '9100', '2'),
('Csuka', 'kelet', 'túra', '12400', '3'),
('Orbánc', 'észak', 'túra', '9100', '4'),
('Csuka', 'észak', 'túra', '13800', '3'),
('Csuka', 'kelet', 'mentés', '13500', '1'),
('Napkelet', 'kelet', 'halászat', '4100', '5'),
('Szilas', 'dél', 'halászat', '4500', '3'),
('Szilas', 'dél', 'túra', '8500', '5'),
('Szilas', 'kelet', 'túra', '5400', '1'),
('Orbánc', 'kelet', 'túra', '9100', '2'),
('Tündér', 'észak', 'túra', '9800', '4'),
('Tündér', 'kelet', 'halászat', '5000', '5'),
('Orbánc', 'kelet', 'túra', '4700', '3'),
('Orbánc', 'kelet', 'túra', '5300', '3'),
('Csuka', 'dél', 'mentés', '14800', '1'),
('Csuka', 'dél', 'túra', '14700', '1'),
('Orbánc', 'dél', 'halászat', '5200', '4'),
('Napkelet', 'dél', 'mentés', '14900', '3'),
('Orbánc', 'kelet', 'halászat', '7900', '3'),
('Szilas', 'észak', 'túra', '12700', '5'),
('Tündér', 'észak', 'mentés', '6700', '4'),
('Csuka', 'kelet', 'mentés', '9300', '1'),
('Orbánc', 'dél', 'mentés', '8400', '1'),
('Csuka', 'kelet', 'halászat', '12000', '5'),
('Szilas', 'dél', 'túra', '12100', '2'),
('Csuka', 'észak', 'túra', '5800', '2'),
('Csuka', 'kelet', 'túra', '13900', '1'),
('Szilas', 'kelet', 'mentés', '7900', '3'),
('Napkelet', 'kelet', 'halászat', '13800', '5'),
('Csuka', 'észak', 'halászat', '7900', '1'),
('Szilas', 'észak', 'mentés', '7700', '2'),
('Napkelet', 'dél', 'halászat', '4400', '1'),
('Szilas', 'kelet', 'mentés', '14100', '1'),
('Csuka', 'észak', 'halászat', '14800', '1'),
('Napkelet', 'kelet', 'halászat', '5700', '4'),
('Szilas', 'észak', 'túra', '5900', '3'),
('Tündér', 'kelet', 'túra', '5200', '3'),
('Szilas', 'dél', 'túra', '4000', '4'),
('Szilas', 'dél', 'mentés', '12700', '2'),
('Orbánc', 'kelet', 'túra', '11100', '2'),
('Csuka', 'dél', 'halászat', '12500', '2'),
('Napkelet', 'dél', 'túra', '6000', '3'),
('Szilas', 'kelet', 'túra', '11500', '1'),
('Szilas', 'dél', 'mentés', '6400', '5'),
('Szilas', 'észak', 'túra', '14700', '3'),
('Tündér', 'kelet', 'mentés', '6200', '3'),
('Csuka', 'dél', 'túra', '14300', '4'),
('Napkelet', 'kelet', 'mentés', '9900', '2'),
('Orbánc', 'dél', 'halászat', '9700', '1'),
('Napkelet', 'kelet', 'mentés', '6500', '5'),
('Csuka', 'dél', 'halászat', '3900', '5'),
('Tündér', 'kelet', 'halászat', '10900', '1'),
('Szilas', 'észak', 'túra', '13700', '1'),
('Tündér', 'kelet', 'mentés', '5300', '2'),
('Szilas', 'dél', 'túra', '4000', '1'),
('Szilas', 'dél', 'mentés', '9500', '3'),
('Csuka', 'észak', 'túra', '3700', '2'),
('Tündér', 'dél', 'túra', '3000', '2'),
('Szilas', 'észak', 'mentés', '9600', '5'),
('Napkelet', 'észak', 'halászat', '9500', '4'),
('Szilas', 'kelet', 'túra', '10900', '2'),
('Csuka', 'kelet', 'mentés', '5100', '2'),
('Csuka', 'kelet', 'halászat', '4600', '4'),
('Csuka', 'észak', 'halászat', '6200', '1'),
('Csuka', 'észak', 'mentés', '9100', '5'),
('Tündér', 'dél', 'túra', '3700', '2'),
('Szilas', 'dél', 'halászat', '10400', '2'),
('Tündér', 'észak', 'mentés', '4800', '2'),
('Csuka', 'észak', 'mentés', '3500', '5'),
('Szilas', 'észak', 'halászat', '9200', '1'),
('Csuka', 'észak', 'halászat', '7200', '3'),
('Tündér', 'kelet', 'túra', '3300', '1'),
('Csuka', 'dél', 'mentés', '13300', '2'),
('Orbánc', 'kelet', 'túra', '10000', '4'),
('Szilas', 'dél', 'halászat', '4900', '1'),
('Tündér', 'dél', 'túra', '8900', '4'),
('Napkelet', 'észak', 'túra', '11500', '2'),
('Napkelet', 'dél', 'mentés', '6200', '4'),
('Szilas', 'kelet', 'mentés', '5900', '2'),
('Napkelet', 'kelet', 'halászat', '11400', '1'),
('Csuka', 'kelet', 'túra', '4600', '3'),
('Tündér', 'kelet', 'halászat', '8200', '1'),
('Orbánc', 'kelet', 'mentés', '3100', '5'),
('Csuka', 'észak', 'mentés', '12700', '1'),
('Csuka', 'észak', 'mentés', '4100', '2'),
('Szilas', 'kelet', 'halászat', '7800', '3'),
('Napkelet', 'kelet', 'túra', '4700', '1'),
('Napkelet', 'kelet', 'halászat', '13800', '4'),
('Csuka', 'dél', 'halászat', '11000', '5'),
('Csuka', 'kelet', 'mentés', '7300', '4'),
('Tündér', 'dél', 'halászat', '13000', '5'),
('Napkelet', 'dél', 'halászat', '8700', '1'),
('Napkelet', 'észak', 'mentés', '6000', '5'),
('Orbánc', 'dél', 'mentés', '6500', '2'),
('Napkelet', 'dél', 'halászat', '5100', '1'),
('Orbánc', 'dél', 'mentés', '13800', '1'),
('Napkelet', 'dél', 'túra', '7300', '3'),
('Napkelet', 'dél', 'túra', '5100', '4'),
('Napkelet', 'dél', 'halászat', '10300', '2'),
('Szilas', 'kelet', 'halászat', '11200', '2'),
('Napkelet', 'dél', 'halászat', '6900', '3'),
('Tündér', 'észak', 'mentés', '11400', '3'),
('Csuka', 'kelet', 'halászat', '6500', '3'),
('Orbánc', 'kelet', 'mentés', '10600', '5'),
('Csuka', 'kelet', 'halászat', '6000', '2'),
('Csuka', 'észak', 'halászat', '12300', '5'),
('Orbánc', 'észak', 'túra', '12900', '5'),
('Orbánc', 'kelet', 'túra', '5200', '3'),
('Orbánc', 'kelet', 'túra', '3500', '3'),
('Szilas', 'dél', 'túra', '6300', '1'),
('Csuka', 'kelet', 'túra', '11800', '5'),
('Napkelet', 'dél', 'halászat', '9700', '4'),
('Szilas', 'észak', 'túra', '10100', '1'),
('Orbánc', 'észak', 'mentés', '4300', '5'),
('Tündér', 'észak', 'mentés', '10800', '4'),
('Tündér', 'észak', 'halászat', '5400', '5'),
('Csuka', 'észak', 'túra', '5000', '1'),
('Orbánc', 'dél', 'mentés', '12000', '3'),
('Napkelet', 'észak', 'túra', '12800', '4'),
('Tündér', 'észak', 'halászat', '12500', '3'),
('Szilas', 'dél', 'halászat', '13200', '1'),
('Napkelet', 'észak', 'mentés', '7500', '2'),
('Tündér', 'kelet', 'halászat', '3000', '2'),
('Csuka', 'dél', 'túra', '5100', '4'),
('Orbánc', 'kelet', 'mentés', '3900', '3'),
('Orbánc', 'dél', 'halászat', '3900', '4'),
('Csuka', 'észak', 'mentés', '9700', '2'),
('Csuka', 'kelet', 'halászat', '13100', '2'),
('Csuka', 'észak', 'mentés', '12700', '2'),
('Orbánc', 'dél', 'halászat', '7100', '5'),
('Napkelet', 'észak', 'túra', '12200', '4'),
('Orbánc', 'kelet', 'túra', '10800', '4'),
('Csuka', 'dél', 'túra', '10100', '2'),
('Napkelet', 'kelet', 'mentés', '3100', '4'),
('Orbánc', 'dél', 'halászat', '13700', '3'),
('Orbánc', 'dél', 'túra', '9200', '5'),
('Tündér', 'kelet', 'túra', '12000', '2'),
('Csuka', 'kelet', 'halászat', '4800', '5'),
('Napkelet', 'kelet', 'túra', '8900', '3'),
('Tündér', 'dél', 'mentés', '5100', '4'),
('Orbánc', 'észak', 'túra', '13300', '4'),
('Csuka', 'dél', 'túra', '6600', '2'),
('Tündér', 'kelet', 'halászat', '9200', '4'),
('Szilas', 'dél', 'túra', '7100', '2'),
('Napkelet', 'kelet', 'halászat', '4700', '2'),
('Szilas', 'dél', 'mentés', '3300', '1'),
('Szilas', 'kelet', 'mentés', '11300', '4'),
('Orbánc', 'észak', 'túra', '14700', '3'),
('Tündér', 'kelet', 'túra', '6000', '5'),
('Szilas', 'dél', 'mentés', '14700', '4'),
('Csuka', 'dél', 'mentés', '14400', '5'),
('Tündér', 'dél', 'mentés', '7500', '2'),
('Napkelet', 'kelet', 'mentés', '12700', '2'),
('Csuka', 'dél', 'halászat', '9600', '5'),
('Szilas', 'dél', 'halászat', '4200', '4'),
('Napkelet', 'dél', 'túra', '8000', '2'),
('Csuka', 'kelet', 'halászat', '8100', '2'),
('Orbánc', 'dél', 'túra', '8900', '5'),
('Napkelet', 'dél', 'mentés', '9800', '2'),
('Szilas', 'kelet', 'mentés', '4800', '1'),
('Tündér', 'dél', 'túra', '13500', '2'),
('Szilas', 'észak', 'halászat', '4400', '4'),
('Szilas', 'kelet', 'mentés', '9800', '2'),
('Napkelet', 'kelet', 'halászat', '3000', '1'),
('Tündér', 'kelet', 'halászat', '10200', '1'),
('Orbánc', 'dél', 'halászat', '13600', '4'),
('Orbánc', 'dél', 'halászat', '14100', '2'),
('Szilas', 'kelet', 'mentés', '7400', '5'),
('Orbánc', 'észak', 'halászat', '4700', '3'),
('Szilas', 'kelet', 'mentés', '14500', '4'),
('Napkelet', 'észak', 'halászat', '10800', '5'),
('Napkelet', 'kelet', 'halászat', '9900', '1'),
('Tündér', 'kelet', 'mentés', '3600', '5'),
('Szilas', 'dél', 'mentés', '8600', '3'),
('Csuka', 'dél', 'túra', '3100', '2'),
('Napkelet', 'dél', 'túra', '12500', '3'),
('Napkelet', 'dél', 'mentés', '8600', '1'),
('Tündér', 'észak', 'túra', '8800', '1'),
('Csuka', 'észak', 'mentés', '11600', '5'),
('Orbánc', 'észak', 'túra', '6200', '3'),
('Orbánc', 'kelet', 'mentés', '8100', '2'),
('Csuka', 'dél', 'mentés', '7700', '2'),
('Csuka', 'észak', 'halászat', '6900', '4'),
('Csuka', 'kelet', 'túra', '6000', '3'),
('Tündér', 'kelet', 'halászat', '10700', '5'),
('Csuka', 'észak', 'mentés', '14600', '2'),
('Szilas', 'dél', 'túra', '5400', '1'),
('Orbánc', 'dél', 'halászat', '3300', '4'),
('Csuka', 'észak', 'mentés', '3200', '2'),
('Napkelet', 'dél', 'túra', '12200', '5'),
('Tündér', 'dél', 'mentés', '3500', '4'),
('Tündér', 'kelet', 'túra', '4900', '2'),
('Csuka', 'dél', 'mentés', '5400', '4'),
('Tündér', 'észak', 'túra', '14400', '2'),
('Csuka', 'kelet', 'halászat', '9900', '5'),
('Tündér', 'dél', 'mentés', '12400', '2'),
('Napkelet', 'kelet', 'túra', '6400', '2'),
('Orbánc', 'észak', 'mentés', '4400', '2'),
('Tündér', 'dél', 'mentés', '11200', '2'),
('Napkelet', 'észak', 'túra', '4700', '2'),
('Csuka', 'észak', 'mentés', '5600', '2'),
('Napkelet', 'dél', 'halászat', '8800', '1'),
('Tündér', 'kelet', 'halászat', '3000', '3'),
('Csuka', 'észak', 'mentés', '9200', '4'),
('Napkelet', 'észak', 'halászat', '11700', '4'),
('Szilas', 'észak', 'halászat', '9700', '2'),
('Szilas', 'kelet', 'túra', '8300', '2'),
('Csuka', 'kelet', 'halászat', '10200', '4'),
('Napkelet', 'kelet', 'halászat', '4800', '5'),
('Napkelet', 'észak', 'halászat', '7100', '5'),
('Tündér', 'dél', 'halászat', '6900', '2'),
('Orbánc', 'kelet', 'mentés', '12700', '1'),
('Tündér', 'kelet', 'mentés', '14700', '1'),
('Orbánc', 'dél', 'halászat', '6800', '4'),
('Orbánc', 'észak', 'túra', '3300', '2'),
('Napkelet', 'észak', 'mentés', '10500', '4'),
('Orbánc', 'kelet', 'halászat', '4900', '5'),
('Orbánc', 'észak', 'mentés', '4100', '4'),
('Szilas', 'kelet', 'túra', '9900', '5'),
('Orbánc', 'kelet', 'mentés', '8400', '5'),
('Tündér', 'észak', 'mentés', '10400', '3'),
('Napkelet', 'kelet', 'túra', '7000', '3'),
('Csuka', 'észak', 'halászat', '8500', '2'),
('Tündér', 'dél', 'túra', '9300', '2'),
('Orbánc', 'dél', 'mentés', '8900', '5'),
('Orbánc', 'kelet', 'halászat', '3100', '5'),
('Csuka', 'dél', 'mentés', '4000', '2'),
('Tündér', 'észak', 'mentés', '11000', '2'),
('Szilas', 'dél', 'halászat', '7300', '1'),
('Orbánc', 'dél', 'túra', '3000', '1'),
('Orbánc', 'dél', 'halászat', '4800', '3'),
('Napkelet', 'dél', 'túra', '12100', '1'),
('Szilas', 'kelet', 'túra', '11000', '4'),
('Szilas', 'észak', 'túra', '4400', '3'),
('Orbánc', 'kelet', 'túra', '3500', '4'),
('Csuka', 'észak', 'mentés', '7100', '5'),
('Napkelet', 'dél', 'halászat', '10900', '4'),
('Orbánc', 'kelet', 'túra', '14000', '1'),
('Tündér', 'dél', 'mentés', '6600', '4'),
('Csuka', 'dél', 'halászat', '3400', '4'),
('Tündér', 'kelet', 'mentés', '13800', '2'),
('Napkelet', 'dél', 'halászat', '12000', '1'),
('Csuka', 'dél', 'túra', '13400', '3'),
('Szilas', 'kelet', 'halászat', '3000', '3'),
('Tündér', 'dél', 'halászat', '8500', '4'),
('Csuka', 'kelet', 'túra', '8700', '5'),
('Tündér', 'észak', 'mentés', '13800', '1'),
('Tündér', 'dél', 'mentés', '8400', '2'),
('Szilas', 'kelet', 'túra', '3700', '2'),
('Tündér', 'kelet', 'túra', '9200', '2'),
('Napkelet', 'kelet', 'túra', '7000', '3'),
('Tündér', 'dél', 'túra', '13500', '2'),
('Napkelet', 'dél', 'halászat', '12800', '4'),
('Csuka', 'dél', 'halászat', '3200', '3'),
('Csuka', 'észak', 'túra', '5400', '3'),
('Tündér', 'kelet', 'túra', '12900', '3'),
('Szilas', 'kelet', 'mentés', '14500', '3'),
('Csuka', 'kelet', 'halászat', '14300', '3'),
('Orbánc', 'észak', 'mentés', '11300', '1'),
('Szilas', 'dél', 'túra', '5800', '2'),
('Orbánc', 'kelet', 'túra', '7400', '4'),
('Csuka', 'dél', 'túra', '12600', '4'),
('Szilas', 'észak', 'túra', '5700', '5'),
('Csuka', 'észak', 'túra', '6600', '5'),
('Csuka', 'dél', 'halászat', '12700', '5'),
('Szilas', 'kelet', 'mentés', '4600', '3'),
('Csuka', 'észak', 'halászat', '9900', '2'),
('Szilas', 'dél', 'túra', '6800', '1'),
('Tündér', 'kelet', 'halászat', '8500', '3'),
('Szilas', 'kelet', 'halászat', '5900', '5'),
('Szilas', 'észak', 'túra', '6600', '4'),
('Orbánc', 'dél', 'túra', '3900', '5'),
('Orbánc', 'észak', 'túra', '13200', '4'),
('Tündér', 'észak', 'halászat', '8200', '5'),
('Tündér', 'észak', 'halászat', '9700', '1'),
('Szilas', 'észak', 'mentés', '3900', '2'),
('Szilas', 'kelet', 'halászat', '6100', '2'),
('Orbánc', 'kelet', 'túra', '14100', '4'),
('Csuka', 'észak', 'mentés', '13400', '3'),
('Szilas', 'dél', 'halászat', '13700', '2'),
('Szilas', 'kelet', 'mentés', '14800', '3'),
('Tündér', 'dél', 'halászat', '8400', '5'),
('Orbánc', 'kelet', 'mentés', '3100', '2'),
('Napkelet', 'dél', 'mentés', '5100', '3'),
('Tündér', 'dél', 'túra', '5100', '5'),
('Szilas', 'dél', 'halászat', '4600', '1'),
('Orbánc', 'kelet', 'halászat', '12100', '2'),
('Napkelet', 'észak', 'túra', '7100', '2'),
('Csuka', 'kelet', 'halászat', '4400', '1'),
('Napkelet', 'dél', 'mentés', '5100', '3'),
('Napkelet', 'kelet', 'túra', '12600', '1'),
('Szilas', 'dél', 'mentés', '13800', '4'),
('Csuka', 'dél', 'mentés', '10600', '1'),
('Szilas', 'kelet', 'mentés', '12200', '1'),
('Szilas', 'észak', 'halászat', '10900', '4'),
('Napkelet', 'dél', 'mentés', '11600', '4'),
('Tündér', 'észak', 'halászat', '7500', '3'),
('Csuka', 'észak', 'halászat', '11800', '4'),
('Orbánc', 'észak', 'túra', '4100', '5'),
('Orbánc', 'dél', 'halászat', '14500', '3'),
('Orbánc', 'kelet', 'túra', '12900', '3'),
('Napkelet', 'észak', 'túra', '7500', '4'),
('Csuka', 'dél', 'túra', '5000', '3'),
('Napkelet', 'kelet', 'túra', '13300', '1'),
('Tündér', 'dél', 'halászat', '7100', '4'),
('Orbánc', 'kelet', 'mentés', '10700', '5'),
('Napkelet', 'dél', 'mentés', '6500', '3'),
('Szilas', 'dél', 'mentés', '9500', '5'),
('Napkelet', 'kelet', 'túra', '14800', '1'),
('Csuka', 'kelet', 'mentés', '11100', '2'),
('Csuka', 'kelet', 'mentés', '6000', '1'),
('Szilas', 'dél', 'túra', '3000', '3'),
('Orbánc', 'kelet', 'túra', '5500', '5'),
('Csuka', 'kelet', 'mentés', '9900', '5'),
('Csuka', 'kelet', 'halászat', '10600', '2'),
('Orbánc', 'dél', 'halászat', '6800', '3'),
('Orbánc', 'kelet', 'halászat', '5900', '4'),
('Orbánc', 'dél', 'halászat', '7000', '2'),
('Napkelet', 'kelet', 'halászat', '4400', '4'),
('Napkelet', 'kelet', 'mentés', '14600', '2'),
('Orbánc', 'észak', 'túra', '14200', '2'),
('Szilas', 'dél', 'mentés', '13500', '2'),
('Tündér', 'kelet', 'túra', '8000', '3'),
('Orbánc', 'dél', 'halászat', '7100', '1'),
('Csuka', 'dél', 'halászat', '10400', '4'),
('Napkelet', 'kelet', 'halászat', '9700', '4'),
('Csuka', 'észak', 'túra', '8700', '3'),
('Szilas', 'észak', 'túra', '8400', '5'),
('Orbánc', 'észak', 'halászat', '10300', '4'),
('Szilas', 'dél', 'halászat', '4800', '5'),
('Napkelet', 'dél', 'mentés', '9000', '2'),
('Napkelet', 'kelet', 'halászat', '5300', '4'),
('Csuka', 'észak', 'mentés', '8100', '4'),
('Orbánc', 'kelet', 'mentés', '9200', '3'),
('Orbánc', 'észak', 'mentés', '5000', '4'),
('Csuka', 'dél', 'túra', '8300', '3'),
('Szilas', 'észak', 'túra', '6700', '1'),
('Csuka', 'dél', 'halászat', '14800', '4'),
('Napkelet', 'észak', 'halászat', '9200', '5'),
('Orbánc', 'kelet', 'mentés', '4800', '5'),
('Csuka', 'észak', 'halászat', '5200', '1'),
('Szilas', 'észak', 'mentés', '12400', '2'),
('Szilas', 'kelet', 'túra', '5600', '1'),
('Napkelet', 'dél', 'halászat', '3700', '3'),
('Szilas', 'észak', 'túra', '9200', '5'),
('Csuka', 'észak', 'mentés', '4500', '1'),
('Orbánc', 'észak', 'túra', '6900', '1'),
('Szilas', 'észak', 'halászat', '9600', '4'),
('Orbánc', 'észak', 'halászat', '14300', '3'),
('Orbánc', 'dél', 'halászat', '10000', '1'),
('Napkelet', 'észak', 'mentés', '4400', '5'),
('Csuka', 'kelet', 'mentés', '12700', '4'),
('Orbánc', 'dél', 'halászat', '11800', '3'),
('Tündér', 'kelet', 'mentés', '14200', '4'),
('Napkelet', 'dél', 'halászat', '13300', '1'),
('Szilas', 'észak', 'túra', '12200', '2'),
('Orbánc', 'kelet', 'halászat', '3600', '5'),
('Csuka', 'észak', 'túra', '8900', '5'),
('Napkelet', 'észak', 'túra', '9300', '1'),
('Tündér', 'dél', 'halászat', '8000', '2'),
('Napkelet', 'dél', 'halászat', '13900', '1'),
('Szilas', 'dél', 'túra', '8100', '2'),
('Tündér', 'kelet', 'mentés', '14600', '1'),
('Tündér', 'észak', 'mentés', '13700', '4'),
('Szilas', 'észak', 'mentés', '3700', '1'),
('Szilas', 'dél', 'túra', '11000', '1'),
('Napkelet', 'észak', 'túra', '12200', '1'),
('Tündér', 'dél', 'halászat', '5400', '4'),
('Napkelet', 'észak', 'halászat', '4400', '4'),
('Szilas', 'dél', 'túra', '7000', '4'),
('Szilas', 'kelet', 'mentés', '11500', '2'),
('Tündér', 'kelet', 'halászat', '6400', '4'),
('Orbánc', 'észak', 'mentés', '4300', '4'),
('Szilas', 'dél', 'halászat', '12800', '5'),
('Orbánc', 'kelet', 'túra', '5800', '2'),
('Tündér', 'észak', 'mentés', '10000', '4'),
('Napkelet', 'dél', 'halászat', '9200', '4'),
('Szilas', 'kelet', 'halászat', '13900', '4'),
('Napkelet', 'kelet', 'túra', '6500', '2'),
('Orbánc', 'észak', 'túra', '3100', '1'),
('Tündér', 'dél', 'mentés', '13100', '5'),
('Orbánc', 'észak', 'mentés', '9900', '4'),
('Napkelet', 'kelet', 'túra', '8500', '1'),
('Tündér', 'kelet', 'túra', '6200', '1'),
('Szilas', 'kelet', 'túra', '11000', '2'),
('Napkelet', 'kelet', 'mentés', '10400', '5'),
('Szilas', 'észak', 'halászat', '3100', '2'),
('Csuka', 'észak', 'túra', '9500', '5'),
('Szilas', 'dél', 'mentés', '14700', '3'),
('Szilas', 'kelet', 'túra', '8700', '1'),
('Csuka', 'kelet', 'halászat', '5600', '3'),
('Csuka', 'észak', 'mentés', '4000', '5'),
('Orbánc', 'dél', 'mentés', '5700', '1'),
('Orbánc', 'észak', 'mentés', '5700', '3'),
('Orbánc', 'dél', 'halászat', '4400', '2'),
('Szilas', 'dél', 'mentés', '5900', '1'),
('Orbánc', 'észak', 'mentés', '4100', '4'),
('Napkelet', 'dél', 'túra', '3900', '1'),
('Napkelet', 'észak', 'halászat', '5300', '1'),
('Napkelet', 'észak', 'mentés', '10700', '4'),
('Napkelet', 'észak', 'halászat', '13300', '5'),
('Csuka', 'észak', 'mentés', '7500', '1'),
('Csuka', 'észak', 'túra', '10900', '1'),
('Szilas', 'észak', 'mentés', '8900', '3'),
('Orbánc', 'dél', 'halászat', '4100', '2'),
('Tündér', 'kelet', 'halászat', '14400', '5'),
('Szilas', 'dél', 'halászat', '10600', '5'),
('Csuka', 'dél', 'túra', '14700', '3'),
('Napkelet', 'dél', 'túra', '11700', '3'),
('Tündér', 'dél', 'mentés', '4600', '3'),
('Orbánc', 'kelet', 'halászat', '9400', '1'),
('Szilas', 'kelet', 'halászat', '14400', '3'),
('Szilas', 'dél', 'mentés', '9900', '4'),
('Szilas', 'dél', 'mentés', '6600', '3'),
('Orbánc', 'észak', 'halászat', '3200', '3'),
('Napkelet', 'észak', 'túra', '10600', '5'),
('Orbánc', 'kelet', 'mentés', '8500', '4'),
('Napkelet', 'észak', 'mentés', '13500', '4'),
('Szilas', 'észak', 'mentés', '8600', '3'),
('Szilas', 'dél', 'mentés', '8300', '5'),
('Napkelet', 'kelet', 'mentés', '8900', '3'),
('Tündér', 'dél', 'halászat', '10000', '2'),
('Napkelet', 'dél', 'mentés', '10100', '1'),
('Orbánc', 'kelet', 'halászat', '8300', '1'),
('Szilas', 'dél', 'mentés', '8000', '5'),
('Orbánc', 'dél', 'halászat', '12400', '5'),
('Szilas', 'kelet', 'túra', '8400', '2'),
('Csuka', 'észak', 'túra', '5600', '2'),
('Csuka', 'dél', 'halászat', '3800', '4'),
('Szilas', 'dél', 'mentés', '11000', '3'),
('Csuka', 'dél', 'mentés', '12600', '4'),
('Napkelet', 'dél', 'halászat', '12200', '2'),
('Orbánc', 'dél', 'halászat', '13300', '1'),
('Tündér', 'dél', 'túra', '7600', '2'),
('Csuka', 'észak', 'túra', '10700', '1'),
('Szilas', 'dél', 'halászat', '11300', '4'),
('Tündér', 'kelet', 'halászat', '3500', '2'),
('Napkelet', 'dél', 'túra', '12000', '5'),
('Csuka', 'dél', 'túra', '3500', '1'),
('Szilas', 'dél', 'mentés', '6100', '4'),
('Tündér', 'észak', 'túra', '14400', '4'),
('Szilas', 'dél', 'mentés', '11100', '4'),
('Orbánc', 'kelet', 'túra', '8300', '3'),
('Napkelet', 'észak', 'túra', '5100', '4'),
('Orbánc', 'észak', 'mentés', '6500', '2'),
('Tündér', 'kelet', 'túra', '3100', '1'),
('Napkelet', 'dél', 'túra', '8600', '1'),
('Tündér', 'kelet', 'mentés', '5500', '4'),
('Szilas', 'észak', 'mentés', '14800', '5'),
('Napkelet', 'dél', 'mentés', '7500', '3'),
('Csuka', 'észak', 'halászat', '3100', '5'),
('Napkelet', 'dél', 'túra', '9300', '1'),
('Tündér', 'dél', 'mentés', '6200', '3'),
('Tündér', 'dél', 'halászat', '8600', '1'),
('Orbánc', 'dél', 'túra', '7000', '2'),
('Tündér', 'dél', 'halászat', '3400', '5'),
('Csuka', 'észak', 'túra', '7300', '3'),
('Tündér', 'kelet', 'halászat', '8500', '2'),
('Napkelet', 'észak', 'halászat', '3800', '1'),
('Tündér', 'észak', 'mentés', '4000', '5'),
('Szilas', 'észak', 'túra', '8600', '4'),
('Tündér', 'kelet', 'halászat', '6400', '5'),
('Napkelet', 'dél', 'túra', '6300', '5'),
('Csuka', 'dél', 'mentés', '7600', '3'),
('Szilas', 'észak', 'halászat', '11300', '3'),
('Orbánc', 'dél', 'túra', '10900', '4'),
('Szilas', 'kelet', 'túra', '10100', '1'),
('Tündér', 'kelet', 'halászat', '11000', '2'),
('Csuka', 'dél', 'halászat', '9400', '2'),
('Napkelet', 'észak', 'mentés', '7900', '1'),
('Szilas', 'észak', 'túra', '8600', '4'),
('Szilas', 'dél', 'túra', '12000', '3'),
('Orbánc', 'észak', 'mentés', '9600', '3'),
('Csuka', 'észak', 'túra', '10100', '5'),
('Napkelet', 'dél', 'halászat', '5600', '4'),
('Szilas', 'észak', 'mentés', '14900', '1'),
('Tündér', 'kelet', 'halászat', '14800', '1'),
('Szilas', 'dél', 'mentés', '9300', '3'),
('Csuka', 'észak', 'halászat', '3000', '2'),
('Szilas', 'dél', 'halászat', '6800', '1'),
('Orbánc', 'dél', 'halászat', '4400', '3'),
('Orbánc', 'kelet', 'mentés', '12400', '4'),
('Csuka', 'dél', 'halászat', '6300', '5'),
('Csuka', 'dél', 'mentés', '12300', '2'),
('Napkelet', 'észak', 'mentés', '8000', '4'),
('Orbánc', 'kelet', 'mentés', '13300', '1'),
('Szilas', 'dél', 'halászat', '5800', '1'),
('Napkelet', 'dél', 'mentés', '13000', '2'),
('Tündér', 'kelet', 'halászat', '8100', '3'),
('Napkelet', 'észak', 'mentés', '5900', '4'),
('Szilas', 'kelet', 'mentés', '4000', '4'),
('Tündér', 'észak', 'mentés', '5300', '2'),
('Szilas', 'dél', 'mentés', '7900', '2'),
('Tündér', 'észak', 'túra', '3000', '4'),
('Napkelet', 'észak', 'mentés', '6000', '1'),
('Orbánc', 'kelet', 'halászat', '5300', '4'),
('Tündér', 'kelet', 'halászat', '6400', '5'),
('Napkelet', 'kelet', 'halászat', '12600', '5'),
('Napkelet', 'dél', 'halászat', '8800', '4'),
('Orbánc', 'észak', 'túra', '8300', '4'),
('Tündér', 'észak', 'túra', '9900', '2'),
('Tündér', 'észak', 'túra', '13100', '5'),
('Tündér', 'dél', 'mentés', '3100', '4'),
('Tündér', 'észak', 'halászat', '10500', '4'),
('Orbánc', 'dél', 'túra', '7600', '3'),
('Szilas', 'észak', 'túra', '10600', '3'),
('Szilas', 'észak', 'halászat', '12800', '5'),
('Tündér', 'dél', 'túra', '3900', '1'),
('Szilas', 'észak', 'túra', '6400', '2'),
('Szilas', 'kelet', 'mentés', '7900', '2'),
('Napkelet', 'észak', 'túra', '13900', '3'),
('Orbánc', 'dél', 'mentés', '5900', '3'),
('Tündér', 'észak', 'túra', '8400', '5'),
('Tündér', 'észak', 'halászat', '7200', '4'),
('Orbánc', 'észak', 'mentés', '8400', '5'),
('Napkelet', 'észak', 'mentés', '14600', '5'),
('Napkelet', 'kelet', 'mentés', '6500', '4'),
('Orbánc', 'dél', 'túra', '9000', '3'),
('Orbánc', 'kelet', 'túra', '5300', '1'),
('Csuka', 'dél', 'túra', '8500', '4'),
('Szilas', 'kelet', 'halászat', '6100', '5'),
('Napkelet', 'kelet', 'túra', '4700', '4'),
('Orbánc', 'észak', 'túra', '11100', '4'),
('Csuka', 'kelet', 'túra', '7600', '3'),
('Orbánc', 'észak', 'mentés', '12100', '5'),
('Tündér', 'észak', 'túra', '14100', '1'),
('Napkelet', 'észak', 'halászat', '13700', '2'),
('Napkelet', 'kelet', 'túra', '11300', '5'),
('Szilas', 'dél', 'mentés', '12100', '4'),
('Szilas', 'észak', 'túra', '9700', '2'),
('Tündér', 'észak', 'mentés', '5100', '3'),
('Csuka', 'észak', 'mentés', '7000', '5'),
('Csuka', 'kelet', 'mentés', '6100', '3'),
('Orbánc', 'kelet', 'halászat', '7600', '3'),
('Napkelet', 'kelet', 'túra', '3600', '5'),
('Napkelet', 'dél', 'mentés', '12000', '1'),
('Orbánc', 'dél', 'túra', '10200', '4'),
('Napkelet', 'kelet', 'halászat', '7700', '4'),
('Csuka', 'dél', 'túra', '7300', '1'),
('Napkelet', 'dél', 'túra', '5400', '4'),
('Orbánc', 'észak', 'halászat', '9200', '5'),
('Napkelet', 'észak', 'túra', '4800', '3'),
('Szilas', 'kelet', 'túra', '13400', '5'),
('Szilas', 'kelet', 'halászat', '5100', '1'),
('Orbánc', 'észak', 'túra', '4300', '4'),
('Szilas', 'kelet', 'mentés', '12300', '4'),
('Csuka', 'dél', 'mentés', '5600', '4'),
('Szilas', 'kelet', 'halászat', '13100', '5'),
('Napkelet', 'dél', 'halászat', '11800', '1'),
('Napkelet', 'dél', 'mentés', '5000', '2'),
('Napkelet', 'észak', 'mentés', '8100', '1'),
('Napkelet', 'észak', 'mentés', '7900', '1'),
('Csuka', 'észak', 'mentés', '4800', '1'),
('Tündér', 'dél', 'halászat', '9400', '3'),
('Szilas', 'észak', 'mentés', '4400', '5'),
('Szilas', 'észak', 'mentés', '12100', '2'),
('Orbánc', 'dél', 'túra', '11400', '2'),
('Tündér', 'dél', 'túra', '12200', '2'),
('Tündér', 'kelet', 'túra', '4900', '4'),
('Csuka', 'kelet', 'túra', '11600', '3'),
('Tündér', 'dél', 'mentés', '6000', '5'),
('Napkelet', 'észak', 'halászat', '10700', '1'),
('Csuka', 'észak', 'túra', '4200', '5'),
('Napkelet', 'kelet', 'mentés', '11100', '2'),
('Csuka', 'kelet', 'mentés', '9400', '1'),
('Napkelet', 'kelet', 'túra', '11900', '4'),
('Szilas', 'kelet', 'mentés', '12100', '4'),
('Szilas', 'dél', 'túra', '11900', '3'),
('Orbánc', 'észak', 'túra', '3300', '1'),
('Orbánc', 'észak', 'halászat', '14900', '4'),
('Tündér', 'észak', 'túra', '3900', '5'),
('Csuka', 'észak', 'túra', '14500', '3'),
('Szilas', 'dél', 'halászat', '9900', '2'),
('Napkelet', 'dél', 'mentés', '3100', '2'),
('Orbánc', 'észak', 'halászat', '3800', '5'),
('Napkelet', 'kelet', 'mentés', '14000', '2'),
('Napkelet', 'dél', 'mentés', '3000', '4'),
('Szilas', 'észak', 'túra', '8400', '3'),
('Csuka', 'dél', 'halászat', '4400', '5'),
('Napkelet', 'kelet', 'halászat', '11600', '1'),
('Csuka', 'észak', 'halászat', '11600', '2'),
('Tündér', 'észak', 'túra', '13900', '5'),
('Tündér', 'észak', 'mentés', '8800', '1'),
('Szilas', 'észak', 'halászat', '9100', '4'),
('Szilas', 'dél', 'mentés', '14500', '4'),
('Orbánc', 'dél', 'mentés', '10200', '5'),
('Napkelet', 'kelet', 'halászat', '8100', '2'),
('Tündér', 'észak', 'mentés', '4500', '2'),
('Orbánc', 'kelet', 'halászat', '13400', '2'),
('Szilas', 'dél', 'halászat', '13700', '1'),
('Szilas', 'kelet', 'halászat', '7200', '1'),
('Csuka', 'észak', 'halászat', '3300', '4'),
('Szilas', 'kelet', 'halászat', '3200', '1'),
('Tündér', 'dél', 'halászat', '8400', '5'),
('Orbánc', 'kelet', 'halászat', '7200', '2'),
('Csuka', 'dél', 'túra', '7600', '1'),
('Csuka', 'észak', 'túra', '4200', '5'),
('Szilas', 'dél', 'túra', '4800', '2'),
('Napkelet', 'észak', 'túra', '13000', '4'),
('Tündér', 'kelet', 'halászat', '7400', '4'),
('Csuka', 'dél', 'túra', '6400', '1'),
('Napkelet', 'észak', 'túra', '14100', '2'),
('Csuka', 'kelet', 'mentés', '9000', '4'),
('Orbánc', 'kelet', 'túra', '14900', '5'),
('Orbánc', 'dél', 'mentés', '3900', '4'),
('Orbánc', 'dél', 'túra', '9900', '4'),
('Napkelet', 'dél', 'halászat', '12500', '4'),
('Orbánc', 'kelet', 'túra', '7500', '5'),
('Csuka', 'dél', 'mentés', '13100', '4'),
('Napkelet', 'kelet', 'halászat', '4500', '2'),
('Csuka', 'kelet', 'túra', '9100', '5'),
('Szilas', 'észak', 'halászat', '5500', '4'),
('Tündér', 'észak', 'halászat', '8500', '4'),
('Szilas', 'dél', 'halászat', '7200', '5'),
('Szilas', 'észak', 'túra', '12000', '4'),
('Tündér', 'kelet', 'halászat', '13100', '4'),
('Csuka', 'kelet', 'túra', '5700', '1'),
('Orbánc', 'kelet', 'túra', '7200', '5'),
('Orbánc', 'kelet', 'túra', '10000', '3'),
('Szilas', 'kelet', 'túra', '6900', '1'),
('Tündér', 'észak', 'túra', '9600', '2'),
('Csuka', 'észak', 'mentés', '6100', '2'),
('Csuka', 'dél', 'halászat', '10300', '2'),
('Tündér', 'észak', 'halászat', '4000', '5'),
('Orbánc', 'kelet', 'túra', '13000', '2'),
('Tündér', 'kelet', 'halászat', '5000', '4'),
('Napkelet', 'kelet', 'mentés', '3400', '1'),
('Napkelet', 'dél', 'túra', '4900', '3'),
('Napkelet', 'kelet', 'halászat', '12600', '1'),
('Csuka', 'dél', 'mentés', '3400', '5'),
('Szilas', 'észak', 'halászat', '11100', '1'),
('Napkelet', 'észak', 'halászat', '3600', '4'),
('Napkelet', 'dél', 'túra', '4500', '5'),
('Csuka', 'dél', 'mentés', '10400', '2'),
('Tündér', 'kelet', 'mentés', '9600', '2'),
('Napkelet', 'észak', 'mentés', '14000', '1'),
('Szilas', 'kelet', 'mentés', '5800', '5'),
('Tündér', 'észak', 'mentés', '11900', '5'),
('Orbánc', 'dél', 'mentés', '13200', '2'),
('Csuka', 'kelet', 'halászat', '6400', '5'),
('Napkelet', 'kelet', 'túra', '8500', '5'),
('Szilas', 'dél', 'mentés', '8800', '5'),
('Csuka', 'dél', 'halászat', '9700', '1'),
('Orbánc', 'kelet', 'túra', '7800', '2'),
('Napkelet', 'dél', 'halászat', '9200', '1'),
('Csuka', 'kelet', 'halászat', '3000', '3'),
('Csuka', 'észak', 'túra', '10800', '3'),
('Tündér', 'dél', 'halászat', '4300', '4'),
('Orbánc', 'észak', 'mentés', '5500', '2'),
('Orbánc', 'észak', 'halászat', '7900', '5'),
('Orbánc', 'dél', 'mentés', '14500', '4'),
('Orbánc', 'dél', 'halászat', '7200', '1'),
('Szilas', 'kelet', 'túra', '5600', '4'),
('Orbánc', 'dél', 'halászat', '7400', '2'),
('Orbánc', 'észak', 'halászat', '8200', '4'),
('Tündér', 'dél', 'túra', '8300', '1'),
('Tündér', 'dél', 'halászat', '14500', '2'),
('Szilas', 'észak', 'túra', '4400', '1'),
('Szilas', 'kelet', 'halászat', '7300', '4'),
('Csuka', 'észak', 'mentés', '5500', '5'),
('Szilas', 'kelet', 'halászat', '5300', '5'),
('Orbánc', 'észak', 'túra', '14400', '5'),
('Tündér', 'kelet', 'mentés', '9700', '5'),
('Napkelet', 'észak', 'halászat', '8600', '4'),
('Tündér', 'dél', 'halászat', '5300', '1'),
('Szilas', 'kelet', 'halászat', '7100', '1'),
('Szilas', 'észak', 'halászat', '9900', '1'),
('Csuka', 'kelet', 'halászat', '11800', '1'),
('Orbánc', 'észak', 'túra', '9000', '4'),
('Csuka', 'kelet', 'mentés', '4900', '1'),
('Tündér', 'kelet', 'halászat', '6800', '3'),
('Tündér', 'észak', 'halászat', '14400', '5'),
('Tündér', 'észak', 'túra', '8000', '5'),
('Szilas', 'kelet', 'mentés', '8100', '3'),
('Szilas', 'észak', 'túra', '6200', '3'),
('Tündér', 'észak', 'túra', '10200', '2'),
('Napkelet', 'dél', 'mentés', '14900', '5'),
('Napkelet', 'kelet', 'mentés', '5800', '2'),
('Orbánc', 'dél', 'túra', '9200', '1'),
('Napkelet', 'észak', 'túra', '14200', '2'),
('Orbánc', 'dél', 'halászat', '12200', '1'),
('Szilas', 'észak', 'túra', '14000', '5'),
('Orbánc', 'kelet', 'mentés', '14700', '5'),
('Orbánc', 'észak', 'túra', '3700', '2'),
('Szilas', 'észak', 'mentés', '14500', '3'),
('Orbánc', 'dél', 'mentés', '13700', '5'),
('Szilas', 'kelet', 'halászat', '10800', '3'),
('Orbánc', 'kelet', 'halászat', '14400', '3'),
('Napkelet', 'dél', 'túra', '8200', '1'),
('Orbánc', 'kelet', 'halászat', '4900', '1'),
('Orbánc', 'dél', 'halászat', '14400', '5'),
('Szilas', 'kelet', 'mentés', '8900', '2'),
('Napkelet', 'észak', 'túra', '11000', '4'),
('Tündér', 'észak', 'halászat', '3900', '3'),
('Csuka', 'dél', 'mentés', '8900', '5'),
('Napkelet', 'dél', 'mentés', '11800', '4'),
('Napkelet', 'észak', 'halászat', '12000', '3'),
('Szilas', 'kelet', 'mentés', '10000', '3'),
('Tündér', 'észak', 'mentés', '5800', '1'),
('Orbánc', 'dél', 'halászat', '12500', '3'),
('Szilas', 'dél', 'halászat', '7800', '2'),
('Szilas', 'dél', 'halászat', '11600', '5'),
('Tündér', 'észak', 'mentés', '12100', '2'),
('Orbánc', 'kelet', 'túra', '14000', '4'),
('Szilas', 'észak', 'halászat', '4800', '2'),
('Tündér', 'dél', 'túra', '9700', '3'),
('Orbánc', 'kelet', 'mentés', '11000', '3'),
('Orbánc', 'dél', 'halászat', '11400', '2'),
('Tündér', 'dél', 'halászat', '13200', '4'),
('Orbánc', 'dél', 'halászat', '6900', '4'),
('Napkelet', 'dél', 'túra', '12300', '4'),
('Napkelet', 'észak', 'mentés', '5700', '1'),
('Csuka', 'dél', 'halászat', '13200', '3'),
('Tündér', 'dél', 'túra', '6500', '1'),
('Tündér', 'dél', 'mentés', '4600', '5'),
('Szilas', 'dél', 'mentés', '13800', '2'),
('Szilas', 'dél', 'túra', '13500', '5'),
('Orbánc', 'észak', 'túra', '11200', '2'),
('Napkelet', 'észak', 'halászat', '14000', '5'),
('Tündér', 'dél', 'halászat', '13700', '4'),
('Tündér', 'dél', 'mentés', '14000', '1'),
('Szilas', 'dél', 'túra', '8700', '1'),
('Tündér', 'dél', 'halászat', '8900', '4'),
('Szilas', 'észak', 'túra', '12100', '5'),
('Szilas', 'dél', 'halászat', '9300', '1'),
('Szilas', 'dél', 'mentés', '8000', '4'),
('Csuka', 'kelet', 'halászat', '4400', '2'),
('Napkelet', 'dél', 'mentés', '12700', '2'),
('Csuka', 'kelet', 'halászat', '6500', '3'),
('Tündér', 'dél', 'túra', '3500', '2'),
('Orbánc', 'kelet', 'mentés', '10100', '3'),
('Orbánc', 'dél', 'túra', '14600', '5'),
('Napkelet', 'dél', 'halászat', '10700', '1'),
('Szilas', 'dél', 'halászat', '3000', '1'),
('Szilas', 'dél', 'mentés', '8600', '3'),
('Napkelet', 'dél', 'mentés', '9600', '3'),
('Orbánc', 'kelet', 'mentés', '5000', '5'),
('Szilas', 'észak', 'halászat', '9300', '1'),
('Csuka', 'dél', 'halászat', '14800', '3'),
('Tündér', 'dél', 'mentés', '14000', '5'),
('Orbánc', 'dél', 'halászat', '8700', '5'),
('Tündér', 'észak', 'halászat', '3100', '5'),
('Szilas', 'észak', 'túra', '11200', '5'),
('Napkelet', 'dél', 'mentés', '4400', '3'),
('Tündér', 'dél', 'mentés', '8700', '2'),
('Napkelet', 'kelet', 'mentés', '11300', '3'),
('Napkelet', 'észak', 'túra', '10500', '1'),
('Szilas', 'dél', 'túra', '9100', '3'),
('Napkelet', 'kelet', 'halászat', '14100', '3'),
('Szilas', 'dél', 'túra', '4100', '1'),
('Orbánc', 'kelet', 'mentés', '8400', '2'),
('Orbánc', 'kelet', 'mentés', '14300', '3'),
('Orbánc', 'kelet', 'mentés', '4100', '3'),
('Napkelet', 'dél', 'túra', '7000', '5'),
('Napkelet', 'kelet', 'halászat', '3100', '2'),
('Szilas', 'észak', 'mentés', '12600', '3'),
('Csuka', 'észak', 'túra', '12600', '1'),
('Napkelet', 'észak', 'túra', '13700', '5'),
('Tündér', 'dél', 'halászat', '13300', '3'),
('Szilas', 'észak', 'túra', '11200', '3'),
('Napkelet', 'kelet', 'mentés', '7200', '3'),
('Szilas', 'dél', 'mentés', '4500', '5'),
('Tündér', 'észak', 'mentés', '13300', '1'),
('Orbánc', 'kelet', 'túra', '4000', '1'),
('Napkelet', 'észak', 'túra', '14300', '3'),
('Napkelet', 'kelet', 'túra', '7900', '2'),
('Napkelet', 'kelet', 'halászat', '12500', '4'),
('Tündér', 'dél', 'mentés', '11200', '4'),
('Szilas', 'kelet', 'túra', '3600', '1'),
('Tündér', 'észak', 'halászat', '5500', '5'),
('Napkelet', 'dél', 'túra', '11800', '4'),
('Napkelet', 'észak', 'halászat', '3400', '4'),
('Orbánc', 'észak', 'halászat', '9200', '1'),
('Napkelet', 'kelet', 'mentés', '14700', '1'),
('Tündér', 'észak', 'mentés', '8500', '3'),
('Napkelet', 'észak', 'halászat', '6000', '1'),
('Csuka', 'észak', 'halászat', '8400', '1'),
('Orbánc', 'kelet', 'mentés', '9800', '1'),
('Napkelet', 'észak', 'mentés', '9100', '2'),
('Csuka', 'észak', 'mentés', '10800', '4'),
('Tündér', 'észak', 'túra', '4200', '1'),
('Szilas', 'dél', 'mentés', '14700', '4'),
('Szilas', 'dél', 'halászat', '13700', '5'),
('Csuka', 'dél', 'halászat', '3900', '1'),
('Tündér', 'kelet', 'halászat', '4100', '1'),
('Orbánc', 'kelet', 'halászat', '8500', '5'),
('Csuka', 'kelet', 'túra', '10200', '2'),
('Szilas', 'kelet', 'mentés', '11600', '5'),
('Szilas', 'kelet', 'mentés', '6900', '3'),
('Szilas', 'kelet', 'túra', '14200', '1'),
('Tündér', 'kelet', 'mentés', '8500', '5'),
('Tündér', 'dél', 'túra', '4200', '3'),
('Orbánc', 'dél', 'mentés', '12700', '1'),
('Tündér', 'dél', 'mentés', '4400', '1'),
('Tündér', 'dél', 'túra', '10800', '3'),
('Napkelet', 'észak', 'túra', '4300', '4'),
('Szilas', 'dél', 'túra', '7700', '3'),
('Csuka', 'kelet', 'halászat', '8100', '4'),
('Tündér', 'dél', 'mentés', '7700', '3'),
('Tündér', 'dél', 'mentés', '10900', '3'),
('Csuka', 'észak', 'halászat', '11500', '1'),
('Tündér', 'észak', 'mentés', '4000', '5'),
('Orbánc', 'kelet', 'túra', '12500', '2'),
('Napkelet', 'kelet', 'mentés', '3000', '1'),
('Szilas', 'dél', 'mentés', '11800', '4'),
('Orbánc', 'észak', 'halászat', '11800', '1'),
('Szilas', 'dél', 'mentés', '14000', '5'),
('Orbánc', 'kelet', 'halászat', '12400', '4'),
('Napkelet', 'kelet', 'túra', '3600', '5'),
('Szilas', 'észak', 'halászat', '8000', '3'),
('Tündér', 'kelet', 'túra', '9200', '3'),
('Napkelet', 'dél', 'túra', '5800', '1'),
('Orbánc', 'kelet', 'mentés', '12900', '2'),
('Tündér', 'észak', 'túra', '7300', '1'),
('Szilas', 'észak', 'túra', '9300', '1'),
('Szilas', 'dél', 'mentés', '7400', '1'),
('Napkelet', 'dél', 'mentés', '10300', '3'),
('Csuka', 'dél', 'halászat', '6100', '2'),
('Napkelet', 'dél', 'túra', '9400', '4'),
('Napkelet', 'dél', 'halászat', '4400', '1'),
('Tündér', 'dél', 'halászat', '4400', '1'),
('Csuka', 'dél', 'túra', '12600', '4'),
('Napkelet', 'kelet', 'halászat', '4500', '5'),
('Orbánc', 'észak', 'halászat', '4000', '2'),
('Csuka', 'dél', 'mentés', '8600', '3'),
('Napkelet', 'dél', 'halászat', '10300', '5'),
('Csuka', 'dél', 'túra', '4600', '4'),
('Napkelet', 'kelet', 'túra', '12900', '4'),
('Szilas', 'kelet', 'halászat', '3200', '3'),
('Szilas', 'dél', 'mentés', '6500', '5'),
('Napkelet', 'dél', 'túra', '12100', '1'),
('Napkelet', 'dél', 'halászat', '7500', '1'),
('Szilas', 'észak', 'mentés', '5800', '3'),
('Tündér', 'dél', 'túra', '13100', '3'),
('Tündér', 'dél', 'mentés', '4600', '1'),
('Szilas', 'észak', 'halászat', '13500', '2'),
('Csuka', 'észak', 'halászat', '3600', '3'),
('Szilas', 'kelet', 'mentés', '5900', '4'),
('Orbánc', 'észak', 'mentés', '3500', '5'),
('Napkelet', 'dél', 'mentés', '14900', '2'),
('Tündér', 'dél', 'mentés', '8100', '4'),
('Tündér', 'észak', 'túra', '4300', '5'),
('Csuka', 'észak', 'halászat', '4300', '5'),
('Csuka', 'észak', 'halászat', '13100', '5'),
('Tündér', 'kelet', 'halászat', '7700', '1'),
('Tündér', 'észak', 'túra', '10700', '2'),
('Szilas', 'kelet', 'mentés', '4100', '2'),
('Tündér', 'dél', 'mentés', '10400', '1'),
('Orbánc', 'kelet', 'halászat', '6900', '1'),
('Tündér', 'dél', 'halászat', '7800', '5'),
('Orbánc', 'kelet', 'túra', '4600', '3'),
('Csuka', 'kelet', 'túra', '6900', '3'),
('Csuka', 'kelet', 'halászat', '8400', '1'),
('Csuka', 'észak', 'mentés', '8000', '1'),
('Tündér', 'észak', 'halászat', '14200', '2'),
('Csuka', 'dél', 'túra', '10200', '4'),
('Tündér', 'dél', 'halászat', '8300', '2'),
('Napkelet', 'észak', 'halászat', '9800', '2'),
('Napkelet', 'dél', 'halászat', '3100', '5'),
('Csuka', 'kelet', 'halászat', '9400', '3'),
('Tündér', 'dél', 'halászat', '4000', '4'),
('Napkelet', 'kelet', 'halászat', '12400', '3'),
('Orbánc', 'észak', 'mentés', '10500', '1'),
('Szilas', 'észak', 'halászat', '7700', '5'),
('Tündér', 'kelet', 'halászat', '6000', '4'),
('Orbánc', 'dél', 'mentés', '10500', '4'),
('Csuka', 'kelet', 'mentés', '10100', '3'),
('Orbánc', 'észak', 'halászat', '13100', '2'),
('Szilas', 'észak', 'mentés', '9500', '1'),
('Napkelet', 'észak', 'halászat', '13500', '4'),
('Napkelet', 'dél', 'mentés', '6700', '4'),
('Csuka', 'dél', 'mentés', '12600', '3'),
('Szilas', 'dél', 'mentés', '6700', '3'),
('Szilas', 'kelet', 'mentés', '9600', '5'),
('Tündér', 'észak', 'túra', '14300', '1'),
('Napkelet', 'kelet', 'halászat', '6100', '5'),
('Szilas', 'észak', 'mentés', '12500', '5'),
('Szilas', 'észak', 'mentés', '12800', '5'),
('Csuka', 'kelet', 'mentés', '8700', '3'),
('Napkelet', 'kelet', 'halászat', '14900', '2'),
('Napkelet', 'kelet', 'mentés', '12300', '1'),
('Tündér', 'dél', 'halászat', '7400', '3'),
('Tündér', 'kelet', 'túra', '11600', '1'),
('Napkelet', 'kelet', 'túra', '8900', '5'),
('Csuka', 'észak', 'mentés', '5800', '5'),
('Orbánc', 'kelet', 'halászat', '5900', '1'),
('Tündér', 'dél', 'halászat', '13700', '1'),
('Tündér', 'dél', 'halászat', '12300', '2'),
('Napkelet', 'dél', 'túra', '4300', '5'),
('Szilas', 'kelet', 'halászat', '10900', '3'),
('Szilas', 'kelet', 'halászat', '6500', '1'),
('Orbánc', 'észak', 'mentés', '3400', '2'),
('Orbánc', 'kelet', 'halászat', '13200', '4'),
('Orbánc', 'kelet', 'mentés', '14900', '3'),
('Napkelet', 'észak', 'halászat', '7100', '4'),
('Orbánc', 'észak', 'túra', '13700', '5'),
('Orbánc', 'dél', 'túra', '8300', '5'),
('Szilas', 'észak', 'halászat', '8200', '2'),
('Tündér', 'kelet', 'túra', '9900', '1'),
('Napkelet', 'kelet', 'mentés', '4100', '5'),
('Szilas', 'kelet', 'mentés', '7400', '3'),
('Napkelet', 'dél', 'mentés', '9000', '1'),
('Napkelet', 'kelet', 'mentés', '7300', '2'),
('Tündér', 'észak', 'túra', '10600', '4'),
('Napkelet', 'kelet', 'mentés', '3900', '5'),
('Tündér', 'kelet', 'túra', '3800', '5'),
('Tündér', 'dél', 'halászat', '4300', '3'),
('Szilas', 'dél', 'mentés', '11500', '1'),
('Napkelet', 'észak', 'halászat', '10600', '3'),
('Szilas', 'kelet', 'túra', '9300', '4'),
('Orbánc', 'észak', 'halászat', '14900', '5'),
('Napkelet', 'észak', 'halászat', '7800', '2'),
('Orbánc', 'észak', 'túra', '10400', '5'),
('Tündér', 'kelet', 'túra', '5100', '2'),
('Napkelet', 'kelet', 'mentés', '4800', '1'),
('Tündér', 'dél', 'mentés', '4500', '2'),
('Szilas', 'észak', 'halászat', '5300', '1'),
('Napkelet', 'észak', 'mentés', '10700', '3'),
('Tündér', 'kelet', 'túra', '3600', '3'),
('Szilas', 'dél', 'mentés', '5400', '4'),
('Szilas', 'dél', 'mentés', '13000', '3'),
('Szilas', 'észak', 'túra', '14800', '4'),
('Napkelet', 'kelet', 'halászat', '5800', '5'),
('Csuka', 'dél', 'mentés', '7700', '3'),
('Napkelet', 'dél', 'mentés', '4300', '1'),
('Csuka', 'dél', 'halászat', '11200', '5'),
('Csuka', 'dél', 'túra', '14800', '3'),
('Napkelet', 'kelet', 'túra', '3400', '3'),
('Napkelet', 'kelet', 'mentés', '11000', '3'),
('Szilas', 'észak', 'túra', '12700', '1'),
('Csuka', 'dél', 'halászat', '8600', '4'),
('Orbánc', 'kelet', 'halászat', '10800', '2'),
('Orbánc', 'kelet', 'halászat', '14900', '2'),
('Csuka', 'dél', 'túra', '4500', '2'),
('Orbánc', 'kelet', 'túra', '14800', '4'),
('Szilas', 'kelet', 'halászat', '11300', '3'),
('Orbánc', 'dél', 'mentés', '9000', '3'),
('Napkelet', 'dél', 'túra', '10700', '3'),
('Orbánc', 'észak', 'mentés', '4800', '2'),
('Tündér', 'kelet', 'mentés', '7400', '5'),
('Csuka', 'kelet', 'mentés', '12900', '5'),
('Csuka', 'dél', 'mentés', '5500', '2'),
('Szilas', 'dél', 'mentés', '7300', '5'),
('Tündér', 'kelet', 'halászat', '5200', '2'),
('Tündér', 'dél', 'halászat', '3100', '2'),
('Napkelet', 'dél', 'túra', '6000', '5'),
('Szilas', 'kelet', 'halászat', '4500', '4'),
('Tündér', 'észak', 'túra', '10400', '3'),
('Szilas', 'kelet', 'mentés', '6600', '3'),
('Tündér', 'kelet', 'túra', '12100', '5'),
('Orbánc', 'észak', 'túra', '10600', '1'),
('Szilas', 'észak', 'túra', '10700', '3'),
('Napkelet', 'dél', 'mentés', '14900', '3'),
('Tündér', 'észak', 'túra', '9100', '4'),
('Napkelet', 'észak', 'túra', '11800', '2'),
('Napkelet', 'észak', 'halászat', '3200', '4'),
('Csuka', 'kelet', 'mentés', '5400', '1'),
('Csuka', 'kelet', 'halászat', '14600', '2'),
('Tündér', 'észak', 'túra', '13700', '1'),
('Orbánc', 'észak', 'halászat', '10000', '5'),
('Csuka', 'kelet', 'túra', '13900', '1'),
('Tündér', 'kelet', 'halászat', '4400', '4'),
('Tündér', 'észak', 'túra', '12500', '1'),
('Tündér', 'észak', 'túra', '12600', '2'),
('Napkelet', 'észak', 'túra', '14700', '5'),
('Tündér', 'kelet', 'halászat', '14800', '5'),
('Csuka', 'dél', 'halászat', '4600', '4'),
('Tündér', 'kelet', 'mentés', '7100', '2'),
('Orbánc', 'észak', 'mentés', '11300', '1'),
('Napkelet', 'dél', 'halászat', '12300', '3'),
('Napkelet', 'dél', 'mentés', '8800', '4'),
('Csuka', 'dél', 'túra', '11300', '3'),
('Orbánc', 'észak', 'mentés', '4400', '2'),
('Napkelet', 'dél', 'túra', '3500', '1'),
('Orbánc', 'kelet', 'halászat', '7800', '1'),
('Szilas', 'dél', 'mentés', '4000', '1'),
('Napkelet', 'kelet', 'túra', '9000', '4'),
('Orbánc', 'dél', 'túra', '7300', '1'),
('Orbánc', 'észak', 'túra', '3200', '5'),
('Napkelet', 'észak', 'mentés', '3900', '4'),
('Orbánc', 'kelet', 'halászat', '14300', '2'),
('Tündér', 'észak', 'túra', '6100', '5'),
('Szilas', 'észak', 'mentés', '12600', '3'),
('Csuka', 'kelet', 'halászat', '13700', '2'),
('Tündér', 'dél', 'mentés', '11900', '1'),
('Csuka', 'észak', 'túra', '10800', '1'),
('Szilas', 'dél', 'túra', '10800', '1'),
('Napkelet', 'észak', 'halászat', '5300', '1'),
('Tündér', 'dél', 'halászat', '4300', '2'),
('Csuka', 'észak', 'halászat', '7700', '3'),
('Csuka', 'észak', 'halászat', '7600', '4'),
('Tündér', 'észak', 'mentés', '10800', '2'),
('Orbánc', 'dél', 'túra', '10300', '5'),
('Napkelet', 'dél', 'túra', '11600', '5'),
('Tündér', 'észak', 'halászat', '7500', '5'),
('Orbánc', 'dél', 'mentés', '13100', '5'),
('Tündér', 'dél', 'halászat', '7400', '3'),
('Szilas', 'kelet', 'mentés', '12300', '5'),
('Szilas', 'észak', 'halászat', '5100', '1'),
('Orbánc', 'dél', 'mentés', '10000', '2'),
('Tündér', 'dél', 'halászat', '9800', '5'),
('Szilas', 'kelet', 'mentés', '11900', '4'),
('Napkelet', 'dél', 'halászat', '11000', '5'),
('Tündér', 'kelet', 'halászat', '11300', '4'),
('Szilas', 'észak', 'halászat', '10800', '1'),
('Csuka', 'dél', 'halászat', '8300', '4'),
('Szilas', 'dél', 'mentés', '6900', '4'),
('Napkelet', 'kelet', 'mentés', '4800', '1'),
('Napkelet', 'észak', 'túra', '10700', '2'),
('Szilas', 'dél', 'túra', '11800', '1'),
('Napkelet', 'észak', 'mentés', '6800', '2'),
('Napkelet', 'kelet', 'túra', '12200', '3'),
('Napkelet', 'kelet', 'halászat', '4400', '1'),
('Orbánc', 'kelet', 'túra', '4700', '4'),
('Szilas', 'észak', 'mentés', '9100', '2'),
('Orbánc', 'kelet', 'mentés', '3400', '5'),
('Orbánc', 'észak', 'túra', '7800', '5'),
('Tündér', 'dél', 'halászat', '8800', '3'),
('Napkelet', 'észak', 'halászat', '7400', '1'),
('Napkelet', 'dél', 'mentés', '13800', '5'),
('Orbánc', 'észak', 'mentés', '8000', '1'),
('Napkelet', 'kelet', 'túra', '10400', '1'),
('Szilas', 'észak', 'túra', '6000', '3'),
('Orbánc', 'dél', 'halászat', '13000', '5'),
('Csuka', 'dél', 'túra', '11000', '4'),
('Csuka', 'kelet', 'mentés', '13700', '3'),
('Csuka', 'észak', 'halászat', '12000', '1'),
('Napkelet', 'észak', 'halászat', '11400', '1'),
('Szilas', 'kelet', 'mentés', '12800', '2'),
('Tündér', 'észak', 'halászat', '9200', '1'),
('Csuka', 'kelet', 'mentés', '3200', '5'),
('Tündér', 'észak', 'túra', '11000', '5'),
('Csuka', 'észak', 'túra', '8200', '3'),
('Orbánc', 'kelet', 'túra', '9600', '5'),
('Napkelet', 'kelet', 'halászat', '6200', '5'),
('Tündér', 'észak', 'halászat', '11300', '3'),
('Tündér', 'észak', 'túra', '7900', '2'),
('Szilas', 'dél', 'túra', '9700', '4'),
('Napkelet', 'kelet', 'mentés', '3100', '3'),
('Tündér', 'kelet', 'túra', '9100', '5'),
('Orbánc', 'dél', 'mentés', '8900', '4'),
('Orbánc', 'kelet', 'mentés', '9400', '2'),
('Orbánc', 'dél', 'túra', '5200', '2'),
('Napkelet', 'dél', 'mentés', '12900', '5'),
('Szilas', 'kelet', 'mentés', '3100', '1'),
('Napkelet', 'észak', 'mentés', '5800', '2'),
('Orbánc', 'észak', 'halászat', '12300', '5'),
('Orbánc', 'észak', 'túra', '4300', '5'),
('Orbánc', 'észak', 'halászat', '8300', '4'),
('Szilas', 'dél', 'halászat', '3000', '3'),
('Orbánc', 'kelet', 'halászat', '5700', '4'),
('Szilas', 'kelet', 'mentés', '13900', '3'),
('Napkelet', 'kelet', 'túra', '11800', '3'),
('Csuka', 'dél', 'halászat', '3300', '5'),
('Orbánc', 'észak', 'túra', '3700', '4'),
('Tündér', 'kelet', 'halászat', '3700', '2'),
('Szilas', 'észak', 'túra', '9500', '4'),
('Orbánc', 'kelet', 'halászat', '4900', '2'),
('Orbánc', 'kelet', 'túra', '8300', '1'),
('Orbánc', 'észak', 'túra', '13600', '3');
INSERT INTO `hajok` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('Tündér', 'kelet', 'halászat', '3600', '1'),
('Tündér', 'dél', 'mentés', '7700', '5'),
('Orbánc', 'kelet', 'halászat', '8200', '4'),
('Csuka', 'kelet', 'túra', '6500', '1'),
('Napkelet', 'dél', 'halászat', '7700', '1'),
('Napkelet', 'kelet', 'halászat', '4100', '5'),
('Orbánc', 'kelet', 'mentés', '12500', '2'),
('Orbánc', 'észak', 'mentés', '5100', '2'),
('Tündér', 'kelet', 'túra', '6100', '4'),
('Tündér', 'kelet', 'túra', '9400', '5');
--
-- Adatbázis: `euroskills`
--
CREATE DATABASE IF NOT EXISTS `euroskills` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `euroskills`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orszag`
--

CREATE TABLE `orszag` (
  `id` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  `orszagNev` varchar(31) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `orszag`
--

INSERT INTO `orszag` (`id`, `orszagNev`) VALUES
('AT', 'Ausztria'),
('BA', 'Bosznia-Hercegovina'),
('BE', 'Belgium'),
('BG', 'Bulgária'),
('BY', 'Fehéroroszország'),
('CH', 'Svájc'),
('CY', 'Ciprus'),
('CZ', 'Csehország'),
('DE', 'Németország'),
('DK', 'Dánia'),
('EE', 'Észtország'),
('ES', 'Spanyolország'),
('FI', 'Finnország'),
('FR', 'Franciaország'),
('GB', 'Egyesült Királyság'),
('GR', 'Görögország'),
('HR', 'Horvátország'),
('HU', 'Magyarország'),
('IE', 'Írország'),
('IS', 'Izland'),
('IT', 'Olaszország'),
('KZ', 'Kazahsztán'),
('LI', 'Liechtenstein'),
('LT', 'Litvánia'),
('LU', 'Luxemburg'),
('LV', 'Lettország'),
('MC', 'Monaco'),
('ME', 'Montenegró'),
('MT', 'Málta'),
('NL', 'Hollandia'),
('NO', 'Norvégia'),
('NR', 'Németország'),
('PH', 'Fülöp-szigetek'),
('PL', 'Lengyelország'),
('PT', 'Portugália'),
('RO', 'Románia'),
('RS', 'Szerbia'),
('RU', 'Oroszország'),
('SE', 'Svédország'),
('SI', 'Szlovénia'),
('SK', 'Szlovákia'),
('TR', 'Törökország'),
('UA', 'Ukrajna');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szakma`
--

CREATE TABLE `szakma` (
  `id` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  `szakmaNev` varchar(31) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szakma`
--

INSERT INTO `szakma` (`id`, `szakmaNev`) VALUES
('04', 'Mechatronika '),
('05', 'Gépészeti tervező - CAD'),
('07', 'CNC maró'),
('08', 'Kőfaragó'),
('10', 'Hegesztő'),
('12', 'Hidegburkoló'),
('15', 'Víz-, gáz- és fűtésszerelő '),
('16', 'Elektronikai műszerész'),
('17', 'Webfejlesztő '),
('18', 'Villanyszerelő'),
('19', 'Elektronikai technikus'),
('20', 'Kőműves'),
('21', 'Szárazépítő'),
('22', 'Festő, díszítőfestő'),
('23', 'Mobil robotika'),
('24', 'Bútorasztalos'),
('25', 'Épületasztalos'),
('28', 'Virágkötő'),
('29', 'Fodrász '),
('30', 'Szépségápoló'),
('31', 'Ruhaipari technikus'),
('33', 'Autószerelő'),
('34', 'Szakács'),
('35', 'Pincér'),
('38', 'Hűtő- és légtechnikai szerelő'),
('39', 'Informatikai rendszerüzemeltető'),
('40', 'Grafikus'),
('41', 'Ápolás és gondozás'),
('44', 'Dekoratőr, kirakattervező'),
('49', 'Bádogos'),
('50', 'Melegburkoló'),
('51', 'Kertépítő'),
('53', 'Nehézgépszerelő'),
('54', 'Tehergépjármű szerelő'),
('57', 'Szállodai recepciós'),
('D1', 'Pék'),
('D3', 'Betonszerkezet építő');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyzo`
--

CREATE TABLE `versenyzo` (
  `id` int(11) NOT NULL,
  `nev` varchar(31) COLLATE utf8_hungarian_ci NOT NULL,
  `szakmaId` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  `orszagId` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  `pont` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `versenyzo`
--

INSERT INTO `versenyzo` (`id`, `nev`, `szakmaId`, `orszagId`, `pont`) VALUES
(1, 'Aleksandr Arapov', '04', 'RU', 722),
(2, 'Aleksey Klimkov', '04', 'KZ', 614),
(3, 'Benedikt Gabat', '04', 'AT', 680),
(4, 'Danny Slater', '04', 'GB', 711),
(5, 'Diego Orellana', '04', 'ES', 639),
(6, 'Emanuel Näslund', '04', 'SE', 698),
(7, 'Espen Brandtzæg Godo', '04', 'NO', 708),
(8, 'Jack Dakin', '04', 'GB', 711),
(9, 'Jasper van Kol', '04', 'NL', 707),
(10, 'Jure Kmetic', '04', 'SI', 680),
(11, 'Jure Korbar', '04', 'SI', 680),
(12, 'Kristóf Balázs Sipos', '04', 'HU', 725),
(13, 'Maksim Aksenov', '04', 'RU', 722),
(14, 'Mateusz Dabrowski', '04', 'PL', 632),
(15, 'Maximilian Schindlbauer', '04', 'AT', 680),
(16, 'Miroslav Visnevskij', '04', 'LT', 629),
(17, 'Niklas Ekelöw', '04', 'SE', 698),
(18, 'Pedro Simoes', '04', 'PT', 702),
(19, 'Philipp Seitz', '04', 'NR', 703),
(20, 'Przemyslaw Krasnodebski', '04', 'PL', 632),
(21, 'Rick Jooren', '04', 'NL', 707),
(22, 'Sergio Calvo', '04', 'ES', 639),
(23, 'Sonia Caetano', '04', 'PT', 702),
(24, 'Thomas Kausler', '04', 'NR', 703),
(25, 'Vilgelm Limanskiy', '04', 'KZ', 614),
(26, 'Vinjar Vederhus', '04', 'NO', 708),
(27, 'Vitas Kapustinskis', '04', 'LT', 629),
(28, 'Zoltán Takács', '04', 'HU', 725),
(29, 'Adrien Mary', '05', 'FR', 735),
(30, 'Albert Mineev', '05', 'RU', 738),
(31, 'Francisco Oliveira', '05', 'PT', 713),
(32, 'Ike Vermeulen', '05', 'NL', 695),
(33, 'Iker Borde', '05', 'ES', 673),
(34, 'Lucas Scholzen', '05', 'BE', 700),
(35, 'Ross Megahy', '05', 'GB', 717),
(36, 'Theo Zemack', '05', 'SE', 680),
(37, 'Yerkebulan Sultangaliyev', '05', 'KZ', 648),
(38, 'Alexandre Clarens', '07', 'FR', 714),
(39, 'Andreas Hauser', '07', 'AT', 721),
(40, 'Anton Ala-Englund', '07', 'SE', 701),
(41, 'Elliott Dawson', '07', 'GB', 699),
(42, 'Geoffrey Vandenhove', '07', 'BE', 671),
(43, 'Mikhail Vorontcov', '07', 'RU', 734),
(44, 'Norbert Varga', '07', 'HU', 660),
(45, 'Raúl Fernandez', '07', 'ES', 669),
(46, 'Robert Liebeskind', '07', 'NR', 715),
(47, 'Rui Carvalho', '07', 'PT', 718),
(48, 'Stefan Duric', '07', 'HR', 657),
(49, 'Teun Olthuis', '07', 'NL', 680),
(50, 'Aaron Weisser', '08', 'NR', 587),
(51, 'Dominik Gabelica', '08', 'HR', 642),
(52, 'Ilmari Manner', '08', 'FI', 484),
(53, 'Krisztián Balogh', '08', 'HU', 708),
(54, 'Michael Egli', '08', 'CH', 720),
(55, 'Quentin Wollenschneider', '08', 'FR', 704),
(56, 'Robert Moser', '08', 'AT', 717),
(57, 'Tilen Meglic', '08', 'SI', 700),
(58, 'Timofei Darmograi', '08', 'RU', 610),
(59, 'Andre Pedrosa', '10', 'PT', 696),
(60, 'Axel Gustafsson', '10', 'SE', 697),
(61, 'Brenda Vermeiren', '10', 'BE', 716),
(62, 'Dániel Zaja', '10', 'HU', 720),
(63, 'Demetris Koumparou', '10', 'CY', 649),
(64, 'Dylan Alexandre', '10', 'FR', 707),
(65, 'Fernando Gonzalez', '10', 'ES', 673),
(66, 'Finnur Ingi Harrysson', '10', 'IS', 663),
(67, 'Hugo Rijsman', '10', 'NL', 717),
(68, 'Jon Aarne Hjelmstadbakk', '10', 'NO', 723),
(69, 'Kasparas Martinkenas', '10', 'LT', 640),
(70, 'Madi Omar', '10', 'KZ', 639),
(71, 'Miika Viitala', '10', 'FI', 694),
(72, 'Scott Kerr', '10', 'GB', 703),
(73, 'Thomas Käferböck', '10', 'AT', 716),
(74, 'Vladimir Baboshkin', '10', 'RU', 739),
(75, 'Agnes Grandin', '12', 'SE', 692),
(76, 'Cedrik Knöpfle', '12', 'NR', 724),
(77, 'Daniil Shmydov', '12', 'RU', 720),
(78, 'Danijs Slugovics', '12', 'LV', 655),
(79, 'Joost Podekrat', '12', 'EE', 691),
(80, 'Julien Martinet', '12', 'FR', 735),
(81, 'Marco Erhart', '12', 'AT', 721),
(82, 'Mark Scott', '12', 'GB', 697),
(83, 'Maxime Dengis', '12', 'BE', 703),
(84, 'Sabyrzhan Duisenbekov', '12', 'KZ', 638),
(85, 'Samuel Birk Axelsen', '12', 'DK', 728),
(86, 'Toon Hesius', '12', 'NL', 684),
(87, 'Ádám Miklós', '15', 'HU', 669),
(88, 'Aibek Minuarbek', '15', 'KZ', 515),
(89, 'Florian Schwarzenauer', '15', 'AT', 720),
(90, 'Joe Schreiber', '15', 'LU', 650),
(91, 'Joris Vernadet', '15', 'FR', 710),
(92, 'Julian van Lohuizen', '15', 'NL', 702),
(93, 'Matthew Barton', '15', 'GB', 700),
(94, 'Nikola Mikus', '15', 'HR', 525),
(95, 'Paul-Florian Schärschmidt', '15', 'NR', 716),
(96, 'Samuel Torres', '15', 'ES', 648),
(97, 'Vadim Popov', '15', 'RU', 703),
(98, 'Asbjorn Edvaldsson', '16', 'IS', 710),
(99, 'Christof Hinterleitner', '16', 'AT', 666),
(100, 'Dmitriy Vinokurov', '16', 'KZ', 554),
(101, 'Evgenii Pliusnin', '16', 'RU', 698),
(102, 'Joonatan Kivelä', '16', 'FI', 702),
(103, 'Miroslav Chalko', '16', 'SK', 730),
(104, 'Abusufean Ali', '17', 'AT', 680),
(105, 'Ákos Balogh', '17', 'HU', 723),
(106, 'Alexandr Davydov', '17', 'KZ', 682),
(107, 'David Sohl', '17', 'SE', 698),
(108, 'Edgaras Pangonis', '17', 'LT', 629),
(109, 'Gilles Granger', '17', 'FR', 720),
(110, 'Gustavs Racenajs', '17', 'LV', 717),
(111, 'Ivan Dumancic', '17', 'HR', 679),
(112, 'Joel Koch', '17', 'FI', 716),
(113, 'Konstantin Larin', '17', 'RU', 741),
(114, 'Lewis Newton', '17', 'GB', 669),
(115, 'Martina Pitakova', '17', 'SK', 712),
(116, 'Mike Beskers', '17', 'NL', 703),
(117, 'Noah Nöthling', '17', 'NR', 347),
(118, 'Robert Lara', '17', 'ES', 702),
(119, 'Thomas Claude', '17', 'BE', 650),
(120, 'Aleksejs Tarasovs', '18', 'LV', 695),
(121, 'Alexandr Kondratyev', '18', 'KZ', 656),
(122, 'Daniel Gerber', '18', 'CH', 796),
(123, 'Diana Reuter', '18', 'NR', 768),
(124, 'Egor Svalov', '18', 'RU', 729),
(125, 'Emmy Åberg', '18', 'SE', 658),
(126, 'Florian Evrard', '18', 'BE', 714),
(127, 'Jasper Olthuis', '18', 'NL', 719),
(128, 'Jon Thor Einarsson', '18', 'IS', 700),
(129, 'Péter Leidl', '18', 'HU', 748),
(130, 'Ricardo Silva', '18', 'PT', 680),
(131, 'Sakari Luukkonen', '18', 'FI', 697),
(132, 'Ståle Brå', '18', 'NO', 751),
(133, 'Thomas Lewis', '18', 'GB', 699),
(134, 'Víctor Terrazas', '18', 'ES', 693),
(135, 'Amaury Bertrand', '19', 'FR', 680),
(136, 'Fabienne Chartier', '19', 'BE', 637),
(137, 'Martin Lindelöw', '19', 'SE', 723),
(138, 'Max Meusburger', '19', 'AT', 718),
(139, 'Nahuel Arce-Leal Diaz', '19', 'ES', 580),
(140, 'René Hässelbarth', '19', 'NR', 605),
(141, 'Rui Martins', '19', 'PT', 700),
(142, 'Samu Lahti', '19', 'FI', 705),
(143, 'Vladislav Grachev', '19', 'RU', 701),
(144, 'Adam Kristensson', '20', 'SE', 689),
(145, 'Ádám Zoltán Hédl', '20', 'HU', 702),
(146, 'Bartosz Trocha', '20', 'PL', 653),
(147, 'Christoph Rapp', '20', 'NR', 725),
(148, 'Jordan Van-Akelyen', '20', 'BE', 689),
(149, 'Kenneth Meldgaard Ebbesen', '20', 'DK', 719),
(150, 'Marc Berndorfer', '20', 'AT', 722),
(151, 'Petar Svilic', '20', 'HR', 674),
(152, 'Rakhat Makhan', '20', 'KZ', 662),
(153, 'Sergei Kherkun', '20', 'RU', 709),
(154, 'Stefan Hersche', '20', 'CH', 716),
(155, 'Tim Klessens', '20', 'NL', 713),
(156, 'Vincenzo Ferro', '20', 'IT', 660),
(157, 'Willy Fourrier', '20', 'FR', 698),
(158, 'Alexander Schmidt', '21', 'NR', 724),
(159, 'Araz Emirov', '21', 'RU', 711),
(160, 'Bakdaulet Bekbayev', '21', 'KZ', 656),
(161, 'Cariem Dijk', '21', 'NL', 680),
(162, 'Dawid Grodzki', '21', 'PL', 672),
(163, 'Gábor Lóczi', '21', 'HU', 700),
(164, 'Loic Robert', '21', 'FR', 721),
(165, 'Lukas Hofer', '21', 'AT', 713),
(166, 'Lukas Johansson', '21', 'SE', 683),
(167, 'Omar Lo', '21', 'BE', 685),
(168, 'Philippe Bütschi', '21', 'CH', 718),
(169, 'Aljaz Zvokelj', '22', 'SI', 658),
(170, 'Anna Bobylova', '22', 'KZ', 662),
(171, 'Antje Harz', '22', 'NR', 700),
(172, 'Art Arbsuwan', '22', 'SE', 687),
(173, 'Callum Bonner', '22', 'GB', 659),
(174, 'Felix Quinz', '22', 'IT', 712),
(175, 'Lea Meier', '22', 'CH', 726),
(176, 'Olga Iachmeneva', '22', 'RU', 704),
(177, 'Patrick Reitbauer', '22', 'AT', 752),
(178, 'Reetta Härkönen', '22', 'FI', 717),
(179, 'Riko Lorber', '22', 'EE', 679),
(180, 'Rutger van Antwerpen', '22', 'NL', 690),
(181, 'Sabrina Scheen', '22', 'BE', 689),
(182, 'Szabolcs Cseke', '22', 'HU', 731),
(183, 'Yann Miller', '22', 'FR', 720),
(184, 'Alexander Goldhill', '23', 'FI', 689),
(185, 'Andrei Diubanov', '23', 'RU', 768),
(186, 'Cleiton Lima', '23', 'PT', 700),
(187, 'David Andrawes', '23', 'AT', 730),
(188, 'Dragan Todorovic', '23', 'ME', 629),
(189, 'Eetu Silvennoinen', '23', 'FI', 689),
(190, 'Guillaume Gourmelen', '23', 'FR', 700),
(191, 'Markus Pelzl', '23', 'AT', 730),
(192, 'Pavel Fadeev', '23', 'RU', 768),
(193, 'Pedro Pereira', '23', 'PT', 700),
(194, 'Thomas Godel', '23', 'FR', 700),
(195, 'Veljko Kokic', '23', 'ME', 629),
(196, 'Christian Buchegger', '24', 'AT', 713),
(197, 'Corentin Collet', '24', 'BE', 680),
(198, 'Guus van Velthuijsen', '24', 'NL', 700),
(199, 'Isak Lukkarinen', '24', 'FI', 702),
(200, 'Jaka Kozuh', '24', 'SI', 678),
(201, 'Krisztián Simon', '24', 'HU', 720),
(202, 'Martin Retif', '24', 'FR', 702),
(203, 'Mathias Andersson', '24', 'DK', 665),
(204, 'Nikolai Golikov', '24', 'RU', 705),
(205, 'Ricardo Trivino', '24', 'ES', 668),
(206, 'Thomas Pennicott', '24', 'GB', 680),
(207, 'Ádám János Nagy', '25', 'HU', 728),
(208, 'Alexander Haidinger', '25', 'AT', 695),
(209, 'Alexis Nue', '25', 'FR', 718),
(210, 'Christopher Caine', '25', 'GB', 700),
(211, 'Justian Raahauge', '25', 'DK', 701),
(212, 'Pierre Balancier', '25', 'BE', 700),
(213, 'Tadej Kalajzic', '25', 'SI', 669),
(214, 'Throstur Karason', '25', 'IS', 655),
(215, 'Vitalii Bondarenko', '25', 'RU', 721),
(216, 'Beatriz Sanchez', '28', 'ES', 599),
(217, 'Brigita Klinar', '28', 'SI', 706),
(218, 'Dániel Takács', '28', 'HU', 719),
(219, 'Elizabeth Newcombe', '28', 'GB', 705),
(220, 'Elizaveta Shkimbova', '28', 'RU', 722),
(221, 'Esther Weijenberg', '28', 'NL', 693),
(222, 'Josefiina Kivero', '28', 'FI', 728),
(223, 'Kevin Billard', '28', 'FR', 714),
(224, 'Maris Paas', '28', 'EE', 674),
(225, 'Melanie Krenn', '28', 'AT', 713),
(226, 'Ophélie Depotter', '28', 'BE', 677),
(227, 'Peter Morvay', '28', 'SK', 655),
(228, 'Rabiya Kamidova', '28', 'KZ', 650),
(229, 'Sylwia Leszczynska', '28', 'PL', 695),
(230, 'Alexandra Kovács', '29', 'HU', 714),
(231, 'Alix Darles', '29', 'FR', 741),
(232, 'Anna Krontseva', '29', 'RU', 734),
(233, 'Anna Le', '29', 'SE', 686),
(234, 'Christina Hofer', '29', 'AT', 707),
(235, 'Chrysis Tsiapparis', '29', 'CY', 664),
(236, 'Daniel Moniz', '29', 'PT', 658),
(237, 'Dany Korac', '29', 'LU', 674),
(238, 'Florine Capelle', '29', 'BE', 708),
(239, 'Gavin Jon Kyte', '29', 'GB', 720),
(240, 'Karoliina Tolvi', '29', 'FI', 715),
(241, 'Laima Bielskyte', '29', 'LT', 691),
(242, 'Lea Juren', '29', 'HR', 669),
(243, 'Leif Anders Overland', '29', 'NO', 700),
(244, 'Martin Istok', '29', 'SK', 352),
(245, 'Martina Ruzzene', '29', 'IT', 705),
(246, 'Nazira Abdukhalilova', '29', 'KZ', 703),
(247, 'Robert Stachowski', '29', 'PL', 662),
(248, 'Sanne van Overdijk', '29', 'NL', 674),
(249, 'Tomás Rivera', '29', 'ES', 704),
(250, 'Uros Pajovic', '29', 'ME', 640),
(251, 'Alina Waltl', '30', 'AT', 714),
(252, 'Carina Larsen', '30', 'NO', 677),
(253, 'Carla Ribeiro', '30', 'PT', 698),
(254, 'Danae Kyriakou', '30', 'CY', 675),
(255, 'Holly-Mae Cotterell', '30', 'GB', 730),
(256, 'Irina Bykova', '30', 'RU', 727),
(257, 'Ivana Sneujink', '30', 'NL', 691),
(258, 'Jasmin Vuorio', '30', 'FI', 687),
(259, 'Karen Rey', '30', 'ES', 666),
(260, 'Louise Olsson', '30', 'SE', 702),
(261, 'Mylène Calabre', '30', 'FR', 723),
(262, 'Valeria Tschann', '30', 'CH', 717),
(263, 'Viktória Dóra Papp', '30', 'HU', 703),
(264, 'Viviana Gentile', '30', 'IT', 648),
(265, 'Alice Baré', '31', 'BE', 734),
(266, 'Alicia Martinez', '31', 'ES', 678),
(267, 'Beatriz Soares', '31', 'PT', 703),
(268, 'Bozena Turopoljac', '31', 'AT', 741),
(269, 'Bruno Feliciano', '31', 'PT', 703),
(270, 'Elen Tatrik', '31', 'EE', 738),
(271, 'Elina Skrindzevska', '31', 'LV', 749),
(272, 'Evelina Altunian', '31', 'RU', 746),
(273, 'Florence Lassance', '31', 'BE', 734),
(274, 'Ivana Thies', '31', 'NL', 681),
(275, 'Ivett Bákonyi', '31', 'HU', 686),
(276, 'Krisztina Gagyi', '31', 'HU', 686),
(277, 'Laura Kreivina', '31', 'LV', 749),
(278, 'Lorena Conjar', '31', 'HR', 694),
(279, 'Maria Jöbstl', '31', 'AT', 741),
(280, 'Marta Garcia', '31', 'ES', 678),
(281, 'Melissa Kuisma', '31', 'FI', 697),
(282, 'Minni Meisterson', '31', 'EE', 738),
(283, 'Nazerke Taishibayeva', '31', 'KZ', 683),
(284, 'Olesia Budko', '31', 'RU', 746),
(285, 'Reetta Immonen', '31', 'FI', 697),
(286, 'Tena Sumski', '31', 'HR', 694),
(287, 'Tessa Schönhage', '31', 'NL', 681),
(288, 'Yulduz Murzakhmetova', '31', 'KZ', 683),
(289, 'Aivo Alas', '33', 'EE', 675),
(290, 'Alexander Olofsson', '33', 'SE', 700),
(291, 'Andrea Lucato', '33', 'IT', 678),
(292, 'Artem Semenovich', '33', 'KZ', 643),
(293, 'Arttu Kivenmäki', '33', 'FI', 700),
(294, 'Attila Hasza', '33', 'HU', 697),
(295, 'Daniel Stelmach', '33', 'PT', 722),
(296, 'Jon Sindre Lund Gabrielsen', '33', 'NO', 725),
(297, 'Kestas Mockus', '33', 'LT', 716),
(298, 'Klaus Lehmerhofer', '33', 'AT', 756),
(299, 'Maxime Sproten', '33', 'BE', 696),
(300, 'Miguel Paz', '33', 'ES', 700),
(301, 'Nikolai Donchak', '33', 'RU', 730),
(302, 'Nikolai Rölle', '33', 'NR', 712),
(303, 'Sandro Jericevic', '33', 'HR', 681),
(304, 'Vyronas Panayi', '33', 'CY', 673),
(305, 'Aibat Zhalgasbayev', '34', 'KZ', 654),
(306, 'Ana Coelho', '34', 'PT', 694),
(307, 'Francois Eustace', '34', 'FR', 718),
(308, 'Friderika Spekova', '34', 'HU', 678),
(309, 'Gasper Rjavec', '34', 'SI', 700),
(310, 'Ioannis Papakonstantinou', '34', 'CY', 714),
(311, 'Iskandar Slaev', '34', 'RU', 720),
(312, 'Jordan Boreux', '34', 'BE', 700),
(313, 'Kaisla Heimala', '34', 'FI', 723),
(314, 'Kristinn Gisli Jonsson', '34', 'IS', 700),
(315, 'Maciej Pisarek', '34', 'PL', 713),
(316, 'Markus Pärn', '34', 'EE', 697),
(317, 'Michael Ploner', '34', 'AT', 726),
(318, 'Michal Mico', '34', 'SK', 674),
(319, 'Nicolle Finnie', '34', 'GB', 709),
(320, 'Nils Gevele', '34', 'LV', 674),
(321, 'Roy Scheffers', '34', 'NL', 695),
(322, 'Suad Hadzimuhovic', '34', 'ME', 680),
(323, 'Tomas Tarabycinas', '34', 'LT', 656),
(324, 'Toni Grgic', '34', 'HR', 649),
(325, 'Torkil S Helmersen', '34', 'NO', 719),
(326, 'Víctor Melendez', '34', 'ES', 694),
(327, 'Viktor Thulin', '34', 'SE', 731),
(328, 'Anna Meletc', '35', 'RU', 727),
(329, 'Azzurra Boeris', '35', 'IT', 658),
(330, 'Birk Torp', '35', 'NO', 700),
(331, 'Carlos Carmona', '35', 'ES', 735),
(332, 'Clement Gosselin', '35', 'FR', 721),
(333, 'Clément Jacqmain', '35', 'BE', 724),
(334, 'Collette Gorvett', '35', 'GB', 700),
(335, 'Demi Kivilo', '35', 'EE', 700),
(336, 'Dimitrios Flerianos', '35', 'CY', 641),
(337, 'Emin Tiganj', '35', 'SI', 718),
(338, 'Fabienne Bakker', '35', 'NL', 706),
(339, 'Jolanda Edvardsson', '35', 'SE', 698),
(340, 'Katarina Lopicic', '35', 'ME', 641),
(341, 'Madara Minina', '35', 'LV', 695),
(342, 'Monika Pöllabauer', '35', 'AT', 730),
(343, 'Polina Sidelnikova', '35', 'KZ', 618),
(344, 'Sascha Sappada', '35', 'LU', 647),
(345, 'Sigurdur Borgar Olafsson', '35', 'IS', 681),
(346, 'Suvi Minkkinen', '35', 'FI', 716),
(347, 'Viktória Svajda', '35', 'HU', 719),
(348, 'Aleksandr Leushin', '38', 'RU', 698),
(349, 'Dominik Daferner', '38', 'NR', 721),
(350, 'Emanuel Budeanu', '38', 'ES', 725),
(351, 'Francisco Campos', '38', 'PT', 718),
(352, 'Kevin Guillevic', '38', 'FR', 696),
(353, 'Marios Papaneofytou', '38', 'CY', 581),
(354, 'Michael Kraml', '38', 'AT', 702),
(355, 'Vadim Kuzmenko', '38', 'KZ', 571),
(356, 'Alexandre Michel', '39', 'FR', 733),
(357, 'André Pettersson', '39', 'SE', 679),
(358, 'Benjamin Nicodème', '39', 'BE', 683),
(359, 'Cameron Barr', '39', 'GB', 726),
(360, 'Diana Kasabova', '39', 'RU', 749),
(361, 'Filip Boljat', '39', 'HR', 687),
(362, 'Gen Lee', '39', 'EE', 680),
(363, 'Igors Bumanis', '39', 'LV', 700),
(364, 'Jaume Garcia', '39', 'ES', 682),
(365, 'Jose Franco', '39', 'PT', 712),
(366, 'Josip Stanesic', '39', 'HR', 687),
(367, 'Levente Déri', '39', 'HU', 733),
(368, 'Lukas Vavra', '39', 'AT', 740),
(369, 'Luuk Isbouts', '39', 'NL', 685),
(370, 'Martin Dagarin', '39', 'SI', 737),
(371, 'Oscar Latorre', '39', 'ES', 682),
(372, 'Patrick Taibel', '39', 'AT', 740),
(373, 'Paulo Fereira', '39', 'PT', 712),
(374, 'Reini Tammeorg', '39', 'EE', 680),
(375, 'Ricards Trofimovs', '39', 'LV', 700),
(376, 'Romain Mathieu', '39', 'BE', 683),
(377, 'Shane Carpenter', '39', 'GB', 726),
(378, 'Steffen Weißmann', '39', 'NR', 683),
(379, 'Sten van Harten', '39', 'NL', 685),
(380, 'Tamás Orodán', '39', 'HU', 733),
(381, 'Thomas Jullien', '39', 'FR', 733),
(382, 'Thorsten Reichelt', '39', 'NR', 683),
(383, 'Victor Nyberg', '39', 'SE', 679),
(384, 'Vladislav Tetiushkin', '39', 'RU', 749),
(385, 'Ziga Simoncic', '39', 'SI', 737),
(386, 'Aleksandra Valuikina', '40', 'RU', 769),
(387, 'Alexandra Rádi', '40', 'HU', 620),
(388, 'Bruno Lo Rillo', '40', 'IT', 726),
(389, 'Florian Gattermair', '40', 'AT', 730),
(390, 'Haraldur Orn Arnarson', '40', 'IS', 704),
(391, 'Jaagup Susi', '40', 'EE', 693),
(392, 'Jordan Rubens', '40', 'BE', 706),
(393, 'Katrina Elizabete Sile', '40', 'LV', 685),
(394, 'Kirill Kazaku', '40', 'KZ', 539),
(395, 'Manon Sprenkeler', '40', 'NL', 714),
(396, 'Sanna-Sofia Svensk', '40', 'FI', 696),
(397, 'Tomas Nozina', '40', 'SK', 627),
(398, 'Aigul Garipova', '41', 'RU', 690),
(399, 'Aino Takala', '41', 'FI', 715),
(400, 'Dávid Varholik', '41', 'HU', 718),
(401, 'Elisabeth Hölscher', '41', 'NR', 721),
(402, 'Noreelyn Prudencio', '41', 'IT', 679),
(403, 'Patricia Perez', '41', 'ES', 359),
(404, 'Shirley Westerhout', '41', 'NL', 645),
(405, 'Silje Kjærnli', '41', 'NO', 710),
(406, 'Aaron Preyer', '44', 'NL', 715),
(407, 'Ágnes Sárvári', '44', 'HU', 707),
(408, 'Anastasia Raspopova', '44', 'RU', 771),
(409, 'Darya Dubinina', '44', 'KZ', 596),
(410, 'Luize Mihailova', '44', 'LV', 718),
(411, 'Natasa Bukovic', '44', 'SI', 693),
(412, 'Suvi Syrjänen', '44', 'FI', 639),
(413, 'Vendela Lundin Pikner', '44', 'SE', 678),
(414, 'Alva Seljee', '49', 'SE', 667),
(415, 'Antoine Saint', '49', 'FR', 720),
(416, 'Benno Uhlmann', '49', 'NR', 700),
(417, 'Daniil Kovalev', '49', 'RU', 632),
(418, 'Gabriel Haas', '49', 'IT', 711),
(419, 'István Sándor', '49', 'HU', 675),
(420, 'Mark Krause', '49', 'AT', 708),
(421, 'Pascal Gerber', '49', 'CH', 726),
(422, 'Tom Moucheron', '49', 'BE', 697),
(423, 'Andreas Klammer', '50', 'IT', 759),
(424, 'Benjamin Schindelars', '50', 'AT', 724),
(425, 'Emil Bay', '50', 'DK', 480),
(426, 'Hampus Andersson', '50', 'SE', 684),
(427, 'Sergei Chukhno', '50', 'RU', 695),
(428, 'Tony Ferrandez', '50', 'FR', 705),
(429, 'Daniel Pascual', '51', 'ES', 713),
(430, 'Dylan Lekeux', '51', 'BE', 700),
(431, 'Gleb Plakhotnyuk', '51', 'RU', 720),
(432, 'Ilmar Jürisaar', '51', 'EE', 699),
(433, 'Iurii Malchenko', '51', 'RU', 720),
(434, 'Jesper Frederiksen', '51', 'DK', 734),
(435, 'Jochem Molenaar', '51', 'NL', 731),
(436, 'Jonas Menschaert', '51', 'BE', 700),
(437, 'Kjetil Sigurd Marius Schwoch', '51', 'NO', 759),
(438, 'Levente Pap', '51', 'HU', 634),
(439, 'Markus Vainu', '51', 'EE', 699),
(440, 'Márton Pintér', '51', 'HU', 634),
(441, 'Miranda Jonsson Blom', '51', 'SE', 688),
(442, 'Nils Karjetta', '51', 'NO', 759),
(443, 'Patrik Möller', '51', 'SE', 688),
(444, 'Peter Levin', '51', 'DK', 734),
(445, 'Samuel Taylor', '51', 'GB', 658),
(446, 'Sergio Rubio', '51', 'ES', 713),
(447, 'Shea McFerran', '51', 'GB', 658),
(448, 'Ulla Rautanen', '51', 'FI', 697),
(449, 'Veikko Tahvanainen', '51', 'FI', 697),
(450, 'Willem Stougie', '51', 'NL', 731),
(451, 'Dinand Hekman', '53', 'NL', 717),
(452, 'Janis Ozols', '53', 'LV', 706),
(453, 'Manuel Fahrnecker', '53', 'AT', 720),
(454, 'Máté Szerletics', '53', 'HU', 667),
(455, 'Mathias Röstberg', '53', 'SE', 649),
(456, 'Ronni Larsen', '53', 'DK', 704),
(457, 'Simon Rüedi', '53', 'CH', 730),
(458, 'Toni Eckardt', '53', 'NR', 671),
(459, 'Valentin Kireev', '53', 'RU', 689),
(460, 'Viltaiy Kucherenko', '53', 'KZ', 619),
(461, 'Vincent Schaub', '53', 'FR', 700),
(462, 'Andreas Enzensberger', '54', 'NR', 700),
(463, 'Ante Olofsson', '54', 'SE', 645),
(464, 'Kieran Leyland', '54', 'GB', 667),
(465, 'Nicolas Doron', '54', 'FR', 726),
(466, 'Nikolai Larionov', '54', 'RU', 707),
(467, 'Philipp Lackner', '54', 'AT', 680),
(468, 'Tor Oyvind Venemyr Voreland', '54', 'NO', 704),
(469, 'Alex Laine', '57', 'FI', 652),
(470, 'Andrea Picone', '57', 'IT', 701),
(471, 'Anette Johansen', '57', 'NO', 637),
(472, 'Ante Burum', '57', 'HR', 705),
(473, 'Emil Fäldt', '57', 'SE', 719),
(474, 'Jade Jury', '57', 'NL', 697),
(475, 'Liisa Meidla', '57', 'EE', 666),
(476, 'Maxime Cabo', '57', 'BE', 722),
(477, 'Nicoline Rohmann Håkansson', '57', 'DK', 699),
(478, 'Oliver Klocke', '57', 'AT', 716),
(479, 'Tania Alves', '57', 'PT', 672),
(480, 'Vitaliya Iakovenko', '57', 'RU', 750),
(481, 'Gulbanu Yesmadiyarova', 'D1', 'KZ', 667),
(482, 'Hong Ye', 'D1', 'ES', 681),
(483, 'Julia Rumetshofer', 'D1', 'AT', 721),
(484, 'Kati Mikkonen', 'D1', 'FI', 696),
(485, 'Lasse Norup Bentsen', 'D1', 'DK', 739),
(486, 'Lina Andersson', 'D1', 'SE', 749),
(487, 'Marina Arbuzova', 'D1', 'RU', 704),
(488, 'Þórey Lovísa Sigurmundsdóttir', 'D1', 'IS', 694),
(489, 'Andrey Korpachev', 'D3', 'RU', 691),
(490, 'Emil Östberg', 'D3', 'SE', 614),
(491, 'Florian Hochgruber', 'D3', 'IT', 718),
(492, 'Line Biltoft Jepsen', 'D3', 'DK', 677),
(493, 'Markus Haslinger', 'D3', 'AT', 738),
(494, 'Markus Magnusson', 'D3', 'SE', 614),
(495, 'Mathias Kjærgaard Jorgensen', 'D3', 'DK', 677),
(496, 'Medin Murati', 'D3', 'NR', 709),
(497, 'René Pichler', 'D3', 'IT', 718),
(498, 'Sebastian Frantes', 'D3', 'AT', 738),
(499, 'Timo Schön', 'D3', 'NR', 709),
(500, 'Vladislav Ryzhikov', 'D3', 'RU', 691);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `orszag`
--
ALTER TABLE `orszag`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szakma`
--
ALTER TABLE `szakma`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `versenyzo`
--
ALTER TABLE `versenyzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_versenyzoSzakma` (`szakmaId`),
  ADD KEY `fk_versenyzoOrszag` (`orszagId`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `versenyzo`
--
ALTER TABLE `versenyzo`
  ADD CONSTRAINT `fk_versenyzoOrszag` FOREIGN KEY (`orszagId`) REFERENCES `orszag` (`id`),
  ADD CONSTRAINT `fk_versenyzoSzakma` FOREIGN KEY (`szakmaId`) REFERENCES `szakma` (`id`);
--
-- Adatbázis: `foldrajz`
--
CREATE DATABASE IF NOT EXISTS `foldrajz` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `foldrajz`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orszagok`
--

CREATE TABLE `orszagok` (
  `id` int(11) NOT NULL,
  `orszag` varchar(27) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `fovaros` varchar(19) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `foldr_hely` varchar(37) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `terulet` decimal(11,2) NOT NULL DEFAULT 0.00,
  `allamforma` varchar(30) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `nepesseg` int(8) NOT NULL DEFAULT 0,
  `nep_fovaros` int(8) NOT NULL DEFAULT 0,
  `autojel` char(3) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `country` varchar(31) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `capital` varchar(19) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `penznem` varchar(20) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `penzjel` char(3) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `valtopenz` varchar(18) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `telefon` int(3) NOT NULL DEFAULT 0,
  `gdp` int(5) NOT NULL DEFAULT 0,
  `kat` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `orszagok`
--

INSERT INTO `orszagok` (`id`, `orszag`, `fovaros`, `foldr_hely`, `terulet`, `allamforma`, `nepesseg`, `nep_fovaros`, `autojel`, `country`, `capital`, `penznem`, `penzjel`, `valtopenz`, `telefon`, `gdp`, `kat`) VALUES
(1, 'SPANYOLORSZÁG', 'MADRID', 'Dél-Európa:Ibériai-félsziget', '504782.00', 'alkotmányos monarchia', 42700, 5100, 'E', 'SPANYOLORSZAG   ESPANOLA SPAIN', 'MADRID', 'euró', 'EUR', '100 eurocent', 34, 21110, 1),
(2, 'PORTUGÁLIA', 'LISSZABON', 'Dél-Európa:Ibériai-félsziget', '92082.00', 'köztársaság', 10000, 2600, 'P', 'PORTUGALIA', 'LISBOA (LISSZABON)', 'euró', 'EUR', '100 eurocent', 351, 14200, 1),
(3, 'FRANCIAORSZÁG', 'PÁRIZS', 'Nyugat-Európa', '547026.00', 'köztársaság', 66860, 11300, 'F', 'FRANCIAORSZAG FRANCE FRANCAISE', 'PARIS (PARIZS)', 'euró', 'EUR', '100 eurocent', 33, 27520, 1),
(4, 'NAGY-BRITANNIA', 'LONDON', 'Európa:Britt-szigetek', '244046.00', 'alkotmányos monarchia', 65200, 7200, 'GB', 'NAGY-BRITANNIANGLIASKOCIAWALES', 'LONDON', 'font', 'GBP', '100 penny', 44, 29070, 1),
(5, 'NORVÉGIA', 'OSLO', 'Észak-Európa:Skandináv-félsziget', '324219.00', 'alkotmányos monarchia', 4600, 800, 'N', 'NORVEGIA                NORWAY', 'OSLO', 'norvég korona', 'NOK', '100 öre', 47, 49090, 1),
(6, 'SVÉDORSZÁG', 'STOCKHOLM', 'Észak-Európa:Skandináv-félsziget', '449964.00', 'alkotmányos monarchia', 8870, 1600, 'S', 'SVEDORSZAG              SWEDEN', 'STOCKHOLM', 'svéd korona', 'SEK', '100 öre', 46, 31820, 1),
(7, 'FINNORSZÁG', 'HELSINKI', 'Észak-Európa', '338107.00', 'köztársaság', 5200, 1100, 'SF', 'FINNORSZAG             FINLAND', 'HELSINKI', 'euró', 'EUR', '100 eurocent', 358, 30360, 1),
(8, 'NÉMETORSZÁG', 'BERLIN', 'Nyugat-Európa', '357042.00', 'szövetségi köztársaság', 82400, 5900, 'D', 'NEMETORSZAG DEUTSCHLANDGERMANY', 'BERLIN', 'euró', 'EUR', '100 eurocent', 49, 28260, 1),
(9, 'SVÁJC', 'BERN', 'Közép-Európa:Alpok', '41293.00', 'szövetségi köztársaság', 7260, 100, 'CH', 'SVAJC      SWITZERLAND SCHWEIZ', 'BERN', 'svájci frank', 'CHF', '100 rappen', 41, 42700, 1),
(10, 'AUSZTRIA', 'BÉCS', 'Közép-Európa:Alpok', '83858.00', 'szövetségi köztársaság', 8130, 1600, 'A', 'AUSZTRIA    OSTERREICH AUSTRIA', 'WIEN (BECS)', 'euró', 'EUR', '100 eurocent', 43, 30180, 1),
(11, 'OLASZORSZÁG', 'RÓMA', 'Dél-Európa:Appennini-félsziget', '301252.00', 'köztársaság', 60600, 3600, 'I', 'OLASZORSZAG       ITALIA ITALY', 'ROMA', 'euró', 'EUR', '100 eurocent', 39, 24390, 1),
(12, 'MAGYARORSZÁG', 'BUDAPEST', 'Közép-Európa:Kárpát-medence', '93036.00', 'köztársaság', 10100, 2600, 'H', 'MAGYARORSZAG    HUNGARY UNGARN', 'BUDAPEST', 'forint', 'HUF', '100 fillér', 36, 11200, 1),
(13, 'SZERBIA', 'BELGRÁD', 'Dél-Európa:Balkán-félsziget', '88361.00', 'szövetségi köztársaság', 9400, 1700, 'SRB', 'JUGOSZLAVIA SZERBIA YUGOSLAVIA', 'BEOGRAD (BELGRAD)', 'dinár', 'CSD', '100 para', 381, 3200, 1),
(14, 'BULGÁRIA', 'SZÓFIA', 'Dél-Európa:Balkán-félsziget', '110912.00', 'köztársaság', 7900, 1140, 'BG', 'BULGARIA', 'SZOFIJA (SZOFIA)', 'leva', 'BGL', '100 sztotinka', 359, 2140, 1),
(15, 'ROMÁNIA', 'BUKAREST', 'Kelet-Európa', '237500.00', 'köztársaság', 22410, 2200, 'RO', 'ROMANIA', 'BUCURESTI  BUKAREST', 'lei', 'ROL', '100 bani', 40, 2240, 1),
(16, 'SZLOVÁKIA', 'POZSONY', 'Közép-Európa:Kárpátok', '49036.00', 'köztársaság', 5400, 500, 'SK', 'SZLOVAKIA  SLOVAKIA  SLOVENSKO', 'BRATISLAVA  POZSONY', 'euró', 'EUR', '100 eurocent', 421, 5810, 1),
(17, 'CSEHORSZÁG', 'PRÁGA', 'Közép-Európa', '78864.00', 'köztársaság', 10300, 1300, 'CZ', 'CSEHORSZAG        CSEHSZLOVAKIA', 'PRAHA (PRAGA)', 'cseh korona', 'CZK', '100 haler', 42, 7990, 1),
(18, 'LENGYELORSZÁG', 'VARSÓ', 'Közép-Európa', '312677.00', 'köztársaság', 38600, 2200, 'PL', 'LENGYELORSZAG           POLAND', 'WARSZAWA (VARSO)', 'zloty', 'PLZ', '100 grosz', 48, 5370, 1),
(19, 'OROSZORSZÁG', 'MOSZKVA', 'Eurázsia', '17075400.00', 'szövetségi köztársaság', 146000, 12000, 'RUS', 'OROSZORSZAG SZOVJETUNIO FAK SZU', 'MOSZKVA', 'rubel', 'RUR', '100 kopejka', 7, 2910, 1),
(20, 'GÖRÖGORSZÁG', 'ATHÉN', 'Dél-Európa:Balkán-félsziget', '131944.00', 'köztársaság', 11000, 3300, 'GR', 'GOROGORSZAG GRIECHENLAND GREECE', 'ATHINE ATHENAI', 'euró', 'EUR', '100 eurocent', 30, 15060, 1),
(21, 'TÖRÖKORSZÁG', 'ANKARA', 'Eurázsia', '780576.00', 'köztársaság', 71300, 3600, 'TR', 'TOROKORSZAG             TURKEY', 'ANKARA', 'lira', 'TRL', '100 kurus', 90, 3110, 1),
(22, 'DÁNIA', 'KOPPENHÁGA', 'Nyugat-Európa:Jylland', '43075.00', 'alkotmányos monarchia', 5300, 1100, 'DK', 'DANIA                  DENMARK', 'KOPPENHAGA', 'dán korona', 'DKK', '100 öre', 45, 38120, 1),
(23, 'IZLAND', 'REYKJAVIK', 'Európa:Atlanti-óceán (szigetország)', '102829.00', 'köztársaság', 277, 100, 'IS', 'IZLAND          ISLAND ICELAND', 'REYKJAVIK', 'izlandi korona', 'ISK', '100 aurar', 354, 35780, 1),
(24, 'ALBÁNIA', 'TIRANA', 'Dél-Európa:Balkán-félsziget', '28748.00', 'köztársaság', 3490, 400, 'AL', 'ALBANIA', 'TIRANA', 'lek', 'ALL', '100 quindarka', 355, 1690, 1),
(25, 'BELGIUM', 'BRÜSSZEL', 'Nyugat-Európa', '30519.00', 'alkotmányos monarchia', 10300, 1700, 'B', 'BELGIUM', 'BRUXELLES  BRUSSZEL', 'euró', 'EUR', '100 eurocent', 32, 28800, 1),
(26, 'HOLLANDIA', 'AMSZTERDAM', 'Nyugat-Európa', '41548.00', 'alkotmányos monarchia', 16100, 700, 'NL', 'HOLLANDIANIEDERLANDENETHERLAND', 'AMSZTERDAM - HAGA', 'euró', 'EUR', '100 eurocent', 31, 30800, 1),
(27, 'LUXEMBURG', 'LUXEMBOURG', 'Nyugat-Európa', '2586.40', 'nagyhercegség', 438, 90, 'L', 'LUXEMBURG', 'LUXEMBOURGLUXEMBURG', 'euro', 'EUR', '100 eurocent', 352, 52510, 1),
(28, 'LIECHTENSTEIN', 'VADUZ', 'Közép-Európa:Alpok(törpeállam)', '160.00', 'hercegség', 30, 5, 'FL', 'LIECHTENSTEIN', 'VADUZ', 'svájci frank', 'CHF', '100 rappen', 41, 41400, 1),
(29, 'MÁLTA', 'VALLETTA', 'Európa:Földközi-tenger (szigetország)', '316.00', 'köztársaság', 392, 200, 'M', 'MALTA', 'VALLETTA', 'euró', 'EUR', '100 eurocent', 356, 9840, 1),
(30, 'CIPRUS', 'NICOSIA', 'Európa:Földközi-tenger (szigetország)', '9251.00', 'köztársaság', 758, 200, 'CY', 'CIPRUS                  CYPRUS', 'NICOSIA', 'euró', 'EUR', '100 eurocent', 357, 19010, 1),
(31, 'ÍRORSZÁG', 'DUBLIN', 'Európa:Britt-szigetek', '70283.00', 'köztársaság', 3800, 1000, 'IRL', 'IRORSZAG               IRELAND', 'DUBLIN', 'euró', 'EUR', '100 erocent', 353, 38430, 1),
(32, 'EGYIPTOM', 'KAIRÓ', 'Észak-Afrika', '1001449.00', 'elnöki köztársaság', 92300, 15900, 'ET', 'EGYIPTOM', 'AL QAHIRAH (KAIRO)', 'egyiptomi font', 'EGP', '100 piaszter', 20, 1300, 1),
(33, 'MAROKKÓ', 'RABAT', 'Észak-Afrika:Atlasz', '446550.00', 'alkotmányos monarchia', 30500, 1600, 'MA', 'MAROKKO         NYUGAT-SZAHARA', 'RABAT', 'marokkói dirham', 'MAD', '100 cent', 212, 1499, 1),
(34, 'INDIA', 'NEW DELHI', 'Ázsia:Hindusztáni-félsziget', '3287590.00', 'szövetségi köztársaság', 1330000, 10000, 'IND', 'INDIA', 'NEW DELHI', 'indiai rupia', 'INR', '100 paisa', 91, 500, 1),
(35, 'JAPÁN', 'TOKIÓ', 'Ázsia:Távol-Kelet', '372769.00', 'alkotmányos monarchia', 127600, 31100, 'J', 'JAPAN', 'TOKYO (TOKIO)', 'yen', 'JPY', '100 sen', 81, 33350, 1),
(36, 'KÍNA', 'PEKING', 'Ázsia', '9608378.00', 'népköztársaság', 1381000, 15800, 'RC', 'KINA', 'PEKING', 'jüan', 'CNY', '100 jiao', 86, 1090, 1),
(37, 'KANADA', 'OTTAWA', 'Észak-Amerika', '9976139.00', 'szövetségi állam', 31700, 1100, 'CDN', 'KANADA                  CANADA', 'OTTAWA', 'kanadai dollár', 'CAD', '100 cent', 1, 25650, 1),
(38, 'MEXIKÓ', 'MEXIKÓVÁROS', 'Közép-Amerika', '1972547.00', 'szövetségi köztársaság', 122300, 21200, 'MEX', 'MEXIKO                  MEXICO', 'MEXIKOVAROS', 'mexikói peso', 'MXP', '100 centavo', 52, 5930, 1),
(39, 'KUBA', 'HAVANNA', 'Közép-Amerika (szigetország)', '110922.00', 'köztársaság', 11300, 2700, 'C', 'KUBA                      CUBA', 'LA HABANA (HAVANNA)', 'kubai peso', 'CUP', '100 centavo', 53, 1700, 1),
(40, 'BRAZÍLIA', 'BRASÍLIA', 'Dél-Amerika', '8511965.00', 'szövetségi köztársaság', 207000, 2100, 'BR', 'BRAZILIA', 'BRASILIA', 'cruzeiro real', 'BRR', '100 centavo', 55, 2470, 1),
(41, 'ARGENTÍNA', 'BUENOS AIRES', 'Dél-Amerika', '2776889.00', 'köztársaság', 38400, 2800, 'RA', 'ARGENTINA', 'BUENOS AIRES', 'peso', 'ARP', '100 centavo', 54, 3170, 1),
(42, 'NEPÁL', 'KATMANDU', 'Ázsia:Himalája', '140797.00', 'alkotmányos monarchia', 24700, 1200, 'NEP', 'NEPAL', 'KATMANDU', 'nepáli rupia', 'NPR', '100 paisa', 977, 240, 2),
(43, 'ALGÉRIA', 'ALGÍR', 'Észak-Afrika', '2381741.00', 'köztársaság', 31800, 3000, 'DZ', 'ALGERIA', 'ALGER ALGIR', 'dinár', 'DZD', '100 centime', 213, 2080, 2),
(44, 'KENYA', 'NAIROBI', 'Kelet-Afrika', '582646.00', 'elnöki köztársaság', 32000, 3100, 'EAK', 'KENYA', 'NAIROBI', 'kenyai shilling', 'KSH', '100 cent', 254, 410, 1),
(45, 'MONACO', 'MONACO', 'Európa:Francia-Riviéra (törpeállam)', '1.95', 'alkotmányos monarchia', 30, 1, 'MC', 'MONACO', 'MONACO', 'euró', 'EUR', '100 eurocent', 33, 34610, 1),
(46, 'ANDORRA', 'ANDORRA LA VELLA', 'Európa:Pireneusok (törpeállam)', '468.00', 'autonóm hercegség', 70, 20, 'AND', 'ANDORRA', 'ANDORRA LA VELLA', 'euró', 'EUR', '100 eurocent', 376, 17140, 1),
(47, 'IZRAEL', 'TEL-AVIV', 'Ázsia:Közel-Kelet', '20770.00', 'parlamentáris köztársaság', 6400, 700, 'IL', 'IZRAEL', 'TEL AVIV-YAFO JAFFA', 'sékel', 'ISL', '100 új agora', 972, 15420, 1),
(48, 'LIBANON', 'BEJRUT', 'Ázsia:Közel-Kelet', '10400.00', 'köztársaság', 3600, 1200, 'RL', 'LIBANON', 'BAYRUT (BEJRUT)', 'libanoni font', 'LBP', '100 piaszter', 961, 4970, 1),
(49, 'AUSZTRÁLIA', 'CANBERRA', 'Ausztrália', '7686420.00', 'államszövetség', 19700, 300, 'AUS', 'AUSZTRALIA           AUSTRALIA', 'CANBERRA', 'dollár', 'AUD', '100 cent', 61, 30060, 1),
(50, 'TUNÉZIA', 'TUNISZ', 'Észak-Afrika', '163610.00', 'elnöki köztársaság', 9800, 1600, 'TN', 'TUNEZIA', 'TUNISZ', 'tunéziai dinár', 'TND', '1000 milliéme', 216, 2510, 1),
(51, 'LÍBIA', 'TRIPOLI', 'Észak-Afrika', '1759540.00', 'iszlám népköztársaság', 5500, 1300, 'LAR', 'LIBIA', 'TARABULUS (TRIPOLI)', 'libiai dinár', 'LYD', '100 darham', 218, 4127, 2),
(52, 'ETIÓPIA', 'ADDISZ-ABEBA', 'Kelet-Afrika', '1130138.00', 'köztársaság', 92300, 2700, 'ETH', 'ETIOPIA', 'ADDISZ-ABEBA', 'birr', 'ETB', '100 cent', 251, 90, 2),
(53, 'ERITREA', 'ASZMARA', 'Kelet-Afrika', '121320.00', 'köztársaság', 3500, 900, 'ER', 'ERITREA', 'ASZMARA', 'nafka', 'ETB', '100 cent', 291, 180, 3),
(54, 'KONGÓ (ZAIRE)', 'KINSHASA', 'Közép-Afrika', '2345409.00', 'elnöki köztársaság', 82300, 6500, 'RDC', 'KONGO ZAIRE', 'KINSHASA', 'zadre', 'ZRN', '100 makuta', 243, 110, 3),
(55, 'IRAK', 'BAGDAD', 'Ázsia:Közel-Kelet', '438466.00', 'elnöki köztársaság', 25100, 5800, 'IRQ', 'IRAK                      IRAQ', 'BAGHDAD (BAGDAD)', 'iraki dinár', 'IQD', '1000 fil', 964, 2100, 1),
(56, 'IRÁN', 'TEHERÁN', 'Ázsia:Közel-Kelet', '1648000.00', 'iszlám köztársaság', 79800, 11200, 'IR', 'IRAN', 'TEHRAN (TEHERAN)', 'iráni rial', 'IRR', '100 dinár', 98, 1900, 1),
(57, 'SZÍRIA', 'DAMASZKUSZ', 'Ázsia:Közel-Kelet', '185180.00', 'elnöki köztársaság', 17800, 1900, 'SYR', 'SZIRIA                   SYRIA', 'DIMASHO  DAMASZKUSZ', 'sziriai font', 'SYP', '100 piaszter', 963, 1330, 2),
(58, 'JORDÁNIA', 'AMMÁN', 'Ázsia:Közel-Kelet', '97740.00', 'alkotmányos monarchia', 5500, 2700, 'JOR', 'JORDANIA', 'AMMAN', 'jordániai dinár', 'JOD', '1000 fil', 962, 1840, 2),
(59, 'MADAGASZKÁR', 'ANTANANARIVO', 'Kelet-Afrika (szigetország)', '587041.00', 'elnöki köztársaság', 17400, 1400, 'RM', 'MADAGASZKAR', 'ANTANANARIVO', 'madagaszkári frank', 'MGF', '100 centime', 261, 290, 2),
(60, 'CHILE', 'SANTIAGO', 'Dél-Amerika:Andok', '756626.00', 'köztársaság', 15100, 5300, 'RCH', 'CHILE', 'SANTIAGO', 'chilei peso', 'CLP', '100 centavo', 56, 4390, 2),
(61, 'PERU', 'LIMA', 'Dél-Amerika:Andok', '1285216.00', 'elnöki köztársaság', 27100, 8100, 'PE', 'PERU', 'LIMA', 'sol', 'PES', '100 centavo', 51, 2150, 2),
(62, 'ECUADOR', 'QUITO', 'Dél-Amerika:Andok', '283561.00', 'elnöki köztársaság', 13700, 1800, 'EC', 'ECUADOR', 'QUITO', 'sucre', 'ECS', '100 centavo', 593, 1940, 2),
(63, 'URUGUAY', 'MONTEVIDEO', 'Dél-Amerika', '176215.00', 'elnöki köztársaság', 3400, 1700, 'U', 'URUGUAY', 'MONTEVIDEO', 'uruguayi peso', 'UYP', '100 centésimo', 598, 2290, 2),
(64, 'BOLÍVIA', 'LA PAZ', 'Dél-Amerika', '1098581.00', 'elnöki köztársaság', 8400, 1200, 'BOL', 'BOLIVIA', 'LA PAZ', 'boliviano', 'BOB', '100 centavo', 591, 980, 2),
(65, 'PARAGUAY', 'ASUNCION', 'Dél-Amerika', '406752.00', 'elnöki köztársaság', 5800, 1500, 'PY', 'PARAGUAY', 'ASUNCION', 'guarani', 'PYG', '100 centimo', 595, 1400, 2),
(66, 'KOLUMBIA', 'BOGOTÁ', 'Dél-Amerika', '1138914.00', 'elnöki köztársaság', 44200, 6800, 'CO', 'KOLUMBIA              COLUMBIA', 'BOGOTA', 'kolumbiai peso', 'COP', '100 centavo', 57, 1610, 2),
(67, 'VENEZUELA', 'CARACAS', 'Dél-Amerika', '912050.00', 'köztársaság', 25700, 3500, 'YV', 'VENEZUELA', 'CARACAS', 'bolivar', 'VEB', '100 centimo', 58, 3120, 2),
(68, 'GUYANA', 'GEORGETOWN', 'Dél-Amerika', '214699.00', 'köztársaság', 810, 200, 'GUY', 'GUYANA', 'GEORGETOWN', 'guyanai dollár', 'GYD', '100 cent', 592, 940, 3),
(69, 'SURINAME', 'PARAMARIBO', 'Dél-Amerika', '163265.00', 'köztársaság', 430, 200, 'SME', 'SURINAME', 'PARAMARIBO', 'surinamei gulden', 'SRG', '100 cent', 597, 2250, 3),
(70, 'VATIKÁN', 'VATIKÁN', 'Európa (városállam Rómánál)', '0.44', 'teokratikus abszolút monarchia', 1, 1, 'V', 'VATIKAN', 'VATIKAN', 'euró', 'EUR', '100 eurocent', 379, 0, 1),
(71, 'PAKISZTÁN', 'ISLAMABAD', 'Közép-Ázsia', '803943.00', 'köztársaság', 205000, 800, 'PAK', 'PAKISZTAN', 'ISLAMABAD', 'pakisztáni rupia', 'PKR', '100 paisa', 92, 500, 2),
(72, 'AFGANISZTÁN', 'KABUL', 'Közép-Ázsia', '652225.00', 'köztársaság', 25814, 2200, 'AFG', 'AFGANISZTAN', 'KABUL', 'afgani', 'AFA', '100 puli', 93, 700, 2),
(73, 'BANGLADES', 'DHAKA', 'Ázsia:Hindusztáni-alföld', '147570.00', 'köztársaság', 161000, 10400, 'BD', 'BANGLADES', 'DHAKA DACCA', 'taka', 'BDT', '100 paisa', 880, 370, 2),
(74, 'BHUTÁN', 'THIMBU', 'Ázsia:Himalája', '47000.00', 'alkotmányos monarchia', 1500, 60, 'BTN', 'BHUTAN', 'THIMBU', 'ngultrum', 'INR', '100 chetrum', 975, 1060, 3),
(75, 'MIANMAR (BURMA)', 'RANGOON', 'Ázsia:Indokinai-félsziget', '678528.00', 'szocialista köztársaság', 54600, 5500, 'MYA', 'BURMA                  MIANMAR', 'RANGOON      RANGUN', 'kyat', 'BUK', '100 pya', 95, 590, 3),
(76, 'THAIFÖLD', 'BANGKOK', 'Ázsia:Indokinai-félsziget', '513115.00', 'alkotmányos monarchia', 68100, 8800, 'T', 'THAIFOLD              THAILAND', 'KRUNG THEP  BANGKOK', 'baht', 'THB', '100 satang', 66, 2060, 2),
(77, 'KAMBODZSA', 'PHNOM PENH', 'Ázsia:Indokinai-félsziget', '181035.00', 'köztársaság', 14100, 1200, 'K', 'KAMBODZSA', 'PHNOM PENH', 'riel', 'KHR', '100 sen', 855, 280, 2),
(78, 'VIETNAM', 'HANOI', 'Ázsia:Indokinai-félsziget', '329556.00', 'köztársaság', 92700, 2600, 'VN', 'VIETNAM', 'HA NOI (HANOI)', 'dong', 'VND', '10 hao', 84, 460, 2),
(79, 'LAOSZ', 'VIANGCHAN', 'Ázsia:Indokinai-félsziget', '236800.00', 'népköztársaság', 5600, 300, 'LAO', 'LAOSZ', 'VIANGCHAN', 'kip', 'LAK', '100 at', 856, 340, 3),
(80, 'MALAJZIA', 'KUALA LUMPUR', 'Dél-Kelet-Ázsia', '329749.00', 'alkotmányos monarchia', 24400, 3700, 'MAL', 'MALAYSIA MALAJZIA', 'KUALA LUMPUR', 'ringgit', 'MYR', '100 cent', 60, 4090, 2),
(81, 'INDONÉZIA', 'JAKARTA', 'Ázsia:Indonéz-szigetek', '1919443.00', 'köztársaság', 260580, 17900, 'RI', 'INDONEZIA', 'JAKARTA', 'indonéz rupia', 'IDR', '100 sen', 62, 970, 2),
(82, 'BOTSWANA', 'GABORONE', 'Dél-Afrika:Kalahári-medence', '600372.00', 'elnöki köztársaság', 1800, 1500, 'RB', 'BOTSWANA', 'GABORONE', 'pula', 'BWP', '100 thebe', 267, 3900, 2),
(83, 'LESOTHO', 'MASERU', 'Dél-Afrika', '30355.00', 'alkotmányos monarchia', 1800, 400, 'LS', 'LESOTHO', 'MASERU', 'loti', 'LSL', '100 lisente', 266, 380, 2),
(84, 'ZIMBABWE', 'HARARE', 'Dél-Afrika', '390622.00', 'köztársaság', 12900, 2300, 'ZW', 'ZIMBABWE', 'HARARE', 'zimbabwei dollár', 'ZWD', '100 cent', 263, 910, 3),
(85, 'ZAMBIA', 'LUSAKA', 'Dél-Afrika', '752614.00', 'elnöki köztársaság', 10800, 1800, 'Z', 'ZAMBIA', 'LUSAKA', 'kwacha', 'ZMK', '100 nrwee', 260, 320, 3),
(86, 'NAMÍBIA', 'WINDHOEK', 'Dél-Afrika', '823168.00', 'köztársaság', 1770, 200, 'NAM', 'NAMIBIA', 'WINDHOEK', 'dél-afrikai rand', 'ZAR', '100 cent', 264, 1560, 2),
(87, 'MOZAMBIK', 'MAPUTO', 'Dél-Kelet-Afrika', '799380.00', 'népköztársaság', 18800, 1600, 'MOC', 'MOZAMBIK', 'MAPUTO', 'metical', 'MZM', '100 centavo', 258, 230, 3),
(88, 'MALAWI', 'LILONGWE', 'Dél-Kelet-Afrika', '118484.00', 'elnöki köztársaság', 12100, 500, 'MW', 'MALAWI', 'LILONGWE', 'kwacha', 'MWK', '100 tambala', 265, 180, 3),
(89, 'ANGOLA', 'LUANDA', 'Dél-Afrika', '1246700.00', 'köztársaság', 13600, 2700, 'ANG', 'ANGOLA', 'LUANDA', 'kwanza', 'NKZ', '100 iwei', 244, 940, 3),
(90, 'TANZÁNIA', 'DAR ES SALAAM', 'Kelet-Afrika', '945087.00', 'szövetségi köztársaság', 55150, 1500, 'EAT', 'TANZANIA', 'DAR ES SALAAM', 'tanzániai shilling', 'TZS', '100 cent', 255, 280, 2),
(91, 'MONGÓLIA', 'ULÁNBÁTOR', 'Közép-Ázsia', '1565000.00', 'népköztársaság', 2650, 800, 'MNG', 'MONGOLIA', 'ULANBATOR', 'tugrik', 'MNT', '100 mongo', 976, 480, 1),
(92, 'BELIZE', 'BELMOPAN', 'Közép-Amerika', '22965.00', 'alkotmányos monarchia', 205, 10, 'BH', 'BELIZE', 'BELMOPAN', 'belizei dollár', 'BZD', '100 cent', 501, 3410, 3),
(93, 'HONDURAS', 'TEGUCIGALPA', 'Közép-Amerika', '112088.00', 'elnöki köztársaság', 6800, 1400, 'HN', 'HONDURAS', 'TEGUCIGALPA', 'lempira', 'HNL', '100 centavo', 504, 1010, 3),
(94, 'SALVADOR', 'SAN SALVADOR', 'Közép-Amerika', '21041.00', 'elnöki köztársaság', 6200, 1800, 'ES', 'SALVADOR', 'SAN SALVADOR', 'salvadori colon', 'SVC', '100 cent', 503, 2340, 2),
(95, 'NICARAGUA', 'MANAGUA', 'Közép-Amerika', '130000.00', 'elnöki köztársaság', 4900, 1400, 'NIC', 'NICARAGUA', 'MANAGUA', 'cordoba', 'NIO', '100 centavo', 505, 551, 2),
(96, 'PANAMA', 'PANAMA', 'Közép-Amerika', '75650.00', 'elnöki köztársaság', 3100, 1100, 'PA', 'PANAMA', 'PANAMA', 'balboa', 'PAB', '100 centesimo', 507, 3710, 2),
(97, 'GUATEMALA', 'GUATEMALA', 'Közép-Amerika', '108889.00', 'elnöki köztársaság', 13900, 2700, 'GCA', 'GUATEMALA', 'GUATEMALA', 'quetzal', 'GTQ', '100 centavo', 502, 1420, 3),
(98, 'BAHAMA-SZIGETEK', 'NASSAU', 'Közép-Amerika:Nagy-Antillák', '13939.00', 'alkotmányos monarchia', 266, 173, 'BS', 'BAHAMA-SZIGETEK', 'NASSAU', 'bahamai dollár', 'BSD', '100 cent', 1, 18690, 2),
(99, 'JAMAICA', 'KINGSTON', 'Közép-Amerika:Nagy-Antillák', '10991.00', 'alkotmányos monarchia', 2600, 900, 'JA', 'JAMAICA', 'KINGSTON', 'jamaicai dollár', 'JMD', '100 cent', 1, 3000, 2),
(100, 'BENIN', 'PORTO NOVO', 'Nyugat-Afrika', '112622.00', 'elnöki köztársaság', 6700, 208, 'DY', 'BENIN', 'PORTO NOVO', 'CFA-frank', 'XOF', '100 centime', 229, 450, 3),
(101, 'CSÁD', 'N\'DJAMENA', 'Közép-Afrika', '1284000.00', 'elnöki köztársaság', 8600, 600, 'TCH', 'CSAD', 'N\'DJAMENA', 'CFA-frank', 'XAF', '100 centime', 235, 210, 3),
(102, 'GABON', 'LIBREVILLE', 'Közép-Nyugat-Afrika', '267667.00', 'elnöki köztársaság', 1208, 700, 'GAB', 'GABON', 'LIBREVILLE', 'CFA-frank', 'XAF', '100 centime', 241, 4190, 3),
(103, 'GHÁNA', 'ACCRA', 'Nyugat-Afrika', '238537.00', 'köztársaság', 20900, 2800, 'GH', 'GHANA', 'ACCRA', 'cedi', 'GHC', '100 pesewa', 233, 340, 3),
(104, 'GUINEA', 'CONAKRY', 'Nyugat-Afrika', '245857.00', 'elnöki köztársaság', 8500, 1800, '', 'GUINEA', 'CONAKRY', 'syli', 'GNF', '100 cauri', 224, 360, 3),
(105, 'KAMERUN', 'YAOUNDÉ', 'Közép-Nyugat-Afrika', '475442.00', 'elnöki köztársaság', 16000, 1400, 'RCF', 'KAMERUN', 'YAOUNDE', 'CFA-frank', 'XAF', '100 centime', 237, 670, 3),
(106, 'KONGÓI KÖZTÁRSASÁG', 'BRAZZAVILLE', 'Közép-Afrika', '342000.00', 'köztársaság', 3700, 1200, 'RCB', 'FRANCIA KONGOI KOZTARSASAG', 'BRAZZAVILLE', 'CFA-frank', 'XAF', '100 centime', 242, 1040, 3),
(107, 'LIBÉRIA', 'MONROVIA', 'Nyugat-Afrika', '111369.00', 'elnöki köztársaság', 3300, 1300, 'LB', 'LIBERIA', 'MONROVIA', 'libériai dollár', 'LRD', '100 cent', 231, 170, 3),
(108, 'MALI', 'BAMAKO', 'Észak-Nyugat-Afrika', '1240142.00', 'elnöki köztársaság', 10800, 1300, 'RMM', 'MALI', 'BAMAKO', 'CFA-frank', 'XOF', '100 centime', 223, 280, 3),
(109, 'MAURITÁNIA', 'NOUAKCHOTT', 'Észak-Nyugat-Afrika', '1030700.00', 'elnöki köztársaság', 2900, 700, 'RIM', 'MAURITANIA', 'NOUAKCHOTT', 'ouguiya', 'MRO', '5 khoum', 222, 370, 3),
(110, 'NIGER', 'NIAMEY', 'Közép-Afrika', '1267000.00', 'elnöki köztársaság', 11900, 700, 'RN', 'NIGER', 'NIAMEY', 'CFA-frank', 'XOF', '100 centime', 227, 210, 3),
(111, 'NIGÉRIA', 'LAGOS', 'Közép-Nyugat-Afrika', '923768.00', 'föderativ köztársaság', 190000, 600, 'WAN', 'NIGERIA', 'LAGOS', 'naira', 'NGN', '100 kobo', 234, 340, 3),
(112, 'RUANDA', 'KIGALI', 'Közép-Afrika', '26338.00', 'elnöki köztársaság', 8400, 300, 'RWA', 'RUANDA', 'KIGALI', 'ruandai frank', 'RWF', '100 centime', 250, 210, 3),
(113, 'SZENEGÁL', 'DAKAR', 'Nyugat-Afrika', '196192.00', 'köztársaság', 10100, 2500, 'SN', 'SZENEGAL', 'DAKAR', 'CFA-frank', 'XOF', '100 centime', 221, 590, 3),
(114, 'SZOMÁLIA', 'MUQDISHO', 'Kelet-Afrika', '637657.00', 'köztársaság', 8000, 1200, 'SP', 'SZOMALIA', 'MUQDISHO  MOGADISHU', 'szomáli shilling', 'SOS', '100 centesimo', 252, 500, 3),
(115, 'SZUDÁN', 'KARTÚM', 'Észak-Kelet-Afrika', '2505813.00', 'köztársaság', 35000, 5700, 'SUD', 'SZUDAN', 'KARTUM', 'szudáni dinár', 'SDD', '100 piaszter', 249, 440, 3),
(116, 'SZVÁZIFÖLD', 'MBABANE', 'Dél-Kelet-Afrika', '17364.00', 'alkotmányos monarchia', 1080, 70, 'SD', 'SZVAZIFOLD', 'MBABANE', 'lilangeni', 'SZL', '100 cent', 268, 1490, 3),
(117, 'TOGO', 'LOME', 'Nyugat-Afrika', '56785.00', 'elnöki köztársaság', 4900, 700, 'TG', 'TOGO', 'LOME', 'CFA-frank', 'XOF', '100 centime', 228, 290, 3),
(118, 'UGANDA', 'KAMPALA', 'Közép-Kelet-Afrika', '236036.00', 'elnöki köztársaság', 25800, 1500, 'EAU', 'UGANDA', 'KAMPALA', 'ugandai shilling', 'UGS', '100 cent', 256, 260, 3),
(119, 'DÉL-AFRIKAI KÖZTÁRSASÁG', 'PRETORIA', 'Dél-Afrika', '1221037.00', 'szövetségi köztársaság', 55900, 1600, 'ZA', 'DEL-AFRIKAI KOZTARSASAG', 'PRETORIA', 'rand', 'ZAR', '100 cent', 27, 3180, 2),
(120, 'BURKINA FASO', 'OUAGADOUGOU', 'Nyugat-Afrika', '274200.00', 'köztársaság', 13000, 680, 'BF', 'BURKINA FASO     (FELSO-VOLTA)', 'OUAGADOUGOU', 'CFA-frank', 'XOF', '100 centime', 226, 270, 3),
(121, 'SIERRA LEONE', 'FREETOWN', 'Nyugat-Afrika', '71740.00', 'elnöki köztársaság', 5100, 1100, 'WAL', 'SIERRA LEONE', 'FREETOWN', 'leone', 'SLL', '100 cent', 232, 170, 3),
(122, 'ÚJ-ZÉLAND', 'WELLINGTON', 'Csendes-óceán (Óceániától délre)', '269112.00', 'alkotmányos monarchia', 3800, 300, 'NZ', 'UJ-ZELAND           NEW-ZELAND', 'WELLINGTON', 'új-zélandi dollár', 'NZD', '100 cent', 64, 18080, 1),
(123, 'SRI LANKA', 'COLOMBO', 'Dél-Ázsia:Indiai-óceán (szigetország)', '65610.00', 'elnöki köztársaság', 19200, 2400, 'CL', 'SRI LANKA               CEYLON', 'COLOMBO', 'rupia', 'LKR', '100 cent', 94, 880, 2),
(124, 'SZAUD-ARÁBIA', 'RIJÁD', 'Ázsia:Arab-félsziget', '2149690.00', 'iszlám abszolút monarchia', 24200, 3700, 'KSA', 'SZAUD-ARABIA', 'AR RIYAD (RIJAD)', 'szaudi rial', 'SAR', '100 halalah', 966, 9550, 2),
(125, 'AMERIKAI EGYESÜLT ÁLLAMOK', 'WASHINGTON', 'Észak-Amerika', '9809155.00', 'szövetségi köztársaság', 325200, 600, 'USA', 'AMERIKAI EGYESULT ALLAMOK  USA', 'WASHINGTON', 'dollár', 'USD', '100 cent', 1, 37300, 1),
(126, 'FÜLÖP-SZIGETEK', 'MANILA', 'Ázsia:Távol-Kelet', '300000.00', 'elnöki köztársaság', 103600, 13800, 'RP', 'FULOP-SZIGETEK     PHILIPPINES', 'MANILA', 'peso', 'PHP', '100 centavo', 63, 980, 2),
(127, 'KATAR', 'DOHA', 'Ázsia:Arab-félsziget', '11437.00', 'abszolút monarchia', 600, 500, 'Q', 'KATAR                    QATAR', 'AD DAWHAH (DOHA)', 'katari rial', 'QAR', '100 dirham', 974, 32460, 3),
(128, 'OMÁN', 'MASZKAT', 'Ázsia:Arab-félsziget', '212457.00', 'abszolút monarchia', 2800, 800, 'OM', 'OMAN', 'MASQAT (MASZKAT)', 'ománi rial', 'OMR', '100 baiza', 968, 8590, 3),
(129, 'FIDZSI-SZIGETEK', 'SUVA', 'Óceánia:Melanézia', '18272.00', 'köztársaság', 832, 200, 'FJI', 'FIDZSI-SZIGETEK           FIJI', 'SUVA', 'fidzsi dollár', 'FJD', '100 cent', 679, 2090, 3),
(130, 'SZAMOA', 'APIA', 'Óceánia:Polinézia', '2842.00', 'királyság', 179, 40, 'WS', 'NYUGAT-SZAMOA        WESTSAMOA', 'APIA', 'tala', 'WST', '100 sene', 685, 1480, 3),
(131, 'DÉL-KOREA', 'SZÖUL', 'Ázsia:Koreai-félsziget', '98484.00', 'köztársaság', 50800, 19900, 'ROK', 'DEL-KOREA', 'SEOUL (SZOUL)', 'won', 'KRW', '100 hwan', 850, 10480, 1),
(132, 'ÉSZAK-KOREA', 'PHENJAN', 'Ázsia:Koreai-félsziget', '120538.00', 'népi demokratikus köztársaság', 22600, 3200, '', 'ESZAK-KOREAI N.D.K.       KNDK', 'PHJONGJANG  PHENJAN', 'won', 'KPW', '100 chon', 82, 1000, 1),
(133, 'VANUATU', 'PORT-VILA', 'Óceánia:Melanézia', '14763.00', 'parlamentáris köztársaság', 190, 40, 'VU', 'VANUATU', 'PORT-VILA', 'vatu', 'VUV', '100 centime', 678, 1170, 3),
(134, 'TUVALU', 'FUNAFUTI', 'Óceánia:Melanézia:Ellice-szk.', '26.00', 'alkotmányos monarchia', 11, 5, 'TUV', 'TUVALU', 'FUNAFUTI', 'ausztráliai dollár', 'AUD', '100 cent', 688, 330, 3),
(135, 'TONGA', 'NUKU\'ALOFA', 'Óceánia:Melanézia-Polinézia', '748.00', 'alkotmányos királyság', 102, 20, 'TO', 'TONGA', 'NUKU\'ALOFA', 'tongai dollár', 'TOP', '100 seniti', 676, 1550, 3),
(136, 'NAURU', 'YAREN', 'Óceánia:Mikronézia-Melanézia', '21.30', 'parlamentáris köztársaság', 12, 5, 'NAU', 'NAURU', 'YAREN', 'ausztrál dollár', 'AUD', '100 cent', 674, 5000, 3),
(137, 'KIRIBATI', 'BAIRIKI', 'Óceánia:Mikronézia-Polinézia', '886.00', 'elnöki köztársaság', 80, 30, 'KIR', 'KIRIBATI', 'BAIRIKI', 'ausztrál dollár', 'AUD', '100 cent', 686, 570, 3),
(138, 'SAINT LUCIA', 'CASTRIES', 'Közép-Amerika:Kis-Antillák', '616.00', 'alkotmányos monarchia', 158, 60, 'WL', 'SAINT LUCIA', 'CASTRIES', 'kelet-karib dollár', 'XCD', '100 cent', 1, 4240, 3),
(139, 'SAINT VINCENT ÉS GRENADINE', 'KINGSTOWN', 'Közép-Amerika:Kis-Antillák', '389.00', 'alkotmányos monarchia', 110, 20, 'WV', 'SAINT VINCENT ES GRENADINE', 'KINGSTOWN', 'kelet-karib dollár', 'XCD', '100 cent', 1, 3330, 3),
(140, 'BARBADOS', 'BRIDGETOWN', 'Közép-Amerika:Kis-Antillák', '430.00', 'alkotmányos monarchia', 276, 80, 'BDS', 'BARBADOS', 'BRIDGETOWN', 'barbadosi dollár', 'BBD', '100 cent', 1, 9650, 3),
(141, 'GRENADA', 'SAINT GEORGE\'S', 'Közép-Amerika:Kis-Antillák', '344.00', 'alkotmányos monarchia', 91, 14, 'WG', 'GRENADA', 'SAINT GEORGE\'S', 'kelet-karib dollár', 'XCD', '100 cent', 1, 2910, 3),
(142, 'SAN MARINO', 'SAN MARINO', 'Európa (törpeállam Olaszországban)', '60.57', 'köztársaság', 27, 4, 'RSM', 'SAN MARINO', 'SAN MARINO', 'euró', 'EUR', '100 eurocent', 378, 27010, 1),
(143, 'SZINGAPÚR', 'SZINGAPÚR', 'Dél-Kelet-Ázsia (városállam)', '641.00', 'köztársaság', 5400, 5400, 'SGP', 'SZINGAPUR', 'SINGAPORE SZINGAPUR', 'szingapuri dollár', 'SGD', '100 cent', 65, 22670, 1),
(144, 'EGYESÜLT ARAB EMIRSÉGEK', 'ABU DHABI', 'Ázsia:Arab-félsziget', '83600.00', 'államszövetség', 3000, 500, 'UAE', 'EGYESULT ARAB EMIRSEGEK', 'ABU ZABY  ABU DHABI', 'dirham', 'AED', '100 fil', 971, 21850, 3),
(145, 'KUVAIT', 'KUVAIT', 'Ázsia:Arab-félsziget', '17818.00', 'alkotmányos monarchia', 2500, 1700, 'KWT', 'KUVAIT', 'AL KUWAYT (KUVAIT)', 'kuvaiti dinár', 'KWD', '1000 fil', 965, 15820, 1),
(146, 'BAHREIN', 'MANAMA', 'Ázsia:Közel-Kelet', '678.00', 'sejkség', 634, 500, 'BRN', 'BAHREIN', 'MANAMA', 'bahreini dinár', 'BHD', '1000 fil', 973, 13700, 3),
(147, 'DZSIBUTI', 'DZSIBUTI', 'Kelet-Afrika', '21783.00', 'köztársaság', 700, 500, '', 'DZSIBUTI', 'DZSIBUTI   DJIBOUTI', 'dzsibuti frank', 'DJF', '100 centime', 0, 780, 3),
(148, 'GAMBIA', 'BANJUL', 'Nyugat-Afrika', '11295.00', 'köztársaság', 1400, 50, 'WAG', 'GAMBIA', 'BANJUL', 'dalasi', 'GMD', '100 butut', 220, 250, 3),
(149, 'BISSAU-GUINEA', 'BISSAU', 'Nyugat-Afrika', '36125.00', 'köztársaság', 1285, 300, 'GNB', 'BISSAU-GUINEA', 'BISSAU', 'CFA-frank', 'XOF', '100 centime', 245, 460, 3),
(150, 'BURUNDI', 'BUJUMBURA', 'Közép-Kelet-Afrika', '27834.00', 'elnöki köztársaság', 6800, 300, 'RU', 'BURUNDI', 'BUJUMBURA', 'burundi frank', 'BIF', '100 centime', 257, 100, 3),
(151, 'COMORE-SZIGETEK', 'MORONI', 'Kelet-Afrika (Indiai-óceán)', '1862.00', 'iszlám szövetségi köztársaság', 700, 60, 'COM', 'COMORE-SZIGETEK', 'MORONI', 'comorei frank', 'KMF', '100 centime', 269, 440, 3),
(152, 'MAURITIUS', 'PORT LOUIS', 'Indiai-óceán (Kelet-Afrika)', '2045.00', 'alkotmányos monarchia', 1200, 500, 'MS', 'MAURITIUS', 'PORT LOUIS', 'mauritiusi rupia', 'MUR', '100 cent', 230, 3830, 2),
(153, 'JEMEN', 'SZANAA', 'Ázsia:Arab-félsziget', '528000.00', 'köztársaság', 20100, 1800, 'ADN', 'JEMEN', 'SAN\'A (SZANAA)', 'rial', 'YER', '100 fil', 967, 470, 2),
(154, 'MALDIV-SZIGETEK', 'MALE', 'Indiai-óceán (Dél-Ázsia)', '298.00', 'elnöki köztársaság', 301, 80, 'MV', 'MALDIV-SZIGETEK', 'MALE', 'maldiv rupia', 'MVR', '100 laree', 960, 2110, 3),
(155, 'COSTA RICA', 'SAN JOSÉ', 'Közép-Amerika', '51100.00', 'elnöki köztársaság', 3900, 1500, 'CR', 'COSTA RICA', 'SAN JOSE', 'colon', 'CRC', '100 centimo', 506, 4540, 2),
(156, 'SALAMON-SZIGETEK', 'HONIARA', 'Óceánia:Melanézia', '28446.00', 'alkotmányos királyság', 466, 30, 'SLB', 'SALAMON-SZIGETEK', 'HONIARA', 'salamon szk-i dollár', 'SBD', '100 cent', 0, 720, 3),
(157, 'TRINIDAD ÉS TOBAGO', 'PORT OF SPAIN', 'Közép-Amerika:Kis-Antillák', '5128.00', 'elnöki köztársaság', 1300, 300, 'TT', 'TRINIDAD ES TOBAGO', 'PORT OF SPAIN', 'trinidadi dollár', 'TTD', '100 cent', 1, 7380, 3),
(158, 'ZÖLD-FOKI KÖZTÁRSASÁG', 'PRAIA', 'Atlanti-óceán (Nyugat-Afrika)', '4033.00', 'köztársaság', 475, 100, '', 'ZOLD-FOKI KOZTARSASAG', 'PRAIA', 'escudo', 'CVE', '100 centavo', 0, 1650, 3),
(159, 'SEYCHELLE-SZIGETEK', 'VICTORIA', 'Kelet-Afrika (Indiai-óceán)', '454.00', 'köztársaság', 80, 60, 'SY', 'SEYCHELLE-SZIGETEK', 'VICTORIA', 'seychelle-i rupia', 'SCR', '100 cent', 248, 7560, 3),
(160, 'ANTIGUA ÉS BARBUDA', 'SAINT JOHN\'S', 'Közép-Amerika:Kis-Antillák', '443.00', 'alkotmányos monarchia', 90, 23, '', 'ANTIGUA ES BARBUDA', 'SAINT JOHN\'S', 'kelet-karib dollár', 'XCD', '100 cent', 1, 9700, 3),
(161, 'DOMINIKAI KÖZTÁRSASÁG', 'SANTO DOMINGO', 'Közép-Amerika:Nagy-Antillák', '48734.00', 'elnöki köztársaság', 8700, 2900, 'DOM', 'DOMINIKAI KOZTARSASAG', 'SANTO DOMINGO', 'peso', 'DOP', '100 centavo', 1, 2730, 3),
(162, 'DOMINIKAI KÖZÖSSÉG', 'ROSEAU', 'Közép-Amerika:Kis-Antillák', '751.00', 'köztársaság', 72, 20, 'WD', 'DOMINIKAI KOZOSSEG', 'ROSEAU', 'kelet-karib dollár', 'XCD', '100 cent', 1, 3520, 3),
(163, 'EGYENLITŐI-GUINEA', 'MALABO', 'Közép-Nyugat-Afrika', '28051.00', 'elnöki köztársaság', 474, 100, 'GQ', 'EGYENLITOI-GUINEA', 'MALABO', 'CFA-frank', 'XAF', '100 centime', 240, 785, 3),
(164, 'ELEFÁNTCSONTPART', 'YAMOUSSOUKRO', 'Nyugat-Afrika', '322463.00', 'elnöki köztársaság', 16600, 200, 'CI', 'ELEFANTCSONTPART', 'YAMOUSSOUKRO', 'CFA-frank', 'XAF', '100 centime', 225, 700, 3),
(165, 'HAITI', 'PORT-AU-PRINCE', 'Közép-Amerika:Nagy-Antillák', '27750.00', 'elnöki köztársaság', 8300, 1800, 'RH', 'HAITI', 'PORT-AU-PRINCE', 'gourde', 'HTG', '100 centime', 509, 420, 3),
(166, 'PÁPUA ÚJ-GUINEA', 'PORT MORESBY', 'Óceánia:Melanézia', '461691.00', 'alkotmányos monarchia', 5700, 300, 'PNG', 'PAPUA UJ-GUINEA', 'PORT MORESBY', 'kina', 'PGK', '100 toea', 675, 570, 3),
(167, 'KÖZÉP-AFRIKAI KÖZTÁRSASÁG', 'BANGUI', 'Közép-Afrika', '622984.00', 'elnöki köztársaság', 3800, 800, 'RCA', 'KOZEP-AFRIKAI KOZTARSASAG', 'BANGUI', 'CFA-frank', 'XAF', '100 centime', 236, 310, 3),
(168, 'SÁO TOMÉ ÉS PRINCIPE', 'SÁO TOMÉ', 'Nyugat-Afrika (Guineai-öböl)', '1001.00', 'köztársaság', 160, 50, '', 'SAO TOME ES PRINCIPE', 'SAO TOME', 'dobra', 'STD', '100 centavo', 239, 390, 3),
(169, 'BRUNEI', 'BANDAR SERI BEGAWAN', 'Dél-Kelet-Ázsia:Borneó', '5765.00', 'szultanátus', 336, 80, 'BRU', 'BRUNEI', 'BANDAR SERI BEGAWAN', 'brunei dollár', 'BND', '100 cent', 673, 24630, 2),
(170, 'SAINT KITTS ÉS NEVIS', 'BASSETERRE', 'Közép-Amerika:Kis-Antillák', '266.00', 'alkotmányos monarchia', 42, 10, '', 'SAINT KITTS ES NEVIS', 'BASSETERRE', 'kelet-karib dollár', 'XCD', '100 cent', 0, 7310, 3),
(171, 'UKRAJNA', 'KIJEV', 'Kelet-Európa', '603700.00', 'köztársaság', 49000, 2800, 'UR', 'UKRAJNA', 'KIJEV KIEV', 'hrivnya', 'UAH', '100 kopejka', 380, 970, 1),
(172, 'LITVÁNIA', 'VILNIUS', 'Európa:Baltikum', '65300.00', 'köztársaság', 3620, 500, 'LT', 'LITVANIA', 'VILNIUS', 'euró', 'EUR', '100 eurocent', 370, 3680, 1),
(173, 'LETTORSZÁG', 'RIGA', 'Európa:Baltikum', '64589.00', 'köztársaság', 2400, 900, 'LV', 'LETTORSZAG', 'RIGA', 'euró', 'EUR', '100 eurocent', 371, 3980, 1),
(174, 'ÉSZTORSZÁG', 'TALLINN', 'Európa:Baltikum', '45227.00', 'köztársaság', 1400, 400, 'EST', 'ESZTORSZAG', 'TALLINN', 'euró', 'EUR', '100 eurocent', 372, 4710, 1),
(175, 'HORVÁTORSZÁG', 'ZÁGRÁB', 'Dél-Európa', '56538.00', 'köztársaság', 4400, 700, 'HR', 'HORVATORSZAG  CROATIA HRVATSKA', 'ZAGRAB  ZAGREB', 'kuna', 'HRK', '100 lipa', 385, 5060, 1),
(176, 'SZLOVÉNIA', 'LJUBLJANA', 'Dél-Európa:Alpok-Adria', '20253.00', 'köztársaság', 2000, 300, 'SLO', 'SZLOVENIA            SLOVENIJA', 'LJUBLJANA', 'euró', 'EUR', '100 eurocent', 386, 12530, 1),
(177, 'BOSZNIA-HERCEGOVINA', 'SARAJEVO', 'Dél-Európa:Balkán', '51129.00', 'köztársaság', 4400, 600, 'BIH', 'BOSZNIA-HERCEGOVINA', 'SARAJEVO  SZARAJEVO', 'konvertibilis márka', 'BAM', '100 pfennig', 387, 1770, 1),
(178, 'MACEDÓNIA', 'SKOPJE', 'Dél-Európa:Balkán-félsziget', '25713.00', 'köztársaság', 2200, 400, 'MK', 'MACEDONIA MAKEDONIA MAKEDONIJA', 'SKOPJE', 'macedon dinár', 'XMD', '100 para', 389, 2070, 1),
(179, 'AZERBAJDZSÁN', 'BAKU', 'Elő-Ázsia:Kaukázus, Kaszpi-tenger', '86600.00', 'köztársaság', 8400, 2100, 'AZ', 'AZERBAJDZSAN', 'BAKU', 'manát', 'AZM', '100 gopik', 994, 1770, 2),
(180, 'GRÚZIA', 'TBILISZI', 'Európa:Kaukázus, Fekete-tenger', '69700.00', 'köztársaság', 5500, 1400, 'GE', 'GRUZIA', 'TBILISZI', 'lari', 'GEL', '100 tetri', 995, 710, 2),
(181, 'ÖRMÉNYORSZÁG', 'JEREVÁN', 'Európa:Kaukázus', '29800.00', 'köztársaság', 3400, 1200, '', 'ORMENYORSZAG', 'JEREVAN', 'dram', 'AMD', '100 luma', 374, 660, 2),
(182, 'BELARUSZ', 'MINSZK', 'Kelet-Európa', '207600.00', 'köztársaság', 10300, 1800, 'BY', 'BELARUSZ FEHEROROSZORSZAG', 'MINSZK', 'belarusz rubel', 'BYR', '100 kopek', 375, 1790, 2),
(183, 'MOLDOVA', 'CHISINAU', 'Kelet-Európa', '33700.00', 'köztársaság', 4430, 800, 'MD', 'MOLDOVA      MOLDAVIA  MOLDAVA', 'KISINYOV CHISINAU', 'lej', 'MDL', '100 bani', 373, 380, 2),
(184, 'ÜZBEGISZTÁN', 'TASKENT', 'Közép-Ázsia', '447400.00', 'köztársaság', 25100, 3500, 'UZB', 'UZBEGISZTAN', 'TASKENT', 'szum', 'UZS', '100 tijin', 998, 330, 2),
(185, 'KAZAHSZTÁN', 'ASZTANA', 'Ázsia', '2717300.00', 'köztársaság', 16730, 300, 'KZ', 'KAZAHSZTAN', 'ASZTANA  ASTANA', 'tenge', 'KZT', '100 tein', 7, 2010, 2),
(186, 'KIRGIZISZTÁN', 'BISKEK', 'Közép-Ázsia', '198500.00', 'köztársaság', 5100, 800, 'KS', 'KIRGIZIA           KIRGIZISZTAN', 'BISKEK', 'szom', 'KGZ', '100 tyijnsz', 996, 350, 2),
(187, 'TÁDZSIKISZTÁN', 'DUSANBE', 'Közép-Ázsia', '143100.00', 'köztársaság', 6200, 800, 'TD', 'TADZSIKISZTAN', 'DUSANBE', 'szomoni', 'TJR', '100 kopejka', 992, 180, 2),
(188, 'TÜRKMENISZTÁN', 'ASGABAT', 'Közép-Ázsia', '488100.00', 'köztársaság', 4520, 700, 'TMN', 'TURKMENISZTAN', 'ASGABAT', 'manat', 'TMM', '100 tenesi', 7, 950, 2),
(189, 'TAJVAN', 'TAJPEJ', 'Ázsia:Távol-Kelet (szigetország)', '36000.00', 'köztársaság', 22500, 7900, 'RC', 'TAJVAN  KINAI KOZTARSASAG', 'TAJPEJ', 'dollár', 'TWD', '100 cent', 886, 12720, 1),
(190, 'PALAU', 'KOROR', 'Óceánia:Mikronézia', '508.00', 'elnöki köztársaság', 19, 10, 'PAL', 'PALAU', 'KOROR', 'dollár', 'USD', '100 cent', 680, 5000, 3),
(191, 'KELET-TIMOR', 'DILI', 'Ázsia:Indonéz-szigetek', '15007.00', 'köztársaság', 840, 60, '', 'KELET-TIMOR', 'DILI', 'dollár', 'USD', '100 cent', 0, 520, 3),
(192, 'MARSHALL-SZIGETEK', 'MAJURO', 'Óceánia:Mikronézia', '180.00', 'köztársaság', 68, 20, 'MH', 'MARSHALL-SZIGETEK', 'MAJURO', 'dollár', 'USD', '100 cent', 692, 2190, 3),
(193, 'MIKRONÉZIA', 'PALIKIR', 'Óceánia:Mikronézia', '702.00', 'szövetségi köztársaság', 133, 10, 'FSM', 'MIKRONEZIA', 'PALIKIR', 'dollár', 'USD', '100 cent', 691, 2150, 3),
(194, 'MONTENEGRO', 'PODGORICA', 'Dél-Európa:Balkán-félsziget', '14026.00', 'köztársaság', 616, 137, 'MNE', 'MONTENEGRO CRNA GORA', 'PODGORICA', 'euro', 'EUR', '100 eurocent', 382, 3100, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `orszagok`
--
ALTER TABLE `orszagok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `orszagok`
--
ALTER TABLE `orszagok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- Adatbázis: `forum_app`
--
CREATE DATABASE IF NOT EXISTS `forum_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `forum_app`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_hungarian_ci DEFAULT NULL,
  `timestamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `timestamp` date DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `timestamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `avatar_path` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `reg` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_logged_in` tinyint(4) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- A tábla indexei `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- A tábla indexei `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`);

--
-- Megkötések a táblához `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`);

--
-- Megkötések a táblához `theme`
--
ALTER TABLE `theme`
  ADD CONSTRAINT `theme_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
--
-- Adatbázis: `hajok`
--
CREATE DATABASE IF NOT EXISTS `hajok` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hajok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hajok`
--

CREATE TABLE `hajok` (
  `hajó` varchar(8) DEFAULT NULL,
  `irány` varchar(5) DEFAULT NULL,
  `cél` varchar(8) DEFAULT NULL,
  `költség` varchar(7) DEFAULT NULL,
  `személy` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `hajok`
--

INSERT INTO `hajok` (`hajó`, `irány`, `cél`, `költség`, `személy`) VALUES
('Tündér', 'kelet', 'túra', '11500', '4'),
('Szilas', 'dél', 'halászat', '7500', '3'),
('Csuka', 'észak', 'mentés', '10900', '2'),
('Tündér', 'észak', 'halászat', '7000', '1'),
('Csuka', 'dél', 'mentés', '3100', '5'),
('Szilas', 'kelet', 'halászat', '13500', '3'),
('Csuka', 'dél', 'halászat', '14700', '4'),
('Napkelet', 'kelet', 'mentés', '8800', '4'),
('Napkelet', 'kelet', 'mentés', '8800', '1'),
('Tündér', 'dél', 'mentés', '9500', '2'),
('Tündér', 'dél', 'túra', '10500', '1'),
('Tündér', 'dél', 'mentés', '9300', '3'),
('Orbánc', 'kelet', 'mentés', '9800', '5'),
('Szilas', 'dél', 'halászat', '12200', '2'),
('Orbánc', 'dél', 'túra', '7600', '1'),
('Csuka', 'dél', 'mentés', '10600', '5'),
('Napkelet', 'dél', 'mentés', '3300', '2'),
('Tündér', 'dél', 'mentés', '12500', '5'),
('Tündér', 'észak', 'túra', '13000', '2'),
('Csuka', 'kelet', 'halászat', '7200', '5'),
('Szilas', 'észak', 'túra', '10700', '1'),
('Szilas', 'észak', 'mentés', '13700', '5'),
('Szilas', 'észak', 'halászat', '7500', '3'),
('Csuka', 'kelet', 'mentés', '14100', '1'),
('Tündér', 'észak', 'halászat', '14000', '5'),
('Csuka', 'dél', 'túra', '7200', '3'),
('Csuka', 'kelet', 'mentés', '7100', '5'),
('Orbánc', 'dél', 'túra', '13700', '3'),
('Orbánc', 'észak', 'halászat', '11400', '4'),
('Orbánc', 'észak', 'halászat', '11500', '4'),
('Csuka', 'kelet', 'mentés', '11900', '1'),
('Szilas', 'dél', 'túra', '8500', '5'),
('Orbánc', 'dél', 'halászat', '14600', '2'),
('Napkelet', 'dél', 'túra', '4300', '2'),
('Csuka', 'kelet', 'túra', '10000', '2'),
('Szilas', 'kelet', 'mentés', '10500', '1'),
('Tündér', 'észak', 'mentés', '11700', '4'),
('Csuka', 'dél', 'mentés', '8000', '1'),
('Csuka', 'észak', 'halászat', '13600', '5'),
('Szilas', 'kelet', 'mentés', '13900', '5'),
('Orbánc', 'dél', 'túra', '4000', '3'),
('Napkelet', 'dél', 'túra', '5600', '1'),
('Napkelet', 'észak', 'túra', '11200', '4'),
('Tündér', 'kelet', 'mentés', '12600', '4'),
('Szilas', 'kelet', 'túra', '12000', '2'),
('Orbánc', 'kelet', 'túra', '11400', '1'),
('Tündér', 'dél', 'mentés', '5000', '3'),
('Napkelet', 'észak', 'halászat', '5500', '5'),
('Csuka', 'észak', 'mentés', '12500', '4'),
('Orbánc', 'kelet', 'túra', '11300', '5'),
('Szilas', 'észak', 'halászat', '8000', '2'),
('Szilas', 'dél', 'halászat', '10600', '1'),
('Orbánc', 'észak', 'halászat', '12500', '5'),
('Tündér', 'észak', 'túra', '5000', '4'),
('Csuka', 'kelet', 'túra', '10000', '2'),
('Szilas', 'kelet', 'halászat', '6000', '5'),
('Tündér', 'kelet', 'halászat', '9900', '3'),
('Napkelet', 'észak', 'halászat', '9900', '4'),
('Orbánc', 'dél', 'halászat', '9200', '3'),
('Tündér', 'észak', 'halászat', '9100', '1'),
('Szilas', 'dél', 'halászat', '3000', '3'),
('Tündér', 'dél', 'mentés', '13500', '2'),
('Tündér', 'észak', 'halászat', '14600', '2'),
('Szilas', 'dél', 'túra', '12200', '5'),
('Szilas', 'dél', 'halászat', '13600', '3'),
('Szilas', 'dél', 'mentés', '14800', '1'),
('Napkelet', 'kelet', 'mentés', '13000', '2'),
('Napkelet', 'kelet', 'túra', '10100', '2'),
('Napkelet', 'dél', 'túra', '13100', '1'),
('Napkelet', 'dél', 'túra', '8500', '4'),
('Tündér', 'észak', 'mentés', '10400', '4'),
('Orbánc', 'észak', 'mentés', '6000', '5'),
('Napkelet', 'dél', 'túra', '14100', '2'),
('Tündér', 'kelet', 'túra', '4100', '1'),
('Napkelet', 'kelet', 'halászat', '11700', '2'),
('Szilas', 'dél', 'túra', '9200', '4'),
('Szilas', 'dél', 'halászat', '9300', '4'),
('Napkelet', 'kelet', 'túra', '7800', '5'),
('Csuka', 'kelet', 'mentés', '10500', '3'),
('Orbánc', 'kelet', 'halászat', '6500', '1'),
('Orbánc', 'kelet', 'túra', '8300', '2'),
('Csuka', 'kelet', 'halászat', '11100', '3'),
('Napkelet', 'kelet', 'halászat', '6000', '3'),
('Csuka', 'dél', 'halászat', '3600', '2'),
('Napkelet', 'kelet', 'túra', '7200', '2'),
('Napkelet', 'kelet', 'halászat', '7500', '4'),
('Napkelet', 'észak', 'halászat', '11400', '4'),
('Tündér', 'dél', 'mentés', '5800', '3'),
('Orbánc', 'kelet', 'mentés', '11400', '1'),
('Csuka', 'kelet', 'túra', '10000', '2'),
('Napkelet', 'kelet', 'halászat', '4000', '3'),
('Tündér', 'dél', 'halászat', '12300', '3'),
('Tündér', 'kelet', 'mentés', '11500', '3'),
('Napkelet', 'észak', 'túra', '6100', '1'),
('Tündér', 'kelet', 'halászat', '6100', '1'),
('Tündér', 'észak', 'mentés', '11400', '4'),
('Tündér', 'kelet', 'túra', '6400', '4'),
('Napkelet', 'kelet', 'mentés', '13500', '4'),
('Szilas', 'észak', 'túra', '4900', '5'),
('Tündér', 'kelet', 'halászat', '4400', '4'),
('Tündér', 'kelet', 'halászat', '10000', '3'),
('Orbánc', 'kelet', 'mentés', '4000', '5'),
('Csuka', 'dél', 'túra', '7500', '2'),
('Csuka', 'észak', 'halászat', '11500', '3'),
('Orbánc', 'dél', 'halászat', '5000', '3'),
('Szilas', 'észak', 'túra', '6000', '4'),
('Tündér', 'észak', 'túra', '4700', '5'),
('Orbánc', 'dél', 'halászat', '4700', '3'),
('Orbánc', 'dél', 'halászat', '14100', '5'),
('Tündér', 'észak', 'túra', '8200', '2'),
('Napkelet', 'kelet', 'mentés', '4100', '3'),
('Napkelet', 'kelet', 'túra', '5800', '4'),
('Csuka', 'kelet', 'halászat', '10800', '2'),
('Csuka', 'dél', 'túra', '5300', '3'),
('Szilas', 'dél', 'túra', '4600', '2'),
('Napkelet', 'kelet', 'halászat', '7700', '1'),
('Napkelet', 'dél', 'halászat', '13400', '5'),
('Szilas', 'kelet', 'túra', '4200', '2'),
('Szilas', 'dél', 'halászat', '9600', '2'),
('Napkelet', 'észak', 'halászat', '7800', '3'),
('Napkelet', 'dél', 'halászat', '5100', '2'),
('Orbánc', 'dél', 'túra', '9000', '2'),
('Szilas', 'kelet', 'túra', '13000', '3'),
('Csuka', 'dél', 'túra', '6200', '2'),
('Tündér', 'kelet', 'túra', '7700', '2'),
('Tündér', 'észak', 'mentés', '14100', '5'),
('Napkelet', 'dél', 'mentés', '11200', '5'),
('Orbánc', 'dél', 'túra', '10400', '5'),
('Csuka', 'észak', 'halászat', '9100', '2'),
('Csuka', 'kelet', 'túra', '12400', '3'),
('Orbánc', 'észak', 'túra', '9100', '4'),
('Csuka', 'észak', 'túra', '13800', '3'),
('Csuka', 'kelet', 'mentés', '13500', '1'),
('Napkelet', 'kelet', 'halászat', '4100', '5'),
('Szilas', 'dél', 'halászat', '4500', '3'),
('Szilas', 'dél', 'túra', '8500', '5'),
('Szilas', 'kelet', 'túra', '5400', '1'),
('Orbánc', 'kelet', 'túra', '9100', '2'),
('Tündér', 'észak', 'túra', '9800', '4'),
('Tündér', 'kelet', 'halászat', '5000', '5'),
('Orbánc', 'kelet', 'túra', '4700', '3'),
('Orbánc', 'kelet', 'túra', '5300', '3'),
('Csuka', 'dél', 'mentés', '14800', '1'),
('Csuka', 'dél', 'túra', '14700', '1'),
('Orbánc', 'dél', 'halászat', '5200', '4'),
('Napkelet', 'dél', 'mentés', '14900', '3'),
('Orbánc', 'kelet', 'halászat', '7900', '3'),
('Szilas', 'észak', 'túra', '12700', '5'),
('Tündér', 'észak', 'mentés', '6700', '4'),
('Csuka', 'kelet', 'mentés', '9300', '1'),
('Orbánc', 'dél', 'mentés', '8400', '1'),
('Csuka', 'kelet', 'halászat', '12000', '5'),
('Szilas', 'dél', 'túra', '12100', '2'),
('Csuka', 'észak', 'túra', '5800', '2'),
('Csuka', 'kelet', 'túra', '13900', '1'),
('Szilas', 'kelet', 'mentés', '7900', '3'),
('Napkelet', 'kelet', 'halászat', '13800', '5'),
('Csuka', 'észak', 'halászat', '7900', '1'),
('Szilas', 'észak', 'mentés', '7700', '2'),
('Napkelet', 'dél', 'halászat', '4400', '1'),
('Szilas', 'kelet', 'mentés', '14100', '1'),
('Csuka', 'észak', 'halászat', '14800', '1'),
('Napkelet', 'kelet', 'halászat', '5700', '4'),
('Szilas', 'észak', 'túra', '5900', '3'),
('Tündér', 'kelet', 'túra', '5200', '3'),
('Szilas', 'dél', 'túra', '4000', '4'),
('Szilas', 'dél', 'mentés', '12700', '2'),
('Orbánc', 'kelet', 'túra', '11100', '2'),
('Csuka', 'dél', 'halászat', '12500', '2'),
('Napkelet', 'dél', 'túra', '6000', '3'),
('Szilas', 'kelet', 'túra', '11500', '1'),
('Szilas', 'dél', 'mentés', '6400', '5'),
('Szilas', 'észak', 'túra', '14700', '3'),
('Tündér', 'kelet', 'mentés', '6200', '3'),
('Csuka', 'dél', 'túra', '14300', '4'),
('Napkelet', 'kelet', 'mentés', '9900', '2'),
('Orbánc', 'dél', 'halászat', '9700', '1'),
('Napkelet', 'kelet', 'mentés', '6500', '5'),
('Csuka', 'dél', 'halászat', '3900', '5'),
('Tündér', 'kelet', 'halászat', '10900', '1'),
('Szilas', 'észak', 'túra', '13700', '1'),
('Tündér', 'kelet', 'mentés', '5300', '2'),
('Szilas', 'dél', 'túra', '4000', '1'),
('Szilas', 'dél', 'mentés', '9500', '3'),
('Csuka', 'észak', 'túra', '3700', '2'),
('Tündér', 'dél', 'túra', '3000', '2'),
('Szilas', 'észak', 'mentés', '9600', '5'),
('Napkelet', 'észak', 'halászat', '9500', '4'),
('Szilas', 'kelet', 'túra', '10900', '2'),
('Csuka', 'kelet', 'mentés', '5100', '2'),
('Csuka', 'kelet', 'halászat', '4600', '4'),
('Csuka', 'észak', 'halászat', '6200', '1'),
('Csuka', 'észak', 'mentés', '9100', '5'),
('Tündér', 'dél', 'túra', '3700', '2'),
('Szilas', 'dél', 'halászat', '10400', '2'),
('Tündér', 'észak', 'mentés', '4800', '2'),
('Csuka', 'észak', 'mentés', '3500', '5'),
('Szilas', 'észak', 'halászat', '9200', '1'),
('Csuka', 'észak', 'halászat', '7200', '3'),
('Tündér', 'kelet', 'túra', '3300', '1'),
('Csuka', 'dél', 'mentés', '13300', '2'),
('Orbánc', 'kelet', 'túra', '10000', '4'),
('Szilas', 'dél', 'halászat', '4900', '1'),
('Tündér', 'dél', 'túra', '8900', '4'),
('Napkelet', 'észak', 'túra', '11500', '2'),
('Napkelet', 'dél', 'mentés', '6200', '4'),
('Szilas', 'kelet', 'mentés', '5900', '2'),
('Napkelet', 'kelet', 'halászat', '11400', '1'),
('Csuka', 'kelet', 'túra', '4600', '3'),
('Tündér', 'kelet', 'halászat', '8200', '1'),
('Orbánc', 'kelet', 'mentés', '3100', '5'),
('Csuka', 'észak', 'mentés', '12700', '1'),
('Csuka', 'észak', 'mentés', '4100', '2'),
('Szilas', 'kelet', 'halászat', '7800', '3'),
('Napkelet', 'kelet', 'túra', '4700', '1'),
('Napkelet', 'kelet', 'halászat', '13800', '4'),
('Csuka', 'dél', 'halászat', '11000', '5'),
('Csuka', 'kelet', 'mentés', '7300', '4'),
('Tündér', 'dél', 'halászat', '13000', '5'),
('Napkelet', 'dél', 'halászat', '8700', '1'),
('Napkelet', 'észak', 'mentés', '6000', '5'),
('Orbánc', 'dél', 'mentés', '6500', '2'),
('Napkelet', 'dél', 'halászat', '5100', '1'),
('Orbánc', 'dél', 'mentés', '13800', '1'),
('Napkelet', 'dél', 'túra', '7300', '3'),
('Napkelet', 'dél', 'túra', '5100', '4'),
('Napkelet', 'dél', 'halászat', '10300', '2'),
('Szilas', 'kelet', 'halászat', '11200', '2'),
('Napkelet', 'dél', 'halászat', '6900', '3'),
('Tündér', 'észak', 'mentés', '11400', '3'),
('Csuka', 'kelet', 'halászat', '6500', '3'),
('Orbánc', 'kelet', 'mentés', '10600', '5'),
('Csuka', 'kelet', 'halászat', '6000', '2'),
('Csuka', 'észak', 'halászat', '12300', '5'),
('Orbánc', 'észak', 'túra', '12900', '5'),
('Orbánc', 'kelet', 'túra', '5200', '3'),
('Orbánc', 'kelet', 'túra', '3500', '3'),
('Szilas', 'dél', 'túra', '6300', '1'),
('Csuka', 'kelet', 'túra', '11800', '5'),
('Napkelet', 'dél', 'halászat', '9700', '4'),
('Szilas', 'észak', 'túra', '10100', '1'),
('Orbánc', 'észak', 'mentés', '4300', '5'),
('Tündér', 'észak', 'mentés', '10800', '4'),
('Tündér', 'észak', 'halászat', '5400', '5'),
('Csuka', 'észak', 'túra', '5000', '1'),
('Orbánc', 'dél', 'mentés', '12000', '3'),
('Napkelet', 'észak', 'túra', '12800', '4'),
('Tündér', 'észak', 'halászat', '12500', '3'),
('Szilas', 'dél', 'halászat', '13200', '1'),
('Napkelet', 'észak', 'mentés', '7500', '2'),
('Tündér', 'kelet', 'halászat', '3000', '2'),
('Csuka', 'dél', 'túra', '5100', '4'),
('Orbánc', 'kelet', 'mentés', '3900', '3'),
('Orbánc', 'dél', 'halászat', '3900', '4'),
('Csuka', 'észak', 'mentés', '9700', '2'),
('Csuka', 'kelet', 'halászat', '13100', '2'),
('Csuka', 'észak', 'mentés', '12700', '2'),
('Orbánc', 'dél', 'halászat', '7100', '5'),
('Napkelet', 'észak', 'túra', '12200', '4'),
('Orbánc', 'kelet', 'túra', '10800', '4'),
('Csuka', 'dél', 'túra', '10100', '2'),
('Napkelet', 'kelet', 'mentés', '3100', '4'),
('Orbánc', 'dél', 'halászat', '13700', '3'),
('Orbánc', 'dél', 'túra', '9200', '5'),
('Tündér', 'kelet', 'túra', '12000', '2'),
('Csuka', 'kelet', 'halászat', '4800', '5'),
('Napkelet', 'kelet', 'túra', '8900', '3'),
('Tündér', 'dél', 'mentés', '5100', '4'),
('Orbánc', 'észak', 'túra', '13300', '4'),
('Csuka', 'dél', 'túra', '6600', '2'),
('Tündér', 'kelet', 'halászat', '9200', '4'),
('Napkelet', 'kelet', 'halászat', '4700', '2'),
('Szilas', 'dél', 'mentés', '3300', '1'),
('Szilas', 'kelet', 'mentés', '11300', '4'),
('Orbánc', 'észak', 'túra', '14700', '3'),
('Tündér', 'kelet', 'túra', '6000', '5'),
('Szilas', 'dél', 'mentés', '14700', '4'),
('Csuka', 'dél', 'mentés', '14400', '5'),
('Tündér', 'dél', 'mentés', '7500', '2'),
('Napkelet', 'kelet', 'mentés', '12700', '2'),
('Csuka', 'dél', 'halászat', '9600', '5'),
('Szilas', 'dél', 'halászat', '4200', '4'),
('Napkelet', 'dél', 'túra', '8000', '2'),
('Csuka', 'kelet', 'halászat', '8100', '2'),
('Orbánc', 'dél', 'túra', '8900', '5'),
('Napkelet', 'dél', 'mentés', '9800', '2'),
('Szilas', 'kelet', 'mentés', '4800', '1'),
('Tündér', 'dél', 'túra', '13500', '2'),
('Szilas', 'észak', 'halászat', '4400', '4'),
('Szilas', 'kelet', 'mentés', '9800', '2'),
('Napkelet', 'kelet', 'halászat', '3000', '1'),
('Tündér', 'kelet', 'halászat', '10200', '1'),
('Orbánc', 'dél', 'halászat', '13600', '4'),
('Orbánc', 'dél', 'halászat', '14100', '2'),
('Szilas', 'kelet', 'mentés', '7400', '5'),
('Orbánc', 'észak', 'halászat', '4700', '3'),
('Szilas', 'kelet', 'mentés', '14500', '4'),
('Napkelet', 'észak', 'halászat', '10800', '5'),
('Napkelet', 'kelet', 'halászat', '9900', '1'),
('Tündér', 'kelet', 'mentés', '3600', '5'),
('Szilas', 'dél', 'mentés', '8600', '3'),
('Csuka', 'dél', 'túra', '3100', '2'),
('Napkelet', 'dél', 'túra', '12500', '3'),
('Napkelet', 'dél', 'mentés', '8600', '1'),
('Tündér', 'észak', 'túra', '8800', '1'),
('Csuka', 'észak', 'mentés', '11600', '5'),
('Orbánc', 'észak', 'túra', '6200', '3'),
('Orbánc', 'kelet', 'mentés', '8100', '2'),
('Csuka', 'dél', 'mentés', '7700', '2'),
('Csuka', 'észak', 'halászat', '6900', '4'),
('Csuka', 'kelet', 'túra', '6000', '3'),
('Tündér', 'kelet', 'halászat', '10700', '5'),
('Csuka', 'észak', 'mentés', '14600', '2'),
('Szilas', 'dél', 'túra', '5400', '1'),
('Orbánc', 'dél', 'halászat', '3300', '4'),
('Csuka', 'észak', 'mentés', '3200', '2'),
('Napkelet', 'dél', 'túra', '12200', '5'),
('Tündér', 'dél', 'mentés', '3500', '4'),
('Tündér', 'kelet', 'túra', '4900', '2'),
('Csuka', 'dél', 'mentés', '5400', '4'),
('Tündér', 'észak', 'túra', '14400', '2'),
('Csuka', 'kelet', 'halászat', '9900', '5'),
('Tündér', 'dél', 'mentés', '12400', '2'),
('Napkelet', 'kelet', 'túra', '6400', '2'),
('Orbánc', 'észak', 'mentés', '4400', '2'),
('Tündér', 'dél', 'mentés', '11200', '2'),
('Napkelet', 'észak', 'túra', '4700', '2'),
('Csuka', 'észak', 'mentés', '5600', '2'),
('Napkelet', 'dél', 'halászat', '8800', '1'),
('Tündér', 'kelet', 'halászat', '3000', '3'),
('Csuka', 'észak', 'mentés', '9200', '4'),
('Napkelet', 'észak', 'halászat', '11700', '4'),
('Szilas', 'észak', 'halászat', '9700', '2'),
('Szilas', 'kelet', 'túra', '8300', '2'),
('Csuka', 'kelet', 'halászat', '10200', '4'),
('Napkelet', 'kelet', 'halászat', '4800', '5'),
('Napkelet', 'észak', 'halászat', '7100', '5'),
('Tündér', 'dél', 'halászat', '6900', '2'),
('Orbánc', 'kelet', 'mentés', '12700', '1'),
('Tündér', 'kelet', 'mentés', '14700', '1'),
('Orbánc', 'dél', 'halászat', '6800', '4'),
('Orbánc', 'észak', 'túra', '3300', '2'),
('Napkelet', 'észak', 'mentés', '10500', '4'),
('Orbánc', 'kelet', 'halászat', '4900', '5'),
('Orbánc', 'észak', 'mentés', '4100', '4'),
('Szilas', 'kelet', 'túra', '9900', '5'),
('Orbánc', 'kelet', 'mentés', '8400', '5'),
('Tündér', 'észak', 'mentés', '10400', '3'),
('Napkelet', 'kelet', 'túra', '7000', '3'),
('Csuka', 'észak', 'halászat', '8500', '2'),
('Tündér', 'dél', 'túra', '9300', '2'),
('Orbánc', 'dél', 'mentés', '8900', '5'),
('Orbánc', 'kelet', 'halászat', '3100', '5'),
('Csuka', 'dél', 'mentés', '4000', '2'),
('Tündér', 'észak', 'mentés', '11000', '2'),
('Szilas', 'dél', 'halászat', '7300', '1'),
('Orbánc', 'dél', 'túra', '3000', '1'),
('Orbánc', 'dél', 'halászat', '4800', '3'),
('Napkelet', 'dél', 'túra', '12100', '1'),
('Szilas', 'kelet', 'túra', '11000', '4'),
('Szilas', 'észak', 'túra', '4400', '3'),
('Orbánc', 'kelet', 'túra', '3500', '4'),
('Csuka', 'észak', 'mentés', '7100', '5'),
('Napkelet', 'dél', 'halászat', '10900', '4'),
('Orbánc', 'kelet', 'túra', '14000', '1'),
('Tündér', 'dél', 'mentés', '6600', '4'),
('Csuka', 'dél', 'halászat', '3400', '4'),
('Tündér', 'kelet', 'mentés', '13800', '2'),
('Napkelet', 'dél', 'halászat', '12000', '1'),
('Csuka', 'dél', 'túra', '13400', '3'),
('Szilas', 'kelet', 'halászat', '3000', '3'),
('Tündér', 'dél', 'halászat', '8500', '4'),
('Csuka', 'kelet', 'túra', '8700', '5'),
('Tündér', 'észak', 'mentés', '13800', '1'),
('Tündér', 'dél', 'mentés', '8400', '2'),
('Szilas', 'kelet', 'túra', '3700', '2'),
('Tündér', 'kelet', 'túra', '9200', '2'),
('Napkelet', 'kelet', 'túra', '7000', '3'),
('Tündér', 'dél', 'túra', '13500', '2'),
('Napkelet', 'dél', 'halászat', '12800', '4'),
('Csuka', 'dél', 'halászat', '3200', '3'),
('Csuka', 'észak', 'túra', '5400', '3'),
('Tündér', 'kelet', 'túra', '12900', '3'),
('Szilas', 'kelet', 'mentés', '14500', '3'),
('Csuka', 'kelet', 'halászat', '14300', '3'),
('Orbánc', 'észak', 'mentés', '11300', '1'),
('Szilas', 'dél', 'túra', '5800', '2'),
('Orbánc', 'kelet', 'túra', '7400', '4'),
('Csuka', 'dél', 'túra', '12600', '4'),
('Szilas', 'észak', 'túra', '5700', '5'),
('Csuka', 'észak', 'túra', '6600', '5'),
('Csuka', 'dél', 'halászat', '12700', '5'),
('Szilas', 'kelet', 'mentés', '4600', '3'),
('Csuka', 'észak', 'halászat', '9900', '2'),
('Szilas', 'dél', 'túra', '6800', '1'),
('Tündér', 'kelet', 'halászat', '8500', '3'),
('Szilas', 'kelet', 'halászat', '5900', '5'),
('Szilas', 'észak', 'túra', '6600', '4'),
('Orbánc', 'dél', 'túra', '3900', '5'),
('Orbánc', 'észak', 'túra', '13200', '4'),
('Tündér', 'észak', 'halászat', '8200', '5'),
('Tündér', 'észak', 'halászat', '9700', '1'),
('Szilas', 'észak', 'mentés', '3900', '2'),
('Szilas', 'kelet', 'halászat', '6100', '2'),
('Orbánc', 'kelet', 'túra', '14100', '4'),
('Csuka', 'észak', 'mentés', '13400', '3'),
('Szilas', 'dél', 'halászat', '13700', '2'),
('Szilas', 'kelet', 'mentés', '14800', '3'),
('Tündér', 'dél', 'halászat', '8400', '5'),
('Orbánc', 'kelet', 'mentés', '3100', '2'),
('Napkelet', 'dél', 'mentés', '5100', '3'),
('Tündér', 'dél', 'túra', '5100', '5'),
('Szilas', 'dél', 'halászat', '4600', '1'),
('Orbánc', 'kelet', 'halászat', '12100', '2'),
('Napkelet', 'észak', 'túra', '7100', '2'),
('Csuka', 'kelet', 'halászat', '4400', '1'),
('Napkelet', 'dél', 'mentés', '5100', '3'),
('Napkelet', 'kelet', 'túra', '12600', '1'),
('Szilas', 'dél', 'mentés', '13800', '4'),
('Csuka', 'dél', 'mentés', '10600', '1'),
('Szilas', 'kelet', 'mentés', '12200', '1'),
('Szilas', 'észak', 'halászat', '10900', '4'),
('Napkelet', 'dél', 'mentés', '11600', '4'),
('Tündér', 'észak', 'halászat', '7500', '3'),
('Csuka', 'észak', 'halászat', '11800', '4'),
('Orbánc', 'észak', 'túra', '4100', '5'),
('Orbánc', 'dél', 'halászat', '14500', '3'),
('Orbánc', 'kelet', 'túra', '12900', '3'),
('Napkelet', 'észak', 'túra', '7500', '4'),
('Csuka', 'dél', 'túra', '5000', '3'),
('Napkelet', 'kelet', 'túra', '13300', '1'),
('Tündér', 'dél', 'halászat', '7100', '4'),
('Orbánc', 'kelet', 'mentés', '10700', '5'),
('Napkelet', 'dél', 'mentés', '6500', '3'),
('Szilas', 'dél', 'mentés', '9500', '5'),
('Napkelet', 'kelet', 'túra', '14800', '1'),
('Csuka', 'kelet', 'mentés', '11100', '2'),
('Csuka', 'kelet', 'mentés', '6000', '1'),
('Szilas', 'dél', 'túra', '3000', '3'),
('Orbánc', 'kelet', 'túra', '5500', '5'),
('Csuka', 'kelet', 'mentés', '9900', '5'),
('Csuka', 'kelet', 'halászat', '10600', '2'),
('Orbánc', 'dél', 'halászat', '6800', '3'),
('Orbánc', 'kelet', 'halászat', '5900', '4'),
('Orbánc', 'dél', 'halászat', '7000', '2'),
('Napkelet', 'kelet', 'halászat', '4400', '4'),
('Napkelet', 'kelet', 'mentés', '14600', '2'),
('Orbánc', 'észak', 'túra', '14200', '2'),
('Szilas', 'dél', 'mentés', '13500', '2'),
('Tündér', 'kelet', 'túra', '8000', '3'),
('Orbánc', 'dél', 'halászat', '7100', '1'),
('Csuka', 'dél', 'halászat', '10400', '4'),
('Napkelet', 'kelet', 'halászat', '9700', '4'),
('Csuka', 'észak', 'túra', '8700', '3'),
('Szilas', 'észak', 'túra', '8400', '5'),
('Orbánc', 'észak', 'halászat', '10300', '4'),
('Szilas', 'dél', 'halászat', '4800', '5'),
('Napkelet', 'dél', 'mentés', '9000', '2'),
('Napkelet', 'kelet', 'halászat', '5300', '4'),
('Csuka', 'észak', 'mentés', '8100', '4'),
('Orbánc', 'kelet', 'mentés', '9200', '3'),
('Orbánc', 'észak', 'mentés', '5000', '4'),
('Csuka', 'dél', 'túra', '8300', '3'),
('Szilas', 'észak', 'túra', '6700', '1'),
('Csuka', 'dél', 'halászat', '14800', '4'),
('Napkelet', 'észak', 'halászat', '9200', '5'),
('Orbánc', 'kelet', 'mentés', '4800', '5'),
('Csuka', 'észak', 'halászat', '5200', '1'),
('Szilas', 'észak', 'mentés', '12400', '2'),
('Szilas', 'kelet', 'túra', '5600', '1'),
('Napkelet', 'dél', 'halászat', '3700', '3'),
('Szilas', 'észak', 'túra', '9200', '5'),
('Csuka', 'észak', 'mentés', '4500', '1'),
('Orbánc', 'észak', 'túra', '6900', '1'),
('Szilas', 'észak', 'halászat', '9600', '4'),
('Orbánc', 'észak', 'halászat', '14300', '3'),
('Orbánc', 'dél', 'halászat', '10000', '1'),
('Napkelet', 'észak', 'mentés', '4400', '5'),
('Csuka', 'kelet', 'mentés', '12700', '4'),
('Orbánc', 'dél', 'halászat', '11800', '3'),
('Tündér', 'kelet', 'mentés', '14200', '4'),
('Napkelet', 'dél', 'halászat', '13300', '1'),
('Szilas', 'észak', 'túra', '12200', '2'),
('Orbánc', 'kelet', 'halászat', '3600', '5'),
('Csuka', 'észak', 'túra', '8900', '5'),
('Napkelet', 'észak', 'túra', '9300', '1'),
('Tündér', 'dél', 'halászat', '8000', '2'),
('Napkelet', 'dél', 'halászat', '13900', '1'),
('Szilas', 'dél', 'túra', '8100', '2'),
('Tündér', 'kelet', 'mentés', '14600', '1'),
('Tündér', 'észak', 'mentés', '13700', '4'),
('Szilas', 'észak', 'mentés', '3700', '1'),
('Szilas', 'dél', 'túra', '11000', '1'),
('Napkelet', 'észak', 'túra', '12200', '1'),
('Tündér', 'dél', 'halászat', '5400', '4'),
('Napkelet', 'észak', 'halászat', '4400', '4'),
('Szilas', 'dél', 'túra', '7000', '4'),
('Szilas', 'kelet', 'mentés', '11500', '2'),
('Tündér', 'kelet', 'halászat', '6400', '4'),
('Orbánc', 'észak', 'mentés', '4300', '4'),
('Szilas', 'dél', 'halászat', '12800', '5'),
('Orbánc', 'kelet', 'túra', '5800', '2'),
('Tündér', 'észak', 'mentés', '10000', '4'),
('Napkelet', 'dél', 'halászat', '9200', '4'),
('Szilas', 'kelet', 'halászat', '13900', '4'),
('Napkelet', 'kelet', 'túra', '6500', '2'),
('Orbánc', 'észak', 'túra', '3100', '1'),
('Tündér', 'dél', 'mentés', '13100', '5'),
('Orbánc', 'észak', 'mentés', '9900', '4'),
('Napkelet', 'kelet', 'túra', '8500', '1'),
('Tündér', 'kelet', 'túra', '6200', '1'),
('Szilas', 'kelet', 'túra', '11000', '2'),
('Napkelet', 'kelet', 'mentés', '10400', '5'),
('Szilas', 'észak', 'halászat', '3100', '2'),
('Csuka', 'észak', 'túra', '9500', '5'),
('Szilas', 'dél', 'mentés', '14700', '3'),
('Szilas', 'kelet', 'túra', '8700', '1'),
('Csuka', 'kelet', 'halászat', '5600', '3'),
('Csuka', 'észak', 'mentés', '4000', '5'),
('Orbánc', 'dél', 'mentés', '5700', '1'),
('Orbánc', 'észak', 'mentés', '5700', '3'),
('Orbánc', 'dél', 'halászat', '4400', '2'),
('Szilas', 'dél', 'mentés', '5900', '1'),
('Orbánc', 'észak', 'mentés', '4100', '4'),
('Napkelet', 'dél', 'túra', '3900', '1'),
('Napkelet', 'észak', 'halászat', '5300', '1'),
('Napkelet', 'észak', 'mentés', '10700', '4'),
('Napkelet', 'észak', 'halászat', '13300', '5'),
('Csuka', 'észak', 'mentés', '7500', '1'),
('Csuka', 'észak', 'túra', '10900', '1'),
('Szilas', 'észak', 'mentés', '8900', '3'),
('Orbánc', 'dél', 'halászat', '4100', '2'),
('Tündér', 'kelet', 'halászat', '14400', '5'),
('Szilas', 'dél', 'halászat', '10600', '5'),
('Csuka', 'dél', 'túra', '14700', '3'),
('Napkelet', 'dél', 'túra', '11700', '3'),
('Tündér', 'dél', 'mentés', '4600', '3'),
('Orbánc', 'kelet', 'halászat', '9400', '1'),
('Szilas', 'kelet', 'halászat', '14400', '3'),
('Szilas', 'dél', 'mentés', '9900', '4'),
('Szilas', 'dél', 'mentés', '6600', '3'),
('Orbánc', 'észak', 'halászat', '3200', '3'),
('Napkelet', 'észak', 'túra', '10600', '5'),
('Orbánc', 'kelet', 'mentés', '8500', '4'),
('Napkelet', 'észak', 'mentés', '13500', '4'),
('Szilas', 'észak', 'mentés', '8600', '3'),
('Szilas', 'dél', 'mentés', '8300', '5'),
('Napkelet', 'kelet', 'mentés', '8900', '3'),
('Tündér', 'dél', 'halászat', '10000', '2'),
('Napkelet', 'dél', 'mentés', '10100', '1'),
('Orbánc', 'kelet', 'halászat', '8300', '1'),
('Szilas', 'dél', 'mentés', '8000', '5'),
('Orbánc', 'dél', 'halászat', '12400', '5'),
('Szilas', 'kelet', 'túra', '8400', '2'),
('Csuka', 'észak', 'túra', '5600', '2'),
('Csuka', 'dél', 'halászat', '3800', '4'),
('Szilas', 'dél', 'mentés', '11000', '3'),
('Csuka', 'dél', 'mentés', '12600', '4'),
('Napkelet', 'dél', 'halászat', '12200', '2'),
('Orbánc', 'dél', 'halászat', '13300', '1'),
('Tündér', 'dél', 'túra', '7600', '2'),
('Csuka', 'észak', 'túra', '10700', '1'),
('Szilas', 'dél', 'halászat', '11300', '4'),
('Tündér', 'kelet', 'halászat', '3500', '2'),
('Napkelet', 'dél', 'túra', '12000', '5'),
('Csuka', 'dél', 'túra', '3500', '1'),
('Szilas', 'dél', 'mentés', '6100', '4'),
('Tündér', 'észak', 'túra', '14400', '4'),
('Szilas', 'dél', 'mentés', '11100', '4'),
('Orbánc', 'kelet', 'túra', '8300', '3'),
('Napkelet', 'észak', 'túra', '5100', '4'),
('Orbánc', 'észak', 'mentés', '6500', '2'),
('Tündér', 'kelet', 'túra', '3100', '1'),
('Napkelet', 'dél', 'túra', '8600', '1'),
('Tündér', 'kelet', 'mentés', '5500', '4'),
('Szilas', 'észak', 'mentés', '14800', '5'),
('Napkelet', 'dél', 'mentés', '7500', '3'),
('Csuka', 'észak', 'halászat', '3100', '5'),
('Napkelet', 'dél', 'túra', '9300', '1'),
('Tündér', 'dél', 'mentés', '6200', '3'),
('Tündér', 'dél', 'halászat', '8600', '1'),
('Orbánc', 'dél', 'túra', '7000', '2'),
('Tündér', 'dél', 'halászat', '3400', '5'),
('Csuka', 'észak', 'túra', '7300', '3'),
('Tündér', 'kelet', 'halászat', '8500', '2'),
('Napkelet', 'észak', 'halászat', '3800', '1'),
('Tündér', 'észak', 'mentés', '4000', '5'),
('Szilas', 'észak', 'túra', '8600', '4'),
('Tündér', 'kelet', 'halászat', '6400', '5'),
('Napkelet', 'dél', 'túra', '6300', '5'),
('Csuka', 'dél', 'mentés', '7600', '3'),
('Szilas', 'észak', 'halászat', '11300', '3'),
('Orbánc', 'dél', 'túra', '10900', '4'),
('Szilas', 'kelet', 'túra', '10100', '1'),
('Tündér', 'kelet', 'halászat', '11000', '2'),
('Csuka', 'dél', 'halászat', '9400', '2'),
('Napkelet', 'észak', 'mentés', '7900', '1'),
('Szilas', 'észak', 'túra', '8600', '4'),
('Szilas', 'dél', 'túra', '12000', '3'),
('Orbánc', 'észak', 'mentés', '9600', '3'),
('Csuka', 'észak', 'túra', '10100', '5'),
('Napkelet', 'dél', 'halászat', '5600', '4'),
('Szilas', 'észak', 'mentés', '14900', '1'),
('Tündér', 'kelet', 'halászat', '14800', '1'),
('Szilas', 'dél', 'mentés', '9300', '3'),
('Csuka', 'észak', 'halászat', '3000', '2'),
('Szilas', 'dél', 'halászat', '6800', '1'),
('Orbánc', 'dél', 'halászat', '4400', '3'),
('Orbánc', 'kelet', 'mentés', '12400', '4'),
('Csuka', 'dél', 'halászat', '6300', '5'),
('Csuka', 'dél', 'mentés', '12300', '2'),
('Napkelet', 'észak', 'mentés', '8000', '4'),
('Orbánc', 'kelet', 'mentés', '13300', '1'),
('Szilas', 'dél', 'halászat', '5800', '1'),
('Napkelet', 'dél', 'mentés', '13000', '2'),
('Tündér', 'kelet', 'halászat', '8100', '3'),
('Napkelet', 'észak', 'mentés', '5900', '4'),
('Szilas', 'kelet', 'mentés', '4000', '4'),
('Tündér', 'észak', 'mentés', '5300', '2'),
('Szilas', 'dél', 'mentés', '7900', '2'),
('Tündér', 'észak', 'túra', '3000', '4'),
('Napkelet', 'észak', 'mentés', '6000', '1'),
('Orbánc', 'kelet', 'halászat', '5300', '4'),
('Tündér', 'kelet', 'halászat', '6400', '5'),
('Napkelet', 'kelet', 'halászat', '12600', '5'),
('Napkelet', 'dél', 'halászat', '8800', '4'),
('Orbánc', 'észak', 'túra', '8300', '4'),
('Tündér', 'észak', 'túra', '9900', '2'),
('Tündér', 'észak', 'túra', '13100', '5'),
('Tündér', 'dél', 'mentés', '3100', '4'),
('Tündér', 'észak', 'halászat', '10500', '4'),
('Orbánc', 'dél', 'túra', '7600', '3'),
('Szilas', 'észak', 'túra', '10600', '3'),
('Szilas', 'észak', 'halászat', '12800', '5'),
('Tündér', 'dél', 'túra', '3900', '1'),
('Szilas', 'észak', 'túra', '6400', '2'),
('Szilas', 'kelet', 'mentés', '7900', '2'),
('Napkelet', 'észak', 'túra', '13900', '3'),
('Orbánc', 'dél', 'mentés', '5900', '3'),
('Tündér', 'észak', 'túra', '8400', '5'),
('Tündér', 'észak', 'halászat', '7200', '4'),
('Orbánc', 'észak', 'mentés', '8400', '5'),
('Napkelet', 'észak', 'mentés', '14600', '5'),
('Napkelet', 'kelet', 'mentés', '6500', '4'),
('Orbánc', 'dél', 'túra', '9000', '3'),
('Orbánc', 'kelet', 'túra', '5300', '1'),
('Csuka', 'dél', 'túra', '8500', '4'),
('Szilas', 'kelet', 'halászat', '6100', '5'),
('Napkelet', 'kelet', 'túra', '4700', '4'),
('Orbánc', 'észak', 'túra', '11100', '4'),
('Csuka', 'kelet', 'túra', '7600', '3'),
('Orbánc', 'észak', 'mentés', '12100', '5'),
('Tündér', 'észak', 'túra', '14100', '1'),
('Napkelet', 'észak', 'halászat', '13700', '2'),
('Napkelet', 'kelet', 'túra', '11300', '5'),
('Szilas', 'dél', 'mentés', '12100', '4'),
('Szilas', 'észak', 'túra', '9700', '2'),
('Tündér', 'észak', 'mentés', '5100', '3'),
('Csuka', 'észak', 'mentés', '7000', '5'),
('Csuka', 'kelet', 'mentés', '6100', '3'),
('Orbánc', 'kelet', 'halászat', '7600', '3'),
('Napkelet', 'kelet', 'túra', '3600', '5'),
('Napkelet', 'dél', 'mentés', '12000', '1'),
('Orbánc', 'dél', 'túra', '10200', '4'),
('Napkelet', 'kelet', 'halászat', '7700', '4'),
('Csuka', 'dél', 'túra', '7300', '1'),
('Napkelet', 'dél', 'túra', '5400', '4'),
('Orbánc', 'észak', 'halászat', '9200', '5'),
('Napkelet', 'észak', 'túra', '4800', '3'),
('Szilas', 'kelet', 'túra', '13400', '5'),
('Szilas', 'kelet', 'halászat', '5100', '1'),
('Orbánc', 'észak', 'túra', '4300', '4'),
('Szilas', 'kelet', 'mentés', '12300', '4'),
('Csuka', 'dél', 'mentés', '5600', '4'),
('Szilas', 'kelet', 'halászat', '13100', '5'),
('Napkelet', 'dél', 'halászat', '11800', '1'),
('Napkelet', 'dél', 'mentés', '5000', '2'),
('Napkelet', 'észak', 'mentés', '8100', '1'),
('Napkelet', 'észak', 'mentés', '7900', '1'),
('Csuka', 'észak', 'mentés', '4800', '1'),
('Tündér', 'dél', 'halászat', '9400', '3'),
('Szilas', 'észak', 'mentés', '4400', '5'),
('Szilas', 'észak', 'mentés', '12100', '2'),
('Orbánc', 'dél', 'túra', '11400', '2'),
('Tündér', 'dél', 'túra', '12200', '2'),
('Tündér', 'kelet', 'túra', '4900', '4'),
('Csuka', 'kelet', 'túra', '11600', '3'),
('Tündér', 'dél', 'mentés', '6000', '5'),
('Napkelet', 'észak', 'halászat', '10700', '1'),
('Csuka', 'észak', 'túra', '4200', '5'),
('Napkelet', 'kelet', 'mentés', '11100', '2'),
('Csuka', 'kelet', 'mentés', '9400', '1'),
('Napkelet', 'kelet', 'túra', '11900', '4'),
('Szilas', 'kelet', 'mentés', '12100', '4'),
('Szilas', 'dél', 'túra', '11900', '3'),
('Orbánc', 'észak', 'túra', '3300', '1'),
('Orbánc', 'észak', 'halászat', '14900', '4'),
('Tündér', 'észak', 'túra', '3900', '5'),
('Csuka', 'észak', 'túra', '14500', '3'),
('Szilas', 'dél', 'halászat', '9900', '2'),
('Napkelet', 'dél', 'mentés', '3100', '2'),
('Orbánc', 'észak', 'halászat', '3800', '5'),
('Napkelet', 'kelet', 'mentés', '14000', '2'),
('Napkelet', 'dél', 'mentés', '3000', '4'),
('Szilas', 'észak', 'túra', '8400', '3'),
('Csuka', 'dél', 'halászat', '4400', '5'),
('Napkelet', 'kelet', 'halászat', '11600', '1'),
('Csuka', 'észak', 'halászat', '11600', '2'),
('Tündér', 'észak', 'túra', '13900', '5'),
('Tündér', 'észak', 'mentés', '8800', '1'),
('Szilas', 'észak', 'halászat', '9100', '4'),
('Szilas', 'dél', 'mentés', '14500', '4'),
('Orbánc', 'dél', 'mentés', '10200', '5'),
('Napkelet', 'kelet', 'halászat', '8100', '2'),
('Tündér', 'észak', 'mentés', '4500', '2'),
('Orbánc', 'kelet', 'halászat', '13400', '2'),
('Szilas', 'dél', 'halászat', '13700', '1'),
('Szilas', 'kelet', 'halászat', '7200', '1'),
('Csuka', 'észak', 'halászat', '3300', '4'),
('Szilas', 'kelet', 'halászat', '3200', '1'),
('Tündér', 'dél', 'halászat', '8400', '5'),
('Orbánc', 'kelet', 'halászat', '7200', '2'),
('Csuka', 'dél', 'túra', '7600', '1'),
('Csuka', 'észak', 'túra', '4200', '5'),
('Szilas', 'dél', 'túra', '4800', '2'),
('Napkelet', 'észak', 'túra', '13000', '4'),
('Tündér', 'kelet', 'halászat', '7400', '4'),
('Csuka', 'dél', 'túra', '6400', '1'),
('Napkelet', 'észak', 'túra', '14100', '2'),
('Csuka', 'kelet', 'mentés', '9000', '4'),
('Orbánc', 'kelet', 'túra', '14900', '5'),
('Orbánc', 'dél', 'mentés', '3900', '4'),
('Orbánc', 'dél', 'túra', '9900', '4'),
('Napkelet', 'dél', 'halászat', '12500', '4'),
('Orbánc', 'kelet', 'túra', '7500', '5'),
('Csuka', 'dél', 'mentés', '13100', '4'),
('Napkelet', 'kelet', 'halászat', '4500', '2'),
('Csuka', 'kelet', 'túra', '9100', '5'),
('Szilas', 'észak', 'halászat', '5500', '4'),
('Tündér', 'észak', 'halászat', '8500', '4'),
('Szilas', 'dél', 'halászat', '7200', '5'),
('Szilas', 'észak', 'túra', '12000', '4'),
('Tündér', 'kelet', 'halászat', '13100', '4'),
('Csuka', 'kelet', 'túra', '5700', '1'),
('Orbánc', 'kelet', 'túra', '7200', '5'),
('Orbánc', 'kelet', 'túra', '10000', '3'),
('Szilas', 'kelet', 'túra', '6900', '1'),
('Tündér', 'észak', 'túra', '9600', '2'),
('Csuka', 'észak', 'mentés', '6100', '2'),
('Csuka', 'dél', 'halászat', '10300', '2'),
('Tündér', 'észak', 'halászat', '4000', '5'),
('Orbánc', 'kelet', 'túra', '13000', '2'),
('Tündér', 'kelet', 'halászat', '5000', '4'),
('Napkelet', 'kelet', 'mentés', '3400', '1'),
('Napkelet', 'dél', 'túra', '4900', '3'),
('Napkelet', 'kelet', 'halászat', '12600', '1'),
('Csuka', 'dél', 'mentés', '3400', '5'),
('Szilas', 'észak', 'halászat', '11100', '1'),
('Napkelet', 'észak', 'halászat', '3600', '4'),
('Napkelet', 'dél', 'túra', '4500', '5'),
('Csuka', 'dél', 'mentés', '10400', '2'),
('Tündér', 'kelet', 'mentés', '9600', '2'),
('Napkelet', 'észak', 'mentés', '14000', '1'),
('Szilas', 'kelet', 'mentés', '5800', '5'),
('Tündér', 'észak', 'mentés', '11900', '5'),
('Orbánc', 'dél', 'mentés', '13200', '2'),
('Csuka', 'kelet', 'halászat', '6400', '5'),
('Napkelet', 'kelet', 'túra', '8500', '5'),
('Szilas', 'dél', 'mentés', '8800', '5'),
('Csuka', 'dél', 'halászat', '9700', '1'),
('Orbánc', 'kelet', 'túra', '7800', '2'),
('Napkelet', 'dél', 'halászat', '9200', '1'),
('Csuka', 'kelet', 'halászat', '3000', '3'),
('Csuka', 'észak', 'túra', '10800', '3'),
('Tündér', 'dél', 'halászat', '4300', '4'),
('Orbánc', 'észak', 'mentés', '5500', '2'),
('Orbánc', 'észak', 'halászat', '7900', '5'),
('Orbánc', 'dél', 'mentés', '14500', '4'),
('Orbánc', 'dél', 'halászat', '7200', '1'),
('Szilas', 'kelet', 'túra', '5600', '4'),
('Orbánc', 'dél', 'halászat', '7400', '2'),
('Orbánc', 'észak', 'halászat', '8200', '4'),
('Tündér', 'dél', 'túra', '8300', '1'),
('Tündér', 'dél', 'halászat', '14500', '2'),
('Szilas', 'észak', 'túra', '4400', '1'),
('Szilas', 'kelet', 'halászat', '7300', '4'),
('Csuka', 'észak', 'mentés', '5500', '5'),
('Szilas', 'kelet', 'halászat', '5300', '5'),
('Orbánc', 'észak', 'túra', '14400', '5'),
('Tündér', 'kelet', 'mentés', '9700', '5'),
('Napkelet', 'észak', 'halászat', '8600', '4'),
('Tündér', 'dél', 'halászat', '5300', '1'),
('Szilas', 'kelet', 'halászat', '7100', '1'),
('Szilas', 'észak', 'halászat', '9900', '1'),
('Csuka', 'kelet', 'halászat', '11800', '1'),
('Orbánc', 'észak', 'túra', '9000', '4'),
('Csuka', 'kelet', 'mentés', '4900', '1'),
('Tündér', 'kelet', 'halászat', '6800', '3'),
('Tündér', 'észak', 'halászat', '14400', '5'),
('Tündér', 'észak', 'túra', '8000', '5'),
('Szilas', 'kelet', 'mentés', '8100', '3'),
('Szilas', 'észak', 'túra', '6200', '3'),
('Tündér', 'észak', 'túra', '10200', '2'),
('Napkelet', 'dél', 'mentés', '14900', '5'),
('Napkelet', 'kelet', 'mentés', '5800', '2'),
('Orbánc', 'dél', 'túra', '9200', '1'),
('Napkelet', 'észak', 'túra', '14200', '2'),
('Orbánc', 'dél', 'halászat', '12200', '1'),
('Szilas', 'észak', 'túra', '14000', '5'),
('Orbánc', 'kelet', 'mentés', '14700', '5'),
('Orbánc', 'észak', 'túra', '3700', '2'),
('Szilas', 'észak', 'mentés', '14500', '3'),
('Orbánc', 'dél', 'mentés', '13700', '5'),
('Szilas', 'kelet', 'halászat', '10800', '3'),
('Orbánc', 'kelet', 'halászat', '14400', '3'),
('Napkelet', 'dél', 'túra', '8200', '1'),
('Orbánc', 'kelet', 'halászat', '4900', '1'),
('Orbánc', 'dél', 'halászat', '14400', '5'),
('Szilas', 'kelet', 'mentés', '8900', '2'),
('Napkelet', 'észak', 'túra', '11000', '4'),
('Tündér', 'észak', 'halászat', '3900', '3'),
('Csuka', 'dél', 'mentés', '8900', '5'),
('Napkelet', 'dél', 'mentés', '11800', '4'),
('Napkelet', 'észak', 'halászat', '12000', '3'),
('Szilas', 'kelet', 'mentés', '10000', '3'),
('Tündér', 'észak', 'mentés', '5800', '1'),
('Orbánc', 'dél', 'halászat', '12500', '3'),
('Szilas', 'dél', 'halászat', '7800', '2'),
('Szilas', 'dél', 'halászat', '11600', '5'),
('Tündér', 'észak', 'mentés', '12100', '2'),
('Orbánc', 'kelet', 'túra', '14000', '4'),
('Szilas', 'észak', 'halászat', '4800', '2'),
('Tündér', 'dél', 'túra', '9700', '3'),
('Orbánc', 'kelet', 'mentés', '11000', '3'),
('Orbánc', 'dél', 'halászat', '11400', '2'),
('Tündér', 'dél', 'halászat', '13200', '4'),
('Orbánc', 'dél', 'halászat', '6900', '4'),
('Napkelet', 'dél', 'túra', '12300', '4'),
('Napkelet', 'észak', 'mentés', '5700', '1'),
('Csuka', 'dél', 'halászat', '13200', '3'),
('Tündér', 'dél', 'túra', '6500', '1'),
('Tündér', 'dél', 'mentés', '4600', '5'),
('Szilas', 'dél', 'mentés', '13800', '2'),
('Szilas', 'dél', 'túra', '13500', '5'),
('Orbánc', 'észak', 'túra', '11200', '2'),
('Napkelet', 'észak', 'halászat', '14000', '5'),
('Tündér', 'dél', 'halászat', '13700', '4'),
('Tündér', 'dél', 'mentés', '14000', '1'),
('Szilas', 'dél', 'túra', '8700', '1'),
('Tündér', 'dél', 'halászat', '8900', '4'),
('Szilas', 'észak', 'túra', '12100', '5'),
('Szilas', 'dél', 'halászat', '9300', '1'),
('Szilas', 'dél', 'mentés', '8000', '4'),
('Csuka', 'kelet', 'halászat', '4400', '2'),
('Napkelet', 'dél', 'mentés', '12700', '2'),
('Csuka', 'kelet', 'halászat', '6500', '3'),
('Tündér', 'dél', 'túra', '3500', '2'),
('Orbánc', 'kelet', 'mentés', '10100', '3'),
('Orbánc', 'dél', 'túra', '14600', '5'),
('Napkelet', 'dél', 'halászat', '10700', '1'),
('Szilas', 'dél', 'halászat', '3000', '1'),
('Szilas', 'dél', 'mentés', '8600', '3'),
('Napkelet', 'dél', 'mentés', '9600', '3'),
('Orbánc', 'kelet', 'mentés', '5000', '5'),
('Szilas', 'észak', 'halászat', '9300', '1'),
('Csuka', 'dél', 'halászat', '14800', '3'),
('Tündér', 'dél', 'mentés', '14000', '5'),
('Orbánc', 'dél', 'halászat', '8700', '5'),
('Tündér', 'észak', 'halászat', '3100', '5'),
('Szilas', 'észak', 'túra', '11200', '5'),
('Napkelet', 'dél', 'mentés', '4400', '3'),
('Tündér', 'dél', 'mentés', '8700', '2'),
('Napkelet', 'kelet', 'mentés', '11300', '3'),
('Napkelet', 'észak', 'túra', '10500', '1'),
('Szilas', 'dél', 'túra', '9100', '3'),
('Napkelet', 'kelet', 'halászat', '14100', '3'),
('Szilas', 'dél', 'túra', '4100', '1'),
('Orbánc', 'kelet', 'mentés', '8400', '2'),
('Orbánc', 'kelet', 'mentés', '14300', '3'),
('Orbánc', 'kelet', 'mentés', '4100', '3'),
('Napkelet', 'dél', 'túra', '7000', '5'),
('Napkelet', 'kelet', 'halászat', '3100', '2'),
('Szilas', 'észak', 'mentés', '12600', '3'),
('Csuka', 'észak', 'túra', '12600', '1'),
('Napkelet', 'észak', 'túra', '13700', '5'),
('Tündér', 'dél', 'halászat', '13300', '3'),
('Szilas', 'észak', 'túra', '11200', '3'),
('Napkelet', 'kelet', 'mentés', '7200', '3'),
('Szilas', 'dél', 'mentés', '4500', '5'),
('Tündér', 'észak', 'mentés', '13300', '1'),
('Orbánc', 'kelet', 'túra', '4000', '1'),
('Napkelet', 'észak', 'túra', '14300', '3'),
('Napkelet', 'kelet', 'túra', '7900', '2'),
('Napkelet', 'kelet', 'halászat', '12500', '4'),
('Tündér', 'dél', 'mentés', '11200', '4'),
('Szilas', 'kelet', 'túra', '3600', '1'),
('Tündér', 'észak', 'halászat', '5500', '5'),
('Napkelet', 'dél', 'túra', '11800', '4'),
('Napkelet', 'észak', 'halászat', '3400', '4'),
('Orbánc', 'észak', 'halászat', '9200', '1'),
('Napkelet', 'kelet', 'mentés', '14700', '1'),
('Tündér', 'észak', 'mentés', '8500', '3'),
('Napkelet', 'észak', 'halászat', '6000', '1'),
('Csuka', 'észak', 'halászat', '8400', '1'),
('Orbánc', 'kelet', 'mentés', '9800', '1'),
('Napkelet', 'észak', 'mentés', '9100', '2'),
('Csuka', 'észak', 'mentés', '10800', '4'),
('Tündér', 'észak', 'túra', '4200', '1'),
('Szilas', 'dél', 'mentés', '14700', '4'),
('Szilas', 'dél', 'halászat', '13700', '5'),
('Csuka', 'dél', 'halászat', '3900', '1'),
('Tündér', 'kelet', 'halászat', '4100', '1'),
('Orbánc', 'kelet', 'halászat', '8500', '5'),
('Csuka', 'kelet', 'túra', '10000', '2'),
('Szilas', 'kelet', 'mentés', '11600', '5'),
('Szilas', 'kelet', 'mentés', '6900', '3'),
('Szilas', 'kelet', 'túra', '14200', '1'),
('Tündér', 'kelet', 'mentés', '8500', '5'),
('Tündér', 'dél', 'túra', '4200', '3'),
('Orbánc', 'dél', 'mentés', '12700', '1'),
('Tündér', 'dél', 'mentés', '4400', '1'),
('Tündér', 'dél', 'túra', '10800', '3'),
('Napkelet', 'észak', 'túra', '4300', '4'),
('Szilas', 'dél', 'túra', '7700', '3'),
('Csuka', 'kelet', 'halászat', '8100', '4'),
('Tündér', 'dél', 'mentés', '7700', '3'),
('Tündér', 'dél', 'mentés', '10900', '3'),
('Csuka', 'észak', 'halászat', '11500', '1'),
('Tündér', 'észak', 'mentés', '4000', '5'),
('Orbánc', 'kelet', 'túra', '12500', '2'),
('Napkelet', 'kelet', 'mentés', '3000', '1'),
('Szilas', 'dél', 'mentés', '11800', '4'),
('Orbánc', 'észak', 'halászat', '11800', '1'),
('Szilas', 'dél', 'mentés', '14000', '5'),
('Orbánc', 'kelet', 'halászat', '12400', '4'),
('Napkelet', 'kelet', 'túra', '3600', '5'),
('Szilas', 'észak', 'halászat', '8000', '3'),
('Tündér', 'kelet', 'túra', '9200', '3'),
('Napkelet', 'dél', 'túra', '5800', '1'),
('Orbánc', 'kelet', 'mentés', '12900', '2'),
('Tündér', 'észak', 'túra', '7300', '1'),
('Szilas', 'észak', 'túra', '9300', '1'),
('Szilas', 'dél', 'mentés', '7400', '1'),
('Napkelet', 'dél', 'mentés', '10300', '3'),
('Csuka', 'dél', 'halászat', '6100', '2'),
('Napkelet', 'dél', 'túra', '9400', '4'),
('Napkelet', 'dél', 'halászat', '4400', '1'),
('Tündér', 'dél', 'halászat', '4400', '1'),
('Csuka', 'dél', 'túra', '12600', '4'),
('Napkelet', 'kelet', 'halászat', '4500', '5'),
('Orbánc', 'észak', 'halászat', '4000', '2'),
('Csuka', 'dél', 'mentés', '8600', '3'),
('Napkelet', 'dél', 'halászat', '10300', '5'),
('Csuka', 'dél', 'túra', '4600', '4'),
('Napkelet', 'kelet', 'túra', '12900', '4'),
('Szilas', 'kelet', 'halászat', '3200', '3'),
('Szilas', 'dél', 'mentés', '6500', '5'),
('Napkelet', 'dél', 'túra', '12100', '1'),
('Napkelet', 'dél', 'halászat', '7500', '1'),
('Szilas', 'észak', 'mentés', '5800', '3'),
('Tündér', 'dél', 'túra', '13100', '3'),
('Tündér', 'dél', 'mentés', '4600', '1'),
('Szilas', 'észak', 'halászat', '13500', '2'),
('Csuka', 'észak', 'halászat', '3600', '3'),
('Szilas', 'kelet', 'mentés', '5900', '4'),
('Orbánc', 'észak', 'mentés', '3500', '5'),
('Napkelet', 'dél', 'mentés', '14900', '2'),
('Tündér', 'dél', 'mentés', '8100', '4'),
('Tündér', 'észak', 'túra', '4300', '5'),
('Csuka', 'észak', 'halászat', '4300', '5'),
('Csuka', 'észak', 'halászat', '13100', '5'),
('Tündér', 'kelet', 'halászat', '7700', '1'),
('Tündér', 'észak', 'túra', '10700', '2'),
('Szilas', 'kelet', 'mentés', '4100', '2'),
('Tündér', 'dél', 'mentés', '10400', '1'),
('Orbánc', 'kelet', 'halászat', '6900', '1'),
('Tündér', 'dél', 'halászat', '7800', '5'),
('Orbánc', 'kelet', 'túra', '4600', '3'),
('Csuka', 'kelet', 'túra', '6900', '3'),
('Csuka', 'kelet', 'halászat', '8400', '1'),
('Csuka', 'észak', 'mentés', '8000', '1'),
('Tündér', 'észak', 'halászat', '14200', '2'),
('Csuka', 'dél', 'túra', '10200', '4'),
('Tündér', 'dél', 'halászat', '8300', '2'),
('Napkelet', 'észak', 'halászat', '9800', '2'),
('Napkelet', 'dél', 'halászat', '3100', '5'),
('Csuka', 'kelet', 'halászat', '9400', '3'),
('Tündér', 'dél', 'halászat', '4000', '4'),
('Napkelet', 'kelet', 'halászat', '12400', '3'),
('Orbánc', 'észak', 'mentés', '10500', '1'),
('Szilas', 'észak', 'halászat', '7700', '5'),
('Tündér', 'kelet', 'halászat', '6000', '4'),
('Orbánc', 'dél', 'mentés', '10500', '4'),
('Csuka', 'kelet', 'mentés', '10100', '3'),
('Orbánc', 'észak', 'halászat', '13100', '2'),
('Szilas', 'észak', 'mentés', '9500', '1'),
('Napkelet', 'észak', 'halászat', '13500', '4'),
('Napkelet', 'dél', 'mentés', '6700', '4'),
('Csuka', 'dél', 'mentés', '12600', '3'),
('Szilas', 'dél', 'mentés', '6700', '3'),
('Szilas', 'kelet', 'mentés', '9600', '5'),
('Tündér', 'észak', 'túra', '14300', '1'),
('Napkelet', 'kelet', 'halászat', '6100', '5'),
('Szilas', 'észak', 'mentés', '12500', '5'),
('Szilas', 'észak', 'mentés', '12800', '5'),
('Csuka', 'kelet', 'mentés', '8700', '3'),
('Napkelet', 'kelet', 'halászat', '14900', '2'),
('Napkelet', 'kelet', 'mentés', '12300', '1'),
('Tündér', 'dél', 'halászat', '7400', '3'),
('Tündér', 'kelet', 'túra', '11600', '1'),
('Napkelet', 'kelet', 'túra', '8900', '5'),
('Csuka', 'észak', 'mentés', '5800', '5'),
('Orbánc', 'kelet', 'halászat', '5900', '1'),
('Tündér', 'dél', 'halászat', '13700', '1'),
('Tündér', 'dél', 'halászat', '12300', '2'),
('Napkelet', 'dél', 'túra', '4300', '5'),
('Szilas', 'kelet', 'halászat', '10900', '3'),
('Szilas', 'kelet', 'halászat', '6500', '1'),
('Orbánc', 'észak', 'mentés', '3400', '2'),
('Orbánc', 'kelet', 'halászat', '13200', '4'),
('Orbánc', 'kelet', 'mentés', '14900', '3'),
('Napkelet', 'észak', 'halászat', '7100', '4'),
('Orbánc', 'észak', 'túra', '13700', '5'),
('Orbánc', 'dél', 'túra', '8300', '5'),
('Szilas', 'észak', 'halászat', '8200', '2'),
('Tündér', 'kelet', 'túra', '9900', '1'),
('Napkelet', 'kelet', 'mentés', '4100', '5'),
('Szilas', 'kelet', 'mentés', '7400', '3'),
('Napkelet', 'dél', 'mentés', '9000', '1'),
('Napkelet', 'kelet', 'mentés', '7300', '2'),
('Tündér', 'észak', 'túra', '10600', '4'),
('Napkelet', 'kelet', 'mentés', '3900', '5'),
('Tündér', 'kelet', 'túra', '3800', '5'),
('Tündér', 'dél', 'halászat', '4300', '3'),
('Szilas', 'dél', 'mentés', '11500', '1'),
('Napkelet', 'észak', 'halászat', '10600', '3'),
('Szilas', 'kelet', 'túra', '9300', '4'),
('Orbánc', 'észak', 'halászat', '14900', '5'),
('Napkelet', 'észak', 'halászat', '7800', '2'),
('Orbánc', 'észak', 'túra', '10400', '5'),
('Tündér', 'kelet', 'túra', '5100', '2'),
('Napkelet', 'kelet', 'mentés', '4800', '1'),
('Tündér', 'dél', 'mentés', '4500', '2'),
('Szilas', 'észak', 'halászat', '5300', '1'),
('Napkelet', 'észak', 'mentés', '10700', '3'),
('Tündér', 'kelet', 'túra', '3600', '3'),
('Szilas', 'dél', 'mentés', '5400', '4'),
('Szilas', 'dél', 'mentés', '13000', '3'),
('Szilas', 'észak', 'túra', '14800', '4'),
('Napkelet', 'kelet', 'halászat', '5800', '5'),
('Csuka', 'dél', 'mentés', '7700', '3'),
('Napkelet', 'dél', 'mentés', '4300', '1'),
('Csuka', 'dél', 'halászat', '11200', '5'),
('Csuka', 'dél', 'túra', '14800', '3'),
('Napkelet', 'kelet', 'túra', '3400', '3'),
('Napkelet', 'kelet', 'mentés', '11000', '3'),
('Szilas', 'észak', 'túra', '12700', '1'),
('Csuka', 'dél', 'halászat', '8600', '4'),
('Orbánc', 'kelet', 'halászat', '10800', '2'),
('Orbánc', 'kelet', 'halászat', '14900', '2'),
('Csuka', 'dél', 'túra', '4500', '2'),
('Orbánc', 'kelet', 'túra', '14800', '4'),
('Szilas', 'kelet', 'halászat', '11300', '3'),
('Orbánc', 'dél', 'mentés', '9000', '3'),
('Napkelet', 'dél', 'túra', '10700', '3'),
('Orbánc', 'észak', 'mentés', '4800', '2'),
('Tündér', 'kelet', 'mentés', '7400', '5'),
('Csuka', 'kelet', 'mentés', '12900', '5'),
('Csuka', 'dél', 'mentés', '5500', '2'),
('Szilas', 'dél', 'mentés', '7300', '5'),
('Tündér', 'kelet', 'halászat', '5200', '2'),
('Tündér', 'dél', 'halászat', '3100', '2'),
('Napkelet', 'dél', 'túra', '6000', '5'),
('Szilas', 'kelet', 'halászat', '4500', '4'),
('Tündér', 'észak', 'túra', '10400', '3'),
('Szilas', 'kelet', 'mentés', '6600', '3'),
('Tündér', 'kelet', 'túra', '12100', '5'),
('Orbánc', 'észak', 'túra', '10600', '1'),
('Szilas', 'észak', 'túra', '10700', '3'),
('Napkelet', 'dél', 'mentés', '14900', '3'),
('Tündér', 'észak', 'túra', '9100', '4'),
('Napkelet', 'észak', 'túra', '11800', '2'),
('Napkelet', 'észak', 'halászat', '3200', '4'),
('Csuka', 'kelet', 'mentés', '5400', '1'),
('Csuka', 'kelet', 'halászat', '14600', '2'),
('Tündér', 'észak', 'túra', '13700', '1'),
('Orbánc', 'észak', 'halászat', '10000', '5'),
('Csuka', 'kelet', 'túra', '13900', '1'),
('Tündér', 'kelet', 'halászat', '4400', '4'),
('Tündér', 'észak', 'túra', '12500', '1'),
('Tündér', 'észak', 'túra', '12600', '2'),
('Napkelet', 'észak', 'túra', '14700', '5'),
('Tündér', 'kelet', 'halászat', '14800', '5'),
('Csuka', 'dél', 'halászat', '4600', '4'),
('Tündér', 'kelet', 'mentés', '7100', '2'),
('Orbánc', 'észak', 'mentés', '11300', '1'),
('Napkelet', 'dél', 'halászat', '12300', '3'),
('Napkelet', 'dél', 'mentés', '8800', '4'),
('Csuka', 'dél', 'túra', '11300', '3'),
('Orbánc', 'észak', 'mentés', '4400', '2'),
('Napkelet', 'dél', 'túra', '3500', '1'),
('Orbánc', 'kelet', 'halászat', '7800', '1'),
('Szilas', 'dél', 'mentés', '4000', '1'),
('Napkelet', 'kelet', 'túra', '9000', '4'),
('Orbánc', 'dél', 'túra', '7300', '1'),
('Orbánc', 'észak', 'túra', '3200', '5'),
('Napkelet', 'észak', 'mentés', '3900', '4'),
('Orbánc', 'kelet', 'halászat', '14300', '2'),
('Tündér', 'észak', 'túra', '6100', '5'),
('Szilas', 'észak', 'mentés', '12600', '3'),
('Csuka', 'kelet', 'halászat', '13700', '2'),
('Tündér', 'dél', 'mentés', '11900', '1'),
('Csuka', 'észak', 'túra', '10800', '1'),
('Szilas', 'dél', 'túra', '10800', '1'),
('Napkelet', 'észak', 'halászat', '5300', '1'),
('Tündér', 'dél', 'halászat', '4300', '2'),
('Csuka', 'észak', 'halászat', '7700', '3'),
('Csuka', 'észak', 'halászat', '7600', '4'),
('Tündér', 'észak', 'mentés', '10800', '2'),
('Orbánc', 'dél', 'túra', '10300', '5'),
('Napkelet', 'dél', 'túra', '11600', '5'),
('Tündér', 'észak', 'halászat', '7500', '5'),
('Orbánc', 'dél', 'mentés', '13100', '5'),
('Tündér', 'dél', 'halászat', '7400', '3'),
('Szilas', 'kelet', 'mentés', '12300', '5'),
('Szilas', 'észak', 'halászat', '5100', '1'),
('Orbánc', 'dél', 'mentés', '10000', '2'),
('Tündér', 'dél', 'halászat', '9800', '5'),
('Szilas', 'kelet', 'mentés', '11900', '4'),
('Napkelet', 'dél', 'halászat', '11000', '5'),
('Tündér', 'kelet', 'halászat', '11300', '4'),
('Szilas', 'észak', 'halászat', '10800', '1'),
('Csuka', 'dél', 'halászat', '8300', '4'),
('Szilas', 'dél', 'mentés', '6900', '4'),
('Napkelet', 'kelet', 'mentés', '4800', '1'),
('Napkelet', 'észak', 'túra', '10700', '2'),
('Szilas', 'dél', 'túra', '11800', '1'),
('Napkelet', 'észak', 'mentés', '6800', '2'),
('Napkelet', 'kelet', 'túra', '12200', '3'),
('Napkelet', 'kelet', 'halászat', '4400', '1'),
('Orbánc', 'kelet', 'túra', '4700', '4'),
('Szilas', 'észak', 'mentés', '9100', '2'),
('Orbánc', 'kelet', 'mentés', '3400', '5'),
('Orbánc', 'észak', 'túra', '7800', '5'),
('Tündér', 'dél', 'halászat', '8800', '3'),
('Napkelet', 'észak', 'halászat', '7400', '1'),
('Napkelet', 'dél', 'mentés', '13800', '5'),
('Orbánc', 'észak', 'mentés', '8000', '1'),
('Napkelet', 'kelet', 'túra', '10400', '1'),
('Szilas', 'észak', 'túra', '6000', '3'),
('Orbánc', 'dél', 'halászat', '13000', '5'),
('Csuka', 'dél', 'túra', '11000', '4'),
('Csuka', 'kelet', 'mentés', '13700', '3'),
('Csuka', 'észak', 'halászat', '12000', '1'),
('Napkelet', 'észak', 'halászat', '11400', '1'),
('Szilas', 'kelet', 'mentés', '12800', '2'),
('Tündér', 'észak', 'halászat', '9200', '1'),
('Csuka', 'kelet', 'mentés', '3200', '5'),
('Tündér', 'észak', 'túra', '11000', '5'),
('Csuka', 'észak', 'túra', '8200', '3'),
('Orbánc', 'kelet', 'túra', '9600', '5'),
('Napkelet', 'kelet', 'halászat', '6200', '5'),
('Tündér', 'észak', 'halászat', '11300', '3'),
('Tündér', 'észak', 'túra', '7900', '2'),
('Szilas', 'dél', 'túra', '9700', '4'),
('Napkelet', 'kelet', 'mentés', '3100', '3'),
('Tündér', 'kelet', 'túra', '9100', '5'),
('Orbánc', 'dél', 'mentés', '8900', '4'),
('Orbánc', 'kelet', 'mentés', '9400', '2'),
('Orbánc', 'dél', 'túra', '5200', '2'),
('Napkelet', 'dél', 'mentés', '12900', '5'),
('Szilas', 'kelet', 'mentés', '3100', '1'),
('Napkelet', 'észak', 'mentés', '5800', '2'),
('Orbánc', 'észak', 'halászat', '12300', '5'),
('Orbánc', 'észak', 'túra', '4300', '5'),
('Orbánc', 'észak', 'halászat', '8300', '4'),
('Szilas', 'dél', 'halászat', '3000', '3'),
('Orbánc', 'kelet', 'halászat', '5700', '4'),
('Szilas', 'kelet', 'mentés', '13900', '3'),
('Napkelet', 'kelet', 'túra', '11800', '3'),
('Csuka', 'dél', 'halászat', '3300', '5'),
('Orbánc', 'észak', 'túra', '3700', '4'),
('Tündér', 'kelet', 'halászat', '3700', '2'),
('Szilas', 'észak', 'túra', '9500', '4'),
('Orbánc', 'kelet', 'halászat', '4900', '2'),
('Orbánc', 'kelet', 'túra', '8300', '1'),
('Orbánc', 'észak', 'túra', '13600', '3'),
('Tündér', 'kelet', 'halászat', '3600', '1'),
('Tündér', 'dél', 'mentés', '7700', '5');
INSERT INTO `hajok` (`hajó`, `irány`, `cél`, `költség`, `személy`) VALUES
('Orbánc', 'kelet', 'halászat', '8200', '4'),
('Csuka', 'kelet', 'túra', '6500', '1'),
('Napkelet', 'dél', 'halászat', '7700', '1'),
('Napkelet', 'kelet', 'halászat', '4100', '5'),
('Orbánc', 'kelet', 'mentés', '12500', '2'),
('Orbánc', 'észak', 'mentés', '5100', '2'),
('Tündér', 'kelet', 'túra', '6100', '4'),
('Tündér', 'kelet', 'túra', '9400', '5'),
('Napkelet', 'dél', 'túra', '8500', '4');
--
-- Adatbázis: `halozat`
--
CREATE DATABASE IF NOT EXISTS `halozat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `halozat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `halozat`
--

CREATE TABLE `halozat` (
  `jarat` int(11) NOT NULL,
  `megallo` int(11) NOT NULL,
  `irany` varchar(1) COLLATE utf8_hungarian_ci NOT NULL,
  `sorszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `halozat`
--

INSERT INTO `halozat` (`jarat`, `megallo`, `irany`, `sorszam`) VALUES
(1, 1, 'A', 1),
(1, 1, 'B', 11),
(1, 2, 'A', 2),
(1, 2, 'B', 10),
(1, 3, 'A', 3),
(1, 3, 'B', 9),
(1, 4, 'A', 4),
(1, 4, 'B', 8),
(1, 5, 'A', 5),
(1, 5, 'B', 7),
(1, 6, 'A', 6),
(1, 6, 'B', 6),
(1, 7, 'A', 7),
(1, 7, 'B', 5),
(1, 8, 'A', 8),
(1, 8, 'B', 4),
(1, 9, 'A', 9),
(1, 9, 'B', 3),
(1, 10, 'A', 10),
(1, 10, 'B', 2),
(1, 11, 'A', 11),
(1, 11, 'B', 1),
(2, 2, 'A', 5),
(2, 2, 'B', 7),
(2, 12, 'A', 1),
(2, 12, 'B', 11),
(2, 13, 'A', 2),
(2, 13, 'B', 10),
(2, 14, 'A', 3),
(2, 14, 'B', 9),
(2, 15, 'A', 4),
(2, 15, 'B', 8),
(2, 16, 'A', 6),
(2, 16, 'B', 6),
(2, 17, 'A', 7),
(2, 17, 'B', 5),
(2, 18, 'A', 8),
(2, 18, 'B', 4),
(2, 19, 'A', 9),
(2, 19, 'B', 3),
(2, 20, 'A', 10),
(2, 20, 'B', 2),
(2, 21, 'A', 11),
(2, 21, 'B', 1),
(3, 2, 'A', 10),
(3, 2, 'B', 11),
(3, 22, 'A', 1),
(3, 22, 'B', 20),
(3, 23, 'A', 2),
(3, 23, 'B', 19),
(3, 24, 'A', 3),
(3, 24, 'B', 18),
(3, 25, 'A', 4),
(3, 25, 'B', 17),
(3, 26, 'A', 5),
(3, 26, 'B', 16),
(3, 27, 'A', 6),
(3, 27, 'B', 15),
(3, 28, 'A', 7),
(3, 28, 'B', 14),
(3, 29, 'A', 8),
(3, 29, 'B', 13),
(3, 30, 'A', 9),
(3, 30, 'B', 12),
(3, 31, 'A', 11),
(3, 31, 'B', 10),
(3, 32, 'A', 12),
(3, 32, 'B', 9),
(3, 33, 'A', 13),
(3, 33, 'B', 8),
(3, 34, 'A', 14),
(3, 34, 'B', 7),
(3, 35, 'A', 15),
(3, 35, 'B', 6),
(3, 36, 'A', 16),
(3, 36, 'B', 5),
(3, 37, 'A', 17),
(3, 37, 'B', 4),
(3, 38, 'A', 18),
(3, 38, 'B', 3),
(3, 39, 'A', 19),
(3, 39, 'B', 2),
(3, 40, 'A', 20),
(3, 40, 'B', 1),
(4, 18, 'B', 1),
(4, 18, 'M', 10),
(4, 32, 'B', 4),
(4, 32, 'M', 7),
(4, 41, 'B', 10),
(4, 41, 'M', 1),
(4, 42, 'B', 9),
(4, 42, 'M', 2),
(4, 43, 'B', 8),
(4, 43, 'M', 3),
(4, 44, 'B', 7),
(4, 44, 'M', 4),
(4, 45, 'B', 6),
(4, 45, 'M', 5),
(4, 46, 'B', 5),
(4, 46, 'M', 6),
(4, 47, 'B', 3),
(4, 47, 'M', 8),
(4, 48, 'B', 2),
(4, 48, 'M', 9),
(5, 15, 'A', 8),
(5, 15, 'B', 6),
(5, 28, 'A', 13),
(5, 28, 'B', 1),
(5, 31, 'A', 3),
(5, 32, 'A', 2),
(5, 46, 'A', 1),
(5, 46, 'B', 12),
(5, 49, 'A', 4),
(5, 50, 'A', 5),
(5, 51, 'A', 6),
(5, 52, 'A', 7),
(5, 53, 'A', 9),
(5, 54, 'A', 10),
(5, 54, 'B', 5),
(5, 55, 'A', 11),
(5, 55, 'B', 4),
(5, 56, 'A', 12),
(5, 56, 'B', 3),
(5, 57, 'B', 2),
(5, 58, 'B', 7),
(5, 59, 'B', 8),
(5, 60, 'B', 9),
(5, 61, 'B', 10),
(5, 62, 'B', 11),
(6, 15, 'A', 1),
(6, 15, 'B', 15),
(6, 63, 'A', 2),
(6, 63, 'B', 14),
(6, 64, 'A', 3),
(6, 64, 'B', 13),
(6, 65, 'A', 4),
(6, 65, 'B', 12),
(6, 66, 'A', 5),
(6, 66, 'B', 11),
(6, 67, 'A', 6),
(6, 67, 'B', 10),
(6, 68, 'A', 7),
(6, 68, 'B', 9),
(6, 69, 'A', 8),
(6, 69, 'B', 8),
(6, 70, 'A', 9),
(6, 70, 'B', 7),
(6, 71, 'A', 10),
(6, 71, 'B', 6),
(6, 72, 'A', 11),
(6, 72, 'B', 5),
(6, 73, 'A', 12),
(6, 73, 'B', 4),
(6, 74, 'A', 13),
(6, 74, 'B', 3),
(6, 75, 'A', 14),
(6, 75, 'B', 2),
(6, 76, 'A', 15),
(6, 76, 'B', 1),
(7, 2, 'A', 9),
(7, 2, 'B', 17),
(7, 10, 'A', 21),
(7, 10, 'B', 6),
(7, 16, 'A', 8),
(7, 16, 'B', 18),
(7, 30, 'A', 11),
(7, 30, 'A', 12),
(7, 30, 'B', 15),
(7, 32, 'A', 7),
(7, 32, 'B', 19),
(7, 63, 'A', 13),
(7, 63, 'B', 14),
(7, 75, 'A', 24),
(7, 75, 'B', 4),
(7, 77, 'A', 1),
(7, 77, 'B', 27),
(7, 78, 'A', 2),
(7, 78, 'B', 24),
(7, 79, 'A', 3),
(7, 79, 'B', 23),
(7, 80, 'A', 4),
(7, 80, 'B', 22),
(7, 81, 'A', 5),
(7, 81, 'B', 21),
(7, 82, 'A', 6),
(7, 82, 'B', 20),
(7, 83, 'A', 10),
(7, 83, 'B', 16),
(7, 84, 'A', 14),
(7, 84, 'B', 13),
(7, 85, 'A', 15),
(7, 85, 'B', 12),
(7, 86, 'A', 16),
(7, 86, 'B', 11),
(7, 87, 'A', 17),
(7, 87, 'B', 10),
(7, 88, 'A', 18),
(7, 89, 'A', 19),
(7, 89, 'B', 8),
(7, 90, 'A', 20),
(7, 90, 'B', 7),
(7, 91, 'A', 22),
(7, 92, 'A', 23),
(7, 92, 'B', 5),
(7, 93, 'A', 25),
(7, 93, 'B', 3),
(7, 94, 'A', 26),
(7, 94, 'B', 1),
(7, 95, 'B', 2),
(7, 96, 'B', 9),
(7, 97, 'B', 25),
(7, 98, 'B', 26),
(8, 18, 'A', 10),
(8, 18, 'A', 11),
(8, 18, 'B', 1),
(8, 30, 'A', 1),
(8, 30, 'B', 12),
(8, 63, 'A', 2),
(8, 63, 'B', 11),
(8, 68, 'A', 6),
(8, 68, 'B', 7),
(8, 84, 'A', 3),
(8, 84, 'B', 10),
(8, 85, 'A', 4),
(8, 85, 'B', 9),
(8, 99, 'A', 5),
(8, 99, 'B', 8),
(8, 100, 'A', 7),
(8, 101, 'A', 8),
(8, 102, 'A', 9),
(8, 102, 'B', 2),
(8, 103, 'B', 3),
(8, 104, 'B', 4),
(8, 105, 'B', 5),
(8, 106, 'B', 6),
(9, 17, 'A', 3),
(9, 75, 'A', 11),
(9, 75, 'B', 10),
(9, 92, 'A', 12),
(9, 92, 'B', 9),
(9, 93, 'A', 10),
(9, 93, 'B', 11),
(9, 101, 'A', 5),
(9, 104, 'A', 6),
(9, 105, 'B', 16),
(9, 107, 'A', 1),
(9, 107, 'B', 20),
(9, 108, 'A', 2),
(9, 109, 'A', 4),
(9, 110, 'A', 7),
(9, 111, 'A', 8),
(9, 112, 'A', 9),
(9, 112, 'B', 12),
(9, 113, 'A', 13),
(9, 113, 'B', 8),
(9, 114, 'A', 14),
(9, 114, 'B', 5),
(9, 115, 'A', 15),
(9, 115, 'B', 4),
(9, 116, 'A', 16),
(9, 116, 'B', 3),
(9, 117, 'A', 17),
(9, 117, 'B', 2),
(9, 118, 'A', 18),
(9, 119, 'A', 19),
(9, 119, 'B', 1),
(9, 120, 'B', 6),
(9, 121, 'B', 7),
(9, 122, 'B', 13),
(9, 123, 'B', 14),
(9, 124, 'B', 15),
(9, 125, 'B', 17),
(9, 126, 'B', 18),
(9, 127, 'B', 19),
(10, 11, 'A', 1),
(10, 11, 'B', 9),
(10, 114, 'A', 2),
(10, 114, 'B', 5),
(10, 115, 'A', 3),
(10, 115, 'B', 4),
(10, 116, 'A', 4),
(10, 116, 'B', 3),
(10, 117, 'A', 5),
(10, 117, 'B', 2),
(10, 118, 'A', 6),
(10, 119, 'A', 7),
(10, 119, 'B', 1),
(10, 120, 'B', 6),
(10, 121, 'B', 7),
(10, 128, 'B', 8),
(11, 9, 'A', 11),
(11, 9, 'B', 10),
(11, 19, 'A', 20),
(11, 19, 'B', 1),
(11, 19, 'B', 2),
(11, 27, 'A', 7),
(11, 27, 'B', 14),
(11, 56, 'A', 2),
(11, 56, 'B', 19),
(11, 72, 'A', 13),
(11, 72, 'B', 8),
(11, 95, 'A', 17),
(11, 95, 'B', 5),
(11, 112, 'A', 16),
(11, 112, 'B', 6),
(11, 122, 'A', 15),
(11, 122, 'B', 7),
(11, 123, 'A', 14),
(11, 129, 'A', 1),
(11, 129, 'B', 20),
(11, 130, 'A', 3),
(11, 130, 'B', 18),
(11, 131, 'A', 4),
(11, 131, 'B', 17),
(11, 132, 'A', 5),
(11, 132, 'B', 16),
(11, 133, 'A', 6),
(11, 133, 'B', 15),
(11, 134, 'A', 8),
(11, 134, 'B', 13),
(11, 135, 'A', 9),
(11, 135, 'B', 12),
(11, 136, 'A', 10),
(11, 136, 'B', 11),
(11, 137, 'A', 12),
(11, 137, 'B', 9),
(11, 138, 'A', 18),
(11, 138, 'B', 4),
(11, 139, 'A', 19),
(11, 139, 'B', 3),
(12, 18, 'A', 12),
(12, 18, 'A', 13),
(12, 18, 'B', 1),
(12, 28, 'B', 11),
(12, 56, 'A', 2),
(12, 56, 'B', 14),
(12, 57, 'B', 12),
(12, 68, 'A', 8),
(12, 68, 'B', 7),
(12, 85, 'A', 6),
(12, 85, 'B', 9),
(12, 99, 'A', 7),
(12, 99, 'B', 8),
(12, 100, 'A', 9),
(12, 101, 'A', 10),
(12, 102, 'A', 11),
(12, 102, 'B', 2),
(12, 103, 'B', 3),
(12, 104, 'B', 4),
(12, 105, 'B', 5),
(12, 106, 'B', 6),
(12, 129, 'A', 1),
(12, 129, 'B', 15),
(12, 130, 'A', 3),
(12, 130, 'B', 13),
(12, 140, 'A', 4),
(12, 141, 'A', 5),
(12, 141, 'B', 10),
(13, 19, 'A', 1),
(13, 19, 'B', 19),
(13, 19, 'B', 20),
(13, 138, 'A', 3),
(13, 138, 'B', 17),
(13, 139, 'A', 2),
(13, 139, 'B', 18),
(13, 142, 'A', 4),
(13, 142, 'B', 16),
(13, 143, 'A', 5),
(13, 143, 'B', 15),
(13, 144, 'A', 6),
(13, 144, 'B', 14),
(13, 145, 'A', 7),
(13, 145, 'B', 13),
(13, 146, 'A', 8),
(13, 146, 'B', 12),
(13, 147, 'A', 9),
(13, 147, 'B', 11),
(13, 148, 'A', 10),
(13, 148, 'B', 10),
(13, 149, 'A', 11),
(13, 149, 'B', 9),
(13, 150, 'A', 12),
(13, 150, 'B', 8),
(13, 151, 'A', 13),
(13, 151, 'B', 7),
(13, 152, 'A', 14),
(13, 152, 'B', 6),
(13, 153, 'A', 15),
(13, 153, 'B', 1),
(13, 154, 'B', 2),
(13, 155, 'B', 3),
(13, 156, 'B', 4),
(13, 157, 'B', 5),
(14, 15, 'A', 1),
(14, 15, 'B', 12),
(14, 63, 'A', 2),
(14, 63, 'B', 11),
(14, 64, 'A', 3),
(14, 64, 'B', 10),
(14, 65, 'A', 4),
(14, 65, 'B', 9),
(14, 66, 'A', 5),
(14, 66, 'B', 8),
(14, 67, 'A', 6),
(14, 67, 'B', 7),
(14, 68, 'A', 7),
(14, 68, 'B', 6),
(14, 69, 'A', 8),
(14, 69, 'B', 5),
(14, 70, 'B', 4),
(14, 71, 'B', 3),
(14, 110, 'B', 2),
(14, 158, 'A', 9),
(14, 159, 'A', 10),
(14, 160, 'A', 11),
(14, 160, 'B', 1),
(15, 9, 'A', 9),
(15, 9, 'B', 7),
(15, 18, 'A', 1),
(15, 18, 'B', 13),
(15, 27, 'A', 13),
(15, 27, 'B', 3),
(15, 72, 'A', 7),
(15, 72, 'B', 9),
(15, 102, 'A', 2),
(15, 103, 'A', 3),
(15, 104, 'A', 4),
(15, 110, 'A', 5),
(15, 111, 'A', 6),
(15, 122, 'B', 11),
(15, 123, 'B', 10),
(15, 133, 'B', 2),
(15, 134, 'A', 12),
(15, 134, 'B', 4),
(15, 135, 'A', 11),
(15, 135, 'B', 5),
(15, 136, 'A', 10),
(15, 136, 'B', 6),
(15, 137, 'A', 8),
(15, 137, 'B', 8),
(15, 161, 'A', 14),
(15, 162, 'A', 15),
(15, 162, 'B', 1),
(15, 163, 'B', 12),
(16, 18, 'A', 1),
(16, 18, 'A', 2),
(16, 18, 'B', 22),
(16, 19, 'A', 5),
(16, 19, 'B', 19),
(16, 21, 'A', 21),
(16, 21, 'B', 1),
(16, 145, 'A', 8),
(16, 145, 'B', 15),
(16, 164, 'A', 3),
(16, 164, 'B', 21),
(16, 165, 'A', 4),
(16, 165, 'B', 20),
(16, 166, 'A', 6),
(16, 166, 'B', 17),
(16, 167, 'A', 7),
(16, 167, 'B', 16),
(16, 168, 'A', 9),
(16, 168, 'B', 14),
(16, 169, 'A', 10),
(16, 169, 'B', 13),
(16, 170, 'A', 11),
(16, 170, 'B', 12),
(16, 171, 'A', 12),
(16, 171, 'B', 11),
(16, 172, 'A', 13),
(16, 172, 'B', 10),
(16, 173, 'A', 14),
(16, 173, 'B', 9),
(16, 174, 'A', 15),
(16, 174, 'B', 8),
(16, 175, 'A', 16),
(16, 175, 'B', 7),
(16, 176, 'A', 17),
(16, 176, 'B', 6),
(16, 177, 'A', 18),
(16, 177, 'B', 4),
(16, 178, 'A', 19),
(16, 178, 'B', 3),
(16, 179, 'A', 20),
(16, 179, 'B', 2),
(16, 180, 'B', 5),
(16, 181, 'B', 18),
(17, 18, 'A', 1),
(17, 18, 'A', 2),
(17, 18, 'B', 16),
(17, 19, 'A', 5),
(17, 19, 'B', 13),
(17, 145, 'A', 8),
(17, 145, 'B', 9),
(17, 164, 'A', 3),
(17, 164, 'B', 15),
(17, 165, 'A', 4),
(17, 165, 'B', 14),
(17, 166, 'A', 6),
(17, 166, 'B', 11),
(17, 167, 'A', 7),
(17, 167, 'B', 10),
(17, 168, 'A', 9),
(17, 168, 'B', 8),
(17, 169, 'A', 10),
(17, 169, 'B', 7),
(17, 170, 'A', 11),
(17, 170, 'B', 6),
(17, 171, 'A', 12),
(17, 171, 'B', 5),
(17, 172, 'A', 13),
(17, 172, 'B', 4),
(17, 173, 'A', 14),
(17, 173, 'B', 3),
(17, 174, 'A', 15),
(17, 174, 'B', 2),
(17, 175, 'A', 16),
(17, 175, 'B', 1),
(17, 181, 'B', 12),
(18, 21, 'A', 1),
(18, 21, 'B', 9),
(18, 172, 'A', 10),
(18, 172, 'B', 1),
(18, 173, 'A', 9),
(18, 173, 'B', 2),
(18, 174, 'A', 8),
(18, 174, 'B', 3),
(18, 175, 'A', 7),
(18, 175, 'B', 4),
(18, 176, 'A', 6),
(18, 176, 'B', 5),
(18, 177, 'A', 4),
(18, 177, 'B', 6),
(18, 178, 'A', 3),
(18, 178, 'B', 7),
(18, 179, 'A', 2),
(18, 179, 'B', 8),
(18, 180, 'A', 5),
(19, 21, 'A', 14),
(19, 21, 'B', 1),
(19, 148, 'A', 7),
(19, 148, 'B', 8),
(19, 149, 'A', 6),
(19, 149, 'B', 9),
(19, 182, 'A', 1),
(19, 182, 'B', 14),
(19, 182, 'B', 16),
(19, 183, 'A', 2),
(19, 183, 'B', 13),
(19, 184, 'A', 3),
(19, 184, 'B', 12),
(19, 185, 'A', 4),
(19, 185, 'B', 11),
(19, 186, 'A', 5),
(19, 186, 'B', 10),
(19, 187, 'A', 8),
(19, 187, 'B', 7),
(19, 188, 'A', 9),
(19, 188, 'B', 6),
(19, 189, 'A', 10),
(19, 189, 'B', 5),
(19, 190, 'A', 11),
(19, 190, 'B', 4),
(19, 191, 'A', 12),
(19, 192, 'A', 13),
(19, 192, 'B', 2),
(19, 193, 'B', 3),
(19, 194, 'B', 15),
(20, 32, 'A', 2),
(20, 46, 'A', 1),
(20, 46, 'B', 9),
(20, 77, 'A', 10),
(20, 77, 'B', 1),
(20, 78, 'A', 7),
(20, 78, 'B', 2),
(20, 79, 'A', 6),
(20, 79, 'B', 3),
(20, 80, 'A', 5),
(20, 80, 'B', 4),
(20, 81, 'A', 4),
(20, 81, 'B', 5),
(20, 82, 'A', 3),
(20, 97, 'A', 8),
(20, 98, 'A', 9),
(20, 195, 'B', 6),
(20, 196, 'B', 7),
(20, 197, 'B', 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jaratok`
--

CREATE TABLE `jaratok` (
  `id` int(11) NOT NULL,
  `jaratSzam` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `jaratTipus` varchar(1) COLLATE utf8_hungarian_ci NOT NULL,
  `elsoAjtos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jaratok`
--

INSERT INTO `jaratok` (`id`, `jaratSzam`, `jaratTipus`, `elsoAjtos`) VALUES
(1, '1', 'M', 0),
(2, '2', 'M', 0),
(3, '3', 'M', 0),
(4, '4', 'M', 0),
(5, 'CITY', 'T', 0),
(6, '70', 'T', 0),
(7, '72', 'T', 1),
(8, '73', 'T', 1),
(9, '74', 'T', 0),
(10, '74A', 'T', 1),
(11, '75', 'T', 0),
(12, '76', 'T', 1),
(13, '77', 'T', 1),
(14, '78', 'T', 0),
(15, '79', 'T', 1),
(16, '80', 'T', 0),
(17, '80A', 'T', 0),
(18, '81', 'T', 0),
(19, '82', 'T', 1),
(20, '83', 'T', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megallok`
--

CREATE TABLE `megallok` (
  `id` int(11) NOT NULL,
  `nev` varchar(40) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `megallok`
--

INSERT INTO `megallok` (`id`, `nev`) VALUES
(1, 'Vörösmarty tér M'),
(2, 'Deák Ferenc tér M'),
(3, 'Bajcsy-Zsilinszky út M'),
(4, 'Opera M'),
(5, 'Oktogon M'),
(6, 'Vörösmarty utca M'),
(7, 'Kodály körönd M'),
(8, 'Bajza utca M'),
(9, 'Hősök tere M'),
(10, 'Széchenyi fürdő M'),
(11, 'Mexikói út M'),
(12, 'Déli pályaudvar M'),
(13, 'Széll Kálmán tér M'),
(14, 'Batthyány tér M'),
(15, 'Kossuth Lajos tér M'),
(16, 'Astoria M'),
(17, 'Blaha Lujza tér M'),
(18, 'Keleti pályaudvar M'),
(19, 'Puskás Ferenc Stadion M'),
(20, 'Pillangó utca M'),
(21, 'Örs vezér tere M'),
(22, 'Újpest-központ M'),
(23, 'Újpest-városkapu M'),
(24, 'Gyöngyösi utca M'),
(25, 'Forgách utca M'),
(26, 'Árpád híd M'),
(27, 'Dózsa György út M'),
(28, 'Lehel tér M'),
(29, 'Nyugati pályaudvar M'),
(30, 'Arany János utca M'),
(31, 'Ferenciek tere M'),
(32, 'Kálvin tér M'),
(33, 'Corvin-negyed M'),
(34, 'Semmelweis Klinikák M'),
(35, 'Nagyvárad tér M'),
(36, 'Népliget M'),
(37, 'Ecseri út M'),
(38, 'Pöttyös utca M'),
(39, 'Határ út M'),
(40, 'Kőbánya-Kispest M'),
(41, 'Kelenföld vasútállomás M'),
(42, 'Bikás park M'),
(43, 'Újbuda-központ M'),
(44, 'Móricz Zsigmond körtér M'),
(45, 'Szent Gellért tér – Műegyetem M'),
(46, 'Fővám tér M'),
(47, 'Rákóczi tér M'),
(48, 'II. János Pál pápa tér M'),
(49, 'Szervita tér'),
(50, 'Erzsébet tér'),
(51, 'Hercegprímás utca'),
(52, 'Hold utca (Belvárosi piac)'),
(53, 'Szemere utca'),
(54, 'Markó utca'),
(55, 'Szent István körút'),
(56, 'Radnóti Miklós utca'),
(57, 'Victor Hugo utca'),
(58, 'Széchenyi utca'),
(59, 'Zrínyi utca'),
(60, 'Dorottya utca (Vörösmarty tér M)'),
(61, 'Petőfi tér'),
(62, 'Március 15. tér'),
(63, 'Báthory utca / Bajcsy-Zsilinszky út'),
(64, 'Zichy Jenő utca'),
(65, 'Andrássy út (Opera M)'),
(66, 'Akácfa utca'),
(67, 'Király utca / Erzsébet körút'),
(68, 'Izabella utca / Király utca'),
(69, 'Lövölde tér'),
(70, 'Reformáció park'),
(71, 'Nefelejcs utca / Damjanich utca'),
(72, 'Damjanich utca / Dózsa György út'),
(73, 'Dvořák sétány'),
(74, 'Olof Palme sétány'),
(75, 'Közlekedési Múzeum'),
(76, 'Erzsébet királyné útja, aluljáró'),
(77, 'Orczy tér'),
(78, 'Kálvária tér'),
(79, 'Muzsikus cigányok parkja'),
(80, 'Horváth Mihály tér'),
(81, 'Harminckettesek tere'),
(82, 'Szentkirályi utca'),
(83, 'Szent István Bazilika'),
(84, 'Nyugati pályaudvar M (Podmaniczky utca)'),
(85, 'Ferdinánd híd (Izabella utca)'),
(86, 'Szinyei Merse utca'),
(87, 'Bajza utca'),
(88, 'Munkácsy Mihály utca'),
(89, 'Honvédkórház (Hősök tere M)'),
(90, 'Állatkert'),
(91, 'Kós Károly sétány'),
(92, 'Bethesda utca'),
(93, 'Vakok Intézete'),
(94, 'Zugló vasútállomás (Hermina út)'),
(95, 'Stefánia út / Thököly út'),
(96, 'Rippl-Rónai utca'),
(97, 'Csobánc utca'),
(98, 'Orczy út'),
(99, 'Andrássy út (Vörösmarty utca M)'),
(100, 'Wesselényi utca / Izabella utca'),
(101, 'Rózsák tere'),
(102, 'Munkás utca'),
(103, 'Péterfy Sándor utca'),
(104, 'Rottenbiller utca / István utca'),
(105, 'Rózsa utca'),
(106, 'Dob utca'),
(107, 'Károly körút (Astoria M)'),
(108, 'Nagy Diófa utca'),
(109, 'Szövetség utca'),
(110, 'Nefelejcs utca / István utca'),
(111, 'Ötvenhatosok tere (István utca)'),
(112, 'Zichy Géza utca'),
(113, 'Amerikai út (Mexikói út M)'),
(114, 'Kassai tér'),
(115, 'Nezsider park'),
(116, 'Pándorfalu utca'),
(117, 'Sárrét park'),
(118, 'Róna park'),
(119, 'Csáktornya park'),
(120, 'Szőnyi út'),
(121, 'Teleki Blanka utca'),
(122, 'Ötvenhatosok tere'),
(123, 'Dembinszky utca'),
(124, 'Nefelejcs utca'),
(125, 'Almássy tér'),
(126, 'Wesselényi utca / Erzsébet körút'),
(127, 'Nyár utca'),
(128, 'Mexikói út'),
(129, 'Jászai Mari tér'),
(130, 'Szent István park'),
(131, 'Ipoly utca'),
(132, 'Vág utca'),
(133, 'Dráva utca'),
(134, 'Kassák Lajos utca'),
(135, 'Lehel utca / Dózsa György út'),
(136, 'Vágány utca / Dózsa György út'),
(137, 'Benczúr utca'),
(138, 'Egressy út / Stefánia út'),
(139, 'Szobránc köz'),
(140, 'Hegedűs Gyula utca'),
(141, 'Csanády utca (Lehel tér M)'),
(142, 'Egressy út / Hungária körút'),
(143, 'Törökőr utca'),
(144, 'Posta Járműtelep'),
(145, 'Róna utca'),
(146, 'Egressy tér'),
(147, 'Turán utca'),
(148, 'Egressy út / Vezér utca'),
(149, 'Komócsy utca'),
(150, 'Miskolci utca / Szugló utca'),
(151, 'Szugló utca / Cinkotai út'),
(152, 'Rákosmezei tér'),
(153, 'Kála utca'),
(154, 'Gvadányi utca'),
(155, 'Cinkotai út / Mogyoródi út'),
(156, 'Öv utca / Mogyoródi út'),
(157, 'Öv utca / Egressy út'),
(158, 'Bethlen Gábor utca'),
(159, 'Bethlen Gábor tér'),
(160, 'Keleti pályaudvar M (Garay utca)'),
(161, 'Révész utca'),
(162, 'Kárpát utca'),
(163, 'Cserhát utca'),
(164, 'Arena Mall bevásárlóközpont'),
(165, 'Gumigyár'),
(166, 'Várna utca'),
(167, 'Pillangó utca'),
(168, 'Kaffka Margit utca'),
(169, 'Pongrátz Gergely tér'),
(170, 'Mályva utca'),
(171, 'Vezér utca / Fogarasi út'),
(172, 'Fischer István utca'),
(173, 'Zsálya utca'),
(174, 'Újváros park'),
(175, 'Csertő utca'),
(176, 'Füredi utca / Szentmihályi út'),
(177, 'Ond vezér útja / Szentmihályi út'),
(178, 'Ond vezér park'),
(179, 'Füredi utca / Ond vezér útja'),
(180, 'Zsivora park'),
(181, 'Őrnagy utca'),
(182, 'Uzsoki Utcai Kórház'),
(183, 'Tisza István tér'),
(184, 'Szugló utca / Róna utca'),
(185, 'Szugló utca / Nagy Lajos király útja'),
(186, 'Fűrész utca / Szugló utca'),
(187, 'Mogyoródi út'),
(188, 'Gödöllői utca'),
(189, 'Fogarasi út'),
(190, 'Tihamér utca'),
(191, 'Füredi utca'),
(192, 'Álmos vezér útja'),
(193, 'Vezér utca'),
(194, 'Erzsébet királyné útja / Róna utca'),
(195, 'Üllői út'),
(196, 'Ráday utca'),
(197, 'Közraktár utca');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `halozat`
--
ALTER TABLE `halozat`
  ADD PRIMARY KEY (`jarat`,`megallo`,`irany`,`sorszam`),
  ADD KEY `fk_megallok` (`megallo`);

--
-- A tábla indexei `jaratok`
--
ALTER TABLE `jaratok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `megallok`
--
ALTER TABLE `megallok`
  ADD PRIMARY KEY (`id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `halozat`
--
ALTER TABLE `halozat`
  ADD CONSTRAINT `fk_jaratok` FOREIGN KEY (`jarat`) REFERENCES `jaratok` (`id`),
  ADD CONSTRAINT `fk_megallok` FOREIGN KEY (`megallo`) REFERENCES `megallok` (`id`);
--
-- Adatbázis: `kobanyavasut`
--
CREATE DATABASE IF NOT EXISTS `kobanyavasut` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `kobanyavasut`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allomasok`
--

CREATE TABLE `allomasok` (
  `id` int(11) NOT NULL,
  `allomasNev` varchar(16) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `allomasok`
--

INSERT INTO `allomasok` (`id`, `allomasNev`) VALUES
(1, 'Budapest-Keleti'),
(2, 'Budapest-Nyugati'),
(3, 'Cegléd'),
(4, 'Eger'),
(5, 'Füzesabony'),
(6, 'Gödöllő'),
(7, 'Hatvan'),
(8, 'Kecskemét'),
(9, 'Lajosmizse'),
(10, 'Monor'),
(11, 'Nagykáta'),
(12, 'Sülysáp'),
(13, 'Szeged'),
(14, 'Szolnok'),
(15, 'Záhony'),
(16, 'Dabas');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vonatok`
--

CREATE TABLE `vonatok` (
  `jaratSzam` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `jaratTipus` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  `indulas` time NOT NULL,
  `allomas` varchar(5) COLLATE utf8_hungarian_ci NOT NULL,
  `vegAll` int(11) NOT NULL,
  `erkezIdo` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vonatok`
--

INSERT INTO `vonatok` (`jaratSzam`, `jaratTipus`, `indulas`, `allomas`, `vegAll`, `erkezIdo`) VALUES
('2608', 'gy', '17:39:00', 'Alsó', 14, '18:53:00'),
('2610', 'sz', '00:54:00', 'Alsó', 14, '02:24:00'),
('2611', 'sz', '00:02:00', 'Alsó', 2, '00:14:00'),
('2617', 'zó', '07:45:00', 'Alsó', 2, '07:57:00'),
('2619', 'sz', '04:40:00', 'Alsó', 2, '04:52:00'),
('2620', 'sz', '02:56:00', 'Alsó', 14, '04:35:00'),
('2627', 'zó', '08:15:00', 'Alsó', 2, '08:27:00'),
('2629', 'sz', '05:10:00', 'Alsó', 2, '05:22:00'),
('2638', 'sz', '22:54:00', 'Alsó', 14, '00:24:00'),
('2648', 'sz', '23:54:00', 'Alsó', 14, '01:24:00'),
('2649', 'zó', '06:45:00', 'Alsó', 2, '06:57:00'),
('2669', 'zó', '07:15:00', 'Alsó', 2, '07:27:00'),
('2710', 'sz', '04:49:00', 'Alsó', 10, '05:22:00'),
('2711', 'sz', '18:40:00', 'Alsó', 2, '18:52:00'),
('2712', 'sz', '06:49:00', 'Alsó', 10, '07:22:00'),
('2713', 'sz', '14:40:00', 'Alsó', 2, '14:52:00'),
('2714', 'sz', '10:19:00', 'Alsó', 10, '10:52:00'),
('2715', 'sz', '10:40:00', 'Alsó', 2, '10:52:00'),
('2716', 'sz', '14:19:00', 'Alsó', 10, '14:52:00'),
('2717', 'sz', '08:10:00', 'Alsó', 2, '08:22:00'),
('2718', 'sz', '18:19:00', 'Alsó', 10, '18:52:00'),
('2719', 'sz', '05:40:00', 'Alsó', 2, '05:52:00'),
('2720', 'sz', '05:19:00', 'Alsó', 10, '05:52:00'),
('2721', 'sz', '19:10:00', 'Alsó', 2, '19:22:00'),
('2722', 'sz', '07:19:00', 'Alsó', 10, '07:52:00'),
('2723', 'sz', '15:10:00', 'Alsó', 2, '15:22:00'),
('2724', 'sz', '10:49:00', 'Alsó', 10, '11:22:00'),
('2725', 'sz', '11:10:00', 'Alsó', 2, '11:22:00'),
('2726', 'sz', '14:49:00', 'Alsó', 10, '15:22:00'),
('2727', 'sz', '08:40:00', 'Alsó', 2, '08:52:00'),
('2728', 'sz', '18:49:00', 'Alsó', 10, '19:22:00'),
('2729', 'sz', '06:10:00', 'Alsó', 2, '06:22:00'),
('2730', 'sz', '05:49:00', 'Alsó', 10, '06:22:00'),
('2731', 'sz', '20:10:00', 'Alsó', 2, '20:22:00'),
('2732', 'sz', '07:49:00', 'Alsó', 10, '08:22:00'),
('2733', 'sz', '15:40:00', 'Alsó', 2, '15:52:00'),
('2734', 'sz', '11:19:00', 'Alsó', 10, '11:52:00'),
('2735', 'sz', '11:40:00', 'Alsó', 2, '11:52:00'),
('2736', 'sz', '15:19:00', 'Alsó', 10, '15:52:00'),
('2737', 'sz', '09:10:00', 'Alsó', 2, '09:22:00'),
('2738', 'sz', '19:19:00', 'Alsó', 10, '19:52:00'),
('2739', 'sz', '06:40:00', 'Alsó', 2, '06:52:00'),
('2740', 'sz', '06:19:00', 'Alsó', 10, '06:52:00'),
('2741', 'sz', '21:10:00', 'Alsó', 2, '21:22:00'),
('2742', 'sz', '08:19:00', 'Alsó', 10, '08:52:00'),
('2743', 'sz', '16:10:00', 'Alsó', 2, '16:22:00'),
('2744', 'sz', '11:49:00', 'Alsó', 10, '12:22:00'),
('2745', 'sz', '12:10:00', 'Alsó', 2, '12:22:00'),
('2746', 'sz', '15:49:00', 'Alsó', 10, '16:22:00'),
('2747', 'sz', '09:40:00', 'Alsó', 2, '09:52:00'),
('2748', 'sz', '19:49:00', 'Alsó', 10, '20:22:00'),
('2749', 'sz', '07:10:00', 'Alsó', 2, '07:22:00'),
('2751', 'sz', '22:10:00', 'Alsó', 2, '22:22:00'),
('2752', 'sz', '08:49:00', 'Alsó', 10, '09:22:00'),
('2753', 'sz', '16:40:00', 'Alsó', 2, '16:52:00'),
('2754', 'sz', '12:19:00', 'Alsó', 10, '12:52:00'),
('2755', 'sz', '12:40:00', 'Alsó', 2, '12:52:00'),
('2756', 'sz', '16:19:00', 'Alsó', 10, '16:52:00'),
('2757', 'sz', '10:10:00', 'Alsó', 2, '10:22:00'),
('2758', 'sz', '20:49:00', 'Alsó', 10, '21:22:00'),
('2759', 'sz', '07:40:00', 'Alsó', 2, '07:52:00'),
('2762', 'sz', '09:19:00', 'Alsó', 10, '09:52:00'),
('2763', 'sz', '17:10:00', 'Alsó', 2, '17:22:00'),
('2764', 'sz', '12:49:00', 'Alsó', 10, '13:22:00'),
('2765', 'sz', '13:10:00', 'Alsó', 2, '13:22:00'),
('2766', 'sz', '16:49:00', 'Alsó', 10, '17:22:00'),
('2768', 'sz', '21:54:00', 'Alsó', 10, '22:27:00'),
('2772', 'sz', '09:49:00', 'Alsó', 10, '10:22:00'),
('2773', 'sz', '17:40:00', 'Alsó', 2, '17:52:00'),
('2774', 'sz', '13:19:00', 'Alsó', 10, '13:52:00'),
('2775', 'sz', '13:40:00', 'Alsó', 2, '13:52:00'),
('2776', 'sz', '17:19:00', 'Alsó', 10, '17:52:00'),
('2783', 'sz', '18:10:00', 'Alsó', 2, '18:22:00'),
('2784', 'sz', '13:49:00', 'Alsó', 10, '14:22:00'),
('2785', 'sz', '14:10:00', 'Alsó', 2, '14:22:00'),
('2786', 'sz', '17:49:00', 'Alsó', 10, '18:22:00'),
('2811', 'zó', '19:45:00', 'Alsó', 2, '19:57:00'),
('2812', 'zó', '06:14:00', 'Alsó', 3, '07:12:00'),
('2813', 'zó', '15:45:00', 'Alsó', 2, '15:57:00'),
('2814', 'zó', '10:14:00', 'Alsó', 3, '11:12:00'),
('2815', 'zó', '11:45:00', 'Alsó', 2, '11:57:00'),
('2816', 'zó', '14:14:00', 'Alsó', 3, '15:12:00'),
('2817', 'zó', '08:45:00', 'Alsó', 2, '08:57:00'),
('2818', 'zó', '18:14:00', 'Alsó', 3, '19:12:00'),
('2819', 'sz', '04:10:00', 'Alsó', 2, '04:22:00'),
('2821', 'zó', '20:45:00', 'Alsó', 2, '20:57:00'),
('2822', 'zó', '07:14:00', 'Alsó', 3, '08:12:00'),
('2823', 'zó', '16:45:00', 'Alsó', 2, '16:57:00'),
('2824', 'zó', '11:14:00', 'Alsó', 3, '12:12:00'),
('2825', 'zó', '12:45:00', 'Alsó', 2, '12:57:00'),
('2826', 'zó', '15:14:00', 'Alsó', 3, '16:12:00'),
('2827', 'zó', '09:45:00', 'Alsó', 2, '09:57:00'),
('2828', 'zó', '19:14:00', 'Alsó', 3, '20:12:00'),
('2829', 'zó', '05:15:00', 'Alsó', 2, '05:27:00'),
('2831', 'zó', '21:45:00', 'Alsó', 2, '21:57:00'),
('2832', 'zó', '08:14:00', 'Alsó', 3, '09:12:00'),
('2833', 'zó', '17:45:00', 'Alsó', 2, '17:57:00'),
('2834', 'zó', '12:14:00', 'Alsó', 3, '13:12:00'),
('2835', 'zó', '13:45:00', 'Alsó', 2, '13:57:00'),
('2836', 'zó', '16:14:00', 'Alsó', 3, '17:12:00'),
('2837', 'zó', '10:45:00', 'Alsó', 2, '10:57:00'),
('2838', 'zó', '20:14:00', 'Alsó', 3, '21:12:00'),
('2839', 'zó', '05:45:00', 'Alsó', 2, '05:57:00'),
('2842', 'zó', '09:14:00', 'Alsó', 3, '10:12:00'),
('2843', 'zó', '18:45:00', 'Alsó', 2, '18:57:00'),
('2844', 'zó', '13:14:00', 'Alsó', 3, '14:12:00'),
('2845', 'zó', '14:45:00', 'Alsó', 2, '14:57:00'),
('2846', 'zó', '17:14:00', 'Alsó', 3, '18:12:00'),
('2848', 'zó', '21:14:00', 'Alsó', 3, '22:12:00'),
('2849', 'gy', '05:55:00', 'Alsó', 2, '06:07:00'),
('2856', 'zó', '13:44:00', 'Alsó', 3, '14:42:00'),
('2858', 'zó', '17:44:00', 'Alsó', 3, '18:42:00'),
('2859', 'zó', '06:15:00', 'Alsó', 2, '06:27:00'),
('2866', 'zó', '14:44:00', 'Alsó', 3, '15:42:00'),
('2868', 'zó', '18:44:00', 'Alsó', 3, '19:42:00'),
('2876', 'zó', '15:44:00', 'Alsó', 3, '16:42:00'),
('2878', 'zó', '19:44:00', 'Alsó', 14, '21:15:00'),
('2879', 'gy', '06:55:00', 'Alsó', 2, '07:07:00'),
('2886', 'zó', '16:44:00', 'Alsó', 3, '17:42:00'),
('2888', 'zó', '20:44:00', 'Alsó', 14, '22:04:00'),
('2911', 'sz', '20:30:00', 'Alsó', 2, '20:42:00'),
('2912', 'sz', '06:29:00', 'Alsó', 9, '08:18:00'),
('2913', 'sz', '16:30:00', 'Alsó', 2, '16:42:00'),
('2914', 'sz', '10:29:00', 'Alsó', 9, '12:18:00'),
('2915', 'sz', '12:30:00', 'Alsó', 2, '12:42:00'),
('2916', 'sz', '14:29:00', 'Alsó', 9, '16:18:00'),
('2917', 'sz', '07:30:00', 'Alsó', 2, '07:42:00'),
('2918', 'sz', '18:29:00', 'Alsó', 9, '20:18:00'),
('2919', 'sz', '04:30:00', 'Alsó', 2, '04:42:00'),
('2920', 'sz', '05:29:00', 'Alsó', 9, '07:18:00'),
('2921', 'sz', '21:30:00', 'Alsó', 2, '21:42:00'),
('2922', 'sz', '07:29:00', 'Alsó', 9, '09:18:00'),
('2923', 'sz', '17:30:00', 'Alsó', 2, '17:42:00'),
('2924', 'sz', '11:29:00', 'Alsó', 9, '13:18:00'),
('2925', 'sz', '13:30:00', 'Alsó', 2, '13:42:00'),
('2926', 'sz', '15:29:00', 'Alsó', 9, '17:18:00'),
('2928', 'sz', '19:29:00', 'Alsó', 9, '21:18:00'),
('2929', 'sz', '05:00:00', 'Alsó', 2, '05:12:00'),
('2931', 'sz', '22:30:00', 'Alsó', 2, '22:42:00'),
('2932', 'sz', '08:29:00', 'Alsó', 9, '10:18:00'),
('2933', 'sz', '18:30:00', 'Alsó', 2, '18:42:00'),
('2934', 'sz', '12:29:00', 'Alsó', 9, '14:18:00'),
('2935', 'sz', '14:30:00', 'Alsó', 2, '14:42:00'),
('2936', 'sz', '16:29:00', 'Alsó', 9, '18:18:00'),
('2937', 'sz', '08:30:00', 'Alsó', 2, '08:42:00'),
('2938', 'sz', '20:29:00', 'Alsó', 9, '22:15:00'),
('2939', 'sz', '05:30:00', 'Alsó', 2, '05:42:00'),
('2942', 'sz', '09:29:00', 'Alsó', 9, '11:18:00'),
('2943', 'sz', '19:30:00', 'Alsó', 2, '19:42:00'),
('2944', 'sz', '13:29:00', 'Alsó', 9, '15:18:00'),
('2945', 'sz', '15:30:00', 'Alsó', 2, '15:42:00'),
('2946', 'sz', '17:29:00', 'Alsó', 9, '19:18:00'),
('2947', 'sz', '09:30:00', 'Alsó', 2, '09:42:00'),
('2948', 'sz', '21:29:00', 'Alsó', 9, '23:15:00'),
('2957', 'sz', '10:30:00', 'Alsó', 2, '10:42:00'),
('2958', 'sz', '22:29:00', 'Alsó', 9, '00:12:00'),
('2959', 'sz', '06:30:00', 'Alsó', 2, '06:42:00'),
('2967', 'sz', '11:30:00', 'Alsó', 2, '11:42:00'),
('2968', 'sz', '23:44:00', 'Alsó', 9, '01:27:00'),
('3011', 'sz', '20:24:00', 'Felső', 1, '20:30:00'),
('3014', 'sz', '11:36:00', 'Felső', 7, '12:47:00'),
('3015', 'sz', '12:24:00', 'Felső', 1, '12:30:00'),
('3016', 'sz', '16:41:00', 'Felső', 7, '17:47:00'),
('3017', 'sz', '07:34:00', 'Felső', 1, '07:40:00'),
('3019', 'sz', '04:19:00', 'Felső', 1, '04:25:00'),
('3020', 'sz', '05:06:00', 'Felső', 7, '06:14:00'),
('3022', 'sz', '07:36:00', 'Felső', 7, '08:47:00'),
('3023', 'sz', '18:24:00', 'Felső', 1, '18:30:00'),
('3026', 'sz', '17:36:00', 'Felső', 7, '18:47:00'),
('3027', 'sz', '07:49:00', 'Felső', 1, '07:55:00'),
('3028', 'sz', '19:36:00', 'Felső', 7, '20:47:00'),
('3029', 'sz', '04:54:00', 'Felső', 1, '05:00:00'),
('3030', 'sz', '05:36:00', 'Felső', 7, '06:47:00'),
('3031', 'sz', '22:24:00', 'Felső', 1, '22:30:00'),
('3034', 'sz', '13:36:00', 'Felső', 7, '14:47:00'),
('3035', 'sz', '14:24:00', 'Felső', 1, '14:30:00'),
('3037', 'sz', '08:24:00', 'Felső', 1, '08:30:00'),
('3038', 'sz', '20:36:00', 'Felső', 7, '21:47:00'),
('3039', 'sz', '05:24:00', 'Felső', 1, '05:30:00'),
('3040', 'sz', '06:06:00', 'Felső', 7, '07:13:00'),
('3041', 'sz', '23:24:00', 'Felső', 1, '23:30:00'),
('3042', 'sz', '09:36:00', 'Felső', 7, '10:47:00'),
('3048', 'sz', '21:36:00', 'Felső', 7, '22:47:00'),
('3049', 'sz', '06:09:00', 'Felső', 1, '06:15:00'),
('3054', 'sz', '15:36:00', 'Felső', 7, '16:47:00'),
('3055', 'sz', '16:24:00', 'Felső', 1, '16:30:00'),
('3057', 'sz', '10:24:00', 'Felső', 1, '10:30:00'),
('3058', 'sz', '23:51:00', 'Felső', 7, '01:00:00'),
('3059', 'sz', '06:34:00', 'Felső', 1, '06:40:00'),
('3069', 'sz', '06:54:00', 'Felső', 1, '07:00:00'),
('3210', 'sz', '07:06:00', 'Felső', 6, '07:42:00'),
('3211', 'sz', '19:54:00', 'Felső', 1, '20:00:00'),
('3212', 'sz', '08:06:00', 'Felső', 6, '08:42:00'),
('3213', 'sz', '16:54:00', 'Felső', 1, '17:00:00'),
('3214', 'sz', '12:06:00', 'Felső', 6, '12:42:00'),
('3215', 'sz', '12:54:00', 'Felső', 1, '13:00:00'),
('3216', 'sz', '16:06:00', 'Felső', 6, '16:42:00'),
('3217', 'sz', '08:54:00', 'Felső', 1, '09:00:00'),
('3218', 'sz', '18:06:00', 'Felső', 6, '18:42:00'),
('3221', 'sz', '20:54:00', 'Felső', 1, '21:00:00'),
('3222', 'sz', '09:06:00', 'Felső', 6, '09:42:00'),
('3223', 'sz', '17:54:00', 'Felső', 1, '18:00:00'),
('3224', 'sz', '13:06:00', 'Felső', 6, '13:42:00'),
('3225', 'sz', '13:54:00', 'Felső', 1, '14:00:00'),
('3226', 'sz', '17:06:00', 'Felső', 6, '17:42:00'),
('3227', 'sz', '09:54:00', 'Felső', 1, '10:00:00'),
('3228', 'sz', '19:06:00', 'Felső', 6, '19:42:00'),
('3232', 'sz', '10:06:00', 'Felső', 6, '10:42:00'),
('3233', 'sz', '18:54:00', 'Felső', 1, '19:00:00'),
('3234', 'sz', '14:06:00', 'Felső', 6, '14:42:00'),
('3235', 'sz', '14:54:00', 'Felső', 1, '15:00:00'),
('3237', 'sz', '10:54:00', 'Felső', 1, '11:00:00'),
('3242', 'sz', '11:06:00', 'Felső', 6, '11:42:00'),
('3244', 'sz', '15:06:00', 'Felső', 6, '15:42:00'),
('3245', 'sz', '15:54:00', 'Felső', 1, '16:00:00'),
('3247', 'sz', '11:54:00', 'Felső', 1, '12:00:00'),
('3311', 'zó', '19:39:00', 'Felső', 1, '19:45:00'),
('3312', 'sz', '06:21:00', 'Felső', 14, '08:10:00'),
('3313', 'zó', '15:39:00', 'Felső', 1, '15:45:00'),
('3314', 'zó', '10:21:00', 'Felső', 14, '11:58:00'),
('3315', 'zó', '11:39:00', 'Felső', 1, '11:45:00'),
('3316', 'zó', '14:21:00', 'Felső', 14, '15:58:00'),
('3317', 'gy', '07:24:00', 'Felső', 1, '07:30:00'),
('3318', 'zó', '18:21:00', 'Felső', 14, '19:58:00'),
('3319', 'gy', '04:39:00', 'Felső', 1, '04:45:00'),
('3320', 'sz', '04:16:00', 'Felső', 14, '06:05:00'),
('3321', 'sz', '21:04:00', 'Felső', 1, '21:10:00'),
('3322', 'zó', '07:21:00', 'Felső', 14, '08:58:00'),
('3323', 'zó', '16:39:00', 'Felső', 1, '16:45:00'),
('3324', 'zó', '11:21:00', 'Felső', 14, '12:58:00'),
('3325', 'zó', '12:39:00', 'Felső', 1, '12:45:00'),
('3326', 'gy', '14:51:00', 'Felső', 14, '16:41:00'),
('3327', 'gy', '07:44:00', 'Felső', 1, '07:50:00'),
('3328', 'gy', '18:51:00', 'Felső', 14, '20:41:00'),
('3329', 'gy', '05:09:00', 'Felső', 1, '05:15:00'),
('3330', 'sz', '05:16:00', 'Felső', 14, '07:07:00'),
('3331', 'sz', '22:04:00', 'Felső', 1, '22:10:00'),
('3332', 'zó', '08:21:00', 'Felső', 14, '09:58:00'),
('3333', 'zó', '17:39:00', 'Felső', 1, '17:45:00'),
('3334', 'zó', '12:21:00', 'Felső', 14, '13:58:00'),
('3335', 'zó', '13:39:00', 'Felső', 1, '13:45:00'),
('3336', 'zó', '15:21:00', 'Felső', 14, '16:58:00'),
('3337', 'gy', '08:04:00', 'Felső', 1, '08:10:00'),
('3338', 'zó', '19:16:00', 'Felső', 14, '20:58:00'),
('3339', 'gy', '05:39:00', 'Felső', 1, '05:45:00'),
('3341', 'sz', '23:04:00', 'Felső', 1, '23:10:00'),
('3342', 'zó', '09:21:00', 'Felső', 14, '10:58:00'),
('3343', 'zó', '18:39:00', 'Felső', 1, '18:45:00'),
('3344', 'zó', '13:21:00', 'Felső', 14, '14:58:00'),
('3345', 'zó', '14:39:00', 'Felső', 1, '14:45:00'),
('3346', 'gy', '15:51:00', 'Felső', 14, '17:41:00'),
('3347', 'zó', '08:44:00', 'Felső', 1, '08:50:00'),
('3348', 'zó', '20:21:00', 'Felső', 14, '21:58:00'),
('3349', 'gy', '06:04:00', 'Felső', 1, '06:10:00'),
('3351', 'sz', '00:09:00', 'Felső', 1, '00:15:00'),
('3356', 'zó', '16:21:00', 'Felső', 14, '17:58:00'),
('3357', 'zó', '09:39:00', 'Felső', 1, '09:45:00'),
('3358', 'sz', '20:56:00', 'Felső', 14, '22:45:00'),
('3359', 'gy', '06:24:00', 'Felső', 1, '06:30:00'),
('3366', 'gy', '16:51:00', 'Felső', 14, '18:41:00'),
('3367', 'zó', '10:39:00', 'Felső', 1, '10:45:00'),
('3368', 'sz', '21:56:00', 'Felső', 14, '23:45:00'),
('3369', 'gy', '06:44:00', 'Felső', 1, '06:50:00'),
('3376', 'zó', '17:21:00', 'Felső', 14, '18:58:00'),
('3378', 'sz', '22:56:00', 'Felső', 14, '00:46:00'),
('3379', 'gy', '07:04:00', 'Felső', 1, '07:10:00'),
('3386', 'gy', '17:51:00', 'Felső', 14, '19:41:00'),
('3388', 'sz', '00:01:00', 'Felső', 14, '01:50:00'),
('3411', 'sz', '19:04:00', 'Felső', 1, '19:10:00'),
('3412', 'sz', '06:56:00', 'Felső', 12, '07:35:00'),
('3413', 'sz', '15:04:00', 'Felső', 1, '15:10:00'),
('3414', 'sz', '10:26:00', 'Felső', 12, '11:05:00'),
('3415', 'sz', '11:04:00', 'Felső', 1, '11:10:00'),
('3416', 'sz', '14:26:00', 'Felső', 12, '15:05:00'),
('3417', 'sz', '08:39:00', 'Felső', 1, '08:45:00'),
('3418', 'sz', '18:26:00', 'Felső', 12, '19:05:00'),
('3421', 'sz', '19:34:00', 'Felső', 1, '19:40:00'),
('3422', 'sz', '07:26:00', 'Felső', 12, '08:05:00'),
('3423', 'sz', '15:34:00', 'Felső', 1, '15:40:00'),
('3424', 'sz', '10:56:00', 'Felső', 12, '11:35:00'),
('3425', 'sz', '11:34:00', 'Felső', 1, '11:40:00'),
('3426', 'sz', '14:56:00', 'Felső', 12, '15:35:00'),
('3427', 'sz', '09:04:00', 'Felső', 1, '09:10:00'),
('3428', 'sz', '18:56:00', 'Felső', 12, '19:35:00'),
('3431', 'sz', '20:04:00', 'Felső', 1, '20:10:00'),
('3432', 'sz', '07:56:00', 'Felső', 12, '08:35:00'),
('3433', 'sz', '16:04:00', 'Felső', 1, '16:10:00'),
('3434', 'sz', '11:26:00', 'Felső', 12, '12:05:00'),
('3435', 'sz', '12:04:00', 'Felső', 1, '12:10:00'),
('3436', 'sz', '15:26:00', 'Felső', 12, '16:05:00'),
('3437', 'sz', '09:34:00', 'Felső', 1, '09:40:00'),
('3438', 'sz', '19:21:00', 'Felső', 12, '20:00:00'),
('3442', 'sz', '08:26:00', 'Felső', 12, '09:05:00'),
('3443', 'sz', '16:34:00', 'Felső', 1, '16:40:00'),
('3444', 'sz', '11:56:00', 'Felső', 12, '12:35:00'),
('3445', 'sz', '12:34:00', 'Felső', 1, '12:40:00'),
('3446', 'sz', '15:56:00', 'Felső', 12, '16:35:00'),
('3447', 'sz', '10:04:00', 'Felső', 1, '10:10:00'),
('3448', 'sz', '19:56:00', 'Felső', 12, '20:35:00'),
('3452', 'sz', '08:56:00', 'Felső', 12, '09:35:00'),
('3453', 'sz', '17:04:00', 'Felső', 1, '17:10:00'),
('3454', 'sz', '12:26:00', 'Felső', 12, '13:05:00'),
('3455', 'sz', '13:04:00', 'Felső', 1, '13:10:00'),
('3456', 'sz', '16:26:00', 'Felső', 12, '17:05:00'),
('3457', 'sz', '10:34:00', 'Felső', 1, '10:40:00'),
('3458', 'sz', '20:26:00', 'Felső', 12, '21:05:00'),
('3462', 'sz', '09:26:00', 'Felső', 12, '10:05:00'),
('3463', 'sz', '17:34:00', 'Felső', 1, '17:40:00'),
('3464', 'sz', '12:56:00', 'Felső', 12, '13:35:00'),
('3465', 'sz', '13:34:00', 'Felső', 1, '13:40:00'),
('3466', 'sz', '16:56:00', 'Felső', 12, '17:35:00'),
('3472', 'sz', '09:56:00', 'Felső', 12, '10:35:00'),
('3473', 'sz', '18:04:00', 'Felső', 1, '18:10:00'),
('3474', 'sz', '13:26:00', 'Felső', 12, '14:05:00'),
('3475', 'sz', '14:04:00', 'Felső', 1, '14:10:00'),
('3476', 'sz', '17:26:00', 'Felső', 12, '18:05:00'),
('3483', 'sz', '18:34:00', 'Felső', 1, '18:40:00'),
('3484', 'sz', '13:56:00', 'Felső', 12, '14:35:00'),
('3485', 'sz', '14:34:00', 'Felső', 1, '14:40:00'),
('3486', 'sz', '17:56:00', 'Felső', 12, '18:35:00'),
('3610', 'sz', '01:01:00', 'Felső', 11, '01:58:00'),
('3614', 'gy', '13:51:00', 'Felső', 11, '14:42:00'),
('3617', 'sz', '07:19:00', 'Felső', 1, '07:25:00'),
('3619', 'sz', '04:29:00', 'Felső', 1, '04:35:00'),
('3627', 'sz', '07:39:00', 'Felső', 1, '07:45:00'),
('3629', 'sz', '04:59:00', 'Felső', 1, '05:05:00'),
('3637', 'sz', '07:54:00', 'Felső', 1, '08:00:00'),
('3639', 'sz', '05:29:00', 'Felső', 1, '05:35:00'),
('3649', 'sz', '05:59:00', 'Felső', 1, '06:05:00'),
('3659', 'sz', '06:19:00', 'Felső', 1, '06:25:00'),
('3669', 'sz', '06:39:00', 'Felső', 1, '06:45:00'),
('3679', 'sz', '06:59:00', 'Felső', 1, '07:05:00'),
('5018', 'sz', '22:41:00', 'Felső', 5, '00:41:00'),
('5029', 'sz', '05:54:00', 'Felső', 1, '06:00:00'),
('541 ', 'sz', '21:24:00', 'Felső', 1, '21:30:00'),
('542 ', 'sz', '06:36:00', 'Felső', 4, '08:50:00'),
('543 ', 'sz', '17:24:00', 'Felső', 1, '17:30:00'),
('544 ', 'sz', '10:36:00', 'Felső', 4, '12:50:00'),
('545 ', 'sz', '13:24:00', 'Felső', 1, '13:30:00'),
('546 ', 'sz', '14:36:00', 'Felső', 4, '16:50:00'),
('547 ', 'sz', '09:24:00', 'Felső', 1, '09:30:00'),
('5500', 'sz', '04:36:00', 'Felső', 4, '07:07:00'),
('5508', 'sz', '18:36:00', 'Felső', 4, '21:09:00'),
('5509', 'sz', '07:13:00', 'Felső', 1, '07:20:00'),
('552 ', 'sz', '08:36:00', 'Felső', 4, '10:50:00'),
('553 ', 'sz', '19:24:00', 'Felső', 1, '19:30:00'),
('554 ', 'sz', '12:36:00', 'Felső', 4, '14:50:00'),
('555 ', 'sz', '15:24:00', 'Felső', 1, '15:30:00'),
('556 ', 'sz', '16:36:00', 'Felső', 4, '18:50:00'),
('557 ', 'sz', '11:24:00', 'Felső', 1, '11:30:00'),
('6223', 'sz', '22:53:00', 'Alsó', 2, '23:05:00'),
('6240', 'sz', '03:54:00', 'Alsó', 15, '09:17:00'),
('6260', 'sz', '05:14:00', 'Alsó', 15, '10:57:00'),
('7020', 'sz', '04:24:00', 'Alsó', 13, '07:15:00'),
('7028', 'sz', '22:14:00', 'Alsó', 8, '23:42:00'),
('7039', 'gy', '06:25:00', 'Alsó', 2, '06:37:00'),
('7049', 'gy', '07:25:00', 'Alsó', 2, '07:37:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allomasok`
--
ALTER TABLE `allomasok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vonatok`
--
ALTER TABLE `vonatok`
  ADD PRIMARY KEY (`jaratSzam`),
  ADD KEY `fk_vonatAllomas` (`vegAll`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `vonatok`
--
ALTER TABLE `vonatok`
  ADD CONSTRAINT `fk_vonatAllomas` FOREIGN KEY (`vegAll`) REFERENCES `allomasok` (`id`);
--
-- Adatbázis: `nagykonv`
--
CREATE DATABASE IF NOT EXISTS `nagykonv` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `nagykonv`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyv`
--

CREATE TABLE `konyv` (
  `id` int(11) NOT NULL,
  `cim` varchar(34) COLLATE utf8_hungarian_ci NOT NULL,
  `szerzoId` int(11) NOT NULL,
  `helyezes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `konyv`
--

INSERT INTO `konyv` (`id`, `cim`, `szerzoId`, `helyezes`) VALUES
(1, '1984', 30, 4),
(2, 'A 22-es csapdája', 49, 44),
(3, 'A da Vinci-kód', 10, 64),
(4, 'A Diadalív árnyékában', 17, 70),
(5, 'A fekete város', 71, 56),
(6, 'A funtineli boszorkány', 101, 25),
(7, 'A gyertyák csonkig égnek', 62, 32),
(8, 'A Gyűrűk Ura I–III.', 39, 8),
(9, 'A három testőr', 4, 28),
(10, 'A katedrális', 54, 69),
(11, 'A két Lotti', 16, 21),
(12, 'A kis herceg', 5, 7),
(13, 'A kőszívű ember fiai', 48, 14),
(14, 'A láthatatlan ember', 29, 38),
(15, 'A Legyek Ura', 102, 46),
(16, 'A lét elviselhetetlen könnyűsége', 72, 92),
(17, 'A Mester és Margarita', 68, 10),
(18, 'A nap szerelmese', 9, 40),
(19, 'A neveletlen hercegnő naplója', 66, 57),
(20, 'A nyomorultak', 100, 23),
(21, 'A Pál utcai fiúk', 73, 2),
(22, 'A Pendragon legenda', 93, 81),
(23, 'A rózsa neve', 97, 61),
(24, 'A tizennégy karátos autó', 84, 47),
(25, 'A varázshegy', 96, 90),
(26, 'A vörös oroszlán', 92, 95),
(27, 'Ábel a rengetegben', 95, 13),
(28, 'Abigél', 91, 3),
(29, 'Adjátok vissza a hegyeimet!', 101, 31),
(30, 'Akiért a harang szól', 18, 53),
(31, 'Állítsátok meg Terézanyut!', 83, 60),
(32, 'Anna Karenina', 60, 76),
(33, 'Apák könyve', 98, 80),
(34, 'Aranyecset', 9, 48),
(35, 'Aranykoporsó', 74, 55),
(36, 'Árvácska', 75, 33),
(37, 'Az ajtó', 91, 93),
(38, 'Az alkimista', 82, 85),
(39, 'Az arany ember', 48, 5),
(40, 'Az öreg halász és a tenger', 18, 20),
(41, 'Bezzeg az én időmben', 21, 82),
(42, 'Bogáncs', 22, 45),
(43, 'Búcsú a fegyverektől', 18, 75),
(44, 'Bűn és bűnhődés', 24, 34),
(45, 'Büszkeség és balítélet', 42, 54),
(46, 'Édentől keletre', 46, 65),
(47, 'Édes Anna', 57, 43),
(48, 'Egri csillagok', 29, 1),
(49, 'Egy magyar nábob', 48, 72),
(50, 'Egy polgár vallomásai', 62, 94),
(51, 'Elfújta a szél', 63, 22),
(52, 'Für Elisé', 91, 86),
(53, 'Galaxis útikalauz stopposoknak', 13, 78),
(54, 'Gergő és az álomfogók', 7, 83),
(55, 'Háború és béke', 60, 52),
(56, 'Harmonia caelestis', 19, 100),
(57, 'Harry Potter és a bölcsek köve', 38, 9),
(58, 'Harry Potter és a Főnix Rendje', 38, 26),
(59, 'Harry Potter és a Titkok Kamrája', 38, 17),
(60, 'Harry Potter és az azkabani fogoly', 38, 16),
(61, 'Ida regénye', 29, 89),
(62, 'Indul a bakterház', 85, 15),
(63, 'Iskola a határon', 79, 71),
(64, 'Iszony', 77, 74),
(65, 'Jadviga párnája', 103, 88),
(66, 'Jane Eyre', 8, 36),
(67, 'József és testvérei', 96, 96),
(68, 'Kard és kasza', 101, 68),
(69, 'Kincskereső kisködmön', 74, 29),
(70, 'Lassie hazatér', 15, 49),
(71, 'Légy hű magadhoz', 15, 73),
(72, 'Légy jó mindhalálig', 75, 18),
(73, 'Malevil', 86, 84),
(74, 'Mesterségem a halál', 86, 63),
(75, 'Micimackó', 3, 6),
(76, 'Monte Cristo grófja', 4, 24),
(77, 'Ne féljetek', 47, 97),
(78, 'Oroszlánkölykök', 36, 67),
(79, 'PetePite', 78, 99),
(80, 'Piszkos Fred, a kapitány', 84, 37),
(81, 'Pokolbéli víg napjaim', 20, 98),
(82, 'Quo vadis', 34, 30),
(83, 'Régimódi történet', 91, 91),
(84, 'Robinson Crusoe', 11, 62),
(85, 'Sorstalanság', 56, 27),
(86, 'Švejk', 43, 66),
(87, 'Száz év magány', 27, 12),
(88, 'Szent Péter esernyője', 71, 35),
(89, 'Szerelem a kolera idején', 27, 79),
(90, 'Téli berek', 22, 51),
(91, 'Tóték', 80, 58),
(92, 'Tüskevár', 22, 11),
(93, 'Utas és holdvilág', 93, 87),
(94, 'Utazás a koponyám körül', 52, 77),
(95, 'Üvöltő szelek', 14, 39),
(96, 'Virágot Algernonnak', 12, 59),
(97, 'Vörös és fekete', 89, 41),
(98, 'Vuk', 22, 19),
(99, 'Winnetou', 53, 50),
(100, 'Zabhegyező', 44, 42),
(101, 'A bengáli tűz', 26, 101),
(102, 'A dzsungel könyve', 87, 101),
(103, 'A feleségem története', 25, 101),
(104, 'A gólyakalifa', 6, 101),
(105, 'A három testőr Afrikában', 84, 101),
(106, 'A Karamazov testvérek', 24, 101),
(107, 'A kicsik', 61, 101),
(108, 'A Négyszögletű Kerek Erdő', 58, 101),
(109, 'A ragyogás', 90, 101),
(110, 'A sziget', 86, 101),
(111, 'A vadon szava', 40, 101),
(112, 'A Végtelen Történet', 67, 101),
(113, 'Alapítvány és Birodalom', 37, 101),
(114, 'Állatfarm', 30, 101),
(115, 'Anya csak egy van', 98, 101),
(116, 'Az elátkozott királyok', 65, 101),
(117, 'Az ötödik pecsét', 88, 101),
(118, 'Bambi', 23, 101),
(119, 'Beszterce ostroma', 71, 101),
(120, 'Családom és egyéb állatfajták', 31, 101),
(121, 'Csendes Don', 69, 101),
(122, 'Csontbrigád', 84, 101),
(123, 'Égető Eszter', 77, 101),
(124, 'Egymás szemében', 94, 101),
(125, 'Elvész a nyom', 101, 101),
(126, 'Emil és a detektívek', 16, 101),
(127, 'Emlékiratok könyve', 76, 101),
(128, 'Erdély', 75, 101),
(129, 'Esőisten siratja Mexikót', 81, 101),
(130, 'Exodus', 59, 101),
(131, 'Fekete gyémántok', 48, 101),
(132, 'Für Elise', 91, 101),
(133, 'Goriot apó', 35, 101),
(134, 'Harmonia cælestis', 19, 101),
(135, 'Isten rabjai', 29, 101),
(136, 'Karnevál', 32, 101),
(137, 'Koldus és királyfi', 64, 101),
(138, 'Különös házasság', 71, 101),
(139, 'Mesemaraton', 99, 101),
(140, 'Most és mindörökké', 41, 101),
(141, 'Nemo kapitány', 50, 101),
(142, 'Pacsirta', 57, 101),
(143, 'Pete Pite', 78, 101),
(144, 'Pillangó', 33, 101),
(145, 'Réztábla a kapu alatt', 1, 101),
(146, 'Rokonok', 75, 101),
(147, 'Száll a kakukk fészkére', 55, 101),
(148, 'Szinuhe', 70, 101),
(149, 'Titkok egy régi kertben', 51, 101),
(150, 'Tíz kicsi néger', 2, 101),
(151, 'Tom Sawyer kalandjai', 64, 101),
(152, 'Védett férfiak', 86, 101),
(153, 'Vidravas', 28, 101);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerzo`
--

CREATE TABLE `szerzo` (
  `id` int(11) NOT NULL,
  `nev` varchar(33) COLLATE utf8_hungarian_ci NOT NULL,
  `szulEv` int(11) NOT NULL,
  `halEv` int(11) DEFAULT NULL,
  `nemzetiseg` varchar(9) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szerzo`
--

INSERT INTO `szerzo` (`id`, `nev`, `szulEv`, `halEv`, `nemzetiseg`) VALUES
(0, '[value-2]', 0, 0, '[value-5]'),
(1, 'A. J. Cronin', 1896, 1981, 'angol'),
(2, 'Agatha Christie', 1890, 1976, 'angol'),
(3, 'Alan Alexander Milne', 1882, 1956, 'angol'),
(4, 'Alexandre Dumas', 1802, 1870, 'francia'),
(5, 'Antoine de Saint-Exupéry', 1900, 1944, 'francia'),
(6, 'Babits Mihály', 1883, 1941, 'magyar'),
(7, 'Böszörményi Gyula', 1964, NULL, 'magyar'),
(8, 'Charlotte Brontë', 1816, 1855, 'angol'),
(9, 'Dallos Sándor', 1901, 1964, 'magyar'),
(10, 'Dan Brown', 1964, NULL, 'amerikai'),
(11, 'Daniel Defoe', 1660, 1731, 'angol'),
(12, 'Daniel Keyes', 1927, 2014, 'amerikai'),
(13, 'Douglas Adams', 1952, 2001, 'angol'),
(14, 'Emily Brontë', 1818, 1848, 'angol'),
(15, 'Eric Knight', 1897, 1943, 'angol'),
(16, 'Erich Kästner', 1899, 1974, 'német'),
(17, 'Erich Maria Remarque', 1898, 1970, 'német'),
(18, 'Ernest Hemingway', 1899, 1961, 'amerikai'),
(19, 'Esterházy Péter', 1950, 2016, 'magyar'),
(20, 'Faludy György', 1910, 2006, 'magyar'),
(21, 'Fehér Klára', 1919, 1996, 'magyar'),
(22, 'Fekete István', 1900, 1970, 'magyar'),
(23, 'Felix Salten', 1869, 1945, 'osztrák'),
(24, 'Fjodor Mihajlovics Dosztojevszkij', 1821, 1881, 'orosz'),
(25, 'Füst Milán', 1888, 1948, 'magyar'),
(26, 'G. Hajnóczy Rózsa', 1892, 1944, 'magyar'),
(27, 'Gabriel García Márquez', 1927, 2014, 'kolumbiai'),
(28, 'Galgóczi Erzsébet', 1930, 1989, 'magyar'),
(29, 'Gárdonyi Géza', 1963, 1922, 'magyar'),
(30, 'George Orwell', 1903, 1950, 'angol'),
(31, 'Gerald Durrell', 1925, 1995, 'angol'),
(32, 'Hamvas Béla', 1897, 1968, 'magyar'),
(33, 'Henri Charrière', 1906, 1973, 'francia'),
(34, 'Henryk Sienkiewicz', 1846, 1916, 'lengyel'),
(35, 'Honoré de Balzac', 1799, 1850, 'francia'),
(36, 'Irwin Shaw', 1913, 1984, 'amerikai'),
(37, 'Isaac Asimov', 1920, 1992, 'orosz'),
(38, 'J. K. Rowling', 1965, NULL, 'angol'),
(39, 'J. R. R. Tolkien', 1892, 1973, 'angol'),
(40, 'Jack London', 1876, 1916, 'amerikai'),
(41, 'James Jones', 1921, 1977, 'amerikai'),
(42, 'Jane Austen', 1775, 1817, 'angol'),
(43, 'Jaroslav Hašek', 1883, 1923, 'cseh'),
(44, 'Jerome David Salinger', 1919, 2010, 'amerikai'),
(45, 'Joanne Kathleen Rowling', 1956, NULL, 'angol'),
(46, 'John Steinbeck', 1902, 1968, 'amerikai'),
(47, 'Jókai Anna', 1932, 2017, 'magyar'),
(48, 'Jókai Mór', 1825, 1904, 'magyar'),
(49, 'Joseph Heller', 1923, 1999, 'amerikai'),
(50, 'Jules Verne', 1828, 1905, 'francia'),
(51, 'Kálnay Adél', 1952, NULL, 'magyar'),
(52, 'Karinthy Frigyes', 1887, 1938, 'magyar'),
(53, 'Karl May', 1842, 1912, 'német'),
(54, 'Ken Follett', 1949, NULL, 'walesi'),
(55, 'Ken Kesey', 1935, 2001, 'amerikai'),
(56, 'Kertész Imre', 1929, 2016, 'magyar'),
(57, 'Kosztolányi Dezső', 1885, 1936, 'magyar'),
(58, 'Lázár Ervin', 1936, 2006, 'magyar'),
(59, 'Leon Uris', 1924, 2003, 'amerikai'),
(60, 'Lev Nyikolajevics Tolsztoj', 1828, 1910, 'orosz'),
(61, 'Lőrincz L. László', 1939, NULL, 'magyar'),
(62, 'Márai Sándor', 1900, 1989, 'magyar'),
(63, 'Margaret Mitchell', 1900, 1949, 'amerikai'),
(64, 'Mark Twain', 1835, 1910, 'amerikai'),
(65, 'Maurice Druon', 1918, 2009, 'francia'),
(66, 'Meg Cabot', 1967, NULL, 'amerikai'),
(67, 'Michael Ende', 1929, 1995, 'német'),
(68, 'Mihail Afanaszjevics Bulgakov', 1891, 1940, 'orosz'),
(69, 'Mihail Alekszandrovics Solohov', 1905, 1984, 'orosz'),
(70, 'Mika Waltari', 1908, 1979, 'finn'),
(71, 'Mikszáth Kálmán', 1847, 1910, 'magyar'),
(72, 'Milan Kundera', 1929, NULL, 'cseh'),
(73, 'Molnár Ferenc', 1878, 1952, 'magyar'),
(74, 'Móra Ferenc', 1879, 1934, 'magyar'),
(75, 'Móricz Zsigmond', 1879, 1942, 'magyar'),
(76, 'Nádas Péter', 1942, NULL, 'magyar'),
(77, 'Németh László', 1901, 1975, 'magyar'),
(78, 'Nógrádi Gábor', 1947, NULL, 'magyar'),
(79, 'Ottlik Géza', 1912, 1990, 'magyar'),
(80, 'Örkény István', 1912, 1979, 'magyar'),
(81, 'Passuth László', 1900, 1979, 'magyar'),
(82, 'Paulo Coelho', 1947, NULL, 'brazil'),
(83, 'Rácz Zsuzsa', 1972, NULL, 'magyar'),
(84, 'Rejtő Jenő', 1905, 1943, 'magyar'),
(85, 'Rideg Sándor', 1903, 1966, 'magyar'),
(86, 'Robert Merle', 1908, 2004, 'francia'),
(87, 'Rudyard Kipling', 1865, 1936, 'angol'),
(88, 'Sánta Ferenc', 1927, 2008, 'magyar'),
(89, 'Stendhal', 1783, 1842, 'francia'),
(90, 'Stephen King', 1947, NULL, 'amerikai'),
(91, 'Szabó Magda', 1917, 2007, 'magyar'),
(92, 'Szepes Mária', 1908, 2007, 'magyar'),
(93, 'Szerb Antal', 1901, 1945, 'magyar'),
(94, 'Szilvási Lajos', 1932, 1996, 'magyar'),
(95, 'Tamási Áron', 1897, 1966, 'magyar'),
(96, 'Thomas Mann', 1875, 1955, 'német'),
(97, 'Umberto Eco', 1932, 2016, 'olasz'),
(98, 'Vámos Miklós', 1950, NULL, 'magyar'),
(99, 'Vavyan Fable', 1956, NULL, 'magyar'),
(100, 'Victor Hugo', 1802, 1885, 'francia'),
(101, 'Wass Albert', 1908, 1998, 'magyar'),
(102, 'William Golding', 1911, 1993, 'angol'),
(103, 'Závada Pál', 1954, NULL, 'magyar');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `konyv`
--
ALTER TABLE `konyv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_konyvSzerzo` (`szerzoId`);

--
-- A tábla indexei `szerzo`
--
ALTER TABLE `szerzo`
  ADD PRIMARY KEY (`id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `konyv`
--
ALTER TABLE `konyv`
  ADD CONSTRAINT `fk_konyvSzerzo` FOREIGN KEY (`szerzoId`) REFERENCES `szerzo` (`id`);
--
-- Adatbázis: `orszag`
--
CREATE DATABASE IF NOT EXISTS `orszag` DEFAULT CHARACTER SET latin2 COLLATE latin2_hungarian_ci;
USE `orszag`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orszagok`
--

CREATE TABLE `orszagok` (
  `id` int(11) NOT NULL,
  `orszag` varchar(27) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `fovaros` varchar(19) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `foldr_hely` varchar(37) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `terulet` decimal(11,2) NOT NULL DEFAULT 0.00,
  `allamforma` varchar(30) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `nepesseg` int(8) NOT NULL DEFAULT 0,
  `nep_fovaros` int(8) NOT NULL DEFAULT 0,
  `autojel` char(3) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `country` varchar(31) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `capital` varchar(19) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `penznem` varchar(20) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `penzjel` char(3) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `valtopenz` varchar(18) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `telefon` int(3) NOT NULL DEFAULT 0,
  `gdp` int(5) NOT NULL DEFAULT 0,
  `kat` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `orszagok`
--

INSERT INTO `orszagok` (`id`, `orszag`, `fovaros`, `foldr_hely`, `terulet`, `allamforma`, `nepesseg`, `nep_fovaros`, `autojel`, `country`, `capital`, `penznem`, `penzjel`, `valtopenz`, `telefon`, `gdp`, `kat`) VALUES
(1, 'SPANYOLORSZÁG', 'MADRID', 'Dél-Európa:Ibériai-félsziget', '504782.00', 'alkotmányos monarchia', 42700, 5100, 'E', 'SPANYOLORSZAG   ESPANOLA SPAIN', 'MADRID', 'euró', 'EUR', '100 eurocent', 34, 21110, 1),
(2, 'PORTUGÁLIA', 'LISSZABON', 'Dél-Európa:Ibériai-félsziget', '92082.00', 'köztársaság', 10000, 2600, 'P', 'PORTUGALIA', 'LISBOA (LISSZABON)', 'euró', 'EUR', '100 eurocent', 351, 14200, 1),
(3, 'FRANCIAORSZÁG', 'PÁRIZS', 'Nyugat-Európa', '547026.00', 'köztársaság', 66860, 11300, 'F', 'FRANCIAORSZAG FRANCE FRANCAISE', 'PARIS (PARIZS)', 'euró', 'EUR', '100 eurocent', 33, 27520, 1),
(4, 'NAGY-BRITANNIA', 'LONDON', 'Európa:Britt-szigetek', '244046.00', 'alkotmányos monarchia', 65200, 7200, 'GB', 'NAGY-BRITANNIANGLIASKOCIAWALES', 'LONDON', 'font', 'GBP', '100 penny', 44, 29070, 1),
(5, 'NORVÉGIA', 'OSLO', 'Észak-Európa:Skandináv-félsziget', '324219.00', 'alkotmányos monarchia', 4600, 800, 'N', 'NORVEGIA                NORWAY', 'OSLO', 'norvég korona', 'NOK', '100 öre', 47, 49090, 1),
(6, 'SVÉDORSZÁG', 'STOCKHOLM', 'Észak-Európa:Skandináv-félsziget', '449964.00', 'alkotmányos monarchia', 8870, 1600, 'S', 'SVEDORSZAG              SWEDEN', 'STOCKHOLM', 'svéd korona', 'SEK', '100 öre', 46, 31820, 1),
(7, 'FINNORSZÁG', 'HELSINKI', 'Észak-Európa', '338107.00', 'köztársaság', 5200, 1100, 'SF', 'FINNORSZAG             FINLAND', 'HELSINKI', 'euró', 'EUR', '100 eurocent', 358, 30360, 1),
(8, 'NÉMETORSZÁG', 'BERLIN', 'Nyugat-Európa', '357042.00', 'szövetségi köztársaság', 82400, 5900, 'D', 'NEMETORSZAG DEUTSCHLANDGERMANY', 'BERLIN', 'euró', 'EUR', '100 eurocent', 49, 28260, 1),
(9, 'SVÁJC', 'BERN', 'Közép-Európa:Alpok', '41293.00', 'szövetségi köztársaság', 7260, 100, 'CH', 'SVAJC      SWITZERLAND SCHWEIZ', 'BERN', 'svájci frank', 'CHF', '100 rappen', 41, 42700, 1),
(10, 'AUSZTRIA', 'BÉCS', 'Közép-Európa:Alpok', '83858.00', 'szövetségi köztársaság', 8130, 1600, 'A', 'AUSZTRIA    OSTERREICH AUSTRIA', 'WIEN (BECS)', 'euró', 'EUR', '100 eurocent', 43, 30180, 1),
(11, 'OLASZORSZÁG', 'RÓMA', 'Dél-Európa:Appennini-félsziget', '301252.00', 'köztársaság', 60600, 3600, 'I', 'OLASZORSZAG       ITALIA ITALY', 'ROMA', 'euró', 'EUR', '100 eurocent', 39, 24390, 1),
(12, 'MAGYARORSZÁG', 'BUDAPEST', 'Közép-Európa:Kárpát-medence', '93036.00', 'köztársaság', 10100, 2600, 'H', 'MAGYARORSZAG    HUNGARY UNGARN', 'BUDAPEST', 'forint', 'HUF', '100 fillér', 36, 11200, 1),
(13, 'SZERBIA', 'BELGRÁD', 'Dél-Európa:Balkán-félsziget', '88361.00', 'szövetségi köztársaság', 9400, 1700, 'SRB', 'JUGOSZLAVIA SZERBIA YUGOSLAVIA', 'BEOGRAD (BELGRAD)', 'dinár', 'CSD', '100 para', 381, 3200, 1),
(14, 'BULGÁRIA', 'SZÓFIA', 'Dél-Európa:Balkán-félsziget', '110912.00', 'köztársaság', 7900, 1140, 'BG', 'BULGARIA', 'SZOFIJA (SZOFIA)', 'leva', 'BGL', '100 sztotinka', 359, 2140, 1),
(15, 'ROMÁNIA', 'BUKAREST', 'Kelet-Európa', '237500.00', 'köztársaság', 22410, 2200, 'RO', 'ROMANIA', 'BUCURESTI  BUKAREST', 'lei', 'ROL', '100 bani', 40, 2240, 1),
(16, 'SZLOVÁKIA', 'POZSONY', 'Közép-Európa:Kárpátok', '49036.00', 'köztársaság', 5400, 500, 'SK', 'SZLOVAKIA  SLOVAKIA  SLOVENSKO', 'BRATISLAVA  POZSONY', 'euró', 'EUR', '100 eurocent', 421, 5810, 1),
(17, 'CSEHORSZÁG', 'PRÁGA', 'Közép-Európa', '78864.00', 'köztársaság', 10300, 1300, 'CZ', 'CSEHORSZAG        CSEHSZLOVAKIA', 'PRAHA (PRAGA)', 'cseh korona', 'CZK', '100 haler', 42, 7990, 1),
(18, 'LENGYELORSZÁG', 'VARSÓ', 'Közép-Európa', '312677.00', 'köztársaság', 38600, 2200, 'PL', 'LENGYELORSZAG           POLAND', 'WARSZAWA (VARSO)', 'zloty', 'PLZ', '100 grosz', 48, 5370, 1),
(19, 'OROSZORSZÁG', 'MOSZKVA', 'Eurázsia', '17075400.00', 'szövetségi köztársaság', 146000, 12000, 'RUS', 'OROSZORSZAG SZOVJETUNIO FAK SZU', 'MOSZKVA', 'rubel', 'RUR', '100 kopejka', 7, 2910, 1),
(20, 'GÖRÖGORSZÁG', 'ATHÉN', 'Dél-Európa:Balkán-félsziget', '131944.00', 'köztársaság', 11000, 3300, 'GR', 'GOROGORSZAG GRIECHENLAND GREECE', 'ATHINE ATHENAI', 'euró', 'EUR', '100 eurocent', 30, 15060, 1),
(21, 'TÖRÖKORSZÁG', 'ANKARA', 'Eurázsia', '780576.00', 'köztársaság', 71300, 3600, 'TR', 'TOROKORSZAG             TURKEY', 'ANKARA', 'lira', 'TRL', '100 kurus', 90, 3110, 1),
(22, 'DÁNIA', 'KOPPENHÁGA', 'Nyugat-Európa:Jylland', '43075.00', 'alkotmányos monarchia', 5300, 1100, 'DK', 'DANIA                  DENMARK', 'KOPPENHAGA', 'dán korona', 'DKK', '100 öre', 45, 38120, 1),
(23, 'IZLAND', 'REYKJAVIK', 'Európa:Atlanti-óceán (szigetország)', '102829.00', 'köztársaság', 277, 100, 'IS', 'IZLAND          ISLAND ICELAND', 'REYKJAVIK', 'izlandi korona', 'ISK', '100 aurar', 354, 35780, 1),
(24, 'ALBÁNIA', 'TIRANA', 'Dél-Európa:Balkán-félsziget', '28748.00', 'köztársaság', 3490, 400, 'AL', 'ALBANIA', 'TIRANA', 'lek', 'ALL', '100 quindarka', 355, 1690, 1),
(25, 'BELGIUM', 'BRÜSSZEL', 'Nyugat-Európa', '30519.00', 'alkotmányos monarchia', 10300, 1700, 'B', 'BELGIUM', 'BRUXELLES  BRUSSZEL', 'euró', 'EUR', '100 eurocent', 32, 28800, 1),
(26, 'HOLLANDIA', 'AMSZTERDAM', 'Nyugat-Európa', '41548.00', 'alkotmányos monarchia', 16100, 700, 'NL', 'HOLLANDIANIEDERLANDENETHERLAND', 'AMSZTERDAM - HAGA', 'euró', 'EUR', '100 eurocent', 31, 30800, 1),
(27, 'LUXEMBURG', 'LUXEMBOURG', 'Nyugat-Európa', '2586.40', 'nagyhercegség', 438, 90, 'L', 'LUXEMBURG', 'LUXEMBOURGLUXEMBURG', 'euro', 'EUR', '100 eurocent', 352, 52510, 1),
(28, 'LIECHTENSTEIN', 'VADUZ', 'Közép-Európa:Alpok(törpeállam)', '160.00', 'hercegség', 30, 5, 'FL', 'LIECHTENSTEIN', 'VADUZ', 'svájci frank', 'CHF', '100 rappen', 41, 41400, 1),
(29, 'MÁLTA', 'VALLETTA', 'Európa:Földközi-tenger (szigetország)', '316.00', 'köztársaság', 392, 200, 'M', 'MALTA', 'VALLETTA', 'euró', 'EUR', '100 eurocent', 356, 9840, 1),
(30, 'CIPRUS', 'NICOSIA', 'Európa:Földközi-tenger (szigetország)', '9251.00', 'köztársaság', 758, 200, 'CY', 'CIPRUS                  CYPRUS', 'NICOSIA', 'euró', 'EUR', '100 eurocent', 357, 19010, 1),
(31, 'ÍRORSZÁG', 'DUBLIN', 'Európa:Britt-szigetek', '70283.00', 'köztársaság', 3800, 1000, 'IRL', 'IRORSZAG               IRELAND', 'DUBLIN', 'euró', 'EUR', '100 erocent', 353, 38430, 1),
(32, 'EGYIPTOM', 'KAIRÓ', 'Észak-Afrika', '1001449.00', 'elnöki köztársaság', 92300, 15900, 'ET', 'EGYIPTOM', 'AL QAHIRAH (KAIRO)', 'egyiptomi font', 'EGP', '100 piaszter', 20, 1300, 1),
(33, 'MAROKKÓ', 'RABAT', 'Észak-Afrika:Atlasz', '446550.00', 'alkotmányos monarchia', 30500, 1600, 'MA', 'MAROKKO         NYUGAT-SZAHARA', 'RABAT', 'marokkói dirham', 'MAD', '100 cent', 212, 1499, 1),
(34, 'INDIA', 'NEW DELHI', 'Ázsia:Hindusztáni-félsziget', '3287590.00', 'szövetségi köztársaság', 1330000, 10000, 'IND', 'INDIA', 'NEW DELHI', 'indiai rupia', 'INR', '100 paisa', 91, 500, 1),
(35, 'JAPÁN', 'TOKIÓ', 'Ázsia:Távol-Kelet', '372769.00', 'alkotmányos monarchia', 127600, 31100, 'J', 'JAPAN', 'TOKYO (TOKIO)', 'yen', 'JPY', '100 sen', 81, 33350, 1),
(36, 'KÍNA', 'PEKING', 'Ázsia', '9608378.00', 'népköztársaság', 1381000, 15800, 'RC', 'KINA', 'PEKING', 'jüan', 'CNY', '100 jiao', 86, 1090, 1),
(37, 'KANADA', 'OTTAWA', 'Észak-Amerika', '9976139.00', 'szövetségi állam', 31700, 1100, 'CDN', 'KANADA                  CANADA', 'OTTAWA', 'kanadai dollár', 'CAD', '100 cent', 1, 25650, 1),
(38, 'MEXIKÓ', 'MEXIKÓVÁROS', 'Közép-Amerika', '1972547.00', 'szövetségi köztársaság', 122300, 21200, 'MEX', 'MEXIKO                  MEXICO', 'MEXIKOVAROS', 'mexikói peso', 'MXP', '100 centavo', 52, 5930, 1),
(39, 'KUBA', 'HAVANNA', 'Közép-Amerika (szigetország)', '110922.00', 'köztársaság', 11300, 2700, 'C', 'KUBA                      CUBA', 'LA HABANA (HAVANNA)', 'kubai peso', 'CUP', '100 centavo', 53, 1700, 1),
(40, 'BRAZÍLIA', 'BRASÍLIA', 'Dél-Amerika', '8511965.00', 'szövetségi köztársaság', 207000, 2100, 'BR', 'BRAZILIA', 'BRASILIA', 'cruzeiro real', 'BRR', '100 centavo', 55, 2470, 1),
(41, 'ARGENTÍNA', 'BUENOS AIRES', 'Dél-Amerika', '2776889.00', 'köztársaság', 38400, 2800, 'RA', 'ARGENTINA', 'BUENOS AIRES', 'peso', 'ARP', '100 centavo', 54, 3170, 1),
(42, 'NEPÁL', 'KATMANDU', 'Ázsia:Himalája', '140797.00', 'alkotmányos monarchia', 24700, 1200, 'NEP', 'NEPAL', 'KATMANDU', 'nepáli rupia', 'NPR', '100 paisa', 977, 240, 2),
(43, 'ALGÉRIA', 'ALGÍR', 'Észak-Afrika', '2381741.00', 'köztársaság', 31800, 3000, 'DZ', 'ALGERIA', 'ALGER ALGIR', 'dinár', 'DZD', '100 centime', 213, 2080, 2),
(44, 'KENYA', 'NAIROBI', 'Kelet-Afrika', '582646.00', 'elnöki köztársaság', 32000, 3100, 'EAK', 'KENYA', 'NAIROBI', 'kenyai shilling', 'KSH', '100 cent', 254, 410, 1),
(45, 'MONACO', 'MONACO', 'Európa:Francia-Riviéra (törpeállam)', '1.95', 'alkotmányos monarchia', 30, 1, 'MC', 'MONACO', 'MONACO', 'euró', 'EUR', '100 eurocent', 33, 34610, 1),
(46, 'ANDORRA', 'ANDORRA LA VELLA', 'Európa:Pireneusok (törpeállam)', '468.00', 'autonóm hercegség', 70, 20, 'AND', 'ANDORRA', 'ANDORRA LA VELLA', 'euró', 'EUR', '100 eurocent', 376, 17140, 1),
(47, 'IZRAEL', 'TEL-AVIV', 'Ázsia:Közel-Kelet', '20770.00', 'parlamentáris köztársaság', 6400, 700, 'IL', 'IZRAEL', 'TEL AVIV-YAFO JAFFA', 'sékel', 'ISL', '100 új agora', 972, 15420, 1),
(48, 'LIBANON', 'BEJRUT', 'Ázsia:Közel-Kelet', '10400.00', 'köztársaság', 3600, 1200, 'RL', 'LIBANON', 'BAYRUT (BEJRUT)', 'libanoni font', 'LBP', '100 piaszter', 961, 4970, 1),
(49, 'AUSZTRÁLIA', 'CANBERRA', 'Ausztrália', '7686420.00', 'államszövetség', 19700, 300, 'AUS', 'AUSZTRALIA           AUSTRALIA', 'CANBERRA', 'dollár', 'AUD', '100 cent', 61, 30060, 1),
(50, 'TUNÉZIA', 'TUNISZ', 'Észak-Afrika', '163610.00', 'elnöki köztársaság', 9800, 1600, 'TN', 'TUNEZIA', 'TUNISZ', 'tunéziai dinár', 'TND', '1000 milliéme', 216, 2510, 1),
(51, 'LÍBIA', 'TRIPOLI', 'Észak-Afrika', '1759540.00', 'iszlám népköztársaság', 5500, 1300, 'LAR', 'LIBIA', 'TARABULUS (TRIPOLI)', 'libiai dinár', 'LYD', '100 darham', 218, 4127, 2),
(52, 'ETIÓPIA', 'ADDISZ-ABEBA', 'Kelet-Afrika', '1130138.00', 'köztársaság', 92300, 2700, 'ETH', 'ETIOPIA', 'ADDISZ-ABEBA', 'birr', 'ETB', '100 cent', 251, 90, 2),
(53, 'ERITREA', 'ASZMARA', 'Kelet-Afrika', '121320.00', 'köztársaság', 3500, 900, 'ER', 'ERITREA', 'ASZMARA', 'nafka', 'ETB', '100 cent', 291, 180, 3),
(54, 'KONGÓ (ZAIRE)', 'KINSHASA', 'Közép-Afrika', '2345409.00', 'elnöki köztársaság', 82300, 6500, 'RDC', 'KONGO ZAIRE', 'KINSHASA', 'zadre', 'ZRN', '100 makuta', 243, 110, 3),
(55, 'IRAK', 'BAGDAD', 'Ázsia:Közel-Kelet', '438466.00', 'elnöki köztársaság', 25100, 5800, 'IRQ', 'IRAK                      IRAQ', 'BAGHDAD (BAGDAD)', 'iraki dinár', 'IQD', '1000 fil', 964, 2100, 1),
(56, 'IRÁN', 'TEHERÁN', 'Ázsia:Közel-Kelet', '1648000.00', 'iszlám köztársaság', 79800, 11200, 'IR', 'IRAN', 'TEHRAN (TEHERAN)', 'iráni rial', 'IRR', '100 dinár', 98, 1900, 1),
(57, 'SZÍRIA', 'DAMASZKUSZ', 'Ázsia:Közel-Kelet', '185180.00', 'elnöki köztársaság', 17800, 1900, 'SYR', 'SZIRIA                   SYRIA', 'DIMASHO  DAMASZKUSZ', 'sziriai font', 'SYP', '100 piaszter', 963, 1330, 2),
(58, 'JORDÁNIA', 'AMMÁN', 'Ázsia:Közel-Kelet', '97740.00', 'alkotmányos monarchia', 5500, 2700, 'JOR', 'JORDANIA', 'AMMAN', 'jordániai dinár', 'JOD', '1000 fil', 962, 1840, 2),
(59, 'MADAGASZKÁR', 'ANTANANARIVO', 'Kelet-Afrika (szigetország)', '587041.00', 'elnöki köztársaság', 17400, 1400, 'RM', 'MADAGASZKAR', 'ANTANANARIVO', 'madagaszkári frank', 'MGF', '100 centime', 261, 290, 2),
(60, 'CHILE', 'SANTIAGO', 'Dél-Amerika:Andok', '756626.00', 'köztársaság', 15100, 5300, 'RCH', 'CHILE', 'SANTIAGO', 'chilei peso', 'CLP', '100 centavo', 56, 4390, 2),
(61, 'PERU', 'LIMA', 'Dél-Amerika:Andok', '1285216.00', 'elnöki köztársaság', 27100, 8100, 'PE', 'PERU', 'LIMA', 'sol', 'PES', '100 centavo', 51, 2150, 2),
(62, 'ECUADOR', 'QUITO', 'Dél-Amerika:Andok', '283561.00', 'elnöki köztársaság', 13700, 1800, 'EC', 'ECUADOR', 'QUITO', 'sucre', 'ECS', '100 centavo', 593, 1940, 2),
(63, 'URUGUAY', 'MONTEVIDEO', 'Dél-Amerika', '176215.00', 'elnöki köztársaság', 3400, 1700, 'U', 'URUGUAY', 'MONTEVIDEO', 'uruguayi peso', 'UYP', '100 centésimo', 598, 2290, 2),
(64, 'BOLÍVIA', 'LA PAZ', 'Dél-Amerika', '1098581.00', 'elnöki köztársaság', 8400, 1200, 'BOL', 'BOLIVIA', 'LA PAZ', 'boliviano', 'BOB', '100 centavo', 591, 980, 2),
(65, 'PARAGUAY', 'ASUNCION', 'Dél-Amerika', '406752.00', 'elnöki köztársaság', 5800, 1500, 'PY', 'PARAGUAY', 'ASUNCION', 'guarani', 'PYG', '100 centimo', 595, 1400, 2),
(66, 'KOLUMBIA', 'BOGOTÁ', 'Dél-Amerika', '1138914.00', 'elnöki köztársaság', 44200, 6800, 'CO', 'KOLUMBIA              COLUMBIA', 'BOGOTA', 'kolumbiai peso', 'COP', '100 centavo', 57, 1610, 2),
(67, 'VENEZUELA', 'CARACAS', 'Dél-Amerika', '912050.00', 'köztársaság', 25700, 3500, 'YV', 'VENEZUELA', 'CARACAS', 'bolivar', 'VEB', '100 centimo', 58, 3120, 2),
(68, 'GUYANA', 'GEORGETOWN', 'Dél-Amerika', '214699.00', 'köztársaság', 810, 200, 'GUY', 'GUYANA', 'GEORGETOWN', 'guyanai dollár', 'GYD', '100 cent', 592, 940, 3),
(69, 'SURINAME', 'PARAMARIBO', 'Dél-Amerika', '163265.00', 'köztársaság', 430, 200, 'SME', 'SURINAME', 'PARAMARIBO', 'surinamei gulden', 'SRG', '100 cent', 597, 2250, 3),
(70, 'VATIKÁN', 'VATIKÁN', 'Európa (városállam Rómánál)', '0.44', 'teokratikus abszolút monarchia', 1, 1, 'V', 'VATIKAN', 'VATIKAN', 'euró', 'EUR', '100 eurocent', 379, 0, 1),
(71, 'PAKISZTÁN', 'ISLAMABAD', 'Közép-Ázsia', '803943.00', 'köztársaság', 205000, 800, 'PAK', 'PAKISZTAN', 'ISLAMABAD', 'pakisztáni rupia', 'PKR', '100 paisa', 92, 500, 2),
(72, 'AFGANISZTÁN', 'KABUL', 'Közép-Ázsia', '652225.00', 'köztársaság', 25814, 2200, 'AFG', 'AFGANISZTAN', 'KABUL', 'afgani', 'AFA', '100 puli', 93, 700, 2),
(73, 'BANGLADES', 'DHAKA', 'Ázsia:Hindusztáni-alföld', '147570.00', 'köztársaság', 161000, 10400, 'BD', 'BANGLADES', 'DHAKA DACCA', 'taka', 'BDT', '100 paisa', 880, 370, 2),
(74, 'BHUTÁN', 'THIMBU', 'Ázsia:Himalája', '47000.00', 'alkotmányos monarchia', 1500, 60, 'BTN', 'BHUTAN', 'THIMBU', 'ngultrum', 'INR', '100 chetrum', 975, 1060, 3),
(75, 'MIANMAR (BURMA)', 'RANGOON', 'Ázsia:Indokinai-félsziget', '678528.00', 'szocialista köztársaság', 54600, 5500, 'MYA', 'BURMA                  MIANMAR', 'RANGOON      RANGUN', 'kyat', 'BUK', '100 pya', 95, 590, 3),
(76, 'THAIFÖLD', 'BANGKOK', 'Ázsia:Indokinai-félsziget', '513115.00', 'alkotmányos monarchia', 68100, 8800, 'T', 'THAIFOLD              THAILAND', 'KRUNG THEP  BANGKOK', 'baht', 'THB', '100 satang', 66, 2060, 2),
(77, 'KAMBODZSA', 'PHNOM PENH', 'Ázsia:Indokinai-félsziget', '181035.00', 'köztársaság', 14100, 1200, 'K', 'KAMBODZSA', 'PHNOM PENH', 'riel', 'KHR', '100 sen', 855, 280, 2),
(78, 'VIETNAM', 'HANOI', 'Ázsia:Indokinai-félsziget', '329556.00', 'köztársaság', 92700, 2600, 'VN', 'VIETNAM', 'HA NOI (HANOI)', 'dong', 'VND', '10 hao', 84, 460, 2),
(79, 'LAOSZ', 'VIANGCHAN', 'Ázsia:Indokinai-félsziget', '236800.00', 'népköztársaság', 5600, 300, 'LAO', 'LAOSZ', 'VIANGCHAN', 'kip', 'LAK', '100 at', 856, 340, 3),
(80, 'MALAJZIA', 'KUALA LUMPUR', 'Dél-Kelet-Ázsia', '329749.00', 'alkotmányos monarchia', 24400, 3700, 'MAL', 'MALAYSIA MALAJZIA', 'KUALA LUMPUR', 'ringgit', 'MYR', '100 cent', 60, 4090, 2),
(81, 'INDONÉZIA', 'JAKARTA', 'Ázsia:Indonéz-szigetek', '1919443.00', 'köztársaság', 260580, 17900, 'RI', 'INDONEZIA', 'JAKARTA', 'indonéz rupia', 'IDR', '100 sen', 62, 970, 2),
(82, 'BOTSWANA', 'GABORONE', 'Dél-Afrika:Kalahári-medence', '600372.00', 'elnöki köztársaság', 1800, 1500, 'RB', 'BOTSWANA', 'GABORONE', 'pula', 'BWP', '100 thebe', 267, 3900, 2),
(83, 'LESOTHO', 'MASERU', 'Dél-Afrika', '30355.00', 'alkotmányos monarchia', 1800, 400, 'LS', 'LESOTHO', 'MASERU', 'loti', 'LSL', '100 lisente', 266, 380, 2),
(84, 'ZIMBABWE', 'HARARE', 'Dél-Afrika', '390622.00', 'köztársaság', 12900, 2300, 'ZW', 'ZIMBABWE', 'HARARE', 'zimbabwei dollár', 'ZWD', '100 cent', 263, 910, 3),
(85, 'ZAMBIA', 'LUSAKA', 'Dél-Afrika', '752614.00', 'elnöki köztársaság', 10800, 1800, 'Z', 'ZAMBIA', 'LUSAKA', 'kwacha', 'ZMK', '100 nrwee', 260, 320, 3),
(86, 'NAMÍBIA', 'WINDHOEK', 'Dél-Afrika', '823168.00', 'köztársaság', 1770, 200, 'NAM', 'NAMIBIA', 'WINDHOEK', 'dél-afrikai rand', 'ZAR', '100 cent', 264, 1560, 2),
(87, 'MOZAMBIK', 'MAPUTO', 'Dél-Kelet-Afrika', '799380.00', 'népköztársaság', 18800, 1600, 'MOC', 'MOZAMBIK', 'MAPUTO', 'metical', 'MZM', '100 centavo', 258, 230, 3),
(88, 'MALAWI', 'LILONGWE', 'Dél-Kelet-Afrika', '118484.00', 'elnöki köztársaság', 12100, 500, 'MW', 'MALAWI', 'LILONGWE', 'kwacha', 'MWK', '100 tambala', 265, 180, 3),
(89, 'ANGOLA', 'LUANDA', 'Dél-Afrika', '1246700.00', 'köztársaság', 13600, 2700, 'ANG', 'ANGOLA', 'LUANDA', 'kwanza', 'NKZ', '100 iwei', 244, 940, 3),
(90, 'TANZÁNIA', 'DAR ES SALAAM', 'Kelet-Afrika', '945087.00', 'szövetségi köztársaság', 55150, 1500, 'EAT', 'TANZANIA', 'DAR ES SALAAM', 'tanzániai shilling', 'TZS', '100 cent', 255, 280, 2),
(91, 'MONGÓLIA', 'ULÁNBÁTOR', 'Közép-Ázsia', '1565000.00', 'népköztársaság', 2650, 800, 'MNG', 'MONGOLIA', 'ULANBATOR', 'tugrik', 'MNT', '100 mongo', 976, 480, 1),
(92, 'BELIZE', 'BELMOPAN', 'Közép-Amerika', '22965.00', 'alkotmányos monarchia', 205, 10, 'BH', 'BELIZE', 'BELMOPAN', 'belizei dollár', 'BZD', '100 cent', 501, 3410, 3),
(93, 'HONDURAS', 'TEGUCIGALPA', 'Közép-Amerika', '112088.00', 'elnöki köztársaság', 6800, 1400, 'HN', 'HONDURAS', 'TEGUCIGALPA', 'lempira', 'HNL', '100 centavo', 504, 1010, 3),
(94, 'SALVADOR', 'SAN SALVADOR', 'Közép-Amerika', '21041.00', 'elnöki köztársaság', 6200, 1800, 'ES', 'SALVADOR', 'SAN SALVADOR', 'salvadori colon', 'SVC', '100 cent', 503, 2340, 2),
(95, 'NICARAGUA', 'MANAGUA', 'Közép-Amerika', '130000.00', 'elnöki köztársaság', 4900, 1400, 'NIC', 'NICARAGUA', 'MANAGUA', 'cordoba', 'NIO', '100 centavo', 505, 551, 2),
(96, 'PANAMA', 'PANAMA', 'Közép-Amerika', '75650.00', 'elnöki köztársaság', 3100, 1100, 'PA', 'PANAMA', 'PANAMA', 'balboa', 'PAB', '100 centesimo', 507, 3710, 2),
(97, 'GUATEMALA', 'GUATEMALA', 'Közép-Amerika', '108889.00', 'elnöki köztársaság', 13900, 2700, 'GCA', 'GUATEMALA', 'GUATEMALA', 'quetzal', 'GTQ', '100 centavo', 502, 1420, 3),
(98, 'BAHAMA-SZIGETEK', 'NASSAU', 'Közép-Amerika:Nagy-Antillák', '13939.00', 'alkotmányos monarchia', 266, 173, 'BS', 'BAHAMA-SZIGETEK', 'NASSAU', 'bahamai dollár', 'BSD', '100 cent', 1, 18690, 2),
(99, 'JAMAICA', 'KINGSTON', 'Közép-Amerika:Nagy-Antillák', '10991.00', 'alkotmányos monarchia', 2600, 900, 'JA', 'JAMAICA', 'KINGSTON', 'jamaicai dollár', 'JMD', '100 cent', 1, 3000, 2),
(100, 'BENIN', 'PORTO NOVO', 'Nyugat-Afrika', '112622.00', 'elnöki köztársaság', 6700, 208, 'DY', 'BENIN', 'PORTO NOVO', 'CFA-frank', 'XOF', '100 centime', 229, 450, 3),
(101, 'CSÁD', 'N\'DJAMENA', 'Közép-Afrika', '1284000.00', 'elnöki köztársaság', 8600, 600, 'TCH', 'CSAD', 'N\'DJAMENA', 'CFA-frank', 'XAF', '100 centime', 235, 210, 3),
(102, 'GABON', 'LIBREVILLE', 'Közép-Nyugat-Afrika', '267667.00', 'elnöki köztársaság', 1208, 700, 'GAB', 'GABON', 'LIBREVILLE', 'CFA-frank', 'XAF', '100 centime', 241, 4190, 3),
(103, 'GHÁNA', 'ACCRA', 'Nyugat-Afrika', '238537.00', 'köztársaság', 20900, 2800, 'GH', 'GHANA', 'ACCRA', 'cedi', 'GHC', '100 pesewa', 233, 340, 3),
(104, 'GUINEA', 'CONAKRY', 'Nyugat-Afrika', '245857.00', 'elnöki köztársaság', 8500, 1800, '', 'GUINEA', 'CONAKRY', 'syli', 'GNF', '100 cauri', 224, 360, 3),
(105, 'KAMERUN', 'YAOUNDÉ', 'Közép-Nyugat-Afrika', '475442.00', 'elnöki köztársaság', 16000, 1400, 'RCF', 'KAMERUN', 'YAOUNDE', 'CFA-frank', 'XAF', '100 centime', 237, 670, 3),
(106, 'KONGÓI KÖZTÁRSASÁG', 'BRAZZAVILLE', 'Közép-Afrika', '342000.00', 'köztársaság', 3700, 1200, 'RCB', 'FRANCIA KONGOI KOZTARSASAG', 'BRAZZAVILLE', 'CFA-frank', 'XAF', '100 centime', 242, 1040, 3),
(107, 'LIBÉRIA', 'MONROVIA', 'Nyugat-Afrika', '111369.00', 'elnöki köztársaság', 3300, 1300, 'LB', 'LIBERIA', 'MONROVIA', 'libériai dollár', 'LRD', '100 cent', 231, 170, 3),
(108, 'MALI', 'BAMAKO', 'Észak-Nyugat-Afrika', '1240142.00', 'elnöki köztársaság', 10800, 1300, 'RMM', 'MALI', 'BAMAKO', 'CFA-frank', 'XOF', '100 centime', 223, 280, 3),
(109, 'MAURITÁNIA', 'NOUAKCHOTT', 'Észak-Nyugat-Afrika', '1030700.00', 'elnöki köztársaság', 2900, 700, 'RIM', 'MAURITANIA', 'NOUAKCHOTT', 'ouguiya', 'MRO', '5 khoum', 222, 370, 3),
(110, 'NIGER', 'NIAMEY', 'Közép-Afrika', '1267000.00', 'elnöki köztársaság', 11900, 700, 'RN', 'NIGER', 'NIAMEY', 'CFA-frank', 'XOF', '100 centime', 227, 210, 3),
(111, 'NIGÉRIA', 'LAGOS', 'Közép-Nyugat-Afrika', '923768.00', 'föderativ köztársaság', 190000, 600, 'WAN', 'NIGERIA', 'LAGOS', 'naira', 'NGN', '100 kobo', 234, 340, 3),
(112, 'RUANDA', 'KIGALI', 'Közép-Afrika', '26338.00', 'elnöki köztársaság', 8400, 300, 'RWA', 'RUANDA', 'KIGALI', 'ruandai frank', 'RWF', '100 centime', 250, 210, 3),
(113, 'SZENEGÁL', 'DAKAR', 'Nyugat-Afrika', '196192.00', 'köztársaság', 10100, 2500, 'SN', 'SZENEGAL', 'DAKAR', 'CFA-frank', 'XOF', '100 centime', 221, 590, 3),
(114, 'SZOMÁLIA', 'MUQDISHO', 'Kelet-Afrika', '637657.00', 'köztársaság', 8000, 1200, 'SP', 'SZOMALIA', 'MUQDISHO  MOGADISHU', 'szomáli shilling', 'SOS', '100 centesimo', 252, 500, 3),
(115, 'SZUDÁN', 'KARTÚM', 'Észak-Kelet-Afrika', '2505813.00', 'köztársaság', 35000, 5700, 'SUD', 'SZUDAN', 'KARTUM', 'szudáni dinár', 'SDD', '100 piaszter', 249, 440, 3),
(116, 'SZVÁZIFÖLD', 'MBABANE', 'Dél-Kelet-Afrika', '17364.00', 'alkotmányos monarchia', 1080, 70, 'SD', 'SZVAZIFOLD', 'MBABANE', 'lilangeni', 'SZL', '100 cent', 268, 1490, 3),
(117, 'TOGO', 'LOME', 'Nyugat-Afrika', '56785.00', 'elnöki köztársaság', 4900, 700, 'TG', 'TOGO', 'LOME', 'CFA-frank', 'XOF', '100 centime', 228, 290, 3),
(118, 'UGANDA', 'KAMPALA', 'Közép-Kelet-Afrika', '236036.00', 'elnöki köztársaság', 25800, 1500, 'EAU', 'UGANDA', 'KAMPALA', 'ugandai shilling', 'UGS', '100 cent', 256, 260, 3),
(119, 'DÉL-AFRIKAI KÖZTÁRSASÁG', 'PRETORIA', 'Dél-Afrika', '1221037.00', 'szövetségi köztársaság', 55900, 1600, 'ZA', 'DEL-AFRIKAI KOZTARSASAG', 'PRETORIA', 'rand', 'ZAR', '100 cent', 27, 3180, 2),
(120, 'BURKINA FASO', 'OUAGADOUGOU', 'Nyugat-Afrika', '274200.00', 'köztársaság', 13000, 680, 'BF', 'BURKINA FASO     (FELSO-VOLTA)', 'OUAGADOUGOU', 'CFA-frank', 'XOF', '100 centime', 226, 270, 3),
(121, 'SIERRA LEONE', 'FREETOWN', 'Nyugat-Afrika', '71740.00', 'elnöki köztársaság', 5100, 1100, 'WAL', 'SIERRA LEONE', 'FREETOWN', 'leone', 'SLL', '100 cent', 232, 170, 3),
(122, 'ÚJ-ZÉLAND', 'WELLINGTON', 'Csendes-óceán (Óceániától délre)', '269112.00', 'alkotmányos monarchia', 3800, 300, 'NZ', 'UJ-ZELAND           NEW-ZELAND', 'WELLINGTON', 'új-zélandi dollár', 'NZD', '100 cent', 64, 18080, 1),
(123, 'SRI LANKA', 'COLOMBO', 'Dél-Ázsia:Indiai-óceán (szigetország)', '65610.00', 'elnöki köztársaság', 19200, 2400, 'CL', 'SRI LANKA               CEYLON', 'COLOMBO', 'rupia', 'LKR', '100 cent', 94, 880, 2),
(124, 'SZAUD-ARÁBIA', 'RIJÁD', 'Ázsia:Arab-félsziget', '2149690.00', 'iszlám abszolút monarchia', 24200, 3700, 'KSA', 'SZAUD-ARABIA', 'AR RIYAD (RIJAD)', 'szaudi rial', 'SAR', '100 halalah', 966, 9550, 2),
(125, 'AMERIKAI EGYESÜLT ÁLLAMOK', 'WASHINGTON', 'Észak-Amerika', '9809155.00', 'szövetségi köztársaság', 325200, 600, 'USA', 'AMERIKAI EGYESULT ALLAMOK  USA', 'WASHINGTON', 'dollár', 'USD', '100 cent', 1, 37300, 1),
(126, 'FÜLÖP-SZIGETEK', 'MANILA', 'Ázsia:Távol-Kelet', '300000.00', 'elnöki köztársaság', 103600, 13800, 'RP', 'FULOP-SZIGETEK     PHILIPPINES', 'MANILA', 'peso', 'PHP', '100 centavo', 63, 980, 2),
(127, 'KATAR', 'DOHA', 'Ázsia:Arab-félsziget', '11437.00', 'abszolút monarchia', 600, 500, 'Q', 'KATAR                    QATAR', 'AD DAWHAH (DOHA)', 'katari rial', 'QAR', '100 dirham', 974, 32460, 3),
(128, 'OMÁN', 'MASZKAT', 'Ázsia:Arab-félsziget', '212457.00', 'abszolút monarchia', 2800, 800, 'OM', 'OMAN', 'MASQAT (MASZKAT)', 'ománi rial', 'OMR', '100 baiza', 968, 8590, 3),
(129, 'FIDZSI-SZIGETEK', 'SUVA', 'Óceánia:Melanézia', '18272.00', 'köztársaság', 832, 200, 'FJI', 'FIDZSI-SZIGETEK           FIJI', 'SUVA', 'fidzsi dollár', 'FJD', '100 cent', 679, 2090, 3),
(130, 'SZAMOA', 'APIA', 'Óceánia:Polinézia', '2842.00', 'királyság', 179, 40, 'WS', 'NYUGAT-SZAMOA        WESTSAMOA', 'APIA', 'tala', 'WST', '100 sene', 685, 1480, 3),
(131, 'DÉL-KOREA', 'SZÖUL', 'Ázsia:Koreai-félsziget', '98484.00', 'köztársaság', 50800, 19900, 'ROK', 'DEL-KOREA', 'SEOUL (SZOUL)', 'won', 'KRW', '100 hwan', 850, 10480, 1),
(132, 'ÉSZAK-KOREA', 'PHENJAN', 'Ázsia:Koreai-félsziget', '120538.00', 'népi demokratikus köztársaság', 22600, 3200, '', 'ESZAK-KOREAI N.D.K.       KNDK', 'PHJONGJANG  PHENJAN', 'won', 'KPW', '100 chon', 82, 1000, 1),
(133, 'VANUATU', 'PORT-VILA', 'Óceánia:Melanézia', '14763.00', 'parlamentáris köztársaság', 190, 40, 'VU', 'VANUATU', 'PORT-VILA', 'vatu', 'VUV', '100 centime', 678, 1170, 3),
(134, 'TUVALU', 'FUNAFUTI', 'Óceánia:Melanézia:Ellice-szk.', '26.00', 'alkotmányos monarchia', 11, 5, 'TUV', 'TUVALU', 'FUNAFUTI', 'ausztráliai dollár', 'AUD', '100 cent', 688, 330, 3),
(135, 'TONGA', 'NUKU\'ALOFA', 'Óceánia:Melanézia-Polinézia', '748.00', 'alkotmányos királyság', 102, 20, 'TO', 'TONGA', 'NUKU\'ALOFA', 'tongai dollár', 'TOP', '100 seniti', 676, 1550, 3),
(136, 'NAURU', 'YAREN', 'Óceánia:Mikronézia-Melanézia', '21.30', 'parlamentáris köztársaság', 12, 5, 'NAU', 'NAURU', 'YAREN', 'ausztrál dollár', 'AUD', '100 cent', 674, 5000, 3),
(137, 'KIRIBATI', 'BAIRIKI', 'Óceánia:Mikronézia-Polinézia', '886.00', 'elnöki köztársaság', 80, 30, 'KIR', 'KIRIBATI', 'BAIRIKI', 'ausztrál dollár', 'AUD', '100 cent', 686, 570, 3),
(138, 'SAINT LUCIA', 'CASTRIES', 'Közép-Amerika:Kis-Antillák', '616.00', 'alkotmányos monarchia', 158, 60, 'WL', 'SAINT LUCIA', 'CASTRIES', 'kelet-karib dollár', 'XCD', '100 cent', 1, 4240, 3),
(139, 'SAINT VINCENT ÉS GRENADINE', 'KINGSTOWN', 'Közép-Amerika:Kis-Antillák', '389.00', 'alkotmányos monarchia', 110, 20, 'WV', 'SAINT VINCENT ES GRENADINE', 'KINGSTOWN', 'kelet-karib dollár', 'XCD', '100 cent', 1, 3330, 3),
(140, 'BARBADOS', 'BRIDGETOWN', 'Közép-Amerika:Kis-Antillák', '430.00', 'alkotmányos monarchia', 276, 80, 'BDS', 'BARBADOS', 'BRIDGETOWN', 'barbadosi dollár', 'BBD', '100 cent', 1, 9650, 3),
(141, 'GRENADA', 'SAINT GEORGE\'S', 'Közép-Amerika:Kis-Antillák', '344.00', 'alkotmányos monarchia', 91, 14, 'WG', 'GRENADA', 'SAINT GEORGE\'S', 'kelet-karib dollár', 'XCD', '100 cent', 1, 2910, 3),
(142, 'SAN MARINO', 'SAN MARINO', 'Európa (törpeállam Olaszországban)', '60.57', 'köztársaság', 27, 4, 'RSM', 'SAN MARINO', 'SAN MARINO', 'euró', 'EUR', '100 eurocent', 378, 27010, 1),
(143, 'SZINGAPÚR', 'SZINGAPÚR', 'Dél-Kelet-Ázsia (városállam)', '641.00', 'köztársaság', 5400, 5400, 'SGP', 'SZINGAPUR', 'SINGAPORE SZINGAPUR', 'szingapuri dollár', 'SGD', '100 cent', 65, 22670, 1),
(144, 'EGYESÜLT ARAB EMIRSÉGEK', 'ABU DHABI', 'Ázsia:Arab-félsziget', '83600.00', 'államszövetség', 3000, 500, 'UAE', 'EGYESULT ARAB EMIRSEGEK', 'ABU ZABY  ABU DHABI', 'dirham', 'AED', '100 fil', 971, 21850, 3),
(145, 'KUVAIT', 'KUVAIT', 'Ázsia:Arab-félsziget', '17818.00', 'alkotmányos monarchia', 2500, 1700, 'KWT', 'KUVAIT', 'AL KUWAYT (KUVAIT)', 'kuvaiti dinár', 'KWD', '1000 fil', 965, 15820, 1),
(146, 'BAHREIN', 'MANAMA', 'Ázsia:Közel-Kelet', '678.00', 'sejkség', 634, 500, 'BRN', 'BAHREIN', 'MANAMA', 'bahreini dinár', 'BHD', '1000 fil', 973, 13700, 3),
(147, 'DZSIBUTI', 'DZSIBUTI', 'Kelet-Afrika', '21783.00', 'köztársaság', 700, 500, '', 'DZSIBUTI', 'DZSIBUTI   DJIBOUTI', 'dzsibuti frank', 'DJF', '100 centime', 0, 780, 3),
(148, 'GAMBIA', 'BANJUL', 'Nyugat-Afrika', '11295.00', 'köztársaság', 1400, 50, 'WAG', 'GAMBIA', 'BANJUL', 'dalasi', 'GMD', '100 butut', 220, 250, 3),
(149, 'BISSAU-GUINEA', 'BISSAU', 'Nyugat-Afrika', '36125.00', 'köztársaság', 1285, 300, 'GNB', 'BISSAU-GUINEA', 'BISSAU', 'CFA-frank', 'XOF', '100 centime', 245, 460, 3),
(150, 'BURUNDI', 'BUJUMBURA', 'Közép-Kelet-Afrika', '27834.00', 'elnöki köztársaság', 6800, 300, 'RU', 'BURUNDI', 'BUJUMBURA', 'burundi frank', 'BIF', '100 centime', 257, 100, 3),
(151, 'COMORE-SZIGETEK', 'MORONI', 'Kelet-Afrika (Indiai-óceán)', '1862.00', 'iszlám szövetségi köztársaság', 700, 60, 'COM', 'COMORE-SZIGETEK', 'MORONI', 'comorei frank', 'KMF', '100 centime', 269, 440, 3),
(152, 'MAURITIUS', 'PORT LOUIS', 'Indiai-óceán (Kelet-Afrika)', '2045.00', 'alkotmányos monarchia', 1200, 500, 'MS', 'MAURITIUS', 'PORT LOUIS', 'mauritiusi rupia', 'MUR', '100 cent', 230, 3830, 2),
(153, 'JEMEN', 'SZANAA', 'Ázsia:Arab-félsziget', '528000.00', 'köztársaság', 20100, 1800, 'ADN', 'JEMEN', 'SAN\'A (SZANAA)', 'rial', 'YER', '100 fil', 967, 470, 2),
(154, 'MALDIV-SZIGETEK', 'MALE', 'Indiai-óceán (Dél-Ázsia)', '298.00', 'elnöki köztársaság', 301, 80, 'MV', 'MALDIV-SZIGETEK', 'MALE', 'maldiv rupia', 'MVR', '100 laree', 960, 2110, 3),
(155, 'COSTA RICA', 'SAN JOSÉ', 'Közép-Amerika', '51100.00', 'elnöki köztársaság', 3900, 1500, 'CR', 'COSTA RICA', 'SAN JOSE', 'colon', 'CRC', '100 centimo', 506, 4540, 2),
(156, 'SALAMON-SZIGETEK', 'HONIARA', 'Óceánia:Melanézia', '28446.00', 'alkotmányos királyság', 466, 30, 'SLB', 'SALAMON-SZIGETEK', 'HONIARA', 'salamon szk-i dollár', 'SBD', '100 cent', 0, 720, 3),
(157, 'TRINIDAD ÉS TOBAGO', 'PORT OF SPAIN', 'Közép-Amerika:Kis-Antillák', '5128.00', 'elnöki köztársaság', 1300, 300, 'TT', 'TRINIDAD ES TOBAGO', 'PORT OF SPAIN', 'trinidadi dollár', 'TTD', '100 cent', 1, 7380, 3),
(158, 'ZÖLD-FOKI KÖZTÁRSASÁG', 'PRAIA', 'Atlanti-óceán (Nyugat-Afrika)', '4033.00', 'köztársaság', 475, 100, '', 'ZOLD-FOKI KOZTARSASAG', 'PRAIA', 'escudo', 'CVE', '100 centavo', 0, 1650, 3),
(159, 'SEYCHELLE-SZIGETEK', 'VICTORIA', 'Kelet-Afrika (Indiai-óceán)', '454.00', 'köztársaság', 80, 60, 'SY', 'SEYCHELLE-SZIGETEK', 'VICTORIA', 'seychelle-i rupia', 'SCR', '100 cent', 248, 7560, 3),
(160, 'ANTIGUA ÉS BARBUDA', 'SAINT JOHN\'S', 'Közép-Amerika:Kis-Antillák', '443.00', 'alkotmányos monarchia', 90, 23, '', 'ANTIGUA ES BARBUDA', 'SAINT JOHN\'S', 'kelet-karib dollár', 'XCD', '100 cent', 1, 9700, 3),
(161, 'DOMINIKAI KÖZTÁRSASÁG', 'SANTO DOMINGO', 'Közép-Amerika:Nagy-Antillák', '48734.00', 'elnöki köztársaság', 8700, 2900, 'DOM', 'DOMINIKAI KOZTARSASAG', 'SANTO DOMINGO', 'peso', 'DOP', '100 centavo', 1, 2730, 3),
(162, 'DOMINIKAI KÖZÖSSÉG', 'ROSEAU', 'Közép-Amerika:Kis-Antillák', '751.00', 'köztársaság', 72, 20, 'WD', 'DOMINIKAI KOZOSSEG', 'ROSEAU', 'kelet-karib dollár', 'XCD', '100 cent', 1, 3520, 3),
(163, 'EGYENLITŐI-GUINEA', 'MALABO', 'Közép-Nyugat-Afrika', '28051.00', 'elnöki köztársaság', 474, 100, 'GQ', 'EGYENLITOI-GUINEA', 'MALABO', 'CFA-frank', 'XAF', '100 centime', 240, 785, 3),
(164, 'ELEFÁNTCSONTPART', 'YAMOUSSOUKRO', 'Nyugat-Afrika', '322463.00', 'elnöki köztársaság', 16600, 200, 'CI', 'ELEFANTCSONTPART', 'YAMOUSSOUKRO', 'CFA-frank', 'XAF', '100 centime', 225, 700, 3),
(165, 'HAITI', 'PORT-AU-PRINCE', 'Közép-Amerika:Nagy-Antillák', '27750.00', 'elnöki köztársaság', 8300, 1800, 'RH', 'HAITI', 'PORT-AU-PRINCE', 'gourde', 'HTG', '100 centime', 509, 420, 3),
(166, 'PÁPUA ÚJ-GUINEA', 'PORT MORESBY', 'Óceánia:Melanézia', '461691.00', 'alkotmányos monarchia', 5700, 300, 'PNG', 'PAPUA UJ-GUINEA', 'PORT MORESBY', 'kina', 'PGK', '100 toea', 675, 570, 3),
(167, 'KÖZÉP-AFRIKAI KÖZTÁRSASÁG', 'BANGUI', 'Közép-Afrika', '622984.00', 'elnöki köztársaság', 3800, 800, 'RCA', 'KOZEP-AFRIKAI KOZTARSASAG', 'BANGUI', 'CFA-frank', 'XAF', '100 centime', 236, 310, 3),
(168, 'SÁO TOMÉ ÉS PRINCIPE', 'SÁO TOMÉ', 'Nyugat-Afrika (Guineai-öböl)', '1001.00', 'köztársaság', 160, 50, '', 'SAO TOME ES PRINCIPE', 'SAO TOME', 'dobra', 'STD', '100 centavo', 239, 390, 3),
(169, 'BRUNEI', 'BANDAR SERI BEGAWAN', 'Dél-Kelet-Ázsia:Borneó', '5765.00', 'szultanátus', 336, 80, 'BRU', 'BRUNEI', 'BANDAR SERI BEGAWAN', 'brunei dollár', 'BND', '100 cent', 673, 24630, 2),
(170, 'SAINT KITTS ÉS NEVIS', 'BASSETERRE', 'Közép-Amerika:Kis-Antillák', '266.00', 'alkotmányos monarchia', 42, 10, '', 'SAINT KITTS ES NEVIS', 'BASSETERRE', 'kelet-karib dollár', 'XCD', '100 cent', 0, 7310, 3),
(171, 'UKRAJNA', 'KIJEV', 'Kelet-Európa', '603700.00', 'köztársaság', 49000, 2800, 'UR', 'UKRAJNA', 'KIJEV KIEV', 'hrivnya', 'UAH', '100 kopejka', 380, 970, 1),
(172, 'LITVÁNIA', 'VILNIUS', 'Európa:Baltikum', '65300.00', 'köztársaság', 3620, 500, 'LT', 'LITVANIA', 'VILNIUS', 'euró', 'EUR', '100 eurocent', 370, 3680, 1),
(173, 'LETTORSZÁG', 'RIGA', 'Európa:Baltikum', '64589.00', 'köztársaság', 2400, 900, 'LV', 'LETTORSZAG', 'RIGA', 'euró', 'EUR', '100 eurocent', 371, 3980, 1),
(174, 'ÉSZTORSZÁG', 'TALLINN', 'Európa:Baltikum', '45227.00', 'köztársaság', 1400, 400, 'EST', 'ESZTORSZAG', 'TALLINN', 'euró', 'EUR', '100 eurocent', 372, 4710, 1),
(175, 'HORVÁTORSZÁG', 'ZÁGRÁB', 'Dél-Európa', '56538.00', 'köztársaság', 4400, 700, 'HR', 'HORVATORSZAG  CROATIA HRVATSKA', 'ZAGRAB  ZAGREB', 'kuna', 'HRK', '100 lipa', 385, 5060, 1),
(176, 'SZLOVÉNIA', 'LJUBLJANA', 'Dél-Európa:Alpok-Adria', '20253.00', 'köztársaság', 2000, 300, 'SLO', 'SZLOVENIA            SLOVENIJA', 'LJUBLJANA', 'euró', 'EUR', '100 eurocent', 386, 12530, 1),
(177, 'BOSZNIA-HERCEGOVINA', 'SARAJEVO', 'Dél-Európa:Balkán', '51129.00', 'köztársaság', 4400, 600, 'BIH', 'BOSZNIA-HERCEGOVINA', 'SARAJEVO  SZARAJEVO', 'konvertibilis márka', 'BAM', '100 pfennig', 387, 1770, 1),
(178, 'MACEDÓNIA', 'SKOPJE', 'Dél-Európa:Balkán-félsziget', '25713.00', 'köztársaság', 2200, 400, 'MK', 'MACEDONIA MAKEDONIA MAKEDONIJA', 'SKOPJE', 'macedon dinár', 'XMD', '100 para', 389, 2070, 1),
(179, 'AZERBAJDZSÁN', 'BAKU', 'Elő-Ázsia:Kaukázus, Kaszpi-tenger', '86600.00', 'köztársaság', 8400, 2100, 'AZ', 'AZERBAJDZSAN', 'BAKU', 'manát', 'AZM', '100 gopik', 994, 1770, 2),
(180, 'GRÚZIA', 'TBILISZI', 'Európa:Kaukázus, Fekete-tenger', '69700.00', 'köztársaság', 5500, 1400, 'GE', 'GRUZIA', 'TBILISZI', 'lari', 'GEL', '100 tetri', 995, 710, 2),
(181, 'ÖRMÉNYORSZÁG', 'JEREVÁN', 'Európa:Kaukázus', '29800.00', 'köztársaság', 3400, 1200, '', 'ORMENYORSZAG', 'JEREVAN', 'dram', 'AMD', '100 luma', 374, 660, 2),
(182, 'BELARUSZ', 'MINSZK', 'Kelet-Európa', '207600.00', 'köztársaság', 10300, 1800, 'BY', 'BELARUSZ FEHEROROSZORSZAG', 'MINSZK', 'belarusz rubel', 'BYR', '100 kopek', 375, 1790, 2),
(183, 'MOLDOVA', 'CHISINAU', 'Kelet-Európa', '33700.00', 'köztársaság', 4430, 800, 'MD', 'MOLDOVA      MOLDAVIA  MOLDAVA', 'KISINYOV CHISINAU', 'lej', 'MDL', '100 bani', 373, 380, 2),
(184, 'ÜZBEGISZTÁN', 'TASKENT', 'Közép-Ázsia', '447400.00', 'köztársaság', 25100, 3500, 'UZB', 'UZBEGISZTAN', 'TASKENT', 'szum', 'UZS', '100 tijin', 998, 330, 2),
(185, 'KAZAHSZTÁN', 'ASZTANA', 'Ázsia', '2717300.00', 'köztársaság', 16730, 300, 'KZ', 'KAZAHSZTAN', 'ASZTANA  ASTANA', 'tenge', 'KZT', '100 tein', 7, 2010, 2),
(186, 'KIRGIZISZTÁN', 'BISKEK', 'Közép-Ázsia', '198500.00', 'köztársaság', 5100, 800, 'KS', 'KIRGIZIA           KIRGIZISZTAN', 'BISKEK', 'szom', 'KGZ', '100 tyijnsz', 996, 350, 2),
(187, 'TÁDZSIKISZTÁN', 'DUSANBE', 'Közép-Ázsia', '143100.00', 'köztársaság', 6200, 800, 'TD', 'TADZSIKISZTAN', 'DUSANBE', 'szomoni', 'TJR', '100 kopejka', 992, 180, 2),
(188, 'TÜRKMENISZTÁN', 'ASGABAT', 'Közép-Ázsia', '488100.00', 'köztársaság', 4520, 700, 'TMN', 'TURKMENISZTAN', 'ASGABAT', 'manat', 'TMM', '100 tenesi', 7, 950, 2),
(189, 'TAJVAN', 'TAJPEJ', 'Ázsia:Távol-Kelet (szigetország)', '36000.00', 'köztársaság', 22500, 7900, 'RC', 'TAJVAN  KINAI KOZTARSASAG', 'TAJPEJ', 'dollár', 'TWD', '100 cent', 886, 12720, 1),
(190, 'PALAU', 'KOROR', 'Óceánia:Mikronézia', '508.00', 'elnöki köztársaság', 19, 10, 'PAL', 'PALAU', 'KOROR', 'dollár', 'USD', '100 cent', 680, 5000, 3),
(191, 'KELET-TIMOR', 'DILI', 'Ázsia:Indonéz-szigetek', '15007.00', 'köztársaság', 840, 60, '', 'KELET-TIMOR', 'DILI', 'dollár', 'USD', '100 cent', 0, 520, 3),
(192, 'MARSHALL-SZIGETEK', 'MAJURO', 'Óceánia:Mikronézia', '180.00', 'köztársaság', 68, 20, 'MH', 'MARSHALL-SZIGETEK', 'MAJURO', 'dollár', 'USD', '100 cent', 692, 2190, 3),
(193, 'MIKRONÉZIA', 'PALIKIR', 'Óceánia:Mikronézia', '702.00', 'szövetségi köztársaság', 133, 10, 'FSM', 'MIKRONEZIA', 'PALIKIR', 'dollár', 'USD', '100 cent', 691, 2150, 3),
(194, 'MONTENEGRO', 'PODGORICA', 'Dél-Európa:Balkán-félsziget', '14026.00', 'köztársaság', 616, 137, 'MNE', 'MONTENEGRO CRNA GORA', 'PODGORICA', 'euro', 'EUR', '100 eurocent', 382, 3100, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `orszagok`
--
ALTER TABLE `orszagok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `orszagok`
--
ALTER TABLE `orszagok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- Adatbázis: `ostermelo`
--
CREATE DATABASE IF NOT EXISTS `ostermelo` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `ostermelo`;
--
-- Adatbázis: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- A tábla adatainak kiíratása `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- A tábla adatainak kiíratása `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"forum_app\",\"table\":\"comment\"},{\"db\":\"forum_app\",\"table\":\"forum\"},{\"db\":\"forum_app\",\"table\":\"theme\"},{\"db\":\"forum_app\",\"table\":\"user\"},{\"db\":\"214szfte_tarhely\",\"table\":\"rendelesek\"},{\"db\":\"214szfte_mvc_project\",\"table\":\"concerts\"},{\"db\":\"214szfte_mvc_project\",\"table\":\"musics\"},{\"db\":\"214szfte_mvc_project\",\"table\":\"members\"},{\"db\":\"214szfte_mvc_project\",\"table\":\"contents\"},{\"db\":\"214szfte_mvc_project\",\"table\":\"menuitems\"}]');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- A tábla adatainak kiíratása `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-03-30 15:34:30', '{\"lang\":\"hu\",\"Console\\/Mode\":\"show\",\"NavigationWidth\":242,\"Console\\/Height\":267}');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- A tábla indexei `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- A tábla indexei `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- A tábla indexei `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- A tábla indexei `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- A tábla indexei `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- A tábla indexei `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- A tábla indexei `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- A tábla indexei `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- A tábla indexei `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- A tábla indexei `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- A tábla indexei `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- A tábla indexei `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- A tábla indexei `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- A tábla indexei `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Adatbázis: `pizza`
--
CREATE DATABASE IF NOT EXISTS `pizza` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `pizza`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `futar`
--

CREATE TABLE `futar` (
  `fazon` int(3) NOT NULL DEFAULT 0,
  `fnev` varchar(25) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `ftel` varchar(12) COLLATE latin2_hungarian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `futar`
--

INSERT INTO `futar` (`fazon`, `fnev`, `ftel`) VALUES
(1, 'Hurrikán', '123456'),
(2, 'Gyalogkakukk', '666666'),
(3, 'Gömbvillám', '888888'),
(4, 'Szélvész', '258369'),
(5, 'Imperial', '987654');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza`
--

CREATE TABLE `pizza` (
  `pazon` int(3) NOT NULL DEFAULT 0,
  `pnev` varchar(15) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `par` int(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`pazon`, `pnev`, `par`) VALUES
(1, 'Capricciosa', 1050),
(2, 'Frutti di Mare', 1350),
(3, 'Hawaii', 850),
(4, 'Vesuvio', 900),
(5, 'Sorrento', 1050);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `razon` int(8) NOT NULL DEFAULT 0,
  `vazon` int(6) NOT NULL DEFAULT 0,
  `fazon` int(3) NOT NULL DEFAULT 0,
  `idopont` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`razon`, `vazon`, `fazon`, `idopont`) VALUES
(1, 4, 2, '2016-10-01 12:04:11'),
(2, 7, 2, '2016-10-01 13:18:44'),
(3, 1, 1, '2016-10-02 10:11:41'),
(4, 5, 2, '2016-10-02 10:24:59'),
(5, 2, 3, '2016-10-02 13:19:06'),
(6, 4, 2, '2016-10-03 13:14:38'),
(7, 6, 2, '2016-10-04 11:10:35'),
(8, 7, 4, '2016-10-04 15:34:58'),
(9, 1, 5, '2016-10-04 17:07:59'),
(10, 3, 5, '2016-10-04 20:21:51'),
(11, 2, 1, '2016-10-05 18:52:53'),
(12, 5, 2, '2016-10-05 19:59:02'),
(13, 6, 2, '2016-10-06 14:55:03'),
(14, 4, 3, '2016-10-06 15:01:14'),
(15, 1, 4, '2016-10-06 18:48:46'),
(16, 2, 5, '2016-10-06 19:11:03'),
(17, 7, 2, '2016-10-06 19:56:28'),
(18, 3, 2, '2016-10-07 12:45:30'),
(19, 4, 5, '2016-10-07 13:00:56'),
(20, 1, 1, '2016-10-07 15:42:50'),
(21, 5, 3, '2016-10-08 18:56:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tetel`
--

CREATE TABLE `tetel` (
  `razon` int(8) NOT NULL DEFAULT 0,
  `pazon` int(3) NOT NULL DEFAULT 0,
  `db` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `tetel`
--

INSERT INTO `tetel` (`razon`, `pazon`, `db`) VALUES
(1, 1, 2),
(1, 4, 3),
(2, 2, 1),
(3, 1, 2),
(4, 1, 1),
(4, 4, 1),
(5, 2, 4),
(6, 1, 1),
(6, 4, 1),
(6, 5, 1),
(7, 5, 5),
(8, 4, 3),
(9, 2, 1),
(10, 1, 1),
(10, 4, 1),
(11, 1, 1),
(12, 2, 2),
(12, 4, 2),
(13, 4, 1),
(13, 5, 1),
(13, 2, 1),
(14, 2, 2),
(15, 1, 1),
(16, 2, 1),
(16, 4, 1),
(16, 5, 1),
(17, 1, 2),
(17, 2, 3),
(18, 1, 4),
(18, 5, 1),
(19, 1, 1),
(19, 2, 1),
(19, 4, 1),
(19, 5, 1),
(20, 5, 3),
(21, 2, 2),
(21, 4, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevo`
--

CREATE TABLE `vevo` (
  `vazon` int(6) NOT NULL DEFAULT 0,
  `vnev` varchar(30) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '',
  `vcim` varchar(30) COLLATE latin2_hungarian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

--
-- A tábla adatainak kiíratása `vevo`
--

INSERT INTO `vevo` (`vazon`, `vnev`, `vcim`) VALUES
(1, 'Hapci', ''),
(2, 'Vidor', ''),
(3, 'Tudor', ''),
(4, 'Kuka', ''),
(5, 'Szende', ''),
(6, 'Szundi', ''),
(7, 'Morgó', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `futar`
--
ALTER TABLE `futar`
  ADD PRIMARY KEY (`fazon`);

--
-- A tábla indexei `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`pazon`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`razon`);

--
-- A tábla indexei `vevo`
--
ALTER TABLE `vevo`
  ADD PRIMARY KEY (`vazon`);
--
-- Adatbázis: `suli`
--
CREATE DATABASE IF NOT EXISTS `suli` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `suli`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diakok`
--

CREATE TABLE `diakok` (
  `azonosito` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `osztaly` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `eletkor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `diakok`
--

INSERT INTO `diakok` (`azonosito`, `nev`, `osztaly`, `eletkor`) VALUES
(1, 'Bekő Tóni', '9.A', 15),
(2, 'Mor Zsolt', '9.A', 16),
(3, 'Kandisz Nóra', '9.A', 15),
(4, 'Bekre Pál', '9.A', 16);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztalyok`
--

CREATE TABLE `osztalyok` (
  `osztaly` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `osztalyfonok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztalyok`
--

INSERT INTO `osztalyok` (`osztaly`, `osztalyfonok`) VALUES
('9.A', 'Varga József');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `osztalyok`
--
ALTER TABLE `osztalyok`
  ADD PRIMARY KEY (`osztaly`);
--
-- Adatbázis: `tagdij`
--
CREATE DATABASE IF NOT EXISTS `tagdij` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `tagdij`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `befiz`
--

CREATE TABLE `befiz` (
  `azon` int(10) UNSIGNED NOT NULL,
  `datum` datetime NOT NULL,
  `osszeg` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `befiz`
--

INSERT INTO `befiz` (`azon`, `datum`, `osszeg`) VALUES
(1001, '2016-01-11 16:25:03', 60000),
(1002, '2016-01-17 11:01:19', 5000),
(1004, '2016-01-21 15:40:25', 18000),
(1005, '2016-02-02 09:26:54', 24000),
(1004, '2016-02-04 11:47:08', 30000),
(1006, '2016-02-20 16:36:12', 9000),
(1007, '2016-02-21 13:44:02', 12000),
(1005, '2016-03-01 10:49:41', 8000),
(1007, '2016-03-06 14:52:44', 15000),
(1009, '2016-04-12 20:21:57', 20000),
(1004, '2016-05-10 12:00:29', 8000),
(1006, '2016-06-08 11:10:26', 4000),
(1010, '2016-06-22 17:22:43', 7000),
(1010, '2016-07-14 03:35:02', 8500),
(1012, '2016-07-19 12:48:51', 41000),
(1004, '2016-09-02 16:51:25', 11000),
(1006, '2016-09-05 14:34:48', 15000),
(1007, '2016-09-25 21:16:38', 4000),
(1012, '2016-10-01 13:13:34', 10000),
(1010, '2016-10-01 14:29:37', 5000),
(1012, '2016-10-12 16:54:15', 6000),
(1007, '2016-11-24 11:02:52', 14000),
(1009, '2016-11-25 10:48:31', 19000),
(1007, '2016-11-25 16:01:24', 17000),
(1002, '2016-11-29 13:34:08', 10000),
(1010, '2016-11-30 08:27:50', 12000),
(1004, '2016-12-12 22:02:20', 20000),
(1009, '2016-12-15 12:28:44', 25000),
(1002, '2016-12-23 19:42:20', 3000),
(1005, '2016-12-23 20:33:28', 7500),
(1002, '2016-12-29 10:00:47', 18000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ugyfel`
--

CREATE TABLE `ugyfel` (
  `azon` int(10) UNSIGNED NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulev` smallint(4) UNSIGNED NOT NULL,
  `irszam` smallint(4) UNSIGNED NOT NULL,
  `orsz` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `ugyfel`
--

INSERT INTO `ugyfel` (`azon`, `nev`, `szulev`, `irszam`, `orsz`) VALUES
(1001, 'Buda Jenő', 1982, 1026, 'H'),
(1002, 'Makkos Mária', 1970, 1128, 'H'),
(1003, 'Pilis Csaba', 1992, 2442, 'H'),
(1004, 'Török Bálint', 1988, 2128, 'H'),
(1005, 'Szent Endre', 1962, 2000, 'H'),
(1006, 'Kis Marton', 1991, 9999, 'A'),
(1007, 'Békés Csaba', 1989, 4400, 'H'),
(1009, 'Dráva Szabolcs', 1985, 7520, 'H'),
(1010, 'Nagy Károly', 1975, 9999, 'RO'),
(1012, 'Boros Jenő', 1982, 9999, 'RO'),
(1013, 'Száva Magdolna', 1987, 9999, 'HR');
--
-- Adatbázis: `tanfolyam`
--
CREATE DATABASE IF NOT EXISTS `tanfolyam` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `tanfolyam`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ertekelesek`
--

CREATE TABLE `ertekelesek` (
  `id` int(11) NOT NULL,
  `Tanuloid` int(11) NOT NULL,
  `Tantargyid` int(11) NOT NULL,
  `jegy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ertekelesek`
--

INSERT INTO `ertekelesek` (`id`, `Tanuloid`, `Tantargyid`, `jegy`) VALUES
(1, 1, 1, 3),
(2, 1, 1, 3),
(3, 1, 2, 5),
(4, 2, 2, 5),
(5, 3, 2, 5),
(6, 1, 1, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tantargyak`
--

CREATE TABLE `tantargyak` (
  `id` int(50) NOT NULL,
  `Megnevezes` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `Tanar` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tantargyak`
--

INSERT INTO `tantargyak` (`id`, `Megnevezes`, `Tanar`) VALUES
(1, 'Angol nyelv', 'Nemes Angéla'),
(2, 'Informatika', 'Kis Ede');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanulok`
--

CREATE TABLE `tanulok` (
  `ID` int(11) NOT NULL,
  `Nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `Telefonszam` varchar(20) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `Szuletesi ido` date NOT NULL,
  `Email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tanulok`
--

INSERT INTO `tanulok` (`ID`, `Nev`, `Telefonszam`, `Szuletesi ido`, `Email`) VALUES
(1, 'Kovács Elek', NULL, '1991-02-28', 'elek0228@email.com'),
(2, 'Nagy Béla', '+36-55-335223', '1999-12-31', 'nagy.bela@drotposta.com'),
(3, 'Tóth Emil', '+36-55-475319', '1987-06-16', 'emil@e-level.com');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ertekelesek`
--
ALTER TABLE `ertekelesek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tanuloid` (`Tanuloid`),
  ADD KEY `Tantargyid` (`Tantargyid`);

--
-- A tábla indexei `tantargyak`
--
ALTER TABLE `tantargyak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `megnevezes` (`Megnevezes`);

--
-- A tábla indexei `tanulok`
--
ALTER TABLE `tanulok`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`Email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ertekelesek`
--
ALTER TABLE `ertekelesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `tantargyak`
--
ALTER TABLE `tantargyak`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `tanulok`
--
ALTER TABLE `tanulok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ertekelesek`
--
ALTER TABLE `ertekelesek`
  ADD CONSTRAINT `ertekelesek_ibfk_1` FOREIGN KEY (`Tanuloid`) REFERENCES `tanulok` (`ID`),
  ADD CONSTRAINT `ertekelesek_ibfk_2` FOREIGN KEY (`Tantargyid`) REFERENCES `tantargyak` (`id`);
--
-- Adatbázis: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Adatbázis: `őstermelő`
--
CREATE DATABASE IF NOT EXISTS `őstermelő` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `őstermelő`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyumolcslevek`
--

CREATE TABLE `gyumolcslevek` (
  `id` int(11) NOT NULL,
  `gynev` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `gyumolcslevek`
--

INSERT INTO `gyumolcslevek` (`id`, `gynev`) VALUES
(1, 'almalé'),
(2, 'körtelé'),
(3, 'szilvalé'),
(4, 'áfonyalé'),
(5, '?szibaracklé'),
(6, 'bodzalé'),
(7, 'eperlé');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kiszallitasok`
--

CREATE TABLE `kiszallitasok` (
  `sorsz` int(11) NOT NULL,
  `gyumleid` int(11) NOT NULL,
  `partnerid` int(11) NOT NULL,
  `datum` date NOT NULL,
  `karton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `kiszallitasok`
--

INSERT INTO `kiszallitasok` (`sorsz`, `gyumleid`, `partnerid`, `datum`, `karton`) VALUES
(1, 3, 33, '2016-01-11', 6),
(2, 6, 2, '2016-01-11', 4),
(3, 6, 23, '2016-01-12', 11),
(4, 4, 6, '2016-01-12', 8),
(5, 6, 30, '2016-01-13', 9),
(6, 5, 4, '2016-01-13', 2),
(7, 4, 4, '2016-01-14', 10),
(8, 6, 3, '2016-01-14', 7),
(9, 4, 18, '2016-01-14', 14),
(10, 5, 17, '2016-01-14', 15),
(11, 2, 14, '2016-01-18', 7),
(12, 5, 26, '2016-01-18', 4),
(13, 3, 30, '2016-01-18', 15),
(14, 5, 36, '2016-01-18', 6),
(15, 4, 7, '2016-01-18', 3),
(16, 3, 31, '2016-01-18', 3),
(17, 4, 7, '2016-01-18', 13),
(18, 5, 14, '2016-01-18', 10),
(19, 5, 40, '2016-01-18', 3),
(20, 1, 34, '2016-01-18', 3),
(21, 6, 38, '2016-01-19', 2),
(22, 2, 5, '2016-01-19', 11),
(23, 7, 11, '2016-01-19', 12),
(24, 2, 42, '2016-01-19', 15),
(25, 4, 23, '2016-01-19', 16),
(26, 6, 31, '2016-01-19', 9),
(27, 1, 22, '2016-01-19', 9),
(28, 4, 20, '2016-01-19', 6),
(29, 4, 23, '2016-01-20', 6),
(30, 1, 17, '2016-01-20', 14),
(31, 5, 4, '2016-01-21', 4),
(32, 5, 36, '2016-01-21', 5),
(33, 4, 26, '2016-01-22', 2),
(34, 4, 3, '2016-01-22', 11),
(35, 4, 7, '2016-01-22', 14),
(36, 3, 44, '2016-01-22', 10),
(37, 2, 22, '2016-01-22', 5),
(38, 6, 5, '2016-01-22', 15),
(39, 6, 3, '2016-01-25', 4),
(40, 6, 26, '2016-01-25', 7),
(41, 4, 9, '2016-01-26', 8),
(42, 3, 28, '2016-01-26', 5),
(43, 2, 1, '2016-01-27', 15),
(44, 4, 3, '2016-01-27', 2),
(45, 3, 16, '2016-01-28', 5),
(46, 2, 43, '2016-01-28', 16),
(47, 5, 7, '2016-01-28', 5),
(48, 7, 32, '2016-01-28', 3),
(49, 4, 21, '2016-01-28', 2),
(50, 5, 24, '2016-01-28', 8),
(51, 3, 28, '2016-01-29', 3),
(52, 6, 16, '2016-01-29', 4),
(53, 1, 43, '2016-02-01', 12),
(54, 2, 19, '2016-02-01', 14),
(55, 3, 8, '2016-02-01', 8),
(56, 2, 7, '2016-02-01', 15),
(57, 2, 36, '2016-02-01', 7),
(58, 4, 17, '2016-02-01', 14),
(59, 6, 18, '2016-02-01', 3),
(60, 5, 24, '2016-02-01', 2),
(61, 3, 40, '2016-02-02', 12),
(62, 7, 19, '2016-02-02', 5),
(63, 5, 11, '2016-02-02', 9),
(64, 2, 25, '2016-02-02', 8),
(65, 5, 6, '2016-02-03', 13),
(66, 2, 41, '2016-02-03', 6),
(67, 5, 37, '2016-02-04', 6),
(68, 3, 15, '2016-02-04', 2),
(69, 5, 30, '2016-02-05', 9),
(70, 2, 32, '2016-02-05', 4),
(71, 6, 39, '2016-02-05', 15),
(72, 2, 8, '2016-02-05', 4),
(73, 2, 1, '2016-02-08', 16),
(74, 3, 27, '2016-02-08', 6),
(75, 1, 27, '2016-02-09', 6),
(76, 2, 26, '2016-02-09', 8),
(77, 5, 26, '2016-02-09', 9),
(78, 5, 43, '2016-02-09', 10),
(79, 4, 10, '2016-02-10', 8),
(80, 6, 11, '2016-02-10', 14),
(81, 6, 8, '2016-02-10', 14),
(82, 5, 31, '2016-02-10', 8),
(83, 4, 28, '2016-02-10', 12),
(84, 6, 8, '2016-02-10', 2),
(85, 4, 1, '2016-02-10', 3),
(86, 2, 44, '2016-02-10', 4),
(87, 6, 33, '2016-02-11', 13),
(88, 2, 33, '2016-02-11', 14),
(89, 1, 33, '2016-02-11', 11),
(90, 2, 30, '2016-02-11', 15),
(91, 3, 17, '2016-02-12', 4),
(92, 3, 40, '2016-02-12', 14),
(93, 2, 18, '2016-02-12', 7),
(94, 4, 32, '2016-02-12', 5),
(95, 2, 22, '2016-02-12', 8),
(96, 1, 24, '2016-02-12', 15),
(97, 2, 43, '2016-02-15', 14),
(98, 2, 27, '2016-02-15', 5),
(99, 5, 10, '2016-02-15', 2),
(100, 5, 4, '2016-02-15', 6),
(101, 2, 37, '2016-02-15', 8),
(102, 6, 30, '2016-02-15', 11),
(103, 3, 33, '2016-02-16', 9),
(104, 4, 34, '2016-02-16', 14),
(105, 3, 32, '2016-02-16', 5),
(106, 6, 30, '2016-02-16', 15),
(107, 4, 43, '2016-02-17', 2),
(108, 4, 25, '2016-02-17', 8),
(109, 6, 8, '2016-02-18', 5),
(110, 7, 28, '2016-02-18', 13),
(111, 1, 13, '2016-02-19', 5),
(112, 4, 20, '2016-02-19', 10),
(113, 5, 19, '2016-02-19', 12),
(114, 4, 17, '2016-02-19', 5),
(115, 2, 28, '2016-02-19', 5),
(116, 2, 29, '2016-02-19', 10),
(117, 6, 33, '2016-02-22', 3),
(118, 3, 20, '2016-02-22', 8),
(119, 2, 33, '2016-02-22', 2),
(120, 6, 39, '2016-02-22', 10),
(121, 3, 13, '2016-02-23', 9),
(122, 3, 30, '2016-02-23', 13),
(123, 5, 13, '2016-02-23', 15),
(124, 1, 28, '2016-02-23', 10),
(125, 4, 5, '2016-02-23', 16),
(126, 3, 25, '2016-02-23', 14),
(127, 4, 25, '2016-02-24', 10),
(128, 3, 39, '2016-02-24', 7),
(129, 5, 22, '2016-02-24', 10),
(130, 7, 35, '2016-02-24', 5),
(131, 2, 37, '2016-02-25', 1),
(132, 2, 29, '2016-02-25', 12),
(133, 4, 18, '2016-02-26', 6),
(134, 2, 11, '2016-02-26', 4),
(135, 3, 13, '2016-02-26', 14),
(136, 6, 32, '2016-02-26', 7),
(137, 4, 19, '2016-02-29', 6),
(138, 1, 16, '2016-02-29', 9),
(139, 3, 6, '2016-02-29', 8),
(140, 4, 19, '2016-02-29', 1),
(141, 5, 37, '2016-03-01', 6),
(142, 7, 35, '2016-03-01', 8),
(143, 6, 8, '2016-03-01', 7),
(144, 6, 19, '2016-03-01', 15),
(145, 7, 17, '2016-03-02', 4),
(146, 4, 4, '2016-03-02', 2),
(147, 1, 6, '2016-03-03', 1),
(148, 6, 18, '2016-03-03', 10),
(149, 2, 6, '2016-03-03', 12),
(150, 5, 5, '2016-03-03', 6),
(151, 4, 29, '2016-03-03', 1),
(152, 3, 44, '2016-03-03', 5),
(153, 5, 15, '2016-03-04', 7),
(154, 4, 25, '2016-03-04', 15),
(155, 1, 11, '2016-03-04', 13),
(156, 6, 12, '2016-03-04', 3),
(157, 4, 3, '2016-03-07', 14),
(158, 5, 12, '2016-03-07', 1),
(159, 2, 39, '2016-03-07', 7),
(160, 6, 23, '2016-03-07', 7),
(161, 6, 20, '2016-03-07', 14),
(162, 5, 27, '2016-03-07', 8),
(163, 3, 32, '2016-03-07', 5),
(164, 3, 17, '2016-03-07', 6),
(165, 2, 2, '2016-03-08', 14),
(166, 5, 36, '2016-03-08', 14),
(167, 5, 11, '2016-03-08', 9),
(168, 1, 23, '2016-03-08', 16),
(169, 6, 15, '2016-03-09', 14),
(170, 4, 15, '2016-03-09', 9),
(171, 5, 12, '2016-03-10', 6),
(172, 4, 43, '2016-03-10', 2),
(173, 7, 43, '2016-03-10', 10),
(174, 3, 11, '2016-03-10', 15),
(175, 4, 13, '2016-03-11', 3),
(176, 3, 4, '2016-03-11', 11),
(177, 4, 20, '2016-03-11', 6),
(178, 4, 28, '2016-03-11', 3),
(179, 2, 23, '2016-03-14', 12),
(180, 6, 34, '2016-03-14', 12),
(181, 7, 13, '2016-03-14', 7),
(182, 2, 35, '2016-03-14', 11),
(183, 1, 35, '2016-03-14', 3),
(184, 5, 4, '2016-03-14', 13),
(185, 2, 8, '2016-03-14', 11),
(186, 2, 13, '2016-03-14', 12),
(187, 3, 33, '2016-03-15', 13),
(188, 1, 21, '2016-03-15', 12),
(189, 2, 15, '2016-03-15', 5),
(190, 6, 30, '2016-03-15', 8),
(191, 5, 33, '2016-03-16', 4),
(192, 7, 41, '2016-03-16', 2),
(193, 3, 42, '2016-03-16', 13),
(194, 4, 11, '2016-03-16', 2),
(195, 3, 30, '2016-03-17', 7),
(196, 7, 8, '2016-03-17', 3),
(197, 6, 38, '2016-03-17', 10),
(198, 4, 13, '2016-03-17', 9),
(199, 2, 13, '2016-03-18', 7),
(200, 3, 22, '2016-03-18', 12),
(201, 4, 17, '2016-03-21', 8),
(202, 6, 41, '2016-03-21', 2),
(203, 5, 29, '2016-03-21', 6),
(204, 6, 38, '2016-03-21', 15),
(205, 6, 2, '2016-03-21', 10),
(206, 5, 13, '2016-03-21', 10),
(207, 3, 7, '2016-03-22', 11),
(208, 6, 4, '2016-03-22', 3),
(209, 3, 41, '2016-03-22', 8),
(210, 5, 43, '2016-03-22', 14),
(211, 5, 31, '2016-03-23', 11),
(212, 6, 16, '2016-03-23', 11),
(213, 4, 23, '2016-03-23', 14),
(214, 3, 25, '2016-03-23', 12),
(215, 4, 10, '2016-03-24', 8),
(216, 2, 5, '2016-03-24', 4),
(217, 6, 2, '2016-03-25', 7),
(218, 4, 6, '2016-03-25', 8),
(219, 5, 40, '2016-03-25', 4),
(220, 5, 5, '2016-03-25', 7),
(221, 7, 12, '2016-03-28', 15),
(222, 7, 34, '2016-03-28', 14),
(223, 4, 20, '2016-03-28', 11),
(224, 1, 14, '2016-03-28', 14),
(225, 4, 21, '2016-03-28', 5),
(226, 6, 3, '2016-03-28', 13),
(227, 2, 6, '2016-03-28', 6),
(228, 4, 24, '2016-03-28', 5),
(229, 5, 32, '2016-03-29', 15),
(230, 3, 2, '2016-03-29', 3),
(231, 4, 15, '2016-03-30', 13),
(232, 2, 5, '2016-03-30', 10),
(233, 6, 36, '2016-03-31', 9),
(234, 4, 37, '2016-03-31', 2),
(235, 3, 5, '2016-03-31', 9),
(236, 3, 32, '2016-03-31', 15),
(237, 5, 10, '2016-04-01', 12),
(238, 7, 40, '2016-04-01', 3),
(239, 5, 4, '2016-04-04', 8),
(240, 2, 30, '2016-04-04', 9),
(241, 7, 5, '2016-04-04', 7),
(242, 1, 13, '2016-04-04', 5),
(243, 2, 29, '2016-04-05', 6),
(244, 1, 8, '2016-04-05', 7),
(245, 6, 14, '2016-04-05', 9),
(246, 6, 11, '2016-04-05', 9),
(247, 4, 5, '2016-04-06', 6),
(248, 7, 2, '2016-04-06', 10),
(249, 5, 8, '2016-04-06', 7),
(250, 4, 31, '2016-04-06', 5),
(251, 7, 31, '2016-04-07', 12),
(252, 7, 42, '2016-04-07', 14),
(253, 5, 43, '2016-04-07', 12),
(254, 5, 8, '2016-04-07', 4),
(255, 6, 42, '2016-04-08', 7),
(256, 7, 5, '2016-04-08', 13),
(257, 6, 16, '2016-04-08', 12),
(258, 5, 31, '2016-04-08', 9),
(259, 3, 4, '2016-04-11', 16),
(260, 5, 42, '2016-04-11', 11),
(261, 6, 31, '2016-04-11', 12),
(262, 6, 37, '2016-04-11', 9),
(263, 1, 19, '2016-04-11', 2),
(264, 6, 28, '2016-04-11', 5),
(265, 2, 10, '2016-04-11', 11),
(266, 4, 6, '2016-04-11', 16),
(267, 6, 16, '2016-04-11', 11),
(268, 3, 7, '2016-04-11', 4),
(269, 2, 14, '2016-04-11', 2),
(270, 6, 1, '2016-04-11', 8),
(271, 3, 16, '2016-04-12', 7),
(272, 4, 40, '2016-04-12', 10),
(273, 6, 2, '2016-04-12', 6),
(274, 2, 16, '2016-04-12', 11),
(275, 7, 4, '2016-04-13', 14),
(276, 3, 43, '2016-04-13', 4),
(277, 1, 12, '2016-04-13', 15),
(278, 2, 11, '2016-04-13', 14),
(279, 6, 19, '2016-04-14', 5),
(280, 6, 35, '2016-04-14', 16),
(281, 6, 40, '2016-04-14', 15),
(282, 6, 26, '2016-04-14', 15),
(283, 3, 4, '2016-04-14', 9),
(284, 5, 2, '2016-04-14', 14),
(285, 3, 16, '2016-04-14', 5),
(286, 6, 35, '2016-04-14', 15),
(287, 6, 31, '2016-04-18', 4),
(288, 3, 18, '2016-04-18', 2),
(289, 6, 8, '2016-04-18', 14),
(290, 5, 11, '2016-04-18', 9),
(291, 4, 19, '2016-04-18', 13),
(292, 2, 30, '2016-04-18', 1),
(293, 3, 33, '2016-04-18', 12),
(294, 5, 15, '2016-04-18', 12),
(295, 3, 22, '2016-04-19', 5),
(296, 4, 4, '2016-04-19', 8),
(297, 2, 43, '2016-04-20', 6),
(298, 5, 2, '2016-04-20', 10),
(299, 4, 8, '2016-04-21', 7),
(300, 3, 21, '2016-04-21', 13),
(301, 6, 25, '2016-04-21', 2),
(302, 5, 12, '2016-04-21', 6),
(303, 3, 14, '2016-04-22', 9),
(304, 4, 22, '2016-04-22', 4),
(305, 5, 13, '2016-04-22', 14),
(306, 6, 31, '2016-04-22', 12),
(307, 7, 5, '2016-04-22', 3),
(308, 7, 14, '2016-04-22', 10),
(309, 4, 3, '2016-04-25', 15),
(310, 5, 32, '2016-04-25', 11),
(311, 6, 34, '2016-04-25', 8),
(312, 3, 22, '2016-04-25', 9),
(313, 7, 40, '2016-04-25', 6),
(314, 5, 23, '2016-04-25', 13),
(315, 5, 36, '2016-04-25', 13),
(316, 6, 37, '2016-04-25', 6),
(317, 5, 9, '2016-04-25', 10),
(318, 3, 21, '2016-04-25', 4),
(319, 5, 34, '2016-04-26', 9),
(320, 1, 17, '2016-04-26', 10),
(321, 4, 3, '2016-04-26', 7),
(322, 1, 25, '2016-04-26', 13),
(323, 3, 31, '2016-04-27', 3),
(324, 6, 6, '2016-04-27', 14),
(325, 2, 42, '2016-04-28', 2),
(326, 3, 15, '2016-04-28', 9),
(327, 6, 8, '2016-04-28', 3),
(328, 3, 5, '2016-04-28', 2),
(329, 1, 40, '2016-04-28', 9),
(330, 7, 20, '2016-04-28', 12),
(331, 2, 11, '2016-04-28', 12),
(332, 4, 36, '2016-04-28', 14),
(333, 5, 17, '2016-04-29', 13),
(334, 2, 6, '2016-04-29', 2),
(335, 3, 23, '2016-05-02', 5),
(336, 6, 11, '2016-05-02', 6),
(337, 5, 28, '2016-05-02', 4),
(338, 6, 30, '2016-05-02', 6),
(339, 1, 9, '2016-05-02', 16),
(340, 3, 24, '2016-05-02', 6),
(341, 7, 31, '2016-05-02', 9),
(342, 5, 2, '2016-05-02', 3),
(343, 3, 38, '2016-05-03', 11),
(344, 4, 5, '2016-05-03', 3),
(345, 5, 4, '2016-05-04', 4),
(346, 2, 4, '2016-05-04', 3),
(347, 6, 42, '2016-05-04', 13),
(348, 3, 19, '2016-05-04', 11),
(349, 6, 30, '2016-05-05', 4),
(350, 4, 3, '2016-05-05', 13),
(351, 2, 21, '2016-05-06', 7),
(352, 4, 29, '2016-05-06', 3),
(353, 6, 43, '2016-05-09', 6),
(354, 1, 42, '2016-05-09', 13),
(355, 3, 20, '2016-05-09', 5),
(356, 6, 9, '2016-05-09', 10),
(357, 5, 35, '2016-05-10', 10),
(358, 1, 18, '2016-05-10', 8),
(359, 5, 4, '2016-05-10', 4),
(360, 3, 20, '2016-05-10', 15),
(361, 7, 14, '2016-05-10', 7),
(362, 1, 15, '2016-05-10', 6),
(363, 2, 37, '2016-05-10', 7),
(364, 6, 25, '2016-05-10', 2),
(365, 6, 6, '2016-05-10', 13),
(366, 2, 27, '2016-05-10', 14),
(367, 5, 22, '2016-05-11', 13),
(368, 2, 23, '2016-05-11', 10),
(369, 2, 42, '2016-05-11', 3),
(370, 3, 1, '2016-05-11', 11),
(371, 5, 6, '2016-05-11', 9),
(372, 2, 38, '2016-05-11', 6),
(373, 6, 33, '2016-05-11', 9),
(374, 2, 28, '2016-05-11', 11),
(375, 3, 25, '2016-05-12', 13),
(376, 3, 16, '2016-05-12', 6),
(377, 7, 12, '2016-05-12', 9),
(378, 4, 31, '2016-05-12', 8),
(379, 5, 11, '2016-05-13', 1),
(380, 6, 2, '2016-05-13', 6),
(381, 7, 4, '2016-05-13', 4),
(382, 1, 32, '2016-05-13', 2),
(383, 4, 13, '2016-05-13', 4),
(384, 1, 20, '2016-05-13', 8),
(385, 2, 27, '2016-05-13', 14),
(386, 5, 43, '2016-05-13', 10),
(387, 4, 5, '2016-05-16', 13),
(388, 5, 28, '2016-05-16', 9),
(389, 3, 38, '2016-05-16', 13),
(390, 2, 27, '2016-05-16', 2),
(391, 2, 15, '2016-05-16', 2),
(392, 5, 43, '2016-05-16', 8),
(393, 2, 17, '2016-05-17', 5),
(394, 4, 21, '2016-05-17', 5),
(395, 3, 28, '2016-05-17', 5),
(396, 3, 15, '2016-05-17', 5),
(397, 2, 37, '2016-05-17', 6),
(398, 4, 42, '2016-05-17', 5),
(399, 4, 18, '2016-05-18', 7),
(400, 6, 7, '2016-05-18', 9),
(401, 2, 6, '2016-05-18', 10),
(402, 4, 32, '2016-05-18', 10),
(403, 7, 2, '2016-05-18', 13),
(404, 4, 4, '2016-05-18', 16),
(405, 5, 4, '2016-05-20', 6),
(406, 6, 29, '2016-05-20', 6),
(407, 7, 27, '2016-05-23', 1),
(408, 6, 44, '2016-05-23', 1),
(409, 7, 11, '2016-05-23', 5),
(410, 1, 27, '2016-05-23', 5),
(411, 5, 15, '2016-05-23', 9),
(412, 3, 15, '2016-05-23', 2),
(413, 4, 4, '2016-05-23', 12),
(414, 6, 18, '2016-05-23', 11),
(415, 7, 42, '2016-05-23', 4),
(416, 2, 23, '2016-05-23', 13),
(417, 1, 6, '2016-05-23', 5),
(418, 5, 28, '2016-05-23', 10),
(419, 5, 20, '2016-05-23', 5),
(420, 2, 20, '2016-05-23', 8),
(421, 4, 9, '2016-05-23', 16),
(422, 6, 17, '2016-05-23', 12),
(423, 6, 21, '2016-05-24', 15),
(424, 6, 11, '2016-05-24', 1),
(425, 3, 39, '2016-05-25', 13),
(426, 2, 3, '2016-05-25', 13),
(427, 4, 38, '2016-05-26', 7),
(428, 3, 35, '2016-05-26', 9),
(429, 1, 28, '2016-05-26', 11),
(430, 4, 1, '2016-05-26', 14),
(431, 6, 20, '2016-05-27', 9),
(432, 2, 37, '2016-05-27', 10),
(433, 5, 44, '2016-05-27', 5),
(434, 5, 27, '2016-05-27', 3),
(435, 5, 6, '2016-05-27', 5),
(436, 3, 19, '2016-05-27', 5),
(437, 6, 35, '2016-05-30', 9),
(438, 6, 8, '2016-05-30', 14),
(439, 6, 26, '2016-05-30', 7),
(440, 3, 4, '2016-05-30', 15),
(441, 3, 14, '2016-05-30', 9),
(442, 6, 11, '2016-05-30', 15),
(443, 3, 21, '2016-05-31', 9),
(444, 7, 17, '2016-05-31', 15),
(445, 2, 41, '2016-06-01', 10),
(446, 6, 26, '2016-06-01', 9),
(447, 3, 25, '2016-06-01', 5),
(448, 1, 5, '2016-06-01', 11),
(449, 7, 21, '2016-06-03', 16),
(450, 3, 17, '2016-06-03', 10),
(451, 4, 13, '2016-06-06', 6),
(452, 2, 37, '2016-06-06', 10),
(453, 4, 9, '2016-06-06', 3),
(454, 3, 15, '2016-06-06', 4),
(455, 5, 18, '2016-06-06', 1),
(456, 3, 41, '2016-06-06', 9),
(457, 2, 9, '2016-06-06', 3),
(458, 6, 42, '2016-06-06', 7),
(459, 6, 10, '2016-06-07', 11),
(460, 4, 42, '2016-06-07', 16),
(461, 3, 1, '2016-06-08', 2),
(462, 7, 6, '2016-06-08', 5),
(463, 4, 16, '2016-06-09', 8),
(464, 3, 25, '2016-06-09', 6),
(465, 5, 18, '2016-06-10', 2),
(466, 3, 44, '2016-06-10', 13),
(467, 4, 34, '2016-06-13', 2),
(468, 7, 32, '2016-06-13', 4),
(469, 4, 39, '2016-06-13', 10),
(470, 2, 5, '2016-06-13', 4),
(471, 6, 28, '2016-06-13', 11),
(472, 7, 12, '2016-06-13', 10),
(473, 4, 32, '2016-06-14', 15),
(474, 4, 22, '2016-06-14', 13),
(475, 4, 32, '2016-06-15', 15),
(476, 4, 22, '2016-06-15', 11),
(477, 6, 9, '2016-06-15', 8),
(478, 7, 23, '2016-06-15', 14),
(479, 3, 8, '2016-06-16', 10),
(480, 4, 4, '2016-06-16', 8),
(481, 5, 37, '2016-06-16', 8),
(482, 3, 21, '2016-06-16', 3),
(483, 7, 20, '2016-06-17', 1),
(484, 5, 38, '2016-06-17', 5),
(485, 3, 26, '2016-06-20', 4),
(486, 2, 20, '2016-06-20', 6),
(487, 7, 17, '2016-06-20', 8),
(488, 5, 24, '2016-06-20', 9),
(489, 4, 28, '2016-06-20', 3),
(490, 4, 17, '2016-06-20', 13),
(491, 6, 7, '2016-06-20', 1),
(492, 4, 33, '2016-06-20', 16),
(493, 2, 16, '2016-06-21', 13),
(494, 5, 4, '2016-06-21', 10),
(495, 4, 12, '2016-06-22', 5),
(496, 3, 38, '2016-06-22', 2),
(497, 3, 31, '2016-06-22', 13),
(498, 6, 38, '2016-06-22', 2),
(499, 2, 35, '2016-06-22', 7),
(500, 6, 16, '2016-06-22', 6),
(501, 6, 18, '2016-06-23', 4),
(502, 6, 41, '2016-06-23', 9),
(503, 4, 22, '2016-06-23', 15),
(504, 5, 39, '2016-06-23', 15),
(505, 7, 10, '2016-06-23', 12),
(506, 3, 41, '2016-06-23', 11),
(507, 2, 35, '2016-06-24', 9),
(508, 7, 27, '2016-06-24', 15),
(509, 2, 19, '2016-06-27', 12),
(510, 4, 22, '2016-06-27', 4),
(511, 7, 17, '2016-06-27', 4),
(512, 3, 15, '2016-06-27', 4),
(513, 3, 1, '2016-06-28', 2),
(514, 2, 30, '2016-06-28', 8),
(515, 5, 13, '2016-06-29', 5),
(516, 2, 12, '2016-06-29', 7),
(517, 4, 26, '2016-06-30', 8),
(518, 2, 41, '2016-06-30', 11),
(519, 7, 20, '2016-06-30', 8),
(520, 3, 43, '2016-06-30', 14),
(521, 6, 6, '2016-07-01', 2),
(522, 3, 31, '2016-07-01', 13),
(523, 6, 22, '2016-07-01', 10),
(524, 2, 42, '2016-07-01', 1),
(525, 4, 15, '2016-07-01', 11),
(526, 3, 9, '2016-07-01', 9),
(527, 4, 17, '2016-07-04', 2),
(528, 2, 4, '2016-07-04', 4),
(529, 2, 32, '2016-07-04', 4),
(530, 5, 19, '2016-07-04', 2),
(531, 4, 37, '2016-07-04', 4),
(532, 4, 14, '2016-07-04', 15),
(533, 2, 25, '2016-07-05', 10),
(534, 4, 6, '2016-07-05', 6),
(535, 6, 12, '2016-07-06', 9),
(536, 5, 24, '2016-07-06', 11),
(537, 6, 28, '2016-07-07', 11),
(538, 3, 26, '2016-07-07', 4),
(539, 3, 25, '2016-07-08', 4),
(540, 2, 27, '2016-07-08', 1),
(541, 1, 18, '2016-07-08', 9),
(542, 4, 27, '2016-07-08', 10),
(543, 4, 8, '2016-07-11', 7),
(544, 4, 29, '2016-07-11', 11),
(545, 1, 3, '2016-07-11', 11),
(546, 3, 24, '2016-07-11', 8),
(547, 4, 41, '2016-07-13', 14),
(548, 4, 43, '2016-07-13', 8),
(549, 5, 27, '2016-07-13', 10),
(550, 7, 17, '2016-07-13', 5),
(551, 6, 20, '2016-07-13', 5),
(552, 7, 43, '2016-07-13', 10),
(553, 3, 5, '2016-07-13', 9),
(554, 3, 37, '2016-07-13', 2),
(555, 3, 25, '2016-07-13', 2),
(556, 1, 20, '2016-07-13', 14),
(557, 3, 30, '2016-07-14', 3),
(558, 2, 3, '2016-07-14', 11),
(559, 7, 32, '2016-07-14', 4),
(560, 3, 17, '2016-07-14', 3),
(561, 2, 9, '2016-07-15', 3),
(562, 3, 38, '2016-07-15', 13),
(563, 5, 3, '2016-07-15', 4),
(564, 1, 26, '2016-07-15', 10),
(565, 5, 36, '2016-07-18', 6),
(566, 5, 20, '2016-07-18', 3),
(567, 3, 14, '2016-07-18', 10),
(568, 5, 5, '2016-07-18', 9),
(569, 3, 39, '2016-07-18', 12),
(570, 3, 28, '2016-07-18', 13),
(571, 4, 40, '2016-07-19', 12),
(572, 2, 10, '2016-07-19', 15),
(573, 3, 41, '2016-07-19', 8),
(574, 5, 6, '2016-07-19', 9),
(575, 3, 29, '2016-07-20', 13),
(576, 5, 29, '2016-07-20', 11),
(577, 2, 12, '2016-07-20', 7),
(578, 5, 2, '2016-07-20', 11),
(579, 4, 14, '2016-07-21', 14),
(580, 5, 40, '2016-07-21', 9),
(581, 5, 8, '2016-07-21', 5),
(582, 2, 3, '2016-07-21', 12),
(583, 4, 10, '2016-07-22', 15),
(584, 4, 35, '2016-07-22', 8),
(585, 6, 11, '2016-07-22', 3),
(586, 3, 36, '2016-07-22', 9),
(587, 4, 3, '2016-07-25', 13),
(588, 4, 10, '2016-07-25', 15),
(589, 2, 14, '2016-07-25', 8),
(590, 6, 34, '2016-07-25', 5),
(591, 6, 39, '2016-07-25', 4),
(592, 6, 2, '2016-07-25', 16),
(593, 7, 4, '2016-07-26', 4),
(594, 6, 42, '2016-07-26', 12),
(595, 2, 39, '2016-07-26', 13),
(596, 7, 39, '2016-07-26', 10),
(597, 5, 40, '2016-07-27', 3),
(598, 5, 23, '2016-07-27', 12),
(599, 1, 22, '2016-07-28', 14),
(600, 6, 7, '2016-07-28', 1),
(601, 7, 14, '2016-07-28', 7),
(602, 2, 37, '2016-07-28', 13),
(603, 4, 22, '2016-07-28', 4),
(604, 3, 13, '2016-07-28', 3),
(605, 3, 16, '2016-08-01', 10),
(606, 1, 26, '2016-08-01', 4),
(607, 4, 10, '2016-08-01', 8),
(608, 6, 40, '2016-08-01', 6),
(609, 2, 8, '2016-08-02', 10),
(610, 2, 25, '2016-08-02', 12),
(611, 4, 7, '2016-08-03', 15),
(612, 3, 43, '2016-08-03', 9),
(613, 2, 25, '2016-08-04', 7),
(614, 5, 17, '2016-08-04', 5),
(615, 5, 21, '2016-08-04', 3),
(616, 5, 8, '2016-08-04', 11),
(617, 7, 19, '2016-08-05', 16),
(618, 1, 35, '2016-08-05', 14),
(619, 3, 18, '2016-08-05', 9),
(620, 5, 19, '2016-08-05', 13),
(621, 3, 4, '2016-08-08', 4),
(622, 7, 25, '2016-08-08', 9),
(623, 5, 6, '2016-08-08', 12),
(624, 2, 27, '2016-08-08', 5),
(625, 1, 40, '2016-08-08', 11),
(626, 5, 3, '2016-08-08', 11),
(627, 5, 11, '2016-08-09', 12),
(628, 2, 4, '2016-08-09', 6),
(629, 6, 31, '2016-08-09', 2),
(630, 4, 9, '2016-08-09', 12),
(631, 4, 11, '2016-08-09', 6),
(632, 3, 39, '2016-08-09', 9),
(633, 3, 2, '2016-08-10', 6),
(634, 6, 6, '2016-08-10', 2),
(635, 4, 24, '2016-08-10', 6),
(636, 4, 29, '2016-08-10', 10),
(637, 6, 9, '2016-08-11', 12),
(638, 1, 1, '2016-08-11', 6),
(639, 3, 19, '2016-08-12', 13),
(640, 3, 22, '2016-08-12', 10),
(641, 7, 37, '2016-08-12', 8),
(642, 5, 21, '2016-08-12', 1),
(643, 2, 41, '2016-08-15', 3),
(644, 6, 14, '2016-08-15', 5),
(645, 1, 21, '2016-08-15', 9),
(646, 6, 28, '2016-08-15', 14),
(647, 2, 7, '2016-08-15', 8),
(648, 3, 6, '2016-08-15', 6),
(649, 6, 36, '2016-08-16', 7),
(650, 4, 28, '2016-08-16', 9),
(651, 5, 1, '2016-08-16', 9),
(652, 4, 6, '2016-08-16', 1),
(653, 6, 22, '2016-08-17', 13),
(654, 5, 42, '2016-08-17', 15),
(655, 4, 17, '2016-08-17', 2),
(656, 2, 32, '2016-08-17', 6),
(657, 4, 18, '2016-08-17', 2),
(658, 6, 11, '2016-08-17', 7),
(659, 5, 11, '2016-08-17', 8),
(660, 1, 5, '2016-08-17', 5),
(661, 2, 17, '2016-08-18', 3),
(662, 2, 9, '2016-08-18', 10),
(663, 3, 2, '2016-08-18', 14),
(664, 6, 21, '2016-08-18', 2),
(665, 3, 15, '2016-08-19', 3),
(666, 2, 21, '2016-08-19', 15),
(667, 5, 13, '2016-08-22', 10),
(668, 6, 18, '2016-08-22', 14),
(669, 5, 34, '2016-08-22', 13),
(670, 3, 22, '2016-08-22', 14),
(671, 5, 5, '2016-08-23', 13),
(672, 6, 28, '2016-08-23', 14),
(673, 2, 33, '2016-08-23', 13),
(674, 6, 4, '2016-08-23', 15),
(675, 5, 38, '2016-08-24', 6),
(676, 5, 28, '2016-08-24', 12),
(677, 7, 9, '2016-08-24', 8),
(678, 3, 15, '2016-08-24', 7),
(679, 4, 30, '2016-08-26', 14),
(680, 5, 44, '2016-08-26', 9),
(681, 4, 31, '2016-08-26', 16),
(682, 2, 17, '2016-08-26', 13),
(683, 5, 18, '2016-08-29', 11),
(684, 3, 10, '2016-08-29', 5),
(685, 5, 2, '2016-08-29', 8),
(686, 4, 15, '2016-08-29', 10),
(687, 1, 29, '2016-08-29', 9),
(688, 5, 19, '2016-08-29', 14),
(689, 2, 5, '2016-08-31', 14),
(690, 2, 9, '2016-08-31', 7),
(691, 7, 21, '2016-09-01', 9),
(692, 1, 31, '2016-09-01', 14),
(693, 6, 29, '2016-09-02', 14),
(694, 2, 20, '2016-09-02', 6),
(695, 7, 11, '2016-09-05', 14),
(696, 2, 20, '2016-09-05', 11),
(697, 3, 36, '2016-09-05', 3),
(698, 1, 20, '2016-09-05', 16),
(699, 2, 24, '2016-09-05', 11),
(700, 6, 1, '2016-09-05', 12),
(701, 1, 40, '2016-09-05', 3),
(702, 6, 36, '2016-09-05', 5),
(703, 4, 2, '2016-09-06', 9),
(704, 7, 39, '2016-09-06', 15),
(705, 6, 18, '2016-09-07', 12),
(706, 2, 30, '2016-09-07', 6),
(707, 3, 24, '2016-09-08', 6),
(708, 1, 35, '2016-09-08', 10),
(709, 2, 42, '2016-09-09', 5),
(710, 5, 14, '2016-09-09', 11),
(711, 4, 15, '2016-09-12', 10),
(712, 2, 36, '2016-09-12', 6),
(713, 6, 13, '2016-09-12', 7),
(714, 6, 9, '2016-09-12', 9),
(715, 5, 22, '2016-09-12', 6),
(716, 5, 35, '2016-09-12', 7),
(717, 5, 14, '2016-09-12', 8),
(718, 6, 8, '2016-09-12', 8),
(719, 1, 21, '2016-09-13', 14),
(720, 1, 24, '2016-09-13', 14),
(721, 2, 26, '2016-09-13', 11),
(722, 1, 8, '2016-09-13', 9),
(723, 5, 9, '2016-09-13', 16),
(724, 3, 18, '2016-09-13', 9),
(725, 4, 28, '2016-09-14', 7),
(726, 5, 10, '2016-09-14', 9),
(727, 6, 42, '2016-09-14', 4),
(728, 6, 32, '2016-09-14', 1),
(729, 3, 43, '2016-09-15', 5),
(730, 3, 32, '2016-09-15', 3),
(731, 3, 33, '2016-09-16', 7),
(732, 6, 36, '2016-09-16', 13),
(733, 4, 31, '2016-09-19', 6),
(734, 1, 1, '2016-09-19', 13),
(735, 2, 28, '2016-09-19', 4),
(736, 5, 40, '2016-09-19', 5),
(737, 2, 5, '2016-09-19', 9),
(738, 3, 31, '2016-09-19', 4),
(739, 3, 9, '2016-09-20', 16),
(740, 5, 13, '2016-09-20', 14),
(741, 5, 43, '2016-09-21', 3),
(742, 6, 43, '2016-09-21', 15),
(743, 5, 13, '2016-09-21', 15),
(744, 3, 27, '2016-09-21', 8),
(745, 3, 11, '2016-09-21', 7),
(746, 4, 32, '2016-09-21', 11),
(747, 2, 43, '2016-09-22', 3),
(748, 6, 30, '2016-09-22', 5),
(749, 4, 40, '2016-09-22', 12),
(750, 6, 21, '2016-09-22', 4),
(751, 4, 30, '2016-09-26', 5),
(752, 6, 20, '2016-09-26', 7),
(753, 1, 17, '2016-09-26', 3),
(754, 4, 36, '2016-09-26', 15),
(755, 7, 23, '2016-09-26', 15),
(756, 3, 5, '2016-09-26', 15),
(757, 7, 8, '2016-09-26', 16),
(758, 4, 23, '2016-09-26', 5),
(759, 1, 34, '2016-09-27', 15),
(760, 6, 40, '2016-09-27', 15),
(761, 5, 40, '2016-09-28', 1),
(762, 6, 17, '2016-09-28', 3),
(763, 7, 23, '2016-09-28', 9),
(764, 5, 34, '2016-09-28', 12),
(765, 5, 21, '2016-09-28', 3),
(766, 3, 17, '2016-09-28', 7),
(767, 2, 8, '2016-09-29', 2),
(768, 5, 9, '2016-09-29', 11),
(769, 6, 40, '2016-09-29', 9),
(770, 2, 29, '2016-09-29', 15),
(771, 5, 7, '2016-09-30', 7),
(772, 5, 44, '2016-09-30', 13),
(773, 3, 42, '2016-09-30', 15),
(774, 4, 1, '2016-09-30', 13),
(775, 2, 2, '2016-10-03', 12),
(776, 2, 30, '2016-10-03', 9),
(777, 7, 22, '2016-10-03', 15),
(778, 4, 31, '2016-10-03', 9),
(779, 2, 12, '2016-10-03', 5),
(780, 2, 9, '2016-10-03', 9),
(781, 4, 4, '2016-10-04', 6),
(782, 5, 27, '2016-10-04', 9),
(783, 6, 32, '2016-10-05', 2),
(784, 3, 15, '2016-10-05', 14),
(785, 2, 36, '2016-10-05', 8),
(786, 5, 6, '2016-10-05', 10),
(787, 1, 40, '2016-10-06', 13),
(788, 5, 30, '2016-10-06', 11),
(789, 4, 39, '2016-10-06', 2),
(790, 2, 2, '2016-10-06', 4),
(791, 3, 5, '2016-10-06', 7),
(792, 3, 4, '2016-10-06', 6),
(793, 7, 41, '2016-10-07', 16),
(794, 3, 8, '2016-10-07', 12),
(795, 5, 35, '2016-10-07', 2),
(796, 4, 32, '2016-10-07', 4),
(797, 4, 36, '2016-10-07', 14),
(798, 3, 29, '2016-10-07', 9),
(799, 4, 18, '2016-10-10', 7),
(800, 3, 34, '2016-10-10', 16),
(801, 7, 17, '2016-10-11', 10),
(802, 4, 4, '2016-10-11', 2),
(803, 6, 12, '2016-10-11', 7),
(804, 5, 14, '2016-10-11', 8),
(805, 5, 24, '2016-10-12', 10),
(806, 4, 19, '2016-10-12', 3),
(807, 6, 10, '2016-10-13', 2),
(808, 4, 12, '2016-10-13', 14),
(809, 5, 4, '2016-10-14', 4),
(810, 2, 8, '2016-10-14', 9),
(811, 2, 14, '2016-10-14', 9),
(812, 2, 31, '2016-10-14', 2),
(813, 6, 36, '2016-10-17', 8),
(814, 6, 23, '2016-10-17', 12),
(815, 3, 13, '2016-10-17', 12),
(816, 5, 17, '2016-10-17', 7),
(817, 2, 7, '2016-10-17', 7),
(818, 3, 1, '2016-10-17', 11),
(819, 6, 35, '2016-10-17', 12),
(820, 6, 15, '2016-10-17', 5),
(821, 5, 2, '2016-10-17', 16),
(822, 6, 15, '2016-10-17', 8),
(823, 6, 24, '2016-10-18', 11),
(824, 3, 3, '2016-10-18', 13),
(825, 4, 7, '2016-10-18', 2),
(826, 2, 20, '2016-10-18', 15),
(827, 3, 36, '2016-10-19', 8),
(828, 2, 1, '2016-10-19', 14),
(829, 7, 28, '2016-10-19', 14),
(830, 4, 12, '2016-10-19', 10),
(831, 6, 22, '2016-10-20', 10),
(832, 2, 26, '2016-10-20', 13),
(833, 2, 41, '2016-10-20', 15),
(834, 3, 15, '2016-10-20', 9),
(835, 3, 28, '2016-10-21', 6),
(836, 3, 42, '2016-10-21', 10),
(837, 7, 39, '2016-10-21', 8),
(838, 5, 24, '2016-10-21', 9),
(839, 6, 37, '2016-10-24', 5),
(840, 2, 43, '2016-10-24', 14),
(841, 5, 27, '2016-10-24', 12),
(842, 7, 13, '2016-10-24', 6),
(843, 4, 14, '2016-10-24', 14),
(844, 3, 18, '2016-10-24', 11),
(845, 4, 17, '2016-10-24', 6),
(846, 7, 5, '2016-10-24', 4),
(847, 6, 35, '2016-10-24', 15),
(848, 2, 29, '2016-10-24', 6),
(849, 3, 39, '2016-10-26', 7),
(850, 6, 30, '2016-10-26', 7),
(851, 2, 38, '2016-10-26', 15),
(852, 3, 21, '2016-10-26', 14),
(853, 3, 10, '2016-10-26', 5),
(854, 6, 2, '2016-10-26', 7),
(855, 6, 35, '2016-10-27', 6),
(856, 2, 14, '2016-10-27', 3),
(857, 6, 27, '2016-10-28', 12),
(858, 5, 31, '2016-10-28', 9),
(859, 2, 8, '2016-10-28', 3),
(860, 5, 15, '2016-10-28', 10),
(861, 5, 27, '2016-10-31', 2),
(862, 2, 28, '2016-10-31', 6),
(863, 5, 7, '2016-10-31', 16),
(864, 6, 35, '2016-10-31', 9),
(865, 1, 29, '2016-10-31', 7),
(866, 6, 13, '2016-10-31', 14),
(867, 6, 1, '2016-11-01', 9),
(868, 4, 16, '2016-11-01', 5),
(869, 7, 7, '2016-11-02', 12),
(870, 4, 33, '2016-11-02', 2),
(871, 2, 2, '2016-11-02', 3),
(872, 5, 9, '2016-11-02', 16),
(873, 4, 33, '2016-11-02', 15),
(874, 2, 33, '2016-11-02', 5),
(875, 2, 34, '2016-11-02', 8),
(876, 3, 17, '2016-11-02', 2),
(877, 1, 19, '2016-11-03', 5),
(878, 3, 27, '2016-11-03', 1),
(879, 3, 18, '2016-11-03', 2),
(880, 5, 19, '2016-11-03', 8),
(881, 7, 15, '2016-11-04', 9),
(882, 2, 36, '2016-11-04', 3),
(883, 5, 3, '2016-11-07', 15),
(884, 6, 23, '2016-11-07', 3),
(885, 2, 39, '2016-11-07', 10),
(886, 3, 43, '2016-11-07', 10),
(887, 6, 26, '2016-11-09', 14),
(888, 4, 43, '2016-11-09', 8),
(889, 4, 9, '2016-11-09', 13),
(890, 6, 22, '2016-11-09', 9),
(891, 6, 13, '2016-11-09', 15),
(892, 2, 13, '2016-11-09', 8),
(893, 4, 2, '2016-11-10', 9),
(894, 2, 29, '2016-11-10', 15),
(895, 2, 40, '2016-11-11', 13),
(896, 2, 15, '2016-11-11', 14),
(897, 1, 33, '2016-11-11', 3),
(898, 2, 3, '2016-11-11', 5),
(899, 4, 3, '2016-11-11', 16),
(900, 6, 7, '2016-11-11', 11),
(901, 7, 37, '2016-11-14', 10),
(902, 4, 19, '2016-11-14', 14),
(903, 3, 20, '2016-11-14', 6),
(904, 5, 10, '2016-11-14', 4),
(905, 2, 26, '2016-11-14', 15),
(906, 3, 35, '2016-11-14', 6),
(907, 3, 20, '2016-11-14', 15),
(908, 3, 37, '2016-11-14', 1),
(909, 2, 18, '2016-11-15', 8),
(910, 5, 9, '2016-11-15', 6),
(911, 2, 2, '2016-11-15', 12),
(912, 2, 29, '2016-11-15', 7),
(913, 1, 36, '2016-11-15', 4),
(914, 7, 38, '2016-11-15', 13),
(915, 1, 28, '2016-11-16', 5),
(916, 5, 3, '2016-11-16', 14),
(917, 1, 44, '2016-11-16', 12),
(918, 4, 38, '2016-11-16', 5),
(919, 5, 40, '2016-11-17', 8),
(920, 6, 5, '2016-11-17', 4),
(921, 6, 27, '2016-11-18', 6),
(922, 5, 23, '2016-11-18', 11),
(923, 2, 5, '2016-11-18', 1),
(924, 3, 19, '2016-11-18', 11),
(925, 5, 5, '2016-11-18', 8),
(926, 1, 7, '2016-11-18', 2),
(927, 5, 14, '2016-11-21', 6),
(928, 1, 38, '2016-11-21', 5),
(929, 5, 41, '2016-11-21', 13),
(930, 7, 19, '2016-11-21', 6),
(931, 3, 24, '2016-11-21', 4),
(932, 1, 7, '2016-11-21', 13),
(933, 5, 18, '2016-11-21', 3),
(934, 7, 26, '2016-11-21', 11),
(935, 1, 28, '2016-11-22', 2),
(936, 1, 19, '2016-11-22', 13),
(937, 3, 5, '2016-11-22', 8),
(938, 7, 25, '2016-11-22', 14),
(939, 4, 23, '2016-11-22', 14),
(940, 5, 11, '2016-11-22', 12),
(941, 3, 18, '2016-11-23', 8),
(942, 1, 29, '2016-11-23', 5),
(943, 4, 3, '2016-11-23', 14),
(944, 2, 9, '2016-11-23', 5),
(945, 4, 14, '2016-11-24', 10),
(946, 6, 7, '2016-11-24', 4),
(947, 1, 25, '2016-11-24', 12),
(948, 7, 4, '2016-11-24', 4),
(949, 4, 27, '2016-11-28', 10),
(950, 7, 13, '2016-11-28', 13),
(951, 4, 32, '2016-11-28', 13),
(952, 5, 30, '2016-11-28', 9),
(953, 4, 7, '2016-11-28', 11),
(954, 7, 32, '2016-11-28', 13),
(955, 4, 11, '2016-11-29', 2),
(956, 6, 37, '2016-11-29', 4),
(957, 6, 21, '2016-11-29', 8),
(958, 3, 35, '2016-11-29', 13),
(959, 6, 35, '2016-11-30', 15),
(960, 3, 4, '2016-11-30', 15),
(961, 1, 39, '2016-11-30', 12),
(962, 1, 12, '2016-11-30', 8),
(963, 4, 8, '2016-12-01', 11),
(964, 7, 4, '2016-12-01', 10),
(965, 6, 9, '2016-12-02', 14),
(966, 3, 32, '2016-12-02', 6),
(967, 2, 40, '2016-12-05', 2),
(968, 5, 24, '2016-12-05', 15),
(969, 2, 43, '2016-12-05', 4),
(970, 5, 9, '2016-12-05', 9),
(971, 7, 2, '2016-12-05', 7),
(972, 6, 17, '2016-12-05', 5),
(973, 3, 10, '2016-12-05', 9),
(974, 7, 27, '2016-12-05', 6),
(975, 4, 21, '2016-12-06', 7),
(976, 7, 30, '2016-12-06', 2),
(977, 1, 43, '2016-12-07', 10),
(978, 4, 41, '2016-12-07', 15),
(979, 7, 12, '2016-12-08', 10),
(980, 1, 15, '2016-12-08', 4),
(981, 6, 12, '2016-12-08', 12),
(982, 4, 8, '2016-12-08', 2),
(983, 1, 13, '2016-12-08', 12),
(984, 2, 26, '2016-12-08', 2),
(985, 7, 2, '2016-12-09', 12),
(986, 2, 7, '2016-12-09', 11),
(987, 5, 36, '2016-12-12', 5),
(988, 6, 21, '2016-12-12', 10),
(989, 5, 41, '2016-12-12', 14),
(990, 3, 43, '2016-12-12', 3),
(991, 1, 27, '2016-12-12', 16),
(992, 6, 7, '2016-12-12', 5),
(993, 5, 4, '2016-12-12', 9),
(994, 2, 40, '2016-12-12', 4),
(995, 7, 10, '2016-12-13', 6),
(996, 1, 38, '2016-12-13', 15),
(997, 5, 32, '2016-12-13', 7),
(998, 5, 30, '2016-12-13', 3),
(999, 4, 30, '2016-12-13', 12),
(1000, 3, 22, '2016-12-13', 14),
(1001, 5, 36, '2016-12-15', 11),
(1002, 6, 37, '2016-12-15', 11),
(1003, 6, 22, '2016-12-15', 12),
(1004, 1, 2, '2016-12-15', 7),
(1005, 5, 5, '2016-12-15', 7),
(1006, 5, 21, '2016-12-15', 3),
(1007, 3, 13, '2016-12-15', 8),
(1008, 3, 7, '2016-12-15', 14),
(1009, 3, 4, '2016-12-19', 12),
(1010, 5, 35, '2016-12-19', 8),
(1011, 1, 30, '2016-12-19', 12),
(1012, 6, 20, '2016-12-19', 8),
(1013, 6, 26, '2016-12-19', 15),
(1014, 2, 43, '2016-12-19', 2),
(1015, 6, 42, '2016-12-19', 16),
(1016, 2, 32, '2016-12-19', 12),
(1017, 4, 40, '2016-12-20', 4),
(1018, 2, 34, '2016-12-20', 7),
(1019, 2, 32, '2016-12-21', 8),
(1020, 1, 40, '2016-12-21', 4),
(1021, 3, 40, '2016-12-21', 1),
(1022, 2, 26, '2016-12-21', 8),
(1023, 3, 15, '2016-12-21', 12),
(1024, 2, 30, '2016-12-21', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `partnerek`
--

CREATE TABLE `partnerek` (
  `id` int(11) NOT NULL,
  `kontakt` varchar(20) NOT NULL,
  `telepules` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `partnerek`
--

INSERT INTO `partnerek` (`id`, `kontakt`, `telepules`) VALUES
(1, 'Oláh Róbert', 'Gyöngyös'),
(2, 'Pásztor Renátó', 'Balatonfüred'),
(3, 'Somogyi Beáta', 'Szeged'),
(4, 'Kovács Anikó', 'Veszprém'),
(5, 'Deák Dorina', 'Pásztó'),
(6, 'Gulyás Erika', 'Szekszárd'),
(7, 'Vincze Terézia', 'Sirok'),
(8, 'Török Gerg?', 'Tata'),
(9, 'Gulyás Erika', 'Eger'),
(10, 'Pataki Roland', 'Esztergom'),
(11, 'Farkas Kornél', 'Eger'),
(12, 'Kerekes Klaudia', 'Budapest'),
(13, 'Molnár Gizella', 'Pápa'),
(14, 'Sándor Gerg?', 'Tihany'),
(15, 'Németh Evelin', 'Eger'),
(16, 'Vincze Ferenc', 'Nagykanizsa'),
(17, 'Balog Lilla', 'Eger'),
(18, 'Balogh Ildikó', 'Székesfehérvár'),
(19, 'Szekeres Barnabás', 'Gyula'),
(20, 'Horváth Brigitta', 'Eger'),
(21, 'Király Zoltán', 'Eger'),
(22, 'Gáspár Brigitta', 'Soporon'),
(23, 'Tóth Tünde', 'Sárospatak'),
(24, 'Varga Brigitta', 'Szilvásvárad'),
(25, 'Lengyel Gerg?', 'Pécs'),
(26, 'Pál Pál', 'Békéscsaba'),
(27, 'Varga György', 'Vác'),
(28, 'Pásztor Vilmos', 'Jászberény'),
(29, 'Fazekas Richárd', 'Hódmez?vásárhely'),
(30, 'Sipos Lóránt', 'Budapest'),
(31, 'Pintér Csilla', 'Ózd'),
(32, 'Végh Piroska', 'Gy?r'),
(33, 'Deák Szabolcs', 'Debrecen'),
(34, 'Mészáros Anikó', 'Miskolc'),
(35, 'Szilágyi Edit', 'Szolnok'),
(36, 'Antal Mariann', 'Kecskemét'),
(37, 'Veres Dorina', 'Hatvan'),
(38, 'Szalai Viktória', 'Nyíregyháza'),
(39, 'Heged?s Richárd', 'Eger'),
(40, 'Puskás Klaudia', 'Kaposvár'),
(41, 'Végh Róza', 'Hollók?'),
(42, 'Faragó Martin', 'Egerszalók'),
(43, 'Barna Erika', 'Szombathely'),
(44, 'Oláh Brigitta', 'Siófok');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gyumolcslevek`
--
ALTER TABLE `gyumolcslevek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kiszallitasok`
--
ALTER TABLE `kiszallitasok`
  ADD PRIMARY KEY (`sorsz`),
  ADD KEY `fk_gyumleszall` (`gyumleid`),
  ADD KEY `fk_partnerszall` (`partnerid`);

--
-- A tábla indexei `partnerek`
--
ALTER TABLE `partnerek`
  ADD PRIMARY KEY (`id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kiszallitasok`
--
ALTER TABLE `kiszallitasok`
  ADD CONSTRAINT `fk_gyumleszall` FOREIGN KEY (`gyumleid`) REFERENCES `gyumolcslevek` (`id`),
  ADD CONSTRAINT `fk_partnerszall` FOREIGN KEY (`partnerid`) REFERENCES `partnerek` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
