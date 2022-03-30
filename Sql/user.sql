-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2022. Már 30. 18:50
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `forum_app`
--

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
  `reg` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `is_logged_in` tinyint(4) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `rights` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `avatar_path`, `reg`, `last_login`, `is_logged_in`, `session_id`, `rights`) VALUES
(1, 'Adminisztrátor', 'admin@admin.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', NULL, '2022-03-30 18:49:09', NULL, NULL, NULL, 0),
(2, 'Teszt user1', 'teszt1@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', NULL, '2022-03-30 18:49:48', NULL, NULL, NULL, 1),
(3, 'Teszt user2', 'teszt2@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', NULL, '2022-03-30 18:50:05', NULL, NULL, NULL, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
