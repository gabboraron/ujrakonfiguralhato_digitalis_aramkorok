# Tartalom
- [Logikai áramkörök elmélete hülyéknek]()
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
	
---------

# Logikai áramkörök elmélete hülyéknek
> Az eredeti a Sulineten: [Logikai áramkörök információelméleti alapjai](https://tudasbazis.sulinet.hu/hu/szakkepzes/elektronika-elektrotechnika/digitalis-alaparamkorok/logikai-aramkorok-informacioelmeleti-alapjai) alább ennek a jegyzete.
> 
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
> Az **infomráció** alapvetően **bizonyos fokú tájékozatlanságot szüntet meg** és szimbólumokból áll, a *beszéd* esetében *szavak*, *írás* esetében *betűk* és így tovább. Így **az információ** digitális rendszerekben való formája **az adat**, ami a logikai áramkörökben **kód** formájában jelenik meg.
> 


-----------

# Téma 1 - bevezetés, FPGA alapok
**CLB** - konfigurálható logikai tömbök amiket a

**switch matrix** - összekötő vezeték köt össze az 

**IOB modulokkal** - amik a jelek ki/be vitelére használhatóak

RAM alapú FPGAba a bekapcsolás után be kell konfigurálni a **bitfolyamot** ami meghatározza, hogy milyen útvonalon áramlanak a jelek a CLB, azaz a logikai tömbök belsejében. Ezért ez lehet egyszer, vagy többször programozható.

## Modulok:
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
