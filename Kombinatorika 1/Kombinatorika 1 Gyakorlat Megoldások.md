<!-- Generált fájl, ne szerkeszd! Forrás: Kombinatorika 1/Gyakorlat/Megoldások/, újragenerálás: make concat -->

# Kombinatorika 1 – 1. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 1. feladat

Hány átlója van egy konvex 100-szögnek?

**Megoldás.**

Minden csúcsból $n - 3$ átló indul (önmagához és a két szomszédjához nem), és így minden átlót kétszer számolunk: egy konvex $n$-szög átlóinak száma $\frac{n(n-3)}{2}$. $n = 100$-ra **$\frac{100 \cdot 97}{2} = 4850$.**

::: elmelet
**Elméleti háttér — tehénszabály.** Ha minden objektumot pontosan ugyanannyiszor (itt $2$-szer) számoltunk meg, akkor a kapott számot ezzel osztva megkapjuk az objektumok számát. A „csúcsonként $n - 3$ átló” számolás minden átlót mindkét végpontjánál egyszer, összesen pontosan kétszer számol, ezért szabad $2$-vel osztani. Másképp: az átlók a csúcsok $\binom{n}{2}$ párja közül azok, amelyek nem oldalak: $\binom{n}{2} - n = \frac{n(n-3)}{2}$ („dobjuk ki a rosszat”).
:::

## 2. feladat

Egy futóversenyen 20 versenyző indult; egyikük sem adta fel, és holtverseny sem alakult ki. **a)** Hányféleképpen alakulhatott a végeredmény? **b)** Hányféleképpen alakulhatott az első három hely sorsa? **c)** A megyei hírlap közli az első három helyezett nevét ábécésorrendben. Ez hányféle lehet?

**Megoldás.**

a) A 20 versenyző sorrendje: **$20! \approx 2{,}43 \cdot 10^{18}$.**

b) Az első három hely (sorrend számít): **$20 \cdot 19 \cdot 18 = 6840$** (ismétlés nélküli variáció).

c) Csak a hármas halmaz számít: **$\binom{20}{3} = 1140$.**

::: elmelet
**Elméleti háttér — permutáció, variáció, kombináció.** Ha $n$ különböző elemből $k$-t választunk, a válasz attól függ, számít-e a sorrend. *Számít:* független választás, az első helyre $n$, a másodikra $n - 1$, … lehetőség, összesen $\frac{n!}{(n-k)!}$ (ismétlés nélküli variáció; $k = n$-re $n!$, permutáció). *Nem számít:* minden $k$ elemű halmazt a sorrendes számolás pontosan $k!$-szor ad meg, így a tehénszabály szerint $\binom{n}{k} = \frac{n!}{k!\,(n-k)!}$. A c) részben az ábécésorrend nem hordoz információt, ezért csak a halmaz számít.
:::

## 3. feladat

Hányféleképpen festhetjük be egy $n$ emeletes ház szintjeit a piros, sárga és kék színek használatával? (Minden szint egyszínű legyen.) Mi a helyzet akkor, ha a szomszédos szintek nem lehetnek azonos színűek?

**Megoldás.**

Minden szintnek 3 színe lehet, egymástól függetlenül: **$3^n$.**

Ha a szomszédos szintek nem lehetnek azonos színűek: a földszint $3$-féle, minden további szint az alatta lévőtől különböző, tehát $2$-féle: **$3 \cdot 2^{n-1}$.**

::: elmelet
**Elméleti háttér — független választás (szorzási szabály).** Ha egy objektumot lépésenként választunk, és minden lépésben a lehetőségek *száma* nem függ a korábbi választásoktól, akkor a lehetőségek száma a lépésenkénti számok szorzata. A második esetben a választható színek *halmaza* függ az alatta lévő szinttől, de a *száma* mindig $2$ — ezért alkalmazható a szabály.
:::

## 4. feladat

Különböző színű gyöngyökből nyakláncot fűzünk. Hány különböző nyakláncot tudunk készíteni **a)** 4 gyöngyből, **b)** 8 gyöngyből? *Ha a forgatással egymásba vihető nyakláncokat egyformának tekintjük. És ha nem csak a forgatással, de a tükrözéssel egymásba vihetőket is egyformának tekintjük?*

**Megoldás.**

A gyöngyök mind különböző színűek. Kör alakú elrendezésekből $n!$ van (címkézett helyekkel).

- **Forgatás:** egy elrendezésnek $n$ elforgatottja van, és ezek mind különbözők (különböző gyöngyök esetén nem triviális forgatás nem hagyja helyben), így $\frac{n!}{n} = (n-1)!$ nyaklánc.
- **Forgatás és tükrözés:** $n \ge 3$-ra egyik tükrözés sem hagy helyben elrendezést (legalább egy gyöngypárt felcserél), így minden osztály $2n$ elemű: $\frac{(n-1)!}{2}$ nyaklánc.

a) $n = 4$: **$3! = 6$**, illetve tükrözéssel **$3$**.

b) $n = 8$: **$7! = 5040$**, illetve tükrözéssel **$2520$**.

::: elmelet
**Elméleti háttér — tehénszabály azonos méretű osztályokra.** Ha egy halmazt (itt a címkézett elrendezések $n!$ elemű halmazát) olyan osztályokra bontunk, amelyek mind ugyanakkorák ($d$ eleműek), akkor az osztályok száma $\frac{\text{elemszám}}{d}$. Itt egy osztály az egymásba forgatható (illetve forgatható vagy tükrözhető) elrendezések halmaza. A kulcs annak ellenőrzése, hogy minden osztály *pontosan* $n$ (illetve $2n$) elemű, vagyis hogy egyetlen nem triviális forgatás vagy tükrözés sem viszi önmagába az elrendezést — ez különböző gyöngyöknél teljesül.
:::

## 5. feladat

Öt házaspár hányféleképpen tud egy kerek asztal köré leülni úgy, hogy mindenki a házastársa mellett üljön? Most azonosnak tekintünk két leülést, ha azok forgatással egymásba vihetők.

**Megoldás.**

A 10 szék körben; a párok egymás mellé ülnek, így a székek $5$ szomszédos párra oszlanak – ez kétféleképpen lehetséges (az $(1,2), (3,4), \dots$ vagy a $(2,3), \dots, (10,1)$ párosítás). Címkézett székekre: $2$ párosítás, a házaspárok elhelyezése a székpárokon $5!$, és minden pár $2$-féleképpen ülhet: $2 \cdot 5! \cdot 2^5 = 7680$. Forgatással azonosítva (10 forgatás, egyik sem hagy helyben ültetést) **$\frac{7680}{10} = 768$.**

(Ugyanez „blokkokkal": az 5 házaspár mint 5 egység körben $(5 - 1)! = 24$-féleképpen, a párokon belül $2^5 = 32$-féleképpen: $24 \cdot 32 = 768$.)

::: elmelet
**Elméleti háttér — blokkok és körsorrend.** Két gyakori fogás. (1) Ha bizonyos elemeknek egymás mellett kell lenniük, ragasszuk őket egy **blokkba**: a blokkokat rendezzük el, majd minden blokkon belül a belső sorrendet (független választás). (2) $m$ objektum **körsorrendjeinek** száma forgatás erejéig $\frac{m!}{m} = (m-1)!$, mert minden körsorrend pontosan $m$ címkézett elrendezésből jön (tehénszabály; különböző objektumoknál nincs önmagába vivő forgatás).
:::

## 6. feladat

**a)** Hány (nem feltétlenül értelmes) anagrammája van a KOMBINATORIKA szónak? (Vagyis hányféleképpen lehet sorba rendezni a KOMBINATORIKA szó betűit?) **b)** Általánosan, hány anagrammája van egy szónak, ami $k_A$ db A betűből, $k_B$ db B betűből stb. áll?

**Megoldás.**

a) A KOMBINATORIKA szó 13 betűje: K, O, I, A kétszer, M, B, N, T, R egyszer. Az ismétléses permutációk száma
$$\frac{13!}{2!\,2!\,2!\,2!} = \frac{6\,227\,020\,800}{16} = 389\,188\,800.$$

b) Ha a szó $k_A$ darab A-ból, $k_B$ darab B-ből stb. áll, és $n = k_A + k_B + \dots$, akkor az anagrammák száma
$$\frac{n!}{k_A!\,k_B!\cdots}.$$
(Indoklás: ha az azonos betűket megkülönböztetnénk, $n!$ sorrend volna; minden anagramma pontosan $k_A!\,k_B!\cdots$ ilyen sorrendből keletkezik.)

::: elmelet
**Elméleti háttér — ismétléses permutáció.** Ha $n$ elem között $k_1, k_2, \dots$ egyformából álló csoportok vannak, a sorrendek száma $\frac{n!}{k_1!\,k_2!\cdots}$. Bizonyítás a tehénszabállyal: az egyforma elemeket ideiglenesen megkülönböztetve $n!$ sorrend van, és minden „valódi” sorrend pontosan $k_1!\,k_2!\cdots$-szor fordul elő (ennyiféleképpen permutálhatók a csoportokon belül a megkülönböztetett példányok).
:::

## 7. feladat

Egy játékboltban 5-féle plüssállat kapható. Hányféleképpen vehetünk 12 állatkát?

**Megoldás.**

12 állatkát választunk 5 fajtából ismétléssel (a sorrend nem számít): ismétléses kombináció,
$$\binom{12 + 5 - 1}{5 - 1} = \binom{16}{4} = 1820.$$
(„Csillagok és vonalak": 12 csillag és 4 elválasztó vonal sorrendje.)

::: elmelet
**Elméleti háttér — ismétléses kombináció.** $n$-féle elemből $k$ darabot ismétléssel, sorrend nélkül $\binom{n + k - 1}{k} = \binom{n + k - 1}{n - 1}$-féleképpen választhatunk. Bijekció: egy választás $\leftrightarrow$ egy $k$ csillagból és $n - 1$ elválasztó vonalból álló sorozat (az $i$-edik és $(i+1)$-edik vonal közötti csillagok száma az $i$-edik fajtából vett darabszám). Az ilyen sorozatok száma: a $k + n - 1$ helyből kiválasztjuk a vonalak helyét.
:::

## 8. feladat

Hány olyan hétjegyű szám van, melyben a számjegyek szigorúan monoton csökkennek?

**Megoldás.**

Egy szigorúan csökkenő jegyű szám egyértelműen meghatározott a jegyeinek halmazával (a jegyeket csökkenő sorrendbe kell írni). Hét különböző jegyet kell választani a $0, \dots, 9$ közül; a $0$ ha szerepel, az utolsó helyre kerül, így az első jegy sosem $0$. **$\binom{10}{7} = 120$.**

::: elmelet
**Elméleti háttér — bijekció részhalmazokkal.** Ha egy objektumot egyértelműen meghatároz egy halmaz, és minden (alkalmas) halmaz pontosan egy objektumot ad, akkor a bijekció-elv szerint elég a halmazokat megszámolni. Itt a $7$ elemű jegyhalmazokból csökkenő sorrendben egyetlen szám írható fel, és ez mindig érvényes hétjegyű szám, mert a $0$ (ha szerepel) a legkisebb, így a végére kerül.
:::

## 9. feladat

Hány részhalmaza van egy $n$ elemű halmaznak? Ezek közül hány páros elemszámú?

**Megoldás.**

Minden elemről eldöntjük, benne van-e: **$2^n$** részhalmaz.

Páros elemszámú: $n \ge 1$ esetén **$2^{n-1}$**. Rögzítsünk egy $x$ elemet; az $A \mapsto A \triangle \{x\}$ (az $x$ hozzávétele vagy elhagyása) bijekció a páros és a páratlan elemszámú részhalmazok között. (Vagy: $\sum_k (-1)^k\binom nk = (1 - 1)^n = 0$.) $n = 0$-ra $1$.

::: elmelet
**Elméleti háttér — részhalmazok és a binomiális tétel.** Részhalmaz $\leftrightarrow$ $0$–$1$ sorozat (benne van-e az elem), ezért $2^n$ van belőlük. A páros és páratlan részhalmazok egyenlő számát kétféleképpen is látjuk: *bijekcióval* (egy rögzített elem „ki-bekapcsolása” megváltoztatja a paritást, és önmaga inverze), vagy a *binomiális tételből*: $(1 + x)^n = \sum_k \binom{n}{k}x^k$-ba $x = -1$-et helyettesítve a páros és páratlan indexű együtthatók összege egyenlő.
:::

## 10. feladat

Hányféleképpen állhat fel egy fényképezéshez $n$ fiú és $n$ lány egy sorba úgy, hogy sem két fiú, sem két lány nem állhat egymás mellett?

**Megoldás.**

Váltakozva kell állniuk: a sor FLFL… vagy LFLF… mintázatú ($2$ lehetőség), a fiúk sorrendje $n!$, a lányoké $n!$: **$2\,(n!)^2$.**

::: elmelet
**Elméleti háttér — esetszétválasztás és független választás.** Először a *mintázatot* rögzítjük (FLFL… vagy LFLF…; két diszjunkt eset, összeadjuk), majd egy rögzített mintázaton belül a fiúk és a lányok sorrendje egymástól függetlenül választható (szorzunk). Ez a „struktúra, majd kitöltés” felbontás a leszámlálás egyik leggyakoribb sémája.
:::

## 11. feladat

Hányféleképpen tehetünk fel egy sakktáblára 8 egyforma bástyát úgy, hogy semelyik kettő ne álljon ütő pozícióban egymással? *Igaz-e, hogy minden ilyen esetben páros sok bástya áll fekete mezőn?*

**Megoldás.**

Ütésmentesen minden sorban és minden oszlopban pontosan egy bástya áll, tehát az elhelyezés egy $\sigma$ permutáció (az $i$-edik sorban a $\sigma(i)$-edik oszlopban áll bástya): **$8! = 40\,320$.**

**Igaz, hogy páros sok bástya áll fekete mezőn.** Színezzük a táblát úgy, hogy az $(i, j)$ mező fekete $\iff i + j$ páros (az a1 mező fekete). Mivel
$$\sum_{i=1}^{8}(i + \sigma(i)) = 2(1 + \dots + 8) = 72$$
páros, a páratlan $i + \sigma(i)$ összegek száma páros, azaz páros sok bástya áll fehér mezőn. Mivel összesen 8 bástya van, a fekete mezőn állók száma is páros. $\blacksquare$

::: elmelet
**Elméleti háttér — bijekció permutációkkal és paritás.** Az ütésmentes bástyaelhelyezések kölcsönösen egyértelműen megfelelnek a $\{1, \dots, 8\}$ permutációinak, mert minden sorban és oszlopban pontosan egy bástya áll. A paritásos állításnál **invariánst** keresünk: az $\sum_i (i + \sigma(i))$ összeg bármely $\sigma$-ra ugyanaz ($2 \cdot 36$), mert $\sigma$ bijekció, így $\sum_i \sigma(i) = \sum_i i$. Páros sok páratlan tag összege páros — ebből következik, hogy a „rossz színű” mezők száma páros.
:::

## 12. feladat

Hányféleképpen tudunk 25 darab 10 Ft-ost szétosztani 5 gyerek között, ha a pénzérméket megkülönböztetjük? És ha csak az számít, hogy ki mennyi pénzt kap?

**Megoldás.**

- **Megkülönböztetett érmék:** minden érme 5 gyerek közül kerül valakihez: **$5^{25}$.**
- **Csak az összeg számít:** $x_1 + \dots + x_5 = 25$ nemnegatív egész megoldásai: **$\binom{25 + 4}{4} = \binom{29}{4} = 23\,751$.**

::: elmelet
**Elméleti háttér — megkülönböztethető és egyforma tárgyak szétosztása.** $k$ *különböző* tárgy szétosztása $n$ ember között $n^k$-féle (minden tárgyra független választás: kié lesz) — ez a $[k] \to [n]$ függvények száma. $k$ *egyforma* tárgy esetén csak a darabszámok számítanak, ez az $x_1 + \dots + x_n = k$ egyenlet nemnegatív egész megoldásainak száma, vagyis ismétléses kombináció: $\binom{k + n - 1}{n - 1}$.
:::

## 13. feladat

Hányféleképpen írhatjuk be az $1, 2, \dots, 8$ számokat a relációs jelek közé a vonalakra?
$$\_\_ < \_\_ < \_\_ < \_\_ > \_\_ > \_\_ > \_\_ > \_\_$$

**Megoldás.**

$\_ < \_ < \_ < \_ > \_ > \_ > \_ > \_$: a negyedik helyen álló szám mindegyik másiknál nagyobb (a bal oldaliaknál a növekedés, a jobb oldaliaknál a csökkenés miatt), tehát az a $8$. A maradék 7 számból kiválasztjuk, melyik 3 kerül balra – ezek sorrendje (növekvő) és a jobb oldali 4 sorrendje (csökkenő) már kötött. **$\binom73 = 35$.**

::: elmelet
**Elméleti háttér — szerkezeti megfigyelés, majd kiválasztás.** Egy feltételrendszert gyakran úgy számolunk le, hogy először kiderítjük, mi van *kényszerítve* (itt: a „csúcs” helyén csak a legnagyobb szám állhat), aztán észrevesszük, hogy a maradék elrendezést egy *halmaz kiválasztása* egyértelműen meghatározza (a monotonitás miatt a sorrend már kötött). Így a feladat egy $\binom{n}{k}$-ra vezet.
:::

## 14. feladat

A $8 \times 8$-as sakktábla bal alsó sarkából hányféleképpen tudunk felmenni a jobb felső sarokba, feltéve, hogy mindig csak jobbra vagy felfelé léphetünk egy mezőt?

**Megoldás.**

A bal alsó mezőről a jobb felsőre 7 jobbra és 7 felfelé lépés kell, tetszőleges sorrendben: **$\binom{14}{7} = 3432$.**

::: elmelet
**Elméleti háttér — rácsutak.** Egy jobbra/felfelé lépő út $(0,0)$-ból $(a, b)$-be pontosan $a$ jobbra és $b$ felfelé lépésből áll, és az utat egyértelműen meghatározza, hogy az $a + b$ lépés közül melyik $a$ a jobbra lépés. A bijekció-elv szerint az utak száma $\binom{a+b}{a}$. (Egy $8 \times 8$-as táblán a mezőközéppontok között $a = b = 7$.)
:::

## 15. feladat

Hány olyan 7 jegyű telefonszám van, amelyben valamely két szomszédos jegy megegyezik?

**Megoldás.**

Összesen $10^7$ hétjegyű telefonszám van (a $0$ is lehet első jegy). Azok, ahol semelyik két szomszédos jegy nem egyezik: az első jegy $10$-féle, minden további $9$-féle (az előzőtől különböző): $10 \cdot 9^6 = 5\,314\,410$. A keresett szám a komplementer:
$$10^7 - 10 \cdot 9^6 = 4\,685\,590.$$

::: elmelet
**Elméleti háttér — „dobjuk ki a rosszat” (komplementer).** Ha a „valahol teljesül” típusú feltételt nehéz számolni (több hely, átfedések), számoljuk a komplementerét: „sehol sem teljesül”. Ez itt független választással megy (minden jegy az előzőtől különböző: $9$-féle), és $|\text{jó}| = |\text{összes}| - |\text{rossz}|$.
:::

## 16. feladat

Hány $f : \{1, 2, \dots, m\} \to \{1, 2, \dots, n\}$ szigorúan monoton növő függvény van? És hány monoton növő?

**Megoldás.**

- **Szigorúan monoton növő:** az $f$ értékkészlete egy $m$ elemű részhalmaza $\{1, \dots, n\}$-nek, és ez $f$-et egyértelműen meghatározza: **$\binom nm$** (ha $m > n$, akkor $0$).
- **Monoton növő:** az $f(1) \le f(2) \le \dots \le f(m)$ sorozat egy $m$ elemű multihalmaz $\{1, \dots, n\}$-ből: **$\binom{n + m - 1}{m}$.** (Vagy: $g(i) = f(i) + i - 1$ szigorúan növő $\{1, \dots, m\} \to \{1, \dots, n + m - 1\}$ függvény.)

::: elmelet
**Elméleti háttér — monoton függvények mint (multi)halmazok.** Egy szigorúan növő $f\colon [m] \to [n]$ függvényt egyértelműen meghatároz az értékkészlete (az elemeket csak növő sorrendben lehet felsorolni), ezért $\binom nm$ van. Gyengén növő függvényeknél az értékek ismétlődhetnek: ez egy $m$ elemű *multihalmaz* $[n]$-ből, vagyis ismétléses kombináció. Az eltolásos bijekció ($g(i) = f(i) + i - 1$) a két esetet kapcsolja össze: a gyenge egyenlőtlenségeket szigorúvá „húzza szét”.
:::

## 17. feladat

Egy $K$ konvex húszszögről tudjuk, hogy $K$ semelyik belső pontján át sem halad $K$-nak kettőnél több átlója. Hány pontban metszik egymást $K$ átlói?

**Megoldás.**

Konvex sokszögben két átló pontosan akkor metszi egymást belső pontban, ha végpontjaik négy különböző csúcsot alkotnak, és ezek az átlók a négy csúcs által meghatározott konvex négyszög átlói. Így minden 4 csúcs pontosan egy metszéspontot ad, és mivel egy ponton legfeljebb két átló megy át, különböző csúcsnégyesek különböző pontokat adnak: **$\binom{20}{4} = 4845$.**

::: elmelet
**Elméleti háttér — kettős leszámlálás bijekcióval.** Konvex sokszögben két átló pontosan akkor metszi egymást belül, ha négy különböző végpontjuk váltakozva helyezkedik el a kerületen; adott négy csúcs pontosan egy ilyen átlópárt határoz meg (a négyszög két átlóját). A feltétel (egy ponton legfeljebb két átló) garantálja, hogy különböző csúcsnégyesek különböző pontokat adnak, vagyis a metszéspontok és a csúcsnégyesek között bijekció van.
:::

## 18. feladat

Egy jótündér elárulja nekünk, hogy a következő ötöslottó-húzáson nem lesz két szomszédos kihúzott szám. Legalább hány szelvényt kell vennünk, ha biztosan nyerni akarunk?

**Megoldás.**

(Ötöslottó: 5 számot húznak 1 és 90 között. Feltesszük, hogy a „biztos nyerés" az öttalálatost jelenti, ezért minden lehetséges húzásra kell egy-egy szelvény.)

Az $a_1 < a_2 < \dots < a_5$ számok közül semelyik kettő sem szomszédos, azaz $a_{i+1} - a_i \ge 2$. A $b_i = a_i - (i - 1)$ transzformáció bijekció ezek és az $1 \le b_1 < \dots < b_5 \le 86$ ötösök között. **Legalább $\binom{86}{5} = 34\,826\,302$ szelvény kell** (ennyi elég is: minden lehetséges húzásra egy-egy).

::: elmelet
**Elméleti háttér — „hézagos” kiválasztás eltolással.** Az $\{1, \dots, m\}$-ből választott, páronként nem szomszédos $k$ elemű halmazok száma $\binom{m - k + 1}{k}$. Bijekció: $a_1 < \dots < a_k$, $a_{i+1} - a_i \ge 2$ $\mapsto$ $b_i = a_i - (i - 1)$; a $b_i$-k szigorúan nőnek, és $1 \le b_i \le m - k + 1$, és az inverz $a_i = b_i + (i-1)$ visszaállítja a hézagokat.
:::

## 19. feladat

Hány részre osztja a síkot $n$ általános helyzetű egyenes?

**Megoldás.**

Legyen $R_n$ a tartományok száma. $R_0 = 1$. Az $n$-edik egyenest az előző $n - 1$ egyenes (általános helyzet: nincs két párhuzamos, nincs három egy ponton átmenő) $n - 1$ különböző pontban metszi, ezek $n$ darabra vágják; mindegyik darab egy régi tartományt kettévág. Így $R_n = R_{n-1} + n$, és
$$R_n = 1 + (1 + 2 + \dots + n) = 1 + \frac{n(n+1)}{2} = \frac{n^2 + n + 2}{2}.$$

::: elmelet
**Elméleti háttér — rekurzió.** Nevezzük el a keresett mennyiséget ($R_n$), és vizsgáljuk meg, hogyan változik, ha egy új egyenest hozzáveszünk: az új egyenes annyi új tartományt hoz létre, ahány darabra a korábbi egyenesek felvágják (minden darab egy régi tartományt kettévág). Általános helyzetben ez $n$ darab, így $R_n = R_{n-1} + n$, amiből teleszkopikus összegzéssel (vagy indukcióval) adódik a zárt képlet.
:::

## 20. feladat (házi feladat)

Egy 4 személyes kártyajátékban az 52 lapos francia kártya összes lapját kiosztják 4 játékos között (mindenki 13 lapot kap). Az erős lapok ebben a játékban az összes pikk és az ászok. Akkor erős a kezünk, ha legalább 4 erős kártyalapunk van. Hányféleképpen lehet erős kezünk?

**Megoldás.**

Erős lap: 13 pikk + 3 nem pikk ász = **16 erős**, 36 gyenge lap. A kezünk (13 lap) akkor erős, ha legalább 4 erős lap van benne:
$$\sum_{k=4}^{13}\binom{16}{k}\binom{36}{13 - k} = \binom{52}{13} - \sum_{k=0}^{3}\binom{16}{k}\binom{36}{13 - k} = 398\,234\,651\,920.$$
(Ez az összes, $\binom{52}{13} = 635\,013\,559\,600$ lehetséges kéz kb. $62{,}7\%$-a.)

::: elmelet
**Elméleti háttér — esetszétválasztás és komplementer.** A kéz erős lapjainak száma szerint diszjunkt esetekre bontunk: pontosan $k$ erős lap $\binom{16}{k}\binom{36}{13-k}$-féleképpen (az erős és a gyenge lapokat egymástól függetlenül választjuk). A „legalább 4” esetet gyorsabb a komplementerből („legfeljebb 3”) számolni. Fontos, hogy az erős lapokat ne számoljuk kétszer: a pikk ász pikk is, ász is, ezért csak $13 + 3 = 16$ erős lap van (szita két halmazra).
:::

## 21. feladat (házi feladat)

Egy boltban 7 féle sört árulnak. Hányféleképpen vásárolhatunk, ha **a)** pontosan 30-at, **b)** legfeljebb 30-at, **c)** pontosan 30-at, de mindegyikből legalább 1-et akarunk venni?

**Megoldás.**

A $7$ sörfajtából vett darabszámok: $x_1 + \dots + x_7$, $x_i \ge 0$ (ismétléses kombináció).

a) Pontosan 30: $\binom{30 + 6}{6} = \binom{36}{6} = \mathbf{1\,947\,792}$.

b) Legfeljebb 30: vezessünk be egy 8. „nem vett" változót: $x_1 + \dots + x_8 = 30$, így $\binom{30 + 7}{7} = \binom{37}{7} = \mathbf{10\,295\,472}$.

c) Pontosan 30, mindegyikből legalább 1: $y_i = x_i - 1 \ge 0$, $\sum y_i = 23$: $\binom{23 + 6}{6} = \binom{29}{6} = \mathbf{475\,020}$.

::: elmelet
**Elméleti háttér — ismétléses kombináció és változócsere.** Az $x_1 + \dots + x_n = k$, $x_i \ge 0$ egyenlet megoldásainak száma $\binom{k + n - 1}{n - 1}$. Két fogás: „legfeljebb $k$” esetén egy **pótlólagos (slack) változó** egyenlőséget csinál az egyenlőtlenségből; „legalább $1$” esetén az $y_i = x_i - 1$ **eltolás** visszavezet a nemnegatív esetre.
:::

## 22. feladat (házi feladat)

Egy 12-szögnek hányféleképpen tudjuk 4 csúcsát kiválasztani, ha nem választhatunk szomszédos csúcsokat?

**Megoldás.**

Számozzuk a csúcsokat $1, \dots, 12$ körben. Egy egyenes vonalon (nem körben) $m$ pontból $k$ páronként nem szomszédosat $\binom{m - k + 1}{k}$-féleképpen választhatunk (az előző feladatbeli transzformációval).

- Ha az 1-es csúcsot választjuk: a 2-es és 12-es kiesik, a maradék 3 csúcsot a $3, \dots, 11$ egyenesből (9 pont) választjuk: $\binom{7}{3} = 35$.
- Ha az 1-es csúcsot nem választjuk: 4 csúcs a $2, \dots, 12$ egyenesből (11 pont): $\binom{8}{4} = 70$.

**Összesen $105$.** (Általános képlet: $\frac{n}{n - k}\binom{n-k}{k} = \frac{12}{8}\binom84 = 105$.)

::: elmelet
**Elméleti háttér — körből egyenes esetszétválasztással.** Körben az első és az utolsó elem is szomszédos, ezért a „hézagos” kiválasztás egyenesre vonatkozó képlete közvetlenül nem alkalmazható. Egy rögzített elem (az 1-es csúcs) szerint két diszjunkt esetre bontunk; mindkét esetben a kör „felvágódik” egy egyenessé, és arra már érvényes a $\binom{m - k + 1}{k}$ képlet.
:::

# Kombinatorika 1 – 2. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 23. feladat

Néhány feladat, hogy emlékezzünk a teljes indukcióra. *Az első ötre érdemes fejből emlékezni!*

a) $\sum_{i=1}^{n} i = \frac{n(n+1)}{2}$; b) $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$.

c) $\sum_{i=1}^{n} i^3 = \left(\frac{n(n+1)}{2}\right)^2$, azaz $1^3 + 2^3 + \dots + n^3 = (1 + 2 + \dots + n)^2$.

d) $\sum_{i=1}^{n} 2i = n(n+1)$, azaz $2 + 4 + \dots + 2n = n(n+1)$; e) $\sum_{i=1}^{n} (2i - 1) = n^2$, azaz $1 + 3 + \dots + (2n - 1) = n^2$.

f) $\sum_{i=1}^{n} \frac{1}{i(i+1)} = \frac{n}{n+1}$, azaz $\frac{1}{1\cdot 2} + \frac{1}{2 \cdot 3} + \frac{1}{3 \cdot 4} + \dots + \frac{1}{n(n+1)} = \frac{n}{n+1}$.

g) $\sum_{k=1}^{n} k(k+1) = \frac{n(n+1)(n+2)}{3}$, azaz $1 \cdot 2 + 2 \cdot 3 + 3 \cdot 4 + \dots + n(n+1) = \frac{n(n+1)(n+2)}{3}$; h) $\sum_{k=1}^{n} k(k!) = (n+1)! - 1$.

**Megoldás.**

Mindegyiket teljes indukcióval: $n = 1$-re ellenőrizzük, majd az $n$-re feltett állításhoz hozzáadjuk az $(n+1)$-edik tagot.

a) $n = 1$: $1 = \frac{1 \cdot 2}{2}$. Lépés: $\frac{n(n+1)}{2} + (n + 1) = \frac{(n+1)(n+2)}{2}$.

b) $n = 1$: $1 = \frac{1 \cdot 2 \cdot 3}{6}$. Lépés: $\frac{n(n+1)(2n+1)}{6} + (n+1)^2 = \frac{(n+1)(2n^2 + 7n + 6)}{6} = \frac{(n+1)(n+2)(2n+3)}{6}$.

c) $n = 1$: $1 = 1$. Lépés: $\frac{n^2(n+1)^2}{4} + (n+1)^3 = \frac{(n+1)^2(n^2 + 4n + 4)}{4} = \frac{(n+1)^2(n+2)^2}{4}$.

d) $\sum_{i=1}^n 2i = 2 \cdot \frac{n(n+1)}{2} = n(n+1)$ (az a) részből; vagy indukcióval: $n(n+1) + 2(n+1) = (n+1)(n+2)$).

e) $n = 1$: $1 = 1^2$. Lépés: $n^2 + (2n + 1) = (n + 1)^2$.

f) $n = 1$: $\frac12 = \frac12$. Lépés: $\frac{n}{n+1} + \frac{1}{(n+1)(n+2)} = \frac{n(n+2) + 1}{(n+1)(n+2)} = \frac{(n+1)^2}{(n+1)(n+2)} = \frac{n+1}{n+2}$. (Teleszkopikusan is: $\frac{1}{i(i+1)} = \frac1i - \frac{1}{i+1}$.)

g) $n = 1$: $2 = \frac{1 \cdot 2 \cdot 3}{3}$. Lépés: $\frac{n(n+1)(n+2)}{3} + (n+1)(n+2) = \frac{(n+1)(n+2)(n+3)}{3}$.

h) $n = 1$: $1 = 2! - 1$. Lépés: $(n+1)! - 1 + (n+1)(n+1)! = (n+2)(n+1)! - 1 = (n+2)! - 1$. (Teleszkopikusan is: $k \cdot k! = (k+1)! - k!$.)

::: elmelet
**Elméleti háttér — teljes indukció.** Ha egy $P(n)$ állítás (1) igaz $n = 1$-re (**kezdőlépés**), és (2) minden $n$-re $P(n)$-ből következik $P(n+1)$ (**indukciós lépés**), akkor minden pozitív egész $n$-re igaz. Összegképleteknél az indukciós lépés mindig ugyanaz: $S_{n+1} = S_n + a_{n+1}$, és a feltevés szerinti zárt alakhoz hozzáadva az új tagot meg kell kapnunk a zárt alak $n+1$-es értékét. Alternatíva a **teleszkopikus összeg**: ha $a_i = b_{i+1} - b_i$ alakban írható, akkor $\sum_{i=1}^n a_i = b_{n+1} - b_1$ (f) és h) így is megy).
:::

## 24. feladat

Legalább hány diáknak kell egy osztályba járnia ahhoz, hogy biztosan legyen

a) olyan hónap, amelyben legalább 4 születésnap van? b) legalább két olyan hónap, amelyekben legalább 2 születésnap van?

**Megoldás.**

a) Skatulya-elv 12 hónappal: ha legfeljebb 36 diák van, előfordulhat, hogy minden hónapra pontosan 3 születésnap jut. **37 diák** esetén valamelyik hónapra legalább $\lceil 37/12 \rceil = 4$ jut.

b) **Nincs ilyen létszám.** Bármekkora osztályban előfordulhat, hogy mindenki ugyanabban a hónapban (pl. januárban) született; ekkor csak egyetlen hónapban van legalább 2 születésnap. (A „biztosan" a legrosszabb esetre vonatkozik, és ez a szélsőséges eloszlás bármely létszám mellett előfordulhat.)

::: elmelet
**Elméleti háttér — skatulyaelv és a „legrosszabb eset”.** A „legalább hány kell, hogy *biztosan*…” kérdésre a válasz: a legnagyobb olyan létszám, amelynél még **létezik** rossz eset, plusz egy. Ezért két dolgot kell megmutatni: (1) egy rossz konstrukciót a válasznál eggyel kisebb létszámra, (2) hogy a válasznál már nincs rossz eset (itt az általános skatulyaelv: $12$ skatulyába $12k$-nál több golyóból valahova legalább $k + 1$ jut). Ha minden létszámra van rossz eset, akkor nincs megfelelő létszám (b).
:::

## 25. feladat

Egy dobozban 15 piros, 25 sárga és 40 zöld golyó található. Becsukott szemmel legalább hány golyót kell kihúznunk ahhoz, hogy biztosan legyen a kihúzottak között

a) sárga golyó? b) három különböző színű golyó? c) három azonos színű golyó? d) húsz azonos színű golyó? e) két közvetlenül egymás után kihúzott zöld golyó?

**Megoldás.**

Összesen 15 piros, 25 sárga, 40 zöld, azaz 80 golyó. Mindig a legrosszabb esetet vizsgáljuk.

a) Sárga golyó: a legrosszabb esetben előbb az összes $15 + 40 = 55$ nem sárgát húzzuk ki: **56.**

b) Három különböző szín: a legrosszabb esetben a két legnagyobb színosztályt húzzuk ki teljesen ($25 + 40 = 65$): **66.**

c) Három azonos színű: legfeljebb $2 + 2 + 2 = 6$ golyó lehet úgy, hogy egyik színből sincs 3: **7.**

d) Húsz azonos színű: pirosból legfeljebb 15 van, sárgából és zöldből 19–19 húzható úgy, hogy egyikből sincs 20: $15 + 19 + 19 = 53$, tehát **54.**

e) **Nem biztosítható**, még mind a 80 golyót kihúzva sem: a 40 zöld és 40 nem zöld golyó húzható váltakozva (Z, N, Z, N, …), és ekkor soha nincs két egymás utáni zöld.

::: elmelet
**Elméleti háttér — a legrosszabb eset konstruálása.** „Biztosan” $\iff$ a legkedvezőtlenebb húzássorrendben is. A válasz = (a leghosszabb olyan húzássorozat hossza, amelyben a kívánt esemény még nem következik be) $+ 1$. Ehhez mindig két lépés kell: a leghosszabb „rossz” sorozat megadása, és annak belátása (általában skatulyaelvvel), hogy hosszabb rossz sorozat nincs. Ha a rossz sorozat az összes golyót felhasználhatja (e), akkor nincs megfelelő szám.
:::

## 26. feladat

a) Egy $10 \times 10$ méteres kertbe szeretnénk minél több gyümölcsfát ültetni oly módon, hogy bármely kettő távolsága legalább 5 m legyen. Hányat ültethetünk bele?

b) Egy $7 \times 7$ méteres kertbe szeretnénk minél több ribizlibokrot ültetni oly módon, hogy bármely kettő távolsága legalább 1 m legyen. Hányat ültethetünk bele? [Kivételes eset: Nem kell igazolni a megoldást, elég a helyes válasz!]

**Megoldás.**

a) **9 fa.** Elhelyezés: a $3 \times 3$-as rács pontjai $0$, $5$, $10$ m koordinátákkal – bármely kettő távolsága legalább 5 m. Több nem fér el: osszuk a kertet $9$ darab $\frac{10}{3} \times \frac{10}{3}$-as négyzetre; egy ilyen (zárt) négyzet átmérője $\frac{10\sqrt2}{3} \approx 4{,}71 < 5$, tehát mindegyikbe legfeljebb egy fa kerülhet.

b) **68 bokor** (a feladat szerint elég a válasz). A $8 \times 8 = 64$-es négyzetrácsnál jobb a háromszögrács: a sorok távolsága $\frac{\sqrt3}{2} \approx 0{,}866$ m, így $8 \cdot 0{,}866 \approx 6{,}93 \le 7$ miatt 9 sor fér el. A sorokban felváltva 8 bokor (a $0, 1, \dots, 7$ m helyeken) és 7 bokor (a $0{,}5;\ 1{,}5; \dots;\ 6{,}5$ m helyeken) áll. A szomszédos sorok bokrai pontosan 1 m-re vannak. Összesen $5 \cdot 8 + 4 \cdot 7 = 68$.

::: elmelet
**Elméleti háttér — geometriai skatulyaelv.** A felső becsléshez a síkidomot $k$ darab kisebb (zárt) részre bontjuk, amelyek **átmérője** (két pontjuk legnagyobb távolsága) kisebb a megkövetelt távolságnál: ekkor minden részbe legfeljebb egy pont kerülhet, így legfeljebb $k$ pont van. Az alsó becsléshez egy konkrét elrendezés kell. A kettő együtt adja a pontos maximumot. (Négyzet átmérője az átlója: $a\sqrt2$.)
:::

## 27. feladat

Lásd be a következő binomiális együtthatókkal kapcsolatos azonosságokat:

a) $\binom{n}{k} = \binom{n}{n-k}$; b) $\binom{n}{k} = \frac{n}{k}\binom{n-1}{k-1}$; c) $\binom{n}{k} + \binom{n}{k+1} = \binom{n+1}{k+1}$; d) $\binom{n}{m}\binom{m}{k} = \binom{n}{k}\binom{n-k}{m-k}$.

**Megoldás.**

Kombinatorikus (kettős leszámlálásos) bizonyítások egy $n$ elemű halmazon; algebrailag a $\binom nk = \frac{n!}{k!(n-k)!}$ képletből is azonnal adódnak.

a) Egy $k$ elemű részhalmaz kiválasztása egyenértékű a kimaradó $n - k$ elem kiválasztásával.

b) $k\binom nk = n\binom{n-1}{k-1}$: egy $k$ fős bizottságot választunk elnökkel. Előbb a bizottság, aztán az elnök: $\binom nk \cdot k$; előbb az elnök, aztán a többi $k - 1$ tag: $n\binom{n-1}{k-1}$. Átosztva $k$-val adódik az állítás.

c) $\binom nk + \binom{n}{k+1} = \binom{n+1}{k+1}$: egy $n + 1$ elemű halmaz $(k+1)$ elemű részhalmazai vagy tartalmazzák az utolsó elemet (ekkor a többi $k$-t $n$ elemből választjuk: $\binom nk$), vagy nem ($\binom{n}{k+1}$).

d) $\binom nm\binom mk = \binom nk\binom{n-k}{m-k}$: egy $m$ fős bizottságot és azon belül egy $k$ fős albizottságot választunk. Előbb a bizottság, majd az albizottság: bal oldal. Előbb az albizottság ($\binom nk$), majd a bizottság többi $m - k$ tagja a maradék $n - k$ emberből: jobb oldal.

::: elmelet
**Elméleti háttér — kettős leszámlálás.** Egy azonosság kombinatorikus bizonyítása: találunk egy halmazt, amelynek elemszáma a bal oldal az egyik számolási móddal, és a jobb oldal a másikkal. Tipikus fogások: komplementer (a), „bizottság elnökkel” (b: $k\binom nk = n\binom{n-1}{k-1}$), esetszétválasztás egy kitüntetett elem szerint (c: Pascal-szabály), két lépésben választás különböző sorrendben (d).
:::

## 28. feladat

a) Hányféleképpen lehet egy adott $n$ elemű halmaz egy $x$ elemét és egy $A$ részhalmazát kiválasztani úgy, hogy $x \in A$?

b) Hányféleképpen lehet egy adott $n$ elemű halmaznak egy $A$ és egy $B$ részhalmazát kiválasztani úgy, hogy $A \subseteq B$?

**Megoldás.**

a) **$n \cdot 2^{n-1}$.** Előbb $x$-et választjuk ($n$-féle), majd $A$-t, amely $x$-et tartalmazza – a többi $n - 1$ elemről szabadon döntünk: $2^{n-1}$. (A másik sorrendben: $\sum_k k\binom nk$, így $\sum_k k\binom nk = n2^{n-1}$.)

b) **$3^n$.** Minden elemről háromféle döntés: $A$-ban van (és így $B$-ben is), $B \setminus A$-ban van, vagy $B$-n kívül van.

::: elmelet
**Elméleti háttér — kettős leszámlálás és „háromállapotú” döntések.** a) A párokat kétféle sorrendben választva $\sum_k k\binom nk = n\,2^{n-1}$ adódik. b) Egy $A \subseteq B \subseteq [n]$ pár minden elemhez az „$A$-ban”, „$B \setminus A$-ban”, „$B$-n kívül” címkék egyikét rendeli, és fordítva, minden ilyen címkézés pontosan egy párt ad: ez bijekció a $[n] \to \{1,2,3\}$ függvényekkel, így $3^n$. (Ugyanez binomiális tétellel: $\sum_k \binom nk 2^k = 3^n$.)
:::

## 29. feladat

Egy két méter oldalú, négyzet alakú céltáblába belelövünk 5 golyót. Mutassuk meg, hogy lesz két olyan lyuk, amelyek távolsága legfeljebb 1,5 méter! Állíthatunk-e ennél erősebbet is?

**Megoldás.**

Osszuk a $2 \times 2$-es céltáblát négy $1 \times 1$-es négyzetre. Az 5 lyuk közül a skatulya-elv szerint kettő ugyanabba a (zárt) kis négyzetbe esik, és ezek távolsága legfeljebb a kis négyzet átlója, $\sqrt2 \approx 1{,}414 \le 1{,}5$ m.

**Erősebb állítás:** mindig van két lyuk legfeljebb $\sqrt2$ m távolságra, és ez **éles**: a négy sarok és a középpont esetén a legkisebb távolság pontosan $\sqrt2$.

::: elmelet
**Elméleti háttér — skatulyaelv területfelosztással.** $5$ pont $4$ részre: valamelyik részbe kettő jut (skatulyaelv). Ha minden rész átmérője legfeljebb $d$, akkor ez a két pont legfeljebb $d$ távolságra van. Az állítás **élességét** egy konkrét ellenpélda mutatja (itt az öt pont, amelynél a minimális távolság pontosan $\sqrt2$), tehát $\sqrt2$-nél kisebb korlát nem bizonyítható.
:::

## 30. feladat

Legfeljebb hány természetes szám adható meg úgy, hogy semelyik kettő különbsége ne legyen osztható 153-mal?

**Megoldás.**

Két szám különbsége pontosan akkor osztható 153-mal, ha ugyanaz a maradékuk 153-mal osztva. Tehát a számoknak páronként különböző maradékúnak kell lenniük, és csak 153 maradék van: **legfeljebb 153 szám** adható meg, pl. $0, 1, \dots, 152$.

::: elmelet
**Elméleti háttér — maradékosztályok mint skatulyák.** $m \mid a - b \iff a \equiv b \pmod m$, vagyis $a$ és $b$ maradéka $m$-mel osztva azonos. A maradékosztályok ($m$ darab) a skatulyák: ha $m$-nél több szám van, kettő ugyanabba az osztályba esik. A maximum tehát $m$, amit egy teljes maradékrendszer el is ér.
:::

## 31. feladat

a) Legfeljebb hány számot választhatunk ki 1-től 120-ig úgy, hogy semelyik kettő ne legyen relatív prím?

b) Legfeljebb hány számot választhatunk ki 1-től 120-ig úgy, hogy bármely 3 között legyen 2, amelyek nem relatív prímek?

c) Legfeljebb hány számot választhatunk ki 1-től 120-ig úgy, hogy ne legyen köztük kettő, hogy egyik osztja a másikat?

d) Legfeljebb hány számot választhatunk ki 1-től 120-ig úgy, hogy ne legyen közöttük három különböző szám $x$, $y$ és $z$, amelyekre teljesül $x + y = z$?

**Megoldás.**

a) **60.** Az összes páros szám ($2, 4, \dots, 120$) megfelel: bármely kettő legnagyobb közös osztója legalább 2. Több nem lehet: az $(1, 2), (3, 4), \dots, (119, 120)$ 60 pár mindegyike két szomszédos, tehát relatív prím számból áll, így mindegyik párból legfeljebb egyet választhatunk.

b) **80.** Választás: az összes páros szám (60 db) és a 3 páratlan többszörösei ($3, 9, 15, \dots, 117$; 20 db). Bármely 3 kiválasztott közül kettő ugyanabba az osztályba esik, és azoknak közös osztója a 2, illetve a 3.

Több nem lehet: osszuk az $1, \dots, 120$ számokat 20 blokkra: $\{6k+1, \dots, 6k+6\}$. Egy blokkban a következő hármasok páronként relatív prímek: $\{6k+1, 6k+2, 6k+3\}$, $\{6k+3, 6k+4, 6k+5\}$, $\{6k+1, 6k+2, 6k+5\}$ (szomszédos számok relatív prímek; két páratlan szám, amelyek különbsége 2 vagy 4, relatív prím; $6k+2$ és $6k+5$ különbsége 3, és $3 \nmid 6k+5$). Ha egy blokkból 5 számot választanánk, akkor a kimaradó szám az első két hármas mindegyikében benne kellene legyen, tehát az $6k+3$ volna – de akkor a harmadik hármas teljesen ki van választva. Tehát blokkonként legfeljebb 4 szám, összesen legfeljebb 80.

c) **60.** A $61, \dots, 120$ számok közül egyik sem osztja a másikat (a legkisebb valódi többszörös $2 \cdot 61 > 120$). Több nem lehet: minden szám egyértelműen $2^a \cdot m$ alakú, $m$ páratlan; a 60 páratlan $m \in \{1, 3, \dots, 119\}$ szerint 60 „lánc" ($m, 2m, 4m, \dots$) keletkezik, és egy láncon belül bármely két szám közül az egyik osztja a másikat – tehát láncönként legfeljebb egyet választhatunk.

d) **61.** A $60, 61, \dots, 120$ számok (61 db) megfelelnek: két különböző közülük összege legalább $60 + 61 = 121 > 120$. Több nem lehet: legyen $M$ a választott legnagyobb szám. Az $\{k, M - k\}$ párok ($1 \le k < \frac M2$) mindegyikéből legfeljebb egy választható (különben $k + (M - k) = M$ három különböző számmal). Ha $M$ páros, az $1, \dots, M - 1$ számok $\frac M2 - 1$ párra és az $\frac M2$ számra oszlanak, így legfeljebb $\frac M2$ választható közülük, $M$-mel együtt $\frac M2 + 1 \le 61$. Ha $M$ páratlan, $\frac{M - 1}{2}$ pár van, így legfeljebb $\frac{M-1}{2} + 1 \le 60$.

::: elmelet
**Elméleti háttér — szélsőérték-feladatok skatulyaelvvel.** Minden ilyen feladat két részből áll: egy **konstrukció** (alsó becslés) és egy **felosztás** (felső becslés): az alaphalmazt olyan „skatulyákra” bontjuk, amelyek mindegyikéből legfeljebb $c$ elem választható; ha $s$ skatulya van, legfeljebb $cs$ elem. a) skatulya: szomszédos számok párja (relatív prímek); b) hatos blokkok, ahol páronként relatív prím hármasok miatt legfeljebb $4$ választható; c) láncok $m, 2m, 4m, \dots$ (oszthatósági láncon belül bármely kettő összehasonlítható); d) az $\{k, M-k\}$ párok. Ha a konstrukció és a felső korlát egyezik, megvan a maximum.
:::

## 32. feladat

Lásd be a következő binomiális együtthatókkal kapcsolatos azonosságokat:

a) $\binom{k}{k} + \binom{k+1}{k} + \dots + \binom{n}{k} = \binom{n+1}{k+1}$; b) $\binom{n}{0}\binom{m}{k} + \binom{n}{1}\binom{m}{k-1} + \dots + \binom{n}{k}\binom{m}{0} = \binom{n+m}{k}$.

**Megoldás.**

a) $\binom kk + \binom{k+1}{k} + \dots + \binom nk = \binom{n+1}{k+1}$ („hokiütő-azonosság"): az $\{1, \dots, n + 1\}$ halmaz $(k+1)$ elemű részhalmazait legnagyobb elemük szerint osztályozzuk. Ha a legnagyobb elem $m + 1$ ($k \le m \le n$), akkor a többi $k$ elemet az $\{1, \dots, m\}$-ből választjuk: $\binom mk$.

b) Vandermonde-azonosság: $n$ férfi és $m$ nő közül $k$ főt választunk: $\binom{n+m}{k}$. A választottak között lévő férfiak száma $i$ szerint osztályozva: $\binom ni\binom{m}{k - i}$, ezek összege a bal oldal.

::: elmelet
**Elméleti háttér — osztályozás egy paraméter szerint.** Mindkét azonosság úgy jön ki, hogy a jobb oldal által számolt halmazt (részhalmazok) diszjunkt osztályokra bontjuk egy természetes paraméter szerint: a) a legnagyobb elem értéke, b) a kiválasztott „férfiak” száma. Az osztályok elemszámainak összege a bal oldal (esetszétválasztás).
:::

## 33. feladat

$\binom{n}{0}^2 + \binom{n}{1}^2 + \dots + \binom{n}{n}^2 = ?$

**Megoldás.**

$\binom ni = \binom{n}{n-i}$ miatt a 32. b) azonosság $m = k = n$ esetével:
$$\sum_{i=0}^n\binom ni^2 = \sum_{i=0}^n\binom ni\binom{n}{n-i} = \binom{2n}{n}.$$

::: elmelet
**Elméleti háttér — Vandermonde-azonosság speciális esete.** $\binom ni = \binom{n}{n-i}$ (szimmetria) után a bal oldal $\sum_i \binom ni\binom{n}{n-i}$, ami $n + n$ elemből $n$ választása az első csoportból választottak száma szerint osztályozva. Kombinatorikusan: $n$ fiúból és $n$ lányból $n$ fős csapat; ha $i$ fiú van benne, a fiúkat $\binom ni$-, a lányokat $\binom{n}{n-i}$-féleképpen választjuk.
:::

## 34. feladat

Maximum hány huszárt helyezhetünk el a sakktáblán úgy, hogy semelyik kettő ne üsse egymást?

**Megoldás.**

**32 huszár.** Ha az összes huszárt azonos színű mezőkre (pl. a 32 fehér mezőre) tesszük, egyik sem üti a másikat, mert a huszár lépése mindig ellenkező színű mezőre visz.

Több nem lehet: osszuk a táblát nyolc $2 \times 4$-es téglalapra. Egy $2 \times 4$-es téglalap 8 mezője 4 párba rendezhető úgy, hogy minden pár egymástól egy huszárlépésnyire legyen (sorok $1, 2$, oszlopok $1..4$): $(1,1)$–$(2,3)$, $(1,2)$–$(2,4)$, $(1,3)$–$(2,1)$, $(1,4)$–$(2,2)$. Így a tábla 32 ilyen párra bomlik, és minden párban legfeljebb egy huszár állhat.

::: elmelet
**Elméleti háttér — párosítás mint felső korlát.** Ha a táblát (a gráf csúcsait) diszjunkt „ütő párokra” tudjuk bontani, akkor minden párból legfeljebb egy huszár választható, így a maximum legfeljebb a párok száma. A konstrukció a színezésre épül: a huszár mindig ellenkező színű mezőre lép, tehát az egyszínű mezők halmaza ütésmentes. A két becslés egyezése adja a pontos választ.
:::

## 35. feladat (házi feladat)

Adj zárt formulát az alábbi összegre, és kettős leszámlálás módszerével igazold az azonosságot: $\displaystyle\sum_{k=1}^{n} k \cdot 2^{k-1} \cdot \binom{n}{k}$.

**Megoldás.**

**Zárt formula:** $\displaystyle\sum_{k=1}^{n}k \cdot 2^{k-1}\binom nk = n \cdot 3^{n-1}$.

**Kettős leszámlálás.** Számoljuk meg azokat a $(B, x, A)$ hármasokat, ahol $A \subseteq \{1, \dots, n\}$ egy bizottság, $x \in A$ az elnöke, és $B \subseteq A \setminus \{x\}$ egy albizottság.

- Ha előbb az $|A| = k$ elemű bizottságot választjuk ($\binom nk$), majd az elnököt ($k$), majd a maradék $k - 1$ tag közül az albizottságot ($2^{k-1}$): a bal oldalt kapjuk.
- Ha előbb az elnököt választjuk ($n$), majd a többi $n - 1$ ember mindegyikéről eldöntjük, hogy kívül van, a bizottságban van, de az albizottságban nem, vagy az albizottságban is benne van ($3^{n-1}$): a jobb oldalt kapjuk.

(Ellenőrzés: $n = 2$-re $1 \cdot 1 \cdot 2 + 2 \cdot 2 \cdot 1 = 6 = 2 \cdot 3$.)

::: elmelet
**Elméleti háttér — kettős leszámlálás „háromállapotú” címkézéssel.** Egy összeget úgy azonosítunk, hogy a tagjait egy halmaz osztályainak elemszámaként értelmezzük ($\binom nk$: bizottság, $k$: elnök, $2^{k-1}$: albizottság), majd ugyanazt a halmazt más sorrendben számoljuk meg. Az elnök kiválasztása után minden további ember három állapot egyikében van — ez adja a $3^{n-1}$ tényezőt.
:::

## 36. feladat (házi feladat)

Mivel lesz egyenlő az alábbi kifejezés? A választ a kettős leszámlálás módszerével igazoljuk!
$$\binom{n-1}{k-2} + 2 \cdot \binom{n-1}{k-1} + \binom{n-1}{k} = \ ?$$

**Megoldás.**

$$\binom{n-1}{k-2} + 2\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n+1}{k}.$$
**Kettős leszámlálás:** egy $n + 1$ elemű halmaz – $n - 1$ „közönséges" elem és két kitüntetett elem, $a$ és $b$ – $k$ elemű részhalmazait számoljuk. Aszerint osztályozva, hogy a kitüntetett elemek közül hány van benne:

- $a$ és $b$ is benne van: a többi $k - 2$ elem $\binom{n-1}{k-2}$-féle;
- pontosan az egyik ($2$-féle): $2\binom{n-1}{k-1}$;
- egyik sincs benne: $\binom{n-1}{k}$.

(Algebrailag ez a Pascal-azonosság kétszeri alkalmazása.)

::: elmelet
**Elméleti háttér — esetszétválasztás kitüntetett elemek szerint.** A Pascal-szabály általánosítása: ha az alaphalmazban kijelölünk néhány elemet, a $k$ elemű részhalmazok a kijelölt elemekből tartalmazott rész szerint diszjunkt osztályokra bomlanak. Két kijelölt elem esetén az osztályok súlya $1, 2, 1$ — ezek a $(1 + x)^2$ együtthatói, ezért algebrailag ez a $(1+x)^{n+1} = (1+x)^{n-1}(1+x)^2$ összefüggés.
:::

## 37. feladat (házi feladat)

Egy szabályos húszszög csúcsai mind kékre vagy pirosra vannak festve. A piros csúcsok száma 9, a kék csúcsok száma 11. Bizonyítsuk be, hogy találhatunk három kék csúcsot úgy, hogy azok derékszögű háromszöget alkotnak!

**Megoldás.**

Egy körbe írt háromszög akkor és csak akkor derékszögű, ha egyik oldala a kör átmérője (Thalész-tétel és megfordítása). A szabályos 20-szög csúcsai 10 átellenes párt (átmérőt) alkotnak. A 11 kék csúcs a skatulya-elv szerint nem fér el úgy, hogy minden párból legfeljebb egy legyen kék: **van olyan átmérő, amelynek mindkét végpontja kék.** Ehhez bármely harmadik kék csúcsot (van még 9) hozzávéve a Thalész-tétel szerint derékszögű háromszöget kapunk. $\blacksquare$

::: elmelet
**Elméleti háttér — Thalész-tétel és skatulyaelv.** Egy körbe írt háromszög pontosan akkor derékszögű, ha egyik oldala átmérő. Szabályos $2m$-szögben a csúcsok $m$ átellenes párba (átmérőbe) rendeződnek: ezek a skatulyák. $m$-nél több kék csúcsból valamelyik párba kettő jut — ez egy kék átmérő, és bármely további kék csúcs vele derékszögű háromszöget alkot.
:::

# Kombinatorika 1 – 3. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 38. feladat

Bizonyítsd be, hogy két egymás után következő Fibonacci-szám ($F_n$ és $F_{n+1}$) mindig relatív prím!

**Megoldás.**

Jelölés: $F_0 = 0$, $F_1 = F_2 = 1$, $F_{n+1} = F_n + F_{n-1}$.

Az euklideszi algoritmus egy lépése szerint $(a, b) = (a - b, b)$. Így
$$(F_{n+1}, F_n) = (F_{n+1} - F_n, F_n) = (F_{n-1}, F_n) = \dots = (F_2, F_1) = (1, 1) = 1.$$
Indukcióval: $(F_2, F_1) = 1$. Ha $d \mid F_{n+1}$ és $d \mid F_n$, akkor $d \mid F_{n+1} - F_n = F_{n-1}$, tehát $d \mid (F_n, F_{n-1}) = 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — az euklideszi algoritmus invarianciája.** A legnagyobb közös osztó nem változik, ha az egyik számból kivonjuk a másikat: $(a, b) = (a - b, b)$, mert $a$ és $b$ közös osztói pontosan $a - b$ és $b$ közös osztói. A Fibonacci-rekurzió $F_{n+1} - F_n = F_{n-1}$ éppen egy ilyen kivonás, így az euklideszi algoritmus a Fibonacci-sorozaton „visszafelé lépked”, és végül $(1, 1) = 1$-hez ér.
:::

## 39. feladat

Egy $n$ emeletes ház emeleteit hányféleképpen színezhetjük ki a piros és kék színekkel úgy, hogy ne legyen két szomszédos emelet piros?

**Megoldás.**

**$F_{n+2}$ féleképpen.**

Legyen $a_n$ a jó színezések száma. A legfelső emelet szerint két eset van:

- **kék:** az alatta levő $n - 1$ emelet tetszőleges jó színezés, $a_{n-1}$ lehetőség;
- **piros:** az alatta levő kék, alatta pedig $n - 2$ emelet tetszőleges jó színezése, $a_{n-2}$ lehetőség.

Így $a_n = a_{n-1} + a_{n-2}$, $a_1 = 2$, $a_2 = 3$ (PK, KP, KK). Ez a Fibonacci-sorozat eltolva: $a_1 = F_3$, $a_2 = F_4$, tehát $a_n = F_{n+2}$.

::: elmelet
**Elméleti háttér — rekurzió esetszétválasztással.** Ha egy feltétel csak szomszédos elemekre vonatkozik, a szélső elem állapota szerint bontunk esetekre: a maradék rész egy kisebb, ugyanilyen típusú feladat. Így kapunk lineáris rekurziót. Ha a rekurzió és a kezdőértékek megegyeznek egy ismert sorozatéval (indexeltolással), akkor — mivel egy másodrendű rekurziót az első két tag egyértelműen meghatároz — a két sorozat azonos.
:::

## 40. feladat

Mutassuk meg, hogy tetszőleges $1 < m$ egész számra a Fibonacci-sorozat tagjainak $m$-mel vett osztási maradékai periodikus sorozatot alkotnak!

**Megoldás.**

Legyen $r_n = F_n \bmod m$. A sorozatot egy szomszédos pár egyértelműen meghatározza mindkét irányban:

- előre: $r_{n+1} \equiv r_n + r_{n-1}$;
- visszafelé: $r_{n-1} \equiv r_{n+1} - r_n \pmod m$.

Az $(r_n, r_{n+1})$ párok legfeljebb $m^2$ különböző értéket vehetnek fel. A skatulya-elv szerint van $i < j$, hogy $(r_i, r_{i+1}) = (r_j, r_{j+1})$. Előre lépve ebből $r_{n} = r_{n + (j - i)}$ minden $n \ge i$-re. Visszafelé lépve ugyanez $n < i$-re is igaz. Tehát a sorozat $p = j - i$ szerint periodikus, mégpedig rögtön az elejétől (tisztán periodikus). $\blacksquare$

(Például mod 2 a maradékok $0, 1, 1, 0, 1, 1, \dots$, a periódus 3.)

::: elmelet
**Elméleti háttér — skatulyaelv véges állapottérben.** Egy sorozat, amelynek minden tagját az előző $r$ tag egyértelműen meghatározza, és amelynek tagjai véges halmazból (itt $\mathbb{Z}_m$) valók, véges sok „állapotot” vehet fel (itt $m^2$ szomszédos párt). A skatulyaelv szerint valamikor egy állapot ismétlődik, és onnantól a sorozat ismétlődik. Ha a lépés **visszafelé is egyértelmű** (itt $r_{n-1} = r_{n+1} - r_n$), akkor az ismétlődés a sorozat elejére is visszaterjed: a sorozat tisztán periodikus.
:::

## 41. feladat

Mutasd meg, hogy

a) $F_n^2 - F_{n+1}F_{n-1} = (-1)^{n+1}$.

b) $F_1 + F_2 + \dots + F_n = F_{n+2} - 1$.

c) $F_1^2 + F_2^2 + \dots + F_n^2 = F_n F_{n+1}$.

**Megoldás.**

Mindhármat $n$ szerinti indukcióval bizonyítjuk.

a) $n = 1$: $F_1^2 - F_2 F_0 = 1 - 0 = 1 = (-1)^2$. Lépés ($F_{n+2} = F_{n+1} + F_n$, $F_{n+1} - F_n = F_{n-1}$):
$$F_{n+1}^2 - F_{n+2}F_n = F_{n+1}^2 - F_{n+1}F_n - F_n^2 = F_{n+1}(F_{n+1} - F_n) - F_n^2 = F_{n+1}F_{n-1} - F_n^2 = -(-1)^{n+1} = (-1)^{n+2}.$$

b) $n = 1$: $F_1 = 1 = F_3 - 1$. Lépés: $(F_{n+2} - 1) + F_{n+1} = F_{n+3} - 1$.

c) $n = 1$: $F_1^2 = 1 = F_1 F_2$. Lépés: $F_n F_{n+1} + F_{n+1}^2 = F_{n+1}(F_n + F_{n+1}) = F_{n+1}F_{n+2}$.

(A c) rész szemléletesen: az $F_1 \times F_1, F_2 \times F_2, \dots, F_n \times F_n$ négyzetek kirakják az $F_n \times F_{n+1}$-es téglalapot.) $\blacksquare$

::: elmelet
**Elméleti háttér — indukció rekurzív sorozatokra.** Rekurzióval definiált sorozat azonosságait természetes módon indukcióval bizonyítjuk: az indukciós lépésben a rekurziót ($F_{n+2} = F_{n+1} + F_n$) használjuk arra, hogy az $(n+1)$-es állítást az $n$-es állításra (vagy több korábbira) vezessük vissza. Az a) rész (Cassini-azonosság) azért működik, mert az $F_n^2 - F_{n+1}F_{n-1}$ kifejezés egy lépésben előjelet vált.
:::

## 42. feladat

Hány olyan 1000-nél nem nagyobb pozitív egész szám van, amely nem osztható se 2-vel, se 3-mal, se 5-tel.

**Megoldás.**

Szita-formula. Jelölje $A_d$ az 1000-ig terjedő, $d$-vel osztható számok halmazát; $|A_d| = \lfloor 1000/d \rfloor$.
$$|A_2 \cup A_3 \cup A_5| = (500 + 333 + 200) - (166 + 100 + 66) + 33 = 1033 - 332 + 33 = 734.$$
**A keresett számok száma $1000 - 734 = 266$.**

::: elmelet
**Elméleti háttér — logikai szita.** $|A \setminus (A_1 \cup \dots \cup A_k)| = \sum_{I} (-1)^{|I|}\,|A_I|$, ahol $A_I$ az $I$-beli halmazok metszete. Oszthatóságnál a metszetek könnyen számolhatók: különböző prímekre $p \mid x$ és $q \mid x$ $\iff$ $pq \mid x$, és $[1, N]$-ben a $d$-vel osztható számok száma $\lfloor N/d \rfloor$.
:::

## 43. feladat

Egy szabályos dobókockával 12-szer dobunk. Mennyi a valószínűsége, hogy mind a hat lehetséges szám előfordul a 12 dobás alatt?

**Megoldás.**

Az összes kimenetel $6^{12}$, mind egyformán valószínű. Szita-formulával számoljuk, hány dobássorozatban fordul elő mind a hat szám. Legyen $B_j$ azoknak a sorozatoknak a halmaza, amelyekből a $j$ szám hiányzik. Ekkor $i$ rögzített szám hiányzása $(6 - i)^{12}$ sorozatot enged meg, így
$$\sum_{i=0}^{6} (-1)^i \binom6i (6 - i)^{12} = 6^{12} - 6 \cdot 5^{12} + 15 \cdot 4^{12} - 20 \cdot 3^{12} + 15 \cdot 2^{12} - 6 \cdot 1 = 953\,029\,440.$$
**A valószínűség**
$$\frac{953\,029\,440}{6^{12}} = \frac{1\,654\,565}{3\,779\,136} \approx 0{,}4378.$$
(A számláló $6! \cdot S(12, 6)$, ahol $S(12, 6) = 1\,323\,652$ másodfajú Stirling-szám.)

::: elmelet
**Elméleti háttér — szürjekciók száma szitával.** A „mind a $6$ szám előfordul” sorozatok éppen a $[12] \to [6]$ **szürjektív** függvények. A „$j$ hiányzik” események szitájával: $\sum_{i}(-1)^i\binom6i(6-i)^{12}$, mert $i$ rögzített érték hiányzása mellett minden dobás a maradék $6 - i$ értékből választ. Klasszikus valószínűségnél (egyenlően valószínű kimenetelek) a valószínűség = kedvező / összes.
:::

## 44. feladat

a) Mennyi a 3-mal vagy 5-tel vagy 7-tel osztható egészek száma 1-től 1000-ig?

b) Mennyi a 3-mal vagy 5-tel vagy 7-tel osztható egészek összege 1-től 1000-ig?

**Megoldás.**

a) Szita-formula, $|A_d| = \lfloor 1000/d \rfloor$:
$$(333 + 200 + 142) - (66 + 47 + 28) + 9 = 675 - 141 + 9 = \mathbf{543}.$$
(Itt $A_{15}$, $A_{21}$, $A_{35}$ a páronkénti, $A_{105}$ a hármas metszet.)

b) A $d$-vel osztható számok összege 1000-ig, ahol $k = \lfloor 1000/d \rfloor$:
$$S(d) = d(1 + 2 + \dots + k) = d \cdot \frac{k(k+1)}{2}.$$

| $d$ | 3 | 5 | 7 | 15 | 21 | 35 | 105 |
|---|---|---|---|---|---|---|---|
| $k$ | 333 | 200 | 142 | 66 | 47 | 28 | 9 |
| $S(d)$ | 166 833 | 100 500 | 71 071 | 33 165 | 23 688 | 14 210 | 4 725 |

A szita-formula ugyanúgy működik összegekre is:
$$(166\,833 + 100\,500 + 71\,071) - (33\,165 + 23\,688 + 14\,210) + 4\,725 = 338\,404 - 71\,063 + 4\,725 = \mathbf{272\,066}.$$

::: elmelet
**Elméleti háttér — a szita súlyozott változata.** A szita nemcsak elemszámra, hanem bármely **additív** mennyiségre (például az elemek összegére) is érvényes: ha minden $x$ elemet $w(x)$ súllyal számolunk, a szitaformula bizonyítása szó szerint ugyanaz (minden elem együtthatója a végén $1$ vagy $0$). A $d$-vel osztható számok összege számtani sorozat összege: $d \cdot \frac{k(k+1)}{2}$.
:::

## 45. feladat

Bizonyítsd be, hogy $0 < k < m$ esetén $\sum_{i=k}^{m} F_i F_{i+3}$ összetett szám.

**Megoldás.**

A $F_i = F_{i+2} - F_{i+1}$ és $F_{i+3} = F_{i+2} + F_{i+1}$ összefüggésekből
$$F_i F_{i+3} = (F_{i+2} - F_{i+1})(F_{i+2} + F_{i+1}) = F_{i+2}^2 - F_{i+1}^2.$$
Az összeg teleszkopikus:
$$\sum_{i=k}^m F_i F_{i+3} = F_{m+2}^2 - F_{k+1}^2 = (F_{m+2} - F_{k+1})(F_{m+2} + F_{k+1}).$$
Mindkét tényező nagyobb 1-nél. $k + 1 \le m$ és a Fibonacci-sorozat monoton, így
$$F_{m+2} - F_{k+1} \ge F_{m+2} - F_m = F_{m+1} \ge F_3 = 2,$$
hiszen $m \ge 2$. A második tényező ennél is nagyobb. Tehát az összeg összetett. $\blacksquare$

(Példa: $k = 1$, $m = 2$: $F_1F_4 + F_2F_5 = 3 + 5 = 8 = (3 - 1)(3 + 1)$.)

::: elmelet
**Elméleti háttér — teleszkopikus összeg és szorzattá bontás.** Ha a tag $a_i = b_{i+1} - b_i$ alakú, az összeg $b_{m+1} - b_k$. Itt a rekurzióval $F_iF_{i+3}$-at két szomszédos négyzet különbségeként írjuk fel ($x^2 - y^2 = (x-y)(x+y)$ az $F_{i+2} \pm F_{i+1}$ alakból). Egy szám összetettségéhez elég két, $1$-nél nagyobb tényezőre bontás.
:::

## 46. feladat

Hány olyan 10 hosszú karaktersorozat készíthető a (26 betűből álló) angol ábécé nagybetűiből, mely tartalmaz A-t, B-t és C-t is? *Tehát például a MATEMATBSC egy ilyen karaktersorozat.*

**Megoldás.**

Szita-formula. Az összes sorozat $26^{10}$. Ebből levonjuk azokat, amelyekből az A, a B vagy a C hiányzik:
$$26^{10} - 3 \cdot 25^{10} + 3 \cdot 24^{10} - 23^{10} = \mathbf{3\,848\,432\,413\,980}.$$

::: elmelet
**Elméleti háttér — szita „tiltott” értékekre.** „Tartalmazza A-t, B-t és C-t” = „egyik sem hiányzik”. Legyen $H_X$ azoknak a szavaknak a halmaza, amelyekből $X$ hiányzik; $|H_X| = 25^{10}$, két betű hiányzása $24^{10}$, háromé $23^{10}$ (független választás a megmaradt betűkből). A szita a szimmetria miatt binomiális együtthatókkal súlyozott összeg.
:::

## 47. feladat

Hányféleképpen fedhetünk le egy $2 \times n$-es táblát $1 \times 2$-es dominókkal?

**Megoldás.**

**$F_{n+1}$ féleképpen.**

Legyen $t_n$ a lefedések száma. Nézzük a tábla bal szélét:

- vagy egy függőleges dominó fedi az első oszlopot, és a maradék $2 \times (n-1)$-es: $t_{n-1}$ lehetőség;
- vagy két vízszintes dominó fedi az első két oszlopot, és a maradék $2 \times (n-2)$-es: $t_{n-2}$ lehetőség.

(Ha a bal felső mezőt vízszintes dominó fedi, a bal alsót is az kell.) Így $t_n = t_{n-1} + t_{n-2}$, $t_1 = 1$, $t_2 = 2$, tehát $t_n = F_{n+1}$.

::: elmelet
**Elméleti háttér — csempézések rekurziója.** Egy szélső mező (itt a bal felső) lefedési módja szerint esetszétválasztás: minden eset a tábla egy kisebb, ugyanolyan típusú darabját hagyja szabadon. Fontos ellenőrizni, hogy az esetek **diszjunktak és teljesek** (vízszintes dominó a bal felső sarokban kikényszeríti a bal alsó vízszintes dominót). Így $t_n = t_{n-1} + t_{n-2}$, a Fibonacci-rekurzió.
:::

## 48. feladat

$2n$ darab kártyalapon az $1, 1, 2, 2, \dots, n, n$ számok szerepelnek (az azonos számot tartalmazó kártyák teljesen egyformák). Hányféleképpen képezhetünk segítségükkel egy $2n$ hosszú számsorozatot úgy, hogy azonos számok nem állhatnak közvetlenül egymás után?

**Megoldás.**

$$\sum_{k=0}^{n} (-1)^k \binom nk \frac{(2n - k)!}{2^{\,n-k}}.$$

Szita-formula. Legyen $A_i$ azoknak a sorozatoknak a halmaza, amelyekben a két $i$ egymás mellett áll. Ha egy rögzített $k$ elemű számhalmaz párjai mind szomszédosak, ezeket a párokat egy-egy blokká ragasztjuk. Így $2n - k$ objektumot rendezünk, amelyek közül $n - k$ szám kétszer szerepel. Ez $\frac{(2n-k)!}{2^{n-k}}$ sorrend. A szita-formula ebből adja a fenti összeget.

Kis értékek: $n = 1$: $0$; $n = 2$: $2$ (1212, 2121); $n = 3$: $30$; $n = 4$: $864$.

::: elmelet
**Elméleti háttér — szita blokkosítással.** A „rossz” tulajdonság: egy adott szám két példánya egymás mellett áll ($A_i$). A metszetek számolásához a szomszédos párokat egy-egy **blokkba** ragasztjuk, és a kapott objektumokat ismétléses permutációként rendezzük ($\frac{\text{objektumok}!}{2^{\text{megmaradt párok}}}$). A szita ezekből adja a jó sorozatok számát; a szimmetria miatt csak $|I| = k$ számít, ezért $\binom nk$-val szorzunk.
:::

## 49. feladat

Egy turista minden nap egyet vásárol az alábbi áruk közül: fagylalt (1 Ft), gyümölcslé (2 Ft), képeslap (2 Ft). Hányféleképpen költheti így el 150 forintot?

**Megoldás.**

**$\dfrac{2^{151} + 1}{3}$ féleképpen.**

A vásárlások sorrendje számít (minden nap egy áru). Legyen $a_n$ az $n$ forint elköltésének módjainak száma. Az első nap szerint:

- fagylalt: utána $a_{n-1}$ lehetőség;
- gyümölcslé vagy képeslap: utána $2a_{n-2}$ lehetőség.

Tehát $a_n = a_{n-1} + 2a_{n-2}$, $a_0 = 1$, $a_1 = 1$. A karakterisztikus egyenlet $x^2 = x + 2$, gyökei $2$ és $-1$. A kezdőértékekből
$$a_n = \frac{2^{n+1} + (-1)^n}{3}$$
($1, 1, 3, 5, 11, 21, \dots$). Így $a_{150} = \dfrac{2^{151} + 1}{3}$.

::: elmelet
**Elméleti háttér — másodrendű lineáris rekurzió megoldása.** $a_n = c_1a_{n-1} + c_2a_{n-2}$ esetén a karakterisztikus egyenlet $q^2 = c_1q + c_2$. Ha két különböző gyöke van, $q_1 \ne q_2$, akkor minden megoldás $a_n = \alpha q_1^n + \beta q_2^n$ alakú, és $\alpha, \beta$ az $a_0, a_1$ kezdőértékekből egyértelműen adódik (lineáris egyenletrendszer). A rekurziót az *első* nap vásárlása szerinti esetszétválasztás adja (a gyümölcslé és a képeslap két különböző eset, ezért a $2$-es szorzó).
:::

## 50. feladat

Az $a, b, c, d$ betűkből hány db $n$ hosszú szót képezhetünk, ha az $a$ és $b$ betűk egyike után sem állhat közvetlenül a $c$ és $d$ betűk egyike sem?

**Megoldás.**

**$(n + 1)\,2^n$ szó.**

Ha egy szóban megjelenik egy $a$ vagy $b$ betű, utána csak $a$ vagy $b$ állhat, hiszen $c$ vagy $d$ nem követheti közvetlenül. Így egy jó szó egy $c, d$ betűkből álló, $k$ hosszú szakasz, amit egy $a, b$ betűkből álló, $n - k$ hosszú szakasz követ ($0 \le k \le n$). Fordítva, minden ilyen szó jó. Ezért
$$\sum_{k=0}^{n} 2^k \cdot 2^{n-k} = (n + 1)\,2^n.$$

::: elmelet
**Elméleti háttér — szerkezeti leírás.** Egy tiltott szomszédsági szabály gyakran „egyirányú” szerkezetet kényszerít: ha egyszer belépünk az $\{a, b\}$ betűk közé, onnan nem lehet kilépni. Ezért a jó szavak pontosan a „$\{c,d\}$-blokk, majd $\{a,b\}$-blokk” alakúak; a határ helye szerint esetszétválasztás ($n + 1$ eset), minden esetben független választás ($2^n$).
:::

## 51. feladat

Hányféleképpen bonthatunk fel egy konvex $n$-szöget egymást nem metsző átlókkal háromszögekre?

**Megoldás.**

**$C_{n-2} = \dfrac{1}{n - 1}\dbinom{2n - 4}{n - 2}$ féleképpen** (Catalan-szám).

Legyen $T_n$ a konvex $n$-szög háromszögeléseinek száma, és $T_2 = 1$ (konvenció: egy „kétszög", azaz egyetlen oldal). Számozzuk a csúcsokat $1, \dots, n$-nel. Az $1n$ oldal pontosan egy háromszögben van, ennek harmadik csúcsa valamely $k$ ($2 \le k \le n - 1$). Ez a háromszög két részre vágja a sokszöget:

- az $1, \dots, k$ csúcsú $k$-szögre;
- a $k, \dots, n$ csúcsú $(n - k + 1)$-szögre.

Ezeket egymástól függetlenül háromszögelhetjük. Így
$$T_n = \sum_{k=2}^{n-1} T_k\, T_{n-k+1}, \qquad T_2 = 1.$$
$T_3 = 1$, $T_4 = 2$, $T_5 = 5$, $T_6 = 14$, … Ez a Catalan-rekurzió ($C_0 = 1$, $C_{m+1} = \sum_{i=0}^m C_i C_{m-i}$), $T_n = C_{n-2}$-vel. A zárt képletet az 52. feladatnál igazoljuk.

::: elmelet
**Elméleti háttér — Catalan-rekurzió háromszögelésekre.** Egy kitüntetett oldal (itt $1n$) pontosan egy háromszög oldala; e háromszög harmadik csúcsa szerint esetszétválasztunk, és a háromszög két független, kisebb részfeladatra bontja a sokszöget (szorzat). A $T_2 = 1$ konvenció kezeli a degenerált esetet. A kapott rekurzió a Catalan-számoké ($C_{m} = \sum_{i=0}^{m-1} C_iC_{m-1-i}$), így indukcióval $T_n = C_{n-2}$.
:::

## 52. feladat

Hányféleképpen zárójelezhetünk egy $n$ tényezős szorzatot? A tényezők sorrendjét nem változtatjuk meg, és minden szorzást két tényező között végzünk; egy tényező lehet változó vagy már zárójelezett kifejezés.

**Megoldás.**

**$C_{n-1} = \dfrac1n\dbinom{2n - 2}{n - 1}$ féleképpen.**

*Rekurzió.* Legyen $P_n$ a zárójelezések száma. Az utoljára elvégzett szorzás az első $k$ és az utolsó $n - k$ tényező között történik ($1 \le k \le n - 1$), és a két oldal függetlenül zárójelezhető:
$$P_n = \sum_{k=1}^{n-1} P_k P_{n-k}, \qquad P_1 = 1.$$
$P_2 = 1$, $P_3 = 2$, $P_4 = 5$, … tehát $P_n = C_{n-1}$. (Kapcsolat az 51. feladattal: az $(n+1)$-szög háromszögelései bijekcióban vannak az $n$ tényezős zárójelezésekkel, $T_{n+1} = P_n$.)

*A zárt képlet.* A zárójelezés bijekcióban áll a $2(n-1)$ hosszú helyes zárójelsorozatokkal (Dyck-utakkal). Minden szorzásnak egy nyitó és egy záró zárójel felel meg; ez $n - 1$ pár.

Számoljuk meg a rossz sorozatokat: $n - 1$ nyitó és $n - 1$ záró zárójel, de valamely kezdőszeletben több a záró. Az első ilyen hely utáni részben cseréljük fel a zárójeleket (tükrözési elv). Ez bijekció a rossz sorozatok és az $n$ záró, $n - 2$ nyitó zárójelből álló összes sorozat között. Így a jó sorozatok száma ($m = n - 1$):
$$\binom{2m}{m} - \binom{2m}{m+1} = \frac{1}{m+1}\binom{2m}{m}.$$

::: elmelet
**Elméleti háttér — Catalan-számok és a tükrözési elv.** A helyes zárójelezések (Dyck-utak) számát úgy kapjuk, hogy az összes $m$ nyitó és $m$ záró zárójelből álló sorozatból ($\binom{2m}{m}$) levonjuk a rosszakat. Egy rossz sorozatban az első „túlcsorduló” hely utáni rész felcserélése (tükrözés) bijekció a rossz sorozatok és az $m+1$ záró, $m-1$ nyitó zárójelből álló sorozatok között. Így $C_m = \binom{2m}{m} - \binom{2m}{m+1} = \frac{1}{m+1}\binom{2m}{m}$.
:::

## 53. feladat (házi feladat)

Tekintsünk egy körasztal körül $n$ embert. Hány olyan részhalmaza van az embereknek, amelyben nincs két szomszédos ember?

**Megoldás.**

**$F_{n+1} + F_{n-1} = L_n$** (Lucas-szám), $n \ge 3$-ra.

A 39. feladat szerint egy $k$ hosszú *sorban* (út mentén) a nem szomszédos részhalmazok száma $F_{k+2}$. Tekintsük az 1. embert:

- **nincs a részhalmazban:** a többi $n - 1$ ember egy sort alkot, $F_{n+1}$ lehetőség;
- **benne van:** két szomszédja kimarad, a maradék $n - 3$ ember sort alkot, $F_{n-1}$ lehetőség.

Összesen $F_{n+1} + F_{n-1}$, például $n = 3$: $4$; $n = 4$: $7$; $n = 5$: $11$; $n = 6$: $18$. ($n = 1$-re $2$, $n = 2$-re $3$, ha a két ember szomszédos.)

::: elmelet
**Elméleti háttér — körből út kitüntetett elem szerint.** Körön a szomszédsági feltétel „körbeér”, ezért egy rögzített elem (az 1. ember) szerint két esetre bontunk; mindkét esetben a kör egy **útra** (sorra) egyszerűsödik, amelyre a 39. feladat rekurziója (Fibonacci) már érvényes. Ez a „kör felvágása” általános fogás.
:::

## 54. feladat (házi feladat)

Hányféleképpen ülhet le egy kerek asztal köré 5 házaspár, ha senki sem akar a hitvese mellett ülni?

**Megoldás.**

**$112\,512$ féleképpen** (az asztal körüli elforgatással egymásba vihető ültetéseket azonosnak tekintve; ha a székek meg vannak különböztetve, ennek 10-szerese, $1\,125\,120$).

Szita-formula. 10 ember kerek asztal körül $9!$ féleképpen ülhet. Ha $k$ rögzített házaspár mindegyike egymás mellett ül, minden ilyen párt egy blokknak tekintünk, amelyen belül 2 sorrend lehet. Így $10 - k$ objektumot ültetünk körbe: $(9 - k)!\, 2^k$ lehetőség. Ezért
$$\sum_{k=0}^{5} (-1)^k \binom5k 2^k (9 - k)!$$
$$= 362\,880 - 403\,200 + 201\,600 - 57\,600 + 9\,600 - 768 = 112\,512.$$

::: elmelet
**Elméleti háttér — szita körsorrendre.** A rossz esemény $A_i$: az $i$-edik házaspár egymás mellett ül. A metszetekben a szomszédos párok blokkokká ragaszthatók (blokkonként $2$ belső sorrend), és a $10 - k$ objektum körsorrendjeinek száma $(10 - k - 1)!$. A szita váltakozó előjelű összege adja a senki sem ül a hitvese mellett ültetések számát.
:::

## 55. feladat (házi feladat)

Mennyi $F_0 + F_2 + \dots + F_{2n}$?

**Megoldás.**

**$F_0 + F_2 + \dots + F_{2n} = F_{2n+1} - 1$.**

$F_{2k} = F_{2k+1} - F_{2k-1}$ ($k \ge 1$), így az összeg teleszkopikus:
$$\sum_{k=0}^{n} F_{2k} = 0 + \sum_{k=1}^n (F_{2k+1} - F_{2k-1}) = F_{2n+1} - F_1 = F_{2n+1} - 1.$$
(Ellenőrzés: $n = 2$: $0 + 1 + 3 = 4 = F_5 - 1$.)

::: elmelet
**Elméleti háttér — teleszkopikus összeg rekurzióból.** A rekurziót átrendezve ($F_{2k} = F_{2k+1} - F_{2k-1}$) minden tag két, egymástól kettővel arrébb levő Fibonacci-szám különbsége, és az összeg „összecsukódik”: csak az első és az utolsó tag marad.
:::

# Kombinatorika 1 – 4. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 56. feladat

Legyen a $G$ gráf csúcsainak halmaza $\{1, 2, \dots, 100\}$. Határozzuk meg $G$ éleinek és összefüggőségi komponenseinek számát, ha az éleket a következőképpen adjuk meg: $i$ és $j$ pontosan akkor van összekötve, ha

a) $i - j$ páratlan;

b) $i - j$ osztható 3-mal és $i \neq j$;

c) $|i - j| = 3$ vagy $|i - j| = 8$? (A három részben három különböző gráfról van szó.)

**Megoldás.**

a) $i - j$ páratlan $\iff$ $i$ és $j$ különböző paritású. A gráf a teljes páros gráf $K_{50,50}$: egyik osztály a páratlan, másik a páros számok. **Élek száma $50 \cdot 50 = 2500$, komponens 1.**

b) Az élek a mod 3 maradékosztályokon belül futnak, és egy osztályon belül bármely kettő össze van kötve. Három teljes gráf:

- az $1$ maradékú osztály $\{1, 4, \dots, 100\}$: 34 elem;
- a $2$ maradékú $\{2, \dots, 98\}$: 33 elem;
- a $0$ maradékú $\{3, \dots, 99\}$: 33 elem.

**Élek száma $\binom{34}{2} + 2\binom{33}{2} = 561 + 2 \cdot 528 = 1617$, komponens 3.**

c) $|i - j| = 3$ párból $97$ van ($i = 1, \dots, 97$), $|i - j| = 8$ párból $92$. **Élek száma $97 + 92 = 189$.**

**Komponens 1:** megmutatjuk, hogy minden $i$ össze van kötve $i + 1$-gyel.

- Ha $i \le 91$: $i \to i + 3 \to i + 6 \to i + 9 \to i + 1$ (lépések: $+3, +3, +3, -8$; minden csúcs $1$ és $100$ közé esik).
- Ha $i \ge 92$ (és $i \le 99$): $i \to i - 8 \to i - 5 \to i - 2 \to i + 1$ (lépések: $-8, +3, +3, +3$).

::: elmelet
**Elméleti háttér — élszám és komponensek.** Az élek számát a definiáló feltételt kielégítő párok közvetlen leszámlálásával kapjuk (például osztályonként teljes gráf: $\binom{m}{2}$ él). A komponensek a „van köztük séta” ekvivalenciareláció osztályai. Összefüggőség bizonyításához elég megmutatni, hogy minden $i$ és $i + 1$ között van séta: a tranzitivitás miatt ekkor bármely kettő között van. Ha az élek egy invariánst őriznek (b-ben a $3$-mal vett maradékot), akkor a komponensek ennek az invariánsnak az osztályain belül maradnak.
:::

## 57. feladat

Egy körmérkőzéses sakkversenyen 27-en indultak. Lehetett olyan pillanat, amikor mindenki pontosan 9 ellenfélen volt túl?

**Megoldás.**

**Nem.** Ha mindenki pontosan 9 meccsen lett volna túl, akkor a lejátszott meccsek gráfjában (27 csúcs, él = lejátszott meccs) minden fokszám 9 lenne. A fokszámok összege $27 \cdot 9 = 243$ páratlan volna. Ez lehetetlen, mert a fokszámösszeg az élszám kétszerese.

::: elmelet
**Elméleti háttér — kézfogási lemma.** Minden gráfban $\sum_v \deg(v) = 2|E|$, mert minden élt mindkét végpontjánál egyszer számolunk. Következmény: a fokszámösszeg páros, és a páratlan fokú csúcsok száma páros. Páratlan sok csúcsú gráf tehát nem lehet páratlan fokszámú reguláris.
:::

## 58. feladat

Mutass olyan négy, öt, illetve hat csúcsú egyszerű gráfot, ami izomorf a komplementerével! (Egy egyszerű $G$ gráf komplementere az a gráf, melynek csúcsai $G$ csúcsai, és két (különböző) csúcsot pontosan akkor köt össze él, ha $G$-ben nincs köztük él.)

**Megoldás.**

- **4 csúcs:** a $P_4$ út: $a - b - c - d$. Komplementerének élei $ac$, $ad$, $bd$, ez a $c - a - d - b$ út, tehát szintén $P_4$.
- **5 csúcs:** a $C_5$ kör. A komplementere az 5 átló, ami szintén 5 hosszú kör (az „ötágú csillag").
- **6 csúcs: nincs ilyen.** Önkomplementer gráfban $G$ és $\overline G$ együtt $\binom n2$ élt tartalmaz, és egyenlő sok élük van. Tehát $G$-nek $\frac{n(n-1)}{4}$ éle van, ami $n = 6$-ra $\frac{15}{2}$, nem egész. (Lásd a 69. feladatot is.)

::: elmelet
**Elméleti háttér — komplementer és izomorfia.** $G$ és $\overline{G}$ élhalmaza diszjunkt, uniójuk a teljes gráf $\binom n2$ éle. Izomorf gráfoknak ugyanannyi élük van, így egy önkomplementer gráfnak pontosan $\frac{n(n-1)}{4}$ éle van — ennek egésznek kell lennie (szükséges feltétel). A létezést egy konkrét izomorfizmus megadása igazolja (pl. $P_4$-nél az $a \mapsto c$, $b \mapsto a$, $c \mapsto d$, $d \mapsto b$ megfeleltetés éltartó $G$ és $\overline G$ között).
:::

## 59. feladat

Egy 6 pontú, egyszerű, összefüggő gráfban van 1, 2, 3, 4 és 5 fokú csúcs is. Adjuk meg az összes olyan értéket, ami a hatodik csúcs foka lehet!

**Megoldás.**

**A hatodik csúcs foka csak 3 lehet.**

- A fokszámösszeg $1 + 2 + 3 + 4 + 5 + x$ páros, így $x$ páratlan. Összefüggő gráfban nincs 0 fokú csúcs, és $x \le 5$, tehát $x \in \{1, 3, 5\}$.
- **$x = 5$ nem lehet:** két 5-ödfokú csúcs mindegyike mind a többi csúccsal szomszédos. Így minden csúcs foka legalább 2 lenne, de van 1-edfokú.
- **$x = 1$ nem lehet:** az 5-ödfokú csúcs mindenkivel szomszédos. A két 1-edfokú csúcsnak más szomszédja nincs. A 4-edfokú csúcs így legfeljebb az 5-ödfokúval, a 2-edfokúval és a 3-adfokúval lehet szomszédos: csak 3 szomszéd.
- **$x = 3$ megvalósítható:** legyenek a fokok $v_1 : 5$, $v_2 : 4$, $v_3, v_4 : 3$, $v_5 : 2$, $v_6 : 1$. Élek: $v_1$ mind az öt másikkal, valamint $v_2v_3$, $v_2v_4$, $v_2v_5$, $v_3v_4$. A gráf összefüggő, mert $v_1$ mindenkivel szomszédos.

::: elmelet
**Elméleti háttér — szükséges feltételek és konstrukció.** Fokszámsorozatoknál először a szükséges feltételeket használjuk a lehetséges értékek szűkítésére: paritás (kézfogási lemma), $0 < d \le n - 1$ (összefüggő, egyszerű), és a „mindenkivel szomszédos” csúcsok következményei (egy $(n-1)$-edfokú csúcs mellett nincs izolált csúcs, két ilyen mellett nincs elsőfokú). A megmaradt értéknél a létezést konstrukcióval igazoljuk.
:::

## 60. feladat

Bizonyítsuk be, hogy egy $n$ csúcsú, egyszerű $G$ gráfra az alábbi állítások közül bármely kettő ekvivalens egymással:

a) $G$ fa (azaz összefüggő és körmentes)

b) $G$ összefüggő és $n - 1$ éle van

c) $G$ körmentes és $n - 1$ éle van

d) $G$ minimálisan összefüggő gráf (azaz összefüggő, de bármely élét elhagyva már nem lenne az)

e) $G$ maximálisan körmentes gráf (azaz körmentes, de bármely két csúcsa közé élt húzva már nem lenne az)

f) $G$-ben bármely két csúcs között pontosan egy út vezet.

**Megoldás.**

Megmutatjuk, hogy mindegyik állítás ekvivalens az a)-val. Két segédállítás:

**1. lemma.** Minden legalább 2 csúcsú fában van elsőfokú csúcs (sőt kettő, ld. 61. a)). Vegyünk egy leghosszabb $v_0 v_1 \dots v_m$ utat ($m \ge 1$). $v_0$-nak nincs az úton kívüli szomszédja, különben az út meghosszabbítható lenne. Az úton csak $v_1$ lehet a szomszédja, mert $v_i$ ($i \ge 2$) szomszédsága kört adna. Tehát $\deg v_0 = 1$.

**2. lemma.** Az $n$ csúcsú fának $n - 1$ éle van. Indukció $n$ szerint. Egy elsőfokú csúcsot az élével együtt elhagyva $n - 1$ csúcsú fát kapunk: összefüggő marad, mert a levél nem belső pontja egyetlen útnak sem, és körmentes marad.

**a) $\Leftrightarrow$ f).**

- ($\Rightarrow$) Összefüggés miatt van út bármely két csúcs között. Ha két különböző $u$–$v$ út volna, a szétválásuk és az első újra-találkozásuk közti két szakasz kört alkotna.
- ($\Leftarrow$) Az utak létezése miatt $G$ összefüggő. Ha volna kör, annak két szomszédos csúcsa között két út vezetne: maga az él, és a kör többi része.

**a) $\Leftrightarrow$ d).** Összefüggő $G$-ben az $e = uv$ él elhagyása pontosan akkor tartja meg az összefüggőséget, ha $e$ rajta van egy körön. Ha $G - e$-ben van $u$–$v$ út, az $e$-vel kört ad. Fordítva: ha $e$ körön van, a kör többi része helyettesíti. Tehát egy összefüggő gráf pontosan akkor minimálisan összefüggő, ha egyik éle sincs körön, azaz körmentes.

**a) $\Leftrightarrow$ e).**

- ($\Rightarrow$) Fában bármely nem szomszédos $u, v$ között van út, ehhez az $uv$ élt hozzávéve kör keletkezik. Tehát a fa maximálisan körmentes.
- ($\Leftarrow$) Ha a körmentes $G$ nem volna összefüggő, két különböző komponense közé húzott él nem hozna létre kört, mert nincs még út a végpontjai között. Ez ellentmond a maximalitásnak.

**a) $\Rightarrow$ b), c):** a 2. lemma.

**b) $\Rightarrow$ a).** Amíg van kör, hagyjuk el egy körön levő élét: ez nem rontja el az összefüggőséget. Végül összefüggő, körmentes feszítő részgráfot, azaz fát kapunk, amelynek $n - 1$ éle van. Mivel $G$-nek is $n - 1$ éle volt, nem hagytunk el semmit, tehát $G$ körmentes.

**c) $\Rightarrow$ a).** Ha a körmentes $G$-nek $k$ komponense van, $n_1, \dots, n_k$ csúccsal, akkor mindegyik fa. Az élszám $\sum (n_i - 1) = n - k$. Ez $n - 1$, így $k = 1$: $G$ összefüggő.

Mivel mind a hat állítás ekvivalens a)-val, bármely kettő ekvivalens egymással. $\blacksquare$

::: elmelet
**Elméleti háttér — a fák jellemzési tétele.** A hat állítás a fa hat egyenértékű definíciója. A bizonyítás kulcslépései: (1) egy legalább $2$ csúcsú fának van levele (leghosszabb út végpontja); (2) levél letépése után fa marad, ebből indukcióval $|E| = n - 1$; (3) egy él pontosan akkor nem elvágó él, ha körön van; (4) két különböző út két csúcs között kört tartalmaz; (5) körmentes gráf komponensei fák, így $|E| = n - (\text{komponensek száma})$. Elég mindegyik állítást az a)-val ekvivalensnek látni (az ekvivalencia tranzitív).
:::

## 61. feladat

a) Bizonyítsuk be, hogy minden fában van legalább 2 elsőfokú csúcs!

b) Igazoljuk, hogy ha egy fában van $k$-adfokú csúcs, akkor legalább $k$ darab elsőfokú csúcs van benne!

c) Hány éle van egy $n$ pontú $k$ komponensű, körmentes egyszerű gráfnak?

**Megoldás.**

a) (Legalább 2 csúcsú fára.) Az $n$ csúcsú fa fokszámösszege $2(n - 1)$, és minden fok legalább 1. Ha legfeljebb egy elsőfokú csúcs volna, a fokszámösszeg legalább $1 + 2(n - 1) > 2(n - 1)$ lenne. (Vagy: egy leghosszabb út mindkét végpontja elsőfokú, ld. 60. feladat, 1. lemma.)

b) Legyen $L$ az elsőfokú csúcsok száma, $v$ a $k$-adfokú csúcs, $k \ge 2$. ($k = 1$-re az a) rész adja.) Mivel $\sum \deg = 2n - 2$,
$$\sum_{u} (\deg u - 2) = -2.$$
Az elsőfokú csúcsok $-1$-gyel járulnak hozzá, $v$ $(k - 2)$-vel, a többi csúcs ($\deg \ge 2$) nemnegatívval. Így $-2 \ge -L + (k - 2)$, azaz **$L \ge k$**. $\blacksquare$

(Szemléletesen: a $v$-ből induló $k$ él mindegyikén elindulva és a fában tovább haladva egy-egy különböző levélben kell véget érni.)

c) Mindegyik komponens fa: az $n_i$ csúcsú komponensnek $n_i - 1$ éle van. Az élszám $\sum_{i=1}^k (n_i - 1) =$ **$n - k$**.

::: elmelet
**Elméleti háttér — fokszámösszeg fában.** Egy $n$ csúcsú fában $\sum \deg = 2(n-1)$, vagyis $\sum (\deg u - 2) = -2$. Ebből az átlagos fok $2$ alatt van, így a $2$-nél nagyobb fokú csúcsok „többletét” levelek ellensúlyozzák: minden $k$-adfokú csúcs legalább $k - 2$ többletet jelent, amit legalább $k - 2 + 2 = k$ levél kompenzál. Erdő esetén komponensenként alkalmazzuk az $n_i - 1$ képletet.
:::

## 62. feladat

a) Mutasd meg, hogy bármely egyszerű gráfban van két csúcs, melyeknek ugyanannyi a foka! Igaz-e ez nem feltétlenül egyszerű gráfokra is?

b) Bizonyítsd be, hogy egy egyszerű gráfban a páratlan fokú csúcsok száma páros!

c) Melyek azok a gráfok, amelyekben bármely két élnek van közös végpontja?

**Megoldás.**

a) Legyen $n \ge 2$. A fokszámok a $\{0, 1, \dots, n - 1\}$ halmazból kerülnek ki. A $0$ és az $n - 1$ nem fordulhat elő egyszerre: az $(n - 1)$-edfokú csúcs mindenkivel szomszédos, így nincs izolált csúcs. Tehát $n$ csúcsra legfeljebb $n - 1$ különböző érték jut, és a skatulya-elv szerint két csúcs foka egyenlő.

**Nem egyszerű gráfra nem igaz.** Példa: csúcsok $a, b, c$, élek: $ab$ és két párhuzamos $bc$ él. Ekkor $\deg a = 1$, $\deg b = 3$, $\deg c = 2$.

b) $\sum_v \deg v = 2|E|$ páros. A páros fokú csúcsok összege páros, így a páratlan fokú csúcsok fokainak összege is páros. Ez csak úgy lehet, ha páros sok páratlan fokú csúcs van. $\blacksquare$

c) (Egyszerű gráfokra, az izolált csúcsoktól eltekintve.) **Csillagok (egy csúcs, amely minden élnek végpontja) és a háromszög.**

Ezek jók. Fordítva, tegyük fel, hogy nincs minden élen rajta levő közös csúcs. Legyen $e_1 = ab$. Nem minden él tartalmazza $a$-t, de kell olyan él, ami igen, különben minden él tartalmazná $b$-t, és $b$ közös csúcs volna. Legyen $e_2 = ac$, ahol $c \neq b$. Van $a$-t nem tartalmazó $e_3$ él; ez $e_1$-et és $e_2$-t is metszi, így $e_3 = bc$.

Bármely további él metszi $ab$-t, $bc$-t és $ca$-t is. Ehhez két végpontja $\{a, b, c\}$-ben kell legyen: egyetlen $\{a,b,c\}$-beli végpont legfeljebb két élet metsz a háromból. Egyszerű gráfban ez csak $ab$, $bc$ vagy $ca$ lehet. Tehát a gráf a háromszög.

(Nem egyszerű gráfban ezek többszörös élekkel, illetve a csillag középpontjában hurokélekkel is előfordulhatnak.)

::: elmelet
**Elméleti háttér — skatulyaelv fokszámokra és a kézfogási lemma.** a) Egyszerű $n$ csúcsú gráfban a fokok $\{0, \dots, n-1\}$-ből valók, de $0$ és $n - 1$ egyszerre nem fordulhat elő, így csak $n - 1$ lehetséges érték marad $n$ csúcsra (skatulyaelv). Többszörös élekkel a fok tetszőlegesen nagy lehet, ezért az érvelés összeomlik. b) A kézfogási lemma paritásos következménye. c) Esetszétválasztás: vagy van minden élen rajta levő csúcs (csillag), vagy a metszési feltétel egy háromszöget kényszerít ki, és utána minden további élnek a háromszög két csúcsát kellene összekötnie.
:::

## 63. feladat

Bizonyítsd be, hogy egy hattagú társaságban van három ember, akik ismerik egymást, vagy van három olyan ember, akik közül senki sem ismeri a másik kettőt!

**Megoldás.**

Gráffal: 6 csúcs (emberek), él = ismeretség. Legyen $v$ egy ember; az 5 másik közül a skatulya-elv szerint legalább 3-at ismer, vagy legalább 3-at nem ismer.

- **Legalább 3-at ismer**, legyenek $x, y, z$. Ha közülük két ember ismeri egymást, azok $v$-vel együtt három kölcsönös ismerős. Ha nem, akkor $x, y, z$ közül senki sem ismeri a másik kettőt.
- **Legalább 3-at nem ismer:** ugyanez a komplementer gráfban, a szerepek felcserélésével. $\blacksquare$

(Ez az $R(3, 3) \le 6$ Ramsey-állítás. 5 emberre nem igaz: az ötszög és komplementere is háromszögmentes.)

::: elmelet
**Elméleti háttér — Ramsey-típusú érvelés skatulyaelvvel.** Egy csúcs $5$ „élét” két osztályba soroljuk (ismeri / nem ismeri): a skatulyaelv szerint valamelyik osztályban legalább $\lceil 5/2 \rceil = 3$ van. Ezután a kapott hármason belüli kapcsolatokat vizsgáljuk: bármelyik eset jó. A szimmetria (gráf $\leftrightarrow$ komplementer) miatt elég az egyik esetet végiggondolni. Az élesség ellenpéldája ($C_5$) mutatja, hogy $6$ a legkisebb ilyen létszám.
:::

## 64. feladat

a) Mutassuk meg, hogy ha egy véges gráf minden pontjának foka legalább kettő, akkor a gráfban van kör! Igaz-e, hogy bármely pont benne van egy körben? (És mi a helyzet végtelen gráfok esetén?)

b) Mutassuk meg, hogy ha egy véges egyszerű gráf minden pontjának foka legalább $k$, akkor a gráfban van olyan kör, mely legalább $k + 1$ csúcsot tartalmaz!

**Megoldás.**

a) Ha van hurokél vagy többszörös él, az már kör (1, ill. 2 hosszú). Különben vegyünk egy leghosszabb $P = v_0 v_1 \dots v_m$ utat; véges gráfban ilyen van. $v_0$-nak $v_1$-en kívül van még szomszédja, mert foka legalább 2. Ez a szomszéd az úton van (különben $P$ meghosszabbítható lenne), legyen $v_i$, $i \ge 2$. Ekkor $v_0 v_1 \dots v_i v_0$ kör. $\blacksquare$

**Nem minden pont van körön.** Két háromszöget kössünk össze egy $w$ csúcson átmenő 2 hosszú úttal. Minden fok legalább 2, de $w$ nincs körön: mindkét éle elvágó él.

**Végtelen gráfokra az állítás hamis:** a kétirányban végtelen út ($\mathbb{Z}$, szomszédos egészek összekötve) minden csúcsa másodfokú, de nincs benne kör.

b) Legyen $k \ge 2$, és $P = v_0 v_1 \dots v_m$ egy leghosszabb út. $v_0$ minden szomszédja az úton van (maximalitás). Egyszerű gráfban ezek különböző csúcsok, és legalább $k$ darab van, így a legtávolabbi, $v_i$ indexére $i \ge k$. A $v_0 v_1 \dots v_i v_0$ kör $i + 1 \ge k + 1$ csúcsot tartalmaz. $\blacksquare$

::: elmelet
**Elméleti háttér — leghosszabb út módszer.** Véges gráfban van leghosszabb út; ennek végpontja **minden** szomszédja az úton van (különben meghosszabbítható volna). Ha a végpont foka legalább $2$ (illetve $k$), akkor van szomszédja az úton „messzebb” is, és a visszakötés kört ad, amelynek hossza a szomszéd indexével becsülhető. Végtelen gráfban nincs garantáltan leghosszabb út, ezért ott az érvelés nem működik.
:::

## 65. feladat

Mutasd meg, hogy ha $G$ tetszőleges egyszerű gráf, akkor $G$ és $\overline{G}$ ($G$ komplementere) közül legalább az egyik összefüggő! Lehet-e $G$ és $\overline{G}$ is összefüggő, ha a csúcsok száma legalább kettő?

**Megoldás.**

Tegyük fel, hogy $G$ nem összefüggő. Megmutatjuk, hogy $\overline G$ összefüggő. Legyen $u, v$ két csúcs.

- Ha $G$ különböző komponenseiben vannak, akkor $G$-ben nem szomszédosak, tehát $\overline G$-ben igen.
- Ha $G$ ugyanazon komponensében vannak, legyen $w$ egy másik komponensbeli csúcs. Ekkor $uw, vw \in E(\overline G)$, így $u - w - v$ út $\overline G$-ben.

**Lehet mindkettő összefüggő, ha $n \ge 4$**, például a $P_4$ út: önkomplementer (58. feladat). Általában a $P_n$ út komplementere $n \ge 4$-re összefüggő.

$n = 2$ és $n = 3$ esetén nem lehet. $n = 2$-re egy él és az üres gráf a két lehetőség. $n = 3$-ra az összefüggő gráfok a $P_3$ és a $K_3$; komplementerük $K_2 + K_1$, illetve az üres gráf, egyik sem összefüggő.

::: elmelet
**Elméleti háttér — komplementer és távolság.** Ha $G$ nem összefüggő, akkor a különböző komponensek közötti összes pár $\overline G$-ben él, és ugyanabban a komponensben levő csúcsok egy másik komponensbeli csúcson át $2$ lépésben elérik egymást $\overline G$-ben. Mindkettő akkor lehet összefüggő, ha a csúcsszám elég nagy ahhoz, hogy egy út és komplementere is „átérje” a gráfot.
:::

## 66. feladat

Igazold, hogy ha $G$ összefüggő gráf, akkor $G$-ben bármely két leghosszabb útnak van közös csúcsa! Igaz-e az állítás nem összefüggő gráfra is?

**Megoldás.**

Tegyük fel, hogy $P$ és $Q$ két leghosszabb út (hosszuk $L$ él), amelyeknek nincs közös csúcsa. Az összefüggőség miatt van út $P$ egy csúcsából $Q$ egy csúcsába. Vegyük a legrövidebbet, $R$-t, a $p \in P$ és $q \in Q$ végpontokkal. Ennek belső csúcsai nincsenek $P \cup Q$-ban, és hossza legalább 1.

$p$ két részre vágja $P$-t; a hosszabbik rész, $P'$ hossza legalább $L/2$. Ugyanígy $Q$-nak van legalább $L/2$ hosszú, $q$-ban végződő $Q'$ része. A $P' + R + Q'$ út hossza legalább $\frac L2 + 1 + \frac L2 = L + 1$, ellentmondás. $\blacksquare$

**Nem összefüggő gráfra nem igaz:** két diszjunkt él (2 komponens). Mindkettő leghosszabb út, és nincs közös csúcsuk.

::: elmelet
**Elméleti háttér — szélsőérték-elv (extremális érvelés).** Feltesszük az állítás ellenkezőjét, és a feltételezett objektumokból (két diszjunkt leghosszabb út és egy összekötő út) **hosszabb** objektumot építünk, ami ellentmond a maximalitásnak. A kulcs: egy út bármely belső pontja két részre osztja, amelyek közül a hosszabbik legalább fél hosszúságú.
:::

## 67. feladat

Van-e olyan egyszerű gráf, amelyben a csúcsok foka

a) $3, 3, 3, 2, 2, 2, 1, 1, 1$? b) $6, 6, 5, 4, 4, 3, 2, 2, 1$? c) $7, 7, 7, 6, 6, 6, 5, 5, 5$? d) $1, 3, 3, 4, 5, 6, 6$?

e) $5, 2, 2, 2, 1$? f) $5, 5, 2, 2, 1, 1$? g) $6, 6, 6, 6, 3, 3, 2, 2$?

**Megoldás.**

Hasznos eszközök:

- a fokszámösszeg páros;
- egyszerű $n$ csúcsú gráfban a fok legfeljebb $n - 1$;
- a Havel–Hakimi-algoritmus: a legnagyobb $d$ fokú csúcsot elhagyva a következő $d$ legnagyobb fokot 1-gyel csökkentjük, és a sorozat pontosan akkor realizálható, ha a kapott sorozat az;
- az Erdős–Gallai-feltétel: $\sum_{i \le k} d_i \le k(k-1) + \sum_{i > k}\min(d_i, k)$ minden $k$-ra, csökkenő sorrendben.

a) **Van.** Havel–Hakimi (minden lépésben a legnagyobb fokú csúcsot hagyjuk el, és a következő ennyi fokot csökkentjük, majd rendezünk):
$$3,3,3,2,2,2,1,1,1 \to 2,2,2,2,1,1,1,1 \to 2,1,1,1,1,1,1 \to 1,1,1,1,0,0.$$
A maradék négy 1-es két független él, tehát a sorozat realizálható.

Konkrét példa: egy $C_6$ kör, amelynek három (nem szomszédos) csúcsához egy-egy függő élt kötünk. A fokok $3,3,3,2,2,2,1,1,1$.

b) **Nincs:** a fokszámösszeg $33$ páratlan.

c) **Van.** A komplementer fokai ($8 - d$): $1,1,1,2,2,2,3,3,3$. Ilyen gráf: két diszjunkt háromszög, az egyik háromszög csúcsaihoz egy-egy függő él a három maradék csúcsból. (Az egyik háromszög csúcsai 3-adfokúak, a másiké 2-odfokúak, a függő csúcsok 1-edfokúak.) Ennek komplementere a keresett gráf.

d) **Nincs:** 7 csúcs, két 6-odfokú csúcs mindenkivel szomszédos, így minden fok legalább 2. Az 1-es fok lehetetlen.

e) **Nincs:** 5 csúcson a fok legfeljebb 4.

f) **Nincs:** 6 csúcs, két 5-ödfokú csúcs miatt minden fok legalább 2.

g) **Nincs.** Az Erdős–Gallai-feltétel $k = 4$-re sérül:
$$6 + 6 + 6 + 6 = 24 > 4 \cdot 3 + (3 + 3 + 2 + 2) = 22.$$
Szemléletesen: a négy 6-odfokú csúcs egymás között legfeljebb 6 élt, azaz 12 fokot használ el. Kifelé még $24 - 12 = 12$ élvég kellene, de a többi négy csúcs fokainak összege csak $10$.

::: elmelet
**Elméleti háttér — fokszámsorozat realizálhatósága.** Egyszerű gráfra a szükséges és elégséges feltétel az **Erdős–Gallai-tétel**: csökkenő $d_1 \ge \dots \ge d_n$ esetén $\sum d_i$ páros, és minden $k$-ra $\sum_{i \le k} d_i \le k(k-1) + \sum_{i>k}\min(d_i, k)$ (a $k$ legnagyobb fokú csúcs egymás közt legfeljebb $k(k-1)$ fokot „nyel el”, a többi csúcs mindegyike legfeljebb $\min(d_i, k)$ élt fogadhat tőlük). Algoritmikus változat a **Havel–Hakimi-tétel**: a sorozat pontosan akkor realizálható, ha a legnagyobb elem elhagyásával és a következő $d_1$ elem $1$-gyel csökkentésével kapott sorozat az. A komplementerre váltás ($d \mapsto n - 1 - d$) gyakran egyszerűbb sorozatot ad.
:::

## 68. feladat

Melyik az a legnagyobb $X$ szám, melyre a $8, 8, 7, 5, 4, 4, 3, 2, 1, X$ számsorozat realizálható egy egyszerű gráf fokszámsorozataként?

**Megoldás.**

**$X = 6$.**

- 10 csúcs van, így $X \le 9$. A fokszámösszeg $42 + X$ páros, tehát $X$ páros: $X \le 8$.
- **$X = 8$ nem jó.** A sorozat $8,8,8,7,5,4,4,3,2,1$, és az Erdős–Gallai-feltétel $k = 4$-re sérül:
$$8 + 8 + 8 + 7 = 31 > 4 \cdot 3 + (4 + 4 + 4 + 3 + 2 + 1) = 30.$$
  (A $k = 3$ eset még éppen teljesül: $24 \le 3 \cdot 2 + (3 + 3 + 3 + 3 + 3 + 2 + 1) = 24$.) Szemléletesen: a négy legnagyobb fokú csúcs egymás közt legfeljebb $6$ élt, azaz $12$ fokot „nyel el”, kifelé tehát legalább $31 - 12 = 19$ él kellene, de a maradék hat csúcs mindegyike legfeljebb $\min(d_i, 4)$ élt fogadhat tőlük, összesen $18$-at.
- **$X = 6$ jó.** A sorozat $8,8,7,6,5,4,4,3,2,1$. Havel–Hakimi:
$$8,8,7,6,5,4,4,3,2,1 \to 7,6,5,4,3,3,2,1,1 \to 5,4,3,2,2,1,1,0 \to 3,2,1,1,1,0,0 \to 1,1,0,0,0,0,$$
  ami egyetlen él, realizálható.

::: elmelet
**Elméleti háttér — Erdős–Gallai és Havel–Hakimi együtt.** A maximum megtalálásához szűkítjük a jelölteket (fok $\le n - 1$, paritás), a nagyobb jelölteket egy sérülő Erdős–Gallai-egyenlőtlenséggel kizárjuk (ehhez a megfelelő $k$-t kell megtalálni: itt $k = 4$), a legnagyobb megmaradót pedig Havel–Hakimi-lépésekkel igazoljuk. A Havel–Hakimi-tétel miatt elég, ha a redukált sorozat realizálható: a lépéseket visszafelé végrehajtva a gráf meg is konstruálható.
:::

## 69. feladat

Igazold, hogy minden önkomplementer gráf összefüggő és csúcsszáma 4-gyel osztva 0 vagy 1 maradékot ad! *Önkomplementer:* olyan egyszerű gráf, amely izomorf a komplementerével.

**Megoldás.**

**Összefüggőség:** a 65. feladat szerint $G$ és $\overline G$ közül az egyik összefüggő. Mivel izomorfak, mindkettő az.

**Csúcsszám:** $G$ és $\overline G$ élhalmaza diszjunkt, uniójuk $K_n$ élhalmaza, és élszámuk egyenlő. Így $|E(G)| = \frac{n(n-1)}{4}$, tehát $4 \mid n(n - 1)$. $n$ és $n - 1$ közül pontosan egy páros, annak oszthatónak kell lennie 4-gyel. Tehát $n \equiv 0$ vagy $n \equiv 1 \pmod 4$. $\blacksquare$

::: elmelet
**Elméleti háttér — izomorfia-invariánsok.** Izomorf gráfoknak ugyanazok az izomorfia-invariáns tulajdonságaik (élszám, összefüggőség, fokszámsorozat stb.). Így ha $G \cong \overline G$, akkor $|E(G)| = |E(\overline G)| = \frac{1}{2}\binom n2$, és az összefüggőség is egyszerre teljesül vagy nem teljesül. Az egészrészfeltétel számelméleti: $4 \mid n(n-1)$, és két szomszédos szám közül csak az egyik páros.
:::

## 70. feladat

a) Legyen $G$ egy $n$ csúcsú egyszerű gráf, melyben minden pont foka legalább $(n - 1)/2$. Mutassuk meg, hogy $G$ összefüggő! Mutassunk ellenpéldát nem egyszerű $G$ esetén!

b) Legyen $G$ egy $n$ csúcsú egyszerű gráf, melyben bármely két nem szomszédos pont fokszámának összege legalább $n - 1$. Mutassuk meg, hogy $G$ összefüggő. És ha $G$ nem egyszerű?

**Megoldás.**

a) Legyen $u, v$ két nem szomszédos csúcs. Szomszédságaik $V \setminus \{u, v\}$-ben vannak, ami $n - 2$ elemű, és
$$|N(u)| + |N(v)| \ge \frac{n-1}{2} + \frac{n-1}{2} = n - 1 > n - 2.$$
Tehát van közös szomszédjuk, azaz bármely két csúcs távolsága legfeljebb 2, és $G$ összefüggő. $\blacksquare$

**Nem egyszerű gráfra hamis.** Két csúcs, mindegyiken egy hurokél ($n = 2$, a fokok $2 \ge \frac12$), de nincs köztük él. Nagyobb példa: két diszjunkt, sok párhuzamos élt tartalmazó komponens.

b) Ugyanaz a bizonyítás: két nem szomszédos $u, v$-re $|N(u)| + |N(v)| = \deg u + \deg v \ge n - 1 > n - 2$, így van közös szomszéd. $\blacksquare$

**Nem egyszerű gráfra ez is hamis**, ugyanazzal a példával: a két hurkos csúcs nem szomszédos, fokszámösszegük $4 \ge 1$, és a gráf nem összefüggő. (A bizonyítás ott bukik el, hogy a fokszám nem egyezik a szomszédok számával.)

::: elmelet
**Elméleti háttér — közös szomszéd skatulyaelvvel.** Két nem szomszédos csúcs szomszédsága a maradék $n - 2$ csúcs között van. Ha a két szomszédság mérete együtt nagyobb $n - 2$-nél, a skatulyaelv szerint van közös elemük: a két csúcs távolsága $2$. Ha bármely két csúcs távolsága legfeljebb $2$, a gráf összefüggő. Egyszerű gráfban a fok egyenlő a szomszédok számával — hurok- és többszörös élekkel ez már nem igaz, ezért ott az érvelés megbukik.
:::

## 71. feladat

Adott négy darab egyenként ötcsúcsú fa, négy páronként diszjunkt csúcshalmazon. A négy fában szereplő összesen 20 csúcs közül néhány összekötésével hány különböző módon egészíthető ki ez a négy fa egyetlen nagy fává, ha a csúcsokat címkézettnek tekintjük?

**Megoldás.**

**$5^4 \cdot 20^2 = 250\,000$ féleképpen.**

Pontosan 3 új élt kell behúzni, és ezeknek a négy fát (mint „szuper-csúcsokat") fává kell összekötniük. Általános tétel: $k$ komponens, $n_1, \dots, n_k$ csúccsal, összesen $n$ csúcs, pontosan
$$n_1 n_2 \cdots n_k \cdot n^{k-2}$$
módon köthető össze egyetlen fává.

*Indoklás.* Rögzítsük, milyen fát alkotnak a komponensek egymás között. Ha az $i$-edik komponens foka ebben a fában $d_i$, ilyen fa a Prüfer-kód szerint $\frac{(k-2)!}{\prod (d_i - 1)!}$ van. Az $i$-edik komponensből induló $d_i$ él végpontját $n_i^{d_i}$ féleképpen választhatjuk. Összegezve a multinomiális tétellel:
$$\sum_{d_1 + \dots + d_k = 2k - 2} \frac{(k-2)!}{\prod(d_i - 1)!}\prod n_i^{d_i} = \prod n_i \cdot (n_1 + \dots + n_k)^{k-2}.$$

Itt $k = 4$, $n_i = 5$, $n = 20$: $5^4 \cdot 20^2 = 625 \cdot 400 = 250\,000$.

::: elmelet
**Elméleti háttér — Cayley-tétel általánosítása.** A Cayley-tétel ($n^{n-2}$ címkézett fa) Prüfer-kódos bizonyításából az is kiolvasható, hogy adott $d_1, \dots, d_k$ fokszámú címkézett fák száma $\frac{(k-2)!}{\prod (d_i - 1)!}$ (a $i$ címke pontosan $d_i - 1$-szer szerepel a kódban — ismétléses permutáció). Ha a „szuper-csúcsok” komponensek, minden él végpontját a komponensen belül is meg kell választani ($n_i$-féle), és a multinomiális tétel összegzi az eseteket.
:::

## 72. feladat (házi feladat)

Elhelyezhető-e 15 ló egy $100 \times 100$-as sakktáblára úgy, hogy mindegyik

a) pontosan három másik lovat üssön?

b) pontosan kettő másik lovat üssön?

**Megoldás.**

Tekintsük azt a gráfot, amelynek csúcsai a 15 ló, és két ló között akkor van él, ha ütik egymást.

a) **Nem.** A gráf 3-reguláris lenne 15 csúcson, így a fokszámösszeg $45$ páratlan volna.

b) **Nem.** Ha mindenki pontosan két másikat üt, a gráf 2-reguláris, azaz diszjunkt körök uniója. A ló mindig ellenkező színű mezőre lép, ezért a gráf páros: minden él egy fehér és egy fekete mező között fut. Így minden köre páros hosszú, és a körök összes csúcsszáma páros. 15 páratlan, ellentmondás.

::: elmelet
**Elméleti háttér — reguláris és páros gráfok.** a) A kézfogási lemma szerint páratlan sok csúcsú gráf nem lehet páratlan fokú reguláris. b) A $2$-reguláris gráfok pontosan a diszjunkt körök uniói. A lóugrás-gráf **páros** (kétszínezhető a sakktábla színezésével), páros gráfban pedig minden kör páros hosszú (a színek váltakoznak). Így a csúcsszám, mint páros számok összege, páros.
:::

## 73. feladat (házi feladat)

Legyen $k \ge 2$. Az $n$ csúcsú $G$ egyszerű gráfnak legalább $(k - 1)n$ éle van. Bizonyítsd be, hogy ekkor van $G$-ben legalább $k + 1$ hosszú kör.

**Megoldás.**

Hagyjunk el ismételten egy-egy legfeljebb $(k - 1)$-edfokú csúcsot (a pillanatnyi gráfban), amíg van ilyen. Minden lépés legfeljebb $k - 1$ élt töröl.

Ha a folyamat az összes csúcsot elhagyná, összesen legfeljebb $(k - 1)(n - 1)$ élt törölnénk: az utolsó csúcs már izolált. Ez kevesebb, mint $(k - 1)n \le |E(G)|$, ellentmondás.

Tehát a folyamat egy nem üres $H$ részgráfnál áll meg, amelyben minden fok legalább $k$. A 64. b) feladat szerint $H$-ban, így $G$-ben is van legalább $k + 1$ csúcsú, azaz legalább $k + 1$ hosszú kör. $\blacksquare$

::: elmelet
**Elméleti háttér — magas minimális fokú részgráf (degeneráltság).** Ha egy gráfnak „sok” éle van (legalább $(k-1)n$), akkor ismételten elhagyva a $k$-nál kisebb fokú csúcsokat nem fogyhat el minden él, így marad egy nem üres részgráf, amelyben minden fok legalább $k$. Erre már alkalmazható a leghosszabb út módszer (64. b), amely legalább $k + 1$ hosszú kört ad.
:::

## 74. feladat (házi feladat)

Egy összefüggő gráfban minden fokszám páros. Bizonyítsd be, hogy ha kitöröljük egy élét, továbbra is összefüggő marad.

**Megoldás.**

Hagyjuk el az $e = uv$ élt. Tegyük fel, hogy $G - e$ nem összefüggő, és legyen $C$ az $u$-t tartalmazó komponense. Ekkor $v \notin C$, különben $e$ elhagyása nem bontaná szét a gráfot.

$C$-ben $u$ foka $\deg_G u - 1$, ami páratlan, minden más csúcs foka változatlan, tehát páros. Így $C$-ben pontosan egy páratlan fokú csúcs van. Ez ellentmond annak, hogy minden gráfban páros sok páratlan fokú csúcs van (62. b)). Tehát $G - e$ összefüggő. $\blacksquare$

(Másképp: $G$-ben van Euler-kör. Ebből $e$-t elhagyva egy Euler-vonal marad, ami minden élt és így minden csúcsot bejár.)

::: elmelet
**Elméleti háttér — paritás komponensenként.** A kézfogási lemma *minden* gráfra, így egy komponensre (mint önálló gráfra) is érvényes: minden komponensben páros sok páratlan fokú csúcs van. Egy él törlése pontosan két csúcs fokát változtatja meg $1$-gyel; ha a két végpont különböző komponensbe kerülne, mindkét komponensben egy-egy páratlan fokú csúcs lenne — ellentmondás.
:::
