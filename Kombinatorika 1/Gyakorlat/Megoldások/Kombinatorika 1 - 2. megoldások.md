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
