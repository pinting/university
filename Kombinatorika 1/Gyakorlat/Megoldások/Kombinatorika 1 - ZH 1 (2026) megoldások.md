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
