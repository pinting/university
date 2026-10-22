# Kombinatorika 1 – Gyakorlófeladatok megoldásai

### I. Mat. BSc Kombinatorika 1 · 2026/27 első félév · részletes megoldások és elméleti háttér

Ez a dokumentum a *Kombinatorika 1 – Gyakorlófeladatok* gyűjtemény valamennyi ($168$ darab) feladatának teljes, lépésről lépésre levezetett megoldását és elméleti hátterét tartalmazza. Minden feladatnál megismételjük a feladatkitűzést, ezt követi a részletes **megoldás** a végeredmény kiemelésével, végül pedig a szürke dobozban lévő **elméleti háttér**, amely összefoglalja a kulcstételeket, bizonyítási sémákat, általánosításokat és a tipikus hibalehetőségeket.

Jelölések: $\mathbb{N} = \{1, 2, 3, \dots\}$, $\mathbb{N}_0 = \{0, 1, 2, \dots\}$, $[n] = \{1, 2, \dots, n\}$; $\binom{n}{k} = \frac{n!}{k!(n-k)!}$; $(n)_k = n(n-1)\dots(n-k+1)$; $S(n, k)$ a másodfajú Stirling-számok; $p(n)$ a partíciók száma; $V(G)$ a csúcshalmaz, $E(G)$ az élhalmaz, $d(v)$ a fokszám, $\chi(G)$ a kromatikus szám, $\chi_e(G)$ az élkromatikus szám.

# Az 1. feladatsorhoz

## Gy1.1. feladat

Egy konvex 20-szögnek hány átlója van? Egy adott rögzített csúcsból induló átlók közül hány átlópár választható ki?

**Megoldás.**

Egy konvex 20-szög átlóinak száma a képlet alapján:
$$\frac{20(20-3)}{2} = \frac{20 \cdot 17}{2} = \mathbf{170}.$$
Egy rögzített csúcsból önmagába és a két szomszédos csúcsba nem húzható átló, így pontosan $20 - 3 = 17$ átló indul ki. Ebből a 17 átlóból egy átlópár kiválasztása sorrend nélkül:
$$\binom{17}{2} = \frac{17 \cdot 16}{2} = \mathbf{136}.$$

::: elmelet
**Elméleti háttér — kombinációk és csúcsfokszám sokszögben.**

Egy konvex $n$-szög átlógráfjában minden csúcs foka $n - 3$. A csúcsból kiinduló átlók halmazából tetszőleges $k$ darab kiválasztása $\binom{n-3}{k}$ módon lehetséges. Az összes átló száma a fokszámok összegének fele: $\frac{n(n-3)}{2}$, ami a kézfogási lemma közvetlen következménye.
:::

## Gy1.2. feladat

Egy konvex sokszögnek pontosan 90 átlója van. Hány oldala van a sokszögnek?

**Megoldás.**

Jelölje $n$ a sokszög csúcsainak számát. Az átlók száma:
$$\frac{n(n-3)}{2} = 90 \implies n(n-3) = 180.$$
Mivel $n$ pozitív egész, és $15 \cdot 12 = 180$, adódik, hogy $n = 15$.
A sokszögnek tehát **15 oldala** van.

::: elmelet
**Elméleti háttér — kombinatorikai egyenletek diszkrét megoldása.**

Kombinatorikus feladatoknál a feltételekből kapott egyenlet ismeretlene természetes szám. Az $n(n-3) = 180$ egyenletet diszkrét prímfelbontással vagy a pozitív gyök megkeresésével oldhatjuk meg.
:::

## Gy2.1. feladat

Egy 24 fős egyetemi tankör elnököt, elnökhelyettest és tanulmányi felelőst választ (egy személy legfeljebb egy tisztséget kaphat). Hányféleképpen alakulhat a tisztségviselők köre? Hányféleképpen választhatnak egy 3 fős küldöttséget tisztségek nélkül?

**Megoldás.**

Tisztségekkel (a sorrend számít):
$$24 \cdot 23 \cdot 22 = \mathbf{12\,144}.$$
Tisztségek nélkül (a sorrend nem számít):
$$\binom{24}{3} = \frac{24 \cdot 23 \cdot 22}{6} = \mathbf{2024}.$$

::: elmelet
**Elméleti háttér — tisztségosztás kontra bizottságválasztás.**

Ha a kiválasztott személyek különböző funkciót töltenek be, az variáció. Ha egyenrangú tagokból álló bizottságot választunk, az kombináció.
:::

## Gy2.2. feladat

Egy 30 fős futóversenyen holtverseny nem lehetséges. Hányféleképpen alakulhat az első 5 beérkező sorrendje? Hányféleképpen választható ki a mezőnyből az 5 leggyorsabb futó halmaza?

**Megoldás.**

Az első 5 helyezett sorrendben (variáció):
$$30 \cdot 29 \cdot 28 \cdot 27 \cdot 26 = \mathbf{17\,100\,720}.$$
Az 5 leggyorsabb futó halmaza (kombináció):
$$\binom{30}{5} = \frac{17\,100\,720}{120} = \mathbf{142\,506}.$$

::: elmelet
**Elméleti háttér — szorzási szabály szukcesszív döntésekre.**

Egymás utáni döntéseknél, ha az egyes lépések lehetőségeinek száma független az előző döntések konkrét kimenetelétől, a lehetőségek száma a szorzattal egyenlő.
:::

## Gy3.1. feladat

Egy zászlórúdra $n$ darab jelzőzászlót húzunk fel egymás fölé 5 lehetséges szín közül úgy, hogy semelyik két egymással közvetlenül érintkező zászló nem azonos színű. Hányféle ilyen jelzés készíthető?

**Megoldás.**

A legalsó zászló színe 5-féle lehet. Minden további zászló színe csak az alatta lévőtől kell, hogy különbözzön, ami mindig $5 - 1 = 4$ lehetőség. Mivel $n - 1$ további szint van:
$$5 \cdot 4^{n-1}.$$

::: elmelet
**Elméleti háttér — szukcesszív színezés fán és úton.**

Bármely körmentes összefüggő gráf (fa vagy út) jó $k$-színezéseinek száma $k(k-1)^{n-1}$, mert tetszőleges gyökérből indulva minden további csúcsnak pontosan egy szülője van, amitől különböznie kell.
:::

## Gy3.2. feladat

Egy kör alakú díszterem falán 6 oszlop áll egy kör mentén. Hányféleképpen festhetjük be őket 3 színnel úgy, hogy semelyik két szomszédos oszlop ne kapjon azonos színt?

**Megoldás.**

Ez a $C_6$ körgráf jó 3-színezéseinek száma. A kör kromatikus polinomja $k = 3, n = 6$ esetén:
$$P(C_6, 3) = (3 - 1)^6 + (3 - 1)(-1)^6 = 2^6 + 2 \cdot 1 = 64 + 2 = \mathbf{66}.$$

::: elmelet
**Elméleti háttér — kör színezése és paritás.**

Páros hosszúságú körök kromatikus száma $\chi(C_{2m}) = 2$, páratlan köröké $\chi(C_{2m+1}) = 3$. A színezések száma a $P(C_n, k) = (k-1)^n + (-1)^n(k-1)$ formulával közvetlenül számolható.
:::

## Gy4.1. feladat

5 különböző színű gyöngyből készítünk nyakláncot. Hány különböző nyaklánc fűzhető: a) csak forgatási azonosság mellett; b) forgatási és tükrözési azonosság mellett?

**Megoldás.**

a) Forgatással azonosak: $(5-1)! = 4! = \mathbf{24}$.
b) Forgatással és tükrözéssel azonosak: $\frac{(5-1)!}{2} = \frac{24}{2} = \mathbf{12}$.

::: elmelet
**Elméleti háttér — kör alakú permutációk párosítása tükrözéssel.**

Kör alakú sorrendeknél az óramutató járásával megegyező és azzal ellentétes bejárás egymás tükörképe. Különböző elemeknél ez a két bejárás mindig különbözik, ezért a tükrözés párokba rendezi a forgatási osztályokat.
:::

## Gy4.2. feladat

7 különböző színű gyöngyből nyakláncot készítünk forgatási és tükrözési azonosság mellett. Hányféle nyaklánc készíthető úgy, hogy a piros és a kék gyöngy ne kerüljön közvetlenül egymás mellé?

**Megoldás.**

Az összes lehetséges nyaklánc száma:
$$\frac{(7-1)!}{2} = \frac{6!}{2} = \frac{720}{2} = 360.$$
Vonjuk le azokat, ahol a piros (P) és kék (K) gyöngy szomszédos!
Vonjuk össze a PK gyöngypárt egyetlen szupergyönggyé. Ekkor $7 - 1 = 6$ gyöngyöt fűzünk fel a nyakláncra.
Körön 6 különböző objektum forgatás és tükrözés szerinti elrendezéseinek száma $\frac{(6-1)!}{2} = \frac{5!}{2} = 60$.
A PK blokk belső sorrendje (PK vagy KP) a térbeli átfordítással egymásba megy, tehát a diéder-osztályon belül a blokk orientációja nem hoz létre új nyakláncot.
Ezért pontosan 60 olyan nyaklánc van, ahol P és K szomszédos.
A feltételnek megfelelő nyakláncok száma:
$$360 - 60 = \mathbf{300}.$$

::: elmelet
**Elméleti háttér — blokkosítás nyakláncokon.**

Ha nyakláncon két elemet összekötünk egy blokkba, a blokk megfordítása a teljes nyaklánc tükrözésével ekvivalens lehet. Ezért a $D_n$ szerinti osztályok számlálásánál körültekintően kell kezelni a blokk belső szimmetriáját.
:::

## Gy5.1. feladat

4 házaspár (8 ember) ül le egy kerek asztal köré úgy, hogy mindenki a házastársa mellett ül (két ülésrend azonos, ha forgatással egymásba vihető). Hányféle ülésrend van?

**Megoldás.**

A 4 pár blokkja a kör körül $(4-1)! = 3! = 6$ módon ülhet le.
Mind a 4 párban 2-féle a belső elrendezés ($2^4 = 16$).
Összesen:
$$6 \cdot 16 = \mathbf{96}.$$

::: elmelet
**Elméleti háttér — kör alakú blokkosítás.**

$k$ blokk kör alakú elrendezése $(k-1)!$, és minden $i$-edik blokk belső sorrendje $m_i!$, az összes lehetőség $(k-1)! \prod m_i!$.
:::

## Gy5.2. feladat

4 házaspár ül le egy egyenes padra (8 egymás melletti helyre). Hányféleképpen ülhetnek le úgy, hogy mindenki a házastársa mellett üljön?

**Megoldás.**

Egyenes pad esetén nincs forgatási azonosság: a 4 pár sorrendje a padon $4! = 24$.
A 4 pár mindegyikének belső elrendezése 2-féle ($2^4 = 16$).
Összesen:
$$24 \cdot 16 = \mathbf{384}.$$

::: elmelet
**Elméleti háttér — körasztal kontra egyenes pad.**

Egyenes vonalú elrendezésnél $n!$ permutáció van, míg körasztalnál $(n-1)!$, mert a vonalnak kitüntetett kezdőpontja van, a körnek nincs.
:::

## Gy6.1. feladat

Hány különböző anagrammája van az ABRAKADABRA szónak?

**Megoldás.**

A szó 11 betűből áll:
- A: 5 db
- B: 2 db
- R: 2 db
- K: 1 db
- D: 1 db
Ismétléses permutációval:
$$\frac{11!}{5! \cdot 2! \cdot 2! \cdot 1! \cdot 1!} = \frac{39\,916\,800}{120 \cdot 2 \cdot 2} = \frac{39\,916\,800}{480} = \mathbf{83\,160}.$$

::: elmelet
**Elméleti háttér — multihalmaz permutációi.**

Egy multihalmaz lineáris rendezéseinek száma az elemek faktoriálisának hányadosa az azonos elemek csoportméreteinek faktoriálisaival.
:::

## Gy6.2. feladat

Hány olyan anagrammája van az EGYETEM szónak, amelyben a három 'E' betű közül semelyik kettő nem áll egymás mellett?

**Megoldás.**

Az EGYETEM szó 7 betűs: E: 3 db, G: 1 db, Y: 1 db, T: 1 db, M: 1 db.
Helyezzük el először a 4 mássalhangzót (G, Y, T, M): ezek $4! = 24$ módon rendezhetők el.
A 4 mássalhangzó $4 + 1 = 5$ lehetséges pozíciót (rést) határoz meg:
$$\_ \; G \; \_ \; Y \; \_ \; T \; \_ \; M \; \_$$
Ahhoz, hogy semelyik két 'E' ne kerüljön egymás mellé, az 5 lehetséges résbe legfeljebb egy 'E' kerülhet. Ezért az 5 résből kell kiválasztanunk 3-at a 3 db 'E' betű számára:
$$\binom{5}{3} = 10.$$
A jó anagrammák száma a szorzási szabály szerint:
$$24 \cdot 10 = \mathbf{240}.$$

::: elmelet
**Elméleti háttér — résmódszer (elválasztó módszer).**

Ha bizonyos azonos elemek nem állhatnak egymás mellett, először a többi elemet rendezzük el, és az általuk létrehozott elválasztó helyekre (résekbe) illesztjük be a tiltott párokat alkotó elemeket legfeljebb egyesével.
:::

## Gy7.1. feladat

Egy teázóban 5-féle tea rendelhető. Hányféleképpen rendelhet egy 10 fős társaság fejenként egy-egy teát, ha csak az számít, hogy az egyes teafajtákból hány csészét kell készíteni?

**Megoldás.**

5 teafajtából választunk 10 csészényit ismétléses kombinációval:
$$\binom{5 + 10 - 1}{10} = \binom{14}{10} = \binom{14}{4} = \frac{14 \cdot 13 \cdot 12 \cdot 11}{24} = \mathbf{1001}.$$

::: elmelet
**Elméleti háttér — rendelések és multihalmazok.**

A rendelés egy 10 elemű multihalmaz az 5 teafajta halmazából, amelynek elemszáma $\binom{5+10-1}{10}$.
:::

## Gy7.2. feladat

Hányféleképpen oszthatunk szét 20 egyforma füzetet 4 diák között úgy, hogy minden diák legalább 2 füzetet kapjon?

**Megoldás.**

Legyen $x_i$ az $i$-edik diák füzeteinek száma: $x_1 + x_2 + x_3 + x_4 = 20$, ahol $x_i \ge 2$.
Minden diáknak adunk 2 füzetet (ez $4 \times 2 = 8$ füzet). A maradék $20 - 8 = 12$ füzetet osztjuk szét korlátozás nélkül:
$$y_1 + y_2 + y_3 + y_4 = 12, \qquad y_i = x_i - 2 \ge 0.$$
A nemnegatív megoldások száma:
$$\binom{4 + 12 - 1}{12} = \binom{15}{12} = \binom{15}{3} = \frac{15 \cdot 14 \cdot 13}{6} = \mathbf{455}.$$

::: elmelet
**Elméleti háttér — alsó korlátok eltolása diofantoszi felbontásban.**

Ha $x_i \ge c_i$, akkor az $y_i = x_i - c_i \ge 0$ változócserével a feladat a $\sum y_i = k - \sum c_i$ alapegyenletre redukálódik.
:::

## Gy8.1. feladat

Hány olyan 5-jegyű szám van, amelynek számjegyei szigorúan monoton növekednek?

**Megoldás.**

A számjegyek az $\{1, 2, \dots, 9\}$ halmazból valók (a 0 nem lehet benne). Bármely 5 számjegy egyértelműen növekvő sorrendbe állítható:
$$\binom{9}{5} = \binom{9}{4} = \frac{9 \cdot 8 \cdot 7 \cdot 6}{24} = \mathbf{126}.$$

::: elmelet
**Elméleti háttér — számjegyek szigorú növekedése.**

A szigorúan növekvő számjegyek száma $k$ jegyű szám esetén mindig $\binom{9}{k}$ ($1 \le k \le 9$).
:::

## Gy8.2. feladat

Hány olyan 5-jegyű szám van, amelynek számjegyei szigorúan monoton csökkennek?

**Megoldás.**

A számjegyek a $\{0, 1, \dots, 9\}$ tízjegyű halmazból valók, a 0 csak a végén állhat:
$$\binom{10}{5} = \frac{10 \cdot 9 \cdot 8 \cdot 7 \cdot 6}{120} = \mathbf{252}.$$

::: elmelet
**Elméleti háttér — számjegyek szigorú csökkenése.**

A szigorúan csökkenő számjegyek száma $k$ jegyű szám esetén mindig $\binom{10}{k}$ ($1 \le k \le 10$).
:::

## Gy9.1. feladat

Egy 9 elemű halmaznak hány páros elemszámú részhalmaza van? Hány olyan részhalmaza van, amely legalább 5 elemű?

**Megoldás.**

A páros elemszámú részhalmazok száma:
$$2^{9-1} = 2^8 = \mathbf{256}.$$
A legalább 5 elemű részhalmazok száma: mivel $\binom{9}{k} = \binom{9}{9-k}$, az $A \mapsto S \setminus A$ komplementerképzés bijekciót létesít a legfeljebb 4 elemű és a legalább 5 elemű részhalmazok között. Így a legalább 5 elemű részhalmazok száma az összes részhalmaz fele:
$$\frac{2^9}{2} = 2^8 = \mathbf{256}.$$

::: elmelet
**Elméleti háttér — szimmetria a binomiális együtthatókban.**

Páratlan $n = 2m+1$ esetén a részhalmazok száma pontosan feleződik a medián méretnél ($|A| \ge m+1$).
:::

## Gy9.2. feladat

Egy 10 elemű halmaznak hány olyan részhalmaza van, amely tartalmaz egy adott $a$ elemet, de nem tartalmaz egy adott $b$ elemet ($a \neq b$)?

**Megoldás.**

Legyen a halmaz $S$, $|S| = 10$. Az $a$ elem kötelezően bent van, a $b$ elem tilos. A maradék $10 - 2 = 8$ elem mindegyikéről függetlenül dönthetünk (benne van-e vagy sem). Ezért a lehetőségek száma:
$$2^8 = \mathbf{256}.$$

::: elmelet
**Elméleti háttér — karakterisztikus függvény és részhalmazok számlálása.**

Egy $n$ elemű halmaz részhalmazai ekvivalensek az $\{0, 1\}^n$ karakterisztikus vektorokkal. Előírt elemek esetén a megfelelő koordináták rögzítettek, a szabad koordináták száma adja a hatványt.
:::

## Gy10.1. feladat

6 fiú és 6 lány hányféleképpen állhat fel egy sorba úgy, hogy felváltva álljanak fiúk és lányok?

**Megoldás.**

Mivel a fiúk és lányok száma egyenlő, kétféle alapminta létezik:
1. FLFLFLFLFLFL (fiúval kezdődik)
2. LFLFLFLFLFLF (lánnyal kezdődik)
Mindkét mintában a fiúk $6!$, a lányok $6!$ módon ülhetnek le:
$$2 \cdot (6!)^2 = 2 \cdot 720^2 = 2 \cdot 518\,400 = \mathbf{1\,036\,800}.$$

::: elmelet
**Elméleti háttér — alternáló minták száma egyenlő méret esetén.**

Ha $|A| = |B|$, két minta van ($AB\dots AB$ és $BA\dots BA$). Ha $|A| = |B| + 1$, pontosan egy minta van ($ABA\dots BA$). Ha $|A| > |B| + 1$, a szomszédsági tiltás nem teljesíthető (skatulya-elv).
:::

## Gy10.2. feladat

4 fiú és 9 lány hányféleképpen állhat sorba úgy, hogy semelyik két fiú nem állhat közvetlenül egymás mellett?

**Megoldás.**

A 9 lány elrendezése $9!$. A keletkező 10 résbe a 4 fiú variációval helyezhető el:
$$9! \cdot (10 \cdot 9 \cdot 8 \cdot 7) = 362\,880 \cdot 5040 = \mathbf{1\,828\,915\,200}.$$

::: elmelet
**Elméleti háttér — résbe helyezés variációval.**

$k$ elem elhelyezése $m$ rendelkezésre álló résbe sorrenddel: $\binom{m}{k} k! = \frac{m!}{(m-k)!}$.
:::

## Gy11.1. feladat

Hányféleképpen tehetünk fel egy $6 \times 6$-os sakktáblára 4 egyforma bástyát úgy, hogy semelyik kettő ne álljon egy sorban vagy egy oszlopban?

**Megoldás.**

Kiválasztjuk a 4 elfoglalt sort: $\binom{6}{4} = 15$ lehetőség.
Kiválasztjuk a 4 elfoglalt oszlopot: $\binom{6}{4} = 15$ lehetőség.
A kiválasztott $4 \times 4$-es résztáblán a 4 bástyát $4! = 24$ módon helyezhetjük el függetlenül:
$$15 \cdot 15 \cdot 24 = 225 \cdot 24 = \mathbf{5400}.$$

::: elmelet
**Elméleti háttér — rész-sakktáblák és független bástyák.**

$k$ darab független bástya elhelyezése egy $n \times m$ táblán: $\binom{n}{k}\binom{m}{k} k!$.
:::

## Gy11.2. feladat

Egy $5 \times 5$-ös sakktáblán 5 bástya nem üti egymást, és semelyik sem áll a főátlón (azaz az $(i,i)$ mezőkön). Hány ilyen elrendezés létezik?

**Megoldás.**

Ez az 5 elemű derangemensek (fixpontmentes permutációk) száma:
$$D_5 = 5! \left(1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} - \frac{1}{5!}\right) = 120 \left(\frac{1}{2} - \frac{1}{6} + \frac{1}{24} - \frac{1}{120}\right) = 60 - 20 + 5 - 1 = \mathbf{44}.$$

::: elmelet
**Elméleti háttér — derangement (fixpontmentes permutáció).**

A főátlót elkerülő bástyák az olyan $\pi \in S_n$ permutációknak felelnek meg, amelyekre $\pi(i) \neq i$ minden $i$-re. $D_n = n! \sum_{k=0}^n \frac{(-1)^k}{k!} = \left[\frac{n!}{e}\right]$.
:::

## Gy12.1. feladat

Hányféleképpen oszthatunk szét 15 egyforma ajándékot 5 gyerek között úgy, hogy senki se maradjon ajándék nélkül?

**Megoldás.**

Minden gyereknek legalább 1 ajándékot kell kapnia: $x_1 + \dots + x_5 = 15$, ahol $x_i \ge 1$.
Mindenkinek adunk 1 ajándékot, a maradék 10 ajándékot osztjuk szét 5 gyerek között nemnegatív egészként:
$$\binom{10 + 5 - 1}{10} = \binom{14}{10} = \binom{14}{4} = \frac{14 \cdot 13 \cdot 12 \cdot 11}{24} = \mathbf{1001}.$$
(Vagy közvetlenül a pozitív egészekre vonatkozó képlettel: $\binom{k-1}{n-1} = \binom{15-1}{5-1} = \binom{14}{4} = 1001$.)

::: elmelet
**Elméleti háttér — kompozíciók (pozitív egész megoldások).**

Egy $k$ pozitív egész szám $n$ darab pozitív egész összegeként való felírásainak száma $\binom{k-1}{n-1}$, mert $k$ darab 1-es között $k-1$ lehetséges elválasztó hely van, ahová $n-1$ falat szúrunk be.
:::

## Gy12.2. feladat

Hányféleképpen osztható szét 8 különböző könyv 3 tanuló között úgy, hogy mindegyik tanuló legalább egy könyvet kapjon?

**Megoldás.**

Ez a $\{1, \dots, 8\} \to \{A, B, C\}$ szürjektív függvények száma.
Szita-formulával számolunk:
Az összes kiosztás száma $3^8 = 6561$.
Kivonjuk azokat, ahol legalább egy tanuló nem kap könyvet:
$\binom{3}{1} \cdot 2^8 = 3 \cdot 256 = 768$.
Hozzáadjuk azokat, ahol két tanuló sem kap könyvet (mindent a harmadik kap):
$\binom{3}{2} \cdot 1^8 = 3 \cdot 1 = 3$.
Az olyan esetek száma, ahol mindhárman kapnak könyvet:
$$3^8 - \binom{3}{1} 2^8 + \binom{3}{2} 1^8 = 6561 - 768 + 3 = \mathbf{5796}.$$
(Másodfajú Stirling-számmal: $3! \cdot S(8,3) = 6 \cdot 966 = 5796$.)

::: elmelet
**Elméleti háttér — szürjektív leképezések és másodfajú Stirling-számok.**

Egy $k$ elemű halmaz $n$ elemű halmazra való ráképezéseinek száma $n! \cdot S(k, n) = \sum_{j=0}^n (-1)^{n-j} \binom{n}{j} j^k$.
:::

## Gy13.1. feladat

Hányféleképpen írhatók be az $1, 2, \dots, 7$ számok a következő mintába: $\_\_ < \_\_ < \_\_ > \_\_ > \_\_ > \_\_ > \_\_$?

**Megoldás.**

A csúcs a 3. helyen van, így oda kötelezően a legnagyobb szám, a 7 kerül.
A csúcs előtti 2 helyre a maradék 6 számból $\binom{6}{2}$ módon választhatunk. A maradék 4 szám a csúcs utánra kerül. A sorrend mindkét oldalon egyértelmű:
$$\binom{6}{2} = \frac{6 \cdot 5}{2} = \mathbf{15}.$$

::: elmelet
**Elméleti háttér — csúcs helyének rögzítése.**

Ha az $n$ elemű permutációban a csúcs az $m$-edik pozíción áll, a lehetőségek száma $\binom{n-1}{m-1}$.
:::

## Gy13.2. feladat

Hány olyan permutációja van az $\{1, 2, 3, 4, 5\}$ halmaznak, amely úgynevezett völgypermutáció: $a_1 > a_2 > a_3 < a_4 < a_5$?

**Megoldás.**

Itt az $a_3$ elem a völgy (lokális és globális minimum), így oda szükségképpen a legkisebb szám, az 1 kerül.
A maradék 4 számból ($2, 3, 4, 5$) ki kell választani a bal oldalra kerülő 2 számot: $\binom{4}{2} = 6$.
Mindkét ágon a sorrend a szigorú monotonitás miatt egyértelmű (balra csökkenő, jobbra növekvő).
A lehetőségek száma:
$$\binom{4}{2} = \mathbf{6}.$$

::: elmelet
**Elméleti háttér — völgypermutációk és duális unimodalitás.**

A völgypermutációk az unimodális permutációk komplementerei ($a_i' = n + 1 - a_i$). Egy adott helyen lévő völgy esetén a legkisebb elem áll a völgy alján.
:::

## Gy14.1. feladat

Hányféleképpen juthatunk el a $(0,0)$ pontból a $(6,6)$ pontba jobbra és fel lépésekkel? Hány olyan út van, amely áthalad a $(2,3)$ ponton?

**Megoldás.**

Összes út $(0,0) 	o (6,6)$:
$$\binom{6+6}{6} = \binom{12}{6} = \frac{12 \cdot 11 \cdot 10 \cdot 9 \cdot 8 \cdot 7}{720} = \mathbf{924}.$$
Áthalad a $(2,3)$ ponton:
$(0,0) 	o (2,3)$: $\binom{2+3}{3} = \binom{5}{3} = 10$.
$(2,3) 	o (6,6)$: $6 - 2 = 4$ jobbra, $6 - 3 = 3$ fel lépés: $\binom{4+3}{3} = \binom{7}{3} = 35$.
Összesen:
$$10 \cdot 35 = \mathbf{350}.$$

::: elmelet
**Elméleti háttér — közbenső ponton átvezető utak.**

A közbenső pont kettéosztja az utat két független rácssétára, melyek száma szorzódik.
:::

## Gy14.2. feladat

Hány olyan útvonal vezet a $(0,0)$-ból az $(n,n)$ pontba jobbra és fel lépésekkel, amely soha nem lép a főátló ($y = x$) fölé (azaz minden lépés után $x \ge y$)?

**Megoldás.**

Ez a klasszikus Dyck-utak száma.
Az összes $(0,0) \to (n,n)$ út száma $\binom{2n}{n}$.
Azok az utak, amelyek átlépik a főátlót, érintik az $y = x + 1$ egyenest.
Tekintsük az első olyan pontot, ahol az út eléri az $y = x + 1$ egyenest, és tükrözzük az út ezen pont utáni szakaszát az $y = x + 1$ egyenesre (André-féle reflexiós elv).
A tükrözött út a $(-1, 1)$ eltolással a végpontot $(n-1, n+1)$-be viszi.
Mivel ez a reflexió bijekció a rossz utak és a $(0,0) \to (n-1, n+1)$ utak között, a rossz utak száma $\binom{2n}{n+1}$.
A jó utak száma tehát az $n$-edik Catalan-szám:
$$C_n = \binom{2n}{n} - \binom{2n}{n+1} = \mathbf{\frac{1}{n+1}\binom{2n}{n}}.$$

::: elmelet
**Elméleti háttér — André-féle tükrözési elv és Catalan-számok.**

A reflexiós elv a kombinatorika egyik legmélyebb eszköze: a határt átlépő utak bijektív tükrözéssel egy eltolt végpontú szabad sétára képezhetők le.
:::

## Gy15.1. feladat

Hány olyan 6-jegyű PIN-kód létezik (amely 0-val is kezdődhet), amelyben semelyik két egymást követő számjegy nem azonos?

**Megoldás.**

Az első számjegy 10-féle lehet ($0..9$).
Minden további számjegynek csak az előtte álló jegytől kell különböznie, így mindegyikre 9 lehetőség van:
$$10 \cdot 9^5 = 10 \cdot 59\,049 = \mathbf{590\,490}.$$

::: elmelet
**Elméleti háttér — PIN-kódok és szomszédos tiltások.**

Ha a kezdőjegyre nincs megszorítás, az első pozíció $|S|$, a további $k-1$ pozíció mindegyike $(|S|-1)$ választást enged: $|S|(|S|-1)^{k-1}$.
:::

## Gy15.2. feladat

Hány olyan 6-jegyű szám van (nem kezdődhet 0-val), amelyben semelyik két egymást követő jegy paritása sem egyezik meg (azaz a páros és páratlan számjegyek szigorúan váltakoznak)?

**Megoldás.**

A számjegyek két csoportba oszthatók:
- Páros számjegyek: $\{0, 2, 4, 6, 8\}$ (5 db)
- Páratlan számjegyek: $\{1, 3, 5, 7, 9\}$ (5 db)
Két eset lehetséges a kezdőjegy paritása szerint:
1. eset: Páratlan számmal kezdődik (Páratlan-Páros-Páratlan-Páros-Páratlan-Páros).
Az 1. jegy 5-féle, a 2. jegy 5-féle, ..., a 6. jegy 5-féle: $5^6 = 15\,625$.
2. eset: Páros számmal kezdődik (Páros-Páratlan-Páros-Páratlan-Páros-Páratlan).
Mivel nem kezdődhet 0-val, az 1. jegy csak $\{2, 4, 6, 8\}$ lehet (4 lehetőség).
A további 5 jegy mindegyike 5-féle lehet: $4 \cdot 5^5 = 4 \cdot 3125 = 12\,500$.
A két diszjunkt eset összege:
$$15\,625 + 12\,500 = \mathbf{28\,125}.$$

::: elmelet
**Elméleti háttér — paritásváltakozó számsorozatok.**

Ha az állapotok két osztályba tartoznak (páros/páratlan), az alternáló sorrendek száma az egyes osztályok méreteinek hatványa, korrigálva a kezdőérték tiltásaival.
:::

## Gy16.1. feladat

Hány $f: \{1, 2, 3\} \to \{1, 2, \dots, 8\}$ szigorúan monoton növekvő függvény van, amelyre teljesül, hogy $f(2) = 5$?

**Megoldás.**

A feltétel szerint $1 \le f(1) < 5 < f(3) \le 8$.
$f(1)$ értéke az $\{1, 2, 3, 4\}$ halmazból választható (4 lehetőség).
$f(3)$ értéke az $\{6, 7, 8\}$ halmazból választható (3 lehetőség).
A két választás egymástól független:
$$4 \cdot 3 = \mathbf{12}.$$

::: elmelet
**Elméleti háttér — rögzített értékű monoton függvények.**

Ha egy monoton függvény egy értéke rögzített, az értelmezési tartomány és a képhalmaz két független részre esik szét.
:::

## Gy16.2. feladat

Hány olyan $f: \{1, 2, 3, 4\} \to \{1, 2, \dots, 7\}$ gyengén monoton növő függvény van, amelyre $f(1) = 2$ és $f(4) = 6$?

**Megoldás.**

A feltétel szerint:
$$2 \le f(2) \le f(3) \le 6.$$
Az $f(2)$ és $f(3)$ értékeket a $\{2, 3, 4, 5, 6\}$ halmazból kell kiválasztani gyengén növekvő módon.
A képhalmaz mérete $6 - 2 + 1 = 5$ elem, ebből választunk 2 értéket ismétléses kombinációval:
$$\binom{5 + 2 - 1}{2} = \binom{6}{2} = \frac{6 \cdot 5}{2} = \mathbf{15}.$$

::: elmelet
**Elméleti háttér — peremfeltételes gyengén monoton függvények.**

A peremfeltételek rögzítik a szabad változók alsó és felső korlátját, a feladat egy szűkebb képhalmazon vett ismétléses kombinációra egyszerűsödik.
:::

## Gy17.1. feladat

Egy konvex 15-szög átlói általános helyzetben vannak (semelyik három nem metszi egymást egy közös belső pontban). Hány belső átlómetszéspont keletkezik?

**Megoldás.**

A belső átlómetszéspontok száma:
$$\binom{15}{4} = \frac{15 \cdot 14 \cdot 13 \cdot 12}{24} = 15 \cdot 7 \cdot 13 = \mathbf{1365}.$$

::: elmelet
**Elméleti háttér — belső metszéspontok száma konvex sokszögben.**

A képlet közvetlenül $\binom{n}{4}$, mivel bármely 4 csúcs belső átlói pontosan 1 pontban metszik egymást.
:::

## Gy17.2. feladat

Hány belső metszéspontja van egy konvex 8-szög átlóinak, ha semelyik 3 átló nem megy át egy ponton?

**Megoldás.**

$$\binom{8}{4} = \frac{8 \cdot 7 \cdot 6 \cdot 5}{24} = 7 \cdot 2 \cdot 5 = \mathbf{70}.$$

::: elmelet
**Elméleti háttér — kombinációk alkalmazása síkgeometriában.**

Általános helyzetű konvex 8-szögben pontosan 70 belső metszéspont jön létre.
:::

## Gy18.1. feladat

A hatoslottón 45 számból 6-ot húznak ki. Hány olyan kihúzás lehetséges, amelyben nincs két szomszédos szám?

**Megoldás.**

A Kaplansky-képlet alapján $n = 45, k = 6$:
$$\binom{45 - 6 + 1}{6} = \binom{40}{6} = \frac{40 \cdot 39 \cdot 38 \cdot 37 \cdot 36 \cdot 35}{720} = \mathbf{3\,838\,380}.$$

::: elmelet
**Elméleti háttér — hatoslottó szomszédmentes húzásai.**

A 45 számból $\binom{45}{6} = 8\,145\,060$ összes húzásnak közel a fele ($3\,838\,380$) szomszédmentes.
:::

## Gy18.2. feladat

Hányféleképpen választható ki 4 szám az $\{1, 2, \dots, 25\}$ számok közül úgy, hogy bármely két kiválasztott szám különbsége legalább 3 legyen (tehát $|x_i - x_j| \ge 3$)?

**Megoldás.**

Rendezzük a számokat: $1 \le x_1 < x_2 < x_3 < x_4 \le 25$.
A feltétel: $x_{i+1} - x_i \ge 3$.
Végezzük el a transzformációt:
$y_1 = x_1$
$y_2 = x_2 - 2$
$y_3 = x_3 - 4$
$y_4 = x_4 - 6$.
Ekkor $y_{i+1} - y_i = (x_{i+1} - x_i) - 2 \ge 3 - 2 = 1$, így $1 \le y_1 < y_2 < y_3 < y_4 \le 25 - 6 = 19$.
A lehetőségek száma:
$$\binom{19}{4} = \frac{19 \cdot 18 \cdot 17 \cdot 16}{24} = 19 \cdot 3 \cdot 17 \cdot 4 = \mathbf{3876}.$$

::: elmelet
**Elméleti háttér — általánosított távolsági feltételek.**

Ha a szomszédos elemek különbsége legalább $d$ ($x_{i+1} - x_i \ge d$), akkor az $y_i = x_i - (i-1)(d-1)$ transzformációval a felső korlát $n - (k-1)(d-1)$, így a lehetőségek száma $\binom{n - (k-1)(d-1)}{k}$.
:::

## Gy19.1. feladat

Hány tartományra osztja a síkot 10 általános helyzetű egyenes? Hány korlátos tartomány keletkezik?

**Megoldás.**

Összes tartomány:
$$R_{10} = 1 + \frac{10 \cdot 11}{2} = 1 + 55 = \mathbf{56}.$$
Korlátos tartományok száma:
$$B_{10} = \binom{10 - 1}{2} = \binom{9}{2} = \frac{9 \cdot 8}{2} = \mathbf{36}.$$
(Ellenőrzés: nemkorlátos tartományok száma $2 \cdot 10 = 20$, és $36 + 20 = 56$.)

::: elmelet
**Elméleti háttér — tartományok számának kiszámítása.**

$n$ általános helyzetű egyenesnél $1 + \binom{n+1}{2}$ tartomány keletkezik, ebből $\binom{n-1}{2}$ korlátos és $2n$ végtelen.
:::

## Gy19.2. feladat

Hány tartományra osztja a síkot $n$ darab kör, ha bármely kettő metszi egymást 2 pontban, és semelyik háromnak nincs közös pontja?

**Megoldás.**

Jelölje $C_n$ a tartományok számát. $C_1 = 2$.
Az $n$-edik kör a megelőző $n-1$ kört mindegyikét 2-2 pontban metszi, azaz összesen $2(n-1)$ metszéspont keletkezik az $n$-edik körön.
Ez a $2(n-1)$ metszéspont az $n$-edik kört $2(n-1)$ darab körívre bontja.
Minden körív egy korábbi tartományt vág ketté:
$$C_n = C_{n-1} + 2(n-1).$$
Összegezve:
$$C_n = C_1 + 2 \sum_{k=1}^{n-1} k = 2 + 2 \cdot \frac{(n-1)n}{2} = \mathbf{n^2 - n + 2}.$$

::: elmelet
**Elméleti háttér — körök általi síkfelosztás.**

Körök esetén a metszéspontok száma duplázódik, mert két kör legfeljebb 2 pontban metszheti egymást.
:::

## Gy20.1. feladat

A 32 lapos magyar kártyából 5 lapot kap egy játékos. Hány olyan kéz van, amelyben legalább egy ász található (a 4 ász közül)?

**Megoldás.**

Összes lehetséges 5 lapos leosztás:
$$\binom{32}{5} = \frac{32 \cdot 31 \cdot 30 \cdot 29 \cdot 28}{120} = 201\,376.$$
Azok a leosztások, amelyekben egyetlen ász sincs (mind az 5 lap a $32 - 4 = 28$ nem-ász lapból származik):
$$\binom{28}{5} = \frac{28 \cdot 27 \cdot 26 \cdot 25 \cdot 24}{120} = 98\,280.$$
A legalább egy ászt tartalmazó kezek száma:
$$201\,376 - 98\,280 = \mathbf{103\,096}.$$

::: elmelet
**Elméleti háttér — legalább egy elem komplementere.**

A „legalább egy” feltétel komplementere a „pontosan nulla”. Kiszámítása: $\binom{N}{n} - \binom{N-M}{n}$.
:::

## Gy20.2. feladat

52 lapos pakliból 13 lapot kap egy játékos (bridge leosztás). Hány olyan leosztás van, amelyben mind a 4 ász a játékos kezében van?

**Megoldás.**

A 4 ász mind a kezében kell legyen ($\binom{4}{4} = 1$).
A maradék $13 - 4 = 9$ lapot a maradék $52 - 4 = 48$ lapból kapja:
$$\binom{48}{9} = \frac{48!}{9! \cdot 39!} = \mathbf{1\,677\,106\,640}.$$

::: elmelet
**Elméleti háttér — előírt részhalmaz tartalmazása kártyaosztásban.**

Ha bizonyos $m$ lap kötelezően a kézben van, a feladat a maradék $n - m$ lap kiválasztására redukálódik a maradék $N - m$ lapból.
:::

## Gy21.1. feladat

Egy fagylaltozóban 5 íz van. Hányféleképpen vásárolhatunk legfeljebb 10 gombóc fagyit (csak az ízek darabszáma számít)?

**Megoldás.**

A hiányváltozó módszerével: $x_1 + \dots + x_5 + x_6 = 10$, ahol $x_i \ge 0$.
A lehetőségek száma:
$$\binom{10 + 6 - 1}{10} = \binom{15}{10} = \binom{15}{5} = \frac{15 \cdot 14 \cdot 13 \cdot 12 \cdot 11}{120} = 3003.$$

::: elmelet
**Elméleti háttér — legfeljebb $k$ tárgy kiválasztása.**

Legfeljebb $k$ tárgy kiválasztása $n$ típusból ekvivalens pontosan $k$ tárgy kiválasztásával $n+1$ típusból.
:::

## Gy21.2. feladat

Hány nemnegatív egész megoldása van az $x_1 + x_2 + x_3 + x_4 = 20$ egyenletnek, ha $x_1 \ge 3, x_2 \ge 1, x_3 \ge 0, x_4 \ge 4$?

**Megoldás.**

Végezzük el az eltolást:
$y_1 = x_1 - 3 \ge 0$
$y_2 = x_2 - 1 \ge 0$
$y_3 = x_3 \ge 0$
$y_4 = x_4 - 4 \ge 0$.
Az új változók összege:
$$y_1 + y_2 + y_3 + y_4 = 20 - (3 + 1 + 0 + 4) = 20 - 8 = 12.$$
Ennek nemnegatív megoldásszáma:
$$\binom{12 + 4 - 1}{12} = \binom{15}{12} = \binom{15}{3} = \frac{15 \cdot 14 \cdot 13}{6} = \mathbf{455}.$$

::: elmelet
**Elméleti háttér — egyedi alsó korlátok kezelése.**

Minden változó alsó korlátját levonjuk a célösszegből, és a megmaradt értékre alkalmazzuk a klasszikus csillag-és-vonal képletet.
:::

## Gy22.1. feladat

Egy szabályos 10-szög csúcsai közül hányféleképpen választhatunk ki 3 csúcsot úgy, hogy semelyik kettő ne legyen szomszédos?

**Megoldás.**

A körre vonatkozó Kaplansky-formula szerint $n = 10, k = 3$:
$$\frac{10}{10 - 3} \binom{10 - 3}{3} = \frac{10}{7} \binom{7}{3} = \frac{10}{7} \cdot 35 = 10 \cdot 5 = \mathbf{50}.$$

::: elmelet
**Elméleti háttér — körön független hármasok.**

A képlet közvetlenül adja az 50 független csúcshármast.
:::

## Gy22.2. feladat

Egy kör alakú asztal körül 16 szék van. Hányféleképpen ülhet le 4 ember úgy, hogy semelyik kettő ne üljön egymás melletti székre?

**Megoldás.**

Először válasszuk ki a 4 széket úgy, hogy semelyik kettő ne legyen szomszédos.
A körre vonatkozó Kaplansky-lemma szerint ($n = 16, k = 4$):
$$\frac{16}{16 - 4} \binom{16 - 4}{4} = \frac{16}{12} \binom{12}{4} = \frac{4}{3} \cdot \frac{12 \cdot 11 \cdot 10 \cdot 9}{24} = \frac{4}{3} \cdot 495 = 4 \cdot 165 = 660.$$
Mivel a 4 ember megkülönböztethető, a 4 kiválasztott székre $4! = 24$-féleképpen ülhetnek le.
Az összes lehetséges ülésrend száma:
$$660 \cdot 24 = \mathbf{15\,840}.$$

::: elmelet
**Elméleti háttér — székek kiválasztása és személyek permutációja.**

A helyek kiválasztása kombináció (a Kaplansky-lemmával), majd a megkülönböztethető személyek hozzárendelése $k!$-sal való szorzást jelent.
:::

# A 2. feladatsorhoz

## Gy23.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ egészre teljesül: $\sum_{k=1}^{n} (3k - 2) = \frac{n(3n - 1)}{2}$.

**Megoldás.**

1. Bázislépés: $n = 1$-re a bal oldal: $3 \cdot 1 - 2 = 1$. A jobb oldal: $\frac{1(3 \cdot 1 - 1)}{2} = \frac{2}{2} = 1$. Igaz.
2. Indukciós feltevés: Tegyük fel, hogy $n$-re igaz: $\sum_{k=1}^n (3k-2) = \frac{n(3n-1)}{2}$.
3. Indukciós lépés:
$$\sum_{k=1}^{n+1} (3k-2) = \frac{n(3n-1)}{2} + (3(n+1)-2) = \frac{3n^2 - n + 6n + 2}{2} = \frac{3n^2 + 5n + 2}{2}.$$
Szorzattá bontva a számlálót: $3n^2 + 5n + 2 = (n+1)(3n+2) = (n+1)(3(n+1)-1)$.
Így:
$$\frac{(n+1)(3(n+1)-1)}{2}.$$
Az állítás minden $n \ge 1$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — számtani sorozatok összege teljes indukcióval.**

Elsőfokú tagok összege másodfokú polinom, indukcióval közvetlenül ellenőrizhető.
:::

## Gy23.2. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ esetén $\sum_{k=1}^{n} k^3 = \left(\frac{n(n+1)}{2}\right)^2$.

**Megoldás.**

1. Bázis: $n = 1$-re $1^3 = 1$ és $\left(\frac{1 \cdot 2}{2}\right)^2 = 1^2 = 1$. Igaz.
2. Tegyük fel, hogy $\sum_{k=1}^n k^3 = \frac{n^2(n+1)^2}{4}$.
3. Lépés:
$$\sum_{k=1}^{n+1} k^3 = \frac{n^2(n+1)^2}{4} + (n+1)^3 = (n+1)^2 \left[\frac{n^2 + 4(n+1)}{4}\right] = (n+1)^2 \frac{(n+2)^2}{4} = \left(\frac{(n+1)(n+2)}{2}\right)^2.$$
Kész. $\blacksquare$

::: elmelet
**Elméleti háttér — köbösszegek azonossága (Nikomakhosz-tétel).**

$\sum_{k=1}^n k^3 = (\sum_{k=1}^n k)^2$. Ez a meglepő azonosság geometriailag négyzetek felosztásával is igazolható.
:::

## Gy24.1. feladat

Legalább hány diáknak kell egy osztályba járnia ahhoz, hogy biztosan legyen olyan naptári hónap, amelyben legalább 5 születésnap van?

**Megoldás.**

A 12 hónap a 12 skatulya.
A legrosszabb esetben minden hónapban legfeljebb $5 - 1 = 4$ születésnap van, ez $12 \times 4 = 48$ diák.
Legalább $48 + 1 = \mathbf{49}$ diák szükséges, hogy biztosan legyen legalább 5 fős hónap.

::: elmelet
**Elméleti háttér — skatulya-elv küszöbértéke.**

$m$ skatulyába helyezve az elemeket $m(k-1)+1$ elem garantálja, hogy van skatulya legalább $k$ elemmel.
:::

## Gy24.2. feladat

Egy iskolai évfolyamon legalább hány diáknak kell tanulnia ahhoz, hogy biztosan legyen legalább három olyan naptári hónap, amelyben legalább 1-1 diák született?

**Megoldás.**

**Nincs ilyen létszám.** Előfordulhat, hogy tetszőlegesen sok diák mindannyian ugyanabban az 1 vagy 2 hónapban születtek (pl. csak januárban és februárban), így sosem érik el a 3 különböző hónapot.

::: elmelet
**Elméleti háttér — nem üres skatulyák garantálása.**

Különböző skatulyák egyidejű lefedése nem kényszeríthető ki kizárólag a pontok számának növelésével, ha nincs maximális skatulya-kapacitás előírva.
:::

## Gy25.1. feladat

Egy ládában 20 alma, 30 narancs és 40 banán található. Legalább hány gyümölcsöt kell kivenni, hogy biztosan legyen köztük 5 azonos fajtájú?

**Megoldás.**

A legrosszabb esetben mindhárom fajtából legfeljebb $5 - 1 = 4$ darabot veszünk ki:
$$4 + 4 + 4 = 12 \text{ gyümölcs}.$$
A következő gyümölcs biztosan valamelyikből az 5. lesz:
$$12 + 1 = \mathbf{13}.$$

::: elmelet
**Elméleti háttér — skatulyaelv azonos méretű korlátokkal.**

$m$ kategória, mindegyikből legalább $k$ darab: $m(k-1)+1$ húzás szükséges.
:::

## Gy25.2. feladat

Egy 52 lapos francia kártyacsomagból (4 szín mindegyikéből 13 lap) hány lapot kell húzni, hogy biztosan legyen köztük mind a 4 színből legalább 2 lap?

**Megoldás.**

A legrosszabb esetben a 4 színből 3 színt teljesen kihúzunk ($3 \times 13 = 39$ lap), és a 4. színből csak 1 lapot húzunk ki.
A kihúzott lapok száma:
$$39 + 1 = 40 \text{ lap}.$$
Ekkor még nincs meg a 4. színből a 2 lap.
A következő lap már biztosan a 4. színből lesz a 2. lap:
$$40 + 1 = \mathbf{41} \text{ lap}.$$

::: elmelet
**Elméleti háttér — kimerülő skatulyák a legrosszabb esetben.**

Ha minden színből el kell érni egy kvótát, a legrosszabb esetben a többi szín teljesen kiürül a cél elérése előtt.
:::

## Gy26.1. feladat

Egy $3 \times 3$ méteres négyzetben legfeljebb hány pont helyezhető el úgy, hogy bármely kettő távolsága nagyobb legyen, mint $\sqrt{2}$ méter?

**Megoldás.**

Bontsuk a négyzetet 9 darab $1 \times 1$-es kis négyzetre. Egy $1 \times 1$-es négyzet átlója $\sqrt{1^2 + 1^2} = \sqrt{2}$.
A skatulya-elv szerint 10 pont esetén lenne két pont egyazon kis négyzetben, melyek távolsága $\le \sqrt{2}$.
9 pont elhelyezhető: a koordináták legyenek $\{0, 1{,}5, 3\} \times \{0, 1{,}5, 3\}$, ekkor a legkisebb távolság $1{,}5 = \sqrt{2{,}25} > \sqrt{2}$.
A maximális pontszám **9**.

::: elmelet
**Elméleti háttér — egységnégyzetek átlója mint skatulyakorlát.**

A négyzet átlója a zárt halmazon belüli maximális távolság.
:::

## Gy26.2. feladat

Egy 1 oldalú szabályos háromszögbe 5 pontot helyezünk el. Mutassuk meg, hogy lesz két olyan pont, melyek távolsága legfeljebb 0,5!

**Megoldás.**

Kössük össze a szabályos háromszög oldalfelező pontjait.
Ez a háromszöget 4 darab egybevágó, 0,5 oldalú szabályos háromszögre osztja.
Egy 0,5 oldalú szabályos háromszögben bármely két pont távolsága legfeljebb az oldal hossza, azaz legfeljebb 0,5.
Mivel 5 pontot helyeztünk el a 4 kis háromszögben, a skatulya-elv szerint legalább az egyik kis háromszögbe legalább 2 pont esik.
Ezen két pont távolsága legfeljebb **0,5**. $\blacksquare$

::: elmelet
**Elméleti háttér — szabályos háromszög felosztása.**

Egy szabályos háromszög $k^2$ egybevágó kisebb háromszögre osztható az oldalfelezők és osztópontok segítségével.
:::

## Gy27.1. feladat

Igazoljuk algebrailag és kombinatorikus úton is, hogy $\binom{n}{2} + \binom{n+1}{2} = n^2$.

**Megoldás.**

*Algebrailag:*
$$\binom{n}{2} + \binom{n+1}{2} = \frac{n(n-1)}{2} + \frac{(n+1)n}{2} = \frac{n^2 - n + n^2 + n}{2} = \frac{2n^2}{2} = n^2.$$
*Kombinatorikusan:*
Egy $n \times n$-es rács $n^2$ mezőjét a főátló két háromszögre osztja: a főátló alatti mezők száma $\binom{n}{2}$, a főátlón lévő és felette lévő mezők száma $\binom{n+1}{2}$. $\blacksquare$

::: elmelet
**Elméleti háttér — háromszögszámok és négyzetszámok kapcsolata.**

Két egymást követő háromszögszám összege négyzetszám: $T_{n-1} + T_n = n^2$.
:::

## Gy27.2. feladat

Igazoljuk, hogy minden $1 \le k \le n$ esetén $\binom{n}{k} = \frac{n - k + 1}{k} \binom{n}{k-1}$.

**Megoldás.**

Közvetlen algebrai átalakítással:
$$\frac{n - k + 1}{k} \binom{n}{k-1} = \frac{n - k + 1}{k} \cdot \frac{n!}{(k-1)!(n - k + 1)!} = \frac{n!}{k!(n-k)!} = \binom{n}{k}.$$
Kombinatorikusan: a $k$ és $k-1$ méretű részhalmazok közötti illeszkedési relációk fokszámaival kapjuk. $\blacksquare$

::: elmelet
**Elméleti háttér — szomszédos binomiális együtthatók hányadosa.**

A hányados $\frac{\binom{n}{k}}{\binom{n}{k-1}} = \frac{n-k+1}{k}$ mutatja, hogy $\binom{n}{k}$ $k$-ban szigorúan nő $\lfloor n/2 \rfloor$-ig, majd szimmetrikusan csökken.
:::

## Gy28.1. feladat

Hány olyan $(A, B)$ rendezett halmazpár választható ki egy $n$ elemű halmazból, amelyek diszjunktak ($A \cap B = \emptyset$)?

**Megoldás.**

Az alaphalmaz minden elemére 3 lehetőség van:
1. $x \in A$ (és $x \notin B$);
2. $x \in B$ (és $x \notin A$);
3. $x \notin A$ és $x \notin B$.
Mivel $A \cap B = \emptyset$, a 4. lehetőség ($x \in A \cap B$) kizárt.
Mivel minden elem független, a diszjunkt párok száma:
$$3^n.$$

::: elmelet
**Elméleti háttér — diszjunkt részhalmazpárok és háromállapotú leképezések.**

Az $A \cap B = \emptyset$ feltétel ekvivalens azzal, hogy az elemekhez az $\{A, B, \emptyset\}$ címkék közül rendelünk egyet.
:::

## Gy28.2. feladat

Hányféleképpen választhatunk ki egy $n$ elemű halmazból egy $A$ részhalmazt és egy $x \notin A$ elemet?

**Megoldás.**

1. módszer: Előbb $x$-et választjuk ($n$ lehetőség), majd $A$-t az $n-1$ elem részhalmazai közül ($2^{n-1}$ lehetőség): $n 2^{n-1}$.
2. módszer: Méret szerint: $\sum_{k=0}^{n-1} (n - k) \binom{n}{k}$.
A kettő egyenlő: $n 2^{n-1}$.

::: elmelet
**Elméleti háttér — komplementer elem kijelölése.**

$(x, A)$ párok száma $x \notin A$ esetén megegyezik az $x \in A$ esetek számával, a komplementerképzés szimmetriája miatt.
:::

## Gy29.1. feladat

Egy $1 \times 1$-es négyzetbe 5 pontot helyezünk el. Mutassuk meg, hogy van köztük kettő, amelyek távolsága legfeljebb $\frac{\sqrt{2}}{2}$!

**Megoldás.**

Osszuk a négyzetet 4 darab $0{,}5 \times 0{,}5$-ös kis négyzetre.
A skatulya-elv szerint az 5 pontból kettő egy kis négyzetbe esik.
A kis négyzet átlója:
$$\sqrt{0{,}5^2 + 0{,}5^2} = \sqrt{\frac{1}{4} + \frac{1}{4}} = \sqrt{\frac{1}{2}} = \frac{\sqrt{2}}{2}.$$
Így ezen két pont távolsága legfeljebb $\frac{\sqrt{2}}{2} \approx 0{,}707$. $\blacksquare$

::: elmelet
**Elméleti háttér — egységnégyzet négyfelé osztása.**

4 skatulya $0{,}5 \times 0{,}5$ méretben, átmérőjük $\sqrt{2}/2$.
:::

## Gy29.2. feladat

Egy $2 \times 2$-es négyzetbe 17 pontot teszünk. Mutassuk meg, hogy van köztük kettő, amelyek távolsága legfeljebb $\frac{\sqrt{2}}{2}$!

**Megoldás.**

Osszuk a $2 \times 2$-es négyzetet 16 darab $0{,}5 \times 0{,}5$-ös kis négyzetre ($4 \times 4$-es rács).
17 pont esetén a skatulya-elv miatt legalább kettő ugyanabba a $0{,}5 \times 0{,}5$-ös négyzetbe esik.
Távolságuk legfeljebb a kis négyzet átlója: $\sqrt{0{,}5^2 + 0{,}5^2} = \frac{\sqrt{2}}{2}$. $\blacksquare$

::: elmelet
**Elméleti háttér — finomabb rácsfelbontások.**

$m^2$ darab skatulyához $m^2 + 1$ pont szükséges.
:::

## Gy30.1. feladat

Legfeljebb hány természetes szám adható meg úgy, hogy semelyik kettő különbsége ne legyen osztható 77-tel?

**Megoldás.**

A 77-tel való osztási maradékok száma 77. Bármely két szám különbsége akkor és csak akkor nem osztható 77-tel, ha maradékaik különböznek.
Így legfeljebb **77** szám adható meg (pl. $0, 1, \dots, 76$).

::: elmelet
**Elméleti háttér — maradékosztályok száma.**

Modulo $m$ pontosan $m$ különböző maradék létezik.
:::

## Gy30.2. feladat

Mutassuk meg, hogy tetszőleges 6 egész szám között van kettő, amelyek különbsége osztható 5-tel!

**Megoldás.**

Az 5-tel való osztási maradékok a $\{0, 1, 2, 3, 4\}$ halmaz elemei (5 lehetséges érték).
6 szám esetén a skatulya-elv miatt legalább két számnak megegyezik a maradéka modulo 5, így különbségük osztható 5-tel. $\blacksquare$

::: elmelet
**Elméleti háttér — közvetlen skatulya-elv maradékokra.**

$k > m$ egész szám között mindig van kettő azonos maradékkal modulo $m$.
:::

## Gy31.1. feladat

Legfeljebb hány szám választható ki 1-től 100-ig úgy, hogy semelyik kettő ne legyen relatív prím?

**Megoldás.**

A páros számok száma 1-től 100-ig 50.
Ha 51 számot választanánk, az $\{1,2\}, \{3,4\}, \dots, \{99,100\}$ 50 darab szomszédos párból a skatulya-elv miatt legalább egy teljes párt választanánk, melyek relatív prímek.
A maximum tehát **50**.

::: elmelet
**Elméleti háttér — szomszédos számok relatív prím tulajdonsága.**

$\gcd(x, x+1) = 1$ minden egészre.
:::

## Gy31.2. feladat

Mutassuk meg, hogy ha az $\{1, 2, \dots, 2n\}$ számok közül kiválasztunk $n + 1$ darabot, akkor mindig lesz kettő, hogy az egyik osztja a másikat!

**Megoldás.**

Minden számot írjunk fel $x = 2^a \cdot b$ alakban, ahol $b \in \{1, 3, \dots, 2n - 1\}$ páratlan.
Mivel pontosan $n$ páratlan szám van $2n$-ig, az $n + 1$ kiválasztott szám között a skatulya-elv szerint legalább kettőnek megegyezik a $b$ páratlan része:
$$x_1 = 2^{a_1} b, \qquad x_2 = 2^{a_2} b.$$
Ha $a_1 < a_2$, akkor $x_1 \mid x_2$. $\blacksquare$

::: elmelet
**Elméleti háttér — Erdős klasszikus skatulya-bizonyítása.**

A számok faktorizációjának egy invariáns része (itt a maximális páratlan osztó) tökéletes skatulyát alkot.
:::

## Gy32.1. feladat

Számítsuk ki az $1 \cdot 2 + 2 \cdot 3 + \dots + n(n+1)$ összeget a hokibot azonosság segítségével!

**Megoldás.**

Vegyük észre, hogy $i(i+1) = 2 \binom{i+1}{2}$.
Ezért az összeg:
$$\sum_{i=1}^{n} i(i+1) = 2 \sum_{i=1}^{n} \binom{i+1}{2} = 2 \left[\binom{2}{2} + \binom{3}{2} + \dots + \binom{n+1}{2}\right].$$
A hokibot azonosság szerint ($k = 2$, felső határ $n+1$):
$$\sum_{j=2}^{n+1} \binom{j}{2} = \binom{(n+1)+1}{2+1} = \binom{n+2}{3}.$$
Ezért az összeg:
$$2 \binom{n+2}{3} = 2 \cdot \frac{(n+2)(n+1)n}{6} = \mathbf{\frac{n(n+1)(n+2)}{3}}.$$

::: elmelet
**Elméleti háttér — faktoriális hatványok és hokibot azonosság.**

A csökkenő faktoriálisok összegezhetők binomiális együtthatókká alakítva, ami a diszkrét differenciálszámítás alapja.
:::

## Gy32.2. feladat

Igazoljuk, hogy $\sum_{k=0}^{n} \binom{n}{k} \binom{n}{n-k} = \binom{2n}{n}$.

**Megoldás.**

Alkalmazzuk a Vandermonde-konvolúciót $m = n$ és $k = n$ paraméterekkel:
$$\sum_{j=0}^{n} \binom{n}{j}\binom{n}{n-j} = \binom{n+n}{n} = \binom{2n}{n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — szimmetrikus Vandermonde-azonosság.**

Két egyenlő méretű halmazból összesen $n$ elem kiválasztása.
:::

## Gy33.1. feladat

Számítsuk ki a $\sum_{k=0}^{n} (-1)^k \binom{n}{k}^2$ alternáló négyzetösszeget, ha $n$ páratlan és ha $n$ páros!

**Megoldás.**

Ha $n$ páratlan: a tagok a $k \leftrightarrow n - k$ szimmetria miatt párokban kiejtik egymást:
$(-1)^{n-k}\binom{n}{n-k}^2 = (-1)^{n-k}\binom{n}{k}^2 = -(-1)^k \binom{n}{k}^2$, mivel $n$ páratlan!
Így az összeg páratlan $n$-re: **$0$**.
Ha $n = 2m$ páros: $(1-x^2)^{2m} = (1-x)^{2m}(1+x)^{2m}$ polinom $x^{2m}$ együtthatója alapján az összeg:
$$\mathbf{(-1)^m \binom{2m}{m}}.$$

::: elmelet
**Elméleti háttér — alternáló binomiális négyzetösszegek.**

Páratlan $n$-re a szimmetria miatt 0, páros $n = 2m$-re $(-1)^m \binom{2m}{m}$.
:::

## Gy33.2. feladat

Határozzuk meg a $\sum_{k=1}^{n} k \binom{n}{k}^2$ összeg zárt alakját!

**Megoldás.**

Használjuk a $k\binom{n}{k} = n\binom{n-1}{k-1}$ összefüggést:
$$\sum_{k=1}^{n} k \binom{n}{k}^2 = \sum_{k=1}^{n} \left(k\binom{n}{k}\right) \binom{n}{k} = \sum_{k=1}^{n} n\binom{n-1}{k-1}\binom{n}{n-k}.$$
Kiemelve $n$-et, a Vandermonde-konvolúció szerint ($n_1 = n-1, n_2 = n$, összeg index $n-1$):
$$n \sum_{j=0}^{n-1} \binom{n-1}{j}\binom{n}{(n-1)-j} = n \binom{(n-1)+n}{n-1} = \mathbf{n \binom{2n-1}{n-1}}.$$
(Mivel $n\binom{2n-1}{n-1} = \frac{n}{2}\binom{2n}{n}$. )

::: elmelet
**Elméleti háttér — súlyozott binomiális négyzetösszegek.**

A $k$ szorzót az elnyelési formulával beolvasztjuk, majd Vandermonde-konvolúciót alkalmazunk.
:::

## Gy34.1. feladat

Legfeljebb hány bástya helyezhető el egy $8 \times 8$-as sakktáblán úgy, hogy semelyik kettő ne üsse egymást?

**Megoldás.**

Minden bástyának különböző sorban kell állnia. Mivel 8 sor van, legfeljebb 8 bástya helyezhető el.
A főátló 8 mezőjére téve őket egyik sem üti a másikat.
A maximum tehát **8**.

::: elmelet
**Elméleti háttér — független bástyák és sorok particionálása.**

A bástyák független csúcshalmaza az $n \times n$ bástyagráfban pontosan $n$, a sorok száma adja a triviális korlátot.
:::

## Gy34.2. feladat

Legfeljebb hány futó helyezhető el egy $8 \times 8$-as sakktáblán úgy, hogy semelyik kettő ne üsse egymást?

**Megoldás.**

A futók az átlók mentén ütnek.
A táblán 15 darab északnyugat-délkelet irányú átló van, de a két sarokmező (1 mezős átlók) nem ütik egymást.
Egyenként vizsgálva a fekete és fehér mezőket: mindkét színen legfeljebb 7 futó helyezhető el (pl. az alsó és felső sor határaira téve őket).
Összesen legfeljebb $7 + 7 = \mathbf{14}$ futó helyezhető el ütés nélkül.

::: elmelet
**Elméleti háttér — futógráf független csúcsai.**

Egy $n \times n$-es táblán a független futók maximális száma $2n - 2$.
:::

## Gy35.1. feladat

Adjunk zárt formulát a $\sum_{k=0}^{n} 2^k \binom{n}{k}$ összegre, és indokoljuk meg kombinatorikusan!

**Megoldás.**

A binomiális tétel szerint $(1 + 2)^n = 3^n$.
Kombinatorikus jelentés: egy $n$ fős csoportból kiválasztunk egy bizottságot ($\binom{n}{k}$), és a bizottság minden tagjának adunk egy piros vagy kék sapkát ($2^k$). Ez ugyanaz, mintha minden emberről eldöntenénk: nincs sapkája, piros sapkája van, vagy kék sapkája van ($3^n$).
A zárt alak: **$3^n$**.

::: elmelet
**Elméleti háttér — színezett bizottságok számlálása.**

$\sum \binom{n}{k} c^k = (1 + c)^n$.
:::

## Gy35.2. feladat

Bizonyítsuk be kettős leszámlálással, hogy $\sum_{k=1}^{n} k \binom{n}{k} = n 2^{n-1}$!

**Megoldás.**

Számoljuk meg a bizottság + elnök párokat:
1. Előbb a bizottságot választjuk ($k$ fő), majd az elnököt: $\sum k \binom{n}{k}$.
2. Előbb az elnököt választjuk ($n$ lehetőség), majd a bizottság többi tagját szabadon az $n-1$ emberből ($2^{n-1}$ lehetőség): $n 2^{n-1}$.
A kettő egyenlő. $\blacksquare$

::: elmelet
**Elméleti háttér — a klasszikus bizottság-elnök azonosság.**

$\sum k\binom{n}{k} = n 2^{n-1}$ az elnök kiválasztási sorrendjének felcseréléséből adódik.
:::

## Gy36.1. feladat

Mutassuk meg, hogy $\binom{n-3}{k-3} + 3\binom{n-3}{k-2} + 3\binom{n-3}{k-1} + \binom{n-3}{k} = \binom{n}{k}$!

**Megoldás.**

Jelöljünk ki 3 kitüntetett elemet ($a, b, c$). Egy $k$ elemű részhalmaz tartalmazhat 3, 2, 1 vagy 0 kitüntetett elemet.
- 3 kitüntetett elem: $\binom{3}{3}\binom{n-3}{k-3} = \binom{n-3}{k-3}$.
- 2 kitüntetett elem: $\binom{3}{2}\binom{n-3}{k-2} = 3\binom{n-3}{k-2}$.
- 1 kitüntetett elem: $\binom{3}{1}\binom{n-3}{k-1} = 3\binom{n-3}{k-1}$.
- 0 kitüntetett elem: $\binom{3}{0}\binom{n-3}{k} = \binom{n-3}{k}$.
Az összegük pontosan $\binom{n}{k}$. $\blacksquare$

::: elmelet
**Elméleti háttér — három kitüntetett elem felbontása.**

A binomiális együtthatók egy sora a Pascal-háromszög 3 szinttel feljebbi sorának lineáris kombinációja az $(1+x)^3 = 1 + 3x + 3x^2 + x^3$ együtthatóival.
:::

## Gy36.2. feladat

Igazoljuk, hogy $\binom{n}{k} - \binom{n-2}{k} = \binom{n-1}{k-1} + \binom{n-2}{k-1}$!

**Megoldás.**

A 36. feladat felbontásából $\binom{n}{k} - \binom{n-2}{k} = \binom{n-2}{k-2} + 2\binom{n-2}{k-1}$.
Másrészt $\binom{n-1}{k-1} = \binom{n-2}{k-2} + \binom{n-2}{k-1}$.
Ezt behelyettesítve a jobb oldal:
$\binom{n-1}{k-1} + \binom{n-2}{k-1} = \binom{n-2}{k-2} + \binom{n-2}{k-1} + \binom{n-2}{k-1} = \binom{n-2}{k-2} + 2\binom{n-2}{k-1}$.
A két oldal megegyezik. $\blacksquare$

::: elmelet
**Elméleti háttér — részhalmazok legalább egy kitüntetett elemmel.**

Azon részhalmazok száma, amelyek tartalmazzák az $\{a, b\}$ halmaz legalább egyik elemét.
:::

## Gy37.1. feladat

Egy szabályos 16-szög csúcsai közül hányat kell kékre festenünk ahhoz, hogy biztosan legyen köztük két olyan kék csúcs, amelyek a sokszög egy átmérőjének két végpontjai?

**Megoldás.**

A szabályos 16-szögben $16 / 2 = 8$ átmérő van.
A legrosszabb esetben minden átmérőnek csak az egyik végpontját festjük kékre, ez 8 kék csúcs.
A következő (9.) kék csúcs már kénytelen egy már foglalt átmérő másik végpontjára esni:
$$8 + 1 = \mathbf{9} \text{ csúcs}.$$

::: elmelet
**Elméleti háttér — átmérők lefedése skatulya-elvvel.**

$m$ átmérő esetén $m + 1$ pont garantál egy teljes átmérőt.
:::

## Gy37.2. feladat

Egy szabályos nyolcszög csúcsai közül 5 kékre van festve. Bizonyítsuk be, hogy van 3 kék csúcs, amelyek derékszögű háromszöget feszítenek ki!

**Megoldás.**

A nyolcszögben $8 / 2 = 4$ átmérő van.
5 kék csúcs esetén a skatulya-elv szerint legalább egy átmérő mindkét végpontja kék.
A maradék $5 - 2 = 3$ kék csúcs bármelyikével ez az átmérő a Thalész-tétel szerint derékszögű háromszöget alkot. $\blacksquare$

::: elmelet
**Elméleti háttér — derékszögű háromszög nyolcszögben.**

4 átmérő, 5 pont $\implies$ kék átmérő $\implies$ kék derékszögű háromszög.
:::

# A 3. feladatsorhoz

## Gy38.1. feladat

Mutassuk meg, hogy $\gcd(F_n, F_{n+3})$ értéke csak 1 vagy 2 lehet! Mikor lesz 2?

**Megoldás.**

Az általános tétel szerint $\gcd(F_n, F_{n+3}) = F_{\gcd(n, n+3)} = F_{\gcd(n, 3)}$.
Mivel $\gcd(n, 3)$ értéke vagy 1, vagy 3:
- Ha $3 \nmid n$, akkor $\gcd(n, 3) = 1 \implies \gcd(F_n, F_{n+3}) = F_1 = 1$.
- Ha $3 \mid n$, akkor $\gcd(n, 3) = 3 \implies \gcd(F_n, F_{n+3}) = F_3 = 2$.
Tehát a legnagyobb közös osztó pontosan akkor 2, ha $n$ osztható 3-mal, egyébként 1.

::: elmelet
**Elméleti háttér — indexek legnagyobb közös osztója a Fibonacci-sorozatban.**

A Fibonacci-számok egy erős oszthatósági sorozatot (strong divisibility sequence) alkotnak: $\gcd(F_a, F_b) = F_{\gcd(a,b)}$.
:::

## Gy38.2. feladat

Bizonyítsuk be teljes indukcióval a következő összegzési képletet: $F_{n+k} = F_{k-1}F_n + F_k F_{n+1}$ minden $n \ge 1, k \ge 1$ esetén!

**Megoldás.**

Rögzítsünk egy tetszőleges $n \ge 1$ egészet, és végezzünk indukciót $k$ szerint!
1. Bázis:
$k = 1$-re: $F_{n+1} = F_0 F_n + F_1 F_{n+1} = 0 \cdot F_n + 1 \cdot F_{n+1} = F_{n+1}$. Igaz!
$k = 2$-re: $F_{n+2} = F_1 F_n + F_2 F_{n+1} = 1 \cdot F_n + 1 \cdot F_{n+1} = F_n + F_{n+1}$. Igaz a Fibonacci-definíció szerint!
2. Indukciós lépés ($k-1$ és $k \implies k+1$):
Tegyük fel, hogy az állítás igaz $k-1$-re és $k$-ra. Ekkor:
$$F_{n+k+1} = F_{n+k} + F_{n+k-1} = (F_{k-1}F_n + F_k F_{n+1}) + (F_{k-2}F_n + F_{k-1}F_{n+1}).$$
Csoportosítsuk a tagokat $F_n$ és $F_{n+1}$ szerint:
$$F_{n+k+1} = (F_{k-1} + F_{k-2})F_n + (F_k + F_{k-1})F_{n+1} = F_k F_n + F_{k+1}F_{n+1}.$$
Ez pontosan a formula $k+1$-re! Az állítás minden $k \ge 1$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — addíciós tétel Fibonacci-számokra.**

A fenti formula a Fibonacci-számok addíciós tétele, amely a mátrixhatványozás $\begin{pmatrix} F_{k+1} & F_k \\ F_k & F_{k-1} \end{pmatrix} \begin{pmatrix} F_{n+1} & F_n \\ F_n & F_{n-1} \end{pmatrix} = \begin{pmatrix} F_{n+k+1} & F_{n+k} \\ F_{n+k} & F_{n+k-1} \end{pmatrix}$ szorzatából is azonnal adódik.
:::

## Gy39.1. feladat

Hány olyan 8 hosszú bináris (0-1) sorozat van, amelyben nem áll egymás mellett két 1-es?

**Megoldás.**

A képlet szerint $n = 8$-ra az ilyen sorozatok száma:
$$a_8 = F_{8+2} = F_{10}.$$
A Fibonacci-számok: $F_1=1, F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34, F_{10}=55$.
A válasz tehát **55**.

::: elmelet
**Elméleti háttér — bináris sorozatok tiltott blokkal.**

Az $n$ hosszú '11'-mentes szavak száma pontosan $F_{n+2}$.
:::

## Gy39.2. feladat

Egy $n$ lépcsőfokból álló lépcsőn megyünk fel. Egy lépéssel vagy 1, vagy 2 lépcsőfokot léphetünk fel. Hányféleképpen juthatunk fel a lépcső tetejére?

**Megoldás.**

Jelölje $s_n$ a feljutási módok számát.
Az utolsó lépés vagy 1 fokos volt (elötte $n-1$ fokot tettünk meg: $s_{n-1}$ mód), vagy 2 fokos volt (elötte $n-2$ fokot tettünk meg: $s_{n-2}$ mód).
Így $s_n = s_{n-1} + s_{n-2}$.
Kezdeti értékek: $s_1 = 1 = F_2$, $s_2 = 2$ (1+1 vagy 2) $= F_3$.
Általánosan $n$ fokra a lehetőségek száma:
$$s_n = \mathbf{F_{n+1}}.$$

::: elmelet
**Elméleti háttér — lépcsőmászási probléma.**

Egész számok felbontása 1-esek és 2-esek rendezett összegeként pontosan a Fibonacci-számokat adja: $s_n = F_{n+1}$.
:::

## Gy40.1. feladat

Határozzuk meg a Fibonacci-sorozat Pisano-periódusát modulo 2 és modulo 5 esetén!

**Megoldás.**

- Modulo 2:
$F_0 = 0, F_1 = 1, F_2 = 1, F_3 = 0, F_4 = 1$.
A maradékok: $0, 1, 1, 0, 1, 1, \dots$
A periódus hossza: **$\pi(2) = 3$** (páros, páratlan, páratlan).

- Modulo 5:
Maradékok: $0, 1, 1, 2, 3, 0, 3, 3, 1, 4, 0, 4, 4, 3, 2, 0, 2, 2, 4, 1, 0, 1$.
A $(0, 1)$ pár 20 lépés után ismétlődik meg.
A periódus hossza: **$\pi(5) = 20$**.

::: elmelet
**Elméleti háttér — kis modulusok Pisano-periódusai.**

$\pi(2) = 3$, $\pi(5) = 20$. Nevezetes, hogy minden $m$-re $F_{\pi(m)} \equiv 0 \pmod m$.
:::

## Gy40.2. feladat

Mutassuk meg, hogy minden $m \ge 2$ egész számhoz létezik olyan $n > 0$ index, amelyre $F_n$ osztható $m$-mel!

**Megoldás.**

Mivel a maradéksorozat tisztán periodikus $\pi(m)$ periódushosszal, és $F_0 = 0$, ezért:
$$F_{\pi(m)} \equiv F_0 = 0 \pmod m.$$
Tehát az $n = \pi(m) > 0$ indexre $m \mid F_n$. $\blacksquare$

::: elmelet
**Elméleti háttér — periodicitás következménye az oszthatóságra.**

Minden természetes számnak létezik pozitív Fibonacci-többszöröse.
:::

## Gy41.1. feladat

Bizonyítsuk be, hogy a páratlan indexű Fibonacci-számok összege: $\sum_{i=1}^{n} F_{2i-1} = F_{2n}$.

**Megoldás.**

Teleszkopikusan: $F_{2i-1} = F_{2i} - F_{2i-2}$.
Összegezve $i = 1$-től $n$-ig:
$$\sum_{i=1}^n (F_{2i} - F_{2i-2}) = (F_2 - F_0) + (F_4 - F_2) + \dots + (F_{2n} - F_{2n-2}) = F_{2n} - F_0 = F_{2n}.$$
Mivel $F_0 = 0$, az állítás kész. $\blacksquare$

::: elmelet
**Elméleti háttér — páratlan indexű Fibonacci-összegek.**

$\sum_{i=1}^n F_{2i-1} = F_{2n}$ teleszkóppal azonnal adódik.
:::

## Gy41.2. feladat

Mutassuk meg, hogy $F_{n+1}^2 - F_{n-1}^2 = F_{2n}$ minden $n \ge 1$ esetén!

**Megoldás.**

Alakítsuk szorzattá a négyzetek különbségét:
$$F_{n+1}^2 - F_{n-1}^2 = (F_{n+1} - F_{n-1})(F_{n+1} + F_{n-1}).$$
A definíció szerint $F_{n+1} - F_{n-1} = F_n$.
Továbbá ismert (vagy az addíciós tételből adódik), hogy $F_{n+1} + F_{n-1} = L_n$, és $F_n L_n = F_{2n}$.
Részletesen: $F_{2n} = F_{n + n} = F_{n-1}F_n + F_n F_{n+1} = F_n(F_{n-1} + F_{n+1})$.
Így:
$$F_n(F_{n+1} + F_{n-1}) = F_{2n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Fibonacci és Lucas kapcsolatok.**

$F_{2n} = F_n L_n$, analóg a $\sin(2x) = 2\sin x \cos x$ azonossággal.
:::

## Gy42.1. feladat

Hány olyan 500-nál nem nagyobb pozitív egész szám van, amely nem osztható sem 3-mal, sem 5-tel?

**Megoldás.**

$|U| = 500$.
$|A_3| = \lfloor 500/3 \rfloor = 166$.
$|A_5| = \lfloor 500/5 \rfloor = 100$.
$|A_{15}| = \lfloor 500/15 \rfloor = 33$.
Szita-formulával:
$|A_3 \cup A_5| = 166 + 100 - 33 = 233$.
A keresett számok száma:
$$500 - 233 = \mathbf{267}.$$

::: elmelet
**Elméleti háttér — két halmazos szita-formula.**

$|A^c \cap B^c| = |U| - |A| - |B| + |A \cap B|$.
:::

## Gy42.2. feladat

Hány olyan 2100-nál nem nagyobb pozitív egész szám van, amely relatív prím a 210-hez?

**Megoldás.**

A 210 prímtényezős felbontása: $210 = 2 \cdot 3 \cdot 5 \cdot 7$.
Mivel $2100 = 10 \cdot 210$, a 2100 pontos többszöröse 210-nek.
Ezért a relatív prímek száma pontosan:
$$10 \cdot \varphi(210) = 10 \cdot 210 \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right)\left(1 - \frac{1}{7}\right) = 10 \cdot 210 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} \cdot \frac{6}{7} = 10 \cdot 48 = \mathbf{480}.$$

::: elmelet
**Elméleti háttér — Euler-függvény és szita-formula.**

A $\varphi(n)$ képlete a szita-formula közvetlen következménye.
:::

## Gy43.1. feladat

Egy szabályos dobókockával 7-szer dobunk. Hány olyan dobássorozat van, amelyben mind a 6 szám előfordul legalább egyszer?

**Megoldás.**

Ez a 7-ből 6-ba képező szürjektív függvények száma:
$$6! \cdot S(7, 6).$$
Egy 7 elemű halmaz 6 osztályba bontásához pontosan egy darab 2 elemű osztály és öt darab 1 elemű osztály kell: $S(7, 6) = \binom{7}{2} = 21$.
A szürjektív függvények száma:
$$6! \cdot 21 = 720 \cdot 21 = \mathbf{15\,120}.$$

::: elmelet
**Elméleti háttér — szürjekciók majdnem egyenlő halmazméretekre.**

$S(n+1, n) = \binom{n+1}{2}$, mert pontosan egy skatulyába kerül 2 elem.
:::

## Gy43.2. feladat

5 különböző levelet teszünk 3 különböző postaládába úgy, hogy egyik láda sem maradhat üresen. Hányféleképpen tehetjük ezt meg?

**Megoldás.**

Ez az 5-ből 3-ba képező szürjektív függvények száma:
$$3! \cdot S(5, 3).$$
Szita-formulával:
$$3^5 - \binom{3}{1}2^5 + \binom{3}{2}1^5 = 243 - 3 \cdot 32 + 3 \cdot 1 = 243 - 96 + 3 = \mathbf{150}.$$
(Stirling-számmal: $S(5, 3) = 25$, így $6 \cdot 25 = 150$.)

::: elmelet
**Elméleti háttér — levelek és postaládák (szürjektív modellek).**

Nem üres dobozokba különböző tárgyak elhelyezése szürjektív leképezést jelent.
:::

## Gy44.1. feladat

Mennyi a 2-vel vagy 5-tel osztható egészek száma 1-től 500-ig?

**Megoldás.**

$|A_2| = 250$, $|A_5| = 100$, $|A_{10}| = 50$.
$$|A_2 \cup A_5| = 250 + 100 - 50 = \mathbf{300}.$$

::: elmelet
**Elméleti háttér — két prím többszörösei.**

Prímeknél $\text{lcm}(p, q) = pq$.
:::

## Gy44.2. feladat

Mennyi a 2-vel vagy 3-mal osztható egészek összege 1-től 100-ig?

**Megoldás.**

$S(2) = 2 \cdot \frac{50 \cdot 51}{2} = 2550$.
$S(3) = 3 \cdot \frac{33 \cdot 34}{2} = 3 \cdot 561 = 1683$.
$S(6) = 6 \cdot \frac{16 \cdot 17}{2} = 3 \cdot 272 = 816$.
Összeg: $2550 + 1683 - 816 = \mathbf{3417}$.

::: elmelet
**Elméleti háttér — súlyozott szita 100-ig.**

A képlet közvetlenül adja a 3417 eredményt.
:::

## Gy45.1. feladat

Bizonyítsuk be közvetlen számolással az $F_i F_{i+3} = F_{i+2}^2 - F_{i+1}^2$ azonosságot!

**Megoldás.**

A jobb oldal:
$$F_{i+2}^2 - F_{i+1}^2 = (F_{i+2} - F_{i+1})(F_{i+2} + F_{i+1}).$$
Mivel $F_{i+2} - F_{i+1} = F_i$, és $F_{i+2} + F_{i+1} = F_{i+3}$, kapjuk:
$$F_i \cdot F_{i+3}.$$
A két oldal megegyezik. $\blacksquare$

::: elmelet
**Elméleti háttér — szorzattá bontás a Fibonacci-rekurzióban.**

$(a-b)(a+b) = a^2 - b^2$ alkalmazása $a = F_{i+2}, b = F_{i+1}$ választással.
:::

## Gy45.2. feladat

Számítsuk ki a $\sum_{i=1}^{n} F_i F_{i+3}$ összeg zárt alakját!

**Megoldás.**

A teleszkopikus formula szerint $k = 1, m = n$:
$$\sum_{i=1}^{n} F_i F_{i+3} = F_{n+2}^2 - F_2^2 = \mathbf{F_{n+2}^2 - 1}.$$

::: elmelet
**Elméleti háttér — zárt alak Fibonacci szorzatok összegére.**

$k = 1$-re a kezdőtag $F_2^2 = 1^2 = 1$.
:::

## Gy46.1. feladat

Hány olyan 7 hosszú szó képezhető a 4 betűs $\{A, B, C, D\}$ ábécéből, amely tartalmaz legalább egy 'A'-t és legalább egy 'B'-t?

**Megoldás.**

$|U| = 4^7 = 16\,384$.
Hiányzik 'A': $3^7 = 2187$.
Hiányzik 'B': $3^7 = 2187$.
Hiányzik mindkettő: $2^7 = 128$.
Szita-formulával:
$$4^7 - 2 \cdot 3^7 + 2^7 = 16\,384 - 2 \cdot 2187 + 128 = 16\,384 - 4374 + 128 = \mathbf{12\,138}.$$

::: elmelet
**Elméleti háttér — két betű kötelező jelenléte.**

$N = |U| - 2|H_1| + |H_1 \cap H_2|$.
:::

## Gy46.2. feladat

Hány olyan 6-jegyű szám van (nem kezdődhet 0-val), amelyben a 7-es és a 8-as számjegy is előfordul legalább egyszer?

**Megoldás.**

Összes 6-jegyű szám: $9 \cdot 10^5 = 900\,000$.
- Hiányzik a 7-es: kezdőjegy 8-féle (nem 0, nem 7), a többi 5 jegy 9-féle: $8 \cdot 9^5 = 8 \cdot 59\,049 = 472\,392$.
- Hiányzik a 8-as: ugyanígy $8 \cdot 9^5 = 472\,392$.
- Hiányzik a 7-es és a 8-as is: kezdőjegy 7-féle, a többi 5 jegy 8-féle: $7 \cdot 8^5 = 7 \cdot 32\,768 = 229\,376$.
A mindkét jegyet tartalmazó számok száma szita-formulával:
$$900\,000 - 2 \cdot 472\,392 + 229\,376 = 900\,000 - 944\,784 + 229\,376 = \mathbf{184\,592}.$$

::: elmelet
**Elméleti háttér — szita-formula kezdőjegy-megszorítással.**

A kezdőpozíció korlátozását minden részhalmazban konzisztensen figyelembe kell venni.
:::

## Gy47.1. feladat

Hányféleképpen fedhető le egy $2 \times 8$-as sakktábla $1 \times 2$-es dominókkal?

**Megoldás.**

A képlet szerint $n = 8$-ra a fedések száma:
$$d_8 = F_{8+1} = F_9.$$
Mivel $F_1=1, F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34$, a megoldás:
$$\mathbf{34}.$$

::: elmelet
**Elméleti háttér — konkrét táblaméret dominófedése.**

$d_n = F_{n+1}$, így $2 \times 8$-ra $F_9 = 34$.
:::

## Gy47.2. feladat

Hányféleképpen fedhető le egy $1 \times n$-es sáv $1 \times 1$-es és $1 \times 2$-es csempékkel?

**Megoldás.**

Jelölje $c_n$ a fedések számát. Az utolsó csempe vagy $1 \times 1$-es (marad $n-1$), vagy $1 \times 2$-es (marad $n-2$).
Így $c_n = c_{n-1} + c_{n-2}$.
$c_1 = 1 = F_2$, $c_2 = 2 = F_3$.
A válasz tetszőleges $n$-re:
$$c_n = \mathbf{F_{n+1}}.$$

::: elmelet
**Elméleti háttér — sáv csempézése.**

$1 \times 1$ és $1 \times 2$ csempékkel való fedés izomorf a $2 \times n$ dominófedéssel.
:::

## Gy48.1. feladat

Hány olyan sorrendje van az $A, A, B, B, C, C$ betűknek, amelyben semelyik két azonos betű nem áll egymás mellett?

**Megoldás.**

Alkalmazzuk a levezetett képletet $n = 3$-ra:
$$N = \sum_{k=0}^{3} (-1)^k \binom{3}{k} \frac{(6 - k)!}{2^{3-k}}.$$
Számoljuk ki a tagokat:
- $k = 0$: $\binom{3}{0} \frac{6!}{8} = 1 \cdot \frac{720}{8} = 90$.
- $k = 1$: $\binom{3}{1} \frac{5!}{4} = 3 \cdot \frac{120}{4} = 3 \cdot 30 = 90$.
- $k = 2$: $\binom{3}{2} \frac{4!}{2} = 3 \cdot \frac{24}{2} = 3 \cdot 12 = 36$.
- $k = 3$: $\binom{3}{3} \frac{3!}{1} = 1 \cdot 6 = 6$.
Összegezve:
$$N = 90 - 90 + 36 - 6 = \mathbf{30}.$$

::: elmelet
**Elméleti háttér — három betűpár elválasztása.**

A szita-formula tagjai pontosan kiadják a 30 érvényes anagrammát.
:::

## Gy48.2. feladat

Hány olyan sorrendje van az $1, 1, 2, 2$ kártyáknak, ahol nincs két egymás melletti azonos szám? Soroljuk fel mindet!

**Megoldás.**

Az összes sorrend száma $\frac{4!}{2! 2!} = 6$.
A 6 lehetséges sorrend:
1122 (rossz), 1212 (jó), 1221 (rossz), 2112 (rossz), 2121 (jó), 2211 (rossz).
A feltételnek megfelelő sorrendek száma: **2** (az $1212$ és a $2121$).

::: elmelet
**Elméleti háttér — kis méretű ellenőrzés.**

A képlet $n=2$-re $6 - 6 + 2 = 2$ eredményt ad, ami megegyezik a direkt felsorolással.
:::

## Gy49.1. feladat

Oldjuk meg az $a_n = a_{n-1} + 2a_{n-2}$ rekurziót az $a_0 = 2, a_1 = 1$ kezdeti értékekkel!

**Megoldás.**

A karakterisztikus gyökök $\lambda_1 = 2, \lambda_2 = -1$.
Általános alak: $a_n = c_1 2^n + c_2 (-1)^n$.
Kezdeti értékek:
$c_1 + c_2 = 2$
$2c_1 - c_2 = 1$.
Összeadva: $3c_1 = 3 \implies c_1 = 1 \implies c_2 = 1$.
A megoldás:
$$a_n = \mathbf{2^n + (-1)^n}.$$

::: elmelet
**Elméleti háttér — kezdeti feltételek illesztése.**

$a_n = 2^n + (-1)^n$ kis tagjai: $a_0 = 2, a_1 = 1, a_2 = 5, a_3 = 7, a_4 = 17$.
:::

## Gy49.2. feladat

Egy gépbe 1 Ft-os vagy 2 Ft-os érmét lehet bedobni (mindkettőből egyfajta létezik). Hányféleképpen dobhatunk be 10 Ft-ot, ha a bedobások sorrendje számít?

**Megoldás.**

Itt a rekurzió $b_n = b_{n-1} + b_{n-2}$, $b_1 = 1, b_2 = 2$. Ez a Fibonacci-sorozat: $b_n = F_{n+1}$.
$n = 10$-re:
$$b_{10} = F_{11} = \mathbf{89}.$$

::: elmelet
**Elméleti háttér — egyféle 1 és 2 Ft-os rekurziója.**

Egyetlen 2 Ft-os típus esetén a klasszikus Fibonacci-sorozatot kapjuk: $F_{11} = 89$.
:::

## Gy50.1. feladat

Az $\{A, B, C\}$ betűkből hány olyan $n$ hosszú szó képezhető, amelyben az $A$ betű után nem állhat sem $B$, sem $C$?

**Megoldás.**

Ha megjelenik egy $A$ betű, utána már csak $A$ állhat.
Így a szó alakja: valahány $\{B, C\}$ betű, majd csupa $A$.
Ha $k$ darab $\{B, C\}$ betű van ($0 \le k \le n$), ezek $2^k$-féleképpen választhatók meg, a maradék $n-k$ helyen kötelezően $A$ áll ($1^{n-k} = 1$).
Összesen:
$$\sum_{k=0}^{n} 2^k = 2^{n+1} - 1.$$

::: elmelet
**Elméleti háttér — elnyelő állapot szavakban.**

Az $A$ betű elnyelő állapot, utána nem lehet kilépni. A mértani sorozat összege $\sum_{k=0}^n 2^k = 2^{n+1} - 1$.
:::

## Gy50.2. feladat

A $\{0, 1, 2\}$ számjegyekből álló $n$ hosszú sorozatok közül hány olyan van, amelyben az 1-es és 2-es után nem állhat 0?

**Megoldás.**

Ha megjelenik egy 1-es vagy 2-es, utána már nem állhat 0.
A sorozat alakja: $k$ darab 0-s ($0 \le k \le n$, $1^k = 1$ mód), majd $n-k$ darab $\{1, 2\}$ jegy ($2^{n-k}$ mód).
Összesen:
$$\sum_{k=0}^n 2^{n-k} = \sum_{j=0}^n 2^j = \mathbf{2^{n+1} - 1}.$$

::: elmelet
**Elméleti háttér — prefix és szuffix struktúrák.**

A 0-k csak a sorozat elején szerepelhetnek.
:::

## Gy51.1. feladat

Hányféleképpen bontható fel egy konvex 7-szög nem metsző átlókkal háromszögekre?

**Megoldás.**

A képlet szerint $n = 7$-re:
$$t_7 = C_{7-2} = C_5 = \frac{1}{6}\binom{10}{5} = \frac{252}{6} = \mathbf{42}.$$

::: elmelet
**Elméleti háttér — 7-szög triangulációi.**

$C_5 = 42$ trianguláció létezik konvex hétszögre.
:::

## Gy51.2. feladat

Hányféleképpen vágható fel egy konvex 8-szög nem metsző átlókkal háromszögekre?

**Megoldás.**

$n = 8$-ra:
$$t_8 = C_{8-2} = C_6 = \frac{1}{7}\binom{12}{6} = \frac{924}{7} = \mathbf{132}.$$

::: elmelet
**Elméleti háttér — 8-szög triangulációi.**

$C_6 = 132$ trianguláció létezik konvex nyolcszögre.
:::

## Gy52.1. feladat

Hányféleképpen zárójelezhető meg egy 5 tényezős szorzat ($x_1 x_2 x_3 x_4 x_5$)?

**Megoldás.**

A képlet szerint $n = 5$-re a zárójelezések száma:
$$z_5 = C_{5-1} = C_4 = \frac{1}{5}\binom{8}{4} = \frac{70}{5} = \mathbf{14}.$$

::: elmelet
**Elméleti háttér — 5 tényező zárójelezése.**

$C_4 = 14$ különböző bináris zárójelezési fa létezik 5 levélre.
:::

## Gy52.2. feladat

Hány olyan 8 hosszú helyes zárójelkifejezés képezhető 4 darab '(' és 4 darab ')' zárójelből?

**Megoldás.**

A helyes zárójelkifejezések száma $n$ pár zárójelre pontosan az $n$-edik Catalan-szám:
$$C_4 = \frac{1}{5}\binom{8}{4} = \mathbf{14}.$$

::: elmelet
**Elméleti háttér — helyes zárójelezések és Dyck-nyelv.**

Egy zárójelkifejezés akkor helyes, ha minden prefixében legalább annyi nyitó zárójel van, mint csukó, és a végén egyenlő a számuk. Ez izomorf a Dyck-utakkal.
:::

## Gy53.1. feladat

Hány olyan részhalmaza van 6 körben ülő embernek, amelyben nincs két szomszédos ember?

**Megoldás.**

A Lucas-szám $n = 6$-ra:
$$L_6 = F_5 + F_7 = 5 + 13 = \mathbf{18}.$$
(Részletezve: 1 db 0 elemű, 6 db 1 elemű, 9 db 2 elemű, 2 db 3 elemű független halmaz: $1 + 6 + 9 + 2 = 18$.)

::: elmelet
**Elméleti háttér — 6-os kör független halmazai.**

$L_6 = 18$ részhalmaz.
:::

## Gy53.2. feladat

Igazoljuk, hogy az $L_n = F_{n-1} + F_{n+1}$ sorozat kielégíti az $L_n = L_{n-1} + L_{n-2}$ rekurziót minden $n \ge 2$ esetén!

**Megoldás.**

A jobb oldal:
$$L_{n-1} + L_{n-2} = (F_{n-2} + F_n) + (F_{n-3} + F_{n-1}).$$
Csoportosítsuk át:
$$(F_{n-2} + F_{n-3}) + (F_n + F_{n-1}) = F_{n-1} + F_{n+1} = L_n.$$
Kész. $\blacksquare$

::: elmelet
**Elméleti háttér — Lucas-rekurzió linearitása.**

Mivel $L_n$ a Fibonacci-sorozat eltoltjainak lineáris kombinációja, maga is kielégíti a másodrendű Fibonacci-rekurziót.
:::

## Gy54.1. feladat

Hányféleképpen ülhet le 3 házaspár (6 ember) egy kerek asztal köré úgy, hogy senki sem ül a saját házastársa mellett (forgatással azonosak egybeesnek)?

**Megoldás.**

Alkalmazzuk a szita-formulát $n = 3$ párra:
- $k = 0$: $\binom{3}{0} 2^0 \cdot 5! = 120$.
- $k = 1$: $\binom{3}{1} 2^1 \cdot 4! = 3 \cdot 2 \cdot 24 = 144$.
- $k = 2$: $\binom{3}{2} 2^2 \cdot 3! = 3 \cdot 4 \cdot 6 = 72$.
- $k = 3$: $\binom{3}{3} 2^3 \cdot 2! = 1 \cdot 8 \cdot 2 = 16$.
Összeg:
$$120 - 144 + 72 - 16 = \mathbf{32}.$$

::: elmelet
**Elméleti háttér — 3 házaspár leülése.**

$120 - 144 + 72 - 16 = 32$ lehetséges ülésrend forgatással.
:::

## Gy54.2. feladat

3 barátpár (6 ember) áll egy sorba. Hányféleképpen állhatnak sorba úgy, hogy semelyik pár tagjai ne álljanak közvetlenül egymás mellett?

**Megoldás.**

Egyenes sorban $n = 3$ pár:
$|U| = 6! = 720$.
- $k = 1$: $\binom{3}{1} 2^1 \cdot 5! = 6 \cdot 120 = 720$.
- $k = 2$: $\binom{3}{2} 2^2 \cdot 4! = 12 \cdot 24 = 288$.
- $k = 3$: $\binom{3}{3} 2^3 \cdot 3! = 8 \cdot 6 = 48$.
Szita-formulával:
$$720 - 720 + 288 - 48 = \mathbf{240}.$$

::: elmelet
**Elméleti háttér — párok tiltott szomszédsága sorban.**

Egyenes vonalban a blokkok elrendezése $(2n-k)!$, szorozva $2^k$-nal.
:::

## Gy55.1. feladat

Számítsuk ki az $F_1 + F_3 + F_5 + F_7 + F_9 + F_{11}$ összeg pontos értékét!

**Megoldás.**

A páratlan összegzési képlet szerint $n = 6$-ra:
$$\sum_{k=1}^6 F_{2k-1} = F_{2 \cdot 6} = F_{12}.$$
A Fibonacci-számok: $F_1=1, F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34, F_{10}=55, F_{11}=89, F_{12}=144$.
Az összeg tehát: **144**.

::: elmelet
**Elméleti háttér — páratlan összeg konkrét számolása.**

$1 + 2 + 5 + 13 + 34 + 89 = 144 = F_{12}$.
:::

## Gy55.2. feladat

Számítsuk ki az $F_2 + F_4 + F_6 + F_8 + F_{10}$ összeg értékét!

**Megoldás.**

A páros összegzési képlet szerint $n = 5$-re:
$$\sum_{k=1}^5 F_{2k} = F_{2 \cdot 5 + 1} - 1 = F_{11} - 1.$$
Mivel $F_{11} = 89$:
$$89 - 1 = \mathbf{88}.$$
(Ellenőrzés: $1 + 3 + 8 + 21 + 55 = 88$.)

::: elmelet
**Elméleti háttér — páros összeg konkrét számolása.**

$F_2 + \dots + F_{2n} = F_{2n+1} - 1$.
:::

# A 4. feladatsorhoz

## Gy56.1. feladat

Legyen $V = \{1, 2, \dots, 50\}$. Hány éle és összefüggőségi komponense van annak a gráfnak, amelyben $i \sim j \iff |i - j| = 5$?

**Megoldás.**

Két csúcs akkor van összekötve, ha $|i - j| = 5$.
Ez azt jelenti, hogy az $i \equiv j \pmod 5$ maradékosztályokon belül a szomszédos elemek vannak láncba kötve:
$r \in \{1, 2, 3, 4, 5\}$ esetén a csúcsok: $r, r+5, r+10, \dots, r+45$ (10 csúcs egy $P_{10}$ út).
- Összefüggőségi komponensek száma: **$5$** darab diszjunkt út.
- Élek száma: mind az 5 komponens egy-egy 10 csúcsú út, amelynek 9 éle van. Összesen: $5 \times 9 = \mathbf{45}$ él.
(Vagy közvetlenül: $50 - 5 = 45$ él.)

::: elmelet
**Elméleti háttér — rács- és kongruencialáncok komponensei.**

Ha a lépésköz $d$, a gráf $\gcd(d, n)$ darab független láncra bomlik.
:::

## Gy56.2. feladat

Legyen $V = \{1, 2, \dots, 40\}$. Hány éle és hány komponense van a gráfnak, ha $i \sim j \iff i + j$ páros és $i \neq j$?

**Megoldás.**

$i + j$ páros pontosan akkor, ha $i$ és $j$ azonos paritásúak.
A gráf 2 komponensre esik szét: a 20 páros csúcs által alkotott $K_{20}$ és a 20 páratlan csúcs által alkotott $K_{20}$.
- Komponensek száma: **$2$**.
- Élek száma: $2 \cdot \binom{20}{2} = 2 \cdot \frac{20 \cdot 19}{2} = 2 \cdot 190 = \mathbf{380}$.

::: elmelet
**Elméleti háttér — paritás szerinti klikkek.**

Az azonos paritás ekvivalenciareláció 2 osztállyal, így 2 diszjunkt klikk keletkezik.
:::

## Gy57.1. feladat

Lehetséges-e egy 11 fős társaságban, hogy mindenkinek pontosan 5 barátja legyen a társaságban (az ismeretség kölcsönös)?

**Megoldás.**

Ha mind a 11 embernek 5 barátja lenne, a fokszámösszeg $11 \cdot 5 = 55$ lenne, ami páratlan.
Mivel a kézfogási lemma szerint a fokszámösszegnek párosnak kell lennie, ilyen társaság **nem létezhet**.

::: elmelet
**Elméleti háttér — páratlan fokú csúcsok paritása.**

Páratlan sok páratlan szám összege páratlan, nem lehet $2e$.
:::

## Gy57.2. feladat

Egy összefüggő gráfban 10 csúcs van, és minden csúcs foka legalább 3. Legalább hány éle van a gráfnak?

**Megoldás.**

A kézfogási lemma szerint $2e = \sum d(v) \ge 10 \cdot 3 = 30 \implies e \ge 15$.
15 él elegendő: létezik 3-reguláris egyszerű gráf 10 csúcson (pl. a Petersen-gráf).
A minimális élszám tehát **15**.

::: elmelet
**Elméleti háttér — minimális élszám fokszámkorlátból.**

$e \ge \frac{n \cdot \delta(G)}{2}$.
:::

## Gy58.1. feladat

Hány éle van egy 8 csúcsú önkomplementer gráfnak? Létezhet-e ilyen gráf a paritási feltétel szerint?

**Megoldás.**

$n = 8 \implies \binom{8}{2} = 28$.
Az önkomplementer gráf élszáma:
$$e = \frac{28}{2} = 14.$$
Mivel $8 \equiv 0 \pmod 4$, a feltétel teljesül, és valóban létezik 8 csúcsú önkomplementer gráf. Élszáma: **14**.

::: elmelet
**Elméleti háttér — 8 csúcsú önkomplementer gráf.**

$n = 8$-ra létezik önkomplementer gráf, élszáma 14.
:::

## Gy58.2. feladat

Létezhet-e 10 csúcsú önkomplementer gráf?

**Megoldás.**

$\binom{10}{2} = 45$. Mivel 45 páratlan, nem osztható 2-vel ($45/2 = 22{,}5$).
Modulo 4 vizsgálva: $10 \equiv 2 \pmod 4$, ami nem 0 és nem 1.
Ezért 10 csúcson **nem létezik** önkomplementer gráf.

::: elmelet
**Elméleti háttér — oszthatósági akadály önkomplementer gráfoknál.**

Ha $n \equiv 2, 3 \pmod 4$, $\binom{n}{2}$ páratlan, nincs önkomplementer gráf.
:::

## Gy59.1. feladat

Egy 5 csúcsú egyszerű gráfban a fokszámok között szerepel az 1, 2, 3 és 4. Mi lehet az ötödik csúcs foka?

**Megoldás.**

Legyen a fokszámsorozat $(4, 3, 2, 1, x)$.
A fokszámösszeg $4 + 3 + 2 + 1 + x = 10 + x$ páros, így $x$ páros: $x \in \{0, 2, 4\}$.
- $x = 0$ lehetetlen, mert a 4 fokú csúcs mindenkivel szomszédos, így nincs 0 fokú csúcs.
- Ha $x = 2$: a 4-es mindenkivel szomszédos. Az 1-esnek csak a 4-essel van éle. A 3-as össze van kötve a 4-essel, a 2-essel és az $x$-szel. Ekkor a fokok: 4, 3, 2, 1, 2. Ez realizálható.
- Ha $x = 4$: két 4-es csúcs van, ekkor minden más csúcs foka legalább 2 kellene legyen, de van 1 fokú csúcs! Ez ellentmondás.
Az ötödik csúcs foka kizárólag **2** lehet.

::: elmelet
**Elméleti háttér — 5 csúcsú gráf fokszámkényszere.**

Két 4 fokú csúcs mellett nem létezhet 1 fokú csúcs 5 ponton.
:::

## Gy59.2. feladat

Lehetséges-e egy 6 csúcsú egyszerű gráfban, hogy minden csúcs foka különböző legyen?

**Megoldás.**

**Nem lehetséges.**
Egy 6 csúcsú egyszerű gráfban a lehetséges fokszámok a $\{0, 1, 2, 3, 4, 5\}$ halmazból valók (6 lehetséges érték).
Ha mind a 6 csúcs foka különböző lenne, akkor mind a 6 értéknek pontosan egyszer kellene szerepelnie.
Azonban a 0 fokú csúcs azt jelenti, hogy van egy izolált csúcs (senkivel sincs összekötve).
Az 5 fokú csúcs azt jelenti, hogy van egy csúcs, amely mind az 5 másik csúccsal össze van kötve.
Ez a két állapot egymásnak ellentmond: a 0 fokú csúcs nem lehet összekötve az 5 fokú csúccsal!
Ezért a 0 és az $n-1$ fokszám egyszerre sohasem fordulhat elő egyszerű gráfban.
A skatulya-elv szerint a 6 csúcs legfeljebb 5 különböző fokszámot vehet fel, így mindig van legalább két azonos fokú csúcs. $\blacksquare$

::: elmelet
**Elméleti háttér — azonos fokú csúcsok létezésének tétele.**

Minden legalább 2 csúcsú egyszerű gráfban van két azonos fokú csúcs, mert a $0$ és $n-1$ fokok kölcsönösen kizárják egymást.
:::

## Gy60.1. feladat

Bizonyítsuk be, hogy egy $n$ csúcsú összefüggő gráfban legalább $n - 1$ él van!

**Megoldás.**

Egy összefüggő gráfból körök éleinek elhagyásával feszítőfa képezhető.
A feszítőfa élszáma pontosan $n - 1$.
Mivel a gráf tartalmazza a feszítőfát, éleinek száma legalább $n - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — feszítőfa élszáma.**

Minden összefüggő gráfnak van feszítőfája, amely pontosan $n-1$ élet tartalmaz.
:::

## Gy60.2. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban van kör, akkor éleinek elhagyása nélkül nem lehet fa!

**Megoldás.**

A fa definíció szerint körmentes gráf. Ha egy gráf kört tartalmaz, megsérti a körmentesség axiómáját, így fa nem lehet. $\blacksquare$

::: elmelet
**Elméleti háttér — körmentesség mint fák alapaxiómája.**

A fák a körmentes összefüggő struktúrák.
:::

## Gy61.1. feladat

Hány levele van egy olyan fának, amelynek 3 darab 4-edfokú, 2 darab 3-adfokú csúcsa van, és minden más csúcsa elsőfokú (levél)?

**Megoldás.**

Jelölje $l$ a levelek számát.
A csúcsok száma: $n = 3 + 2 + l = 5 + l$.
A fa élszáma: $e = n - 1 = 4 + l$.
A fokszámok összege a kézfogási lemma szerint $2e$:
$$2(4 + l) = 3 \cdot 4 + 2 \cdot 3 + l \cdot 1.$$
$$8 + 2l = 12 + 6 + l = 18 + l.$$
Átrendezve:
$$l = 18 - 8 = \mathbf{10}.$$
A fának 10 levele van.

::: elmelet
**Elméleti háttér — fokszámegyenlet fákra.**

$\sum (d(v) - 2) = 2e - 2n = -2$, amiből a belső fokok és levelek száma közvetlenül kiszámítható: $l = 2 + \sum_{d(v) \ge 3} (d(v) - 2)$.
:::

## Gy61.2. feladat

Egy 25 csúcsú erdőnek 5 összefüggőségi komponense van. Hány éle van az erdőnek?

**Megoldás.**

A képlet szerint $e = n - k$:
$$e = 25 - 5 = \mathbf{20}.$$

::: elmelet
**Elméleti háttér — erdő élszámának meghatározása.**

$e = n - k$ közvetlen behelyettesítése.
:::

## Gy62.1. feladat

Mutassuk meg, hogy egy 8 fős társaságban mindig van két olyan ember, akiknek pontosan ugyanannyi ismerősük van a társaságban!

**Megoldás.**

Az ismeretségi gráf 8 csúcsú egyszerű gráf. Mivel a 0 (senkit sem ismer) és a 7 (mindenkit ismer) fokok kizárják egymást, a fokszámok legfeljebb 7 különböző értéket vehetnek fel. A skatulya-elv szerint 8 emberből legalább kettőnek megegyezik a foka. $\blacksquare$

::: elmelet
**Elméleti háttér — ismeretségi hálózatok azonos fokszámai.**

Bármely egyszerű társasági gráfban van két ember azonos fokszámmal.
:::

## Gy62.2. feladat

Létezik-e olyan 5 csúcsú összefüggő egyszerű gráf, amelynek 4 éle van és bármely két éle metszi egymást?

**Megoldás.**

Egy 5 csúcsú, 4 élű összefüggő gráf szükségképpen fa ($e = n - 1 = 4$).
Ha bármely két él metszi egymást, a fa csak csillag lehet: $K_{1, 4}$.
Ez létezik: egy 4 fokú központi csúcs és 4 levél.
Válasz: **Igen, a $K_{1, 4}$ csillagfa.**

::: elmelet
**Elméleti háttér — metsző élű fák.**

Fák esetén csak a csillaggráfok rendelkeznek azzal a tulajdonsággal, hogy nincs két független élük.
:::

## Gy63.1. feladat

Mutassuk meg az $R(s, t) \le R(s-1, t) + R(s, t-1)$ egyenlőtlenséget egy tetszőleges csúcs szomszédainak vizsgálatával!

**Megoldás.**

Legyen $n = R(s-1, t) + R(s, t-1)$, és színezzük $K_n$ éleit pirossal és kékkel.
Egy $v$ csúcs foka $n - 1 = R(s-1, t) + R(s, t-1) - 1$.
A skatulya-elv szerint $v$-ből kiindul vagy legalább $R(s-1, t)$ piros él, vagy legalább $R(s, t-1)$ kék él.
- Ha $\ge R(s-1, t)$ piros él indul ki: a végpontok által feszített részgráfban a Ramsey-szám definíciója szerint van kék $K_t$ (kész), vagy van piros $K_{s-1}$, ami $v$-vel együtt piros $K_s$-et ad (kész).
- A kék eset szimmetrikus. $\blacksquare$

::: elmelet
**Elméleti háttér — Ramsey-számok rekurzív felső korlátja.**

A binomiális együtthatókkal való analógia: $R(s, t) \le \binom{s+t-2}{s-1}$.
:::

## Gy63.2. feladat

Hány él színezhető pirosra egy 6 csúcsú teljes gráfban úgy, hogy ne tartalmazzon piros háromszöget és a kék élek se tartalmazzanak kék háromszöget?

**Megoldás.**

Mivel $R(3,3) = 6$, a 6 csúcsú teljes gráf **bármely** 2-színezésében szükségképpen létezik piros vagy kék háromszög!
Ezért a kérdéses színezések száma: **0**.

::: elmelet
**Elméleti háttér — $R(3,3)=6$ elkerülhetetlensége.**

6 csúcson nincs monokromatikus háromszögtől mentes színezés.
:::

## Gy64.1. feladat

Mutassuk meg, hogy ha egy véges egyszerű gráfban nincs kör, akkor létezik benne legfeljebb 1 fokú csúcs!

**Megoldás.**

Ez a 64.a állítás kontrapozíciója:
Ha minden csúcs foka $\ge 2$ lenne, akkor a leghosszabb út módszerével létezne kör.
Mivel nincs kör, nem lehet minden csúcs foka $\ge 2$, tehát lennie kell legalább egy olyan csúcsnak, melynek foka $\le 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — kontrapozíció a körmentességre.**

Körmentes gráfban mindig van levél vagy izolált csúcs.
:::

## Gy64.2. feladat

Egy egyszerű gráfban minden csúcs foka legalább 4. Mutassuk meg, hogy a gráf tartalmaz legalább 5 hosszú kört!

**Megoldás.**

A 64.b tétel közvetlen alkalmazása $k = 4$ esetén:
Mivel $\delta(G) \ge 4$, a leghosszabb út kezdőpontjának legalább 4 szomszédja van az úton, így a legtávolabbi szomszéd indexe legalább $1 + 4 = 5$.
A keletkező kör hossza legalább $4 + 1 = \mathbf{5}$. $\blacksquare$

::: elmelet
**Elméleti háttér — minimális fokszám és körhossz.**

$\delta(G) \ge k \implies$ van legalább $k+1$ hosszú kör.
:::

## Gy65.1. feladat

Mutassunk példát olyan 5 csúcsú gráfra, amelyre $G$ és $\overline{G}$ is összefüggő!

**Megoldás.**

Az 5 csúcsú kör, $C_5$ összefüggő, és a komplementere (az átlók által alkotott csillag) szintén egy 5 hosszú kör, amely szintén összefüggő.

::: elmelet
**Elméleti háttér — $C_5$ és komplementere.**

$C_5 \cong \overline{C_5}$ önkomplementer és összefüggő.
:::

## Gy65.2. feladat

Igazoljuk, hogy ha egy $n$ csúcsú egyszerű gráf átmérője nagyobb mint 3 ($\mathrm{diam}(G) \ge 4$), akkor a komplementerének átmérője legfeljebb 2!

**Megoldás.**

Legyenek $u, v$ olyan csúcsok, melyek távolsága $d_G(u, v) \ge 4$.
Bármely $w \in V$ esetén $w$ nem lehet egyszerre szomszédos $u$-val és $v$-vel $G$-ben (különben $d(u,v) \le 2$ lenne).
Sőt, ha $w \sim u$, akkor $w \not\sim v$, így $\overline{G}$-ben $wv$ él.
Ebből levezethető, hogy a komplementerben a távolságok legfeljebb 2-re szorulnak össze: $\mathrm{diam}(\overline{G}) \le 2$. $\blacksquare$

::: elmelet
**Elméleti háttér — átmérők komplementer viszonya.**

Nagy átmérő a gráfban kis átmérőt kényszerít ki a komplementerben.
:::

## Gy66.1. feladat

Igazoljuk, hogy egy fában bármely két leghosszabb útnak van közös csúcsa!

**Megoldás.**

Mivel minden fa összefüggő gráf, a fenti 66. tétel közvetlenül érvényes rá. $\blacksquare$

::: elmelet
**Elméleti háttér — fák leghosszabb útjai.**

A tétel minden összefüggő gráfra igaz, így fákra is.
:::

## Gy66.2. feladat

Mutassunk példát olyan összefüggő gráfra, amelyben van 3 darab leghosszabb út úgy, hogy nincs egyetlen olyan közös csúcs sem, amely mindhárom úton rajta lenne!

**Megoldás.**

Tekintsünk egy háromágú csillagot, amelynek minden ága 2 élből áll (egy Y-alakú fa, 7 csúccsal: $c$ középpont, és $c-u_1-u_2$, $c-v_1-v_2$, $c-w_1-w_2$).
Itt a leghosszabb utak hossza 4 él, és pontosan 3 ilyen út van (bármely két ág uniója), de mind átmennek $c$-n.
Ha olyan gráfot keresünk, ahol a 3 útnak NICS egyetlen közös pontja:
Tekintsük a $K_3$ háromszöget, és mindhárom csúcsához ragasszunk egy-egy 2 él hosszú utat!
Ekkor a leghosszabb utak a háromszög egy-egy élét és a két szomszédos antennát használják: ezek metszete üres lehet! $\blacksquare$

::: elmelet
**Elméleti háttér — Helly-tulajdonság korlátai általános gráfokon.**

Két leghosszabb út mindig metszi egymást, de 3 leghosszabb út metszete általános gráfban lehet üres.
:::

## Gy67.1. feladat

Realizálható-e egyszerű gráfként a $(4, 3, 3, 2, 2, 2)$ fokszámsorozat?

**Megoldás.**

Összeg: $4 + 3 + 3 + 2 + 2 + 2 = 16$ (páros).
1. lépés: töröljük a 4-est, levonunk a következő 4-ből: $(2, 2, 1, 1, 2) \to$ rendezve: $(2, 2, 2, 1, 1)$.
2. lépés: töröljük a 2-est: $(1, 1, 1, 1)$.
3. lépés: töröljük az 1-est: $(0, 1, 1) \to (1, 1, 0)$.
4. lépés: töröljük az 1-est: $(0, 0)$.
Csupa 0 maradt, tehát a sorozat **realizálható**.

::: elmelet
**Elméleti háttér — Havel-Hakimi levezetés 6 csúcsra.**

A redukciós lépések csupa nullához vezetnek.
:::

## Gy67.2. feladat

Realizálható-e egyszerű gráfként az $(5, 5, 4, 3, 2, 1)$ fokszámsorozat?

**Megoldás.**

Fokszámösszeg: $5 + 5 + 4 + 3 + 2 + 1 = 20$ (páros).
1. lépés: töröljük az első 5-öst, 5 elemből vonunk le: $(4, 3, 2, 1, 0)$.
2. lépés: töröljük a 4-est, 4 elemből vonunk le: $(2, 1, 0, -1)$.
Megjelent a $-1$ negatív szám, tehát a sorozat **nem realizálható**.

::: elmelet
**Elméleti háttér — negatív szám elérése a redukcióban.**

Ha a redukció során negatív érték jelenik meg, a sorozat nem grafikális.
:::

## Gy68.1. feladat

Mely egész $X$ értékekre realizálható a $(4, 3, 3, 2, X)$ fokszámsorozat egyszerű gráfként?

**Megoldás.**

5 csúcs van, így $0 \le X \le 4$.
A fokszámösszeg $4 + 3 + 3 + 2 + X = 12 + X$ páros, így $X \in \{0, 2, 4\}$.
- $X = 0$: a 4-es csúcs mindenkivel szomszédos, így 0 fokú csúcs nem lehet. $X \neq 0$.
- $X = 2$: a fokok $(4, 3, 3, 2, 2)$. HH: töröljük a 4-est $\implies (2, 2, 1, 1)$, töröljük a 2-est $\implies (1, 0, 1) \to (1, 1, 0)$, töröljük az 1-est $\implies (0, 0)$. Realizálható!
- $X = 4$: fokok $(4, 4, 3, 3, 2)$. HH: töröljük a 4-est $\implies (3, 2, 2, 1)$, töröljük a 3-ast $\implies (1, 1, 0)$, töröljük az 1-est $\implies (0, 0)$. Realizálható!
A lehetséges értékek: **$X \in \{2, 4\}$**.

::: elmelet
**Elméleti háttér — kis méretű paraméteres feladat.**

$X = 2$ és $X = 4$ a két jó megoldás.
:::

## Gy68.2. feladat

Legfeljebb mekkora lehet $X$, ha a $(6, 6, 5, 4, 3, 2, 2, X)$ sorozat egy 8 csúcsú egyszerű gráf fokszámsorozata?

**Megoldás.**

8 csúcs van, így $X \le 7$.
Összeg: $6 + 6 + 5 + 4 + 3 + 2 + 2 + X = 28 + X$ páros, így $X \in \{0, 2, 4, 6\}$.
$X = 6$-ra: $(6, 6, 6, 5, 4, 3, 2, 2)$.
HH-val ellenőrizve realizálható.
A maximális érték: **$X = 6$**.

::: elmelet
**Elméleti háttér — maximális fokszám keresése.**

$X \le n-1$ és paritás alapján a legnagyobb páros $X = 6$.
:::

## Gy69.1. feladat

Létezhet-e önkomplementer gráf 12 csúcson? Hány éle lenne egy ilyen gráfnak?

**Megoldás.**

$12 \equiv 0 \pmod 4$, így a paritási feltétel teljesül.
Élszáma:
$$e = \frac{12 \cdot 11}{4} = \mathbf{33}.$$
Létezik 12 csúcsú önkomplementer gráf.

::: elmelet
**Elméleti háttér — 12 csúcsú önkomplementer gráf.**

$n = 12 \equiv 0 \pmod 4$, élszáma 33.
:::

## Gy69.2. feladat

Mutassuk meg, hogy egy legalább 4 csúcsú önkomplementer gráf átmérője legfeljebb 3!

**Megoldás.**

Tegyük fel indirekt, hogy $\mathrm{diam}(G) \ge 4$.
A 65. feladat szerint ekkor $\mathrm{diam}(\overline{G}) \le 2$.
De mivel $G \cong \overline{G}$, átmérőjüknek meg kell egyeznie: $\mathrm{diam}(G) = \mathrm{diam}(\overline{G})$, ami ellentmondás ($4 \le \mathrm{diam} \le 2$).
Tehát $\mathrm{diam}(G) \le 3$. $\blacksquare$

::: elmelet
**Elméleti háttér — önkomplementer gráfok átmérője.**

$\mathrm{diam}(G) \in \{2, 3\}$ minden $n \ge 4$ önkomplementer gráfra.
:::

## Gy70.1. feladat

Legyen $G$ egy 11 csúcsú egyszerű gráf, melyben minden csúcs foka legalább 5. Mutassuk meg, hogy $G$ összefüggő!

**Megoldás.**

$\delta(G) \ge 5$.
A képlet szerint $\frac{n-1}{2} = \frac{11-1}{2} = 5$.
Mivel $\delta(G) \ge 5 = \frac{n-1}{2}$, a 70.a tétel szerint a gráf szükségképpen összefüggő. $\blacksquare$

::: elmelet
**Elméleti háttér — 11 csúcsú gráf összefüggősége.**

$\delta \ge (n-1)/2$ közvetlen alkalmazása $n=11$-re.
:::

## Gy70.2. feladat

Mutassunk példát olyan 10 csúcsú nem összefüggő egyszerű gráfra, amelyben minden csúcs foka 4!

**Megoldás.**

Vegyünk két darab diszjunkt 5 csúcsú teljes gráfot: $K_5 \cup K_5$.
Ebben a gráfban 10 csúcs van, a gráf nem összefüggő (2 komponens), és minden csúcs foka a $K_5$-ön belül pontosan $5 - 1 = 4$.
Ez a korlát élességét mutató konstrukció ($n = 10, d = 4 = \frac{n-2}{2}$).

::: elmelet
**Elméleti háttér — élességi konstrukció Dirac-korlátra.**

$K_{n/2} \cup K_{n/2}$ fokszáma $(n-2)/2$, nem összefüggő.
:::

## Gy71.1. feladat

Hányféleképpen egészíthető ki két diszjunkt fa (csúcsszámaik $a$ és $b$) egyetlen fává egy új él behúzásával?

**Megoldás.**

Két diszjunkt fa összekötéséhez pontosan 1 új él kell, amelynek egyik végpontja az első fában, másik végpontja a második fában van.
Az első fa csúcsa $a$-féle, a másodiké $b$-féle lehet:
$$a \cdot b.$$
(A képlettel: $a \cdot b \cdot (a+b)^{2-2} = a \cdot b \cdot 1 = ab$.)

::: elmelet
**Elméleti háttér — két komponens összekötése.**

Két fa összekötése mindig $a \cdot b$ módon lehetséges.
:::

## Gy71.2. feladat

Hány különböző címkézett fa képezhető 6 csúcson a Cayley-tétel szerint?

**Megoldás.**

A Cayley-formula szerint $n = 6$-ra:
$$n^{n-2} = 6^{6-2} = 6^4 = \mathbf{1296}.$$

::: elmelet
**Elméleti háttér — Cayley-formula 6 csúcsra.**

$6^4 = 1296$ különböző címkézett fa van 6 csúcson.
:::

## Gy72.1. feladat

Elhelyezhető-e páratlan sok huszár a sakktáblán úgy, hogy mindegyik páratlan sok másikat üssön?

**Megoldás.**

Ha $n$ páratlan és minden fokszám $d$ páratlan, akkor a fokszámösszeg $n \cdot d$ páratlan lenne, ami ellentmond a kézfogási lemmának.
Ezért **nem helyezhető el**. $\blacksquare$

::: elmelet
**Elméleti háttér — kézfogási lemma reguláris esetre.**

Páratlan csúcsszámú gráfban nem lehet minden fokszám páratlan.
:::

## Gy72.2. feladat

Bizonyítsuk be, hogy egy páros gráfban minden reguláris részgráf csúcsszáma páros!

**Megoldás.**

Legyen a páros részgráf két osztálya $A$ és $B$, és legyen a fokszám minden csúcsban $k \ge 1$.
Az élek száma mindkét oldalról számolva: $e = k|A|$ és $e = k|B|$.
Mivel $k \ge 1$, ebből $|A| = |B|$ következik.
A csúcsok száma $|A| + |B| = 2|A|$, ami páros. $\blacksquare$

::: elmelet
**Elméleti háttér — páros reguláris gráfok osztálymérete.**

Minden $k$-reguláris ($k \ge 1$) páros gráf két osztálya azonos méretű, így csúcsszáma páros.
:::

## Gy73.1. feladat

Egy 10 csúcsú egyszerű gráfnak 21 éle van. Mutassuk meg, hogy van benne legalább 4 hosszú kör!

**Megoldás.**

Alkalmazzuk a 73. tételt $k = 3$ esetén:
A feltételhez szükséges élszám: $(k - 1)n = (3 - 1) \cdot 10 = 20$ él.
Mivel a gráfnak $21 \ge 20$ éle van, a tétel garantálja, hogy létezik legalább $k + 1 = 3 + 1 = 4$ hosszú kör a gráfban. $\blacksquare$

::: elmelet
**Elméleti háttér — konkrét élszámküszöb 4 hosszú körre.**

$e \ge 2n \implies$ van $\ge 4$ hosszú kör.
:::

## Gy73.2. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban nincs kör, akkor az élek száma legfeljebb $n - 1$!

**Megoldás.**

Egy körmentes gráf egy erdő.
Az erdő élszáma $e = n - c$, ahol $c \ge 1$ a komponensek száma.
Mivel $c \ge 1$, ezért $e = n - c \le n - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — körmentes gráfok maximális élszáma.**

Körmentesség esetén $e \le n - 1$, egyenlőség pontosan a fákra áll fenn.
:::

## Gy74.1. feladat

Mutassuk meg, hogy egy összefüggő gráf egy $e$ éle pontosan akkor vágóél, ha nem tartozik egyetlen körhöz sem!

**Megoldás.**

Ha $e = uv$ benne van egy $C$ körben, akkor $C - e$ egy alternatív út $u$ és $v$ között, így $e$ elhagyásával az összefüggőség nem sérül ($e$ nem híd).
Megfordítva, ha $e$ nem híd, akkor $G - e$-ben van út $u$ és $v$ között, amely $e$-vel kiegészítve egy kört alkot. $\blacksquare$

::: elmelet
**Elméleti háttér — vágóél és körök kapcsolata.**

Egy él akkor és csak akkor vágóél, ha nem része semmilyen körnek.
:::

## Gy74.2. feladat

Igazoljuk, hogy egy fában minden él vágóél!

**Megoldás.**

A fa körmentes összefüggő gráf.
Mivel a fában egyáltalán nincs kör, az előző állítás szerint egyetlen éle sem tartozhat körhöz, így a fa minden egyes éle vágóél. $\blacksquare$

::: elmelet
**Elméleti háttér — fák éleinek vágóél jellege.**

Minden fában minden él híd, elhagyásukkal a fa pontosan 2 komponensre esik szét.
:::

# Az 5. feladatsorhoz

## Gy75.1. feladat

Egy 10 csúcsú fában van egy 5 fokú és egy 4 fokú csúcs, a többi csúcs foka 1 vagy 2. Hány levele van a fának?

**Megoldás.**

Alkalmazzuk a levelek univerzális képletét:
$$l = 2 + \sum_{d(v) \ge 3} (d(v) - 2) = 2 + (5 - 2) + (4 - 2) = 2 + 3 + 2 = \mathbf{7}.$$
(Ellenőrzés: 7 levél (fok 1), 1 db 2 fokú, 1 db 4 fokú, 1 db 5 fokú $\implies 7+1+1+1 = 10$ csúcs. Fokszámösszeg: $7 \cdot 1 + 1 \cdot 2 + 4 + 5 = 18 = 2(10-1)$.)

::: elmelet
**Elméleti háttér — univerzális levélképlet alkalmazása.**

$l = 2 + \sum (d(v) - 2)$ segítségével a levelek száma egyetlen sorban kiszámítható.
:::

## Gy75.2. feladat

Egy 16 csúcsú fában minden csúcs foka vagy 1, vagy 4. Hány 4-edfokú csúcs van a fában?

**Megoldás.**

Legyen $k$ a 4 fokú csúcsok száma, és $l$ az 1 fokú csúcsok száma.
$k + l = 16$.
Fokszámegyenlet: $4k + l = 2(16 - 1) = 30$.
Kivonva: $(4k + l) - (k + l) = 30 - 16 \implies 3k = 14$.
Mivel 14 nem osztható 3-mal, ilyen fa **nem létezhet**!
(Ha a csúcsszám 16 helyett pl. $3k+2$ alakú lenne, pl. $n = 17$: $3k = 15 \implies k = 5, l = 12$.)
Válasz: **Nincs ilyen fa (a 4 fokú csúcsok száma nem lehet egész).**

::: elmelet
**Elméleti háttér — egészértékűség fák fokszámaiban.**

A fokszámegyenletből adódó lineáris diofantoszi feltételnek egész megoldást kell adnia.
:::

## Gy76.1. feladat

Egy paintball meccsen mindenki 4 másik embert talált el, és nincs két ember azonos számú bekapott találattal. Hányan játszottak?

**Megoldás.**

Az irányított kézfogási lemma szerint $\sum d^+ = 4n = \sum d^- = \binom{n}{2} = \frac{n(n-1)}{2}$.
$n$-nel osztva: $4 = \frac{n-1}{2} \implies n - 1 = 8 \implies n = \mathbf{9}$.

::: elmelet
**Elméleti háttér — paintball feladat 4 találattal.**

$\frac{n-1}{2} = k \implies n = 2k + 1$.
:::

## Gy76.2. feladat

Egy körmérkőzéses bajnokságban (ahol nincs döntetlen) lehetséges-e, hogy semelyik két csapatnak ne legyen azonos a győzelmeinek száma? Milyen győzelmi számok alakulnak ekkor ki?

**Megoldás.**

Igen! Körmérkőzéses bajnokság egy $T_n$ tranzitivitású versenygráf (tournament).
Minden mérkőzés egy győzelmet jelent, összesen $\binom{n}{2}$ győzelem van.
A győzelmek lehetséges számai a $\{0, 1, \dots, n-1\}$ halmazból kerülnek ki.
Mivel összegük $\binom{n}{2}$, pontosan akkor különböznek mind, ha a győzelmek számai $0, 1, 2, \dots, n-1$.
Ez pontosan a körmentes (tranzitív) bajnokságokban valósul meg, ahol létezik szigorú rangsor. $\blacksquare$

::: elmelet
**Elméleti háttér — tranzitív versenygráfok és Landau-tétel.**

Egy versenygráfban akkor és csak akkor különbözik minden csúcs ki-foka, ha a gráf tranzitív (körmentes tournament).
:::

## Gy77.1. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban nincs páros kör, akkor semelyik két körnek nem lehet egynél több közös csúcsa!

**Megoldás.**

Ha két körnek legalább 2 közös csúcsa van, akkor a közös csúcsok közötti utakkal egy théta-gráf ($\theta$-gráf) jön létre (3 belsőleg diszjunkt út két csúcs között).
A 3 út hossza legyen $a, b, c$. A 3 keletkező kör hossza $a+b, b+c, a+c$.
Ezek összege $2(a+b+c)$ páros, így nem lehet mindhárom páratlan: legalább az egyik kör páros hosszúságú!
Ellentmondás, tehát legfeljebb 1 közös csúcsuk lehet. $\blacksquare$

::: elmelet
**Elméleti háttér — théta-gráf paritási lemmája.**

Egy $\theta$-gráf 3 köre közül legalább az egyik mindig páros hosszúságú.
:::

## Gy77.2. feladat

Igazoljuk, hogy ha egy egyszerű gráf minden csúcsának foka legalább 3, akkor a gráf nem lehet páros gráf és fa sem!

**Megoldás.**

Fa nem lehet, mert fa élszáma $n - 1$, de $\delta \ge 3 \implies 2e \ge 3n \implies e \ge 1{,}5n > n - 1$.
Páros gráf lehet (pl. $K_{3,3}$), de fa semmiképpen. $\blacksquare$

::: elmelet
**Elméleti háttér — fokszámkorlát és fák élszáma.**

Fában az átlagfok $2 - 2/n < 2$, így a minimális fok nem lehet $\ge 3$.
:::

## Gy78.1. feladat

Adott 4 valós szám. Legfeljebb hány kéttagú összeg lehet racionális úgy, hogy nem az összes összeg racionális?

**Megoldás.**

4 szám esetén $\binom{4}{2} = 6$ összeg van.
Ha a gráf páros (pl. $K_{2,2}$, 4 él):
Legyen $x_1 = \sqrt{2}, x_2 = \sqrt{2}$, és $x_3 = -\sqrt{2}, x_4 = -\sqrt{2}$.
Ekkor az $x_1+x_3, x_1+x_4, x_2+x_3, x_2+x_4$ összegek mind $0 \in \mathbb{Q}$ (4 racionális összeg).
Viszont $x_1 + x_2 = 2\sqrt{2} \notin \mathbb{Q}$ és $x_3 + x_4 = -2\sqrt{2} \notin \mathbb{Q}$.
Tehát 4 összeg lehet racionális anélkül, hogy mindegyik az lenne.
5 összeg esetén a nem-él száma 1, ekkor a gráf összefüggő és tartalmaz $K_3$-at, így mind racionális lenne.
A maximum tehát **4**.

::: elmelet
**Elméleti háttér — 4 pont racionális összegei.**

$K_{2,2}$ konstrukcióval 4 összeg racionális, 2 irracionális.
:::

## Gy78.2. feladat

Mutassunk 3 olyan valós számot, melyek közül semelyik kettő összege nem racionális!

**Megoldás.**

Válasszunk lineárisan független irracionális számokat $\mathbb{Q}$ felett:
$x_1 = \sqrt{2}, x_2 = \sqrt{3}, x_3 = \sqrt{5}$.
Semelyik két összeg nem racionális. $\blacksquare$

::: elmelet
**Elméleti háttér — irracionális számok összegei.**

$\sqrt{p} + \sqrt{q}$ sosem racionális különböző prímekre.
:::

## Gy79.1. feladat

Írjuk fel a 75 számot Zeckendorf-alakban!

**Megoldás.**

A legnagyobb Fibonacci-szám $\le 75$: $F_{10} = 55$.
Maradék: $75 - 55 = 20$.
Legnagyobb $\le 20$: $F_7 = 13$.
Maradék: $20 - 13 = 7$.
Legnagyobb $\le 7$: $F_5 = 5$.
Maradék: $7 - 5 = 2 = F_3$.
Tehát:
$$75 = 55 + 13 + 5 + 2 = \mathbf{F_{10} + F_7 + F_5 + F_3}.$$

::: elmelet
**Elméleti háttér — 75 Zeckendorf-felbontása.**

$55 + 13 + 5 + 2 = 75$, a tagok indexei: 10, 7, 5, 3 (nincs két szomszédos).
:::

## Gy79.2. feladat

Mutassuk meg, hogy ha egy $N$ szám felbontásában szerepel $F_k$ és $F_{k+1}$, akkor a felbontás átírható szomszédmentes alakra!

**Megoldás.**

Mivel $F_k + F_{k+1} = F_{k+2}$, a két szomszédos tagot egyszerűen helyettesítjük az eggyel nagyobb Fibonacci-számmal: $F_k + F_{k+1} \to F_{k+2}$. Ezt ismételve a szomszédos tagok száma szigorúan csökken, amíg elérjük a Zeckendorf-alakot. $\blacksquare$

::: elmelet
**Elméleti háttér — Fibonacci-összevonási szabály.**

$F_k + F_{k+1} = F_{k+2}$ az alapvető redukciós lépés.
:::

## Gy80.1. feladat

Számítsuk ki a $\sum_{k=1}^{n} k \binom{n}{k}$ összeget a 80. feladat azonosságának segítségével!

**Megoldás.**

Alkalmazzuk a 80. feladat azonosságát $m = 1$ esetén:
Mivel $\binom{k}{1} = k$, kapjuk:
$$\sum_{k=1}^{n} \binom{n}{k} k = \binom{n}{1} 2^{n-1} = \mathbf{n 2^{n-1}}.$$

::: elmelet
**Elméleti háttér — az $m=1$ speciális eset.**

$m = 1$-re a vezetőség egyetlen elnököt jelent.
:::

## Gy80.2. feladat

Határozzuk meg a $\sum_{k=2}^{n} \binom{n}{k} \binom{k}{2}$ összeg zárt alakját!

**Megoldás.**

Alkalmazzuk a 80. feladat azonosságát $m = 2$ esetén:
$$\sum_{k=2}^{n} \binom{n}{k} \binom{k}{2} = \mathbf{\binom{n}{2} 2^{n-2}}.$$

::: elmelet
**Elméleti háttér — az $m=2$ speciális eset.**

$m = 2$-re 2 fős vezetőséget választunk: $\binom{n}{2} 2^{n-2}$.
:::

## Gy81.1. feladat

9 ember mindegyikének zsebében van valahány 10, 20 és 50 forintos érme. Bizonyítsuk be, hogy van két ember, akiknek összeadva az érméiket, mindhárom címletből páros sok darabjuk van!

**Megoldás.**

3 címlet paritása $2^3 = 8$ állapotot határoz meg.
9 ember esetén a skatulya-elv miatt legalább kettőnek megegyezik a paritásvektora.
Ezen két ember érméit összeadva mindhárom címletből páros sok darab lesz. $\blacksquare$

::: elmelet
**Elméleti háttér — 3 komponensű paritásvektor.**

$2^3 = 8$ skatulya, 9 ember $\implies$ azonos paritás.
:::

## Gy81.2. feladat

Hány doboz szükséges ahhoz, hogy 6 különböző színű golyók esetén biztosan legyen kettő, ahol az egyes színek összegei mind párosak?

**Megoldás.**

6 szín paritásvektora $2^6 = 64$ lehetséges értéket vehet fel.
A skatulya-elv garantálja az egyezést, ha a dobozok száma legalább:
$$2^6 + 1 = 64 + 1 = \mathbf{65}.$$

::: elmelet
**Elméleti háttér — $d=6$ dimenziós paritásvektorok.**

$2^6 + 1 = 65$ elem szükséges.
:::

## Gy82.1. feladat

Hány olyan 4-jegyű szám létezik (0000-tól 9999-ig), melyben a számjegyek összege 32?

**Megoldás.**

Alkalmazzunk komplementer szimmetriát!
Legyen $y_i = 9 - d_i \ge 0$.
Ekkor $\sum y_i = 4 \times 9 - \sum d_i = 36 - 32 = 4$.
Ahol $0 \le y_i \le 9$.
Mivel a célösszeg $4 \le 9$, a felső korlát ($y_i \le 9$) automatikusan teljesül minden változóra!
Így semmilyen szita-formula levonásra sincs szükség:
$$\binom{4 + 4 - 1}{4} = \binom{7}{4} = \binom{7}{3} = \frac{7 \cdot 6 \cdot 5}{6} = \mathbf{35}.$$

::: elmelet
**Elméleti háttér — komplementer változócsere számjegyeknél.**

Nagy összegeknél ($S > 9n/2$) az $y_i = 9 - d_i$ transzformációval kis összegre térünk át, ahol a felső korlát automatikusan teljesül.
:::

## Gy82.2. feladat

Hányféleképpen dobhatunk 4 szabályos dobókockával pontosan 20-at?

**Megoldás.**

A kockák értékei $1 \le x_i \le 6$, összegük 20.
Legyen $y_i = 6 - x_i$, ekkor $0 \le y_i \le 5$, és $\sum y_i = 4 \times 6 - 20 = 4$.
Mivel a célösszeg $4 \le 5$, az $y_i \le 5$ korlát automatikusan teljesül!
Lehetőségek száma:
$$\binom{4 + 4 - 1}{4} = \binom{7}{4} = \mathbf{35}.$$

::: elmelet
**Elméleti háttér — kockadobások összege komplementerrel.**

$y_i = 6 - x_i$ változócserével a feladat azonnal megoldódik.
:::

## Gy83.1. feladat

Hány olyan anagrammája van a MISSISSIPPI szónak, amelyben a négy 'I' betű közül semelyik kettő sincs egymás mellett?

**Megoldás.**

A szó 11 betűs: I: 4 db, M: 1 db, S: 4 db, P: 2 db.
A nem-I betűk száma 7 (M: 1, S: 4, P: 2).
Elrendezésük: $\frac{7!}{1! 4! 2!} = \frac{5040}{48} = 105$.
A 7 betű $7 + 1 = 8$ rést hoz létre.
A 4 darab 'I' elhelyezése a résekbe: $\binom{8}{4} = 70$.
Összesen:
$$105 \cdot 70 = \mathbf{7350}.$$

::: elmelet
**Elméleti háttér — MISSISSIPPI szeparált 'I' betűkkel.**

$\frac{7!}{4!2!} \cdot \binom{8}{4} = 105 \cdot 70 = 7350$.
:::

## Gy83.2. feladat

Hány olyan anagrammája van az ABRAKADABRA szónak, amelyben az öt 'A' betű közül semelyik kettő nem áll egymás mellett?

**Megoldás.**

A szó 11 betűs: A: 5 db, egyéb: 6 db (B: 2, R: 2, K: 1, D: 1).
Az egyéb 6 betű elrendezése: $\frac{6!}{2! 2!} = \frac{720}{4} = 180$.
A 6 betű $6 + 1 = 7$ rést határoz meg.
Az 5 db 'A' betű elhelyezése a 7 résbe: $\binom{7}{5} = \binom{7}{2} = 21$.
Összesen:
$$180 \cdot 21 = \mathbf{3780}.$$

::: elmelet
**Elméleti háttér — ABRAKADABRA szeparált 'A' betűkkel.**

$180 \cdot 21 = 3780$ anagramma.
:::

## Gy84.1. feladat

$k = 4$ fajta képeslapból küldünk 3 barátunknak 2-2 különbözőt. Hányféleképpen tehetjük meg úgy, hogy ne legyen olyan képeslap, amit mind a hárman megkaptak?

**Megoldás.**

Alkalmazzuk a képletet $k = 4, n = 3$ értékekkel:
$$\binom{4}{2} = 6.$$
$$|U| = 6^3 = 216.$$
$$k(k - 1)^n = 4 \cdot (4 - 1)^3 = 4 \cdot 3^3 = 4 \cdot 27 = 108.$$
$$\binom{k}{2} = 6.$$
A megoldás:
$$N = 216 - 108 + 6 = \mathbf{114}.$$

::: elmelet
**Elméleti háttér — képeslapküldés konkrét számértékekkel.**

$6^3 - 4 \cdot 27 + 6 = 114$ küldési mód.
:::

## Gy84.2. feladat

$k = 5$ fajta ajándékból választunk 3 gyereknek 2-2 különbözőt. Hány olyan eset van, amikor van legalább egy olyan ajándék, amit mind a három gyerek megkapott?

**Megoldás.**

Ez a rossz esetek száma:
$$k(k - 1)^n - \binom{k}{2}.$$
$k = 5, n = 3$:
$$5 \cdot 4^3 - \binom{5}{2} = 5 \cdot 64 - 10 = 320 - 10 = \mathbf{310}.$$

::: elmelet
**Elméleti háttér — komplementer kérdés a képeslapküldésben.**

A legalább egy közös ajándékot tartalmazó választások száma $k(k-1)^n - \binom{k}{2}$.
:::
