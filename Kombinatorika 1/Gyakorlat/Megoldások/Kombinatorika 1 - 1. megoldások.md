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
