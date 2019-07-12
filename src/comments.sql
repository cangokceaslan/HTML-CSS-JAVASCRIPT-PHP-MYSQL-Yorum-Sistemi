-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 12 Tem 2019, 15:08:10
-- Sunucu sürümü: 5.6.34-log
-- PHP Sürümü: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `comments`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `comment` text COLLATE utf8_turkish_ci NOT NULL,
  `rating` varchar(1) COLLATE utf8_turkish_ci NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`, `rating`, `post_id`) VALUES
(1, 'canwebdesign', 'Canı asdofjasdıofj oasdf', '4', 1),
(2, 'canwebdesign', 'Canı asdofjasdıofj oasdf', '4', 1),
(3, 'canwebdesign', 'Canı asdofjasdıofj oasdf', '5', 1),
(4, 'canwebdesign', 'CanÄ± asdofjasdÄ±ofj oasdf', '4', 1),
(5, 'canwebdesign', 'CanÄ± asdofjasdÄ±ofj oasdf', '4', 1),
(6, 'canwebdesign', 'CanÄ± asdofjasdÄ±ofj oasdf', '4', 1),
(7, 'canwebdesign', 'CanÄ± asdofjasdÄ±ofj oasdf', '3', 1),
(8, 'cangokceaslan', 'CanÄ± asdofjasdÄ±ofj oasdfsapodf kaspdofk poasdf 2394328759823475982437598423', '5', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
