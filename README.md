# Tartalom
- [Téma 1 - bevezetés, FPGA alapok](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#téma-1---bevezetés-fpga-alapok)
- [Téma 2 - FPGA áramkörök szerkezete](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#téma-2---fpga-áramkörök-szerkezete)
  - [Vivado projekt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#vivado-projekt)
- [Téma 3 - Áramköri leírási modellek és hierarchikus alrendszerek](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-3---%C3%A1ramk%C3%B6ri-le%C3%ADr%C3%A1si-modellek-%C3%A9s-hierarchikus-alrendszerek)
  - [Multiplexer áramkör](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#multiplexer-%C3%A1ramk%C3%B6r)
  - [Digitális rendszerek absztrakciós szintjei (tranzisztor, kapu, regiszter, processzor)](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#digit%C3%A1lis-rendszerek-absztrakci%C3%B3s-szintjei)
- Téma 4 - [FPGA alapú tervezés lépései](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#t%C3%A9ma-4---fpga-alap%C3%BA-tervez%C3%A9s-l%C3%A9p%C3%A9sei) és a [VHDL programok szerkezete](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#vhdl-programok-szerkezete)
- [Téma 5 - VHDL szekvenciális kifejezések]()
---------

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
> Ebben a részben a hallgató megismerheti a VHDL-ben alkalmazható fontosabb szekvenciális kifejezéseket: process, feltételes értékadás, ciklusok, signal (jel) és variable (változó) közötti különbség.
>
> Egyszerű szekvenciális és kombinációs áramkörökre bemutatott példák alapján felismerheti az egyes kódolási módszerek sajátosságait.
> 
> A hallgató képes lesz az ismeretek elsajátítását követően kombinációs és szekvenciális áramkörök modellezésére.


