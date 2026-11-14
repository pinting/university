<!-- Generated file, do not edit! Source: Kombinatorika 1/Gyakorlat/Megoldások/, regenerate with: make concat -->

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

# Kombinatorika 1 – 5. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 75. feladat

Adott egy véges egyszerű gráf. Mutasd meg, hogy a csúcsai két színnel színezhetőek úgy, hogy az élek legalább fele különböző színű csúcsokat kössön össze.

**Megoldás.**

Nevezzük egy élt **jónak**, ha a két végpontja különböző színű, és **rossznak**, ha azonos színű. A csúcsok $2$-színezéseinek száma véges ($2^n$), tehát van olyan színezés, amelyben a jó élek száma **maximális**. Megmutatjuk, hogy ez megfelel.

Legyen $v$ tetszőleges csúcs, és jelölje $j(v)$, illetve $r(v)$ a $v$-re illeszkedő jó, illetve rossz élek számát. Ha $r(v) > j(v)$ volna, akkor $v$ színét átváltva a $v$-re illeszkedő rossz élek jókká, a jók rosszakká válnának, a többi él nem változna. A jó élek száma így $r(v) - j(v) > 0$-val nőne, ellentmondásban a maximalitással. Tehát minden csúcsra $j(v) \ge r(v)$.

Összegezzük ezt az összes csúcsra! Minden jó él két végpontjánál is jó élként számít, így $\sum_v j(v) = 2J$, ahol $J$ a jó élek száma; ugyanígy $\sum_v r(v) = 2R$. Tehát $2J \ge 2R$, azaz $J \ge R$, és mivel $J + R = |E|$, kapjuk, hogy $J \ge \frac{|E|}{2}$. $\blacksquare$

::: elmelet
**Elméleti háttér — szélsőérték-elv és helyi javítás.** Ha egy véges halmazon (itt a színezéseken) egy mennyiséget maximalizálunk, akkor a maximumban egyetlen „helyi lépés” (egy csúcs átszínezése) sem javíthat. Ez a helyi feltétel ($j(v) \ge r(v)$ minden csúcsra) a fokszámok összegzésével (kézfogási lemma: minden él két végpontnál számít) globális állítássá válik. Ugyanez a módszer algoritmust is ad: amíg van olyan csúcs, amelynél a rossz élek vannak többségben, színezzük át — minden lépés növeli a jó élek számát, tehát legfeljebb $|E|$ lépés után megállunk. (Egy másik bizonyítás: véletlen színezésnél minden él $\frac12$ valószínűséggel jó, így a jó élek várható száma $\frac{|E|}{2}$, tehát van olyan színezés, amelyben legalább ennyi.)
:::

## 76. feladat

a) Hány éle van annak a 100 csúcsú gráfnak, melynek 5 komponense van, melyek mindegyike fa? Általában hány éle van egy $n$ csúcsú, $k$ komponensű körmentes gráfnak?

b) Mutass két olyan számozott fát, melyek nem azonosak, de izomorfak!

c) Egy fa Prüfer-kódja csupa különböző számot tartalmaz. Hogy néz ki a fa?

**Megoldás.**

a) Ha a komponensek $n_1, \dots, n_k$ csúcsú fák ($n_1 + \dots + n_k = n$), akkor az $i$-edik komponensnek $n_i - 1$ éle van, így az élek száma
$$\sum_{i=1}^k (n_i - 1) = n - k.$$
Egy körmentes gráf komponensei fák, tehát **$n$ csúcsú, $k$ komponensű körmentes gráfnak $n - k$ éle van**. A konkrét esetben: **$100 - 5 = 95$ él.**

b) Például a $\{1, 2, 3\}$ csúcshalmazon az $1 - 2 - 3$ út (élei $\{1,2\}, \{2,3\}$) és a $2 - 1 - 3$ út (élei $\{1,2\}, \{1,3\}$). Mindkettő $3$ csúcsú út, tehát izomorfak, de az élhalmazuk különböző, így számozott fákként nem azonosak. (Az első fában a $2$, a másodikban az $1$ a középső csúcs.)

c) A Prüfer-kódban az $i$ csúcs pontosan $\deg(i) - 1$-szer szerepel. Ha a kód $n - 2$ eleme csupa különböző, akkor $n - 2$ csúcs pontosan egyszer szerepel, ezek foka $2$; a maradék $2$ csúcs nem szerepel, ezek levelek. **A fa tehát egy út** (egy fa, amelynek minden csúcsa legfeljebb másodfokú, út), és a kódban éppen az út belső csúcsai szerepelnek. Megfordítva, minden út kódja csupa különböző számból áll, mert minden belső csúcs foka $2$. (A kód a belső csúcsokat általában nem az úton elfoglalt sorrendjükben sorolja fel.)

::: elmelet
**Elméleti háttér — erdők élszáma és a Prüfer-kód fokszám-tulajdonsága.** Egy fának eggyel kevesebb éle van, mint csúcsa; körmentes gráfra (erdőre) ebből komponensenként összegezve $|E| = n - k$. Megfordítva, egy $n$ csúcsú, $n - k$ élű gráf pontosan akkor körmentes, ha $k$ komponense van. A Prüfer-kódnál a kulcs: az $i$ szám annyiszor kerül a kódba, ahányszor egy szomszédját letépjük, és ez $\deg(i) - 1$ — így a kódból azonnal leolvasható a fokszámsorozat, és a levelek pontosan a kódban nem szereplő csúcsok. Az „izomorf” és az „azonos” (számozott fáknál: ugyanaz az élhalmaz) fogalmát gondosan meg kell különböztetni: a Cayley-tétel ($n^{n-2}$) a számozott fákat számolja, nem az izomorfia-osztályokat.
:::

## 77. feladat

Határozd meg az alábbi fák Prüfer-kódját!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \begin{scope}
    \node[pt, label=above:{4}] (4) at (0, 2) {};
    \node[pt, label=above:{8}] (8) at (1, 2) {};
    \node[pt, label=left:{5}] (5) at (0, 1) {};
    \node[pt, label=above right:{1}] (1) at (1, 1) {};
    \node[pt, label=right:{7}] (7) at (2, 1) {};
    \node[pt, label=left:{6}] (6) at (0, 0) {};
    \node[pt, label=above:{2}] (2) at (1, 0) {};
    \node[pt, label=right:{3}] (3) at (2, 0) {};
    \draw (4) -- (1); \draw (8) -- (1); \draw (5) -- (1); \draw (1) -- (7);
    \draw (5) -- (6); \draw (5) -- (2); \draw (2) -- (3);
  \end{scope}
  \begin{scope}[xshift=5.2cm, yshift=0.6cm]
    \node[pt, label=above:{6}] (6) at (-1, 0.6) {};
    \node[pt, label=below:{5}] (5) at (-1, -0.6) {};
    \node[pt, label=below:{4}] (4) at (0, 0) {};
    \node[pt, label=above:{3}] (3) at (1, 0) {};
    \node[pt, label=right:{7}] (7) at (1, -0.8) {};
    \node[pt, label=below right:{2}] (2) at (2, 0) {};
    \node[pt, label=right:{8}] (8) at (2, -0.8) {};
    \node[pt, label=right:{1}] (1) at (3, 0) {};
    \node[pt, label=right:{9}] (9) at (1.5, 0.8) {};
    \node[pt, label=right:{11}] (11) at (1.0, 1.5) {};
    \node[pt, label=right:{10}] (10) at (2.4, 0.8) {};
    \draw (6) -- (4); \draw (5) -- (4); \draw (4) -- (3); \draw (3) -- (7); \draw (3) -- (2);
    \draw (2) -- (8); \draw (2) -- (1); \draw (2) -- (9); \draw (9) -- (11); \draw (2) -- (10);
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Megoldás.**

**Bal oldali fa** ($n = 8$, a kód $6$ hosszú). Élei: $\{1,4\}, \{1,8\}, \{1,5\}, \{1,7\}, \{5,6\}, \{5,2\}, \{2,3\}$. Kezdetben a levelek: $3, 4, 6, 7, 8$. Mindig a legkisebb levelet tépjük le, és a szomszédját jegyezzük fel:

| levél (mit) | 3 | 2 | 4 | 6 | 5 | 7 | *1* |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| szomszéd (hova) | **2** | **5** | **1** | **5** | **1** | **1** | *8* |

(A $3$ letépése után a $2$ levéllé válik és ő a legkisebb; a $6$ letépése után az $5$ válik levéllé.) **A Prüfer-kód: $(2, 5, 1, 5, 1, 1)$.**

*Ellenőrzés:* $\deg(1) = 4$ és az $1$ háromszor szerepel; $\deg(5) = 3$, kétszer; $\deg(2) = 2$, egyszer; a levelek nem szerepelnek.

**Jobb oldali fa** ($n = 11$, a kód $9$ hosszú). Élei: $\{4,6\}, \{4,5\}, \{4,3\}, \{3,7\}, \{3,2\}, \{2,8\}, \{2,1\}, \{2,9\}, \{9,11\}, \{2,10\}$. Kezdetben a levelek: $1, 5, 6, 7, 8, 10, 11$.

| levél (mit) | 1 | 5 | 6 | 4 | 7 | 3 | 8 | 10 | 2 | *9* |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| szomszéd (hova) | **2** | **4** | **4** | **3** | **3** | **2** | **2** | **2** | **9** | *11* |

**A Prüfer-kód: $(2, 4, 4, 3, 3, 2, 2, 2, 9)$.**

*Ellenőrzés:* $\deg(2) = 5$, a $2$ négyszer szerepel; $\deg(3) = \deg(4) = 3$, kétszer-kétszer; $\deg(9) = 2$, egyszer.

::: elmelet
**Elméleti háttér — a Prüfer-kódolás.** Egy $n \ge 2$ csúcsú számozott fából $n - 2$-szer letépjük a **legkisebb sorszámú levelet**, és feljegyezzük a **szomszédját**. Letépés után új levelek keletkezhetnek (itt a $2$, az $5$, a $4$, a $3$), ezért minden lépésben újra meg kell keresni a legkisebb levelet. A legnagyobb sorszámú csúcs ($n$) sosem kerül letépésre, így az utolsó, meg nem jegyzett él mindig az $n$-be fut. Önellenőrzésre a fokszám-tulajdonság szolgál: az $i$ csúcs $\deg(i) - 1$-szer szerepel a kódban.
:::

## 78. feladat

Rajzoljuk le azt a fát, melynek Prüfer-kódja **a)** $1, 2, 3, 4, 5, 4, 3$; **b)** $2, 5, 10, 1, 9, 3, 8$.

**Megoldás.**

a) A kód $7$ hosszú, tehát $n = 9$, a csúcsok $1, \dots, 9$. Dekódolás: minden lépésben a legkisebb olyan, még fel nem használt szám a levél, amely a kód **hátralevő** részében nem szerepel; ezt a hátralevő kód első elemével kötjük össze.

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $1, 2, 3, 4, 5, 4, 3$ | 6 | 1 |
| 2 | $2, 3, 4, 5, 4, 3$ | 1 | 2 |
| 3 | $3, 4, 5, 4, 3$ | 2 | 3 |
| 4 | $4, 5, 4, 3$ | 7 | 4 |
| 5 | $5, 4, 3$ | 8 | 5 |
| 6 | $4, 3$ | 5 | 4 |
| 7 | $3$ | 4 | 3 |
| — | (a két megmaradó csúcs) | 3 | 9 |

A végén megmaradó két csúcs a $3$ és a $9$. **Élek:** $\{6,1\}, \{1,2\}, \{2,3\}, \{7,4\}, \{8,5\}, \{5,4\}, \{4,3\}, \{3,9\}$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \node[pt, label=above:{6}] (6) at (0, 0) {};
  \node[pt, label=above:{1}] (1) at (1, 0) {};
  \node[pt, label=above:{2}] (2) at (2, 0) {};
  \node[pt, label=above:{3}] (3) at (3, 0) {};
  \node[pt, label=above:{9}] (9) at (4, 0) {};
  \node[pt, label=left:{4}] (4) at (3, -1) {};
  \node[pt, label=left:{7}] (7) at (2.3, -1.8) {};
  \node[pt, label=right:{5}] (5) at (3.7, -1.8) {};
  \node[pt, label=right:{8}] (8) at (3.7, -2.7) {};
  \draw (6) -- (1) -- (2) -- (3) -- (9); \draw (3) -- (4); \draw (4) -- (7); \draw (4) -- (5); \draw (5) -- (8);
\end{tikzpicture}
\end{adjustbox}
\end{center}

*Ellenőrzés:* a $3$ és a $4$ kétszer szerepel a kódban, fokuk $3$; az $1, 2, 5$ egyszer, fokuk $2$; a levelek $6, 7, 8, 9$.

b) **Ilyen fa nincs.** A kód $7$ hosszú, tehát egy $n = 9$ csúcsú, $1, \dots, 9$ számozású fa kódja volna — de a kódban szerepel a $10$, ami nem csúcs. (Egy $10$ csúcsú fa kódja $8$ hosszú volna.) Az $n$ csúcsú fák Prüfer-kódjai pontosan az $[n]^{n-2}$ halmaz elemei; a $2, 5, 10, 1, 9, 3, 8$ sorozat nem eleme $[9]^7$-nek.

::: elmelet
**Elméleti háttér — dekódolás és a kódok halmaza.** A dekódolásnál az első letépett levél a kódban nem szereplő legkisebb szám (a levelek pontosan a kódban nem szereplő csúcsok), szomszédja a kód első eleme; ezután a kód első elemét elhagyjuk, a levelet „elhasználtnak” jelöljük, és ugyanígy folytatjuk. A végén két fel nem használt csúcs marad, ezeket összekötjük (az egyik mindig $n$). A Prüfer-megfeleltetés bijekció az $n$ csúcsú számozott fák és az $[n]^{n-2}$ sorozatok között; ebből jön a Cayley-tétel ($n^{n-2}$ fa). Egy sorozat tehát pontosan akkor Prüfer-kód, ha hossza $n - 2$ és minden eleme $1$ és $n$ közé esik.
:::

## 79. feladat

Hány olyan fa van $n$ számozott csúcson, **a)** ami nem egy csillag; **b)** amelynek minden csúcsa legfeljebb másodfokú; **c)** amelyben az 1 indexű csúcs elsőfokú?

**Megoldás.**

A Cayley-tétel szerint az összes számozott fa száma $n^{n-2}$.

a) Egy csillagot a középpontja egyértelműen meghatároz, és $n \ge 3$ esetén a középpont is egyértelmű (az egyetlen nem levél), tehát $n$ csillag van. Így **$n \ge 3$-ra $n^{n-2} - n$** fa nem csillag. ($n \le 2$-re az egyetlen fa csillag, a válasz $0$; $n = 3$-ra a képlet is $0$-t ad, hiszen minden $3$ csúcsú fa út, azaz csillag.)

b) Egy fa, amelynek minden foka legfeljebb $2$, egy **út**. Egy út a csúcsok egy sorrendje, de a két irányból olvasott sorrend ugyanazt az utat adja (tehénszabály), így **$n \ge 2$-re $\frac{n!}{2}$** ilyen fa van ($n = 1$-re $1$).

c) Az $1$ csúcs pontosan akkor levél, ha **nem szerepel a Prüfer-kódban**. Az ilyen kódok olyan $n - 2$ hosszú sorozatok, amelyek elemei a $2, \dots, n$ számok közül kerülnek ki: **$(n-1)^{n-2}$** fa ($n \ge 2$).

*Ellenőrzés $n = 3$-ra:* $3$ fa van (melyik csúcs van középen); ebből $2$-ben levél az $1$, és valóban $(3-1)^1 = 2$.

::: elmelet
**Elméleti háttér — leszámlálás Prüfer-kóddal.** A Prüfer-kód bijekciója a fák egy-egy tulajdonságát a kódok egyszerű tulajdonságává fordítja: „$i$ levél” $\iff$ „$i$ nem szerepel a kódban”, „$\deg(i) = d$” $\iff$ „$i$ pontosan $d - 1$-szer szerepel”. Ezért a fokszámra vonatkozó feltételek ismétléses variációk és permutációk számolására vezetnek; például a $d_1, \dots, d_n$ fokszámú fák száma $\frac{(n-2)!}{\prod_i (d_i - 1)!}$. A csillagok kódja konstans ($c, c, \dots, c$), az utak kódja csupa különböző elemből áll (76. c) feladat) — ez is egy út a b) részhez: $n(n-1)\cdots 3 = \frac{n!}{2}$ sorozat áll különböző elemekből.
:::

## 80. feladat

Legyen $G$ egy élsúlyozott teljes gráf $n$ számozott csúcson, aminek az $(1, 2)$ éle 1 súlyú, a többi pedig 2 súlyú. Hány minimális súlyú feszítőfája van $G$-nek?

**Megoldás.**

Minden feszítőfának $n - 1$ éle van. Ha a fa tartalmazza az $\{1, 2\}$ élt, a súlya $1 + 2(n-2) = 2n - 3$; ha nem, $2(n - 1) = 2n - 2$. A minimális súlyú feszítőfák tehát **pontosan az $\{1, 2\}$ élt tartalmazó feszítőfák** (ilyen van, pl. a Kruskal-algoritmus elsőként ezt az élt választja). Ezeket kell megszámolni.

**1. megoldás (kettős leszámlálás).** Számoljuk meg a (feszítőfa, a fa egy éle) párokat. Egyrészt $n^{n-2}$ fa van, mindegyiknek $n - 1$ éle: $n^{n-2}(n - 1)$ pár. Másrészt a $K_n$ szimmetriája miatt (a csúcsok átszámozása élt élbe, fát fába visz) minden él ugyanannyi, mondjuk $t$ fában szerepel, és $\binom{n}{2}$ él van: $\binom{n}{2} t$ pár. Tehát
$$t = \frac{n^{n-2}(n-1)}{\binom{n}{2}} = \frac{n^{n-2}(n-1) \cdot 2}{n(n-1)} = 2n^{n-3}.$$

**2. megoldás (Prüfer-kóddal).** Húzzuk össze az $\{1, 2\}$ élt egyetlen $v^*$ csúccsá. Egy $\{1, 2\}$-t tartalmazó $T$ feszítőfából így egy $n - 1$ csúcsú (a $v^*, 3, 4, \dots, n$ csúcsokon) számozott $T'$ fa lesz, és $T$-t a $T'$ és az a választás határozza meg, hogy a $v^*$-ra illeszkedő $\deg_{T'}(v^*)$ él mindegyike az $1$-be vagy a $2$-be fut. Tehát a keresett szám
$$\sum_{T'} 2^{\deg_{T'}(v^*)} = 2 \sum_{T'} 2^{\deg_{T'}(v^*) - 1}.$$
A $T'$ Prüfer-kódja $n - 3$ hosszú sorozat $n - 1$ jelből, és $\deg_{T'}(v^*) - 1$ a $v^*$ előfordulásainak száma a kódban. Ha a kód minden pozíciójához $2$ súlyt rendelünk, ha ott $v^*$ áll, és $1$-et különben, akkor $2^{\deg(v^*) - 1}$ a súlyok szorzata, és az összes kódra összegezve
$$\sum_{T'} 2^{\deg_{T'}(v^*) - 1} = (\underbrace{2}_{v^*} + \underbrace{1 + \dots + 1}_{n - 2})^{n - 3} = n^{n-3}.$$

**A minimális feszítőfák száma $2n^{n-3}$** ($n \ge 2$; $n = 2$-re $1$, $n = 3$-ra $2$).

::: elmelet
**Elméleti háttér — a legolcsóbb él mindig benne van; adott élt tartalmazó fák.** Ha egy gráfban egyetlen legkisebb súlyú él van, akkor minden minimális feszítőfa tartalmazza: ha egy $T$ fa nem tartalmazná, $T + e$ egyetlen körén van egy $e$-nél nehezebb él, amelyet elhagyva olcsóbb feszítőfát kapnánk. Az adott élt tartalmazó feszítőfák száma $K_n$-ben $2n^{n-3}$; általánosabban, egy rögzített, $a_1, \dots, a_k$ csúcsú komponensekből álló feszítő erdőt tartalmazó fák száma $K_n$-ben $n^{k-2} a_1 a_2 \cdots a_k$ (itt $k = n - 1$, egy komponens $2$ csúcsú: $n^{n-3} \cdot 2$). A 2. megoldás súlyozott Prüfer-összegzése ennek a képletnek a bizonyítási ötlete is.
:::

## 81. feladat

Adjuk meg az ábrán látható gráf egy minimális súlyú feszítőfáját! Hány különböző minimális súlyú feszítőfája van?

**Megoldás.**

Nevezzük el a csúcsokat: $T$ a csúcs, $L$ és $R$ a bal, illetve jobb felső, $M$ és $N$ a két középső, $P$, $Q$, $S$ az alsó (bal, középső, jobb) csúcs. Az élek súly szerint:

- $1$: $LT$, $MT$, $LM$ (háromszög);
- $2$: $MN$, $MQ$, $NQ$ (háromszög);
- $3$: $LP$;
- $4$: $TN$, $TR$, $NR$;
- $5$: $RS$;
- $6$: $MP$, $NS$, $PQ$, $QS$.

**Kruskal-algoritmus** (mindig a legolcsóbb olyan élt vesszük, amely nem zár be kört):

1. Az $1$ súlyú háromszögből $2$ élt vehetünk (a harmadik kört zárna): $\{L, T, M\}$ összefügg.
2. A $2$ súlyú háromszögből $2$ élt: $\{L, T, M, N, Q\}$ összefügg.
3. $LP$ ($3$): $P$ is bekerül.
4. A $4$ súlyú élek közül $TN$ kört zárna; $TR$ és $NR$ közül pontosan egyet vehetünk: $R$ bekerül.
5. $RS$ ($5$): $S$ is bekerül. Ezzel $7 = 8 - 1$ élünk van, a fa kész.

Egy minimális feszítőfa például: $LT, MT, MN, MQ, LP, NR, RS$ (vastag élek az ábrán). **A súlya $1 + 1 + 2 + 2 + 3 + 4 + 5 = 18$.**

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.05,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  w/.style={fill=white, inner sep=1pt, font=\small},
  t/.style={line width=2.2pt},
  n/.style={draw=black!40}
]
  \node[pt, label=above:{$T$}] (T) at (4, 3.2) {};
  \node[pt, label=left:{$L$}] (L) at (1.3, 2.1) {};
  \node[pt, label=right:{$R$}] (R) at (6.7, 2.1) {};
  \node[pt, label=below left:{$M$}] (M) at (2.9, 1.6) {};
  \node[pt, label=below right:{$N$}] (N) at (5.1, 1.6) {};
  \node[pt, label=below:{$P$}] (BL) at (0.8, 0.3) {};
  \node[pt, label=below:{$Q$}] (BM) at (4, 0.3) {};
  \node[pt, label=below:{$S$}] (BR) at (7.2, 0.3) {};
  \draw[t] (L) -- node[w] {1} (T);
  \draw[t] (M) -- node[w, pos=0.6] {1} (T);
  \draw[n] (L) -- node[w] {1} (M);
  \draw[n] (T) -- node[w, pos=0.45] {4} (N);
  \draw[n] (T) -- node[w] {4} (R);
  \draw[t] (M) -- node[w] {2} (N);
  \draw[t] (N) -- node[w] {4} (R);
  \draw[t] (L) -- node[w] {3} (BL);
  \draw[n] (M) -- node[w] {6} (BL);
  \draw[t] (M) -- node[w] {2} (BM);
  \draw[n] (N) -- node[w] {2} (BM);
  \draw[n] (N) -- node[w] {6} (BR);
  \draw[t] (R) -- node[w] {5} (BR);
  \draw[n] (BL) -- node[w] {6} (BM);
  \draw[n] (BM) -- node[w] {6} (BR);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Hány minimális feszítőfa van?** Minden minimális feszítőfa megkapható a Kruskal-algoritmussal, ha az egyenlő súlyú éleket alkalmas sorrendben vizsgáljuk. Ráadásul minden $w$-re igaz, hogy egy minimális feszítőfa legfeljebb $w$ súlyú élei a legfeljebb $w$ súlyú élek gráfjának egy feszítő erdőjét alkotják (ugyanannyi komponenssel). A választási lehetőségek szintenként:

- $1$-es szint: a háromszög $3$ feszítőfája közül bármelyik — $3$ lehetőség;
- $2$-es szint: az $\{L, T, M\}$ összehúzása után az $MN$, $MQ$, $NQ$ élek háromszöget alkotnak — $3$ lehetőség;
- $3$-as szint: $LP$ kötelező — $1$;
- $4$-es szint: $TN$ kört zárna, $TR$ és $NR$ közül pontosan az egyik — $2$ lehetőség;
- $5$-ös szint: $RS$ kötelező — $1$.

A választások függetlenek, így **$3 \cdot 3 \cdot 2 = 18$ különböző minimális súlyú feszítőfa** van (mind $18$ súlyú).

::: elmelet
**Elméleti háttér — Kruskal-algoritmus és a minimális feszítőfák szerkezete.** A mohó (optimista) Kruskal-algoritmus a súly szerint növekvő sorrendben veszi az éleket, és minden olyat megtart, amely nem zár be kört; mindig minimális feszítőfát ad. Ha a súlyok különbözők, a minimális feszítőfa egyértelmű; egyenlő súlyoknál a döntetlenek feloldása adja a különböző optimumokat. Minden $w$ küszöbre a minimális feszítőfa $\le w$ súlyú élei a $G_{\le w}$ gráf (a $\le w$ súlyú élek) feszítő erdőjét alkotják; így a minimális feszítőfák száma szintenként szorzódik: minden szinten a korábbi komponensek összehúzásával kapott (multi)gráf feszítő erdőinek száma számít. Itt minden szint egy kis háromszög vagy párhuzamos élpár volt.
:::

## 82. feladat

Egy fa Prüfer-kódja $1, 3, x, 3, 2, 2, x, 4, 5$. Mi lehet az $x$ legkisebb értéke, ha a fában minden csúcs foka legfeljebb 3? Rajzold is fel a kapott fát!

**Megoldás.**

A kód $9$ hosszú, így $n = 11$, és $x \in \{1, \dots, 11\}$. Az $i$ csúcs foka $1 + (\text{az } i \text{ előfordulásainak száma})$, tehát a feltétel: **egyik szám sem szerepelhet $2$-nél többször** a kódban. Az $x$ nélkül: az $1$, a $4$, az $5$ egyszer, a $2$ és a $3$ kétszer szerepel. Az $x$ kétszer szerepel, így

- $x \in \{2, 3\}$ esetén ez a szám $4$-szer szerepelne (fok $5$);
- $x \in \{1, 4, 5\}$ esetén $3$-szor (fok $4$);
- $x = 6$ esetén a $6$ kétszer szerepel (fok $3$) — ez jó.

**Az $x$ legkisebb értéke $6$.** A kód $(1, 3, 6, 3, 2, 2, 6, 4, 5)$, dekódolva:

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $1, 3, 6, 3, 2, 2, 6, 4, 5$ | 7 | 1 |
| 2 | $3, 6, 3, 2, 2, 6, 4, 5$ | 1 | 3 |
| 3 | $6, 3, 2, 2, 6, 4, 5$ | 8 | 6 |
| 4 | $3, 2, 2, 6, 4, 5$ | 9 | 3 |
| 5 | $2, 2, 6, 4, 5$ | 3 | 2 |
| 6 | $2, 6, 4, 5$ | 10 | 2 |
| 7 | $6, 4, 5$ | 2 | 6 |
| 8 | $4, 5$ | 6 | 4 |
| 9 | $5$ | 4 | 5 |
| — | (a két megmaradó csúcs) | 5 | 11 |

**Élek:** $\{7,1\}, \{1,3\}, \{8,6\}, \{9,3\}, \{3,2\}, \{10,2\}, \{2,6\}, \{6,4\}, \{4,5\}, \{5,11\}$. A fa egy $7 - 1 - 3 - 2 - 6 - 4 - 5 - 11$ út, amelynek $3$, $2$, $6$ csúcsaira egy-egy levél ($9$, $10$, $8$) csatlakozik:

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \foreach \v/\x in {7/0, 1/1, 3/2, 2/3, 6/4, 4/5, 5/6, 11/7} { \node[pt, label=above:{\v}] (n\v) at (\x, 0) {}; }
  \node[pt, label=below:{9}] (n9) at (2, -1) {};
  \node[pt, label=below:{10}] (n10) at (3, -1) {};
  \node[pt, label=below:{8}] (n8) at (4, -1) {};
  \draw (n7) -- (n1) -- (n3) -- (n2) -- (n6) -- (n4) -- (n5) -- (n11);
  \draw (n3) -- (n9); \draw (n2) -- (n10); \draw (n6) -- (n8);
\end{tikzpicture}
\end{adjustbox}
\end{center}

Minden fok legfeljebb $3$ (a $2$, $3$, $6$ csúcsoké pontosan $3$).

::: elmelet
**Elméleti háttér — fokszámkorlát Prüfer-kódban.** Mivel $\deg(i) = 1 + (\text{az } i \text{ előfordulásainak száma})$, a „minden fok legfeljebb $D$” feltétel azt jelenti, hogy egyik szám sem szerepel $D - 1$-nél többször a kódban. Ismeretlen kódelemeknél tehát a már meglévő előfordulásokat kell megszámolni, és azt a legkisebb értéket keresni, amelynél egyik szám sem lépi túl a korlátot. A dekódolás után érdemes a fokszámokat ellenőrizni.
:::

## 83. feladat

Olyan fát szeretnék készíteni, melyben csak két különböző fokszám fordul elő: az egyik fajta 9-szer, a másik fajta 92-szer. Mi lehet a szóban forgó két fokszám?

**Megoldás.**

A fának $n = 9 + 92 = 101$ csúcsa és $100$ éle van, így a fokszámok összege $2 \cdot 100 = 200$. Egy legalább $2$ csúcsú fában van levél, tehát az egyik fokszám $1$.

- Ha $9$ levél van és $92$ darab $d$ fokú csúcs: $9 + 92d = 200$, $92d = 191$ — nem egész. Lehetetlen.
- Ha $92$ levél van és $9$ darab $d$ fokú csúcs: $92 + 9d = 200$, $9d = 108$, $d = 12$.

**A két fokszám csak $1$ és $12$ lehet** ($92$ levél, $9$ darab $12$ fokú csúcs). Ilyen fa létezik: vegyünk egy $9$ csúcsú utat; a két végpontjára $11$-$11$, a $7$ belső csúcsára $10$-$10$ levelet kötve minden útcsúcs foka $12$ lesz, a levelek száma $2 \cdot 11 + 7 \cdot 10 = 92$. (Általában is: $\sum d_i = 2(n - 1)$, $d_i \ge 1$ esetén mindig van ilyen fa.)

::: elmelet
**Elméleti háttér — fák fokszámsorozatai.** Egy $d_1, \dots, d_n$ ($n \ge 2$) sorozat pontosan akkor egy fa fokszámsorozata, ha minden $d_i \ge 1$ és $\sum d_i = 2(n - 1)$. A szükségesség a kézfogási lemmából és az élszámból ($n - 1$) jön; az elégségesség például Prüfer-kóddal: írjuk le az $i$ számot $d_i - 1$-szer, ez $\sum (d_i - 1) = n - 2$ hosszú sorozat, tehát egy fa kódja, amelyben $\deg(i) = d_i$. Itt a két feltétel egy lineáris diofantoszi egyenletet ad.
:::

## 84. feladat

Bergengócia három nagy szigetből áll. Mindhárom szigeten 10-10 város található. A Bergengóciai Közlekedési Minisztérium szeretné elérni, hogy bármely városból bármelyikbe el lehessen jutni tömegközlekedéssel (esetleg átszállásokkal). Ehhez városok között indíthatnak közvetlen járatokat. Bármely két azonos szigeten lévő város között indulhat buszjárat, melynek költsége évi 1 millió buznyák. Bármely két különböző szigeten lévő város között indulhat hajójárat, melynek költsége évi 2 millió buznyák. A Minisztérium célja természetesen, hogy a lehető legolcsóbban lehessen üzemeltetni a hálózatot.

a) Mennyi ez a minimális üzemeltetési költség éves szinten?

b) Hányféleképpen nézhet ki egy minimális üzemeltetési költséggel működő hálózat?

**Megoldás.**

Modell: a $30$ város a csúcsok, a lehetséges járatok az élek (teljes gráf), a buszjáratok súlya $1$, a hajójáratoké $2$ (millió buznyák). Egy hálózat akkor jó, ha összefüggő feszítő részgráf. Minimális költségű hálózat **fa**: ha volna benne kör, a kör egy élét elhagyva olcsóbb, még mindig összefüggő hálózatot kapnánk. Tehát minimális súlyú feszítőfát keresünk.

a) Egy feszítőfának $29$ éle van; legyen $b$ a buszjáratok, $h$ a hajójáratok száma, $b + h = 29$. Egy szigeten belüli buszjáratok körmentesek, így szigetenként legfeljebb $9$, összesen $b \le 27$, tehát $h \ge 2$. A költség
$$b + 2h = 29 + h \ge 31.$$
Egyenlőség pontosan akkor van, ha $h = 2$ és $b = 27$, vagyis **minden szigeten a buszjáratok a sziget $10$ városának egy feszítőfáját alkotják** ($9$ él), és a **$2$ hajójárat a három szigetet összeköti**. Ilyen hálózat létezik, tehát **a minimális költség évi $31$ millió buznyák.**

b) A minimális hálózatokat a fenti szerkezet szerint választjuk ki:

- Szigetenként a buszhálózat a $10$ város egy feszítőfája: a Cayley-tétel szerint $10^8$-féle, a három szigeten együtt $(10^8)^3 = 10^{24}$.
- A $2$ hajójárat a három szigetet „fává” köti: el kell dönteni, melyik sziget van középen ($3$-féle), és mindkét hajójárat egy-egy végpontját a középső szigeten ($10$-féle) és a másik szigeten ($10$-féle) kell kiválasztani: $3 \cdot 100 \cdot 100 = 3 \cdot 10^4$.

**Összesen $10^{24} \cdot 3 \cdot 10^4 = 3 \cdot 10^{28}$ minimális költségű hálózat** van.

::: elmelet
**Elméleti háttér — minimális feszítőfa két súlyértékkel.** Ha az élsúlyok csak kétfélék, a minimális feszítőfa szerkezete közvetlenül leolvasható: a Kruskal-algoritmus először a könnyű élek gráfjának egy feszítő erdőjét építi fel (itt három $K_{10}$ feszítőfáit), majd a komponenseket a lehető legkevesebb nehéz éllel (komponensszám mínusz $1$) köti össze. A leszámlálásnál a két szint függetlenül választható; a komponensek összekötésének száma a „szuper-csúcsokon” vett fák száma, élenként a végpontok választásával súlyozva — ez az $n^{k-2} a_1 \cdots a_k$ képlet ($30^{1} \cdot 10^3 = 3 \cdot 10^4$).
:::

## 85*. feladat

Legyen $G$ véges, összefüggő, élsúlyozott gráf, $T_1$ és $T_2$ pedig két minimális feszítőfája. Bizonyítsd be, hogy bármely $e \in E(T_1) \setminus E(T_2)$ élhez található olyan $f \in E(T_2) \setminus E(T_1)$ él, amelyre mind $T_1 - e + f$, mind $T_2 - f + e$ minimális feszítőfa.

**Megoldás.**

Legyen $w$ a súlyfüggvény és $W = w(T_1) = w(T_2)$ a minimális feszítőfák közös súlya.

*Az $f$ él kiválasztása.* Ha $T_1$-ből elhagyjuk az $e$ élt, két komponens marad; legyen ezek csúcshalmaza $S$ és $V \setminus S$. $T_1$-nek $e$ az egyetlen éle, amely $S$ és $V \setminus S$ között fut (a többi éle valamelyik komponensen belül van). Mivel $e \notin E(T_2)$, a $T_2 + e$ gráfban pontosan egy kör van, a $C$, amely tartalmazza $e$-t. A $C$ kör $e$ mentén átlép $S$ és $V \setminus S$ között, és mivel zárt, **még egyszer át kell lépnie**: van egy $f \ne e$ éle, amely szintén $S$ és $V \setminus S$ között fut. Mivel $f \in C \setminus \{e\} \subseteq E(T_2)$, és $T_1$-nek az $e$-n kívül nincs $S$ és $V \setminus S$ közötti éle, $f \notin E(T_1)$. Tehát $f \in E(T_2) \setminus E(T_1)$.

*Mindkét csere feszítőfát ad.* $T_1 - e + f$ feszítőfa, mert az $f$ él összeköti a $T_1 - e$ két komponensét ($n - 1$ éle van és összefüggő). $T_2 - f + e$ feszítőfa, mert $f$ a $T_2 + e$ egyetlen körén van, így elhagyva összefüggő gráf marad, $n - 1$ éllel.

*Mindkettő minimális.* A minimalitás miatt
$$W \le w(T_1 - e + f) = W - w(e) + w(f) \;\Rightarrow\; w(e) \le w(f),$$
$$W \le w(T_2 - f + e) = W - w(f) + w(e) \;\Rightarrow\; w(f) \le w(e).$$
Tehát $w(e) = w(f)$, és mindkét új fa súlya $W$: mindkettő minimális feszítőfa. $\blacksquare$

::: elmelet
**Elméleti háttér — vágások, körök és élcsere.** Egy fa egy élének elhagyása a csúcsokat két részre vágja, és a fa ennek az élnek a **fundamentális vágását** határozza meg; egy nem fabeli él hozzávétele pedig egyetlen **fundamentális kört** hoz létre. Egy kör és egy vágás mindig páros sok élben metszi egymást — ezért kellett lennie egy második átlépő élnek. Ez a „szimmetrikus báziscsere” tulajdonság (a matroidelmélet egyik alaptétele) mutatja, hogy bármely két minimális feszítőfa lépésenként, minimális feszítőfákon keresztül egymásba vihető, és hogy a minimális feszítőfák súlyainak multihalmaza mind ugyanaz.
:::

## 86. feladat (házi feladat)

Egy gráfban minden csúcs foka legfeljebb 5. Bizonyítsd be, hogy a csúcsok 3 színnel színezhetők úgy, hogy minden csúcsnak legfeljebb 1 vele megegyező színű szomszédja legyen.

**Megoldás.**

(A gráf véges.) Nevezzük **rossznak** az azonos színű csúcsokat összekötő éleket. Válasszunk a csúcsok $3$-színezései közül egy olyat, amelyben a rossz élek száma **minimális** (véges sok színezés van, így ilyen létezik). Megmutatjuk, hogy ebben minden csúcsnak legfeljebb $1$ azonos színű szomszédja van.

Tegyük fel, hogy egy $v$ csúcsnak legalább $2$ azonos színű szomszédja van. $v$-nek legfeljebb $5$ szomszédja van, ebből legalább $2$ a $v$ színével azonos, így a másik két szín együtt legfeljebb $3$ szomszédon fordul elő. Ezért valamelyik másik szín **legfeljebb $1$** szomszédon szerepel. Színezzük át $v$-t erre a színre: a $v$-re illeszkedő rossz élek száma legalább $2$-ről legfeljebb $1$-re csökken, a többi él nem változik. Így a rossz élek száma csökkent — ellentmondás a minimalitással. $\blacksquare$

::: elmelet
**Elméleti háttér — szélsőérték-elv színezéseknél (Lovász-féle „hibás” színezés).** Ugyanaz a módszer, mint a 75. feladatban: a rossz élek számát minimalizáljuk, és megmutatjuk, hogy egy hibás csúcs átszínezése javítana. Általánosan: ha $\Delta(G) \le d$ és $k$ színt használunk, akkor van olyan színezés, amelyben minden csúcsnak legfeljebb $\lfloor d/k \rfloor$ azonos színű szomszédja van (skatulyaelv: a legritkább szín legfeljebb $\lfloor d/k \rfloor$-szor fordul elő a szomszédok között). Itt $d = 5$, $k = 3$: $\lfloor 5/3 \rfloor = 1$. A $k = 2$ esetből a 75. feladat egy változata adódik.
:::

## 87. feladat (házi feladat)

Egy teljes gráf ponthalmaza $x_1, x_2, \dots, x_k, y_1, y_2, \dots, y_l$. Az $(x_i, x_j)$ élek költsége (súlya) 1, az $(y_i, y_j)$ éleké 2, az $(x_i, y_j)$ éleké 3. Hány legolcsóbb feszítőfája van a gráfnak és mennyibe kerülnek ezek?

**Megoldás.**

Legyen $k, l \ge 1$. Egy feszítőfának $k + l - 1$ éle van; legyen $a$ az $xx$-, $b$ az $yy$-, $c$ az $xy$-élek száma. A fa körmentes, így $a \le k - 1$ és $b \le l - 1$; továbbá $c \ge 1$, hiszen a fa összefüggő. A költség
$$a + 2b + 3c = 3(a + b + c) - 2a - b = 3(k + l - 1) - 2a - b \ge 3(k + l - 1) - 2(k - 1) - (l - 1) = k + 2l.$$
Egyenlőség pontosan akkor van, ha $a = k - 1$, $b = l - 1$, $c = 1$, vagyis ha az $xx$-élek az $x$-csúcsok egy feszítőfáját, az $yy$-élek az $y$-csúcsok egy feszítőfáját alkotják, és egyetlen $xy$-él köti össze a kettőt. **A legolcsóbb feszítőfák költsége $k + 2l$.**

**Számuk:** az $x$-csúcsok feszítőfája $k^{k-2}$-féle, az $y$-csúcsoké $l^{l-2}$-féle (Cayley), az összekötő él $k \cdot l$-féle. Összesen
$$k^{k-2} \cdot l^{l-2} \cdot kl = k^{k-1}\, l^{l-1}.$$

*Ellenőrzés:* $k = l = 1$-re egyetlen él van, $3 = 1 + 2$ költséggel, és $1^0 \cdot 1^0 = 1$ fa. (Ha $l = 0$, a gráf $K_k$, a válasz $k^{k-2}$ fa, $k - 1$ költséggel; ha $k = 0$, akkor $l^{l-2}$ fa, $2(l - 1)$ költséggel.)

::: elmelet
**Elméleti háttér — Kruskal-algoritmus szintenként.** A Kruskal-algoritmus először az összes $1$ súlyú élt vizsgálja: ezekből az $x$-klikk egy feszítőfáját választja; utána a $2$ súlyúakból az $y$-klikk egy feszítőfáját; végül a két komponenst egyetlen $3$ súlyú él köti össze. A számolás a 84. feladatéval azonos: a szintek függetlenek, a választások száma szorzódik. A fenti egyenlőtlenséges érvelés a Kruskal-algoritmus helyességét ebben a speciális esetben közvetlenül is igazolja.
:::

## 88. feladat (házi feladat)

a) Mi lehet az $x$ értéke, ha a $2, 10, 4, 6, 10, 1, 3, x$ Prüfer-kódhoz tartozó fában négy levél van? Rajzoljuk fel az $x$ legnagyobb értékéhez tartozó fát!

b) Válasszuk meg $x$ értékét úgy, hogy az alábbi sorozat olyan fát kódoljon, melynek minden foka páratlan: $2, 3, x, 3, 2, 4, 4, 3$. Rajzold is fel a kapott fát!

**Megoldás.**

a) A kód $8$ hosszú, így $n = 10$ és $x \in \{1, \dots, 10\}$. A levelek pontosan a kódban nem szereplő csúcsok. Az $x$ nélkül a kódban szereplő különböző számok: $1, 2, 3, 4, 6, 10$; a nem szereplők: $5, 7, 8, 9$.

- Ha $x \in \{1, 2, 3, 4, 6, 10\}$, a levelek $5, 7, 8, 9$: **$4$ levél**.
- Ha $x \in \{5, 7, 8, 9\}$, az $x$ már nem levél: csak $3$ levél van.

**Tehát $x \in \{1, 2, 3, 4, 6, 10\}$**, a legnagyobb érték $x = 10$. A $(2, 10, 4, 6, 10, 1, 3, 10)$ kód dekódolása:

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $2, 10, 4, 6, 10, 1, 3, 10$ | 5 | 2 |
| 2 | $10, 4, 6, 10, 1, 3, 10$ | 2 | 10 |
| 3 | $4, 6, 10, 1, 3, 10$ | 7 | 4 |
| 4 | $6, 10, 1, 3, 10$ | 4 | 6 |
| 5 | $10, 1, 3, 10$ | 6 | 10 |
| 6 | $1, 3, 10$ | 8 | 1 |
| 7 | $3, 10$ | 1 | 3 |
| 8 | $10$ | 3 | 10 |
| — | (a két megmaradó csúcs) | 9 | 10 |

**Élek:** $\{5,2\}, \{2,10\}, \{7,4\}, \{4,6\}, \{6,10\}, \{8,1\}, \{1,3\}, \{3,10\}, \{9,10\}$. A $10$ (fokszáma $4$) négy ágat tart: $10 - 2 - 5$, $10 - 6 - 4 - 7$, $10 - 3 - 1 - 8$ és $10 - 9$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \node[pt, label=above left:{10}] (10) at (0, 0) {};
  \node[pt, label=above:{2}] (2) at (-1, 0) {};
  \node[pt, label=above:{5}] (5) at (-2, 0) {};
  \node[pt, label=above:{6}] (6) at (1, 0) {};
  \node[pt, label=above:{4}] (4) at (2, 0) {};
  \node[pt, label=above:{7}] (7) at (3, 0) {};
  \node[pt, label=right:{3}] (3) at (0, -0.9) {};
  \node[pt, label=right:{1}] (1) at (0, -1.8) {};
  \node[pt, label=right:{8}] (8) at (0, -2.7) {};
  \node[pt, label=right:{9}] (9) at (0, 0.9) {};
  \draw (5) -- (2) -- (10) -- (6) -- (4) -- (7);
  \draw (10) -- (3) -- (1) -- (8); \draw (10) -- (9);
\end{tikzpicture}
\end{adjustbox}
\end{center}

b) A kód $8$ hosszú, így $n = 10$. Minden fok páratlan $\iff$ minden $\deg(i) - 1$ páros $\iff$ **minden szám páros sokszor szerepel a kódban**. Az $x$ nélkül: a $2$ kétszer, a $4$ kétszer, a $3$ **háromszor** szerepel. Az egyetlen $x$ csak egy szám előfordulását változtatja, és a $3$ előfordulásainak számát párossá kell tenni: **$x = 3$**. Ekkor a $3$ négyszer szerepel (fok $5$), a $2$ és a $4$ kétszer (fok $3$), a többi csúcs levél (fok $1$) — minden fok páratlan.

A $(2, 3, 3, 3, 2, 4, 4, 3)$ kód dekódolása:

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $2, 3, 3, 3, 2, 4, 4, 3$ | 1 | 2 |
| 2 | $3, 3, 3, 2, 4, 4, 3$ | 5 | 3 |
| 3 | $3, 3, 2, 4, 4, 3$ | 6 | 3 |
| 4 | $3, 2, 4, 4, 3$ | 7 | 3 |
| 5 | $2, 4, 4, 3$ | 8 | 2 |
| 6 | $4, 4, 3$ | 2 | 4 |
| 7 | $4, 3$ | 9 | 4 |
| 8 | $3$ | 4 | 3 |
| — | (a két megmaradó csúcs) | 3 | 10 |

**Élek:** $\{1,2\}, \{5,3\}, \{6,3\}, \{7,3\}, \{8,2\}, \{2,4\}, \{9,4\}, \{4,3\}, \{3,10\}$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \node[pt, label=below:{3}] (3) at (0, 0) {};
  \node[pt, label=right:{5}] (5) at (0.9, 0.9) {};
  \node[pt, label=right:{6}] (6) at (1.2, 0) {};
  \node[pt, label=right:{7}] (7) at (0.9, -0.9) {};
  \node[pt, label=above:{10}] (10) at (0, 1.1) {};
  \node[pt, label=above:{4}] (4) at (-1.2, 0) {};
  \node[pt, label=below:{9}] (9) at (-1.2, -1) {};
  \node[pt, label=above:{2}] (2) at (-2.4, 0) {};
  \node[pt, label=left:{1}] (1) at (-3.2, 0.7) {};
  \node[pt, label=left:{8}] (8) at (-3.2, -0.7) {};
  \draw (3) -- (5); \draw (3) -- (6); \draw (3) -- (7); \draw (3) -- (10);
  \draw (3) -- (4) -- (2); \draw (4) -- (9); \draw (2) -- (1); \draw (2) -- (8);
\end{tikzpicture}
\end{adjustbox}
\end{center}

A fokszámok: $\deg(3) = 5$, $\deg(2) = \deg(4) = 3$, a többi $1$.

::: elmelet
**Elméleti háttér — levelek és fokparitás a Prüfer-kódból.** A levelek száma $n$ mínusz a kódban szereplő **különböző** számok száma, így egy ismeretlen kódelem pontosan akkor nem változtat a levelek számán, ha egy már szereplő értéket vesz fel. A fokok paritását az előfordulások paritása határozza meg ($\deg(i) - 1$ előfordulás), így a „minden fok páratlan” feltétel azt jelenti, hogy minden szám páros sokszor szerepel. Ebből az is következik, hogy minden fokszámában páratlan fának páros sok csúcsa van (a kód hossza, $n - 2$, a páros előfordulások összege, tehát páros) — összhangban a kézfogási lemmával.
:::

# Kombinatorika 1 – 6. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

Alapfogalmak és tételek a feladatsorhoz:
- **Séta (walk):** Csúcsok és élek váltakozó sorozata: $v_0, e_1, v_1, e_2, \dots, e_k, v_k$, ahol $e_i = \{v_{i-1}, v_i\}$. A séta hossza az élek száma ($k$). Ismétlődhetnek benne csúcsok és élek is.
- **Vonal (trail):** Olyan séta, amelyben minden él különböző (élismétlés nélküli séta).
- **Út (path):** Olyan séta, amelyben minden csúcs különböző (csúcsismétlés nélküli séta). Minden út vonal is egyben.
- **Zárt séta, zárt vonal (körvonal), kör:** Ha $v_0 = v_k$. A **kör** (cycle) olyan zárt séta ($k \ge 3$), amelyben a kezdő- és végpont kivételével minden csúcs különböző, és minden él különböző.
- **Euler-vonal:**
  - **Zárt Euler-vonal:** Olyan zárt vonal, amely a gráf *minden élét* pontosan egyszer tartalmazza. Létezésének szükséges és elégséges feltétele: a gráf (az izolált csúcsoktól eltekintve) összefüggő, és minden csúcsának foka páros.
  - **Nyílt Euler-vonal:** Olyan nyílt vonal, amely a gráf minden élét pontosan egyszer tartalmazza. Feltétele: a gráf összefüggő, és pontosan két páratlan fokú csúcsa van (a vonal ezek között halad).
- **Hamilton-út és Hamilton-kör:**
  - **Hamilton-út:** Olyan út, amely a gráf *minden csúcsát* pontosan egyszer tartalmazza.
  - **Hamilton-kör:** Olyan kör, amely a gráf minden csúcsát pontosan egyszer tartalmazza.
- **Csúcstörlős szükséges feltétel (Toughness):**
  - Ha $G$-ben van Hamilton-kör, akkor tetszőleges nem üres $S \subset V$ csúcshalmaz elhagyása után a megmaradó gráf komponenseinek száma:
    $$c(G - S) \le |S|.$$
  - Ha $G$-ben van Hamilton-út, akkor tetszőleges $S \subset V$ esetén:
    $$c(G - S) \le |S| + 1.$$
- **Dirac-tétel:** Ha egy $n \ge 3$ csúcsú egyszerű gráfban minden csúcs foka legalább $\frac{n}{2}$ ($\delta(G) \ge \frac{n}{2}$), akkor a gráf tartalmaz Hamilton-kört.
- **Ore-tétel:** Ha egy $n \ge 3$ csúcsú egyszerű gráfban bármely két nem szomszédos $u, v$ csúcsra $d(u) + d(v) \ge n$, akkor a gráf tartalmaz Hamilton-kört.

---

## 89. feladat

Rajzold fel azt az egyszerű gráfot, amelynek csúcsai az $A = \{1, 2, 3\}$ halmaz részhalmazai, és amelyben két *különböző* csúcsot akkor köt össze él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat!

a) Milyen hosszú a legrövidebb séta az $\{1, 2\}$ és az $\{1, 3\}$ csúcs között?

b) Milyen hosszú a leghosszabb út ebben a gráfban?

c) Milyen hosszú a leghosszabb séta a gráfban?

d) Van-e olyan négy hosszú vonal az $\{1, 2\}$ és a $\{2\}$ csúcs között, amely nem út?

e) Van-e négy, öt, illetve hat hosszú kör a gráfban? És olyan hat hosszú zárt vonal (körvonal), amely nem kör?

**Megoldás.**

A gráf csúcshalmaza $\mathcal{P}(\{1, 2, 3\})$, összesen $2^3 = 8$ csúcs:
- $\emptyset$ (0 elemű),
- $\{1\}, \{2\}, \{3\}$ (1 eleműek),
- $\{1, 2\}, \{1, 3\}, \{2, 3\}$ (2 eleműek),
- $\{1, 2, 3\}$ (3 elemű).

Az élek a valódi tartalmazási relációknak felelnek meg:
- Az $\emptyset$ részhalmaza az összes többi 7 részhalmaznak, így foka $d(\emptyset) = 7$.
- Az $\{1, 2, 3\}$ tartalmazza az összes többi 7 részhalmazt, így foka $d(\{1, 2, 3\}) = 7$.
- Bármely $\{i\}$ egyelemű részhalmaz szomszédai: $\emptyset$, $\{1, 2, 3\}$, valamint a két őt tartalmazó kételemű halmaz (foka $1 + 1 + 2 = 4$).
- Bármely $\{i, j\}$ kételemű részhalmaz szomszédai: $\emptyset$, $\{1, 2, 3\}$, valamint az ő két egyelemű részhalmaza $\{i\}$ és $\{j\}$ (foka $1 + 1 + 2 = 4$).

**a)** Az $\{1, 2\}$ és $\{1, 3\}$ csúcsok nem szomszédosak (egyik sem tartalmazza a másikat), így nem létezik 1 hosszú séta. Létezik viszont 2 hosszú út (és így séta is) köztük, például az $\{1\}$ közös részhalmazon át:
$$\{1, 2\} - \{1\} - \{1, 3\}$$
(továbbá az $\emptyset$ és az $\{1, 2, 3\}$ csúcsokon keresztül is). Tehát a legrövidebb séta hossza **2**.

**b)** Az út definíció szerint nem ismételhet csúcsot. Mivel a gráfnak 8 csúcsa van, egy egyszerű út legfeljebb $8 - 1 = 7$ élből állhat. Megadható 7 hosszú út, amely a gráf összes csúcsát bejárja (Hamilton-út):
$$\{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1\} - \{1, 2\} - \emptyset - \{1, 2, 3\}.$$
Minden szomszédos pár tartalmazza a másikat, és mind a 8 csúcs pontosan egyszer szerepel. Tehát a leghosszabb út hossza **7**.

**c)** A séta ismételhet csúcsokat és éleket is. Mivel a gráf összefüggő és tartalmaz éleket (sőt köröket is), tetszőleges élen ide-oda lépkedve **tetszőlegesen hosszú séta** készíthető (nincs maximális hossz, a hossz tetszőlegesen nagy egész szám lehet).

**d)** **Igen, van.** A vonal élismétlés nélküli séta. Olyan 4 élből álló vonalat keresünk $\{1, 2\}$ és $\{2\}$ között, amelyben legalább egy csúcs ismétlődik.
Tekintsük az alábbi élsorozatot:
1. $e_1 = \{\{1, 2\}, \emptyset\}$
2. $e_2 = \{\emptyset, \{1, 2, 3\}\}$
3. $e_3 = \{\{1, 2, 3\}, \{1, 2\}\}$
4. $e_4 = \{\{1, 2\}, \{2\}\}$

Ez a séta a következő csúcsokat érinti sorrendben:
$$\{1, 2\} \to \emptyset \to \{1, 2, 3\} \to \{1, 2\} \to \{2\}.$$
A 4 él mind különböző, tehát ez egy vonal. Hossza 4, végpontjai $\{1, 2\}$ és $\{2\}$, és a kezdő $\{1, 2\}$ csúcs a 3. lépés után újra megjelenik (csúcsismétlés), így **nem út**.

**e)**
- **4 hosszú kör:** Létezik, például:
  $$\{1\} - \{1, 2\} - \{2\} - \emptyset - \{1\}.$$
  (Mind a 4 csúcs különböző, az egymást követők tartalmazzák egymást).
- **5 hosszú kör:** Létezik, például:
  $$\emptyset - \{1\} - \{1, 2\} - \{1, 2, 3\} - \{2, 3\} - \emptyset.$$
  (5 különböző csúcs, a szomszédosak tartalmazzák egymást: $\emptyset \subset \{1\} \subset \{1, 2\} \subset \{1, 2, 3\} \supset \{2, 3\} \supset \emptyset$).
- **6 hosszú kör:** Létezik, például az 1 és 2 elemű halmazok alternálásával:
  $$\{1\} - \{1, 2\} - \{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1\}.$$
- **6 hosszú zárt vonal, amely nem kör:**
  Két olyan 3 hosszú kört (háromszöget) veszünk, amelyeknek pontosan egy közös csúcsuk van, így élük nem közös. Legyen a közös csúcs az $\emptyset$:
  - 1. háromszög: $\emptyset - \{1\} - \{1, 2\} - \emptyset$ (élek: $\{\emptyset, \{1\}\}$, $\{\{1\}, \{1, 2\}\}$, $\{\{1, 2\}, \emptyset\}$).
  - 2. háromszög: $\emptyset - \{3\} - \{2, 3\} - \emptyset$ (élek: $\{\emptyset, \{3\}\}$, $\{\{3\}, \{2, 3\}\}$, $\{\{2, 3\}, \emptyset\}$).
  Ezek élei mind különbözők. A zárt séta:
  $$\emptyset \to \{1\} \to \{1, 2\} \to \emptyset \to \{3\} \to \{2, 3\} \to \emptyset.$$
  Ez 6 hosszú zárt vonal, de nem kör, mert az $\emptyset$ csúcsot kétszer is érinti a bejárás során.

---

## 90. feladat

a) Van-e olyan hatcsúcsú, 3-reguláris egyszerű gráf, amelyben nincs Hamilton-kör?

b) Mutass példát olyan 3-reguláris egyszerű összefüggő gráfra, amelyben nincs Hamilton-út!

**Megoldás.**

**a)** **Nincs ilyen gráf.**
Legyen $G$ egy 6 csúcsú, 3-reguláris egyszerű gráf.
A komplementere, $\overline{G}$ szintén egyszerű gráf 6 csúcson, és minden csúcsának foka $6 - 1 - 3 = 2$, vagyis $\overline{G}$ 2-reguláris gráf.
A 6 csúcsú 2-reguláris gráfok diszjunkt körök uniói. A 6 felbontásai legalább 3 hosszú körök összegeként:
1. Egyetlen 6 hosszú kör: $\overline{G} \cong C_6$.
2. Két diszjunkt 3 hosszú kör: $\overline{G} \cong C_3 \cup C_3$.

Vizsgáljuk meg mindkét esetet:
1. Ha $\overline{G} \cong C_3 \cup C_3$: ekkor a komplementer gráf a $K_{3,3}$ teljes páros gráf. A $K_{3,3}$ páros gráfban ($A = \{a_1, a_2, a_3\}, B = \{b_1, b_2, b_3\}$) létezik Hamilton-kör, például:
   $$a_1 - b_1 - a_2 - b_2 - a_3 - b_3 - a_1.$$
2. Ha $\overline{G} \cong C_6$: jelölje a komplementer kör csúcsait sorban $1, 2, 3, 4, 5, 6$. Ekkor $G$-ben pontosan azok a csúcspárok vannak összekötve, amelyek nem szomszédosak a $C_6$-ban. Könnyen találunk benne Hamilton-kört:
   $$1 - 3 - 5 - 2 - 6 - 4 - 1.$$
   Ellenőrzés: a használt élek különbségei mod 6: $|3-1|=2$, $|5-3|=2$, $|2-5|=3$, $|6-2|=4 \equiv 2$, $|4-6|=2$, $|1-4|=3$. Egyik sem 1 mod 6, tehát mind élei $G$-nek!

Mivel nincs más 6 csúcsú 3-reguláris egyszerű gráf, **minden 6 csúcsú 3-reguláris egyszerű gráfban van Hamilton-kör**.

**b)** Olyan összefüggő, 3-reguláris egyszerű gráfot keresünk, amelyben nincs Hamilton-út.
Alkalmazzuk a csúcstörlős szükséges feltételt: ha egy gráfban létezik Hamilton-út, akkor tetszőleges $S \subset V$ esetén $c(G - S) \le |S| + 1$.
Ha találunk egy olyan gráfot, amelyben egyetlen csúcs elhagyásával legalább 3 komponens keletkezik ($|S| = 1$ mellett $c(G - S) \ge 3 > 2$), abban nem létezhet Hamilton-út!

**Konstrukció:**
Készítsünk egy olyan 5 csúcsú $H$ részgráfot, amelyben egy kitüntetett $u$ csúcs foka 2, a többi 4 csúcs foka pedig 3:
- Vegyünk 5 csúcsot: $\{u, a, b, c, d\}$.
- Kössük össze a teljes $K_5$ éleivel, majd hagyjunk el belőle 3 élt: az $u$-ból induló $ua$ és $ub$ éleket, valamint a $cd$ élt.
- Ekkor az élek száma $\binom{5}{2} - 3 = 10 - 3 = 7$.
- A fokszámok: $d(u) = 4 - 2 = 2$ (szomszédai $c$ és $d$); $d(a) = 4 - 1 = 3$; $d(b) = 4 - 1 = 3$; $d(c) = 4 - 1 = 3$; $d(d) = 4 - 1 = 3$.
- Tehát $H$-ban $u$ foka 2, minden más csúcs foka 3.

Most vegyünk egy független $w$ csúcsot, és 3 darab diszjunkt másolatot $H$-ból: $H_1, H_2, H_3$, kitüntetett csúcsaik rendre $u_1, u_2, u_3$.
Kössük össze $w$-t az $u_1, u_2, u_3$ csúcsokkal!
- A gráf csúcsszáma $1 + 3 \times 5 = 16$.
- $w$ foka 3 (szomszédai $u_1, u_2, u_3$).
- Minden $u_i$ foka $2 + 1 = 3$ lett.
- A többi csúcs foka már eredetileg is 3 volt.
- A kapott $G$ gráf egyszerű, összefüggő és 3-reguláris!

**Miért nincs benne Hamilton-út?**
Ha elhagyjuk az $S = \{w\}$ egyelemű csúcshalmazt, a $G - \{w\}$ gráf a három független $H_1, H_2, H_3$ komponensre esik szét, így:
$$c(G - \{w\}) = 3 > |\{w\}| + 1 = 2.$$
A csúcstörlős kritérium miatt a gráfban **nem létezhet Hamilton-út**.

---

## 91. feladat

Az alábbi gráfok közül melyekben van nyílt, illetve zárt Euler-vonal? Mindhárom esetben $V = \{1, 2, \dots, 102\}$, és az élhalmaz:

a) $E_1 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 2\}$;

b) $E_2 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 3\}$;

c) $E_3 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \text{ páros}\}$.

**Megoldás.**

Euler tétele szerint egy összefüggő gráfban:
- pontosan akkor van zárt Euler-vonal, ha minden csúcs foka páros;
- pontosan akkor van nyílt Euler-vonal, ha pontosan 2 csúcs foka páratlan (a többi páros).

**a)** $E_1$: az $i$ és $j$ csúcs akkor van összekötve, ha különbségük 1 vagy 2.
A csúcsok fokszámai:
- Az 1-es csúcs szomszédai: 2, 3 $\implies d(1) = 2$ (páros).
- A 2-es csúcs szomszédai: 1, 3, 4 $\implies d(2) = 3$ (**páratlan**).
- Minden $3 \le i \le 100$ csúcs szomszédai: $i-2, i-1, i+1, i+2 \implies d(i) = 4$ (páros).
- A 101-es csúcs szomszédai: 99, 100, 102 $\implies d(101) = 3$ (**páratlan**).
- A 102-es csúcs szomszédai: 100, 101 $\implies d(102) = 2$ (páros).

A gráf összefüggő (az $1 - 2 - 3 - \dots - 102$ út benne van), és pontosan két páratlan fokú csúcsa van (a 2 és a 101).
Ezért a gráfban **zárt Euler-vonal nincs**, de **nyílt Euler-vonal van** (a 2 és a 101 csúcsok között).

**b)** $E_2$: a különbség legfeljebb 3.
A csúcsok fokszámai:
- $d(1) = 3$ (szomszédai: 2, 3, 4) — **páratlan**.
- $d(2) = 4$ (szomszédai: 1, 3, 4, 5) — páros.
- $d(3) = 5$ (szomszédai: 1, 2, 4, 5, 6) — **páratlan**.
- $d(100) = 5$ (szomszédai: 97, 98, 99, 101, 102) — **páratlan**.
- $d(101) = 4$ — páros.
- $d(102) = 3$ — **páratlan**.

A páratlan fokú csúcsok száma legalább 4 (az 1, 3, 100, 102 csúcsok mind páratlanok). Mivel a páratlan csúcsok száma nem 0 és nem 2, a gráfban **sem zárt, sem nyílt Euler-vonal nincs**.

**c)** $E_3$: $j - i$ páros.
Két szám különbsége pontosan akkor páros, ha azonos a paritásuk.
Tehát a páratlan számok mind össze vannak kötve az összes többi páratlan számmal, a páros számok pedig az összes többi páros számmal, de páratlan és páros szám között egyetlen él sincs!
A gráf két diszjunkt teljes gráf uniója: egy $K_{51}$ az $\{1, 3, 5, \dots, 101\}$ halmazon, és egy másik $K_{51}$ a $\{2, 4, 6, \dots, 102\}$ halmazon.
Mivel mindkét komponensben van él ($51 \ge 2$), egyetlen séta sem járhatja be mindkét komponens éleit.
A gráf nem összefüggő (két külön éllel rendelkező komponense van), így **sem zárt, sem nyílt Euler-vonal nincs**.

---

## 92. feladat

Van-e Hamilton-kör az alábbi gráfokban? És Hamilton-út?

**Megoldás.**

**1. gráf (házikó alakú gráf, 5 csúcs):**
A gráf egy alsó 4 csúcsú teljes részgráfból ($K_4$) és egy felső csúcsból áll, amely a $K_4$ két felső csúcsához kapcsolódik.
Jelölje a csúcsokat: $T$ (felső tetőcsúcs), $TL, TR$ (felső bal és jobb), $BL, BR$ (alsó bal és jobb).
- **Hamilton-kör:** Létezik:
  $$T - TL - BL - BR - TR - T.$$
  Ez az 5 csúcsú egyszerű kör mind az 5 csúcsot tartalmazza.
- **Hamilton-út:** Mivel van Hamilton-kör, annak bármelyik élét elhagyva **Hamilton-út is van**.

**2. gráf (pillangó / két $K_4$ egyetlen közös csúccsal, 7 csúcs):**
A bal oldali 3 csúcs a központi $C$ csúccsal egy $K_4$-et alkot, a jobb oldali 3 csúcs szintén a $C$ csúccsal egy $K_4$-et alkot. A két részgráf kizárólag a $C$ csúcsban találkozik.
- **Hamilton-kör:** Ha elhagyjuk az $S = \{C\}$ csúcsot, a megmaradó gráf 2 komponensre esik: $c(G - \{C\}) = 2 > |\{C\}| = 1$. A csúcstörlős feltétel miatt **nincs Hamilton-kör**.
- **Hamilton-út:** Létezik: bejárjuk a bal oldali $K_4$ három külső csúcsát, átmegyünk $C$-be, majd bejárjuk a jobb oldali $K_4$ három külső csúcsát:
  $$L_1 - L_2 - L_3 - C - R_1 - R_2 - R_3.$$
  Ez 7 csúcsú út, tehát **van Hamilton-út**.

**3. gráf (két $K_4$ és egy háromszög egy közös $C$ csúccsal, 9 csúcs):**
A központi $C$ vágócsúcs, amelyhez két diszjunkt $K_4$ és egy diszjunkt háromszög csatlakozik (a külső csúcsok száma $3 + 3 + 2 = 8$).
- Ha töröljük az $S = \{C\}$ csúcsot ($|S| = 1$), a gráf 3 komponensre esik szét:
  $$c(G - \{C\}) = 3.$$
- Hamilton-kör esetén $c(G - S) \le |S| = 1$ kellene, de $3 > 1$, így **nincs Hamilton-kör**.
- Hamilton-út esetén $c(G - S) \le |S| + 1 = 2$ kellene, de $3 > 2$, így **Hamilton-út sincs**.

**4. gráf (17 csúcsú rács-szerű, koncentrikus körökből álló gráf):**
A gráf csúcsai:
- Külső 8-as kör: $O_1, O_2, \dots, O_8$.
- Belső 8-as kör: $I_1, I_2, \dots, I_8$.
- Középpont: $M$.
Összeköttetések: a páros indexű külső csúcsok össze vannak kötve a megfelelő belső csúcsokkal ($O_{2k} - I_{2k}$), és a 4 belső páros csúcs össze van kötve $M$-mel ($I_{2k} - M$).

*1. észrevétel (Párosság):*
A gráf páros! Színezzük a csúcsokat két színnel ($A$ és $B$):
- $A$ osztály: a külső kör páratlan csúcsai ($O_1, O_3, O_5, O_7$) és a belső kör páros csúcsai ($I_2, I_4, I_6, I_8$). Mérete: $|A| = 4 + 4 = 8$.
- $B$ osztály: a külső kör páros csúcsai ($O_2, O_4, O_6, O_8$), a belső kör páratlan csúcsai ($I_1, I_3, I_5, I_7$), valamint a középpont $M$. Mérete: $|B| = 4 + 4 + 1 = 9$.
Minden él $A$ és $B$ között fut, így a gráf valóban páros.
Mivel a két színosztály elemszáma különböző ($|A| = 8 \ne 9 = |B|$), a gráfban **nem létezhet Hamilton-kör** (hiszen egy Hamilton-kör váltakozva látogatná az $A$ és $B$ osztályokat, amihez $|A| = |B|$ szükséges).

*2. észrevétel (Hamilton-út hiánya csúcstörléssel):*
Tekintsük az $S = \{I_2, I_4, I_6, I_8\}$ csúcshalmazt ($|S| = 4$).
Ha töröljük az $S$-beli 4 csúcsot a gráfból:
- $M$ izolált csúcs lesz (1 komponens),
- $I_1, I_3, I_5, I_7$ mind izolált csúcsok lesznek (4 különálló komponens),
- a külső csúcsok a külső körön keresztül összefüggők maradnak (1 komponens).
Így a komponensek száma:
$$c(G - S) = 1 + 4 + 1 = 6.$$
A Hamilton-út létezésének szükséges feltétele szerint $c(G - S) \le |S| + 1$ kellene legyen, de:
$$6 > 4 + 1 = 5.$$
Tehát a 4. gráfban **Hamilton-út sem létezik**.

---

## 93. feladat

a) Mutass ellenpéldát a Dirac-tétel megfordítására!

b) Mutass olyan gráfot, amelyben van Hamilton-kör, és ezt az Ore-tétel segítségével be tudod bizonyítani, de a Dirac-tétellel nem!

c) Mutasd meg, hogy az Ore-tétel feltétele nem szükséges a Hamilton-kör létezéséhez!

**Megoldás.**

**a)** A Dirac-tétel azt mondja ki, hogy ha egy $n \ge 3$ csúcsú egyszerű gráfban minden csúcs foka $d(v) \ge \frac{n}{2}$, akkor van benne Hamilton-kör.
A tétel megfordítása így hangzana: *„Ha egy egyszerű gráfban van Hamilton-kör, akkor minden csúcs foka legalább $\frac{n}{2}$.”*
**Ellenpélda:** Tetszőleges $C_n$ körgráf, ahol $n \ge 5$ (például $C_5$).
A $C_5$ gráfban van Hamilton-kör (maga a kör), de minden csúcs foka $2$, ami szigorúan kisebb, mint $\frac{n}{2} = \frac{5}{2} = 2.5$. Tehát a megfordítás hamis.

**b)** Olyan gráfot keresünk, amelyre teljesül az Ore-feltétel ($d(u) + d(v) \ge n$ minden nem szomszédos párra), de van olyan csúcsa, amelynek foka kisebb, mint $\frac{n}{2}$ (így a Dirac-tétel nem alkalmazható).
**Példa:** Legyen $n = 5$, és tekintsük a $G$ gráfot az $\{1, 2, 3, 4, 5\}$ csúcshalmazon úgy, hogy a $\{2, 3, 4, 5\}$ csúcsok egy $K_4$-et alkotnak, az $1$-es csúcs pedig csak a $2$ és $3$ csúcsokkal van összekötve.
- Fokszámok:
  $d(1) = 2$,
  $d(2) = 4$,
  $d(3) = 4$,
  $d(4) = 3$,
  $d(5) = 3$.
- Mivel $d(1) = 2 < \frac{5}{2} = 2.5$, a **Dirac-tétel nem alkalmazható**.
- A nem szomszédos csúcspárok kizárólag az $\{1, 4\}$ és $\{1, 5\}$:
  $d(1) + d(4) = 2 + 3 = 5 \ge 5$,
  $d(1) + d(5) = 2 + 3 = 5 \ge 5$.
  Minden nem szomszédos pár fokszámösszege legalább $n = 5$, így az **Ore-tétel alkalmazható**, és garantálja a Hamilton-kör létezését (amely valóban létezik, pl. $1 - 2 - 4 - 5 - 3 - 1$).

**c)** Az Ore-tétel feltétele nem szükséges: tekintsük újra az $n \ge 5$ csúcsú $C_n$ kört (pl. $C_5$).
Van benne Hamilton-kör, de bármely két nem szomszédos csúcs fokszámösszege $2 + 2 = 4 < 5 = n$. Tehát van Hamilton-kör anélkül, hogy az Ore-feltétel teljesülne.

---

## 94. feladat

a) Mutass olyan gráfot, amelyben minden csúcs foka páros, még sincs benne zárt Euler-vonal!

b) Mutass olyan gráfot, amely nem összefüggő, de van benne zárt Euler-vonal!

**Megoldás.**

**a)** Vegyünk két diszjunkt háromszöget: $G = C_3 \cup C_3$.
Ebben a gráfban 6 csúcs van, és minden csúcs foka pontosan 2 (tehát páros). Ennek ellenére nincs zárt Euler-vonal, mivel a gráf nem összefüggő, így egyetlen séta nem tartalmazhatja mindkét diszjunkt háromszög éleit.

**b)** Euler tétele megengedi, hogy a gráfban legyenek olyan komponensek, amelyek egyetlen izolált csúcsból állnak (nem tartalmaznak élt).
Legyen $G$ egy 3 hosszú kör és egy izolált csúcs uniója:
$$V = \{1, 2, 3, 4\}, \qquad E = \{\{1, 2\}, \{2, 3\}, \{3, 1\}\}.$$
A 4-es csúcs foka 0, így a gráf nem összefüggő (két komponense van: $\{1, 2, 3\}$ és $\{4\}$).
Ugyanakkor az $1 - 2 - 3 - 1$ zárt séta a gráf **összes élét** pontosan egyszer tartalmazza, vagyis definíció szerint zárt Euler-vonal!

---

## 95. feladat

a) Mutass olyan egyszerű gráfot, amelyben nincs Hamilton-út, de a csúcstörlős kritériummal ezt nem lehet kimutatni!

b) Adj analóg példát Hamilton-körre is, legalább három csúcson!

c) Mutass olyan egyszerű gráfot, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör!

**Megoldás.**

**a)** Olyan egyszerű gráfot kell megadnunk, amelyben **nincs Hamilton-út**, de **minden** $S \subset V$ csúcshalmazra teljesül a csúcstörlős szükséges feltétel:
$$c(G - S) \le |S| + 1.$$

**Konstrukció:**
Tekintsünk két kitüntetett csúcsot, $x$-et és $y$-t, amelyeket összekötünk egymással.
Csatoljunk hozzájuk 3 darab független komponenst: $C_1, C_2, C_3$.
Mindegyik $C_i$ legyen egy olyan 4 csúcsú gráf ($v_{i,1}, v_{i,2}, v_{i,3}, v_{i,4}$), amely a $K_4$-ből egyetlen él elhagyásával keletkezik (a hiányzó él $\{v_{i,2}, v_{i,4}\}$).
Mindhárom komponensben $x$-et kössük össze $v_{i,1}$-gyel, $y$-t pedig $v_{i,3}$-mal.
A gráf összesen $2 + 3 \times 4 = 14$ csúcsú.

*Miért nincs benne Hamilton-út?*
Egy Hamilton-útnak mindhárom $C_1, C_2, C_3$ komponenst be kell járnia. Mivel a komponensek között csak $x$-en és $y$-on keresztül lehet átjárni, és egy út $x$-et legfeljebb egyszer, $y$-t is legfeljebb egyszer érintheti:
- Legfeljebb két komponens tartalmazhatja az út végpontjait (egyikben indul, másikban végződik).
- A harmadik (közbenső) komponensbe az útnak az egyik kitüntetett csúcson (pl. $x$-en át $v_{i,1}$-nél) be kell lépnie, és a másikon (pl. $y$-on át $v_{i,3}$-nál) ki kell lépnie, miközben bejárja a komponens *összes* csúcsát!
Azonban a $K_4 \setminus \{v_{i,2}, v_{i,4}\}$ gráfban a $v_{i,2}$ és $v_{i,4}$ csúcsok szomszédai kizárólag a $\{v_{i,1}, v_{i,3}\}$ csúcspár. Ezért bármely $v_{i,1}$-ből induló és $v_{i,3}$-ban végződő egyszerű út legfeljebb az egyiküket tudja meglátogatni ($v_{i,1} - v_{i,2} - v_{i,3}$ vagy $v_{i,1} - v_{i,4} - v_{i,3}$), de mindkettőt egyszerre sosem!
Így egyik komponens sem tud közbenső komponensként viselkedni, tehát a gráfban **nincs Hamilton-út**.

*Miért nem mutatja ezt ki a csúcstörlős feltétel?*
Az $S = \{x, y\}$ törlésével ($|S| = 2$) a megmaradó gráf komponenseinek száma 3 ($C_1, C_2, C_3$).
A feltétel szerint $c(G - S) \le |S| + 1 = 2 + 1 = 3$, ami teljesül!
Minden más $S$ részhalmazra szintén igazolható (akár gépi ellenőrzéssel is), hogy $c(G - S) \le |S| + 1$, tehát a csúcstörlős feltétellel a Hamilton-út hiánya nem mutatható ki.

**b)** Hamilton-körre az analóg tulajdonság: a gráfban nincs Hamilton-kör, de minden $S \subset V$ esetén $c(G - S) \le |S|$.
A klasszikus példa a **Petersen-gráf** ($n = 10$ csúcs, 15 él):
- Ismert tétel, hogy a Petersen-gráfban **nincs Hamilton-kör** (például a külső 5-szög és belső 5-ágú csillag közötti küllők paritásos számlálásával igazolható).
- Ugyanakkor a Petersen-gráf 3-szorosan összefüggő, és tetszőleges $S \subset V$ csúcshalmazra $c(G - S) \le |S|$, vagyis a csúcstörlős kritérium nem tudja kimutatni a Hamilton-kör hiányát.

**c)** Olyan gráfot keresünk, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör.
**Példa:** A „pillangó gráf” (két háromszög egy közös csúccsal):
Legyen $V = \{v, a_1, a_2, b_1, b_2\}$, és az élek a két háromszög élei: $v - a_1 - a_2 - v$ és $v - b_1 - b_2 - v$.
- **Zárt Euler-vonal:** Minden csúcs foka páros ($d(v) = 4$, $d(a_1) = d(a_2) = d(b_1) = d(b_2) = 2$), és a gráf összefüggő, így van zárt Euler-vonal:
  $$v - a_1 - a_2 - v - b_1 - b_2 - v.$$
- **Hamilton-út:** Létezik:
  $$a_1 - a_2 - v - b_1 - b_2.$$
  Ez mind az 5 csúcsot bejárja.
- **Hamilton-kör nincs:** Ha töröljük a $v$ csúcsot, a gráf 2 komponensre esik ($c(G - \{v\}) = 2 > |\{v\}| = 1$), így a csúcstörlős feltétel miatt nem tartalmazhat Hamilton-kört.

---

## 96. feladat

A bal oldali palotaalaprajz szerint a) legkevesebb hány ajtót kell befalazni ahhoz, hogy tehessünk olyan sétát, amely során minden megmaradó ajtón pontosan egyszer megyünk át? b) És ha még vissza is akarunk érni a kiindulási terembe?

**Megoldás.**

Készítsük el a palota duális gráfját: a csúcsok a szobák, és két csúcs között pontosan akkor fut él, ha a megfelelő két szoba között van ajtó.
Az alaprajz szerint a palotában 14 szoba és 22 ajtó található.
Számoljuk meg a szobák fokszámait (az ajtók számát):
- A 4 belső/középső terem mindegyike pontosan 3 ajtóval rendelkezik ($d = 3$, **páratlan**).
- A többi 10 terem (folyosók, sarokszobák stb.) mindegyike páros számú ajtóval (2 vagy 4) rendelkezik.

Tehát a palotában pontosan **4 páratlan fokú terem** van.
Egy ajtó befalazása egy él törlését jelenti a gráfból, ami pontosan a két érintett szoba fokszámát csökkenti 1-gyel, így azok paritását az ellenkezőjére változtatja.

**a)** Olyan séta, amely minden megmaradó ajtón pontosan egyszer megy át: ez egy (nyílt vagy zárt) Euler-vonal.
Euler tétele szerint ehhez a páratlan fokú csúcsok száma legfeljebb 2 lehet.
Jelenleg 4 páratlan csúcs van, így legalább egy befalazás szükséges.
Ha befalazzuk a két felső középső terem közötti ajtót:
- e két terem foka $3$-ról $2$-re csökken (páros lesz),
- a másik két belső terem foka változatlanul 3 marad (páratlan),
- a többi terem foka páros marad.
Így pontosan 2 páratlan fokú terem marad, a gráf összefüggő marad, tehát létezik nyílt Euler-séta.
Ezért legkevesebb **1 ajtót** kell befalazni.

**b)** Ha vissza is akarunk érni a kiindulási terembe, akkor zárt Euler-vonalra van szükség.
Ehhez az összes csúcs fokszámának párosnak kell lennie (0 páratlan csúcs).
Egy ajtó befalazása legfeljebb 2 csúcs paritását változtathatja páratlanról párosra, így a 4 páratlan csúcs megszüntetéséhez legalább $\frac{4}{2} = 2$ ajtó befalazása szükséges.
Ez meg is valósítható:
1. Befalazzuk a két felső belső terem közötti ajtót (mindkettő páros lesz).
2. Befalazzuk a két alsó belső terem közötti ajtót (mindkettő páros lesz).
Ekkor mind a 14 terem foka páros lesz, és a palota összefüggő marad, így létezik zárt Euler-séta.
Ezért legkevesebb **2 ajtót** kell befalazni.

---

## 97. feladat

Mutasd meg, hogy a jobb oldali gráfban a) van Hamilton-út és Hamilton-kör (például a csúcsok megfelelő felsorolásával); b) nincs olyan Hamilton-kör, amelyben az $X$ és az $Y$ szomszédos!

**Megoldás.**

A gráf 12 csúcsú: 10 külső csúcs ($A, B, C, D, E, F, G, H, I, J$) egy tízszög mentén, valamint 2 belső csúcs ($X, Y$).

**a)** **Hamilton-kör és Hamilton-út létezése:**
Adjuk meg a csúcsok egy olyan ciklikus felsorolását, ahol minden szomszédos pár között van él:
$$A - X - J - H - B - D - F - Y - I - G - E - C - A.$$
Ellenőrizzük az éleket a megadott gráfban:
1. $A - X$: él (van)
2. $X - J$: él (van)
3. $J - H$: él (van)
4. $H - B$: él (van)
5. $B - D$: él (van)
6. $D - F$: él (van)
7. $F - Y$: él (van)
8. $Y - I$: él (van)
9. $I - G$: él (van)
10. $G - E$: él (van)
11. $E - C$: él (van)
12. $C - A$: él (van)
Mind a 12 csúcs pontosan egyszer szerepel, és a kör bezárul. Ez egy **Hamilton-kör**.
Egy tetszőleges élét (pl. $C - A$) elhagyva a kapott sorozat **Hamilton-út**.

**b)** **Nincs olyan Hamilton-kör, amelyben $X$ és $Y$ szomszédos:**
Vizsgáljuk meg a 10 külső csúcs közötti éleket:
- A páratlan betűk halmaza $C_1 = \{A, C, E, G, I\}$ egy 5 hosszú kört alkot belső átlókkal: az élek $A-C, C-E, E-G, G-I, I-A$, valamint átlók mint $C-G$. Egyetlen él sem megy $C_1$-ből a páros betűk felé!
- A páros betűk halmaza $C_2 = \{B, D, F, H, J\}$ szintén egy 5 hosszú kört alkot átlókkal ($B-D, D-F, F-H, H-J, J-B$).
- A külső csúcsok között **egyetlen él sincs $C_1$ és $C_2$ között**! A $G - \{X, Y\}$ részgráf két diszjunkt összefüggő komponensre esik: $C_1$-re és $C_2$-re.

Tegyük fel indirekt, hogy létezik olyan $H$ Hamilton-kör, amelyben $X$ és $Y$ szomszédos (azaz $H$ tartalmazza az $\{X, Y\}$ élt).
- Ekkor az $\{X, Y\}$ él a kör egyik éle mindkét csúcsnál.
- Mivel egy körben minden csúcs foka pontosan 2, $X$-nek a körben pontosan egyetlen további éle van a külső csúcsok felé (legyen ez egy $u \in C_1 \cup C_2$ csúcs felé mutató él).
- Hasonlóan, $Y$-nak a körben pontosan egyetlen további éle van a külső csúcsok felé (legyen ez egy $v \in C_1 \cup C_2$ felé mutató él).
- Ha a $H$ körből elhagyjuk az $X$ és $Y$ csúcsokat, a megmaradt csúcsok egyetlen összefüggő utat kell alkossanak $u$ és $v$ között a $G - \{X, Y\}$ gráfban.
Azonban $G - \{X, Y\}$-ban nincsenek élek $C_1$ és $C_2$ között:
- Ha $u$ és $v$ mindketten $C_1$-ben lennének, az út sosem érhetné el $C_2$-t, így $C_2$ csúcsai kimaradnának a körből.
- Ha $u$ és $v$ mindketten $C_2$-ben lennének, $C_1$ csúcsai maradnának ki.
- Ha az egyik $C_1$-ben, a másik $C_2$-ben van, akkor nem létezhet köztük összefüggő út $G - \{X, Y\}$-ban.
Mindegyik eset ellentmondásra vezet, így **nem létezhet olyan Hamilton-kör, amelyben $X$ és $Y$ szomszédos**. $\blacksquare$

---

## 98. feladat

Tíz házaspár mindegyik tagjára igaz, hogy a maradék kilenc házaspár mindegyikének legalább egyik tagját ismeri. Az ismeretség kölcsönös, és mindenki ismeri a saját házastársát is. Bizonyítsd be, hogy a húsz személy leültethető egy húszszemélyes, kör alakú asztalhoz úgy, hogy mindenki ismerje mindkét szomszédját!

**Megoldás.**

Készítsünk ismeretségi gráfot:
- A csúcsok a személyek: $n = 10 \times 2 = 20$ csúcs.
- Két csúcs között él fut, ha a két személy ismeri egymást.
- A feladat kérdése az, hogy van-e Hamilton-kör ebben a 20 csúcsú egyszerű gráfban.

Becsüljük meg egy tetszőleges $P$ személy fokszámát (az ismerőseinek számát):
1. $P$ ismeri a saját házastársát: ez legalább 1 személy.
2. A maradék 9 házaspár mindegyikéből ismeri legalább az egyik tagot: ez további legalább 9 személy.
Tehát bármely $P$ csúcs foka:
$$d(P) \ge 1 + 9 = 10.$$

Mivel a csúcsszám $n = 20 \ge 3$, és minden csúcsra:
$$d(P) \ge 10 = \frac{20}{2} = \frac{n}{2},$$
a **Dirac-tétel** feltétele teljesül!
A Dirac-tétel értelmében a gráfban létezik Hamilton-kör.
A Hamilton-kör mentén leültetve a személyeket az asztal köré, mindenki mindkét mellette ülő szomszédját ismerni fogja. $\blacksquare$

---

## 99. feladat

Hány Hamilton-út, illetve Hamilton-kör van a $K_{n,n}$ teljes páros gráfban, ha $n \ge 2$? Két utat vagy kört akkor tekintünk különbözőnek, ha eltér az élhalmazuk.

**Megoldás.**

Jelölje a két színosztályt $A = \{a_1, \dots, a_n\}$ és $B = \{b_1, \dots, b_n\}$.

**1. Hamilton-körök száma:**
Egy Hamilton-kör $2n$ csúcsú, és felváltva kell látogatnia $A$ és $B$ csúcsait:
$$a_{i_1} - b_{j_1} - a_{i_2} - b_{j_2} - \dots - a_{i_n} - b_{j_n} - a_{i_1}.$$
- A ciklikus elforgatások kiküszöbölésére rögzítsük a kezdőcsúcsot: legyen ez az $a_1 \in A$ csúcs.
- A maradék $n-1$ darab $A$-beli csúcs sorrendje $(n-1)!$-féleképpen választható meg.
- Az $n$ darab $B$-beli csúcs beiktatási sorrendje $n!$-féleképpen választható meg.
- Mivel a kört a két ellentétes körüljárási irányban bejárva ugyanazt az élhalmazt kapjuk, osztanunk kell 2-vel:
$$\text{Hamilton-körök száma} = \frac{(n-1)! \cdot n!}{2}.$$

**2. Hamilton-utak száma:**
Egy Hamilton-út $2n$ csúcsot tartalmaz, így $2n-1$ éle van. Felváltva látogatja $A$ és $B$ csúcsait:
- Vagy $A$-ban kezdődik és $B$-ben végződik: $a_{i_1}, b_{j_1}, \dots, a_{i_n}, b_{j_n}$.
  Az $A$ csúcsainak sorrendje $n!$, a $B$ csúcsainak sorrendje $n!$, ez $n! \cdot n! = (n!)^2$ lehetőség.
- Vagy $B$-ben kezdődik és $A$-ban végződik: $b_{j_1}, a_{i_1}, \dots, b_{j_n}, a_{i_n}$.
  Ez szintén $(n!)^2$ lehetőség.
Összesen $2 \cdot (n!)^2$ irányított csúcssorozat van.
Mivel két utat akkor tekintünk azonosnak, ha megegyezik az élhalmazuk, és egy irányítatlan utat pontosan a két végpontja felől indulva olvashatunk ki (az egyik $A$-ban, a másik $B$-ben kezdődik), minden élhalmaz pontosan 2 irányított sorozatnak felel meg.
Ezért:
$$\text{Hamilton-utak száma} = \frac{2 \cdot (n!)^2}{2} = (n!)^2.$$

---

## 100. feladat

Az $F$ fának 17 csúcsa van, és minden csúcsának fokszáma 1 vagy 4. Határozd meg, legalább hány élt kell $F$-be behúzni ahhoz, hogy a keletkező egyszerű gráfnak legyen zárt Euler-vonala!

**Megoldás.**

Legyen a fa csúcsszáma $n = 17$. Egy $n$ csúcsú fa éleinek száma $e = n - 1 = 16$.
A fokszámösszeg a kézfogási lemma szerint:
$$\sum_{v \in V} d_F(v) = 2e = 32.$$
Jelölje $k$ a 4-edfokú csúcsok, $\ell$ pedig az 1-edfokú csúcsok (levelek) számát:
$$k + \ell = 17,$$
$$4k + \ell = 32.$$
A második egyenletből kivonva az elsőt: $3k = 15 \implies k = 5$, és így $\ell = 17 - 5 = 12$.
Tehát a fának **5 darab páros (4-edfokú)** és **12 darab páratlan (1-edfokú)** csúcsa van.

Olyan új $E'$ élhalmazt akarunk behúzni, hogy a keletkező $G = (V, E \cup E')$ egyszerű gráfban minden csúcs foka páros legyen (hiszen $G$ összefüggő, mivel tartalmazza az $F$ fát).
Jelölje $d_{E'}(v)$ a behúzott élek számát a $v$ csúcsnál:
- Ha $v$ 4-edfokú volt $F$-ben, akkor $d_G(v) = 4 + d_{E'}(v)$ párosságához $d_{E'}(v)$-nek **párosnak** kell lennie ($\ge 0$).
- Ha $v$ 1-edfokú volt $F$-ben, akkor $d_G(v) = 1 + d_{E'}(v)$ párosságához $d_{E'}(v)$-nek **páratlannak** kell lennie ($\ge 1$).

A behúzott élek fokszámösszege a 12 levélre:
$$\sum_{u \text{ levél}} d_{E'}(u) \ge 12 \times 1 = 12.$$
Mivel a behúzott élek fokszámösszege $2|E'|$:
$$2|E'| = \sum_{v \in V} d_{E'}(v) \ge \sum_{u \text{ levél}} d_{E'}(u) \ge 12 \implies |E'| \ge 6.$$
Tehát legalább **6 élt** be kell húzni.

Megmutatjuk, hogy 6 él behúzása elegendő:
Ha a 12 levelet párokba állítjuk, és behúzunk közéjük 6 független élt (egy teljes párosítást a leveleken):
- Ekkor minden levél foka $1 + 1 = 2$ (páros) lesz.
- Az 5 belső csúcs foka változatlanul 4 (páros) marad.
- A keletkező gráf egyszerű marad, mert két levél semmiképp sem volt szomszédos az $F$ fában (ha két levél szomszédos lenne egy fában, akkor a fának csak 2 csúcsa lenne, de itt $n = 17$).
Így a keletkező egyszerű gráf minden csúcsa páros fokú és összefüggő, tehát van benne zárt Euler-vonal.
A minimális élszám tehát **6**.

---

## 101. feladat

Bizonyítsd be, hogy ha egy $n \ge 3$ csúcsú egyszerű $G$ gráf kielégíti az Ore-tétel feltételét, vagyis bármely két nem szomszédos csúcsának fokszámösszege legalább $n$, akkor

a) bármely két csúcsának távolsága legfeljebb kettő;

b) a csúcsok legalább felének fokszáma legalább $n/2$.

**Megoldás.**

**a)** Legyen $u, v \in V$ két tetszőleges különböző csúcs.
- Ha $u$ és $v$ szomszédosak, akkor köztük a távolság 1, ami $\le 2$.
- Ha $u$ és $v$ nem szomszédosak:
  Az Ore-feltétel szerint $d(u) + d(v) \ge n$.
  Mind $u$, mind $v$ szomszédai a maradék $V \setminus \{u, v\}$ halmazban találhatók, amelynek mérete $|V \setminus \{u, v\}| = n - 2$.
  A skatulyaelv (vagy a szita-formula) szerint a közös szomszédaik száma:
  $$|N(u) \cap N(v)| = |N(u)| + |N(v)| - |N(u) \cup N(v)| \ge n - (n - 2) = 2 \ge 1.$$
  Mivel van közös szomszédjuk (sőt legalább kettő is), jelöljön egyet $w \in N(u) \cap N(v)$.
  Ekkor $u - w - v$ egy 2 hosszú út $u$ és $v$ között, tehát $\text{dist}(u, v) \le 2$. $\blacksquare$

**b)** Legyen $S = \{v \in V : d(v) < n/2\}$ a kis fokszámú csúcsok halmaza, és legyen $k = |S|$.
Azt kell belátnunk, hogy a csúcsok legalább fele legalább $n/2$ fokú, azaz $k \le n/2$.

Tegyük fel indirekt, hogy $k > n/2$.
1. Először belátjuk, hogy **$S$-ben bármely két csúcs szomszédos**:
   Ha létezne két nem szomszédos $u, v \in S$ csúcs, akkor az Ore-tétel szerint $d(u) + d(v) \ge n$ lenne.
   Azonban a definíció szerint $d(u) < n/2$ és $d(v) < n/2$, amiből
   $$d(u) + d(v) < \frac{n}{2} + \frac{n}{2} = n,$$
   ami ellentmondás!
   Tehát az $S$ halmaz feszített részgráfja teljes gráf: $G[S] \cong K_k$.
2. Mivel $S$ egy $k$ méretű teljes gráf, minden $v \in S$ csúcsnak már $S$-en belül van legalább $k - 1$ szomszédja, így:
   $$d(v) \ge k - 1.$$
3. Vizsgáljuk meg a $k > n/2$ feltételt:
   - Ha $n$ páros ($n = 2m$): $k > m \implies k \ge m + 1$, amiből $d(v) \ge k - 1 \ge m = n/2$, ami ellentmond annak, hogy $v \in S$ (hiszen $d(v) < n/2$).
   - Ha $n$ páratlan ($n = 2m + 1$): $n/2 = m + 0.5$. $k > n/2 \implies k \ge m + 1$.
     - Ha $k \ge m + 2$, akkor $d(v) \ge k - 1 \ge m + 1 > n/2$, ami ellentmondás.
     - Ha $k = m + 1$: ekkor $k - 1 = m$. Mivel $v \in S$, $d(v) < m + 0.5$, azaz $d(v) \le m$. Mivel $d(v) \ge k - 1 = m$, ebből következik, hogy **minden $v \in S$ csúcsra $d(v) = m$**.
       Ez azt jelenti, hogy az $S$-beli csúcsoknak **egyáltalán nincs élük $S$-en kívülre** (csak az $S$-beli $k-1=m$ másik csúcshoz kapcsolódnak).
       Ekkor $S$ a gráf egy izolált komponense.
       A gráf többi csúcsának halmaza $V \setminus S$, amelynek mérete $n - k = (2m + 1) - (m + 1) = m \ge 1$ (mivel $n \ge 3 \implies m \ge 1$).
       Válasszunk egy $u \in S$ és egy $w \in V \setminus S$ csúcsot! Mivel nincsenek élek $S$ és $V \setminus S$ között, $u$ és $w$ nem szomszédosak.
       Az Ore-feltétel szerint:
       $$d(u) + d(w) \ge n = 2m + 1.$$
       Mivel $d(u) = m$, ebből $d(w) \ge (2m + 1) - m = m + 1$ következne.
       Azonban $w$-nek sincs éle $S$ felé, így $w$ csak a $V \setminus S$ halmaz többi csúcsához kapcsolódhat, amiből legfeljebb $|V \setminus S| - 1 = m - 1$ darab van!
       Így $d(w) \le m - 1 < m + 1$, ami ellentmondás!

Minden esetben ellentmondásra jutottunk, tehát feltevésünk hamis volt: $k \le n/2$.
Így legalább $n - k \ge n/2$ csúcs fokszáma legalább $n/2$. $\blacksquare$

---

## 102. feladat

Legyen $G$ csúcshalmaza $\{1, 2, \dots, 100\}$. Van-e $G$-ben Hamilton-út, ha két *különböző* $i, j$ csúcsot pontosan az alábbi feltétel teljesülésekor kötünk össze?

a) $0 < |i - j| \le 2$;

b) $|i - j| = 2 \text{ vagy } 3$;

c) $i \mid j \text{ vagy } j \mid i$;

d) $|i - j| > 23$.

**Megoldás.**

**a)** **Van Hamilton-út.**
A feltétel megengedi az 1 különbségű szomszédokat is, így az
$$1 - 2 - 3 - \dots - 100$$
sorozat minden szomszédos elemére $|(i+1) - i| = 1 \le 2$, ami egy triviális Hamilton-út. (Sőt a páros és páratlan számokon oda-vissza lépkedve Hamilton-kör is készíthető).

**b)** **Van Hamilton-út.**
Konstruálhatunk explicit Hamilton-utat:
Például induljunk ki az alábbi 6 elemű blokkból:
$$1, 3, 5, 2, 4, 6$$
(a lépések: $+2, +2, -3, +2, +2$, mind megengedettek).
Ezt követően 4-esével lépegetünk előre az alábbi mintával minden $k \ge 1$ esetén:
a $4k+2$ csúcsról a következő 4-es blokkba lépünk:
$$(4k+2) \xrightarrow{+2} (4k+4) \xrightarrow{+2} (4k+6) \xrightarrow{-3} (4k+3) \xrightarrow{+2} (4k+5) \xrightarrow{+2} (4k+7) \dots$$
A lépések mind $+2$ vagy $-3$ távolságúak, mindegyik 4-es csoportban minden csúcsot pontosan egyszer érintünk, és a 100 csúcs teljes egészében bejárható. Tehát létezik Hamilton-út.

**c)** **Nincs Hamilton-út.**
Tekintsük az 50-nél nagyobb prímszámokat $\{1, 2, \dots, 100\}$-ban:
$$53, 59, 61, 67, 71, 73, 79, 83, 89, 97.$$
Összesen 10 ilyen prím van.
Egy tetszőleges $p > 50$ prím osztói csak az 1 és a $p$. Többszörösei a halmazban: $1 \cdot p = p$ és $2p > 100$, tehát a halmazban nincs nála nagyobb többszöröse.
Ez azt jelenti, hogy **bármely $p > 50$ prímnek az egész gráfban egyetlen szomszédja van: az 1-es szám**!
A gráfban tehát legalább 10 darab olyan 1-fokú (levél) csúcs van, amelyek mind kizárólag az 1-es csúcshoz csatlakoznak.
Egy egyszerű útban egyetlen csúcsnak legfeljebb 2 szomszédja lehet. Az 1-es csúcson keresztül legfeljebb 2 levél látogatható meg (az egyik lehet az út kezdőpontja, a másik a végpontja).
A maradék legalább 8 levél-prímet egyetlen egyszerű út sem tudja meglátogatni!
(Formálisan a csúcstörlős feltétellel: $S = \{1\}$ elhagyásával a 10 darab prím mind izolált komponenssé válik, így $c(G - \{1\}) \ge 10 > |\{1\}| + 1 = 2$).
Tehát a gráfban **nem létezik Hamilton-út**.

**d)** **Van Hamilton-út.**
A csúcsok száma $n = 100$. Két csúcs pontosan akkor van összekötve, ha $|i - j| \ge 24$.
Bármely $i \in \{1, \dots, 100\}$ esetén azok a $j \ne i$ csúcsok, amelyek *nincsenek* összekötve $i$-vel, kielégítik a $|i - j| \le 23$ egyenlőtlenséget.
Legfeljebb 23 darab nála kisebb és legfeljebb 23 darab nála nagyobb szám lehet, így a nem-szomszédok száma legfeljebb $23 + 23 = 46$.
Ezért minden $i$ csúcs foka:
$$d(i) \ge (100 - 1) - 46 = 53.$$
Mivel $n = 100$ és minden csúcsra:
$$d(i) \ge 53 \ge 50 = \frac{n}{2},$$
a **Dirac-tétel** szerint a gráfban nemcsak Hamilton-út, hanem **Hamilton-kör is van**!

---

## Házi feladat

## 103. feladat (házi feladat)

$G$ egy százcsúcsú egyszerű összefüggő $2k$-reguláris gráf, vagyis minden csúcsának foka $2k$. Bizonyítsd be, hogy $G$ néhány élét ki lehet színezni pirosra úgy, hogy minden csúcsra pontosan $k$ piros él illeszkedjen!

**Megoldás.**

Mivel $G$ összefüggő és minden csúcsának foka $2k$ (páros szám), Euler tétele értelmében a gráfban létezik egy $W$ **zárt Euler-vonal**:
$$v_0, e_1, v_1, e_2, v_2, \dots, e_m, v_0,$$
ahol $m$ a gráf összes éleinek száma:
$$m = \frac{100 \cdot 2k}{2} = 100k.$$
Mivel 100 páros, az élek $m = 100k$ száma **páros szám**.

Színezzük ki az éleket a zárt Euler-vonal mentén haladva felváltva pirosra és kékre:
- $e_1$ piros,
- $e_2$ kék,
- $e_3$ piros,
- és így tovább, általában $e_{2i-1}$ piros, $e_{2i}$ kék minden $i = 1, \dots, 50k$ esetén.
Mivel $m$ páros, az utolsó $e_m$ él kék lesz, így a zárt vonalon a paritás nem törik meg ($e_m$ kék, a rákövetkező $e_1$ piros).

Vizsgáljuk meg a csúcsokra illeszkedő élek színeit:
- A zárt Euler-vonal minden $v$ csúcsot pontosan $k$-szor látogat meg (mivel minden látogatáskor 2 illeszkedő élet használ el, és a fokszám $2k$).
- Bármelyik látogatás során a vonal egy belépő élen ($e_t$) érkezik $v$-be, és egy kilépő élen ($e_{t+1}$) távozik.
- Mivel a színek szigorúan alternálnak a vonal mentén, az $\{e_t, e_{t+1}\}$ élpár közül az egyik szükségképpen **piros**, a másik pedig **kék**.
- (A kezdő $v_0$ csúcsnál a befejező él $e_m$ kék, a kezdő él $e_1$ piros, így ott is 1 piros és 1 kék él keletkezik).

Mivel minden csúcsot pontosan $k$-szor látogatunk meg, és minden látogatás pontosan 1 piros és 1 kék élet ad a csúcsnak, a bejárás végén minden csúcsra **pontosan $k$ darab piros él** és $k$ darab kék él fog illeszkedni. $\blacksquare$

---

## 104. feladat (házi feladat)

Egy sakktáblát szeretnénk bejárni lóugrásban úgy, hogy minden mezőre pontosan egyszer lépjünk. Lehetséges-e ez, ha a tábla a) $4 \times 4$-es; b) $5 \times 5$-ös; c) $3 \times 5$-ös? És ha zárt bejárást szeretnénk, vagyis az utolsó mezőről egy lóugrással vissza is akarunk érkezni az elsőre?

**Megoldás.**

A sakktábla mezőit a szokásos módon színezzük fekete és fehér színekre.
Mivel a huszár minden lépéssel megváltoztatja a mező színét (fehérről feketére vagy feketéről fehérre lép), a **huszárgráf páros gráf**.
- Zárt bejárás (Hamilton-kör) csak páros számú mező esetén létezhet, és szükséges hozzá, hogy a fekete és fehér mezők száma megegyezzen.
- Nyílt bejárás (Hamilton-út) esetén a két színosztály mezőszámának különbsége legfeljebb 1 lehet.

**a) $4 \times 4$-es tábla (16 mező):**
- **Zárt bejárás (Hamilton-kör):** **Nem lehetséges.**
- **Nyílt bejárás (Hamilton-út):** **Nem lehetséges.**

*Bizonyítás csúcstörléssel:*
Tekintsük a 4 belső mezőt: $S = \{(2,2), (2,3), (3,2), (3,3)\}$ ($|S| = 4$).
A 4 sarokmező ($(1,1), (1,4), (4,1), (4,4)$) mindegyikéből egy huszár kizárólag a 4 belső mező valamelyikére tud lépni!
Például az $(1,1)$ szomszédai a táblán csak a $(2,3)$ és a $(3,2)$.
Ha töröljük az $S$ halmaz 4 csúcsát:
- a 4 sarokmező mindegyike izolált ponttá válik (4 komponens);
- a maradék 8 peremmező 4 darab diszjunkt él-párt alkot (pl. $(1,2)$ és $(3,1)$ össze vannak kötve, de más elérhető szomszédjuk nincs $G - S$-ben), ami további 4 komponenst jelent.
Így $G - S$ komponenseinek száma:
$$c(G - S) = 4 + 4 = 8.$$
A Hamilton-út létezésének szükséges feltétele szerint $c(G - S) \le |S| + 1$ kellene, de:
$$8 > 4 + 1 = 5.$$
Ezért a $4 \times 4$-es táblán **sem nyílt, sem zárt bejárás nem lehetséges**.

**b) $5 \times 5$-ös tábla (25 mező):**
- **Zárt bejárás:** **Nem lehetséges**, mert a mezők száma (25) páratlan, így páros gráfban nem tartalmazhat Hamilton-kört.
- **Nyílt bejárás:** **Lehetséges.**
  Explicit bejárási sorrend a mezők sorszámozásával ($1$-től $25$-ig):

$$\begin{array}{|c|c|c|c|c|}
\hline
1 & 12 & 25 & 18 & 3 \\ \hline
22 & 17 & 2 & 13 & 24 \\ \hline
11 & 8 & 23 & 4 & 19 \\ \hline
16 & 21 & 6 & 9 & 14 \\ \hline
7 & 10 & 15 & 20 & 5 \\ \hline
\end{array}$$

Könnyen ellenőrizhető, hogy minden $k \to k+1$ lépés szabályos huszárlépés, és a tábla minden mezője pontosan egyszer szerepel.

**c) $3 \times 5$-ös tábla (15 mező):**
- **Zárt bejárás:** **Nem lehetséges**, mert a mezők száma (15) páratlan.
- **Nyílt bejárás:** **Nem lehetséges.**

*Bizonyítás csúcstörléssel:*
Színezzük a mezőket sakktáblaszerűen úgy, hogy a sarkok feketék legyenek. Ekkor 8 fekete és 7 fehér mező van.
A 4 sarokmező ($(1,1), (1,5), (3,1), (3,5)$) mindegyike fekete.
A sarkok szomszédai mind fehérek:
- $(1,1)$ szomszédai: $(2,3)$ és $(3,2)$;
- $(1,5)$ szomszédai: $(2,3)$ és $(3,4)$;
- $(3,1)$ szomszédai: $(2,3)$ és $(1,2)$;
- $(3,5)$ szomszédai: $(2,3)$ és $(1,4)$.
Válasszuk ki az alábbi 5 fehér mezőből álló halmazt:
$$S = \{(1,2), (1,4), (2,3), (3,2), (3,4)\} \qquad (|S| = 5).$$
Ha ezt az 5 csúcsot töröljük a gráfból, a 4 fekete sarokmező mindegyike izolált ponttá válik, és a középső oszlop fekete mezői is leválnak, összesen $c(G - S) = 7$ komponens keletkezik.
A Hamilton-útra vonatkozó feltétel szerint $c(G - S) \le |S| + 1$ kellene, de:
$$7 > 5 + 1 = 6.$$
Ezért a $3 \times 5$-ös táblán **sem nyílt, sem zárt bejárás nem lehetséges**.

---

## 105. feladat (házi feladat)

Legyen $n \ge 1$. A $G$ gráf $2^n$ csúcsa egy $n$ elemű halmaz részhalmazainak felel meg. Két *különböző* csúcs között akkor megy irányítatlan él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat.

a) Hány éle van $G$-nek?

b) Van-e benne nyílt vagy zárt Euler-vonal?

c) És Hamilton-kör?

**Megoldás.**

**a)** A gráf élei a rendezetlen $\{X, Y\}$ részhalmazpároknak felelnek meg, ahol $X \subsetneq Y$ vagy $Y \subsetneq X$.
Minden él pontosan egy olyan $(X, Y)$ rendezett párt határoz meg, amelyre $X \subsetneq Y$.
Számoljuk meg az összes olyan $(X, Y)$ párt, amelyre $X \subseteq Y$:
Az alaphalmaz minden egyes $i \in \{1, \dots, n\}$ elemére pontosan 3 lehetőség van:
1. $i \notin Y$ (és így $i \notin X$ sem),
2. $i \in Y$, de $i \notin X$,
3. $i \in X$ és $i \in Y$.
Ezért összesen $3^n$ darab olyan $(X, Y)$ pár van, ahol $X \subseteq Y$.
Ezek közül pontosan $2^n$ esetben egyezik meg a két halmaz ($X = Y$).
Így a szigorú tartalmazást ($X \subsetneq Y$) kielégítő párok száma:
$$\text{Élek száma} = 3^n - 2^n.$$

*(Ellenőrzés: $n=1$-re $3^1 - 2^1 = 1$; $n=3$-ra $3^3 - 2^3 = 27 - 8 = 19$, összhangban a 89. feladattal).*

**b)** Számítsuk ki egy tetszőleges $k$-elemű $X$ csúcs fokszámát ($0 \le k \le n$):
- $X$ valódi részhalmazainak száma: $2^k - 1$.
- $X$-et valódi részként tartalmazó bővebb halmazok száma: $2^{n-k} - 1$.
Ezért a fokszám:
$$d(X) = (2^k - 1) + (2^{n-k} - 1) = 2^k + 2^{n-k} - 2.$$

Vizsgáljuk meg $d(X)$ paritását:
- Ha $k = 0$ ($X = \emptyset$): $d(\emptyset) = 2^0 + 2^n - 2 = 2^n - 1$, ami **páratlan** minden $n \ge 1$ esetén.
- Ha $k = n$ ($X$ a teljes halmaz): $d(V) = 2^n + 2^0 - 2 = 2^n - 1$, ami szintén **páratlan** minden $n \ge 1$ esetén.
- Ha $1 \le k \le n - 1$: ekkor mind $k \ge 1$, mind $n - k \ge 1$, így $2^k$ és $2^{n-k}$ is páros számok. Ekkor $d(X) = 2^k + 2^{n-k} - 2$ két páros szám összege mínusz 2, ami **páros**!

Ez azt jelenti, hogy:
- **Minden $n \ge 1$ esetén pontosan két csúcs foka páratlan** (az üres halmaz és a teljes halmaz), az összes többi $2^n - 2$ csúcs foka páros.
- A gráf összefüggő, mivel minden csúcs össze van kötve az üres halmazzal.
Ezért:
- **Zárt Euler-vonal sosem létezik** (mindig van páratlan fokú csúcs).
- **Nyílt Euler-vonal minden $n \ge 1$ esetén létezik** (amely az $\emptyset$ és a teljes halmaz között fut).

**c)**
- **$n = 1$ esetén:** A gráfnak 2 csúcsa van ($\emptyset$ és $\{1\}$). Egy egyszerű körhöz legalább 3 csúcs szükséges, így $n = 1$-re **nincs Hamilton-kör**.
- **$n \ge 2$ esetén:** **Mindig van Hamilton-kör.**
  *Bizonyítás:* A hiperkockagráf ($Q_n$) csúcsai szintén a részhalmazok, és két halmaz akkor szomszédos, ha szimmetrikus differenciájuk 1 elemű (azaz az egyik úgy keletkezik a másikból, hogy hozzáadunk vagy elhagyunk egyetlen elemet).
  Mivel ha $|Y \setminus X| = 1$ és $X \subset Y$, akkor az egyik tartalmazza a másikat, a $Q_n$ hiperkocka minden éle éle a mi $G$ korunknak is (azaz $Q_n \subseteq G$).
  Ismert tétel, hogy a $Q_n$ hiperkockában minden $n \ge 2$ esetén létezik Hamilton-kör (ezt adja meg a bináris Gray-kód).
  Mivel $Q_n$ részgráfja $G$-nek, a $Q_n$-beli Hamilton-kör a $G$ gráfban is Hamilton-kör!
  *(Például $n=2$-re: $\emptyset - \{1\} - \{1, 2\} - \{2\} - \emptyset$; $n=3$-ra: $\emptyset - \{1\} - \{1, 2\} - \{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1, 2, 3\} - \emptyset$).*

# Kombinatorika 1 – Régi ZH feladatok (2024) – megoldások

### Kombinatorika 1 normál · 2024.

Emlékeztetőül, a Fibonacci-sorozat definíciója: $F_0 = 0$, $F_1 = 1$, $n \ge 2$ esetén $F_n = F_{n-1} + F_{n-2}$.

## 75. feladat

Egy 13 csúcsú fában van két 6 fokú csúcs. Mutassuk meg, hogy a fában nincs 3 fokú csúcs!

**Megoldás.**

Egy $n = 13$ csúcsú fának $n - 1 = 12$ éle van, így a kézfogási lemma szerint a csúcsok fokszámának összege
$$\sum_{v \in V} \deg(v) = 2|E| = 2 \cdot 12 = 24.$$
Mivel a fa összefüggő és $n \ge 2$, nincsenek benne izolált pontok, azaz minden csúcs foka legalább 1: $\deg(v) \ge 1$.

Jelölje a két 6 fokú csúcsot $u$ és $v$, a maradék 11 csúcs fokszámait pedig $d_1, d_2, \dots, d_{11}$. Ekkor:
$$\deg(u) + \deg(v) + \sum_{i=1}^{11} d_i = 6 + 6 + \sum_{i=1}^{11} d_i = 24 \implies \sum_{i=1}^{11} d_i = 12.$$
Mivel mind a 11 darab $d_i$ szám pozitív egész ($d_i \ge 1$), összegük csak úgy lehet 12, ha közülük 10 darab értéke 1, és 1 darab értéke 2:
$$10 \cdot 1 + 1 \cdot 2 = 12.$$
Ha ugyanis létezne olyan csúcs, amelynek foka legalább 3 (azaz valamelyik $d_i \ge 3$), akkor a maradék 10 csúcs foka legalább 1 lévén a fokszámösszeg legalább
$$3 + 10 \cdot 1 = 13 > 12$$
volna, ami ellentmondás.

Tehát a fa fokszámsorozata szükségképpen $6, 6, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1$. Így a fában **nem lehet 3 fokú csúcs**. $\blacksquare$

::: elmelet
**Elméleti háttér — fokszámösszeg fákban.** Egy $n$ csúcsú fa élszáma mindig $|E| = n - 1$, és a fokszámok összege $2(n - 1)$. Mivel minden összefüggő, $n \ge 2$ csúcsú gráfban a minimális fokszám $\delta(G) \ge 1$, a nagy fokú csúcsok erősen korlátozzák a többi csúcs lehetséges fokait: az átlagos fokszám $\frac{2n-2}{n} < 2$, ezért minél nagyobb fokú csúcsok vannak a fában, annál több 1-edfokú csúcsnak (levélnek) kell lennie.
:::

## 76. feladat

Egy paintball meccsen mindenki hat másik embert talált el és a meccs után nincs két olyan ember, akit ugyanannyi találat ért. Hány fős társaság paintballozott egymással?

**Megoldás.**

**A társaság 13 fős volt.**

Tekintsük a játékot egy olyan irányított gráfként, ahol a csúcsok a résztvevők ($n$ ember), és egy $u \to v$ irányított él pontosan akkor fut, ha $u$ eltalálta $v$-t.

- Mivel mindenki pontosan 6 másik embert talált el, minden csúcs kimenő foka $d^+(v) = 6$. Így az élek (összes leadott érvényes találat) száma:
  $$|E| = \sum_{v \in V} d^+(v) = 6n.$$
- Egy $v$ csúcs bejövő foka $d^-(v)$ azt adja meg, hogy $v$-t hány találat érte. Mivel nincs két ember, akit ugyanannyi találat ért volna, a $\{d^-(v) : v \in V\}$ bejövő fokok mind különböző nemnegatív egész számok.
- Mindenki legfeljebb a többi $n - 1$ másik embertől kaphatott találatot, így minden csúcsra $0 \le d^-(v) \le n - 1$.
- Mivel $n$ darab csúcs van, a lehetséges értékek száma szintén $n$ (a $\{0, 1, 2, \dots, n - 1\}$ halmaz), és ezek mind különbözők, így a bejövő fokok pontosan a $0, 1, 2, \dots, n - 1$ számok valamilyen sorrendben.

A bejövő fokok összege:
$$\sum_{v \in V} d^-(v) = 0 + 1 + 2 + \dots + (n - 1) = \frac{(n - 1)n}{2}.$$
Mivel minden élnek van egy kezdőpontja és egy végpontja, az összes kimenő fok összege megegyezik az összes bejövő fok összegével:
$$6n = \frac{(n - 1)n}{2}.$$
Mivel mindenki 6 embert talált el, $n \ge 7 > 0$, így oszthatunk $n$-nel:
$$6 = \frac{n - 1}{2} \implies n - 1 = 12 \implies n = 13.$$

*Létezik is ilyen 13 fős játék.* Az eddigiek csak azt mutatták meg, hogy más létszám nem lehetséges; azt is ellenőrizni kell, hogy $13$ fővel a feltételek teljesíthetők. Legyenek a játékosok $E_0, E_1, \dots, E_{12}$, és $E_j$-t érje pontosan $j$ találat. Az alábbi táblázat egy megfelelő meccset ad meg (minden sorban hat név áll, és az $E_j$ név pontosan $j$ sorban fordul elő — ez oszloponként megszámolva könnyen ellenőrizhető):

| játékos | akiket eltalált |
|:-:|:--|
| $E_0$ | $E_5, E_8, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_1$ | $E_5, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_2$ | $E_5, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_3$ | $E_4, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_4$ | $E_3, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_5$ | $E_4, E_6, E_8, E_{10}, E_{11}, E_{12}$ |
| $E_6$ | $E_4, E_5, E_8, E_{10}, E_{11}, E_{12}$ |
| $E_7$ | $E_4, E_6, E_8, E_{10}, E_{11}, E_{12}$ |
| $E_8$ | $E_3, E_6, E_7, E_9, E_{11}, E_{12}$ |
| $E_9$ | $E_3, E_6, E_7, E_8, E_{11}, E_{12}$ |
| $E_{10}$ | $E_2, E_6, E_7, E_8, E_9, E_{12}$ |
| $E_{11}$ | $E_2, E_6, E_8, E_9, E_{10}, E_{12}$ |
| $E_{12}$ | $E_1, E_5, E_8, E_9, E_{10}, E_{11}$ |

(Senki sem lőtte önmagát. A táblázatot mohón készítettük: a legtöbb találatot igénylő $E_{12}$-től lefelé haladva minden $E_j$-hez azt a $j$ játékost választottuk lövőnek, akinek a legtöbb lövése maradt még.)

::: elmelet
**Elméleti háttér — irányított gráfok fokszámösszege és a skatulyaelv.** Bármely irányított gráfban az összes kimenő fok összege megegyezik az összes bejövő fok összegével és az élek számával: $\sum d^+(v) = \sum d^-(v) = |E|$. Ha $n$ csúcson $n$ darab különböző fokszám szerepel a $\{0, 1, \dots, n-1\}$ tartományból, akkor azok szükségképpen a $0, 1, \dots, n-1$ számok teljes permutációját alkotják, így összegük determinisztikusan $\binom{n}{2}$.
:::

## 77. feladat

Mutasd meg, hogy ha egy egyszerű gráfban minden pont foka legalább három, akkor a gráfban van páros hosszúságú kör!

**Megoldás.**

Tekintsük a gráf egy **leghosszabb egyszerű útját**:
$$P = v_1 v_2 \dots v_m.$$

1. **A kezdőpont szomszédai mind a pályára illeszkednek:**
   Mivel $P$ maximális hosszúságú egyszerű út a gráfban, a $v_1$ végpont nem köthető össze egyetlen olyan csúccsal sem, amely nem szerepel a $P$ úton (ellenkező esetben a sétát az új csúccsal meghosszabbítva egy $m+1$ csúcsú egyszerű utat kapnánk, ami ellentmondana $P$ maximalitásának).
   Ezért $v_1$ minden szomszédja szükségképpen a $P$ út csúcsai közül kerül ki:
   $$N(v_1) \subseteq \{v_2, v_3, \dots, v_m\}.$$

2. **Legalább három szomszéd az úton:**
   Mivel $G$ egyszerű gráf és minden pont foka legalább $3$, a $v_1$ csúcsnak legalább 3 szomszédja van $P$-n. A közvetlen szomszédja $v_2$, így létezik még legalább két további szomszédja a $P$ úton.
   Jelölje e két szomszédot $v_i$ és $v_j$, ahol indexeikre:
   $$2 < i < j \le m.$$

3. **Három egyszerű kör képzése:**
   A $v_1 v_i$ és $v_1 v_j$ élek a $P$ út szakaszaival három egyszerű kört határoznak meg:
   - $C_1 = v_1 v_2 \dots v_i v_1$, melynek hossza $i$;
   - $C_2 = v_1 v_2 \dots v_j v_1$, melynek hossza $j$;
   - $C_3 = v_1 v_i v_{i+1} \dots v_j v_1$, amely a $v_1 v_i$ élből, a $P$ út $v_i$-től $v_j$-ig tartó szakaszából ($j - i$ darab él) és a $v_j v_1$ élből áll. Ennek hossza:
     $$|C_3| = 1 + (j - i) + 1 = j - i + 2.$$

4. **Paritásvizsgálat:**
   - Ha $i$ páros, akkor $C_1$ egy **páros hosszúságú kör**.
   - Ha $j$ páros, akkor $C_2$ egy **páros hosszúságú kör**.
   - Ha mind $i$, mind $j$ páratlan szám, akkor a különbségük $j - i$ páros szám (két páratlan szám különbsége páros). Ekkor
     $$|C_3| = j - i + 2$$
     szintén **páros szám**, tehát $C_3$ egy **páros hosszúságú kör**.

Mivel minden esetben találunk páros hosszúságú kört, a gráfban **biztosan van páros hosszúságú kör**. $\blacksquare$

::: elmelet
**Elméleti háttér — leghosszabb út technika és körparitás.** Az extremális gráfelmélet egyik legerősebb módszere a leghosszabb út vizsgálata: ha egy $P$ egyszerű út maximális hosszúságú, akkor végpontjaiból nem indulhat él a $P$-n kívüli csúcsokba, így minden szomszédjuk magán a $P$ úton helyezkedik el. Ha a minimális fokszám $\delta(G) \ge 3$, akkor a kezdőpontnak a közvetlen szomszédján kívül még legalább két éle (húrja) vezet az út későbbi pontjaiba, melyek három különböző kört határoznak meg. A három kör hosszai ($i$, $j$ és $j - i + 2$) közül a paritási összefüggések miatt legalább az egyik szükségszerűen páros.
:::

## 78. feladat

Adott $n \ge 5$ valós szám. Minden lehetséges módon számpárokat képeztünk belőlük, és vettük minden számpárban a számok összegét. Az így kapott $\binom{n}{2}$ összeg közül legalább $(n^2 - 3n + 4)/2$ racionális. Bizonyítsuk be, hogy akkor az összes összeg racionális. Következik-e a feltételből az is, hogy minden megadott szám racionális?

**Megoldás.**

Jelölje a megadott valós számokat $x_1, x_2, \dots, x_n$. Tekintsük azt az $n$ csúcsú $G$ egyszerű gráfot, amelynek csúcsai az indexek, és az $\{i, j\}$ él pontosan akkor van behúzva, ha az $x_i + x_j$ összeg racionális ($x_i + x_j \in \mathbb{Q}$).

A komplementer gráf, $\overline{G}$ élei a nem racionális (irracionális) összegeknek felelnek meg.
A racionális összegek száma legalább:
$$|E(G)| \ge \frac{n^2 - 3n + 4}{2} = \binom{n-1}{2} + 1.$$
Így a komplementer gráf élszáma legfeljebb:
$$|E(\overline{G})| = \binom{n}{2} - |E(G)| \le \frac{n(n-1)}{2} - \frac{n^2 - 3n + 4}{2} = \frac{2n - 4}{2} = n - 2.$$

1. **A $G$ gráf összefüggő:**
   Ha $G$ nem volna összefüggő, akkor legalább 2 komponensre esne. Ha ezen komponensek csúcsszáma $k$ és $n - k$ ($1 \le k \le n - 1$), akkor $\overline{G}$-ban az összes komponensek közötti élnek szerepelnie kellene. Így
   $$|E(\overline{G})| \ge k(n - k) \ge 1 \cdot (n - 1) = n - 1.$$
   Ez ellentmond annak, hogy $|E(\overline{G})| \le n - 2$. Tehát $G$ összefüggő.

2. **$G$-ben van háromszög (páratlan kör):**
   Mantel tétele (illetve Turán tétele) szerint egy $n$ csúcsú háromszögmentes (speciálisan páros) egyszerű gráfban legfeljebb $\lfloor n^2/4 \rfloor$ él lehet. Hasonlítsuk össze $|E(G)|$ minimális értékét $\frac{n^2}{4}$-gyel $n \ge 5$ esetén:
   $$|E(G)| - \frac{n^2}{4} \ge \frac{n^2 - 3n + 4}{2} - \frac{n^2}{4} = \frac{n^2 - 6n + 8}{4} = \frac{(n-2)(n-4)}{4}.$$
   Mivel $n \ge 5$, $n - 2 \ge 3$ és $n - 4 \ge 1$, tehát $\frac{(n-2)(n-4)}{4} \ge \frac{3}{4} > 0$.
   Mivel $|E(G)| > \lfloor n^2/4 \rfloor$, a $G$ gráf nem lehet páros, azaz **$G$-ben biztosan van háromszög** (páratlan kör).

3. **A háromszög csúcsai racionálisak:**
   Legyen a háromszög három csúcsa $a, b, c$. Ekkor:
   $$x_a + x_b = q_1 \in \mathbb{Q}, \quad x_b + x_c = q_2 \in \mathbb{Q}, \quad x_c + x_a = q_3 \in \mathbb{Q}.$$
   Összeadva és kivonva:
   $$2x_a = (x_a + x_b) - (x_b + x_c) + (x_c + x_a) = q_1 - q_2 + q_3 \in \mathbb{Q} \implies x_a \in \mathbb{Q}.$$
   Hasonlóan $x_b = \frac{q_1 + q_2 - q_3}{2} \in \mathbb{Q}$ és $x_c = \frac{-q_1 + q_2 + q_3}{2} \in \mathbb{Q}$.

4. **Minden szám és minden összeg racionális:**
   Mivel $x_a \in \mathbb{Q}$, és $G$ összefüggő, bármely $i$ csúcshoz vezet út $a$-ból $G$-ben: $a = v_0, v_1, \dots, v_m = i$.
   Ha $x_{v_k} \in \mathbb{Q}$, és $v_k v_{k+1} \in E(G)$ (azaz $x_{v_k} + x_{v_{k+1}} \in \mathbb{Q}$), akkor
   $$x_{v_{k+1}} = (x_{v_k} + x_{v_{k+1}}) - x_{v_k} \in \mathbb{Q}.$$
   Indukcióval a komponens minden csúcsára, vagyis **minden $x_i$ szám racionális** ($x_i \in \mathbb{Q}$ minden $i = 1, \dots, n$-re).

Mivel minden megadott szám racionális, bármely két szám összege $x_i + x_j$ is két racionális szám összege, tehát **az összes összeg racionális**.

**Válasz a kérdésre:** Igen, a feltételből az is következik, hogy **mind az $n$ megadott szám racionális**. $\blacksquare$

::: elmelet
**Elméleti háttér — Mantel-tétel és algebrai összefüggőség.** Ha egy gráf éleinek száma meghaladja a $\lfloor n^2/4 \rfloor$ Turán-korlátot, a gráfban garantáltan van háromszög ($K_3$). Egy háromszög három élének összegeiből a csúcsok értékei lineárisan kifejezhetők (egy páratlan körön a váltakozó összeg a csúcs kétszeresét adja). Ha egy csúcs racionális, az összefüggőség révén az egész komponens összes csúcsa racionálissá válik.

*A Mantel-tétel bizonyítása.* Legyen $H$ egy $n$ csúcsú, $e$ élű háromszögmentes gráf. Ha $xy$ él, akkor $x$-nek és $y$-nak nincs közös szomszédja (különben háromszög volna), így $\deg(x) + \deg(y) \le n$. Ezt minden élre összeadva a bal oldalon minden $v$ csúcs $\deg(v)$-szer szerepel ($\deg(v)$ élnek végpontja), tehát
$$\sum_{v} \deg(v)^2 \le n\,e.$$
A számtani és négyzetes közép közti egyenlőtlenség (Cauchy–Schwarz) szerint $\sum_v \deg(v)^2 \ge \frac{1}{n}\Big(\sum_v \deg(v)\Big)^2 = \frac{(2e)^2}{n}$. A kettőt összevetve $\frac{4e^2}{n} \le ne$, azaz $e \le \frac{n^2}{4}$. (A korlát éles: a $K_{\lfloor n/2\rfloor, \lceil n/2\rceil}$ teljes páros gráf háromszögmentes, és $\lfloor n^2/4 \rfloor$ éle van.)
:::

## 79. feladat

Bizonyítsd be, hogy minden pozitív egész szám felírható különböző Fibonacci számok összegeként.

**Megoldás.**

A Fibonacci-sorozat elemei: $F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, F_6 = 8, F_7 = 13, \dots$
A kétértelműség elkerülése végett tekintsük a szigorúan növekvő sorozatot a 2. tagtól:
$$f_1 = F_2 = 1, \quad f_2 = F_3 = 2, \quad f_3 = F_4 = 3, \quad f_4 = F_5 = 5, \quad f_5 = F_6 = 8, \quad \dots$$
ahol $f_k = F_{k+1}$ ($k \ge 1$).

Az állítást $N$ szerinti teljes indukcióval bizonyítjuk a **mohó algoritmus** segítségével:
- **Bázis:** $N = 1 = f_1 = F_2$ (vagy $F_1$), az állítás igaz.
- **Indukciós feltevés:** Tegyük fel, hogy minden $1 \le k < N$ egész szám felírható különböző Fibonacci-számok összegeként.
- **Indukciós lépés:** Tekintsük az $N$ számot. Válasszuk ki a legnagyobb olyan $F_m$ Fibonacci-számot ($m \ge 2$), amely még nem haladja meg $N$-et:
  $$F_m \le N < F_{m+1}.$$
  - Ha $N = F_m$, akkor $N$ maga egy Fibonacci-szám, a felírás készen van.
  - Ha $N > F_m$, képezzük az $N' = N - F_m$ maradékot.
    Mivel $F_m \ge 1$, világos, hogy $1 \le N' < N$.
    Az indukciós feltevés szerint $N'$ felírható különböző Fibonacci-számok összegeként:
    $$N' = F_{i_1} + F_{i_2} + \dots + F_{i_r}, \quad \text{ahol } i_1 < i_2 < \dots < i_r.$$
    Megmutatjuk, hogy a legnagyobb felhasznált indexre $i_r < m$, azaz $F_m$ biztosan nem szerepel $N'$ felbontásában.
    Mivel $F_{m+1} = F_m + F_{m-1}$, a definícióból:
    $$N' = N - F_m < F_{m+1} - F_m = F_{m-1}.$$
    Mivel $N' < F_{m-1}$, a felbontásban szereplő minden tagra $F_{i_j} \le N' < F_{m-1} < F_m$.
    Ezért $i_r \le m - 2 < m$.

Így $N = F_m + N' = F_m + F_{i_1} + \dots + F_{i_r}$ csupa különböző Fibonacci-szám összege. $\blacksquare$

*(Megjegyzés: ez a bizonyítás azt is mutatja, hogy $N$ felírható olyan különböző Fibonacci-számok összegeként, amelyek között nincsenek szomszédosak — ez a híres Zeckendorf-tétel.)*

::: elmelet
**Elméleti háttér — Zeckendorf-tétel és mohó felbontás.** A Fibonacci-számok rekurziójából ($F_{m+1} - F_m = F_{m-1}$) következik, hogy a legnagyobb $\le N$ Fibonacci-szám levonása után maradó rész szigorúan kisebb, mint az azt megelőző $F_{m-1}$. Emiatt a mohó algoritmus nemcsak különböző, hanem nem szomszédos Fibonacci-számok összegére bontja fel a számot, és ez az előállítás egyértelmű (Zeckendorf-tétel).
:::

## 80. feladat

Hozd zárt alakra a következő kifejezést és igazold az egyenlőséget a kettős leszámlálás módszerével:
$$\sum_{k=m}^n \binom{n}{k} \binom{k}{m}$$

**Megoldás.**

**A zárt alak: $\mathbf{\binom{n}{m} 2^{n-m}}$.**

**Bizonyítás kettős leszámlálással:**

Tekintsünk egy $n$ fős társaságot. A célunk megszámolni, hogy hányféleképpen lehet kiválasztani a társaságból egy tetszőleges $k$ fős bizottságot, és a bizottság tagjai közül egy $m$ fős elnökséget ($m \le k \le n$).

- **1. számlálás (előbb a bizottság, majd az elnökség):**
  Rögzítsük a bizottság létszámát: legyen ez $k$ ($m \le k \le n$).
  1. Az $n$ emberből a $k$ fős bizottságot $\binom{n}{k}$ módon választhatjuk ki.
  2. A kiválasztott $k$ tag közül az $m$ fős elnökséget $\binom{k}{m}$ módon jelölhetjük ki.
  Mivel a bizottság mérete $k = m, m+1, \dots, n$ lehet, az összes lehetőség száma az esetek összege:
  $$\sum_{k=m}^n \binom{n}{k} \binom{k}{m}.$$

- **2. számlálás (előbb az elnökség, majd a többi bizottsági tag):**
  1. Először közvetlenül az egész $n$ fős társaságból válasszuk ki az $m$ fős elnökséget: erre $\binom{n}{m}$ lehetőség van.
  2. A maradék $n - m$ ember mindegyikéről függetlenül döntsük el, hogy tagja legyen-e a bizottságnak (mint sima bizottsági tag) vagy sem. Mivel minden személyre 2 lehetőség van (bekerül / nem kerül be), a maradék emberekből a bizottságot $2^{n-m}$ féleképpen egészíthetjük ki.
  Így a lehetőségek száma:
  $$\binom{n}{m} 2^{n-m}.$$

Mivel mindkét eljárás ugyanazokat a struktúrákat (elnökség $\subseteq$ bizottság $\subseteq$ társaság) számolja meg, a két kifejezés egyenlő:
$$\sum_{k=m}^n \binom{n}{k} \binom{k}{m} = \binom{n}{m} 2^{n-m}. \quad \blacksquare$$

*(Algebrai ellenőrzés: $\binom{n}{k}\binom{k}{m} = \frac{n!}{k!(n-k)!}\frac{k!}{m!(k-m)!} = \frac{n!}{m!(n-m)!}\frac{(n-m)!}{(k-m)!(n-k)!} = \binom{n}{m}\binom{n-m}{k-m}$. Összegezve $j = k - m$-re: $\binom{n}{m} \sum_{j=0}^{n-m}\binom{n-m}{j} = \binom{n}{m}2^{n-m}$.)*

::: elmelet
**Elméleti háttér — kettős leszámlálás részhalmazpárokra.** Részhalmazpárok $\{(A, B) : B \subseteq A \subseteq S, |B| = m\}$ megszámlálásakor a sorrend felcserélhető: $A$ választása után $B$ kijelölése a $\sum \binom{n}{k}\binom{k}{m}$ összeget adja, míg $B$ azonnali rögzítése után $A \setminus B$ az $S \setminus B$ tetszőleges részhalmaza lehet, ami $\binom{n}{m}2^{n-m}$ lehetőséget ad.
:::

## 81. feladat

17 doboz mindegyikében piros, kék, sárga és zöld golyók vannak. Bizonyítsuk be, hogy található két olyan doboz, amelyekben együttvéve mind a négyféle golyóból páros sok van!

**Megoldás.**

Jellemezzünk minden dobozt a benne található négyféle golyó számának paritásával! Rendeljünk a dobozhoz egy $(p_1, p_2, p_3, p_4) \in \{0, 1\}^4$ paritásvektort, ahol a koordináták értéke $0$, ha a megfelelő színű golyóból páros sok van a dobozban, és $1$, ha páratlan sok:
- $p_1$: piros golyók paritása,
- $p_2$: kék golyók paritása,
- $p_3$: sárga golyók paritása,
- $p_4$: zöld golyók paritása.

Két dobozban egy adott színű golyók összege pontosan akkor páros, ha a két dobozban az adott szín paritása megegyezik:
- páros + páros = páros ($0 + 0 \equiv 0 \pmod 2$),
- páratlan + páratlan = páros ($1 + 1 \equiv 0 \pmod 2$),
- páros + páratlan = páratlan ($0 + 1 \equiv 1 \pmod 2$).

Tehát két dobozban együttvéve **mind a négyféle golyóból pontosan akkor van páros sok**, ha a hozzájuk tartozó paritásvektor mind a 4 koordinátában megegyezik, azaz **a két dobozhoz pontosan ugyanaz a paritásvektor tartozik**.

Hány különböző paritásvektor létezik?
Mivel mind a 4 koordináta 2 lehetséges értéket vehet fel ($0$ vagy $1$), a lehetséges paritásvektorok száma:
$$2^4 = 16.$$
Mivel 17 dobozunk van, de csak 16 különböző paritásvektor, a **skatulya-elv** szerint létezik legalább két olyan doboz, amelyhez ugyanaz a paritásvektor tartozik.

Ebben a két dobozban mind a négyféle golyó összege páros. $\blacksquare$

::: elmelet
**Elméleti háttér — skatulyaelv $\mathbb{Z}_2^d$ felett.** Ha $d$ darab független paritási feltételt vizsgálunk, az állapotok a $d$ dimenziós bináris tér elemei, melynek mérete $2^d$. Ha több mint $2^d$ objektumunk van, a skatulyaelv miatt legalább kettő azonos állapotú lesz. Mivel modulo $2$ a különbség megegyezik az összeggel ($x + y \equiv 0 \iff x \equiv y$), az azonos állapotú párok összege minden koordinátában páros.
:::

## 82. feladat

Hány olyan egymilliónál kisebb pozitív egész szám van, melyben a számjegyek összege 25?

**Megoldás.**

**53 262 ilyen szám van.**

Egy egymilliónál kisebb pozitív egész szám legfeljebb 6 számjegyből áll. Írjuk fel a számokat 6 jegyű formában, szükség esetén balról vezető nullákkal kiegészítve:
$$d_1 d_2 d_3 d_4 d_5 d_6, \quad \text{ahol } 0 \le d_i \le 9 \text{ minden } i \in \{1, \dots, 6\}\text{-ra}.$$
A feladat feltétele:
$$d_1 + d_2 + d_3 + d_4 + d_5 + d_6 = 25.$$
*(Mivel a számjegyek összege $25 > 0$, a csupa 0 számjegyű $0$ nem adódhat, így minden megoldás automatikusan egy pozitív egész számnak felel meg.)*

Ez egy diofantikus egyenlet nemnegatív egész megoldásainak száma a $d_i \le 9$ felső korláttal. Használjuk a **logikai szita formulát**!

1. **Alaphalmaz korlát nélkül:**
   A $d_1 + \dots + d_6 = 25$ egyenlet nemnegatív egész ($d_i \ge 0$) megoldásainak száma (25 golyó szétosztása 6 dobozba):
   $$|S| = \binom{25 + 6 - 1}{6 - 1} = \binom{30}{5} = \frac{30 \cdot 29 \cdot 28 \cdot 27 \cdot 26}{120} = 142\,506.$$

2. **Rossz tulajdonságok ($A_i$: $d_i \ge 10$):**
   - **Egy feltétel sérül:** Ha $d_i \ge 10$, legyen $d_i' = d_i - 10 \ge 0$. Ekkor az új változók összege $25 - 10 = 15$:
     $$|A_i| = \binom{15 + 6 - 1}{5} = \binom{20}{5} = \frac{20 \cdot 19 \cdot 18 \cdot 17 \cdot 16}{120} = 15\,504.$$
     Mivel 6 számjegy van, $\binom{6}{1} = 6$ ilyen eset van.
   - **Két feltétel sérül:** Ha $d_i \ge 10$ és $d_j \ge 10$ ($i \ne j$), akkor az összegből $20$-at levonva az új változók összege $25 - 20 = 5$:
     $$|A_i \cap A_j| = \binom{5 + 6 - 1}{5} = \binom{10}{5} = \frac{10 \cdot 9 \cdot 8 \cdot 7 \cdot 6}{120} = 252.$$
     Ilyen párból $\binom{6}{2} = 15$ van.
   - **Három vagy több feltétel sérül:** Három számjegy összege már legalább $3 \cdot 10 = 30 > 25$ lenne, így nem sérülhet 3 vagy több feltétel: $|A_i \cap A_j \cap A_k| = 0$.

A szitaformula szerint a jó megoldások száma:
$$N = |S| - \binom{6}{1}|A_1| + \binom{6}{2}|A_1 \cap A_2| = \binom{30}{5} - 6 \binom{20}{5} + 15 \binom{10}{5}$$
$$N = 142\,506 - 6 \cdot 15\,504 + 15 \cdot 252 = 142\,506 - 93\,024 + 3\,780 = \mathbf{53\,262}.$$

::: elmelet
**Elméleti háttér — szitaformula számjegyösszegre.** Felső korláttal terhelt összegek számlálásánál ($x_1 + \dots + x_n = K$, $0 \le x_i \le M$) a standard módszer a logikai szita: a komplementer feltételek ($x_i \ge M + 1$) változócserével ($x_i' = x_i - (M+1)$) sima nemnegatív diofantikus egyenletekre vezetnek, melyek megoldásszáma az $\binom{K' + n - 1}{n - 1}$ képlettel adódik.
:::

## 83. feladat

Hány anagrammája van a KRASZNAHORKAI szónak, amelyben

a) nem követi egymást közvetlenül három A betű?

b) semelyik két A nincs egymás mellett?

**Megoldás.**

Számoljuk meg a KRASZNAHORKAI szó betűit:
- K: 2 db,
- R: 2 db,
- A: 3 db,
- S: 1 db,
- Z: 1 db,
- N: 1 db,
- H: 1 db,
- O: 1 db,
- I: 1 db.

Összesen: $2 + 2 + 3 + 1 + 1 + 1 + 1 + 1 + 1 = 13$ betű.
Az összes lehetséges anagramma száma (ismétléses permutáció):
$$N_{\text{összes}} = \frac{13!}{2! \, 2! \, 3! \, 1! \, 1! \, 1! \, 1! \, 1! \, 1!} = \frac{13!}{24} = 259\,459\,200.$$

---

**a) Nem követi egymást közvetlenül három A betű:**

Számoljuk ki a komplementer esetet: hány olyan anagramma van, ahol a három A egymás mellett áll, vagyis tartalmazza az „AAA” blokkot.

Kössük össze a három A betűt egyetlen szimbólummá: $[AAA]$.
Ekkor a felhasznált elemek:
$$\{[AAA], K, K, R, R, S, Z, N, H, O, I\},$$
ez összesen $13 - 3 + 1 = 11$ elem, melyek között 2 darab K és 2 darab R van.
Ezek sorrendjeinek száma:
$$\frac{11!}{2! \, 2!} = \frac{11!}{4} = 9\,979\,200.$$

A keresett anagrammák száma tehát az összes esetből a komplementer levonásával:
$$N_{\text{összes}} - \frac{11!}{4} = \frac{13!}{24} - \frac{11!}{4} = \frac{11!}{4} \left(\frac{13 \cdot 12}{6} - 1\right) = \frac{11!}{4} (26 - 1) = 25 \cdot 9\,979\,200 = \mathbf{249\,480\,000}.$$

---

**b) Semelyik két A nincs egymás mellett:**

Először helyezzük el a többi $13 - 3 = 10$ darab betűt: $\{K, K, R, R, S, Z, N, H, O, I\}$.
Ezek száma:
$$\frac{10!}{2! \, 2!} = \frac{10!}{4} = 907\,200.$$

A 10 lehelyezett betű között és a két végén összesen $10 + 1 = 11$ lehetséges hely van:
$$\_ \, B_1 \, \_ \, B_2 \, \_ \, B_3 \, \_ \, \dots \, \_ \, B_{10} \, \_$$
Ahhoz, hogy semelyik két A ne kerüljön egymás mellé, ezen 11 hely közül kell kiválasztanunk 3-at, mindegyikbe pontosan egy A betűt téve. Erre $\binom{11}{3}$ lehetőség van:
$$\binom{11}{3} = \frac{11 \cdot 10 \cdot 9}{6} = 165.$$

A kedvező anagrammák száma a szorzási szabály szerint:
$$\frac{10!}{4} \cdot \binom{11}{3} = 907\,200 \cdot 165 = \mathbf{149\,688\,000}.$$

::: elmelet
**Elméleti háttér — anagrammák és tiltott szomszédságok.** Ismétléses permutációnál az azonos betűk megkülönböztethetetlenek. (a) Egymás melletti betűknél a betűcsoportot egyetlen új szimbólumként kezeljük („összeragasztás”), majd a komplementer elvvel vonjuk le az összesből. (b) Ha semelyik két azonos betű nem lehet szomszédos, a többi betűt rendezzük el először, és a köztük keletkező résekbe skatulyázzuk be az azonos betűket kombinációval ($\binom{m+1}{k}$).
:::

## 84. feladat

Egy trafikban $k$ fajta képeslap kapható. Hányféleképpen küldhetünk belőlük $n$ barátunknak 2–2 különbözőt úgy, hogy egy fajta képeslapot több barátunknak is elküldhetünk, de azt szeretnénk, hogy ne legyen olyan, amit mindegyiküknek elküldtünk?

**Megoldás.**

**$\mathbf{\binom{k}{2}^n - k(k - 1)^n + \binom{k}{2}}$ féleképpen.**

Egy barátnak a $k$ fajta képeslapból 2 különbözőt küldünk, erre $\binom{k}{2}$ lehetőség van.
Ha semmilyen megkötés nincs, az $n$ barátnak összesen
$$\binom{k}{2}^n$$
féleképpen küldhetünk képeslapokat.

Azt szeretnénk kizárni, hogy legyen olyan képeslapfajta, amelyet **mind az $n$ barát megkap**.
Használjuk a **logikai szita formulát**!
Jelölje $A_i$ ($i = 1, \dots, k$) azon választások halmazát, ahol az $i$-edik fajta képeslapot mind az $n$ barát megkapta.

- **Egy rögzített képeslapot ($i$) mindenki megkapott ($|A_i|$):**
  Ekkor az $i$-edik képeslapot minden barát megkapta, így minden barát számára a második képeslapot a maradék $k - 1$ képeslap közül kell kiválasztani: erre barátonként $k - 1$ lehetőség van.
  Az $n$ barátra függetlenül: $(k - 1)^n$.
  Ilyen képeslapból $\binom{k}{1} = k$ darab van.

- **Két rögzített képeslapot ($i$ és $j$) mindenki megkapott ($|A_i \cap A_j|$):**
  Mivel minden barát pontosan 2 képeslapot kap, ha az $i$-ediket és a $j$-ediket is mindenki megkapta, akkor minden barát pontosan ezt a $\{i, j\}$ párt kapta meg! Erre barátonként csak 1 lehetőség van, így $n$ barátra: $1^n = 1$.
  Ilyen párból $\binom{k}{2}$ darab van.

- **Három vagy több rögzített képeslapot mindenki megkapott:**
  Mivel minden barát legfeljebb 2 képeslapot kap, lehetetlen, hogy 3 vagy több különböző képeslapot mindenki megkapjon:
  $$|A_{i_1} \cap A_{i_2} \cap A_{i_3}| = 0.$$

A szitaformula szerint a jó elrendezések száma:
$$N = \binom{k}{2}^n - \sum_{i=1}^k |A_i| + \sum_{1 \le i < j \le k} |A_i \cap A_j|$$
$$N = \binom{k}{2}^n - k(k - 1)^n + \binom{k}{2}.$$

::: elmelet
**Elméleti háttér — szitaformula és metszetek leállása.** A szitaformula alkalmazásakor a magasabb rendű metszetek gyakran strukturális okokból üressé válnak: mivel egy személy kapacitása $2$ képeslap, semelyik személy nem kaphat $3$ közös képeslapot, így a háromszoros és magasabb metszetek mind $0$-k. A formula emiatt mindössze három tagból áll.
:::

# Kombinatorika 1 – 1. ZH (régi) – megoldások

### Kombinatorika 1 normál · 2023. október 21.

Emlékeztetőül, a Fibonacci-sorozat definíciója: $F_0 = 0$, $F_1 = 1$, $n \ge 2$ esetén $F_n = F_{n-1} + F_{n-2}$.

## 1. feladat

Bizonyítsd be, hogy minden pozitív egész szám felírható különböző Fibonacci számok összegeként.

**Megoldás.**

A Fibonacci-sorozat: $F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, F_6 = 8, F_7 = 13, \dots$
A szigorúan növekvő tagokat $F_2 = 1$-től kezdve indexeljük, hogy ne használjunk két azonos értékű 1-est:
$$f_1 = F_2 = 1, \quad f_2 = F_3 = 2, \quad f_3 = F_4 = 3, \quad f_4 = F_5 = 5, \quad \dots$$

Az állítást $N$ szerinti teljes indukcióval igazoljuk:
- **Bázis:** $N = 1 = F_2$, kész.
- **Indukciós lépés:** Tegyük fel, hogy minden $k < N$ pozitív egész szám felírható különböző Fibonacci-számok összegeként.
  Válasszuk ki a legnagyobb olyan $F_m$ Fibonacci-számot, amelyre $F_m \le N$.
  - Ha $N = F_m$, akkor $N$ maga egy Fibonacci-szám.
  - Ha $N > F_m$, képezzük az $N' = N - F_m$ maradékot ($1 \le N' < N$).
    Az indukciós feltevés szerint $N'$ felírható különböző Fibonacci-számok összegeként:
    $$N' = F_{i_1} + F_{i_2} + \dots + F_{i_r}, \quad \text{ahol } i_1 < i_2 < \dots < i_r.$$
    Mivel $F_m$ a maximális Fibonacci-szám $\le N$, a rákövetkező $F_{m+1} > N$. A Fibonacci-rekurzió miatt:
    $$N' = N - F_m < F_{m+1} - F_m = F_{m-1}.$$
    Mivel $N' < F_{m-1}$, a felbontásában szereplő minden tagra $F_{i_j} \le N' < F_{m-1} < F_m$.
    Ezért $i_r \le m - 2 < m$, tehát $F_m$ nem szerepelhet $N'$ felírásában.

Ezzel $N = F_m + F_{i_1} + \dots + F_{i_r}$ csupa különböző Fibonacci-szám összege. $\blacksquare$

::: elmelet
**Elméleti háttér — Zeckendorf-tétel és mohó felbontás.** A Fibonacci-sorozat rekurziója ($F_{m+1} - F_m = F_{m-1}$) biztosítja, hogy a mohó algoritmussal levont legnagyobb tag után maradó rész szigorúan kisebb, mint az azt megelőző Fibonacci-szám. Ez garantálja, hogy a felhasznált számok mind különbözők, sőt nem szomszédosak a Fibonacci-sorozatban (Zeckendorf-tétel).
:::

## 2. feladat

Hány anagrammája van a KRASZNAHORKAI szónak, amelyben

a) nem követi egymást közvetlenül három A betű?

b) semelyik két A nincs egymás mellett?

**Megoldás.**

A betűk száma: K: 2, R: 2, A: 3, S: 1, Z: 1, N: 1, H: 1, O: 1, I: 1; összesen 13 betű.
Az összes anagramma száma:
$$N_{\text{összes}} = \frac{13!}{2! \, 2! \, 3!} = \frac{13!}{24} = 259\,459\,200.$$

**a) Nem követi egymást közvetlenül 3 db A:**
A komplementer eset: a 3 db A egymás mellett áll ($[AAA]$ blokk).
Ekkor 11 szimbólum van ($[AAA]$, 2 db K, 2 db R és az 5 egyszeri betű), ezek száma:
$$\frac{11!}{2! \, 2!} = \frac{11!}{4} = 9\,979\,200.$$
A jó esetek száma:
$$N_{\text{összes}} - \frac{11!}{4} = \frac{13!}{24} - \frac{11!}{4} = \frac{11!}{4}(26 - 1) = 25 \cdot 9\,979\,200 = \mathbf{249\,480\,000}.$$

**b) Semelyik két A nincs egymás mellett:**
A 10 egyéb betűt elrendezzük: $\frac{10!}{2! \, 2!} = 907\,200$ módon.
A betűk között és a széleken keletkező 11 helyre tesszük a 3 db A betűt: $\binom{11}{3} = 165$ módon.
A kedvező anagrammák száma:
$$\frac{10!}{4} \cdot \binom{11}{3} = 907\,200 \cdot 165 = \mathbf{149\,688\,000}.$$

::: elmelet
**Elméleti háttér — szomszédsági feltételek permutációkban.** Tiltott szomszédságoknál a közvetlen egymás mellettiséget blokk-képzéssel (szuperbetű) és komplementer leszámlálással számoljuk. Ha semelyik két elem nem lehet szomszédos, a többi elemet helyezzük le előbb, és a köztük lévő résekbe választunk helyet kombinációval.
:::

## 3. feladat

Hány olyan egymilliónál kisebb pozitív egész szám van, melyben a számjegyek összege 25?

**Megoldás.**

**53 262 ilyen szám van.**

A számokat 6 jegyű formában írjuk fel: $d_1 d_2 d_3 d_4 d_5 d_6$, ahol $0 \le d_i \le 9$ és $\sum_{i=1}^6 d_i = 25$.
Logikai szita formulával:
- Korlátozás nélküli nemnegatív egész megoldások: $|S| = \binom{25 + 6 - 1}{5} = \binom{30}{5} = 142\,506$.
- Legalább egy számjegy $\ge 10$ ($A_i$): $25 - 10 = 15$ marad az összegre, $|A_i| = \binom{15 + 6 - 1}{5} = \binom{20}{5} = 15\,504$.
- Legalább két számjegy $\ge 10$ ($A_i \cap A_j$): $25 - 20 = 5$ marad, $|A_i \cap A_j| = \binom{5 + 6 - 1}{5} = \binom{10}{5} = 252$.
- Három számjegy $\ge 10$ összege legalább $30 > 25$, így a háromszoros metszet üres.

A megoldásszám:
$$N = \binom{30}{5} - \binom{6}{1}\binom{20}{5} + \binom{6}{2}\binom{10}{5} = 142\,506 - 6 \cdot 15\,504 + 15 \cdot 252 = \mathbf{53\,262}.$$

::: elmelet
**Elméleti háttér — korlátozott diofantikus egyenletek szitával.** Ha $x_1 + \dots + x_n = K$ egyenletet oldunk meg $0 \le x_i \le 9$ feltétellel, az $x_i \ge 10$ tulajdonságok szitálásával kapjuk meg a megoldást.
:::

## 4. feladat

Az első 100 pozitív egész számot felírtuk egy-egy cédulára, és beletettük egy kalapba. Bekötött szemmel, visszatevés nélkül kihúzunk 55 számot. Igaz-e, hogy a kihúzott számok között biztosan van két olyan szám, melyek különbsége éppen 10?

**Megoldás.**

**Igaz.**

Bontsuk az $\{1, 2, \dots, 100\}$ halmazt 10 darab, modulo 10 maradékosztály szerinti láncra:
$$C_r = \{r, r + 10, r + 20, \dots, r + 90\}, \quad \text{ahol } r \in \{1, 2, \dots, 10\}.$$
Minden $C_r$ halmaz pontosan 10 darab számot tartalmaz:
$$C_r = \{a_0, a_1, \dots, a_9\}, \quad \text{ahol } a_t = r + 10t \ (0 \le t \le 9).$$

Két szám különbsége egy $C_r$ osztályon belül pontosan akkor 10, ha szomszédosak a láncban ($|t_1 - t_2| = 1$).
Párosítsuk össze a $C_r$-beli számokat diszjunkt párokba:
$$\{a_0, a_1\}, \ \{a_2, a_3\}, \ \{a_4, a_5\}, \ \{a_6, a_7\}, \ \{a_8, a_9\}.$$
Ez $C_r$-enként 5 pár. A 10 darab osztályban összesen
$$10 \cdot 5 = 50 \text{ darab diszjunkt pár}$$
keletkezik, és ezek a párok együttesen lefedik mind a 100 számot.

Minden ilyen párban a két szám különbsége pontosan 10:
$$(r + 10(2k + 1)) - (r + 10(2k)) = 10.$$

Tekintsük ezt az 50 párt mint 50 „skatulyát”.
Amikor kihúzunk 55 számot a kalapból, a **skatulya-elv** szerint az 50 skatulya közül legalább egybe legalább $\lceil 55/50 \rceil = 2$ szám fog esni.
Mivel minden skatulya egyetlen 10 különbségű számpárból áll, ez a két szám pontosan a skatulya mindkét elemét jelenti.

Így a kihúzott 55 szám között **biztosan van két olyan szám, amelyek különbsége pontosan 10**. $\blacksquare$

*(Megjegyzés: legfeljebb 50 számot lehetne úgy kihúzni, hogy ne legyen köztük 10 különbségű pár: például minden láncból a páros indexűeket választva: $\{r, r + 20, r + 40, r + 60, r + 80\}$, ami $10 \cdot 5 = 50$ szám. 55 számnál ez már lehetetlen.)*

::: elmelet
**Elméleti háttér — skatulyaelv particionálással.** Ha azt akarjuk igazolni, hogy egy részhalmazban biztosan van egy tiltott relációt (itt $|x - y| = 10$) teljesítő pár, az alaphalmazt olyan diszjunkt párokra bontjuk, melyek mindegyike teljesíti a relációt. Ha a kiválasztott elemek száma meghaladja a párok számát, a skatulyaelv miatt legalább egy teljes pár bekerül a kiválasztottak közé.
:::

## 5. feladat

Hozd zárt alakra a következő kifejezést és igazold az egyenlőséget a kettős leszámlálás módszerével:
$$\sum_{k=m}^n \binom{n}{k} \binom{k}{m}$$

[2 pontért megmondjuk, mi a zárt alak]

**Megoldás.**

**A zárt alak: $\mathbf{\binom{n}{m} 2^{n-m}}$.**

**Bizonyítás kettős leszámlálással:**

Tekintsünk egy $n$ elemű társaságot. Azt számoljuk meg kétféleképpen, hogy hányféleképpen választhatunk ki egy tetszőleges méretű $k$ fős bizottságot és azon belül egy $m$ fős elnökséget ($m \le k \le n$).

- **1. számlálás:** Először a $k$ fős bizottságot választjuk ki az $n$ emberből $\binom{n}{k}$ módon, majd a bizottság $k$ tagja közül az $m$ fős elnökséget $\binom{k}{m}$ módon. Összegezve a lehetséges $k = m, \dots, n$ értékekre:
  $$\sum_{k=m}^n \binom{n}{k} \binom{k}{m}.$$
- **2. számlálás:** Először közvetlenül az $n$ ember közül választjuk ki az $m$ fős elnökséget $\binom{n}{m}$ módon. Ezután a megmaradt $n - m$ ember mindegyikéről függetlenül eldöntjük, hogy a bizottság sima tagja legyen-e vagy sem ($2^{n-m}$ lehetőség). Így a lehetőségek száma:
  $$\binom{n}{m} 2^{n-m}.$$

Mivel mindkét módszer ugyanazt a halmazt számlálja meg:
$$\sum_{k=m}^n \binom{n}{k} \binom{k}{m} = \binom{n}{m} 2^{n-m}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — beágyazott részhalmazok kettős leszámlálása.** A kettős leszámlálás lényege a kiválasztási lépések sorrendjének felcserélése: az elnökség kijelölése a bizottság előtt lényegesen egyszerűbb, közvetlen szorzatalakot ad.
:::

## 6. feladat

Egy paintball meccsen mindenki hat másik embert talált el és a meccs után nincs két olyan ember, akit ugyanannyi találat ért. Hány fős társaság paintballozott egymással?

**Megoldás.**

**A társaság 13 fős volt.**

Legyen a résztvevők száma $n$. Tekintsük a játékot irányított gráfként ($u \to v$ él jelzi, ha $u$ eltalálta $v$-t).
- Mindenki kimenő foka $d^+(v) = 6$, így az élek száma $|E| = 6n$.
- A bejövő fokok $d^-(v)$ adják a kapott találatokat. Mivel mindenkit más számú találat ért, a bejövő fokok különböző nemnegatív egészek.
- Senkit sem érhetett több találat, mint ahány másik ember van a pályán, így $0 \le d^-(v) \le n - 1$.
- $n$ darab csúcsra $n$ darab különböző érték jut $\{0, 1, \dots, n - 1\}$-ből, tehát a bejövő fokok pontosan a $0, 1, \dots, n - 1$ számok.

A bejövő fokok összege:
$$\sum_{v \in V} d^-(v) = \frac{(n-1)n}{2}.$$
Mivel $\sum d^+(v) = \sum d^-(v)$:
$$6n = \frac{n(n-1)}{2} \implies 12 = n - 1 \implies n = 13.$$

*Létezik is ilyen 13 fős játék.* Az eddigiek csak azt mutatták meg, hogy más létszám nem lehetséges; azt is ellenőrizni kell, hogy $13$ fővel a feltételek teljesíthetők. Legyenek a játékosok $E_0, E_1, \dots, E_{12}$, és $E_j$-t érje pontosan $j$ találat. Az alábbi táblázat egy megfelelő meccset ad meg (minden sorban hat név áll, és az $E_j$ név pontosan $j$ sorban fordul elő — ez oszloponként megszámolva könnyen ellenőrizhető):

| játékos | akiket eltalált |
|:-:|:--|
| $E_0$ | $E_5, E_8, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_1$ | $E_5, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_2$ | $E_5, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_3$ | $E_4, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_4$ | $E_3, E_7, E_9, E_{10}, E_{11}, E_{12}$ |
| $E_5$ | $E_4, E_6, E_8, E_{10}, E_{11}, E_{12}$ |
| $E_6$ | $E_4, E_5, E_8, E_{10}, E_{11}, E_{12}$ |
| $E_7$ | $E_4, E_6, E_8, E_{10}, E_{11}, E_{12}$ |
| $E_8$ | $E_3, E_6, E_7, E_9, E_{11}, E_{12}$ |
| $E_9$ | $E_3, E_6, E_7, E_8, E_{11}, E_{12}$ |
| $E_{10}$ | $E_2, E_6, E_7, E_8, E_9, E_{12}$ |
| $E_{11}$ | $E_2, E_6, E_8, E_9, E_{10}, E_{12}$ |
| $E_{12}$ | $E_1, E_5, E_8, E_9, E_{10}, E_{11}$ |

(Senki sem lőtte önmagát. A táblázatot mohón készítettük: a legtöbb találatot igénylő $E_{12}$-től lefelé haladva minden $E_j$-hez azt a $j$ játékost választottuk lövőnek, akinek a legtöbb lövése maradt még.)

::: elmelet
**Elméleti háttér — fokszámösszeg irányított gráfban.** Irányított gráfban az élek száma a kimenő fokok és a bejövő fokok összegeként is megkapható. A skatulyaelv miatt $n$ darab különböző, legfeljebb $n-1$ értékű nemnegatív egész összege szükségszerűen $\binom{n}{2}$.
:::

## 7. feladat

Adott $n \ge 5$ valós szám. Minden lehetséges módon számpárokat képeztünk belőlük, és vettük minden számpárban a számok összegét. Az így kapott $\binom{n}{2}$ összeg közül legalább $(n^2 - 3n + 4)/2$ racionális. Bizonyítsuk be, hogy akkor az összes összeg racionális. Következik-e a feltételből az is, hogy minden megadott szám racionális?

**Megoldás.**

Jelölje a számokat $x_1, \dots, x_n$. Legyen $G$ az a gráf, melyben $\{i, j\}$ él, ha $x_i + x_j \in \mathbb{Q}$.
A komplementer élhalmaza:
$$|E(\overline{G})| = \binom{n}{2} - |E(G)| \le \frac{n(n-1)}{2} - \frac{n^2 - 3n + 4}{2} = n - 2.$$

1. **$G$ összefüggő:** Ha $G$-nek legalább 2 komponense volna ($k$ és $n - k$ méretűek), akkor $|E(\overline{G})| \ge k(n - k) \ge n - 1$ volna, ami ellentmondás.
2. **$G$-ben van háromszög ($K_3$):** Mantel tétele szerint egy háromszögmentes gráf élszáma legfeljebb $\lfloor n^2/4 \rfloor$. Mivel $n \ge 5$-re
   $$|E(G)| - \frac{n^2}{4} \ge \frac{(n-2)(n-4)}{4} > 0,$$
   $G$-ben biztosan van háromszög, csúcsai legyenek $a, b, c$.
3. **Minden szám racionális:** A háromszög éleiből $x_a + x_b = q_1, x_b + x_c = q_2, x_c + x_a = q_3 \in \mathbb{Q}$, amiből
   $$x_a = \frac{q_1 - q_2 + q_3}{2} \in \mathbb{Q}.$$
   Mivel $G$ összefüggő, bármely más csúcsra $x_j \in \mathbb{Q}$, mert az élek mentén $x_j = (x_i + x_j) - x_i$.

Mivel **mind az $n$ megadott szám racionális**, bármely két szám összege $x_i + x_j$ is racionális, tehát **az összes összeg racionális**.

**Válasz:** Igen, következik, hogy mindegyik megadott szám racionális. $\blacksquare$

::: elmelet
**Elméleti háttér — Mantel-tétel és gráf-összefüggőség.** Az élek nagy száma ($> n^2/4$) kikényszeríti a háromszöget. A háromszög három egyenletéből a három ismeretlen egyértelműen kiszámolható és racionálisnak adódik. Az összefüggőség ezután a racionális tulajdonságot az egész gráfra kiterjeszti.

*A Mantel-tétel bizonyítása.* Legyen $H$ egy $n$ csúcsú, $e$ élű háromszögmentes gráf. Ha $xy$ él, akkor $x$-nek és $y$-nak nincs közös szomszédja (különben háromszög volna), így $\deg(x) + \deg(y) \le n$. Ezt minden élre összeadva a bal oldalon minden $v$ csúcs $\deg(v)$-szer szerepel ($\deg(v)$ élnek végpontja), tehát
$$\sum_{v} \deg(v)^2 \le n\,e.$$
A számtani és négyzetes közép közti egyenlőtlenség (Cauchy–Schwarz) szerint $\sum_v \deg(v)^2 \ge \frac{1}{n}\Big(\sum_v \deg(v)\Big)^2 = \frac{(2e)^2}{n}$. A kettőt összevetve $\frac{4e^2}{n} \le ne$, azaz $e \le \frac{n^2}{4}$. (A korlát éles: a $K_{\lfloor n/2\rfloor, \lceil n/2\rceil}$ teljes páros gráf háromszögmentes, és $\lfloor n^2/4 \rfloor$ éle van.)
:::

# Kombinatorika 1 – 1. javító ZH (régi) – megoldások

### Kombinatorika 1 normál · 2023. november 25.

Emlékeztetőül, a Fibonacci-sorozat definíciója: $F_0 = 0$, $F_1 = 1$, $n \ge 2$ esetén $F_n = F_{n-1} + F_{n-2}$.

## 1. feladat

a) Hányféleképpen írhatjuk fel a 25-öt pontosan 5 darab pozitív egész szám összegeként, ha figyelembe vesszük az összeadandók sorrendjét is? (Tehát az $1+1+1+1+21$ és az $1+1+21+1+1$ felírásokat különbözőnek tekintjük.)

b) Hányféleképpen írhatjuk fel a 25-öt legalább két darab pozitív egész szám összegeként, ha figyelembe vesszük az összeadandók sorrendjét is?

**Megoldás.**

**a) $\mathbf{\binom{24}{4} = 10\,626}$ féleképpen.**

A feladat az $x_1 + x_2 + x_3 + x_4 + x_5 = 25$ egyenlet pozitív egész ($x_i \ge 1$) megoldásainak száma.
Képzeljünk el 25 darab 1-est egy sorban. Közöttük $25 - 1 = 24$ lehetséges hely van. Ezen 24 hely közül $5 - 1 = 4$ helyre teszünk elválasztójelet:
$$\binom{25 - 1}{5 - 1} = \binom{24}{4} = \frac{24 \cdot 23 \cdot 22 \cdot 21}{24} = 23 \cdot 22 \cdot 21 = \mathbf{10\,626}.$$

*(Vagy új változókkal: $y_i = x_i - 1 \ge 0$, ekkor $y_1 + \dots + y_5 = 20$, megoldásszám $\binom{20 + 5 - 1}{5 - 1} = \binom{24}{4}$.)*

**b) $\mathbf{2^{24} - 1 = 16\,777\,215}$ féleképpen.**

A 25 szám összes lehetséges rendezett felbontásában (kompozíciójában) a 25 darab 1-es közötti 24 hely mindegyikén vagy teszünk vágást, vagy nem. Mivel mind a 24 helyen egymástól függetlenül dönthetünk (2 lehetőség helyenként), az összes kompozíciók száma:
$$2^{24} = 16\,777\,216.$$
Ezek közül pontosan egyetlen olyan felírás van, amelyben a tagok száma nem legalább 2: az 1 tagú felírás, azaz maga a $25$ (ahol egyetlen helyre sem tettünk vágást).
Tehát a legalább két tagú felírások száma:
$$2^{24} - 1 = 16\,777\,216 - 1 = \mathbf{16\,777\,215}.$$

::: elmelet
**Elméleti háttér — kompozíciók és pálcika-golyó módszer.** Egy $n$ szám $k$ darab pozitív egész tag összegére való felbontásainak száma a sorrend figyelembevételével $\binom{n-1}{k-1}$. Az összes pozitív tagú kompozíciók száma tetszőleges tagszám mellett $\sum_{k=1}^n \binom{n-1}{k-1} = 2^{n-1}$.
:::

## 2. feladat

Egy polcon lévő $n$ könyv közül hányféleképpen vehetünk le néhányat, ha nem szeretnénk szomszédos könyveket levenni?

**Megoldás.**

**$\mathbf{F_{n+2}}$ féleképpen (ha a 0 könyv levétele is megengedett), illetve $\mathbf{F_{n+2} - 1}$ féleképpen (ha legalább 1 könyvet le kell venni).**

Jelölje $a_n$ az $\{1, 2, \dots, n\}$ sorozat olyan részhalmazainak számát, amelyek nem tartalmaznak két szomszédos számot.

Bontsuk az eseteket az $n$-edik könyv állapota szerint:
- **Ha az $n$-edik könyvet NEM vesszük le:** ekkor az első $n - 1$ könyv közül kell szomszédmentes részhalmazt választanunk, erre a definíció szerint $a_{n-1}$ lehetőség van.
- **Ha az $n$-edik könyvet LEVESSZÜK:** ekkor az $(n-1)$-edik könyvet a feltétel miatt nem vehetjük le, a maradék első $n - 2$ könyv közül választhatunk szomszédmentesen, erre $a_{n-2}$ lehetőség van.

Ez a két eset egymást kizárja és lefedi az összes esetet, így:
$$a_n = a_{n-1} + a_{n-2}.$$

Nézzük a kezdőértékeket:
- $n = 0$: $a_0 = 1$ (az üres választás: 0 könyv levétele),
- $n = 1$: $a_1 = 2$ (nem veszünk le semmit, vagy levesszük az 1-es könyvet),
- $n = 2$: $a_2 = 3$ ($\emptyset, \{1\}, \{2\}$),
- $n = 3$: $a_3 = 5$ ($\emptyset, \{1\}, \{2\}, \{3\}, \{1, 3\}$).

A Fibonacci-sorozat definíciója szerint $F_0 = 0, F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, \dots$
Látható, hogy $a_n = F_{n+2}$.
- Ha a „néhány” könyv megengedi a 0 könyv levételét is (üres halmaz), akkor az eredmény: **$F_{n+2}$**.
- Ha legalább egy könyvet le kell venni (nem üres halmaz), akkor az eredmény: **$F_{n+2} - 1$**.

::: elmelet
**Elméleti háttér — szomszédmentes részhalmazok és Fibonacci-rekurzió.** Az utolsó elem szerinti esetszétválasztás közvetlenül a Fibonacci-rekurzióra ($a_n = a_{n-1} + a_{n-2}$) vezet. Ismert összefüggés a binomiális együtthatókkal is: $a_n = \sum_{k \ge 0} \binom{n - k + 1}{k} = F_{n+2}$.
:::

## 3. feladat

Egy $2025 \times 2025$-ös táblázat mezőibe tetszőlegesen beírjuk az 1, 2, 3 számok valamelyikét és kiszámítjuk a 2025 darab sorban, a 2025 darab oszlopban és a főátlóban (mely a bal felső saroktól a jobb alsó sarokig húzódik) az ott lévő számok összegét. Tudjuk, hogy a főátlóban páros sok 2-es szerepel, igaz-e, hogy a kapott összegek között lesz két azonos?

**Megoldás.**

**Igaz, biztosan lesz két azonos összeg.**

A kiszámított összegek száma:
$$2025 \text{ (sorösszeg)} + 2025 \text{ (oszlopösszeg)} + 1 \text{ (főátló összege)} = 4051 \text{ darab összeg}.$$

1. **A lehetséges összegek tartománya:**
   Minden sorban, oszlopban és a főátlóban pontosan 2025 darab szám van, és mindegyik szám az $\{1, 2, 3\}$ halmazból való.
   - A legkisebb lehetséges összeg: $2025 \cdot 1 = 2025$ (ha csupa 1-es van).
   - A legnagyobb lehetséges összeg: $2025 \cdot 3 = 6075$ (ha csupa 3-as van).
   A lehetséges összegek száma:
   $$6075 - 2025 + 1 = 4051 \text{ darab lehetséges egész érték}.$$

2. **Indirekt feltevés:**
   Tegyük fel indirekt, hogy a 4051 összeg **mind különböző**.
   Mivel pontosan 4051 összegünk van és pontosan 4051 lehetséges érték a $[2025, 6075]$ intervallumban, a kapott összegeknek a $\{2025, 2026, \dots, 6075\}$ halmaz **minden egyes elemét pontosan egyszer** fel kell venniük!

3. **Paritásvizsgálat:**
   - **A 4051 összeg teljes összege a táblázat mezői alapján:**
     Legyen $S = \sum_{i,j} a_{i,j}$ a táblázat összes mezőjében lévő számok összege.
     Minden mező pontosan egy sorban és egy oszlopban szerepel. Így a 2025 sorösszeg összege $S$, a 2025 oszlopösszeg összege szintén $S$.
     A 4051 összeg összege tehát:
     $$\Sigma_{\text{összes}} = \sum_{i=1}^{2025} (\text{sor}_i) + \sum_{j=1}^{2025} (\text{oszlop}_j) + (\text{főátló}) = S + S + (\text{főátló}) = 2S + (\text{főátló}).$$
     Mivel $2S$ páros egész szám, a teljes összeg paritása **megegyezik a főátló összegének paritásával**:
     $$\Sigma_{\text{összes}} \equiv (\text{főátló}) \pmod 2.$$

   - **A főátló összegének paritása:**
     A főátlóban 2025 darab szám áll az $\{1, 2, 3\}$ halmazból. Modulo 2 vizsgálva:
     $$1 \equiv 1, \quad 3 \equiv 1, \quad 2 \equiv 0 \pmod 2.$$
     Tehát a főátló összege páros $\iff$ páros sok páratlan szám (1-es és 3-as) van benne.
     A feltétel szerint a főátlóban **páros sok 2-es** szerepel.
     Mivel a főátlóban a számok teljes száma 2025 (páratlan), az 1-esek és 3-asok száma:
     $$2025 - (\text{páros}) = \text{PÁRATLAN}.$$
     Mivel páratlan sok páratlan szám van a főátlóban, **a főátló összege PÁRATLAN**:
     $$(\text{főátló}) \equiv 1 \pmod 2 \implies \Sigma_{\text{összes}} \equiv 1 \pmod 2.$$

   - **A $\{2025, \dots, 6075\}$ halmaz elemeinek összege:**
     Ha mind a 4051 szám megjelenne egyszer, az összegük:
     $$\sum_{k=2025}^{6075} k = \frac{2025 + 6075}{2} \cdot 4051 = 4100 \cdot 4051 = 16\,609\,100,$$
     ami **PÁROS** szám (hiszen a 4100 páros)!
     *(Vagy paritással: az intervallum első száma 2025 (páratlan), utolsó száma 6075 (páratlan). A páratlan számok száma $\frac{6075 - 2025}{2} + 1 = 2026$, ami páros, így a páratlan számok összege páros, a párosaké páros, a teljes összeg páros.)*

4. **Ellentmondás:**
   A táblázat mezőinek összeadásából $\Sigma_{\text{összes}}$ páratlan, míg a feltételezett 4051 különböző érték összege páros.
   Ez lehetetlen, tehát az indirekt feltevés hamis: **nem lehet mind a 4051 összeg különböző**, vagyis biztosan van legalább két azonos összeg. $\blacksquare$

::: elmelet
**Elméleti háttér — kettős összegzés és paritási invariáns.** Amikor az értékek elméleti tartománya méretében megegyezik a minták számával, az injektivitás (különbözőség) szürjektivitást kényszerít ki: minden lehetséges értéknek pontosan egyszer kell előfordulnia. Ezt gyakran paritási ellentmondással cáfoljuk: a rendszert leíró összesített invariáns (itt $2S + \text{átló}$) paritása összevethető a teljes értékkészlet összegének paritásával.
:::

## 4. feladat

Adott 6 levél és minden levélhez egy megcímkézett boríték. Hányféleképpen helyezhetjük el a leveleket a megcímkézett borítékokba úgy, hogy semelyik levél se kerüljön a hozzá tartozó borítékba, ha

a) minden borítékba pontosan egy levél kerül?

b) egy borítékba több levél is kerülhet?

**Megoldás.**

**a) Minden borítékba pontosan egy levél kerül:**

**265 féleképpen.**

Ez a klasszikus derangement (fixpontmentes permutáció) feladat 6 elemre ($D_6$).
Jelölje $A_i$ ($i = 1, \dots, 6$) azon bijekciókat, ahol az $i$-edik levél a saját borítékjába kerül.
A logikai szita formula szerint:
$$D_6 = 6! \sum_{k=0}^6 \frac{(-1)^k}{k!} = 720 \left(1 - 1 + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} - \frac{1}{5!} + \frac{1}{6!}\right)$$
$$D_6 = 720 \left(\frac{1}{2} - \frac{1}{6} + \frac{1}{24} - \frac{1}{120} + \frac{1}{720}\right) = 360 - 120 + 30 - 6 + 1 = \mathbf{265}.$$

---

**b) Egy borítékba több levél is kerülhet:**

**$\mathbf{5^6 = 15\,625}$ féleképpen.**

Mivel egy borítékba tetszőlegesen több levél is kerülhet (és boríték üresen is maradhat), a levelek elhelyezése egymástól teljesen független.
Az $i$-edik levél tetszőleges borítékba tehető, kivéve az $i$-edik borítékot.
Mivel 6 boríték van, minden levél számára pontosan $6 - 1 = 5$ megengedett boríték áll rendelkezésre.
A 6 levélre a független döntések száma a szorzási szabály szerint:
$$5^6 = \mathbf{15\,625}.$$

::: elmelet
**Elméleti háttér — derangement és független függvények.** (a) Bijekciók esetén (minden dobozba 1 golyó) a feltételek erősen csatoltak, a megoldást a szitaformula általános derangement-képlete ($n! \sum \frac{(-1)^k}{k!} = [\frac{n!}{e}]$) adja. (b) Általános leképezéseknél a kapacitáskorlát nélkül a komponensek szétesnek független választások szorzatára: minden elem a sajátján kívüli $n - 1$ dobozba mehet, így a válasz $(n - 1)^n$.
:::

## 5. feladat

Keressünk zárt formulát az alábbi kifejezésre és igazoljuk az egyenlőséget a kettős leszámlálás módszerével!
$$\sum_{k=0}^n k^2 \binom{n}{k}$$

[2 pontért megmondjuk, mi a zárt alak]

**Megoldás.**

**A zárt alak: $\mathbf{n(n+1) 2^{n-2}}$ (vagy $n 2^{n-1} + n(n-1)2^{n-2}$).**

**Bizonyítás kettős leszámlálással:**

Tekintsünk egy $n$ fős társaságot. Azt számoljuk meg kétféleképpen, hogy hányféleképpen választhatunk ki a társaságból egy tetszőleges méretű bizottságot, és a bizottság tagjai közül egy **elnököt** és egy **titkárt**, ha az elnök és a titkár **lehet ugyanaz a személy is**.

- **1. számlálás (előbb a bizottság, majd a tisztviselők):**
  Rögzítsük a bizottság létszámát: legyen ez $k$ ($1 \le k \le n$).
  1. A $k$ fős bizottságot $\binom{n}{k}$ módon választhatjuk ki.
  2. A kiválasztott $k$ ember közül az elnököt $k$ módon választhatjuk ki.
  3. A titkárt szintén a bizottság tagjai közül $k$ módon választhatjuk ki (mivel megengedett, hogy ugyanaz a személy töltse be mindkét posztot).
  Ez a bizottság kijelölése után $k \cdot k = k^2$ lehetőség.
  Összegezve az összes $k = 0, 1, \dots, n$ értékre (a $k = 0$ eset 0-t ad):
  $$\sum_{k=0}^n k^2 \binom{n}{k}.$$

- **2. számlálás (előbb a tisztviselők, majd a többi bizottsági tag):**
  Bontsuk a lehetőségeket két diszjunkt esetre:
  1. **Az elnök és a titkár ugyanaz a személy:**
     Ezt a közös tisztséget viselő embert $n$ féleképpen választhatjuk ki az $n$ főből.
     A megmaradt $n - 1$ ember mindegyikéről függetlenül eldöntjük, hogy tagja legyen-e a bizottságnak vagy sem: erre $2^{n-1}$ lehetőség van.
     Ebben az esetben a lehetőségek száma:
     $$n 2^{n-1}.$$
  2. **Az elnök és a titkár két különböző személy:**
     Az elnököt $n$ féleképpen, a titkárt tőle különbözően $n - 1$ féleképpen választhatjuk ki: ez $n(n - 1)$ lehetőség.
     A maradék $n - 2$ ember mindegyikéről függetlenül döntünk a bizottsági tagságról: erre $2^{n-2}$ lehetőség van.
     Ebben az esetben a lehetőségek száma:
     $$n(n - 1) 2^{n-2}.$$

  A két diszjunkt eset összege:
  $$n 2^{n-1} + n(n - 1) 2^{n-2} = n 2^{n-2} \cdot 2 + n(n - 1) 2^{n-2} = n 2^{n-2} (2 + n - 1) = \mathbf{n(n+1) 2^{n-2}}.$$

Mivel mindkét számolás ugyanannak a struktúrának a száma:
$$\sum_{k=0}^n k^2 \binom{n}{k} = n(n+1) 2^{n-2}. \quad \blacksquare$$

*(Algebrai levezetés deriválással: $(1 + x)^n = \sum \binom{n}{k} x^k$. Deriválva: $n(1+x)^{n-1} = \sum k \binom{n}{k} x^{k-1}$. Megszorozva $x$-szel: $nx(1+x)^{n-1} = \sum k \binom{n}{k} x^k$. Újra deriválva: $n(1+x)^{n-1} + n(n-1)x(1+x)^{n-2} = \sum k^2 \binom{n}{k} x^{k-1}$. Behelyettesítve $x = 1$-et: $n 2^{n-1} + n(n-1)2^{n-2} = n(n+1)2^{n-2}$.)*

::: elmelet
**Elméleti háttér — tisztviselő-választás modell és generátorfüggvények.** A $k^2$ szorzó kombinatorikusan egy rendezett pár kiválasztását jelenti a $k$ elemű halmazból. Mivel a pár két eleme lehet azonos vagy különböző, az esetbontás a $k^2 = k(k-1) + k$ azonosság kombinatorikus megfelelője (ahol $\binom{k}{2} = \frac{k(k-1)}{2}$ két különböző elem kiválasztása).
:::

## 6. feladat

Mutasd meg, hogy ha egy egyszerű gráfban minden pont foka legalább három, akkor a gráfban van páros hosszúságú kör!

**Megoldás.**

Tekintsük a gráf egy **leghosszabb egyszerű útját**:
$$P = v_1 v_2 \dots v_m.$$

1. **A kezdőpont szomszédai mind a pályára illeszkednek:**
   Mivel $P$ maximális hosszúságú egyszerű út a gráfban, a $v_1$ végpont nem köthető össze egyetlen olyan csúccsal sem, amely nem szerepel a $P$ úton (ellenkező esetben a sétát az új csúccsal meghosszabbítva egy $m+1$ csúcsú egyszerű utat kapnánk, ami ellentmondana $P$ maximalitásának).
   Ezért $v_1$ minden szomszédja szükségképpen a $P$ út csúcsai közül kerül ki:
   $$N(v_1) \subseteq \{v_2, v_3, \dots, v_m\}.$$

2. **Legalább három szomszéd az úton:**
   Mivel $G$ egyszerű gráf és minden pont foka legalább $3$, a $v_1$ csúcsnak legalább 3 szomszédja van $P$-n. A közvetlen szomszédja $v_2$, így létezik még legalább két további szomszédja a $P$ úton.
   Jelölje e két szomszédot $v_i$ és $v_j$, ahol indexeikre:
   $$2 < i < j \le m.$$

3. **Három egyszerű kör képzése:**
   A $v_1 v_i$ és $v_1 v_j$ élek a $P$ út szakaszaival három egyszerű kört határoznak meg:
   - $C_1 = v_1 v_2 \dots v_i v_1$, melynek hossza $i$;
   - $C_2 = v_1 v_2 \dots v_j v_1$, melynek hossza $j$;
   - $C_3 = v_1 v_i v_{i+1} \dots v_j v_1$, amely a $v_1 v_i$ élből, a $P$ út $v_i$-től $v_j$-ig tartó szakaszából ($j - i$ darab él) és a $v_j v_1$ élből áll. Ennek hossza:
     $$|C_3| = 1 + (j - i) + 1 = j - i + 2.$$

4. **Paritásvizsgálat:**
   - Ha $i$ páros, akkor $C_1$ egy **páros hosszúságú kör**.
   - Ha $j$ páros, akkor $C_2$ egy **páros hosszúságú kör**.
   - Ha mind $i$, mind $j$ páratlan szám, akkor a különbségük $j - i$ páros szám (két páratlan szám különbsége páros). Ekkor
     $$|C_3| = j - i + 2$$
     szintén **páros szám**, tehát $C_3$ egy **páros hosszúságú kör**.

Mivel minden esetben találunk páros hosszúságú kört, a gráfban **biztosan van páros hosszúságú kör**. $\blacksquare$

::: elmelet
**Elméleti háttér — leghosszabb út technika és körparitás.** Az extremális gráfelmélet egyik legerősebb módszere a leghosszabb út vizsgálata: ha egy $P$ egyszerű út maximális hosszúságú, akkor végpontjaiból nem indulhat él a $P$-n kívüli csúcsokba, így minden szomszédjuk magán a $P$ úton helyezkedik el. Ha a minimális fokszám $\delta(G) \ge 3$, akkor a kezdőpontnak a közvetlen szomszédján kívül még legalább két éle (húrja) vezet az út későbbi pontjaiba, melyek három különböző kört határoznak meg. A három kör hosszai ($i$, $j$ és $j - i + 2$) közül a paritási összefüggések miatt legalább az egyik szükségszerűen páros.
:::

## 7. feladat

Mutasd meg, hogy ha 51 db pozitív egész összege 100, akkor két csoportba oszthatóak úgy, hogy a számok összege mindkét csoportban 50.

**Megoldás.**

Jelölje a megadott számokat $a_1, a_2, \dots, a_{51} \in \mathbb{Z}^+$, összegük $\sum_{i=1}^{51} a_i = 100$.

Rendezzük a számokat tetszőleges rögzített sorrendbe, és tekintsük az első 51 darab részletösszeget (prefixösszeget):
$$s_0 = 0, \quad s_1 = a_1, \quad s_2 = a_1 + a_2, \quad \dots, \quad s_m = \sum_{k=1}^m a_k, \quad \dots, \quad s_{50} = \sum_{k=1}^{50} a_k.$$

Mivel mindegyik $a_i$ pozitív egész ($a_i \ge 1$), a részletösszegek sorozata szigorúan monoton növekvő:
$$0 = s_0 < s_1 < s_2 < \dots < s_{50}.$$
Mivel az összes 51 szám összege 100, és az utolsó szám $a_{51} \ge 1$, az $s_{50}$ összegre:
$$s_{50} = 100 - a_{51} \le 100 - 1 = 99 < 100.$$
Ez a sorozat tehát összesen **51 darab különböző egész számot** tartalmaz, melyek mind a $[0, 99]$ tartományba esnek ($0 \le s_m < 100$).

Tekintsük ezen 51 szám **modulo 50 vett maradékait**:
$$r_m = s_m \bmod 50 \in \{0, 1, 2, \dots, 49\} \quad (m = 0, 1, \dots, 50).$$
A lehetséges maradékosztályok száma pontosan **50**.

Mivel 51 darab számunk van, de csak 50 lehetséges maradékosztály létezik, a **skatulya-elv** szerint van legalább két olyan index, $0 \le i < j \le 50$, amelyekhez azonos maradék tartozik:
$$s_j \equiv s_i \pmod{50} \implies 50 \mid (s_j - s_i).$$

Mivel $s_j > s_i$, a különbségük pozitív, továbbá $s_j < 100$ és $s_i \ge 0$ miatt:
$$0 < s_j - s_i \le s_{50} < 100.$$

A 0 és 100 nyílt intervallumba eső egészek között egyetlenegy 50-nel osztható szám létezik: maga az **50**. Szükségképpen tehát:
$$s_j - s_i = 50.$$

Mivel $s_j - s_i = \sum_{k=i+1}^j a_k = 50$, az $\{a_{i+1}, a_{i+2}, \dots, a_j\}$ számok összege **pontosan 50**.
A megmaradt számok összege szintén:
$$\sum_{k=1}^{51} a_k - 50 = 100 - 50 = \mathbf{50}.$$

Ez a kiválasztás a megadott 51 darab számot pontosan két olyan csoportra osztja, amelyekben az elemek összege 50. $\blacksquare$

::: elmelet
**Elméleti háttér — prefixösszegek és skatulyaelv részösszegekre.** A prefixösszegek módszere a részösszegek keresésének leghatékonyabb eszköze: egymást követő tagok összege két prefixösszeg különbségeként ($s_j - s_i = \sum_{k=i+1}^j a_k$) fejezhető ki. Ha csupán az első 51 prefixösszeget vizsgáljuk ($s_0, s_1, \dots, s_{50}$), akkor a skatulyaelv miatt azonnal kapunk két mod 50 kongruens összeget, miközben $s_{50} < 100$ miatt a különbségük szigorúan 0 és 100 közé esik — így a 100-as határeset vizsgálata nélkül, közvetlenül az 50 adódik.
:::

# Kombinatorika 1 – 1. ZH (2026) – megoldások

### Kombinatorika 1 normál · 2026. október 19.

## 1. feladat

Egy cukrászdában négyféle muffin kapható. Hányféleképpen rendelhetünk

a) pontosan 16 muffint;

b) legfeljebb 16 muffint,

ha mindkét esetben minden fajtából legalább kettőt kérünk? A rendelésnél csak az számít, hogy az egyes fajtákból hányat kérünk.

**Megoldás.**

**a) $\binom{11}{3} = 165$; b) $\binom{12}{4} = 495$.**

Jelölje $x_1, x_2, x_3, x_4$ az egyes fajtákból kért muffinok számát. Egy rendelés éppen egy $(x_1, x_2, x_3, x_4)$ számnégyes, ahol $x_i \ge 2$.

**a)** Az $x_1 + x_2 + x_3 + x_4 = 16$, $x_i \ge 2$ egyenlet megoldásait keressük. A kötelező $2 \cdot 4 = 8$ muffint előre „lefoglaljuk”: legyen $y_i = x_i - 2 \ge 0$. Ekkor
$$y_1 + y_2 + y_3 + y_4 = 16 - 8 = 8, \qquad y_i \ge 0,$$
és ez kölcsönösen egyértelmű megfeleltetés a két egyenlet megoldásai között. A nemnegatív megoldások száma az ismétléses kombináció képlete (pöttyök és elválasztók: $8$ pötty és $3$ elválasztó $11$ helyen) szerint
$$\binom{8 + 4 - 1}{4 - 1} = \binom{11}{3} = \frac{11 \cdot 10 \cdot 9}{6} = 165.$$

**b)** Most $x_1 + x_2 + x_3 + x_4 \le 16$, $x_i \ge 2$, azaz $y_1 + y_2 + y_3 + y_4 \le 8$, $y_i \ge 0$. Vezessünk be egy ötödik, „fiktív” változót, a **hiányt**: $y_5 = 8 - (y_1 + y_2 + y_3 + y_4) \ge 0$. Ekkor
$$y_1 + y_2 + y_3 + y_4 + y_5 = 8, \qquad y_i \ge 0,$$
és ez ismét bijekció (az első négy változó egyértelműen meghatározza $y_5$-öt, és fordítva). A megoldások száma
$$\binom{8 + 5 - 1}{5 - 1} = \binom{12}{4} = \frac{12 \cdot 11 \cdot 10 \cdot 9}{24} = 495.$$

*Ellenőrzés esetszétválasztással.* Ha a rendelt muffinok száma $8 + s$ ($s = 0, 1, \dots, 8$), akkor az a) rész szerint $\binom{s + 3}{3}$ rendelés van, és a „hokiütő-azonosság” szerint
$$\sum_{s=0}^{8}\binom{s+3}{3} = \binom{3}{3} + \binom{4}{3} + \dots + \binom{11}{3} = \binom{12}{4} = 495.$$

::: elmelet
**Elméleti háttér — ismétléses kombináció alsó és felső korláttal.**

- *Ismétléses kombináció:* az $x_1 + \dots + x_k = m$, $x_i \ge 0$ egyenlet megoldásainak száma $\binom{m + k - 1}{k - 1}$ (bijekció $m$ pötty és $k - 1$ elválasztó sorozataival).
- *Alsó korlát:* ha $x_i \ge c_i$, az $y_i = x_i - c_i$ eltolás a feltételt $y_i \ge 0$-ra, az összeget $m - \sum c_i$-re változtatja.
- *Egyenlőtlenség:* az $x_1 + \dots + x_k \le m$ feltétel egy új, $x_{k+1} = m - \sum x_i \ge 0$ **hiányváltozóval** egyenletté alakul, eggyel több változóval: $\binom{m + k}{k}$ megoldás.
- *Hokiütő-azonosság:* $\sum_{s=0}^{N}\binom{s + r}{r} = \binom{N + r + 1}{r + 1}$. (Kombinatorikusan: az $[N + r + 1]$ halmaz $r + 1$ elemű részhalmazait a legnagyobb elemük szerint csoportosítjuk; ha a legnagyobb elem $s + r + 1$, a többi $r$ elemet $\binom{s + r}{r}$-féleképpen választhatjuk.) A b) rész két megoldása éppen ezt az azonosságot igazolja.
:::

## 2. feladat

Hány különböző anagrammája van az ALKOHOLTILALOM szónak

a) minden további megkötés nélkül;

b) ha semelyik két O betű nem áll egymás mellett?

Az anagrammában a szó összes betűjét felhasználjuk. Az azonos betűk felcserélése nem ad új anagrammát.

**Megoldás.**

A szó 14 betűs. Betűgyakoriságok: L: 4, O: 3, A: 2, K, H, T, I, M: 1-1 (ellenőrzés: $4 + 3 + 2 + 5 = 14$).

**a) $\dfrac{14!}{4!\,3!\,2!} = 302\,702\,400$.**

Ismétléses permutáció: ha a 14 betűt megkülönböztetnénk, $14!$ sorrend volna; minden anagrammát annyiszor kapunk meg, ahányféleképpen az L-ek ($4!$), az O-k ($3!$) és az A-k ($2!$) egymás között permutálhatók. A tehénszabály szerint
$$\frac{14!}{4!\,3!\,2!} = \frac{87\,178\,291\,200}{288} = 302\,702\,400.$$

**b) $\dfrac{11!}{4!\,2!}\cdot\dbinom{12}{3} = 831\,600 \cdot 220 = 182\,952\,000$.**

Először rakjuk sorba a 11 nem-O betűt (L: 4, A: 2, K, H, T, I, M: 1-1):
$$\frac{11!}{4!\,2!} = \frac{39\,916\,800}{48} = 831\,600$$
féleképpen. A 11 betű között és a két szélen összesen $12$ „rés” van:
$$\_\ B_1\ \_\ B_2\ \_\ \cdots\ \_\ B_{11}\ \_$$
Két O pontosan akkor nem kerül egymás mellé, ha a három O három **különböző** résbe kerül (egy résbe legfeljebb egy). Mivel az O-k egyformák, csak az számít, melyik három rést választjuk: $\binom{12}{3} = 220$ lehetőség. Minden jó anagramma pontosan egyszer keletkezik (a nem-O betűk sorrendje és az O-k helye egyértelműen leolvasható belőle), így a független választás elve szerint a válasz $831\,600 \cdot 220 = 182\,952\,000$.

::: elmelet
**Elméleti háttér — ismétléses permutáció és a „rések” módszere.** $n$ elem sorrendjeinek száma, ha az elemek között $n_1, \dots, n_k$ darab egyforma van: $\frac{n!}{n_1!\cdots n_k!}$ (tehénszabály: minden valódi sorrendet $n_1!\cdots n_k!$-szor számolunk, ha az egyformákat megkülönböztetjük). **Tiltott szomszédság** esetén a „rossz” betűket utoljára helyezzük el: a többi $m$ betű között $m + 1$ rés van, és ha $r$ egyforma betűből semelyik kettő nem lehet szomszédos, akkor ezeket $\binom{m+1}{r}$-féleképpen tehetjük a résekbe. (Ha az $r$ betű különböző volna, $\binom{m+1}{r}r!$ lehetőség lenne.) A módszer azért helyes, mert két O pontosan akkor szomszédos, ha ugyanabba a résbe kerülnek.
:::

## 3. feladat

Legyen $n \ge 2$ egész. Hozd zárt alakra az alábbi összeget, és igazold az eredményt kettős leszámlálással!
$$\sum_{k=2}^{n} k(k-1)\binom{n}{k}.$$

**Megoldás.**

**A zárt alak: $n(n-1)\,2^{n-2}$.**

Egy $n$ fős társaságból válasszunk ki egy (tetszőleges létszámú) **bizottságot**, és a bizottság tagjai közül egy **elnököt** és egy tőle különböző **titkárt**. Számoljuk meg kétféleképpen, hányféleképpen tehetjük ezt meg.

- **Előbb a bizottság.** Ha a bizottság $k$ tagú, akkor $\binom{n}{k}$-féleképpen választhatjuk ki, majd az elnököt $k$-féleképpen, a titkárt a többi $k - 1$ tag közül $(k-1)$-féleképpen. Egy elnökhöz és egy tőle különböző titkárhoz legalább két tag kell, így $k \ge 2$ (a $k = 0, 1$ esetek $0$-t adnának, összhangban azzal, hogy $k(k-1) = 0$). Esetszétválasztással a lehetőségek száma
$$\sum_{k=2}^{n} \binom{n}{k}\,k(k-1).$$
- **Előbb a tisztségviselők.** Az elnököt az $n$ ember közül $n$-féleképpen, a titkárt a többi közül $(n-1)$-féleképpen választhatjuk. A maradék $n - 2$ emberről egyenként, egymástól függetlenül eldöntjük, hogy bekerül-e a bizottságba (a tisztségviselők automatikusan tagok): $2^{n-2}$ lehetőség. Összesen
$$n(n-1)\,2^{n-2}.$$

Mindkét számolás ugyanazokat a (bizottság, elnök, titkár) hármasokat számolja meg, minden hármast pontosan egyszer, így
$$\sum_{k=2}^{n} k(k-1)\binom{n}{k} = n(n-1)\,2^{n-2}. \qquad \blacksquare$$

*Ellenőrzés:* $n = 3$-ra $2 \cdot 1 \cdot 3 + 3 \cdot 2 \cdot 1 = 12 = 3 \cdot 2 \cdot 2$.

*Algebrai ellenőrzés:* $k(k-1)\binom{n}{k} = n(n-1)\binom{n-2}{k-2}$ (a faktoriálisok kiírásával), és $\sum_{k=2}^{n}\binom{n-2}{k-2} = 2^{n-2}$.

::: elmelet
**Elméleti háttér — kettős leszámlálás és a „kitüntetett elemek” szorzója.** A kettős leszámlálás lényege: egy alkalmasan választott halmazt kétféle sorrendben építünk fel, és a két eredményt egyenlővé tesszük. A $\binom{n}{k}$ mellett álló szorzók kombinatorikus jelentése: $k$ — egy kitüntetett tag (elnök) a $k$ közül; $k(k-1)$ — két különböző, sorrendben kitüntetett tag (elnök és titkár); $k^2$ — két kitüntetett tag, akik egybe is eshetnek. Fordított sorrendben előbb a kitüntetett tagokat választjuk az egész társaságból, majd a többiekről szabadon döntünk ($2^{\text{maradék}}$). Így kapjuk a $\sum k\binom{n}{k} = n2^{n-1}$, $\sum k(k-1)\binom{n}{k} = n(n-1)2^{n-2}$ és $\sum k^2\binom{n}{k} = n(n+1)2^{n-2}$ azonosságokat. (Ugyanezek a binomiális tétel deriválásával is adódnak: $(1+x)^n$ második deriváltja az $x = 1$ helyen.)
:::

## 4. feladat

Egy varázsló kétféle támadóvarázslatot ismer: tűzgolyót és villámcsapást, valamint háromféle védekezővarázslatot: védőpajzsot, gyógyítást és láthatatlanná válást.

A párbaj szabályai szerint, ha egyszer védekezővarázslatot használ, utána már nem használhat támadóvarázslatot. Bármelyik varázslat többször is szerepelhet. Csak támadó- vagy csak védekezővarázslatokból álló sorozat is megengedett.

Jelölje $a_n$ a megengedett, $n$ varázslatból álló sorozatok számát.

a) Állíts fel lineáris rekurziót az $a_n$ sorozatra, és add meg a szükséges kezdőértékeket!

b) Adj képletet az alábbi lineáris rekurzió $n$-edik tagjára: $b_0 = 0$, $b_1 = 1$, $n > 1$-re $b_n = 2b_{n-1} + 2b_{n-2}$.

**Megoldás.**

**a)** Egy megengedett sorozat szerkezete: néhány ($0, 1, \dots, n$) támadóvarázslat, utána csupa védekezővarázslat — hiszen az első védekezés után már csak védekezés jöhet.

*Első rekurzió (az utolsó varázslat szerint).* Legyen $n \ge 1$.

- Ha az utolsó varázslat **védekező** ($3$ féle), akkor az első $n - 1$ varázslat tetszőleges megengedett sorozat: egy védekezés a végén sosem sérti a szabályt. Ez $3a_{n-1}$ sorozat.
- Ha az utolsó varázslat **támadó**, akkor előtte nem lehetett védekezés (különben a végén álló támadás tilos volna), tehát mind az $n$ varázslat támadó: $2^n$ sorozat.

Így
$$a_n = 3a_{n-1} + 2^n \qquad (n \ge 1), \qquad a_0 = 1.$$
($a_0 = 1$: az üres sorozat. Ha a $0$ hosszú sorozatot nem akarjuk értelmezni: $a_1 = 5$, hiszen mind az $5$ varázslat önmagában megengedett.)

*Homogén lineáris rekurzió.* Írjuk fel az előzőt $n - 1$-re is, és vonjuk ki a kétszeresét:
$$a_n - 3a_{n-1} = 2^n, \qquad 2\,(a_{n-1} - 3a_{n-2}) = 2 \cdot 2^{n-1} = 2^n,$$
ahonnan
$$\boxed{a_n = 5a_{n-1} - 6a_{n-2} \quad (n \ge 2), \qquad a_0 = 1,\ a_1 = 5}$$
(vagy egyenértékűen $a_1 = 5$, $a_2 = 19$, és a rekurzió $n \ge 3$-ra).

*Ellenőrzés:* $a_2 = 5 \cdot 5 - 6 \cdot 1 = 19$; közvetlenül: a $25$ kéttagú sorozatból csak a „védekezés, majd támadás” típusú $3 \cdot 2 = 6$ tilos, $25 - 6 = 19$. ✓

*Zárt alak (nem kérdezték, de jó ellenőrzés).* A karakterisztikus egyenlet $q^2 - 5q + 6 = (q-2)(q-3) = 0$, gyökei $2$ és $3$, így $a_n = \alpha 2^n + \beta 3^n$; $a_0 = 1$, $a_1 = 5$ alapján $\alpha = -2$, $\beta = 3$:
$$a_n = 3^{n+1} - 2^{n+1}.$$
Ez közvetlenül is látszik: ha pontosan $k$ támadás van az elején, $2^k3^{n-k}$ sorozat van, és $\sum_{k=0}^{n}2^k3^{n-k} = \frac{3^{n+1} - 2^{n+1}}{3 - 2}$ (mértani összeg).

**b) $b_n = \dfrac{(1+\sqrt3)^n - (1-\sqrt3)^n}{2\sqrt3}$.**

1. *Karakterisztikus egyenlet:* $q^2 = 2q + 2$, azaz $q^2 - 2q - 2 = 0$, gyökei
$$q_{1,2} = \frac{2 \pm \sqrt{4 + 8}}{2} = 1 \pm \sqrt3.$$
2. *Általános megoldás* (két különböző gyök): $b_n = \alpha(1+\sqrt3)^n + \beta(1-\sqrt3)^n$.
3. *Kezdőértékek:*
   - $n = 0$: $\alpha + \beta = 0$, tehát $\beta = -\alpha$;
   - $n = 1$: $\alpha(1 + \sqrt3) - \alpha(1 - \sqrt3) = 2\sqrt3\,\alpha = 1$, tehát $\alpha = \frac{1}{2\sqrt3}$, $\beta = -\frac{1}{2\sqrt3}$.
4. *Eredmény:*
$$b_n = \frac{1}{2\sqrt3}\Big[(1+\sqrt3)^n - (1-\sqrt3)^n\Big].$$

*Ellenőrzés:* a rekurzióból $b_2 = 2$, $b_3 = 6$, $b_4 = 16$. A képletből $b_2 = \frac{(4 + 2\sqrt3) - (4 - 2\sqrt3)}{2\sqrt3} = 2$, és $b_3 = \frac{(10 + 6\sqrt3) - (10 - 6\sqrt3)}{2\sqrt3} = 6$. ✓

::: elmelet
**Elméleti háttér — lineáris rekurziók.** Az $a_n = c_1a_{n-1} + c_2a_{n-2}$ alakú (állandó együtthatós, homogén, másodrendű) rekurzió megoldásai kétdimenziós vektorteret alkotnak, és egy megoldást az első két tagja egyértelműen meghatároz. A $q^n$ alakú megoldásokat a $q^2 - c_1q - c_2 = 0$ **karakterisztikus egyenlet** gyökei adják; két különböző gyök esetén minden megoldás $\alpha q_1^n + \beta q_2^n$ alakú, $\alpha$ és $\beta$ a kezdőértékekből számolható. **Inhomogén** rekurzió ($a_n = 3a_{n-1} + 2^n$) homogénné alakítható, ha a „zavaró” tagot kiejtjük: az eltolt egyenlet megfelelő többszörösét levonva ($2^n = 2\cdot 2^{n-1}$) a karakterisztikus egyenlethez egy új gyök ($2$) adódik hozzá. **Leszámlálási rekurzió felállításakor** az utolsó (vagy első) lépés szerint választunk szét eseteket, és minden esetben a maradékot egy kisebb, *ugyanilyen típusú* feladatként számoljuk meg.
:::

## 5. feladat

Legyen $n \ge 1$ egész. Bizonyítsd be, hogy minden olyan $4n$ csúcsú egyszerű gráfban, amelyben minden csúcs fokszáma legfeljebb 3, kiválasztható $n$ csúcs úgy, hogy a kiválasztott csúcsok közül semelyik kettő nincs éllel összekötve!

**Megoldás.**

*1. bizonyítás (színezéssel).* A gráf maximális fokszáma $\Delta \le 3$, ezért a mohó színezés szerint $\chi(G) \le \Delta + 1 \le 4$: a csúcsok kiszínezhetők $4$ színnel úgy, hogy szomszédos csúcsok különböző színűek. A négy színosztály a $4n$ csúcsot négy diszjunkt részre bontja, így a skatulyaelv szerint valamelyik osztályban legalább $\frac{4n}{4} = n$ csúcs van. Egy színosztályon belül nem fut él (független halmaz), tehát ennek bármely $n$ csúcsa megfelel. $\blacksquare$

*2. bizonyítás (mohó kiválasztással).* Válasszunk ki egy tetszőleges $v_1$ csúcsot, majd töröljük a gráfból $v_1$-et és **összes szomszédját** — ez legfeljebb $1 + 3 = 4$ csúcs. A maradék gráfból válasszunk ki egy $v_2$ csúcsot, töröljük őt és a (megmaradt) szomszédait, és így tovább. Minden lépésben legfeljebb $4$ csúcsot törlünk, így $n - 1$ lépés után még legalább $4n - 4(n-1) = 4 > 0$ csúcs marad, tehát az $n$-edik lépést is meg tudjuk tenni. A kiválasztott $v_1, \dots, v_n$ csúcsok függetlenek: ha $i < j$, akkor $v_j$ az $i$-edik lépés után is megmaradt, tehát nem szomszédja $v_i$-nek. $\blacksquare$

*Az állítás éles.* $n$ diszjunkt $K_4$ egy $4n$ csúcsú, $3$-reguláris gráf, amelyben minden $K_4$-ből legfeljebb egy csúcs választható, tehát $n + 1$ független csúcs már nincs.

::: elmelet
**Elméleti háttér — független halmazok és kromatikus szám.** Egy jó $k$-színezés színosztályai független halmazok, és együtt lefedik a csúcshalmazt; ezért $\alpha(G) \ge \frac{n}{\chi(G)}$, ahol $\alpha(G)$ a legnagyobb független csúcshalmaz mérete. A mohó színezés $\chi(G) \le \Delta(G) + 1$ korlátjával együtt: $\alpha(G) \ge \frac{n}{\Delta + 1}$. A mohó kiválasztás ugyanezt adja közvetlenül: minden kiválasztott csúcs legfeljebb $\Delta + 1$ csúcsot „fogyaszt el”. (Brooks tétele szerint, ha egy összefüggő gráf nem teljes gráf és nem páratlan kör, akkor $\chi \le \Delta$, így $\alpha \ge \frac{n}{\Delta}$ is igaz — de itt erre nincs szükség.)
:::

## 6. feladat

Hány olyan hatjegyű szám van, amelynek minden számjegye az 1, 2, 3, 4, 5 számjegyek valamelyike, és a számjegyeinek összege 20?

**Megoldás.**

**1506 ilyen szám van.**

Jelölje a számjegyeket $d_1, \dots, d_6 \in \{1, \dots, 5\}$; a feltétel $d_1 + \dots + d_6 = 20$. (Mivel $0$ nem fordul elő, minden ilyen sorozat valódi hatjegyű szám.) Legyen $y_i = d_i - 1 \in \{0, 1, 2, 3, 4\}$, ekkor
$$y_1 + y_2 + \dots + y_6 = 20 - 6 = 14, \qquad 0 \le y_i \le 4.$$

Logikai szita. Az alaphalmaz $S$ az $y_1 + \dots + y_6 = 14$, $y_i \ge 0$ egyenlet megoldásainak halmaza, a „rossz” tulajdonság $A_i$: $y_i \ge 5$.

- $|S| = \binom{14 + 5}{5} = \binom{19}{5} = 11\,628$.
- $|A_i|$: $y_i' = y_i - 5 \ge 0$ helyettesítéssel az összeg $9$, így $|A_i| = \binom{9 + 5}{5} = \binom{14}{5} = 2002$; ilyen $i$ $6$ van.
- $|A_i \cap A_j|$: az összeg $14 - 10 = 4$, $|A_i \cap A_j| = \binom{4 + 5}{5} = \binom{9}{5} = 126$; ilyen pár $\binom62 = 15$ van.
- Három vagy több feltétel nem sérülhet egyszerre, mert $3 \cdot 5 = 15 > 14$.

A szitaformula szerint
$$\binom{19}{5} - 6\binom{14}{5} + 15\binom{9}{5} = 11\,628 - 12\,012 + 1\,890 = 1506.$$

*Ellenőrzés szimmetriával.* A $d_i \mapsto 6 - d_i$ csere bijekció az $\{1, \dots, 5\}$ számjegyű hatjegyű számok között, és a számjegyösszeget $S$-ről $36 - S$-re változtatja; így a $20$ összegűek száma egyenlő a $16$ összegűekével. Ugyanazt kapjuk: $\binom{15}{5} - 6\binom{10}{5} + 15\binom{5}{5} = 3003 - 1512 + 15 = 1506$.

::: elmelet
**Elméleti háttér — korlátos változójú egyenletek a logikai szitával.** Az $x_1 + \dots + x_k = m$, $0 \le x_i \le M$ egyenlet megoldásainak száma
$$\sum_{j \ge 0}(-1)^j\binom{k}{j}\binom{m - j(M+1) + k - 1}{k - 1},$$
ahol az összegzés addig tart, amíg $m - j(M+1) \ge 0$. A $j$-edik tag azokat a megoldásokat számolja, amelyekben $j$ rögzített változó „túlcsordult” ($x_i \ge M + 1$); a túlcsordult változókból $M + 1$-et levonva ismét korlát nélküli ismétléses kombinációt kapunk. A szitaformula helyessége azon múlik, hogy minden megoldást, amely pontosan $t \ge 1$ feltételt sért, $\sum_j (-1)^j\binom{t}{j} = 0$-szor számolunk.
:::

## 7. feladat

Egy sorban felírtunk 10 egész számot: $a_1, a_2, \dots, a_{10}$. Bizonyítsd be, hogy kiválasztható belőlük egy nem üres, egymást követő számokból álló szakasz, vagyis $a_i, a_{i+1}, \dots, a_j$ valamely $1 \le i \le j \le 10$ indexekre, amelyben a számok összege osztható 10-zel!

**Megoldás.**

Tekintsük a **részletösszegeket** (prefixösszegeket):
$$s_0 = 0,\quad s_1 = a_1,\quad s_2 = a_1 + a_2,\quad \dots,\quad s_{10} = a_1 + \dots + a_{10}.$$
Ez $11$ egész szám. A $10$-zel való osztási maradék csak $10$-féle lehet ($0, 1, \dots, 9$), így a skatulyaelv szerint van két index, $0 \le k < j \le 10$, amelyre $s_k$ és $s_j$ ugyanazt a maradékot adja. Ekkor $10 \mid s_j - s_k$, és
$$s_j - s_k = a_{k+1} + a_{k+2} + \dots + a_j.$$
Ez egy nem üres ($k + 1 \le j$), egymást követő számokból álló szakasz összege; $i = k + 1$-gyel kész vagyunk. $\blacksquare$

*Megjegyzés.* A $10$ nem lényeges: bármely $m$ egész szám között van egymást követő számokból álló, nem üres szakasz, amelynek összege osztható $m$-mel. Kevesebb szám nem elég: $m - 1$ darab $1$-es esetén minden szakasz összege $1$ és $m - 1$ közé esik.

::: elmelet
**Elméleti háttér — skatulyaelv részletösszegekre.** Egymást követő tagokból álló szakasz összege két részletösszeg különbsége: $a_{k+1} + \dots + a_j = s_j - s_k$. Ezért a „van-e osztható összegű szakasz” kérdés azzal egyenértékű, hogy van-e két azonos maradékú részletösszeg. A kulcs az $s_0 = 0$ (üres összeg) felvétele: így $m$ számhoz $m + 1$ részletösszeg tartozik, ami már több, mint a maradékok száma. Ha valamelyik $s_j$ maga osztható $m$-mel, az az $s_0$-val alkotott párnak felel meg (az $a_1, \dots, a_j$ szakasz).
:::

# Kombinatorika 1 – 1. javító ZH (2026) – megoldások

### Kombinatorika 1 normál · 2026.

## 1. feladat

Az 1, 2, 3, 4, 5, 6 számokból nyolctagú nemcsökkenő sorozatokat készítünk; egy szám többször is szerepelhet. Hány ilyen sorozat van, ha

a) pontosan három különböző szám szerepel benne;

b) mind a hat szám szerepel benne?

A nemcsökkenő feltétel azt jelenti, hogy minden tag legalább akkora, mint az előző.

**Megoldás.**

Egy nyolctagú nemcsökkenő sorozatban a tagok nagyság szerint rendezettek: $1 \le x_1 \le x_2 \le \dots \le x_8 \le 6$.
Egy ilyen sorozatot egyértelműen meghatároz az, hogy az egyes számjegyeket hányszor használjuk fel. Ha az $i \in \{1, 2, \dots, 6\}$ szám előfordulási száma $k_i \ge 0$, akkor:
$$k_1 + k_2 + k_3 + k_4 + k_5 + k_6 = 8.$$

**a)** Pontosan három különböző szám szerepel a sorozatban:
1. Válasszuk ki a 6 lehetséges szám közül azt a 3 számot, amelyik szerepel a sorozatban: erre $\binom{6}{3}$-féle lehetőség van.
2. A kiválasztott 3 szám előfordulási száma legyen $y_1, y_2, y_3$. Mivel pontosan ezek a számok szerepelnek, mindegyikük előfordulási száma legalább 1:
   $$y_1 + y_2 + y_3 = 8, \qquad y_i \ge 1 \text{ egész}.$$
   A pozitív egész megoldások száma (8 elem közé 2 elválasztófal elhelyezése a lehetséges 7 helyre):
   $$\binom{8-1}{3-1} = \binom{7}{2} = \frac{7 \cdot 6}{2} = 21.$$
3. Mivel a számok sorrendje a nemcsökkenő feltétel miatt kötött, az előfordulási számok egyértelműen meghatározzák a sorozatot.

Ezért a lehetséges sorozatok száma:
$$\binom{6}{3} \cdot \binom{7}{2} = 20 \cdot 21 = \mathbf{420}.$$

**b)** Mind a hat szám szerepel a sorozatban:
Ekkor mind a 6 szám előfordulási száma legalább 1:
$$k_1 + k_2 + k_3 + k_4 + k_5 + k_6 = 8, \qquad k_i \ge 1 \text{ egész}.$$
A pozitív egész megoldások száma (8 elem közé 5 elválasztófal a 7 lehetséges helyre):
$$\binom{8-1}{6-1} = \binom{7}{5} = \binom{7}{2} = \mathbf{21}.$$

---

## 2. feladat

Nyolc különböző személy, köztük Anna, Béla, Csilla és Dénes, egy kerekasztal köré ül. Két ültetést azonosnak tekintünk, ha az egyik az asztal körüli elforgatással a másikba vihető; a tükörképeket nem azonosítjuk. Hány különböző ültetés lehetséges, ha

a) Anna és Béla egymás mellett ül;

b) Anna és Béla egymás mellett ül, de Csilla és Dénes nem ül egymás mellett?

**Megoldás.**

Összesen 8 személy ül a kerekasztal körül. Elforgatás erejéig $n$ különböző személyt $(n-1)!$-féleképpen ültethetünk le.

**a)** Anna és Béla egymás mellett ül:
- Fogjuk össze Annát és Bélát egyetlen blokkba: $\{A, B\}$.
- Ezzel a blokkal és a többi 6 személlyel együtt összesen $1 + 6 = 7$ egységet kell leültetnünk a kerekasztal köré.
- 7 egység leültetése az asztal körüli forgatások erejéig $(7-1)! = 6! = 720$-féleképpen lehetséges.
- A blokkon belül Anna és Béla kétféle sorrendben ülhet egymás mellett ($AB$ vagy $BA$).
Ezért a keresett ültetések száma:
$$2 \cdot 6! = 2 \cdot 720 = \mathbf{1440}.$$

**b)** Anna és Béla egymás mellett ül, de Csilla és Dénes nem:
Alkalmazzuk a komplementer módszert: az a) részben kiszámított összes olyan ültetésből, ahol $A$ és $B$ egymás mellett ül (1440), vonjuk ki azokat, ahol $A$ és $B$ **is**, valamint $C$ és $D$ **is** egymás mellett ül!
- Tekintsük az $\{A, B\}$ és a $\{C, D\}$ blokkokat, valamint a maradék 4 független személyt.
- Összesen $1 + 1 + 4 = 6$ egység ül a kerekasztal körül: ezek $(6-1)! = 5! = 120$-féleképpen rendezhetők el.
- Az $\{A, B\}$ blokkon belüli sorrend 2-féle, a $\{C, D\}$ blokkon belüli sorrend szintén 2-féle lehet.
- Azon ültetések száma tehát, ahol mindkét pár egymás mellett ül:
  $$2 \cdot 2 \cdot 5! = 4 \cdot 120 = 480.$$

Ezért a feltételnek megfelelő ültetések száma:
$$1440 - 480 = \mathbf{960}.$$

---

## 3. feladat

Legyen $n \ge 1$ egész. Adj zárt alakot az alábbi összegre, és igazold az eredményt kettős leszámlálással!
$$\sum_{k=0}^{n} k \binom{n}{k}^2.$$

**Megoldás.**

**Zárt alak meghatározása:**
Használjuk fel a $k \binom{n}{k} = n \binom{n-1}{k-1}$ összefüggést és a binomiális együtthatók szimmetriáját $\binom{n}{k} = \binom{n}{n-k}$:
$$\sum_{k=0}^{n} k \binom{n}{k}^2 = \sum_{k=1}^{n} k \binom{n}{k} \binom{n}{n-k} = \sum_{k=1}^{n} n \binom{n-1}{k-1} \binom{n}{n-k} = n \sum_{k=1}^{n} \binom{n-1}{k-1} \binom{n}{n-k}.$$
A belső összeg a Vandermonde-azonosság alapján egy $(n-1) + n = 2n-1$ elemű halmazból választ ki $(k-1) + (n-k) = n-1$ elemet, így értéke $\binom{2n-1}{n-1}$.
Tehát a zárt alak:
$$n \binom{2n-1}{n-1}.$$

**Bizonyítás kettős leszámlálással:**
Tegyük fel, hogy egy intézményben $n$ nő és $n$ férfi dolgozik (összesen $2n$ személy).
Szeretnénk megalakítani egy **$n$ tagú bizottságot**, amelynek **elnöke egy nő**.
Számoljuk meg ezen bizottságok lehetséges összeállításait kétféle módon!

- **1. számolási mód (a nők száma szerint bontva):**
  Tegyük fel, hogy a kiválasztott bizottságban pontosan $k$ nő van ($1 \le k \le n$).
  Ekkor a bizottság többi tagja férfi, azaz pontosan $n - k$ férfit kell választani az $n$ férfi közül:
  - A $k$ nő kiválasztása az $n$ nő közül: $\binom{n}{k}$-féleképpen történhet.
  - A bizottság női elnökének kijelölése a beválasztott $k$ nő közül: $k$-féleképpen lehetséges.
  - A maradék $n - k$ férfi kiválasztása az $n$ férfi közül: $\binom{n}{n-k} = \binom{n}{k}$-féleképpen történhet.
  Egy adott $k$ esetén a lehetőségek száma $k \binom{n}{k} \binom{n}{k} = k \binom{n}{k}^2$.
  Összegezve az összes lehetséges $k \in \{0, 1, \dots, n\}$ értékre (a $k=0$ tag értéke 0):
  $$\sum_{k=0}^{n} k \binom{n}{k}^2.$$

- **2. számolási mód (először az elnököt választva):**
  - Először válasszuk ki a bizottság női elnökét az $n$ nő közül: erre $n$ lehetőség van.
  - Ezután a bizottság maradék $n - 1$ tagját kell kiválasztanunk a fennmaradó összes személy közül.
  A fennmaradó személyek száma: $(n - 1)$ nő és $n$ férfi, összesen $(n - 1) + n = 2n - 1$ személy.
  Ezek közül $n - 1$ további tagot választunk tetszőlegesen: erre $\binom{2n-1}{n-1}$ lehetőség van.
  Összesen így:
  $$n \binom{2n-1}{n-1}$$
  lehetőség adódik.

Mivel mindkét gondolatmenet ugyanazt a halmazt (az $n$ tagú, női elnökkel rendelkező bizottságokat) számlálja meg, a két kifejezés szükségképpen egyenlő:
$$\sum_{k=0}^{n} k \binom{n}{k}^2 = \mathbf{n \binom{2n-1}{n-1}}.$$ $\blacksquare$

---

## 4. feladat

a) Egy $1 \times n$ méretű táblát $1 \times 1$-es és $1 \times 2$-es lapokkal fedünk le, átfedés és hézag nélkül. Minden $1 \times 1$-es lap kétféle, minden $1 \times 2$-es lap háromféle színű lehet. A táblát balról jobbra irányítottnak tekintjük, és két lefedés különböző, ha valamely lap helye, mérete vagy színe eltér. Jelölje $a_n$ a lefedések számát, az üres tábla lefedését pedig egy lehetőségnek tekintsük. Állíts fel homogén lineáris rekurziót az $a_n$ sorozatra, és add meg a szükséges kezdőértékeket!

b) Adj zárt képletet a $b_0 = 0, b_1 = 1, b_n = 3b_{n-1} + b_{n-2}$ ($n \ge 2$) homogén lineáris rekurzióval megadott sorozat $n$-edik tagjára!

**Megoldás.**

**a)** Tekintsük az $1 \times n$ tábla legutolsó (jobb szélső) lapját ($n \ge 2$):
1. Ha a jobb szélső lap egy $1 \times 1$-es lap:
   - A lap mérete 1, így a maradék $1 \times (n-1)$-es táblát kell lefedni, amelyre $a_{n-1}$ lehetőség van.
   - Az utolsó $1 \times 1$-es lap 2 különböző színű lehet.
   - Ez $2 a_{n-1}$ lehetőséget ad.
2. Ha a jobb szélső lap egy $1 \times 2$-es lap:
   - A lap mérete 2, így a maradék $1 \times (n-2)$-es táblát kell lefedni, amelyre $a_{n-2}$ lehetőség van.
   - Az utolsó $1 \times 2$-es lap 3 különböző színű lehet.
   - Ez $3 a_{n-2}$ lehetőséget ad.

Mivel a két eset kölcsönösen kizárja egymást és minden esetet lefed, a rekurzió:
$$a_n = 2a_{n-1} + 3a_{n-2} \qquad (n \ge 2).$$

A kezdőértékek:
- $a_0 = \mathbf{1}$ (az üres tábla lefedése a megfogalmazás szerint 1 lehetőség).
- $a_1 = \mathbf{2}$ (egy darab $1 \times 1$-es lap 2 színben).

*(Megjegyzés: a rekurzióból $a_2 = 2 a_1 + 3 a_0 = 2 \cdot 2 + 3 \cdot 1 = 7$, ami megegyezik a két darab $1 \times 1$-es lap ($2 \times 2 = 4$) és egy darab $1 \times 2$-es lap (3) együttesével).*

**b)** A rekurzió: $b_n - 3b_{n-1} - b_{n-2} = 0$ ($n \ge 2$), kezdőértékekkel: $b_0 = 0, b_1 = 1$.
A karakterisztikus egyenlet:
$$x^2 - 3x - 1 = 0.$$
A másodfokú egyenlet gyökei a megoldóképlettel:
$$x_{1,2} = \frac{3 \pm \sqrt{(-3)^2 - 4 \cdot 1 \cdot (-1)}}{2} = \frac{3 \pm \sqrt{13}}{2}.$$
Mivel a két gyök különböző, az általános megoldás alakja:
$$b_n = c_1 \left(\frac{3 + \sqrt{13}}{2}\right)^n + c_2 \left(\frac{3 - \sqrt{13}}{2}\right)^n.$$

Határozzuk meg a konstansokat a kezdőértékekből:
- $n = 0$:
  $$b_0 = c_1 + c_2 = 0 \implies c_2 = -c_1.$$
- $n = 1$:
  $$b_1 = c_1 \left(\frac{3 + \sqrt{13}}{2}\right) - c_1 \left(\frac{3 - \sqrt{13}}{2}\right) = c_1 \cdot \sqrt{13} = 1 \implies c_1 = \frac{1}{\sqrt{13}}, \quad c_2 = -\frac{1}{\sqrt{13}}.$$

A zárt képlet tehát:
$$b_n = \mathbf{\frac{1}{\sqrt{13}} \left[ \left(\frac{3 + \sqrt{13}}{2}\right)^n - \left(\frac{3 - \sqrt{13}}{2}\right)^n \right]}.$$

---

## 5. feladat

Legyen $n \ge 1$ egész. Bizonyítsd be, hogy minden olyan véges egyszerű gráfban, amelynek legalább $5n$ éle van, és minden csúcsának fokszáma legfeljebb 3, kiválasztható $n$ él úgy, hogy semelyik kettőnek nincs közös végpontja!

**Megoldás.**

Olyan élek halmazát, amelyek közül semelyik kettőnek nincs közös végpontja, **független élhalmaznak** vagy **párosításnak** (matching) nevezzük. Azt kell bizonyítanunk, hogy $G$-ben létezik legalább $n$ méretű párosítás.

Válasszunk ki egy **maximális párosítást** $M$-et $G$-ben (azaz olyan párosítást, amely nem bővíthető további éllel). Jelölje $k = |M|$ az $M$-beli élek számát.
A párosításban szereplő csúcsok halmaza $V(M)$, amelynek elemszáma $|V(M)| = 2k$.

Mivel $M$ maximális párosítás, a gráf **minden egyes $e \in E(G)$ élének legalább az egyik végpontja $V(M)$-be esik**.
(Ha ugyanis létezne olyan él, amelynek egyik végpontja sincs benne $V(M)$-ben, akkor ez az él hozzávehető lenne $M$-hez, független élhalmazt alkotva, ami ellentmondana $M$ maximalitásának).

Számoljuk meg, hogy az $M$-beli élek csúcsaira legfeljebb hány él illeszkedhet a teljes gráfban:
Tekintsünk egy tetszőleges $e = \{u, v\} \in M$ párosításbeli élt:
- Az $u$ csúcs foka legfeljebb 3, így az $e$ élen kívül legfeljebb $3 - 1 = 2$ egyéb él illeszkedik $u$-ra.
- A $v$ csúcs foka legfeljebb 3, így az $e$ élen kívül legfeljebb $3 - 1 = 2$ egyéb él illeszkedik $v$-re.
- Maga az $e = \{u, v\}$ él mindkét csúcsra illeszkedik, de a gráfban ez egyetlen él.
Ezért az $\{u, v\}$ csúcspárra illeszkedő élek száma a gráfban legfeljebb:
$$1 + (d(u) - 1) + (d(v) - 1) \le 1 + 2 + 2 = 5.$$

Mivel a gráf minden éle illeszkedik legalább egy $e \in M$ él végpontjára, a gráf összes éleinek száma legfeljebb az egyes párosításbeli élekhez tartozó csúcspárokra illeszkedő élek összege:
$$|E(G)| \le \sum_{e \in M} 5 = 5 \cdot |M| = 5k.$$

A feladat feltétele szerint a gráfban legalább $5n$ él van:
$$5k \ge |E(G)| \ge 5n \implies k \ge n.$$
Tehát a maximális párosítás éleinek száma legalább $n$.
Ennek a párosításnak bármely $n$ elemű részhalmaza pontosan $n$ olyan élt ad, amelyek közül semelyik kettőnek sincs közös végpontja. $\blacksquare$

---

## 6. feladat

Nyolc különböző hallgatót négy számozott szemináriumi csoportba osztunk be. Minden hallgató pontosan egy csoportba kerül, egyik csoport sem maradhat üresen, és két kijelölt hallgató, Anna és Béla, nem kerülhet ugyanabba a csoportba. Hány különböző beosztás lehetséges? Egy csoporton belül a hallgatók sorrendje nem számít.

**Megoldás.**

Nyolc különböző elemet osztunk be 4 számozott csoportba úgy, hogy egyik csoport sem üres. Ez megegyezik a 8 elemű halmazból a 4 elemű halmazba képező **szürjektív függvények** számával, amely $4! \cdot S(8, 4)$, ahol $S(n, k)$ a másodfajú Stirling-szám.

Alkalmazzuk a komplementer módszert: az összes lehetséges (egyik csoportot sem üresen hagyó) beosztás számából vonjuk ki azokat, ahol Anna és Béla **ugyanabba a csoportba** kerül!

**1. Összes megengedett beosztás Anna és Béla feltétele nélkül:**
A logikai szita-formulával a szürjektív leképezések száma 8 elemből 4 számozott csoportba:
$$\sum_{j=0}^{4} (-1)^j \binom{4}{j} (4 - j)^8 = \binom{4}{0} 4^8 - \binom{4}{1} 3^8 + \binom{4}{2} 2^8 - \binom{4}{3} 1^8$$
$$= 1 \cdot 65536 - 4 \cdot 6561 + 6 \cdot 256 - 4 \cdot 1$$
$$= 65536 - 26244 + 1536 - 4 = 40824.$$

**2. Azon beosztások száma, ahol Anna és Béla ugyanabba a csoportba kerül:**
Tekintsük Annát és Bélát egyetlen összevont hallgatónak. Ekkor $8 - 1 = 7$ különböző entitást kell beosztanunk a 4 számozott csoportba úgy, hogy egyik se legyen üres:
$$\sum_{j=0}^{4} (-1)^j \binom{4}{j} (4 - j)^7 = \binom{4}{0} 4^7 - \binom{4}{1} 3^7 + \binom{4}{2} 2^7 - \binom{4}{3} 1^7$$
$$= 1 \cdot 16384 - 4 \cdot 2187 + 6 \cdot 128 - 4 \cdot 1$$
$$= 16384 - 8748 + 768 - 4 = 8400.$$

**3. A keresett beosztások száma:**
$$40824 - 8400 = \mathbf{32\,424}.$$

---

## 7. feladat

a) Egy három sorból és hét oszlopból álló táblázat minden mezőjét pirosra vagy kékre színezzük. Bizonyítsd be, hogy kiválasztható két különböző sor és két különböző oszlop úgy, hogy a négy metszésükben álló mező mind azonos színű legyen! A kiválasztott soroknak és oszlopoknak nem kell szomszédosnak lenniük.

b) Mutasd meg egy megfelelő színezéssel, hogy hat oszlop esetén az állítás már nem feltétlenül igaz!

**Megoldás.**

**a)** Tekintsük a $3 \times 7$-es táblázat oszlopait.
Minden oszlopban 3 mező van, és mindegyik piros (P) vagy kék (K) színű.
A skatulyaelv miatt minden oszlopban van legalább két azonos színű mező (hiszen 3 mező és 2 szín van).
Rögzítsünk minden oszlopban egy azonos színű mezőpárt (ha mindhárom mező azonos színű, válasszunk tetszőlegesen kettőt közülük).

Egy ilyen azonos színű mezőpár:
- A sorindexek tekintetében a 3 sor közül $\binom{3}{2} = 3$-féle sorpárban helyezkedhet el: $\{1, 2\}$, $\{1, 3\}$ vagy $\{2, 3\}$.
- A közös szín 2-féle lehet: piros vagy kék.
Ezért összesen legfeljebb
$$\binom{3}{2} \cdot 2 = 3 \cdot 2 = 6$$
különböző (sorpár, szín) típusú konfiguráció létezik.

A táblázatban azonban **7 oszlop** van.
Mivel $7 > 6$, a skatulyaelv alapján létezik legalább két olyan oszlop, amelyben az azonos színű pár **ugyanabban a sorpárban és ugyanolyan színű**.
Ez a két oszlop és a kiválasztott sorpár pontosan egy olyan $2 \times 2$-es részhálót (téglalapot) határoz meg, amelynek mind a 4 mezője azonos színű. $\blacksquare$

**b)** 6 oszlop esetén az állítás nem feltétlenül igaz: készíthető olyan $3 \times 6$-os színezés, amely nem tartalmaz monokromatikus téglalapot.
Használjuk fel, hogy 6 oszlop van, és a 6 lehetséges (sorpár, szín) konfiguráció mindegyikét pontosan egy-egy oszlopban valósítjuk meg!

Tekintsük az alábbi $3 \times 6$-os táblázatot:

$$\begin{pmatrix}
P & P & K & K & K & P \\
P & K & P & K & P & K \\
K & P & P & P & K & K
\end{pmatrix}$$

Ellenőrizzük mind a 3 lehetséges sorpárt:
- **1. és 2. sor:**
  - Mindkettő piros ($P, P$): kizárólag az 1. oszlopban fordul elő (1 oszlop).
  - Mindkettő kék ($K, K$): kizárólag a 4. oszlopban fordul elő (1 oszlop).
- **1. és 3. sor:**
  - Mindkettő piros ($P, P$): kizárólag a 2. oszlopban fordul elő (1 oszlop).
  - Mindkettő kék ($K, K$): kizárólag az 5. oszlopban fordul elő (1 oszlop).
- **2. és 3. sor:**
  - Mindkettő piros ($P, P$): kizárólag a 3. oszlopban fordul elő (1 oszlop).
  - Mindkettő kék ($K, K$): kizárólag a 6. oszlopban fordul elő (1 oszlop).

Mivel semelyik sorpárban sincs két olyan oszlop, ahol a mezők színe azonos (akár mindkettő piros, akár mindkettő kék) lenne, a táblázatban **egyetlen olyan $2 \times 2$-es részháló sincs, amelynek mind a 4 csúcsa azonos színű**.
Ez a színezés igazolja, hogy 6 oszlopra az állítás nem feltétlenül igaz. $\blacksquare$
