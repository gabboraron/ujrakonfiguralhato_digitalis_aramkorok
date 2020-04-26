# Tartalom
- [Logikai áramkörök elmélete hülyéknek](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#logikai-%C3%A1ramk%C3%B6r%C3%B6k-elm%C3%A9lete-h%C3%BCly%C3%A9knek)
- [Könyvek](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/tree/master/k%C3%B6nyvek)
	- [VHDL oktatási segédlet 1.13](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/k%C3%B6nyvek/VHDL-szintaktika.pdf)
	- [Free range VHDL - Bryan Mealy, Fabrizio Tappero](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/k%C3%B6nyvek/free_range_vhdl.pdf) - [freerangefactory.org](http://freerangefactory.org/cores.html)
	- [Mikrovezérlő programozása assembly nyelven](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/k%C3%B6nyvek/assembly_programozas.pdf)
- [Téma 1 - bevezetés, FPGA alapok](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#téma-1---bevezetés-fpga-alapok)
- [Téma 2 - FPGA áramkörök szerkezete](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#téma-2---fpga-áramkörök-szerkezete)
  - [Vivado projekt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#vivado-projekt)
- [Téma 3 - Áramköri leírási modellek és hierarchikus alrendszerek](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-3---%C3%A1ramk%C3%B6ri-le%C3%ADr%C3%A1si-modellek-%C3%A9s-hierarchikus-alrendszerek)
  - [Multiplexer áramkör](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#multiplexer-%C3%A1ramk%C3%B6r)
  - [Digitális rendszerek absztrakciós szintjei (tranzisztor, kapu, regiszter, processzor)](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#digit%C3%A1lis-rendszerek-absztrakci%C3%B3s-szintjei)
- Téma 4 - [FPGA alapú tervezés lépései](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#t%C3%A9ma-4---fpga-alap%C3%BA-tervez%C3%A9s-l%C3%A9p%C3%A9sei) és a [VHDL programok szerkezete](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#vhdl-programok-szerkezete)
- [Téma 5 - VHDL szekvenciális kifejezések](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-5---vhdl-szekvenci%C3%A1lis-kifejez%C3%A9sek)
	- [a `process`ekről, szekvenciális áramkörökről, D típusú tárolókról](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#process)
	- [a `SIGNAL`okról](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#signalok)
	- [változók szerepe](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#variable---v%C3%A1ltoz%C3%B3k)
	- [`IF` feltétel - számláló megvalsóítása `IF`fel](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#if-felt%C3%A9teles-v%C3%A9grehajt%C3%A1s)
	- [`CASE` és multiplexer áramkör `CASE` használatával](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#case)
	- [`WAIT`](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#wait)
	- [jelre várakozás `WAIT ON`nal](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#wait-on)
	- [adott ideg várakozás `WAIT FOR`ral](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#wait-for)
	- [ciklusok: `LOOP`, `FOR/LOOP`, `WHILE/LOOP`, `EXIT`, `NEXT`](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#loop)
	- [felhasználási példa: véges állapotú automata](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#v%C3%A9ges-%C3%A1llapot%C3%BA-automata)
- [Téma 7 - Konkurens VHDL utasítások](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-7---konkurens-vhdl-utas%C3%ADt%C3%A1sok-k%C3%B3dfejelszt%C3%A9s-a-konkurencia-felhaszn%C3%A1l%C3%A1sval)	
	- [Szekvenciális VS konkurens utasítások](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#szekvenci%C3%A1lis-vs-konkurens-utas%C3%ADt%C3%A1sok)
	- [`Generate`](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#generate)
	- [`Package`](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#package)
- [Téma 8 - Tesztelés](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-8---tesztel%C3%A9s) - [eredeti pdf](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/k%C3%B6nyvek/FPGA%20aramkorok%20tesztelese_2017_2018_v4_2017_11_27_e(1).pdf)
	- [Tesztkörnyezet konfigurálása](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#tesztk%C3%B6rnyezet-konfigur%C3%A1l%C3%A1sa)
- [Téma 9 - System Generator alapú hardver tervezés](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-9---system-generator-alap%C3%BA-hardver-tervez%C3%A9s)
- [Téma 10 - Hardver ko-szimuláció](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#t%C3%A9ma-10---hardver-ko-szimul%C3%A1ci%C3%B3)
- [Téma 11 - Magas szintű szintézis - Bevezető](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-11---magas-szint%C5%B1-szint%C3%A9zis---bevezet%C5%91)
- [Téma 12 - Magas szintű szintézis II](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-12---magas-szint%C5%B1-szint%C3%A9zis-ii)

---------

# Logikai áramkörök elmélete hülyéknek
Az eredeti a Sulineten: [Logikai áramkörök információelméleti alapjai](https://tudasbazis.sulinet.hu/hu/szakkepzes/elektronika-elektrotechnika/digitalis-alaparamkorok/logikai-aramkorok-informacioelmeleti-alapjai) alább ennek a jegyzete.

> **Két** fizikai mennyiség (**áram, feszültség**) **egymással való leképezése** lehet 
> - **analóg**: a leképző mennyiség **változása folyamatos**, tehát **bármilyen érték**et felvehet
> - **digitális**: a leképző mennyiség **változása nem folyamatos**, hanem ugrásszerű, tehát **csak [diszkrét](https://regi.tankonyvtar.hu/hu/tartalom/tamop425/0010_2A_21_Nemeth_Renata-Simon_David_Tarsadalomstatisztika_magyar_es_angol_nyelven/ch02s04.html) érték**et vehet fel. Ezt használjuk a digitális technikában, azaz az integrált áramkörökben amirtől [G.Moore híres megállapítás](https://en.wikipedia.org/wiki/Moore%27s_law)a született.
> Mindkét esetben az **időben lefolyás függvénykapcsolat**tal megoldható.
>
> **Bináris számrendszer röviden**
>
> Mivel a kétállaopotú áramkörben a kettes számrendszer a legkönyebben alkalmazható így nem megkerülhető számunkra. Egy bináris szám megadása: ![+/-sum k megy m-től j-ig (aˇk*2^k](https://cms.sulinet.hu/get/d/c46bafa7-b4a7-4699-928d-c7479994df33/1/9/[p=node()[@hierarchy='flowHierarchy']/node()[0]/node()[@hierarchy='textStructure']/node()[0]/node()[2]/node()[@hierarchy='data']/node()[0]]/b/normal_png/formula_.png)* ahol `a=0` vagy `a=1`
>
> *Átváltás 10esből 2esbe:*
> [![DECIMAL TO BINARY](https://i.ytimg.com/vi/rsxT4FfRBaM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLCBveE0gqdZClFHCM93cyb--BDvDw)](https://www.youtube.com/watch?v=rsxT4FfRBaM&t=167s)
>
> *Átváltás 2esből 10esbe:*
> [![BINARY TO DECIMAL](https://i.ytimg.com/vi/VLflTjd3lWA/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDkRe307VwJigqXFvd7WsHGVtSAqQ)](https://www.youtube.com/watch?v=VLflTjd3lWA)
>
> **Hogyan lesz az *információ*ból *adat* és az *adat*ból *kód***
> 
> Az **infomráció** alapvetően **bizonyos fokú tájékozatlanságot szüntet meg** és szimbólumokból áll, a *beszéd* esetében *szavak*, *írás* esetében *betűk* és így tovább. Így **az információ** digitális rendszerekben való formája **az adat**, ami a logikai áramkörökben **kód** formájában jelenik meg, azaz *kódolás tehát két szimbólumhalmaz egymáshoz rendelése*. Erre több módszer is rendelkezésünkre áll, van amelyik egy menetben végzi el a kódolást: [BCD](https://hu.wikipedia.org/wiki/Bin%C3%A1risan_k%C3%B3dolt_decim%C3%A1lis), [Aiken](https://en.wikipedia.org/wiki/Aiken_code) stb, vag több menetben mint a [Johnson vagy a Gray kód](https://www.gyakorikerdesek.hu/tudomanyok__termeszettudomanyok__4889075-mi-a-kulonbseg-a-johnson-kod-es-a-gray-kod-kozott). Mivel a jel minősége romolhat, azaz **a bináris helyiértékekben változás történik** ezért a kód redundanciát növeljük, azaz, olyan plusz biteket adunk hozzá ami vagy *ellenőrzik* a hibát, vagy *ki is javítják*. Ellenőrzésre alkalmas a paritás bit, míg javításra *több* speciálisan használt paritás bit használható, például a Haming féle távolság segítségével.
> 
> **Logikai függvények**
>
> Az **időfüggetlen** logikai függvények közös jellemzője, hogy a függő (**kimenet**i) változó értéke **csak a** független (**bemeneti**) **változó értékétől függ**. Az ilyen típusú függvényeket valósítják meg a **kombinációs logikai hálózatok**.
>
> Az **időfüggő** logikai függvények jellemzője, hogy a függő (**kimeneti**) változó aktuális értékét **nemcsak a független változók adott időpontban felvett értéke, hanem más időpillanatban felvett értékei is meghatározzák**. Ez azt jelenti, hogy **az események sorrendje is befolyásolja a kimenet állapotát**. Az ilyen típusú függvényeket megvalósító hálózatokat nevezzük **szekvenciális hálózatok**nak.
>
> - **Diszjunktív szabályos alak** olyan logikai függvény, amely **mintermek VAGY kapcsolatá**ból áll.
> - **Konjunktív szabályos alak** olyan logikai függvény, amely **maxtermek ÉS kapcsolatá**ból áll.
> - **Term**: a **független változók** azon **csoportja**, amelyeket **azonos logikai kapcsolat**ra jellemző szimbólummal kapcsolunk össze.
> - **Minterm**: a **független változók logikai ÉS kapcsolata**, amelyben minden változó (igaz vagy tagadott formában) egyszer és csakis egyszer szerepel.
> - **Maxterm:** a **független változók logikai VAGY kapcsolata**, amelyben minden változó (igaz vagy tagadott formában) egyszer és csakis egyszer szerepel.
>

## Logikai hálózatok
> A felhasználás jellegétől függően ugyanazt a műszaki feladatot diszkrét elemekkel (jelfogó, dióda, ellenállás, tranzisztor) felépített hálózattal, vagy integrált áramkörökkel is megoldhatjuk. A tervezés során meghatározzuk, hogy a megvalósításhoz szükséges logikai függvények eredménye a bemeneti változókon kívül függ-e az események bekövetkezési sorrendjétől. **A kombinációs hálózatok időfüggetlen logikai függvényeket valósítanak meg. A sorrendi (szekvenciális) hálózatok időfüggő logikai függvényeket valósítanak meg,** ezek **memóriával is** rendelkező logikai áramkörök. A sorrendi (szekvenciális) logikai hálózatban a bemeneti logikai változók kapcsolatban vannak a kimeneti logikai változókkal, vagyis a rendszerben visszacsatolás van. A kimeneti jel függ az események sorrendjétől.
>
> ![kombinációs logikai hálózat](https://cms.sulinet.hu/get/d/af518522-9572-4495-a4f5-2b501a0da8b8/1/5/b/Normal/15_3_1__Kombinacios_logikai_halozat_tombvazlata.jpg)  ![szekvenciális hálózat](https://cms.sulinet.hu/get/d/d109d561-edc8-4683-bb66-23c5cf8d3c56/1/5/b/Normal/15_3_1__Aszinkron_halozatok_tombvazlata.jpg)
>
> **Logikai kapuk**
>
> *A kombinációs hálózatok legfontosabb tulajdonsága, hogy a bemeneti események az időtől függetlenül egyértelműen meghatározzák a kimeneti eseményeket.* Logikai kapuknak (logic gates) nevezzük a logikai alapfüggvényeket megvalósító áramköri elemeket. Egy digitális integrált áramkörben – az áramkör bonyolultságától függően – egy vagy több logikai kapu található.
A továbbiakban az alapműveleteknek megfelelően bemutatjuk a különböző logikai kapuk rajzjelét és igazságtáblázatát
>
> **ÉS kapu**
>
> ![ÉS táblázat](https://cms.sulinet.hu/get/d/6117791d-e42a-41d1-b65c-681184683f2a/1/5/b/Normal/15_3_2__ES_kapu_igazsagtablazat.jpg) ![ÉS kapcsolási rajza](https://cms.sulinet.hu/get/d/bc214b3c-3f7e-4ec4-ac0b-a6fdbef439f2/1/5/b/Normal/15_3_2__ES_kapu_hasznalt_rajzjele.jpg) ![ÉS rajzjele](https://cms.sulinet.hu/get/d/45022139-4812-41bd-b531-84fa90a78ca3/1/5/b/Normal/15_3_2__ES_kapu_szabvanyos_rajzjele.jpg)
>
> **NEM kapu**
>
> ![NEM igazságtábla](https://cms.sulinet.hu/get/d/7a9b7da5-9378-4d95-b78a-08ddb1398547/1/5/b/Normal/15_3_2__NEM_kapu_igazsagtablazat.jpg) ![NEM rajzjele](https://cms.sulinet.hu/get/d/f240d0bd-6ac4-43da-ae5d-7c03456460cb/1/5/b/Normal/15_3_2__NEM_kapu_hasznalt_rajzjele.jpg) ![NEM rajz](https://cms.sulinet.hu/get/d/d735d372-aae4-4671-8260-0056ad484d53/1/5/b/Normal/15_3_2__NEM_kapu_szabvanyos_rajzjele.jpg)
>
> **VAGY kapu**
> 
> ![VAGY igazságtábla](https://cms.sulinet.hu/get/d/9db4229a-1413-4243-9bc4-5bb5af852df9/1/5/b/Normal/15_3_2__VAGY_kapu_igazsagtablazat.jpg) ![VAGY rajza](https://cms.sulinet.hu/get/d/1234a8ea-6fd9-4032-aba2-20b1ab1fc4e0/1/5/b/Normal/15_3_2__VAGY_kapu_hasznalt_rajzjele.jpg) ![VAGY rajza](https://cms.sulinet.hu/get/d/3bb09e6f-6ffb-4dee-9a9f-0217e67a0eda/1/5/b/Normal/15_3_2__VAGY_kapu_szabvanyos_rajzjele.jpg)
>
> **ÉS-NEM (NAND) kapu**
>
> NAND kapcsolatot megvalósító áramköri elem.  Tehát a NAND kapu **kimenő jele akkor és csakis akkor 0, ha mindkét bemenő jel értéke egyidejűleg 1** értékű, ezért a NAND kapu bemenetén a 0 jel a meghatározó.
>
> **VAGY-NEM (NOR) kapu**
>
> NOR kapcsolatot megvalósító áramköri elem. Tehát a NOR kapu **kimenő jele akkor és csakis akkor 1, ha mindkét bemenő jel értéke egyidejűleg 0** értékű, ezért a VAGY kapu bemenetén az 1 jel a meghatározó.
> 
> **Ekvivalencia kapu**
>
> Az EKVIVALENCIA kapu **kimenő jele akkor 1, ha a bemenő jelek logikai értéke megegyezik**. A kapu a logikai hálózatok leegyszerűsítését szolgálja.
>
> **ANTIVALENCIA (KIZÁRÓ-VAGY) kapu**
>
> kimenő jele akkor 1, ha a bemenő jelek logikai értéke különböző.
## A funkcionálisan teljes rendszer
> Funkcionálisan teljes rendszernek nevezzük azokat a **logikai függvényeket, megvalósító kapukat, amelyekből bármilyen tetszőleges hálózat megvalósítható.**
> A funkcionálisan teljes rendszer másik fontos előnye, hogy a logikai áramkör megvalósításához csak meghatározott típusú kapuáramkör szükséges.
> 
> **NEM-ÉS-VAGY rendszer:** Tetszőleges logikai függvény kifejezhető az ÉS, a VAGY és a NEGÁCIÓ műveletet megvalósító logikai kapuk megfelelő kombinációjával. Gyakorlati megvalósítás szempontjából a nem terjedt el, mivel áramköri szempontból sokkal egyszerűbb az ÉS és a VAGY kapu helyett a NEM-ÉS (NAND), illetve a NEM-VAGY (NOR).
> 
> **NAND-rendszer:** Tetszőleges logikai függvény kifejezhető a NEM-ÉS (NAND) műveletet megvalósító logikai kapuk megfelelő összekapcsolásával. Az ilyen áramköri megvalósítást nevezzük NAND-rendszernek.
>
> ![NAND rajza](https://cms.sulinet.hu/get/d/414a8f2f-123e-4f34-b236-daeaa4fc5a45/1/5/b/Normal/15_3_3__2_A_fuggveny_megvalositasa_NAND_rendszerben.jpg) ![NAND alapműveletekkel](https://cms.sulinet.hu/get/d/b69845f0-7e33-48b4-a599-77495e1decd3/1/5/b/Normal/15_3_3__Alapfuggvenyek_NAND_kapukkal.jpg)
>
> **Kétszintes hálózat:** Ha a **bemeneti változók a kimenetre két kapuáramkörön keresztül** jutnak el, akkor kétszintű hálózatról beszélünk.
> **Háromszintű logikai hálózat:** Ha egy diszjunktív vagy konjunktív alakban megadott logikai függvényt – újabb logikai művelettel – **egy vagy több másik függvénnyel bővítjük, akkor az új logikai függvény már nem valósítható meg kétszintű hálózattal**. Az ilyen típusú logikai függvényeket megvalósító hálózatokat többszintű logikai hálózatoknak nevezzük.
> **Négyszintű logikai hálózat:** 
>
> ![négyszintű logikai hálózat](https://cms.sulinet.hu/get/d/9d165d91-132a-42d0-a5fd-1041011ed093/1/5/b/Large/15_3_4__2_Negyszintu_logikai_halozat.jpg)
-----------

# Téma 1 - bevezetés, FPGA alapok
**CLB** - konfigurálható logikai tömbök amiket a

**switch matrix** - összekötő vezeték köt össze az 

**IOB modulokkal** - amik a jelek ki/be vitelére használhatóak

RAM alapú FPGAba a bekapcsolás után be kell konfigurálni a **bitfolyamot** ami meghatározza, hogy milyen útvonalon áramlanak a jelek a CLB, azaz a logikai tömbök belsejében. Ezért ez lehet egyszer, vagy többször programozható.

## Modulok:
fájl: [MEMÓRIA ELEMEK.png](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/mem%C3%B3ria%20elemek.PNG)
- konfigurálható logikai tömbök: logikai kapuk, kereső táblázat, osztott memória, bistabil áramkörök, multiplexxer áramkörök.
- ki/be meneti tömbök
- blockRAM ([BRAM](https://www.nandland.com/articles/block-ram-in-fpga.html))
- digitális jelfeldolgozó modul (DSP) vagy szorzó áramkör (MUL)
- órajel menedzselő áramkör ([DCM - digital clock manager](https://en.wikipedia.org/wiki/Digital_clock_manager))
- beágyazott processzormagok
- Gigabit tranceiver modulok

## Alkalmazásának előnyei
***Teljesítmény***
- hardveres párhuzamosítás => órajelenként több művelet, ki/be menet hardverszintű vezérlése => gyorsabb vezérlés
***Piacra kerülési idő***
- gyors modellezés
***Költség***
- olcsóbb mint az ASIC
***Megbízhatóság***
- több a bsztrakciós réteg => jobb folyamat ütemezés => minimális megbízhatósági aggály
***Hosszútávú karbantartás***
- elég az FPGA újrakonfigurálása, nem szükséges az áramkör újratervezése

> **=>** magas fokú párhuzamosítás
>
> **=>** pipeline és párhuzamos pipeline
>
> **=>** műkődés közbeni újrakonfigurálás
> 
> **=>** jó sebesség
> 
> **=>** időkritikus egységek külön hardveregységben
> 
> **=>** egyszerű illesztés létező eszközzel

## Mi valósítható meg FPGA-ban?
- állapotautomaták, adatutas automaták
- beágyazott processzort tartalmazó rendszerek akár operációs rendszerrelhttps://en.wikipedia.org/wiki/Advanced_Boolean_Expression_Language
- kapcsolási rajz laapú tervezés

## FPGA programozhatóság
> **Nyelvek:**
> - [V](https://en.wikipedia.org/wiki/VHSIC)[HDL](https://en.wikipedia.org/wiki/Hardware_description_language)
> - Verilog
> - [ABEL](https://en.wikipedia.org/wiki/Advanced_Boolean_Expression_Language)
> - ABELHDL
> - C, C++, System C
> - Matlab
> - [Xilinx](https://www.xilinx.com/products/design-tools/vivado/vivado-webpack.html)

- egyszer/többször programozható
- indulás **master**/**slave** módban
- működés közbeni újrakonfigurálás: részleges, dinamikus újrakonfigurálás / teljes átkapcsolás
- magas szintű programozási nyelvek (HLS) alkalmazása

-----

# Téma 2 - FPGA áramkörök szerkezete
> Ebben a részben a hallgató megismerheti az FPGA áramkörök szerkezetét, a fontosabb részeit, valamint egy FPGA áramkörben megtalálható vezetékhálózatokat. A téma keretében szemléltetjük a feladatnak az FPGA áramkörbe való programozásának lehetséges változatait.  

## AZ FPGA elemei:
- konfigurálható logikai tömbök (CLB)
  - LUT kereső táblázat (look up tables)
  - Bistabil áramkörök
  - osztott RAM
- I/O gyűrű
  - kétirányú adatfolyam
  - 3 state logika
  - DDR (Double Data Rate) regiszterek
- Funkcionális blokk
  - Block RAM
  - Multiplier blocks
  - DCM (digital clock manage) modul

### BRAM (Block RAM) modulok
- oszlopokba szervezve konfigurálható logikai tömbök (CLB) mellett
- különálló egységként, rugalmasan méretezhető az adatsínszélesség/címtartomány
- alkalmazható kétportos memóriaként
- [Spartan 3E](https://www.xilinx.com/support/documentation/data_sheets/ds312.pdf) -> 1 BRAM = 18 Kbit
- biztosítja az adatfolyamot a DSP/szorzó áramköröknek

### LUT táblázat
- Logikai függvény megvalóstása
- Osztott memória
- Léptető regiszter

### DCM 
- különböző órajelek szétosztása, szintézise
- órajelek stabilizálása, szinkronizálása

### CLB
- elemei: LUT kereső táblázat, Bistabil áramkör, logikai kapuk, multiplexer áramkörök
- egy CLB 4 szeletet tartalmaz
- bal oldali szelet (SLICE M): memória elemeket is tartalmaz => osztott memória, a kerresőtáblázat használható 16 bites shiftregiszternek
- jobb oldali szelet (SLICE R):

- keresőtáblázat: logikai függvények (LUT) megvalósítására
- multiplexer áramkörök
- az adatok **balról jobbra, lentről flelfele áramlanak**
- osztott memória: pár bit memória szétosztva a logikai tömbökre

### IOB
- adatfoylam vezérlés I/O láb és belső logika között
- kétirányú adatfolyam
- magas impedanciás kimenet alkalmazása
- kimenet/bemenet/kibemenet
- felhúzó/lehúzó ellenálások alkalmazása

megkülönböztetve: kimeneti/bemeneti/magas impedancia

#### Erőforrás készlet
- több áramkör áll rendellkezésre
- adatok: konfigurálható tömbök száma, DCM, DRAM, BRAM, ki/beneeti lábak, 

## BRAM
adattárolásra szolgál
max: 18 Kbit
kiseb sínszélesség mellett, több címbit/ szélesebb adatbit
adatbitek: egyszerű adatbit: DI/DO
  - ha duplázzuk az adatbiteket akkor csökkenteni kell a címbiteket
  - csak a 8-16 sínszélesség mellett használható a paritásbitek
  - dualportos memória alklmazás: mind a két egyportos memórialkalmazásnál növeljük a memória méretét

`WE` - írás engedélyezése
`EN` - órajel engedélyezése
`CLK` - órajel
`DI` - bemeneti adatvonalak
`DO` - kimeneti adatvonalak
`DIP` - bemeneti paritás bit
`DOP` - kimeneti paritás bit

`WRITE_FIRST` - először írás
`READ_FIRST` - először olvasás
`NO_CHANGE` - csak írás


- olvasás esetén `EN = '1'`
- írás esetén `WE = '1'`

## Huzalozás
**a CLB-k kapcsolására töb lehetőség van:**
- közvetlen: egy CLB közvetlen a bal-jobb, felső-alsó tömbhöz
- függőleges/vízszintes hex huzalozás

## Órajelek
DCM: Digitális órajel menedzser
- órajel bemenetek
- órajel buffer az órajelek szétosztására az órajelek között, mert különböző órajelekre van szükség => órajelek szétosztása, késleltetése
külső órajel bemenetek/half clock bemeneteken külső órajele megadása
- BUFG
- BUFGMUX
- BUFGCE

## FPGA konfigurálása
**Bit file**: konfigurációs fájl
- konfigurációs adat: meghat a programozható logikai elem állapotát
- konfigurációs parancs: meghat, hogy az adattal mit kezdjünk

- küön hálózat a konfigurálásra, amin keresztül minden egyes komponens elérhető a hálózaton
- JTAG interfészen feltöltés
- soros/párhuzmos feltölés

### FPGA tesztelése JTAG interfészen
- `TDI` bemeneti adatvonal -> itt lehet betölteni az adatokat az áramkörbe
- `TDO` az adatok visszaolvasása
- `TMS` parancsok küldése a rendszerre
- `TRS` JTAG modul kezdőállapotba szinkronizálása
- `TCK` órajel

## Vivado projekt 
### VHDL fájl felépítése:
> **megjegyzés** `--`
>
> **entitások** 
> ````VHDL
> entity [NÉV] is 
>     Port(...);
> end [NÉV];
> ````
>
> **architektura rész**
> ````VHDL
> architecture Behavioral of [NÉV] is 
> -- deklarációs rész
> begin
> -- implementációs rész
> end Behavioral;
> ````

----

# Téma 3 - Áramköri leírási modellek és hierarchikus alrendszerek
> A fejezetben a hallgató megismerheti az FPGA alapú áramkör tervezésnél alkalmazott áramköri modelleket és absztrakciós rétegeket.  Egy áramkört tekinthetünk fekete doboznak, amelynek nem ismerjük a belső felépítését, szerkezetét, de ismerjük a viselkedését. Ismerjük a bemenetek és kimenetek közötti összefüggést.  Egy másik megközelítés, hogy ismerjük a részletes felépítését, modulárisan milyen alegységeket, modulokat, komponenseket tartalmaz és a komponensek közötti kapcsolatokat. Egy áramkörnek a tervezés során meghatározhatjuk a viselkedését vagy  felépíthetjük az áramköri elemekből, amely ugyanazt a viselkedést eredményezi.
> 
> Egy elektronikus hardver különböző absztrakciós szinten írható le.  A tervezendő hardver rendszer specifikációja során, általában, egy magasabb hierarchikus szintről lépegetve alacsonyabb hierarchikus szintekre, eljutunk az áramkör hardver szintű megvalósításáig.
> 
> Ismerve a hierarchikus szinteket és megértve az áramkör leírási modellek (strukturális, viselkedési) közötti összefüggéseket, a hallgató átlátja a különböző specifikációs modellekből kiindulva a hardver kialakítását.

## Viselkedési modell
- leírja a rendszer vagy részrendszer viselkedését
- úgy tekint a rendszerre akár egy fekete dobozra
- bemeneti és kimeneti adatok összefüggéseire koncentrál
> => bemeneti portok => vezetékek => modell komponensei => kimeneti portok

## EDA - [Electronic Design Configuration](https://en.wikipedia.org/wiki/Electronic_design_automation)
- nem kell mindne szintet pontosan definiálni
- elegendő a tervezést a legfelsőbb siznteken elvégezni
- => EDIF (Ectronic Design Interchange Format) - semleges adatcsere formátum => automatizált elektronikus tervezés
- EDAXML
- NGC (native GEneric Circuit) - Xilninx saját formátum

## *Netlist*
felsorolja a komponeneseket

## *Fizikai nézet*
- hardver erőforrásokat ábrázol
- újabb fizikai információkkal bővíti a  strukturális nézetet: alkatrészek mérete, helye, összekötő vonalak

## Multiplexer áramkör
LUT3 - Q_F
```VHDL
O = ((I0 * I2) + (!I0 * I1));
```
LUT3 - Q_G
```VHDL
O = ((I0 * I2) + (!I0 * I1));
```
4 bemenetes multiplexer áramkör megvalósításához:
- két keresőtáblázat
- egy két bemenetes multiplexer áramkör -> függvényben kijelöli, hogy melyik LUT eredményét alklamazza
a LUT elemekben szintén 2 bementes multiplexer áramkör, keresőtáblázatokban a multiplexert leíró Boole függvény.
> => bemeneti buffferek => adat bementek/kiválasztó bemenetek => kimenetei bufferek
[egy multiplexer megvalósítás](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_7c.vhd) és még több lejebb a `case` utasításnál: `[CASE](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#case)` 

## Digitális rendszerek absztrakciós szintjei
### Absztrakciós szintek
#### Tranzisztor
- alap elemek: tranzisztor, ellenállás, kondnezátor, tekercs
- viselkedése differenciál egyenletekkel van leírva
- digitális áramkör = analóg áramkör
- a jel időben változó
- a gyártó feladata
#### Kapu
- logiaki kapukból áll
- a jelek **1** vagy **0**-k
- bemeneti-kimeneti kapcsolatokat Boole egyenletekkel írjuk le
- időzítéssel kapcsolatos információk egyszerűsítve: `propagation delay`
fizikai nézetben: a kapuk elhelyezése, a kapukat összekötő vonalak huzalozása
#### Regiszter
- kapukból épített modulok
- összeadók, komperátorok, tárak, regiszterek, multiplexerek
- jelek speciális adatként: unsigned integer, float, stb..
- véges állapotú automata írja le
- strukturális nézet: kettes komplemensű bitsorozat
- jelek továbbítására alkalmazott sínrendszer
#### Processzor
- processzorok, memória, sínrendszer
- leírás: a program sázmolási lépéseivel, folyamatokkal
- IP alaprajz feleltethető meg neki a fizikai tarotmányban
alaprajz: logiaki cellák + makrocellák és összeköttetéseik


### Y diagram (modul floorplan, alaprajz)
- absztrakciós szintek és nézetek két külön dimenzió
- minden szint saját nézete
![modulfloorplan, azaz alaprajz](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/modul_floorplan.PNG)

----

# Téma 4 - FPGA alapú tervezés lépései
> fájl: [4. ppt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/T4_KMOOC_UKDA_2017_v4.pptx)
>
> ![FPGA rendszertervezés](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/digitalis_rendszer_tervezese.PNG)
>
> ![FPGA fájl generálás lépései összefoglalva](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/fpga_fajl%20gen.PNG)
>
> Ebben a részben a hallgató megismerheti az FPGA alapú tervezés lépéseit, tervezési módszereket és a tervezés különböző fázisaiban alkalmazható ellenőrzési módszereket.
>
> A hallgató egy átfogó képet kap a tervezés különböző fázisai után alkalmazható tesztelési módszerekről. A téma elsajátítását követően a hallgató  képes lesz a tervezőeszközben alkalmazni az ellenőrzés különböző szintjeit.

## Szintézis
- **Magas szintű**
  - átalakítja a regiszter műveletekre (regiszter szintű leírásra)
- **Regiszter szintű**
  - regiszter szintű viselkedési leírás analízise alapján felépíti az áramkört a regiszter szintű elemeket használva
- **Kapu szintű**
  - a strukturális megvalósítás kapu szintű elemekre épül
  - két vagy többszintes optimalizálási eljárás alklamazása az áramkör méretének minimalizálására
- **Technológiai leképezés**
  - minden rendszer tartalmaz előre lekészített kapu szerű primitív elemeket amiket egy cella standard célkönyvtárból vagy logikai cella az FPGA rendszeréből
  - a kapu szint implementálásához egy partikuláris rendszeren az elemeket le kell képezni a kiválasztott célrendszerre **=> ez a technológiai leképezés** 

## Fizikai tervezés
- finomítási folyamat
- **Particionálás**
- **Alaprajzi tervezés**
  - létrehoz egy tevet processzor és regiszter szinten
- **Elehelyezés és huzalozás**
  - terv cella szinten, az áramkör primitív elemeiből és elvégzi a huzalozást
- **circuit parameter extraction**
  - az elhelyezés és routolás után mind kapcsolat helye és hossza ismert
  - az asszociált parazita kapacitás és ellenállás kiszámítható

## Ellenőrzés
- **funkcionális: a rendszer az elvárt kimenetet szolgáltatja?**
- **időzítés: teljesíti az időbeli korlátokat?**
- **teljesítmény: betartja a részegységek meghatározott áramkorlátokat?**

### Ellenőrzési módok:
- szimuláció
- időanalízis
- teljesítmény analízis
- hardver emuláció
  - prototípus áramkör FPGA-n
  - beépített analizátor

## FPGA alapú tervezés fontosabb lépései:
### Szintézis
- Kapu szintű
- regiszter szintű
- processzor szintű
> - Szintézis során a `VHDL` vagy  `Verilog` programkód lefordítódik `netlist` (`NGC - Native Generic Circuit` vagy `EDIF-Standard Electronic Interchnage Format`) formátumra. Szintetzáció során a `HDL` leírás kapu sizntű netlist állománnyá amit az `UNISM`könyvtárra képez le.
>   - több alegység esetén minden alegységhez tartozik egy ilyen állomány
>     - szintaxis ellenőrzés
>     - analizálja a terv hierarchiáját

### Implementáció
#### Fordítás
> - több külöböző hardver leíró nyelven készítettállomány egyesítése egyelten `netlist`(`EDIF`) fájlba
> - kombinálja az `NGC` fájlokat és a megkötéseket `User Constraints File` amiből létrejön egy logikai fájl, az `NGD` - *Native Generic Database* az `NGD Build` segítségével. 
>   - a `User Constraints File` hozzárendeli a ki/bemeneti portokat az FPGA lábakhoz és meghatározza az időzítési követelményeket
> **=>** Ha az **`NGC` az `UNISM` könyvtárra alapoz akkor *szintézis* után viselkedési szimuláció**t végez
>
> **=>** Ha az **`NGD` az `SIMPRIM` könyvtárra alapoz akkor *fordítás* után időalapú szimuláció**t végez

#### leképezés/mappolás
> **`NGD` => leképezés => `NCD`**
>
> - a logikai elemeket tartalmazó áramköröket alegységekre osztja
> - az `NGD`ben definiált logikát képzi le az FPGA elemeire: [CLB](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#clb), [IOB](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#iob), [Block RAM](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#bram), DSP, stb ami egy `NCD - Native Circuit Description` állományt generál, amely leírja fizikailag az áramkör elemeit
> - **ismerjük az FPGAból, hogy milyen elemket használunk, csak nem tudjuk melyiket, ezt oldja meg a MAP**

#### elhelyezés és huzalozás (Place and route)
>**`NCD` => *elhelyezés és huzalozás* => huzalozott `NCD`**
>
> `PAR` program végzi
> 
> Az előző fázis eredményeként kapott alegységeket elhelyezi az FPGA blokkba, figyelembe véve a megkötéseket, és összehuzalozza ezeket.
>
> A folyamat során figyelmebe veszi és feloldja a kényszerfeltételek közti ellentéteket.

### Konfigurációs fájl létrehozása
> Az eszköz beprogramozása: `BITGEN` program generál az `NCD` ből `BIT` típusú állományt ami feltölthető az FPGAba egy feltöltő programmal mint az `IMPACT`

### Ellenőrzés
- Szimuláció
  - viselkedési
  - funkcionális
    - fordítás után
    - leképezés után
  - időzítési
    - elhelyezés és huzalozás utáni
- verifikáció
  - logikai analizátor
  - Hardver co-szimuláció

# VHDL programok szerkezete
fájl: [ppt 5](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/T5_KMOOC_UKDA_2017_v5.pptx)
> A fejezetben a hallgató megismerheti a VHDL program szerkezetét: alkalmazott könyvtárak meghatározása, tervezett modul portjeleinek meghatározása valamint  a tervezett hardver strukturális szinten vagy viselkedési szinten való leírása.

> A `HDL` egy speciális számítógépes programozási nyelv, amelyet elektronikus áramkörök, a leggyakrabban digitális áramkörök,  struktúrájának és viselkedésének a leírására

> Egy tervezőeszköz alkalmazásával lehetővé teszi a HDL-leírás szintetizálását *netlist* formátumba. A *netlist* formátum tartalmazza az elektronikai komponensek specifikációját és  azok összekapcsolását. A *netlist* állományban meghatározott komponensek elhelyezhetőek és huzalozhatóak az FPGA áramkörben a céláramkör létrehozására vagy alkalmazható maszkok létrehozására és az integrált  áramkör legyártására. Összehasonlítva programozási nyelvekkel, a HDL nyelvek magukba foglalják az idő fogalmát.

> A HDL programozási nyelvek szerves részét képezik az `EDA (Automatizált Elektronikus Tervezés)` rendszereknek.

> A VHDL és a Verilog a leggyakrabban alkalmazott, digitális rendszerek tervezésére használt hardver leíró nyelv. A kurzus során a rendszerek tervezésére a VHDL-t alkalmazzuk. A VHDL-ből könnyen át lehet térni a Verilog alapú tervezésre.

> A VHDL hardver leíró nyelv alkalmazásával, CPLD makro cellákból és FPGA áramkörök konfigurálható logikai tömbjeiből igen bonyolult működésű áramköröket lehet létrehozni/tervezni.

> A `VHSIC` - **V**ery **H**igh **S**peed **I**ntegrated **C**ircuit 
> `VHDL`- `VHSIC` **H**ardware **D**escription **L**anguage
> `ADA` és `PASCAL` nyelvekből származik

## Nyelvi tulajdonságok
- újrahasználható
- technológia független
- létező tervekbe új technológiák is beépíthetőek

## `STD_LOGIC` és `STD_LOGIC_VECTOR` adattípus
````VHDL
{’U’, ’X’, ’0’, ’1’, ’Z’, ’W’, ’L’, ’H’, ’-’} 
````

**`U`** - Nem inicializált, a jelhez vagy változóhoz **nincsen értéke rendelve** (Szimulációban alkalmazott)

**`X`** - **Határozatlan logikai állapot**

**`W`** - Gyenge határozatlan logikai állapot, jel, egy olyan értéket vesz fel amit **nem lehet sem logikai 0-nak sem logikai 1-nek értelmezni**. 

**`0`** - **Határozott logikai `0`**, akkor veszi egy jel ezt az értéket, ha szabványos meghajtó áramkör vezérli

**`1`** - **Határozott logikai `1`**, akkor veszi egy jel ezt az értéket, ha szabványos meghajtó áramkör vezérli

**`Z`** - Nagy impedanciás érték, **háromállapotú meghajtó áramkör**

**`L`** - **Gyenge logikai `0`**, a meghajtó vezérlő áramkör ***gyenge meghajtó áramot szolgáltat***

**`H`** - **Gyenge logikai `1`**, a meghajtó vezérlő áramkör ***gyenge meghajtó áramot szolgáltat***

**`-`** - Redundáns érték

## Lexikális elemek
**Megjegyzések - `--`**

**Azonosítók**
- Alkalmazható karakterek
  - Latin ABC betűi
  - Számok
  - Aláhúzás
  
**Operátorok: `+`, `-`, `&`, `*`, `/`, `.`, `<`, `=`, `>`, `|`, `/=`, `:=`, `>=`, `<=`, `<>`**

**Tömkbök: `[]`**

**Karakterek**
**Karakterláncok**
**Konstansok:** `constant  e: real :=2.71828;`, `constant delay: Time :=5ns;`, `constant max_size : natural;`, `variable  intr: bit_vector(31 downto 0);`

**Számok**
- Egész 
- Lebegőpontos: pl: `Type jelszint is range -10.00 to 10.00;` vagy `Type valoszinuseg is range 0.0 to 1.0;`, előre definiált: `Real` -1E38	tól 1E38–ig
- Valós
  - *N* alapú:
  	-`Based_literal::=base#basedinteger[.basedinteger]#[exponent]`
  	- `2#1100_0100#	16#C4#	4#301#E2` = 196
  	- `2#1.1111_1111_111#E+11	16#F.FFFE2` = 4095.0
   - *Bit string*
  	- `Bit_string_literal:==base_specifier”bit_value”`
  	- `base_speifier::=B|O|X`
  	- `bit_value::=extended_digit{[underline]extended_digit}`
  	- `B”10101100”` = 8 bit
  	- `O”126” = 3 x 3 bit = `B”001_010_110”`
  	- `X”56”` = 2 x 4 bit = `B”0101_0110”`
  
**Kulcsszavak**:`abs, access, after, alias, and, architecture, array, assert, attribute, begin, block, body, buffer, bus, case, component, configuration, constant, disconnect, downto, else, elsif, end, entity, exit, file, for, function, generate, generic, guarded, if, impure, in, inertial, inout, is, label, library, linkage, literal, 
loop, map, mod, nand, new, next, nor, not, null, of, on, open, or, others, package, port, postponed, procedure, process, pure, range, record, register, eject, rem, report, return, rol, ror, select, severity, shared, signals, sra, srl, subtype, then, to, transport, type unaffected, units, until, use, variable, wait, when, while, with, xnor, xor`

**Objektumok:**
- Jel (signal) –összeköttetés (vezeték)
- Változó (variable)
  - csak folyamatokban (process) 
  - Helyi tároló elem
- Állandó
- fájl

### könyvtárak használata
![VHDL modell szerkezete és könyvtárak kapcsolata](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/vhdl%20modell%20szerkezet.PNG)
```VHDL
LIBRARY konyvtar_neve
USE konyvtar_neve.csomag_neve.csomag_resze
```
Minimálisan három könyvtárra van szükség:
- `ieee.std_logic_1164` (ieee könyvtárból)
- `std` standard könyvtárból
- `work` saját munkakönyvtárból

```VHDL
LIBRARY ieee;
USE ieee.std_logic_1164.cell;

LIBRARY work;
USE work.all;
```

#### IEEE könyvtár csomagok
- `Std_logic_1164  std_logic` (8 szint) és `std_ulogic` (9 szint) többszintű logikai rendszerek
- `Std_logic_arith` –signed és unsigned adattípusok és erre vonatkozó aritmetikai és összehasonlító  és adatkonverzióra használt műveletek: `conv_integer(p)`, `conv_unsigned(p,b)`, `conv_signed(p,b)`, `conv_std_logic_vector(p,b)`
- `Std_logic_signed STD_LOGIC_VECTOR` adaton értelmezett függvényeket tartalmaz ha az adat `SIGNED` tipusú, inkrementálás, dekrementálás támogatása `std_logic_vector` típusokon
- `Std_logic_unsigned` - `STD_LOGIC_VECTOR` adaton értelmezett függvényeket tartalmaz, ha az adat `UNSIGNED` típusú
- `Numeric_std`: `signed` és `unsigned` adattípusok és erre vonatkozó aritmetikai és összehasonlító  és adatkonverzióra használt műveletek

##### `std_logic_arith`
**Típusok:** `unsigned`, `signed`
**Aritmetikai:** `+`, `-`, `*` 
**Összehasonlító műveletek:** `<`, `<=`, `>`, `>=`, `=`, `/=` 
**Eltolás:** `shl`, `shr` 
**Konverzió** `conv_integer`, `conv_unsigned`, `conv_signed`

##### `IEEE.numeric_std`
**Aritmetikai:** `+`, `-` , `*`, `/`, `remm`, `mod`
**Összehasonlító műveletek:** `<`, `<=`, `>`, `>=`, `=`, `/=` 
**Eltolás:** `SHIFT_LEFT`,  `SHIFT_RIGHT`, `ROTATE_LEFT`, `ROTATE_RIGHT`, `sll`, `srl`, `rol`, `ror` 
**Konverzió** `TO_INTEGER`, `TO_UNSIGNED`, `TO_SIGNED`
**Logikai műveletek:** `Not`, `and`, `or`, `nand`, `nor`, `xor`, `xnor`

## `Entity`
![egy netity váza](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/entity.png)

`PORT`: egy listát tartalmaz az összes ki és bemeneti, meghatározva a jel típusát és iránáyát
```VHDL
ENTITY entitás_neve IS
GENERIC
(GENERIC-us paraméterek);
PORT (
	jel1_neve: jel_modjel1_típus;
	jel2_neve:jel2_modjel2_tipus;
	…);
END entitás_neve;
```
A jel típusa lehet: `Bit`, `STD_LOGIC`, `INTEGER` stb
A jel iránya: `In`, `out`, `Inout`, `buffer`

Az `AND` entity:

![AND](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/and.PNG)
````VHDL
ENTITY es_kapu IS
	PORT (	X1: IN bit;
			    X2: IN bit;
		    	Y: OUT bit;)
	END es_kapu
	ENTITY es_kapu IS
		PORT
			(X: IN std_logic_vector(1 downto 0);
			  Y: OUT std_logic;
	END es_kapu;
````

## `Architecture`
![architektúra](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/architecture.png)
```VHDL
ARCHITECTURE az_architektura_neve OF entitás_neve
	[Deklarációs rész szignálok:, komponensek (COMPONENT) , függvény FUNCTION, jelek (SIGNAL), konstansok (CONSTANT), változok (VARIABLE), típusok (TYPE)]
BEGIN
	Programkód rész;
END az_architektura_neve;
```

```VHDL
ENTITY mux
	Port(I0: IN bit;
		I1: IN bit;
		S0: IN bit;
		O: OUT bit);
END mux;
ARCHITECTURE arch1 OF mux IS
 
BEGIN
	O<= ((not S0) and I0) or (S0 and I1);
END arch1
```

```VHDL
ARCHITECTURE arch2 OF mux IS
Signal p1:bit;
Signal p2:bit;
BEGIN
p1<=(not S0)and I0;
P2<= S0 and I1;
0 <= p1+p0;
END arch2;
```

## Adattípusok
- `Integer` – egész típus [-231-1, 231-1], **műveletei:** `+`, `-`, `*`, `/`, `mod` modulo, `rem` egésszel osztás maradéka, `abs` abszolútérték, `**` hatványozás
- `Boolean` – Boole típus {true, false}
- `bit` típus: {’0’, ’1’},  *egy jelhez nem csupán kétállapotú jelszinteket lehet rendelni (nagyimpedanciás állapot, jelkonfliktus)*
- `bit_vector` típus –bit típusú elemekből álló tömb, *egy jelhez nem csupán kétállapotú jelszinteket lehet rendelni (nagyimpedanciás állapot, jelkonfliktus)*
*`bit` és `bit_vector` helyett lehet `STD_LOGIC` és `STD_LOGIC_VECTOR`*
- `real`
- Felsorolás (`enumeration`)
- Vektorok (`Array`s)
- Rekordok
- fizikai mennyiségek: `nm`, `um`, `mm`, `cm`, `dm`, `m`, `km` stb
  ```VHDL
    type Time is range --im plementation defined-- ;
    units fs; -- femtosecond 
    ps = 1000 fs; -- picosecond 
    ns = 1000 ps; -- nanosecond 
    us = 1000 ns; -- microsecond 
    ms = 1000 us; -- millisecond 
    sec = 1000 ms; -- second
    min = 60 sec; -- minute 
    hr = 60 min; -- hour 
    end units;
    
    type CAPACITANCE is range 0 to 1000000000 -- set up system for capacitance
    units pf ; -- smallest allowable unit is 
    nf = 1000 pf; -- nanofarad, 
    uf = 1000 pf; -- microfarad mf = 1000 
    uf; -- millifarad 
    f = 1000 mf; -- farad 
    end units CAPACITANCE ;   
    ```
## Rekordok
````VHDL
Type utasitas is 
Record	
	utasitas_kod : processzor_utasitas;
	cimzesi_mod: cimzesi_mod_tipus;
	operandus_1 : integer range 0 to 15;
	operandus_2: integer range 0 to 31;
End record utasitas;
````

````VHDL
type DATUM is record
HONAP : STRING (0 to 20);
NAP : INTEGER range 1 to 31;  
EV : INTEGER range 1800 to 2050; 
end record DATUM; 
````

````VHDL
Type CIM is record 
UTCA : STRING (0 to 50); 
IRANYITOSZAM : INTEGER range 0 to 99999;
HELYSÉG : STRING (0 to 50); 
ORSZÁG : STRING (0 to 40); 
end record ADDRESS; 
````

## Altípusok (`subtype`)
> lehetővé teszi, hogy az objektum által felvehető értékeket korlátozzuk  az alaptípus  csak egy bizonyos részére

````VHDL
Subtype kimenetek_szama is integer range  0 t0 400;
Subtype digits is character range ‘0’ to ‘9’;
subtype MEM_ADR is INTEGER range 0 to 1023;
subtype BUS_VAL is INTEGER range 0 to 65535;
````
## Attribútumok
- **típushoz kapcsolódó attribútumok (scalar attribute):** `T'BASE       is the base type of the type T`
- **signal-hoz kapcsolódó attribútumok (signal atribute):** `T'last_value -visszatéríti az utolsó esemény előtti értéket`
- **vektor-hoz kapcsolódó attribútumok (array atributes):** `T'length -vektor mérete`
- **saját attrbútumok:**
  - Deklarálni kell az attribútumot: `ATTRIBUTE attribútum_neve : attributum_tipusa`
  - Specifikálni kell az attribútumot
  ```VHDL
  ATTRIBUTE  attributum_neve: OF  cel_elem_neve : osztaly IS ertek; 
  ```
  - attribútum típusa: bámely adattípus: `BIT`, `INTEGER`, `STDÜLOGIC_VECTOR`, `STRING` stb
  - Osztály `Type`, `SIGNAL`, `FUNCTION`
  - Értek: “11111”, 27, “WRITE_FIRST”, “READ_FIRST”
  ```VHDL
  ATTRIBUTE bemenetek_szama : integer;
  ATTRIBUTE bemenetek_szama of nand3 : SIGNAL is 3;
  Inputs <- nand3’bemenetek_szama;
  ```

## Értékadás
- signálnak: `<=`
- változók/konstansok: `:=`
- vektor elemeinek: `=>`
példák:
````VHDL
SIGNAL x:std_logic;
VARIABLE  y: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL w:std_logic_vector(0 to 7);
x<='1';
y:="0000";
w<="10000000"
w<=(0=>'1', others=>'0')
````

# Téma 5 - VHDL szekvenciális kifejezések
fájl: [5.ppt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/commit/ef9ffb8d1e283bb76510a6ceeec8e29bcec77007)

példaprogramok: [5.téma példaprogramjai](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/commit/be6bd0fb4be191fad6f8e1a922521a4188608c82)
> Ebben a részben a hallgató megismerheti a VHDL-ben alkalmazható fontosabb szekvenciális kifejezéseket: process, feltételes értékadás, ciklusok, signal (jel) és variable (változó) közötti különbség.
>
> Egyszerű szekvenciális és kombinációs áramkörökre bemutatott példák alapján felismerheti az egyes kódolási módszerek sajátosságait.
> 
> A hallgató képes lesz az ismeretek elsajátítását követően kombinációs és szekvenciális áramkörök modellezésére.

## Konkurens rész 
> - **a konkurens rész az `architecture` által van képviselve** amely, tartalmaz:
>	- **`process`**-t
>	- **konkurens eljárás hívás**t (`procedure`)
>	- **konkurens jelhozzárendelés** 
>	- **komponens példányosítás**t  

## Szekvenciális rész
> - **`process`** (folyamatban) **vagy alprogramrészben** található szekvenciális kifejezések
> - a szekvenciális kifejezések **abban a sorrendben vannak végrehajtva, ahogy megjelennek a process vagy alprogram részekben**

> `VHDL PROCESS` – legegyszerűbb megoldás szekvenciális áramkörök tervezésére 
> - Szekvenciális kifejezés
> - Minden `PROCESS` egyetlen kifejezés
> - **Az `architecture`-ben minden processzus egyszerre (konkurensen) hajtódik végre**
> 
> A `PROCESS` a terv többi részével a `PROCESS`-en kívül deklarált `SIGNAL`-okon és `PORT`-okon kommunikál

**szekvenciálisan végrehajtódó utasítások:** **`PROCESS`**, `FUNCTION`, `PROCEDURES`, `IF`, `WAIT`, `CASE` `LOOP`, `VARIABLE` - szintén csak szekvenciális kódgenerálásban vagy lokálisan, `SIGNAL` –globálisan alkalmazható, bővebben: [vhdl-online.de/vhdl_reference_93](https://www.vhdl-online.de/vhdl_reference_93/start)

### Szekvenciális kifejezések csak `PROCESS`–en belül alkalmazhatóak:
> **értékadás** (hozzárendelés, assignment): **változóknak**, **jeleknek**
> 
> **folyamatirányító kifejezések** (utasítások): 
> - *feltételes*: `IF`, `CASE`, `LOOP`
> - *ciklus*: `FOR...LOOP`, `WHILE LOOP`, `UNTIL`
> - *ugrás*: `NEXT`, `EXIT`
>
> **alprogramrészek**: `FUNCTION`, `PROCEDURES` 
>
> **várakozás**, amíg egy esemény történik: `WAIT`
>
> **semmi** sem történik: `NULL`

#### `PROCESS`
> - egy szekvenciális algoritmust implementál
> - Tartalmazhat szekvenciális és konkurens kifejezéseket
> - Szekvenciális kifejezések csak a `PROCESS` -en belül alkalmazhatók

**szerkezete:**
```VHDL
[címke]:PROCESS (érzékenységi lista)
	[típus deklarálás]
	[konstans deklarálás]
	[változó deklarálás]
	[VARIABLE változó_neve típus [intervallum] [:=kezdeti_érték]]
	[alprogram deklarálás]
BEGIN
	-- implementációs rész --meghatározzák mely signal értékadása fog végrehajtódni.
	……..
	szekvenciális kifejezések
	-- IF, WAIT, CASE, LOOP
	……..
END PROCESS [címke];
```
**A `PROCESS` aktiválódik, ha**
- a `PROCESS`-t követő listából (érzékenységi lista) a jelek értéket váltanak
- a `WAIT` kifejezésből  a jelek értéket váltanak

**`PROCESS` – (explicit) érzékenységi listával**
- aktiválódnak amikor az élesítő listából bármely jel állapotot vált
- nem tartalmazhat `WAIT`-et
- végén van egy implicit `WAIT ON` 
- kiértékelése a végén függesztődik fel

**`PROCESS` élesítő lista nélkül**
- tartalmaznia kell legalább egy **`WAIT`**-et
	- Egyes tervező eszközök esetében a `WAIT` kifejezés rögtön a `BEGIN` után kell következzen
	- A `PROCESS` az első `WAIT`–ig fut
- A `WAIT` kifejezés meghatározza a `signal`–okat, amelyek változását monitorizáljuk
- A `PROCESS`–ek akkor aktiválódnak, amikor a `WAIT` kifejezés után meghatározott `signal`-ok értéket váltanak
- A `PROCESS` a következő `WAIT` kifejezésig fut
- *Egyes tervezőeszközök `PROCESS`–enként több `WAIT` kifejezést engedélyeznek*

**`PROCESS` kiértékelése:**
- A **már egyszer aktiválódott** `process` kiértékelése a **legutolsó felfüggesztéstől kezdődik**
- fentről lefele hajtódik végre
- Ha a  process végéig nincs (még) egy `WAIT` (újabb `WAIT`), a kiértékelés visszaugrik a `PROCESS` elejére és folytatódik (a `WAIT`-ig)

**A hivatkozott jelek állapota a jelek (`signal`ok) állapota a `PROCESS` inditásakor:**
- Az összes `signal` értékadás csak lehetséges értékadás
- A `PROCESS`-en belül  a `signal`-ra az utolsó értékadás érvényesül
- a `signal` értékadása csak a `PROCESS` kiértékelésének végén történik

**Kombinációs áramkört megvalósító process**

![Kombinációs áramkört megvalósító process rajza](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/kombinacios_aramkor_process.PNG)

```VHDL
entity log_lut is
    Port (-- S0 : in STD_LOGIC;
           --S1 : in STD_LOGIC;
           I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           q : out STD_LOGIC);
end log_lut;

architecture Behavioral of log_lut is
begin
	
process (I0, I1, I2, I3)
begin
q<=((I0 and I1) or (not I2)) and I3;
end process;
end Behavioral;
```

**Szekvenciális áramkört megvalósító process**

> ***Szekvinciális áramkörök/hálózatok***
> 
> *A sorrendi hálózatok, vagy más néven a szekvenciális hálózatok feladata, az **időfüggő logikai függvények megvalósítása**.*
> 
> *Fontos tulajdonságuk, hogy **a kimeneti események állapotát nem csak a bemeneti feltételek, hanem már a korábban végbement kimeneti események is befolyásolják**.*
> 
> ***Aszinkron** szekcinciális hálózatok:* 
> *Ez a szekvenciális hálózat azon fajtája, amelynél **a kimenet előző állapotától való függését visszacsatolással vagy tárolókkal valósítják meg**. A bementi jellemző megváltozására a kimenti jellemző **azonnal reagál**.*
>
> ![aszinkron tárolóval](https://cms.sulinet.hu/get/d/05c1f5fb-fc34-41cf-9be9-ae9be6f62ff0/1/4/b/Large/15_4_1__Aszinkron_halozatok_tombvazlata_taroloval.jpg)
>
> ***Szinkron** szekvenciális hálózatok:* 
> *Az **állapotváltozás** egy engedélyező jel hatására, azzal **azonos fázisban zajlik le**. Ezt az engedélyező jelet órajelnek, vagy más néven ütemjelnek nevezzük. **A kimenet előző állapotától való függést tárolók segítségével valósítják meg**.*
>
> ![szinkron szekvenciálsi hálózat rajza](https://cms.sulinet.hu/get/d/c55f3fe2-375d-41e8-9b00-6e56fa39efcd/1/4/b/Large/15_4_1__Szinkron_halozatok_tombvazlata.jpg)


![Szekvenciális áramkört megvalósító process rajza](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/szekvencialis_aramkor_processe.PNG)

```VHDL
process (src_clk, reset)
variable counter : std_logic_vector(BIT_SZAM-1 downto 0);
begin
   if reset='1' then 
     counter := (others=>'0');
   elsif src_clk'event and src_clk='1' and CE='1' then
     counter := counter+1;
  end if;
        q<=counter;
end process;
end Behavioral;
```

**Reset nélküli D típusú tároló**

![Reset nélküli D tároló váza](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/reset_nelkuli_D_tarolo.png)

> ***A D típusú tároló***
>
> *Bementére adott információ a kimenetén egy vezérlőjel időtartamával késleltetve jelenik meg. Akkor kapunk `D tárolót`, ha a `J=K` értékkombinációkat kizárjuk.*
>
> *igazságtáblázata és rajzjele:*
>
> ![D típusú tároló igazságtáblázata](https://cms.sulinet.hu/get/d/56e8905e-7877-40be-94b2-bf3c6364c78b/1/4/b/Normal/15_4_2__D_tarolo_igazsagtablazata.jpg) ![D típusú tároló rajzjele](https://cms.sulinet.hu/get/d/12665802-65d5-499c-b6ca-4d926a8b866a/1/4/b/Normal/15_4_2__D_tipusu_tarolo_rajzjele.jpg)
>
> *forrás: [integrált áramkörök logikai típúsai - sulinet](https://tudasbazis.sulinet.hu/hu/szakkepzes/elektronika-elektrotechnika/digitalis-alaparamkorok/integralt-tarolo-aramkorok-logikai-tipusai/j-k-t-d-tarolok)*

```VHDL
process (src_clk)
begin
   if src_clk'event and src_clk='0' then --Felfutó él detektálás
      q <= d;
   end if;
end process;
end Behavioral;
```

**D típusú tároló Reset jellel**

![Resettel D tároló váza](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/D_tarolo_resettel.png)

Példa: [aszinkron reset a lefutó óraélen](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_1.vhd), [szinkron reset a lefutó óraélen](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_3.vhd), [szinkron reset felfutó óraélen](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_4.vhd), [szinkron reset felfutó óraélen órajel engedélyezéssel](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_5.vhd)
```VHDL
process (src_clk, reset)
begin
   if src_clk'event and src_clk='0' then --Felfutó él detektálás
   --Szinkron reset
   if reset='1' then
      q <= '0';
    else
    -- Szinkron reset kezelés vége
     q<=d;      
   end if;
   end if;
end process;
end Behavioral;
```

**példa:**

![példaáramkör](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/process_pl.png)

```VHDL
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-------------------------------------------
entity pelda_2 is
    Port (src_clk: in std_logic;
          reset : in std_logic;
          d : in std_logic;
          q : out std_logic);
end pelda_2;
--------------------------------------------
architecture Behavioral of pelda_2 is

begin
process (src_clk, reset)
begin
     -- Szinkron reset	
    if reset='1' then
   elsif src_clk'event and src_clk='0' then
   -- Szinkron reset eddig
      q <= d;
   end if;
end process;
end Behavioral;
```

#### `SIGNAL`OK
- vezeték szerepe komponensek között összekapcsolásra
- deklarálható: 
	- `PACKAGE`-ben
	- `ENTITY`-ben (`port` típusú szignál)
	- `ARCHITECTURE`-ban
- módosítása csak `PROCESS`  végén történik
- **`SIGNAL` értékadás: `jel<=kifejezes`**

#### `VARIABLE` - változók
- csak `PROCESS`-en belül deklarálható, és tartalma `PROCESS`-en kívül nem érhető el 
- Alkalmazható  köztes eredmények tárolására.
- módosítása azonnali
- **Változó értékadás: `valtozo_neve:=kifejezes`**

#### `IF` –feltételes végrehajtás
```VHDL
IF feltétel THEN
	értékadás ha a feltétel igaz
ELSE 
	értékadás ha a feltétel hamis
END IF;
```

```VHDL
IF (x<y) THEN temp:=“11111111”;
ELSIF (x=y and w=‘0’) THEN temp:=“11110000”;
ELSE temp:=(OTHERS=>’0’);
END IF;
```

**Számláló megvalósítása példa:**

fájl:[bináris felfele számláló *szinkron* resettel felfutó óraélen órajel enegdélyezővel](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_6.vhd), [bináris felfele számláló *aszinkron* resettel felfutó óraélen órajel engedélyezővel](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_6b.vhd)
```VHDL
LIBRARY ieee;
USE ieee.std_logic_vector;
----------------------------------------------
ENTITY counter IS
	PORT (clk: IN STD_LOGIC;
		 digit: OUT INTEGER RANGE 0 TO 9); --Változó deklarálás
END counter
----------------------------------------------
ARCHITECTURE counter OF counter IS
BEGIN
	count:PROCESS(clk)
		VARIABLE temp : INTEGER RANGE 0 TO 10; --Változó deklarálás
BEGIN
	IF (clk’EVENT AND clk=‘1’) THEN	--Felfutó él detektálás 
		temp:=temp+1;
		IF (temp=10) THEN --Változó visszaállítása nullára
			 temp:=0;
		END IF; --
	END IF
	digit <=temp;
END PROCESS count;
END COUNTER
```

#### `CASE`
- **Csak szekvenciális kódgenerálásra alkalmazzuk!**

![case](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/case.png)

példa: [D típusú tároló esetében](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_8c.vhd)
```VHDL
[ cimke: ] case kifejezés is 
	when K1 => szekvenciális kifejezések;
	 when K2 => szekvenciális kifejezések; 
	when others => szekvenciális kifejezések; 
 end case [ cimke ] ; 
```

multiplexer áramkör esetében `case when` megvalósítás: [fájl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_7.vhd)
```VHDL
process (sel)
variable counter : std_logic_vector(BIT_SZAM-1 downto 0);
begin
   case (sel) is
   when "000" =>
      q<=a;
   when "001" =>
         q<=b;
   when "010" =>
        q<=c;
   when "011" =>
         q<=d;
   when "100" =>
         q<=e;
   when "101" =>
         q<=f;
   when "110" =>
         q<=g;
   when "111" =>
         q<=h;
   when others =>
         q<='X';
end case;
end process;
 end Behavioral;
```

#### `WAIT`
Ha a `PROCESS`-en belül alkalmazzuk a `WAIT` parancsot, a `PROCESS`-nek nem lehet érzékenységi paramétere
- A program  végrehajtódik a következő `WAIT`–ig 
- A program végrehajtása felfüggesztődik, amíg a `WAIT feltétele` teljesül

**A WAIT parancs formái:**
`WAIT UNTIL signal_condition;`
`WAIT ON signal1 [, signal2,…] ;`
`WAIT FOR time;`

##### `WAIT UNTIL`
- a `PROCESS`-nek nincs érzékenységi listája, a `WAIT UNTIL` parancs kell az első kifejezés legyen a `PROCESS` folyamaton belül
- **a `PROCESS` minden alkalommal végrehajtódik, mikor a feltétel teljesül**
```VHDL
PROCESS  --nincs erzékenyégi lista!!!!!!!
	WAIT UNTIL (clk’EVENT AND clk=‘1’);
	IF (rst=‘1’) THEN
		output <=“00000000”;
        ELSIF (clk’EVENT AND clk=‘1’) THEN
		output <=input;
        END IF;
END PROCESS;
```

![példa](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/wait_until.png)

D típusú tároló `WAIT UNTIL`lal: [fájl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_8d.vhd)
```VHDL
entity pelda_8d is
GENERIC (BIT_SZAM : natural :=8);
  Port ( src_clk : in std_logic;
          reset : in std_logic;
         d : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0)
  );
end pelda_8d;

architecture Behavioral of pelda_8d is

begin

PROCESS  --nincs erzékenyégi lista!!!!!!!
begin
	WAIT UNTIL src_clk'EVENT AND src_clk='1';
	IF (reset='1') THEN
		q <=(others=>'1');
	ELSE
		    q <=d;
	END IF;
END PROCESS;
end Behavioral;
```
##### `WAIT ON`
**Várakozik mindaddig amíg valamelyik jel változik**
```VHDL
PROCESS
BEGIN
		WAIT ON clk, rst
		IF (rst=‘1’) THEN
			output <=“00000000”;
		ELSIF (clk’EVENT AND clk=‘1’) THEN
			output <=input;
		END IF;
END PROCESS
```

***`CASE` és `WAIT ON` plda:***

![case & wait on](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/case%26wait_on_p%C3%A9lda.png)

példa D típusú tároló esetében: [fájl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_8.vhd)
```VHDL
entity pelda_8 is
GENERIC (BIT_SZAM : natural :=8);
  Port ( src_clk : in std_logic;
        reset : in std_logic;
         d : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0)
  );
end pelda_8;
 
architecture Behavioral of pelda_8 is
 begin
PROCESS
BEGIN
	WAIT ON src_clk, reset;
	IF (reset='1') THEN
		q <="00000000";
	ELSIF (src_clk'EVENT AND src_clk='1') THEN
		q <=d;
	END IF;
END PROCESS;
```

`if` helyett `case` esettel:[fájl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_8c.vhd)
```VHDL
entity pelda_8c is
GENERIC (BIT_SZAM : natural :=8);
  Port ( src_clk : in std_logic;
        reset : in std_logic;
         d : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0)
  );
end pelda_8c;
 
architecture Behavioral of pelda_8c is
 begin
PROCESS
BEGIN
WAIT ON src_clk, reset;
CASE reset IS
	WHEN '1' =>  q<=(others=>'0');
	WHEN '0' => IF (src_clk'EVENT AND src_clk='1') THEN
			q<=d;
		        END IF;
WHEN OTHERS => NULL;
END CASE;
END PROCESS;
END Behavioral;
```

##### `WAIT FOR`
- csak szimulációra alkalmazzuk
- `WAIT FOR idő;` - Várakozik hogy elteljen a WAIT FOR után meghatározott idő
***Órajel generálása szimulációhoz***
```VHDL
<clock>_process :process
   begin
	<clock> <= '0';
	wait for <clock>_period/2;
	<clock> <= '1';
	wait for <clock>_period/2;
     end process;
```
***A bemeneti jelek megadása az idő függvényében.***
```VHDL
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
           reset=‘1’;	
      wait for 100 ns;	
	reset=‘0;’
      wait for <clock>_period;
	start=‘1’;
     -- egyéb bemenetek 
      wait;
     end process;
```

#### `LOOP`
**`FOR / LOOP` – véges ciklusszám**
```VHDL
[címke:] FOR azonosito IN intervallum LOOP
	(szekvenciális kifejezés)
END LOOP [címke];
```
**`WHILE / LOOP` -a ciklus addig ismétlődik, amíg a feltétel igaz**
```VHDL
[címke:] WHILE feltétel LOOP
	(szekvenciális kifejezés)
END LOOP [címke];
```
**`EXIT`- ciklus vége**
```VHDL
[címke:] EXIT [címke_b] [WHEN feltétel];
```
**`NEXT` átugorhatunk lépéseket a ciklusból**
```VHDL
[címke:] NEXT [cimke_b] [WHEN feltétel];
```

**Pl:**
[fájl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_9.vhd)
```VHDL
FOR i IN 0 TO 5 LOOP
	x(i)<=enable AND W(i+2);
	y(0,i)<=w(i);
END LOOP;
WHILE (i<10) LOOP
	WAIT UNTIL clk’EVENT AND clk=‘1’;
		other statements
END LOOP;
```
[fájl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/tema5_peldaprogramok/pelda_10.vhd)
```VHDL
FOR I IN data’RANGE LOOP
	CASE data(i) IS
		WHEN ‘0’ => count:=count+1;
		WHEN OTHERS =>EXIT;
END CASE;
END LOOP;

FOR I IN 0 TO 7  LOOP
	NEXT WHEN i=skip;
		…
END LOOP
```
**next pl:**
- `next;`
- `next cimke;`
- `next when A>B; 
- `Next cimke when C=D or done;` -- done is a Boolean variable 

**exit pl:**
- `exit statement` 
- `exit;`
- `exit cimke;` 
- `exit when A>B;`
- `nexit cimke when C=D or done;` -- done – boole változó

#### Véges állapotú automata

![véges automata](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/vegess_allap%C5%91otu_automata.png)
````VHDL
process (AKT_ALL_reg,start,cont)
Begin
	case (AKT_ALL) is
		when 0 =>	if start = '1' then
				KOV_ALL <= 1;
			else
				 KOV_ALL <= 0;
			end if;
		when 1 =>	if cont ='1' then
				 KOV_ALL <= 4;
			else
				 KOV_ALL <= 2;
			end if;
		when 2 => KOV_ALL <= 3;
		when 3 => if cont = '1' then 
				KOV_ALL <= 4;
			else	
				KOV_ALL<=3;
			end if;					
		when 4 => KOV_ALL<= 5;
		when 5 => KOV_ALL<= 0;
		when others => KOV_ALL <= 0;	
	end case;
end process;
````

```VHDL
process (clk,reset)
begin	
If reset='1' then
	AKT_ALL<=0;
	elsif clk'event and clk='0' then
	AKT_ALL <= KOV_ALL;
end if;
end process;
```
-----------
# Téma 7 - Konkurens VHDL utasítások, kódfejelsztés a konkurencia felhasználásval
fájlok: [téma 7 ppt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/T7_KMOOC_UKDA.pptx), [VHDL mintakód `generate`-re](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/pelda_12_generate.vhd)

> Ebben a fejezetben a hallgató megismerheti a konkurens VHDL utasításokat. Összehasonlítva a szekvenciális utasításokkal, több típusú áramkör szekvenciális és konkurens utasítással is megvalósítható. 
> 
> Példaprogramok tanulmányozásával elsajátíthatja a fontosabb utasítások működését és különböző gyakorlati alkalmazását.
>
> A generikus (`GENERIC`) paraméterek valamint a `FOR GENERATE` és  `IF GENERATE` utasítások alkalmazásával lehetőség van egyszerű módon bonyolultabb áramköröket is megtervezni.
>
> A `Block` típusú utasítás működését is megismerheti a hallgató, viszont a kurzus keretében nem alkalmazzuk. A kurzus terjedelme ugyanakkor nem teszi lehetővé a függvények (`FUNCTION`) és eljárások bemutatását.

## Szekvenciális VS konkurens utasítások
> - A **szekvenciális processzen belül** abban a sorrendben ahogy jönnek a processzen belül.
> - A **konkurens utasítások egymással párhuzamosan** hajtódnak végre. 
>
> **Két külön process párhuzamosan hajtódik végre**, a bennük levő utasítások viszont egymás után egymáshoz képest.
>
`SIGNAL` hozzárendelés konkurensen, **feltétel nélkül**i: `a <= b` - azonnali utasítás
`SIGNAL` hozzárendelés konkurensen, **feltétellel**: `WHEN`-el, ezzel lehet kétirányú síneket megadni:
````VHDL
jel <= [kifejezes when 	feltetel 
			else ...]
	kifejezés;
````
pl: `x<=a when c ='0';` vagy `x<=a when c = '0' else b;` 

Az összes eset lekezelése:
```VHDL
with szelekcios_bemenet select
jel<= kifejezes_1 when választási_lehetőségek_1,
      ...
      kifejezés_n when választási_lehetőségek_n,
      [kifejezés when others];
```
Az `others` akkor kell ha minden egyéb jelet kezelünk és nem adjuk meg pontosan a bemenő jelet.

Block utasításokban párhuzamosíthatunk, mint alábba példa, vagy a következőket is megtehetjük: 
- Port és generikus változok deklarálása
- (port map és generic map)
- Típus és alltípus deklarációs
- Allprogramrészek deklaráslás + megvalósítás  
- Konstans változó és signal deklarálás
- Komponens deklarálás
- File, attributum és konfiguráció deklarálás
- többszintes egymásba ágyazás: block a blockban

````VHDL
entity pelda is
 Port (-- S0 : in STD_LOGIC;
           --S1 : in STD_LOGIC;
           I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           q : out STD_LOGIC);
end pelda;

architecture Behavioral of pelda is
Signal s0, s1 : std_logic;
Begin

-- párhuzamosan a következők:

RTL_AND_1: process(I0, I1)	
Begin
	S0<= I0 and I1;
end process;

RTL_OR: process(S0, I2)	
Begin
	S1<= S0 or (not I2);
end process;

RTL_AND_2: process(S1, I3)	
Begin
	q<= S1 and  (not I2);
end process;

-- párhuzamosítás vége

End process;
````

## blokkok belsejében hozzárendelés vezérlése `guard`-dal

```VHDL
Label: BLOCK (guard expression)
	[declarative part]
BEGIN
	(concurrent guarded and unguarded statements)
END BLOCK label;
```

## Hogyan tervezzük meg a kódot a konkurenciára alapozva?
- lehetővé tenni  közös részek megosztását és újrahasznosítását
- elemeket a könyvtárba (`LIBRARY`) helyezni
- kódrészek megírhatóak:
	- komponens
	- függvényként
	- eljárásként

## `Generate`
mintafájl: [pelda_12_generate.vhd](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/pelda_12_generate.vhd)

Két verzióval: `FOR ... GENERATE` és `IF ... GENERATE`. Előbbi egy ciklusként adott számszor rakja be a modult, utóbbi kivételeket kezelehet le.

pl `FOR`os verzióra:
````VHDL
Label1: FOR azonosító IN intervallum GENERATE
	(konkurens hozzárendelés)
END GENERATE;
````
péld `IF`es verzióra:
````VHDL
Label2: IF feltétel GENERATE
	(konkurens hozzárendelés)
END GENERATE;
````
természetesen egymásban is használható egyik a másikkal pl:
````VHDL
Cimke1: FOR ciklus_azonosító IN intervallum GENERATE
	...
	Cimke2: IF feltétel GENERATE
		(konkurens  hozzárendelés)
	END GENERATE;
	...
END GENERATE;
````

## `Package`
- komponensek (`COMPONENTS`) 
- függvények (`FUNCTIONS`) 
- eljárásokon (`PROCEDURES`) 
- típusok `TYPE`
- konstansok `CONSTANT`

**Szerkezete**, a két `csomag_neve` attribútum meg kell egyezzen, ha ugynahhoz a csomaghoz tartozik: 
````VHDL
PACKAGE csomag_neve IS
	(Deklarációs rész;)
END PACKAGE

[PACKAGE BODY csomag_neve IS 
	(Függvények és eljárások leírása;)
END csomag_neve;]
````

példa:
```VHDL
LIBRARY ieee;
USE ieee. Std_logic_vektor.all;
	PACKAGE példa_csomag IS
		TYPE állapot 	IS (st1, st2, st3, st4);
		TYPE szín 	IS (red, green, blue, black);
		CONSTANT vector : STD_LOGIC_VECTOR (3 downto 0):=”1111”;
	END példa_csomag;
```
--------
# Téma 8 - Tesztelés
fájlok: [pdf](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/k%C3%B6nyvek/FPGA%20aramkorok%20tesztelese_2017_2018_v4_2017_11_27_e(1).pdf), [mintaprogramok](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/tree/master/t%C3%A9ma%208%20-%20M%C3%BCk%C3%B6d%C3%A9s%20k%C3%B6zbeni%20tesztel%C3%A9s-20200419)

> Ebben a részben a hallgató megismerkedhet az FPGA-ban elkészített modulok tesztelési lehetőségeivel. A témában részletesen van tárgyalva egy FPGA-ba betöltött modul működés közbeni tesztelése.
> 
> A példaprogram alapján egy tcl szkript programban van megvalósítva egy áramkör működés közben való tesztelése. A tesztelés során a tesztelendő jelek az FPGA-ba integrált ILA modulon keresztül vannak kivezetve az FPGA laphoz csatolt számítógépen futó grafikus felületre.
>
> A VIvado programból a tcl szkrip futtatásával automatikusan létrejön a tesztkörnyezet.
>
> Javasolt, hogy a minta alapján a hallgató akár egy általa elkészített VHDL modulra, vagy a példaprogramok közül kiválasztott modulra készítse elő a szimulációs környezetet.

Tesztelésre több lehetőség is van:
- áramkör szimulációja
- külső méréssel
- logikai analizálás az FPGA-n

Szimulációk:
- behavioral simulation - viselkedési szimuláció szintezést követően
- functional simulation - funkcionális szimuláció fordítást követően
- static timing analysis - statikus időanalízis leképzésifázis után
- timing analysis - az elhelyezéstés huzalozástkövetően
- az áramkör teljesítményanalízise (szimuláción kívül)

*Sokszor az FPGA áramkör helyes működést mutat önmagában, bekötés után viszont helytelent. A probléma megoldásához működés közben kell vizsgálni a jeleket.* 

Az adatok az FPGA áramkörből a JTAG láncon vannak kivezetve ami USB vagy Ethernettel csatlakozik a számítógéphez ahol a jelek megjelenhetnek grafikusan ábrázolva. 

## Tesztelendő áramkör
- előosztó és számlálóból álló áramkör
teljes fájl: [téma 8.../top_level_2.vhd](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/t%C3%A9ma%208%20-%20M%C3%BCk%C3%B6d%C3%A9s%20k%C3%B6zbeni%20tesztel%C3%A9s-20200419/top_level_2.vhd)
````VHDL
modulo : process(src_clk)

variable x: integer range 1023 downto 0 := 0;
variable q_div: STD_LOGIC:= '0';

begin
if src_clk'event and src_clk='1' then
	if x<div_val then 
		x:=x+1;
		--q_div:=q_div;
	else
		x:=0;
		q_div:=not(q_div);
	end if;
	q_clk<=q_div;
end if;

end process modulo;
````
````VHDL
szamlalo: process(q_clk, reset)
variable sz: std_logic_vector(3 downto 0);
begin

if q_clk'event and q_clk='1' and start='1' then
if  reset='1' then
 sz:=(others=>'0');
 else
    sz:=sz+1;
    end if;
end if;
    q<=sz;
end process szamlalo;
````

## Tesztelés működés közben
Tesztelés *Vivado*ban:
- Set Up Debug varázsló (Debug Cores integrálással)
- XDC modul a tervhez kapcsolása

Tesztelés *áramkörben működés közben*:
- tesztelendő jelek kijelölése
	- jel HDL forrásodban megjelölése
	- megjelölésszintetizált áramkörben
	- jelek megjelölése `tcl`paranccsal való megjelölésre
- implementációs fázis: tesztelésre használt IP magok terve implementálása, konfigurációs fájl létrehozása
- Analízis fázis: jelek kiolvasása működés közben

## Tesztkörnyezet konfigurálása
- SetUpDebug varázslóhasználata
- jelek megjelölése és IP modulhoz rendelése
	- `unassigned nets` listából kiválasztás
	- jelek megjelölése szintetizált áramkörben - jobb klikka  vezetékre  a Sinthesized Design nézetben
- `Set UP Debug` parancs végrehajtása:
	- Flow navigátor ablak -> Synthesis -> Synthetized Design -> Set Up Debug vagy Tools -> Set Up Design
	- Window menü -> Debug nézet -> jelek kijelölése  Unassigned Debu Nets lista -> Set Up Debug 
-újabb jelek hozzáadása/meglévő elvetése: `Find Nets to ADD`
- órajel kiválasztása
-trigger/capture mód megadása
- `Finish` gomb

`TCL` prancsokkal terv létrehozása, az alábbi scriptet futtatvamindne lépés automatikusan végrehajtódik, és az eszköz kész a tesztelésre:
teljes fájl: [teszt_debug_3.tcl](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/t%C3%A9ma%208%20-%20M%C3%BCk%C3%B6d%C3%A9s%20k%C3%B6zbeni%20tesztel%C3%A9s-20200419/teszt_debug_3.tcl)
```
set terv_nev teszt_7
set konyvtar C:/Munka/I_Felev/UKDA_2017/L6
start_gui
create_project ${terv_nev} ${konyvtar}/${terv_nev} -part xc7z010clg400-1
```
VHDL hardver leíró nyelv beállítása
```
set_property target_language VHDL [current_project]
```
VHDL forráskódnak a tervhez való csatolása
```
add_files -norecurse ${konyvtar}/top_level_2.vhd
```
Megkötés állománynak a tervhez valócsatolása
```
add_files -fileset constrs_1 -norecurse ${konyvtar}/system_4.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
```
Szintézis futtatás
```
launch_runs synth_1
```
Várakozás a szintézis befejezésére
```
wait_on_run synth_1
```
Synthesized Design megnyitása
```
pen_run synth_1
```
Debug core magnak a tervhez való csatolása
```
create_debug_core u_ila_0 ila
```
ILA modul konfigurálása
```
set_property C_DATA_DEPTH 65536 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN true [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]  #enable advanced trigger mode
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0] #enable Basic capture mode
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk
```
ILA modul órajelének meghatározása
```
connect_debug_port u_ila_0/clk [get_nets [list src_clk_IBUF_BUFG]]
```
A Testmodulon probe0 sínszélességének meghatározás
```
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
```
probe0 bemenetre a start, reset és q_div jelek csatolása

A forráskódban meghatározott jelek nem érhetőek el tesztelésre a szintézist követően, hanem a bemenetek esetében a `start_IBUF` `reset_IBUF` jeleket alkalmazzuk, kimenetek esetében pedig a `q_OBUF` jeleket `connect_debug_port u_ila_0/probe0 [get_nets [list start_IBUF reset_IBUF q_div]]`jeleket kell alkalmazni

Egy újabb bemenet (probe1) létrehozása a tesztmodul bemenetére
```
create_debug_port u_ila_0 probe
```
Sínszélesség beállítása
```
set_property port_width 4 [get_debug_ports u_ila_0/probe1]
```
`q_OBUF[0]`, `q_OBUF[1]`, `q_OBUF[2]`, `q_OBUF[3]`  kimenetekneka `probe1` bemeneti portra való csatolása
```
connect_debug_port u_ila_0/probe1 [get_nets [list q_O*]]
```
Megkötés fájl mentése
```
save_constraints_as system_${terv_nev}.xdc
set_property constrset system_teszt_6.xdc [get_runs synth_1]
set_property constrset system_teszt_6.xdc [get_runs impl_1
```
Implementáció lefuttatása
```
aunch_runs impl_1
wait_on_run impl_1
```
Konfigurációs fájl generálás
```
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
```
harver megnyitás
```
open_hw
```
Szerver indítása az FPGA áramkörre való kapcsolódás céljábó
```
onnect_hw_server
```
Célhardver megnyitása
```
open_hw_target
```
Konfigurációs.bit fájl és debug_net.ltx beállítása
```
set_property PROGRAM.FILE
${konyvtar}/${terv_nev}/${terv_nev}.runs/impl_1/top_level_2.bit [lindex [get_hw_devices] 1]
set_property PROBES.FILE 
${konyvtar}/${terv_nev}/${terv_nev}.runs/impl_1/debug_nets.ltx [lindex [get_hw_devices] 1]

current_hw_device [lindex [get_hw_devices] 1
```
hardver frisítése
```
refresh_hw_device [lindex [get_hw_devices] 1
```
Hardver programozása
```
program_hw_devices [lindex [get_hw_devices] 1]
refresh_hw_device [lindex [get_hw_devices] 1
```

A tesztelés lépései:
1) A top_level.vhd modul alapján egy terv létrehozása
2) Atesztelendő jelek kiválasztása, a debug interfésznek a tervbe való csatolása, a jeleknek a tesztmodulba való csatolása 
3) Órajeltartomnyok kiválasztása
4) tesztelő ILA IP modul paraméterezése
5) terv implementálása, implementáció elindításaa `tcl` parancsablakból: `launch_runs impl_1`
6) Konfigurációs fájl létrehozása: `launch_runs impl_1 -to_step write_bitstream`
7) Hardver  menedzser  megnyitása, kapcsolódás hardvereszközhöz

-----
# Téma 9 - `System Generator` alapú hardver tervezés
fájlok: [pptx](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/T9_KMOOC_System%20Generator_2017_A_v2_2017_12_01.pptx), [pdf](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/UKDA_L3_2017_v3_2017_12_01.pdf)
> Ebben a részben a hallgatók megismerhetik a System Generator környezetet, a megvalósítható feladatokat,  tapasztalatot szereznek System Generator típus terv kialakításában. Megismerkednek a fontosabb modulokkal, adat típusok konverziójával a Simulink környezetből System Generatorba és vissza.
>
> A tapasztalatok alapján a hallgatók képesek lesznek egyszerű modelleknek System Generatorban való kialakítására és szimulációjára.
> 
> Az alapötletek elsajátítását követően komplexebb feladatokat is meg tudnak valósítani

## System Generator for DSP 
- pontos lebegő és fixpontos implementáció bit és ciklus segítségével
- Simulinkből HDL kódot generál
- Hardver ko-szimuláció
	
DSP modellezés:
- Jelfeldolgozás (CORDIC, Cascaded Integrator-Comb (CIC) filters, FFT, IFFT, FIR filter)
- Aritmetikai és logikai művelet alapú rendszerek
- Memória alapú rendszerek
- Interfész

Teszteléskor az FPGA lábairea kell csatolni: 
- a jeleket, amelyeket egy külső oszcilloszkóppal szeretnénk tanulmányozn
- a jeleket, amelyeket egy külső logikai analizátorral szeretnénk tanulmányozni

**Fontosabb alkalmazási területek**
-jelfeldolgozás:  trigonometirai függvények generálása újrakonfigurálható logikában
-szűrőalgoritmusok: FIR, CIC
-Gyors Fourier transzformáció

**alkalmazásának előnyei:**
- Stimulus generálása (Simulink töbökkel)
- tervezett rendszer analízise (az összes kimenő és átmeneti jel analizálása)
- DSP tervezés (összetett számítások esetében is)

### Simulink Xilinx eszköztár
	The Xilinx Blockset is a family of libraries that contain basic System Generator blocks. Some blocks are low-level, providing access to device-specific hardware. Others are high- level, implementing (for example) signal processing and advanced  communications algorithms.
- **egyszerű áramköri elemek**: regiszterek, összeadók, számlálók, 
- **digitális jelprocesszálásra szolgáló modulok**: DSP modul, FIR szűrő, Komplex szorzómodul, FFT, Inverz FFT
- **memória modulok**: FIFO, BRAM, Dual port BRAM, FIFO
- **kommunikációs modulok**: Reed-Solomon Encoder, Reed-Solomon Decoder
- **típuskonverzió**

Könyvtár elérése: `Tools`->`Xilinx`->`Block Add` *vagy* `Xilinx Block Add` gyorsmenüvel

### Adat típusok
System Generator tömbök adattípusai:
- Boolean
- Tetszőleges pontosságú fix-pontos
- Lebegőpontos: *IEEE-754 Standard* ábrázolással: `Single`, `Double`, [`Custom`](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/Lebeg%C5%91pontos%20adatt%C3%ADpus%20-%20tetsz%C5%91leges.gif) - a pontosságtól függően, a tetszőlegesnek a legnagyobb hardverígénye de a elgnagyobb pontossága is
Simulink alap adattípus (double *dupla pontosságú lebegőpontos*) Gateway tömbök:
> *Gateway out modul a Xilinx jeleket visszaalakítják double jelekké*
- Gateway In - a `doble` típusú Simulink jelet átalakítják `XILINX System Generator` jellé *és* mintavételezési szerepe is van, mintavételezi a folytonos Simulink jeleket
- Gateway out - modul a Xilinx jeleket visszaalakítják double jelekké
#### Simulink – System Generator közti átmenet:
> Quantization in this context refers to how the tools handle the LSBs of numbers. When a large floating point number is converted to a fixed point number, a lot of “unnecessary” precision is lost. Users must decide whether to “cut the precision off” (truncate) or to round the result for the nearest precision value.
> 
> Overflow in this context refers to how the tools handle the MSBs of numbers. When a large floating point number is converted to a fixed point number and the number is too large to be represented by the fixed point number scheme, users must decide whether to allow Wrap (the MSBs are dropped) or to Saturate the result (like when a counter reaches its max value)  so that the maximum number is used for values greater
than it 

![Simulink – System Generator közötti adatcsere](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/Simulink%20%E2%80%93%20System%20Generator%20k%C3%B6z%C3%B6tti%20adatcsere.PNG)

	A `Gateway IN` valósítja meg a típuskonverziót a Simulink és FPGA között.
	Az átmentet az FPGA lap és a Simulink szimulációs program között automatikusan hozza létre a System Generator környezet.

### Jel típusok
- Előjel nélküli: `Ufix_5_3` - 5 biten ábrázolt: 2 bit az egész részre és 3 bit a törtrészre
- Előjeles: `Fix_16_8` - kettes komplemens 16 biten ábrázolva: 8 bit a törtrész
**Lebegőpontos szám fixpontossá alakítása**kor veszít a pontosságból, el kell dönteni, hogy kerekítjük, vagy levágjuk a biteket, ezt előre a pontossággal adjuk meg.
Pontosságuk lehet: 
- full precision   
- User-specified precision 
	- kvantálással: Truncate, Round 
	- Túlcsordulással: Wrap, Saturate, Flag as error

## Bit pontos (bit-true) és ciklus pontos (cycle true) modellezés
Bit szintű műveletek: `Reinterpret`, `Combine`, `Convert`, `Extract`
	**Bit pontos (bit-true):** System Generator és a Simulink tömbök határánál, a szimuláció során előállított érték **bit szinten tökéletesen megegyezik a megfelelő pontban a hardver által generált értékkel**
	**ciklus pontos (cycle true):** a határoknál **a megfelelő értékek a megfelelő időben generálódnak**

## Mintavételezés
System generator fordítás után **a megfelelő rész a megfelelő mintavételezéssel működjön.**.
- mintavétlezési periódus egy órajelből (`clk`) és az órajelhez kapcsolódó órajel engedélyező (`CE`) jelből áll elő. Az órajelet engedélyező jel periódusa az órajel periódusának egész számú többszöröse.
- a mintavételezési periódus alapján  határozza meg, milyen órajel engedélyező jel kell
- felhasználó két paramétert ad meg: `Simulink system period` and `FPGA clock period` - Meghatározza a skálázási tényezőt a Simulink szimulációs idő  és a hardveres implementációnak megfelelő idők között

## System Generator
- `Simulink system period`: a mintevételezési periódus legnagyobb közös osztója
példa:
	- `P`- Simulink modell periódusa
	- `C`- FPGA rendszer órajelének periódus
	- Egy szimuláció amely `k*p` egységet igényel a Simulink szimulációban, `k` órajelet igényel a hardverben (`k*c [ns]`)

**Hibakezelés**
- Clock Probe
- Clock Enable Probe

## Modulok importálása:
- entitások nevei nem egyezhetnek 
- Két irányú portok nem jelennek meg a System Generatorban mint portok csak a HDL black box modulban
- órajel (clk) és órajel engedélyező (CE) csak párban működik, `Clk`, `ce std_logic` típusúak
- Lemenő élre triggerelt kimeneti adat nem alkalmazható

### Black Box Configuration M-Function elemei
*HDL modul a BlackBox tömbbel importálható*
- `Top_level` modul neve
	- Meg kell határozni a `top level entity`-t és meg kell adni az alkalmazott Hardver Leíró Nyelvet: `this_block.setEntityName(‘proba’);`
	- VHDL Module: `this_block.setTopLevelLanguage('VHDL'); `
	- Verilog Module: `this_block.setTopLevelLanguage('Verilog');`
- alkalmazott HDL nyelv (VHDL/Verilog)
- portok
	- Bemeneti port hozzáadása: `this_block.addSimulinkInport('din');`
	- Kimeneti Port hozzáadása: `this_block.addSimulinkOutport('dout');`
	- Kétirányú port hozzáadása `config_phase = this_block.getConfigPhaseString;  if (strcmpi(config_phase,'config_netlist_interface')) this_block.addInoutport('bidi'); -- Rate and type info should be added here as well end` - Szimulációban nem jelenik meg **!!**
	- portok leírása:
	```VHDL
	din = this_block.port('din'); 
	dout = this_block.port('dout'); 
	dout.setWidth(12); 
	dout.setBinPt(8);
	dout.makeUnsigned(); 
	```
	Vagy
	```VHDL
	dout = this_block.port('dout'); 
	dout.setType('Ufix_12_8'); 
	```
	Kétirányú port esetében szimulációs adat mentése
	```VHDL
	if (strcmpi(this_block.getConfigPhaseString,'config_netlist_interface')) 
	bidi_port = this_block.port('bidi'); 
	bidi_port.setGatewayFileName('bidi.dat'); 
	end 
	```
	- mintavételezési ráta megadása: `setRate` határozható meg egy jel mintavételezési rátája
	```VHDL
	setRate, dout.setRate(3); 
	--Kimeneti portok típusa és kimeneti ráta a bemenet függvényében:
	input_width = this_block.port('din').width; 
	input_rate = this_block.port('din').rate; 
	if (this_block.inputTypesKnown) 
		dout.setWidth(this_block.port('din').width); 
	end
	
	if (this_block.inputRatesKnown) 
		dout.setRate(this_block.port('din').rate*2);
	end  
	```
- generikus paraméterek: `addGeneric('dout_width','Integer','12');`
	- konfigurációs függvényben a Generic paraméter beállításával skálázható a hardver
- órajel konfig: Egy szinkron órajel (single clock) *vagy* több aszinkron (multilpe independent clock)
	- órajel (`clk`) és az órajel engedélyező (`ce`) párban kell létezzenek, 
	- a *ce* és *clk* a névben is szerepelnie kell: `src_clk` és a párja `src_ce` `addClkCEPair('clk_3','ce_3',3);`
- mintavételezési ráta
- kapcsolódó állományok
- van-e benne kombinációs logika

## Kompilálás
- `IP Catalog` - IP mag hozható létre, hozzáadható a Vivado IP katalógusához, más tervben való alkalmazás céljából
- `Hardware Co-Simulation` (JTAG or Point-to-point Ethernet) - A ko-szimuláció során a Xilinx tömbökkel megadott rész, a szimuláció futása során az FPGA áramkörben hajtódik végre
- `Synthesized Checkpoint` - Creates a design checkpoint file (synth_1.dcp) that can then be used in any Vivado IDE project. 
- `HDL Netlist` - Létrejön egy HDL netliszt, amely szintén felhasználható más tervekben

-----
# Téma 10 - Hardver ko-szimuláció
fájlok: [System Generator_ERASMUS_2017_laptoprol_B_2017_12_01.pptx](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/System%20Generator_ERASMUS_2017_laptoprol_B_2017_12_01.pptx)
> Ebben a részben a hallgató megismerkedik a harver ko-szimulációval. Simulink (System Generator) környezetben megvalósított hardverre lehetőség van a szimuláció futtatása során, hogy a Simulink modelből az az FPGA modulok a szimuláció közben az FPGA áramkörben fussanak le.
>
> Ebben a részben System Generator  hardver ko-szimuláció típusú terv létrehozása van bemutatva. Ez az üzemmód lehetővé teszi például egy eszköznek: robot kar, adatgyűjtésre szolgáló modul, Simulink környezethez való csatolását és a rendszereken futó feladatok gyors tesztelését.
>
> Nagyon rövid idő alatt van lehetőség ötletek kivitelezésére, megvalósíthatóságának tesztelésére.   A System Generatorban tervezett  FPGA egységből létrehozható  egy IP modul, amely például a Vivado eszközzel integrálható egy nagyobb tervbe. A diákok a modul elsajátítása után képesek lesznek hardver ko-szimulációs típusú feladatok megvalósítására és ötleteikből kiindulva FPGA áramkörbe konkrét feladatokat gyakorlatba ültetni.

- Simulink szimuláció során a modell egy részének az FPGA áramkörben való végrehajtását
- Simulink és FPGA eszköz közötti kommunikációs interfészt automatikusan létrehozza a System Generator tervezőeszköz, lehet: `JTAG`, `Ethernet`
- fordítás után létrejön egy Simulink tömb, ezen keresztül megy a kommunikáció a lappal

**FONTOS:** Az FPGA fejlesztőlapot, amelyen szeretnénk a hardver ko-szimulációt futtatni, fel kell telepíteni a számítógépre: [telepítés instrukciók](https://reference.digilentinc.com/reference/software/vivado/board-files?redirect=1
), [master-board fájl letölltés](https://github.com/Digilent/vivado-boards/archive/master.zip
)

## Órajel
### Single clock üzemmód
Alapértelmezetten a szimuláció csak a `JTAG` órajelre működik, ezért `Multiple clock domain`-t kell létrehozni, a tervet két modulra kell bontani, az egyikben `JTAG` interfész en átvitt jelek kerülnek, a másikon rendszer órajelén működő részek.
### Multiple clock domain 
Mindkét modulon külön órajelre sznikronizáljuk a *Simulinkhez kapcsolódó jeleket (modulok) I/O portokat JTAG órajeleket (`jtag_clk`)* és az *FPGA-hoz kapcsolódó kimeneti jeleket (modulok) `sys_clock`*

**Órajel létrehozása:**
```VHDL
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { sys_clock }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { sys_clock }];
```
be kell másolni az `.xdc` állományba:
	netlist_mclk\hwcosim\pwm_mclk.srcs\constrs_1\imports\sysgen\pwm_mclk_clock

----

# Téma 11 - Magas szintű szintézis - Bevezető
fájl: [High_Level_Synthesis_SZIR_FMR_2017_okt_31_hu_2017_12_01.pptx](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/High_Level_Synthesis_SZIR_FMR_2017_okt_31_hu_2017_12_01.pptx)
> Ebben a részben a hallgató megismerkedhet a magas szintű szintézissel. A téma keretében rámutatunk a magas szintű szintetizáló eszközök lényegére, vagyis  egy maga szintű programozási nyelven specifikált feladatból lehetőség van hardver modulok létrehozására. A téma keretében részletezve vannak a magas szintű szintetizáló eszközök alkalmazásának előnyei. A hallgatónak a téma elsajátítását követően rálátása lesz a magas szintű szintézisre: milyen szintetizáló eszközök alkalmazhatóak, a fontosabb lépések, részfeladatok, melyeket a HLS eszközök követnek a C, C++, System C specifikációból kiindulva az RTL szintű modell létrehozásáig.

> Megmutatjuk a HLS eszközökkel kapcsolatosan felmerülő kérdéseket. Tárgyalva vannak a HLS alapú tervezésben alkalmazott architektúra  szintű kényszer típusok,  modul hierarchia, interfész, memória, ciklus szintű kényszerek, időkorlátok, iteráció szintű kényszerek.

> A magas szintű szintézisről három előadás keretében mélyítheti el ismereteit a hallgató.

> Az első, bevezető részt követő részben részletekbe menően tárgyaljuk a HLS szintetizálás során a feladatok ütemezését, erőforrás kiosztást, tömb és ciklusoptimalizálási ötleteket.

> A harmadik részben konkrét feladatnak Vivado HLS környezetben való bemutatására kerül sor.

## Beágyazott rendszerek tervezése
- Bonyolult SoC és multimédia alkalmazások (Hosszú tervezési idő)
	- Hálózat az integrált áramkörben
	- Több intelligens erőforrás (több master egység) (CPU, DMA,…)
	- Több megabájtnyi programkód
	- A beágyazott rendszeren futó beágyazott operációs rendszer
	- Osztott memória
- SoC tervezési problémák
	- A szoftver komplexitása (az algoritmus komplexitása)
	- Eszközök a beágyazott hardver tervezéshez/beágyazott szoftver (OP) tervezéshez
	- A piacra kerülési idő (a hagyományos módszerekkel hosszú )
	- IP magok újra felhasználása
	- Magas szintű szintetizáló eszközök alkalmazása
	- Tervezési lehetőségek  felkutatása
- A magas szintű szintézis csak egy kis része a magas szintű tervezésnek

### Tervezőeszközök
	tervező eszköz hozza létre az RTL szintű implementációt
- Vivado HLS (XILINX)
- Synopsys (Synphony C Compiler High-Level Synthesis from C/C++ to RTL)
- Cadence® Stratus™ High-Level Synthesis (HLS) 

### Magas szintű szintézis (HLS)
[wikipedia](https://en.wikipedia.org/wiki/High-level_synthesis), [xilinx.com/.../esl-design.html](http://www.xilinx.com/products/design-tools/vivado/integration/esl-design.html)

	- Vivado HLS meghatározza melyik műveletet melyik ciklusban kell elvégezni (ütemezés)
	- Meghatározza melyik művelet végrehajtására, milyen hardveregységet alkalmaz 
	- Ehhez:
		- Beépített alapértelmezések betartása
		- meghatározott alapelvek (direktívák) és kényszerfeltételek felülírják az alapértelmezett beállításokat
		- Késleltetések és területhasználat kiszámítása az alkalmazott technológia/eszköz függvényében

> **Meghatározás:** automata vagy félautomata módon létrehoz egy RTL szintű leírást egy viselkedési szinten megadott specifikációból.
> 
> **Bemenet:** 
> - Viselkedés szintű specifikáció
> - Tervezési kényszerek
> - Könyvtárelemek az elérhető RTL komponensekkel
>
> **Kimenet:**
> - RTL leírás
> - Teljesítmény értékelés
> - Milyen gyorsan sikerül a számítást elvégezni?
> - Mennyi hardver erőforrásra van szükség?
> - Mennyire hatékonyan sikerült létrehozni egy pipeline struktúrát?

**Direktívák prioritása:
1. Teljesítmény teljesítése (idő  & áteresztőképesség)
2. Késleltetés (latency)
3. Területhasználat optimalizálása**

> **Magas szintű szintézis** –az algoritmus leírása valamilyen magas szintű programozási nyelven (System C, Ansi C/C++, Matlab)
>
> A magas szintű kód analízise, architektúra szinten  kényszereknek való alávetése és megfelelő ütemezése után létrejön egy terv RTL (Register Transfer Level) absztrakciós szinten,  valamilyen hardver leíró nyelven (például VHDL, Verilog).  
>
> Tervező eszköz által hardver leíró nyelven létrehozott tervet egy logikai szintetizáló eszközzel szintetizálva elkészül a hardver 

A **hardver tervezés** történhet különböző absztrakciós szinten. Általában alkalmazott absztrakciós szintek:
- Kapu szintű absztrakció
- Regiszter szintű absztrakció
- Algoritmus szintű absztrakció

**A tervező** *leírja a modulok funkcionalitását* és *megtervezi a modulok közötti kommunikációhoz a protokollt*
A magas szintű **szintetizáló eszköz** *kezeli a mikro-architektúrát (RTL)*, *átalakítja az időkorlát nélküli vagy részlegesen időzített funkcionális kódot teljesen időzített RTL megvalósításra*, *automatikusan létrehozza az órajel szintű részletes hardvert*.
Az elért (RTL) megvalósításhoz használnak egy hagyományos logikai szintetizáló eszközt,  amely létrehozza a kapu-szintű megvalósítást.

**Automatizált tervezés:**
- értelmezi egy kívánt viselkedés algoritmus szinten való leírását 
- létrehoz egy digitális hardvert, amely megvalósítja a tervet

**HLS-re szakirodalomban alkalmazott kifejezések:**
- C synthesis
- electronic system-level (ESL) synthesis, 
- algorithmic synthesis
- behavioral synthesis

Gyakran **alkalmazott programozási nyelvek:** `C`, `C++`, `SystemC`, `Matlab` kódból képesek hardvert szintetizálni.

**célja:** hardver tervezők sázmára biztosítja a hardver tervezését, tesztelését, ellenőrzését, feladat leírás magas absztrakciós szinten.

**részfeladatai: **
- Lexikális feldolgozás (Lexical processing)
- Algoritmus optimalizálása (Algorithm optimization)
- Vezérlés/Adatfolyam analízis (Control/Dataflow analysis)-
	- Elvégzendő műveletek felderítése
	- Adatfüggőségek felderítése
- Könyvtár processzálás (Library processing) –lehetséges erőforrások keresése az elvégzendő műveletek  megvalósításhoz
- Erőforrás kiosztása (Resource allocation) -az erőforrások hozzárendelése az elvégzendő műveletekhez (az adatút kialakítása)
- Erőforrások ütemezése (Scheduling)
	- Az erőforrások ütemezése (melyik műveletvégző egységet mikor kell működtetni)
	- Alegységek szinkronizálása
	- A vezérlőegység kialakítása
- Funkcionális egységek hozzárendelése (Functional unit binding )
- Regiszterek csatolása (Register binding)
- Kimenetek processzálása

**automatikusan alkalmazhatóak kényszerek (megszorítások) az architektúrára:**
- *Hierarchia* – a modulok hogyan épülnek hierarchikusan egymásra
- *Interfész (Interface):* Meghatározni milyen interfészen valósul meg kommunikáció különböző modulok között
- *Memória (Memory)* - Milyen méretű memóriából lehet kialakítani egy tömböt, **ha egy adatsort memóriába tároltam, akkor csak szekvenciálisan tudom kiolvasni vagy beírni** az adatokat
- *Ciklus szintű kényszerek (Loop)* - Egy adott ciklust hogyan szeretnék megvalósítani (pipeline, párhuzamos)
- *Alacsony szintű időkorlátok (Low-level timing constraints)* - Milyen frekvencián működik a rendszer?, Két jel között mekkora lehet a maximális késés? Minimum milyen frekvencián mintavételezek egy jelet? 
- *Iteráció szintű kényszerek*

##### Interfész szintézis
> A bemeneteket leírva egyszerűen C/C++ nyelven és alkalmazva egy automatizált interfész szintetizáló technológiát, amely az interfészen megoldja az időzítéseket (szinkronizálást) és az interfészhez hozzárendeli a kommunikációs protokollt
>
> Kiválasztom a tervezés során az interfész típusát => a tervezőeszköz létrehozza.

**Hardver interfész opciók:**
- Adatfolyam (streaming)
- Egy portos BRAM memória
- Két portos BRAM memória
- FIFO modulok
- Kézfogás alapú mechanizmusok


#### HLS előnyei
- Algoritmus szintű absztrakció, 
	Adat típusok (egész, fix pontos, lebegőpontos aritmetika
	Interfészek (FIFO, AXI4, AXI4-Lite, AXI4-Stream)
- Könyvtár elemek széleskörű választéka
	tetszőleges pontosságú adattípusok
	Video feldolgozáshoz könyvtári elemek
	DSP
	Memóriamodulok
- Kényszerfeltételekkel definiált architektúra
	Leghatékonyabb megoldás feltárása
- Gyorsított ellenőrzés C / C ++ programkód használatával
	Tesztpad létrehozása
	Szimuláció
	Szintézis

#### HLS hátrányai
- Hatalmas tervezési tér
	- Komplex tervezési tér feltárás
	- Több kritériumon alapuló optimalizáló technikák
		- Minél gyorsabb legyen az algoritmus
		- Lehető legkevesebb elemet alkalmazzak
	- Adatcserére alkalmazott szabványok hiánya 
	- SoC szimulációs idő kulcsfontosságú kérdés
- A HLS technikának a tervezők által való elfogadása! (nem kis gond)
	- A beágyazott rendszert tervező (HDL) és a HLS eszközt tervező (C,C++) között egy közös nyelv találása
		- Beágyazott rendszer tervező HDL
		- HLS eszköztervező C stb.

#### HLS technikai problémák
- **PC: Kompilálás:** a cél architektúra teljes mértékben ismert
- **HLS-sel való tervezés:** a cél architektúra csak parciálisan ismert
	- **Adatfolyam/szisztolikus tömbök:** RTL leírás
	- **Adat utat tartalmazó véges állapotú automata:** processzoron futó alkalmazáshoz közel álló leírás
- **HLS technikai kérdések:**
	- Kezdeti specifikáció formátum / nyelv?
	- Specifikáció finomítása : egész számok (előjeles, előjel nélküli, fixpontos aritmetika, lebegőpontos aritmetika)
		- Matlabban nem igazán foglalkozunk az adattípussal (double)
	- Ütemezés/Erőforrás hozzárendelés  finomítása: erőforrás kényszerek
	- Technológiai erőforrás hozzárendelés finomítása (például FPGA áramkörön valósítom meg, milyen családú FPGA)

#### Kezdeti specifikáció formátum
> C-alapú nyelvek (hardver leíró nyelvek): Handel-C, Silicon-C,Hardware-C ,System-C
>
> **gondok:** 
> - Hogyan fejezzük ki a párhuzamos vagy szekvenciális működést? Adatfolyam alapú / Szekvenciális processzálás / Eseményvezérelt
> - Hogyan alkalmazzunk  algoritmikus és RTL alapú  leírást
> - Mit specifikáljunk előre: Ciklusok,  Interfészek?
> - Hogyan vezessünk be kényszereket, tanácokat?

##### Aritmetika
**Kérdés:** hogyan térek át lebegőpontos aritmetikáról fixpontos  aritmetikára

Fixpontos aritmetikában a ciklusok kezelése nehezen automatizálható, Például jelfeldolgozás esetén a jelfeldolgozó algoritmus segíthet a fix pontos aritmetika rögzítésére

##### Ütemezés/Erőforrás kiosztás
Megoldás a **ciklusok** kezelésére: 
- **Kifejteni**, Loop nest optimization, Loop unrolling 
- (Static/Dynamic unrolling), **Loop tiling**
- **Szekvenciálisan megvalósítani**
ötletek: 

**memóriakiosztás:**
- általában **erősen felhasználó irányított** => Aktív kutatási terület 
- **Kommunikáció finomítása** szintén fontos kérdés: Nagymértékben függ a számítási modelltől

##### Szempontok egy modul specifikációjára:
**C függvény** 
- A függvény megírása során legelőször a létrehozandó hardver egység specifikációit kell tanulmányozni.
 - Meg kell határozni a modul bemeneteit és kimeneteit.
 - A függvény paraméterei képezik a modul bemeneteit, és a függvény visszatérítési értékei pedig a modul kimeneteit.
 - Fontos az erőforrás takarékosság, ezért optimális adattípusokat kell használni. 
- Mivel a C nyelv bájt alapú adattípusokra épül, ezért a Vivado HLS rendelkezik egy Arbitrary Precision Data Types nevű könyvtárral, amely segítségével az alkalmazás által megkövetelt pontos adatméreteket használhatjuk. 
- Egy másik fontos szempont a lebegőpontos műveletek használata, mivel ez nagyban befolyásolhatja a modul erőforrás igényét.  

**Korlátok**
- A legfontosabb korlátokat a cél FPGA áramkör kiválasztásánál határozzuk meg, a Vivado HLS a technikai adatok alapján végzi el a szintézist. 
- Egy másik korlát, amelyet a tervező állít be, az az **órajel periódusa** (ns), ez befolyásolja, hogy egy ciklus alatt hány műveletet képes elvégezni a hardveregység.

**Direktívák**
- különböző irányelvek, amelyeket a Vivado HLS figyelembe vesz a szintetizálás során. 
- Ezek függvényében optimalizálja a tervezőeszköz a lefordított kódot.
- A direktívák segítségével pipeline-osíthatunk műveleteket
	- leoszthatunk műveletcsoportokat több hardver elemre
	- interfészeket alakíthatunk ki a modulok számára
	- stb
- **direktíta típusok:**
	- **Interfész**: 
		- globális változókhoz 
		- `top_level` függvény paramétereihez 
		- függvény visszatérítési értékéhez rendelhető
	- **Függvény**: - függvény fejlécére alkalmazhatóak, művelet végrehajtási stratégiákat határozhatnak meg
	- **ciklusok**:
		- ciklusokra címkékkel (label) lehet hivatkozni
		- művelet végrehajtási stratégiák:
			- Pipeline
			- Unroll
			- loop_merge
			- stb
	- **Tömbök**: memória hozzárendelés meghatározása
##### IP mag létrehozása 
**Specifikáció meghatározása:**
- a rendszer kimeneteinek, illetve bemeneteinek meghatározása
- használni kívánt adattípusok, adatméretek meghatározása
- algoritmus kiválasztása
- céleszköz kiválasztása
**Algoritmus implementálása C nyelven** - függvények megírása, a fügvényeket a `top_level` függvény kapcsolja össze

**Teszt fájl (Test Bench)** - segítségével debug-olni, tesztelni, szimulálni lehet a rendszert.

**I/O portok beállítása** - a változókhoz hozzá kell rendelni egy-egy I/O protokollt, hogy kommunikálhasson a modul a rendszer többi elemével

**Kommunikációs interfész hozzárendelése a portokhoz** - a modul sínrendszerre való kapcsolásához szükség van interfész hozzárendelésére, (például AXI4 interfész), ez a Vivado HLS-ben direktívák segítségével

**Szintézis végrehajtása, jelentések elemzése** - újabb optimalizálás elvégzése, újabb direktívák meghatározása

**hardver egység IP magként való exportálása** - EDK-ban vagy Vivado-ban felhasználható formátumban

---

# Téma 12 - Magas szintű szintézis II

> Ebben a részben részletesen megnézzük, milyen lehetőségek is vannak magas szintű C, C++ forráskódból hardvert létrehozni. Ugyanabból a forráskódból kiindulva különböző architektúrával rendelkező hardver hozható létre. Tárgyalva van, hogyan is valósul meg a HLS szintetizálás során a műveletek ütemezése, erőforrások kiosztása, tömbökre és ciklusokra milyen optimalizálási kényszerek alkalmazhatóak. Kiemeljük egy C forráskód jellemzőit, amelyek befolyásolják a szintetizálandó hardver struktúráját, erőforrásigényét, a feladat elvégzéséhez szükséges óraciklusok számát.

fájlok: [HLS két vektor összegének kiszámítása - 20200426](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/tree/master/HLS%20k%C3%A9t%20vektor%20%C3%B6sszeg%C3%A9nek%20kisz%C3%A1m%C3%ADt%C3%A1sa-20200426)

**A magas szintű szintézis**
- `C` forráskódból egy **RTL szintű implementációt hoz létre**
- kiemeli (**meghatározza**) a **kontroll és adatfeldolgozási részeket**
- alapértelmezett és felhasználó által **alkalmazott direktívák** (directives) **alapján létrehozza a tervet**
	C, C++, SystemC / Constraints, Directives **=>** Vivaldo HLS **=>** VHDL, Verilog, SystemC **=>** RTL Export 

## HLS-alapú tervezés és tesztelés folyamata
![HLS alapú tervezés és tesztelés folyamata](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/HLS-alap%C3%BA%20tervez%C3%A9s%20%C3%A9s%20teszrtel%C3%A9s%20folyamata.PNG)

### Terv megvalósítása direktívák függvényében
Vegyük az alábbi programrészletet
```VHDL
acc=0;
ciklus: for (i=3;i>=0;i--) {
	if (i==0) {
		shift_reg[0]=x;
	} else {
		shift_reg[i]=shift_reg[i-1];
	}
	acc+=shift_reg[i]*c[i];
}
*y=acc;
```
**Ugyanaz az erőforrás van alkalmazva minden ciklusban:
-kevés erőforrás
-több órajelciklus
-alacsony teljesítmény**
![Alapértelmezett terv](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/alap%C3%A9rtelmezett%20terv.jpg)

**Ciklus mindenik iterációjában más hardver erőforrás van alkalmazva
- nagyobb erőforrásigény
- Kevesebb órajelciklus
- Nagyobb áteresztőképesség**
![Kiterjesztett ciklusok](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/kiterjesztett%20ciklusok.jpg)

**Különböző ciklusok konkurensen vannak alkalmazva:
- Nagy erőforrásigény
- Kevesebb órajelciklus
- Jó áteresztőképesség**
![Pipeline megvalósítás](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/pipline%20megval%C3%B3s%C3%ADt%C3%A1s.jpg)

### Vezérlkés mehatározása
Az alábbi szerkezet leprogramozása:
![Vezérlés meghatározása](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/vez%C3%A9rl%C3%A9s%20meghat%C3%A1roz%C3%A1sa.PNG)
Alábbi módon:
```VHDL
						-- Elvégzendő műveletek kiemelése
						-- Rd x
						-- Rd c
loop: for (i=3;
	   i>=0;				-- >=
	   i--) {				--  -
	if (i==0) {				-- ==
		shift_reg[0]=x;
	} else {				--  -
		shift_reg[i]=shift_reg[i-1];
	}
	acc+=shift_reg[i]			-- +
	*c[i];					-- *
}
						-- Wr y
```
Kód egyben:
```VHDL
void fir_szuro (data_t *y,coef_t c[4],data_t x)
{	-- FÜGGVÉNY KEZDETE
static data_t shift_reg[4];
acc_t acc;
int i;
acc=0;
loop: for (i=3;i>=0;i--) {	-- -- CIKLUS KEZDETE
if (i==0) {
shift_reg[0]=x;
} else {
shift_reg[i]=shift_reg[i-1];
}
acc+=shift_reg[i]*c[i];
}	-- CIKLUS VÉGE
*y=acc;
}	-- FÜGGVÉNY VÉGE
```

### Ütemezés és erőforrás kiosztás
```VHDL
void proba()
{
	X1= A+B;
	X2=C*X1;
	X3=D*X2;
	X4=X3-E;
}
```
#### Ütemezés
> Az  ütemezés meghatározza, hogy egy adott műveletet melyik órajelre fog végrehajtódni figyelembe véve:
> - A vezérlést
> - Az adatfolyamot
> - A tervező által meghatározott megkötéseket (direktívákat)
> - Az erőforrások kiosztására kényszerfeltételeket lehet meghatározni
Az adatfüggőséget a műveletek ütemezésénél kötelező betartani
> A műveletek a vezérlő folyamatban óraciklusokra van leképezve
>
> Minden műveletet egy órajelre hajtunk végre

> A technológia és a tervező által meghatározott kényszerfeltételek hatással vannak az ütemezésre 
>
> Egy gyorsabb technológia (vagy egy lassabban működő rendszer) lehetővé teszi egy órajel alatt kettő vagy akár több művelet elvégzését

#### Erőforrás kiosztás
> Meghatározza, hogy minden egyes elvégzendő műveletre, melyik könyvtárelemet alkalmazza
> - Az erőforrás kiosztásnál figyelembe veszi az egyes komponenseken a késéseket
> - A felhasználó által megadott kényszerfeltételeket
Az erőforrás kiosztó leképezi a műveleteket a könyvtárban elérhető hardver elemekre
> Az erőforrás kiosztó eldönti-alkalmazunk-e megosztott erőforrás
> - a két szórást egy szorzó modullal vagy két szorzómodullal végezzük
> - Az összeadásra és kivonásra alkalmazunk egy megosztott összadó-kivonó (addsub) áramkört 
>
> A műveletvégző egységek megosztása  (multiplexelés)  befolyásolja az időzítést, az időkorlát meghatározza, hogy alkalmazható-e a megosztott erőforrás

#### C kód jellemzői hardvertervezés megközelítésből
	**Függvény:** a programkód függvényekbe van szervezve, amely meghatározza a tervezési hierarchiát
	**Top level Ki/Be menetek:**  a legfelső szinten található függvény argumentumai meghatározzák az RTL hardver interfészének portjeleit
	**Típusok:** A változókhoz rendelt típusok befolyásolják a hardver teljesítményét és területhasználatát
	**Ciklusok:** a ciklusok a hardverben való megvalósítása szintén nagymértékben befolyásolják a teljesítményt és területhasználatot:
	**Tömbök:** befolyásolják  modul ki/bemeneteit és a szűk keresztmetszetet. A tömbök általában memóriaelemekkel vannak megvalósítva. A tömböknek kisebb tömbökre való felosztása csökkenti a műveletvégzéshez szükséges órajel ciklusokat  
	**Műveletek:** erőforrás megosztás-> terület csökkentés vagy speciális hardver kialakítás-> kitűzött teljesítmény elérése
##### Függvények és RTL hierarchia
	Minden egyes függvényből egy RTL blokk jön létre
	- több függvényt egybe lehet vonni, ezáltal megszüntetni a hierarchiát
	- Kisebb méretű függvények automatikusan összevonhatóak
```VHDL

void A() {//A fűggvény }
void B() {
E();
}
void C() {
E();
}

void D() {//A fűggvény }

void A() {//A fűggvény }
void A() {//A fűggvény }
void A() {//A fűggvény }

void felso_szint(){
A();
B();
C();
D();
}
```
	felso_szint ->  A
			A -> B -> E
			A -> C -> E
			A -> D
#### Top Level IO Port jelei
**Felső szintű függvény argumentumai** – minden egyes argumentumnak megfelel egy hardver port típus

**Ha függvény argumentumában van megadva egy tömb**
- A tömb/memória a modulon kívül található
- Az alkalmazott memória típusa meghatározza a felső szintű függvény IO portjeleit
- Az interfészen alkalmazott tömbök feloszthatóak (részlegesen vagy teljesen)
- Teljes particiónálás esetén minden egyes címen található szó egy-egy regiszterre van felosztva
- Ha a teljesítmény javítható Dual Portos BRAM memóriát kell alkalmazni, ellenkező esetben egy portos

**Standard C típusok:**
- char  (8 bit), shot (16 bit), int (32 bit), long int (64 bit)
- unsigned
- float (32 bit), double (64 bit)

**Tetszőleges pontosságú típusok**
- `C`: `ap(u)int` típus: (1-1024 bit)
- `C++`: 
	- `ap_(u)int` típus (1-1024 bit)
        - `ap_fixed` típus
- `C++`/`System C`:
	- `sc_(u)int` típus  (1-1024 bit)
	- `sc_fixed`

**Ciklusok** 
> *Alapértelmezetten a cikluson nincsenek kiterjesztve (szekvenciális megoldás)*
>
> minden egyes ciklus iterációs **ugyanabban az állapotban van végrehajtva**, **ugyanazzal az erőforrással van megvalósítva**

> - A ciklusok kifejthetőek, ha előre ismert az iterációk száma és az iterációk száma nem változik
> - Több erőforrást kell ütemezni, viszont megnő a műveletek mobilitása

**Ütemezés a ciklus optimalizációt követően**
- az iterációból származó függőség megszűnik
- műveletek párhuzamosan elvégezhetőek ha az adatfüggőség lehetővé teszi vagy ha művelet  időzítése megengedi
```VHDL
void fir_szuro (data_t *y,coef_t c[4],data_t x)
{
static data_t shift_reg[4];
acc_t acc;
int i;
acc=0;
loop: for (i=3;i>=0;i--) {
if (i==0) {
shift_reg[0]=x;
} else {
shift_reg[i]=shift_reg[i-1];
}
acc+=shift_reg[i]*c[i];
}
*y=acc;
}
```

**HLS-ben alkalmazott tömbök**
C programkódban alkalmazott tömb az RTL –ben  egy memóriával van megvalósítva, alapértelmezett esetben a tömb egy BRAM (vagy adott esetben FIFO). A tömbök feldarabolhatóak kisebb tömbökre (kisebb méretű memóriákkal megvalósítva). A tömbök összevonhatóak más tömbökkel. A tömbök bármely könyvtárbeli memória erőforrásra leképezhetőek.

**Ütemezés tömb optimalizációt követően**
Megadott programkód az alapértelmezett beállítások mellett:
- C port dual portos BRAM
- Órajelenként lehetővé tesz két beolvasást (mindkét porton egyet-egyet)
A C port 4 különálló portra való particiónálása esetén
- mind a négy beolvasás megoldható egy órajel alatt
- ha az időzítés megengedi az összeadás elvégezhető ugyanabban a ciklusban
- az eredmény kiírása is elvégezhető ugyanabban a ciklusban 

**Művletek**
Műveletvégző egységek méretét meghatározza a változok típusa. Szintetizáló eszköz próbálja csökkenteni az elvégzendő műveletek számát 
csökkenti a területet, de csak miután a kényszerfeltételek teljesítve vannak. 

A műveletekhez 
- meghatározható milyen hardver erőforrás legyen alkalmazva
- meghatározható, hogy egy adott erőforrásból hány darabot szeretnénk felhasználni

**C  jóváhagyás és RTL ellenőrzés**
Két lépésben:
- Szintézis előtt: C jóváhagyás
	- Ellenőrizzük, hogy az algoritmus helyes, gyors
	- Próbapad 
	- A függvény fölé épül a main 
- RTL ellenőrzés
	- Lehetőség ko-szimulációra az eredeti próbapad alapján

# Téma 13 - Magas szintű szintézis III
> Ebben a részben részletesen tárgyaljuk az interfészek kialakítására alkalmazott modul és argumentumszintű kényszereket, direktívákat. A hallgató megismerkedik a Vaivado HLS környezetben alkalmazható kényszer lehetőségekről. Az ötletek elsajátítását követően a diák képes lesz valós feladatok megoldására alkalmazni a HLS tervezőeszközt, és feladatspecifikusan kiválasztani a megfelelő kényszerfeltételeket.
>
> Ebben a részben alkalmazzuk a tervezőeszközt egyszerű feladatok megoldására és különböző kényszerfeltételek gyakorlati szinten való alkalmazására. Értelmezzük az eredményeket, exportálva a megoldást System Generator környezetbe, és összehasonlítjuk ugyanarra a feladatra különböző direktíváknak az alkalmazását.
>
> Megjelenítve System Generator környezetben a létrehozott hardver modult, azonosíthatjuk a modul szinten és argumentum szinten létrejött protokoll jeleket.

fájlok: [Szemafor HLS megvalósítása](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/tree/master/Szemafor%20HLS%20megval%C3%B3s%C3%ADt%C3%A1sa-20200426),  [HLS_peldak_v4_b_2017_12_01.pdf](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/HLS_peldak_v4_b_2017_12_01.pdf)
