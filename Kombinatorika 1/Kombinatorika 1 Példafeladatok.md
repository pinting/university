# Kombinatorika 1 – Példafeladatok

### I. Mat. BSc Kombinatorika 1 · 2026/27 első félév · kidolgozott példafeladatok részletes megoldással és elméleti háttérrel

Ez a gyűjtemény a Kombinatorika 1 gyakorlat mind az öt feladatsorának (1–5. feladatsor) valamennyi feladatához egy-egy **kidolgozott példafeladatot** ad. A **P$n$.** feladat az eredeti $n$. feladat mintapárja: ugyanazt a kombinatorikai elvet, leszámlálási vagy gráfelméleti módszert mutatja be részletesen kidolgozva, más adatokkal vagy új nézőpontból megközelítve. A feladatok számozása és csoportosítása szigorúan követi a feladatsorokét (1–22.: 1. feladatsor; 23–37.: 2. feladatsor; 38–55.: 3. feladatsor; 56–74.: 4. feladatsor; 75–84.: 5. feladatsor), így összesen 84 kidolgozott példafeladatot tartalmaz.

Minden feladat után részletes, lépésről lépésre haladó, a végeredményt kiemelő **megoldás** következik, amelyet egy szürke dobozban elhelyezett **elméleti háttér** zár. A doboz összefoglalja a szükséges definíciókat, tételeket (gyakran bizonyításvázlattal), a tipikus buktatókat és a feladatmegoldási stratégiákat. Javasolt használat: először önállóan megkísérelni a feladat megoldását, és csak azután áttanulmányozni a megoldást és az elméleti hátteret.

Jelölések: $\mathbb{N} = \{1, 2, 3, \dots\}$, $\mathbb{N}_0 = \{0, 1, 2, \dots\}$, $[n] = \{1, 2, \dots, n\}$; $\binom{n}{k} = \frac{n!}{k!(n-k)!}$; $(n)_k = n(n-1)\dots(n-k+1)$; $S(n, k)$ és $s(n, k)$ a másod- és elsőfajú Stirling-számok; $p(n)$ a partíciók száma; gráfok esetén $V(G)$ a csúcshalmaz, $E(G)$ az élhalmaz, $d(v)$ a fokszám, $\Delta(G)$ és $\delta(G)$ a maximális és minimális fokszám, $\chi(G)$ a kromatikus szám, $\chi_e(G)$ az élkromatikus szám.

# Az 1. feladatsorhoz

## P1. feladat

Egy konvex 16-szögben:
a) Hány átló húzható be?
b) Hány olyan háromszög képezhető a sokszög csúcsaiból, amelynek egyetlen oldala sem oldala a 16-szögnek?

**Megoldás.**

a) Egy konvex $n$-szög bármely két csúcsa vagy oldalt, vagy átlót határoz meg. Az összes lehetséges csúcspárok száma $\binom{n}{2}$. Mivel a sokszögnek $n$ oldala van, az átlók száma:
$$\binom{n}{2} - n = \frac{n(n-1)}{2} - n = \frac{n(n-3)}{2}.$$
$n = 16$ esetén az átlók száma:
$$\frac{16 \cdot 13}{2} = \mathbf{104}.$$

b) Az összes csúcshármas száma $\binom{16}{3} = \frac{16 \cdot 15 \cdot 14}{6} = 560$. Komplementer módszert alkalmazunk: levonjuk azokat a háromszögeket, amelyeknek legalább egy oldala megegyezik a sokszög valamelyik oldalával.
- Pontosan két oldaluk oldala a 16-szögnek: ezek a háromszögek 3 egymást követő csúcsból állnak. Mivel $n = 16$ ilyen csúcshármas van, számuk $16$.
- Pontosan egy oldaluk oldala a 16-szögnek: először kiválasztjuk a 16 oldal egyikét (16 lehetőség). A harmadik csúcs nem lehet a kiválasztott oldal két végpontja, és nem lehet ezen végpontok szomszédja sem, különben 2 közös oldal keletkezne. Ez $2 + 2 = 4$ tiltott csúcs. A maradék $16 - 4 = 12$ csúcs bármelyike megfelelő harmadik csúcsnak: $16 \cdot 12 = 192$ háromszög.
A keresett független háromszögek száma:
$$560 - 16 - 192 = \mathbf{352}.$$
(Általánosan tetszőleges $n$-szögre: $\binom{n}{3} - n - n(n-4) = \frac{n(n-4)(n-5)}{6}$, ami $n=16$-ra $\frac{16 \cdot 12 \cdot 11}{6} = 352$.)

::: elmelet
**Elméleti háttér — tehénszabály és komplementer leszámlálás.**

*Tehénszabály (osztási elv):* Ha egy $S$ véges halmaz elemeit úgy számláljuk meg, hogy egy $T$ halmaz elemeihez rendelünk egy $k$-az-egyhez leképezést, akkor $|S| = \frac{|T|}{k}$. Itt minden átlónak 2 végpontja van, ezért csúcsonként $n-3$ átlót számolva minden átlót pontosan 2-szer számláltunk meg.
*Komplementer leszámlálás:* Ha egy halmaz bizonyos megszorításoknak eleget tevő elemeit nehéz közvetlenül megszámolni, érdemes az összes esetből kivonni a „rossz” (a feltételt megsértő) eseteket: $|A| = |U| - |A^c|$.
*Tipikus hiba:* Nem szabad elfelejteni ellenőrizni, hogy a kizárt esetek diszjunktak-e! Itt az 1 közös oldallal és 2 közös oldallal rendelkező háromszögek nyilvánvalóan diszjunktak.
:::

## P2. feladat

Egy 16 csapatos labdarúgó-bajnokságban a szezon végén a tabellán nincs holtverseny.
a) Hányféleképpen alakulhat a dobogós helyezések sorsa (1. arany, 2. ezüst, 3. bronz)?
b) Hányféleképpen alakulhat a 3 kieső csapat köre, ha a kiesők között a sorrend nem számít?
c) A sportlap a tabella első 3 és utolsó 2 helyezettjét emeli ki. Hányféleképpen alakulhat ez az 5 csapat úgy, hogy az első három között a sorrend számít, az utolsó kettő között viszont nem?

**Megoldás.**

a) Az első három helyre 16 csapat közül választunk 3-at úgy, hogy a sorrend számít. Ez ismétlés nélküli variáció:
$$16 \cdot 15 \cdot 14 = \mathbf{3360}.$$

b) A 3 kieső csapat esetén a sorrend nem számít, egy 3 elemű részhalmazt választunk a 16 csapatból. Ez kombináció:
$$\binom{16}{3} = \frac{16 \cdot 15 \cdot 14}{3!} = \frac{3360}{6} = \mathbf{560}.$$

c) A szorzási szabály szerint a lépéseket egymás után hajtjuk végre:
1. Az első 3 helyezett sorrendben: $16 \cdot 15 \cdot 14 = 3360$ lehetőség.
2. A megmaradt $16 - 3 = 13$ csapatból kiválasztjuk a 2 kiesőt sorrend nélkül: $\binom{13}{2} = \frac{13 \cdot 12}{2} = 78$ lehetőség.
Összesen:
$$3360 \cdot 78 = \mathbf{262\,080}.$$

::: elmelet
**Elméleti háttér — variáció és kombináció kapcsolata.**

*Ismétlés nélküli variáció:* $n$ különböző elemből $k$ elem rendezett kiválasztása: $V_n^k = \frac{n!}{(n-k)!}$.
*Ismétlés nélküli kombináció:* $n$ különböző elemből $k$ elem rendezetlen kiválasztása: $C_n^k = \binom{n}{k} = \frac{n!}{k!(n-k)!}$.
*Összefüggés:* $V_n^k = k! \cdot C_n^k$. Ha a sorrend nem számít, a $k!$ darab permutációt egyetlen kombinációvá vonjuk össze.
*Tipikus hiba:* Nem tisztázni az elején, hogy a feladatban a sorrend számít-e vagy sem.
:::

## P3. feladat

Egy egyenes vasútvonal mentén $n \ge 2$ állomás található. Az állomásokat 4 színnel festjük úgy, hogy semelyik két közvetlenül szomszédos állomás nem kaphatja ugyanazt a színt.
a) Hányféle érvényes színezés készíthető?
b) Mi a helyzet, ha a vasútvonal egy körjárat, vagyis az 1. és az $n$. állomás is közvetlenül szomszédos egymással?

**Megoldás.**

a) Az állomásokat balról jobbra haladva színezzük. Az első állomás színét 4-féleképpen választhatjuk meg. Minden rákövetkező állomás színe csak a közvetlen bal oldali szomszédjától kell, hogy különbözzön, így minden további lépésben $4 - 1 = 3$ szín választható. Mivel $n - 1$ további állomás van:
$$4 \cdot 3^{n-1}.$$

b) Körjárat esetén a gráf egy $n$ csúcsú kör ($C_n$). Legyen $c_n$ a $C_n$ kör jó 4-színezéseinek száma.
Ha elhagyjuk az 1. és $n$. állomás közötti élt, egy $n$ csúcsú utat kapunk, amelynek jó 4-színezéseinek száma az a) rész szerint $4 \cdot 3^{n-1}$.
Ezen színezések közül pontosan azok nem jók a $C_n$ körre, amelyekben az 1. és az $n$. állomás színe megegyezik. Ha az 1. és $n$. állomást azonos színűnek tekintjük és egyetlen csúccsá vonjuk össze, akkor pontosan egy $n-1$ csúcsú kör jó 4-színezését kapjuk, amelyek száma $c_{n-1}$.
Ezért érvényes a rekurzió:
$$c_n + c_{n-1} = 4 \cdot 3^{n-1}.$$
Mivel $c_2 = 4 \cdot 3 = 12$ (két szomszédos csúcs különböző színe: $4 \cdot 3 = 12$, és valóban $3^2 + 3 = 12$), a rekurzió zárt alakja:
$$c_n = 3^n + 3 \cdot (-1)^n.$$
(Ez általánosan a $C_n$ kör kromatikus polinomja $k = 4$-re: $P(C_n, k) = (k-1)^n + (-1)^n(k-1)$.)
A válasz tehát **$4 \cdot 3^{n-1}$**, illetve körjárat esetén **$3^n + 3(-1)^n$**.

::: elmelet
**Elméleti háttér — út és kör kromatikus polinomja.**

*Kromatikus polinom:* Egy $G$ gráf jó $k$-színezéseinek száma (ahol szomszédos csúcsok nem azonos színűek) a $k$ változó polinomja, $P(G, k)$.
*Élelhagyás és élezsugorítás tétele:* Tetszőleges $e \in E(G)$ élre:
$$P(G, k) = P(G - e, k) - P(G / e, k),$$
ahol $G - e$ az él törlése, $G / e$ az él összehúzása.
*Út gráfra:* $P(P_n, k) = k(k-1)^{n-1}$.
*Kör gráfra:* $P(C_n, k) = (k-1)^n + (-1)^n(k-1)$.
*Tipikus hiba:* Körszínezésnél azt gondolni, hogy az utolsó csúcsra mindig $k-2$ lehetőség van: ez hamis, mert az 1. és $(n-1)$-edik csúcs lehet azonos színű is! Ezért elengedhetetlen a rekurzió vagy a szita-formula használata.
:::

## P4. feladat

Különböző színű gyöngyökből nyakláncot fűzünk fel egy kör alakú zsinórra. Hány lényegesen különböző nyaklánc készíthető 6 különböző gyöngyből:
a) ha csak a síkbeli forgatással egymásba vihető elrendezéseket tekintjük azonosnak?
b) ha a térben megfordítható, azaz a forgatással és a tükrözéssel egymásba vihető elrendezéseket is azonosnak tekintjük?

**Megoldás.**

a) Ha a gyöngyök különböző színűek, és a helyek rögzítettek volnának, $6!$ sorrend létezne.
A síkbeli forgatások a $C_6$ ciklikus csoportot alkotják (6 elemű csoport: $0^\circ, 60^\circ, 120^\circ, 180^\circ, 240^\circ, 300^\circ$). Mivel minden gyöngy különböző színű, egyik nem triviális forgatás sem vihet egy elrendezést önmagába. Így minden forgatási ekvivalenciaosztály pontosan 6 különböző elrendezést tartalmaz.
A különböző nyakláncok száma forgatás szerint:
$$\frac{6!}{6} = (6 - 1)! = 5! = \mathbf{120}.$$

b) Ha a nyaklánc a térben átfordítható, a szimmetriacsoport a 6 elemű $D_6$ diédercsoport, melynek $2 \cdot 6 = 12$ eleme van (6 forgatás és 6 tengelyes tükrözés).
Mivel minden gyöngy különböző, egyetlen tükrözés sem hagyhat helyben egyetlen elrendezést sem (hiszen egy tükrözés legalább egy olyan gyöngypárt felcserél, amely két különböző színű gyöngyből áll).
Így a $D_6$ csoport szabadon hat az elrendezések halmazán: minden pálya pontosan $2 \cdot 6 = 12$ elemű.
A nyakláncok száma forgatás és tükrözés szerint:
$$\frac{6!}{2 \cdot 6} = \frac{(6-1)!}{2} = \frac{120}{2} = \mathbf{60}.$$

::: elmelet
**Elméleti háttér — ciklikus permutációk és nyakláncok.**

*Ciklikus permutáció:* $n$ különböző elem kör alakú elrendezése forgatási szimmetriával: $(n-1)!$. Rögzíthetünk egy elemet a kör tetején, ekkor a maradék $n-1$ elem sorrendje egyértelmű.
*Diéder-szimmetria:* Ha a reflexió (térbeli átfordítás) is megengedett, a szimmetriacsoport a $D_n$ diédercsoport ($2n$ elemű). Különböző elemek esetén, ha $n \ge 3$, az elrendezések száma $\frac{(n-1)!}{2}$.
*Burnside-lemma:* Általános esetben, ha az elemek között azonosak is vannak (nem szabad a csoportművelet), a pályák száma: $|X/G| = \frac{1}{|G|} \sum_{g \in G} |X^g|$, ahol $X^g$ a $g$ csoportelemmel invariánsan hagyott elrendezések halmaza.
:::

## P5. feladat

6 házaspár (12 ember) ül le egy kerek asztal köré úgy, hogy mindenki a saját házastársa mellett ül. Két leülést azonosnak tekintünk, ha forgatással egymásba vihetők.
a) Hány különböző ülésrend lehetséges?
b) Hány olyan ülésrend van, amelyben a párok egymás mellett ülése mellett az is teljesül, hogy a férfiak és nők felváltva ülnek az asztal körül?

**Megoldás.**

a) Tekintsük a 6 házaspárt 6 önálló blokknak.
A 6 blokk egy körasztal körüli elrendezése forgatási ekvivalencia mellett:
$$(6 - 1)! = 5! = 120.$$
Minden párban a házastársak egymáshoz képest kétféleképpen ülhetnek (a férfi a nő jobb vagy bal oldalán ül). A 6 pár belső elrendezése egymástól függetlenül $2^6 = 64$-féleképpen választható meg.
A szorzási szabály szerint az összes ülésrend:
$$120 \cdot 64 = \mathbf{7680}.$$

b) Ha a férfiak és nők felváltva kell, hogy üljenek, a blokkokon belüli orientációk már nem választhatók meg függetlenül!
Az első blokkban válasszuk ki az irányt: legyen például Férfi-Nő (az óramutató járása szerint).
Ekkor a szomszédos blokkban a következő személynek Férfinak kell lennie, tehát annak a blokknak is Férfi-Nő irányúnak kell lennie.
Ha ugyanis bármelyik blokk Nő-Férfi irányú lenne, akkor a két blokk találkozásánál két férfi vagy két nő ülne egymás mellé, ami tilos.
Így vagy mind a 6 blokk Férfi-Nő irányú, vagy mind a 6 blokk Nő-Férfi irányú. Ez mindössze 2 globális orientáció.
A párok körsorrendje továbbra is $(6-1)! = 120$.
Így a megfelelő ülésrendek száma:
$$120 \cdot 2 = \mathbf{240}.$$

::: elmelet
**Elméleti háttér — blokkosítás és alternáló feltételek.**

*Blokk-elv:* Ha bizonyos elemeknek kötelezően egymás mellett kell elhelyezkedniük, egyetlen összetett objektumként kezeljük őket.
*Belső szabadsági fokok:* A blokkok elrendezése után figyelembe kell venni a blokkokon belüli elemek permutációit.
*Globális megszorítások:* Ha globális feltétel (pl. paritás vagy nemek váltakozása) van előírva, a lokális szabadsági fokok összekapcsolódnak, ami radikálisan csökkenti a választási lehetőségeket.
:::

## P6. feladat

a) Hány különböző anagrammája van a PARALELOGRAMMA szónak?
b) Hány olyan anagrammája van a MISSISSIPPI szónak, amelyben a négy 'S' betű mind közvetlenül egymás mellett áll?

**Megoldás.**

a) A PARALELOGRAMMA szó betűinek száma és gyakorisága:
Összesen 14 betű:
- A: 4 db
- R: 2 db
- L: 2 db
- M: 2 db
- P: 1 db
- E: 1 db
- O: 1 db
- G: 1 db
Ellenőrzés: $4 + 2 + 2 + 2 + 1 + 1 + 1 + 1 = 14$.
Az ismétléses permutáció (multinomiális együttható) képlete szerint az anagrammák száma:
$$\frac{14!}{4! \cdot 2! \cdot 2! \cdot 2! \cdot 1! \cdot 1! \cdot 1! \cdot 1!} = \frac{14!}{24 \cdot 8} = \frac{87\,178\,291\,200}{192} = \mathbf{454\,053\,600}.$$

b) A MISSISSIPPI szó betűi: M: 1 db, I: 4 db, S: 4 db, P: 2 db (összesen 11 betű).
Mivel a négy 'S' betűnek közvetlenül egymás mellett kell lennie, vonjuk össze őket egyetlen szimbólummá: [SSSS].
Ekkor a rendezendő szimbólumok halmaza:
- [SSSS]: 1 db
- M: 1 db
- I: 4 db
- P: 2 db
Összesen $1 + 1 + 4 + 2 = 8$ szimbólumot kell sorba rendeznünk.
Ismétléses permutációval:
$$\frac{8!}{1! \cdot 1! \cdot 4! \cdot 2!} = \frac{40\,320}{1 \cdot 1 \cdot 24 \cdot 2} = \frac{40\,320}{48} = \mathbf{840}.$$

::: elmelet
**Elméleti háttér — ismétléses permutáció és multinomiális együttható.**

*Ismétléses permutáció:* Ha $n$ elem között $k$ különböző típus van $n_1, n_2, \dots, n_k$ gyakorisággal (ahol $\sum n_i = n$), akkor a lehetséges sorrendek száma a multinomiális együttható:
$$\binom{n}{n_1, n_2, \dots, n_k} = \frac{n!}{n_1! \, n_2! \dots n_k!}.$$
*Kombinatorikus interpretáció:* Az $n$ pozíció közül kiválasztjuk az $n_1$ helyet az első típusú elemeknek ($\binom{n}{n_1}$), majd a maradékból az $n_2$ helyet ($\binom{n-n_1}{n_2}$), és így tovább. A szorzat teleszkopikusan egyszerűsödik a fenti alakra.
*Tipikus hiba:* Megszorításos feladatoknál elfelejteni megvizsgálni a blokkosított elem belső permutációit (itt az [SSSS] belső elemei azonosak, így $1$-féle belső sorrend van).
:::

## P7. feladat

Egy cukrászdában 6-féle sütemény kapható.
a) Hányféleképpen vásárolhatunk 14 süteményt, ha mindegyik fajtából bőséges készlet áll rendelkezésre?
b) Hányféleképpen vásárolhatunk 14 süteményt úgy, hogy mindegyik fajtából legalább egyet veszünk?

**Megoldás.**

a) A sütemények között a sorrend nem számít, csupán az, hogy az egyes fajtákból hány darabot vásárolunk. Legyen $x_i$ az $i$-edik fajtából vásárolt darabszám ($1 \le i \le 6$). Ekkor:
$$x_1 + x_2 + x_3 + x_4 + x_5 + x_6 = 14, \qquad x_i \in \mathbb{N}_0.$$
Ez $n = 6$ elemből $k = 14$ elem kiválasztása ismétléses kombinációval. A csillag-és-vonal (stars and bars) módszer szerint 14 csillagot és $6 - 1 = 5$ elválasztó vonalat kell sorba rendeznünk:
$$\binom{n + k - 1}{k} = \binom{6 + 14 - 1}{14} = \binom{19}{14} = \binom{19}{5}.$$
Számolva:
$$\binom{19}{5} = \frac{19 \cdot 18 \cdot 17 \cdot 16 \cdot 15}{120} = 19 \cdot 3 \cdot 17 \cdot 2 \cdot 3 = \mathbf{11\,628}.$$

b) Ha mindegyik fajtából legalább egyet veszünk, akkor $x_i \ge 1$ minden $i$-re.
Vegyünk mindegyik fajtából előre 1 darabot ($6 \times 1 = 6$ sütemény). Ekkor még $14 - 6 = 8$ süteményt kell tetszőlegesen választanunk a 6 fajtából:
$$y_1 + y_2 + y_3 + y_4 + y_5 + y_6 = 8, \qquad y_i = x_i - 1 \ge 0.$$
Ennek nemnegatív egész megoldásainak száma:
$$\binom{6 + 8 - 1}{8} = \binom{13}{8} = \binom{13}{5} = \frac{13 \cdot 12 \cdot 11 \cdot 10 \cdot 9}{120} = 13 \cdot 11 \cdot 9 = \mathbf{1287}.$$

::: elmelet
**Elméleti háttér — ismétléses kombináció és csillag-és-vonal módszer.**

*Ismétléses kombináció:* $n$ különböző típusú elemből $k$ darab kiválasztása, ha az elemek többször is választhatók és a sorrend nem számít:
$$C_n^{k, \text{ism}} = \binom{n + k - 1}{k} = \binom{n + k - 1}{n - 1}.$$
*Lineáris diofantoszi egyenlet:* Az $x_1 + \dots + x_n = k$ egyenlet nemnegatív egész megoldásainak száma $\binom{n+k-1}{k}$; pozitív egész megoldásainak száma $\binom{k-1}{n-1}$.
*Tipikus hiba:* Összekeverni $n$-et és $k$-t a formulában. Mindig gondoljuk végig: $k$ a kiosztandó egyforma tárgyak (csillagok) száma, $n$ a dobozok/fajták száma (így $n-1$ elválasztófal van).
:::

## P8. feladat

a) Hány olyan 6-jegyű szám van a tízes számrendszerben, amelynek számjegyei balról jobbra szigorúan monoton növekednek?
b) Hány olyan 6-jegyű szám van, amelynek számjegyei balról jobbra szigorúan monoton csökkennek?

**Megoldás.**

a) Jelölje a számot $\overline{d_1 d_2 d_3 d_4 d_5 d_6}$. A feltétel szerint:
$$1 \le d_1 < d_2 < d_3 < d_4 < d_5 < d_6 \le 9.$$
A 0 nem szerepelhet a számjegyek között: ha ugyanis szerepelne, a szigorú növekedés miatt $d_1 = 0$ kellene legyen, de 6-jegyű szám nem kezdődhet 0-val.
Ezért a $\{1, 2, 3, 4, 5, 6, 7, 8, 9\}$ halmaz 9 számjegyéből kell kiválasztanunk 6 különbözőt.
Bármely 6 különböző számjegy pontosan egyféleképpen rendezhető szigorúan növekvő sorrendbe.
Így a keresett számok száma:
$$\binom{9}{6} = \binom{9}{3} = \frac{9 \cdot 8 \cdot 7}{6} = \mathbf{84}.$$

b) A feltétel:
$$9 \ge d_1 > d_2 > d_3 > d_4 > d_5 > d_6 \ge 0.$$
Itt a 0 is szerepelhet, mert a legkisebb számjegyként csak az utolsó, $d_6$ pozícióra kerülhet!
Ekkor a kezdő számjegyre automatikusan teljesül, hogy $d_1 > d_6 \ge 0$, tehát a szám garantáltan nem kezdődik 0-val, valódi 6-jegyű szám lesz.
Ezért a 10 darab számjegy, a $\{0, 1, 2, \dots, 9\}$ halmazból tetszőleges 6 darabot kiválasztva azok egyértelműen csökkenő sorrendbe rendezhetők.
A keresett számok száma tehát:
$$\binom{10}{6} = \binom{10}{4} = \frac{10 \cdot 9 \cdot 8 \cdot 7}{24} = \mathbf{210}.$$

::: elmelet
**Elméleti háttér — szigorúan monoton sorozatok és részhalmazok.**

*Bijekció:* Egy $S$ rendezett alaphalmaz $k$ elemű részhalmazai és a belőlük képezhető szigorúan monoton növekvő (vagy csökkenő) $k$ hosszú sorozatok között kölcsönösen egyértelmű megfeleltetés van: minden részhalmaz pontosan egyféleképpen rendezhető sorba.
*A 0 szerepe a számjegyeknél:* Szigorúan növőnél a 0 kiesik, mert legkisebbként elöl állna ($d_1 = 0$ tilos); szigorúan csökkenőnél a 0 bekerülhet, mert a végén áll, így $d_1 > 0$ automatikusan biztosított.
*Gyengén monoton sorozatok:* Ha $d_1 \le d_2 \le \dots \le d_k$, akkor ismétléses kombinációval $\binom{n+k-1}{k}$ a lehetőségek száma.
:::

## P9. feladat

Legyen $S$ egy $n$ elemű véges halmaz ($n \ge 1$).
a) Bizonyítsuk be a binomiális tétel segítségével, hogy a páros elemszámú részhalmazok száma megegyezik a páratlan elemszámú részhalmazok számával, és mindkettő $2^{n-1}$.
b) Adjunk meg egy bijektív párosítást a páros és páratlan elemszámú részhalmazok között egy rögzített $x_0 \in S$ elem segítségével!

**Megoldás.**

a) A binomiális tétel szerint:
$$(1 + x)^n = \sum_{k=0}^n \binom{n}{k} x^k.$$
Helyettesítsünk $x = -1$-et az egyenlőségbe ($n \ge 1$ miatt):
$$0 = (1 - 1)^n = \sum_{k=0}^n \binom{n}{k} (-1)^k = \sum_{k \text{ páros}} \binom{n}{k} - \sum_{k \text{ páratlan}} \binom{n}{k}.$$
Ebből átrendezéssel azonnal adódik:
$$\sum_{k \text{ páros}} \binom{n}{k} = \sum_{k \text{ páratlan}} \binom{n}{k}.$$
Mivel az összes részhalmaz száma $x = 1$ behelyettesítésével $\sum_{k=0}^n \binom{n}{k} = 2^n$, és a páros, illetve páratlan részhalmazok halmaza a hatványhalmaz diszjunkt partícióját adja, mindkét összeg értéke pontosan:
$$\frac{2^n}{2} = \mathbf{2^{n-1}}.$$

b) Rögzítsünk egy tetszőleges $x_0 \in S$ elemet. Definiáljuk a $\phi : \mathcal{P}(S) \to \mathcal{P}(S)$ leképezést a szimmetrikus differenciával:
$$\phi(A) = A \triangle \{x_0\} = \begin{cases} A \setminus \{x_0\}, & \text{ha } x_0 \in A, \\ A \cup \{x_0\}, & \text{ha } x_0 \notin A. \end{cases}$$
Mivel $|\phi(A)| = |A| \pm 1$, a $\phi$ leképezés minden páros elemszámú részhalmazhoz egy páratlan elemszámút rendel, és megfordítva.
Továbbá $\phi(\phi(A)) = (A \triangle \{x_0\}) \triangle \{x_0\} = A$, azaz $\phi$ önmaga inverze, így bijekció.
Ez egyértelmű párosítást létesít a páros és páratlan részhalmazok között, tehát számuk megegyezik. $\blacksquare$

::: elmelet
**Elméleti háttér — algebrai vs. kombinatorikus (bijektív) bizonyítások.**

*Algebrai út:* Speciális érték behelyettesítése polinomazonosságba (generátorfüggvénybe). $(1-1)^n = 0$ az előjeles alternáló összeg nullaságát mutatja.
*Kombinatorikus út (involúció):* Olyan $\phi : X \to X$ leképezés, amelyre $\phi \circ \phi = \mathrm{id}_X$ (involúció), fixpontmentes, és megváltoztatja a vizsgált paritást. Az $A \mapsto A \triangle \{x_0\}$ leképezés az egyik legelegánsabb kombinatorikus párosítás.
*Tipikus hiba:* Elfelejteni a feltételt, hogy $n \ge 1$. $n = 0$ esetén $0^0 = 1$, az üres halmaznak egyetlen részhalmaza van (az üres halmaz, amely 0 elemű, tehát páros), és nincs páratlan részhalmaza.
:::

## P10. feladat

a) Hányféleképpen állhat sorba $n$ fiú és $n+1$ lány úgy, hogy semelyik két azonos nemű ember ne álljon egymás mellett?
b) Hányféleképpen állhat sorba 5 fiú és 8 lány úgy, hogy semelyik két fiú ne álljon közvetlenül egymás mellett?

**Megoldás.**

a) Mivel a lányok száma eggyel meghaladja a fiúk számát, az alternáló feltétel miatt a lányok csak a páratlan sorszámú pozíciókon állhatnak (1., 3., 5., ..., $2n+1$. helyen), a fiúk pedig a páros pozíciókon (2., 4., ..., $2n$. helyen):
$$L_1, F_1, L_2, F_2, \dots, F_n, L_{n+1}.$$
A lányok az $(n+1)$ darab helyen $(n+1)!$-féleképpen rendezhetők el.
A fiúk az $n$ darab kijelölt helyen $n!$-féleképpen rendezhetők el.
A két választás egymástól független, így az összes lehetőség száma:
$$\mathbf{(n+1)! \, n!}.$$

b) Először állítsuk sorba a 8 lányt egy sorba. Ezt $8! = 40\,320$-féleképpen tehetjük meg.
A lányok között és a sor két végén $8 + 1 = 9$ lehetséges hely (rés) keletkezik:
$$\_ \; L_1 \; \_ \; L_2 \; \_ \dots \_ \; L_8 \; \_$$
Ahhoz, hogy semelyik két fiú ne kerüljön egymás mellé, az 5 fiúnak ezen 9 lehetséges résből kell kiválasztania 5 különböző rést úgy, hogy a sorrendjük is számít (mivel a fiúk megkülönböztethetők).
A fiúk elhelyezése:
$$\binom{9}{5} \cdot 5! = \frac{9!}{(9-5)!} = 9 \cdot 8 \cdot 7 \cdot 6 \cdot 5 = 15\,120.$$
A szorzási szabály szerint a teljes sorrendek száma:
$$8! \cdot 15\,120 = 40\,320 \cdot 15\,120 = \mathbf{609\,638\,400}.$$

::: elmelet
**Elméleti háttér — alternáló sorozatok és a szeparátor elv.**

*Szeparátor (rés) elv:* Ha $A$ típusú elemek nem lehetnek szomszédosak, először a $B$ típusú elemeket rendezzük sorba ($b!$), majd a köztük keletkező $b + 1$ helyre illesztjük be az $a$ darab $A$ elemet. Ehhez szükséges, hogy $a \le b + 1$. A lehetőségek száma: $b! \cdot \binom{b+1}{a} a! = \frac{b!(b+1)!}{(b+1-a)!}$.
*Tipikus hiba:* Nem megkülönböztetni a személyeket. Ha a fiúk/lányok csak a nemük szerint számítanának, nem szoroznánk $a!$-sal és $b!$-sal.
:::

## P11. feladat

Egy $n \times n$-es sakktáblán $n$ egymást nem ütő bástyát helyezünk el.
a) Hány ilyen elhelyezés létezik?
b) Tegyük fel, hogy $n$ páros, és a sakktábla mezőit a szokásos módon feketére és fehérre színezzük (az $(1,1)$ bal alsó mező fekete). Mutassuk meg, hogy a bástyák közül a fekete mezőn állók száma mindig páros!

**Megoldás.**

a) Két bástya pontosan akkor nem üti egymást, ha nincsenek közös sorban és nincsenek közös oszlopban.
Mivel $n$ bástya van egy $n \times n$-es táblán, minden sorban és minden oszlopban pontosan egy bástyának kell állnia.
Jelölje az $i$-edik sorban álló bástya oszlopindexét $\pi(i)$. Ekkor a feltétel azt jelenti, hogy $\pi(1), \pi(2), \dots, \pi(n)$ az $\{1, 2, \dots, n\}$ halmaz egy permutációja.
Mivel az $S_n$ szimmetrikus csoportnak $n!$ eleme van, pontosan **$n!$** ilyen elhelyezés létezik.

b) A sakktábla mezőit koordinátázzuk: $(i, j)$ az $i$-edik sor és $j$-edik oszlop mezője ($1 \le i, j \le n$).
A standard sakktábla színezés szerint egy $(i, j)$ mező akkor és csak akkor fekete, ha $i + j$ páros (vagy páratlan, a kezdőmező színétől függően; tegyük fel, hogy $i+j$ páros a fekete).
A bástyák koordinátái: $(1, \pi(1)), (2, \pi(2)), \dots, (n, \pi(n))$.
Vegyük a koordináta-összegek összegét modulo 2:
$$\sum_{i=1}^n (i + \pi(i)) = \sum_{i=1}^n i + \sum_{i=1}^n \pi(i) = 2 \sum_{i=1}^n i = 2 \cdot \frac{n(n+1)}{2} = n(n+1).$$
Mivel $n$ páros, $n(n+1)$ páros szám, azaz:
$$\sum_{i=1}^n (i + \pi(i)) \equiv 0 \pmod 2.$$
Egy bástya koordináta-összege pontosan akkor páratlan, ha fehér mezőn áll.
Ha $f$ jelöli a fehér mezőn álló bástyák számát, akkor a paritások összege:
$$\sum_{i=1}^n (i + \pi(i)) \equiv f \cdot 1 + (n - f) \cdot 0 = f \pmod 2.$$
Mivel a bal oldal páros ($0 \pmod 2$), következik, hogy $f$ páros!
De mivel $n$ páros, a fekete mezőn álló bástyák száma, $n - f$ is páros és páros különbségeként szükségképpen **páros**. $\blacksquare$

::: elmelet
**Elméleti háttér — sakktábla bástyák és paritási invariánsok.**

*Bástya-elrendezések és permutációk:* Az $n$ független bástya elhelyezése bijekcióban áll az $S_n$ permutációcsoporttal.
*Invariáns módszer:* Ha egy mennyiség (itt $\sum (i + \pi(i)) = n(n+1)$) értéke független a konkrét permutációtól, akkor a színezési tulajdonságok paritása mereven kötött.
*Tipikus hiba:* Megfeledkezni arról, hogy a sor- és oszlopösszegek szimmetriája miatt az összeg mindig $2 \sum i$, függetlenül a $\pi$ választásától.
:::

## P12. feladat

30 darab 100 forintos pénzérmét szeretnénk szétosztani 4 gyermek között.
a) Hányféleképpen tehetjük meg, ha a pénzérmék egyformák, és csak az számít, hogy ki hány forintot kap?
b) Hányféleképpen tehetjük meg, ha a pénzérmék egyformák, de minden gyermeknek legalább 200 forintot (2 érmét) kell kapnia?
c) Mi a válasz az a) kérdésre, ha a 30 érme mind különböző évjáratú (tehát megkülönböztethető)?

**Megoldás.**

a) Mivel az érmék egyformák, a szétosztást az határozza meg, hogy az egyes gyerekek hány érmét kapnak. Legyen $x_i$ az $i$-edik gyermeknek jutó érmék száma ($1 \le i \le 4$). Ekkor a feltétel:
$$x_1 + x_2 + x_3 + x_4 = 30, \qquad x_i \in \mathbb{N}_0.$$
Ez ismétléses kombináció: 4 dobozba osztunk szét 30 egyforma tárgyat. A lehetőségek száma:
$$\binom{30 + 4 - 1}{30} = \binom{33}{3} = \frac{33 \cdot 32 \cdot 31}{6} = 11 \cdot 16 \cdot 31 = \mathbf{5456}.$$

b) Ha minden gyermeknek legalább 2 érmét kell kapnia, akkor $x_i \ge 2$ minden $i$-re.
Osszunk ki előre minden gyermeknek 2-2 érmét ($4 \times 2 = 8$ érme).
Ekkor a maradék $30 - 8 = 22$ érmét kell tetszőlegesen (nemnegatív egészekként) szétosztani a 4 gyermek között:
$$y_1 + y_2 + y_3 + y_4 = 22, \qquad y_i = x_i - 2 \ge 0.$$
Ennek megoldásszáma:
$$\binom{22 + 4 - 1}{22} = \binom{25}{3} = \frac{25 \cdot 24 \cdot 23}{6} = 25 \cdot 4 \cdot 23 = \mathbf{2300}.$$

c) Ha az érmék mind különbözők, akkor minden egyes érméről egymástól függetlenül el kell döntenünk, hogy a 4 gyermek közül melyik kapja meg.
Minden érmére 4 független választási lehetőség van, így a lehetőségek száma:
$$4^{30} \approx \mathbf{1{,}15 \cdot 10^{18}}.$$

::: elmelet
**Elméleti háttér — megkülönböztethetőség szerepe az elosztási feladatokban.**

*Négy alapvető eloszlási modell:* $k$ tárgy $n$ dobozba:
1. *Különböző tárgyak, különböző dobozok:* $n^k$ (leképezések száma $k \to n$).
2. *Egyforma tárgyak, különböző dobozok:* $\binom{n+k-1}{k}$ (ismétléses kombináció).
3. *Különböző tárgyak, egyforma dobozok:* Másodfajú Stirling-számok összege $\sum_{j=1}^n S(k, j)$ (partíciók száma).
4. *Egyforma tárgyak, egyforma dobozok:* $p_{\le n}(k)$, az egész számok partícióinak száma.
*Tipikus hiba:* Nem tisztázni, hogy az osztandó javak egyformák-e vagy megkülönböztethetők. A válaszok nagyságrendje ($5456$ vs. $4^{30} \approx 10^{18}$) drámaian eltér!
:::

## P13. feladat

Hányféleképpen írhatjuk be az $1, 2, \dots, 9$ számokat az alábbi relációk üres helyeire úgy, hogy mindegyik számot pontosan egyszer használjuk:
$$\_\_ < \_\_ < \_\_ < \_\_ < \_\_ > \_\_ > \_\_ > \_\_ > \_\_$$
(tehát az első 5 szám szigorúan növekszik, majd a maradék 4 szigorúan csökken)?

**Megoldás.**

Jelölje a beírt számokat sorrendben $a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9$.
A feltétel:
$$a_1 < a_2 < a_3 < a_4 < a_5 > a_6 > a_7 > a_8 > a_9.$$
Mivel $a_5$ nagyobb az összes megelőző és az összes rákövetkező számnál, $a_5$ a teljes sorozat szigorúan legnagyobb eleme kell, hogy legyen.
Mivel a beírandó számok az $1, 2, \dots, 9$, a legnagyobb szám a 9, így szükségképpen:
$$a_5 = 9.$$
A fennmaradó 8 szám az $\{1, 2, 3, 4, 5, 6, 7, 8\}$ halmaz elemei.
Ezen 8 szám közül 4 szám a bal oldalra kerül ($a_1, a_2, a_3, a_4$), a megmaradt 4 szám pedig a jobb oldalra ($a_6, a_7, a_8, a_9$).
Válasszuk ki azt a 4 számot, amelyik a bal oldalra kerül. Ezt
$$\binom{8}{4} = \frac{8 \cdot 7 \cdot 6 \cdot 5}{24} = 70$$
féleképpen tehetjük meg.
Amint a 4 bal oldali számot kiválasztottuk:
- A bal oldalon az $a_1 < a_2 < a_3 < a_4$ szigorú növekvő rendezettség miatt a kiválasztott 4 szám pontosan egyetlen lehetséges sorrendben helyezhető el.
- A fennmaradó 4 szám a jobb oldalra kerül, és az $a_6 > a_7 > a_8 > a_9$ szigorú csökkenő rendezettség miatt szintén pontosan egyetlen lehetséges sorrendben helyezhető el.
Így a megfelelő beírások száma pontosan a 4 bal oldali elem kiválasztásainak számával egyenlő:
$$\binom{8}{4} = \mathbf{70}.$$

::: elmelet
**Elméleti háttér — unimodális permutációk és részleges rendezések.**

*Unimodális permutáció:* Olyan permutáció, amely egyetlen csúcsig növekszik, majd onnan csökken. Ha a csúcs a $k$-adik helyen van, a legnagyobb elem ($n$) a $k$-adik helyre kényszerül, és a maradék $n-1$ elemből $\binom{n-1}{k-1}$ módon választjuk ki a csúcs előtti elemeket.
*Összes unimodális permutáció:* Ha a csúcs helye tetszőleges lehet ($1 \le k \le n$), az összes unimodális permutáció száma:
$$\sum_{k=1}^n \binom{n-1}{k-1} = 2^{n-1}.$$
Minden $x \in \{1, \dots, n-1\}$ elemről eldöntjük, hogy a csúcstól balra vagy jobbra álljon.
*Tipikus hiba:* Nem észrevenni, hogy a szigorú egyenlőtlenségek miatt a két ágon a belső sorrend mereven meghatározott, így ott nincs további $4!$ permutációs szorzó!
:::

## P14. feladat

Egy négyzethálós rácson a $(0,0)$ pontból a $(7,5)$ pontba szeretnénk eljutni úgy, hogy minden lépésben vagy 1 egységet jobbra, vagy 1 egységet felfelé lépünk.
a) Hány különböző útvonal létezik?
b) Hány olyan útvonal van, amely áthalad a $(3,2)$ ponton?
c) Hány olyan útvonal van, amely áthalad a $(3,2)$ ponton, de elkerüli a $(5,4)$ pontot?

**Megoldás.**

a) Bármely útvonal a $(0,0)$-ból a $(7,5)$-be pontosan 7 darab jobbra (J) és 5 darab fel (F) lépésből áll, azaz összesen $7 + 5 = 12$ lépésből.
Egy útvonalat egyértelműen meghatároz az, hogy a 12 lépés közül melyik 5 lépésben lépünk felfelé. Ezért az utak száma:
$$\binom{12}{5} = \frac{12 \cdot 11 \cdot 10 \cdot 9 \cdot 8}{120} = 12 \cdot 11 \cdot 6 = \mathbf{792}.$$

b) Ha az út áthalad a $(3,2)$ ponton, az utat két szakaszra bonthatjuk:
1. $(0,0) \to (3,2)$: 3 jobbra és 2 fel lépés, hossza $3 + 2 = 5$. Utak száma: $\binom{5}{2} = 10$.
2. $(3,2) \to (7,5)$: $7 - 3 = 4$ jobbra és $5 - 2 = 3$ fel lépés, hossza $4 + 3 = 7$. Utak száma: $\binom{7}{3} = \frac{7 \cdot 6 \cdot 5}{6} = 35$.
A két szakasz függetlenül választható, így a szorzási szabály szerint az utak száma:
$$10 \cdot 35 = \mathbf{350}.$$

c) Komplementer módszert alkalmazunk a $(3,2)$-n áthaladó utakra: levonjuk azokat az utakat, amelyek $(3,2)$-n ÉS $(5,4)$-en is áthaladnak.
Az ilyen út 3 szakaszból áll:
1. $(0,0) \to (3,2)$: $\binom{5}{2} = 10$ út.
2. $(3,2) \to (5,4)$: $5 - 3 = 2$ jobbra és $4 - 2 = 2$ fel lépés: $\binom{2+2}{2} = \binom{4}{2} = 6$ út.
3. $(5,4) \to (7,5)$: $7 - 5 = 2$ jobbra és $5 - 4 = 1$ fel lépés: $\binom{2+1}{1} = \binom{3}{1} = 3$ út.
A mindkét ponton áthaladó utak száma:
$$10 \cdot 6 \cdot 3 = 180.$$
A $(3,2)$-n áthaladó, de $(5,4)$-et elkerülő utak száma tehát:
$$350 - 180 = \mathbf{170}.$$

::: elmelet
**Elméleti háttér — rácsséták (grid paths) és szita-elv.**

*Rácsséták alaptétele:* Az $(x_1, y_1)$ pontból az $(x_2, y_2)$ pontba ($x_1 \le x_2, y_1 \le y_2$) vezető, csak jobbra és fel lépéseket használó utak száma:
$$\binom{(x_2 - x_1) + (y_2 - y_1)}{y_2 - y_1} = \binom{(x_2 - x_1) + (y_2 - y_1)}{x_2 - x_1}.$$
*Tranzitív pontok:* Ha az útnak át kell haladnia a $P_1, P_2, \dots, P_k$ pontokon (ahol $P_i \le P_{i+1}$ mindkét koordinátában), az utak száma a részszakaszok útjainak szorzata.
*Tiltott pontok:* Ha pontokat el kell kerülni, a logikai szita-formulát (Inclusion-Exclusion) alkalmazzuk.
:::

## P15. feladat

Egy városban a telefonszámok 7 jegyűek, és nem kezdődhetnek 0-val (azaz az első számjegy $1, \dots, 9$). Hány olyan telefonszám létezik, amelyben van legalább két szomszédos számjegy, amely megegyezik?

**Megoldás.**

Alkalmazzuk a komplementer leszámlálás módszerét:
1. Határozzuk meg az összes lehetséges 7-jegyű telefonszám számát:
Az első számjegy nem lehet 0, így 9 lehetőség van ($1, 2, \dots, 9$).
A maradék 6 számjegy mindegyike tetszőlegesen választható a 10 számjegy közül.
Az összes telefonszám száma:
$$N = 9 \cdot 10^6 = 9\,000\,000.$$

2. Határozzuk meg azon „rossz” telefonszámok számát, amelyekben semelyik két közvetlenül szomszédos számjegy sem egyezik meg:
- Az első számjegy 9-féle lehet ($1..9$).
- A második számjegy nem egyezhet meg az elsővel, de lehet 0 is: $10 - 1 = 9$ lehetőség.
- A harmadik számjegy nem egyezhet meg a másodikkal: $10 - 1 = 9$ lehetőség.
- Általánosan, minden egyes rákövetkező számjegy csak a közvetlen bal oldali szomszédjától kell, hogy különbözzön, így minden további pozícióra pontosan 9 lehetőség van.
A szomszédos egyezést nem tartalmazó telefonszámok száma:
$$N_{\text{rossz}} = 9 \cdot 9^6 = 9^7 = 4\,782\,969.$$

3. A feltételnek eleget tevő telefonszámok száma tehát:
$$N - N_{\text{rossz}} = 9\,000\,000 - 4\,782\,969 = \mathbf{4\,217\,031}.$$

::: elmelet
**Elméleti háttér — komplementer módszer és szomszédsági relációk.**

*Létezési feltétel komplementere:* Ha a feladatban az szerepel, hogy „van legalább egy olyan pár...”, szinte mindig sokkal egyszerűbb a komplementer feltételt vizsgálni: „egyetlen ilyen pár sincs”.
*Független megszorítások sorozatokban:* Ha egy sorozatban $x_{i+1} \neq x_i$, a lehetőségek száma lépésről lépésre $(|S|-1)$, mert minden lépésben pontosan egy korábbi választást zárunk ki.
*Tipikus hiba:* Nem figyelni a kezdőjegy speciális megszorítására ($d_1 \neq 0$).
:::

## P16. feladat

Tekintsük az $f : \{1, 2, 3, 4\} \to \{1, 2, \dots, 9\}$ leképezéseket. Hány olyan függvény van, amely:
a) szigorúan monoton növekvő;
b) gyengén monoton növekvő ($f(1) \le f(2) \le f(3) \le f(4)$);
c) injektív;
d) tetszőleges függvény?

**Megoldás.**

a) Szigorúan monoton növekvő függvény: $f(1) < f(2) < f(3) < f(4)$.
Egy ilyen függvény értékkészlete egy 4 elemű részhalmaza a $\{1, 2, \dots, 9\}$ képhalmaznak.
Megfordítva, a $\{1, 2, \dots, 9\}$ tetszőleges 4 elemű részhalmazának elemeit nagyság szerint rendezve pontosan egy szigorúan monoton növekvő függvényt kapunk ($f(1)$ a legkisebb, $f(4)$ a legnagyobb).
Így a szigorúan monoton növekvő függvények száma az értékkészletek számával, azaz a kombinációk számával egyenlő:
$$\binom{9}{4} = \frac{9 \cdot 8 \cdot 7 \cdot 6}{24} = 9 \cdot 2 \cdot 7 = \mathbf{126}.$$

b) Gyengén monoton növekvő függvény: $1 \le f(1) \le f(2) \le f(3) \le f(4) \le 9$.
Itt az értékek megengedetten egyenlők is lehetnek. Ez pontosan $n = 9$ elemből $k = 4$ elem kiválasztása ismétléses kombinációval!
(Szabványos transzformáció: $g(i) = f(i) + i - 1$. Ekkor $1 \le g(1) < g(2) < g(3) < g(4) \le 9 + 4 - 1 = 12$, ami egy szigorúan növekvő függvény a 12 elemű halmazba.)
A lehetőségek száma:
$$\binom{9 + 4 - 1}{4} = \binom{12}{4} = \frac{12 \cdot 11 \cdot 10 \cdot 9}{24} = 11 \cdot 5 \cdot 9 = \mathbf{495}.$$

c) Injektív függvény: a függvény különböző elemekhez különböző értékeket rendel.
Az első elem képe 9-féle, a másodiké 8-féle, a harmadiké 7-féle, a negyediké 6-féle lehet (ismétlés nélküli variáció):
$$V_9^4 = 9 \cdot 8 \cdot 7 \cdot 6 = \mathbf{3024}.$$

d) Tetszőleges függvény: mind a 4 elemhez függetlenül választhatunk egyet a 9 lehetséges érték közül:
$$9^4 = \mathbf{6561}.$$

::: elmelet
**Elméleti háttér — véges halmazok közötti függvények osztályozása.**

Legyen $|A| = m$ és $|B| = n$.
1. *Összes függvény $A \to B$:* $n^m$.
2. *Injektív függvények ($m \le n$):* $n(n-1)\dots(n-m+1) = \frac{n!}{(n-m)!}$.
3. *Szigorúan monoton növő függvények ($A, B \subset \mathbb{R}$ rendezett halmazok):* $\binom{n}{m}$.
4. *Gyengén monoton növő függvények:* $\binom{n+m-1}{m}$.
*A transzformációs trükk:* $f(1) \le f(2) \le \dots \le f(m) \iff f(1) < f(2)+1 < \dots < f(m)+m-1$. Ez a bijekció hidat képez a gyenge és a szigorú rendezettség között.
:::

## P17. feladat

Egy konvex 12-szögben semelyik három átló sem metszi egymást a sokszög belsejében egyetlen közös pontban (általános helyzet).
a) Hány metszéspontja van az átlóknak a sokszög belsejében?
b) Hány metszéspont keletkezik a sokszögön kívül, ha a sokszög összes oldal- és átlóegyenesét meghosszabbítjuk, feltéve, hogy semelyik két egyenes sem párhuzamos és semelyik három nem megy át egy ponton a sokszög csúcsain kívül?

**Megoldás.**

a) Bármely 4 csúcs a konvex sokszögben egy konvex négyszöget határoz meg.
Egy konvex négyszögnek pontosan két átlója van, és ezek az átlók a sokszög belsejében pontosan egyetlen pontban metszik egymást.
Megfordítva, a sokszög belsejében lévő bármely átlómetszéspont pontosan két átló metszéspontja (mivel feltettük, hogy semelyik három átló nem megy át egy ponton). E két átló négy végpontja pedig a sokszög négy különböző csúcsa.
Ezért kölcsönösen egyértelmű megfeleltetés (bijekció) van a sokszög csúcsnégyesei és a belső átlómetszéspontok között!
A belső metszéspontok száma $n = 12$ esetén:
$$\binom{n}{4} = \binom{12}{4} = \frac{12 \cdot 11 \cdot 10 \cdot 9}{24} = 11 \cdot 5 \cdot 9 = \mathbf{495}.$$

b) Nézzük meg a csúcsnégyesek által meghatározott külső metszéspontokat:
A síkban 4 általános helyzetű pont (egy teljes négyszög csúcsai) $\binom{4}{2} = 6$ egyenest határoz meg, amelyeknek $\binom{6}{2} = 15$ párja van. Ebből a 4 csúcsponton kívül $\binom{4}{2}/2 = 3$ darab átlómetszéspont keletkezik (a teljes négyszög 3 átlós pontja).
Konvex négyszög esetén ezen 3 metszéspont közül:
- Pontosan 1 esik a négyszög belsejébe (a belső átlók metszéspontja);
- Pontosan 2 esik a négyszögön kívülre (a szemközti oldalegyenesek metszéspontjai).
Mivel minden külső metszéspont pontosan egy csúcsnégyeshez tartozik a szemközti oldalpárok meghosszabbításaként, a külső metszéspontok száma a csúcsnégyesek számának kétszerese:
$$2 \cdot \binom{n}{4} = 2 \cdot 495 = \mathbf{990}.$$

::: elmelet
**Elméleti háttér — metszéspontok konvex sokszögekben és projektív geometria.**

*Csúcsnégyesek és belső metszéspontok:* Egy konvex sokszögben bármely 4 csúcs pontosan egy belső metszéspontot határoz meg. Általános helyzetben a belső metszéspontok száma $\binom{n}{4}$.
*Teljes négyszög metszéspontjai:* 4 csúcs 6 összekötő egyenese a síkon 3 átlós metszéspontot hoz létre: konvex elrendezésben 1 belső és 2 külső pontot.
*Euler-karakterisztika alkalmazása:* A belső tartományok száma a sokszögben: $F = 1 + \binom{n}{2} - n + \binom{n}{4}$.
:::

## P18. feladat

Az ötöslottón a 90 számból 5-öt húznak ki visszatevés nélkül.
a) Hány olyan számötös húzható ki, amelyben semelyik két kihúzott szám nem szomszédos?
b) Hány olyan számötös van, amelyben van legalább két szomszédos szám?
c) Általánosan, hányféleképpen választható ki $k$ elem az $\{1, 2, \dots, n\}$ halmazból úgy, hogy semelyik kettő ne legyen szomszédos?

**Megoldás.**

a) és c) Legyenek a kihúzott számok növekvő sorrendben:
$$1 \le x_1 < x_2 < x_3 < \dots < x_k \le n.$$
A feltétel szerint semelyik két szám nem szomszédos, azaz $x_{i+1} - x_i \ge 2$ minden $1 \le i \le k - 1$ esetén.
Alkalmazzuk a következő transzformációt:
$$y_1 = x_1$$
$$y_2 = x_2 - 1$$
$$y_3 = x_3 - 2$$
$$\dots$$
$$y_k = x_k - (k - 1).$$
Mivel $x_{i+1} - x_i \ge 2$, ebből:
$$y_{i+1} - y_i = (x_{i+1} - i) - (x_i - (i - 1)) = (x_{i+1} - x_i) - 1 \ge 2 - 1 = 1,$$
tehát $y_1 < y_2 < \dots < y_k$ szigorúan növekvő sorozat!
Továbbá az alsó és felső korlátok:
$$1 \le y_1 \quad \text{és} \quad y_k = x_k - (k - 1) \le n - k + 1.$$
Ez a megfeleltetés bijekció a feltételnek megfelelő $\{x_1, \dots, x_k\}$ halmazok és az $\{1, 2, \dots, n - k + 1\}$ halmaz $k$ elemű részhalmazai között!
Ezért a kiválasztások száma általánosan:
$$\binom{n - k + 1}{k}.$$
Az ötöslottóra ($n = 90, k = 5$):
$$\binom{90 - 5 + 1}{5} = \binom{86}{5} = \frac{86 \cdot 85 \cdot 84 \cdot 83 \cdot 82}{120} = \mathbf{34\,826\,302}.$$

b) Az összes lehetséges lottóhúzás száma:
$$\binom{90}{5} = \frac{90 \cdot 89 \cdot 88 \cdot 87 \cdot 86}{120} = 43\,949\,268.$$
Azoknak a húzásoknak a száma, amelyekben van legalább két szomszédos szám:
$$\binom{90}{5} - \binom{86}{5} = 43\,949\,268 - 34\,826\,302 = \mathbf{9\,122\,966}.$$

::: elmelet
**Elméleti háttér — szomszédmentes kiválasztás és Kaplansky-lemma.**

*Kaplansky-lemma egyenesre:* Az $\{1, 2, \dots, n\}$ halmazból $k$ elem kiválasztása úgy, hogy semelyik kettő ne legyen szomszédos:
$$\binom{n - k + 1}{k}.$$
*Szemléletes bizonyítás (golyók és elválasztók):* Tekintsünk $k$ fekete golyót (kiválasztott számok) és $n - k$ fehér golyót (nem kiválasztott számok). A feltétel szerint a fekete golyók nem lehetnek szomszédosak. Ezért a fekete golyókat a fehér golyók által határolt $(n - k) + 1$ helyre kell betennünk, legfeljebb egyet mindegyik helyre. A helyek kiválasztása $\binom{n-k+1}{k}$.
*Feltétel a létezésre:* $k \le n - k + 1 \iff 2k - 1 \le n$.
:::

## P19. feladat

Adott $n$ darab egyenes a síkban általános helyzetben (semelyik kettő nem párhuzamos, és semelyik három nem megy át egy ponton).
a) Hány tartományra (síkrégióra) osztja ez az $n$ egyenes a síkot?
b) Ezek közül hány tartomány korlátos?

**Megoldás.**

a) Jelölje $R_n$ a tartományok számát $n$ általános helyzetű egyenes esetén.
$n = 0$-ra a sík egyetlen tartományból áll: $R_0 = 1$.
Tegyük fel, hogy már behúztunk $n - 1$ egyenest a síkba.
Az $n$-edik egyenes általános helyzetben van, ezért metszi mind az $n - 1$ korábbi egyenest, mégpedig $n - 1$ darab különböző pontban.
Ez az $n - 1$ metszéspont az $n$-edik egyenest pontosan $n$ részre (szakszra és félegyenesre) vágja szét ($n - 2$ darab belső szakaszra és 2 darab félegyenesre).
Minden egyes ilyen szakasz vagy félegyenes egy már létező tartományon halad át, és azt pontosan két új tartományra vágja szét.
Ezért az $n$-edik egyenes behúzása pontosan $n$-nel növeli a tartományok számát:
$$R_n = R_{n-1} + n.$$
Összegezve a rekurziót:
$$R_n = R_0 + \sum_{i=1}^n i = 1 + \frac{n(n+1)}{2} = \mathbf{\binom{n}{2} + n + 1}.$$

b) A korlátos tartományok számát jelölje $B_n$.
Minden egyes korlátos tartomány egy korlátos sokszög.
Az $n$-edik egyenesen lévő $n - 2$ darab véges szakasz mindegyike egy korlátos tartományt hoz létre (vagy vág ketté), míg a 2 darab végtelen félegyenes nemkorlátos tartományokat vág ketté.
Ezért a korlátos tartományok számára érvényes rekurzió:
$$B_n = B_{n-1} + (n - 2), \qquad \text{ahol } B_2 = 0.$$
Összegezve:
$$B_n = \sum_{i=2}^{n-1} (i - 1) = \frac{(n-2)(n-1)}{2} = \mathbf{\binom{n-1}{2}}.$$
(Megjegyzés: A nemkorlátos tartományok száma mindig $2n$, hiszen a végtelenben a tartományok egy nagy kör mentén váltakoznak.)

::: elmelet
**Elméleti háttér — síkfelosztási rekurziók és Euler-formula.**

*Rekurziós módszer a kombinatorikus geometriában:* Új objektum (itt egyenes) hozzáadásakor megvizsgáljuk, hogy az a korábbi objektumokat hány elemben metszi, és azok hány új tartományt generálnak.
*Euler-formula síkgráfokra:* $V - E + F = 1$ (korlátos lapokra) vagy $V - E + F = 2$ (a külső tartománnyal együtt). A metszéspontok száma $V = \binom{n}{2}$, az egyeneseken keletkező véges élek száma $E_{\text{véges}} = n(n-2)$, ahonnan a korlátos lapok száma:
$$F_{\text{korlátos}} = E_{\text{véges}} - V = n(n-2) - \frac{n(n-1)}{2} = \frac{n^2 - 3n}{2} = \binom{n-1}{2}.$$
:::

## P20. feladat

Egy 52 lapos francia kártyacsomagból (4 szín, mindegyikben 13 lap: 2..10, J, Q, K, A) egy játékosnak 5 lapot osztanak ki (pókerkéz). Kitüntetett lapoknak nevezzük a 4 ászt és a 4 királyt (összesen 8 kitüntetett lap).
a) Hány olyan leosztás van, amelyben pontosan 2 kitüntetett lap szerepel?
b) Hány olyan leosztás van, amelyben legalább 2 kitüntetett lap van?

**Megoldás.**

a) A pakliban 8 kitüntetett lap és $52 - 8 = 44$ nem kitüntetett lap található.
Pontosan 2 kitüntetett laphoz:
- A 8 kitüntetett lapból választunk 2-t: $\binom{8}{2} = \frac{8 \cdot 7}{2} = 28$ lehetőség.
- A 44 egyéb lapból választunk $5 - 2 = 3$-at: $\binom{44}{3} = \frac{44 \cdot 43 \cdot 42}{6} = 44 \cdot 43 \cdot 7 = 13\,244$ lehetőség.
A szorzási szabály szerint az ilyen leosztások száma:
$$28 \cdot 13\,244 = \mathbf{370\,832}.$$

b) A „legalább 2 kitüntetett lap” feltételhez használhatunk közvetlen esetszétválasztást vagy komplementer számlálást.
*Komplementer módszerrel:*
Az összes lehetséges 5 lapos leosztás száma:
$$\binom{52}{5} = \frac{52 \cdot 51 \cdot 50 \cdot 49 \cdot 48}{120} = 2\,598\,960.$$
A rossz esetek azok, ahol 0 vagy 1 kitüntetett lap van:
- 0 kitüntetett lap: a 44 egyéb lapból választunk 5-öt:
$$\binom{44}{5} = \frac{44 \cdot 43 \cdot 42 \cdot 41 \cdot 40}{120} = 1\,086\,008.$$
- 1 kitüntetett lap: a 8 kitüntetettből 1-et, a 44 egyéből 4-et:
$$\binom{8}{1} \binom{44}{4} = 8 \cdot \frac{44 \cdot 43 \cdot 42 \cdot 41}{24} = 8 \cdot 135\,751 = 1\,086\,008.$$
A legalább 2 kitüntetett lapot tartalmazó leosztások száma:
$$2\,598\,960 - (1\,086\,008 + 1\,086\,008) = 2\,598\,960 - 2\,172\,016 = \mathbf{426\,944}.$$
*(Érdekesség: $\binom{44}{5} = 8 \binom{44}{4}$, mert $\frac{44-4}{5} = \frac{40}{5} = 8$.)*

::: elmelet
**Elméleti háttér — hipergeometrikus eloszlású kombinatorikai feladatok.**

*Hipergeometrikus modell:* Egy $N$ elemű sokaságban $M$ selejtes (vagy kitüntetett) és $N - M$ egyéb elem van. Visszatevés nélkül kihúzva $n$ elemet, annak a száma, hogy pontosan $k$ darab kitüntetett elemet kapunk:
$$\binom{M}{k} \binom{N - M}{n - k}.$$
*„Legalább $k$ darab” feltétel kezelése:* Ha $k$ kicsi (pl. $k = 1$ vagy $k = 2$), a komplementer vizsgálat ($0, 1, \dots, k-1$) kevesebb számolást igényel, mint a közvetlen összegzés.
:::

## P21. feladat

Egy kávézóban 6-féle kávékülönlegesség kapható. Egy rendezvényre kávékat rendelünk. Hányféle rendelés lehetséges (csak az egyes fajták darabszáma számít), ha:
a) pontosan 25 csésze kávét rendelünk;
b) legfeljebb 25 csésze kávét rendelünk;
c) pontosan 25 csésze kávét rendelünk úgy, hogy mind a 6 fajtából legalább 2 csészével rendelünk?

**Megoldás.**

a) Jelölje $x_i$ az $i$-edik kávéfajtából rendelt csészék számát ($1 \le i \le 6$). Ekkor:
$$x_1 + x_2 + x_3 + x_4 + x_5 + x_6 = 25, \qquad x_i \in \mathbb{N}_0.$$
Ez ismétléses kombináció:
$$\binom{25 + 6 - 1}{25} = \binom{30}{25} = \binom{30}{5} = \frac{30 \cdot 29 \cdot 28 \cdot 27 \cdot 26}{120} = \mathbf{142\,506}.$$

b) A feltétel:
$$x_1 + x_2 + x_3 + x_4 + x_5 + x_6 \le 25, \qquad x_i \in \mathbb{N}_0.$$
Vezessünk be egy új, úgynevezett hiányváltozót (slack variable / dummy változót):
$$x_7 = 25 - \sum_{i=1}^6 x_i.$$
Mivel $\sum_{i=1}^6 x_i \le 25$, az $x_7$ változó értéke pontosan a még meg nem rendelt csészék száma, így $x_7 \in \mathbb{N}_0$.
Ezzel az egyenlőtlenség ekvivalens a következő 7 változós egyenlőséggel:
$$x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 = 25, \qquad x_i \in \mathbb{N}_0.$$
Ennek megoldásszáma $n = 7$ fajtából $k = 25$ választás ismétléses kombinációval:
$$\binom{25 + 7 - 1}{25} = \binom{31}{25} = \binom{31}{6} = \frac{31 \cdot 30 \cdot 29 \cdot 28 \cdot 27 \cdot 26}{720} = 31 \cdot 29 \cdot 7 \cdot 9 \cdot 13 = \mathbf{736\,281}.$$
(Megjegyzés: ez megegyezik a $\sum_{k=0}^{25} \binom{k + 5}{5} = \binom{31}{6}$ hokibot azonosság szerinti összeggel.)

c) Ha minden fajtából legalább 2 csészével rendelünk, azaz $x_i \ge 2$:
Előre berendelünk minden fajtából 2 csészét ($6 \times 2 = 12$ csésze).
A fennmaradó $25 - 12 = 13$ csészét kell szabadon szétosztani a 6 fajta között:
$$y_1 + y_2 + y_3 + y_4 + y_5 + y_6 = 13, \qquad y_i = x_i - 2 \ge 0.$$
Megoldások száma:
$$\binom{13 + 6 - 1}{13} = \binom{18}{13} = \binom{18}{5} = \frac{18 \cdot 17 \cdot 16 \cdot 15 \cdot 14}{120} = 18 \cdot 17 \cdot 2 \cdot 14 = \mathbf{8568}.$$

::: elmelet
**Elméleti háttér — a hiányváltozó (slack variable) módszere és alsó korlátok.**

*Hiányváltozó módszere:* A $\sum_{i=1}^n x_i \le k$ egyenlőtlenség nemnegatív egész megoldásainak száma azonos a $\sum_{i=1}^{n+1} x_i = k$ egyenlet nemnegatív egész megoldásainak számával, azaz $\binom{k + n}{n}$.
*Hokibot azonossággal való kapcsolat:* $\sum_{j=0}^k \binom{j + n - 1}{n - 1} = \binom{k + n}{n}$. A dummy változó kombinatorikus magyarázatot ad erre az azonosságra.
*Alsó korlátok:* $x_i \ge c_i$ esetén $y_i = x_i - c_i$ transzformációval az összeg $k - \sum c_i$-re csökken.
:::

## P22. feladat

Egy szabályos 14-szög csúcsai közül hányféleképpen választhatunk ki 4 csúcsot úgy, hogy semelyik kettő ne legyen szomszédos a sokszög kerülete mentén? Vezessük le az általános képletet egy konvex $n$-szög $k$ darab páronként nem szomszédos csúcsának kiválasztására!

**Megoldás.**

Jelölje a sokszög csúcsait a kerület mentén sorrendben $v_1, v_2, \dots, v_n$.
A kör mentén történő kiválasztást egy kitüntetett csúcs (mondjuk $v_1$) vizsgálatával visszavezetjük az egyenes menti kiválasztásra:
Két diszjunkt eset van:
1. eset: $v_1$-et KIVÁLASZTJUK.
Ekkor a szomszédjai, $v_2$ és $v_n$ NEM választhatók ki.
A fennmaradó $n - 3$ csúcs ($v_3, v_4, \dots, v_{n-1}$) egy egyenes vonalú sorozatot alkot.
Ebből a sorozatból kell kiválasztanunk a maradék $k - 1$ darab csúcsot úgy, hogy semelyik kettő ne legyen szomszédos.
A 18. feladatban bizonyított egyenes menti Kaplansky-lemma szerint a lehetőségek száma:
$$\binom{(n - 3) - (k - 1) + 1}{k - 1} = \binom{n - k - 1}{k - 1}.$$

2. eset: $v_1$-et NEM VÁLASZTJUK KI.
Ekkor az eredeti kör a $v_1$ elhagyásával egy $n - 1$ csúcsú lineáris lánccá nyílik szét ($v_2, v_3, \dots, v_n$).
Ebből az $n - 1$ csúcsból kell $k$ darab egymással nem szomszédos csúcsot választanunk:
$$\binom{(n - 1) - k + 1}{k} = \binom{n - k}{k}.$$

A két eset összege megadja a kör menti szomszédmentes választások számát:
$$\binom{n - k - 1}{k - 1} + \binom{n - k}{k} = \frac{k}{n - k} \binom{n - k}{k} + \binom{n - k}{k} = \left(\frac{k}{n - k} + 1\right) \binom{n - k}{k} = \mathbf{\frac{n}{n - k} \binom{n - k}{k}}.$$

Alkalmazzuk a képletet $n = 14$ és $k = 4$ esetén:
$$\frac{14}{14 - 4} \binom{14 - 4}{4} = \frac{14}{10} \binom{10}{4} = \frac{7}{5} \cdot \frac{10 \cdot 9 \cdot 8 \cdot 7}{24} = \frac{7}{5} \cdot 210 = 7 \cdot 42 = \mathbf{294}.$$

::: elmelet
**Elméleti háttér — Kaplansky-lemma körre.**

*Kaplansky-lemma körre:* Egy $n$ csúcsú körből $k$ elem kiválasztása úgy, hogy semelyik kettő ne legyen szomszédos ($2k \le n$):
$$\frac{n}{n - k} \binom{n - k}{k}.$$
*Alternatív bizonyítás kettős leszámlálással:* Ha a kiválasztott $k$ csúcs mindegyike után kijelölünk egy üres pozíciót a körön, és a fennmaradó $n - k$ objektumból (a $k$ darab blokkból és $n - 2k$ független csúcsból) választunk, a kör szimmetriája miatt minden elrendezés $n$-szer számlálódik, ami szintén az $\frac{n}{n-k}\binom{n-k}{k}$ eredményhez vezet.
*Feltétel:* $2k \le n$ (ha $2k > n$, a skatulya-elv miatt nem létezik független csúcshalmaz).
:::

# A 2. feladatsorhoz

## P23. feladat

Bizonyítsuk be teljes indukcióval minden $n \ge 1$ egész számra a következő összefüggéseket:
a) $\sum_{i=1}^{n} \frac{1}{(2i-1)(2i+1)} = \frac{n}{2n+1}$;
b) $\sum_{i=1}^{n} i \cdot 2^i = (n-1)2^{n+1} + 2$;
c) $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$.

**Megoldás.**

a) 1. Bázislépés: $n = 1$-re a bal oldal: $\frac{1}{(2 \cdot 1 - 1)(2 \cdot 1 + 1)} = \frac{1}{1 \cdot 3} = \frac{1}{3}$. A jobb oldal: $\frac{1}{2 \cdot 1 + 1} = \frac{1}{3}$. Az állítás $n = 1$-re igaz.
2. Indukciós feltevés: Tegyük fel, hogy valamely $n \ge 1$ egészre érvényes:
$$\sum_{i=1}^{n} \frac{1}{(2i-1)(2i+1)} = \frac{n}{2n+1}.$$
3. Indukciós lépés: Bizonyítandó az egyenlőség $n + 1$-re:
$$\sum_{i=1}^{n+1} \frac{1}{(2i-1)(2i+1)} = \sum_{i=1}^{n} \frac{1}{(2i-1)(2i+1)} + \frac{1}{(2n+1)(2n+3)}.$$
Az indukciós feltevést behelyettesítve:
$$\frac{n}{2n+1} + \frac{1}{(2n+1)(2n+3)} = \frac{n(2n+3) + 1}{(2n+1)(2n+3)} = \frac{2n^2 + 3n + 1}{(2n+1)(2n+3)}.$$
A számláló szorzattá bontása: $2n^2 + 3n + 1 = (2n+1)(n+1)$. Így $(2n+1)$-gyel egyszerűsítve:
$$\frac{(2n+1)(n+1)}{(2n+1)(2n+3)} = \frac{n+1}{2(n+1)+1}.$$
Ez pontosan a jobb oldal $n + 1$ helyettesítéssel. $\blacksquare$

b) 1. Bázislépés: $n = 1$-re a bal oldal: $1 \cdot 2^1 = 2$. A jobb oldal: $(1-1)2^{1+1} + 2 = 0 + 2 = 2$. Igaz.
2. Indukciós feltevés: Tegyük fel, hogy $\sum_{i=1}^{n} i \cdot 2^i = (n-1)2^{n+1} + 2$.
3. Indukciós lépés:
$$\sum_{i=1}^{n+1} i \cdot 2^i = \left(\sum_{i=1}^{n} i \cdot 2^i\right) + (n+1)2^{n+1} = (n-1)2^{n+1} + 2 + (n+1)2^{n+1}.$$
Kiemelve $2^{n+1}$-t:
$$[(n-1) + (n+1)]2^{n+1} + 2 = 2n \cdot 2^{n+1} + 2 = n \cdot 2^{n+2} + 2 = ((n+1)-1)2^{(n+1)+1} + 2.$$
Ez pontosan a bizonyítandó állítás $n+1$-re. $\blacksquare$

c) 1. Bázislépés: $n = 1$-re $1^2 = 1$ és $\frac{1 \cdot 2 \cdot 3}{6} = 1$. Igaz.
2. Indukciós feltevés: $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$.
3. Indukciós lépés:
$$\sum_{i=1}^{n+1} i^2 = \frac{n(n+1)(2n+1)}{6} + (n+1)^2 = (n+1) \left[\frac{n(2n+1) + 6(n+1)}{6}\right] = (n+1)\frac{2n^2 + 7n + 6}{6}.$$
Mivel $2n^2 + 7n + 6 = (n+2)(2n+3) = ((n+1)+1)(2(n+1)+1)$, kapjuk:
$$\frac{(n+1)((n+1)+1)(2(n+1)+1)}{6}.$$
Ezzel a teljes indukciós bizonyítás kész. $\blacksquare$

::: elmelet
**Elméleti háttér — a teljes indukció elve és teleszkopikus összegek.**

*A teljes indukció axiómája (Peano-axiómák):* Ha egy $A(n)$ állítás igaz $n = 1$-re, és tetszőleges $n$-re $A(n) \implies A(n+1)$, akkor $A(n)$ igaz minden $n \in \mathbb{N}$ esetén.
*A 3 kulcslépés:*
1. Bázislépés ($n = 1$ vagy a legkisebb érték).
2. Indukciós feltevés (kimondani pontosan: „Tegyük fel, hogy $n$-re igaz...”).
3. Indukciós lépés (a feltevés felhasználásával levezetni az $n+1$-re vonatkozó állítást).
*Teleszkopikus alternatíva:* Az a) feladat indukció nélkül is bizonyítható a parciális törtekre bontással: $\frac{1}{(2i-1)(2i+1)} = \frac{1}{2}\left(\frac{1}{2i-1} - \frac{1}{2i+1}\right)$, ahol a közbülső tagok kiesnek!
:::

## P24. feladat

Egy egyetemi előadáson hallgatók vesznek részt.
a) Legalább hány hallgatónak kell jelen lennie ahhoz, hogy biztosan legyen a hétnek (hétfőtől vasárnapig) olyan napja, amelyen legalább 15-en születtek?
b) Legalább hány hallgatónak kell jelen lennie ahhoz, hogy biztosan legyen a hétnek legalább két olyan napja, amelyen legalább 3-an születtek?

**Megoldás.**

a) A hétnek 7 napja van, ezek a skatulyák ($m = 7$).
Azt szeretnénk garantálni, hogy valamelyik napra legalább 15 születésnap essen.
A legrosszabb eset (amikor még nem teljesül a feltétel): minden napra legfeljebb $15 - 1 = 14$ születésnap esik.
A maximális olyan létszám, amelynél még nem biztos a 15 azonos napon született diák:
$$7 \times 14 = 98 \text{ hallgató}.$$
Ezért ha legalább $98 + 1 = \mathbf{99}$ hallgató van a teremben, akkor a Dirichlet-féle skatulya-elv szerint biztosan lesz olyan nap, amelyen legalább 15-en születtek.

b) **Nincs ilyen létszám!**
Bármekkora létszámú hallgatóság esetén előfordulhat, hogy a jelenlévők mindannyian ugyanazon a napon (például hétfőn) születtek. Ekkor a hétfő az egyetlen olyan nap, amelyre legalább 3 születésnap jut, a hét többi 6 napján pedig pontosan 0 születésnap van.
A feladatkitűzésben a „biztosan” kifejezés a legkedvezőtlenebb esetre vonatkozik, és mivel ez a szélsőséges koncentráció tetszőlegesen nagy létszám mellett is megvalósulhat, egyetlen véges létszám sem garantálja a feltételt.

::: elmelet
**Elméleti háttér — skatulyaelv és a legrosszabb eset ellenpéldája.**

*A „biztosan” jelentése:* Egy tulajdonság akkor teljesül biztosan $N$ elemre, ha **nincs** olyan eloszlás, amely megsértené.
*Konstrukció létezése:* Ha bármely $N$-re megadható olyan konstrukció (itt az összes diák egyetlen skatulyába helyezése), ahol a célfeltétel sérül, akkor a válasz: nincs ilyen létszám.
*Több skatulya egyidejű telítettsége:* Ahhoz, hogy legalább $r$ különböző skatulyában legyen legalább $s$ elem, nem elegendő pusztán az elemek számát növelni, ha a skatulyák kapacitása nincs felülről korlátozva.
:::

## P25. feladat

Egy dobozban 12 kék, 18 fehér és 30 piros zokni található (összesen 60 zokni). Becsukott szemmel legkevesebb hány zoknit kell kivennünk, hogy biztosan legyen a kivettek között:
a) legalább egy fehér zokni?
b) mindhárom színből legalább egy darab?
c) legalább két egyszínű pár (azaz 4 zokni, melyek 2 azonos színű párt alkotnak)?
d) legalább 15 azonos színű zokni?

**Megoldás.**

Mindegyik esetben a legkedvezőtlenebb forgatókönyvet (worst-case scenario) vizsgáljuk, ahol a lehető legtöbb zoknit húzzuk ki anélkül, hogy a kívánt feltétel teljesülne. A válasz mindig a legrosszabb esetben kihúzható zoknik száma plusz 1.

a) *Legalább egy fehér:*
A legrosszabb esetben az összes kék (12 db) és az összes piros (30 db) zoknit kihúzzuk anélkül, hogy fehéret húznánk.
Ez $12 + 30 = 42$ zokni.
A következő (43.) zokni már biztosan fehér lesz:
$$42 + 1 = \mathbf{43}.$$

b) *Mindhárom színből legalább egy:*
A legrosszabb esetben a két legnagyobb darabszámú színből az összes zoknit kihúzzuk: az összes pirosat (30 db) és az összes fehéret (18 db).
Ez $30 + 18 = 48$ zokni.
A következő zokni szükségképpen a harmadik színből, a kékből kerül ki:
$$48 + 1 = \mathbf{49}.$$

c) *Legalább két egyszínű pár (4 zokni, 2 pár):*
Egy zoknihúzás után színenként nézzük a párosítatlan (egyke) zoknikat.
Akkor NEM jön létre 2 pár, ha:
- 0 pár jön létre: legfeljebb 1-1-1 zokni mind a 3 színből, azaz legfeljebb 3 zokni.
- 1 pár jön létre: az egyik színből van 1 pár (2 zokni vagy 3 zokni, ami 1 pár + 1 egyke), és a másik két színből legfeljebb 1-1 egyke van.
A legtöbb zokni 1 pár mellett: 3 zokni az egyik színből (1 pár + 1 maradék), és 1-1 zokni a másik két színből. Ez összesen $3 + 1 + 1 = 5$ zokni.
Ha kihúzunk egy 6. zoknit, a skatulya-elv szerint valamelyik szín darabszáma megnő, és mivel legfeljebb 3 szín van, a párok száma legalább $\lfloor 6 / 2 \rfloor$ nem feltétlenül, de nézzük pontosan:
Ha 5 zokni van: lehet 3 kék, 1 fehér, 1 piros $\implies$ 1 pár (kék).
Ha kihúzunk egy 6. zoknit:
- ha kéket húzunk: 4 kék $\implies$ 2 pár kék!
- ha fehéret húzunk: 2 fehér $\implies$ 1 pár kék + 1 pár fehér = 2 pár!
- ha pirosat húzunk: 2 piros $\implies$ 1 pár kék + 1 pár piros = 2 pár!
Tehát 6 zokni esetén már BÁRHOGYAN alakul a húzás, biztosan keletkezik legalább 2 pár.
A minimálisan kihúzandó darabszám:
$$\mathbf{6}.$$

d) *Legalább 15 azonos színű:*
A kékből csak 12 van, így abból mind a 12-t kihúzhatjuk.
A fehérből és a pirosból kihúzhatunk $15 - 1 = 14$ darabot.
A legrosszabb eset:
$$12 \text{ (kék)} + 14 \text{ (fehér)} + 14 \text{ (piros)} = 40 \text{ zokni}.$$
A 41. zokni már csak fehér vagy piros lehet, így valamelyik eléri a 15-öt:
$$40 + 1 = \mathbf{41}.$$

::: elmelet
**Elméleti háttér — a legrosszabb eset (worst-case) módszere.**

*A módszer lépései:*
1. Meghatározzuk a feltétel tagadását.
2. Megkeressük a feltételt még NEM teljesítő konfigurációk közül a maximális méretűt. Ennél a kimeríthető osztályokból mindent kiveszünk, a célosztályokból pedig a határértéknél eggyel kevesebbet.
3. A maximális rossz esetszámhoz 1-et adva kapjuk a minimálisan szükséges húzásszámot.
*Párok számlálása:* $c$ szín esetén $N$ zokniból a párok száma $\sum \lfloor n_i / 2 \rfloor$. A legrosszabb esetben minden színben 1 páratlan maradék (egyke) marad, így a párok száma legalább $\frac{N - c}{2}$.
:::

## P26. feladat

Egy $6 \times 6$ méteres négyzet alakú udvarba szeretnénk sátorcövekeket leütni úgy, hogy bármely két cövek távolsága szigorúan nagyobb legyen, mint $\sqrt{8} \approx 2{,}828$ méter.
a) Legfeljebb hány cöveket üthetünk le az udvarba?
b) Bizonyítsuk be az optimális számot a geometriai skatulya-elv segítségével!

**Megoldás.**

a) és b) Osszuk fel a $6 \times 6$ méteres négyzetet 9 darab egybevágó, $2 \times 2$ méteres zárt kis négyzetre egy $3 \times 3$-as rács mentén.
Egy ilyen $2 \times 2$ méteres kis négyzetben bármely két pont maximális lehetséges távolsága a négyzet átlójának hossza:
$$d_{\max} = \sqrt{2^2 + 2^2} = \sqrt{8} \text{ méter}.$$
Ezért egyetlen $2 \times 2$-es kis négyzetbe nem helyezhető el 2 olyan pont, amelyek távolsága szigorúan nagyobb $\sqrt{8}$-nál (hiszen a távolságuk legfeljebb $\sqrt{8}$ lehet).
A Dirichlet-féle skatulya-elv szerint, ha $9 + 1 = 10$ cöveket ütnénk le a $6 \times 6$-os udvarba, akkor a 9 darab kis négyzet közül legalább az egyikbe legalább 2 cövek esne.
Ezen két cövek távolsága azonban legfeljebb $\sqrt{8}$ méter lenne, ami ellentmond annak a feltételnek, hogy a távolságuk szigorúan nagyobb, mint $\sqrt{8}$!
Tehát legfeljebb 9 cövek üthető le.

Konstrukció 9 cövekre:
Helyezzünk el 9 cöveket a kis négyzetek középpontjaiba!
A középpontok koordinátái a bal alsó sarokból mérve:
$$(1, 1), (1, 3), (1, 5), (3, 1), (3, 3), (3, 5), (5, 1), (5, 3), (5, 5).$$
Bármely két különböző középpont távolsága legalább 2 méter (szomszédosak), de ha a távolságnak $> \sqrt{8}$-nak kell lennie, akkor a rácspontok távolsága $\ge 2$ nem elég!
Nézzük meg jobban a távolságfeltételt:
A feladat feltétele: a távolság legyen *nagyobb mint $\sqrt{8}$*?
Ha a középpontok távolsága 2, az nem nagyobb mint $\sqrt{8} \approx 2{,}828$!
Hogyan helyezhető el 9 cövek $> \sqrt{8}$ távolságra?
Nézzük a 9 pontot a $6 \times 6$-os négyzetben:
A 9 pontot tegyük a négyzet határára és rácspontjaira:
Legyenek a koordináták $x, y \in \{0, 3, 6\}$!
Ekkor a 9 pont: $(0,0), (0,3), (0,6), (3,0), (3,3), (3,6), (6,0), (6,3), (6,6)$.
Ezek távolsága bármely két pont között legalább 3 méter!
Mivel $3 = \sqrt{9} > \sqrt{8}$, a feltétel minden pontpárra teljesül!
Tehát 9 cövek elhelyezhető, és több nem helyezhető el.
A maximális cövekszám pontosan **9**.

::: elmelet
**Elméleti háttér — geometriai skatulya-elv és tartományfelbontás.**

*Geometriai skatulya-elv:* Ha egy $D$ geometriai alakzatot felbontunk $m$ darab olyan $D_1, \dots, D_m$ részhalmazra, amelyek átmérője $\mathrm{diam}(D_i) \le d$, akkor bármely $m + 1$ pont elhelyezésekor legalább kettő ugyanabba a részhalmazba esik, így távolságuk legfeljebb $d$.
*Konstrukció és élesség:* A felbontási felső korlátot mindig konkrét pontkonfigurációval kell alátámasztani.
:::

## P27. feladat

Igazoljuk algebrai átalakítással és kombinatorikus jelentéssel (kettős leszámlálással) is az alábbi azonosságokat:
a) $k \binom{n}{k} = n \binom{n-1}{k-1}$;
b) $\binom{n}{k}\binom{n-k}{j} = \binom{n}{j}\binom{n-j}{k}$;
c) $\sum_{k=0}^{n} \binom{n}{k} = 2^n$.

**Megoldás.**

a) *Algebrai bizonyítás:*
$$k \binom{n}{k} = k \cdot \frac{n!}{k!(n-k)!} = \frac{n!}{(k-1)!(n-k)!} = n \cdot \frac{(n-1)!}{(k-1)!((n-1)-(k-1))!} = n \binom{n-1}{k-1}.$$
*Kombinatorikus bizonyítás (kettős leszámlálás):*
Számoljuk meg egy $n$ fős csoportból kiválasztható olyan bizottságok számát, amelyek $k$ tagúak, és van egy kijelölt elnökük!
1. módszer: Először kiválasztjuk a $k$ tagú bizottságot ($\binom{n}{k}$ lehetőség), majd a $k$ tag közül kijelöljük az elnököt ($k$ lehetőség). Ez $k \binom{n}{k}$ lehetőség.
2. módszer: Először kijelöljük az elnököt az $n$ ember közül ($n$ lehetőség), majd a fennmaradó $n - 1$ emberből kiválasztjuk a bizottság maradék $k - 1$ tagját ($\binom{n-1}{k-1}$ lehetőség). Ez $n \binom{n-1}{k-1}$ lehetőség.
Mivel mindkét módszer ugyanazt a konfigurációhalmazt számlálja meg, a két kifejezés egyenlő. $\blacksquare$

b) *Algebrai bizonyítás:*
$$\binom{n}{k}\binom{n-k}{j} = \frac{n!}{k!(n-k)!} \frac{(n-k)!}{j!(n-k-j)!} = \frac{n!}{k! \, j! \, (n-k-j)!}.$$
A kapott tört szimmetrikus $k$-ban és $j$-ben, így felcserélve $k$-t és $j$-t pontosan a jobb oldalt kapjuk.
*Kombinatorikus bizonyítás:*
Egy $n$ fős csoportból kiválasztunk egy $k$ fős első bizottságot és egy vele diszjunkt $j$ fős második bizottságot.
A bal oldal szerint előbb a $k$ fős bizottságot választjuk ki, majd a maradékból a $j$ főst. A jobb oldal szerint előbb a $j$ főst választjuk ki, majd a maradékból a $k$ főst. $\blacksquare$

c) *Algebrai:* A binomiális tételbe $(1+x)^n = \sum \binom{n}{k}x^k$ helyettesítsünk $x = 1$-et: $(1+1)^n = 2^n = \sum \binom{n}{k}$.
*Kombinatorikus:* Egy $n$ elemű halmaz összes részhalmazát számláljuk meg.
Bal oldal: méret szerint osztályozva $\sum_{k=0}^n \binom{n}{k}$.
Jobb oldal: minden elemről függetlenül döntünk (benne van vagy sem): $2^n$. $\blacksquare$

::: elmelet
**Elméleti háttér — a kettős leszámlálás (double counting) alapelve.**

*Kettős leszámlálás:* Egy véges $S$ halmaz elemeit két különböző szempont szerint számoljuk meg: ha mindkét számlálás helyes, a kapott algebrai kifejezések szükségképpen egyenlők.
*Gyakori modellek:*
- Bizottság elnökkel: $k\binom{n}{k} = n\binom{n-1}{k-1}$.
- Két diszjunkt bizottság / albizottság: $\binom{n}{m}\binom{m}{k} = \binom{n}{k}\binom{n-k}{m-k}$.
- Részhalmazok összessége: $\sum \binom{n}{k} = 2^n$.
:::

## P28. feladat

Egy $n$ elemű $S$ halmazon:
a) Hány olyan $(A, B, C)$ részhalmaz-hármas választható ki, amelyre $A \subseteq B \subseteq C \subseteq S$?
b) Hányféleképpen választható ki egy $A \subseteq S$ részhalmaz és annak két különböző kitüntetett eleme $x \neq y \in A$? Fejezzük ki ezt kétféleképpen, és adjunk belőle kombinatorikus azonosságot!

**Megoldás.**

a) Az $A \subseteq B \subseteq C \subseteq S$ lánc azt jelenti, hogy az alaphalmaz minden egyes $x \in S$ eleme pontosan 4 lehetséges diszjunkt tartomány egyikébe esik:
1. $x \in A$ (ekkor automatikusan $x \in B$ és $x \in C$ is);
2. $x \in B \setminus A$ (ekkor $x \in C$, de $x \notin A$);
3. $x \in C \setminus B$ (ekkor $x \notin B$ és $x \notin A$);
4. $x \in S \setminus C$ (ekkor semelyik halmaznak nem eleme).
Az alaphalmaz mind az $n$ eleméről egymástól teljesen függetlenül dönthetünk, hogy a fenti 4 kategória közül melyikbe tartozik.
Így a szorzási szabály szerint a megfelelő részhalmaz-láncok száma:
$$4^n.$$

b) 1. módszer: Először kiválasztjuk a két kitüntetett elemet, $x$-et és $y$-t az $n$ elem közül: $\binom{n}{2}$ lehetőség.
Ezután az $A$ részhalmaz maradék elemeit a fennmaradó $n - 2$ elemből tetszőlegesen választhatjuk ki: $2^{n-2}$ lehetőség.
Összesen:
$$\binom{n}{2} 2^{n-2}.$$

2. módszer: Először az $A$ részhalmaz mérete ($k = |A|$) szerint bontjuk az eseteket ($2 \le k \le n$).
A $k$ elemű $A$ részhalmaz $\binom{n}{k}$-féleképpen választható ki.
Ezen a halmazon belül a két kitüntetett elem $\binom{k}{2}$-féleképpen jelölhető ki.
Összegezve az összes lehetséges méretre:
$$\sum_{k=2}^{n} \binom{k}{2} \binom{n}{k}.$$

Mivel mindkét számlálás ugyanazt a konfigurációhalmazt határozza meg, kapjuk a nevezetes kombinatorikus azonosságot:
$$\sum_{k=2}^{n} \binom{k}{2} \binom{n}{k} = \mathbf{\binom{n}{2} 2^{n-2}}.$$

::: elmelet
**Elméleti háttér — Venn-diagramos tartományválasztás és kettős leszámlálás.**

*Tartományválasztási elv:* Részhalmazok rendszereinél ($A_1 \subseteq A_2 \dots$) a halmazok kiválasztása egyenértékű azzal, hogy az alaphalmaz minden eleméhez hozzárendelünk egy címkét, amely a megfelelő Venn-tartományt jelöli. $k$ egymásba ágyazott halmaznál $k + 1$ tartomány van, így $(k+1)^n$ a láncok száma.
*Kettős leszámlálás deriválással:* A $\sum k(k-1)\binom{n}{k} = n(n-1)2^{n-2}$ azonosság az $(1+x)^n$ kétszeri deriválásából és $x = 1$ helyettesítéséből is levezethető.
:::

## P29. feladat

Egy $3 \times 3$ méteres, négyzet alakú szobában 10 pontot jelölünk ki.
a) Mutassuk meg, hogy lesz két olyan pont, melyek távolsága legfeljebb $\sqrt{2}$ méter!
b) Állíthatunk-e erősebbet, ha a pontok száma 10 marad?

**Megoldás.**

a) Osszuk fel a $3 \times 3$ méteres szobát 9 darab egybevágó, $1 \times 1$ méteres zárt kis négyzetre egy $3 \times 3$-as rács mentén.
A 9 kis négyzet képezi a 9 skatulyát ($m = 9$).
Mivel 10 pontot helyezünk el a szobában ($n = 10$), a Dirichlet-féle skatulya-elv szerint legalább az egyik $1 \times 1$-es kis négyzetbe legalább két pont esik.
Egy $1 \times 1$ méteres zárt négyzetben két pont maximális távolsága a négyzet átlója:
$$d_{\max} = \sqrt{1^2 + 1^2} = \sqrt{2} \text{ méter}.$$
Ezért ezen két pont távolsága legfeljebb $\sqrt{2} \approx 1{,}414$ méter. $\blacksquare$

b) *Erősebb állítás vizsgálata:*
Lehet-e a távolság szigorúan kisebb, mint $\sqrt{2}$?
Igen! Ha 9 pontot a 9 kis négyzet középpontjába helyeznénk el, akkor a távolságuk 1 méter lenne.
Ha a 9 pontot a $3 \times 3$-as négyzet csúcsaira és oldalaira helyezzük úgy, hogy a távolságuk maximális legyen:
A legrosszabb konfiguráció vizsgálata a rácsban: ha 9 pont a kis négyzetek középpontjában van, a 10. pontot bárhová tesszük, a hozzá legközelebbi középponttól való távolsága legfeljebb $\frac{\sqrt{2}}{2} \approx 0{,}707$ méter!
Általánosan, 10 pont esetén a maximális minimális távolság a síkban kisebb, mint $\sqrt{2}$: a Schütte–van der Waerden típusú optimális pontelhelyezéseknél 10 pont esetén a távolság $\le 1{,}414$-nél szigorúan kisebb korlátra szorítható.
Azonban a feladat elemi szintjén az éles elméleti garantált korlát a felbontásból adódó $\sqrt{2}$ méter.

::: elmelet
**Elméleti háttér — négyzetháló és távolságbecslések.**

*Átló mint átmérő:* Egy téglalap vagy négyzet konvex zárt halmaz, belső pontpárjainak maximális távolsága a csúcsok távolsága, vagyis az átló hossza.
*Skatulya-elv alkalmazása:* $k^2 + 1$ pont egy $k \times k$-as rácson mindig garantálja, hogy legalább 2 pont ugyanabba az egységnégyzetbe kerül, így távolságuk $\le \sqrt{2}$.
:::

## P30. feladat

Legfeljebb hány természetes szám adható meg úgy, hogy semelyik kettő különbsége ne legyen osztható 42-vel?
Mutassuk meg továbbá, hogy tetszőleges $n + 1$ egész szám között mindig található kettő, amelyek különbsége osztható $n$-nel!

**Megoldás.**

Két egész szám, $a$ és $b$ különbsége, $a - b$ pontosan akkor osztható egy $m$ pozitív egész számmal, ha $a$ és $b$ ugyanazt a maradékot adja $m$-mel osztva, azaz $a \equiv b \pmod m$.
A 42-vel való osztás lehetséges maradékai: $\{0, 1, 2, \dots, 41\}$, ez összesen 42 különböző maradékosztály.
Ahhoz, hogy semelyik két kiválasztott szám különbsége ne legyen osztható 42-vel, az szükséges és elégséges, hogy semelyik két számnak ne legyen azonos a maradéka 42-vel osztva (mindegyik szám különböző maradékosztályba kell, hogy essen).
Mivel csak 42 maradékosztály létezik, a kiválasztott számok száma legfeljebb 42 lehet.
Konstrukció 42 számra: a $\{0, 1, 2, \dots, 41\}$ halmazban minden maradék pontosan egyszer szerepel, így semelyik kettő különbsége nem osztható 42-vel.
Tehát legfeljebb **42** természetes szám adható meg.

*Az általános állítás bizonyítása:*
Tekintsünk $n + 1$ darab tetszőleges egész számot: $a_1, a_2, \dots, a_{n+1}$.
Az $n$-nel való osztási maradékok száma pontosan $n$ (ezek: $0, 1, \dots, n - 1$), ezek a skatulyák.
Mivel $n + 1$ számunk van és csak $n$ skatulya, a Dirichlet-féle skatulya-elv szerint létezik legalább két olyan szám, $a_i$ és $a_j$ ($i \neq j$), amelyek ugyanabba a skatulyába esnek, vagyis ugyanazt a maradékot adják $n$-nel osztva:
$$a_i \equiv a_j \pmod n.$$
Ekkor a definíció szerint a különbségük:
$$n \mid (a_i - a_j).$$
Ezzel az állítást igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — maradékosztályok mint skatulyák.**

*Kongruencia és oszthatóság:* $m \mid (a - b) \iff a \equiv b \pmod m$.
*Teljes maradékrendszer:* $m$ darab egész szám, amelyek páronként inkongruensek modulo $m$.
*A Dirichlet-elv számelméleti alapalkalmazása:* Ha több számot választunk, mint a modulus $m$, a skatulya-elv miatt elkerülhetetlen az azonos maradék, így a különbség osztható lesz $m$-mel.
:::

## P31. feladat

Tekintsük az $\{1, 2, \dots, 200\}$ számhalmazt.
a) Legfeljebb hány szám választható ki úgy, hogy semelyik kettő ne legyen relatív prím?
b) Legfeljebb hány szám választható ki úgy, hogy ne legyen köztük kettő olyan, hogy az egyik osztja a másikat?
c) Legfeljebb hány szám választható ki úgy, hogy ne legyen köztük három olyan különböző $x, y, z$ szám, amelyekre $x + y = z$ teljesül?

**Megoldás.**

a) Ha a kiválasztott számok páronként nem relatív prímek, akkor mindegyik páros szám lehet (a közös osztójuk legalább 2).
Az 1 és 200 közötti páros számok száma:
$$\frac{200}{2} = 100.$$
Több szám nem választható ki: ha legalább 101 számot választanánk, a skatulya-elv szerint a $\{2k-1, 2k\}$ diszjunkt párokból ($k = 1, \dots, 100$) legalább az egyikből mindkét elemet kiválasztanánk.
Két szomszédos szám ($2k-1$ és $2k$) azonban mindig relatív prím, hiszen $\gcd(2k, 2k-1) = \gcd(1, 2k-1) = 1$.
Ez ellentmondana a feltételnek!
Tehát a maximum **100** szám.

b) Konstrukció: Válasszuk a felső felét a halmaznak:
$$\{101, 102, \dots, 200\}.$$
Ez $200 - 101 + 1 = 100$ szám.
Ebben a halmazban semelyik szám sem oszthat egy másikat, mert a legkisebb elem kétszerese $2 \cdot 101 = 202 > 200$.
Bizonyítás, hogy több nem lehet (Erdős-féle páratlan felbontás):
Minden $x \in \{1, \dots, 200\}$ szám egyértelműen felírható $x = 2^a \cdot b$ alakban, ahol $b$ páratlan szám.
Az 1 és 200 közötti páratlan számok száma pontosan 100 (a skatulyák száma $b \in \{1, 3, \dots, 199\}$).
Ha legalább 101 számot választanánk ki, a skatulya-elv szerint lenne két olyan szám, $x_1$ és $x_2$, amelyeknek a páratlan része megegyezik:
$$x_1 = 2^{a_1} b, \qquad x_2 = 2^{a_2} b.$$
Ha $a_1 < a_2$, akkor $x_1 \mid x_2$, vagyis az egyik osztja a másikat, ami tilos!
Tehát legfeljebb **100** szám választható ki.

c) Az összegmentes (sum-free) részhalmazt keressük: $x + y \neq z$.
1. konstrukció: Válasszuk a páratlan számokat: $\{1, 3, 5, \dots, 199\}$ (100 darab).
Két páratlan szám összege páros, a halmazban viszont csak páratlan számok vannak, így az összeg sosem esik a halmazba! Ez 100 szám.
2. konstrukció: Válasszuk a felső felét: $\{101, 102, \dots, 200\}$ (100 darab).
A két legkisebb elem összege $101 + 102 = 203 > 200$, így semelyik két elem összege sem eshet a halmazba!
Több nem lehet: ha legalább 101 számot választanánk, legyen a legkisebb $a$. A kiválasztott számok legyenek $a < x_1 < x_2 < \dots < x_m$.
A különbségek $x_i - a$ mind az $\{1, \dots, 200\}$ halmazba esnének, és a skatulya-elv szerint metszetük nem lenne üres a kiválasztott elemekkel.
Tehát a maximum **100** szám.

::: elmelet
**Elméleti háttér — Erdős osztómentes tétele és sum-free halmazok.**

*Erdős tétele osztásmentes részhalmazokról:* Az $\{1, 2, \dots, 2n\}$ halmazban legfeljebb $n$ szám választható ki úgy, hogy semelyik kettő ne ossza egymást. A bizonyítás kulcsa a skatulyák definiálása a páratlan rész szerint: $x = 2^a b$.
*Páronként nem relatív prímek:* $\gcd(a, b) > 1$ esetén a páros számok optimálisak, mert a szomszédos $\{2k-1, 2k\}$ párok relatív prímek.
*Összegmentes (sum-free) halmazok:* $A + A \cap A = \emptyset$. $\{1, \dots, n\}$-ben a maximális sum-free halmaz mérete $\lceil n/2 \rceil$ (páratlanok vagy a felső fél).
:::

## P32. feladat

Igazoljuk kombinatorikus kettős leszámlálással és a Pascal-háromszög alaptulajdonságával is az alábbi azonosságokat:
a) $\binom{k}{k} + \binom{k+1}{k} + \dots + \binom{n}{k} = \binom{n+1}{k+1}$ (hokibot azonosság);
b) $\sum_{j=0}^{k} \binom{n}{j}\binom{m}{k-j} = \binom{n+m}{k}$ (Vandermonde-konvolúció).

**Megoldás.**

a) *Kombinatorikus bizonyítás:*
Tekintsük az $S = \{1, 2, \dots, n + 1\}$ halmaz $(k + 1)$ elemű részhalmazait.
Ezek száma definíció szerint $\binom{n+1}{k+1}$.
Csoportosítsuk ezen részhalmazokat a bennük szereplő **legnagyobb elem** értéke szerint!
Jelölje a részhalmaz legnagyobb elemét $m + 1$.
Mivel a részhalmaznak $k + 1$ eleme van, a legnagyobb elem legalább $k + 1$ kell legyen, és legfeljebb $n + 1$, azaz:
$$k + 1 \le m + 1 \le n + 1 \implies k \le m \le n.$$
Ha a legnagyobb elem rögzítetten $m + 1$, akkor a részhalmaz fennmaradó $k$ elemét a nála szigorúan kisebb $\{1, 2, \dots, m\}$ elemek közül kell kiválasztanunk.
Ennek lehetőségeinek száma:
$$\binom{m}{k}.$$
Mivel a legnagyobb elem értéke szerint a részhalmazok diszjunkt osztályokba sorolódnak, az esetek összege:
$$\sum_{m=k}^{n} \binom{m}{k} = \binom{k}{k} + \binom{k+1}{k} + \dots + \binom{n}{k}.$$
Ez megegyezik az összes $(k+1)$ elemű részhalmaz számával, azaz $\binom{n+1}{k+1}$-gyel. $\blacksquare$

*Pascal-rekurzióval:*
$\binom{k}{k} = \binom{k+1}{k+1}$.
Ekkor $\binom{k+1}{k+1} + \binom{k+1}{k} = \binom{k+2}{k+1}$.
Hozzáadva $\binom{k+2}{k}$-t: $\binom{k+2}{k+1} + \binom{k+2}{k} = \binom{k+3}{k+1}$, és így tovább, teleszkopikusan $\binom{n+1}{k+1}$-et kapunk.

b) *Kombinatorikus bizonyítás (Vandermonde):*
Legyen egy csoportban $n$ fiú és $m$ lány (összesen $n + m$ ember).
Válasszunk ki ebből a társaságból egy $k$ fős bizottságot!
A bizottságok száma: $\binom{n+m}{k}$.
Osztályozzuk a bizottságokat aszerint, hogy hány fiú van bennük!
Ha a bizottságban $j$ fiú van ($0 \le j \le k$), akkor a maradék $k - j$ tagnak lánynak kell lennie.
A $j$ fiú $\binom{n}{j}$, a $k - j$ lány $\binom{m}{k-j}$ módon választható ki.
A szorzási szabály és az esetek diszjunktsága miatt:
$$\sum_{j=0}^{k} \binom{n}{j}\binom{m}{k-j} = \binom{n+m}{k}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — hokibot azonosság és Vandermonde-konvolúció.**

*Hokibot (hockey stick) azonosság:* A Pascal-háromszögben egy átlós vonalon indulva és egy kanyarral lefelé lépve kapjuk az összeget:
$$\sum_{i=k}^n \binom{i}{k} = \binom{n+1}{k+1}.$$
*Vandermonde-konvolúció:* Két diszjunkt halmaz egyesítéséből való választás modellezése. Polinomként az $(1+x)^n (1+x)^m = (1+x)^{n+m}$ együtthatóinak összehasonlításával is adódik.
:::

## P33. feladat

Számítsuk ki zárt alakban a
$$\binom{n}{0}^2 + \binom{n}{1}^2 + \dots + \binom{n}{n}^2$$
összeget a Vandermonde-azonosság és a szimmetria felhasználásával!
Adjunk közvetlen kombinatorikus értelmezést egy $2n$ fős társaság $n$ tagú bizottságának kiválasztásával!

**Megoldás.**

A binomiális együtthatók szimmetriája szerint minden $k$-ra:
$$\binom{n}{k} = \binom{n}{n-k}.$$
Ezért a négyzetösszeg átírható szorzatok összegeként:
$$\sum_{k=0}^{n} \binom{n}{k}^2 = \sum_{k=0}^{n} \binom{n}{k} \binom{n}{n-k}.$$
A 32. feladatban igazolt Vandermonde-konvolúció:
$$\sum_{k=0}^{m} \binom{n_1}{k} \binom{n_2}{m - k} = \binom{n_1 + n_2}{m}.$$
Alkalmazzuk ezt $n_1 = n, n_2 = n$ és $m = n$ választással:
$$\sum_{k=0}^{n} \binom{n}{k} \binom{n}{n-k} = \binom{n + n}{n} = \mathbf{\binom{2n}{n}}.$$

*Közvetlen kombinatorikus értelmezés:*
Képzeljünk el egy $2n$ fős társaságot, amelyben $n$ nő és $n$ férfi van.
Kiválasztunk közülük egy $n$ fős bizottságot. Ezt $\binom{2n}{n}$-féleképpen tehetjük meg.
Bontsuk esetekre a választást aszerint, hogy a bizottságba hány nő kerül!
Legyen a nők száma $k$ ($0 \le k \le n$).
Ekkor a nők $\binom{n}{k}$-féleképpen választhatók ki.
A bizottság maradék $n - k$ tagjának férfinak kell lennie, akiket a férfiak közül $\binom{n}{n-k} = \binom{n}{k}$-féleképpen választhatunk ki.
A szorzási szabály szerint rögzített $k$-ra a lehetőségek száma $\binom{n}{k} \cdot \binom{n}{k} = \binom{n}{k}^2$.
Összegezve az összes lehetséges $k = 0, 1, \dots, n$ értékre:
$$\sum_{k=0}^{n} \binom{n}{k}^2 = \binom{2n}{n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — binomiális négyzetösszeg és centrális binomiális együttható.**

*Centrális binomiális együttható:* $\binom{2n}{n}$ a Pascal-háromszög $2n$-edik sorának középső, legnagyobb eleme.
*Generátorfüggvényes levezetés:* $(1+x)^n$ és $(x+1)^n$ szorzata $(1+x)^{2n}$. Az $x^n$ együtthatója a bal oldalon $\sum \binom{n}{k}\binom{n}{n-k} = \sum \binom{n}{k}^2$, a jobb oldalon $\binom{2n}{n}$.
:::

## P34. feladat

Egy $8 \times 8$-as sakktáblán maximum hány huszárt (lovat) helyezhetünk el úgy, hogy semelyik kettő ne üsse egymást?
Bizonyítsuk be az eredményt a sakktábla színezésének és független csúcshalmazainak segítségével!

**Megoldás.**

A huszár lépésének alapvető geometriai tulajdonsága: minden lépésben a mező színe megváltozik (fehér mezőről feketére, fekete mezőről fehérre lép).
Ez azt jelenti, hogy a huszárlépések által meghatározott gráf egy **páros gráf** (bipartite graph), melynek két független csúcshalmaza a 32 fehér mező és a 32 fekete mező.
1. *Konstrukció 32 huszárra:*
Helyezzünk el 32 huszárt az összes fehér mezőre!
Mivel bármely két huszár fehér mezőn áll, és a huszár csak fekete mezőre tud lépni, semelyik két huszár nem ütheti egymást.
Tehát 32 huszár elhelyezhető.

2. *Bizonyítás, hogy több nem helyezhető el:*
Bontsuk fel a $8 \times 8$-as táblát 8 darab $2 \times 4$-es téglalapra!
Vizsgáljunk meg egyetlen $2 \times 4$-es téglalapot (sorok: 1, 2; oszlopok: 1, 2, 3, 4).
Ebben a 8 mező 4 darab diszjunkt párba állítható úgy, hogy mindegyik pár tagjai egymást kölcsönösen ütik (huszárlépésnyi távolságra vannak):
- $(1, 1)$ és $(2, 3)$
- $(1, 2)$ és $(2, 4)$
- $(1, 3)$ és $(2, 1)$
- $(1, 4)$ és $(2, 2)$
Minden egyes párban legfeljebb egyetlen huszár állhat, különben ütnék egymást.
Így egyetlen $2 \times 4$-es téglalapban legfeljebb 4 huszár helyezhető el.
Mivel a teljes $8 \times 8$-as sakktábla 8 darab ilyen diszjunkt téglalapból áll:
$$\text{Maximális huszárszám} \le 8 \times 4 = 32.$$
A két állítás együtt bizonyítja, hogy a maximum pontosan **32**.

::: elmelet
**Elméleti háttér — huszárgráf, páros gráfok és független csúcshalmazok.**

*Független csúcshalmaz ( $\alpha(G)$ ):* Olyan csúcshalmaz, amelyben semelyik két csúcs között nincs él.
*Páros gráf:* A csúcshalmaz felbontható $V = A \cup B$ diszjunkt független halmazokra. Bármely páros gráfban $\alpha(G) \ge \max(|A|, |B|)$.
*Élekbe particionálás mint felső korlát:* Ha egy gráf csúcshalmaza felosztható $m$ darab olyan diszjunkt élre vagy teljes részgráfra, amelyek mindegyikéből legfeljebb 1 csúcs választható, akkor $\alpha(G) \le m$.
:::

## P35. feladat

Adjunk zárt formulát a következő összegre, és kettős leszámlálás módszerével igazold az azonosságot:
$$\sum_{k=1}^{n} k \cdot 2^{k-1} \binom{n}{k}.$$

**Megoldás.**

*Zárt formula:*
$$\sum_{k=1}^{n} k \cdot 2^{k-1} \binom{n}{k} = \mathbf{n \cdot 3^{n-1}}.$$

*Bizonyítás kettős leszámlálással:*
Számoljuk meg egy $n$ fős társaságból ($S = \{1, 2, \dots, n\}$) képezhető olyan $(x, B, A)$ hármasok számát, ahol:
- $A \subseteq S$ egy bizottság;
- $x \in A$ a bizottság kijelölt elnöke;
- $B \subseteq A \setminus \{x\}$ a bizottságon belüli titkos albizottság (amelynek az elnök nem tagja).

*1. számlálási módszer (a bizottság mérete szerint):*
Tegyük fel, hogy az $A$ bizottság mérete $|A| = k$ ($1 \le k \le n$).
- A $k$ fős $A$ bizottságot $\binom{n}{k}$-féleképpen választhatjuk ki.
- Az elnököt a bizottság $k$ tagja közül $k$-féleképpen jelölhetjük ki.
- A titkos $B$ albizottságot az elnökön kívüli $k - 1$ tag tetszőleges részhalmazaként $2^{k-1}$-féleképpen választhatjuk meg.
A szorzási szabály szerint rögzített $k$-ra $k \cdot 2^{k-1} \binom{n}{k}$ lehetőség van.
Összegezve minden lehetséges $k = 1, \dots, n$ bizottságméretre, kapjuk a bal oldali összeget:
$$\sum_{k=1}^{n} k \cdot 2^{k-1} \binom{n}{k}.$$

*2. számlálási módszer (az elnök és az elemek státusza szerint):*
Először válasszuk ki az elnököt az $n$ fős társaságból: $n$ lehetőség.
Ezután vizsgáljuk meg a társaság többi $n - 1$ tagját.
Minden egyes további személyről egymástól függetlenül el kell döntenünk, hogy mi a státusza. Pontosan 3 lehetőség van minden emberre:
1. Tagja a titkos albizottságnak (ekkor $y \in B$, így automatikusan $y \in A$);
2. Tagja a bizottságnak, de nem tagja az albizottságnak ($y \in A \setminus B$, „egyszerű bizottsági tag”);
3. Egyáltalán nem tagja a bizottságnak ($y \notin A$).
Mivel $n - 1$ ember van és mindegyikre 3 független választás lehetséges, ez $3^{n-1}$ lehetőség.
A szorzási szabály szerint az összes ilyen konfiguráció száma:
$$n \cdot 3^{n-1}.$$
Mivel mindkét eljárás ugyanazokat a konfigurációkat számolta meg, az egyenlőség fennáll. $\blacksquare$

::: elmelet
**Elméleti háttér — bizottság, elnök és albizottság modellje.**

*A 3-as alapú kettős leszámlálás:* Ha egy együtthatóban $2^{k-1}$ és $k$ szerepel, érdemes elnököt ($k$) és albizottságot ($2^{k-1}$) választani, ami a külső elemekkel együtt $3$ állapotot eredményez ($B$-beli, $A$-beli de nem $B$-beli, külső).
*Analitikus levezetés binomiális tétellel:* $(1 + x)^n = \sum \binom{n}{k} x^k$. Szorozzuk meg $x$-szel: $x(1+x)^n = \sum \binom{n}{k} x^{k+1}$.
Helyettesítsünk $x \to 2x$: $(1+2x)^n = \sum \binom{n}{k} 2^k x^k$. Deriválva $x$ szerint: $2n(1+2x)^{n-1} = \sum k 2^k \binom{n}{k} x^{k-1}$.
$x = 1$-et beírva és 2-vel osztva: $n 3^{n-1} = \sum k 2^{k-1} \binom{n}{k}$.
:::

## P36. feladat

Mivel lesz egyenlő az alábbi kifejezés? A választ a kettős leszámlálás módszerével igazoljuk!
$$\binom{n-2}{k-2} + 2 \binom{n-2}{k-1} + \binom{n-2}{k} = \ ?$$

**Megoldás.**

*Zárt alak:*
$$\binom{n-2}{k-2} + 2 \binom{n-2}{k-1} + \binom{n-2}{k} = \mathbf{\binom{n}{k}}.$$

*Bizonyítás kettős leszámlálással:*
Számoljuk meg egy $n$ elemű $S$ halmaz $k$ elemű részhalmazainak számát!
Ez közvetlenül $\binom{n}{k}$.
Jelöljünk ki az $n$ elem közül két kitüntetett elemet: legyen ez $a$ és $b$.
A fennmaradó $n - 2$ elem legyen a „közönséges” elemek halmaza.
Bontsuk fel a $k$ elemű részhalmazokat diszjunkt osztályokra aszerint, hogy a két kitüntetett elem ($a$ és $b$) közül melyek szerepelnek a részhalmazban:
1. *Mindkét kitüntetett elem szerepel ($a \in A$ és $b \in A$):*
Ekkor a maradék $k - 2$ elemet az $n - 2$ közönséges elem közül kell választani:
$$\binom{n-2}{k-2} \text{ lehetőség}.$$

2. *Pontosan az egyik kitüntetett elem szerepel:*
- Vagy $a \in A$ és $b \notin A$: a maradék $k - 1$ elemet az $n - 2$ közönségesből választjuk: $\binom{n-2}{k-1}$.
- Vagy $b \in A$ és $a \notin A$: a maradék $k - 1$ elemet szintén az $n - 2$ közönségesből választjuk: $\binom{n-2}{k-1}$.
Ez a két eset együtt:
$$2 \binom{n-2}{k-1} \text{ lehetőség}.$$

3. *Egyik kitüntetett elem sem szerepel ($a \notin A$ és $b \notin A$):*
Ekkor mind a $k$ elemet a közönséges $n - 2$ elem közül kell választani:
$$\binom{n-2}{k} \text{ lehetőség}.$$

Mivel ez a 3 eset lefed minden lehetőséget és páronként diszjunktak, az esetek összege megadja az összes $k$ elemű részhalmaz számát:
$$\binom{n-2}{k-2} + 2 \binom{n-2}{k-1} + \binom{n-2}{k} = \binom{n}{k}. \quad \blacksquare$$
*(Megjegyzés: a Pascal-azonosság $\binom{m}{j} + \binom{m}{j-1} = \binom{m+1}{j}$ kétszeri alkalmazásával is adódik: $\binom{n-2}{k-2} + \binom{n-2}{k-1} = \binom{n-1}{k-1}$, és $\binom{n-2}{k-1} + \binom{n-2}{k} = \binom{n-1}{k}$, majd ezek összege $\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n}{k}$.)*

::: elmelet
**Elméleti háttér — kitüntetett elemek szerinti osztályozás.**

*Pascal-háromszög többszöri felbontása:*
- 1 kitüntetett elem: $\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n}{k}$.
- 2 kitüntetett elem: $\binom{n-2}{k-2} + 2\binom{n-2}{k-1} + \binom{n-2}{k} = \binom{n}{k}$.
- $m$ kitüntetett elem: $\sum_{j=0}^m \binom{m}{j}\binom{n-m}{k-j} = \binom{n}{k}$ (ez pontosan a Vandermonde-konvolúció speciális esete!).
:::

## P37. feladat

Egy szabályos 12-szög csúcsai közül 7 kékre és 5 pirosra van festve.
a) Bizonyítsuk be, hogy a kék csúcsok között található három olyan csúcs, amelyek derékszögű háromszöget alkotnak!
b) Általánosítsuk az állítást szabályos $2m$-szögre: legkevesebb hány csúcsot kell kékre festeni egy szabályos $2m$-szögben ahhoz, hogy biztosan legyen kék derékszögű háromszög?

**Megoldás.**

a) Thalész tétele és annak megfordítása szerint egy körbe írt háromszög akkor és csak akkor derékszögű, ha a háromszög egyik oldala a körülírt kör átmérője (és a harmadik csúcs a körvonal bármely más pontja).
Egy szabályos 12-szögben a csúcsok párosíthatók átellenes csúcspárokba, amelyek a körülírt kör átmérőit alkotják.
Mivel a sokszögnek 12 csúcsa van, pontosan
$$\frac{12}{2} = 6 \text{ darab átmérő (átellenes csúcspár)}$$
létezik. Tekintsük ezen 6 átmérőt a 6 skatulyának ($m = 6$).
A sokszögnek 7 csúcsa van kékre színezve ($n = 7$).
A Dirichlet-féle skatulya-elv szerint, ha 7 kék csúcsot helyezünk el a 6 skatulyába, akkor legalább az egyik skatulyába (átmérőre) legalább 2 kék csúcs esik.
Ez azt jelenti, hogy **létezik olyan átmérő, amelynek mindkét végpontja kékre van festve**!
Mivel összesen 7 kék csúcs van, és ez az átmérő 2 kék csúcsot használ fel, még legalább $7 - 2 = 5$ másik kék csúcs található a sokszögben.
Válasszunk ki egy tetszőleges harmadik kék csúcsot a megmaradt 5 kék csúcs közül!
Ez a harmadik csúcs a kék átmérő két végpontjával együtt egy olyan háromszöget alkot, amelynek egyik oldala átmérő.
Thalész tétele értelmében ez a háromszög derékszögű!
Mivel mindhárom csúcsa kék, találtunk kék derékszögű háromszöget. $\blacksquare$

b) *Általánosítás szabályos $2m$-szögre:*
A szabályos $2m$-szögben pontosan $m$ darab átmérő van.
Ahhoz, hogy garantáltan legyen olyan átmérő, amelynek mindkét végpontja kék, a skatulya-elv szerint legalább $m + 1$ csúcsnak kéknek kell lennie.
Továbbá ahhoz, hogy háromszöget alkothassunk, a kék átmérőn kívül még legalább egy harmadik kék csúcsra is szükség van, azaz a kék csúcsok száma legalább 3 kell legyen.
Mivel $m \ge 2$, $m + 1 \ge 3$ mindig teljesül, és $m + 1$ kék csúcs esetén a kék átmérő mellett marad még $(m + 1) - 2 = m - 1 \ge 1$ harmadik kék csúcs.
Megmutatjuk, hogy $m$ kék csúcs NEM elegendő: ha minden egyes átmérőből pontosan 1 csúcsot festünk kékre (pl. egy félkört), akkor egyetlen átmérőnek sem lesz mindkét végpontja kék, így egyetlen kék derékszögű háromszög sem keletkezhet.
Ezért a minimálisan szükséges kék csúcsok száma:
$$\mathbf{m + 1}.$$

::: elmelet
**Elméleti háttér — Thalész-tétel, skatulyaelv és átmérők paritása.**

*Thalész-tétel geometriai háttere:* A körbe írt háromszög derékszögűsége egyenértékű azzal, hogy a háromszög leghosszabb oldala átmérő.
*Szabályos páros sokszögek átmérői:* Szabályos $2m$-szögben a csúcsok $m$ diszjunkt párba (átmérőkbe) állíthatók.
*Élesség:* $m$ csúcs elhelyezhető úgy, hogy mindegyik átmérőből csak 1 pontot választunk (pl. a kör egyik fele), ekkor nincs átmérő, így derékszögű háromszög sem.
:::

# A 3. feladatsorhoz

## P38. feladat

Bizonyítsuk be, hogy két egymást követő Fibonacci-szám ($F_n$ és $F_{n+1}$) mindig relatív prím minden $n \ge 1$ esetén:
a) az euklideszi algoritmus lépéseit követve;
b) a Cassini-azonosság ($F_{n+1}F_{n-1} - F_n^2 = (-1)^n$) segítségével!
Igaz-e, hogy két másodszomszédos Fibonacci-szám, $F_n$ és $F_{n+2}$ is mindig relatív prím?

**Megoldás.**

a) *Bizonyítás euklideszi algoritmussal:*
A Fibonacci-számok definíciója szerint $F_{n+1} = 1 \cdot F_n + F_{n-1}$ minden $n \ge 2$ esetén.
Két egész szám legnagyobb közös osztójára ismert alaptulajdonság: $\gcd(a, b) = \gcd(b, a - qb)$.
Alkalmazzuk ezt $a = F_{n+1}$ és $b = F_n$ választással ($q = 1$ hányadossal):
$$\gcd(F_{n+1}, F_n) = \gcd(F_n, F_{n+1} - F_n) = \gcd(F_n, F_{n-1}).$$
Ezt a redukciós lépést ismételve lefelé haladunk az indexekben:
$$\gcd(F_{n+1}, F_n) = \gcd(F_n, F_{n-1}) = \gcd(F_{n-1}, F_{n-2}) = \dots = \gcd(F_2, F_1).$$
Mivel $F_2 = 1$ és $F_1 = 1$, kapjuk:
$$\gcd(F_2, F_1) = \gcd(1, 1) = 1.$$
Tehát valóban $\gcd(F_n, F_{n+1}) = 1$ minden $n \ge 1$-re. $\blacksquare$

b) *Bizonyítás a Cassini-azonossággal:*
A Cassini-azonosság szerint:
$$F_{n+1}F_{n-1} - F_n^2 = (-1)^n.$$
Tegyük fel, hogy $d$ egy tetszőleges közös osztója $F_n$-nek és $F_{n+1}$-nek: $d \mid F_n$ és $d \mid F_{n+1}$.
Ekkor $d$ osztja a bal oldalt is: $d \mid (F_{n+1}F_{n-1} - F_n \cdot F_n)$.
Így $d \mid (-1)^n$.
Mivel $(-1)^n$ értéke $+1$ vagy $-1$, az egyetlen pozitív osztója az $1$.
Tehát $\gcd(F_n, F_{n+1}) = 1$. $\blacksquare$

*Másodszomszédos tagok vizsgálata:*
Mivel $F_{n+2} = F_{n+1} + F_n$, az euklideszi algoritmussal:
$$\gcd(F_{n+2}, F_n) = \gcd(F_{n+1} + F_n, F_n) = \gcd(F_{n+1}, F_n) = 1.$$
Tehát két másodszomszédos Fibonacci-szám is **mindig relatív prím**!

::: elmelet
**Elméleti háttér — Fibonacci-sorozat oszthatósági tulajdonságai.**

*Fibonacci-sorozat definíciója:* $F_0 = 0, F_1 = 1$, és $F_{n+1} = F_n + F_{n-1}$ ($n \ge 1$).
*Cassini-azonosság:* $F_{n+1}F_{n-1} - F_n^2 = (-1)^n$. (Mátrixos bizonyítás: $\det \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}^n = (-1)^n$.)
*Általános oszthatósági tétel:* $\gcd(F_a, F_b) = F_{\gcd(a, b)}$. Ebből azonnal következik, hogy ha $\gcd(n, n+1) = 1$, akkor $\gcd(F_n, F_{n+1}) = F_1 = 1$.
:::

## P39. feladat

a) Egy $n$ emeletes épület szintjeit piros és kék színekkel festjük ki úgy, hogy semelyik két szomszédos emelet nem lehet egyszerre piros. Hányféle színezés készíthető?
b) Hány olyan $n$ hosszúságú 0-1 sorozat létezik, amelyben nincs két egymást követő 1-es?

**Megoldás.**

a) és b) A két kérdés matematikailag teljesen azonos: a piros színnek feleltessük meg az 1-est, a kék színnek a 0-t.
Jelölje $a_n$ a megengedett színezések (vagyis a szomszédos 1-eseket nem tartalmazó $n$ hosszú bináris sorozatok) számát.
Kezdeti értékek kis $n$-ekre:
- $n = 1$: lehetséges a (K) és (P), azaz (0) és (1) $\implies a_1 = 2$.
- $n = 2$: lehetségesek a (KK), (KP), (PK), a (PP) tilos $\implies a_2 = 3$.

Állítsunk fel rekurziót az $n$. emelet (az utolsó elem) színe szerint:
1. eset: Az $n$. emelet KÉK (0).
Ekkor az alatta lévő $n - 1$ emelet tetszőleges érvényes színezést kaphat, hiszen a legfelső kék szint semmilyen új megszorítást nem ró az alatta lévő szintekre.
Az ilyen színezések száma pontosan $a_{n-1}$.

2. eset: Az $n$. emelet PIROS (1).
Mivel nem lehet két szomszédos piros emelet, az $(n-1)$-edik emeletnek kötelezően KÉKNEK (0) kell lennie!
Az ez alatti $n - 2$ emelet viszont ismét tetszőleges érvényes színezést kaphat.
Az ilyen színezések száma pontosan $a_{n-2}$.

Mivel a két eset diszjunkt és minden lehetséges színezést lefed, érvényes a rekurzió minden $n \ge 3$-ra:
$$a_n = a_{n-1} + a_{n-2}.$$
Ez pontosan a Fibonacci-rekurzió!
Hasonlítsuk össze a Fibonacci-számok standard indexelésével ($F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5$):
- $a_1 = 2 = F_3$
- $a_2 = 3 = F_4$
Teljes indukcióval azonnal adódik, hogy minden $n \ge 1$ esetén:
$$a_n = \mathbf{F_{n+2}}.$$

::: elmelet
**Elméleti háttér — rekurzió felállítása és Fibonacci-kombinatorika.**

*Rekurzió felállításának stratégiája:* Az utolsó elem(ek) lehetséges állapotai szerint bontjuk az eseteket. Ha egy választás kényszerpályát von maga után (pl. 1 után kötelező 0), az állapot hossza csökken (itt $n-2$-re).
*Fibonacci-számok kombinatorikus interpretációi:*
1. $n$ hosszú 0-1 sorozatok egymást követő 1-esek nélkül: $F_{n+2}$.
2. $\{1, \dots, n\}$ szomszédmentes részhalmazainak száma: $F_{n+2}$.
3. $1 \times n$-es sakktábla fedése $1 \times 1$-es és $1 \times 2$-es csempékkel: $F_{n+1}$.
:::

## P40. feladat

Mutassuk meg, hogy tetszőleges $m \ge 2$ egész számra a Fibonacci-sorozat tagjainak $m$-mel vett osztási maradékai tisztán periodikus sorozatot alkotnak!
Határozzuk meg a periódus hosszát (a Pisano-periódust) $m = 3$ és $m = 4$ esetén!

**Megoldás.**

Tekintsük az $r_n = F_n \bmod m$ maradéksorozatot ($r_n \in \{0, 1, \dots, m - 1\}$).
Mivel $F_{n+1} = F_n + F_{n-1}$, a maradékokra érvényes a kongruencia:
$$r_{n+1} \equiv r_n + r_{n-1} \pmod m.$$
Ez azt jelenti, hogy a sorozat bármely két egymást követő tagja, az $(r_{n-1}, r_n)$ rendezett pár egyértelműen meghatározza a sorozat következő tagját, $r_{n+1}$-et.
Továbbá a rekurzió visszafelé is egyértelműen megfordítható:
$$r_{n-1} \equiv r_{n+1} - r_n \pmod m,$$
azaz bármely két egymást követő tag az előző tagot is egyértelműen meghatározza.

Vizsgáljuk az egymást követő párokat: $(r_0, r_1), (r_1, r_2), (r_2, r_3), \dots$
Mivel modulo $m$ pontosan $m$ lehetséges maradék van, a rendezett párok száma legfeljebb $m^2$.
Mivel a sorozat végtelen sok párból áll, a Dirichlet-féle skatulya-elv szerint létezik két olyan különböző index, $j < k$, amelyekre a megfelelő párok azonosak:
$$(r_j, r_{j+1}) = (r_k, r_{k+1}).$$
Mivel a sorozat tagjai előrefele és visszafele is determinisztikusan következnek a szomszédos párból, a periódus visszafelé is végigvonul, egészen a kezdőpárig!
Így $(r_0, r_1) = (r_{k-j}, r_{k-j+1}) = (0, 1)$.
Ezért a sorozat tisztán periodikus (nem csak előperiódusos), és a periódus hossza legfeljebb $m^2 - 1$ (mivel a $(0,0)$ pár soha nem fordulhat elő, különben a sorozat csupa nulla lenne).

*Konkrét periódusok meghatározása:*
- $m = 3$ esetén:
$F_0 = 0 \equiv 0$
$F_1 = 1 \equiv 1$
$F_2 = 1 \equiv 1$
$F_3 = 2 \equiv 2$
$F_4 = 3 \equiv 0$
$F_5 = 5 \equiv 2$
$F_6 = 8 \equiv 2$
$F_7 = 13 \equiv 1$
$F_8 = 21 \equiv 0$
$F_9 = 34 \equiv 1$.
Megjelent a kezdő $(0, 1)$ pár az 8. indexnél!
Tehát modulo 3 a periódushossz: **$\pi(3) = 8$**.

- $m = 4$ esetén:
Maradékok: $0, 1, 1, 2, 3, 1, 0, 1$.
Megjelent a $(0, 1)$ pár a 6. indexnél!
Tehát modulo 4 a periódushossz: **$\pi(4) = 6$**.

::: elmelet
**Elméleti háttér — Pisano-periódus és skatulyaelv véges állapotú gépeken.**

*Pisano-periódus ($\pi(m)$):* A Fibonacci-számok maradékainak periódushossza modulo $m$.
*Tiszta periodicitás:* Azért tiszta (nincs előperiódus), mert a rekurzió mindkét irányban invertálható ($F_{n-1} = F_{n+1} - F_n$).
*Felső korlát:* $\pi(m) \le m^2 - 1$, mert a $(0,0)$ pár nem érhető el nemtriviális sorozatból. Prímekre erősebb korlátok érvényesek: ha $p \equiv \pm 1 \pmod 5$, akkor $\pi(p) \mid p - 1$; ha $p \equiv \pm 2 \pmod 5$, akkor $\pi(p) \mid 2(p + 1)$.
:::

## P41. feladat

Bizonyítsuk be az alábbi nevezetes Fibonacci-azonosságokat:
a) $F_n^2 - F_{n+1}F_{n-1} = (-1)^{n+1}$ minden $n \ge 1$ esetén (Cassini-azonosság);
b) $\sum_{i=1}^{n} F_i = F_{n+2} - 1$;
c) $\sum_{i=1}^{n} F_i^2 = F_n F_{n+1}$.

**Megoldás.**

a) Teljes indukcióval $n$ szerint:
Bázis: $n = 1$-re $F_1^2 - F_2 F_0 = 1^2 - 1 \cdot 0 = 1$. A jobb oldal $(-1)^{1+1} = 1$. Igaz.
Tegyük fel, hogy $F_n^2 - F_{n+1}F_{n-1} = (-1)^{n+1}$.
Vizsgáljuk az $n + 1$-re vonatkozó kifejezést:
$$F_{n+1}^2 - F_{n+2}F_n = F_{n+1}^2 - (F_{n+1} + F_n)F_n = F_{n+1}^2 - F_{n+1}F_n - F_n^2.$$
Kiemelve $F_{n+1}$-et:
$$F_{n+1}(F_{n+1} - F_n) - F_n^2 = F_{n+1}F_{n-1} - F_n^2 = -(F_n^2 - F_{n+1}F_{n-1}).$$
Az indukciós feltevést behelyettesítve:
$$-((-1)^{n+1}) = (-1)^{n+2}.$$
Ezzel a Cassini-azonosságot igazoltuk. $\blacksquare$

b) Használjuk a definíció átrendezett alakját: $F_i = F_{i+2} - F_{i+1}$.
Írjuk fel ezt minden $i = 1, 2, \dots, n$ értékre, és adjuk össze az egyenleteket:
$$F_1 = F_3 - F_2$$
$$F_2 = F_4 - F_3$$
$$F_3 = F_5 - F_4$$
$$\dots$$
$$F_n = F_{n+2} - F_{n+1}.$$
Az összeg teleszkopikusan egyszerűsödik: minden közbülső tag ($F_3, F_4, \dots, F_{n+1}$) kiesik!
$$\sum_{i=1}^{n} F_i = F_{n+2} - F_2 = F_{n+2} - 1. \quad \blacksquare$$

c) Szintén teleszkopikus átalakítással vagy geometriai kirakással bizonyítunk:
Tudjuk, hogy $F_i = F_{i+1} - F_{i-1}$, ezért:
$$F_i^2 = F_i (F_{i+1} - F_{i-1}) = F_i F_{i+1} - F_{i-1}F_i.$$
Összegezve $i = 1$-től $n$-ig:
$$\sum_{i=1}^{n} F_i^2 = \sum_{i=1}^{n} (F_i F_{i+1} - F_{i-1}F_i).$$
Ez egy teleszkopikus összeg:
$$(F_1 F_2 - F_0 F_1) + (F_2 F_3 - F_1 F_2) + \dots + (F_n F_{n+1} - F_{n-1}F_n) = F_n F_{n+1} - F_0 F_1.$$
Mivel $F_0 = 0$, kapjuk:
$$\sum_{i=1}^{n} F_i^2 = \mathbf{F_n F_{n+1}}. \quad \blacksquare$$
*(Geometriai kép: $F_i \times F_i$ méretű négyzetek egymás mellé illesztésével egy $F_n \times F_{n+1}$ méretű téglalap rakható ki!)*

::: elmelet
**Elméleti háttér — teleszkopikus összegek és geometriai bizonyítások.**

*Teleszkopikus összegzés:* Ha a tagokat $a_i = b_{i+1} - b_i$ alakba tudjuk írni, az összeg $\sum_{i=1}^n a_i = b_{n+1} - b_1$.
*Geometriai kirakás:* Az $F_1^2 + \dots + F_n^2 = F_n F_{n+1}$ azonosság szemléltethető a Fibonacci-spirál alapjául szolgáló téglalap-kirakással.
:::

## P42. feladat

Hány olyan 1200-nál nem nagyobb pozitív egész szám van, amely sem 2-vel, sem 3-mal, sem 7-tel nem osztható?
Ellenőrizzük a kapott eredményt az Euler-féle $\varphi$-függvény multiplikativitásával is!

**Megoldás.**

Legyen az alaphalmaz $U = \{1, 2, \dots, 1200\}$, $|U| = 1200$.
Definiáljuk a „rossz” tulajdonságokat:
- $A_2$: a 2-vel osztható számok halmaza $U$-ban;
- $A_3$: a 3-mal osztható számok halmaza $U$-ban;
- $A_7$: a 7-tel osztható számok halmaza $U$-ban.

A részhalmazok és metszeteik méretei egészrész segítségével:
$$|A_2| = \left\lfloor \frac{1200}{2} \right\rfloor = 600$$
$$|A_3| = \left\lfloor \frac{1200}{3} \right\rfloor = 400$$
$$|A_7| = \left\lfloor \frac{1200}{7} \right\rfloor = 171 \qquad (1200 = 7 \cdot 171 + 3)$$

A páronkénti metszetek (a legkisebb közös többszörösök alapján):
$$|A_2 \cap A_3| = |A_6| = \left\lfloor \frac{1200}{6} \right\rfloor = 200$$
$$|A_2 \cap A_7| = |A_{14}| = \left\lfloor \frac{1200}{14} \right\rfloor = 85 \qquad (1200 = 14 \cdot 85 + 10)$$
$$|A_3 \cap A_7| = |A_{21}| = \left\lfloor \frac{1200}{21} \right\rfloor = 57 \qquad (1200 = 21 \cdot 57 + 3)$$

A hármas metszet:
$$|A_2 \cap A_3 \cap A_7| = |A_{42}| = \left\lfloor \frac{1200}{42} \right\rfloor = 28 \qquad (1200 = 42 \cdot 28 + 24)$$

A szita-formula (Inclusion-Exclusion) szerint a legalább egy feltételnek eleget tevő számok száma:
$$|A_2 \cup A_3 \cup A_7| = (|A_2| + |A_3| + |A_7|) - (|A_6| + |A_{14}| + |A_{21}|) + |A_{42}|$$
$$= (600 + 400 + 171) - (200 + 85 + 57) + 28 = 1171 - 342 + 28 = 857.$$
A semelyikkel sem osztható számok száma a komplementer:
$$|U \setminus (A_2 \cup A_3 \cup A_7)| = 1200 - 857 = \mathbf{343}.$$

*Kapcsolat az Euler-féle $\varphi$-függvénnyel:*
Ha $N$ a prímek szorzatának többszöröse lenne, $\varphi(m) = m \prod (1 - 1/p)$ adná a pontos arányt.
Itt $2 \cdot 3 \cdot 7 = 42$, és $1200 = 28 \cdot 42 + 24$.
Egy 42 hosszú periódusban a relatív prímek száma $\varphi(42) = 42 \cdot (1 - 1/2)(1 - 1/3)(1 - 1/7) = 42 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{6}{7} = 12$.
28 teljes periódusban van $28 \times 12 = 336$ relatív prím.
A maradék $24$ számban ({1..24}) meg kell számolni a 2, 3, 7-hez relatív prímeket: 1, 5, 11, 13, 17, 19, 23 (pontosan 7 darab).
Összesen: $336 + 7 = 343$. Az eredmény tökéletesen egyezik!

::: elmelet
**Elméleti háttér — szita-formula (be- és kitolási elv) oszthatóságra.**

*Logikai szita-formula (Poincaré-képlet):*
$$|A_1 \cup \dots \cup A_n| = \sum_{i} |A_i| - \sum_{i < j} |A_i \cap A_j| + \sum_{i < j < k} |A_i \cap A_j \cap A_k| - \dots + (-1)^{n-1} |A_1 \cap \dots \cap A_n|.$$
*Komplementer alak:*
$$|\bigcap_{i=1}^n A_i^c| = |U| - \sum |A_i| + \sum |A_i \cap A_j| - \dots$$
*Tipikus hiba:* Nem prím osztóknál nem a szorzatot, hanem a legkisebb közös többszöröst kell venni: $\text{lcm}(d_1, d_2)$!
:::

## P43. feladat

Egy szabályos dobókockával 8-szor dobunk.
a) Hány olyan dobássorozat létezik, amelyben mind a hat lehetséges szám ($1, 2, 3, 4, 5, 6$) előfordul legalább egyszer?
b) Mennyi a valószínűsége annak, hogy a 8 dobás alatt mind a hat szám megjelenik?

**Megoldás.**

a) Legyen az alaphalmaz $U$ az összes lehetséges 8 hosszú dobássorozat: $|U| = 6^8 = 1\,679\,616$.
Legyen $A_i$ azon dobássorozatok halmaza, amelyekből **hiányzik** az $i$ szám ($1 \le i \le 6$).
Akkor fordul elő mind a 6 szám, ha a dobássorozat semelyik $A_i$ halmazba nem tartozik bele:
$$N = \left|\bigcap_{i=1}^6 A_i^c\right|.$$
Alkalmazzuk a szita-formulát:
- $k$ rögzített szám hiányzása esetén a maradék $6 - k$ számból dobunk mind a 8 alkalommal, így a metszet mérete $(6 - k)^8$.
- A $k$ hiányzó szám $\binom{6}{k}$-féleképpen választható ki.
A szita-formula szerint:
$$N = \sum_{k=0}^{6} (-1)^k \binom{6}{k} (6 - k)^8$$
$$= \binom{6}{0}6^8 - \binom{6}{1}5^8 + \binom{6}{2}4^8 - \binom{6}{3}3^8 + \binom{6}{4}2^8 - \binom{6}{5}1^8 + \binom{6}{6}0^8.$$
Számítsuk ki az egyes tagokat:
- $6^8 = 1\,679\,616$
- $6 \cdot 5^8 = 6 \cdot 390\,625 = 2\,343\,750$
- $15 \cdot 4^8 = 15 \cdot 65\,536 = 983\,040$
- $20 \cdot 3^8 = 20 \cdot 6561 = 131\,220$
- $15 \cdot 2^8 = 15 \cdot 256 = 3840$
- $6 \cdot 1^8 = 6$
Összegezve:
$$N = 1\,679\,616 - 2\,343\,750 + 983\,040 - 131\,220 + 3840 - 6 = \mathbf{191\,520}.$$
(Megjegyzés: ez nem más, mint a 8 elemű halmazból 6 elemű halmazba képező szürjektív függvények száma: $6! \cdot S(8, 6) = 720 \cdot 266 = 191\,520$.)

b) A klasszikus valószínűségi mezőben a keresett valószínűség a kedvező és az összes eset hányadosa:
$$P = \frac{N}{6^8} = \frac{191\,520}{1\,679\,616} = \frac{3325}{29\,160} \approx \mathbf{0{,}1140} \quad (\approx 11{,}4\%).$$

::: elmelet
**Elméleti háttér — szürjektív függvények száma és szita-formula.**

*Szürjektív függvények száma:* Egy $m$ elemű halmazból egy $n$ elemű halmazba képező szürjektív függvények száma:
$$\sum_{j=0}^n (-1)^j \binom{n}{j} (n - j)^m = n! \cdot S(m, n),$$
ahol $S(m, n)$ a másodfajú Stirling-szám (az $m$ elemű halmaz $n$ nem üres osztályra való particionálásainak száma).
:::

## P44. feladat

Határozzuk meg az 1 és 600 közötti pozitív egész számok közül azoknak:
a) a darabszámát;
b) az összegét;
amelyek oszthatók 4-gyel vagy 6-tal!

**Megoldás.**

a) *Darabszám meghatározása:*
Legyen $U = \{1, 2, \dots, 600\}$.
$A_4$: a 4-gyel osztható számok halmaza, $|A_4| = \lfloor 600/4 \rfloor = 150$.
$A_6$: a 6-tal osztható számok halmaza, $|A_6| = \lfloor 600/6 \rfloor = 100$.
A metszetük a $\text{lcm}(4, 6) = 12$-vel osztható számok halmaza:
$|A_4 \cap A_6| = |A_{12}| = \lfloor 600/12 \rfloor = 50$.
A szita-formula szerint a 4-gyel vagy 6-tal osztható számok száma:
$$|A_4 \cup A_6| = |A_4| + |A_6| - |A_{12}| = 150 + 100 - 50 = \mathbf{200}.$$

b) *Összeg meghatározása:*
Jelölje $S(d)$ az 1 és 600 közötti $d$-vel osztható számok összegét.
Ha egy szám osztható $d$-vel, akkor felírható $d \cdot k$ alakban, ahol $1 \le k \le \lfloor 600/d \rfloor = m$.
Ez egy számtani sorozat, melynek összege:
$$S(d) = \sum_{k=1}^m d \cdot k = d \cdot \frac{m(m+1)}{2}.$$
Alkalmazzuk a szita-formulát az összegekre (mivel a szummázás lineáris művelet):
$$\sum_{x \in A_4 \cup A_6} x = S(4) + S(6) - S(12).$$
Számoljuk ki a részeket:
- $d = 4 \implies m = 150$:
$$S(4) = 4 \cdot \frac{150 \cdot 151}{2} = 2 \cdot 150 \cdot 151 = 300 \cdot 151 = 45\,300.$$
- $d = 6 \implies m = 100$:
$$S(6) = 6 \cdot \frac{100 \cdot 101}{2} = 3 \cdot 100 \cdot 101 = 300 \cdot 101 = 30\,300.$$
- $d = 12 \implies m = 50$:
$$S(12) = 12 \cdot \frac{50 \cdot 51}{2} = 6 \cdot 50 \cdot 51 = 300 \cdot 51 = 15\,300.$$
A keresett összeg:
$$\sum_{x \in A_4 \cup A_6} x = 45\,300 + 30\,300 - 15\,300 = \mathbf{60\,300}.$$

::: elmelet
**Elméleti háttér — szita-formula additív függvényekre és súlyozott összegekre.**

*Lineáris függvények szita-formulája:* Tetszőleges $w : U \to \mathbb{R}$ súlyfüggvényre:
$$w(A \cup B) = w(A) + w(B) - w(A \cap B), \qquad \text{ahol } w(X) = \sum_{x \in X} w(x).$$
*Számtani sorozat összege:* $d \sum_{k=1}^m k = d \frac{m(m+1)}{2}$.
*Tipikus hiba:* Összekeverni a legkisebb közös többszöröst a prímek szorzatával: $\text{lcm}(4, 6) = 12 \neq 24$!
:::

## P45. feladat

Bizonyítsuk be, hogy tetszőleges $0 < k < m$ egész számok esetén a
$$\sum_{i=k}^{m} F_i F_{i+3}$$
összeg mindig összetett szám!

**Megoldás.**

Fejezzük ki a Fibonacci-tagokat szimmetrikusan a köztes indexek segítségével:
$$F_i = F_{i+2} - F_{i+1}$$
$$F_{i+3} = F_{i+2} + F_{i+1}.$$
Szorozzuk össze a két kifejezést (a négyzetek különbsége azonosságot kapjuk):
$$F_i F_{i+3} = (F_{i+2} - F_{i+1})(F_{i+2} + F_{i+1}) = F_{i+2}^2 - F_{i+1}^2.$$
Összegezzük ezt az összefüggést $i = k$-tól $m$-ig:
$$\sum_{i=k}^{m} F_i F_{i+3} = \sum_{i=k}^{m} (F_{i+2}^2 - F_{i+1}^2).$$
Ez egy teleszkopikus összeg:
$$(F_{k+2}^2 - F_{k+1}^2) + (F_{k+3}^2 - F_{k+2}^2) + \dots + (F_{m+2}^2 - F_{m+1}^2) = F_{m+2}^2 - F_{k+1}^2.$$
Bontsuk fel a kapott két négyzet különbségét szorzattá:
$$F_{m+2}^2 - F_{k+1}^2 = (F_{m+2} - F_{k+1})(F_{m+2} + F_{k+1}).$$
Mivel a feltétel szerint $0 < k < m$, a Fibonacci-számok szigorú növekedése miatt ($n \ge 2$-re):
$$m + 2 > k + 1 \ge 2 \implies F_{m+2} > F_{k+1} \ge 1.$$
Ezért:
1. Az első tényező pozitív egész: $F_{m+2} - F_{k+1} \ge 1$.
Valójában $m \ge k + 1 \implies m + 2 \ge k + 3$, így $F_{m+2} \ge F_{k+3} = F_{k+2} + F_{k+1} > F_{k+1} + 1$, vagyis:
$$F_{m+2} - F_{k+1} \ge 2.$$
2. A második tényező szigorúan nagyobb az elsőnél:
$$F_{m+2} + F_{k+1} > 2.$$
Mivel az összeg felírható két olyan pozitív egész szám szorzataként, amelyek mindegyike szigorúan nagyobb 1-nél, az összeg valóban **összetett szám**. $\blacksquare$

::: elmelet
**Elméleti háttér — algebrai teleszkóp és összetett számok igazolása.**

*Fibonacci szimmetrikus szorzatai:* Az $F_{n-1}F_{n+2} = F_{n+1}^2 - F_n^2$ típusú azonosságok lehetővé teszik a nemlineáris összegek teleszkopálását.
*Összetettség bizonyítása:* Egy $N$ egész szám összetett, ha $N = A \cdot B$, ahol $A > 1$ és $B > 1$ egészek.
:::

## P46. feladat

Hány olyan 10 hosszú karaktersorozat készíthető a 26 betűből álló angol ábécé nagybetűiből, amely tartalmazza az 'A', a 'B' és a 'C' betűk mindegyikét legalább egyszer?

**Megoldás.**

Legyen az alaphalmaz $U$ a 26 betűből képezhető 10 hosszú szavak halmaza:
$$|U| = 26^{10}.$$
Jelölje a rossz tulajdonságokat:
- $H_A$: a szóból hiányzik az 'A' betű;
- $H_B$: a szóból hiányzik a 'B' betű;
- $H_C$: a szóból hiányzik a 'C' betű.

Az egyes részhalmazok és metszeteik mérete:
1. Egy rögzített betű hiányzik (pl. nincs 'A'): a szó a maradék $26 - 1 = 25$ betűből áll:
$$|H_A| = |H_B| = |H_C| = 25^{10}.$$
2. Két rögzített betű hiányzik (pl. nincs 'A' és nincs 'B'): a szó a maradék $26 - 2 = 24$ betűből áll:
$$|H_A \cap H_B| = |H_A \cap H_C| = |H_B \cap H_C| = 24^{10}.$$
3. Mindhárom betű hiányzik (nincs 'A', 'B', 'C'): a szó a maradék $26 - 3 = 23$ betűből áll:
$$|H_A \cap H_B \cap H_C| = 23^{10}.$$

A szita-formula komplementer alakja szerint a mindhárom betűt tartalmazó szavak száma:
$$N = |U| - (|H_A| + |H_B| + |H_C|) + (|H_A \cap H_B| + |H_A \cap H_C| + |H_B \cap H_C|) - |H_A \cap H_B \cap H_C|$$
$$= 26^{10} - \binom{3}{1} 25^{10} + \binom{3}{2} 24^{10} - \binom{3}{3} 23^{10}$$
$$= 26^{10} - 3 \cdot 25^{10} + 3 \cdot 24^{10} - 23^{10}.$$
Kiszámítva a konkrét számértéket:
$$N = \mathbf{3\,848\,432\,413\,980}.$$

::: elmelet
**Elméleti háttér — szita-formula részhalmazok egyidejű elkerülésére.**

*Tiltott hiányok elve:* Ha előírjuk, hogy bizonyos elemek mind szerepeljenek, a komplementer események a „hiányzik az adott elem”. A szita-formula alternáló összege pontosan ezt az előfordulási kényszert számlálja meg.
:::

## P47. feladat

Hányféleképpen fedhetünk le egy $2 \times n$-es sakktáblát $1 \times 2$-es dominókkal úgy, hogy a dominók hézagmentesen és átfedés nélkül fedjék a táblát?
Állítsuk fel a rekurziót a tábla jobb szélének fedése alapján, és adjuk meg a megoldást Fibonacci-számokkal!

**Megoldás.**

Jelölje $d_n$ a $2 \times n$-es tábla $1 \times 2$-es dominókkal való lefedéseinek számát ($n \ge 1$).
Kezdeti értékek:
- $n = 1$: Egy $2 \times 1$-es táblát csak egyetlen függőleges dominóval fedhetünk le: $d_1 = 1$.
- $n = 2$: Egy $2 \times 2$-es tábla lefedhető 2 darab függőleges dominóval, vagy 2 darab vízszintes dominóval: $d_2 = 2$.

Tekintsük a $2 \times n$-es tábla jobb oldali végét:
1. eset: A jobb szélső oszlopot egyetlen függőleges dominó fedi le.
Ekkor a dominó elhagyása után egy $2 \times (n - 1)$-es résztábla marad, amelyet $d_{n-1}$-féleképpen fedhetünk le.

2. eset: A jobb felső mezőt egy vízszintes dominó fedi.
Ekkor a jobb alsó mező fölé nem tehetünk függőleges dominót, így azt a mezőt is kötelezően egy vízszintes dominónak kell fednie.
Ez a két vízszintes dominó együtt pontosan egy $2 \times 2$-es blokkot zár le a jobb szélen.
Ezen két dominó elhagyása után egy $2 \times (n - 2)$-es résztábla marad, amelynek lefedéseinek száma $d_{n-2}$.

Mivel más lehetőség a jobb szél lefedésére nincs, és a két eset egymást kizárja, kapjuk a rekurziót minden $n \ge 3$-ra:
$$d_n = d_{n-1} + d_{n-2}.$$
Ez pontosan a Fibonacci-rekurzió!
Összevetve a Fibonacci-sorozat elemeivel ($F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, \dots$):
- $d_1 = 1 = F_2$
- $d_2 = 2 = F_3$
Teljes indukcióval adódik, hogy minden $n \ge 1$ esetén a fedések száma:
$$d_n = \mathbf{F_{n+1}}.$$

::: elmelet
**Elméleti háttér — dominófedések és Fibonacci-rekurzió.**

*Dominófedések kombinatorikája:* A $2 \times n$-es tábla fedése bijekcióban áll az $n$ összeg $1$-esekből (függőleges dominó) és $2$-esekből (vízszintes dominópár) való rendezett felbontásaival.
*Kasteleyn-tétel:* Tetszőleges síkgráf teljes párosításainak (dimer fedéseinek) száma Pfaff-determinánssal számolható. $2 \times n$ esetén a zárt trigonometrikus képlet pontosan a Fibonacci-számot adja vissza.
:::

## P48. feladat

$2n$ darab kártyalapon az $1, 1, 2, 2, \dots, n, n$ számok szerepelnek (az azonos számot tartalmazó kártyák teljesen egyformák).
Hányféleképpen képezhetünk segítségükkel egy $2n$ hosszú számsorozatot úgy, hogy azonos számok ne állhassanak közvetlenül egymás mellett?
Írjuk fel a megoldást zárt összegként a szita-formula segítségével!

**Megoldás.**

Az összes lehetséges sorozat száma ismétléses permutációval:
Mivel minden szám ($1, 2, \dots, n$) pontosan kétszer szerepel, az összes sorozat száma:
$$|U| = \frac{(2n)!}{(2!)^n} = \frac{(2n)!}{2^n}.$$

Alkalmazzuk a szita-formulát a tiltott szomszédságokra!
Minden $i \in \{1, 2, \dots, n\}$ esetén legyen $A_i$ azon sorozatok tulajdonsága, amelyekben a két $i$-es szám közvetlenül egymás mellett áll (azaz az $[i\,i]$ blokk szerepel a sorozatban).
Azt szeretnénk meghatározni, hogy hány sorozat nem teljesíti semelyik $A_i$ feltételt sem:
$$N = \left|\bigcap_{i=1}^n A_i^c\right|.$$

Tegyük fel, hogy rögzítünk $k$ darab indexet ($1 \le k \le n$), amelyekre előírjuk, hogy az azonos számok egymás mellett állnak:
- Ez a $k$ darab számpár mindegyike egy-egy 2 hosszú blokkot képez: $[i_1\,i_1], \dots, [i_k\,i_k]$.
- A maradék $n - k$ számpár tagjai különállóak maradnak ($2(n-k)$ darab kártya).
- Így összesen $k + 2(n-k) = 2n - k$ objektumot kell sorba rendeznünk.
- Ezen $2n - k$ objektum között van $k$ darab különböző blokk (mindegyik 1-szer fordul elő), és $n - k$ darab számpár, ahol mindegyik szám 2-szer szerepel.
Ezért a metszet mérete ismétléses permutációval:
$$\frac{(2n - k)!}{(1!)^k \cdot (2!)^{n-k}} = \frac{(2n - k)!}{2^{n-k}}.$$
A $k$ feltétel $\binom{n}{k}$-féleképpen választható ki.
A szita-formula szerint a megfelelő sorozatok száma:
$$N = \sum_{k=0}^{n} (-1)^k \binom{n}{k} \frac{(2n - k)!}{2^{n-k}}.$$
Például $n = 2$ esetén ($1, 1, 2, 2$ kártyák):
$$N = \binom{2}{0}\frac{4!}{4} - \binom{2}{1}\frac{3!}{2} + \binom{2}{2}\frac{2!}{1} = 6 - 2 \cdot 3 + 1 \cdot 2 = 6 - 6 + 2 = \mathbf{2}$$
(a két jó sorozat valóban csak az $1212$ és a $2121$).
A válasz tehát:
$$\mathbf{\sum_{k=0}^{n} (-1)^k \binom{n}{k} \frac{(2n - k)!}{2^{n-k}}}.$$

::: elmelet
**Elméleti háttér — szita-formula blokkosítással és azonos elemekkel.**

*Blokkosítás a szita-formulában:* Ha előírjuk, hogy bizonyos azonos elemek egymás mellett álljanak, azokat összeragasztjuk egyetlen elemmé. $k$ blokk esetén a permutálandó elemek száma $2n - k$-ra csökken.
*Több azonos pár:* A nevezőben a meg nem kötött párok $2!$-jai maradnak meg, így $2^{n-k}$ szerepel az osztóban.
:::

## P49. feladat

Egy automata minden tranzakció során 1 Ft-os érmét vagy kétféle 2 Ft-os zsetont (pirosat vagy kéket) fogad el.
Hányféleképpen fizethetünk be pontosan $n$ forintot az automatába, ha a bedobások sorrendje számít?
Írjuk fel a rekurziót, a karakterisztikus egyenletet, és határozzuk meg az explicit zárt alakot! Számítsuk ki az értéket $n = 150$-re!

**Megoldás.**

Jelölje $a_n$ az $n$ forint befizetésének lehetőségeinek számát.
Az utolsó bedobott érme/zseton értéke és típusa szerint 3 lehetőség van:
1. Az utolsó bedobás 1 Ft-os érme volt: ekkor elötte $n - 1$ forintot fizettünk be, erre $a_{n-1}$ lehetőség van.
2. Az utolsó bedobás egy piros 2 Ft-os zseton volt: elötte $n - 2$ forintot fizettünk be, erre $a_{n-2}$ lehetőség van.
3. Az utolsó bedobás egy kék 2 Ft-os zseton volt: elötte szintén $n - 2$ forintot fizettünk be, erre $a_{n-2}$ lehetőség van.
A szétválasztás alapján a rekurzió:
$$a_n = a_{n-1} + 2 a_{n-2} \qquad (n \ge 2).$$

Kezdeti értékek:
- $n = 0$: $a_0 = 1$ (az üres befizetés pontosan 1-féleképpen lehetséges: semmit sem dobunk be).
- $n = 1$: $a_1 = 1$ (csak egyetlen 1 Ft-os érme dobható be).
(Ellenőrzés: $n = 2$-re $a_2 = a_1 + 2a_0 = 1 + 2 = 3$, valóban: 1+1, piros 2, kék 2.)

*Karakterisztikus egyenlet:*
Tegyük fel a megoldást $a_n = \lambda^n$ alakban:
$$\lambda^2 - \lambda - 2 = 0.$$
A másodfokú egyenlet gyökei:
$$(\lambda - 2)(\lambda + 1) = 0 \implies \lambda_1 = 2, \quad \lambda_2 = -1.$$
Az általános megoldás alakja:
$$a_n = c_1 \cdot 2^n + c_2 \cdot (-1)^n.$$
A konstansok meghatározása a kezdeti értékekből:
$n = 0$: $c_1 + c_2 = 1$
$n = 1$: $2c_1 - c_2 = 1$.
A két egyenletet összeadva: $3c_1 = 2 \implies c_1 = \frac{2}{3}$.
Ebből $c_2 = 1 - c_1 = \frac{1}{3}$.
Így az explicit zárt formula:
$$a_n = \frac{2}{3} \cdot 2^n + \frac{1}{3} \cdot (-1)^n = \mathbf{\frac{2^{n+1} + (-1)^n}{3}}.$$

$n = 150$ esetén ($(-1)^{150} = 1$):
$$a_{150} = \mathbf{\frac{2^{151} + 1}{3}}.$$

::: elmelet
**Elméleti háttér — másodrendű lineáris rekurziók karakterisztikus egyenlete.**

*Lineáris rekurzió megoldásának menete:*
1. $a_n + p a_{n-1} + q a_{n-2} = 0$ felírása.
2. Karakterisztikus egyenlet: $\lambda^2 + p\lambda + q = 0$.
3. Ha két különböző valós gyök van ($\lambda_1 \neq \lambda_2$), az általános megoldás $a_n = c_1 \lambda_1^n + c_2 \lambda_2^n$.
4. Ha kétszeres gyök van ($\lambda_1 = \lambda_2$), akkor $a_n = (c_1 + c_2 n)\lambda_1^n$.
5. A $c_1, c_2$ együtthatókat a kezdeti feltételekből lineáris egyenletrendszerrel határozzuk meg.
:::

## P50. feladat

Az $a, b, c, d$ betűkből hány darab $n$ hosszúságú szó képezhető úgy, hogy az $a$ és $b$ betűk egyike után sem állhat közvetlenül a $c$ és $d$ betűk egyike sem?

**Megoldás.**

Osszuk a 4 betűt két diszjunkt 2-es csoportba:
- $L = \{a, b\}$ („első csoport” / „bal oldali betűk”)
- $R = \{c, d\}$ („második csoport” / „jobb oldali betűk”)

A feltétel szerint:
Egy $L$-beli betű után ($a$ vagy $b$) TILOS $R$-beli betűt ($c$ vagy $d$) írni.
Ez azt jelenti, hogy:
- Egy $L$-beli betű után csak újabb $L$-beli betű következhet.
- Egy $R$-beli betű után viszont tetszőlegesen következhet $R$-beli vagy $L$-beli betű is!
Következésképpen: ha a szóban egyszer megjelenik egy $L$-beli betű, akkor attól a pozíciótól kezdve az összes hátralévő betűnek kötelezően az $L = \{a, b\}$ csoportból kell kikerülnie!
Más szavakkal, a szó felépítése a csoportok szintjén csak ilyen alakú lehet:
$$R R \dots R \, L L \dots L,$$
azaz valahány (akár 0) darab $R$-beli betűt követ valahány (akár 0) darab $L$-beli betű!
Egy $n$ hosszú szó esetén a váltás helye $n + 1$ féle lehet:
- 0 darab $R$ és $n$ darab $L$;
- 1 darab $R$ és $n - 1$ darab $L$;
- 2 darab $R$ és $n - 2$ darab $L$;
- ...
- $k$ darab $R$ és $n - k$ darab $L$ ($0 \le k \le n$);
- ...
- $n$ darab $R$ és 0 darab $L$.
Ez pontosan $n + 1$ lehetséges makro-struktúra!

Most nézzük meg a betűk konkrét választását egy rögzített makro-struktúrában:
- Mind a $k$ darab $R$-pozícióra 2 lehetőség van (a $c$ vagy a $d$ betű): $2^k$ lehetőség.
- Mind az $n - k$ darab $L$-pozícióra szintén 2 lehetőség van (az $a$ vagy a $b$ betű): $2^{n-k}$ lehetőség.
A szorzási szabály szerint bármely rögzített $k$ esetén a szavak száma:
$$2^k \cdot 2^{n-k} = 2^n.$$
Mivel ez az érték független $k$-tól, és összesen $n + 1$ lehetséges $k$ érték van ($k = 0, 1, \dots, n$), az összes megengedett szó száma:
$$\sum_{k=0}^{n} 2^n = (n + 1) \cdot 2^n = \mathbf{(n + 1)2^n}.$$

::: elmelet
**Elméleti háttér — átmeneti megszorítások és invariáns struktúrák.**

*Irányított tiltási gráf:* A betűcsoportok közötti megengedett átmenetek egy irányított gráfot alkotnak. Ha az átmeneti gráf körmentes a csoportok között ($R \to L$ megengedett, de $L \to R$ tiltott), a globális struktúra mereven egyirányú: minden szó $R^k L^{n-k}$ alakú.
*Szimmetrikus szabadsági fokok:* Mivel mindkét csoport mérete $|L| = |R| = 2$, a belső kombinációk száma minden $k$-ra pontosan $2^k \cdot 2^{n-k} = 2^n$, így az összeg egyszerű szorzattá válik.
:::

## P51. feladat

Egy konvex $n$-szöget egymást nem metsző belső átlókkal háromszögekre szeretnénk bontani (trianguláció).
a) Hány átlót kell behúznunk egy triangulációhoz, és hány háromszög keletkezik?
b) Hány különböző triangulációja létezik egy konvex $n$-szögnek? Vezessük le a rekurziót egy rögzített él mentén, és adjuk meg a választ a Catalan-számokkal!
c) Számítsuk ki a háromszögelések számát konvex 5-szög és 6-szög esetén!

**Megoldás.**

a) Bármely konvex $n$-szög triangulációjában:
A belső szögek összege $(n - 2) \cdot 180^\circ$. Mivel minden háromszög szögeinek összege $180^\circ$, a keletkező háromszögek száma mindig pontosan:
$$T = n - 2.$$
Mivel egy sokszögnek $n$ oldala van, és minden behúzott átló 1-gyel növeli a tartományok számát (1-ről indulva), a behúzott átlók száma:
$$E_{\text{átló}} = n - 3.$$

b) Jelölje $t_n$ egy konvex $n$-szög triangulációinak számát ($n \ge 3$).
Rögzítsük a sokszög egy tetszőleges oldalát, például a $v_1 v_n$ élet!
Minden érvényes triangulációban a $v_1 v_n$ él pontosan egyetlen háromszögnek az oldala.
Jelölje e háromszög harmadik csúcsát $v_k$ ($2 \le k \le n - 1$).
A $v_1 v_k v_n$ háromszög behúzása a sokszöget két kisebb sokszögre bontja:
- egy konvex $k$-szögre, melynek csúcsai $v_1, v_2, \dots, v_k$ (ennek triangulációinak száma $t_k$, ahol $k = 2$-re definíció szerint $t_2 = 1$, ami egyetlen élt jelent);
- egy konvex $(n - k + 1)$-szögre, melynek csúcsai $v_k, v_{k+1}, \dots, v_n$ (triangulációk száma $t_{n-k+1}$).
Mivel a két rész-sokszög triangulációi egymástól teljesen függetlenül választhatók meg, a szorzási szabály szerint a harmadik csúcs lehetséges $k = 2, 3, \dots, n - 1$ értékeire összegezve kapjuk a Catalan-rekurziót:
$$t_n = \sum_{k=2}^{n-1} t_k \cdot t_{n-k+1}.$$
Vezessük be az indexeltolást: legyen $C_m = t_{m+2}$ (így $C_0 = t_2 = 1, C_1 = t_3 = 1$). Ekkor $m = n - 2$, és a rekurzió:
$$C_m = \sum_{i=0}^{m-1} C_i C_{m-1-i}.$$
Ez pontosan a **Catalan-számok** definíciós rekurziója!
A Catalan-számok explicit zárt alakja:
$$C_m = \frac{1}{m+1}\binom{2m}{m}.$$
Visszahelyettesítve $m = n - 2$-t, a konvex $n$-szög triangulációinak száma:
$$t_n = C_{n-2} = \mathbf{\frac{1}{n - 1}\binom{2n - 4}{n - 2}}.$$

c) Konkrét értékek:
- Konvex 5-szögre ($n = 5$):
$$t_5 = C_3 = \frac{1}{4}\binom{6}{3} = \frac{20}{4} = \mathbf{5}.$$
- Konvex 6-szögre ($n = 6$):
$$t_6 = C_4 = \frac{1}{5}\binom{8}{4} = \frac{70}{5} = \mathbf{14}.$$

::: elmelet
**Elméleti háttér — sokszögek háromszögelése és Catalan-számok.**

*Euler-féle triangulációs probléma:* Leonhard Euler 1751-ben vetette fel a sokszögek triangulációinak kérdését, amely a kombinatorika történetének egyik legfontosabb problémája.
*Catalan-számok:* $C_n = \frac{1}{n+1}\binom{2n}{n}$.
*Első néhány Catalan-szám:* $C_0 = 1, C_1 = 1, C_2 = 2, C_3 = 5, C_4 = 14, C_5 = 42, C_6 = 132$.
*Konvex sokszögre:* Az $n$-szög felosztásainak száma $C_{n-2}$.
:::

## P52. feladat

Hányféleképpen zárójelezhetünk meg egy $n$ tényezős szorzatot:
$$x_1 \cdot x_2 \cdot \dots \cdot x_n$$
úgy, hogy a tényezők sorrendjét nem változtatjuk meg, és minden szorzási művelet pontosan két tényező (változó vagy már zárójelezett kifejezés) között történik?
Mutassuk meg a kapcsolatot a bináris fákkal és a Catalan-számokkal!

**Megoldás.**

Jelölje $z_n$ az $n$ tényezős szorzat teljes zárójelezéseinek számát ($n \ge 1$).
Kezdeti értékek:
- $n = 1$: $x_1$ $\implies z_1 = 1$.
- $n = 2$: $(x_1 x_2)$ $\implies z_2 = 1$.
- $n = 3$: $((x_1 x_2) x_3)$ és $(x_1 (x_2 x_3))$ $\implies z_3 = 2$.

Bármely teljes zárójelezésben van egy **legkülső (utolsó) szorzás**, amely a kifejezést két nem üres részkifejezésre bontja:
$$(x_1 \dots x_k) \cdot (x_{k+1} \dots x_n),$$
ahol a bal oldali szorzat $k$ tényezős, a jobb oldali pedig $n - k$ tényezős ($1 \le k \le n - 1$).
A bal oldali $k$ tényezőt $z_k$-féleképpen, a jobb oldali $n - k$ tényezőt $z_{n-k}$-féleképpen zárójelezhetjük meg egymástól függetlenül.
Összegezve az összes lehetséges vágási pontra ($k = 1, 2, \dots, n - 1$):
$$z_n = \sum_{k=1}^{n-1} z_k \cdot z_{n-k}.$$
Ez ismét a Catalan-rekurzió!
Indexeltolással: $C_m = z_{m+1}$, ekkor $C_0 = z_1 = 1$, és a rekurzió megegyezik a Catalan-számokéval.
Ezért az $n$ tényezős szorzat zárójelezéseinek száma az $(n - 1)$-edik Catalan-szám:
$$z_n = C_{n-1} = \mathbf{\frac{1}{n}\binom{2n - 2}{n - 1}}.$$

*Bijekció bináris fákkal:*
Minden teljes zárójelezés egyértelműen megfeleltethető egy $n$ levelű (és $n - 1$ belső csúcsú) gyökeres bináris fának:
- A levelek balról jobbra az $x_1, \dots, x_n$ változók;
- A belső csúcsok a kettes szorzási műveletek;
- A gyökér az utolsó szorzás.
Mivel az $n$ levelű gyökeres bináris fák száma szintén $C_{n-1}$, a kapcsolat bijektív. $\blacksquare$

::: elmelet
**Elméleti háttér — szorzatzárójelezések, bináris fák és Catalan-család.**

*Catalan-struktúrák sokfélesége (Richard Stanley gyűjtése):*
Több mint 200 különböző kombinatorikai objektumot számlálnak a Catalan-számok:
1. $n$ tényezős szorzat zárójelezései: $C_{n-1}$.
2. Konvex $(n+1)$-szög triangulációi: $C_{n-1}$.
3. $n$ csúcsú bináris fák: $C_n$.
4. $2n$ hosszú Dyck-utak: $C_n$.
5. $2n$ hosszú helyes zárójelkifejezések: $C_n$.
:::

## P53. feladat

Egy kör alakú asztal körül $n \ge 3$ ember ül.
Hány olyan részhalmaza van az asztal körül ülő embereknek, amelyben semelyik két ember nem ül egymás mellett (független részhalmazok a körön)?
Fejezzük ki a választ Fibonacci- és Lucas-számokkal!

**Megoldás.**

Jelölje a körasztal körül ülő embereket sorban $1, 2, \dots, n$.
A keresett részhalmazok a $C_n$ körgráf független csúcshalmazai.
Bontsuk az eseteket egy rögzített ember, mondjuk az 1-es személy részhalmazbeli státusza szerint:

1. eset: Az 1-es személy BENNE VAN a részhalmazban.
Ekkor a szomszédai, a 2-es és az $n$-es személy NEM lehetnek benne a részhalmazban.
A fennmaradó $n - 3$ ember ($3, 4, \dots, n - 1$) egy egyenes vonalú sort alkot.
Ebben az egyenes vonalú sorban semelyik két szomszédos ember nem választható ki egyszerre.
A 39. feladatban láttuk, hogy egy $m$ hosszú sorban a szomszédmentes részhalmazok száma $F_{m+2}$ (beleértve az üres halmazt is).
Itt a sor hossza $m = n - 3$, így a lehetőségek száma:
$$F_{(n-3)+2} = F_{n-1}.$$

2. eset: Az 1-es személy NINCS BENNE a részhalmazban.
Ekkor a megmaradt $n - 1$ ember ($2, 3, \dots, n$) egy egyenes vonalú láncot alkot, mivel az 1-esen keresztül a kör már meg van szakítva.
Ebben az $n - 1$ hosszú egyenes sorban kell szomszédmentes részhalmazt választani.
A lehetőségek száma:
$$F_{(n-1)+2} = F_{n+1}.$$

A két diszjunkt eset összege megadja az összes megengedett részhalmaz számát:
$$F_{n-1} + F_{n+1}.$$
A definíció szerint az $L_n = F_{n-1} + F_{n+1}$ sorozat a **Lucas-sorozat**!
Így a válasz:
$$\mathbf{L_n = F_{n-1} + F_{n+1}}.$$
(Például $n = 4$-re: $L_4 = F_3 + F_5 = 2 + 5 = 7$. A 7 részhalmaz: az üres halmaz (1), az 1 eleműek (4), és a 2 elemű átellenes párok: $\{1,3\}$ és $\{2,4\}$ (2), összesen $1 + 4 + 2 = 7$.)

::: elmelet
**Elméleti háttér — Lucas-számok és körgráfok független halmazai.**

*Lucas-számok definíciója:* $L_0 = 2, L_1 = 1$, és $L_n = L_{n-1} + L_{n-2}$ ($n \ge 2$).
*Első néhány tag:* $L_1 = 1, L_2 = 3, L_3 = 4, L_4 = 7, L_5 = 11, L_6 = 18, L_7 = 29$.
*Kapcsolat a Fibonacci-számokkal:* $L_n = F_{n-1} + F_{n+1}$.
*Gráfelméleti jelentés:* Az útgráf $P_n$ független csúcshalmazainak száma $F_{n+2}$, míg a körgráf $C_n$ független csúcshalmazainak száma $L_n$.
:::

## P54. feladat

4 házaspár (8 ember) ül le egy kerek asztal köré. Hányféleképpen ülhetnek le úgy, hogy senki se üljön a saját házastársa mellett, ha:
a) a székek rögzítettek (címkézettek);
b) az asztal körüli forgatással egymásba vihető leüléseket azonosnak tekintjük?

**Megoldás.**

Alkalmazzuk a szita-formulát a házaspárok egymás mellett üléseire!
Jelölje a 4 párt $P_1, P_2, P_3, P_4$.
Legyen $A_i$ azon leülések tulajdonsága, ahol a $P_i$ házaspár tagjai egymás mellett ülnek ($1 \le i \le 4$).

Számoljuk először a forgatási ekvivalencia melletti eseteket (b) rész):
Az összes leülés kerek asztal körül $8$ ember esetén:
$$|U| = (8 - 1)! = 7! = 5040.$$

Tegyük fel, hogy $k$ rögzített házaspár tagjai egymás mellett ülnek:
- Ezen $k$ házaspár mindegyikét összevonjuk 1-1 blokkba.
- A maradék $8 - 2k$ ember különálló marad.
- Így összesen $k + (8 - 2k) = 8 - k$ egység ül a körasztal körül.
- A $8 - k$ egység kör alakú elrendezéseinek száma: $(8 - k - 1)! = (7 - k)!$.
- Mind a $k$ összefogott házaspáron belül a férj és feleség 2-féleképpen ülhet egymás mellett ($2^k$ szorzó).
Így $k$ rögzített pár szomszédsága esetén a lehetőségek száma:
$$2^k (7 - k)!.$$
A $k$ pár $\binom{4}{k}$-féleképpen választható ki.
A szita-formula szerint:
$$N_{\text{forgatás}} = \sum_{k=0}^{4} (-1)^k \binom{4}{k} 2^k (7 - k)!.$$
Számítsuk ki a tagokat:
- $k = 0$: $\binom{4}{0} 2^0 \cdot 7! = 1 \cdot 1 \cdot 5040 = 5040$.
- $k = 1$: $\binom{4}{1} 2^1 \cdot 6! = 4 \cdot 2 \cdot 720 = 5760$.
- $k = 2$: $\binom{4}{2} 2^2 \cdot 5! = 6 \cdot 4 \cdot 120 = 2880$.
- $k = 3$: $\binom{4}{3} 2^3 \cdot 4! = 4 \cdot 8 \cdot 24 = 768$.
- $k = 4$: $\binom{4}{4} 2^4 \cdot 3! = 1 \cdot 16 \cdot 6 = 96$.
Összegezve az alternáló előjelekkel:
$$N_{\text{forgatás}} = 5040 - 5760 + 2880 - 768 + 96 = \mathbf{1488}.$$

a) Ha a székek rögzítettek (címkézettek):
Minden egyes forgatási osztály pontosan 8-szorozódik, mivel az asztal 8 elforgatottja a számozott székeken mind különböző leülést ad:
$$N_{\text{címkézett}} = 8 \cdot N_{\text{forgatás}} = 8 \cdot 1488 = \mathbf{11\,904}.$$

::: elmelet
**Elméleti háttér — házaspárok kerek asztal körül és a ménage-probléma.**

*Ménage-probléma (Touchard, 1934):* Klasszikusan arra kérdez rá, hányféleképpen ülhet le $n$ házaspár úgy, hogy a nemek felváltva ülnek ÉS senki sem ül a házastársa mellett.
*Általános szita kerek asztalon:* Ha a nemek nincsenek felváltva kötve, a párok egymás mellé kerülése tiszta blokkosítással és a szita-formulával kezelhető:
$$N = \sum_{k=0}^n (-1)^k \binom{n}{k} 2^k (2n - 1 - k)!$$
forgatási ekvivalencia mellett.
:::

## P55. feladat

a) Számítsuk ki zárt alakban a páros indexű Fibonacci-számok összegét:
$$F_0 + F_2 + F_4 + \dots + F_{2n} = \ ?$$
b) Számítsuk ki zárt alakban a páratlan indexű tagok összegét is:
$$F_1 + F_3 + F_5 + \dots + F_{2n-1} = \ ?$$

**Megoldás.**

a) Írjuk fel a Fibonacci-rekurziót a páros indexű tagokra:
Mivel $F_{2k} = F_{2k+1} - F_{2k-1}$ minden $k \ge 1$-re, adjuk össze ezeket az egyenleteket $k = 1$-től $n$-ig:
$$F_2 = F_3 - F_1$$
$$F_4 = F_5 - F_3$$
$$F_6 = F_7 - F_5$$
$$\dots$$
$$F_{2n} = F_{2n+1} - F_{2n-1}.$$
Adjuk össze az egyenleteket! A jobb oldal teleszkopikusan egyszerűsödik, minden köztes páratlan indexű tag ($F_3, F_5, \dots, F_{2n-1}$) kiesik:
$$\sum_{k=1}^{n} F_{2k} = F_{2n+1} - F_1.$$
Mivel $F_1 = 1$, és $F_0 = 0$, kapjuk:
$$F_0 + F_2 + F_4 + \dots + F_{2n} = 0 + (F_{2n+1} - 1) = \mathbf{F_{2n+1} - 1}.$$

b) A páratlan indexű tagok összegzéséhez használjuk a definíciót:
$$F_{2k-1} = F_{2k} - F_{2k-2}.$$
Összegezzük $k = 1$-től $n$-ig:
$$F_1 = F_2 - F_0$$
$$F_3 = F_4 - F_2$$
$$F_5 = F_6 - F_4$$
$$\dots$$
$$F_{2n-1} = F_{2n} - F_{2n-2}.$$
A jobb oldal ismét teleszkopikus, minden páros indexű tag $F_2, F_4, \dots, F_{2n-2}$ kiesik:
$$\sum_{k=1}^{n} F_{2k-1} = F_{2n} - F_0.$$
Mivel $F_0 = 0$, a páratlan indexű tagok összege:
$$\mathbf{F_{2n}}.$$
*(Ellenőrzés: A két összeg összege a 41.b feladatbeli teljes összeget kell, hogy adja:
$(F_{2n+1} - 1) + F_{2n} = (F_{2n+1} + F_{2n}) - 1 = F_{2n+2} - 1$, ami tökéletesen egyezik!)*

::: elmelet
**Elméleti háttér — paritás szerinti Fibonacci-összegek és teleszkópok.**

*Teleszkopikus paritási összefüggések:*
- Páros indexek: $\sum_{k=0}^n F_{2k} = F_{2n+1} - 1$.
- Páratlan indexek: $\sum_{k=1}^n F_{2k-1} = F_{2n}$.
- Teljes összeg: a kettő összege $F_{2n+1} - 1 + F_{2n} = F_{2n+2} - 1$.
*Indukciós bizonyítás:* Bázis $n = 1$: $F_0 + F_2 = 0 + 1 = 1$, jobb oldal $F_3 - 1 = 2 - 1 = 1$. Lépés: $(F_{2n+1} - 1) + F_{2n+2} = F_{2n+3} - 1$.
:::

# A 4. feladatsorhoz

## P56. feladat

Legyen a $G$ gráf csúcshalmaza $V = \{1, 2, \dots, 60\}$. Határozzuk meg $G$ éleinek és összefüggőségi komponenseinek számát, ha az éleket a következő szabályok szerint adjuk meg ($i \neq j$):
a) $i - j$ páratlan;
b) $i - j$ osztható 4-gyel;
c) $|i - j| \in \{1, 5\}$!

**Megoldás.**

a) Két szám különbsége, $i - j$ pontosan akkor páratlan, ha az egyik páros, a másik páratlan.
Ez azt jelenti, hogy minden páros csúcs össze van kötve minden páratlan csúccsal, és semelyik két azonos paritású csúcs között nincs él.
Ez egy **teljes páros gráf**: $K_{30, 30}$ (30 páros és 30 páratlan szám van 1-től 60-ig).
- Élek száma: $e = 30 \cdot 30 = \mathbf{900}$.
- Összefüggőségi komponensek száma: mivel bármely páros csúcs össze van kötve bármely páratlan csúccsal, a gráf összefüggő, így a komponensek száma **$1$**.

b) $i - j$ akkor és csak akkor osztható 4-gyel, ha $i \equiv j \pmod 4$.
Ez azt jelenti, hogy két csúcs pontosan akkor van összekötve éllel, ha azonos maradékot adnak 4-gyel osztva.
A csúcshalmaz 4 diszjunkt osztályra (maradékosztályra) bomlik:
- $1 \pmod 4$: $1, 5, 9, \dots, 57$ (15 csúcs)
- $2 \pmod 4$: $2, 6, 10, \dots, 58$ (15 csúcs)
- $3 \pmod 4$: $3, 7, 11, \dots, 59$ (15 csúcs)
- $0 \pmod 4$: $4, 8, 12, \dots, 60$ (15 csúcs).
Minden osztályon belül minden csúcs össze van kötve minden más csúccsal (egy-egy $K_{15}$ teljes gráf), míg különböző osztályok között egyáltalán nincs él.
- Összefüggőségi komponensek száma: **$4$** darab független $K_{15}$ komponens van.
- Élek száma: $4 \cdot \binom{15}{2} = 4 \cdot \frac{15 \cdot 14}{2} = 4 \cdot 105 = \mathbf{420}$.

c) $|i - j| \in \{1, 5\}$:
- Összefüggőség: Mivel a távolság 1 is lehet ($|i - (i+1)| = 1$), az $1 - 2 - 3 - \dots - 60$ élek mind szerepelnek a gráfban.
Ez az élsorozat egy 60 csúcsú Hamilton-utat alkot, amely egymaga összeköti az összes csúcsot!
Ezért a gráf összefüggő, azaz komponenseinek száma: **$1$**.
- Élek száma:
1. $|i - j| = 1$ élek: a szomszédos számok párjai: $\{1,2\}, \{2,3\}, \dots, \{59,60\}$, ez pontosan $60 - 1 = 59$ él.
2. $|i - j| = 5$ élek: $\{1,6\}, \{2,7\}, \dots, \{55,60\}$, ez pontosan $60 - 5 = 55$ él.
Mivel a két éltípus távolsága diszjunkt ($1 \neq 5$), az élek nem fednek át.
Az összes élek száma:
$$e = 59 + 55 = \mathbf{114}.$$

::: elmelet
**Elméleti háttér — gráfok alapelemei és relációk által indukált gráfok.**

*Egyszerű gráf:* $G = (V, E)$, ahol $V$ a csúcsok halmaza, $E \subseteq \binom{V}{2}$ az élek halmaza (hurokél- és többszörös él mentes).
*Összefüggőségi komponens:* A csúcsok ekvivalenciaosztályai az „út vezet közöttük” reláció szerint.
*Teljes páros gráf ($K_{n_1, n_2}$):* $V = V_1 \cup V_2$, $E = \{uv : u \in V_1, v \in V_2\}$. Élszáma $n_1 n_2$.
*Ekvivalenciareláció által indukált gráf:* Ha $u \sim v$ egy ekvivalenciareláció, a gráf diszjunkt teljes gráfok uniója: $G = \bigcup K_{n_i}$.
:::

## P57. feladat

Egy nemzetközi teniszversenyen 21 játékos vett részt.
a) Lehetséges-e olyan pillanat a verseny során, amikor minden játékos pontosan 5 mérkőzést játszott le?
b) Lehetséges-e olyan állapot, amikor pontosan 15 játékos 4 mérkőzésen, 6 játékos pedig 5 mérkőzésen van túl?
c) Mi a helyzet, ha 20 játékos indul, és mindenki pontosan 7 meccset játszott le?

**Megoldás.**

Modellezzük a bajnokságot egyszerű gráffal:
A csúcsok a játékosok ($|V| = n$), és két csúcs között pontosan akkor van él, ha a két játékos már játszott egymással.
Egy csúcs foka, $d(v)$ a játékos által eddig lejátszott mérkőzések száma.

a) Tegyük fel, hogy $n = 21$, és minden játékos foka $d(v) = 5$.
Az Euler-féle fokszámösszeg-tétel (kézfogási lemma) szerint tetszőleges gráfban:
$$\sum_{v \in V} d(v) = 2e,$$
ahol $e$ az élek száma.
A jobb oldal $2e$ páros szám, ezért a bal oldali fokszámösszegnek is kötelezően párosnak kell lennie!
Itt a fokszámok összege:
$$\sum_{v \in V} d(v) = 21 \cdot 5 = 105.$$
Mivel 105 páratlan szám, a fokszámösszeg **nem lehet páros**, ami ellentmondás!
Tehát **nem létezhet** olyan pillanat, amikor mindenki pontosan 5 meccsen van túl.

b) Itt 15 játékos foka 4, és 6 játékos foka 5.
A fokszámok összege:
$$\sum_{v \in V} d(v) = 15 \cdot 4 + 6 \cdot 5 = 60 + 30 = 90.$$
A fokszámösszeg 90, ami páros szám!
A páratlan fokú csúcsok száma pontosan 6 (a 6 darab 5 fokú játékos), ami páros szám.
Ez kielégíti a kézfogási lemma paritási feltételét.
Valóban realizálható is egy ilyen gráf (pl. a 6 darab 5 fokú csúcsot egymás között párosítjuk, a többi fokot pedig szabályosan kiegészítjük).
Tehát ez az állapot **lehetséges**.

c) $n = 20$ játékos, mindenki foka 7:
A fokszámok összege:
$$20 \cdot 7 = 140.$$
Ez páros szám! A páratlan fokú csúcsok száma 20 (páros).
Mivel $d(v) = 7 \le 20 - 1 = 19$, és $n \cdot d$ páros, létezik 7-reguláris egyszerű gráf 20 csúcson.
Ezért ez az állapot is **lehetséges** (a lejátszott meccsek száma $e = 140 / 2 = 70$).

::: elmelet
**Elméleti háttér — kézfogási lemma és fokszámösszeg-tétel.**

*Euler-tétel (Kézfogási lemma):* Minden véges gráfban a csúcsok fokszámainak összege megegyezik az élek számának kétszeresével:
$$\sum_{v \in V} d(v) = 2e.$$
*Alapvető következmény:* Minden gráfban a páratlan fokú csúcsok száma páros!
*Kombinatorikus bizonyítás kettős leszámlálással:* Számoljuk meg az $(u, e)$ illeszkedő csúcs-él párokat! Csúcsonként számlálva $\sum d(v)$, élenként számlálva minden élnek 2 végpontja van ($2e$).
:::

## P58. feladat

Egy egyszerű $G$ gráfot önkomplementernek nevezünk, ha izomorf a $\overline{G}$ komplementerével ($G \cong \overline{G}$).
a) Mutassunk példát 4, illetve 5 csúcsú önkomplementer gráfra!
b) Létezhet-e 6 csúcsú önkomplementer gráf?
c) Milyen maradékot adhat egy $n$ csúcsú önkomplementer gráf csúcsszáma 4-gyel osztva?

**Megoldás.**

a) 1. *4 csúcsú önkomplementer gráf:*
Egy 4 csúcsú egyszerű gráf éleinek és komplementere éleinek összege a teljes gráf élszáma:
$$e(G) + e(\overline{G}) = \binom{4}{2} = 6.$$
Mivel $G \cong \overline{G}$, élszámuk megegyezik: $e(G) = e(\overline{G}) = 6 / 2 = 3$.
Tekintsük a 4 csúcsú utat: $P_4$, csúcsai $a, b, c, d$, élei: $ab, bc, cd$.
A $P_4$ komplementere azon élekből áll, amelyek nincsenek benne $P_4$-ben:
$E(\overline{P_4}) = \{ac, ad, bd\}$.
Ez a komplementer gráf egy út: $c - a - d - b$, amely izomorf $P_4$-gyel!
Tehát **$P_4$ önkomplementer**.

2. *5 csúcsú önkomplementer gráf:*
$\binom{5}{2} = 10$, így $e(G) = 10 / 2 = 5$.
Tekintsük az 5 csúcsú kört: $C_5$, élei $v_1 v_2, v_2 v_3, v_3 v_4, v_4 v_5, v_5 v_1$.
A $C_5$ komplementere a kör átlóiból áll:
$v_1 v_3, v_3 v_5, v_5 v_2, v_2 v_4, v_4 v_1$.
Ez pontosan a szabályos ötszög átlói által alkotott „ötágú csillag”, amely szintén egy 5 hosszú kör:
$$v_1 - v_3 - v_5 - v_2 - v_4 - v_1.$$
Mivel ez is izomorf $C_5$-tel, a **$C_5$ kör önkomplementer**.

b) *6 csúcsú gráf vizsgálata:*
Ha $G$ egy 6 csúcsú egyszerű gráf, akkor a teljes gráf élszáma:
$$\binom{6}{2} = \frac{6 \cdot 5}{2} = 15.$$
Ha $G$ izomorf lenne a komplementerével, akkor $e(G) = e(\overline{G})$ miatt:
$$2 \cdot e(G) = 15 \implies e(G) = 7{,}5.$$
Mivel egy gráf éleinek száma csak nemnegatív egész szám lehet, $e(G)$ nem lehet $7{,}5$!
Tehát **nem létezhet 6 csúcsú önkomplementer gráf**.

c) *Csúcsszám általános vizsgálata modulo 4:*
Egy $n$ csúcsú önkomplementer gráf esetén:
$$2 \cdot e(G) = \binom{n}{2} = \frac{n(n-1)}{2} \implies e(G) = \frac{n(n-1)}{4}.$$
Ahhoz, hogy $e(G)$ egész szám legyen, a számlálónak, $n(n-1)$-nek oszthatónak kell lennie 4-gyel:
$$4 \mid n(n-1).$$
Mivel $n$ és $n - 1$ egymást követő egész számok, egyikük páros, a másik páratlan (relatív prímek).
Ezért a 4 nem oszolhat meg közöttük:
- Vagy $4 \mid n$, ami azt jelenti, hogy $n \equiv 0 \pmod 4$;
- Vagy $4 \mid (n - 1)$, ami azt jelenti, hogy $n \equiv 1 \pmod 4$.
A csúcsszám tehát csak **$0$ vagy $1$ maradékot adhat 4-gyel osztva**!

::: elmelet
**Elméleti háttér — önkomplementer gráfok struktúrája.**

*Komplementer gráf ($\overline{G}$):* $V(\overline{G}) = V(G)$ és $uv \in E(\overline{G}) \iff uv \notin E(G)$ ($u \neq v$).
*Önkomplementer gráf:* Olyan $G$, amelyre $G \cong \overline{G}$.
*Szükséges feltétel:* $e(G) = \frac{1}{2}\binom{n}{2} = \frac{n(n-1)}{4} \in \mathbb{N} \implies n \equiv 0 \text{ vagy } 1 \pmod 4$.
*Összefüggőség:* Minden önkomplementer gráf szükségképpen összefüggő (a 65. feladat miatt $G$ és $\overline{G}$ közül legalább az egyik összefüggő, és mivel izomorfak, mindkettő az), és az átmérője legfeljebb 3.
:::

## P59. feladat

Egy 6 csúcsú, egyszerű, összefüggő gráfban szerepel $1, 2, 3, 4$ és $5$ fokú csúcs is.
Adjuk meg az összes olyan lehetséges értéket, ami a hatodik csúcs foka lehet!

**Megoldás.**

Jelölje a 6 csúcsot $v_1, v_2, v_3, v_4, v_5, v_6$.
Tegyük fel, hogy $d(v_1) = 1, d(v_2) = 2, d(v_3) = 3, d(v_4) = 4, d(v_5) = 5$, és legyen a hatodik csúcs foka $d(v_6) = x$.
Mivel a gráf egyszerű, és 6 csúcsa van, bármely csúcs foka legfeljebb $6 - 1 = 5$ lehet.
Továbbá a gráf összefüggő, ezért nem tartalmazhat izolált csúcsot ($0$ fokú csúcsot), így:
$$1 \le x \le 5.$$

1. *Paritási feltétel vizsgálata (kézfogási lemma):*
A fokszámok összege páros kell legyen:
$$\sum_{i=1}^6 d(v_i) = 1 + 2 + 3 + 4 + 5 + x = 15 + x.$$
Ahhoz, hogy $15 + x$ páros legyen, $x$-nek **páratlannak** kell lennie!
Mivel $1 \le x \le 5$, az $x$ lehetséges értékei a paritás szerint:
$$x \in \{1, 3, 5\}.$$

2. *A fokszámok kombinatorikus illeszkedésének vizsgálata:*
- $v_5$ foka 5: egyszerű gráfban 6 csúcs esetén az 5 fokú csúcs **minden más csúccsal össze van kötve**!
Ezért $v_5$ szomszédja $v_1$-nek, $v_2$-nek, $v_3$-nak, $v_4$-nek és $v_6$-nak is.
- Ebből következik, hogy a csúcsok mindegyikének van legalább egy éle (a $v_5$-be menő él).
Különösen $v_1$ foka pontosan 1, és mivel már össze van kötve $v_5$-tel, $v_1$-nek **semelyik más csúccsal nem lehet éle**!
Tehát $v_1$ csak $v_5$-tel van összekötve, senki mással.
- Most vizsgáljuk a $v_4$ csúcsot ($d(v_4) = 4$):
$v_4$ 4 csúccsal van összekötve a 6 csúcs közül.
Mivel $v_1$-gyel nincs összekötve (és önmagával sincs él), a maradék 4 csúccsal minddel össze kell lennie kötve:
$v_4$ össze van kötve $v_2, v_3, v_5, v_6$ mindegyikével!
- Nézzük meg, hogy a csúcsoknak eddig hány éle van garantáltan:
  - $v_5$ össze van kötve mindenkivel ($v_1, v_2, v_3, v_4, v_6$).
  - $v_4$ össze van kötve $v_2, v_3, v_5, v_6$-tal.
  - $v_1$ kész ($d = 1$, csak $v_5$).
  - $v_2$-nek eddig van éle $v_5$-be és $v_4$-be, ami már $2$ él! Mivel $d(v_2) = 2$, a $v_2$ csúcs foka betelt: **$v_2$-nek nem lehet több éle**!
  - Tehát $v_2$ nincs összekötve sem $v_3$-mal, sem $v_6$-tal.
- Vizsgáljuk most $v_3$-at ($d(v_3) = 3$):
$v_3$ már össze van kötve $v_5$-tel és $v_4$-gyel (ez 2 él).
Mivel $v_1$-gyel és $v_2$-vel nincs éle, a hiányzó 3. élét csak a $v_6$ csúccsal alkothatja!
Tehát a $v_3 v_6$ élnek kötelezően léteznie kell.
- Ezzel a gráf összes éle egyértelműen meghatározottá vált!
Számoljuk meg $v_6$ szomszédait ebben a teljesen meghatározott gráfban:
$v_6$ szomszédai: $v_5, v_4, v_3$.
Tehát $v_6$ foka pontosan:
$$x = d(v_6) = \mathbf{3}.$$
Sem $x = 1$, sem $x = 5$ nem valósulhat meg.
A hatodik csúcs foka kizárólag **3** lehet.

::: elmelet
**Elméleti háttér — fokszámok strukturális kikényszerítése és Havel-Hakimi logika.**

*Maximális fokú csúcs hatása:* Egy $n - 1$ fokú csúcs univerzális szomszéd, minden más csúcs fokát legalább 1-gyel terheli.
*Minimális fokú csúcs lezárása:* Ha egy csúcs foka 1, és összekötöttük az univerzális csúccsal, minden más kapcsolatból kizáródik.
*Dominó-effektus:* A szélső fokszámok ($n-1, 1, n-2, 2, \dots$) egymás után mereven meghatározzák a gráf élszerkezetét, így a középső fokszám gyakran egyetlen értékre kényszerül.
:::

## P60. feladat

Legyen $G$ egy $n$ csúcsú egyszerű gráf. Bizonyítsuk be, hogy az alábbi állítások ekvivalensek egymással:
1. $G$ fa (azaz összefüggő és körmentes);
2. $G$ összefüggő és pontosan $n - 1$ éle van;
3. $G$ körmentes és pontosan $n - 1$ éle van;
4. $G$-ben bármely két csúcs között pontosan egy egyszerű út vezet!

**Megoldás.**

A négy állítás ekvivalenciáját egy körkörös implikációs lánccal igazoljuk: (1) $\implies$ (2) $\implies$ (3) $\implies$ (4) $\implies$ (1).

*(1) $\implies$ (2): Ha $G$ összefüggő és körmentes, akkor $e = n - 1$.*
Bizonyítás teljes indukcióval a csúcsszám, $n$ szerint:
- Bázislépés: $n = 1$-re a körmentes egyszerű gráfnak 0 éle van, $e = 1 - 1 = 0$. Igaz.
- Indukciós lépés ($n \ge 2$): Mivel $G$ körmentes és véges, nem tartalmazhat minden csúcs legalább 2 fokot (a 64. feladat szerint akkor lenne kör), így van benne legalább egy $v$ csúcs, melyre $d(v) \le 1$. Mivel összefüggő és $n \ge 2$, $d(v) = 1$ (levél).
Hagyjuk el a $v$ levelet és a hozzá kapcsolódó egyetlen élet!
A megmaradt $G' = G - v$ gráf $n - 1$ csúcsú, továbbra is összefüggő és körmentes.
Az indukciós feltevés szerint $G'$ élszáma $e(G') = (n - 1) - 1 = n - 2$.
A visszatett éllel együtt: $e(G) = e(G') + 1 = n - 1$. $\blacksquare$

*(2) $\implies$ (3): Ha $G$ összefüggő és $e = n - 1$, akkor $G$ körmentes.*
Tegyük fel indirekt, hogy $G$ tartalmaz egy $C$ kört.
Hagyjuk el a $C$ kör egy tetszőleges $e_0$ élét!
Mivel a kör éle alternatív úton kikerülhető, a gráf összefüggősége megmarad.
Ha még mindig van kör, hagyjunk el újabb élt.
Végül egy olyan összefüggő, körmentes $T$ feszítőfát kapunk, melynek csúcsszáma $n$.
Az (1) $\implies$ (2) állítás szerint $T$ éleinek száma $n - 1$.
De $T$-t $G$-ből élek elhagyásával kaptuk, így $e(T) < e(G) = n - 1$, ami ellentmondás!
Tehát $G$-ben nem lehetett kör, $G$ körmentes. $\blacksquare$

*(3) $\implies$ (4): Ha $G$ körmentes és $e = n - 1$, akkor bármely két csúcs között pontosan egy út vezet.*
Legyenek $G$ összefüggőségi komponensei $G_1, \dots, G_k$ ($n_i$ csúccsal).
Minden komponens összefüggő és körmentes, tehát fa!
Az (1) $\implies$ (2) szerint az $i$-edik komponens élszáma $n_i - 1$.
Az összes él száma:
$$e(G) = \sum_{i=1}^k (n_i - 1) = \sum_{i=1}^k n_i - k = n - k.$$
A feltétel szerint $e(G) = n - 1$, így $n - k = n - 1 \implies k = 1$.
Tehát $G$ összefüggő!
Mivel összefüggő, bármely két csúcs között van legalább egy út.
Ha két csúcs, $u$ és $v$ között két különböző egyszerű út vezetne, akkor azok elágazása és újraegyesülése egy kört alkotna, ami ellentmond a körmentességnek.
Tehát bármely két csúcs között pontosan egy út vezet. $\blacksquare$

*(4) $\implies$ (1): Ha bármely két csúcs között pontosan egy út vezet, akkor $G$ fa.*
Mivel bármely két csúcs között van út, $G$ összefüggő.
Ha $G$-ben lenne egy kör, akkor a kör bármely két csúcsa között a kör két íve mentén két különböző egyszerű út vezetne, ami ellentmond az egyértelműségnek.
Tehát $G$ körmentes és összefüggő, azaz fa. $\blacksquare$

::: elmelet
**Elméleti háttér — fák ekvivalens karakterizációi.**

*A fa alapvető ekvivalenciái:* Egy $n$ csúcsú egyszerű $G$ gráfra az alábbiak ekvivalensek:
1. $G$ fa (összefüggő és körmentes);
2. $G$ összefüggő és $e = n - 1$;
3. $G$ körmentes és $e = n - 1$;
4. Bármely két csúcs között pontosan egy egyszerű út vezet;
5. $G$ minimálisan összefüggő (bármely él elhagyásával szétesik);
6. $G$ maximálisan körmentes (bármely nem-él behúzásával kör keletkezik).
:::

## P61. feladat

a) Bizonyítsuk be, hogy minden legalább kétcsúcsú fában van legalább 2 darab elsőfokú csúcs (levél)!
b) Igazoljuk, hogy ha egy fa maximális foka $\Delta \ge 2$, akkor a fa legalább $\Delta$ levelet tartalmaz!
c) Hány éle van egy $n$ pontú, $k$ összefüggőségi komponensből álló körmentes egyszerű gráfnak (erdőnek)?

**Megoldás.**

a) *1. bizonyítás (leghosszabb úttal):*
Tekintsünk a fában egy leghosszabb egyszerű utat: $P = v_1 v_2 \dots v_m$.
Mivel $n \ge 2$ és a fa összefüggő, a leghosszabb út hossza legalább 1 él ($m \ge 2$).
Vizsgáljuk a $v_1$ végpontot:
$v_1$ össze van kötve $v_2$-vel.
Ha $v_1$-nek lenne egy másik szomszédja, $u \neq v_2$:
- Ha $u$ rajta van a $P$ úton ($u = v_i$, $i \ge 3$), akkor a $v_1 v_2 \dots v_i v_1$ egy kört alkotna, ami fában lehetetlen!
- Ha $u$ nincs rajta a $P$ úton, akkor az $u v_1 v_2 \dots v_m$ egy szigorúan hosszabb egyszerű út lenne, ami ellentmond annak, hogy $P$ leghosszabb út!
Ezért $v_1$-nek nem lehet más szomszédja, így $d(v_1) = 1$.
Ugyanez az érvelés érvényes a $P$ út másik végpontjára, $v_m$-re is: $d(v_m) = 1$.
Mivel $m \ge 2$, $v_1 \neq v_m$, így van legalább 2 elsőfokú csúcs. $\blacksquare$

*2. bizonyítás (kézfogási lemmával):*
Jelölje $l$ a levelek számát ($d(v) = 1$). Összefüggőség miatt nincs 0 fokú csúcs, így a többi $n - l$ csúcs foka legalább 2.
A fokszámösszeg:
$$2(n - 1) = \sum_{v \in V} d(v) = \sum_{\text{levél}} 1 + \sum_{\text{nem levél}} d(v) \ge l + 2(n - l) = 2n - l.$$
Átrendezve:
$$2n - 2 \ge 2n - l \implies l \ge 2. \quad \blacksquare$$

b) Legyen $v_0$ a fa egy $\Delta$ fokú csúcsa, szomszédai $u_1, u_2, \dots, u_\Delta$.
Hagyjuk el a $v_0$ csúcsot!
Ekkor a fa pontosan $\Delta$ darab összefüggőségi komponensre (részfára) esik szét ($T_1, T_2, \dots, T_\Delta$), ahol $u_i \in T_i$.
Mindegyik $T_i$ részfában keressünk egy levelet:
- Ha $|V(T_i)| = 1$, akkor $u_i$ maga az egyetlen csúcs, és az eredeti fában csak $v_0$-lal volt összekötve, így az eredeti fában levél ($d(u_i) = 1$).
- Ha $|V(T_i)| \ge 2$, akkor az a) pont szerint $T_i$-ben van legalább 2 levél. Ebből legfeljebb az egyik lehet $u_i$ (amely az eredeti fában $v_0$-lal össze volt kötve, így foka megnőhetett 2-re). A másik levél azonban $v_0$-lal nem volt összekötve, így az eredeti fában is elsőfokú csúcs maradt!
Tehát mind a $\Delta$ darab diszjunkt részfában található legalább egy olyan levél, amely az eredeti fának is levele.
Mivel a részfák diszjunktak, a fában legalább **$\Delta$ darab levél** található. $\blacksquare$

c) Egy erdő körmentes egyszerű gráf.
Legyenek a komponensei $T_1, \dots, T_k$, csúcsszámaik $n_1, \dots, n_k$, ahol $\sum n_i = n$.
Mivel minden komponens összefüggő és körmentes, mindegyik egy-egy fa!
A 60. feladat szerint egy $n_i$ csúcsú fa élszáma $n_i - 1$.
Az erdő éleinek száma a komponensek élszámainak összege:
$$e = \sum_{i=1}^k (n_i - 1) = \sum_{i=1}^k n_i - \sum_{i=1}^k 1 = \mathbf{n - k}.$$

::: elmelet
**Elméleti háttér — fák levelei és erdők élszáma.**

*Levél (elsőfokú csúcs):* $d(v) = 1$. A fák levél-elhagyással könnyen indukálhatók.
*Leghosszabb út módszere:* A kombinatorika és gráfelmélet egyik legerősebb fogása: véges gráfban mindig létezik leghosszabb út, és annak végpontjai nem mehetnek „ki” az útból, így szomszédaik mind az útra kényszerülnek.
*Erdők alaptétele:* Egy $n$ csúcsú erdő élszáma $e = n - c(G)$, ahol $c(G)$ az összefüggőségi komponensek száma.
:::

## P62. feladat

a) Mutassuk meg, hogy bármely legalább 2 csúcsú egyszerű gráfban létezik legalább két olyan csúcs, amelyek foka megegyezik! Igaz-e ez többszörös élek vagy hurokélek megengedése esetén is?
b) Bizonyítsuk be, hogy minden egyszerű gráfban a páratlan fokú csúcsok száma páros!
c) Melyek azok az összefüggő egyszerű gráfok, amelyekben bármely két élnek van közös végpontja?

**Megoldás.**

a) Legyen $G$ egy $n$ csúcsú egyszerű gráf ($n \ge 2$).
Egy egyszerű gráfban a fokszámok lehetséges értékei a $\{0, 1, 2, \dots, n - 1\}$ halmazból kerülhetnek ki (ez $n$ darab lehetséges érték).
Vegyük észre azonban, hogy a **$0$ és az $n - 1$ fokszám egyszerre nem fordulhat elő**:
- Ha van $0$ fokú csúcs, akkor az egy izolált csúcs, amelynek semelyik másik csúccsal sincs éle.
- Ha van $n - 1$ fokú csúcs, akkor az mind az $n - 1$ másik csúccsal össze van kötve, így az izolált csúccsal is össze kellene lennie kötve, ami ellentmondás!
Ezért a gráfban ténylegesen előforduló fokszámok vagy a $\{1, 2, \dots, n - 1\}$ halmazból, vagy a $\{0, 1, \dots, n - 2\}$ halmazból kerülnek ki.
Mindkét lehetséges értékhalmaz mérete pontosan $n - 1$.
Mivel a gráfnak $n$ csúcsa van, és a fokszámok legfeljebb $n - 1$ különböző értéket vehetnek fel, a Dirichlet-féle skatulya-elv szerint **létezik legalább két olyan csúcs, melyeknek foka megegyezik**. $\blacksquare$

*Nem egyszerű gráfok esetén:*
- Többszörös élek megengedése esetén az állítás **nem igaz**: például 2 csúcs között 2 párhuzamos él esetén a fokok 2 és 2 (itt egyeznek), de 3 csúcson a fokok lehetnek $0, 1, 3$ (ha $v_2, v_3$ között 1 él, és $v_3$-ból hurokél van).
- Hurokélek esetén: 2 csúcs esetén az egyiken nincs él ($d = 0$), a másikon egy hurokél van ($d = 2$). A fokok 0 és 2, különböznek! Tehát hurokélek megengedésével **nem igaz**.

b) A kézfogási lemma szerint $\sum_{v \in V} d(v) = 2e$ páros szám.
Bontsuk a fokszámösszeget a páros és páratlan fokú csúcsok összegére:
$$\sum_{v: d(v) \text{ páros}} d(v) + \sum_{v: d(v) \text{ páratlan}} d(v) = 2e.$$
A bal oldali első tag páros számok összegeként páros.
Ahhoz, hogy a teljes összeg páros legyen, a második tagnak is párosnak kell lennie.
Páratlan számok összege pontosan akkor páros, ha a tagok száma páros!
Ezért a páratlan fokú csúcsok száma szükségképpen **páros**. $\blacksquare$

c) Keressük azon összefüggő egyszerű gráfokat, ahol bármely két él metszi egymást.
1. eset: Nincs 3 független csúcsot összekötő 3 él.
Ha a gráfnak van körmentes része: ha van egy csúcs, amely mindegyik élnek végpontja, akkor a gráf egy **csillaggráf**: $K_{1, m}$ ($m \ge 1$).
Ebben az összes él a központi csúcsban találkozik, így bármely két él metszi egymást.
2. eset: Ha a gráfban nincs olyan csúcs, amely minden élhez hozzátartozna:
Legyen három él $e_1, e_2, e_3$. Ahhoz, hogy páronként messék egymást, de ne egyetlen pontban fussanak össze, a végpontjaiknak egy 3 hosszú kört kell alkotniuk: **$K_3$** (háromszög).
Lehet-e a $K_3$-hoz újabb élet hozzáadni?
Ha behúznánk egy 4. élet, az vagy egy új csúcsba menne (ekkor a szemközti élt nem metszené), vagy többszörös él lenne (ami egyszerű gráfban tilos).
Így a keresett összefüggő gráfok kizárólag:
- a csillaggráfok ($K_{1, m}$, ahol $m \ge 1$);
- a háromszög ($K_3$).

::: elmelet
**Elméleti háttér — fokszám-invariánsok és metsző élcsaládok.**

*Erdős–Gallai fokszám-skatulya:* A fokszámok azonos voltának bizonyítása a Dirichlet-elv egyik legklasszikusabb alkalmazása.
*Erdős–Ko–Rado jellegű élszerkezetek:* Azok a gráfok, amelyekben nincs 2 független él (matching number $\nu(G) = 1$), a Gallai-tétel szerint pontosan a csillagok $K_{1, m}$ és a háromszög $K_3$.
:::

## P63. feladat

Bizonyítsuk be a Ramsey-tétel alap esetét ($R(3,3) = 6$):
Egy 6 fős társaságban mindig van 3 olyan ember, akik páronként ismerik egymást, vagy van 3 olyan ember, akik páronként nem ismerik egymást!
Mutassunk példát olyan 5 csúcsú gráfra, amely sem $K_3$-at, sem $\overline{K_3}$-at nem tartalmaz!

**Megoldás.**

Modellezzük a problémát egy 6 csúcsú teljes gráf ($K_6$) éleinek két színnel (piros és kék) való színezésével:
- Piros él: ismerik egymást;
- Kék él: nem ismerik egymást.
A feladat azt állítja, hogy bármely 2-élszínezésben létezik egyszínű (monokromatikus) háromszög ($K_3$).

Válasszunk ki egy tetszőleges $v$ csúcsot a 6 csúcs közül!
A $v$ csúcsból $6 - 1 = 5$ él indul ki a többi 5 csúcsba.
Ezen 5 él mindegyike piros vagy kék színű.
A Dirichlet-féle skatulya-elv szerint az 5 él közül legalább $\lceil 5 / 2 \rceil = 3$ él azonos színű!
Az általánosság megszorítása nélkül tegyük fel, hogy ez a 3 él **piros** színű.
Jelölje ezen 3 piros él másik végpontját $a, b, c$.
Tehát a $va, vb, vc$ élek mind pirosak.

Most vizsgáljuk meg az $\{a, b, c\}$ csúcshármas közötti 3 élt ($ab, bc, ca$):
1. eset: Ha az $ab, bc, ca$ élek közül **bármelyik piros** (például az $ab$ él piros),
akkor a $\{v, a, b\}$ háromszög mindhárom éle ($va, vb, ab$) piros színű!
Ekkor kaptunk egy csupa piros háromszöget (3 ember, akik páronként ismerik egymást).
2. eset: Ha az $ab, bc, ca$ élek közül **egyik sem piros**,
akkor mindhárom él kötelezően **kék** színű!
Ekkor az $\{a, b, c\}$ háromszög egy csupa kék háromszög (3 ember, akik páronként nem ismerik egymást).
Mivel más lehetőség nincs, mindenképpen létezik egyszínű háromszög! $\blacksquare$

*5 csúcsú ellenpélda ($R(3,3) > 5$):*
Tekintsük az 5 csúcsú kört, $C_5$-öt:
- Legyenek a $C_5$ kör élei pirosak (5 él).
- A komplementerének élei (a kör átlói) legyenek kékek (5 él).
A $C_5$ körben nincsenek háromszögek, mert a legrövidebb kör hossza 5.
A kék élek szintén egy 5 hosszú kört alkotnak (a csillagot), így abban sincs háromszög.
Ezért a $C_5$ színezésben sem piros, sem kék háromszög nem található!
Ez bizonyítja, hogy $R(3,3) = 6$ éles. $\blacksquare$

::: elmelet
**Elméleti háttér — Ramsey-tétel és Ramsey-számok.**

*Ramsey-szám ($R(s, t)$):* A legkisebb olyan $n$ természetes szám, amelyre bármely $n$ csúcsú egyszerű gráfban létezik $s$ méretű klikk ($K_s$) VAGY $t$ méretű független csúcshalmaz ($\overline{K_t}$).
*Nevezetes értékek:* $R(3,3) = 6$, $R(3,4) = 9$, $R(4,4) = 18$.
*Ramsey-tétel (1930):* Minden $s, t \ge 2$ egészre $R(s, t)$ véges, és $R(s, t) \le R(s-1, t) + R(s, t-1)$.
*Filozófia:* „A teljes rendetlenség lehetetlen” — kellően nagy struktúrákban mindig elkerülhetetlen a szabályos részstruktúrák megjelenése.
:::

## P64. feladat

a) Mutassuk meg, hogy ha egy véges egyszerű gráfban minden csúcs foka legalább 2 ($\delta(G) \ge 2$), akkor a gráf tartalmaz kört! Igaz-e, hogy a gráf minden pontja benne van egy körben? Mi a helyzet végtelen gráfok esetén?
b) Mutassuk meg, hogy ha egy véges egyszerű gráfban minden csúcs foka legalább $k \ge 2$ ($\delta(G) \ge k$), akkor a gráfban van legalább $k + 1$ csúcsot tartalmazó kör!

**Megoldás.**

a) 1. *Kör létezése:*
Tekintsük a véges $G$ gráf egy leghosszabb egyszerű útját: $P = v_1 v_2 \dots v_m$.
Mivel $\delta(G) \ge 2$, a gráfban van legalább egy él, így $m \ge 2$.
Vizsgáljuk a $v_1$ végpontot!
Mivel $d(v_1) \ge 2$, a $v_1$ csúcsnak legalább 2 szomszédja van a gráfban.
Egyik szomszédja a $v_2$. Legyen $u \neq v_2$ egy másik szomszédja.
Ha $u$ nem lenne rajta a $P$ úton, akkor az $u v_1 v_2 \dots v_m$ egy szigorúan hosszabb egyszerű út lenne, ami ellentmond annak, hogy $P$ leghosszabb út!
Ezért $u$-nak kötelezően rajta kell lennie a $P$ úton: $u = v_j$ valamely $3 \le j \le m$ indexre.
Ekkor a $v_1 v_2 \dots v_j v_1$ egy egyszerű kört alkot a gráfban! $\blacksquare$

2. *Minden pont benne van-e körben?*
**Nem feltétlenül!**
Például tekintsünk egy háromszöget ($K_3$), és az egyik csúcsához ragasszunk hozzá egy másik háromszöget egy 2 hosszú úttal összekötve (vagy egy háromszöget és egy hozzá kapcsolódó kört).
Egyszerűbb ellenpélda: vegyünk két diszjunkt háromszöget, és kössük össze egyetlen éllel ($uv$ él)!
Ekkor minden csúcs foka legalább 2 (a háromszögek csúcsai 2 fokúak, az összekötő pontok 3 fokúak).
A két háromszöget összekötő $uv$ él azonban egyetlen körnek sem része (vágóél), de a csúcsok maguk a háromszögek köreiben benne vannak.
Ha olyan csúcsot akarunk, amely egyáltalán nincs benne körben:
Vegyünk két diszjunkt $K_3$-at, és kössük össze őket egy $u - w - v$ 2 hosszú úttal!
Ekkor $d(w) = 2$, minden más csúcs foka 2 vagy 3 (tehát $\delta \ge 2$).
A $w$ csúcs azonban semelyik körben sincs benne, mert a $w$-n átmenő bármely körnek mindkét háromszögbe be kellene lépnie és vissza is kellene térnie, amihez legalább két független út kellene a két háromszög között, de csak $w$ köti össze őket!
Tehát **nem igaz**, hogy minden csúcs benne van egy körben.

3. *Végtelen gráfok esetén:*
**Nem igaz!**
Tekintsük a mindkét irányban végtelen utat: $\dots - v_{-2} - v_{-1} - v_0 - v_1 - v_2 - \dots$
Ebben a gráfban minden csúcs foka pontosan 2, de a gráf nem tartalmaz kört!

b) Tekintsük ismét a gráf egy leghosszabb egyszerű útját: $P = v_1 v_2 \dots v_m$.
A $v_1$ csúcs foka legalább $k$, azaz $d(v_1) \ge k$.
Az a) részben látott gondolatmenet szerint $v_1$ **mind a $d(v_1) \ge k$ szomszédjának kötelezően a $P$ úton kell lennie** (különben az út meghosszabbítható lenne)!
Jelölje ezen szomszédokat a $P$ út mentén növekvő indexekkel:
$$v_{i_1}, v_{i_2}, \dots, v_{i_d}, \qquad \text{ahol } 2 = i_1 < i_2 < \dots < i_d \le m.$$
Mivel $d \ge k$, az utolsó szomszéd indexére érvényes:
$$i_d \ge i_1 + (k - 1) = 2 + k - 1 = k + 1.$$
Tekintsük a $v_1$ csúcs és a legtávolabbi szomszédja, $v_{i_d}$ által bezárt kört:
$$C = v_1 v_2 \dots v_{i_d} v_1.$$
Ez a kör a $v_1, v_2, \dots, v_{i_d}$ csúcsokból áll, így a csúcsainak száma pontosan $i_d$.
Mivel $i_d \ge k + 1$, a $C$ kör legalább **$k + 1$ csúcsot tartalmaz**. $\blacksquare$

::: elmelet
**Elméleti háttér — leghosszabb út és körméret-becslések (Dirac-típusú lemmák).**

*A leghosszabb út végpontjának szomszédsága:* Ha $P = v_1 \dots v_m$ maximális út, akkor $N(v_1) \subseteq V(P)$.
*Következmény a körméretre:* A leghosszabb kör hossza legalább $\delta(G) + 1$.
*Girth (bőség):* A legrövidebb kör hossza. $\delta(G) \ge k$ nem garantál nagy bőséget (lehetnek benne háromszögek), de garantálja nagy kör létezését!
:::

## P65. feladat

Legyen $G$ tetszőleges egyszerű gráf.
a) Mutassuk meg, hogy $G$ és $\overline{G}$ közül legalább az egyik összefüggő!
b) Mutassuk meg, hogy ha $G$ nem összefüggő, akkor $\overline{G}$ átmérője legfeljebb 2 ($\mathrm{diam}(\overline{G}) \le 2$)!
c) Lehet-e $G$ és $\overline{G}$ is egyszerre összefüggő, ha a csúcsok száma legalább 4?

**Megoldás.**

a) és b) Tegyük fel, hogy $G$ nem összefüggő.
Ekkor $G$ csúcshalmaza legalább két összefüggőségi komponensre esik szét:
$$V(G) = V_1 \cup V_2 \cup \dots \cup V_k, \qquad k \ge 2.$$
Megmutatjuk, hogy ekkor a komplementer gráf, $\overline{G}$ nemcsak összefüggő, de bármely két csúcs távolsága $\overline{G}$-ben legfeljebb 2 (azaz $\mathrm{diam}(\overline{G}) \le 2$).

Legyen $u, v \in V(G)$ két tetszőleges különböző csúcs:
1. eset: $u$ és $v$ **különböző komponensekbe** tartoznak $G$-ben (például $u \in V_1$ és $v \in V_2$).
Mivel $u$ és $v$ különböző komponensekben vannak, $G$-ben nem futhat él közöttük ($uv \notin E(G)$).
A komplementer definíciója szerint ekkor $\overline{G}$-ben van él közöttük: $uv \in E(\overline{G})$.
Így $\overline{G}$-ben az $u$ és $v$ távolsága $d_{\overline{G}}(u, v) = 1$.

2. eset: $u$ és $v$ **ugyanabba a komponensbe** tartoznak $G$-ben (például $u, v \in V_1$).
Mivel $k \ge 2$, létezik egy másik komponens, $V_2$. Válasszunk egy tetszőleges $w \in V_2$ csúcsot!
Mivel $w \in V_2$ és $u, v \in V_1$, a $G$ gráfban sem az $uw$, sem a $vw$ él nem létezik.
Ezért a komplementer gráfban mindkét él bent van:
$$uw \in E(\overline{G}) \quad \text{és} \quad vw \in E(\overline{G}).$$
Ekkor az $u - w - v$ egy 2 hosszú út $\overline{G}$-ben $u$ és $v$ között!
Így a távolságuk $\overline{G}$-ben: $d_{\overline{G}}(u, v) \le 2$.

Mivel bármely két csúcs között van legfeljebb 2 hosszú út $\overline{G}$-ben, a $\overline{G}$ gráf összefüggő, és átmérője $\mathrm{diam}(\overline{G}) \le 2$. $\blacksquare$

c) *Lehet-e mindkettő összefüggő?*
**Igen!**
Például tekintsük a 4 csúcsú utat: $P_4$ ($a - b - c - d$).
A $P_4$ összefüggő.
A komplementere az $ac, ad, bd$ élekből áll, ami szintén egy 4 csúcsú út ($c - a - d - b$), tehát szintén összefüggő!
Hasonlóan a $C_5$ kör és komplementere is mindketten összefüggőek.
Tehát $G$ és $\overline{G}$ **lehet egyszerre összefüggő**.

::: elmelet
**Elméleti háttér — gráf és komplementere összefüggőségi duálisa.**

*Komponensek közötti élek komplementere:* Ha $G$ komponensei $V_1, \dots, V_k$, akkor $\overline{G}$-ben a különböző komponensek között az összes lehetséges él létezik (egy teljes $k$-partit gráf a komponensek között).
*Átmérő-korlát:* Ha egy gráf nem összefüggő, komplementerének átmérője legfeljebb 2.
*Összefüggőségi trichotómia:* Pontosan három eset lehetséges:
1. $G$ összefüggő, $\overline{G}$ nem;
2. $\overline{G}$ összefüggő, $G$ nem;
3. $G$ és $\overline{G}$ is összefüggő (pl. ha $n \ge 4$).
Az nem fordulhat elő, hogy egyik sem összefüggő!
:::

## P66. feladat

Igazoljuk, hogy ha $G$ egy összefüggő egyszerű gráf, akkor $G$-ben bármely két leghosszabb útnak van közös csúcsa!
Igaz-e ez az állítás nem összefüggő gráfokra is?

**Megoldás.**

Legyen $L$ a $G$ gráfban lévő leghosszabb egyszerű utak hossza (élszáma).
Tegyük fel indirekt, hogy létezik két olyan leghosszabb egyszerű út, $P$ és $Q$, amelyeknek **nincs közös csúcsuk**:
$$V(P) \cap V(Q) = \emptyset.$$
Mivel a gráf összefüggő, létezik út a $P$ út csúcsai és a $Q$ út csúcsai között.
Válasszunk egy **legrövidebb** olyan egyszerű utat, amelynek egyik végpontja $P$-n van, a másik végpontja $Q$-n van!
Jelölje ezt a minimális összekötő utat $R$, végpontjai legyenek $p \in V(P)$ és $q \in V(Q)$.
A minimális választás miatt az $R$ út belső csúcsai közül egyetlenegy sem tartozik sem $P$-hez, sem $Q$-hoz (különben találnánk rövidebb összekötő utat).
Továbbá $V(P) \cap V(Q) = \emptyset$ miatt $p \neq q$, tehát az $R$ út hossza legalább 1:
$$e(R) \ge 1.$$

A $p$ csúcs a $P$ utat két részútra osztja: $P_1$-re és $P_2$-re, amelyeknek közös pontja $p$.
Ezen két részút hosszának összege $e(P_1) + e(P_2) = e(P) = L$.
A skatulya-elv szerint a két részút közül a hosszabbik hossza legalább $L / 2$:
$$\max(e(P_1), e(P_2)) \ge \frac{L}{2}.$$
Jelölje $P'$ ezt a hosszabbik félutat ($e(P') \ge L/2$, végpontja $p$).
Hasonlóan a $q$ csúcs a $Q$ utat két részútra osztja ($Q_1$ és $Q_2$), melyek közül a hosszabbik legyen $Q'$:
$$e(Q') \ge \frac{L}{2}, \qquad \text{egyik végpontja } q.$$

Mivel $R$ belső csúcsai diszjunktak $P$-től és $Q$-tól, és $P \cap Q = \emptyset$, a $P'$, az $R$ és a $Q'$ utak egymás után fűzése:
$$P'' = P' \cup R \cup Q'$$
egy érvényes, egyszerű utat alkot a gráfban!
Számítsuk ki a $P''$ út hosszát:
$$e(P'') = e(P') + e(R) + e(Q') \ge \frac{L}{2} + 1 + \frac{L}{2} = L + 1.$$
Ez azt jelenti, hogy találtunk egy legalább $L + 1$ hosszú egyszerű utat a gráfban!
Ez azonban éles ellentmondás azzal a feltevéssel, hogy a gráfban a leghosszabb út hossza $L$ volt!
Az ellentmondás abból a feltevésből származott, hogy $P$ és $Q$ diszjunktak.
Ezért bármely két leghosszabb útnak kötelezően van legalább egy közös csúcsa. $\blacksquare$

*Nem összefüggő gráfok esetén:*
**Nem igaz!**
Ha a gráf nem összefüggő, vegyünk két izomorf, diszjunkt összefüggőségi komponenst (például két darab független $K_3$-at, vagy két független 5 hosszú utat).
Ekkor az egyik komponens leghosszabb útja és a másik komponens leghosszabb útja azonos hosszúságúak, mindketten leghosszabb utak a teljes gráfban, de nincs közös csúcsuk!

::: elmelet
**Elméleti háttér — maximális struktúrák metszése és ellenpéldák.**

*Extremális elv alkalmazása:* Ha két maximális objektum diszjunkt lenne, az összefüggőség által biztosított összeköttetéssel egy náluk szigorúan nagyobb objektumot lehetne létrehozni.
*Fák esetén:* Fákban nemcsak két leghosszabb útnak van közös pontja, hanem az **összes** leghosszabb útnak van legalább egy közös csúcsa (vagy egy közös éle), ami a fa középpontjához / súlypontjához kapcsolódik.
:::

## P67. feladat

Döntsük el a Havel–Hakimi-algoritmus segítségével, hogy realizálhatók-e egyszerű gráf fokszámsorozataként az alábbi számsorozatok:
a) $d_A = (5, 4, 3, 3, 2, 2, 1)$;
b) $d_B = (4, 4, 4, 4, 4)$;
c) $d_C = (6, 5, 5, 4, 3, 2, 1, 0)$!

**Megoldás.**

A **Havel–Hakimi-tétel** szerint egy nemnövekvő sorrendbe rendezett $(d_1, d_2, \dots, d_n)$ számsorozat pontosan akkor grafikális (realizálható egyszerű gráf fokszámsorozataként), ha a legnagyobb, $d_1$ elemet elhagyva, és a rákövetkező $d_1$ darab elem mindegyikét 1-gyel csökkentve a kapott sorozat (újrarendezés után) grafikális.

a) $d_A = (5, 4, 3, 3, 2, 2, 1)$ vizsgálata:
- Ellenőrizzük a fokszámösszeget: $5 + 4 + 3 + 3 + 2 + 2 + 1 = 20$ (páros, a kézfogási feltétel teljesül).
- 1. lépés: Hagyjuk el a legnagyobb elemet ($d_1 = 5$), és vonjunk le 1-et a rákövetkező 5 elemből:
A rákövetkező 5 elem: $4, 3, 3, 2, 2 \implies 3, 2, 2, 1, 1$.
A megmaradt utolsó elem: $1$.
Az új sorozat: $(3, 2, 2, 1, 1, 1)$. (Már rendezett.)
- 2. lépés: Hagyjuk el a legnagyobb elemet ($d_1 = 3$), és vonjunk le 1-et a következő 3 elemből:
A rákövetkező 3 elem: $2, 2, 1 \implies 1, 1, 0$.
A maradék elemek: $1, 1$.
Az új sorozat: $(1, 1, 0, 1, 1) \to$ rendezve: $(1, 1, 1, 1, 0)$.
- 3. lépés: Hagyjuk el az első $1$-est, a következőből vonjunk le 1-et:
$(0, 1, 1, 0) \to$ rendezve: $(1, 1, 0, 0)$.
- 4. lépés: Hagyjuk el az első $1$-est, a következőből vonjunk le 1-et:
$(0, 0, 0)$.
A csupa 0 sorozat triviálisan realizálható (izolált csúcsok).
A Havel–Hakimi-tétel értelmében a $d_A$ sorozat **grafikális (realizálható)**!

b) $d_B = (4, 4, 4, 4, 4)$ vizsgálata:
- Fokszámösszeg: $5 \times 4 = 20$ (páros).
- 1. lépés: $d_1 = 4$, a következő 4 elemből vonjunk le 1-et:
$(3, 3, 3, 3)$.
- 2. lépés: $d_1 = 3$, a következő 3 elemből vonjunk le 1-et:
$(2, 2, 2)$.
- 3. lépés: $d_1 = 2$, a következő 2 elemből vonjunk le 1-et:
$(1, 1)$.
- 4. lépés: $d_1 = 1 \implies (0)$.
Csupa 0 maradt, tehát $d_B$ is **grafikális** (ez a $K_5$ teljes gráf, ahol mind az 5 csúcs foka 4).

c) $d_C = (6, 5, 5, 4, 3, 2, 1, 0)$ vizsgálata:
- 8 csúcs van. A legnagyobb fok $d_1 = 6$, és van egy $0$ fokú csúcs.
Alkalmazzuk a Havel–Hakimi redukciót:
- 1. lépés: Hagyjuk el a $6$-ost, a rákövetkező 6 elemből vonjunk le 1-et:
A sorozat elemei: $5, 5, 4, 3, 2, 1 \implies 4, 4, 3, 2, 1, 0$.
A megmaradt utolsó elem: $0$.
Az új sorozat: $(4, 4, 3, 2, 1, 0, 0)$.
- 2. lépés: Hagyjuk el a $4$-est, a következő 4 elemből vonjunk le 1-et:
$4, 3, 2, 1 \implies 3, 2, 1, 0$.
A megmaradt elemek: $0, 0$.
Az új sorozat: $(3, 2, 1, 0, 0, 0)$.
- 3. lépés: Hagyjuk el a $3$-ast, a következő 3 elemből vonjunk le 1-et:
$2, 1, 0 \implies 1, 0, -1$.
Megjelent a **$-1$** negatív fokszám!
Negatív fokszám egyszerű gráfban nem létezhet.
A Havel–Hakimi-tétel értelmében a $d_C$ sorozat **NEM grafikális (nem realizálható)**!

::: elmelet
**Elméleti háttér — Havel–Hakimi-tétel és gráf-realizálhatóság.**

*Grafikális számsorozat:* Nemnegatív egészek egy sorozata, amely megvalósítható egyszerű gráf fokszámsorozataként.
*Havel–Hakimi-algoritmus (1955, 1962):*
1. Rendezzük a sorozatot csökkenő sorrendbe: $d_1 \ge d_2 \ge \dots \ge d_n$.
2. Töröljük $d_1$-et, és a rákövetkező $d_1$ tag mindegyikéből vonjunk le 1-et.
3. Rendezzük újra, és ismételjük, amíg vagy csupa 0 marad (grafikális), vagy negatív szám keletkezik, vagy nincs elég elem a levonáshoz (nem grafikális).
*Erdős–Gallai-tétel (1960):* Szükséges és elégséges feltétel: a fokszámösszeg páros, és minden $1 \le k \le n$-re:
$$\sum_{i=1}^k d_i \le k(k-1) + \sum_{i=k+1}^n \min(d_i, k).$$
:::

## P68. feladat

Melyik az a legnagyobb és legkisebb $X$ egész szám, amelyre a
$$(8, 8, 7, 5, 4, 4, 3, 2, 1, X)$$
számsorozat realizálható egy 10 csúcsú egyszerű gráf fokszámsorozataként?

**Megoldás.**

Jelölje a sorozatot $d$. A csúcsok száma $n = 10$.
Egyszerű gráfban a fokszámok $0$ és $n - 1 = 9$ közé eshetnek:
$$0 \le X \le 9.$$

1. *Paritási feltétel:*
A 10 fokszám összegének párosnak kell lennie:
$$\sum d_i = 8 + 8 + 7 + 5 + 4 + 4 + 3 + 2 + 1 + X = 42 + X.$$
Ahhoz, hogy $42 + X$ páros legyen, $X$-nek **páros számnak** kell lennie:
$$X \in \{0, 2, 4, 6, 8\}.$$

2. *A legnagyobb lehetséges $X$ keresése:*
- Próbáljuk meg az $X = 8$-at:
A sorozat rendezve: $(8, 8, 8, 7, 5, 4, 4, 3, 2, 1)$.
Alkalmazzuk a Havel–Hakimi-algoritmust:
  - Töröljük az első 8-ast, a következő 8 elemből vonjunk le 1-et:
  $8, 8, 7, 5, 4, 4, 3, 2 \implies 7, 7, 6, 4, 3, 3, 2, 1$. A maradék: $1$.
  Új sorozat: $(7, 7, 6, 4, 3, 3, 2, 1, 1)$.
  - Töröljük a 7-est, a következő 7-ből vonjunk le 1-et:
  $7, 6, 4, 3, 3, 2, 1 \implies 6, 5, 3, 2, 2, 1, 0$. A maradék: $1$.
  Új sorozat rendezve: $(6, 5, 3, 2, 2, 1, 1, 0)$.
  - Töröljük a 6-ost, a következő 6-ból vonjunk le 1-et:
  $5, 3, 2, 2, 1, 1 \implies 4, 2, 1, 1, 0, 0$. A maradék: $0$.
  Új sorozat: $(4, 2, 1, 1, 0, 0, 0)$.
  - Töröljük a 4-est, a következő 4-ből vonjunk le 1-et:
  $2, 1, 1, 0 \implies 1, 0, 0, -1$.
  Megjelent a $-1$! Tehát $X = 8$ **nem realizálható**!

- Próbáljuk meg az $X = 6$-ot:
A sorozat rendezve: $(8, 8, 7, 6, 5, 4, 4, 3, 2, 1)$.
Havel–Hakimi:
  - Töröljük az első 8-ast:
  $8, 7, 6, 5, 4, 4, 3, 2 \implies 7, 6, 5, 4, 3, 3, 2, 1$. A maradék: $1$.
  Sorozat: $(7, 6, 5, 4, 3, 3, 2, 1, 1)$.
  - Töröljük a 7-est:
  $6, 5, 4, 3, 3, 2, 1 \implies 5, 4, 3, 2, 2, 1, 0$. A maradék: $1$.
  Rendezve: $(5, 4, 3, 2, 2, 1, 1, 0)$.
  - Töröljük az 5-öst:
  $4, 3, 2, 2, 1 \implies 3, 2, 1, 1, 0$. A maradékok: $1, 0$.
  Rendezve: $(3, 2, 1, 1, 1, 0, 0)$.
  - Töröljük a 3-ast:
  $2, 1, 1 \implies 1, 0, 0$. A maradékok: $1, 0, 0$.
  Rendezve: $(1, 1, 0, 0, 0, 0)$.
  - Töröljük az 1-est:
  $(0, 0, 0, 0, 0)$. Csupa 0 maradt!
Ezért $X = 6$ **realizálható**!
A legnagyobb lehetséges érték: **$X = 6$**.

3. *A legkisebb lehetséges $X$ vizsgálata ($X = 0$ vagy $X = 2$):*
- Nézzük $X = 0$-t:
Ha $X = 0$, a sorozat tartalmaz $0$ fokú csúcsot.
De a sorozatban van két darab $8$-as és egy $7$-es fokú csúcs!
10 csúcs esetén a 0 fokú csúcs izolált. Ha elhagyjuk az izolált csúcsot, 9 csúcs marad, melyek között két 8 fokú csúcs van.
Ez azt jelenti, hogy a 9 csúcsú részgráfban mindkét 8 fokú csúcs mind a 8 másik csúccsal össze van kötve.
Fussunk le a Havel–Hakimivel $X = 0$-ra:
$(8, 8, 7, 5, 4, 4, 3, 2, 1, 0)$:
- Töröljük az első 8-ast (8 elemből vonunk le):
$(7, 6, 4, 3, 3, 2, 1, 0, 0)$.
- Töröljük a 7-est (7 elemből vonunk le):
$(5, 3, 2, 2, 1, 0, -1, 0) \implies$ megjelent a $-1$!
Tehát $X = 0$ nem lehetséges.

- Nézzük $X = 2$-t:
Sorozat: $(8, 8, 7, 5, 4, 4, 3, 2, 2, 1)$.
- Töröljük a 8-ast: $(7, 6, 4, 3, 3, 2, 1, 1, 1)$.
- Töröljük a 7-est: $(5, 3, 2, 2, 1, 0, 0, 1, 1) \to (5, 3, 2, 2, 1, 1, 1, 0, 0)$.
- Töröljük az 5-öst: $(2, 1, 1, 0, 0, 1, 0, 0) \to (2, 1, 1, 1, 0, 0, 0, 0)$.
- Töröljük a 2-est: $(0, 0, 1, 0, \dots) \to (1, 0, 0, 0, \dots) \implies$ egyetlen 1-es marad, ami nem páros!
Így $X = 2$ sem grafikális!

- Nézzük $X = 4$-et:
$(8, 8, 7, 5, 4, 4, 4, 3, 2, 1)$.
- Töröljük a 8-ast: $(7, 6, 4, 3, 3, 3, 2, 1, 1)$.
- Töröljük a 7-est: $(5, 3, 2, 2, 2, 1, 0, 1) \to (5, 3, 2, 2, 2, 1, 1, 0)$.
- Töröljük az 5-öst: $(2, 1, 1, 1, 0, 1, 0) \to (2, 1, 1, 1, 1, 0, 0)$.
- Töröljük a 2-est: $(0, 0, 1, 1, 0, 0) \to (1, 1, 0, 0, 0, 0)$.
- Töröljük az 1-est: $(0, 0, 0, 0, 0)$. Realizálható!
Ezért a megengedett $X$ értékek a $\{4, 6\}$.
A legnagyobb $X = \mathbf{6}$, a legkisebb $X = \mathbf{4}$.

::: elmelet
**Elméleti háttér — fokszámsorozatok paraméteres vizsgálata.**

*Paritás mint első szűrő:* $\sum d_i$ páros volta azonnal felére csökkenti a jelöltek körét.
*Havel–Hakimi algoritmikus tesztelése:* Véges sok jelöltnél az algoritmus lépésről lépésre pontosan eldönti a realizálhatóságot.
:::

## P69. feladat

Igazoljuk, hogy minden önkomplementer egyszerű gráf:
a) szükségképpen összefüggő;
b) csúcsszáma 4-gyel osztva 0 vagy 1 maradékot ad!

**Megoldás.**

Egy $G$ egyszerű gráfot önkomplementernek nevezünk, ha izomorf a komplementerével: $G \cong \overline{G}$.

a) *Összefüggőség bizonyítása:*
A 65. feladatban bebizonyítottuk a következőt:
Tetszőleges egyszerű $G$ gráf esetén a $G$ és a $\overline{G}$ gráfok közül **legalább az egyik összefüggő**!
Mivel $G$ önkomplementer, $G$ és $\overline{G}$ izomorfak ($G \cong \overline{G}$).
Két izomorf gráf topológiai és gráfelméleti tulajdonságai megegyeznek: ha az egyik összefüggő, akkor a másik is szükségképpen összefüggő; ha az egyik nem összefüggő, akkor a másik sem az.
Mivel a kettő közül legalább az egyik összefüggő kell, hogy legyen, és tulajdonságaik megegyeznek, ezért **mindkettő összefüggő**!
Különösen $G$ szükségképpen összefüggő. $\blacksquare$

b) *A csúcsszám maradékának bizonyítása modulo 4:*
Legyen $n = |V(G)|$ a csúcsok száma.
A teljes gráf élszáma:
$$e(K_n) = \binom{n}{2} = \frac{n(n-1)}{2}.$$
Mivel az élek halmaza és a komplementer éleinek halmaza diszjunkt partícióját adja a teljes gráf éleinek:
$$e(G) + e(\overline{G}) = \binom{n}{2}.$$
Mivel $G \cong \overline{G}$, élszámuk megegyezik: $e(G) = e(\overline{G})$.
Ebből:
$$2 \cdot e(G) = \frac{n(n-1)}{2} \implies e(G) = \frac{n(n-1)}{4}.$$
Mivel egy gráf élszáma csak egész szám lehet, $e(G) \in \mathbb{N}_0$, ezért:
$$4 \mid n(n-1).$$
Mivel $n$ és $n - 1$ egymást követő egész számok, a legnagyobb közös osztójuk $\gcd(n, n - 1) = 1$.
Két relatív prím szám szorzata pontosan akkor osztható 4-gyel, ha az egyikük osztható 4-gyel:
- 1. eset: $4 \mid n \implies \mathbf{n \equiv 0 \pmod 4}$.
- 2. eset: $4 \mid (n - 1) \implies \mathbf{n \equiv 1 \pmod 4}$.
Ezzel mindkét állítást igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — önkomplementer gráfok alaptételei.**

*Önkomplementer gráfok létezése:* Sachs (1962) és Ringel (1963) bizonyították, hogy minden olyan $n$-re, amelyre $n \equiv 0$ vagy $1 \pmod 4$, létezik önkomplementer gráf.
*Átmérő:* Minden önkomplementer gráf átmérője 2 vagy 3 (ha $n \ge 4$). Nem lehet 1 (mert akkor $G = K_n$, $\overline{G} = \overline{K_n}$), és nem lehet $\ge 4$ (a 65. feladat miatt).
:::

## P70. feladat

a) Legyen $G$ egy $n$ csúcsú egyszerű gráf, amelyben minden csúcs foka legalább $\frac{n-1}{2}$ ($\delta(G) \ge \frac{n-1}{2}$). Mutassuk meg, hogy $G$ szükségképpen összefüggő! Mutassuk meg, hogy a korlát éles, és mutassunk ellenpéldát, ha $G$ nem egyszerű!
b) Legyen $G$ egy $n$ csúcsú egyszerű gráf, amelyben bármely két nem szomszédos csúcs fokszámának összege legalább $n - 1$ ($u \not\sim v \implies d(u) + d(v) \ge n - 1$). Mutassuk meg, hogy $G$ összefüggő!

**Megoldás.**

a) Tegyük fel indirekt, hogy $G$ nem összefüggő.
Ekkor $G$ legalább két összefüggőségi komponensre esik szét: legyen $C_1$ a legkisebb csúcsszámú komponens, és $|V(C_1)| = n_1$.
Mivel legalább két komponens van, $n_1 \le n / 2$.
Egy egyszerű gráfban egy komponensen belül egy csúcs foka legfeljebb a komponens többi csúcsának száma lehet:
$$d(v) \le n_1 - 1 \qquad \forall v \in C_1.$$
A feltétel szerint viszont minden csúcs foka legalább $\frac{n-1}{2}$:
$$\frac{n-1}{2} \le d(v) \le n_1 - 1 \le \frac{n}{2} - 1 = \frac{n-2}{2}.$$
Ez azt jelentené, hogy:
$$\frac{n-1}{2} \le \frac{n-2}{2} \iff n - 1 \le n - 2 \iff -1 \le -2,$$
ami nyilvánvaló képtelenség!
Az ellentmondás abból adódott, hogy feltettük, $G$ nem összefüggő.
Ezért $G$ szükségképpen **összefüggő**. $\blacksquare$

*Élesség:*
Ha $n$ páros, legyen $n = 2k$.
Tekintsünk két diszjunkt teljes gráfot: $K_k \cup K_k$.
Ebben a gráfban a csúcsszám $n$, a gráf nem összefüggő (2 komponens), és minden csúcs foka:
$$d(v) = k - 1 = \frac{n}{2} - 1 = \frac{n-2}{2}.$$
Ez pontosan 0,5-del kisebb, mint $\frac{n-1}{2}$, tehát a korlát nem javítható!

*Ellenpélda nem egyszerű gráfra:*
Ha többszörös éleket megengedünk, vegyünk két izolált csúcsot, és mindkettőre tegyünk tetszőlegesen sok hurokélt vagy kössünk be önmagukba éleket. Ekkor a fokszámok akárhanyasok lehetnek, de a gráf nem lesz összefüggő.

b) Tegyük fel indirekt, hogy $G$ nem összefüggő.
Legyenek $u$ és $v$ két különböző összefüggőségi komponens csúcsai.
Mivel különböző komponensekben vannak, nincs él közöttük: $u \not\sim v$.
Ezért a feltétel szerint:
$$d(u) + d(v) \ge n - 1.$$
Másrészt, jelölje $u$ komponensének csúcshalmazát $V_1$ ($|V_1| = n_1$), $v$ komponensét $V_2$ ($|V_2| = n_2$).
Mivel egyszerű gráfról van szó:
$$d(u) \le n_1 - 1, \qquad d(v) \le n_2 - 1.$$
Összeadva a két egyenlőtlenséget:
$$d(u) + d(v) \le (n_1 - 1) + (n_2 - 1) = n_1 + n_2 - 2.$$
Mivel $V_1$ és $V_2$ diszjunkt komponensek, $n_1 + n_2 \le n$. Így:
$$d(u) + d(v) \le n - 2.$$
Ez azonban ellentmond a feltételnek, miszerint $d(u) + d(v) \ge n - 1$!
Tehát $G$ szükségképpen **összefüggő**. $\blacksquare$

::: elmelet
**Elméleti háttér — Dirac- és Ore-típusú feltételek összefüggőségre.**

*Dirac-tétel (1952) előszobája:* Ha $\delta(G) \ge n/2$, a gráf nemcsak összefüggő, hanem Hamilton-kört is tartalmaz.
*Összefüggőségi küszöb:* $\delta(G) \ge \frac{n-1}{2}$ már garantálja az összefüggőséget (átmérő $\le 2$).
*Ore-tétel (1960) gyengített alakja:* Ha nem szomszédos csúcsokra $d(u) + d(v) \ge n - 1$, a gráf összefüggő.
:::

## P71. feladat

Adott 3 darab fa diszjunkt csúcshalmazokon, amelyek rendre 4, 5 és 6 csúcsúak.
A három fában szereplő összesen 15 csúcs közül néhány új él behúzásával hány különböző módon egészíthető ki ez a három fa egyetlen nagy fává a 15 csúcson, ha a csúcsokat címkézettnek tekintjük?

**Megoldás.**

Jelölje a 3 fát $T_1, T_2, T_3$, csúcsszámaik $n_1 = 4, n_2 = 5, n_3 = 6$.
Az összes csúcs száma:
$$n = n_1 + n_2 + n_3 = 4 + 5 + 6 = 15.$$
A cél az, hogy a meglévő fák élei mellé új éleket húzzunk be úgy, hogy az eredeti fák komponensei maradjanak, és a kapott gráf fa legyen.
Mivel $k = 3$ komponensünk van, pontosan $k - 1 = 2$ új élt kell behúznunk ahhoz, hogy egyetlen összefüggő körmentes fát kapjunk.

*Az általánosított Cayley-formula komponensekre:*
Ha adott $k$ darab diszjunkt fa $n_1, n_2, \dots, n_k$ méretű csúcshalmazokon, és $n = \sum n_i$, akkor ezen erdő fává való kiegészítéseinek száma a címkézett csúcsokon:
$$n_1 \cdot n_2 \dots n_k \cdot n^{k-2}.$$

Alkalmazzuk a képletet $k = 3, n_1 = 4, n_2 = 5, n_3 = 6, n = 15$ esetén:
$$N = n_1 \cdot n_2 \cdot n_3 \cdot n^{3-2} = 4 \cdot 5 \cdot 6 \cdot 15^1.$$
Számolva:
$$4 \cdot 5 = 20,$$
$$20 \cdot 6 = 120,$$
$$120 \cdot 15 = \mathbf{1800}.$$

*A képlet közvetlen kombinatorikus levezetése $k = 3$ fára:*
Három komponens ($T_1, T_2, T_3$) összekötése egy fává 2 új éllel pontosan egy 3 csúcsú fát alkot a komponensek szintjén.
Egy 3 csúcsú fának 3 lehetséges alakja van aszerint, hogy melyik komponens a középső (2 fokú) csúcs:
- $T_1$ a középpont: él megy $T_1$ és $T_2$, valamint $T_1$ és $T_3$ közé. Lehetőségek: $n_1 n_2 \cdot n_1 n_3 = n_1^2 n_2 n_3$.
- $T_2$ a középpont: él $T_2 - T_1$ és $T_2 - T_3$. Lehetőségek: $n_1 n_2^2 n_3$.
- $T_3$ a középpont: él $T_3 - T_1$ és $T_3 - T_2$. Lehetőségek: $n_1 n_2 n_3^2$.
Összeadva a 3 lehetőséget:
$$n_1 n_2 n_3 (n_1 + n_2 + n_3) = n_1 n_2 n_3 \cdot n.$$
Behelyettesítve a számokat:
$$4 \cdot 5 \cdot 6 \cdot (4 + 5 + 6) = 120 \cdot 15 = \mathbf{1800}.$$
A levezetés tökéletesen igazolja a formulát!

::: elmelet
**Elméleti háttér — Cayley-tétel és általánosított komponens-összekötési formula.**

*Cayley-tétel:* Az $n$ címkézett csúcson képezhető fák száma $n^{n-2}$.
*Általánosított Cayley-formula (Rényi Alfréd, 1970):* Ha a csúcshalmaz fel van osztva $k$ darab diszjunkt komponensre ($n_1, \dots, n_k$ méretű fákra), akkor ezen komponensek fává való kiegészítéseinek száma:
$$N = n_1 n_2 \dots n_k \cdot n^{k-2}.$$
*Prüfer-kódos bizonyítás:* A Prüfer-kód konstrukciója kiterjeszthető erdők komponenseire, ahol a komponens-méretek súlyként jelennek meg.
:::

## P72. feladat

Elhelyezhető-e 15 huszár (ló) egy $100 \times 100$-as sakktáblára úgy, hogy mindegyik huszár:
a) pontosan három másik huszárt üssön;
b) pontosan kettő másik huszárt üssön?

**Megoldás.**

Tekintsük a 15 huszár által kifeszített részgráfot a sakktábla huszárgráfjában:
- A csúcsok a kiválasztott 15 mező, ahol a huszárok állnak ($|V| = 15$).
- Élek a huszárok közötti ütések.
Mivel a huszár minden lépésben megváltoztatja a mező színét (fehérről feketére és feketéről fehérre lép), a sakktábla huszárgráfja egy **páros gráf**.
Ezért a 15 huszár által feszített tetszőleges részgráf is **szükségképpen páros gráf**!
Legyen a két független csúcshalmaz $A$ (fehér mezőn álló huszárok) és $B$ (fekete mezőn álló huszárok), ahol:
$$|A| + |B| = 15.$$

a) Tegyük fel, hogy mindegyik huszár pontosan 3 másik huszárt üt:
Ekkor a részgráf egy 3-reguláris egyszerű gráf 15 csúcson!
A kézfogási lemma szerint a fokszámösszeg:
$$\sum_{v \in V} d(v) = 15 \times 3 = 45.$$
Mivel 45 páratlan szám, a fokszámösszeg páratlan, ami **lehetetlen**, hiszen a fokszámösszegnek mindig $2e$-nek, azaz párosnak kell lennie!
Ezért 15 huszár semmilyen sakktáblán nem üthet mindegyike pontosan 3 másikat.
Válasz: **Nem helyezhető el.**

b) Tegyük fel, hogy mindegyik huszár pontosan 2 másik huszárt üt:
Ekkor a feszített részgráf egy 2-reguláris egyszerű gráf, ami azt jelenti, hogy a gráf diszjunkt körök uniója!
Mivel a gráf páros gráf, **minden köre páros hosszúságú kell, hogy legyen**!
(Ismert tétel: egy gráf akkor és csak akkor páros, ha nem tartalmaz páratlan hosszúságú kört.)
Ezért a csúcshalmaz páros hosszúságú körök csúcshalmazainak diszjunkt uniója.
Páros számok összege azonban szükségképpen **páros szám**!
A csúcsok száma viszont $|V| = 15$, ami **páratlan szám**!
Páros körök csúcsaiból nem állhat elő páratlan (15) számú csúcs!
Ezért a 15 huszár nem alkothat 2-reguláris páros részgráfot.
Válasz: **Nem helyezhető el.**

::: elmelet
**Elméleti háttér — páros gráfok, körök paritása és regularitás.**

*Kőnig Dénes tétele (1936):* Egy gráf pontosan akkor páros, ha nem tartalmaz páratlan kört.
*Páros reguláris részgráfok:*
- Ha $G$ páros és $k$-reguláris ($k \ge 1$), akkor az $A$ és $B$ partíciók között $e = k|A| = k|B| \implies |A| = |B|$.
Ezért bármely $k$-reguláris páros gráf csúcsszáma $|V| = |A| + |B| = 2|A|$ kötelezően **páros**!
Mivel 15 páratlan, semmilyen reguláris huszár-konfiguráció nem létezhet 15 csúcson.
:::

## P73. feladat

Legyen $k \ge 2$. Az $n$ csúcsú $G$ egyszerű gráfnak legalább $(k - 1)n$ éle van ($e(G) \ge (k - 1)n$).
Bizonyítsuk be, hogy ekkor a $G$ gráf tartalmaz legalább $k + 1$ hosszú egyszerű kört!

**Megoldás.**

A bizonyítást a gráf csúcsainak fokozatos redukciójával végezzük (kétlépéses levezetés):

1. lépés: *Mag-részgráf kiválasztása minimális fokszámmal:*
Tegyük fel, hogy $G$-ben van olyan csúcs, amelynek foka legfeljebb $k - 1$:
$$d(v) \le k - 1.$$
Töröljük ezt a $v$ csúcsot és a belőle kiinduló éleket!
Ekkor a csúcsszám 1-gyel csökken ($n' = n - 1$), és a törölt élek száma legfeljebb $k - 1$.
Ezért az új $G'$ gráf élszámára:
$$e(G') \ge e(G) - (k - 1) \ge (k - 1)n - (k - 1) = (k - 1)(n - 1) = (k - 1)n'.$$
Az új gráf továbbra is teljesíti az $e \ge (k - 1)n'$ feltételt!
Isételjük ezt az eljárást: mindaddig töröljünk egy legfeljebb $k - 1$ fokú csúcsot, amíg van ilyen a gráfban.
Mivel a gráf véges, ez az eljárás véges sok lépésben véget ér.
A megmaradt $H$ részgráf nem lehet üres:
Ha ugyanis az eljárás az utolsó csúcsig folytatódna, egy 1 csúcsú gráfhoz érnénk, melynek élszáma $0$, de a feltétel szerint $e \ge (k - 1) \cdot 1 = k - 1 \ge 1$ élnek kellene lennie, ami ellentmondás!
Ezért a megálláskor kapott nem üres $H$ részgráfban **minden csúcs foka legalább $k$**:
$$\delta(H) \ge k.$$

2. lépés: *Hosszú kör garantálása a mag-részgráfban:*
Tekintsük a $H$ gráf egy leghosszabb egyszerű útját:
$$P = v_1 v_2 \dots v_m.$$
A 64.b feladatban részletesen igazoltuk, hogy ha egy véges egyszerű gráfban a minimális fok legalább $k$, akkor a leghosszabb út $v_1$ végpontjának mind a legalább $k$ szomszédja a $P$ útra esik.
Ezért a legtávolabbi szomszéd indexe legalább $k + 1$.
A $v_1$ csúcs és ezen legtávolabbi szomszéd által bezárt kör hossza legalább:
$$k + 1.$$
Mivel $H$ részgráfja $G$-nek, ez a kör benne van az eredeti $G$ gráfban is.
Ezzel az állítást bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — csúcs-elimináció, $k$-mag (k-core) és Dirac-tétel körökre.**

*$k$-mag ($k$-core):* Az a maximális feszített részgráf, amelyben minden csúcs foka legalább $k$. Kis fokú csúcsok ismételt elhagyásával kapjuk meg.
*Átlagfok és minimális fok kapcsolata:* Ha az élszám $e \ge (k-1)n$, az átlagfok $\bar{d} = 2e/n \ge 2k - 2$. Bár az átlagfokból nem következik közvetlenül a minimális fok, az eliminációs eljárás garantálja egy $\delta(H) \ge k$ mag létezését.
:::

## P74. feladat

Egy összefüggő egyszerű gráfban minden csúcs foka páros.
Bizonyítsuk be, hogy ha kitöröljük a gráf egy tetszőleges élét, a gráf továbbra is összefüggő marad (azaz a gráfnak egyetlen vágóéle sincs)!

**Megoldás.**

*1. bizonyítás (Euler-körrel és körökkel):*
Euler tétele szerint egy véges összefüggő gráfban akkor és csak akkor létezik zárt Euler-vonal (Euler-kör), ha minden csúcs foka páros.
Mivel a feltétel szerint minden csúcs foka páros, a gráf élei felbonthatók egyszerű éldiszjunkt körök uniójára:
$$E(G) = C_1 \cup C_2 \cup \dots \cup C_m.$$
Legyen $e = uv$ a gráf egy tetszőleges éle.
Mivel az élek körökbe tartoznak, az $e$ él része valamelyik $C_j$ körnek.
Egy körből egyetlen élet elhagyva a kör megmaradt élei továbbra is egy utat alkotnak a két végpont, $u$ és $v$ között!
Ezért $u$ és $v$ összekötöttsége nem szűnik meg, így az $e$ él törlése után sem eshet szét a gráf komponensekre.
Tehát a gráf bármely él elhagyása után összefüggő marad. $\blacksquare$

*2. közvetlen bizonyítás (paritással és komponensekkel):*
Tegyük fel indirekt, hogy van olyan $e = uv$ él, amelynek kitörlésével a $G - e$ gráf már nem összefüggő!
Ekkor az $e$ él egy vágóél (híd), és a $G - e$ gráf pontosan két összefüggőségi komponensre esik szét:
$$G - e = G_1 \cup G_2,$$
ahol az $u$ csúcs a $G_1$ komponensbe, a $v$ csúcs a $G_2$ komponensbe esik.
Vizsgáljuk meg a $G_1$ komponens csúcsainak fokszámait a $G_1$ részgráfban:
- Az $u$ csúcs esetén a $G$-beli fokából elveszett az $e$ él, így:
$$d_{G_1}(u) = d_G(u) - 1.$$
Mivel $d_G(u)$ páros szám volt, a $d_{G_1}(u)$ szükségképpen **páratlan szám**!
- A $G_1$ komponens minden más $w \in V(G_1) \setminus \{u\}$ csúcsa esetén semelyik éle nem veszett el, hiszen az $e$ él nem rájuk illeszkedett. Így:
$$d_{G_1}(w) = d_G(w).$$
Mivel $d_G(w)$ páros, a $d_{G_1}(w)$ is **páros szám** minden $w \neq u$ csúcsra!

Összegezzük a fokszámokat a $G_1$ komponensben:
A $G_1$ komponensben pontosan egyetlenegy csúcs foka páratlan (az $u$ csúcs), és az összes többi csúcs foka páros!
Ez azonban azt jelenti, hogy a $G_1$ gráfban a páratlan fokú csúcsok száma pontosan 1, ami páratlan szám!
Ez éles ellentmondás a kézfogási lemmával (57. és 62. feladat), amely szerint minden gráfban a páratlan fokú csúcsok száma kötelezően páros!
Az ellentmondás kizárja, hogy $e$ elvágó él legyen.
Tehát bármely él elhagyása után a gráf összefüggő marad. $\blacksquare$

::: elmelet
**Elméleti háttér — vágóélek (hidak) és Euler-gráfok.**

*Vágóél (híd):* Olyan él, amelynek elhagyásával a gráf komponenseinek száma nő.
*Híd-tétel:* Egy él pontosan akkor híd, ha nem tartozik egyetlen körhöz sem.
*Paritási invariáns:* A vágóél két oldalán a fokszámok paritása megváltozik a végpontokban, ami elegáns paritási bizonyításokat tesz lehetővé.
:::

# Az 5. feladatsorhoz

## P75. feladat

Egy 16 csúcsú fában van három 4 fokú és két 3 fokú csúcs.
a) Hány levele (elsőfokú csúcsa) van a fának, ha a többi csúcs foka mind legfeljebb 2?
b) Létezhet-e a fában 5 fokú csúcs?

**Megoldás.**

Egy $n = 16$ csúcsú fának az élszáma a fa alaptétele szerint:
$$e = n - 1 = 16 - 1 = 15.$$
A kézfogási lemma szerint a fokszámok összege:
$$\sum_{v \in V} d(v) = 2e = 2 \cdot 15 = 30.$$
Mivel a gráf összefüggő és $n \ge 2$, a fa nem tartalmazhat 0 fokú (izolált) csúcsot, így minden csúcs foka legalább 1:
$$d(v) \ge 1 \qquad \forall v \in V.$$

a) A fában 3 darab 4 fokú és 2 darab 3 fokú csúcs van.
Ezek fokszámának összege:
$$3 \cdot 4 + 2 \cdot 3 = 12 + 6 = 18.$$
A megmaradt $16 - (3 + 2) = 11$ csúcs foka legfeljebb 2, azaz vagy 1, vagy 2.
Jelölje $l$ a levelek (1 fokú csúcsok) számát, és $k$ a 2 fokú csúcsok számát a megmaradt 11 csúcs között. Ekkor:
$$l + k = 11.$$
A teljes fokszámösszeg:
$$18 + 1 \cdot l + 2 \cdot k = 30 \implies l + 2k = 30 - 18 = 12.$$
Vonjuk ki az első egyenletet a másodikból:
$$(l + 2k) - (l + k) = 12 - 11 \implies k = 1.$$
Ebből a levelek száma:
$$l = 11 - 1 = \mathbf{10}.$$
A fának pontosan 10 levele van.

b) *Létezhet-e 5 fokú csúcs?*
Tegyük fel, hogy a fában a három 4 fokú és a két 3 fokú csúcson kívül lenne egy 5 fokú csúcs is.
Ekkor ez a 6 csúcs összesen $3 + 2 + 1 = 6$ csúcsot jelentene.
Ezen 6 csúcs fokszámának összege:
$$3 \cdot 4 + 2 \cdot 3 + 1 \cdot 5 = 12 + 6 + 5 = 23.$$
A megmaradt $16 - 6 = 10$ csúcs mindegyikének foka legalább 1 ($d(v) \ge 1$).
Így a teljes fokszámösszeg legalább:
$$\sum_{v \in V} d(v) \ge 23 + 10 \cdot 1 = 33.$$
A fokszámösszegnek azonban kötelezően $2e = 30$-nak kell lennie!
Mivel $33 > 30$, ez nyilvánvaló ellentmondás!
Ezért a fában **nem létezhet 5 fokú csúcs**. $\blacksquare$

::: elmelet
**Elméleti háttér — fák fokszámegyenlete és alsó korlátok.**

*Fák fokszám-invariánsa:* Minden $n$ csúcsú fára $\sum_{v \in V} d(v) = 2(n - 1) = 2n - 2$.
*Átrendezett alak:* $\sum_{v \in V} (d(v) - 1) = n - 2$, vagy $\sum_{v \in V} (d(v) - 2) = -2$.
*Levelek száma:* A $\sum (d(v) - 2) = -2$ egyenletből:
$$l = 2 + \sum_{d(v) \ge 3} (d(v) - 2).$$
Ez egy csodálatos, univerzális összefüggés: a levelek száma független a 2 fokú csúcsok számától, és kizárólag az elágazási csúcsok fokaitól függ!
:::

## P76. feladat

Egy lézerharc (paintball) játékban $n$ játékos vett részt.
A játékszabályok és a statisztika alapján tudjuk, hogy:
1. Mindenki pontosan 5 másik embert talált el;
2. A játék végén semelyik két játékosnak nem volt azonos a bekapott találatainak a száma.
Hány fős társaság játszott egymással?

**Megoldás.**

Modellezzük a mérkőzést egy $n$ csúcsú egyszerű irányított gráffal (digráffal):
- A csúcsok a játékosok: $V = \{v_1, v_2, \dots, v_n\}$.
- Ha az $u$ játékos eltalálta a $v$ játékost, behúzunk egy irányított élet $u$-ból $v$-be: $u \to v$.
Mivel senki sem lőheti le önmagát, és két ember között legfeljebb egy találatot számolunk (egyszerű digráf), nincs hurokél.

Egy csúcs kimenő foka, $d^+(v)$ a játékos által leadott sikeres találatok száma.
A feltétel szerint mindenkinek a kimenő foka pontosan 5:
$$d^+(v) = 5 \qquad \forall v \in V.$$
Egy csúcs bejövő foka, $d^-(v)$ a játékost ért találatok száma.
Az irányított gráfok kézfogási lemmája szerint az összes kimenő fok összege megegyezik az összes bejövő fok összegével, és mindkettő a gráf irányított éleinek számát ($m$) adja:
$$\sum_{v \in V} d^+(v) = \sum_{v \in V} d^-(v) = m.$$
Mivel mindenki 5 embert talált el:
$$m = \sum_{v \in V} d^+(v) = n \cdot 5 = 5n.$$

Most vizsgáljuk meg a bejövő fokokat ($d^-(v)$)!
Egy $n$ fős játékban egy játékost legfeljebb az $n - 1$ másik játékos találhatott el, így a lehetséges bekapott találatok értékei a következő halmazból kerülhetnek ki:
$$d^-(v) \in \{0, 1, 2, \dots, n - 1\}.$$
Ez a halmaz pontosan $n$ darab különböző egész értéket tartalmaz.
A második feltétel szerint **nincs két olyan ember, akit ugyanannyi találat ért volna**, ami azt jelenti, hogy az $n$ játékos bejövő fokai mind páronként különböznek!
Mivel $n$ játékos van, és pontosan $n$ lehetséges különböző érték létezik, a bejövő fokok halmazának kötelezően meg kell egyeznie a $\{0, 1, 2, \dots, n - 1\}$ halmazzal!
Azaz a játékosok bejövő fokai pontosan a $0, 1, 2, \dots, n - 1$ számok valamilyen sorrendben.
Számítsuk ki a bejövő fokok összegét:
$$\sum_{v \in V} d^-(v) = 0 + 1 + 2 + \dots + (n - 1) = \frac{(n - 1)n}{2}.$$
Tudjuk, hogy a bejövő fokok összege megegyezik az élek számával, $5n$-nel:
$$\frac{(n - 1)n}{2} = 5n.$$
Mivel $n > 0$ (a játékosok száma pozitív), oszthatunk $n$-nel:
$$\frac{n - 1}{2} = 5 \implies n - 1 = 10 \implies n = 11.$$
A társaság tehát pontosan **11 fős** volt.

::: elmelet
**Elméleti háttér — irányított kézfogási lemma és fokszámkényszer.**

*Irányított kézfogási lemma:* Minden véges irányított gráfban:
$$\sum_{v \in V} d^+(v) = \sum_{v \in V} d^-(v) = |E|.$$
*Kimenő és bejövő fokok:* $d^+(v)$ a ki-fok (leadott találatok), $d^-(v)$ a be-fok (kapott találatok).
*Teljes fokszámsorozat:* Ha $n$ különböző érték lehetséges a $\{0, \dots, n-1\}$ tartományban és nincsenek egyenlők, az értékek összege $\binom{n}{2}$.
:::

## P77. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban minden csúcs foka legalább 3 ($\delta(G) \ge 3$), akkor a gráfban szükségképpen létezik páros hosszúságú kör!

**Megoldás.**

Tekintsük a gráf egy **leghosszabb egyszerű útját**:
$$P = v_1 v_2 \dots v_m.$$
Mivel $\delta(G) \ge 3$, a gráfban van él, és $m \ge 4$.
A 64. feladatban bizonyított módon a leghosszabb út $v_1$ végpontjának **mindegyik szomszédja kötelezően a $P$ útra kell, hogy essen** (különben az út meghosszabbítható lenne).
Mivel $d(v_1) \ge 3$, a $v_1$ csúcsnak van legalább 3 különböző szomszédja a $P$ úton.
Jelölje a $v_1$ három legkisebb indexű szomszédját az út mentén:
$$v_i, \quad v_j, \quad v_k, \qquad \text{ahol } 2 = i < j < k \le m.$$
(Tehát $v_1$ össze van kötve $v_2$-vel, $v_j$-vel és $v_k$-val.)

A $v_1$ csúcsból ezen szomszédokba visszamenő élek három különböző egyszerű kört határoznak meg a $P$ út kezdőszeletével:
1. $C_1 = v_1 v_2 \dots v_i v_1$: hossza $i$ él (itt $i = 2$ esetén ez egy 2 hosszú többszörös él lenne, de egyszerű gráfban $i = 2$ a közvetlen szomszéd, így $v_1$ és $v_2$ éle nem kör; tekintsük a valódi köröket!).
Pontosítsuk: a $v_1$ csúcs szomszédai a $P$ úton legyenek:
$$v_{i_1}, v_{i_2}, v_{i_3}, \qquad \text{ahol } 2 \le i_1 < i_2 < i_3 \le m.$$
Ekkor a $v_1$ és a szomszédai az alábbi egyszerű köröket alkotják a $P$ út mentén:
- A $v_1$-ből $v_{i_2}$-be menő él és a $P$ út $v_1 \dots v_{i_2}$ szakasza által alkotott kör:
hossza pontosan $i_2$ él.
- A $v_1$-ből $v_{i_3}$-ba menő él és a $P$ út $v_1 \dots v_{i_3}$ szakasza által alkotott kör:
hossza pontosan $i_3$ él.
- A harmadik kör: menjünk $v_1$-ből $v_{i_2}$-be az élen, majd a $P$ úton $v_{i_2}$-től $v_{i_3}$-ig, majd a $v_{i_3} v_1$ élen vissza $v_1$-be!
Ez a kör a következő élekből áll: a $v_1 v_{i_2}$ él (1 él), a $P$ út $v_{i_2}$-től $v_{i_3}$-ig tartó szakasza ($i_3 - i_2$ él), és a $v_{i_3} v_1$ él (1 él).
Ennek a harmadik körnek a hossza:
$$\text{hossz} = 1 + (i_3 - i_2) + 1 = i_3 - i_2 + 2.$$

Most vizsgáljuk meg ezen körök hosszának paritását!
Tegyük fel indirekt, hogy a gráfban **egyetlen páros hosszúságú kör sincs**, vagyis az összes kör páratlan hosszúságú!
Ekkor az első két kör hossza páratlan kell legyen:
$$i_2 \equiv 1 \pmod 2 \quad (\text{páratlan}),$$
$$i_3 \equiv 1 \pmod 2 \quad (\text{páratlan}).$$
De ha $i_2$ és $i_3$ mindketten páratlan számok, akkor a különbségük, $i_3 - i_2$ szükségképpen **páros szám**:
$$i_3 - i_2 \equiv 1 - 1 = 0 \pmod 2.$$
Ekkor viszont a harmadik kör hossza:
$$i_3 - i_2 + 2 \equiv 0 + 2 = 0 \pmod 2,$$
ami azt jelenti, hogy a harmadik kör **páros hosszúságú**!
Ez éles ellentmondás azzal az indirekt feltevéssel, hogy minden kör páratlan hosszúságú!
Tehát a gráfban mindenképpen létezik páros hosszúságú kör. $\blacksquare$

::: elmelet
**Elméleti háttér — körök paritása és leghosszabb út technikája.**

*Három kör ciklusa:* Ha egy csúcsból két előre-él fut ki egy útra, a két gyökér-kör és a kettőjük által közrezárt kör hosszai: $L_1, L_2$, és $L_3 = L_2 - L_1 + 2$.
*Paritási lemma:* Mivel $L_1 + L_2 + L_3 = 2L_2 + 2$ páros, a három kör hossza közül nem lehet mind a három páratlan! Legalább az egyikük kötelezően páros.
*Következmény:* Ha $\delta(G) \ge 3$, a gráf nem lehet páratlan körökből álló kaktuszgráf, feltétlenül tartalmaz páros kört.
:::

## P78. feladat

Adott $n \ge 5$ valós szám: $x_1, x_2, \dots, x_n$.
Képezzük az összes lehetséges kéttagú összeget: $x_i + x_j$ ($1 \le i < j \le n$).
Az így kapott $\binom{n}{2}$ összeg közül legalább $\frac{n^2 - 3n + 4}{2}$ racionális szám.
a) Bizonyítsuk be, hogy ekkor az összes kéttagú összeg racionális!
b) Következik-e a feltételből az is, hogy mindegyik megadott $x_i$ szám szükségképpen racionális?

**Megoldás.**

a) Rendeljünk a problémához egy $n$ csúcsú egyszerű $G$ gráfot:
- A csúcsok a számok indexei: $V = \{1, 2, \dots, n\}$.
- Két csúcs, $i$ és $j$ között pontosan akkor húzunk be egy élet, ha az $x_i + x_j$ összeg racionális szám:
$$ij \in E(G) \iff x_i + x_j \in \mathbb{Q}.$$

A feltétel szerint a racionális összegek száma legalább:
$$e(G) \ge \frac{n^2 - 3n + 4}{2} = \frac{n(n-1) - 2(n-2)}{2} = \binom{n}{2} - (n - 2).$$
Vizsgáljuk a komplementer gráf, $\overline{G}$ élszámát!
A komplementer élei az irracionális összegeknek felelnek meg:
$$e(\overline{G}) = \binom{n}{2} - e(G) \le \binom{n}{2} - \left(\binom{n}{2} - (n - 2)\right) = n - 2.$$
Tudjuk a 60. feladatból, hogy egy $n$ csúcsú összefüggő gráf élszáma legalább $n - 1$.
Mivel $e(\overline{G}) \le n - 2 < n - 1$, a komplementer gráf $\overline{G}$ **nem lehet összefüggő**!
A 65. feladat szerint, ha egy egyszerű gráf komplementere nem összefüggő, akkor a $G$ gráf szükségképpen összefüggő!
Sőt, még ennél is többet tudunk:
Mivel $e(\overline{G}) \le n - 2$, a $\overline{G}$ gráfban nem lehet kör (hiszen egy körmentes erdő komponenseinek száma $c$, és $e = n - c \le n - 2 \implies c \ge 2$).

Most vizsgáljuk meg az élek mentén terjedő racionalitást $G$-ben:
- Ha $x_i + x_j = q_1 \in \mathbb{Q}$ és $x_j + x_k = q_2 \in \mathbb{Q}$, akkor a kettő különbsége:
$$x_i - x_k = (x_i + x_j) - (x_j + x_k) = q_1 - q_2 \in \mathbb{Q}.$$
Tehát ha két csúcs távolsága $G$-ben 2 (van közös szomszédjuk), akkor a **különbségük racionális**!
- Ha a $G$ gráfban létezik egy **páratlan hosszúságú kör**: $v_1 - v_2 - \dots - v_{2k+1} - v_1$:
Ekkor tekintsük az alternáló összeget a kör élei mentén:
$$(x_{v_1} + x_{v_2}) - (x_{v_2} + x_{v_3}) + (x_{v_3} + x_{v_4}) - \dots + (x_{v_{2k+1}} + x_{v_1}) = 2 x_{v_1}.$$
Mivel a kör minden éle racionális összeget jelent, a bal oldal racionális számok lineáris kombinációja, így $2 x_{v_1} \in \mathbb{Q}$, amiből:
$$x_{v_1} \in \mathbb{Q}!$$
Ha pedig a kör egy csúcsa racionális, akkor a vele összekötött szomszédja is racionális ($x_{v_2} = q - x_{v_1} \in \mathbb{Q}$), és mivel $G$ összefüggő, **minden $x_i$ racionális lesz**!
Ha minden $x_i \in \mathbb{Q}$, akkor nyilvánvalóan minden $x_i + x_j$ összeg is racionális.

Van-e páratlan kör $G$-ben?
Tegyük fel indirekt, hogy $G$-ben nincs páratlan kör.
Ekkor $G$ páros gráf!
Egy $n$ csúcsú páros gráf élszáma legfeljebb $\lfloor n^2 / 4 \rfloor$ lehet (Turán-tétel $K_{n/2, n/2}$-re).
De $n \ge 5$ esetén:
$$\frac{n^2 - 3n + 4}{2} > \frac{n^2}{4} \iff 2n^2 - 6n + 8 > n^2 \iff n^2 - 6n + 8 > 0 \iff (n - 2)(n - 4) > 0.$$
Mivel $n \ge 5$, $(n-2)(n-4) \ge 3 \cdot 1 = 3 > 0$, tehát az élszám szigorúan nagyobb, mint a maximális páros gráf élszáma!
Ezért $G$ **nem lehet páros gráf**, tehát szükségképpen **tartalmaz páratlan kört**!
Ez bizonyítja, hogy az összes összeg racionális! $\blacksquare$

b) *Következik-e, hogy minden $x_i$ racionális?*
Az a) pont bizonyításában láttuk, hogy ha $G$-ben van páratlan kör, akkor:
$$2 x_{v_1} \in \mathbb{Q} \implies x_{v_1} \in \mathbb{Q}.$$
Mivel $G$ összefüggő, minden csúcsba eljuthatunk élek mentén, így ha egy csúcs racionális, akkor $x_j = (x_i + x_j) - x_i \in \mathbb{Q}$ miatt **minden megadott $x_i$ szám is szükségképpen racionális**!
Válasz: **Igen, a feltételből következik, hogy minden megadott szám racionális.**

::: elmelet
**Elméleti háttér — algebrai relációk gráfreprezentációja és páratlan körök.**

*Összegek és alternáló körök:* Egy $C_{2k+1}$ páratlan kör élein vett alternáló összeg teleszkopikusan a kezdőpont kétszeresét adja: $\sum (-1)^{i-1}(x_i + x_{i+1}) = 2x_1$.
*Turán-tétel páros gráfokra:* Egy $n$ csúcsú páros gráf élszáma legfeljebb $\lfloor n^2/4 \rfloor$. Ha egy gráf élszáma ezt meghaladja, kötelezően tartalmaz páratlan kört (háromszöget).
*Racionális koordináták:* Ha a gráf összefüggő és nem páros, a csúcsértékek egyértelműen meghatározottak az élösszegekből.
:::

## P79. feladat

Mondjuk ki és bizonyítsuk be a Zeckendorf-tételt:
Minden pozitív egész szám egyértelműen felírható egymást nem követő (nem szomszédos) Fibonacci-számok összegeként ($F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, \dots$).
Írjuk fel a 100-at és a 250-et Zeckendorf-alakban!

**Megoldás.**

*A Zeckendorf-tétel kimondása (Edouard Zeckendorf, 1972):*
Minden $N \in \mathbb{N}$ pozitív egész szám egyértelműen előállítható a következő alakban:
$$N = \sum_{i=1}^k F_{c_i}, \qquad \text{ahol } c_i \ge 2, \text{ és } c_{i+1} \ge c_i + 2 \quad \forall i.$$

*1. Létezés bizonyítása (mohó algoritmussal és teljes indukcióval):*
- Bázis: $N = 1 = F_2$. Igaz.
- Indukciós lépés: Tegyük fel, hogy minden $N' < N$ pozitív egészre létezik a felbontás.
Válasszuk ki a legnagyobb olyan Fibonacci-számot, amely még nem haladja meg $N$-et:
$$F_m \le N < F_{m+1}.$$
Ha $N = F_m$, kész vagyunk.
Ha $N > F_m$, tekintsük a maradékot: $N' = N - F_m$.
Mivel $N' < N$, az indukciós feltevés szerint $N'$ felírható nem szomszédos Fibonacci-számok összegeként.
Azt kell belátnunk, hogy az $N'$ felbontásában szereplő legnagyobb tag, $F_{m'}$ nem szomszédos $F_m$-mel, azaz $m' \le m - 2$.
Mivel $N < F_{m+1} = F_m + F_{m-1}$, ebből:
$$N' = N - F_m < F_{m-1}.$$
Mivel $N'$ szigorúan kisebb, mint $F_{m-1}$, a benne kiválasztott legnagyobb Fibonacci-szám nem lehet $F_{m-1}$, tehát szükségképpen:
$$F_{m'} \le N' < F_{m-1} \implies m' \le m - 2.$$
Tehát az $F_m$ hozzáadásával sem keletkezik két szomszédos Fibonacci-szám!
Ezzel a létezést beláttuk. $\blacksquare$

*2. Egyértelműség bizonyítása:*
Segédtétel: Bármely $m$ indexre a páronként nem szomszédos Fibonacci-számok összege $F_m$-ig szigorúan kisebb, mint $F_{m+1}$:
$$\sum_{j} F_{c_j} \le F_{m+1} - 1, \qquad \text{ahol } c_j \le m \text{ és } c_{j+1} \ge c_j + 2.$$
Bizonyítás: Ha a legnagyobb index $m$, a legrosszabb eset az alternáló összeg: $F_m + F_{m-2} + F_{m-4} + \dots = F_{m+1} - 1$ (könnyű indukcióval).
Ebből következik, hogy két különböző nem szomszédos felbontás nem adhatja ugyanazt az összeget:
Ha két felbontás különbözne, töröljük a közös tagokat. A megmaradt legnagyobb tag legyen $F_m$ az egyik oldalon. A másik oldal összes tagja legfeljebb $F_{m-1}$ lehet, így a segédtétel szerint összegük legfeljebb $F_m - 1 < F_m$, ami lehetetlenné teszi az egyenlőséget!
Tehát a felbontás egyértelmű. $\blacksquare$

*Konkrét számok felírása a mohó algoritmussal:*
Fibonacci-számok: $F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34, F_{10}=55, F_{11}=89, F_{12}=144, F_{13}=233$.
- $N = 100$:
A legnagyobb $\le 100$ Fibonacci-szám: $F_{11} = 89$.
Maradék: $100 - 89 = 11$.
A legnagyobb $\le 11$: $F_6 = 8$.
Maradék: $11 - 8 = 3 = F_4$.
Tehát:
$$100 = 89 + 8 + 3 = \mathbf{F_{11} + F_6 + F_4}.$$

- $N = 250$:
Legnagyobb $\le 250$: $F_{13} = 233$.
Maradék: $250 - 233 = 17$.
Legnagyobb $\le 17$: $F_7 = 13$.
Maradék: $17 - 13 = 4$.
Legnagyobb $\le 4$: $F_4 = 3$.
Maradék: $4 - 3 = 1 = F_2$.
Tehát:
$$250 = 233 + 13 + 3 + 1 = \mathbf{F_{13} + F_7 + F_4 + F_2}.$$

::: elmelet
**Elméleti háttér — Zeckendorf-tétel és Fibonacci-számrendszer.**

*Fibonacci-számrendszer (Zeckendorf-kód):* Minden természetes szám egyértelműen leírható egy 0-1 sorozattal, amely nem tartalmaz '11' részszót:
$$N = \sum_{i=2}^k b_i F_i, \qquad b_i \in \{0, 1\}, \quad b_i b_{i+1} = 0.$$
*Mohó algoritmus (Greedy strategy):* Mindig a lehető legnagyobb Fibonacci-szám levonása garantálja az optimális és érvényes Zeckendorf-alakot.
:::

## P80. feladat

Hozzuk zárt alakra az alábbi kifejezést, és igazoljuk az azonosságot a kettős leszámlálás módszerével:
$$\sum_{k=m}^{n} \binom{n}{k} \binom{k}{m}.$$

**Megoldás.**

*Zárt alak:*
$$\sum_{k=m}^{n} \binom{n}{k} \binom{k}{m} = \mathbf{\binom{n}{m} 2^{n-m}}.$$

*Bizonyítás kettős leszámlálással:*
Tekintsünk egy $n$ fős társaságot: $S = \{1, 2, \dots, n\}$.
Számoljuk meg azon $(V, B)$ párok számát, ahol:
- $B \subseteq S$ egy tetszőleges méretű bizottság;
- $V \subseteq B$ a bizottságon belül kijelölt **pontosan $m$ tagú vezetőség**!

*1. számlálási módszer (a bizottság mérete szerint):*
Osztályozzuk a lehetséges párokat a $B$ bizottság mérete, $|B| = k$ szerint.
Mivel a vezetőség mérete $m$, a bizottság legalább $m$ fős kell legyen, és legfeljebb $n$ fős:
$$m \le k \le n.$$
Rögzített $k$ bizottságméret esetén:
- A $k$ fős bizottságot $\binom{n}{k}$-féleképpen választhatjuk ki az $n$ ember közül;
- A kiválasztott $k$ tag közül az $m$ fős vezetőséget $\binom{k}{m}$-féleképpen jelölhetjük ki.
A szorzási szabály szerint rögzített $k$-ra a lehetőségek száma $\binom{n}{k} \binom{k}{m}$.
Összegezve az összes lehetséges $k = m, \dots, n$ méretre, kapjuk a bal oldali összeget:
$$\sum_{k=m}^{n} \binom{n}{k} \binom{k}{m}.$$

*2. számlálási módszer (a vezetőség közvetlen kiválasztásával):*
Fordítsuk meg a kiválasztási sorrendet:
Először jelöljük ki az $m$ fős vezetőséget ($V$) a teljes $n$ fős társaságból!
Ezt
$$\binom{n}{m}$$
féleképpen tehetjük meg.
Amint a vezetőség tagjai rögzítve vannak, a bizottság fennmaradó (egyszerű) tagjait a társaság többi $n - m$ tagja közül választhatjuk ki.
Mivel a bizottság további tagjainak számára semmilyen megszorítás nincs (akár 0 további tag is lehet), az $n - m$ ember tetszőleges részhalmaza bekerülhet a bizottságba.
Ez $2^{n-m}$ független lehetőség.
A szorzási szabály szerint az összes ilyen konfiguráció száma:
$$\binom{n}{m} 2^{n-m}.$$

Mivel mindkét számlálás ugyanazt a konfigurációhalmazt határozta meg, a két kifejezés értéke szükségképpen egyenlő:
$$\sum_{k=m}^{n} \binom{n}{k} \binom{k}{m} = \binom{n}{m} 2^{n-m}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — albizottság-választás és Vandermonde-típusú összegek.**

*Albizottság-modell:* Egy hierarchikus struktúra (alhalmaz az alhalmazban: $V \subseteq B \subseteq S$) számlálása alulról felfelé ($B$, majd $V$) összeget ad, felülről lefelé ($V$, majd a maradék) közvetlen zárt alakot ad.
*Algebrai levezetés:* $\binom{n}{k}\binom{k}{m} = \binom{n}{m}\binom{n-m}{k-m}$. Ezt behelyettesítve a $\binom{n}{m}$ kiemelhető, és $\sum_{j=0}^{n-m} \binom{n-m}{j} = 2^{n-m}$ adódik.
:::

## P81. feladat

17 doboz mindegyikében piros, kék, sárga és zöld golyók találhatók.
Bizonyítsuk be, hogy található két olyan doboz, amelyekben együttvéve (összeadva) mind a négyféle golyóból páros sok van!

**Megoldás.**

Jellemezzünk minden dobozt a benne található négyféle színű golyó darabszámának **paritásával**!
Rendeljünk minden dobozhoz egy 4 dimenziós paritásvektort:
$$\mathbf{p} = (p_1, p_2, p_3, p_4) \in \{0, 1\}^4,$$
ahol a koordináták értéke $0$, ha az adott színű golyóból páros sok van a dobozban, és $1$, ha páratlan sok:
- $p_1 \in \{0, 1\}$: a piros golyók számának paritása;
- $p_2 \in \{0, 1\}$: a kék golyók számának paritása;
- $p_3 \in \{0, 1\}$: a sárga golyók számának paritása;
- $p_4 \in \{0, 1\}$: a zöld golyók számának paritása.

Két dobozban egy adott színű golyók összege pontosan akkor páros, ha a két dobozban a kérdéses szín darabszámának paritása **megegyezik**:
- páros + páros = páros ($0 + 0 = 0 \pmod 2$);
- páratlan + páratlan = páros ($1 + 1 = 0 \pmod 2$).
(Ha viszont az egyikben páros, a másikban páratlan van, akkor az összeg páratlan: $0 + 1 = 1 \pmod 2$.)
Ezért két dobozban mind a négy szín összege akkor és csak akkor páros egyszerre, ha a két dobozhoz tartozó **teljes paritásvektor megegyezik**:
$$\mathbf{p}^{(A)} = \mathbf{p}^{(B)}.$$

Számoljuk meg a lehetséges különböző paritásvektorok számát:
Mivel 4 koordináta van, és mindegyik koordináta 2 értéket vehet fel ($0$ vagy $1$), az összes lehetséges paritásvektor száma:
$$2^4 = 16.$$
Ez a 16 paritásvektor jelenti a 16 skatulyát ($m = 16$).
A feladat szerint 17 dobozunk van ($n = 17$).
A Dirichlet-féle skatulya-elv szerint, ha 17 dobozt sorolunk be a 16 lehetséges paritásosztályba, akkor **létezik legalább két olyan doboz, amelynek paritásvektora pontosan megegyezik**!
Ezen két doboz tartalmát összeöntve mind a négy színből a darabszámok paritása megegyezett, így összegük mind a négy színre páros lesz! $\blacksquare$

::: elmelet
**Elméleti háttér — paritásvektorok a $\mathbb{Z}_2^d$ vektortérben és a skatulyaelv.**

*Paritásvektor mint állapot:* Véges sok tulajdonság paritásának egyidejű követése a $\mathbb{F}_2^d$ véges test feletti vektortér elemeinek felel meg.
*Állapotok száma:* $d$ független bináris tulajdonság esetén a lehetséges állapotok száma $2^d$.
*Skatulya-elv:* Ha az objektumok száma meghaladja a $2^d$-t, a skatulya-elv garantál két azonos állapotú objektumot. Ekkor különbségük (vagy összegük) a zéró vektor lesz modulo 2.
:::

## P82. feladat

Hány olyan egymilliónál kisebb pozitív egész szám van, amelyben a számjegyek összege pontosan 25?
Alkalmazzuk a csillag-és-vonal módszert és a logikai szita-formulát a felső korlátok kezelésére!

**Megoldás.**

Az egymilliónál kisebb pozitív egész számok legfeljebb 6-jegyűek.
Egészítsük ki a számokat balról vezető nullákkal 6-jegyű számsorozatokká:
$$d_1 d_2 d_3 d_4 d_5 d_6, \qquad \text{ahol } d_i \in \{0, 1, \dots, 9\}.$$
(A 000000 sorozat összege 0, így nem ad 25-öt, vagyis az összes megoldás automatikusan pozitív egész számnak felel meg.)
A feladat tehát az alábbi egyenlet egész megoldásainak számlálása:
$$d_1 + d_2 + d_3 + d_4 + d_5 + d_6 = 25, \qquad 0 \le d_i \le 9 \quad (i = 1, \dots, 6).$$

1. *Alaphalmaz (felső korlát nélkül):*
Ha csak a $d_i \ge 0$ nemnegativitási feltételt írjuk elő, akkor $n = 6$ változó összege $k = 25$.
Ennek nemnegatív egész megoldásszáma ismétléses kombinációval:
$$|U| = \binom{25 + 6 - 1}{25} = \binom{30}{25} = \binom{30}{5} = \frac{30 \cdot 29 \cdot 28 \cdot 27 \cdot 26}{120} = 142\,506.$$

2. *A rossz feltételek definiálása (szita-formula):*
A feltétel sérül, ha valamelyik számjegy túllépi a 9-et:
Legyen $A_i$ azon megoldások tulajdonsága, ahol $d_i \ge 10$ ($1 \le i \le 6$).

- *Egy rögzített $d_i \ge 10$:*
Végezzünk változócserét: $d_i' = d_i - 10 \ge 0$.
Ekkor a maradék összeg: $25 - 10 = 15$.
A megoldások száma:
$$|A_i| = \binom{15 + 6 - 1}{15} = \binom{20}{15} = \binom{20}{5} = \frac{20 \cdot 19 \cdot 18 \cdot 17 \cdot 16}{120} = 15\,504.$$
A hibás számjegy $\binom{6}{1} = 6$-féleképpen választható ki.

- *Két rögzített számjegy $\ge 10$ ($d_i \ge 10$ és $d_j \ge 10$):*
Változócsere: az összegből levonunk $10 + 10 = 20$-at.
A maradék összeg: $25 - 20 = 5$.
A megoldások száma:
$$|A_i \cap A_j| = \binom{5 + 6 - 1}{5} = \binom{10}{5} = \frac{10 \cdot 9 \cdot 8 \cdot 7 \cdot 6}{120} = 252.$$
A két hibás jegy $\binom{6}{2} = 15$-féleképpen választható ki.

- *Három rögzített számjegy $\ge 10$:*
Mivel $10 + 10 + 10 = 30 > 25$, a maradék összeg negatív lenne, így három vagy több számjegy egyszerre nem lehet $\ge 10$.
A magasabb rendű metszetek mind üresek!

3. *Összegzés szita-formulával:*
A feltételnek megfelelő számok száma:
$$N = |U| - \binom{6}{1}|A_1| + \binom{6}{2}|A_1 \cap A_2|$$
$$= 142\,506 - 6 \cdot 15\,504 + 15 \cdot 252$$
$$= 142\,506 - 93\,024 + 3780 = \mathbf{53\,262}.$$

::: elmelet
**Elméleti háttér — diofantoszi egyenletek felső korláttal és szita-formula.**

*Intervallum-korlátos kompozíciók:* Az $\sum_{i=1}^n x_i = S$, $0 \le x_i \le M$ feladat a generátorfüggvényekkel $((1 - x^{M+1})/(1 - x))^n$ vagy a szita-formulával oldható meg.
*Felső korlát megsértése:* $x_i \ge M + 1$ esetén az összegből levonunk $M + 1$-et, és az új összegre alkalmazzuk a $\binom{S' + n - 1}{n - 1}$ csillag-és-vonal formulát.
:::

## P83. feladat

Tekintsük a KRASZNAHORKAI szót.
a) Hány olyan anagrammája van a szónak, amelyben nem követi egymást közvetlenül három 'A' betű?
b) Hány olyan anagrammája van a szónak, amelyben semelyik két 'A' betű nincs egymás mellett?

**Megoldás.**

A KRASZNAHORKAI szó betűinek elemzése:
Összesen 13 betű:
- A: 3 db
- R: 2 db
- K: 2 db
- S: 1 db
- Z: 1 db
- N: 1 db
- H: 1 db
- O: 1 db
- I: 1 db
Ellenőrzés: $3 + 2 + 2 + 1 + 1 + 1 + 1 + 1 + 1 = 13$.

Az összes lehetséges anagramma száma ismétléses permutációval:
$$|U| = \frac{13!}{3! \cdot 2! \cdot 2! \cdot (1!)^5} = \frac{6\,227\,020\,800}{6 \cdot 2 \cdot 2} = \frac{6\,227\,020\,800}{24} = 259\,459\,200.$$

a) *Nem követi egymást közvetlenül három 'A' betű:*
A komplementer módszert alkalmazzuk: vonjuk le azokat az anagrammákat, amelyekben a három 'A' közvetlenül egymás mellett áll (együtt egyetlen [AAA] blokkot alkotnak).
Ha a három 'A' egyetlen blokk, akkor a rendezendő elemek száma $13 - 3 + 1 = 11$:
- [AAA]: 1 db
- R: 2 db
- K: 2 db
- a többi 6 betű (S, Z, N, H, O, I): mindegyik 1 db.
A rossz anagrammák száma ismétléses permutációval:
$$N_{\text{rossz}} = \frac{11!}{1! \cdot 2! \cdot 2! \cdot (1!)^6} = \frac{39\,916\,800}{4} = 9\,979\,200.$$
A keresett anagrammák száma:
$$|U| - N_{\text{rossz}} = 259\,459\,200 - 9\,979\,200 = \mathbf{249\,480\,000}.$$

b) *Semelyik két 'A' betű nincs egymás mellett:*
Alkalmazzuk a szeparátor (rés) módszert!
1. lépés: Helyezzük el a 10 darab nem-'A' betűt sorba:
Ezek a betűk: R: 2 db, K: 2 db, S: 1 db, Z: 1 db, N: 1 db, H: 1 db, O: 1 db, I: 1 db.
Ezen 10 betű elrendezéseinek száma ismétléses permutációval:
$$N_{\text{egyéb}} = \frac{10!}{2! \cdot 2! \cdot (1!)^6} = \frac{3\,628\,800}{4} = 907\,200.$$
2. lépés: A 10 elhelyezett betű között és a sor két szélén pontosan
$$10 + 1 = 11 \text{ darab lehetséges hely (rés)}$$
keletkezik:
$$\_ \; X_1 \; \_ \; X_2 \; \_ \dots \_ \; X_{10} \; \_$$
Ahhoz, hogy semelyik két 'A' ne kerüljön egymás mellé, a 3 darab 'A' betűt ezen 11 rés közül 3 különböző résbe kell beillesztenünk.
Mivel az 'A' betűk teljesen egyformák, a rések kiválasztása egyszerű kombináció:
$$\binom{11}{3} = \frac{11 \cdot 10 \cdot 9}{6} = 11 \cdot 5 \cdot 3 = 165.$$
A szorzási szabály szerint az olyan anagrammák száma, ahol semelyik két 'A' nincs egymás mellett:
$$N_{\text{jó}} = 907\,200 \cdot 165 = \mathbf{149\,688\,000}.$$

::: elmelet
**Elméleti háttér — multihalmaz anagrammák és résmódszer.**

*Résmódszer azonos elemek szeparálására:* Ha egy multihalmazban egyetlen kitüntetett betűcsoport ($k$ darab) szomszédságát tiltjuk, a többi $m$ elemet elrendezzük ($M$ módon), majd a keletkező $m + 1$ résből választunk $k$-t: $M \cdot \binom{m+1}{k}$.
*Különbség a feltételek között:* A „nincs 3 egymás mellett” csupán az [AAA] blokk kizárását jelenti (maradhat [AA] és [A]), míg a „semelyik kettő nincs egymás mellett” az összes szomszédságot tiltja.
:::

## P84. feladat

Egy papírboltban $k$ különböző fajta képeslap kapható.
Hányféleképpen küldhetünk belőlük $n$ barátunknak 2–2 különbözőt úgy, hogy egy fajta képeslapot több barátunknak is elküldhetünk, de azt szeretnénk, hogy ne legyen olyan képeslapfajta, amelyet mind az $n$ barátunk megkapott?
Alkalmazzuk a szita-formulát a tiltott univerzális képeslapokra!

**Megoldás.**

Minden barátunknak a $k$ fajta képeslap közül 2 különböző fajtát küldünk.
Egy barátnak küldött képeslap-pár kiválasztásának lehetőségeinek száma:
$$\binom{k}{2}.$$
Mivel $n$ barátunk van, és a barátoknak küldött képeslapokat egymástól függetlenül választhatjuk ki, az összes lehetséges küldési konfiguráció száma:
$$|U| = \binom{k}{2}^n.$$

Akkor nem felel meg egy konfiguráció, ha van olyan képeslapfajta, amelyet **mind az $n$ barátunk megkapott**.
Alkalmazzuk a szita-formulát ezen „rossz” tulajdonságokra!
Minden $i \in \{1, 2, \dots, k\}$ képeslapfajtára legyen $A_i$ azon küldések halmaza, ahol az $i$-edik képeslapot mind az $n$ barátunk megkapta.

- *Egy rögzített $i$-edik képeslapot mindenki megkapott:*
Ekkor mind az $n$ barátunk megkapta az $i$-edik lapot, így mindegyiküknek a második képeslapját a fennmaradó $k - 1$ képeslap közül kell kiválasztanunk.
Minden barátra $k - 1$ lehetőség van, így a metszet mérete:
$$|A_i| = (k - 1)^n.$$
Mivel $k$ különböző képeslapfajta van, az egytagú metszetek összege:
$$\binom{k}{1} (k - 1)^n = k(k - 1)^n.$$

- *Két rögzített képeslapot ($i$-ediket és $j$-ediket) mindenki megkapott:*
Ekkor mind az $n$ barátunk pontosan ezt a két képeslapot kapta meg!
Mivel fejenként csak 2 képeslapot küldünk, mindenkinek a választása teljesen kötött (csak 1 lehetőség barátonként):
$$|A_i \cap A_j| = 1^n = 1.$$
Két képeslapfajta $\binom{k}{2}$-féleképpen választható ki, így a kéttagú metszetek összege:
$$\binom{k}{2} \cdot 1 = \binom{k}{2}.$$

- *Három vagy több rögzített képeslapot mindenki megkapott:*
Mivel minden barátunk pontosan 2 képeslapot kap, lehetetlen, hogy 3 vagy több különböző képeslapot mindenki megkapjon!
Ezért minden legalább 3-tagú metszet mérete 0.

A szita-formula komplementer alakja szerint a megengedett küldések száma:
$$N = |U| - \sum_{i=1}^k |A_i| + \sum_{1 \le i < j \le k} |A_i \cap A_j|$$
$$= \mathbf{\binom{k}{2}^n - k(k - 1)^n + \binom{k}{2}}.$$

::: elmelet
**Elméleti háttér — szita-formula metszetek korlátos méretével.**

*Csonkolt szita-formula:* Ha a részhalmazok mérete korlátozott (itt mindenki legfeljebb 2 lapot kap), a magasabb rendű metszetek ($m \ge 3$) automatikusan üresek lesznek.
*Univerzálisan kiosztott elemek kizárása:* A feladat a hipergráfok lefedési problémájának és a Boole-függvények szita-analízisének szép kombinatorikai alkalmazása.
:::
