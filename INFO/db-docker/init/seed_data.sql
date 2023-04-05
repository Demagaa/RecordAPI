create table offer
(
    id                          bigint                   not null primary key, -- ID is also known to a bank
    name                        varchar(255)             not null,
    visible_from                timestamp with time zone not null,
    visible_to                  timestamp with time zone not null,
    description                 varchar                  not null
);



create table client
(
    id                  bigint  not null primary key,
    bank_id             bigint  not null, -- ID of a bank
    uuid                varchar(100), -- ID used by a bank to identify the client
    registration_time   timestamp with time zone    
);


create table record
(
	id 					bigint not null primary key,
    client_id			bigint not null,
    offer_id 			bigint not null,
    lastseen			timestamp with time zone,
     CONSTRAINT fk_client
      FOREIGN KEY(client_id) 
	  REFERENCES client(id),
	CONSTRAINT fk_offer
      FOREIGN KEY(offer_id) 
	  REFERENCES offer(id)
);


INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (1, 'Teta - Vae rodinná drogerie', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>V drogerii TETA najdete iroký sortiment drogerie, kosmetiky a parfumérie, ale i zboí, co jinde marnì sháníte jako napøíklad technický sortiment barvù a lakù. Samozøejmostí jsou znaèkové výrobky vèetnì znaèek, které byly vyvinuty exkluzivnì pro drogerie TETA. Hlavním kritériem je pro nás vdy pièková kvalita za skvìlé ceny. Pøijïte i Vy a pøesvìdète se, e výhodnì nakoupit mùete v blízkosti Vaeho domova.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (2, 'Nordsee - Uijte si rybu èerstvou jako u moøe', '2015-05-15 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>NORDSEE dává slovu fastfood zcela nový rozmìr. V naí restauraci Vám nabízíme moøské ryby a plody moøe v té nejlepí kvalitì. Pøesvìdète se sami, e se u nás najíte nejen rychle, ale zároveò i chutnì a zdravì.<br />
&nbsp;<br />
Pøijïte ochutnat to nejlepí z ryb a darù moøe do nové restaurace NORDSEE. Stejnì jako jinde ve svìtì, i u nás si NORDSEE získává stále vìtí oblibu prvotøídní kvalitou a èerstvostí svých produktù, je jsou vítanou alternativou k bìnému kadodennímu stravování. V iroké nabídce naleznete ryby peèené, uzené i grilované, plody moøe, køehké saláty, køupavé bagety a nepøeberné mnoství pøíloh, lahodných omáèek a dresinkù, které si sami vyberete a zkombinujete dle momentální chuti a nálady.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (3, 'Kadeønictví Klier: Vae vlasy - Nae váeò', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Vyzkouejte garantovanou kvalitu Kadeønictví KLIER a svìøte své vlasy do rukou odborníkù, kteøí se Vám budou vìnovat s náleitou pozorností. Své sluby poskytujeme 7 dní v týdnu bez objednání.&nbsp;Zakoupit mùete také kvalitní vlasovou kosmetiku pøedních svìtových znaèek.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (4, 'Hooters - Restaurace & Sport bar
', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>V restauracích Hooters návtìvníci naleznou uvolnìnou atmosféru a ideální prostøedí pro sledování sportovních událostí, poøádaní firemních akcí nebo jen pro posezení s pøáteli. Mùete se tìit na èeské a americké speciality, ale také na Plzeòský Prazdroj èepovaný pøímo z tanku. Kromì kvalitního jídla, pití a sportovní atmosféry jsou pro Hooters typické i tzv. Hooters Girls, které jsou naí chloubou a vytváøí skvìlé prostøedí.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (5, 'Globus - Tady je svìt jetì v poøádku', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Ostatn&iacute; o tradièn&iacute; v&yacute;robì a kvalitn&iacute;ch slub&aacute;ch jen mluv&iacute;. My m&aacute;me mnoho dùkazù, e pro n&aacute;s je to samozøejmost. D&iacute;ky vlastn&iacute;mu øeznictv&iacute; a pekaøstv&iacute; V&aacute;m mùeme garantovat jen to neèerstvìj&scaron;&iacute; a nejkvalitnìj&scaron;&iacute; zbo&iacute; vyroben&eacute; z tìch nejlep&scaron;&iacute;ch surovin. U kad&eacute;ho hypermarketu nav&iacute;c provozujeme vlastn&iacute; èerpac&iacute; stanici a restauraci s j&iacute;dly podle tradièn&iacute;ch receptù. Nechyb&iacute; ani na&scaron;e vlastn&iacute; znaèky, kter&eacute; jsou z&aacute;rukou kvality.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (6, 'Benu Lékárna', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Lékárny BENU nabízejí zcela nový a moderní pøístup k medicínské a preventivní péèi. Vyberte si snadno a rychle z iroké nabídky lékù na pøedpis, doplòkù stravy, volnì prodejných lékù nebo i nepostradatelné léèebné kosmetiky. Èeká na Vás odborný personál, který vám ochotnì a profesionálnì poradí pøi výbìru, volnì prodejné zboí si pak mùete vybrat v pohodlných samoobsluných zónách.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (7, 'Exim Tours - Cestujte, poznávejte, uívejte si', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Cestovní kanceláø EXIM TOURS pro vás ji 22. sezónu pøipravuje dovolenou vaich snù do nejoblíbenìjích destinací. Spokojenost klientù je pro nás prvotním cílem a proto do nabídky ubytování zaøazujeme pouze kvalitní a provìøené kapacity, které osobnì vybíráme a kontrolujeme.Vychutnejte si svoji vysnìnou dovolenou u moøe, na horách nebo poznávejte nejkrásnìjí mìsta nejen v Evropì, ale i v zámoøí.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (8, 'Automyèka Express', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Automyèka Express je nejvìt&scaron;&iacute; s&iacute; autokosmetick&yacute;ch center pro nejkvalitnìj&scaron;&iacute; ruèn&iacute; myt&iacute; a èi&scaron;tìn&iacute; automobilù. Najdete n&aacute;s velmi snadno v n&aacute;kupn&iacute;ch centrech. Ke kad&eacute;mu automobilu pøistupujeme individu&aacute;lnì, s maxim&aacute;ln&iacute; profesionalitou a zamìøujeme se na vysokou &uacute;roveò poskytovan&yacute;ch slueb se 100% pod&iacute;lem ruèn&iacute; pr&aacute;ce.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (9, 'Tesco - Na vem záleí', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Tesco je jeden z nejvìtích maloobchodníkù a èeským zákazníkùm poskytuje irokou kálu zboí a slueb od potravin,a po elektroniku, vèetnì naí vlastní sítì èerpacích stanic. Najdete u nás výrobky pouze té nejvyí kvality a nabízíme stále se roziøující nabídku výrobkù, které nesou naí znaèku. Naim výrobkùm vìøíme, tak Vám mùeme garantovat 100% spokojenost.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (10, 'Hornbach - S námi to zvládnete', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Skupina HORNBACH je jedním z nejvìtích provozovatelù hobbymarketù v Evropì. Pro Vás máme v&nbsp;HORNBACHU irokou nabídku, jak zboí, tak i doplòkových slueb. Máte monost, zde najít právì to, co potøebujete v&nbsp;konkrétní situaci a èase. Mùe to být vrtaèka, osvìtlení, vana, dìtský koberec nebo jen pár høebíkù. U nás budete vdy 100% spokojeni.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (11, 'Tommy Hilfiger', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Tommy Hilfiger je jednou z pøedních svìtových designérských lifestylových znaèek. Znaèka poskytuje pièkový styling, kvalitu a hodnotu pro spotøebitele na celém svìtì pod znaèkami Tommy Hilfiger a Hilfiger Denim. U této znaèky si mùete zakoupit pánské, dámské a dìtské sportovní obleèení, pøísluenství, a také obuv. Kromì toho má znaèka v souèasnosti velké mnoství produktù, s kterými se budete kadý den cítit skvìle. Mùe se jednat o parfémy, designové brýle, hodinky nebo luxusní bytový textil.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (12, 'Chicco - Tam kde je dítì
', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p><strong>Chicco </strong>je nejvìt&scaron;&iacute; znaèkou c&iacute;l&iacute;c&iacute; na rodinu v&nbsp;Evropì. Produkty, kter&eacute; firma vyr&aacute;b&iacute;, jsou potøeba k p&eacute;èi o v&scaron;echny èleny Va&scaron;&iacute; rodiny. &Scaron;irok&eacute; portfolio v&yacute;robkù zahrnuj&iacute;c&iacute;ch obleèen&iacute;, koè&aacute;rky, dìtsk&eacute; autosedaèky, hraèky, kojeneck&eacute; potøeby a spoustu dal&scaron;&iacute;ch produktù, vyuije opravdu cel&aacute; rodina. V&scaron;echny v&yacute;robky jsou navreny tak, aby se va&scaron;e d&iacute;tì c&iacute;tilo bezpeènì, pohodlnì, &uacute;tulnì a z&aacute;roveò mìlo svobodu. Neust&aacute;le na&scaron;e produkty rozv&iacute;j&iacute;me, take dr&iacute;me krok s rychle se rozv&iacute;jej&iacute;c&iacute;m ivotn&iacute;m stylem.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (13, 'iSetos - Vyberte si nový iPhone nebo iPad', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Kde jinde si poøídit nový iPhone nebo iPad ne u specializovaného obchodu, který se jako jeden z mála v Èeské republice honosí statutem Apple Premium Reseller. Nai kolení specialisté Vám zodpovìdí vechny otázky ohlednì výbìru telefonu iPhone a pomohou Vám vybrat nejvhodnìjí model. Vìøíme, e nákupem vztah mezi obchodem a zákazníkem nekonèí, ale teprve zaèíná. Právì proto vám vae nové zaøízení nastavíme, pøeneseme na nìj vae data a vysvìtlíme vám jeho funkce. Samozøejmì vám rádi pomùeme i s jakýmkoliv starím výrobkem Apple.&nbsp;<strong>Telefony iPhone</strong>&nbsp;a<strong>&nbsp;tablety iPad</strong>&nbsp;nyní v iSetos&nbsp;<strong>se slevou 5%</strong>!&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (14, 'Pilulka.cz - Vae online lékárna', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Pilulka.cz je online lékárna s irokým sortimentem lékù, výivových doplòkù, dìtské výivy a kojeneckých potøeb èi kosmetických a drogistických produktù.</p>

<p>Naím cílem je nabídnout Vám monost nákupu lékárenského a pøidrueného sortimentu a to z pohodlí Vaeho domova. Pilulka.cz si zakládá na odbornosti a lékárny do projektu Pilulka.cz jsou vybírány selektivnì na základì plnìní pøísných kvalitativních parametrù. Navtivte ná e-shop na&nbsp;<a href="http://www.pilulka.cz">www.pilulka.cz</a>&nbsp;a vyberte si to nejlepí pro Vae zdraví.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (15, 'Uni Hobby - Nejvìtí èeský øetìzec hobby prodejen!', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Vechno pro Vá dùm, byt i zahradu.</p>

<p>Navtivte nae prodejny a&nbsp;objevte ve pro své hobby!</p>

<p>Nabízíme míchaní barev, pøíøez a poøez døeva, olepování hran, ití na zakázku, výrobu klíèù, rozvoz zboí, pomoc pøi naloení zboí a finanèní sluby.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (16, 'Neopharm - Sí moderních lékáren', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Cílem lékáren Neopharm je poskytování nadstandardní péèe, dostupnost&nbsp;a iroký sortiment tìch nejkvalitnìjích produktù.</p>

<p>Kvalifikovaný personál odborníkù Vám vdy rád pomùe s výbìrem nejvhodnìjího léèivého pøípravku, doplòku stravy, èi kosmetiky. V naich lékárnách je monost individuální pøípravy léèiv. Chceme Vám být co nejblíe, proto nai sí lékáren stále roziøujeme. Vìøíme, e nejlepí nai vizitkou je Vae spokojenost.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (17, 'Království eleznic - Úasný malý svìt', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nevíte kam se vydat o víkendu, èi jak zabavit sebe i své dìti? Máme pro Vás øeení! Pøijïte do Království eleznic, kde si kadý mùe nalézt to své - od vláèkù, pøes modely skuteèných míst v ÈR a po ty nejvìtí lahùdky.</p>

<p>V pøípadì, e nás navtívíte, se Vám naskytne jedineèný pohled na modelovou krajinu protkanou eleznièní sítí s mnoha vychytávkami. Nae modely jezdí, svítí, otevírají se, reagují na støídání denního a noèního cyklu a nìkteré jsou uzpùsobené tak, abyste je mohli sami ovládat!</p>

<p>&nbsp;To ovem není vechno, Království eleznic disponuje øadou doplòkových expozic, nauèných panelù a øadou interaktivních prvkù. Samozøejmostí je i monost malého obèerstvení a zázemí pro malé v podobì hracího koutku.&nbsp;Tak neváhejte a navtivte nás!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (18, 'LÉKÁRNA ipc Quadrio - Ve pro zdraví', '2015-05-15 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>LÉKÁRNY ipc - èeské lékárny s tradicí více ne 23 let. 45 LÉKÁREN ipc po celé ÈR nabízí nízké ceny a komplexní odbornou lékárenskou péèi v oblasti zdraví, krásy a ivotního stylu.</p>

<p>LÉKÁRNA ipc Quadrio pøináí koncept tradièní francouzské lékárny - navtivte nae unikátní Derma-Centrum v OC Quadrio a vyuijte nabízené 3% slevy&nbsp;na volnì prodejný sortiment. Lékárna nabízí kompletní sortiment léèiv, doplòkù stravy a medicinální kosmetiky pøedních znaèek.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (19, 'Bubbleology - Originální londýnský èaj', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Znaèka Bubbleology pøináí na èeský trh moderní verzi èaje pro vechny vìkové kategorie. Originální londýnské bubble tea od Bubbleology je iroká kála osvìujících ovocných a mléèných èajù, které Vám dodají energii. Základem nápojù od Bubbleology je vdy èerstvì louhovaný èerný nebo zelený èaj a vechny ingredience mají tu nejvyí kvalitu, kterou trh momentálnì nabízí. Znaèka Bubbleology je hravá stejnì jako nápoj, který vám její zástupce s úsmìvem namixuje. Menu Bubbleology bude staèit na to, abyste mìli monost po dobu jednoho mìsíce zkouet kadý den jinou pøíchu èaje.<br />
Kromì stálé nabídky pøíchutí mùete aktuálnì ochutnat tøi speciální èaje z edice ACTIVE LIFESTYLE, jejich základem je jasmínový zelený èaj bohatý na antioxidanty. Novì je nabídka Bubbleology obohacena o 100% pøírodní RAW tyèinky a SVAÈINKU v podobì müsli s 50% podílem ovoce, bílého jogurtu, jasmínového èaje a ovocné ávy podle vlastního výbìru.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (20, 'SCANquilt - Povleèení a bytový textil', '2015-06-27 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Naí snahou je pøináet inspiraci, hravost a pohodu do Vaich domovù. Peèlivì proto vybíráme a dotváøíme kolekce pøedních svìtových návrháøù a pøináíme moderní i tradièní vzory na loní povleèení v barevnostech, které se Vám&nbsp;líbí. Jejich nejirí nabídku více ne 600 vzorù naleznete v prodejnách SCANquilt.</p>

<p>Nealergenní pøikrývky a poltáøe SCANquilt jsou více ne dvacet let vyrábìny s nejvyí péèí. Stálou oblibu si získaly pro svoji trvanlivost, pøíjemný omak a vysokou kvalitu pouívaných materiálù i zpracování. Vìøíme, e se nám podaøí naplnit Vae pøedstavy o vkusném a útulném domovu.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (21, 'Puzzle Salads - Salátový bar a kavárna', '2015-05-15 23:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Puzzle Salads je koncept nabízející kvalitní, rychlé a zdravé jídlo z prvotøídních, sezónních a lokálních surovin. Nae menu se stále mìní podle roèního období a poèasí. Nenabízíme jen mnoství receptur na salát, ale dáváme Vám monost rozhodovat do poslední ingredience o tom, co si do svého salátu namícháte. Mùete si &quot;hrát&quot; se surovinami a skládat si je pøesnì podle Vaeho pøání, chuti a nálady. Chystáme pro Vás kadý den i dalí dobroty, ve vdy domácí a bez pouití jakýchkoliv polotovarù. Pøijïte si sloit ten svùj salát, u se na Vás tìíme.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (22, 'Ferrari - Inovace, design, tradice', '2015-06-11 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>FFerrari je tradièním italským výrobcem luxusních sportovních automobilù. Nae znaèka je mezinárodnì uznávána jako vrchol dokonalosti a historicky patøí mezi pøední výrobce v automobilovém prùmyslu, stejnì jako v mnoha jiných oblastech. Vlastnit Ferrari je unikátní záitek díky nìmu se stanete èlenem prestiního klubu a budete mít monost vyuívat speciálních slueb pøi péèi o Vá vùz, které jsou pøístupné exkluzivnì majitelùm automobilù Ferrari. Objevte s Ferrari nový svìt plný radosti z jízdy.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (23, 'ALDO - Boty a doplòky', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Kanadská znaèka ALDO je synonymem posledních novinek módní scény v oblasti obuvi, kabelek a taek a dalích módních doplòkù. Oslovuje dynamické eny a mue, kteøí chtìjí vyjádøit svou individualitu a být mezi prvními v pøijímání nových trendù.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (24, 'Ferrino - 140 let zkueností s outdoor vybavením', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Pøíbìh italské znaèky Ferrino zaèíná v Turínì v roce 1870, kdy si Cesare Ferrino podal patent na nepromokavé textilie, zaèal vyrábìt stany a nepromokavé obaly, které se bìhem nìkolika let staly populární po celé Itálii. Zaèátkem nového století, kdy vysoké hory zaèaly lákat první horolezce, pøily pro Ferrino dalí výzvy ve vývoji odolných a nepromokavých materiálú.</p>

<p>V prùbìhu 30.a 40.let se tak stany Ferrino staly útoèitìm pionýrù velehor. Spolupráce se svìtoznámým horolezcem Reinholdem Messnerem pøinesla první kopulovitou konstrukci stanu a mnoho impulzù v evoluci outdoorového vybavení. Nasmìrovala tak Ferrino na cestu prestiního výrobce vybavení do hor. Bìhem let se výrobky Ferrino staly souèástí nehynoucí touhy èlovìka pøekonat nemoné a objevit neobjevené.</p>

<p>Dnes Ferrino nabízí kompletní sortiment vybavení do pøírody od obleèení, pøes batohy, spacáky a po vemoné doplòky pro horolezce, trekaøe, vodáky a vechny ty, kteøí jsou rádi venku.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (25, 'TOM TAILOR', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>TOM TAILOR prezentoval svou novou identitu v srpnu 2014. S dalím rozvojem znaèka TOM TAILOR posiluje svou mezinárodní presti jako &quot;New Urban Player&quot;. Nový postoj znaèky vyjadøuje slogan, který apeluje na sebevìdomé skupiny spøíznìné s ivotním stylem a módou: Life is a Game, Play it, Be Confident, Dress in Style.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (26, 'Bibelot - Znaèkové pero Parker, Waterman, Lamy jako dárek', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Inspirujte se svìtem znaèkových psacích potøeb PARKER, WATERMAN, LAMY a&nbsp;diáøù&nbsp;Filofax. Vyberte si ze iroké nabídky ten správný model, který bude nejlépe vystihovat Vai osobnost nebo bude nejlépe vyhovovat jako dárek pro nìkoho blízkého èi obchodního partnera.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (27, 'The North Face - Technologie, komfort a styl, a u jste kdekoliv!', '2015-05-14 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>The North Face je výrobcem pièkového vybavení pro outdoorové aktivity, cestování a legendou ve svém oboru. Setkáte se s námi na skalách, kopcích, expedicích, výletech s rodinou i ve mìstech. Spojujeme nejmodernìjí technologie, funkènost a nadèasový design. Naím mottem je: Never stop exploring!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (28, 'Pierre Cardin, Cerruti, René Lezard - luxusní pánská konfekce v Èerné rùi', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nabízíme luxusní pánskou konfekci a volnoèasovou módu vìhlasných svìtových znaèek. Dále pak velký výbìr doplòkù jako jsou taky, aktovky, obuv, pásky, kravaty, manetové knoflíky, ály, klobouky, èepice, rukavice atd. Ná profesionální tým stylistek zaruèí, e kadý mu, který se u nás oblékne, bude vdy elegantní a stylový. Kolekce jsou vybírány tak, aby padly jakémukoliv mui bez ohledu na typ postavy, vìk a postavení.</p>');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (29, 'Centrum Fotokoda - Záchytný bod pro fotografy', '2015-05-12 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p style="text-align:justify">Centrum Fotokoda &ndash; to jsou komplexní fotografické sluby pod jednou støechou. Profesionálnì vykolení prodejci poradí s výbìrem fotografické techniky jak zaèínajícím, tak profesionálním fotografùm. Zákazníci naleznou irokou kálu poskytovaných slueb a produktù nabízených v kamenné prodejnì i prostøednictvím internetového obchodu&nbsp;<a href="http://www.fotoskoda.cz">www.fotoskoda.cz</a>.</p>

<p style="text-align:justify">Obchod a sluby vak nejsou jediným smìrem, kterým se Centrum Fotokoda ubírá. Jeho èinnost se zamìøuje také na oblast vzdìlávání a kultury. Centrum Fotokoda ve spolupráci s øadou partnerù poøádá a podporuje fotografické kurzy, odborné workshopy, fotografické výstavy i soutìe. Centrum Fotokoda tvoøí spojením obchodu, slueb a kultury jedno z nejvìtích a nejkrásnìjích fotografických center v Evropì a navazuje tak na tradici zakladatele fotografického domu Jana Langhanse.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (30, 'Liftago - Nejpopulárnìjí praská taxi aplikace', '2015-05-14 23:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<ul>
	<li>Nejpopulárnìjí praská taxi aplikace</li>
	<li>Doba pøistavení v&nbsp;centru Prahy do 5&nbsp;minut</li>
	<li>Objednání jízdy pøes mobilní aplikaci (iOS a Android)</li>
	<li>Sami si vybíráte vùz i&nbsp;øidièe</li>
	<li>Stále vidíte aktuální cenu, trasu i&nbsp;èas</li>
</ul>

<p>Objevte slubu&nbsp;Liftago, kterou ji vyuívají tisíce Praanù. Liftago je revoluèní sluba, která mìní svìt taxíkù v&nbsp;pøíjemný záitek. Po staení aplikace z&nbsp;Google Play nebo Apple AppStore si mùete vybrat auto, øidièe i&nbsp;cenovou hladinu dle svého&nbsp;gusta. S&nbsp;mobilní aplikaci Liftago máte svobodnou volbu. Svou jízdu navíc máte pod kontrolou. Sledovat mùete aktuální cenu, trasu i&nbsp;èas, Liftago je s Vámi po celou dobu&nbsp;jízdy.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (31, 'Sephora', '2015-05-21 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Sephora pøed Vámi otevírá dveøe do království vùní, líèení a péèe. V této parfumerii se støetává tradice s moderností. Sephora se stará o Vae tìlo i dui. Je tím pravým místem pro kadého, kdo o sebe rád peèuje nebo obdarovává své okolí. Sephora nabízí svou pomoc pøi výbìru produktù pro krásu i pro potìení. Objevujte nejvìtí tajemství známých vizáistù a kosmetických znaèek. Poznejte mimo jiné také exkluzivní kosmetiku dostupnou výhradnì v síti parfumerií Sephora.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (32, 'ZOOT - Udìlejte si radost. Jen tak.', '2015-05-15 23:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p><strong>ZOOT je nejvìtí módní online obchod v Èechách a na Slovensku.</strong> Móda a design nás zkrátka baví&nbsp;a rádi objevujeme znaèky i osobnosti se stejnou vizí a posláním: dìlat lidem radost. A teï bychom ji rádi udìlali právì Vám &ndash; <strong>15% slevou</strong>.</p>

<p>Proè je fajn nakupovat na ZOOTu?<br />
? <strong>platíte a po vyzkouení</strong> &ndash; objednejte zdarma na výdejnu (jsme i na Budìjovické) a zaplate jen to, co vám je<br />
? <strong>dnes objednáte, zítra máte</strong> &ndash; osobní odbìr ten samý den po Praze, do 2. dne po ÈR<br />
? <strong>doprava zdarma</strong> do 2 dnù pro registrované na ve<br />
? <strong>vrácení zdarma</strong> do 90 dnù</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (33, 'Comfor - Specialista na notebooky a IT techniku', '2015-05-20 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Comfor, tradièní sí s&nbsp;elektronikou, vám nabízí milý, ochotný a kvalifikovaný personál, cenovou dostupnost a hlavnì iroký sortiment výrobkù od poèítaèù a poèítaèového pøísluenství pøes tablety, mobilní telefony, domácí spotøebièe, televizory a po software a hry.</p>

<p>Comfor Vám poskytne pomoc nejenom pøi výbìru nového zboí, ale i pøi problémech s&nbsp;vaí stávající technikou. Nabízíme toti rozsáhlé servisní sluby vèetnì odvirování poèítaèù, èistìní, softwarových optimalizací, reinstalací, hardwarových oprav èi oprav displejù u Vaich mobilù a tabletù.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (34, 'Office Café - Skvìlá káva, snídanì a obìdy na Brumlovce', '2015-05-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nabízíme iroký sortiment teplých, studených, alkoholických i nealkoholických nápojù, míchaných nápojù nebo èerstvých dusù. Podáváme i snídanì a&nbsp;kadý den mùete ochutnat nae polední menu. V nabídce jsou té panini, saláty a rùzné dezerty.</p>

<p>Kavárna Office Café je vhodná pro pracovní schùzky, firemní snídanì èi jen pro bìné posezení v pøíjemném prostøedí. Samozøejmostí je bezdrátové pøipojení k internetu zdarma.&nbsp;Rádi pro Vás pøichystáme oslavu èi firemní veèírek, kdy lze otevírací dobu pøizpùsobit poadavkùm zákazníka. Prostory kavárny jsou oddìlené na kuøáckou a nekuøáckou èást. Bìhem obìdù je nekuøácká celá kavárna!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (35, 'Yobar - Jogurtový bar Radlické mlékárny', '2015-05-22 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Frozen Yogurt pøedstavuje zdravou svaèinu, obìd nebo veèeøi, jako i zdravou alternativu k rùzným dezertùm èi jiným potravinám kategorie rychlého obèerstvení. Volba Frozen Yogurtu je volbou èerstvosti, chutnosti a poskytuje lahodné obèerstvení vem vìkovým skupinám bez nutnosti kompromisu.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (36, 'Grosseto - kvalitní italská kuchynì na Brumlovce', '2015-05-20 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Stýská se vám po chutích støedomoøské Itálie? Navtivte nai vyhláenou pizzerii Grosseto na Brumlovce. Máme pro vás pøipravenou irokou nabídku italské kuchynì -&nbsp;mùete se tìit na vynikající èerstvé pizzy, tìstoviny, saláty, rizota, ryby, polévky, ale i na typické italské sladké teèky. Pokud budete mít chu jít o polední pauze ven na èerstvý vzduch, urèitì vás potìí monost posezení na naí venkovní zahrádce. Ta je nyní novì èásteènì zastøeená, take vás ji ádné rozmary poèasí nemohou zaskoèit.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (37, 'Datart - sleva na lednièky a mrazáky', '2015-05-20 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>DATART International je pøední maloobchodní prodejce zamìøený na spotøební elektroniku. V naich prodejnách a v internetovém obchodì&nbsp;najdete iroký sortiment spotøební elektroniky, zejména domácí spotøebièe, audio, video, PC a telekomunikaèní techniku vèetnì pøísluenství.</p>

<p>Nabízíme irokou nabídku lednièek a chladnièek&nbsp;volnì stojících i vestavìých, kombinované i monoklimatické, retro, nerez a také prosklené modely.&nbsp;Souèasná výbava lednic je velice iroká. Èastý je nenámrazový systém nonFrost, oddìlená regulace teploty v mrazícím a chladícím prostoru, dynamická cirkulace vzduchu nebo nulová zóna. Nejnároènìjí zákazníky pak potìí nápojové automaty.&nbsp;<a href="http://www.datart.cz/lednicky.html" style="line-height: 20.7999992370605px;">www.datart.cz/lednicky</a></p>

<p>Naím heslem je 100 % spokojených zákazníkù. Pokud nás navtívíte, udìláme ve pro to, abyste mezi nì patøili i vy.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (38, 'iSetos - roziøte pamì svého iPhonu', '2015-05-15 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Dochází vaemu telefonu iPhone pamì? Obáváte se, e kvùli pøeplnìné pamìti provihnete skvìlou momentku? Nebo prostì jenom chcete jednodue pøenáet data mezi vaím iPhonem èi iPadem a poèítaèem? Máme pro vás øeení, které vyøeí vechny tyto problémy a neubere vaemu telefonu na stylu. Leef iBridge - kompaktní, pohodlný&nbsp;a&nbsp;s&nbsp;kapacitou 16 GB - 256 GB je elegantní plug-in pamìové pøísluenství pro iPhone, iPod a iPad. Dává uivatelùm více úloného prostoru, ani by museli odstranit cenná data, fotografie, videa nebo hudbu. Leef iBridge nyní se slevou 10%.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (39, 'sportobchod.cz - Tvùj nejlepí spoluhráè!', '2015-05-23 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Prodáváme vybavení na tenis, badminton, squash, florbal, fotbal, hokej, inline a zimní brusle nebo nosièe a boxy na auto.&nbsp;Jsme sportovci, naim sportùm rozumíme a rádi vám pomùeme s výbìrem. Zboí sami pouíváme, pravidelnì testujeme a na pøípravì produktù si dáváme záleet. Svìøte svá sportovní pøání odborníkùm a my se o vás&nbsp;postaráme&nbsp;pøed nákupem i po nìm.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (40, 'Nicheparfum - Okouzlující svìt vùní', '2015-05-29 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Vítáme vás ve svìtì vùní. Jedná se o &bdquo;niche and selective perfumery&ldquo;. Poskytujeme luxusní francouzské, italské, arabské parfemy, které ji dlouho a dobøe znáte a taky&nbsp;nové&nbsp;a vámi dosud nevyzkouené&nbsp;vùnì. V naem obchodì naleznete výbìr rùzného sortimentu, který pravidelnì doplòujeme. Najdete v nìm&nbsp;novinky&nbsp;i klasické dámské, pánské a unisex vùnì&nbsp;rùzných&nbsp;cenových kategorií od výrobcù: MONTALE, MANCERA, ABSOLUMENT, AMOUAGE, ANN GERARD, BRECOURT, CASAMORATI, DAVID JOURQUIN, FRANCK BOCLET, FRAPIN, HAYARI, GRITTI, CHAUGAN, HOUBIGANT, M.MICALLEF,&nbsp; MDCI, MONA DI ORIO, PERRIS MONTE CARLO, PRUDENCE, XERJOFF, CARNER BARCELONA, PARFUMS de MARLY, LES PARFUMS DU CHATEAU DE VERSAILLES. Vechny&nbsp;výrobky&nbsp;jsou&nbsp;originály&nbsp;nejvyí&nbsp;kvality, které nakupujeme pøímo od výrobcù. Dbáme na svou reputaci, a proto nabízíme naim klientùm&nbsp;tu nejvyí kvalitu.Vynasnaíme se vám poskytnout potìení z&nbsp;nákupu.</p>

<p>&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (41, 'Runpremio - Bìecké vybavení, diagnostika a trénink ', '2015-05-28 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Bìecký specializovaný obchod Runpremio nabízí iroký sortiment moderního obleèení a vybavení pro vechny bìce. Rádi kadému poradíme s výbìrem bot (té treter a minimalistických bot), obleèení èi doplòkù. Pøímo na prodejnì udìláme diagnostiku dolapu a popøípadì naplánujeme i nìjaký trénink èi pøípravu na závody.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (42, 'Expreska - Rychlé a úèinné cvièení pro eny', '2015-05-28 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nabízíme moderní formu&nbsp;kruhového posilovacího tréninku se speciálními hydraulickými stroji a s aerobními mezistanicemi. Cvièení je dostateènì nároèné, vhodné pro hubnutí a zpevnìní tìla, který vám zabere jenom&nbsp;3x 30 minut týdnì!</p>

<p>Nejoblíbenìjí a nejvìtí sí kruhového tréninku výhradnì pro eny zahrnuje více ne 45 provozoven v ÈR a na Slovensku se síovým neomezeným èlenstvím. Kadá poboèka je útulným prostøedím orientovaným na potøeby en, vèetnì&nbsp;doplòkové&nbsp;kardiozóny a&nbsp;výivového poradenství.</p>

<p>Základ tréninku spoèívá ve støídání strojú posilujících vrchní a spodní èást tìla, co zajiuje&nbsp;cirkulaci krve a zrychlení metabolismu s afterburn efektem a s úèinkem po dobu 48 hodin. Profesionální&nbsp;trenérky vysvìtlí principy, provedou zkuební hodinou a jsou klientkám k dispozici.&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (43, 'Bookio - Zarezervujte si stùl v restauraci a uetøete 30%', '2015-05-28 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Plánujete&nbsp;rodinný&nbsp;obìd,&nbsp;romantickou&nbsp;veèeøi, posezení s pøáteli nebo vás právì pøepadl poøádný hlad? S rezervací pøes Bookio získáte ve vybraných restauracích 30% slevu na celý úèet bez omezení. Pøi vyuití této nabídky Vám navíc odpustíme celý rezervaèní poplatek, který bìnì èiní 49 nebo 99&nbsp;Kè.&nbsp;Rychlá online rezervace je na Vae jméno, take nemusíte tisknout ádný voucher. Vybírat mùete z více ne 50&nbsp;oblíbených restaurací.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (44, 'Autopùjèovna Sixt - Pronájmy vozidel se 100-letou tradicí', '2015-05-28 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Autopùjèovna Sixt je pøední mezinárodní poskytovatel pronájmù vozidel. Ve vozovém parku klademe dùraz pøedevím na kvalitu a bezpeènost. Ná vozový park se skládá z vozidel pøedních svìtových znaèek jako Mercedes-Benz, BMW, Audi, Volkswagen, koda, Seat, Hyundai a Opel. U autopùjèovny Sixt nenaleznete vozy starí jednoho roku a nájezdem vyím ne 60 tisíc km (pouze s výjimkou dodávek). Kromì bìných typù vozidel vech velikostí disponujeme také elektrovozy Smart ED, elektrickými&nbsp;skútry èi vozidly&nbsp;s pohonem na zemní plyn.</p>

<p>Autopùjèovna Sixt kromì pronájmù vozidel poskytuje i sluby operativního leasingu a limousine servisu -pronájem vozù s øidièem.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (45, 'Mujsport - Kola, lye, servis', '2015-06-05 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Jsme lyaøská a cyklistická speciálka, která si dala jasný cíl &ndash; doporuèit a pomoci Vám vybrat ty nejlepí lye, kola a jakékoliv doplòky k nim. Prodáváme&nbsp;provìøené&nbsp;sportovní&nbsp;vybavení renomovaných znaèek jako jsou Atomic, Bianchi,&nbsp;Scott nebo Head.</p>

<p>Kola a lye jsou èím dál tím sofistikovanìjí a výbìr toho správného modelu se stává více a více sloitìjím. Málokdo má èas a chu proèítat vemoné katalogy nebo recenze a zjiovat si informace sám. Kadý má vak monost pøijít k&nbsp;nám na prodejnu a nechat si s&nbsp;výbìrem pomoci od naich prokolených profesionálù. &nbsp;Jsme tady právì od toho, abychom Vám jednodue a srozumitelnì vysvìtlili výhody jednotlivých øeení a pomohli s&nbsp;výbìrem nejvhodnìjího modelu.</p>

<p>Naím cílem je poskytnout klientovi maximální servis nejen pøi výbìru toho správného sportovního vybavení, ale i po jeho zakoupení. Pøineste nám Vae kolo nebo lye a my vám je profesionálnì, kvalitnì a rychle opravíme.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (46, 'Storm - Styl bez kompromisù', '2015-06-05 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Londýnská módní znaèka STORM je známá&nbsp;osobitými&nbsp;moderními hodinkami, perky i dalími stylovými módními doplòky.</p>

<p>Ojedinìlý design,&nbsp;invence, pøesnost a osobitost je ve, co potøebujete vìdìt o jedné z nejprogresivnìjích britských znaèek, která svými kultovními hodinkami, perky a módními doplòky navdy zmìnila tváø svìtové módní scény.</p>

<p>Kadá øada od STORMu&nbsp;je jiná a&nbsp;unikátní,&nbsp;stejnì jako lidé, kteøí STORM nosí. A u je vá styl dramaticky nekonveèní nebo uhlazenì rafinovaný, hodinky, perky a doplòky STORM podtrhnou vai individualitu a osobnost.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (47, 'Euronics - Prùvodce svìtem Elektro', '2015-06-04 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Jsme èlenem nejvìtí evropské sítì maloobchodních prodejcù elektrospotøebièù EURONICS INTERNATIONAL.</p>

<p>Nabízíme vám spotøební elektroniku veho druhu. Od výrobkù malých i velkých spotøebièù do domácnosti, pøes notebooky, tablety, mobilní telefony a dalí vybavení do kanceláøí a po navigace, fotoaparáty a ostatní produkty vhodné na cesty i pro zábavu.</p>

<p>iroký sortiment&nbsp;výrobkù&nbsp;zahrnuje chytré technologie, ekologické a také úsporné produkty. Díky tomu mùete oèekávat vskutku spolehlivý nákup prvotøídního zboí.</p>

<p>Kromì toho dostanete perfektní servis. Vstøícný a vykolený personál vám na vech prodejnách odbornì poradí a pomùe s výbìrem. Pøijïte si vybrat a dostanete vdy nìco navíc. Staòte se zákazníky Euronics a budeme o vás peèovat!</p>

<p>&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (48, 'Palmknihy.cz - E-knihy a audioknihy', '2015-06-16 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Palmknihy.cz je tradièní èeský prodejce e-knih a audioknih poskytující irokou nabídku knih, která èítá od uèebnic pøes odbornou literaturu po beletrii pro dìti, mláde i dospìlé, ve které si vybere opravdu kadý. Chcete si pøeèíst detektivku, thriller, sci-fi, humornou èi romantickou literaturu nebo se inspirovat cestopisem na Vaí dovolenou a procvièit si na ní cizí jazyky? Na palmknihy.cz naleznete ve v&nbsp;moderní a ekologické podobì.&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (49, 'SushiRoller - Sushi kdykoliv a kdekoliv', '2015-06-27 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>SushiRoller Vám pøináí unikátní patentované balení sushi, díky kterému si mùete vychutnat tuto japonskou pochoutku, ani byste potøebovali stùl, talíø nebo dokonce hùlky. V&nbsp;dnení moderní dobì má kadý z&nbsp;nás èím dál tím ménì èasu. Vìtina se tak snaí èas uetøit, kde jen to jde, a právì èas na jídlo vìtinou idí. Z&nbsp;nezdravé rychlé stravy pak chøadne nae zdraví. Vìøili jsme, e i rychlá strava mùe být zdravá, a proto jsme vymysleli revoluèní balení, které Vám umoní&nbsp;vychutnat si chutné a zdravé sushi kdekoliv!</p>

<p>Ve speciálním balení SushiRoller se skrývá trubièka se sójovou omáèkou a wasabi, která vám jednotlivé kousky sushi dochucuje a posouvá a do úst. Toto balení je jednak naprosto hygienické, jeliko ruce nepøichází do styku s&nbsp;jídlem, a jednak praktické, protoe vám umoòuje vychutnat si vaí oblíbenou pochoutku kdekoliv &ndash; v&nbsp;práci, po cestì èi na nákupech.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (50, 'Puzzle Salads - Salátový bar a kavárna', '2015-06-27 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Puzzle Salads je koncept nabízející kvalitní, rychlé a zdravé jídlo z prvotøídních, sezónních a lokálních surovin. Nae menu se stále mìní podle roèního období a poèasí. Nenabízíme jen mnoství receptur na salát, ale dáváme Vám monost rozhodovat do poslední ingredience o tom, co si do svého salátu namícháte. Mùete si &quot;hrát&quot; se surovinami a skládat si je pøesnì podle Vaeho pøání, chuti a nálady. Chystáme pro Vás kadý den i dalí dobroty, ve vdy domácí a bez pouití jakýchkoliv polotovarù. Pøijïte si sloit ten svùj salát, u se na Vás tìíme.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (51, 'CK Neckermann - Uijte si perfektní dovolenou', '2015-07-19 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nestresujte se s&nbsp;plánováním dovolené. Nechte vae starosti na nás! Jsme jedna z&nbsp;nejvìtích cestovních kanceláøí v&nbsp;Evropì, která má bohaté a dlouholeté zkuenosti. Díky naí mezinárodní spolupráci v&nbsp;rámci koncernu Thomas Cook si u nás mùete vybrat z&nbsp;opravdu iroké nabídky zájezdù za výhodné ceny.</p>

<p>A u preferujete relax na proslunìných pláích, poznávací zájezdy na nejkrásnìjí místa svìta, romantické eurovíkendy, dobrodruné cestování autem na vlastní pìst, výlety do tìch nejúasnìjích zábavních parkù v&nbsp;Evropì nebo aktivnì strávené dovolené na horách u nás najdete ten pravý zájezd!</p>

<p>Léto je v&nbsp;plném proudu, tak neváhejte navtívit ná web jetì dnes a vybrat&nbsp;si napøíklad z&nbsp;extra výhodných last minute zájezdù èi z&nbsp;pøedprodeje lyaøských zájezdù za skvìlé ceny. Vìøíme, e s&nbsp;námi zaijete pohodovou dovolenou, na kterou budete jetì dlouho vzpomínat.&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (52, 'VOLANSKY fashion - Vá svìt spoleèenské módy', '2015-07-23 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Znaèka VOLANSKY fashion je po léta synonymem kvalitní pánské a dámské módy. Pøináíme Vám moderní konfekci vyrobenou v&nbsp;Èeské republice vèetnì iroké nabídky spoleèenských a plesových atù. Sázíme na kvalitní materiály, zpracování a módní støihy za dostupné ceny.</p>

<p>Dámám nabízíme elegantní spoleèenskou a volnoèasovou módu v tìch nejrozmanitìjích støizích. Jedno, jestli sháníte kostýmek na jednání, novou moderní halenku, sukni, kalhoty, aty nebo teplý kabát, u nás si vyberete novou ozdobu Vaeho atníku. Pokud byste se ráda odmìnila nìjakým doplòkem, moná Vás zaujme nìco z naí nabídky kabelek, ál a átkù.</p>

<p>Pro pány máme také pøichystaný iroký sortiment kvalitního obleèení - pánské obleky pro kadou pøíleitost, koile, bundy a kabáty klasických èi sportovních støihù. Na naí prodejnì Vám ochotnì poradíme s výbìrem a vynasnaíme se, abychom Vám co nejvíce výbìr nového obleèení zpøíjemnili.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (53, 'AXA Assistance - Cestovní pojitìní', '2015-07-30 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Díky iroké&nbsp;síti&nbsp;poboèek&nbsp;po&nbsp;celém svìtì vám poskytujeme pomoc témìø kdekoliv na svìtì. Prostøednictvím naí kvalitní nonstop asistenèní sluby se&nbsp;o&nbsp;vás postaráme 24 hodin dennì sedm dní v&nbsp;týdnu, a to vèetnì víkendù&nbsp;i&nbsp;svátkù.</p>

<p>Proè zvolit nae cestovní pojitìní&nbsp;</p>

<ul>
	<li>sjednání bìhem chvilky online v&nbsp;pohodlí domova</li>
	<li>monost&nbsp;i&nbsp;neomezeného krytí léèebných výloh</li>
	<li>celosvìtová sí smluvních zdravotnických zaøízení</li>
	<li>automaticky pojitìná rizika spojená s&nbsp;rekreaèním provozováním bìných sportù</li>
	<li>pojitìní zavazadel</li>
	<li>zvýhodnìná sazba pojistného pro dìti do 18 let.</li>
	<li>výbìr rùzné délky pojitìní</li>
	<li>monost&nbsp;pøipojitìní rizikových sportù</li>
	<li>pojitìní se automaticky vztahuje na studijní, turistické a pracovní administrativní cesty</li>
</ul>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (54, 'Harfa Sport - Servis kol', '2015-08-01 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Jsme pièkový obchod a servis pro cyklisty srdcem a duí. Kromì nejkvalitnìjího sortimentu a pùjèovny kol,&nbsp;doplòkù a&nbsp;cyklo-obleèení, se dokonale postaráme o vae kolo.</p>

<p>Poskytujeme celkem pìt druhú servisních balíèkù pro&nbsp;kola.&nbsp;Nejoblíbenìjí servisní balíèek je tzv. &quot;Profík&quot;. Obsahuje základní&nbsp;servis,&nbsp;výmìnu lanek a bowdenù, kontrolu a docentrování kol, vyèitìní a promazání støedu, hlavového sloení a nábojù. Taky kompletní rozebrání, seøízení a naletìní.</p>

<p>Pøivezte svoje kolo, tìíme se na vás!&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (55, 'Activáèek.cz - kolní potøeby', '2015-08-07 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Activáèek.cz je e-shop s irokou nabídkou kvalitních kolních a výtvarných potøeb,&nbsp;aktovek, kolních a&nbsp;outdoorových&nbsp;batohù. Na výbìr máte ze iroké&nbsp;kály&nbsp;znaèek jako Maped, Stabilo, Koh-i-noor, Centropen, Zdravá lahev<span style="color:rgb(77, 77, 77); font-family:helvetica neue,arial,helvetica,sans-serif; font-size:14px">&reg;</span>, Boll a jiné. Nabízené zboí máme skladem, zásilky expedujeme nejpozdìji do dalího pracovního dne. Z naí nabídky si mùete v Praze vybrat také na dvou kamenných prodejnách. U nás svého koláka vybavíte od Aktovky po Zmizík!&nbsp;&nbsp;&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (56, 'krmeni.cz - To nejlepí pro vae mazlíèky', '2015-08-13 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>U nás naleznete iroký sortiment kvalitních krmiv pro vae mazlíèky. Dále zde naleznete chovatelské potøeby jako pamlsky, hraèky,&nbsp;kosmetiku, vitamíny, obojky, pelechy a dalí. Vechno zboí je produktem kvalitních&nbsp;znaèek jako PRO PLAN, ROYAL CANIN, BRIT, HILL&acute;S, ACANA.&nbsp;S výbìrem vhodného produktu Vám rádi pomùeme na naí poradenské lince od 6:30 do 19:30. Dopravné a balné od 700,-Kè neúètujeme. Vechna krmiva máme skladem a expedujeme je do 24 hodin.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (57, 'Pánské obleèení Antony Morato', '2015-09-23 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Fashion Therapy je&nbsp;butik pánského znaèkového designového obleèení&nbsp;italské znaèky Antony Morato, která je prùkopníkem éry chytrého luxusu, èerpajicí inspiraci z vysoké módy a dínových trendù. Antony Morato záleí na kvalitì&nbsp;a&nbsp;skvìle kombinuje rùzné tvary, barvy a styly, zatímco zanechává svojí vlastní kosmopolitní a drzou identitu.</p>

<p>Butik Fashion Therapy je zamìøen&nbsp;pøedevím na pánskou módu, která je specialitou italských návrháøù a je zároveò&nbsp;exkluzivním distributorem znaèky Royal Socks v Èeské republice. Royal Socks jsou vyrobené podle nejvyích standardù kvality v souladu s principy fair traide, vyuitím odpovìdných výrobních postupù a dodrováním pøísných ekologických norem.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (58, 'Bontonland - Nejvìtí prodejce hudby, filmù a hudebních dárkù', '2015-09-21 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Spoleènost Bontonland pøedstavuje nejvìtí èeský maloobchodní øetìzec prodejen s kompletním sortimentem hudebních a filmových nosièù. Nae specializované oddìlení vinylových desek má v repertoáru více ne 4 000 titulù k dispozici skladem. Nabízíme i doplòkové zboí jako plakáty, trièka, náivky a mnoho jiného pro vechny opravdové hudební a filmové fanouky. V souèasné dobì firma provozuje 12 kamenných prodejen napøíè celou republikou a také internetový obchod na adrese <a href="http://www.bontonland.cz/">bontonland.cz</a>.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (59, 'Pralinkový Club - Netradièní chutì, luxusní pralinky', '2015-09-23 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Jsme Pralinkový Club, tedy výhradní zastoupení nìmecké firmy Confiserie Coppeneur na èeském trhu.&nbsp;Naím cílem je prezentovat na trhu vdy inovativní produkty nejvyí kvality. Souèasnì prezentujeme exkluzivní gurmánskou kulturu s velkým dùrazem na design. Vae chutì tìíme prostøednictvím <a href="http://pralinkovyclub.cz/">internetového obbchodu</a> a kamenného obchodu, který se nachází v prostorách zahrady Slovanského domu v Praze 1. Obrate se na nás v pøípadì zájmu o velkoobchodní prodej, gastronomický prodej, èi v pøípadì jiné spolupráce, napø. firemní akce nebo svatby. Rádi Vám pøipravíme produkty dle Vaeho pøání.</p>

<p>Vìøíme, e ochutnáte a oceníte kvalitu, èerstvost, rùznorodost a nápaditost naich produktù.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (60, 'LevnaTramvajenka.cz - Jezdìte praskou MHD jen za 384 Kè mìsíènì', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p><a href="https://www.levnatramvajenka.cz/">Levnatramvajenka.cz</a>&nbsp;Vám normálnì&nbsp;umoòuje jezdit praskou MHD jen za 399 Kè mìsíènì. U-etøete z této èástky&nbsp;navíc jetì dalích 15 Kè&nbsp;kadý mìsíc. Oproti&nbsp;mìsíèním kuponùm s námi tedy za rok uetøíte&nbsp;1992 Kè a&nbsp;získáte dalí výhody. Nejen, e nemusíte kadý mìsíc stát u okénka a hlídat si platnost kuponù, ale navíc si jako ná klient mùete pùjèit a na 9 dnù anonymní Opencard pro Vai rodinu nebo pøátele.</p>

<p>Od aktivovace nabídky&nbsp;platí sleva na&nbsp;celý rok. Mùete tedy uetøit a 180 Kè za rok.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (61, 'Gentleport - Ve pro gentlemany', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Gentleport je obchod zamìøený pøevánì na pánské doplòky a kosmetiku z Velké Británie. Dováí do Èeské republiky tradièní britské znaèky, které si zachovaly vysoký podíl ruèní výroby a stále se vyrábí na britských ostrovech. Obchod nestaví pouze na iroké nabídce zboí, ale také na individuálním pøístupu a poradenství. V nabídce Gentleportu jsou britské taky a brany znaèek The Leather Satchel Co., Brady Bags, prémiové taky Tusting a australské penìenky Bellroy. Dále pak tradièní britská kosmetika od Piccadilly Shaving Co., Taylor of Old Bond Street, The Brighton Beard Company, Mr. Natty a nìmecká preciznost od Mühle a Oak. Dalí zajímavostí v nabídce jsou britské høebeny Kent, které pouívá anglická královská rodina. Obchod nabízí také novozélandské detníky znaèky Blunt.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (62, 'ALDO - Boty a doplòky', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Tuto sezónu nás kanadská znaèka ALDO svou kampaní &quot;Inspiration is everywhere&quot; vede k hledání inspirace mezi svými pøáteli a v kadodenním ivotì. Poslední kolekce obuvi, kabelek, taek a módních doplòkù je prùvodcem stylu pro osobité eny a mue.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (63, 'Mujsport - Lye, kola, servis', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Jsme lyaøská a cyklistická speciálka, která si dala jasný cíl &ndash; doporuèit a pomoci Vám vybrat ty nejlepí lye, kola a jakékoliv doplòky k nim. Prodáváme provìøené sportovní vybavení renomovaných znaèek jako jsou Atomic, Bianchi,&nbsp;Scott nebo Head.</p>

<p>Lye a kola jsou èím dál tím sofistikovanìjí a výbìr toho správného modelu se stává více a více sloitìjím. Málokdo má èas a chu proèítat vemoné katalogy nebo recenze a zjiovat si informace sám. Kadý má vak monost pøijít k&nbsp;nám na prodejnu a nechat si s&nbsp;výbìrem pomoci od naich prokolených profesionálù.&nbsp;Jsme tady právì od toho, abychom Vám jednodue a srozumitelnì vysvìtlili výhody jednotlivých øeení a pomohli s&nbsp;výbìrem nejvhodnìjího modelu.</p>

<p>Naím cílem je poskytnout klientovi maximální servis nejen pøi výbìru toho správného sportovního vybavení, ale i po jeho zakoupení. Pøineste nám Vae lye nebo kolo&nbsp;a my vám je profesionálnì, kvalitnì a rychle opravíme.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (64, 'SCANquilt - Povleèení a bytový textil', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Naí snahou je pøináet inspiraci, hravost a pohodu do Vaich domovù. Peèlivì proto vybíráme a dotváøíme kolekce pøedních svìtových návrháøù a pøináíme moderní i tradièní vzory na loní povleèení v barevnostech, které se Vám&nbsp;líbí. Jejich nejirí nabídku více ne 600 vzorù naleznete v prodejnách SCANquilt.</p>

<p>Nealergenní pøikrývky a poltáøe SCANquilt jsou více ne dvacet let vyrábìny s nejvyí péèí. Stálou oblibu si získaly pro svoji trvanlivost, pøíjemný omak a vysokou kvalitu pouívaných materiálù i zpracování. Vìøíme, e se nám podaøí naplnit Vae pøedstavy o vkusném a útulném domovu.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (65, 'Pilulka.cz - Vae online lékárna', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Pilulka.cz je online lékárna s irokým sortimentem lékù, výivových doplòkù, dìtské výivy a kojeneckých potøeb èi kosmetických a drogistických produktù.</p>

<p>Naím cílem je nabídnout Vám monost nákupu lékárenského a pøidrueného sortimentu a to z pohodlí Vaeho domova. Pilulka.cz si zakládá na odbornosti a lékárny do projektu Pilulka.cz jsou vybírány selektivnì na základì plnìní pøísných kvalitativních parametrù. Navtivte ná e-shop na&nbsp;<a href="http://www.pilulka.cz">www.pilulka.cz</a>&nbsp;a vyberte si to nejlepí pro Vae zdraví.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (66, 'Le Burger - smíchovské burgery, které mají styl', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>V restauraci Le Burger nabízíme tradièní americkou kuchyni spojenou s rafinovaností francouzských chutí. Na naem jídelním lístku najdete kromì klasických receptù i burgery, které Vás svým sloením tak trochu pøekvapí. A jsme si jistí, e to bude pøekvapení pøíjemné. Otevøená kuchynì, monost upravit si èást jídel dle vlastní chuti, nejkvalitnìjí èerstvé suroviny, zkuený tým a pøíjemné, jednoduché prostøedí moderní restaurace, to ve by Vám mìlo pøinést nevední kulináøský záitek.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (67, 'ALDO - Boty a doplòky', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Tuto sezónu nás kanadská znaèka ALDO svou kampaní &quot;Inspiration is everywhere&quot; vede k hledání inspirace mezi svými pøáteli a v kadodenním ivotì. Poslední kolekce obuvi, kabelek, taek a módních doplòkù je prùvodcem stylu pro osobité eny a mue.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (68, 'Art Optic - Oèní optika', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Pùsobíme na èeském optickém trhu ji od roku 2005 a nabízíme iroký sortiment dioptrických i sluneèních brýlí. Právì díky dlouhodobé zkuenosti v oboru poskytujeme naim klientùm pouze&nbsp;ty nejkvalitnìjí sluby.&nbsp;Disponujeme také velkým výbìrem plastových a kovových brýlových obrub rùzných znaèek. Obruby osazujeme pouze&nbsp;kvalitními èoèkami&nbsp;znaèky Hoya.&nbsp;Pøíjemné prostøedí naich prodejen a hlavnì vykolený profesionální personál zaruèují Vai stoprocentní spokojenost.&nbsp;</p>

<p>Potøebujete poradit&nbsp;èi pomoci s vaím zrakem? Pak nás neváhejte navtívit v jedné z naich prodejen. Na základì&nbsp;dodaných dioptrických hodnot Vám zhotovíme brýle&nbsp;maximálnì&nbsp;do týdne.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (69, 'Království eleznic - Úasný malý svìt', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nevíte kam se vydat o víkendu, èi jak zabavit sebe i své dìti? Máme pro Vás øeení! Pøijïte do Království eleznic, kde si kadý mùe nalézt to své - od vláèkù, pøes modely skuteèných míst v ÈR a po ty nejvìtí lahùdky.</p>

<p>V pøípadì, e nás navtívíte, se Vám naskytne jedineèný pohled na modelovou krajinu protkanou eleznièní sítí s mnoha vychytávkami. Nae modely jezdí, svítí, otevírají se, reagují na støídání denního a noèního cyklu a nìkteré jsou uzpùsobené tak, abyste je mohli sami ovládat!</p>

<p>&nbsp;To ovem není vechno, Království eleznic disponuje øadou doplòkových expozic, nauèných panelù a øadou interaktivních prvkù. Samozøejmostí je i monost malého obèerstvení a zázemí pro malé v podobì hracího koutku.&nbsp;Tak neváhejte a navtivte nás!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (70, 'Puzzle Salads - Salátový bar a kavárna', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Puzzle Salads je koncept nabízející kvalitní, rychlé a zdravé jídlo z prvotøídních, sezónních a lokálních surovin. Nae menu se stále mìní podle roèního období a poèasí. Nenabízíme jen mnoství receptur na salát, ale dáváme Vám monost rozhodovat do poslední ingredience o tom, co si do svého salátu namícháte. Mùete si &quot;hrát&quot; se surovinami a skládat si je pøesnì podle Vaeho pøání, chuti a nálady. Chystáme pro Vás kadý den i dalí dobroty, ve vdy domácí a bez pouití jakýchkoliv polotovarù. Pøijïte si sloit ten svùj salát, u se na Vás tìíme.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (71, 'sportobchod.cz - Tvùj nejlepí spoluhráè!', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Prodáváme vybavení na tenis, badminton, squash, florbal, fotbal, hokej, inline a zimní brusle nebo nosièe a boxy na auto.&nbsp;Jsme sportovci, naim sportùm rozumíme a rádi vám pomùeme s výbìrem. Zboí sami pouíváme, pravidelnì testujeme a na pøípravì produktù si dáváme záleet. Svìøte svá sportovní pøání odborníkùm a my se o vás&nbsp;postaráme&nbsp;pøed nákupem i po nìm.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (72, 'Nordsee - Uijte si rybu èerstvou jako u moøe', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>NORDSEE dává slovu fastfood zcela nový rozmìr. V naí restauraci Vám nabízíme moøské ryby a plody moøe v té nejlepí kvalitì. Pøesvìdète se sami, e se u nás najíte nejen rychle, ale zároveò i chutnì a zdravì.<br />
&nbsp;<br />
Pøijïte ochutnat to nejlepí z ryb a darù moøe do nové restaurace NORDSEE. Stejnì jako jinde ve svìtì, i u nás si NORDSEE získává stále vìtí oblibu prvotøídní kvalitou a èerstvostí svých produktù, je jsou vítanou alternativou k bìnému kadodennímu stravování. V iroké nabídce naleznete ryby peèené, uzené i grilované, plody moøe, køehké saláty, køupavé bagety a nepøeberné mnoství pøíloh, lahodných omáèek a dresinkù, které si sami vyberete a zkombinujete dle momentální chuti a nálady.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (73, 'CAFÉPAVLINA - Oáza klidu v centru Prahy', '2016-02-21 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Velice rádi bychom Vás pozvali k pøíjemnému posezení do naí kavárny CAFÉPAVLINA. Èeká na Vás krásné prostøedí, plno èerstvých kvìtin a vùnì kvalitní èerstvé italské kávy. K té Vám mùeme nabídnout zákusky, dorty a speciality vyrobené s láskou podle vyzkouených domácích receptùr. Pro ty hladovìjí máme vdy pøipraveny pøedkrmy, polévky, saláty, tìstoviny a speciality na grilu.</p>

<p>Zalézá Vám ji zima za nehty? Pøijïte ji k nám stylovì vyhnat napøíklad vynikající horkou èokoládou Coppeneur nebo skvìlou kávou Julius Meinl 1862 Premium.</p>

<p>Zajímalo by Vás, jaké pochoutky máme pro Vás zrovna dnes pøipraveny? Pak se podívejte na jídelní a nápojový lístek na naí stránce <a href="http://www.cafepavlina.cz">www.cafepavlina.cz</a></p>

<p>&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (74, 'Liftago - Nejpopulárnìjí praská taxi aplikace', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<ul>
	<li>Nejpopulárnìjí praská taxi aplikace</li>
	<li>Doba pøistavení v&nbsp;centru Prahy do 5&nbsp;minut</li>
	<li>Objednání jízdy pøes mobilní aplikaci (iOS a Android)</li>
	<li>Sami si vybíráte vùz i&nbsp;øidièe</li>
	<li>Stále vidíte aktuální cenu, trasu i&nbsp;èas</li>
</ul>

<p>Objevte slubu&nbsp;Liftago, kterou ji vyuívají tisíce Praanù. Liftago je revoluèní sluba, která mìní svìt taxíkù v&nbsp;pøíjemný záitek. Po staení aplikace z&nbsp;Google Play nebo Apple AppStore si mùete vybrat auto, øidièe i&nbsp;cenovou hladinu dle svého&nbsp;gusta. S&nbsp;mobilní aplikaci Liftago máte svobodnou volbu. Svou jízdu navíc máte pod kontrolou. Sledovat mùete aktuální cenu, trasu i&nbsp;èas, Liftago je s&nbsp;vámi po celou dobu&nbsp;jízdy.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (75, 'Palmknihy.cz - E-knihy a audioknihy', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Palmknihy.cz je tradièní èeský prodejce e-knih a audioknih poskytující irokou nabídku knih, která èítá od uèebnic pøes odbornou literaturu po beletrii pro dìti, mláde i dospìlé, ve které si vybere opravdu kadý. Chcete si pøeèíst detektivku, thriller, sci-fi, humornou èi romantickou literaturu nebo se inspirovat cestopisem na Vaí dovolenou a procvièit si na ní cizí jazyky? Na palmknihy.cz naleznete ve v&nbsp;moderní a ekologické podobì.&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (76, 'Biooo.cz - Biokosmetika a ekodrogerie', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Biooo.cz není jenom pro zatvrzelé zastánce pøírodní kosmetiky, vybere si u nás opravdu kadý! A snadno zjistí, e pøírodní kosmetika nejsou nudné, nezajímavé a nefunkèní produkty. Naopak! Pøírodní kosmetika a ekodrogerie jsou hravé, voòavé a hlavnì oproti konvenèním výrobkùm neobsahují ádné drádivé chemické látky! V naem irokém sortimentu máte na výbìr z mnoha znaèek v rùzných cenových relacích. Uspokojíte tak hlad po pøírodní kosmetice, a u jste chudý student nebo nároèná maminka hledající péèi pro své ratolesti.</p>

<p>Biooo.cz se neomezuje výhradnì na kosmetiku. Vybavíte u nás celou koupelnu i domácnost, seenete zdravé potravinové doplòky i krmivo pro své ètyønohé kamarády a navrch mùete pøihodit i pøírodní parfém. Pøesvìdète se, e pøírodní a bio produkty nejsou výhradou pouze alternativních jedincù. Pøírodní produkty nejsou alternativou, pøírodní produkty jsou rovnocenné nabídce v drogeriích a mnohdy jsou jetì mnohem lepí!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (77, 'TOM TAILOR', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>TOM TAILOR prezentoval svou novou identitu v srpnu 2014. S dalím rozvojem znaèka TOM TAILOR posiluje svou mezinárodní presti jako &quot;New Urban Player&quot;. Nový postoj znaèky vyjadøuje slogan, který apeluje na sebevìdomé skupiny spøíznìné s ivotním stylem a módou: Life is a Game, Play it, Be Confident, Dress in Style.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (78, 'Hooters - Restaurace & Sport bar', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>V restauracích Hooters návtìvníci naleznou uvolnìnou atmosféru a ideální prostøedí pro sledování sportovních událostí, poøádaní firemních akcí nebo jen pro posezení s pøáteli. Mùete se tìit na èeské a americké speciality, ale také na Plzeòský Prazdroj èepovaný pøímo z tanku. Kromì kvalitního jídla, pití a sportovní atmosféry jsou pro Hooters typické i tzv. Hooters Girls, které jsou naí chloubou a vytváøí skvìlé prostøedí.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (79, 'Yobar - Jogurtový bar Radlické mlékárny', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Frozen Yogurt pøedstavuje zdravou svaèinu, obìd nebo veèeøi, jako i zdravou alternativu k rùzným dezertùm èi jiným potravinám kategorie rychlého obèerstvení. Volba Frozen Yogurtu je volbou èerstvosti, chutnosti a poskytuje lahodné obèerstvení vem vìkovým skupinám bez nutnosti kompromisu.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (80, 'Víno Výhodnì - Exploze kvality a výjimeèných cen!', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Specialista na prodej vysoce kvalitních vín za diskontní ceny <a href="http://vinovyhodne.cz">www.vinovyhodne.cz</a> pøichází kadou støedu s novou nabídkou vín, u kterých garantuje nejlepí ceny na svìtì. K dispozici má&nbsp;10 sommeliérù, kteøí pro Vás hledají ta nejlepí vína z celého svìta za tu nejvýhodnìjí cenu.&nbsp;</p>

<p>Sortiment v tuto chvíli obsahuje více ne 300 druhù vín, ze kterých si vybere kadý milovník vína. Neváhejte tedy vyuít tuto jedineènou pøíleitost, pøi které navíc získáte dopravu po celé ÈR zdarma. V Praze pøi objednání do 12:30 doruèení jetì v ten samý den. Ve zbytku ÈR hned druhý den po objednání.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (81, 'krmeni.cz - To nejlepí pro vae mazlíèky', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>U nás naleznete iroký sortiment kvalitních krmiv pro vae mazlíèky. Dále zde naleznete chovatelské potøeby jako pamlsky, hraèky,&nbsp;kosmetiku, vitamíny, obojky, pelechy a dalí. Vechno zboí je produktem kvalitních&nbsp;znaèek jako PRO PLAN, ROYAL CANIN, BRIT, HILL&acute;S, ACANA.&nbsp;S výbìrem vhodného produktu Vám rádi pomùeme na naí poradenské lince od 6:30 do 19:30. Dopravné a balné od 499,-Kè neúètujeme. Vechna krmiva máme skladem a expedujeme je do 24 hodin.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (82, 'VITALAND - ProFitness Store', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Jste vánivými sportovci a nevíte, kde nakoupit ty správné produkty pro aktivní a zdravý ivotní styl? Sportovní výivu a doplòky stravy seenete ve <strong>VITALAND ProFitness Store</strong>, nejvìtí maloobchodní síti s doplòky stravy a sportovní výivou v Èeské republice, kde kromì sportovní výivy a doplòkù stravy poøídíte i speciální fitness obleèení nebo mení sportovní vybavení.</p>

<p>Ve <strong>VITALAND </strong>si vyberete z iroké nabídky proteinù, gainerù, aminokyselin, proteinových a müsli tyèinek, spalovaèù, energetických gelù, iontových a regeneraèních nápojù, koktejlù, prostøedkù na hubnutí, doplòkù stravy na klouby, imunitu, detoxikaci a spousty dalích produktù, které podpoøí vá zdravý ivotní styl.</p>

<p>Nakupovat&nbsp;mùete aktuálnì ve 25 prodejnách po celé Èeské republice a online na e-shopu <a href="http://www.vitaland.cz">www.vitaland.cz.</a></p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (83, 'Centrum Fotokoda - Záchytný bod pro fotografy', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p style="text-align:justify">Centrum Fotokoda &ndash; to jsou komplexní fotografické sluby pod jednou støechou. Profesionálnì vykolení prodejci poradí s výbìrem fotografické techniky jak zaèínajícím, tak profesionálním fotografùm. Zákazníci naleznou irokou kálu poskytovaných slueb a produktù nabízených v kamenné prodejnì i prostøednictvím internetového obchodu&nbsp;<a href="http://www.fotoskoda.cz">www.fotoskoda.cz</a>.</p>

<p style="text-align:justify">Obchod a sluby vak nejsou jediným smìrem, kterým se Centrum Fotokoda ubírá. Jeho èinnost se zamìøuje také na oblast vzdìlávání a kultury. Centrum Fotokoda ve spolupráci s øadou partnerù poøádá a podporuje fotografické kurzy, odborné workshopy, fotografické výstavy i soutìe. Centrum Fotokoda tvoøí spojením obchodu, slueb a kultury jedno z nejvìtích a nejkrásnìjích fotografických center v Evropì a navazuje tak na tradici zakladatele fotografického domu Jana Langhanse.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (84, 'French Connection - Dámská móda a doplòky', '2015-10-25 01:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Od zaloení v&nbsp;roce 1972 se French Connection soustøedí na design kvalitní módy pro sebevìdomé eny se smyslem pro styl. Návrháøi této britské znaèky vytváøejí unikátní nestárnoucí kousky vyrobené&nbsp;vdy z&nbsp;kvalitních materiálù. Svéráznì ignorují udávané prchlivé trendy a soustøedí se na tvorbu unikátních odìvù. Ve své nepøedvídatelnosti vak nikdy neopomíjejí enskost a praktiènost potøebnou pro kadodenní noení.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (85, 'Malvík - Pro dìti malé i vìtí', '2015-10-25 01:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>V Malvíku najdete opravdu ve, co budoucí i stávající rodièe potøebují pro své dìti. Nabízíme pouze kvalitní zboí a u prémiových èi ekonomických znaèek. Velkou výhodou je i&nbsp;velké mnoství výrobkù, které seenete pouze u nás.</p>

<p>Na naem e-shopu&nbsp;<a href="http://www.malvik.cz">www.malvik.cz</a> pro Vás máme na skladì&nbsp;pøipraveno&nbsp;více ne ètyøicet tisíc výrobkù. Pokud vak radìji vybíráte zboí osobnì, mùete navtívit ná obchod v&nbsp;Hostivici, který je se svojí plochou pøes 1200 metrù ètvereèních nejvìtí prodejnu zboí pro dìti v&nbsp;Èeské republice.</p>

<p>Pokud nechcete za dìtské potøeby pøíli utrácet, ale pøesto chcete kvalitní a provìøené zboí, doporuèujeme sledovat nae nabídky bazaru, kde prodáváme zboí pouze v perfektním stavu&nbsp;se známým pùvodem. I toto bazarové zboí mùete objednat pohodlnì pøes ná e-shop.&nbsp;</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (86, 'iSetos - Vyberte si nový iPhone nebo MAC', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Kde jinde si poøídit nový iPhone nebo MAC&nbsp;ne u specializovaného obchodu, který se jako jeden z mála v Èeské republice honosí statutem Apple Premium Reseller. Nai kolení specialisté Vám zodpovìdí vechny otázky nejen&nbsp;ohlednì nejnovìjího modelu iPhone 6s nebo MAC. Vìøíme, e nákupem vztah mezi obchodem a zákazníkem nekonèí, ale teprve zaèíná. Právì proto vám vae nové zaøízení nastavíme, pøeneseme na nìj vae data a vysvìtlíme vám jeho funkce.&nbsp;<strong>Telefony iPhone</strong>&nbsp;<strong>6s a 6s Plus</strong>&nbsp;nyní v iSetos&nbsp;<strong>se slevou 2%</strong>! <strong>Ostatní telefony iPhone</strong> do øady 6s se <strong>slevou 5%&nbsp;</strong>a <strong>MACY</strong> se <strong>slevou 11%.</strong></p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (87, 'Answear - Módní e-shop', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Navtivte módní e-shop <a href="http://www.answear.cz">www.answear.cz</a>.&nbsp;Najdete zde ty nejnovìjí kolekce od více ne 200 svìtových znaèek! Navíc pøi nákupu nad 1000 Kè doruèení do pøístího dne a potovné za pøípadné vrácení zdarma.&nbsp;Za kadý nákup navíc sbíráte body do vìrnostního programu Answear club, které mùete vyuít na dalí nákup! Novì jsme pro vás v centru Prahy otevøeli výdejní místo, kde si objednané kousky mùete pohodlnì vyzkouet!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (88, 'Bibelot - Znaèkové pero Parker, Waterman, Lamy jako dárek', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Inspirujte se svìtem znaèkových psacích potøeb PARKER, WATERMAN, LAMY a&nbsp;diáøù&nbsp;Filofax. Vyberte si ze iroké nabídky ten správný model, který bude nejlépe vystihovat Vai osobnost nebo bude nejlépe vyhovovat jako dárek pro nìkoho blízkého èi obchodního partnera.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (89, 'Comfor - Specialista na notebooky a IT techniku', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Comfor, tradièní sí s&nbsp;elektronikou, Vám nabízí milý, ochotný a kvalifikovaný personál, cenovou dostupnost a hlavnì iroký sortiment výrobkù od poèítaèù a poèítaèového pøísluenství pøes tablety, mobilní telefony, domácí spotøebièe, televizory a po software a hry.</p>

<p>Comfor Vám poskytne pomoc nejenom pøi výbìru nového zboí, ale i pøi problémech s Vaí stávající technikou. Nabízíme toti rozsáhlé servisní sluby vèetnì odvirování poèítaèù, èistìní, softwarových optimalizací, reinstalací, hardwarových oprav èi oprav displejù u Vaich mobilù a tabletù.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (90, 'Activáèek.cz - kreativní dárky s nápadem', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p><a href="http://activacek.cz/">Activáèek.cz</a> je e-shop s irokou nabídkou kvalitních kolních a výtvarných potøeb èi&nbsp;kreativních sad pro dìti ji od 18 mìsícù. Hledáte inspiraci na dárek, který potìí a zároveò zabaví? Sady razítek AladinE na papír, textil a na scrapbooking nebo nádherné sady Djeco francouzských návrháøù, se kterými si mùete malovat, pískovat, lepit a vykrabávat, jsou tou správnou volbou.</p>

<p>Nabízené zboí máme opravdu skladem, zásilky expedujeme nejpozdìji následující pracovní den. Z naí nabídky si mùete v Praze vybrat také ve 2 kamenných prodejnách, a to v OC Letòany nebo ve Vinohradském Pavilonu.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (91, 'TIMO - Svùdné pohlazení', '2015-11-10 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Sháníte kvalitní i atraktivní, pohodlné i svùdné spodní prádlo, plavky nebo pyamo? Vyuijte slevovou&nbsp;nabídku spoleènosti TIMO, pøedního èeského výrobce.</p>

<p>Nabízíme Vám irokou nabídku:</p>

<p>&bull;&nbsp;Spodního prádla vel. A a K<br />
&bull;&nbsp;Kolekce noèního prádla<br />
&bull;&nbsp;Pyámka bavlna, modal, flanel<br />
&bull;&nbsp;Noèní koile &ndash; bavlna, modal, krajka<br />
&bull;&nbsp;Spodní koilky z bavlny a modalu</p>

<p>Navtivte TIMO a vyberte si kvalitu a nadèasovou eleganci za pøijatelné ceny!</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (92, 'RE-FIT FITNESS - Vás dostane do formy', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Nový koncept v ÈR, kde naleznete intenzivní,&nbsp;silový a relaxaèní tréning. Studio RE-FIT WORKOUT je o High Intensity Interval Training-u, pøi kterém si procvièíte a zformujete celé tìlo a zlepíte kondici.&nbsp;Kadý den procvièíte jinou partii tìla, kdy v&nbsp;prùbìhu lekcí støídáte stanovitì na bìhacích pásech a speciálních stepperech, kde posilujete.</p>

<p>Ve probíhá v tlumené atmosféøe, kterou povzbuzují&nbsp;barevná svìtla a pulsující hudba. Tato úasná kombinace s podporou trenéra Vás povzbudí k dosaení toho nejlepího výkonu.&nbsp;Po cvièení si navíc mùete dopøát relaxaci v&nbsp;saunì nebo na masái.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (93, 'Hlídaèky.cz - Stráný andìl Vaich ratolestí', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Vyráíte do divadla, za zábavou èi na návtìvu a sháníte nìkoho, kdo se Vám postará o dìti? Nechcete si k sobì domu poutìt nìkoho cizího, o kterém nic nevíte? Netrapte se a nehledejte dále, na <a href="https://www.hlidacky.cz">www.hlidacky.cz</a> jste na správné adrese! Na naem webu si mùe vybrat z více ne ètyø tisíc chùv, z nich mnoho má hodnocení od ostatních rodièù a ovìøení pøes slubu mojeID. Na naem webu také naleznete manuál pro rozhovor s&nbsp;potenciálními uchazeèkami, na co si dát pozor pøi prvním hlídání a jiné zajímavé tipy.</p>

<p>Jste èasovì vytíeni a nezbývá Vám èas na úklid Vaí domácnosti? I s tímto problémem se na nás mùete obrátit a vybrat si zde <a href="https://www.hlidacky.cz/uklid">www.hlidacky.cz/uklid</a>&nbsp;Vaí hlídaèku na úklid.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (94, 'Dermacol - Kompletní nabídka nejúspìnìjí èeské kosmetiky', '2015-10-19 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Pùvodní èeská kosmetika Dermacol vznikla v&nbsp;roce 1966 ve filmových barrandovských ateliérech spojením odborníkù&nbsp;na filmový make-up a dermatologù z&nbsp;Ústavu lékaøské kosmetiky. S&nbsp;láskou ke kráse mìníme svìt ji témìø 50 let!</p>

<p>Na naem e-shopu <a href="http://www.dermacol.cz">www.dermacol.cz</a>&nbsp;na vás èeká kompletní nabídka dekorativní, pleové a tìlové kosmetiky. Vybírat si mùete z&nbsp;250 barev lakù na nehty, 198 barev oèních stínù, 84 barevných leskù a rtìnek, 68 barev make-upù, 10 vùní Aroma Ritual...</p>

<p>Pokud chcete èerpat výhody dlouhodobì, registrujte se na naem e-shopu. Budeme vás pravidelnì informovat o vech pøipravovaných akcích a novinkách.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (95, 'Ellissi - èeské perkaøství s tradicí', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Máte smysl pro krásu a estetiènost? Pøijïte se inspirovat do perkaøské dílny Ellissi pøímo v&nbsp;centru Prahy. &nbsp;</p>

<p>Ve vzácných klenotech perkaøství Ellisi jsou ukryta&nbsp;tajemství dlouhovìkosti a neznièitelnosti. Okouzlí Vás jejich elegance a pièkové zpracování s&nbsp;citem pro design. perky jsou vyrábìné v&nbsp;první øadì ze vzácných kovù a zdobené pravými drahokamy&nbsp;a smaltem.</p>

<p>Díky pièkové kvalitì materiálù,&nbsp;mistrovské øemeslné práci vysoce profesionálních zlatníkù a vyuití nových technologií, &nbsp;dokáe perkaøství Ellissi uspokojit Vae nejnároènìjí pøání.</p>

<p>Na perky Ellissi se navíc&nbsp;vztahuje doivotní servis a záruka a ke kadému perku patøí i designová krabièka s&nbsp;certifikátem.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (96, 'Autopùjèovna Sixt - Pronájmy vozidel se 100-letou tradicí', '2015-11-07 23:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Autopùjèovna Sixt je pøední mezinárodní poskytovatel pronájmù vozidel. Ve vozovém parku klademe dùraz pøedevím na kvalitu a bezpeènost. Ná vozový park se skládá z vozidel pøedních svìtových znaèek jako Mercedes-Benz, BMW, Audi, Volkswagen, koda, Seat, Hyundai a Opel. U autopùjèovny Sixt nenaleznete vozy starí jednoho roku a nájezdem vyím ne 60 tisíc km (pouze s výjimkou dodávek). Kromì bìných typù vozidel vech velikostí disponujeme také elektrovozy Smart ED, elektrickými&nbsp;skútry èi vozidly&nbsp;s pohonem na zemní plyn.</p>

<p>Autopùjèovna Sixt kromì pronájmù vozidel poskytuje i sluby operativního leasingu a limousine servisu -pronájem vozù s øidièem.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (97, 'AXA Assistance - Cestovní pojitìní', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Díky iroké&nbsp;síti&nbsp;poboèek&nbsp;po&nbsp;celém svìtì vám poskytujeme pomoc témìø kdekoliv na svìtì. Prostøednictvím naí kvalitní nonstop asistenèní sluby se&nbsp;o&nbsp;vás postaráme 24 hodin dennì sedm dní v&nbsp;týdnu, a to vèetnì víkendù&nbsp;i&nbsp;svátkù.</p>

<p>Proè zvolit nae cestovní pojitìní&nbsp;</p>

<ul>
	<li>sjednání bìhem chvilky online v&nbsp;pohodlí domova</li>
	<li>monost&nbsp;i&nbsp;neomezeného krytí léèebných výloh</li>
	<li>celosvìtová sí smluvních zdravotnických zaøízení</li>
	<li>automaticky pojitìná rizika spojená s&nbsp;rekreaèním provozováním bìných sportù</li>
	<li>pojitìní zavazadel</li>
	<li>zvýhodnìná sazba pojistného pro dìti do 18 let.</li>
	<li>výbìr rùzné délky pojitìní</li>
	<li>monost&nbsp;pøipojitìní rizikových sportù</li>
	<li>pojitìní se automaticky vztahuje na studijní, turistické a pracovní administrativní cesty</li>
</ul>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (98, 'Branáøství R. Tlustý a spol. - Poctivá èeská práce', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>U Vás nebaví záplava nekvalitních asijských výrobkù mizivé kvality? Chtìli byste obdarovat sebe nebo své<strong> </strong>blízké kvalitním èeským výrobkem, který Vám bude jetì dlouho dìlat radost? Zde jste na správném místì! V Branáøství R. Tlustý a spol. vyrábíme tradièními postupy z kvalitních materiálù koené výrobky, na které díky svému zpracování dokáeme dát doivotní záruku. Vyberte si z mnoha barev kùe, ití, podívek, spon nebo tøeba kapsy navíc, èi rabu. Ve na míru, pøesnì podle Vás.</p>

<p>Vechny výrobky jsou originály, vyrobené s láskou a pokorou k materiálu, ruènì a za pouití technik, kterými se pracovalo po staletí. Ve je vyrobeno tak, aby Vám výrobky od firmy Branáøství R. Tlustý a spol. slouily mnoho let.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (99, 'Belles Fleurs - Natrhejte si své kvìtiny', '2015-10-18 00:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>V kvìtináøství Belles Fleurs si sami vyberete kvìtiny, které se Vám líbí. Pøímo ve venkovních vozících mùete kombinovat rùzné druhy a barvy kvìtin, z kterých Vám nai floristé profesionálnì uváí Vai vysnìnou kytici. Spìcháte-li, pak uvnitø prodejny najdete pøipravené ji hotové kytice i aranmá.</p>

<p>Nemáte-li èas se zastavit, lze si kytici objednat online na <a href="http://www.bellesfleurs.cz/">www.bellesfleurs.cz</a>&nbsp;a my Vám ji dodáme kamkoliv po Èeské republice&nbsp;do druhého dne nebo kdekoliv po Praze do dvou&nbsp;hodin od objednání. Belles Fleurs je zárukou kvality a èerstvosti za rozumné ceny&nbsp;7 dní v&nbsp;týdnu 365 dní v&nbsp;roce.</p>
');
INSERT INTO "offer"(id, name, visible_from, visible_to, description) VALUES (100, 'Bontonland - Nejvìtí prodejce hudby, filmù a hudebních dárkù', '2015-10-17 22:00:00.000000 +00:00', '2023-05-18 07:52:05.111138 +00:00', '<p>Spoleènost Bontonland pøedstavuje nejvìtí èeský maloobchodní øetìzec prodejen s kompletním sortimentem hudebních a filmových nosièù. Nae specializované oddìlení vinylových desek má v repertoáru více ne 4 000 titulù k dispozici skladem. Nabízíme i doplòkové zboí jako plakáty, trièka, náivky a mnoho jiného pro vechny opravdové hudební a filmové fanouky. V souèasné dobì firma provozuje 12 kamenných prodejen napøíè celou republikou a také internetový obchod na adrese <a href="http://www.bontonland.cz/">bontonland.cz</a>.</p>
');


INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (1, 8, '0eafa943-4ac6-de72-eec5-e6d719044f35', '2021-06-20 05:59:12.027000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (2, 8, '63cad434-4728-b87c-099b-aef2efdea895', '2021-03-22 12:39:50.942000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (3, 8, 'cb68360c-741f-1e67-5858-708f56834f27', '2021-03-20 23:36:52.055000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (4, 8, 'd11d59ec-4495-37a5-daf7-8e91de863f5e', '2021-08-02 10:14:39.469000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (5, 8, '36af172c-6e7f-b15c-2cde-df24a0f51c44', '2021-08-13 13:25:42.008000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (6, 8, '846e8d3e-022b-a993-f348-cadf0e34db4a', '2020-12-08 20:51:00.216000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (7, 2, 'a8d8b08a-b939-d796-ec00-655ce1cdcdfc', '2016-07-20 17:53:04.994706 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (8, 8, 'debe41e8-3b3d-67a7-97b9-bef77a8e781a', '2020-12-08 22:56:42.287000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (9, 8, 'd8e58567-aee2-fe75-1197-3884e7e2b570', '2020-12-04 04:03:27.513000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (10, 8, '595e0899-354f-f294-4864-bf8bbd5ee3fb', '2020-12-03 09:30:42.821000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (11, 9, '69742009-b902-9339-e24b-424f4e03f33f', '2021-08-04 10:01:29.917908 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (12, 8, '3dd97c10-b995-e370-5d65-e9e26cd98fd9', '2020-12-03 08:37:39.179000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (13, 8, '38f4ce7c-d33e-f582-5f07-09c03d4b8de5', '2021-06-19 08:33:10.479000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (14, 8, 'a9a556cb-b816-a6d1-aa5f-176808c00528', '2020-12-12 16:55:57.555000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (15, 8, 'a564f273-16b4-58f7-b5cc-d243c2877827', '2020-12-01 14:22:39.107000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (16, 8, '93969d97-d3ab-b5f1-28dd-d4d2699227f1', '2021-05-02 10:19:44.513000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (17, 9, '662bcdbb-eb27-c940-c1bb-15912c82df76', '2021-08-04 12:14:35.181775 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (18, 8, '0a5549d6-212a-c089-c9fb-71332559c662', '2020-12-01 18:40:06.998000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (19, 8, '98231004-ada6-baca-bd90-e76d3a95dbf9', '2021-06-19 09:38:38.545000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (20, 8, 'b2729ee5-f6cb-53ef-7901-ca6d1d3d244d', '2021-03-21 08:18:07.125000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (21, 8, '5edbc9a4-0fe5-9273-a6c4-6ef963f926dc', '2021-06-24 15:34:55.957000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (22, 8, 'a620c4d6-3359-e807-5ab1-b01d2a3ba7c6', '2021-08-03 20:48:37.428000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (23, 6, 'baea433e-c000-e6ce-a423-cbc3cc55637d', '2021-08-13 11:58:59.538808 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (24, 5, '66b5ee38-928a-367a-944f-55de476402b4', '2021-08-16 10:05:00.497543 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (25, 8, '9561af3e-55c6-3667-5f0d-e72239ed9bb2', '2021-07-13 17:19:46.330000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (26, 8, 'd05f7ae7-ca04-f26f-7884-08742005ada6', '2021-04-03 14:05:45.697000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (27, 8, '5f48b449-3008-12e1-b9d3-cb21819bdb54', '2021-05-20 17:02:34.714000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (28, 5, '346a66d1-af12-05b6-dfa5-edafee7647bf', '2021-08-15 09:35:54.000000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (29, 8, 'f2a2266e-afb8-350d-b743-8a49cf73e41c', '2021-03-09 11:27:56.087000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (30, 8, 'fc4fa59c-55ba-8c4b-a58a-2b33efc57df4', '2020-12-11 14:28:42.376000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (31, 8, '7439f996-0dd6-becc-f095-b2a188045c1f', '2021-02-20 17:34:29.609000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (32, 8, 'dda7b8dc-3eab-c9b6-0784-b3f28e6b5962', '2021-02-25 10:24:46.492000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (33, 5, '6fd553fa-efcb-675c-b7cb-45c9a222b47d', '2021-08-16 12:22:01.402293 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (34, 8, '6dc05cb6-9898-7065-df52-038cfe6483cd', '2021-01-01 13:17:44.768000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (35, 8, 'cc65ffc8-7122-5684-1109-bba26e5eba81', '2021-02-17 08:44:56.301000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (36, 8, 'd13b3acf-c6f5-f4fb-cdd8-391d60856383', '2021-03-10 07:11:58.598000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (37, 8, '4ec6d9aa-c34c-8f06-29bc-9254de02bfe5', '2021-03-12 11:07:44.749000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (38, 8, 'c6e9d53d-ffa8-9bbb-4fd3-7eff9e65daa7', '2021-03-25 21:49:01.530000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (39, 1, 'f444d69f-93e0-1363-5f20-7e6a538f3726', '2021-01-18 15:14:49.000000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (40, 8, '07330e97-3ca1-e3ee-7a4f-191348490fe1', '2021-03-09 08:12:07.573000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (41, 1, 'b0a1fb4f-712e-b623-f3df-46c36a2a4370', '2015-10-19 20:18:03.378000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (42, 8, '7a2e7277-762a-c8d8-6158-b79179f6c5ce', '2021-02-24 08:31:28.194000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (43, 5, '72ba0b76-05f5-7211-138f-2e17c00bba65', '2021-08-16 12:56:57.141691 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (44, 1, '2d687095-e841-3353-137a-6b6b4b6ad4ba', '2015-11-21 18:20:48.157000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (45, 8, '48feea48-6b70-dcbd-aa97-ab098c62a758', '2021-03-21 18:31:02.520000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (46, 8, '9817ca1f-1e83-5a86-f521-4e4eabff4217', '2021-04-22 19:16:53.237000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (47, 8, 'f05ccd30-ab17-6198-570e-5bab685450d4', '2021-06-10 15:18:15.561000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (48, 8, 'e5724aa7-14c7-c704-c867-377d12851a0d', '2021-05-10 05:09:52.820000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (49, 8, 'a969ca54-cc35-5b96-a8cf-4ed0355f566a', '2020-12-07 10:40:39.379000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (50, 8, 'ad1ce3e6-7e4d-6864-fa17-ca430a5ab53c', '2021-05-04 15:49:34.096000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (51, 8, '169f4980-e7a9-43ae-6da9-be43d47508e8', '2021-03-01 14:43:46.302000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (52, 8, 'd267916a-6a49-6d7b-a0a5-9d22f77ea4f1', '2021-03-03 18:19:15.724000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (53, 8, '490c4aa0-e1fa-a2b8-264d-3594a4ea84bd', '2021-02-24 10:01:30.991000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (54, 1, '72cec29e-7001-2310-a5b7-325e79198406', '2015-10-21 14:09:53.976000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (55, 8, '95cae542-d16d-dd19-45e1-a46d67fc8f18', '2021-03-01 10:11:58.044000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (56, 8, 'c058a77d-8dee-b121-afa0-423401da69ce', '2021-02-16 07:35:03.126000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (57, 8, '23581856-292b-ee2a-eac5-44883aa0d6a8', '2021-02-27 13:16:14.666000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (58, 8, '31762901-156e-fa7d-039a-0d222f459da3', '2021-04-25 05:00:30.622000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (59, 8, '91b6fb70-fbc6-1a50-955a-3c67e436bd3c', '2021-01-05 10:36:35.856000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (60, 8, 'd26e6edd-0d36-5070-74b7-bbb3747f1d30', '2020-12-02 13:50:31.267000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (61, 8, '00ddee9c-3fa4-c833-ecb8-4561b83f401b', '2021-01-09 11:36:54.713000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (62, 8, '1f556962-e6fa-b649-146b-3282b90a4f2e', '2021-04-22 09:24:14.647000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (63, 8, 'f87ec91f-4215-893c-a0ef-92a29afa0bd9', '2021-01-08 10:16:03.081000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (64, 8, '972a0b6e-9801-a4fb-d25c-57e7bfd2f150', '2021-01-06 09:30:38.639000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (65, 1, 'd342049f-1623-9c5a-50dc-b6c5e8c60a6f', '2015-12-14 10:50:20.528000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (66, 8, '3e06f4ca-ae9c-778a-f73b-15c261d556a4', '2021-01-29 17:19:26.447000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (67, 9, 'a1984d37-fe3b-dd29-2766-9199598d1cf1', '2021-08-16 20:56:55.312634 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (68, 1, 'f569bf45-5d20-ebe2-cf25-a1f764f6a4bc', '2015-10-22 12:18:11.245000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (69, 8, 'a1438971-70fc-733c-63da-dc010cd12218', '2020-11-16 07:28:35.094000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (70, 8, 'c1d46733-1b1e-0305-2859-5e91a8ec4991', '2021-05-12 09:35:50.950000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (71, 1, 'fc6651f9-6b65-e771-5c79-5a48695f9c0a', '2015-11-04 16:25:59.122000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (72, 8, '03cfdff6-1f5c-333c-fe14-b4f088073808', '2021-03-08 07:58:51.042000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (73, 8, '0f4d4458-0e2b-2c49-e386-f8ea966af4f2', '2021-03-24 11:37:20.825000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (74, 5, '8951255a-883b-099b-9861-042401f10d9c', '2021-08-16 08:44:39.146960 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (75, 8, 'e6a65625-c074-48d5-ca28-ad114b26139a', '2021-01-31 18:45:15.927000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (76, 5, '5c77095e-fe67-102e-d503-f8bba75ba4d7', '2021-08-16 08:54:48.178791 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (77, 8, '5341706a-48cd-c4ee-11fc-9bf2a60ce0d8', '2021-03-05 07:42:40.751000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (78, 8, '5f6dab9f-9407-1c42-e674-c01b218f0ee8', '2021-05-16 15:12:09.759000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (79, 8, '2324a926-f22e-6fae-a7ae-9c74ac5c7210', '2021-03-15 19:48:02.028000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (80, 8, '2ae99ab0-67ff-c3a5-c7a3-1a56e56a858e', '2021-01-11 19:00:17.116000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (81, 8, '11fe8ce3-62c7-a98f-3119-2028ce7cd526', '2021-03-13 14:38:48.860000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (82, 8, '0815bc0e-9f7c-caee-549d-427a10434784', '2021-05-27 08:41:24.003000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (83, 8, '8060dfce-f767-cf96-c07f-540dc101cabd', '2020-12-06 13:47:33.506000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (84, 8, '70cfab63-6aab-217d-0219-95ec5dd4f622', '2021-01-06 19:56:07.247000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (85, 8, '178a09f6-2c1e-bc85-bda6-f7b7243786f6', '2021-03-11 14:36:30.148000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (86, 8, '4d72aead-ef53-2215-6e9a-3f606604207b', '2021-08-10 07:46:57.671000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (87, 8, '5e549ab0-9122-f173-305f-2772c9256de2', '2021-06-16 06:42:25.199000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (88, 8, 'b2d78007-c9ee-9632-da7a-f44e3131da9c', '2021-04-21 06:03:34.570000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (89, 8, '66bd32a0-9fb3-46d1-3c16-17ce9d154175', '2021-04-20 15:35:19.347000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (90, 1, 'b5271187-66fa-0c3c-a4aa-85d6a14e0a1f', '2017-01-26 15:05:11.277000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (91, 8, 'aea4da9b-ff5a-b9a8-022c-4bfd531038fb', '2020-12-14 11:09:50.288000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (92, 8, '266ebc44-ce72-d930-e6b8-abdc0929297c', '2021-05-15 08:57:14.022000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (93, 9, '29a65084-d7af-e016-9e01-62a9f4fb6099', '2021-08-19 13:10:59.250103 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (94, 8, '66c90e09-9ad6-322a-0091-29142aa181b5', '2021-04-06 14:17:10.696000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (95, 8, '060e5963-ae50-81b1-cc5d-9e33a5450688', '2020-12-10 14:18:03.518000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (96, 8, 'cdc161a3-4799-fb7e-13e0-cfc4c2ea8969', '2021-04-26 14:10:07.928000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (97, 8, 'd1e6982f-6f06-bfae-cd47-f2ed4001f6fe', '2020-12-17 10:13:23.648000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (98, 8, '3422e641-1003-de7a-5a06-617c102e23eb', '2020-12-04 22:28:26.222000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (99, 8, '37f0e58b-43d5-fa6a-6176-a893244df2f4', '2021-03-17 09:48:39.670000 +00:00');
INSERT INTO "client"(id, bank_id, uuid, registration_time) VALUES (100, 8, 'cc4eb1f5-6bbc-8a98-c4b5-bf21746c4df7', '2021-05-01 14:14:18.280000 +00:00');

