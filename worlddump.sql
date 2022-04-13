-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `continent`
--

DROP TABLE IF EXISTS `continent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `continent` (
  `continent_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `continent_name` varchar(50) DEFAULT NULL,
  `percent_landmass` decimal(3,1) DEFAULT NULL,
  `population_density` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`continent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continent`
--

LOCK TABLES `continent` WRITE;
/*!40000 ALTER TABLE `continent` DISABLE KEYS */;
INSERT INTO `continent` VALUES (1,'Asia',29.5,95.0),(2,'Africa',20.4,33.7),(3,'North America',16.5,22.1),(4,'South America',12.0,22.0),(5,'Antarctica',9.2,0.0),(6,'Europe',6.8,72.5),(7,'Australia',5.9,3.2);
/*!40000 ALTER TABLE `continent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nation`
--

DROP TABLE IF EXISTS `nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nation` (
  `nation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `common_name` varchar(50) DEFAULT NULL,
  `official_name` varchar(50) DEFAULT NULL,
  `flag_file` varchar(30) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL,
  `government` varchar(100) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`nation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation`
--

LOCK TABLES `nation` WRITE;
/*!40000 ALTER TABLE `nation` DISABLE KEYS */;
INSERT INTO `nation` VALUES
(1,'Australia','Commonwealth of Australia','australia.jpg','Canberra','Federal parliamentary constitutional monarchy',24030700,7692024,19,'In southern hemisphere, smallest continent.'),
(2,'France','French Republic','france.jpg','Paris','Unitary semi-presidential constitutional republic',66644000,643801,18,'Sovereign state in Western Europe with several overseas territories'),
(3,'Kazakhstan','Republic of Kazakhstan','kazakhstan.jpg','Astana','Unitary dominant-party presidential republic',17563300,2724900,10,'Country of Central Asia, with a minor part west of the Ural River and thus in Europe. It is a landlocked country.'),
(4,'India','Republic of India','india.jpg','New Delhi','Federal parliamentary republic',1276267000,3287263,12,'Second largest population'),
(5,'Brazil','Federative Republic of Brazil','brazil.jpg','Brasilia','Federal presidential constitutional republic',205338000,8515767,6,'In southern hemisphere, largest state in South america'),
(6,'Japan','Japan','japan.jpg','Tokyo','Federal parliamentary constitutional monarchy',126919000,377944,11,'Island nation'),
(7,'Kenya','Republic of Kenya',NULL,'Nairobi','Unitary presidential constitutional republic',45010000,581309,1,'Kenya has a warm and humid tropical climate on its Indian Ocean coastline. The climate is cooler in the savannah grasslands around the capital city, Nairobi, and especially closer to Mount Kenya, which has snow permanently on its peaks. Further inland, in the Nyanza region, there is a hot and dry climate which becomes humid around Lake Victoria, the largest tropical fresh-water lake in the world. This gives way to temperate and forested hilly areas in the neighboring western region. The north-eastern regions along the border with Somalia and Ethiopia are arid and semi-arid areas with near-desert landscapes. Kenya is known for its safaris, diverse climate and geography, and expansive wildlife reserves and national parks such as the East and West Tsavo National Park, the Maasai Mara, Lake Nakuru National Park, and Aberdares National Park. Kenya has several world heritage sites such as Lamu and numerous beaches, including in Diani, Bamburi and Kilifi, where international yachting competitions are held every year.'),
(8,'Angola','Republic of Angola','angola.jpg','Luanda','Unitary presidential republic',24383000,1246700,2,'Although its territory has been inhabited since the Paleolithic Era, modern Angola originates in Portuguese colonization, which began with, and was for centuries limited to, coastal settlements and trading posts established from the 16th century onwards. In the 19th century, European settlers slowly and hesitantly began to establish themselves in the interior. As a Portuguese colony, Angola did not encompass its present borders until the early 20th century, following resistance by groups such as the Cuamato, the Kwanyama and the Mbunda. Independence was achieved in 1975 after the protracted liberation war. That same year, Angola descended into an intense civil war that lasted until 2002. It has since become a relatively stable unitary presidential republic.'),
(9,'Algeria','Peoples Democratic Republic of Algeria','algeria.jpg','Algiers','Unitary semi-presidential peoples republic',40400000,2381741,3,'Ancient Algeria has known many empires and dynasties, including ancient Numidians, Phoenicians, Carthaginians, Romans, Vandals, Byzantines, Umayyads, Abbasids, Idrisid, Aghlabid, Rustamid, Fatimids, Zirid, Hammadids, Almoravids, Almohads, Ottomans and the French colonial empire. Berbers are generally considered to be the indigenous inhabitants of Algeria. Following the Arab conquest of North Africa, most indigenous inhabitants were Arabised; thus, although most Algerians are Berber in origin, most identify with Arab culture. En masse, Algerians are a mix of Berbers, Arabs, Turks, Syrians and Andalusians (people from southern Spain who migrated north after the reconquista).'),
(10,'Namibia','Republic of Namibia',NULL,'Windhoek','Unitary semi-presidential republic',2113077,825615,4,'The dry lands of Namibia were inhabited since early times by San, Damara, and Namaqua, and since about the 14th century AD by immigrating Bantu who came with the Bantu expansion. Most of the territory became a German Imperial protectorate in 1884 and remained a German colony until the end of World War I. In 1920, the League of Nations mandated the country to South Africa, which imposed its laws and, from 1948, its apartheid policy. The port of Walvis Bay and the offshore Penguin Islands had been annexed by the Cape Colony under the British crown by 1878 and had become an integral part of the new Union of South Africa at its creation in 1910.'),
(11,'Nigeria','Federal Republic of Nigeria',NULL,'Abuja','Federal presidential republic',182202000,923768,5,'Modern-day Nigeria has been the site of numerous kingdoms and tribal states over the millennia. The modern state originated from British colonial rule beginning in the 19th century, and the merging of the Southern Nigeria Protectorate and Northern Nigeria Protectorate in 1914. The British set up administrative and legal structures whilst practising indirect rule through traditional chiefdoms. Nigeria became a formally independent federation in 1960, and plunged into a civil war from 1967 to 1970. It has since alternated between democratically-elected civilian governments and military dictatorships, until it achieved a stable democracy in 1999, with its 2011 presidential elections being viewed as the first to be conducted reasonably freely and fairly.'),
(12,'Jamaica','Jamaica',NULL,'Kingston','Unitary parliamentary constitutional monarchy',2950210,10991,7,'Previously inhabited by the indigenous Arawak and Ta?â?¡no peoples, the island came under Spanish rule following the arrival of Christopher Columbus in 1494. Named Santiago, it remained a possession of Spain until 1655, when England (later Great Britain) conquered the island and renamed it Jamaica. Under British rule, Jamaica became a leading sugar exporter, with its plantation economy highly dependent on slaves imported from Africa, followed later by Chinese and Indian indentured labour. All slaves were fully emancipated in 1838, with independence from the United Kingdom achieved on 6 August 1962.'),
(13,'Mexico','United Mexican States',NULL,'Mexico City','Federal presidential constitutional republic',119530753,1972550,8,'Pre-Columbian Mexico was home to many advanced Mesoamerican civilizations, such as the Olmec, Toltec, Teotihuacan, Zapotec, Maya and Aztec before first contact with Europeans. In 1521, the Spanish Empire conquered and colonized the territory from its base in Mexico-Tenochtitlan, which was administered as the Viceroyalty of New Spain. Three centuries later, this territory became Mexico following recognition in 1821 after the colonys Mexican War of Independence. The tumultuous post-independence period was characterized by economic instability and many political changes. The Mexican American War (1846-48) led to the territorial cession of the extensive northern borderlands, one-third of its territory, to the United States. The Pastry War, the Franco-Mexican War, a civil war, two empires and a domestic dictatorship occurred through the 19th century. The dictatorship was overthrown in the Mexican Revolution of 1910, which culminated with the promulgation of the 1917 Constitution and the emergence of the countrys current political system.'),
(14,'China','Peoples Republic of China',NULL,'Beijing','Socialist one-party state',1376049000,9596961,11,'China, officially the Peoples Republic of China (PRC), is a sovereign state in East Asia. It is the worlds most populous country, with a population of over 1.38[15] billion. The PRC is a one-party state governed by the Communist Party, with its seat of government in the capital city of Beijing. It exercises jurisdiction over 22 provinces; five autonomous regions; four direct-controlled municipalities (Beijing, Tianjin, Shanghai and Chongqing); two mostly self-governing special administrative regions (Hong Kong and Macau); and claims sovereignty over Taiwan.\r\n\r\nCovering approximately 9.6 million square kilometers, China is the world\'s second-largest country by land area, and either the third or fourth-largest by total area, depending on the method of measurement. China\'s landscape is vast and diverse, ranging from forest steppes and the Gobi and Taklamakan deserts in the arid north to subtropical forests in the wetter south. The Himalaya, Karakoram, Pamir and Tian Shan mountain ranges separate China from South and Central Asia. The Yangtze and Yellow Rivers, the third- and sixth-longest in the world, run from the Tibetan Plateau to the densely populated eastern seaboard. Chinas coastline along the Pacific Ocean is 14,500 kilometres long, and is bounded by the Bohai, Yellow, East and South China Seas.'),
(15,'Malaysia','Malaysia',NULL,'Kuala Lumpur','Federal parliamentary democracy',30976000,330803,13,'Malaysia has its origins in the Malay kingdoms present in the area which, from the 18th century, became subject to the British Empire. The first British territories were known as the Straits Settlements, whose establishment was followed by the Malay kingdoms becoming British protectorates. The territories on Peninsular Malaysia were first unified as the Malayan Union in 1946. Malaya was restructured as the Federation of Malaya in 1948, and achieved independence on 31 August 1957. Malaya united with North Borneo, Sarawak, and Singapore on 16 September 1963. Less than two years later in 1965, Singapore was expelled from the federation.'),
(16,'Iceland','Republic of Iceland','iceland.jpg','Reykjavik','Unitary parliametary republic',329100,102755,16,'According to Landn?â?ímab?â??k, the settlement of Iceland began in the year 874 CE when the Norwegian chieftain Ing?â??lfr Arnarson became the first permanent settler on the island. In the following centuries, mainly Norwegians and to a smaller extent other Scandinavians settled Iceland, bringing with them thralls of Gaelic origin. From 1262 to 1814, Iceland was ruled by Norway and afterwards by Denmark. Until the 20th century, the country relied largely on fishing and agriculture. Iceland became independent in 1918 and a republic in 1944. Industrialisation of the fisheries and Marshall Plan aid following World War II brought prosperity and Iceland became one of the wealthiest and most developed nations in the world. In 1994, it became a part of the European Economic Area, which supported diversification into economic and financial services.'),
(17,'Iran','Islamic Republic of Iran',NULL,'Tehran','Islamic Republic',79115000,1648195,14,'Iran is home to one of the worlds oldest civilizations, beginning with the formation of the Proto-Elamite and Elamite kingdoms in 3200?óÔé¼ÔÇ£2800 BC. The Iranian Medes unified the area into the first of many empires in 625 BC, after which it became the dominant cultural and political power in the region. Iran reached the pinnacle of its power during the Achaemenid Empire founded by Cyrus the Great in 550 BC, which at its greatest extent comprised major portions of the ancient world, stretching from parts of the Balkans (Thrace-Macedonia, Bulgaria-Paeonia) and Eastern Europe proper in the west, to the Indus Valley in the east, making it the largest empire the world had yet seen. The empire collapsed in 330 BC following the conquests of Alexander the Great. The Parthian Empire emerged from the ashes and was succeeded by the Sassanid Dynasty in 224 AD, under which Iran again became one of the leading powers in the world, along with the Roman-Byzantine Empire, for a period of more than four centuries.'),
(18,'United States','United States of America',NULL,'Washington','Federal presidential constitutional republic',322369319,9857306,9,'Paleo-Indians migrated from Eurasia to what is now the U.S. mainland at least 15,000 years ago, with European colonization beginning in the 16th century. The United States emerged from 13 British colonies along the East Coast. Disputes between Great Britain and the colonies led to the American Revolution. On July 4, 1776, as the colonies were fighting Great Britain in the American Revolutionary War, delegates from the 13 colonies unanimously adopted the Declaration of Independence. The war ended in 1783 with recognition of the independence of the United States by the Kingdom of Great Britain, and was the first successful war of independence against a European colonial empire. The countrys constitution was adopted on September 17, 1787, and ratified by the states in 1788. The first ten amendments, collectively named the Bill of Rights, were ratified in 1791 and designed to guarantee many fundamental civil liberties.'),
(19,'Russia','Russian Federation',NULL,'Moscow','Federal semi-presidential constitutional republic',144192450,17098242,15,'Extending across the entirety of northern Asia and much of Eastern Europe, Russia spans eleven time zones and incorporates a wide range of environments and landforms. From northwest to southeast, Russia shares land borders with Norway, Finland, Estonia, Latvia, Lithuania and Poland (both with Kaliningrad Oblast), Belarus, Ukraine, Georgia, Azerbaijan, Kazakhstan, China, Mongolia, and North Korea. It shares maritime borders with Japan by the Sea of Okhotsk and the U.S. state of Alaska across the Bering Strait.\r\n\r\nThe nations history began with that of the East Slavs, who emerged as a recognizable group in Europe between the 3rd and 8th centuries AD. Founded and ruled by a Varangian warrior elite and their descendants, the medieval state of Rus arose in the 9th century. In 988 it adopted Orthodox Christianity from the Byzantine Empire, beginning the synthesis of Byzantine and Slavic cultures that defined Russian culture for the next millennium. Rus ultimately disintegrated into a number of smaller states; most of the Rus lands were overrun by the Mongol invasion and became tributaries of the nomadic Golden Horde in the 13th century.'),
(20,'Nepal','Federal Democratic Republic of Nepal',NULL,'Kathmandu','Federal parliamentary republic',26494504,147181,12,'The mountainous north of Nepal has eight of the worlds ten tallest mountains, including the highest point on Earth, Mount Everest. More than 250 peaks over 20,000 ft (6,096 m) above sea level are located in Nepal. The southern Terai region is fertile and humid.'),
(21,'Canada','Canada',NULL,'Ottawa','Federal parliamentary constitutional monarchy',36048521,9984670,9,'The land now called Canada has been inhabited for millennia by various Aboriginal peoples. Beginning in the 15th century, British and French colonies were established on the Atlantic coast, with the first establishment of a region called \"Canada\" occurring in 1537. As a consequence of various conflicts, the United Kingdom gained and lost territories within British North America until left, in the late 18th century, with what mostly geographically comprises Canada today. Pursuant to the British North America Act, on July 1, 1867, the colonies of Canada, New Brunswick, and Nova Scotia joined to form the autonomous federal Dominion of Canada. This began an accretion of provinces and territories to the self-governing Dominion to the present ten provinces and three territories forming modern Canada. In 1931, Canada achieved near total independence from the United Kingdom with the Statute of Westminster 1931, and full sovereignty was attained when the Canada Act 1982 removed the last remaining ties of legal dependence on the British parliament.'),
(22,'Fiji','Republic of Fiji',NULL,'Suva','Unitary parliamentary republic',858038,18274,20,'Fiji is an archipelago of more than 330 islands, of which 110 are permanently inhabited, and more than 500 islets, amounting to a total land area of about 18,300 square kilometres (7,100 sq mi). The farthest island is Ono-i-Lau. The two major islands, Viti Levu and Vanua Levu, account for 87% of the population of almost 860,000. The capital, Suva on Viti Levu, serves as Fiji\'s principal port. About three-quarters of Fijians live on Viti Levus coasts, either in Suva or in smaller urban centres like Nadi (tourism) or Lautoka (sugar cane industry). Viti Levu\'s interior is sparsely inhabited due to its terrain.'),
(23,'Indonesia','Repubic of Indonesia',NULL,'Jakarta','Unitary presidential constitutional republic',255461700,1904569,13,'Indonesias republican form of government includes an elected legislature and president. Indonesia has 34 provinces, of which five have Special Administrative status. Its capital city is Jakarta. The country shares land borders with Papua New Guinea, East Timor, and the Malaysian Borneo. Other neighbouring countries include Singapore, the Philippines, Australia, Palau, and the Indian territory of the Andaman and Nicobar Islands. Indonesia is a founding member of ASEAN and a member of the G-20 major economies. The Indonesian economy is the world\'s 16th largest by nominal GDP and the 8th largest by GDP at PPP.\r\n\r\nThe Indonesian archipelago has been an important trade region since at least the 7th century, when Srivijaya and then later Majapahit traded with China and India. Local rulers gradually absorbed foreign cultural, religious and political models from the early centuries CE, and Hindu and Buddhist kingdoms flourished. Indonesian history has been influenced by foreign powers drawn to its natural resources. Muslim traders and Sufi scholars brought the now-dominant Islam, while European powers brought Christianity and fought one another to monopolise trade in the Spice Islands of Maluku during the Age of Discovery. Following three and a half centuries of Dutch colonialism starting from the East Indonesia of West Papua, Timor to eventually all of West Indonesia, at times interrupted by Portuguese, French and British rule, Indonesia secured its independence after World War II. Indonesia\'s history has since been turbulent, with challenges posed by natural disasters, mass slaughter, corruption, separatism, a democratisation process, and periods of rapid economic change.'),
(24,'Italy','Italian Republic',NULL,'Rome','Unitary parliametary constitutional republic',60795612,301338,17,'Since classical times, Greeks, Etruscans and Celts have inhabited the south, centre and north of the Italian Peninsula respectively. The Italic tribe known as the Latins formed the Roman Kingdom, which eventually spread throughout Italy, assimilating and conquering other nearby civilizations and forming the Roman Republic. Rome ultimately emerged as the dominant power, conquering much of the ancient world and becoming the leading cultural, political, and religious centre of Western civilisation. The legacy of the Roman Empire is widespread and can be observed in the global distribution of civilian law, Republican governments, Christianity and the latin script.'),
(25,'Greece','Hellenic Republic',NULL,'Athens','Unitary parliametary constitutional republic',10955000,131957,17,'Greece has one of the longest histories of any country, and is considered the cradle of Western civilization, and as such, is the birthplace of democracy, Western philosophy, the Olympic Games, Western literature, historiography, political science, major scientific and mathematical principles, and Western drama, including both tragedy and comedy. Greece was first unified under Philip of Macedon in the fourth century BC. His son Alexander the Great rapidly conquered much of the ancient world, spreading Greek culture and science from the eastern Mediterranean to the Indus River. Annexed by Rome in the second century BC, Greece became an integral part of the Roman Empire and its successor, the Byzantine Empire. The first century AD saw the establishment of the Greek Orthodox Church, which shaped the modern Greek identity and transmitted Greek traditions to the wider Orthodox World. Falling under Ottoman dominion in the mid-15th century, the modern nation state of Greece emerged in 1830 following the war of independence. Greeces rich historical legacy is reflected in large part by its 17 UNESCO World Heritage Sites, among the most in Europe and the world.'),
(26,'Afghanistan','Islamic Republic of Afghanistan','Afghanistan.jpg','Kabul','Unitary presidential Islamic republic',32564342,652864,12,'Human habitation in Afghanistan dates back to the Middle Paleolithic Era, and the countrys strategic location along the Silk Road connected it to the cultures of the Middle East and other parts of Asia. Through the ages the land has been home to various peoples and witnessed numerous military campaigns; notably by Alexander the Great, Muslim Arabs, Mongols, British, Soviet Russians, and in the modern-era by Western powers. The land also served as the source from which the Kushans, Hephthalites, Samanids, Saffarids, Ghaznavids, Ghorids, Khiljis, Mughals, Hotaks, Durranis, and others have risen to form major empires.'),
(27,'Syria','Syrian Arab Republic',NULL,'Damascus','Unitary dominant-party semi-presidential republic',17064854,185180,14,'A country of fertile plains, high mountains, and deserts, Syria is home to diverse ethnic and religious groups, including Syrian Arabs, Greeks, Armenians, Assyrians, Kurds, Circassians, Mandeans and Turks. Religious groups include Sunnis, Christians, Alawites, Druze, Mandeans, Shiites, Salafis, and Yazidis. Sunni Arabs make up the largest population group in Syria.\r\n\r\nIn English, the name \"Syria\" was formerly synonymous with the Levant (known in Arabic as al-Sham), while the modern state encompasses the sites of several ancient kingdoms and empires, including the Eblan civilization of the 3rd millennium BC. Its capital Damascus is among the oldest continuously inhabited cities in the world. In the Islamic era, Damascus was the seat of the Umayyad Caliphate and a provincial capital of the Mamluk Sultanate in Egypt.'),
(28,'Tonga','Kingdom of Tonga',NULL,'Nukualofa','Unitary parliamentary constitutional monarchy',103036,748,22,'Tonga stretches over about 800 kilometres in a north-south line â€“ about a third of the distance from New Zealand to Hawaii. It is surrounded by Fiji and Wallis and Futuna (France) to the northwest, Samoa to the northeast, Niue to the east, Kermadec (part of New Zealand) to the southwest, and New Caledonia (France) and Vanuatu to the farther west.\r\n\r\nTonga became fully independent from Britain in May 1970, but had never relinquished its sovereignty to any foreign power. In 2010, Tonga took a decisive step towards becoming a fully functioning constitutional monarchy, after legislative reforms paved the way for its first partial representative elections.'),
(29,'Vatican City','Vatican City State',NULL,'Vatican City','Absolute monarchy, ecclesiastical and elective theocracy',842,1,17,'Vatican City, officially the Vatican City State is a walled enclave within the city of Rome. With an area of approximately 44 hectares (0.44 km2), and a population of 842, it is the smallest state in the world by both area and population.\r\n\r\nIt is an ecclesiastical or sacerdotal-monarchical state ruled by the Bishop of Rome â€“ the Pope. The highest state functionaries are all Catholic clergy of various national origins. Since the return of the Popes from Avignon in 1377, they have generally resided at the Apostolic Palace within what is now Vatican City, although at times residing instead in the Quirinal Palace in Rome or elsewhere.'),
(30,'Kiribati','Republic of Kiribati',NULL,'Tarawa','Parliamentary republic',103500,811,21,'Kiribati became independent from the United Kingdom in 1979. The capital and now most populated area, South Tarawa, consists of a number of islets, connected by a series of causeways. These comprise about half the area of Tarawa Atoll.\r\nKiribati is a member of the Commonwealth of Nations, the IMF and the World Bank, and became a full member of the United Nations in 1999.'),
(31,'New Zealand','New Zealand',NULL,'Wellington','Unitary parliamentary constitutional monarchy',4596700,268021,19,'Aotearoa (Maori name) is an island country in the southwestern Pacific Ocean.\r\n\r\nSomewhere between 1250 and 1300 CE, Polynesians settled in the islands that were to become New Zealand, and developed a distinctive Maori culture. In 1642, Abel Tasman, a Dutch explorer, became the first European to sight New Zealand. In 1840, representatives of the British Crown and Maori Chiefs signed the Treaty of Waitangi, making New Zealand a British colony. Today, the majority of New Zealand\'s population of 4.5 million is of European descent; the indigenous Maori are the largest minority, followed by Asians and Pacific Islanders. Reflecting this, New Zealand\'s culture is mainly derived from Maori and early British settlers, with recent broadening arising from increased immigration. The official languages are English, Maori and New Zealand Sign Language, with English predominant.'),
(32,'Germany','Federal Republic of Germany',NULL,'Berlin','Federal parliamentary republic',81459000,357168,18,'Various Germanic tribes have occupied the northern parts of current Germany since classical antiquity. A region named Germania was documented before 100 AD. During the Migration Period the Germanic tribes expanded southward. Beginning in the 10th century, German territories formed a central part of the Holy Roman Empire. During the 16th century, northern German regions became the centre of the Protestant Reformation.\r\n\r\nThe rise of Pan-Germanism inside the German Confederation resulted in the unification of most of the German states in 1871 into the Prussian-dominated German Empire. After World War I and the German Revolution of 1918â€“1919, the Empire was replaced by the parliamentary Weimar Republic. The establishment of the national socialist dictatorship in 1933 led to World War II and systematic genocide. After 1945, Germany split into two states, East Germany and West Germany. In 1990, the country was reunified.'),
(33,'Czech Republic','Czech Republic',NULL,'Prague','Unitary parliamentary constitutional republic',10553443,78866,15,'The Czech state was formed in the late 9th century as the Duchy of Bohemia under the Great Moravian Empire. After the fall of the Empire in 907, the centre of power transferred from Moravia to Bohemia under the PÅ™emyslid dynasty. In 1004, the duchy was formally recognized as part of the Holy Roman Empire, becoming the Kingdom of Bohemia in 1212, and reaching its greatest territorial extent in the 14th century. Besides Bohemia itself, the King of Bohemia ruled the lands of the Bohemian Crown, and he had a vote in the election of the Holy Roman Emperor. In the Hussite wars of the 15th century driven by the Bohemian Reformation, the kingdom faced economic embargoes and defeated five crusades proclaimed by the leaders of the Roman Catholic Church.'),
(34,'Turkey','Republic of Turkey',NULL,'Ankara','Unitary parliamentary constitutional republic',78741000,814578,14,'Turkey has been inhabited since the paleolithic age, including various ancient Anatolian civilizations, Aeolian, Dorian and Ionian Greeks, Thracians, Armenians, and Assyrians. After Alexander the Greats conquest, the area was Hellenized, a process which continued under the Roman Empire and its transition into the Byzantine Empire. The Seljuk Turks began migrating into the area in the 11th century, starting the process of Turkification, which was greatly accelerated by the Seljuk victory over the Byzantines at the Battle of Manzikert in 1071. The Seljuk Sultanate of RÃ»m ruled Anatolia until the Mongol invasion in 1243, upon which it disintegrated into several small Turkish beyliks.\r\nStarting from the late 13th century, the Ottomans united Anatolia and created an empire encompassing much of Southeastern Europe, Western Asia and North Africa, becoming a major power in Eurasia and Africa during the early modern period. The empire reached the peak of its power between the 15th and 17th centuries, especially during the 1520â€“66 reign of Suleiman the Magnificent. After the second Ottoman siege of Vienna in 1683 and the end of the Great Turkish War in 1699, the Ottoman Empire entered a long period of decline. The Tanzimat reforms of the 19th century, which aimed to modernize the Ottoman state, proved to be inadequate in most fields, and failed to stop the dissolution of the empire. The Ottoman Empire entered World War I (1914â€“18) on the side of the Central Powers and was ultimately defeated. During the war, major atrocities were committed by the Ottoman government against its Armenian, Assyrian and Pontic Greek citizens. Following the war, the huge conglomeration of territories and peoples that formerly comprised the Ottoman Empire was divided into several new states. The Turkish War of Independence (1919â€“22), initiated by Mustafa Kemal AtatÃ¼rk and his colleagues in Anatolia, resulted in the establishment of the modern Republic of Turkey in 1923, with AtatÃ¼rk as its first president.'),
(35,'Bangladesh','Peoples Republic of Bangladesh','Bangladesh.jpg','Dhaka','Unitary parliamentary constitutional republic',168957745,147570,12,'Bangladesh officially the Peoples Republic of Bangladesh is a country in South Asia, bordered by India and Myanmar, at the apex of the Bay of Bengal. It is separated from Nepal and Bhutan by the narrow Siliguri Corridor. It is the worlds eighth most populous country and the ninety-second largest country by area, making it one of the most densely populated nations on Earth. The majority of the population are Muslims, followed by Hindus, with diverse Buddhist and Christian communities. The official language is Bengali, which is also spoken in the neighboring Indian states of West Bengal and Tripura. Dominated by the fertile Bengal delta, Bangladesh is rich in biodiversity and is home to the worlds largest mangrove forest, a mountainous east and a 600 km (370 mi) coastline that has one of the worlds longest beaches.The region was known to the ancient Greeks and Romans as Gangaridai. The mighty Ganges and Brahmaputra rivers connected Bengal to India and China, making the region a central entrepot of the historic Silk Road. During the Pala and Sena periods, the people of the land developed their own language, script, literature, music, art and architecture. Islam was established in the second millennium CE under the Delhi Sultanate, the Bengal Sultanate and the Mughal Empire. Annexed by the British East India Company in 1765, the region was a part of British-ruled India until the creation of Pakistan in 1947.The present-day borders of Bangladesh took shape during the Partition of Bengal and the British India in 1947, when East Bengal came to be known as East Pakistan, as a part of the newly formed state of Pakistan. It was separated from West Pakistan by 1,400 kilometres (870 mi) of Indian territory. Because of political exclusion, ethnic and linguistic discrimination and economic neglect by the politically dominant western wing, Bengali nationalism, popular agitation and civil disobedience led to the Bangladesh Liberation War and independence in 1971. After independence, the new state endured poverty, famine, political turmoil and military coups. The restoration of democracy in 1991 has been followed by relative calm and economic progress. In 2014, the Bangladeshi general election was boycotted by major opposition parties, resulting in a parliament and government dominated by the Awami League and its smaller coalition partners.Bangladesh is a unitary parliamentary republic with an elected parliament called the Jatiyo Sangshad. The native Bengalis form the countrys largest ethnic group, along with indigenous peoples in northern and southeastern districts. Geographically, the country is dominated by the fertile Bengal delta, the worlds largest delta. This also gives Bangladesh a unique name tag as the land of rivers. Bangladesh has a rich heritage of ancient civilization.Bangladeshs documented history spans 4,000 years.Bangladesh human history has lasted for more than 20,000 years.Bangladesh is the Next Eleven emerging economy. It has achieved significant strides in human and social development since independence, including progress in gender equality, universal primary education, food production, health, and population control. Bangladesh continues to face numerous political, economic, social and environmental challenges, including political instability, corruption, poverty, overpopulation, and global warming.Bangladesh is the founding member of SAARC, the Developing 8 Countries and BIMSTEC. Bangladesh contributes one of the largest peacekeeping forces to the United Nations. Bangladesh is a member of the Commonwealth of Nations, the Organization of Islamic Cooperation and the Non-Aligned Movement.');
/*!40000 ALTER TABLE `nation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `cnum` varchar(9) DEFAULT NULL,
  `issue` varchar(10) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES
(1,'Nurul Amin Naim','424790710','Design','Please improve the site Design');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocean`
--

DROP TABLE IF EXISTS `ocean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocean` (
  `ocean_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ocean_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ocean_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocean`
--

LOCK TABLES `ocean` WRITE;
/*!40000 ALTER TABLE `ocean` DISABLE KEYS */;
INSERT INTO `ocean` VALUES (1,'Pacific Ocean'),(2,'Atlantic Ocean'),(3,'Indian Ocean'),(4,'Southern Ocean'),(5,'Arctic Ocean');
/*!40000 ALTER TABLE `ocean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `region_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Eastern Africa',NULL),(2,'Middle Africa',NULL),(3,'Northern Africa',NULL),(4,'Southern Africa',NULL),(5,'Western Africa',NULL),(6,'South America',NULL),(7,'Caribbean',NULL),(8,'Central America',NULL),(9,'Northern America',NULL),(10,'Central Asia',NULL),(11,'Eastern Asia',NULL),(12,'Southern Asia',NULL),(13,'South-Eastern Asia',NULL),(14,'Western Asia',NULL),(15,'Eastern Europe',NULL),(16,'Northern Europe',NULL),(17,'Southern Europe',NULL),(18,'Western Europe',NULL),(19,'Australia and New Zealand',NULL),(20,'Melanesia',NULL),(21,'Micronesia',NULL),(22,'Polynesia',NULL);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-06  8:39:52