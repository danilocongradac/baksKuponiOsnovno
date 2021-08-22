/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `kuponi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kuponi`;

CREATE TABLE IF NOT EXISTS `kuponi` (
  `id` int unsigned NOT NULL,
  `iskoriscen` bit(1) NOT NULL DEFAULT b'0',
  `crven` bit(1) NOT NULL DEFAULT b'0',
  `naslov` varchar(100) DEFAULT NULL,
  `kratak_opis` varchar(100) DEFAULT NULL,
  `dug_opis` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `broj_koriscenja_tekst` varchar(50) DEFAULT NULL,
  `broj_koriscenja` int unsigned NOT NULL DEFAULT '0',
  `broj_koriscenja_maks` int unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40000 ALTER TABLE `kuponi` DISABLE KEYS */;
INSERT INTO `kuponi` (`id`, `iskoriscen`, `crven`, `naslov`, `kratak_opis`, `dug_opis`, `broj_koriscenja_tekst`, `broj_koriscenja`, `broj_koriscenja_maks`) VALUES
	(1, b'0', b'0', 'Filmsko Vece', 'Sta se gleda?', 'Ti biras film, vreme, mesto, drustvo....', 'Jedna upotreba, pazljivo biraj!', 0, 1),
	(2, b'0', b'0', 'Vecera', 'Ja Castim!', 'Biraj restoran, ja castim!', 'Jedna upotreba :)', 0, 1),
	(3, b'0', b'0', 'Game Night', 'Ti donosis igre, jer ja ih nemam.', 'Nije kao da cu svakako pristati na bilo koju vrstu igre bilo kada..., ali sada i da necu moram', 'Na ovo totalno ne bih pristao bez kupona.', 0, 1),
	(4, b'0', b'0', 'Cuvam Tajnu', 'Ako i ne znam da cuvam tajne, sada cu morati da naucim.', 'Sta god da mi kazes, iz bilo kog razloga, jendostavno ne smem nikome da kazem, iskoristila si kupon :)', 'Samo jednu', 0, 1),
	(5, b'0', b'0', 'Rani poklon', 'Daleko je sledeci rodjendan', 'Nedostaju ti pokloni genijalni kao ovaj? Paaaa mozes da dobijes jedan ako iskoristis ovaj kupon...', 'Jedan poklon ti je dosta', 0, 1),
	(6, b'0', b'0', 'Iskreno misljenje', 'Hoces moje iskreno misljenje?', 'Dobices moje najiskrenije misljenje o cemu god da je rec... obecavam *stavi ruku na bibliju*', 'Ne pitam se bas puno....', 0, 1),
	(7, b'0', b'0', 'Deep talk', 'Ne ocekuj previse', 'Biraj temu, spreman sam na sve.... Nisam ni blizu jovanovom nivou, ali mogu da pomognem!', 'Jednom i vise nego dosta', 0, 1),
	(8, b'0', b'0', 'Iskreni Odgovori', 'Da mnozina je....', 'ovo ce biti zabavno, pitaj me, ja moram da ti odgovorim iskreno.... na moju zalost imas 3 pitanja da postavis, ne moras sva 3 u isto vreme :)', 'Na moju zalost 3 pitanja imas', 0, 3),
	(9, b'0', b'0', 'Vikend putovanje', '* ne puste te tvoji *', 'Buiraj destinaciju, ja vodim.... roadtrip soon soon!!!', 'Dosta je jedan vikend da te gledam', 0, 1),
	(10, b'0', b'0', 'Jedna usluga', 'Biraj sta hoces', 'Nadam se da necu docekati da iskoristis ovaj kupon... i necu ni da zamisljam sta bi usluga bila.', 'Ne pitaj za vise od jedne!', 0, 1),
	(11, b'0', b'0', 'Oprastam', 'Ako se ikad posvadjamo, dobro ce ti doci ovaj', 'E pa, nadam se da ovaj kupon nece biti iskoricen... Uglavnom ako se posvadjamo, i ako bas zelis da se pomiris samnom.... slobodno iskoristi ovaj kupon', '* ne upotrebi ga *', 0, 1),
	(12, b'0', b'0', 'Izlazak', 'Ovaj ce mi tesko pasti', 'Kao sto ste me prosli put namolili da odem na zurku (iz koje mislim da nije moglo vise problema da nastane), tako ovim kuponom mozes da me izvuces na jos jednu....', 'Samo jednom, zao mi je :(', 0, 1),
	(13, b'0', b'0', 'Necu da pricam o ovom!', 'Biraj teme, necu ih spomenuti vise', 'Znam da te inace nerviram, pa ajde malo da ti olaksam zivot... biraj 3 teme koje vise necu spominjati', '3 stvari', 0, 3),
	(14, b'0', b'0', 'Ponovno Koriscenje', 'Ponovo koristi neki kupon!', 'Smes da \'vratis u zivot\' jedan od iskoriscenih kupona! Ovo me je skupo kostalo...', 'Pametno biraj!', 0, 1),
	(15, b'0', b'0', '4', 'Sama popunjavas', 'Ovaj, kao i naradna 3 kupona smes da popunis sa cime god hoces...', 'Jos 3 ovakva imas', 0, 1),
	(16, b'0', b'0', '4', 'Nemoj samo da preteras', 'Sto bi mira rekla Joker, biraj sta god hoces...', '* nema komentara *', 0, 1),
	(17, b'0', b'0', '4', 'Previse slobode sam ti dao', 'Nemoj jako da budes zahtevna, ili budi... ', 'isti kao i prosli :,)', 0, 1),
	(18, b'0', b'0', '4', 'Znam koji broj volis!', 'Ovo je poslednji kupon koji mozes da popunjavas kako ti se cefne, tako da nesto pametno stavi!\r\n			</h3>', 'Ovo ti je poslednji', 0, 1),
	(19, b'0', b'0', 'Zagrljaj', 'Znam da ih volis', 'Znam koliko ih volis, tako da ovo je savrseno za tebe. A kako stati sreci na put, nisam mogao da ogranicim sa brojem koriscenja, tako da slobodno koristi ih koliko god hoces!', 'Evo necu staviti granicu', 0, 10000000),
	(21, b'0', b'1', 'Istina / Izazov', 'Nema lazi nema prevare!', 'Jedna brza igra istine izazov. Da ne bude posle neko nekog gurno, moras i ti da radis / odgovoris na moja pitanja / izazove :). </br> Neka jaci pobedi !', 'Samo jedno koriscenje', 0, 1),
	(22, b'0', b'1', '24h ne prigovaram', 'Ovo ti je jedno od boljih sto ces dobiti.', 'Uh.... kako ovo da kazem a da ne boli bas jako... znam koliko volis kada ti prigovaram, paaa ovo ti daje na pravo da 24 sata precutavam sve sto bih rekao :(<br>', '1 vise no sto ce ti trebati', 0, 1),
	(23, b'0', b'1', 'Fantazija ???', 'ajde, ajde znam da imas nesto', 'Znam da nisam deda mraz, aliiii sto bi se reklo sve zelje ispunjavam :,)\r\n				Rekao bih pazljivo biraj na sta ces iskoristi ovaj, ali mislim da kada bi birala ne bi ga ni iskoristila tako da, go off !', 'zao mi je samo jedna upotreba', 0, 1),
	(24, b'0', b'1', 'Dominantna, ili ne bas?', 'Laze a ni ne trepne....', 'Biraj sta ces biti, ja cu ovo drugo (ako bas moram).... samo se seti tvog grafika(iz brao grupe), agresivna nije isto sto i dominantna... srecnooo!!', 'jednom i vise nego dovoljno', 0, 1),
	(25, b'0', b'1', 'Masaza, upitnik!', 'upitnik upitnik upitnik', 'Znam da si rekla da ne volis... ali sta da radim brzo ostajem bez ideja :(', 'jedna vise nego zasluzena', 0, 1),
	(26, b'0', b'1', 'Pomoc stvari', 'biraj neku stvar, iskoristicemo je nekako', 'moze se zavrsiti izuzetno dobro ili izuzetnoooo lose, tako da dobro razmisli sta ce ti biti izbor.', 'jednom samo :)', 0, 1),
	(27, b'0', b'1', 'boostojemo skor', 'ako se pitas gde.....', 'Kao sto sam krenuo na samom kuponu, ako se pitas na cemu cemo da boostujemo skor, pa na jedinom tesku koji nesto vazi - <a>theinnocencetest.com</a>', 'videcemo koliko puta....', 0, 3),
	(28, b'1', b'1', 'Malo odmora :(', 'da se odmoris kao covek', 'ne radujem se bas nesto jako ovom kuponu, ali i ja bih ga koristio da moram da se trpim.... tako da upotrebi ga sa zadovoljstvom :)', 'nadam se ni jednom', 1, 1),
	(29, b'0', b'1', 'Noc zajedno', 'sto bi se reklo.... ne znam ni sam', 'hmmmm... paaa.... go off', '1. 2. 3. ...', 0, 3),
	(30, b'0', b'1', 'Ponovo koristi', 'Ajde ako ti se neki bas svideo...', 'Ako ti se neki kupon bas jako svideo, evo ti sansa za jos jedno koriscenje.... nema pravila za ovaj kupon :)', 'jednom, jednom', 0, 1),
	(31, b'0', b'1', 'Menjamo kupone', 'Moja kreativnost na izmaku', 'Kako totalno ne znam sta vise da napisem kod ovih kupona, i da li je previse rano za neke, ovaj kupon MOLIM TE iskoristi, ali moras da budes spremna da kazes nesto, a ne samo ja da pricam :,,,)', 'koliko ti je volja', 0, 1000000),
	(32, b'0', b'1', 'Kazemo ostalima', 'NEMA VISE SMISLA', 'Gledam ovaj kupon evo 20.7.2021.... koliko smo daleko dogurali, za ovaj kupon cemo da se dogovorimo da li da menjamo ili ostavimo :,)', 'endeee', 0, 1),
	(33, b'0', b'1', 'Game night', 'samo nas dvoje molim te...', 'Biraj drustvenu igru ZA NAS DVOJE (nadam se...), pristajem na sve!', 'jednom ili vise puta<3', 0, 3),
	(34, b'0', b'1', 'Kolo srece', 'uhuuuuu uhhhhuuuu', 'Ako odaberes ovaj kupon, vrtimo kolo srece(da imam i za to program), sta ispadne to ti je... o tome sta je na kolu srece mozemo da diskutujemo....<br>totalno na svoju odgovornost, i to ces negde da potpises ;)', 'koliko ti je volja', 0, 3),
	(35, b'0', b'1', '4', 'Sama Popunjavas!!', 'Molim te dobro razmislis.... <3', 'Jos 3 ovakva imas', 0, 1),
	(36, b'0', b'1', '4', 'Nemoj samo da preteras', 'part 2.....	', '* nema komentara *', 0, 1),
	(37, b'0', b'1', '4', 'Previse slobde sam ti dao', '				idemooooo !!!\r\n', 'isto kao i prosli', 0, 1),
	(38, b'0', b'1', '4', 'Znam koji broj volis!', 'Sve ostale si ispucala, ovaj ti je poslednji :(\r\n				<br>\r\n				mozda ti vratim neki :)))', 'Ipak samo jedno koriscenje', 0, 1),
	(39, b'0', b'1', 'Kisses and Hugs', ':,,,,,)', 'da ih bude kada se uzelis', 'nema granice', 0, 100000);
/*!40000 ALTER TABLE `kuponi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
