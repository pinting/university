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
