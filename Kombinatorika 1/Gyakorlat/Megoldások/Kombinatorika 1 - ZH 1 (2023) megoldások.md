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
