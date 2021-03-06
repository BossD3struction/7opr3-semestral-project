-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `pk_genre_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_czech_ci NOT NULL,
  PRIMARY KEY (`pk_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Horror'),(4,'Drama'),(5,'Romance'),(6,'Thriller'),(7,'Comedy'),(8,'Mystery'),(15,'Sci-Fi'),(18,'Fantasy');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `pk_movie_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_czech_ci NOT NULL,
  `year` int NOT NULL,
  `running_time` int NOT NULL,
  `banner_link` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `about` text COLLATE utf8mb4_czech_ci,
  PRIMARY KEY (`pk_movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (9,'Dune',2021,155,'http://localhost:8080/images/dune.jpg','Kultovn?? sci-fi d??lo vypr??v?? o mocensk??ch boj??ch uvnit?? galaktick??ho Imp??ria, v nich?? jde o ovl??dnut?? planety Arrakis: zdroje vz??cn??ho ko??en?? - melan??e, je?? poskytuje zvl????tn?? psychick?? schopnosti, kter?? umo????uj?? cestov??n?? vesm??rem. Padi????h imper??tor sv?????? spr??vu nad Arrakisem a s n?? i komplikovanou t????bu neoby??ejn?? l??tky v??vodovi rodu Atreid??. Cel?? anab??ze je ale sou????st?? spiknut??, z n??ho?? se poda???? vyv??znout jen v??vodovu synovi Paulovi a jeho matce, kte???? uprchnou do pou??t??. Jejich jedinou nad??j?? jsou ned??v????iv?? domorod?? obyvatel?? fremeni, schopn?? trvale p??e????t ve vyprahl?? pustin??. Mohl by Paul Atreides b??t spasitelem, na kter??ho tak dlouho ??ekaj???'),(10,'Venom',2018,112,'http://localhost:8080/images/venom.jpg','Na filmov?? pl??tna p??ich??z?? jedna z nejlep????ch a nejkomplexn??j????ch comicsov??ch postav spole??nosti Marvel. Novin???? Eddie Brock (Tom Hardy) se st??v?? hostitelem mimozemsk??ho symbionta Venoma. Brock se v r??mci sv?? pr??ce novin????e pokou???? ji?? po cel?? roky odhalit ve??ejnosti skute??nou tv???? zn??m??ho v??dce spole??nosti Life Foundation Carltona Drakea (Riz Ahmed) ??? jeho odhodl??n?? se p??erodilo v posedlost, kter?? mu zlikvidovala kari??ru a zni??ila vztah s jeho p????telkyn?? Anne (Michelle Williams). Kdy?? do sv??ho t??la Eddie vst??eb?? jeden z Drakeov??ch experiment?? ??? mimozem????ana Venoma ??? zni??ehonic zji????uje, ??e disponuje nov??mi superschopnostmi a m?? mo??nost d??lat, cokoliv se mu zachce. Zvrhl??, temn??, nep??edv??dateln?? a zu??iv?? Venom m?? za n??sledek, ??e se Eddie zoufale pokou???? udr??et pod kontrolou sv?? nebezpe??n?? schopnosti, kter?? ho sou??asn?? velice p??itahuj?? a op??jej??. Jeliko?? Eddie a Venom navz??jem jeden druh??ho pot??ebuj?? k dosa??en?? sv??ch c??l??, jejich vz??jemn?? pouto a propojen?? se prohlubuje ??? a?? p??est??v?? b??t jasn??, kde vlastn?? kon???? Eddie a za????n?? Venom.'),(11,'Star Wars: Epizoda III - Pomsta Sith??',2005,140,'http://localhost:8080/images/star_wars_3.png','V??lka mezi povstalci a Republikou pokra??uje. Gener??lovi Grievousovi se poda??ilo un??st kancl????e Palpatinea a ryt????i Jedi, Obi-wan Kenobi a Anakin Skywalker se vyd??vaj?? na palubu Grievousovy lodi kancl????e osvobodit. Pot??, co vniknou na lo??, naraz?? na hrab??te Dooku. Dojde mezi nimi k souboji, ve kter??m Anakin Dookua poraz??, a chyst?? se ho zajmout. Je??t?? sv??zan?? Palpatine v??ak Anakina p??emluv??, aby Dookua na m??st?? zabil. Je to n??co, co by spr??vn?? Jedi nem??l nikdy ud??lat. Anakin v??ak p??emlouv??n?? podlehne. I kdy?? ryt????i Jedi Palpatina zachr??nili, jsou vz??p??t?? znovu zajati voj??ky gener??la Grievouse. Ten ale ryt????e Jedi podcenil, a tak se situace brzy obr??t?? a je to pr??v?? gener??l, kdo z lodi, kterou op??t ovl??dli Jediov??, mus?? prchnout v z??chrann??m modulu. Anakin rozpadaj??c?? se Grievousovu lo?? p??ivede bezpe??n?? na leti??t?? a r??zem se stane hrdinou a t??m, kdo zachr??nil kancl????e. Kancl???? zahrnuje Anakina sv??m p????telstv??m a ostatn?? Jediov?? c??t??, ??e n??co nen?? v po????dku. Anakina pron??sleduj?? zl?? sny, v nich se mu zd??, jak jeho milovan?? Padm?? (Amidala) um??r?? p??i porodu jejich d??t??. Anakin se se sv??mi obavami obr??t?? na Yodu se ????dost?? o pomoc. Yodovy rady mu v??ak nepomohou a je??t?? v??ce pos??l?? Anakinovy pochybnosti ohledn?? chov??n?? Jedi??, kte???? po n??m cht??j??, aby jim don????el informace o chov??n?? kancl????e. Dal????m ??okem pro Anakina je zji??t??n??, ??e i Padm?? pochybuje o sou??asn??m fungov??n?? Republiky.'),(12,'P??n prsten??: Spole??enstvo Prstenu',2001,172,'http://localhost:8080/images/lotr_1.png','V d??vn??ch dob??ch byl vykov??n kouzeln?? prsten, kter?? vlastnil p??n Mordoru Sauron. Jeho moc za??al vyu????vat k ??????en?? zla, ale o prsten nakonec v boji p??i??el, a ten na dlouh?? l??ta zmizel. Nakonec ho na??el hobit Bilbo Pytl??k, kter?? d??ky n??mu p??estal st??rnout. Na nal??havou ????dost ??arod??je Gandalfa p??ed?? prsten synovci Frodovi. Ten se sv??mi kamar??dy Samem, Sm????kem a Pipinem odch??zej?? do H??rky a Gandalf se vyd??v?? pro radu za sv??m u??itelem, ??arod??jem Sarumanem. Ten se v??ak p??idal na stranu zla a zajme ho. S pomoc?? tajemn??ho hrani??????e, p??ezd??van??ho Chodec, Frodo a jeho kamar??di uniknou jen o vl??sek dev??ti ??ern??m jezdc??m, kte???? vyrazili z Temn?? v????e, aby prsten na??li a p??inesli sv??mu p??novi Sauronovi. Do Roklinky je svol??na velk?? porada lid?? a elf??, kter?? rozhodne, ??e prsten mus?? b??t zni??en. To je mo??n?? pouze tam, kde byl prsten zrozen, v ohni Hory osudu. Odv????n?? Frodo se nab??dne, ??e tam prsten odnese. Nebezpe???? je v??ak p????li?? velik??, a tak se mu, jako jeho ochr??nci, postav?? po bok ??arod??j Gandalf, trpasl??k Gimli, elf Legolas, bojovn??k Boromir, hobiti Sam, Sm????ek a Pipin a tak?? Chodec. Zrod?? se Spole??enstvo Prstenu, kter?? se vyd??v?? na nebezpe??nou cestu plnou n??strah a nebezpe????.'),(53,'The Matrix',1999,136,'http://localhost:8080/images/matrix_1.png','Za v????m hledej Matrix. Zd??l se v??m n??kdy sen, kter?? p??sobil naprosto skute??n??? Co kdybyste se nemohli probudit? Jak pozn??te rozd??l mezi sn??n??m a realitou? Kdy?? z??hadn?? kr??ska Trinity (Carrie-Anne Moss) zavede po????ta??ov??ho hackera jm??nem Neo (Keanu Reeves) do tajemn??ho paraleln??ho sv??ta, odhal?? mu ??okuj??c?? pravdu - sv??t je podvod, propracovan?? klam p??ekroucen?? v??emocn??mi stroji um??l?? inteligence, kter?? n??s ovl??d??. Neo se p??id??v?? k legend??rn??mu v??dci odboje Morfeovi (Laurence Fishburne) v bitv?? za zni??en?? iluze zotro??uj??c?? lidstvo. Ka??d?? pohyb, ka??d?? sekunda a ka??d?? my??lenka znamen?? boj o p??e??it?? - o ??nik z Matrixu.');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_has_genre`
--

DROP TABLE IF EXISTS `movie_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_has_genre` (
  `pk_fk_movie_id` bigint NOT NULL,
  `pk_fk_genre_id` bigint NOT NULL,
  PRIMARY KEY (`pk_fk_movie_id`,`pk_fk_genre_id`),
  KEY `FKsmtwrwca7l1jaul4p7e8nxp13` (`pk_fk_genre_id`),
  KEY `FK9h6d7q4xsyff2apgea8cvbmmq` (`pk_fk_movie_id`),
  CONSTRAINT `FK9h6d7q4xsyff2apgea8cvbmmq` FOREIGN KEY (`pk_fk_movie_id`) REFERENCES `movie` (`pk_movie_id`),
  CONSTRAINT `FKsmtwrwca7l1jaul4p7e8nxp13` FOREIGN KEY (`pk_fk_genre_id`) REFERENCES `genre` (`pk_genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_has_genre`
--

LOCK TABLES `movie_has_genre` WRITE;
/*!40000 ALTER TABLE `movie_has_genre` DISABLE KEYS */;
INSERT INTO `movie_has_genre` VALUES (9,1),(10,1),(11,1),(12,1),(53,1),(9,2),(11,2),(12,2),(9,4),(10,6),(9,15),(10,15),(11,15),(53,15),(11,18),(12,18);
/*!40000 ALTER TABLE `movie_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `pk_review_id` bigint NOT NULL AUTO_INCREMENT,
  `fk_user_id` bigint NOT NULL,
  `fk_movie_id` bigint NOT NULL,
  `text` text COLLATE utf8mb4_czech_ci NOT NULL,
  PRIMARY KEY (`pk_review_id`),
  KEY `FKo0tw35ysf0aojmaa17byiny43` (`fk_movie_id`),
  KEY `FKe6nrxx0ukffydwk2w4lj3xvaa` (`fk_user_id`),
  CONSTRAINT `FKe6nrxx0ukffydwk2w4lj3xvaa` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`pk_user_id`),
  CONSTRAINT `FKo0tw35ysf0aojmaa17byiny43` FOREIGN KEY (`fk_movie_id`) REFERENCES `movie` (`pk_movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (4,1,11,'docela dobry film'),(5,5,10,'this review is coming from postman'),(8,3,9,'It is ok, could be worse'),(9,2,9,'It is bad, could be better'),(13,9,12,'proste delo'),(14,1,9,'this review is coming from angular page'),(15,11,11,'dobry vecer, film je poggers'),(16,1,12,'nejlepsi movie EVER!!!!!!!'),(17,4,12,'nic tohle neporazi, 5/5 hvezdicek');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `pk_user_id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) COLLATE utf8mb4_czech_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_czech_ci NOT NULL,
  `password` varchar(130) COLLATE utf8mb4_czech_ci NOT NULL,
  `is_admin` bit(1) NOT NULL,
  PRIMARY KEY (`pk_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'GreenGoblin75','joe.doe@gmail.com','$2a$10$SGwfun/UssJEjSomGCDwNuGqdKJffgSZL1AqJ52byGxIITMW2fL9y',_binary ''),(2,'DocOc1258','peter.small@gmail.com','$2a$10$3t1N726EDSoKStaNYTjbVudx5QBKSTcjBJDQz2ojMwF0i5TJnz0ja',_binary '\0'),(3,'BigKarelPrague','karel@gmail.com','$2a$10$wjvss1/n2yHyGhDQQi0yT.NqkpnQeuerWAN1D8iHKZ4lxKe4NKRie',_binary '\0'),(4,'lucie48','lucie.small@seznam.cz','$2a$10$545ueqSnfxP5AEZpuNeynOveyrUSp.5P0W1PDdCR0xcxEJCE8cUjO',_binary ''),(5,'PostmanCreatedUser','HELLOTHERE@gmail.com','$2a$10$8sgg4Be6SYajYu/MIrXI7eCMhLGYqYo7cKknlJE3c3j6.GHu9UCIC',_binary ''),(9,'willYouRegisterMe','registerMe@gmail.com','$2a$10$DgugMaYYCv4RKTffizv24e/hJLcJU517Dn/wIfS32PqQLNmQCX5V.',_binary '\0'),(10,'blue485','david@hotmail.com','$2a$10$FCLZaahSGdX3KGttCIE4buIrvgDBFP1F6YZSv158mK6qOmLrNDrW2',_binary '\0'),(11,'newAccount85','nice@seznam.cz','$2a$10$2QxfoTGRVX59FNZRP7t/6u0PGiBcmC6TuMCwJ64seEQXLhtn1HUHm',_binary '\0'),(14,'bobbob','bobbob@gmail.com','$2a$10$VMOTZqq7T.PTXAYktquBy.BOQmWZAF9oYYE74ywjMEZLSFET1Zyaq',_binary '\0'),(15,'userAngular','angular@seznam.cz','$2a$10$iCbdc4gNTXMyfoCKfZukcOCM1.reQwrpKGwjbEeJchD8z/4qCZqwO',_binary '\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-02 20:27:35
