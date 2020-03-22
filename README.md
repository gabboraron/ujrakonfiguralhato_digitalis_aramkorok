# Tartalom
- [Téma 1 - bevezetés, FPGA alapok](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#téma-1---bevezetés-fpga-alapok)
- [Téma 2 - FPGA áramkörök szerkezete](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#téma-2---fpga-áramkörök-szerkezete)
  - [Vivado projekt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#vivado-projekt)
- [Téma 3 - Áramköri leírási modellek és hierarchikus alrendszerek](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok#t%C3%A9ma-3---%C3%A1ramk%C3%B6ri-le%C3%ADr%C3%A1si-modellek-%C3%A9s-hierarchikus-alrendszerek)
- [Téma 4 - FPGA alapú tervezés lépései](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/README.md#t%C3%A9ma-4---fpga-alap%C3%BA-tervez%C3%A9s-l%C3%A9p%C3%A9sei)
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
### VHDL alapok
> **megjegyzés** `--`
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


### Y diagram
- absztrakciós szintek és nézetek két külön dimenzió
- minden szint saját nézete

# Téma 4 - FPGA alapú tervezés lépései
> fájl: [4. ppt](https://github.com/gabboraron/ujrakonfiguralhato_digitalis_aramkorok/blob/master/T4_KMOOC_UKDA_2017_v4.pptx)
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
- funkcionális: a rendszer az elvárt kimenetet szolgáltatja?
- időzítés: teljesíti az időbeli korlátokat?
- teljesítmény: betartja a részegységek meghatározott áramkorlátokat?

## Ellenőrzési módok
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
