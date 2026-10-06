<!-- Generált fájl, ne szerkeszd! Forrás: Algebra és számelmélet/Gyakorlat/Megoldások/, újragenerálás: make concat -->

# Algebra és számelmélet – 1. feladatsor – megoldások

## 1. feladat

Oldjuk meg az alábbi lineáris egyenletrendszereket.

(1)
$$\begin{aligned} -x + 3y + 3z &= 2 \\ 3x + y + z &= 4 \\ 2x - 2y + 3z &= 10 \end{aligned}$$

(2)
$$\begin{aligned} 2x + 3y + z &= 11 \\ x - y - 2z &= -7 \\ 3x + 2y - z &= 2 \end{aligned}$$

(3)
$$\begin{aligned} x - y + z + t &= 2 \\ -3x + 0y + 0z + 3t &= 0 \\ -2x - y + z + 4t &= 2 \\ 4x - y + z - 2t &= 2 \end{aligned}$$

**Megoldás.**

**(1)** Az első egyenlet 3-szorosát a másodikhoz, 2-szeresét a harmadikhoz adva:
$$10y + 10z = 10, \qquad 4y + 9z = 14.$$
Az elsőből $y = 1 - z$, ezt behelyettesítve $4 - 4z + 9z = 14$, azaz $z = 2$, $y = -1$. Végül $x = 3y + 3z - 2 = 1$. **Egyetlen megoldás: $(x, y, z) = (1, -1, 2)$.** (Ellenőrzés: $-1 - 3 + 6 = 2$, $3 - 1 + 2 = 4$, $2 + 2 + 6 = 10$.)

**(2)** (A lapon „$x + -y - 2z = -7$" áll, azaz $x - y - 2z = -7$.) A második egyenletből $x = y + 2z - 7$. Behelyettesítve:
$$\text{első: } 2(y + 2z - 7) + 3y + z = 11 \iff 5y + 5z = 25,$$
$$\text{harmadik: } 3(y + 2z - 7) + 2y - z = 2 \iff 5y + 5z = 23.$$
A kettő ellentmond egymásnak ($25 \ne 23$), tehát **nincs megoldás**.

**(3)** A második egyenletből $-3x + 3t = 0$, azaz $t = x$. Ezt a többibe helyettesítve:
$$\text{első: } 2x - y + z = 2, \quad \text{harmadik: } 2x - y + z = 2, \quad \text{negyedik: } 2x - y + z = 2.$$
Mindhárom ugyanaz az egyenlet, így $z = 2 - 2x + y$. **Végtelen sok megoldás**, két szabad paraméterrel:
$$(x, y, z, t) = (x,\ y,\ 2 - 2x + y,\ x), \qquad x, y \in \mathbb{R}.$$

::: elmelet
**Elméleti háttér — Gauss-elimináció.** Az **elemi sorműveletek** (egyenlet szorzása nem nulla számmal, egyenlet többszörösének hozzáadása egy másikhoz, egyenletek cseréje) nem változtatják meg a megoldáshalmazt, mert megfordíthatók. Ezekkel lépcsős alakra hozzuk a rendszert. Ekkor: ha van $0 = c$ ($c \ne 0$) tilos sor, nincs megoldás; különben a vezéregyes nélküli oszlopok ismeretlenjei **szabad paraméterek**, és ha van ilyen, végtelen sok, ha nincs, pontosan egy megoldás van.
:::

## 2. feladat

Az alábbi táblázat celláiba írjunk be egy-egy megfelelő $m$ ismeretlenes, $n$ egyenletből álló (minél egyszerűbb) $\mathbb{R}$ feletti lineáris egyenletrendszert, melynek $t$ (valós) megoldása van ($t = \infty$ is lehetséges), illetve N betűt, ha a megfelelő eset nem fordulhat elő.

| Általános | $t = 0$ | $t = 1$ | $t = \infty$ |
|:---------:|:-------:|:-------:|:------------:|
| $m < n$   |         |         |              |
| $m = n$   |         |         |              |
| $m > n$   |         |         |              |

| Homogén | $t = 0$ | $t = 1$ | $t = \infty$ |
|:-------:|:-------:|:-------:|:------------:|
| $m < n$ |         |         |              |
| $m = n$ |         |         |              |
| $m > n$ |         |         |              |

**Megoldás.**

Valós együtthatós lineáris egyenletrendszer megoldásainak száma mindig $0$, $1$ vagy $\infty$. Egy-egy (minél egyszerűbb) példa, illetve N, ha az eset lehetetlen:

| Általános | $t = 0$ | $t = 1$ | $t = \infty$ |
|:---:|:---:|:---:|:---:|
| $m < n$ | $x = 0$, $x = 1$ | $x = 1$, $2x = 2$ | $0x = 0$, $0x = 0$ |
| $m = n$ | $0x = 1$ | $x = 1$ | $0x = 0$ |
| $m > n$ | $0x + 0y = 1$ | N | $x + y = 0$ |

| Homogén | $t = 0$ | $t = 1$ | $t = \infty$ |
|:---:|:---:|:---:|:---:|
| $m < n$ | N | $x = 0$, $2x = 0$ | $0x = 0$, $0x = 0$ |
| $m = n$ | N | $x = 0$ | $0x = 0$ |
| $m > n$ | N | N | $x + y = 0$ |

Indoklás a lehetetlen esetekre:

- **Homogén, $t = 0$:** a csupa nulla vektor mindig megoldás.
- **$m > n$, $t = 1$:** Gauss-eliminációval a lépcsős alakban legfeljebb $n < m$ vezérelem van, tehát van szabad ismeretlen; ha a rendszer megoldható, akkor végtelen sok megoldása van.

::: elmelet
**Elméleti háttér — a megoldások száma.** Egy test feletti lineáris egyenletrendszer megoldásainak száma $0$, $1$ vagy végtelen (végtelen test esetén): ha két különböző megoldás van, a különbségük a homogén rendszer nemtriviális megoldása, és annak minden skalárszorosát hozzáadva újabb megoldást kapunk. **Homogén** rendszernek mindig megoldása a nullvektor. Ha az ismeretlenek száma nagyobb a vezérelemek lehetséges számánál (az egyenletek számánál), mindig van szabad ismeretlen, így $t = 1$ lehetetlen.
:::

## 3. feladat

Adott 1849 szám úgy, hogy közülük bármelyik 1848 összege 1849. Melyek ezek a számok?

**Megoldás.**

Legyenek a számok $a_1, \dots, a_{1849}$, összegük $S$. Az $a_i$-t kihagyva a maradék összege $S - a_i = 1849$, tehát $a_i = S - 1849$ **minden $i$-re ugyanaz**, mondjuk $a$. Ekkor $S = 1849a$, és $1848a = 1849$, azaz
$$a_1 = a_2 = \dots = a_{1849} = \frac{1849}{1848}.$$

::: elmelet
**Elméleti háttér — szimmetria kihasználása.** Ha egy feltétel minden indexre ugyanaz („bármelyik 1848 összege”), érdemes az **összes** elem összegét bevezetni: a feltételből minden elem ugyanazzal a kifejezéssel áll elő, tehát mind egyenlők. Ez valójában egy speciális lineáris egyenletrendszer, amelynek a mátrixa $J - I$ alakú ($J$ a csupa-1 mátrix), és amely invertálható, így a megoldás egyértelmű.
:::

## 4. feladat

Mely valós $c$-re hány valós megoldása van az alábbi egyenletrendszernek? A $c = 2$ esetben adjuk meg $z$ értékét annál a megoldásnál, melynél az $xy$ szorzat maximális.
$$\begin{aligned} x + 2z &= 1 \\ y - cz &= 1 \\ x + cy - 2z &= 3 \end{aligned}$$

**Megoldás.**

Az első egyenletből $x = 1 - 2z$, a másodikból $y = 1 + cz$. A harmadikba helyettesítve:
$$(1 - 2z) + c(1 + cz) - 2z = 3 \iff (c^2 - 4)z = 2 - c.$$

- **$c \neq \pm 2$:** $z = \frac{2 - c}{c^2 - 4} = -\frac{1}{c + 2}$, és ebből $x$, $y$ egyértelmű: **pontosan egy megoldás**.
- **$c = 2$:** $0 \cdot z = 0$, $z$ szabad: **végtelen sok megoldás**.
- **$c = -2$:** $0 \cdot z = 4$: **nincs megoldás**.

A $c = 2$ esetben $x = 1 - 2z$, $y = 1 + 2z$, így
$$xy = (1 - 2z)(1 + 2z) = 1 - 4z^2 \le 1,$$
és a maximum pontosan $z = 0$-nál van. **A keresett érték $z = 0$** (ekkor $x = y = 1$).

::: elmelet
**Elméleti háttér — paraméteres rendszer.** Kiküszöbölés után a rendszer egyetlen $\alpha(c)\,z = \beta(c)$ egyenletre redukálódik. Három eset: $\alpha(c) \ne 0$ — egyértelmű megoldás; $\alpha(c) = 0 = \beta(c)$ — $z$ szabad, végtelen sok megoldás; $\alpha(c) = 0 \ne \beta(c)$ — ellentmondás. A maximumkeresés a szabad paraméter függvényében egy egyváltozós szélsőérték-feladat (itt teljes négyzet).
:::

## 5. feladat

Ha egy $\mathbb{Q}$ feletti homogén lineáris egyenletrendszernek van nemtriviális komplex megoldása, akkor hány racionális megoldása van? Ha egy $\mathbb{R}$ feletti lineáris egyenletrendszernek van komplex nem valós megoldása, akkor hány valós megoldása van?

**Megoldás.**

**Első kérdés: végtelen sok racionális megoldása van.** A Gauss-elimináció csak a négy alapműveletet használja, így a racionális együtthatós $A$ mátrix lépcsős alakja (és rangja) ugyanaz, akár $\mathbb{Q}$, akár $\mathbb{C}$ felett végezzük. Ha van nemtriviális komplex megoldás, akkor $\operatorname{rang} A$ kisebb az ismeretlenek számánál, azaz van szabad ismeretlen. A szabad ismeretleneknek tetszőleges racionális értéket adva racionális megoldást kapunk; így végtelen sok (megszámlálhatóan végtelen) racionális megoldás van. Pl. ha $v$ nemtriviális racionális megoldás, akkor $qv$ is az minden $q \in \mathbb{Q}$-ra.

**Második kérdés: végtelen sok valós megoldása van.** Legyen $A\mathbf{z} = \mathbf{b}$ ($A$, $\mathbf{b}$ valós), és $\mathbf{z} = \mathbf{u} + i\mathbf{v}$ megoldás, ahol $\mathbf{u}, \mathbf{v}$ valós vektorok és $\mathbf{v} \neq \mathbf{0}$. Ekkor $A\mathbf{u} + iA\mathbf{v} = \mathbf{b}$, és a valós, illetve képzetes részeket összevetve $A\mathbf{u} = \mathbf{b}$, $A\mathbf{v} = \mathbf{0}$. Így $\mathbf{u} + t\mathbf{v}$ minden $t \in \mathbb{R}$-re valós megoldás, és ezek különbözőek.

::: elmelet
**Elméleti háttér — a rang nem függ a testbővítéstől.** A Gauss-elimináció csak a négy alapműveletet használja, ezért ha az együtthatók egy $K$ részteshez (pl. $\mathbb Q$, $\mathbb R$) tartoznak, a lépcsős alak és a rang ugyanaz $K$ felett és a bővebb test ($\mathbb C$) felett is. Valós rendszer komplex megoldásánál a **valós és képzetes rész szétválasztása** két valós rendszert ad: $A\mathbf u = \mathbf b$, $A\mathbf v = \mathbf 0$.
:::

## 6. feladat

Az $AB$, $BA$, $BC$, $CB - C$ műveletek közül végezzük el az elvégezhetőket, ha
$$A = \begin{pmatrix} 2 & -1 & 1 \\ 0 & 2 & -2 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & 3 \\ 2 & 1 \end{pmatrix}, \quad C^T = \begin{pmatrix} 1 & 2 & -1 \\ 3 & 0 & 1 \end{pmatrix}.$$

**Megoldás.**

A méretek: $A$ $2 \times 3$-as, $B$ $2 \times 2$-es, $C$ $3 \times 2$-es, mert
$$C = \begin{pmatrix} 1 & 3 \\ 2 & 0 \\ -1 & 1 \end{pmatrix}.$$

- $AB$: $(2 \times 3)(2 \times 2)$ – **nem végezhető el.**
- $BA$: $(2 \times 2)(2 \times 3) = 2 \times 3$:
$$BA = \begin{pmatrix} 1 & 3 \\ 2 & 1 \end{pmatrix}\begin{pmatrix} 2 & -1 & 1 \\ 0 & 2 & -2 \end{pmatrix} = \begin{pmatrix} 2 & 5 & -5 \\ 4 & 0 & 0 \end{pmatrix}.$$
- $BC$: $(2 \times 2)(3 \times 2)$ – **nem végezhető el.**
- $CB - C$: $CB$ $(3 \times 2)(2 \times 2) = 3 \times 2$, ugyanakkora, mint $C$:
$$CB = \begin{pmatrix} 7 & 6 \\ 2 & 6 \\ 1 & -2 \end{pmatrix}, \qquad CB - C = \begin{pmatrix} 6 & 3 \\ 0 & 6 \\ 2 & -3 \end{pmatrix}.$$

::: elmelet
**Elméleti háttér — mátrixszorzás és méretek.** Az $AB$ szorzat pontosan akkor értelmezett, ha $A$ oszlopainak száma egyenlő $B$ sorainak számával; ekkor $(n \times m)(m \times k) = n \times k$, és $(AB)_{ij} = \sum_r a_{ir}b_{rj}$ („$i$-edik sor szor $j$-edik oszlop”). Összeadni csak azonos méretű mátrixokat lehet. A transzponálás felcseréli a sorokat és oszlopokat ($(C^T)^T = C$).
:::

## 7. feladat

Végezzük el az alábbi mátrixműveleteket, ha lehetséges: $A + A$, $A + B$, $AB$, $AC$, $AC^T$, $DD^T$, $D^TD$, $AC + 2C$, $AD - 3D$, $D^2$, $BC$, $CB$. Itt
$$A = \begin{pmatrix} 2 & 1 & 0 \\ 1 & 2 & -1 \\ 0 & 1 & 2 \end{pmatrix}, \quad B = \begin{pmatrix} 2 & -1 & 3 \end{pmatrix}, \quad C = \begin{pmatrix} -2 \\ 1 \\ 2 \end{pmatrix}, \quad D = \begin{pmatrix} 1 & -1 \\ 2 & 0 \\ -1 & 2 \end{pmatrix}.$$

**Megoldás.**

Méretek: $A$: $3 \times 3$, $B$: $1 \times 3$, $C$: $3 \times 1$, $D$: $3 \times 2$.

- $A + A = 2A = \begin{pmatrix} 4 & 2 & 0 \\ 2 & 4 & -2 \\ 0 & 2 & 4 \end{pmatrix}$.
- $A + B$: különböző méretűek – **nem végezhető el.**
- $AB$: $(3 \times 3)(1 \times 3)$ – **nem végezhető el.**
- $AC = \begin{pmatrix} -3 \\ -2 \\ 5 \end{pmatrix}$.
- $AC^T$: $(3 \times 3)(1 \times 3)$ – **nem végezhető el.**
- $DD^T = \begin{pmatrix} 2 & 2 & -3 \\ 2 & 4 & -2 \\ -3 & -2 & 5 \end{pmatrix}$ (szimmetrikus, $3 \times 3$).
- $D^TD = \begin{pmatrix} 6 & -3 \\ -3 & 5 \end{pmatrix}$ (szimmetrikus, $2 \times 2$).
- $AC + 2C = \begin{pmatrix} -3 \\ -2 \\ 5 \end{pmatrix} + \begin{pmatrix} -4 \\ 2 \\ 4 \end{pmatrix} = \begin{pmatrix} -7 \\ 0 \\ 9 \end{pmatrix}$.
- $AD - 3D$: $AD = \begin{pmatrix} 4 & -2 \\ 6 & -3 \\ 0 & 4 \end{pmatrix}$, így $AD - 3D = \begin{pmatrix} 1 & 1 \\ 0 & -3 \\ 3 & -2 \end{pmatrix}$.
- $D^2$: $(3 \times 2)(3 \times 2)$ – **nem végezhető el.**
- $BC = (2 \cdot (-2) + (-1) \cdot 1 + 3 \cdot 2) = (1)$, egy $1 \times 1$-es mátrix.
- $CB = \begin{pmatrix} -4 & 2 & -6 \\ 2 & -1 & 3 \\ 4 & -2 & 6 \end{pmatrix}$ ($3 \times 3$-as, 1 rangú).

::: elmelet
**Elméleti háttér — mátrixműveletek.** Az összeadás és a skalárral szorzás elemenként történik (azonos méret kell), a szorzás „sor-oszlop” szabállyal. Hasznos megfigyelések: $DD^T$ és $D^TD$ mindig értelmezett és **szimmetrikus** ($(DD^T)^T = DD^T$); egy oszlop- és egy sorvektor szorzata ($CB$) **1 rangú** mátrix (minden sora ugyanannak a sornak többszöröse), míg a fordított sorrendű szorzat ($BC$) egy szám (skaláris szorzat).
:::

## 8. feladat

Bizonyítsuk be, hogy két felső háromszögmátrix szorzata is felső háromszögmátrix.

**Megoldás.**

Legyenek $A = (a_{ij})$, $B = (b_{ij})$ $n \times n$-es felső háromszögmátrixok: $a_{ij} = 0$ és $b_{ij} = 0$, ha $i > j$. Legyen $i > j$. Ekkor
$$(AB)_{ij} = \sum_{k=1}^{n} a_{ik} b_{kj}.$$
Minden tagban vagy $k < i$, és akkor $a_{ik} = 0$; vagy $k \ge i > j$, és akkor $b_{kj} = 0$. Tehát $(AB)_{ij} = 0$ minden $i > j$-re, azaz $AB$ felső háromszögmátrix. $\blacksquare$

::: elmelet
**Elméleti háttér — indexes érvelés mátrixszorzatra.** Szorzat egy elemének eltűnését úgy látjuk be, hogy a $\sum_k a_{ik}b_{kj}$ összeg **minden tagjáról** megmutatjuk, hogy valamelyik tényezője $0$. A felső háromszög tulajdonság ($a_{ik} = 0$, ha $i > k$) és az összegzési index két esete ($k < i$ vagy $k \ge i$) lefedi az összes tagot.
:::

## 9. feladat

Bizonyítsuk be, hogy a mátrixszorzás asszociatív, azaz ha $A \in \mathbb{R}^{n \times m}$, $B \in \mathbb{R}^{m \times k}$ és $C \in \mathbb{R}^{k \times \ell}$, akkor $(AB)C = A(BC)$.

**Megoldás.**

Mindkét oldal $n \times \ell$-es. Az $(i, j)$ elemek:
$$((AB)C)_{ij} = \sum_{s=1}^{k} (AB)_{is}\,c_{sj} = \sum_{s=1}^{k}\sum_{r=1}^{m} a_{ir}b_{rs}c_{sj},$$
$$(A(BC))_{ij} = \sum_{r=1}^{m} a_{ir}\,(BC)_{rj} = \sum_{r=1}^{m}\sum_{s=1}^{k} a_{ir}b_{rs}c_{sj}.$$
A két véges összeg csak az összegzés sorrendjében különbözik (a valós számok összeadása kommutatív és asszociatív, és a szorzás disztributív), tehát egyenlők. $\blacksquare$

::: elmelet
**Elméleti háttér — asszociativitás a skalárok tulajdonságaiból.** A mátrixszorzás asszociativitása elemenként egy **kettős összeg** átrendezése: a véges összegek sorrendje felcserélhető, mert a test összeadása kommutatív és asszociatív, a szorzás pedig disztributív. Ugyanez a bizonyítás bármely kommutatív gyűrű feletti mátrixokra működik.
:::

## 10. feladat

Ha
$$\begin{pmatrix} 0 & -1 \\ 0 & 0 \end{pmatrix} N = \begin{pmatrix} 2 & -3 & 4 \\ 0 & 0 & 0 \end{pmatrix},$$
akkor mi az $N$ mátrix második sorának első eleme?

**Megoldás.**

$N$ $2 \times 3$-as; legyenek sorai $\mathbf{n}_1$, $\mathbf{n}_2$. A szorzat sorai a bal oldali mátrix sorai szerinti lineáris kombinációk:
$$\begin{pmatrix} 0 & -1 \\ 0 & 0 \end{pmatrix} N = \begin{pmatrix} -\mathbf{n}_2 \\ \mathbf{0} \end{pmatrix} = \begin{pmatrix} 2 & -3 & 4 \\ 0 & 0 & 0 \end{pmatrix}.$$
Tehát $\mathbf{n}_2 = (-2, 3, -4)$, és **$N$ második sorának első eleme $-2$**. ($N$ első sora tetszőleges lehet.)

::: elmelet
**Elméleti háttér — sorok lineáris kombinációja.** Az $AN$ szorzat $i$-edik sora $N$ sorainak lineáris kombinációja, az együtthatók $A$ $i$-edik sorának elemei: $(AN)_{i\cdot} = \sum_k a_{ik}\,N_{k\cdot}$. (Hasonlóan $NA$ oszlopai $N$ oszlopainak kombinációi.) Így egy mátrixegyenletből közvetlenül kiolvasható, mely sorokra van feltétel és melyek szabadok.
:::

## 11. feladat

Adjuk meg azokat az $A \in \mathbb{R}^{2 \times 2}$ mátrixokat, melyekre
$$\begin{pmatrix} 2 & -1 \\ -4 & 2 \end{pmatrix} A = A^T \begin{pmatrix} 2 & -1 \\ -4 & 2 \end{pmatrix}.$$

**Megoldás.**

Legyen $M = \begin{pmatrix} 2 & -1 \\ -4 & 2 \end{pmatrix}$, $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$. Ekkor
$$MA = \begin{pmatrix} 2a - c & 2b - d \\ -4a + 2c & -4b + 2d \end{pmatrix}, \qquad A^TM = \begin{pmatrix} 2a - 4c & -a + 2c \\ 2b - 4d & -b + 2d \end{pmatrix}.$$
Az elemenkénti egyenlőség:

- $(1,1)$: $2a - c = 2a - 4c \Rightarrow c = 0$;
- $(2,2)$: $-4b + 2d = -b + 2d \Rightarrow b = 0$;
- $(1,2)$: $2b - d = -a + 2c \Rightarrow a = d$;
- $(2,1)$: $-4a + 2c = 2b - 4d \Rightarrow a = d$.

**A megoldások: $A = \begin{pmatrix} a & 0 \\ 0 & a \end{pmatrix} = aI$, $a \in \mathbb{R}$.**

::: elmelet
**Elméleti háttér — mátrixegyenlet mint lineáris rendszer.** Egy ismeretlen mátrixra vonatkozó egyenlet (itt $MA = A^TM$) az elemekre nézve **lineáris egyenletrendszer**: mindkét oldalt kiszámoljuk, és az elemeket összevetjük. A megoldáshalmaz altér (itt az $I$ skalárszorosai), mert az egyenlet homogén és lineáris az $A$ elemeiben.
:::

## 12. feladat

Számítsuk ki az $5 \times 5$-ös $N = ((n_{ij}))$ mátrix első öt hatványát, ahol $n_{ij} = 1$, ha $j - i = 1$, és $0$ egyébként. Tegyük fel, hogy egy $n \times n$-es $M = ((m_{ij}))$ mátrix főátlójában és ez alatt csupa nulla van (azaz $m_{ij} = 0$, ha $i \ge j$). Bizonyítsuk be, hogy $M^n = 0$.

**Megoldás.**

$N$-ben az egyesek a főátló feletti első mellékátlóban állnak. Indukcióval: $(N^k)_{ij} = 1$, ha $j - i = k$, és $0$ egyébként. Valóban, $(N^{k+1})_{ij} = \sum_s (N^k)_{is} N_{sj}$, és egy tag csak $s = i + k$ és $j = s + 1$ esetén nem nulla, azaz ha $j = i + k + 1$. Tehát
$$N = \begin{pmatrix} 0&1&0&0&0\\0&0&1&0&0\\0&0&0&1&0\\0&0&0&0&1\\0&0&0&0&0 \end{pmatrix}, \quad N^2 = \begin{pmatrix} 0&0&1&0&0\\0&0&0&1&0\\0&0&0&0&1\\0&0&0&0&0\\0&0&0&0&0 \end{pmatrix}, \quad N^3 = \begin{pmatrix} 0&0&0&1&0\\0&0&0&0&1\\0&0&0&0&0\\0&0&0&0&0\\0&0&0&0&0 \end{pmatrix},$$
$$N^4 = \begin{pmatrix} 0&0&0&0&1\\0&0&0&0&0\\0&0&0&0&0\\0&0&0&0&0\\0&0&0&0&0 \end{pmatrix}, \qquad N^5 = 0.$$

**Általános állítás.** Ha $m_{ij} = 0$ minden $i \ge j$-re, akkor indukcióval: $(M^k)_{ij} = 0$, ha $j - i < k$. $k = 1$-re ez a feltétel. Ha $k$-ra igaz, akkor
$$(M^{k+1})_{ij} = \sum_{s} (M^k)_{is}\,m_{sj},$$
és egy tag csak akkor lehet nem nulla, ha $s - i \ge k$ és $j - s \ge 1$, azaz $j - i \ge k + 1$. Tehát $j - i < k + 1$ esetén $(M^{k+1})_{ij} = 0$. Mivel $j - i \le n - 1 < n$ mindig, $M^n = 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — szigorúan felső háromszögmátrix nilpotens.** Ha $m_{ij} = 0$ minden $i \ge j$-re, akkor indukcióval $M^k$ nem nulla elemei csak a főátló fölötti $k$-adik mellékátlón és afölött lehetnek: minden szorzás legalább eggyel „feljebb tolja” a nem nulla sávot. $n \times n$-es mátrixban csak $n - 1$ mellékátló van a főátló fölött, ezért $M^n = 0$. (A „nilpotens” mátrixok tipikus példája a **shift-mátrix** $N$.)
:::

## 13. feladat

Invertáljuk Gauss-elimináció segítségével az alábbi mátrixokat. Ellenőrizzük szorzással a kapott eredményeket. Írjuk fel a harmadik és a negyedik mátrix inverzét a ferde kifejtési tételből kapott képlet segítségével is.
$$\begin{pmatrix} 3 & 5 \\ 1 & 2 \end{pmatrix}, \quad \begin{pmatrix} 0 & -1 \\ -1 & 0 \end{pmatrix}, \quad \begin{pmatrix} a & b \\ c & d \end{pmatrix}, \quad \begin{pmatrix} 1 & -1 & 1 \\ 0 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix}, \quad \begin{pmatrix} 1 & -1 & 2 \\ 0 & 1 & -3 \\ 0 & 0 & 1 \end{pmatrix}$$

**Megoldás.**

**1.** $\begin{pmatrix} 3 & 5 \\ 1 & 2 \end{pmatrix}$: Gauss-elimináció a $[A \mid I]$ mátrixon:
$$\left(\begin{array}{cc|cc} 3 & 5 & 1 & 0 \\ 1 & 2 & 0 & 1 \end{array}\right) \to \left(\begin{array}{cc|cc} 1 & 2 & 0 & 1 \\ 3 & 5 & 1 & 0 \end{array}\right) \to \left(\begin{array}{cc|cc} 1 & 2 & 0 & 1 \\ 0 & -1 & 1 & -3 \end{array}\right) \to \left(\begin{array}{cc|cc} 1 & 0 & 2 & -5 \\ 0 & 1 & -1 & 3 \end{array}\right).$$
$A^{-1} = \begin{pmatrix} 2 & -5 \\ -1 & 3 \end{pmatrix}$. Ellenőrzés: $\begin{pmatrix} 3 & 5 \\ 1 & 2 \end{pmatrix}\begin{pmatrix} 2 & -5 \\ -1 & 3 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$.

**2.** $\begin{pmatrix} 0 & -1 \\ -1 & 0 \end{pmatrix}$: sorcsere, majd mindkét sor $(-1)$-szerese adja az inverzet, ami **önmaga**: $\begin{pmatrix} 0 & -1 \\ -1 & 0 \end{pmatrix}^2 = I$.

**3.** $\begin{pmatrix} a & b \\ c & d \end{pmatrix}$: pontosan akkor invertálható, ha $\Delta = ad - bc \neq 0$. Ha $a \neq 0$: a második sorból kivonva az első $\frac ca$-szorosát $\left(0,\ \frac{\Delta}{a} \mid -\frac ca,\ 1\right)$ adódik; ezt $\frac a\Delta$-val szorozva, majd az első sorból kivonva a megfelelő többszörösét és az első sort $a$-val osztva:
$$A^{-1} = \frac{1}{ad - bc}\begin{pmatrix} d & -b \\ -c & a \end{pmatrix}.$$
(Ha $a = 0$, akkor $\Delta \ne 0$ miatt $c \ne 0$, és sorcsere után ugyanez jön ki.)

*A ferde kifejtési tételből* (adjungált mátrixszal): $A^{-1} = \frac{1}{\det A}\operatorname{adj}(A)$, ahol $\operatorname{adj}(A)_{ij} = (-1)^{i+j}M_{ji}$ (az előjeles aldeterminánsok mátrixának transzponáltja). Itt az előjeles aldeterminánsok $A_{11} = d$, $A_{12} = -c$, $A_{21} = -b$, $A_{22} = a$, transzponálva ugyanazt a képletet kapjuk.

**4.** $M = \begin{pmatrix} 1 & -1 & 1 \\ 0 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix}$. Gauss-elimináció:

- $S_3 \leftarrow S_3 - 2S_1$: $(0, 3, -2 \mid -2, 0, 1)$;
- $S_2 \leftarrow \frac12 S_2$: $(0, 1, -\frac12 \mid 0, \frac12, 0)$;
- $S_3 \leftarrow S_3 - 3S_2$: $(0, 0, -\frac12 \mid -2, -\frac32, 1)$, majd $S_3 \leftarrow -2S_3$: $(0, 0, 1 \mid 4, 3, -2)$;
- $S_2 \leftarrow S_2 + \frac12 S_3$: $(0, 1, 0 \mid 2, 2, -1)$;
- $S_1 \leftarrow S_1 - S_3 + S_2$: $(1, 0, 0 \mid -1, -1, 1)$.

$$M^{-1} = \begin{pmatrix} -1 & -1 & 1 \\ 2 & 2 & -1 \\ 4 & 3 & -2 \end{pmatrix}.$$

*Ferde kifejtéssel:* $\det M = 1 \cdot (0 + 1) - (-1)(0 + 2) + 1 \cdot (0 - 4) = -1$. Az előjeles aldeterminánsok:
$$A_{11} = 1,\ A_{12} = -2,\ A_{13} = -4,\quad A_{21} = 1,\ A_{22} = -2,\ A_{23} = -3,\quad A_{31} = -1,\ A_{32} = 1,\ A_{33} = 2.$$
$$M^{-1} = \frac{1}{-1}\begin{pmatrix} A_{11} & A_{21} & A_{31} \\ A_{12} & A_{22} & A_{32} \\ A_{13} & A_{23} & A_{33} \end{pmatrix} = -\begin{pmatrix} 1 & 1 & -1 \\ -2 & -2 & 1 \\ -4 & -3 & 2 \end{pmatrix},$$
ugyanaz. Ellenőrzés: $MM^{-1} = I$ (pl. az első sor és első oszlop szorzata $-1 - 2 + 4 = 1$, az első sor és második oszlopé $-1 - 2 + 3 = 0$ stb.).

**5.** $U = \begin{pmatrix} 1 & -1 & 2 \\ 0 & 1 & -3 \\ 0 & 0 & 1 \end{pmatrix}$ felső háromszögmátrix, visszahelyettesítéssel: $S_2 \leftarrow S_2 + 3S_3$, $S_1 \leftarrow S_1 - 2S_3$, majd $S_1 \leftarrow S_1 + S_2$:
$$U^{-1} = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 3 \\ 0 & 0 & 1 \end{pmatrix}.$$
Ellenőrzés: pl. az első sor és harmadik oszlop szorzata $1 - 3 + 2 = 0$.

::: elmelet
**Elméleti háttér — inverz Gauss-eliminációval és adjungálttal.** Ha az $[A \mid I]$ mátrixot sorműveletekkel $[I \mid X]$ alakra hozzuk, akkor $X = A^{-1}$ (a sorműveletek elemi mátrixokkal való balról szorzások, és $EA = I \Rightarrow E = A^{-1}$). Másik út a **ferde kifejtési tétel**: $\sum_j a_{ij}A_{kj} = \delta_{ik}\det A$, amiből $A^{-1} = \frac{1}{\det A}\operatorname{adj}(A)$, ahol $\operatorname{adj}(A)$ az előjeles aldeterminánsok mátrixának **transzponáltja**. $A$ pontosan akkor invertálható, ha $\det A \ne 0$.
:::

## 14. feladat

Bizonyítsuk be, hogy invertálható mátrixok szorzata is invertálható. Adjunk ellenpéldát a következő állításra: invertálható mátrixok összege is invertálható.

**Megoldás.**

Ha $A$ és $B$ invertálható ($n \times n$-es), akkor
$$(AB)(B^{-1}A^{-1}) = A(BB^{-1})A^{-1} = AA^{-1} = I, \qquad (B^{-1}A^{-1})(AB) = B^{-1}(A^{-1}A)B = I,$$
tehát $AB$ invertálható, és $(AB)^{-1} = B^{-1}A^{-1}$.

**Ellenpélda az összegre:** $I$ és $-I$ invertálható, de $I + (-I) = 0$ nem.

::: elmelet
**Elméleti háttér — invertálható mátrixok csoportja.** Az invertálható $n \times n$-es mátrixok szorzásra **csoportot** alkotnak ($GL_n$): zárt a szorzásra, $(AB)^{-1} = B^{-1}A^{-1}$ (fordított sorrend — mint a ruha felvétele és levétele), és van egységelem. Összeadásra viszont nem zárt: az invertálhatóság nem lineáris tulajdonság, egy ellenpélda elég.
:::

## 15. feladat

Bizonyítsuk be, hogy $(AB)^T = B^T A^T$, és ha $A \in \mathbb{R}^{n \times n}$ invertálható, akkor $A^T$ is invertálható, továbbá $(A^T)^{-1} = (A^{-1})^T$.

**Megoldás.**

$$((AB)^T)_{ij} = (AB)_{ji} = \sum_k a_{jk}b_{ki} = \sum_k (B^T)_{ik}(A^T)_{kj} = (B^TA^T)_{ij}.$$
Ha $A$ invertálható, akkor ezt felhasználva
$$A^T(A^{-1})^T = (A^{-1}A)^T = I^T = I, \qquad (A^{-1})^TA^T = (AA^{-1})^T = I,$$
tehát $A^T$ invertálható, és $(A^T)^{-1} = (A^{-1})^T$. $\blacksquare$

::: elmelet
**Elméleti háttér — transzponálás és szorzás.** $(AB)^T = B^TA^T$ (fordított sorrend), ami elemenként a $\sum_k a_{jk}b_{ki}$ összeg kétféle olvasata. Ebből az inverz is „átvihető”: egy mátrix inverzének ellenőrzéséhez elég megmutatni, hogy mindkét oldalról szorozva az egységmátrixot adja, és a transzponálás az egységmátrixot önmagába viszi.
:::

## 16. feladat

Egy mátrix első két sorát megcseréljük. Hogyan változik meg az inverze?

**Megoldás.**

Az első két sor cseréje balról szorzás a $P$ permutációmátrixszal (az egységmátrix első két sorát cseréljük fel): $A' = PA$. Nyilván $P^2 = I$, így $P^{-1} = P$, és
$$(A')^{-1} = (PA)^{-1} = A^{-1}P^{-1} = A^{-1}P.$$
Jobbról $P$-vel szorozva az oszlopok cserélődnek: **az inverz első két oszlopa cserélődik fel.**

::: elmelet
**Elméleti háttér — elemi mátrixok.** Minden elemi sorművelet egy **elemi mátrixszal** való balról szorzás (az egységmátrixon végrehajtott ugyanazon művelet). A sorcsere mátrixa $P$, és $P^{-1} = P$. Mivel $(PA)^{-1} = A^{-1}P^{-1}$, és jobbról szorzás **oszlopműveletet** jelent, a sorcsere az inverzben a megfelelő oszlopok cseréjét okozza.
:::

## 17. feladat

Döntsük el, melyek igazak az alábbi következtetések közül.

(a) Ha az $A\mathbf{x} = \mathbf{b}$ lineáris egyenletrendszernek létezik egynél több megoldása, akkor az $A\mathbf{x} = \mathbf{0}$ homogén lineáris egyenletrendszernek létezik nem triviális megoldása.

(b) Ha az $A\mathbf{x} = \mathbf{0}$ homogén lineáris egyenletrendszernek létezik nem triviális megoldása, akkor az $A\mathbf{x} = \mathbf{b}$ lineáris egyenletrendszernek létezik egynél több megoldása.

(c) Ha $A \in \mathbb{R}^{5 \times 5}$, $\mathbf{b} \in \mathbb{R}^5$, és az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek egyértelmű a megoldása, akkor bármely $\mathbf{c} \in \mathbb{R}^5$-re létezik megoldása az $A\mathbf{x} = \mathbf{c}$ egyenletrendszernek is.

(d) Ha $A \in \mathbb{R}^{6 \times 5}$, $\mathbf{b} \in \mathbb{R}^6$, és az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek egyértelmű a megoldása, akkor bármely $\mathbf{c} \in \mathbb{R}^6$-ra létezik megoldása az $A\mathbf{x} = \mathbf{c}$ egyenletrendszernek is.

**Megoldás.**

**(a) Igaz.** Ha $\mathbf{x}_1 \neq \mathbf{x}_2$ megoldások, akkor $A(\mathbf{x}_1 - \mathbf{x}_2) = \mathbf{b} - \mathbf{b} = \mathbf{0}$, és $\mathbf{x}_1 - \mathbf{x}_2 \neq \mathbf{0}$.

**(b) Hamis.** Az $A\mathbf{x} = \mathbf{b}$ rendszernek lehet, hogy egyáltalán nincs megoldása: $A = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$, $\mathbf{b} = \begin{pmatrix} 1 \\ 2 \end{pmatrix}$; a homogén rendszernek $(1, -1)$ nemtriviális megoldása, de $x + y = 1$ és $x + y = 2$ ellentmondó. (Ha $A\mathbf{x} = \mathbf{b}$ megoldható, akkor igaz.)

**(c) Igaz.** Az egyértelműség miatt a homogén rendszernek csak a triviális megoldása van (különben az (a)-beli gondolatmenet fordítottjával két megoldás volna), így $A$ oszlopai lineárisan függetlenek, $\operatorname{rang} A = 5$. Négyzetes mátrixról lévén szó, $A$ invertálható, és $\mathbf{x} = A^{-1}\mathbf{c}$ megoldás minden $\mathbf{c}$-re.

**(d) Hamis.** $A$ képtere legfeljebb 5 dimenziós altere $\mathbb{R}^6$-nak, tehát nem minden $\mathbf{c}$ áll elő. Pl. $A = \begin{pmatrix} I_5 \\ \mathbf{0}^T \end{pmatrix}$ (az utolsó sor nulla), $\mathbf{b} = \mathbf{0}$: a megoldás egyértelmű ($\mathbf{x} = \mathbf{0}$), de $\mathbf{c} = \mathbf{e}_6$-ra nincs megoldás.

::: elmelet
**Elméleti háttér — a megoldáshalmaz szerkezete.** Az $A\mathbf x = \mathbf b$ megoldáshalmaza — ha nem üres — egy partikuláris megoldás és a homogén rendszer megoldásainak (a **magtérnek**) összege: $\mathbf x_0 + \operatorname{Ker} A$. Ezért egyértelműség $\iff$ $\operatorname{Ker} A = \{\mathbf 0\}$ (de létezést nem garantál). Négyzetes mátrixnál $\operatorname{Ker} A = \{\mathbf 0\} \iff A$ invertálható $\iff$ minden $\mathbf c$-re megoldható; nem négyzetes ($6 \times 5$) mátrix képtere legfeljebb $5$ dimenziós, így nem lehet egész $\mathbb R^6$ (rang–nullitás tétel).
:::

# Algebra és számelmélet – 2. feladatsor – megoldások

## 1. feladat

Mutassuk meg, hogy $1^2 + 2^2 + \dots + n^2 = \dfrac{n(n+1)(2n+1)}{6}$.

**Megoldás.**

Teljes indukció. $n = 1$: $1 = \frac{1 \cdot 2 \cdot 3}{6}$. Ha $n$-re igaz, akkor
$$\frac{n(n+1)(2n+1)}{6} + (n+1)^2 = \frac{(n+1)\big(n(2n+1) + 6(n+1)\big)}{6} = \frac{(n+1)(2n^2 + 7n + 6)}{6} = \frac{(n+1)(n+2)(2n+3)}{6},$$
ami éppen az állítás $n + 1$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — teljes indukció összegképletre.** Kezdőlépés ($n = 1$) és indukciós lépés: az $n$-re feltett zárt alakhoz hozzáadjuk az $(n+1)$-edik tagot, és algebrai átalakítással (kiemelés, szorzattá bontás) a zárt alak $n+1$-es értékét kapjuk. Gyakori fogás a **közös tényező kiemelése** ($(n+1)$), hogy a maradékot könnyen szorzattá bonthassuk.
:::

## 2. feladat

Bizonyítsuk be, hogy $1^3 + 2^3 + \dots + n^3 = (1 + 2 + \dots + n)^2$.

**Megoldás.**

Tudjuk, hogy $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, tehát azt kell igazolni, hogy $1^3 + \dots + n^3 = \frac{n^2(n+1)^2}{4}$. Indukció: $n = 1$-re $1 = 1$. Ha $n$-re igaz, akkor
$$\frac{n^2(n+1)^2}{4} + (n+1)^3 = \frac{(n+1)^2(n^2 + 4n + 4)}{4} = \frac{(n+1)^2(n+2)^2}{4}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — indukció ismert képletre visszavezetve.** Ha az állítás egy másik ismert zárt alakkal fogalmazható át ($1 + \dots + n = \frac{n(n+1)}{2}$), először ezt tesszük, hogy a bizonyítandó állítás tisztán polinomazonosság legyen; utána a szokásos indukció megy. Az indukciós lépésben itt is az $(n+1)^2$ kiemelése a kulcs.
:::

## 3. feladat

Igazoljuk, hogy minden $n \in \mathbb{N}^+$ esetén $27 \mid 10^n + 18n - 1$.

**Megoldás.**

Legyen $a_n = 10^n + 18n - 1$. Indukció: $a_1 = 27$. A lépéshez:
$$a_{n+1} - 10a_n = 10^{n+1} + 18n + 17 - 10^{n+1} - 180n + 10 = 27 - 162n = 27(1 - 6n),$$
tehát $a_{n+1} = 10a_n + 27(1 - 6n)$, és ha $27 \mid a_n$, akkor $27 \mid a_{n+1}$. $\blacksquare$

*Másik bizonyítás:* $10^n - 1 = 9R_n$, ahol $R_n = 11\dots1$ ($n$ darab egyes). A jegyösszeg miatt $R_n \equiv n \pmod 3$, így $10^n - 1 + 18n = 9(R_n + 2n)$, és $R_n + 2n \equiv 3n \equiv 0 \pmod 3$.

::: elmelet
**Elméleti háttér — oszthatóság indukcióval.** Oszthatósági állításnál az indukciós lépésben $a_{n+1}$-et úgy írjuk fel, mint $a_n$ egy többszörösét plusz egy nyilvánvalóan osztható maradékot: ha $d \mid a_n$ és $d \mid a_{n+1} - c\,a_n$, akkor $d \mid a_{n+1}$. A második bizonyítás a **9-es (illetve 3-as) oszthatósági szabályt** használja: egy szám maradéka 3-mal (9-cel) osztva ugyanaz, mint a jegyösszegéé.
:::

## 4. feladat

Igazoljuk, hogy minden pozitív egész $n$ esetén $2^n \mid (n+1)(n+2) \cdots (2n)$.

**Megoldás.**

$(n+1)(n+2)\cdots(2n) = \dfrac{(2n)!}{n!}$. A $(2n)!$ szorzatot páros és páratlan tényezőkre bontva:
$$(2n)! = (2 \cdot 4 \cdots 2n)\cdot(1 \cdot 3 \cdots (2n-1)) = 2^n\,n! \cdot (1 \cdot 3 \cdots (2n-1)).$$
Így $(n+1)(n+2)\cdots(2n) = 2^n \cdot 1 \cdot 3 \cdots (2n - 1)$, ami osztható $2^n$-nel (sőt a $2$ kitevője pontosan $n$). $\blacksquare$

::: elmelet
**Elméleti háttér — prímkitevők számolása.** Egy szorzatban egy prím kitevőjét úgy követhetjük, hogy a tényezőket ügyesen csoportosítjuk: a $(2n)!$ páros tényezőiből kiemelhető $2^n$, és ami marad, az $n!$ és a páratlan számok szorzata. Így $\frac{(2n)!}{n!} = 2^n \cdot (2n-1)!!$, ahol a második tényező páratlan.
:::

## 5. feladat

Legyenek $a$ és $b$ tetszőleges, egymástól különböző egész számok. Bizonyítsuk be, hogy minden $n \ge 1$ egész számra $a - b \mid a^n - b^n$.

**Megoldás.**

Az azonosság
$$a^n - b^n = (a - b)(a^{n-1} + a^{n-2}b + \dots + ab^{n-2} + b^{n-1})$$
(a jobb oldalt kibontva teleszkopikusan kiesnek a tagok) szerint $a^n - b^n$ az $a - b$ egész számszorosa. (Indukcióval is: $a^{n+1} - b^{n+1} = a(a^n - b^n) + b^n(a - b)$.) $\blacksquare$

::: elmelet
**Elméleti háttér — az $a^n - b^n$ szorzattá bontása.** $a^n - b^n = (a - b)\sum_{j=0}^{n-1} a^{n-1-j}b^j$ egész számokra (sőt bármely kommutatív gyűrűben). Ebből $a - b \mid a^n - b^n$; ugyanez kongruenciákkal: $a \equiv b \pmod{a - b}$, és kongruenciák hatványozhatók, így $a^n \equiv b^n$.
:::

## 6. feladat

Ha $2^n - 1$ prímszám, akkor $n$ prímszám.

**Megoldás.**

Ha $n = 1$, akkor $2^1 - 1 = 1$ nem prím. Ha $n$ összetett, $n = rs$, $1 < r, s < n$, akkor az előző feladat szerint
$$2^{rs} - 1 = (2^r)^s - 1^s = (2^r - 1)\left(2^{r(s-1)} + \dots + 2^r + 1\right),$$
és $1 < 2^r - 1 < 2^n - 1$, tehát $2^n - 1$ összetett. Így ha $2^n - 1$ prím, akkor $n$ prím. $\blacksquare$ (A megfordítás nem igaz: $2^{11} - 1 = 2047 = 23 \cdot 89$. A $2^p - 1$ alakú prímek a Mersenne-prímek.)

::: elmelet
**Elméleti háttér — Mersenne-számok.** Ha $n = rs$ összetett, akkor $2^r - 1 \mid 2^{rs} - 1$ (az előző feladat $a = 2^r$, $b = 1$ esettel), és ez valódi osztó. Egy szám prímségének cáfolatához elég egy **valódi osztót** mutatni. A megfordítás hamis, egy ellenpélda elég.
:::

## 7. feladat

Ha $2^n + 1$ prímszám, akkor $n$ kettőhatvány.

**Megoldás.**

Tegyük fel, hogy $n$-nek van $m > 1$ páratlan osztója: $n = mk$. Páratlan $m$-re $x^m + y^m = (x + y)(x^{m-1} - x^{m-2}y + \dots + y^{m-1})$, így
$$2^n + 1 = (2^k)^m + 1^m$$
osztható $2^k + 1$-gyel, és $1 < 2^k + 1 < 2^n + 1$. Tehát $2^n + 1$ összetett. Ha tehát $2^n + 1$ prím, akkor $n$-nek nincs $1$-nél nagyobb páratlan osztója, azaz $n$ kettőhatvány. $\blacksquare$ (A $2^{2^k} + 1$ alakú prímek a Fermat-prímek.)

::: elmelet
**Elméleti háttér — páratlan kitevős összeg szorzattá bontása.** Páratlan $m$-re $x^m + y^m = (x + y)(x^{m-1} - x^{m-2}y + \dots + y^{m-1})$, mert $x \equiv -y \pmod{x + y}$, és páratlan hatványnál $(-y)^m = -y^m$. Ha $n$-nek van páratlan $m > 1$ osztója, a $2^n + 1$ szám valódi osztót kap. A kitevő tehát csak kettőhatvány lehet (Fermat-számok).
:::

## 8. feladat

Legyenek $f, g, h \in \mathbb{R}[x]$ tetszőleges valós együtthatós polinomok. Bizonyítsuk az oszthatóság azonosságait:

(1) Minden $f$-re $f \mid f$ (*reflexivitás*).

(2) Ha $f \mid g$ és $g \mid h$, akkor $f \mid h$ (*tranzitivitás*).

(3) Ha $f \mid g$ és $f \mid h$, akkor $f \mid g + h$.

(4) Ha $f \mid g$, akkor $f \mid kg$, sőt $kf \mid kg$ minden $k$ valós polinomra. Megfordítva, ha $k \neq 0$ (azaz $k$ nem a nullpolinom), akkor $kf \mid kg$-ből $f \mid g$ következik.

**Megoldás.**

Definíció: $f \mid g$, ha van $h \in \mathbb{R}[x]$, hogy $g = fh$.

(1) $f = f \cdot 1$.

(2) $g = fu$, $h = gv$ $\Rightarrow$ $h = f(uv)$.

(3) $g = fu$, $h = fv$ $\Rightarrow$ $g + h = f(u + v)$.

(4) $g = fu$ $\Rightarrow$ $kg = f(ku)$ és $kg = (kf)u$. Megfordítva, ha $kg = (kf)u$, akkor $k(g - fu) = 0$. Mivel $\mathbb{R}[x]$ nullosztómentes (két nem nulla polinom szorzatának foka a fokszámok összege, így nem nulla), és $k \neq 0$, ezért $g - fu = 0$, azaz $f \mid g$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszthatóság integritástartományban.** Az oszthatóság definíciója ($f \mid g \iff \exists h: g = fh$) bármely kommutatív gyűrűben értelmes; a reflexivitás, tranzitivitás és a lineáris kombinációra való zártság a definícióból közvetlenül adódik. Az **egyszerűsítés** ($kf \mid kg \Rightarrow f \mid g$) a **nullosztómentességen** múlik: $\mathbb R[x]$-ben a fokszám additív ($\deg(uv) = \deg u + \deg v$), így nem nulla polinomok szorzata nem nulla.
:::

## 9. feladat

Igazoljuk, hogy végtelen sok $4k - 1$, illetve $6k - 1$ alakú prímszám van.

**Megoldás.**

**$4k - 1$ alakú prímek.** Tegyük fel, hogy csak véges sok van: $p_1, \dots, p_r$. Legyen $N = 4p_1 \cdots p_r - 1$. $N$ páratlan és $N \equiv 3 \pmod 4$. $N$ prímtényezői páratlanok, tehát $1$ vagy $3$ maradékúak mod 4. Ha mind $\equiv 1$ volna, a szorzatuk is $\equiv 1$ lenne; tehát van $q \mid N$ prím, $q \equiv 3 \pmod 4$. Ez nem lehet egyik $p_i$ sem, mert $p_i \mid N$ esetén $p_i \mid 4p_1\cdots p_r - N = 1$ volna. Ellentmondás.

**$6k - 1$ alakú prímek.** Ugyanígy $N = 6p_1 \cdots p_r - 1 \equiv 5 \pmod 6$. $N$ relatív prím $6$-hoz, így minden prímtényezője $\equiv \pm 1 \pmod 6$; ha mind $\equiv 1$ volna, $N \equiv 1$ lenne. Tehát van $q \equiv -1 \pmod 6$ prímtényező, és ez az előzőhöz hasonlóan nem lehet egyik $p_i$ sem. $\blacksquare$

::: elmelet
**Elméleti háttér — Euklidesz-típusú bizonyítás maradékosztályokkal.** Feltesszük, hogy véges sok adott alakú prím van, és ezekből olyan $N$ számot képezünk, amely (1) a vizsgált maradékosztályba esik, (2) egyik feltételezett prímmel sem osztható. Ha egy szám $\equiv -1 \pmod 4$ (vagy $6$), akkor nem lehet minden prímtényezője $\equiv 1$, mert az $\equiv 1$ osztály zárt a szorzásra — így van „új” $-1$ maradékú prímtényező.
:::

## 10. feladat

Határozzuk meg az $x$ és $y$ számjegyeket úgy, hogy teljesüljön az alábbi oszthatóság (adjuk meg az összes lehetséges megoldást):

(1) $72 \mid \overline{4x57y}$

(2) $45 \mid \overline{51x2y}$

(3) $99 \mid \overline{8x34y2}$.

**Megoldás.**

**(1)** $72 = 8 \cdot 9$, $(8, 9) = 1$. A 8-cal való oszthatóság az utolsó három jegytől függ: $570 + y \equiv 2 + y \pmod 8$, tehát $y = 6$. A 9-cel való oszthatóság: $4 + x + 5 + 7 + 6 = 22 + x$ osztható 9-cel, tehát $x = 5$. **Egyetlen megoldás: $45576 = 72 \cdot 633$.**

**(2)** $45 = 5 \cdot 9$. Az 5-tel való oszthatóság miatt $y \in \{0, 5\}$. A jegyösszeg $8 + x + y$.

- $y = 0$: $8 + x \equiv 0 \pmod 9 \Rightarrow x = 1$: $51120$.
- $y = 5$: $13 + x \equiv 0 \pmod 9 \Rightarrow x = 5$: $51525$.

**Megoldások: $51120$ és $51525$.**

**(3)** $99 = 9 \cdot 11$. 9-cel: $8 + x + 3 + 4 + y + 2 = 17 + x + y$ osztható 9-cel, tehát $x + y \in \{1, 10\}$. 11-gyel (váltakozó jegyösszeg jobbról): $2 - y + 4 - 3 + x - 8 = x - y - 5$ osztható 11-gyel, tehát $x - y \in \{5, -6\}$. Mivel $x + y$ és $x - y$ azonos paritású, csak az $(x + y, x - y) = (1, 5)$ és $(10, -6)$ párok jöhetnek szóba; az elsőből $y = -2$ adódna, ami nem számjegy, a másodikból $x = 2$, $y = 8$. **Egyetlen megoldás: $823482 = 99 \cdot 8318$.**

::: elmelet
**Elméleti háttér — oszthatósági szabályok és relatív prím tényezők.** Ha $m = m_1m_2$ és $(m_1, m_2) = 1$, akkor $m \mid N \iff m_1 \mid N$ és $m_2 \mid N$. A szabályok: $8$-cal az utolsó három jegy, $5$-tel az utolsó jegy, $9$-cel a jegyösszeg, $11$-gyel a **váltakozó jegyösszeg** dönt (mert $10 \equiv -1 \pmod{11}$, $10 \equiv 1 \pmod 9$, $1000 \equiv 0 \pmod 8$). Paritási megfontolások szűkítik a lehetséges párokat.
:::

## 11. feladat

Egy hatjegyű szám alakja $\overline{abcabc}$ (ahol $a \neq 0$). Mutassuk meg, hogy ez a szám mindig osztható 7-tel, 11-gyel és 13-mal is, függetlenül a számjegyek konkrét értékétől.

**Megoldás.**

$$\overline{abcabc} = 1000 \cdot \overline{abc} + \overline{abc} = 1001 \cdot \overline{abc} = 7 \cdot 11 \cdot 13 \cdot \overline{abc},$$
tehát a szám osztható 7-tel, 11-gyel és 13-mal. $\blacksquare$

::: elmelet
**Elméleti háttér — helyiértékes írás algebrai alakja.** Egy ismétlődő jegysorozat a helyiérték szerint szorzatként írható: $\overline{abcabc} = 1001 \cdot \overline{abc}$. Így elég a $1001$ prímtényezős felbontását ismerni ($7 \cdot 11 \cdot 13$), és az oszthatóság a jegyektől függetlenül adódik.
:::

## 12. feladat

Egy sokszög átlóinak száma prímszám. Hány oldalú a sokszög?

**Megoldás.**

Egy $n$-szög átlóinak száma $\frac{n(n-3)}{2}$ ($n \ge 4$-re pozitív). Legyen ez a $p$ prím: $n(n-3) = 2p$.

- Ha $n$ páros: $\frac n2 \cdot (n - 3) = p$, így vagy $\frac n2 = 1$ ($n = 2$, nem sokszög), vagy $n - 3 = 1$, azaz $n = 4$: $2$ átló, prím. ✓
- Ha $n$ páratlan: $n \cdot \frac{n-3}{2} = p$, így $\frac{n-3}{2} = 1$, azaz $n = 5$: $5$ átló, prím. ✓ (Az $n = 1$ eset értelmetlen.)

**A sokszög négyszög vagy ötszög.**

::: elmelet
**Elméleti háttér — prím mint szorzat.** Ha egy prím két pozitív egész szorzata, akkor az egyik tényező $1$ (a prím definíciója: csak $1$ és önmaga az osztója). A feladat egy szorzatra bontott diofantoszi egyenlet, ahol a paritás szerint szétválasztva derül ki, melyik tényező lehet $1$.
:::

## 13. feladat

Határozzuk meg azokat a pozitív egész $n$ számokat, amelyekre az $n^4 + n^2 + 1$ kifejezés prímszám.

**Megoldás.**

$$n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2 = (n^2 - n + 1)(n^2 + n + 1).$$
Mindkét tényező pozitív, és $n^2 - n + 1 < n^2 + n + 1$. Prím csak akkor lehet, ha $n^2 - n + 1 = 1$, azaz $n = 1$ (pozitív $n$-re). Ekkor az érték $3$, prím. **Egyetlen megoldás: $n = 1$.**

::: elmelet
**Elméleti háttér — szorzattá bontás „négyzetkiegészítéssel”.** $n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2$ két négyzet különbsége, tehát $(n^2 - n + 1)(n^2 + n + 1)$. Prím csak akkor lehet, ha a kisebbik tényező $1$. Ez a „Sophie Germain-szerű” átalakítás a negyedfokú kifejezések klasszikus trükkje.
:::

## 14. feladat

Melyek azok a $p$ prímszámok, amelyek felírhatók $p = n^3 - 1$ alakban, ahol $n$ egy természetes szám?

**Megoldás.**

$n^3 - 1 = (n - 1)(n^2 + n + 1)$. $n \ge 2$-re $n^2 + n + 1 \ge 7 > 1$, így prím csak $n - 1 = 1$, azaz $n = 2$ esetén lehet: $p = 7$. ($n = 0, 1$ nem ad prímet.) **Egyetlen ilyen prím: $p = 7$.**

::: elmelet
**Elméleti háttér — $n^3 - 1$ szorzattá bontása.** $n^3 - 1 = (n - 1)(n^2 + n + 1)$ (az 5. feladat azonossága). Prímnél az egyik tényező $1$; mivel a második mindig nagy, az elsőnek kell $1$-nek lennie.
:::

## 15. feladat

Adjuk meg az összes olyan $n$ természetes számot, amelyre az $n^2 + 5n + 13$ kifejezés egy egész szám négyzete.

**Megoldás.**

Legyen $E = n^2 + 5n + 13$, $n \ge 0$. Ekkor
$$E - (n+2)^2 = n + 9 > 0, \qquad (n+3)^2 - E = n - 4, \qquad (n+4)^2 - E = 3n + 3 > 0.$$

- Ha $n > 4$: $(n+2)^2 < E < (n+3)^2$, két szomszédos négyzetszám közé esik, nem négyzetszám.
- Ha $n < 4$: $(n+3)^2 < E < (n+4)^2$, szintén nem négyzetszám.
- Ha $n = 4$: $E = 49 = 7^2$. ✓

**Egyetlen megoldás: $n = 4$.**

::: elmelet
**Elméleti háttér — négyzetszámok közé szorítás.** Ha egy egész kifejezés két szomszédos négyzetszám **közé esik** ($k^2 < E < (k+1)^2$), akkor nem lehet négyzetszám. Ezért összehasonlítjuk $(n + c)^2$-tel különböző $c$-kre, és csak véges sok kivételes $n$ marad, amelyeket egyenként ellenőrzünk.
:::

## 16. feladat

Bizonyítsuk be, hogy $30 \mid n^5 - n$ minden $n$ egész számra.

**Megoldás.**

$n^5 - n = n(n^4 - 1) = (n - 1)n(n + 1)(n^2 + 1)$.

- **2-vel osztható:** $n(n-1)$ két szomszédos egész szorzata.
- **3-mal osztható:** $(n-1)n(n+1)$ három szomszédos egész szorzata.
- **5-tel osztható:** ha $n \equiv 0, \pm1 \pmod 5$, akkor $n$, $n - 1$ vagy $n + 1$ osztható 5-tel; ha $n \equiv \pm 2$, akkor $n^2 + 1 \equiv 5 \equiv 0$. (Vagy a kis Fermat-tétel: $n^5 \equiv n \pmod 5$.)

Mivel $2, 3, 5$ páronként relatív prímek, $30 \mid n^5 - n$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszthatóság relatív prím tényezőkre bontva.** $30 = 2 \cdot 3 \cdot 5$, és páronként relatív prím számokkal való oszthatóságból a szorzattal való oszthatóság következik. Egymást követő egészek szorzatában mindig van $k$-val osztható ($k$ szomszédos egész között). Az $5$-tel való oszthatósághoz maradékosztályonkénti vizsgálat vagy a **kis Fermat-tétel** ($n^p \equiv n \pmod p$) kell.
:::

## 17. feladat

Igazoljuk, hogy ha $17 \mid 2a + 3b$, akkor $17 \mid 9a + 5b$ is teljesül.

**Megoldás.**

$$9a + 5b = 13(2a + 3b) - 17(a + 2b).$$
(Ellenőrzés: $26a - 17a = 9a$, $39b - 34b = 5b$.) Ha $17 \mid 2a + 3b$, akkor a jobb oldal mindkét tagja osztható 17-tel, tehát $17 \mid 9a + 5b$. $\blacksquare$ (A $13$ szorzót úgy kapjuk, hogy $13 \cdot 2 \equiv 9$ és $13 \cdot 3 \equiv 5 \pmod{17}$.)

::: elmelet
**Elméleti háttér — lineáris kombináció és kongruencia.** Ha $d \mid x$ és $d \mid y$, akkor $d$ osztja $x$ és $y$ minden egész együtthatós lineáris kombinációját. A szorzót úgy keressük meg, hogy modulo $17$ számolunk: olyan $c$ kell, amelyre $c(2a + 3b) \equiv 9a + 5b \pmod{17}$, azaz $2c \equiv 9$ és $3c \equiv 5$ — ez a $2$ inverzével ($9$) megoldható, és a két feltétel konzisztens.
:::

## 18. feladat

Bizonyítsuk be, hogy ha $37 \mid \overline{abc}$, akkor $37 \mid \overline{bca}$.

**Megoldás.**

$\overline{abc} = 100a + 10b + c$ és $\overline{bca} = 100b + 10c + a$. Ekkor
$$10 \cdot \overline{abc} = 1000a + 100b + 10c = 999a + \overline{bca}.$$
Mivel $999 = 27 \cdot 37$, ezért $\overline{bca} = 10 \cdot \overline{abc} - 999a$ osztható 37-tel, ha $\overline{abc}$ az. $\blacksquare$

::: elmelet
**Elméleti háttér — ciklikus jegyeltolás.** A helyiértékekkel: $10 \cdot \overline{abc} = 1000a + \overline{bca}$, és $1000 \equiv 1 \pmod{37}$ (mert $999 = 27 \cdot 37$). Így $\overline{bca} \equiv 10 \cdot \overline{abc} \pmod{37}$, és az oszthatóság öröklődik. Általában: ha $10^k \equiv 1 \pmod m$, akkor a $k$ jegyű számok ciklikus eltolása megtartja az $m$-mel való oszthatóságot.
:::

## 19. feladat

Mely $p$ pozitív egész számokra lehet $p$, $p + 2$ és $p + 4$ egyszerre prím?

**Megoldás.**

A $p$, $p + 2$, $p + 4$ számok mod 3 maradékai $p$, $p + 2$, $p + 1$ – ezek az összes maradékot kiadják, így pontosan egyikük osztható 3-mal. Hogy mindhárom prím legyen, az az egyik csak a $3$ lehet: $p = 3$ (ekkor $3, 5, 7$ – mind prím), $p + 2 = 3$ esetén $p = 1$ nem prím, $p + 4 = 3$ lehetetlen. **Egyetlen megoldás: $p = 3$.**

::: elmelet
**Elméleti háttér — teljes maradékrendszer.** Három szám, amelyek $3$-mal osztva különböző maradékot adnak, közül pontosan egy osztható $3$-mal. Ha mindháromnak prímnek kell lennie, az a szám csak a $3$ lehet. Ilyen „maradékosztályos” érvelés sok prímes feladat kulcsa.
:::

## 20. feladat

Halhatatlan kapitánynak három halhatatlan unokája van, akiknek az életkora három különböző prímszám, és ezek négyzetösszege is prímszám. Hány éves a kapitány legkisebb unokája?

**Megoldás.**

Legyenek a korok $p < q < r$ különböző prímek, és $p^2 + q^2 + r^2$ prím.

- **Egyik sem 2:** ha valamelyik 2 lenne, a másik kettő páratlan, és $4 + \text{páratlan} + \text{páratlan}$ páros és $2$-nél nagyobb – nem prím.
- **Valamelyik 3:** ha egyik sem osztható 3-mal, akkor mindhárom négyzet $\equiv 1 \pmod 3$, így az összeg osztható 3-mal és nagyobb 3-nál – nem prím.

Tehát mindhárom páratlan, és az egyik a $3$, ami a legkisebb páratlan prím. **A legkisebb unoka 3 éves.** (Ilyen hármas létezik: $3^2 + 5^2 + 7^2 = 83$ prím.)

::: elmelet
**Elméleti háttér — négyzetek maradékai.** Egy négyzetszám $3$-mal osztva $0$ vagy $1$ maradékot ad ($(\pm1)^2 \equiv 1$), $2$-vel pedig a szám paritását örökli. Ha három négyzet egyike sem osztható $3$-mal, az összegük $\equiv 3 \equiv 0 \pmod 3$; paritással pedig kizárható a $2$. Így a prímség csak a $3$ jelenlétével lehetséges.
:::

## 21. feladat

Oldjuk meg a prímszámok körében a $p^2 - 6q^2 = 1$ egyenletet.

**Megoldás.**

$p^2 = 6q^2 + 1$ páratlan, tehát $p$ páratlan, és $(p - 1)(p + 1) = 6q^2$. $p - 1$ és $p + 1$ szomszédos páros számok, így egyikük 4-gyel is osztható, szorzatuk osztható 8-cal. Tehát $8 \mid 6q^2$, azaz $4 \mid 3q^2$, így $2 \mid q$, és $q = 2$. Ekkor $p^2 = 25$, $p = 5$. **Egyetlen megoldás: $p = 5$, $q = 2$.**

::: elmelet
**Elméleti háttér — szorzattá bontás és 2-es kitevő.** $p^2 - 1 = (p - 1)(p + 1)$, és két szomszédos páros szám szorzata osztható $8$-cal (az egyik $4$-gyel is osztható). Ezt a jobb oldal $2$-es kitevőjével összevetve ($6q^2 = 2 \cdot 3 \cdot q^2$) kiderül, hogy $q$ páros, vagyis $q = 2$.
:::

## 22. feladat

Adjunk meg végtelen sok olyan $n$-et, amelyre $17 \mid 3^n + 5^n$.

**Megoldás.**

Számoljunk mod 17. $3^4 = 81 \equiv 13$ és $5^4 = 625 \equiv 13 \pmod{17}$. Így $n = 4k + 2$ esetén
$$3^{4k+2} + 5^{4k+2} \equiv 13^k \cdot 9 + 13^k \cdot 25 = 13^k \cdot 34 \equiv 0 \pmod{17}.$$
**Minden $n = 4k + 2$ ($k \ge 0$) megfelel**, pl. $n = 2$: $9 + 25 = 34 = 2 \cdot 17$. (Más $n$ nem jó: $5 \cdot 3^{-1} \equiv 13 \equiv -4$, és $(-4)^n \equiv -1 \pmod{17}$ pontosan akkor, ha $n \equiv 2 \pmod 4$.)

::: elmelet
**Elméleti háttér — hatványok rendje modulo $p$.** Modulo prím számolva a hatványok periodikusak (kis Fermat: $a^{p-1} \equiv 1$). Az $a^n + b^n \equiv 0 \pmod p$ feltétel ekvivalens $(ab^{-1})^n \equiv -1$-gyel; ha az $ab^{-1}$ elem **rendje** $2r$, akkor ez pontosan $n \equiv r \pmod{2r}$ esetén teljesül. Itt $-4$ rendje $4$ modulo $17$, így $n \equiv 2 \pmod 4$.
:::

# Algebra és számelmélet – 3. feladatsor – megoldások

## 1. feladat

Számítsuk ki a következő összegeket és szorzatokat:

$\displaystyle\sum_{i=3}^{10} (-1)^i$, $\displaystyle\sum_{i=0}^{n} (-1)^i$, $\displaystyle\sum_{j=1}^{5} 2j+1$, $\displaystyle\sum_{j=1}^{n} 2j+1$, $\displaystyle\sum_{\substack{1 < p \le 7 \\ p \text{ prím}}} p^2$, $\displaystyle\sum_{2 < j < k < 6} jk$, $\displaystyle\sum_{i=1}^{n} i$,

$\displaystyle\prod_{i=1}^{n} 2^i$, $\displaystyle\sum_{i=1}^{93}\sum_{j=1}^{21} ij - \sum_{j=1}^{21}\sum_{i=1}^{93} ij$, $\displaystyle\sum_{j=0}^{n} q^j$, $\displaystyle\prod_{j=0}^{n} q^{r^j}$, $\displaystyle(a-b)\sum_{i=0}^{n-1} a^i b^{n-i-1}$,

$\displaystyle\sum_{i=0}^{252} \binom{252}{i}$, $\displaystyle\sum_{i=0}^{87} 2^i \binom{87}{i}$, $\displaystyle\sum_{i=0}^{471} (-1)^i \binom{471}{i}$, $\displaystyle\sum_{i=0}^{100} \binom{100}{2i}$, $\displaystyle\left(\sum_{i=1}^{n} a_i\right) \cdot \left(\sum_{j=1}^{k} b_j\right)$.

**Megoldás.**

A $\sum 2j + 1$ alakokat $\sum (2j + 1)$-ként értelmezzük.

- $\sum_{i=3}^{10} (-1)^i = -1 + 1 - 1 + 1 - 1 + 1 - 1 + 1 = 0$ (8 tag, páronként kiesnek).
- $\sum_{i=0}^{n} (-1)^i = \frac{1 + (-1)^n}{2}$, azaz $1$, ha $n$ páros, és $0$, ha $n$ páratlan.
- $\sum_{j=1}^{5} (2j + 1) = 3 + 5 + 7 + 9 + 11 = 35$.
- $\sum_{j=1}^{n} (2j + 1) = 2 \cdot \frac{n(n+1)}{2} + n = n^2 + 2n$.
- $\sum_{1 < p \le 7,\ p \text{ prím}} p^2 = 2^2 + 3^2 + 5^2 + 7^2 = 87$.
- $\sum_{2 < j < k < 6} jk$: a $j < k$ párok a $\{3, 4, 5\}$ halmazból: $3 \cdot 4 + 3 \cdot 5 + 4 \cdot 5 = 47$.
- $\sum_{i=1}^{n} i = \frac{n(n+1)}{2}$.
- $\prod_{i=1}^{n} 2^i = 2^{1 + 2 + \dots + n} = 2^{n(n+1)/2}$.
- $\sum_{i=1}^{93}\sum_{j=1}^{21} ij - \sum_{j=1}^{21}\sum_{i=1}^{93} ij = 0$, mert véges összegben az összegzés sorrendje felcserélhető.
- $\sum_{j=0}^{n} q^j = \frac{q^{n+1} - 1}{q - 1}$, ha $q \neq 1$, és $n + 1$, ha $q = 1$.
- $\prod_{j=0}^{n} q^{r^j} = q^{\sum_{j=0}^n r^j} = q^{\frac{r^{n+1} - 1}{r - 1}}$, ha $r \neq 1$, és $q^{n+1}$, ha $r = 1$.
- $(a - b)\sum_{i=0}^{n-1} a^i b^{n-i-1} = a^n - b^n$ (kibontva a tagok teleszkopikusan kiesnek).
- $\sum_{i=0}^{252} \binom{252}{i} = (1 + 1)^{252} = 2^{252}$ (binomiális tétel).
- $\sum_{i=0}^{87} 2^i\binom{87}{i} = (1 + 2)^{87} = 3^{87}$.
- $\sum_{i=0}^{471} (-1)^i\binom{471}{i} = (1 - 1)^{471} = 0$.
- $\sum_{i=0}^{100} \binom{100}{2i} = 2^{99}$: ($i > 50$-re a tagok nullák) a páros indexű binomiális együtthatók összege, és $(1+1)^{100} + (1-1)^{100} = 2\sum_{k \text{ páros}}\binom{100}{k}$, tehát az összeg $\frac{2^{100}}{2} = 2^{99}$.
- $\left(\sum_{i=1}^{n} a_i\right)\left(\sum_{j=1}^{k} b_j\right) = \sum_{i=1}^{n}\sum_{j=1}^{k} a_i b_j$ (disztributivitás).

::: elmelet
**Elméleti háttér — a $\Sigma$ és $\Pi$ jelölés szabályai.** Véges összegeknél: (1) az összegzés sorrendje felcserélhető (kettős összegek); (2) konstans kiemelhető, összeg szétbontható; (3) a hatványok szorzata a kitevők összegével számolható. Nevezetes összegek: számtani sor $\frac{n(n+1)}{2}$, mértani sor $\frac{q^{n+1}-1}{q-1}$, binomiális tétel $\sum_i \binom ni a^ib^{n-i} = (a+b)^n$. A páros indexű binomiális együtthatók összegét az $(1+1)^n + (1-1)^n$ kombinációból kapjuk.
:::

## 2. feladat

Alakítsuk szorzattá az $a^3 + b^3$ kifejezést. Általánosan, mi lesz $a^n + b^n$ szorzat alakja, ha $n$ páratlan?

**Megoldás.**

$$a^3 + b^3 = (a + b)(a^2 - ab + b^2).$$
Páratlan $n$-re $a^n + b^n = a^n - (-b)^n$, így az $x^n - y^n = (x - y)\sum_{i=0}^{n-1}x^{n-1-i}y^i$ azonosságot $x = a$, $y = -b$-re alkalmazva
$$a^n + b^n = (a + b)\left(a^{n-1} - a^{n-2}b + a^{n-3}b^2 - \dots - ab^{n-2} + b^{n-1}\right).$$

::: elmelet
**Elméleti háttér — nevezetes azonosságok.** $x^n - y^n = (x - y)(x^{n-1} + x^{n-2}y + \dots + y^{n-1})$ minden $n$-re; páratlan $n$-re $y \mapsto -y$ helyettesítéssel $x^n + y^n = (x + y)(x^{n-1} - x^{n-2}y + \dots + y^{n-1})$. Az azonosság teleszkopikus kibontással ellenőrizhető.
:::

## 3. feladat

Gyöktelenítsük az alábbi törtek nevezőjét:
$$\frac{\sqrt{5} - \sqrt{2}}{\sqrt{5} + \sqrt{2}}, \quad \frac{2}{\sqrt[3]{3} + 1}, \quad \frac{4}{\sqrt[3]{9} - \sqrt[3]{3} + 1}, \quad \frac{3}{\sqrt[3]{25} + \sqrt[3]{10} + \sqrt[3]{4}}, \quad \frac{1}{\sqrt{2} + \sqrt{3} + \sqrt{5}}.$$

**Megoldás.**

- $\dfrac{\sqrt5 - \sqrt2}{\sqrt5 + \sqrt2} = \dfrac{(\sqrt5 - \sqrt2)^2}{5 - 2} = \dfrac{7 - 2\sqrt{10}}{3}$.
- $\dfrac{2}{\sqrt[3]{3} + 1}$: az $a^3 + 1 = (a + 1)(a^2 - a + 1)$ azonossággal ($a = \sqrt[3]{3}$):
$$\frac{2(\sqrt[3]{9} - \sqrt[3]{3} + 1)}{3 + 1} = \frac{\sqrt[3]{9} - \sqrt[3]{3} + 1}{2}.$$
- $\dfrac{4}{\sqrt[3]{9} - \sqrt[3]{3} + 1}$: ugyanazzal az azonossággal:
$$\frac{4(\sqrt[3]{3} + 1)}{3 + 1} = \sqrt[3]{3} + 1.$$
- $\dfrac{3}{\sqrt[3]{25} + \sqrt[3]{10} + \sqrt[3]{4}}$: $a = \sqrt[3]{5}$, $b = \sqrt[3]{2}$ esetén a nevező $a^2 + ab + b^2$, és $(a - b)(a^2 + ab + b^2) = a^3 - b^3 = 3$. Így a tört értéke $\sqrt[3]{5} - \sqrt[3]{2}$.
- $\dfrac{1}{\sqrt2 + \sqrt3 + \sqrt5}$: bővítsünk $(\sqrt2 + \sqrt3 - \sqrt5)$-tel: a nevező $(\sqrt2 + \sqrt3)^2 - 5 = 2\sqrt6$. Majd $\sqrt6$-tal bővítve:
$$\frac{\sqrt2 + \sqrt3 - \sqrt5}{2\sqrt6} = \frac{(\sqrt2 + \sqrt3 - \sqrt5)\sqrt6}{12} = \frac{2\sqrt3 + 3\sqrt2 - \sqrt{30}}{12}.$$

::: elmelet
**Elméleti háttér — gyöktelenítés konjugálttal.** A nevezőt olyan kifejezéssel bővítjük, amellyel szorozva egy nevezetes azonosság racionális számot ad: négyzetgyököknél $(a - b)(a + b) = a^2 - b^2$, köbgyököknél $(a \pm b)(a^2 \mp ab + b^2) = a^3 \pm b^3$. Több tagnál lépésenként haladunk (először két tagot csoportosítunk, a maradék gyököt egy újabb lépésben távolítjuk el).
:::

## 4. feladat

Oldjuk meg az $x^3 + 3x^2 + 3x + 1 = 0$, $x^3 - 3x^2 + 3x - 1 = 0$, $x^3 + 3x^2 + 3x + 2 = 0$ egyenleteket.

**Megoldás.**

- $x^3 + 3x^2 + 3x + 1 = (x + 1)^3 = 0$: $x = -1$ (háromszoros gyök).
- $x^3 - 3x^2 + 3x - 1 = (x - 1)^3 = 0$: $x = 1$ (háromszoros gyök).
- $x^3 + 3x^2 + 3x + 2 = (x + 1)^3 + 1 = 0$, azaz $(x + 1)^3 = -1$. A valós megoldás $x + 1 = -1$, $x = -2$. Szorzattá alakítva $(x + 2)(x^2 + x + 1) = 0$, és $x^2 + x + 1$-nek nincs valós gyöke (diszkrimináns $-3$); a komplex gyökök $x = \frac{-1 \pm i\sqrt3}{2}$.

::: elmelet
**Elméleti háttér — teljes köbbé alakítás.** $x^3 \pm 3x^2 + 3x \pm 1 = (x \pm 1)^3$ (binomiális tétel $n = 3$-ra). Ha egy harmadfokú egyenletben ez a minta látszik, $y = x \pm 1$ helyettesítéssel tiszta $y^3 = c$ egyenletet kapunk. Egy talált gyök után a gyöktényező kiemelése a maradékot másodfokúvá teszi, amelynek gyökei a megoldóképletből jönnek.
:::

## 5. feladat

Alakítsuk szorzattá az $x^2 - 7x + 10$ kifejezést. Adjuk meg az $u + v = 7$, $uv = 10$, majd az $u + v = 6$, $uv = 9$ egyenletrendszer **összes** valós megoldását.

**Megoldás.**

$x^2 - 7x + 10 = (x - 2)(x - 5)$.

A Viète-formulák szerint $u + v = s$, $uv = p$ pontosan akkor, ha $u$ és $v$ a $t^2 - st + p = 0$ egyenlet gyökei.

- $u + v = 7$, $uv = 10$: $t^2 - 7t + 10 = (t - 2)(t - 5)$, így **$(u, v) = (2, 5)$ vagy $(5, 2)$**.
- $u + v = 6$, $uv = 9$: $t^2 - 6t + 9 = (t - 3)^2$, így **egyetlen megoldás: $u = v = 3$**.

::: elmelet
**Elméleti háttér — Viète-formulák.** A $t^2 - st + p$ polinom gyökei $u, v$ pontosan akkor, ha $u + v = s$ és $uv = p$ (a $(t - u)(t - v)$ kibontásából). Így egy „összeg–szorzat” egyenletrendszer egy másodfokú egyenletre vezet, és **minden** megoldását (a gyökök sorrendjeit) megkapjuk.
:::

## 6. feladat

Végezzük el az alábbi műveleteket a polinomok körében, és állapítsuk meg az eredmény fokát: $(2x^4 - x^2 + 5) - (2x^4 + 3x^3 - x)$, $(x^3 - 2x + 1)(2x^2 + x)$.

**Megoldás.**

- $(2x^4 - x^2 + 5) - (2x^4 + 3x^3 - x) = -3x^3 - x^2 + x + 5$, **foka 3** (a negyedfokú tagok kiestek).
- $(x^3 - 2x + 1)(2x^2 + x) = 2x^5 + x^4 - 4x^3 - 2x^2 + 2x^2 + x = 2x^5 + x^4 - 4x^3 + x$, **foka 5** $= 3 + 2$.

::: elmelet
**Elméleti háttér — fokszám összegnél és szorzatnál.** $\deg(f + g) \le \max\{\deg f, \deg g\}$ (egyenlőtlenség, mert a főtagok kiejthetik egymást); $\deg(fg) = \deg f + \deg g$ (test feletti, sőt integritástartomány feletti polinomokra, mert a főegyütthatók szorzata nem nulla).
:::

## 7. feladat

Mi lesz a 15-ödfokú tag együtthatója az $(x^8 - 3x^5 + 2)(x^{10} + 2x^7 - x^2 + 5)$ polinomban?

**Megoldás.**

Az $x^{15}$ tag azokból a szorzatokból jön, ahol a kitevők összege 15: $x^8 \cdot 2x^7$ (együttható $2$) és $(-3x^5) \cdot x^{10}$ (együttható $-3$). **Az együttható $2 - 3 = -1$.**

::: elmelet
**Elméleti háttér — szorzat együtthatója (konvolúció).** $\left(\sum a_ix^i\right)\left(\sum b_jx^j\right)$-ben az $x^k$ együtthatója $\sum_{i + j = k} a_ib_j$: minden olyan tagpárt össze kell gyűjteni, amelyek kitevőinek összege $k$.
:::

## 8. feladat

Egy nyolcadfokú és egy $m$-edfokú polinom összege harmadfokú. Mik $m$ lehetséges értékei?

**Megoldás.**

Ha $m \neq 8$, akkor az összeg foka $\max\{8, m\} \ge 8$ volna. Tehát **$m = 8$**, és a két polinom főegyütthatója egymás ellentettje (sőt az $x^8, \dots, x^4$ együtthatók is kiejtik egymást).

::: elmelet
**Elméleti háttér — fokszám és kiejtés.** Ha két polinom foka különböző, az összeg foka a nagyobbik (a nagyobb fokú főtag nem ejtődhet ki). Ha az összeg foka kisebb mindkettőnél, a fokuk szükségképpen egyenlő, és a főegyütthatók egymás ellentettjei.
:::

## 9. feladat

Két polinom szorzata tizedfokú, az összegük pedig negyedfokú. Mennyi lehet a két polinom fokszáma?

**Megoldás.**

Legyenek a fokszámok $a$ és $b$; ekkor $a + b = 10$ (a szorzat foka a fokok összege). Ha $a \neq b$, akkor az összeg foka $\max\{a, b\}$, ami $a + b = 10$ miatt legalább $6$ – nem lehet $4$. Tehát $a = b = 5$, és az összegben a főtagok kiejtik egymást. **Mindkét polinom ötödfokú.** Példa: $f = x^5 + x^4$, $g = -x^5$: $fg = -x^{10} - x^9$, $f + g = x^4$.

::: elmelet
**Elméleti háttér — fokszám-egyenletek.** A szorzat foka meghatározza a fokok összegét ($a + b = 10$), az összeg foka pedig megköveteli a kiejtést, ami csak egyenlő fokoknál lehetséges. A két feltételből a fokok egyértelműek.
:::

## 10. feladat

Emeljük ki az $x - 2$ gyöktényezőt az $x^3 - 4x^2 + x + 6$ polinomból, majd határozzuk meg az összes gyökét.

**Megoldás.**

Horner-elrendezés a $2$ helyen:

|   | $1$ | $-4$ | $1$ | $6$ |
|:---:|:---:|:---:|:---:|:---:|
| $2$ | $1$ | $-2$ | $-3$ | $0$ |

Tehát $x^3 - 4x^2 + x + 6 = (x - 2)(x^2 - 2x - 3) = (x - 2)(x - 3)(x + 1)$. **A gyökök: $2$, $3$, $-1$.**

::: elmelet
**Elméleti háttér — gyöktényező kiemelése (Horner).** Ha $f(c) = 0$, akkor $f(x) = (x - c)g(x)$ (gyöktényező-tétel, a maradékos osztásból: $f(x) = (x - c)g(x) + f(c)$). A **Horner-elrendezés** egyszerre adja $f(c)$-t (utolsó elem) és $g$ együtthatóit (a többi elem). A kapott másodfokú hányadost szorzattá bontva megkapjuk az összes gyököt.
:::

## 11. feladat

A Horner-elrendezés segítségével döntsük el, hogy az $f(x) = x^6 - 3x^5 + 2x^3 - x + 5$ polinomnak gyöke-e a 2 szám, és írjuk is fel $f(x)$-et $(x - 2)g(x) + f(2)$ alakban.

**Megoldás.**

Az együtthatók (a hiányzó tagok $0$-val): $1, -3, 0, 2, 0, -1, 5$.

|   | $1$ | $-3$ | $0$ | $2$ | $0$ | $-1$ | $5$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $2$ | $1$ | $-1$ | $-2$ | $-2$ | $-4$ | $-9$ | $-13$ |

$f(2) = -13 \neq 0$, tehát **a 2 nem gyök**, és
$$f(x) = (x - 2)(x^5 - x^4 - 2x^3 - 2x^2 - 4x - 9) - 13.$$
(Ellenőrzés: $f(2) = 64 - 96 + 16 - 2 + 5 = -13$.)

::: elmelet
**Elméleti háttér — Horner-elrendezés és maradéktétel.** A Horner-séma rekurziója $b_{k} = a_k + c\,b_{k+1}$; az utolsó elem $f(c)$, a többi a $g$ hányados együtthatói, és $f(x) = (x - c)g(x) + f(c)$ (**maradéktétel**: lineáris polinommal való osztás maradéka a behelyettesítési érték). A hiányzó tagokat $0$ együtthatóval kell beírni.
:::

## 12. feladat

Hányszoros gyöke az $x^4 + 2x^3 + 2x^2 + 2x + 1$ polinomnak a $-1$? (Iterált Horner.)

**Megoldás.**

Iterált Horner a $-1$ helyen:

|   | $1$ | $2$ | $2$ | $2$ | $1$ |
|:---:|:---:|:---:|:---:|:---:|:---:|
| $-1$ | $1$ | $1$ | $1$ | $1$ | $\mathbf{0}$ |
| $-1$ | $1$ | $0$ | $1$ | $\mathbf{0}$ | |
| $-1$ | $1$ | $-1$ | $\mathbf{2}$ | | |

Az első két maradék $0$, a harmadik $2 \neq 0$, így **a $-1$ kétszeres gyök**: $x^4 + 2x^3 + 2x^2 + 2x + 1 = (x + 1)^2(x^2 + 1)$.

::: elmelet
**Elméleti háttér — gyök multiplicitása iterált Hornerrel.** $c$ pontosan $k$-szoros gyök, ha $(x - c)^k \mid f$, de $(x - c)^{k+1} \nmid f$. A Horner-sémát a kapott hányadosra újra és újra alkalmazva: ahány egymás utáni maradék $0$, annyiszoros a gyök (az első nem nulla maradéknál megállunk).
:::

## 13. feladat

Iterált Hornerrel írjuk fel az $f(x) = 3x^5 - 2x^4 + 4x^3 - 5x^2 + x - 4$ polinomot $(x - 2)$ polinomjaként, azaz keressük meg azt a $g(x)$ polinomot, melyre $f(x) = g(x - 2)$.

**Megoldás.**

Iterált Horner a $2$ helyen; az egymás utáni maradékok adják $g$ együtthatóit (az $(x - 2)^0, (x - 2)^1, \dots$ tagokét):

|   | $3$ | $-2$ | $4$ | $-5$ | $1$ | $-4$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $2$ | $3$ | $4$ | $12$ | $19$ | $39$ | $\mathbf{74}$ |
| $2$ | $3$ | $10$ | $32$ | $83$ | $\mathbf{205}$ | |
| $2$ | $3$ | $16$ | $64$ | $\mathbf{211}$ | | |
| $2$ | $3$ | $22$ | $\mathbf{108}$ | | | |
| $2$ | $3$ | $\mathbf{28}$ | | | | |
| $2$ | $\mathbf{3}$ | | | | | |

$$\begin{aligned} f(x) &= 3(x-2)^5 + 28(x-2)^4 + 108(x-2)^3 \\ &\quad + 211(x-2)^2 + 205(x-2) + 74, \end{aligned}$$
azaz $g(y) = 3y^5 + 28y^4 + 108y^3 + 211y^2 + 205y + 74$. (Ellenőrzés: $g(1) = 629 = f(3)$, és $g(0) = 74 = f(2)$.)

::: elmelet
**Elméleti háttér — Taylor-alak iterált Hornerrel.** Bármely $f$ polinom egyértelműen felírható $\sum_k d_k(x - c)^k$ alakban. Az iterált Horner-séma egymás utáni maradékai éppen $d_0, d_1, d_2, \dots$, mert $f = (x - c)q_1 + d_0$, $q_1 = (x - c)q_2 + d_1$ stb. (Ezek a $\frac{f^{(k)}(c)}{k!}$ Taylor-együtthatók.)
:::

## 14. feladat

Az $n$-edfokú $f(x)$ polinomba behelyettesítjük a $b$ számot. Hány szorzásra van szükség $f(b)$ kiszámításához, ha egyáltalán nem trükközünk; ha a $b$ hatványait előre kiszámoljuk; ha a Horner-elrendezést használjuk?

**Megoldás.**

Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$.

- **Trükközés nélkül:** az $a_kb^k$ tag $k$ szorzás ($k - 1$ a hatványhoz, $1$ az együtthatóval), összesen $1 + 2 + \dots + n = \frac{n(n+1)}{2}$ szorzás.
- **A hatványokat előre kiszámolva:** $b^2, \dots, b^n$ összesen $n - 1$ szorzás ($b^{k} = b^{k-1} \cdot b$), majd az $n$ együtthatóval való szorzás: összesen $2n - 1$.
- **Horner-elrendezéssel:** $f(b) = (\dots((a_nb + a_{n-1})b + a_{n-2})b + \dots)b + a_0$, összesen **$n$ szorzás** (és $n$ összeadás).

::: elmelet
**Elméleti háttér — műveletigény.** A Horner-séma az $f(b) = (\dots(a_nb + a_{n-1})b + \dots)b + a_0$ zárójelezés, amelyben minden együtthatóhoz pontosan egy szorzás és egy összeadás tartozik: $n$ szorzás, és ez optimális általános polinomra. A naiv módszer $\Theta(n^2)$, a hatványok tárolásával $2n - 1$ szorzás kell.
:::

## 15. feladat

Bizonyítsuk be, hogy nem létezik olyan egész együtthatós $v(x)$ polinom, amelyre igaz, hogy $v(7) = 11$ és $v(11) = 13$.

**Megoldás.**

Egész együtthatós $v$-re és egész $a, b$-re $a - b \mid v(a) - v(b)$, mert $v(a) - v(b) = \sum_k c_k(a^k - b^k)$, és $a - b \mid a^k - b^k$. Itt $11 - 7 = 4$ kellene, hogy osztója legyen $v(11) - v(7) = 13 - 11 = 2$-nek – ez hamis. Tehát nincs ilyen polinom. $\blacksquare$

::: elmelet
**Elméleti háttér — $a - b \mid v(a) - v(b)$.** Egész együtthatós polinomra minden egész $a, b$-re $a - b \mid v(a) - v(b)$, mert $v(a) - v(b) = \sum_k c_k(a^k - b^k)$, és minden tag osztható $a - b$-vel. Ez kongruenciával: $a \equiv b \pmod m \Rightarrow v(a) \equiv v(b) \pmod m$. Egyetlen sérülő oszthatóság elég a lehetetlenség igazolásához.
:::

## 16. feladat

Bizonyítsuk be, hogy egyetlen nem konstans, egész együtthatós $v(x)$ polinom sem adhat minden $x$ egész számra prímszám értéket.

**Megoldás.**

Tegyük fel, hogy $v$ nem konstans, egész együtthatós, és minden egész helyen prímet vesz fel. Legyen $a$ egész és $p = v(a)$ (prím). Minden $k$ egészre $(a + kp) - a = kp \mid v(a + kp) - v(a)$, így $p \mid v(a + kp)$. Mivel $v(a + kp)$ prím és osztható $p$-vel, $v(a + kp) = p$ (illetve negatív prímeket is megengedve $\pm p$). Tehát $v - p$ (vagy $v + p$) végtelen sok helyen nulla, így azonosan nulla, azaz $v$ konstans – ellentmondás. $\blacksquare$

::: elmelet
**Elméleti háttér — polinom gyökeinek száma.** Egy nem nulla, $d$-edfokú polinomnak legfeljebb $d$ gyöke van (test felett). Ha tehát egy polinom végtelen sok helyen felvesz egy értéket, akkor konstans. A $v(a + kp) \equiv v(a) \equiv 0 \pmod p$ kongruencia (az előző feladat elve) a végtelen sok egyenlő értéket kikényszeríti.
:::

## 17. feladat

(Schur tétele polinomokra) Bizonyítsuk be, hogy ha $v(x)$ egy egész együtthatós, nem konstans polinom, akkor a $v(1), v(2), v(3), \dots$ helyettesítési értékeknek összesen végtelen sok különböző prímosztója van.

**Megoldás.**

Legyen $v(x) = c_dx^d + \dots + c_1x + c_0$, $d \ge 1$.

**1. eset: $c_0 \neq 0$.** Tegyük fel, hogy csak véges sok prím, $p_1, \dots, p_k$ osztja valamelyik $v(n)$-t ($n \ge 1$), és legyen $P = p_1 \cdots p_k$. Pozitív egész $t$-re
$$v(|c_0|Pt) = c_0 + \sum_{j \ge 1} c_j(|c_0|Pt)^j = c_0\left(1 + Pt\,w(t)\right)$$
valamely $w \in \mathbb{Z}[t]$-vel, mert minden $j \ge 1$-re a tag osztható $c_0Pt$-vel. Mivel $v$ nem konstans, $|v(x)| \to \infty$, így elég nagy $t$-re $|1 + Pt\,w(t)| > 1$, tehát van $q$ prímosztója. De $1 + Pt\,w(t) \equiv 1 \pmod{p_i}$ minden $i$-re, így $q$ egyik $p_i$-vel sem egyenlő, mégis osztja $v(|c_0|Pt)$-t – ellentmondás.

**2. eset: $c_0 = 0$.** Írjuk $v(x) = x^mu(x)$ alakba, $u(0) \neq 0$. Ha $u$ konstans, akkor $v(p) = u \cdot p^m$ minden $p$ prímre osztható $p$-vel – végtelen sok prímosztó. Ha $u$ nem konstans, akkor az 1. eset szerint az $u(n)$ értékeknek végtelen sok prímosztója van, és ezek $v(n)$-t is osztják. $\blacksquare$

::: elmelet
**Elméleti háttér — Schur tétele, Euklidesz-típusú érveléssel.** Feltesszük, hogy véges sok prím osztja az értékeket, és egy olyan helyet választunk ($x = |c_0|Pt$), ahol a polinom értéke $c_0(1 + P\cdot \text{valami})$ alakú: a második tényező minden feltételezett prímmel osztva $1$ maradékot ad, tehát „új” prímtényezője van. A kulcs: $v(x) - v(0)$ osztható $x$-szel, és nem konstans polinom abszolút értéke végtelenbe tart.
:::

## 18. feladat

Ha a 2 (pontosan) háromszoros gyöke $f$-nek és négyszeres gyöke $g$-nek, akkor hányszoros gyöke $f + g$-nek, illetve $f + g + fg$-nek?

**Megoldás.**

Írjuk $f = (x - 2)^3 f_1$, $g = (x - 2)^4 g_1$, ahol $f_1(2) \ne 0$ és $g_1(2) \ne 0$. Ekkor
$$f + g = (x - 2)^3\big(f_1 + (x - 2)g_1\big),$$
és a zárójel értéke a $2$ helyen $f_1(2) \neq 0$: **$f + g$-nek a 2 pontosan háromszoros gyöke.** Hasonlóan
$$f + g + fg = (x - 2)^3\big(f_1 + (x - 2)g_1 + (x - 2)^4f_1g_1\big),$$
a zárójel értéke a $2$-ben ismét $f_1(2) \neq 0$: **$f + g + fg$-nek is pontosan háromszoros gyöke.**

::: elmelet
**Elméleti háttér — multiplicitás kiemeléssel.** $c$ pontosan $k$-szoros gyöke $f$-nek $\iff$ $f = (x - c)^kf_1$, ahol $f_1(c) \ne 0$. Összegnél és szorzatnál a legkisebb közös hatványt emeljük ki, és megnézzük, hogy a maradék tényező értéke a $c$ helyen nulla-e. Ha a multiplicitások különbözők, az összegé a kisebbik.
:::

## 19. feladat

Igazoljuk, hogy az $x^2 + bx + c$-nek pontosan akkor van kétszeres gyöke, ha $b^2 = 4c$.

**Megoldás.**

Teljes négyzetté alakítva
$$x^2 + bx + c = \left(x + \frac b2\right)^2 - \frac{b^2 - 4c}{4}.$$
Ha $b^2 = 4c$, akkor $x^2 + bx + c = \left(x + \frac b2\right)^2$, tehát $-\frac b2$ kétszeres gyök. Megfordítva, ha $r$ kétszeres gyök, akkor (a polinom normált és másodfokú) $x^2 + bx + c = (x - r)^2 = x^2 - 2rx + r^2$, így $b = -2r$, $c = r^2$, és $b^2 = 4r^2 = 4c$. $\blacksquare$

::: elmelet
**Elméleti háttér — teljes négyzetté alakítás és diszkrimináns.** $x^2 + bx + c = \left(x + \frac b2\right)^2 - \frac{D}{4}$, ahol $D = b^2 - 4c$ a **diszkrimináns**. $D = 0$ esetén a polinom teljes négyzet, tehát kétszeres gyöke van; megfordítva egy normált másodfokú polinom kétszeres gyök esetén $(x - r)^2$, és az együtthatók összevetése $D = 0$-t ad.
:::

## 20. feladat

(A racionális gyökteszt) Bizonyítsuk be, hogy ha a $\frac{p}{q}$ (ahol $p$ és $q$ relatív prím egész számok) racionális szám gyöke az $f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$ egész együtthatós polinomnak, akkor $p \mid a_0$ és $q \mid a_n$.

**Megoldás.**

$f\left(\frac pq\right) = 0$-t $q^n$-nel szorozva:
$$a_np^n + a_{n-1}p^{n-1}q + \dots + a_1pq^{n-1} + a_0q^n = 0.$$
Az $a_0q^n$ kivételével minden tag osztható $p$-vel, így $p \mid a_0q^n$. Mivel $(p, q) = 1$, $(p, q^n) = 1$, tehát $p \mid a_0$. Ugyanígy az $a_np^n$ kivételével minden tag osztható $q$-val, így $q \mid a_np^n$, és $(q, p^n) = 1$ miatt $q \mid a_n$. $\blacksquare$

::: elmelet
**Elméleti háttér — racionális gyökteszt.** Ha $\frac pq$ (egyszerűsített tört) gyöke az egész együtthatós $f$-nek, akkor $p \mid a_0$ és $q \mid a_n$. A bizonyítás: a nevezővel felszorzunk, és minden tag osztható $p$-vel (illetve $q$-val), egy kivételével; a kivételes tagra az **Euklideszi lemma** ($p \mid ab$, $(p, b) = 1 \Rightarrow p \mid a$) alkalmazható.
:::

## 21. feladat

A racionális gyökteszt segítségével soroljuk fel a lehetséges racionális gyököket, majd határozzuk meg az $f(x) = 2x^3 - 3x^2 - 11x + 6$ polinom összes racionális gyökét.

**Megoldás.**

$a_0 = 6$, $a_3 = 2$; a lehetséges racionális gyökök $\frac pq$, ahol $p \mid 6$ és $q \mid 2$ ($q > 0$):
$$\pm1,\ \pm2,\ \pm3,\ \pm6,\ \pm\frac12,\ \pm\frac32.$$
Próbálgatással $f(3) = 54 - 27 - 33 + 6 = 0$. Horner:

|   | $2$ | $-3$ | $-11$ | $6$ |
|:---:|:---:|:---:|:---:|:---:|
| $3$ | $2$ | $3$ | $-2$ | $0$ |

$f(x) = (x - 3)(2x^2 + 3x - 2) = (x - 3)(2x - 1)(x + 2)$. **A racionális gyökök: $3$, $\frac12$, $-2$** (és ez az összes gyök).

::: elmelet
**Elméleti háttér — racionális gyökök keresése.** A racionális gyökteszt véges jelöltlistát ad ($\pm \frac{a_0 \text{ osztói}}{a_n \text{ osztói}}$). Egy talált gyököt Hornerrel kiemelünk, és a hányadosra (amely már alacsonyabb fokú) folytatjuk; másodfokú hányadosnál a megoldóképlet vagy szorzattá bontás befejezi a munkát.
:::

# Algebra és számelmélet – 4. feladatsor – megoldások

## 1. feladat

Milyen maradékot adhat egy négyzetszám 3-mal, 4-gyel, 5-tel, 8-cal, illetve 9-cel osztva?

**Megoldás.**

Elég az összes maradékosztály egy-egy reprezentánsát négyzetre emelni:

| modulus | $0^2, 1^2, 2^2, \dots$ maradékai | lehetséges maradékok |
|:---:|:---|:---:|
| 3 | $0, 1, 1$ | $0, 1$ |
| 4 | $0, 1, 0, 1$ | $0, 1$ |
| 5 | $0, 1, 4, 4, 1$ | $0, 1, 4$ |
| 8 | $0, 1, 4, 1, 0, 1, 4, 1$ | $0, 1, 4$ |
| 9 | $0, 1, 4, 0, 7, 7, 0, 4, 1$ | $0, 1, 4, 7$ |

::: elmelet
**Elméleti háttér — kongruenciák és maradékosztályok.** $a \equiv b \pmod m$, ha $m \mid a - b$; a kongruencia összeadással, szorzással és hatványozással kompatibilis. Ezért egy kifejezés ($x^2$) maradéka csak $x$ maradékától függ, és elég a $0, 1, \dots, m-1$ reprezentánsokat végignézni. (Szimmetria: $(-x)^2 = x^2$, így elég a „fél” maradékrendszer.)
:::

## 2. feladat

Határozzuk meg a $3^{2026}$ utolsó számjegyét.

**Megoldás.**

$3$ hatványainak utolsó jegye 4-es periódussal ismétlődik: $3, 9, 7, 1, 3, \dots$ (mert $3^4 = 81 \equiv 1 \pmod{10}$). Mivel $2026 = 4 \cdot 506 + 2$, $3^{2026} \equiv 3^2 = 9 \pmod{10}$. **Az utolsó jegy 9.**

::: elmelet
**Elméleti háttér — hatványok periodicitása.** Egy szám hatványainak maradéka modulo $m$ periodikus (véges sok maradék van, és a következő tag csak az előzőtől függ). Ha $a^k \equiv 1 \pmod m$, akkor $a^n \equiv a^{n \bmod k} \pmod m$, így elég a kitevő maradékát ismerni ($k$-val osztva). Utolsó jegy = maradék $10$-zel osztva.
:::

## 3. feladat

Milyen számjegyre végződik a $4^{100} + 5^{100}$ összeg?

**Megoldás.**

$4^{100} = 16^{50}$, és $6$-ra végződő szám minden hatványa $6$-ra végződik. $5^{100}$ $5$-re végződik. $6 + 5 = 11$, így **az összeg 1-re végződik.**

::: elmelet
**Elméleti háttér — utolsó jegy kongruenciával.** Az utolsó jegy a $10$-es maradék, és a kongruenciák összeadhatók. Bizonyos jegyek „fixpontok” a hatványozásra ($0, 1, 5, 6$ minden hatványa ugyanarra végződik), ezért a kitevőt alkalmasan átírva ($4^{100} = 16^{50}$) a maradék azonnal látszik.
:::

## 4. feladat

Lehet-e $1! + 2! + 3! + \dots + 2026!$ egy egész szám négyzete?

**Megoldás.**

**Nem.** $1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33$, és $k \ge 5$-re $k!$ osztható 10-zel. Így az összeg $3$-ra végződik. Négyzetszám viszont csak $0, 1, 4, 5, 6, 9$-re végződhet (az $0^2, \dots, 9^2$ utolsó jegyei). (Ugyanez mod 5: az összeg $\equiv 3$, a négyzetek $\equiv 0, 1, 4$.)

::: elmelet
**Elméleti háttér — négyzetszámok kizárása maradékkal.** Egy szám nem négyzetszám, ha olyan maradékot ad valamely modulus szerint, amelyet négyzetszám nem adhat (kvadratikus maradékok). A faktoriálisok egy indextől kezdve oszthatók a modulussal, így az összeg maradéka csak az első néhány tagtól függ.
:::

## 5. feladat

Igazoljuk, hogy három egymást követő egész szám négyzetösszege 3-mal osztva mindig 2-t ad maradékul.

**Megoldás.**

$$(n - 1)^2 + n^2 + (n + 1)^2 = 3n^2 + 2 \equiv 2 \pmod 3. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — szimmetrikus változóválasztás.** Három egymást követő számot $n - 1, n, n + 1$ alakban írva a lineáris tagok kiesnek, és a kifejezés egyszerű: $3n^2 + 2$. A maradék ebből leolvasható (a $3n^2$ tag osztható $3$-mal).
:::

## 6. feladat

Számítsuk ki az euklideszi algoritmus segítségével a $(420, 154)$ értéket, majd fejezzük ki az eredményt a két szám egész együtthatós lineáris kombinációjaként.

**Megoldás.**

Euklideszi algoritmus:
$$420 = 2 \cdot 154 + 112, \quad 154 = 1 \cdot 112 + 42, \quad 112 = 2 \cdot 42 + 28, \quad 42 = 1 \cdot 28 + 14, \quad 28 = 2 \cdot 14.$$
Tehát **$(420, 154) = 14$**. Visszafelé helyettesítve:
$$14 = 42 - 28 = 42 - (112 - 2 \cdot 42) = 3 \cdot 42 - 112 = 3(154 - 112) - 112 = 3 \cdot 154 - 4 \cdot 112,$$
$$14 = 3 \cdot 154 - 4(420 - 2 \cdot 154) = 11 \cdot 154 - 4 \cdot 420.$$
(Ellenőrzés: $1694 - 1680 = 14$.)

::: elmelet
**Elméleti háttér — euklideszi algoritmus és Bézout-azonosság.** $(a, b) = (b, a \bmod b)$, mert a közös osztók ugyanazok; az ismételt maradékos osztás véges sok lépésben megáll, és az utolsó nem nulla maradék a legnagyobb közös osztó. Az egyenlőségeket visszafelé behelyettesítve $(a, b) = ua + vb$ alakot kapunk (**Bézout-azonosság**, „kibővített euklideszi algoritmus”).
:::

## 7. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén $(2n + 1, 9n + 4) = 1$.

**Megoldás.**

$$2(9n + 4) - 9(2n + 1) = -1,$$
így bármely közös osztó osztja $1$-et: $(2n + 1, 9n + 4) = 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — lnko lineáris kombinációval.** Ha $d \mid x$ és $d \mid y$, akkor $d$ osztja $x$ és $y$ minden egész lineáris kombinációját. Ha találunk olyan kombinációt, amely $\pm 1$, akkor a közös osztó csak $1$ lehet: a két szám relatív prím. A kombinációt úgy keressük, hogy a változó ($n$) kiessen.
:::

## 8. feladat

Határozzuk meg a $(3n + 5, 2n + 3)$ és a $(n^2 + n, 2n + 1)$ értékét, ha $n$ tetszőleges pozitív egész szám.

**Megoldás.**

- $3(2n + 3) - 2(3n + 5) = -1$, tehát **$(3n + 5, 2n + 3) = 1$**.
- $(n, 2n + 1) = (n, 1) = 1$ és $(n + 1, 2n + 1) = (n + 1, 2n + 1 - 2(n+1)) = (n + 1, -1) = 1$. Mivel $2n + 1$ relatív prím $n$-hez és $n + 1$-hez is, a szorzatukhoz is: **$(n^2 + n, 2n + 1) = 1$**.

::: elmelet
**Elméleti háttér — relatív prímség és szorzat.** Ha $(a, c) = 1$ és $(b, c) = 1$, akkor $(ab, c) = 1$ (mert egy közös prímosztó $a$-t vagy $b$-t osztaná). Lineáris kifejezések lnko-jánál az euklideszi lépésekkel ($(a, b) = (a, b - ka)$) a változót kiküszöböljük.
:::

## 9. feladat

Határozzuk meg a $p(x) = x^4 - 2x^3 + 2x - 1$ és a $q(x) = x^3 - x^2 - x + 1$ polinomok kitüntetett közös osztóját az $\mathbb{R}[x]$ polinomgyűrűben.

**Megoldás.**

Szorzattá alakítva:
$$q(x) = x^2(x - 1) - (x - 1) = (x - 1)(x^2 - 1) = (x - 1)^2(x + 1),$$
$$p(x) = (x^2 - 1)(x^2 - 2x + 1) = (x - 1)^3(x + 1).$$
(Ellenőrzés: $(x^2 - 1)(x^2 - 2x + 1) = x^4 - 2x^3 + 2x - 1$.) A kitüntetett (normált) legnagyobb közös osztó
$$(p, q) = (x - 1)^2(x + 1) = x^3 - x^2 - x + 1 = q(x).$$
Az euklideszi algoritmus egy lépésben ugyanezt adja: $p(x) = (x - 1)\,q(x) + 0$.

::: elmelet
**Elméleti háttér — polinomok lnko-ja.** $K[x]$-ben is van maradékos osztás, így euklideszi algoritmus és legnagyobb közös osztó; ez csak konstans szorzó erejéig egyértelmű, a **kitüntetett** (normált, főegyüttható $1$) változatot választjuk. Ha a polinomok gyöktényezős alakja ismert, az lnko a közös gyöktényezők a kisebbik multiplicitással (mint egészeknél a prímkitevők minimuma).
:::

## 10. feladat

Tegyük fel, hogy az $a$ és $b$ egész számok relatív prímek, azaz $(a, b) = 1$. Határozzuk meg az $(a + b, a - b)$ legnagyobb közös osztó lehetséges értékeit.

**Megoldás.**

Legyen $d = (a + b, a - b)$. Ekkor $d \mid (a + b) + (a - b) = 2a$ és $d \mid (a + b) - (a - b) = 2b$, így $d \mid (2a, 2b) = 2(a, b) = 2$. Tehát **$d \in \{1, 2\}$**, és mindkettő előfordul: $a = 2, b = 1$: $(3, 1) = 1$; $a = 3, b = 1$: $(4, 2) = 2$. ($d = 2$ pontosan akkor, ha $a$ és $b$ mindkettő páratlan.)

::: elmelet
**Elméleti háttér — a közös osztó mindkét számot „örökli”.** $d = (a + b, a - b)$ osztja az összegüket és különbségüket ($2a$, $2b$), tehát $d \mid (2a, 2b) = 2(a, b) = 2$. A lehetséges értékeket példákkal igazoljuk. (Általában: invertálható egész együtthatós lineáris transzformáció — itt determináns $-2$ — legfeljebb a determináns osztóival változtatja az lnko-t.)
:::

## 11. feladat

Keressük meg az összes olyan $x, y$ természetes számokból álló párt, amelyekre a legkisebb közös többszörös és a legnagyobb közös osztó értéke: $[x, y] = 168$ és $(x, y) = 14$.

**Megoldás.**

Legyen $x = 14a$, $y = 14b$, ahol $(a, b) = 1$. Ekkor $[x, y] = 14ab = 168$, azaz $ab = 12$. A relatív prím felbontások: $1 \cdot 12$, $3 \cdot 4$ (a $2 \cdot 6$ nem jó). **A megoldások:**
$$(x, y) \in \{(14, 168),\ (168, 14),\ (42, 56),\ (56, 42)\}.$$

::: elmelet
**Elméleti háttér — lnko és lkkt kapcsolata.** $(x, y)\,[x, y] = xy$, és ha $d = (x, y)$, akkor $x = da$, $y = db$, ahol $(a, b) = 1$, és $[x, y] = dab$. Így a feladat a $\frac{[x,y]}{(x,y)}$ szám **relatív prím** tényezőpárokra bontására vezet (egy prímhatvány nem oszolhat meg $a$ és $b$ között).
:::

## 12. feladat

Mely pozitív egész $n$ számok esetén teljesül, hogy $n + 3 \mid n^2 + 7$?

**Megoldás.**

$n^2 + 7 = (n + 3)(n - 3) + 16$, tehát $n + 3 \mid n^2 + 7 \iff n + 3 \mid 16$. Mivel $n + 3 \ge 4$: $n + 3 \in \{4, 8, 16\}$, azaz **$n \in \{1, 5, 13\}$**. (Ellenőrzés: $4 \mid 8$, $8 \mid 32$, $16 \mid 176$.)

::: elmelet
**Elméleti háttér — polinomosztás és oszthatóság.** Ha $n^2 + 7 = (n + 3)q(n) + r$ (maradékos osztás polinomként, egész maradékkal), akkor $n + 3 \mid n^2 + 7 \iff n + 3 \mid r$. Így a végtelen sok $n$-re vonatkozó kérdés egy rögzített szám ($16$) osztóinak felsorolására redukálódik.
:::

## 13. feladat

Melyik igaz az alábbi állítások közül:

(1) Ha $d \mid 7x + 2y$ és $d \mid 3x + y$, akkor $d \mid x$ és $d \mid y$.

(2) Ha $d \mid 4x + 3y$ és $d \mid 2x + y$, akkor $d \mid x$ és $d \mid y$.

**Megoldás.**

**(1) Igaz.** $x$ és $y$ kifejezhető a két számból egész együtthatókkal:
$$x = (7x + 2y) - 2(3x + y), \qquad y = 7(3x + y) - 3(7x + 2y).$$
(Az együttható-mátrix determinánsa $7 - 6 = 1$.)

**(2) Hamis.** Itt a determináns $4 \cdot 1 - 3 \cdot 2 = -2$, és valóban: $d = 2$, $x = 1$, $y = 0$ esetén $4x + 3y = 4$ és $2x + y = 2$ osztható 2-vel, de $x = 1$ nem.

::: elmelet
**Elméleti háttér — unimoduláris transzformáció.** Ha $(u, v) = (x, y)M$ egy egész mátrixszal, akkor $x$ és $y$ pontosan akkor fejezhető ki egész együtthatókkal $u$-ból és $v$-ből, ha $\det M = \pm 1$ (az inverz mátrix is egész). Ekkor a közös osztók halmaza ugyanaz. Ha $|\det M| > 1$, a determináns prímosztói „elrejthetnek” osztót — erre ellenpéldát keresünk.
:::

## 14. feladat

Legyen $F_n$ az $n$-edik Fibonacci-szám ($F_1 = 1$, $F_2 = 1$, $F_{n+1} = F_n + F_{n-1}$). Igazoljuk, hogy tetszőleges $n \ge 1$ egész számra $(F_n, F_{n+1}) = 1$.

**Megoldás.**

Az euklideszi lépés $(a, b) = (a, b - a)$ szerint
$$(F_n, F_{n+1}) = (F_n, F_{n+1} - F_n) = (F_n, F_{n-1}) = (F_{n-1}, F_n) = \dots = (F_1, F_2) = (1, 1) = 1.$$
(Formálisan: indukció $n$ szerint.) $\blacksquare$

::: elmelet
**Elméleti háttér — euklideszi lépés Fibonacci-számokon.** $(a, b) = (a, b - a)$, és a Fibonacci-rekurzió szerint $F_{n+1} - F_n = F_{n-1}$: az euklideszi algoritmus a Fibonacci-sorozaton visszafelé lépked, amíg $(1, 1) = 1$-hez ér. (Ez a legrosszabb eset az euklideszi algoritmusban: Lamé tétele.)
:::

## 15. feladat

Bizonyítsuk be, hogy ha $p \ge 5$ prímszám, akkor a $p^2 - 1$ kifejezés osztható 24-gyel.

**Megoldás.**

$p^2 - 1 = (p - 1)(p + 1)$.

- $p$ páratlan, így $p - 1$ és $p + 1$ két szomszédos páros szám, egyikük 4-gyel is osztható: $8 \mid p^2 - 1$.
- $3 \nmid p$, így $p - 1, p, p + 1$ közül (három szomszédos szám) $p - 1$ vagy $p + 1$ osztható 3-mal: $3 \mid p^2 - 1$.

Mivel $(8, 3) = 1$, $24 \mid p^2 - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszthatóság relatív prím tényezőkre bontva.** $24 = 8 \cdot 3$, $(8, 3) = 1$. $8$-cal: két szomszédos páros szám szorzata (az egyik $4$-gyel is osztható). $3$-mal: három egymást követő szám közül egy osztható $3$-mal, és ez nem $p$ (mert $p \ge 5$ prím). Kongruenciával: $p \equiv \pm 1 \pmod 6$, így $p^2 \equiv 1 \pmod{24}$.
:::

## 16. feladat

Igazoljuk, hogy egy pozitív egész szám pozitív osztóinak száma pontosan akkor páratlan, ha a szám egy egész szám négyzete.

**Megoldás.**

Párosítsuk az $n$ szám $d$ osztóját az $\frac nd$ osztóval. Ez a párosítás involúció; egy osztó akkor és csak akkor van párban önmagával, ha $d = \frac nd$, azaz $d^2 = n$. A többi osztó kételemű párokba rendeződik. Tehát az osztók száma pontosan akkor páratlan, ha van $d$, amelyre $d^2 = n$, vagyis ha $n$ négyzetszám. $\blacksquare$

(Képlettel: $n = \prod p_i^{\alpha_i}$ esetén az osztók száma $\prod(\alpha_i + 1)$, ami pontosan akkor páratlan, ha minden $\alpha_i$ páros.)

::: elmelet
**Elméleti háttér — párosítás involúcióval.** Ha egy véges halmazon adott egy önmaga inverz leképezés ($d \mapsto \frac nd$), akkor az elemek kételemű párokba és fixpontokba rendeződnek, így a halmaz elemszámának paritása a fixpontok számának paritása. Itt fixpont csak $d = \sqrt n$ lehet. Az osztószám-függvény $d(n) = \prod(\alpha_i + 1)$ képlete ugyanezt mutatja.
:::

## 17. feladat

Igazoljuk a Legendre-formulát, vagyis hogy a $p$ prímszám kitevője az $n!$ prímtényezős felbontásában
$$v_p(n!) = \sum_{k=1}^{\infty} \left\lfloor \frac{n}{p^k} \right\rfloor.$$
Ezt felhasználva lássuk be a $v_p(n!) < \frac{n}{p-1}$ egyenlőtlenséget.

**Megoldás.**

**Legendre-formula.** $v_p(n!) = \sum_{m=1}^{n} v_p(m)$, és $v_p(m)$ azon $k \ge 1$ kitevők száma, amelyekre $p^k \mid m$. Kettős leszámlálással (az $(m, k)$ párokat $k$ szerint csoportosítva):
$$v_p(n!) = \sum_{m=1}^{n}\#\{k \ge 1 : p^k \mid m\} = \sum_{k \ge 1}\#\{m \le n : p^k \mid m\} = \sum_{k=1}^{\infty}\left\lfloor \frac{n}{p^k}\right\rfloor,$$
hiszen $1$ és $n$ között $\lfloor n/p^k \rfloor$ darab $p^k$-val osztható szám van. Az összeg valójában véges: $p^k > n$-re a tagok nullák.

**Becslés.** $\lfloor x \rfloor \le x$ miatt, és mert csak véges sok nem nulla tag van, míg a végtelen mértani sor minden tagja pozitív:
$$v_p(n!) = \sum_{k=1}^{K}\left\lfloor \frac{n}{p^k}\right\rfloor \le \sum_{k=1}^{K}\frac{n}{p^k} < \sum_{k=1}^{\infty}\frac{n}{p^k} = \frac{n/p}{1 - 1/p} = \frac{n}{p - 1}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Legendre-formula kettős leszámlálással.** $v_p(n!) = \sum_{m \le n} v_p(m)$, és $v_p(m)$ = azon $k$-k száma, amelyekre $p^k \mid m$. Az $(m, k)$ párokat kétféleképpen számolva (előbb $m$, majd $k$ szerint) a $\sum_k \lfloor n/p^k \rfloor$ alakot kapjuk. A becsléshez $\lfloor x \rfloor \le x$ és a **mértani sor összege** ($\sum_{k \ge 1} p^{-k} = \frac{1}{p-1}$) elég.
:::

## 18. feladat

Lássuk be, hogy minden $x \ge 1$ valós számra fennáll a
$$\sum_{n \le x} \frac{1}{n} < \prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1}$$
egyenlőtlenség, ahol a szorzat az $x$-nél nem nagyobb prímszámokon fut végig.

**Megoldás.**

Minden $p$ prímre a mértani sor összegképlete szerint
$$\left(1 - \frac1p\right)^{-1} = \sum_{k=0}^{\infty}\frac{1}{p^k}.$$
A $p \le x$ prímekre (véges sok) ezeket a nemnegatív tagú, konvergens sorokat összeszorozva, majd tagonként kifejtve:
$$\prod_{p \le x}\left(1 - \frac1p\right)^{-1} = \sum_{k_1, \dots, k_r \ge 0}\frac{1}{p_1^{k_1}\cdots p_r^{k_r}} = \sum_{n \in S_x}\frac1n,$$
ahol $p_1, \dots, p_r$ az $x$-nél nem nagyobb prímek, és $S_x$ azon pozitív egészek halmaza, amelyeknek minden prímtényezője $\le x$. Itt a számelmélet alaptétele miatt minden $n \in S_x$ pontosan egyszer szerepel.

Minden $n \le x$ prímtényezői $\le x$, így $\{1, \dots, \lfloor x \rfloor\} \subseteq S_x$, és
$$\sum_{n \le x}\frac1n \le \sum_{n \in S_x}\frac1n = \prod_{p \le x}\left(1 - \frac1p\right)^{-1}.$$
Ha $x \ge 2$, az egyenlőtlenség **szigorú**, mert pl. $2^k \in S_x$ minden $k$-ra, és $2^k > x$ is előfordul. $\blacksquare$

*Megjegyzés:* $1 \le x < 2$ esetén nincs $x$-nél nem nagyobb prím, a szorzat üres ($= 1$), és a bal oldal is $1$ – itt egyenlőség áll, tehát a szigorú egyenlőtlenség $x \ge 2$-re igaz. *Következmény:* mivel a harmonikus sor divergens, $\prod_p (1 - 1/p)^{-1} = \infty$, amiből $\sum_p \frac1p = \infty$ is adódik.

::: elmelet
**Elméleti háttér — Euler-szorzat (elemi változat).** A $(1 - \frac1p)^{-1} = \sum_k p^{-k}$ mértani sorokat összeszorozva és kifejtve **minden** olyan $n$ reciproka pontosan egyszer jelenik meg, amelynek prímtényezői $\le x$ — ez a **számelmélet alaptételének** (egyértelmű prímfelbontás) következménye. Az $n \le x$ számok mind ilyenek, ezért a szorzat legalább a harmonikus részletösszeg. Mivel a harmonikus sor divergens, a prímek reciprokainak összege is divergens (Euler).
:::

# Algebra és számelmélet – 5. feladatsor – megoldások

## 1. feladat

Bizonyítsuk be, hogy a komplex számok szorzása asszociatív és disztributív, vagyis $\forall x, y, z \in \mathbb{C}$-re $(xy)z = x(yz)$, $x(y + z) = xy + xz$, $(x + y)z = xz + yz$.

**Megoldás.**

Legyen $x = a + bi$, $y = c + di$, $z = e + fi$; a szorzás definíciója $(a + bi)(c + di) = (ac - bd) + (ad + bc)i$.

**Asszociativitás.** $xy = (ac - bd) + (ad + bc)i$, így
$$(xy)z = (ace - bde - adf - bcf) + (acf - bdf + ade + bce)i.$$
$yz = (ce - df) + (cf + de)i$, így
$$x(yz) = (ace - adf - bcf - bde) + (acf + ade + bce - bdf)i.$$
A két eredmény tagról tagra megegyezik.

**Disztributivitás.**
$$x(y + z) = \big(a(c + e) - b(d + f)\big) + \big(a(d + f) + b(c + e)\big)i = \big[(ac - bd) + (ad + bc)i\big] + \big[(ae - bf) + (af + be)i\big] = xy + xz.$$
A szorzás kommutatív (a képlet szimmetrikus $x$-ben és $y$-ban), így $(x + y)z = z(x + y) = zx + zy = xz + yz$. $\blacksquare$

::: elmelet
**Elméleti háttér — $\mathbb C$ mint test.** A komplex számok rendezett valós számpárok, $(a, b) \leftrightarrow a + bi$, a szorzás definíciója $(a + bi)(c + di) = (ac - bd) + (ad + bc)i$. A testaxiómák (asszociativitás, disztributivitás stb.) a valós számok megfelelő tulajdonságaiból **komponensenkénti számolással** adódnak. Ugyanezt adja, ha $\mathbb C$-t az $\mathbb R[x]/(x^2 + 1)$ faktorgyűrűként fogjuk fel.
:::

## 2. feladat

Végezzük el az alábbi műveleteket: $(2 - 3i)(1 + 4i)$, $-2/i$, $(2 + 5i)/(1 - 2i)$, $|\overline{(3 - 2i)}/(3 - 2i)|$, $|(5 - 2026i)^{50}/(5 + 2026i)^{50}|$, $(1 - i)^2$, $(1 - i)^{1024}$, $(1 - i\sqrt{3})^3$.

**Megoldás.**

- $(2 - 3i)(1 + 4i) = 2 + 8i - 3i - 12i^2 = 14 + 5i$.
- $-\dfrac2i = -2 \cdot \dfrac{-i}{1} = 2i$ (mert $\frac1i = -i$).
- $\dfrac{2 + 5i}{1 - 2i} = \dfrac{(2 + 5i)(1 + 2i)}{(1 - 2i)(1 + 2i)} = \dfrac{2 + 4i + 5i - 10}{5} = \dfrac{-8 + 9i}{5}$.
- $\left|\dfrac{\overline{3 - 2i}}{3 - 2i}\right| = \dfrac{|3 + 2i|}{|3 - 2i|} = \dfrac{\sqrt{13}}{\sqrt{13}} = 1$.
- $\left|\dfrac{(5 - 2026i)^{50}}{(5 + 2026i)^{50}}\right| = \left(\dfrac{|5 - 2026i|}{|5 + 2026i|}\right)^{50} = 1$ (konjugáltak abszolút értéke egyenlő).
- $(1 - i)^2 = 1 - 2i + i^2 = -2i$.
- $(1 - i)^{1024} = \left((1 - i)^2\right)^{512} = (-2i)^{512} = 2^{512}\,i^{512} = 2^{512}$, mert $4 \mid 512$.
- $(1 - i\sqrt3)^3 = 1 - 3i\sqrt3 + 3(i\sqrt3)^2 - (i\sqrt3)^3 = 1 - 3\sqrt3\,i - 9 + 3\sqrt3\,i = -8$. (Trigonometrikusan: $1 - i\sqrt3 = 2(\cos(-60^\circ) + i\sin(-60^\circ))$, köbe $8(\cos(-180^\circ) + i\sin(-180^\circ)) = -8$.)

::: elmelet
**Elméleti háttér — számolás algebrai és trigonometrikus alakban.** Osztásnál **a nevező konjugáltjával bővítünk**: $\frac{w}{z} = \frac{w\overline z}{|z|^2}$, mert $z\overline z = |z|^2$ valós. Az abszolút érték **multiplikatív** ($|zw| = |z||w|$, $|z^n| = |z|^n$), és $|\overline z| = |z|$. Hatványozásnál trigonometrikus alakban (Moivre) vagy kis hatványok kiszámolásával ($(1 - i)^2 = -2i$, $i^4 = 1$) haladunk.
:::

## 3. feladat

Igazoljuk, hogy $z \in \mathbb{C}$ abszolút értéke akkor és csak akkor 1, ha reciproka megegyezik a konjugáltjával.

**Megoldás.**

$z \neq 0$ esetén
$$\frac1z = \overline z \iff z\overline z = 1 \iff |z|^2 = 1 \iff |z| = 1. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — $z\overline z = |z|^2$.** A konjugált és az abszolút érték kapcsolata: $z\overline z = a^2 + b^2 = |z|^2$. Ebből $z \ne 0$ esetén $\frac1z = \frac{\overline z}{|z|^2}$, így a reciprok és a konjugált pontosan az egységkörön egyezik meg. (Az egységkör pontjai a szorzásra csoportot alkotnak.)
:::

## 4. feladat

Határozzuk meg a következő összeg algebrai alakját: $i^{123} + i^{124} + i^{125} + i^{126}$.

**Megoldás.**

$i^{123} = i^{120} \cdot i^3 = -i$, $i^{124} = 1$, $i^{125} = i$, $i^{126} = -1$. Az összeg $-i + 1 + i - 1 = \mathbf{0}$. (Vagy: $i^{123}(1 + i + i^2 + i^3) = i^{123} \cdot 0$.)

::: elmelet
**Elméleti háttér — $i$ hatványai.** $i^4 = 1$, ezért $i^n$ csak $n \bmod 4$-től függ: $1, i, -1, -i$. Négy egymást követő hatvány összege $i^m(1 + i + i^2 + i^3) = 0$ (az egységgyökök összege nulla, ld. 20. feladat).
:::

## 5. feladat

Oldjuk meg a komplex számok halmazán az alábbi egyenletet: $3z + 2\overline{z} = 10 - 4i$.

**Megoldás.**

Legyen $z = a + bi$. Ekkor $3z + 2\overline z = 3a + 3bi + 2a - 2bi = 5a + bi = 10 - 4i$, így $a = 2$, $b = -4$. **$z = 2 - 4i$.**

::: elmelet
**Elméleti háttér — egyenlet valós és képzetes részre bontva.** Egy komplex egyenlet két valós egyenletet jelent: $u = v \iff \operatorname{Re} u = \operatorname{Re} v$ és $\operatorname{Im} u = \operatorname{Im} v$. Ha az egyenletben $\overline z$ is szerepel, az nem „komplex-lineáris”, ezért $z = a + bi$ helyettesítéssel érdemes valós rendszerre bontani.
:::

## 6. feladat

Oldjuk meg $\mathbb{C}$-ben: $x = (4 - 3i)\overline{x}$; $x = 2i\operatorname{Im}(x)$; $\operatorname{Im}(x) = x - \overline{x}$.

**Megoldás.**

- $x = (4 - 3i)\overline x$: abszolút értéket véve $|x| = |4 - 3i|\,|\overline x| = 5|x|$, így $|x| = 0$. **Csak $x = 0$.**
- $x = 2i\operatorname{Im}(x)$: $x = a + bi$ esetén $a + bi = 2bi$, így $a = 0$ és $b = 2b$, azaz $b = 0$. **Csak $x = 0$.**
- $\operatorname{Im}(x) = x - \overline x$: $x - \overline x = 2bi$, így $b = 2bi$, azaz $b(1 - 2i) = 0$, tehát $b = 0$. **A megoldások a valós számok: $x \in \mathbb{R}$.**

::: elmelet
**Elméleti háttér — abszolút érték és felbontás.** Ha $z = cw$ alakú egyenletben a két oldal abszolút értékét vesszük, $|z| = |c|\,|w|$; ha $|c| \ne 1$ és $|z| = |w|$, csak a $0$ lehet megoldás. Egyébként az algebrai alakra bontás ($x = a + bi$, $\overline x = a - bi$, $x - \overline x = 2bi$) valós egyenletrendszert ad.
:::

## 7. feladat

Tegyük föl, hogy $(x + iy)^k = 12 - 5i$ (itt $x, y \in \mathbb{R}$). Mennyi lesz ekkor $(x^2 + y^2)^k$?

**Megoldás.**

Az abszolút érték multiplikatív:
$$(x^2 + y^2)^k = |x + iy|^{2k} = \left|(x + iy)^k\right|^2 = |12 - 5i|^2 = 144 + 25 = \mathbf{169}.$$

::: elmelet
**Elméleti háttér — az abszolút érték multiplikativitása.** $|z^k| = |z|^k$ és $|x + iy|^2 = x^2 + y^2$. Így egy hatvány abszolút értéke meghatározza az alap abszolút értékét, anélkül hogy a hatványgyököt ki kellene számolni.
:::

## 8. feladat

Oldjuk meg a következő egyenletrendszert a komplex számok halmazán, ahol $z$ és $w$ is komplex számok:
$$\begin{aligned} (1 + i)z - w &= -1 + 5i \\ 2z + (1 - i)w &= 6 + 2i \end{aligned}$$

**Megoldás.**

Az első egyenletből $w = (1 + i)z + 1 - 5i$. Ezt a másodikba helyettesítve, $(1 - i)(1 + i) = 2$ és $(1 - i)(1 - 5i) = -4 - 6i$ felhasználásával:
$$2z + 2z - 4 - 6i = 6 + 2i \iff 4z = 10 + 8i \iff z = \frac52 + 2i.$$
Ebből $w = (1 + i)\left(\frac52 + 2i\right) + 1 - 5i = \left(\frac12 + \frac92 i\right) + 1 - 5i = \frac32 - \frac12 i$.

**Megoldás: $z = \frac52 + 2i$, $w = \frac32 - \frac12 i$.** (Ellenőrzés: $(1 + i)z - w = -1 + 5i$, $2z + (1 - i)w = (5 + 4i) + (1 - 2i) = 6 + 2i$.)

::: elmelet
**Elméleti háttér — lineáris egyenletrendszer $\mathbb C$ felett.** A Gauss-elimináció (és a behelyettesítéses módszer) bármely test felett ugyanúgy működik, így $\mathbb C$ felett is; csak a számolás komplex számokkal történik. Hasznos: $(1 - i)(1 + i) = 2$ (konjugált párok szorzata valós).
:::

## 9. feladat

Mutassuk meg, hogy ha az $m$ és $n$ egész számok előállnak két négyzetszám összegeként, akkor $mn$ is előáll így.

**Megoldás.**

Ha $m = a^2 + b^2 = |a + bi|^2$ és $n = c^2 + d^2 = |c + di|^2$, akkor az abszolút érték multiplikativitása miatt
$$mn = |(a + bi)(c + di)|^2 = |(ac - bd) + (ad + bc)i|^2 = (ac - bd)^2 + (ad + bc)^2,$$
ami két egész szám négyzetének összege. $\blacksquare$

::: elmelet
**Elméleti háttér — Brahmagupta–Fibonacci-azonosság.** A $|zw|^2 = |z|^2|w|^2$ multiplikativitás egész komponensű komplex számokra (Gauss-egészekre) azt mondja, hogy két négyzetösszeg szorzata is négyzetösszeg: $(a^2 + b^2)(c^2 + d^2) = (ac - bd)^2 + (ad + bc)^2$. A komplex számok itt egy egész számelméleti azonosság „gépezetét” adják.
:::

## 10. feladat

Oldjuk meg az alábbi egyenleteket: $x^2 + 9 = 0$, $x^2 = -8$, $x^2 - 4x + 13 = 0$, $x^2 - 4ix - 5 = 0$. Írjuk is föl a megfelelő polinomokat gyöktényezős alakban $\mathbb{C}$ fölött.

**Megoldás.**

- $x^2 + 9 = 0$: $x = \pm 3i$; $\;x^2 + 9 = (x - 3i)(x + 3i)$.
- $x^2 = -8$: $x = \pm 2\sqrt2\,i$; $\;x^2 + 8 = (x - 2\sqrt2\,i)(x + 2\sqrt2\,i)$.
- $x^2 - 4x + 13 = 0$: $D = 16 - 52 = -36$, $x = \frac{4 \pm 6i}{2} = 2 \pm 3i$; $\;x^2 - 4x + 13 = (x - 2 - 3i)(x - 2 + 3i)$.
- $x^2 - 4ix - 5 = 0$: $D = (4i)^2 + 20 = 4$, $x = \frac{4i \pm 2}{2} = \pm 1 + 2i$; $\;x^2 - 4ix - 5 = (x - 1 - 2i)(x + 1 - 2i)$.

::: elmelet
**Elméleti háttér — másodfokú egyenlet $\mathbb C$-ben.** $ax^2 + bx + c = 0$ megoldása $x = \frac{-b \pm \sqrt D}{2a}$, ahol $\sqrt D$ a $D$ bármelyik komplex négyzetgyöke (a $\pm$ a másikat is lefedi). $\mathbb C$ felett minden polinom gyöktényezőkre bomlik (az algebra alaptétele): $ax^2 + bx + c = a(x - x_1)(x - x_2)$.
:::

## 11. feladat

Határozzuk meg azokat a $c + di$ számokat, melyek négyzete $5 + 12i$. Oldjuk meg az $x^2 + (2i - 3)x + (5 - i) = 0$ egyenletet.

**Megoldás.**

$(c + di)^2 = (c^2 - d^2) + 2cd\,i = 5 + 12i$, továbbá az abszolút értékekből $c^2 + d^2 = |5 + 12i| = 13$. Így $c^2 = 9$, $d^2 = 4$, és $cd = 6 > 0$: **$c + di = \pm(3 + 2i)$.**

Az $x^2 + (2i - 3)x + (5 - i) = 0$ egyenlet diszkriminánsa
$$D = (2i - 3)^2 - 4(5 - i) = (5 - 12i) - 20 + 4i = -15 - 8i.$$
Ennek négyzetgyöke (ugyanígy: $c^2 - d^2 = -15$, $c^2 + d^2 = 17$, $cd = -4$): $\pm(1 - 4i)$. Így
$$x = \frac{3 - 2i \pm (1 - 4i)}{2}, \qquad x_1 = 2 - 3i, \quad x_2 = 1 + i.$$
(Ellenőrzés Viète-tel: $x_1 + x_2 = 3 - 2i$, $x_1x_2 = 2 + 2i - 3i + 3 = 5 - i$.)

::: elmelet
**Elméleti háttér — komplex négyzetgyök algebrai alakban.** $(c + di)^2 = A + Bi$ esetén $c^2 - d^2 = A$, $2cd = B$, és az abszolút értékből $c^2 + d^2 = |A + Bi|$. A három egyenletből $c^2$ és $d^2$ kijön, az előjeleket a $2cd = B$ feltétel köti össze. Komplex együtthatós másodfokú egyenletnél a diszkrimináns négyzetgyökét így számoljuk, és a megoldóképlet változatlanul érvényes. Ellenőrzés: Viète-formulák.
:::

## 12. feladat

Hozzuk trigonometrikus alakra a következő komplex számokat: $\sqrt{3} + i$, $-2 + 2i$, $-1 - \sqrt{3}i$, $-5i$, $-1 + i$, $\sqrt{3} - 3i$, $-\sin(20^\circ) + i\cos(20^\circ)$, $-\cos\beta + i\sin\beta$, $1 + \cos\alpha + i\sin\alpha$ és $\dfrac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta}$.

**Megoldás.**

$z = r(\cos\varphi + i\sin\varphi)$ alakban (szögek fokban):

- $\sqrt3 + i = 2(\cos 30^\circ + i\sin 30^\circ)$.
- $-2 + 2i = 2\sqrt2(\cos 135^\circ + i\sin 135^\circ)$.
- $-1 - \sqrt3\,i = 2(\cos 240^\circ + i\sin 240^\circ)$.
- $-5i = 5(\cos 270^\circ + i\sin 270^\circ)$.
- $-1 + i = \sqrt2(\cos 135^\circ + i\sin 135^\circ)$.
- $\sqrt3 - 3i = 2\sqrt3(\cos 300^\circ + i\sin 300^\circ)$ (mert $r = \sqrt{12}$, $\cos\varphi = \frac12$, $\sin\varphi = -\frac{\sqrt3}{2}$).
- $-\sin 20^\circ + i\cos 20^\circ = \cos 110^\circ + i\sin 110^\circ$.
- $-\cos\beta + i\sin\beta = \cos(180^\circ - \beta) + i\sin(180^\circ - \beta)$.
- $1 + \cos\alpha + i\sin\alpha$:
$$1 + \cos\alpha + i\sin\alpha = 2\cos^2\frac\alpha2 + 2i\sin\frac\alpha2\cos\frac\alpha2 = 2\cos\frac\alpha2\left(\cos\frac\alpha2 + i\sin\frac\alpha2\right).$$
  Ez trigonometrikus alak, ha $\cos\frac\alpha2 > 0$; ha $\cos\frac\alpha2 < 0$, akkor
$$-2\cos\frac\alpha2\left(\cos\left(\frac\alpha2 + 180^\circ\right) + i\sin\left(\frac\alpha2 + 180^\circ\right)\right);$$
  ha $\cos\frac\alpha2 = 0$, a szám $0$.
- $\dfrac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta}$:
$$\frac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta} = \frac{\cos\beta - i\sin\beta}{\cos\beta + i\sin\beta} = \cos(-2\beta) + i\sin(-2\beta)$$
  ($\cos\beta \neq 0$; a számlálót és a nevezőt $\cos\beta$-val bővítettük, majd a szögek kivonódnak).

::: elmelet
**Elméleti háttér — trigonometrikus alak.** $z = r(\cos\varphi + i\sin\varphi)$, ahol $r = |z| \ge 0$, $\varphi$ az argumentum ($2\pi$ többszöröséig egyértelmű). Fontos, hogy $r$ **nemnegatív** legyen: ha egy átalakításból negatív szorzó jön ki, $\varphi$-t $180^\circ$-kal eltoljuk. Trigonometrikus azonosságokkal (pótszög, félszögképletek: $1 + \cos\alpha = 2\cos^2\frac\alpha2$) sok kifejezés közvetlenül ilyen alakra hozható.
:::

## 13. feladat

Legyen $u = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$ és $v = 3\left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)$. Számítsuk ki az $u \cdot v$ és az $\frac{u}{v}$ kifejezések értékét! A végeredményt trigonometrikus alakban adjuk meg.

**Megoldás.**

Trigonometrikus alakban szorzáskor az abszolút értékek szorzódnak, a szögek összeadódnak:
$$u \cdot v = 6\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right), \qquad \frac uv = \frac23\left(\cos\left(-\frac{\pi}{12}\right) + i\sin\left(-\frac{\pi}{12}\right)\right) = \frac23\left(\cos\frac{23\pi}{12} + i\sin\frac{23\pi}{12}\right).$$

::: elmelet
**Elméleti háttér — szorzás és osztás trigonometrikus alakban.** $r_1(\cos\varphi_1 + i\sin\varphi_1)\cdot r_2(\cos\varphi_2 + i\sin\varphi_2) = r_1r_2(\cos(\varphi_1 + \varphi_2) + i\sin(\varphi_1 + \varphi_2))$ — az abszolút értékek szorzódnak, a szögek összeadódnak (az addíciós tételek miatt); osztásnál osztódnak, illetve kivonódnak. Geometriailag: a szorzás **forgatva nyújtás**.
:::

## 14. feladat

Mennyi $-\cos(50^\circ) - i\sin(50^\circ)$ szöge? Ha $z$ szöge $75^\circ$, akkor mennyi $2026/\overline{z}^4$ szöge? Ha $w$ abszolút értéke 1, szöge pedig $45^\circ$, akkor mennyi $w^3/\overline{w}$?

**Megoldás.**

- $-\cos 50^\circ - i\sin 50^\circ = \cos 230^\circ + i\sin 230^\circ$, **a szöge $230^\circ$.**
- $\arg z = 75^\circ$ esetén $\arg\overline z = -75^\circ$, $\arg\overline z^4 = -300^\circ \equiv 60^\circ$, és mivel $2026$ pozitív valós, $\arg\dfrac{2026}{\overline z^4} = -60^\circ \equiv$ **$300^\circ$**.
- $|w| = 1$ esetén $\overline w = \frac1w$, így $\dfrac{w^3}{\overline w} = w^4 = \cos 180^\circ + i\sin 180^\circ = \mathbf{-1}$.

::: elmelet
**Elméleti háttér — argumentum számolási szabályai.** $\arg(zw) = \arg z + \arg w$, $\arg(1/z) = -\arg z$, $\arg\overline z = -\arg z$, $\arg(z^n) = n\arg z$ (mind $360^\circ$ többszöröséig). Pozitív valós szám argumentuma $0$. Egységnyi abszolút értékű számra $\overline w = w^{-1}$.
:::

## 15. feladat

Mondjuk ki, és bizonyítsuk be a Moivre-formulát természetes kitevőkre. A formula, valamint a binomiális tétel felhasználásával fejezzük ki a $\cos(3x)$ és a $\sin(3x)$ függvényeket kizárólag $\cos x$ és $\sin x$ hatványainak segítségével.

**Megoldás.**

**Moivre-formula:** $n \in \mathbb{N}$-re
$$(\cos x + i\sin x)^n = \cos(nx) + i\sin(nx).$$
*Bizonyítás* indukcióval: $n = 0, 1$ triviális. A lépés az addíciós tételekkel:
$$(\cos nx + i\sin nx)(\cos x + i\sin x) = (\cos nx\cos x - \sin nx\sin x) + i(\sin nx\cos x + \cos nx\sin x) = \cos(n+1)x + i\sin(n+1)x.$$
(Általában $z = r(\cos\varphi + i\sin\varphi)$ esetén $z^n = r^n(\cos n\varphi + i\sin n\varphi)$.)

**Alkalmazás:** $c = \cos x$, $s = \sin x$ jelöléssel a binomiális tétel szerint
$$\cos 3x + i\sin 3x = (c + is)^3 = c^3 + 3c^2(is) + 3c(is)^2 + (is)^3 = (c^3 - 3cs^2) + i(3c^2s - s^3).$$
A valós és képzetes részeket összevetve:
$$\cos 3x = \cos^3 x - 3\cos x\sin^2 x = 4\cos^3x - 3\cos x,$$
$$\sin 3x = 3\cos^2 x\sin x - \sin^3 x = 3\sin x - 4\sin^3 x.$$

::: elmelet
**Elméleti háttér — Moivre-formula és többszörös szögek.** $(\cos x + i\sin x)^n = \cos nx + i\sin nx$, indukcióval az addíciós tételekből. A bal oldalt a **binomiális tétellel** kifejtve, és a valós/képzetes részeket összevetve $\cos nx$ és $\sin nx$ $\cos x$ és $\sin x$ polinomjaként adódik (Csebisev-polinomok); $\sin^2 + \cos^2 = 1$-gyel egyetlen függvényre is átírható.
:::

## 16. feladat

Mennyi az értéke a $(\sin(\pi/12) + i\cos(\pi/12))^{12}$ és a $(1 + \cos(\pi/5) + i\sin(\pi/5))^5$ kifejezéseknek?

**Megoldás.**

**Első:** $\sin\frac{\pi}{12} + i\cos\frac{\pi}{12} = \cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}$ (pótszögek). A Moivre-formulával
$$\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right)^{12} = \cos 5\pi + i\sin 5\pi = \mathbf{-1}.$$

**Második:** a 12. feladat szerint $1 + \cos\frac\pi5 + i\sin\frac\pi5 = 2\cos\frac{\pi}{10}\left(\cos\frac{\pi}{10} + i\sin\frac{\pi}{10}\right)$, így
$$\left(1 + \cos\frac\pi5 + i\sin\frac\pi5\right)^5 = 32\cos^5\frac{\pi}{10}\left(\cos\frac\pi2 + i\sin\frac\pi2\right) = 32\cos^5\frac{\pi}{10}\cdot i.$$
Mivel $\cos^2\frac{\pi}{10} = \frac{1 + \cos(\pi/5)}{2} = \frac{5 + \sqrt5}{8}$, az érték
$$32\left(\frac{5 + \sqrt5}{8}\right)^2\sqrt{\frac{5 + \sqrt5}{8}}\; i = (15 + 5\sqrt5)\sqrt{\frac{5 + \sqrt5}{8}}\; i \approx 24{,}90\, i.$$

::: elmelet
**Elméleti háttér — hatványozás trigonometrikus alakra hozással.** Először trigonometrikus alakra hozzuk az alapot (pótszögekkel, illetve $1 + \cos\alpha + i\sin\alpha = 2\cos\frac\alpha2(\cos\frac\alpha2 + i\sin\frac\alpha2)$), aztán Moivre-formula: $z^n = r^n(\cos n\varphi + i\sin n\varphi)$. A pontos érték a félszögképletből ($\cos^2\frac\alpha2 = \frac{1 + \cos\alpha}{2}$) adódik.
:::

## 17. feladat

A Moivre-képlet felhasználásával számítsuk ki az $(1 - i)^{12}$ kifejezés értékét! A számolást trigonometrikus alakban végezzük el, de a végeredményt algebrai alakban adjuk meg.

**Megoldás.**

$1 - i = \sqrt2\left(\cos\left(-\frac\pi4\right) + i\sin\left(-\frac\pi4\right)\right)$, így
$$(1 - i)^{12} = (\sqrt2)^{12}\left(\cos(-3\pi) + i\sin(-3\pi)\right) = 64 \cdot (-1) = \mathbf{-64}.$$

::: elmelet
**Elméleti háttér — Moivre-formula egész kitevőre.** $z = r(\cos\varphi + i\sin\varphi) \Rightarrow z^n = r^n(\cos n\varphi + i\sin n\varphi)$. Nagy kitevőnél a szög $n\varphi$-t $2\pi$ többszöröseivel csökkentjük, és a végén visszaírjuk algebrai alakra.
:::

## 18. feladat

Oldjuk meg az $x^4 = 5$ és az $x^3 = -27$ egyenleteket a komplex számok között. Adjuk meg az $x^6 = -1 + i\sqrt{3}$ és az $x^n = i$ egyenletek összes megoldását is.

**Megoldás.**

$z = r(\cos\varphi + i\sin\varphi)$ $n$-edik gyökei:
$$\sqrt[n]{r}\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right), \qquad k = 0, 1, \dots, n - 1.$$

- $x^4 = 5$: $x \in \{\sqrt[4]5,\ \sqrt[4]5\,i,\ -\sqrt[4]5,\ -\sqrt[4]5\,i\}$.
- $x^3 = -27 = 27(\cos 180^\circ + i\sin 180^\circ)$:
$$x = 3\left(\cos(60^\circ + k \cdot 120^\circ) + i\sin(60^\circ + k\cdot 120^\circ)\right),$$
  azaz
$$x \in \left\{\frac32 + \frac{3\sqrt3}{2}i,\ -3,\ \frac32 - \frac{3\sqrt3}{2}i\right\}.$$
- $x^6 = -1 + i\sqrt3 = 2(\cos 120^\circ + i\sin 120^\circ)$:
$$x = \sqrt[6]2\left(\cos(20^\circ + k \cdot 60^\circ) + i\sin(20^\circ + k\cdot 60^\circ)\right), \qquad k = 0, \dots, 5;$$
  a szögek $20^\circ, 80^\circ, 140^\circ, 200^\circ, 260^\circ, 320^\circ$.
- $x^n = i = \cos\frac\pi2 + i\sin\frac\pi2$:
$$x_k = \cos\frac{(4k + 1)\pi}{2n} + i\sin\frac{(4k + 1)\pi}{2n}, \qquad k = 0, 1, \dots, n - 1$$
  (a szög $\frac{\pi/2 + 2k\pi}{n}$).

::: elmelet
**Elméleti háttér — $n$-edik gyökvonás $\mathbb C$-ben.** Egy nem nulla komplex számnak pontosan $n$ darab $n$-edik gyöke van: $\sqrt[n]r\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right)$, $k = 0, \dots, n-1$. Ezek egy origó középpontú szabályos $n$-szög csúcsai. A $2k\pi$ tag azért kell, mert a szög csak $2\pi$ többszöröséig meghatározott, és $n$-nel osztva ezek különböző szögeket adnak.
:::

## 19. feladat

Határozzuk meg a $z = -8 + 8\sqrt{3}i$ komplex szám összes harmadik gyökét! A gyököket trigonometrikus alakban adjuk meg.

**Megoldás.**

$|z| = \sqrt{64 + 192} = 16$, $\cos\varphi = -\frac12$, $\sin\varphi = \frac{\sqrt3}{2}$, így $\varphi = 120^\circ$: $z = 16(\cos 120^\circ + i\sin 120^\circ)$. A harmadik gyökök ($\sqrt[3]{16} = 2\sqrt[3]2$):
$$w_k = 2\sqrt[3]2\left(\cos(40^\circ + k \cdot 120^\circ) + i\sin(40^\circ + k\cdot 120^\circ)\right), \quad k = 0, 1, 2,$$
azaz a szögek $40^\circ$, $160^\circ$, $280^\circ$.

::: elmelet
**Elméleti háttér — gyökök trigonometrikus alakban.** Előbb trigonometrikus alakra hozzuk a számot ($r = |z|$, $\varphi$ a $\cos\varphi = \frac ar$, $\sin\varphi = \frac br$ egyenletekből — mindkettőt figyelembe véve, hogy a helyes síknegyedet kapjuk), majd a gyökvonás képletét alkalmazzuk: az abszolút érték valós $n$-edik gyöke, a szögek $\frac{\varphi + 2k\pi}{n}$.
:::

## 20. feladat

Legyen $k$ egy pozitív egész szám, és $\varepsilon = \cos(\frac{2\pi i}{k}) + \sin(\frac{2\pi i}{k})$. Mutassuk meg, hogy egy tetszőleges $n$ egész szám esetén az $S = \sum_{j=0}^{k-1} \varepsilon^{jn}$ összeg értéke $k$, ha $k \mid n$, és $0$, ha $k \nmid n$.

**Megoldás.**

(A lapon szereplő képletben elírás van; a szándékolt definíció $\varepsilon = \cos\frac{2\pi}{k} + i\sin\frac{2\pi}{k}$, a primitív $k$-adik egységgyök.)

A Moivre-formula szerint $\varepsilon^n = \cos\frac{2\pi n}{k} + i\sin\frac{2\pi n}{k}$, és $\varepsilon^n = 1 \iff k \mid n$.

- Ha $k \mid n$: minden tag $\varepsilon^{jn} = (\varepsilon^n)^j = 1$, így $S = k$.
- Ha $k \nmid n$: $q = \varepsilon^n \neq 1$, de $q^k = (\varepsilon^k)^n = 1$. A mértani összeg képlete szerint
$$S = \sum_{j=0}^{k-1} q^j = \frac{q^k - 1}{q - 1} = 0. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — egységgyökök összege.** $\varepsilon = \cos\frac{2\pi}{k} + i\sin\frac{2\pi}{k}$ **primitív** $k$-adik egységgyök: $\varepsilon^n = 1 \iff k \mid n$. Az $S$ összeg egy mértani sor $q = \varepsilon^n$ hányadossal; ha $q \ne 1$, akkor $q^k = 1$ miatt a $\frac{q^k - 1}{q - 1}$ képlet $0$-t ad. Ez a **diszkrét Fourier-transzformáció** és a „gyökszűrő” technika alapja (pl. minden $k$-adik binomiális együttható összegének kiszámítása).
:::

## 21. feladat

A komplex számok trigonometrikus alakja és a binomiális tétel felhasználásával hozzuk zárt alakra (vagyis szumma nélküli kifejezésre) az alábbi két összeget:
$$S_n = \sum_{k=0}^{n} \binom{n}{k} \cos(kx), \quad \text{illetve} \quad T_n = \sum_{k=0}^{n} \binom{n}{k} \sin(kx).$$

**Megoldás.**

Legyen $w = \cos x + i\sin x$. A Moivre-formula szerint $w^k = \cos kx + i\sin kx$, így a binomiális tétellel
$$S_n + iT_n = \sum_{k=0}^n\binom nk w^k = (1 + w)^n.$$
Mivel $1 + w = 1 + \cos x + i\sin x = 2\cos\frac x2\left(\cos\frac x2 + i\sin\frac x2\right)$ (ld. 12. feladat), ezért
$$(1 + w)^n = 2^n\cos^n\frac x2\left(\cos\frac{nx}{2} + i\sin\frac{nx}{2}\right).$$
($S_n$ és $T_n$ valós, így a valós és képzetes részek összevetésével:)
$$S_n = 2^n\cos^n\frac x2\,\cos\frac{nx}{2}, \qquad T_n = 2^n\cos^n\frac x2\,\sin\frac{nx}{2}.$$
(Ez az azonosság minden $x$-re érvényes, $\cos\frac x2$ előjelétől függetlenül.)

::: elmelet
**Elméleti háttér — valós trigonometrikus összegek komplex úton.** Egy $\sum c_k\cos kx$ összeget egy komplex összeg valós részeként írunk fel ($\cos kx = \operatorname{Re} e^{ikx}$, Moivre szerint $w^k$), a komplex összeget zárt alakra hozzuk (itt binomiális tétellel $(1 + w)^n$), majd visszatérünk a valós és képzetes részekre. A $\sin$-os összeg ugyanannak a komplex kifejezésnek a képzetes része — egy számolás mindkettőt megadja.
:::

## 22. feladat

Rajzoljuk le a komplex síkon a következő halmazokat: $\{z : \operatorname{Im}(z - 2 + i) \ge 1\}$, $\{z : \operatorname{Re}(z - 2i) \le \operatorname{Im}(z + 1)\}$, $\{z : |z + 2 - 3i| < 2\}$, $\{z : |z - 1 - i| = |z + 3 + i|\}$, $\{z : z - \overline{z} = 4i\}$, $\{z : z\overline{z} - 2\operatorname{Re}(z) = 0\}$, $\{z : 1/z = 2\overline{z}\}$, $\{z \in \mathbb{C} : \operatorname{Im}((z - i)/(z + i)) = 0\}$.

**Megoldás.**

Legyen $z = x + yi$.

1. $\operatorname{Im}(z - 2 + i) = y + 1 \ge 1 \iff y \ge 0$: **a zárt felső félsík.**
2. $\operatorname{Re}(z - 2i) = x$, $\operatorname{Im}(z + 1) = y$: $x \le y$, **az $y = x$ egyenes és a felette lévő zárt félsík.**
3. $|z - (-2 + 3i)| < 2$: **nyílt körlap**, középpont $-2 + 3i$, sugár $2$.
4. $|z - (1 + i)| = |z - (-3 - i)|$: az $1 + i$ és $-3 - i$ pontokat összekötő szakasz **felezőmerőlegese**. Négyzetre emelve: $(x - 1)^2 + (y - 1)^2 = (x + 3)^2 + (y + 1)^2 \iff y = -2x - 2$.
5. $z - \overline z = 2yi = 4i \iff y = 2$: **vízszintes egyenes.**
6. $z\overline z - 2\operatorname{Re} z = x^2 + y^2 - 2x = 0 \iff (x - 1)^2 + y^2 = 1$: **kör**, középpont $1$, sugár $1$.
7. $\frac1z = 2\overline z \iff 2z\overline z = 1 \iff |z| = \frac{1}{\sqrt2}$ ($z \neq 0$): **origó középpontú, $\frac{1}{\sqrt2}$ sugarú kör.**
8. $z \neq -i$ esetén
$$\frac{z - i}{z + i} = \frac{(z - i)(\overline z - i)}{|z + i|^2} = \frac{x^2 + y^2 - 1 - 2xi}{|z + i|^2},$$
ennek képzetes része pontosan akkor $0$, ha $x = 0$: **a képzetes tengely, a $-i$ pont kivételével.**

::: elmelet
**Elméleti háttér — komplex síkbeli halmazok.** $|z - a|$ a $z$ és $a$ pontok **távolsága**; így $|z - a| < r$ nyílt körlap, $|z - a| = |z - b|$ felezőmerőleges. $\operatorname{Re}$, $\operatorname{Im}$ feltételek egyenesek, félsíkok. Bonyolultabb feltételeknél $z = x + yi$ helyettesítéssel valós egyenletet (egyenlőtlenséget) kapunk, amit a koordinátageometriából ismerünk fel (kör, egyenes). A hányados képzetes részéhez a nevező konjugáltjával bővítünk.
:::

## 23. feladat

A sík mely geometriai transzformációinak felelnek meg a komplex számok halmazának alábbi leképezései: $z \mapsto -2z + 1 - i$, $z \mapsto (1 - i\sqrt{3})z$, $z \mapsto 1/\overline{z}$.

**Megoldás.**

- $z \mapsto -2z + 1 - i$: középpontos hasonlóság $-2$ aránnyal (azaz $180^\circ$-os forgatás és kétszeres nagyítás), majd eltolás az $(1, -1)$ vektorral. Fixpontja $z = -2z + 1 - i$, azaz $z_0 = \frac{1 - i}{3}$; a leképezés tehát **$z_0$ középpontú, $-2$ arányú középpontos hasonlóság**: $z - z_0 \mapsto -2(z - z_0)$.
- $z \mapsto (1 - i\sqrt3)z$: mivel $1 - i\sqrt3 = 2(\cos(-60^\circ) + i\sin(-60^\circ))$, ez **origó körüli $-60^\circ$-os (óramutató járásával egyező) forgatás és kétszeres nagyítás** (forgatva nyújtás).
- $z \mapsto \frac{1}{\overline z} = \frac{z}{|z|^2}$ ($z \neq 0$): a kép ugyanazon az origóból induló félegyenesen van, $\frac{1}{|z|}$ távolságra: **inverzió az egységkörre.**

::: elmelet
**Elméleti háttér — komplex leképezések geometriai jelentése.** $z \mapsto az + b$ ($a \ne 0$) **hasonlósági transzformáció**: $|a|$ arányú nyújtás, $\arg a$ szögű forgatás és eltolás; ha $a \ne 1$, van fixpontja, és körülötte forgatva nyújtás. $z \mapsto \overline z$ tükrözés a valós tengelyre. $z \mapsto \frac{1}{\overline z} = \frac{z}{|z|^2}$ az egységkörre vonatkozó **inverzió**: a pontot a saját félegyenesén $\frac{1}{|z|}$ távolságra viszi.
:::

## 24. feladat

Igazoljuk, hogy egy paralelogramma oldalai hosszának négyzetösszege ugyanaz, mint az átlói hosszának négyzetösszege, és fogalmazzuk meg a megfelelő komplex azonosságot.

**Megoldás.**

Legyen a paralelogramma négy csúcsa $0$, $u$, $v$, $u + v$ (komplex számok). Az oldalak hossza $|u|$ és $|v|$ (mindkettő kétszer), az átlóké $|u + v|$ és $|u - v|$. A megfelelő komplex azonosság:
$$|u + v|^2 + |u - v|^2 = 2|u|^2 + 2|v|^2.$$
*Bizonyítás:* $|w|^2 = w\overline w$ felhasználásával
$$|u \pm v|^2 = (u \pm v)(\overline u \pm \overline v) = |u|^2 + |v|^2 \pm (u\overline v + \overline u v),$$
és a két egyenlőséget összeadva a vegyes tagok kiesnek. $\blacksquare$

::: elmelet
**Elméleti háttér — $|w|^2 = w\overline w$ és a paralelogramma-szabály.** A hossznégyzetek $w\overline w$ alakban algebrai kifejezésekként kezelhetők: $|u \pm v|^2 = |u|^2 + |v|^2 \pm 2\operatorname{Re}(u\overline v)$, és összeadva a vegyes tag kiesik. A komplex számok vektorként kezelik a sík pontjait, így geometriai tételek algebrai azonosságokká válnak.
:::

# Algebra és számelmélet – 6. feladatsor – megoldások

## 1. feladat

Igazoljuk a kongruencia alábbi elemi tulajdonságait:

(1) $a \equiv b \pmod m$, akkor $b \equiv a \pmod m$

(2) $a \equiv b \pmod m$ és $b \equiv c \pmod m$, akkor $a \equiv c \pmod m$

(3) $a \equiv a' \pmod m$ és $b \equiv b' \pmod m$, akkor $a + a' \equiv b + b' \pmod m$, $ab \equiv a'b' \pmod m$

(4) $x, y \in \mathbb{Z}$, $a \equiv a' \pmod m$ és $b \equiv b' \pmod m$, akkor $xa + yb \equiv xa' + yb' \pmod m$.

**Megoldás.**

Definíció szerint $a \equiv b \pmod m \iff m \mid a - b$.

(1) Ha $m \mid a - b$, akkor $m \mid -(a - b) = b - a$, azaz $b \equiv a$.

(2) Ha $m \mid a - b$ és $m \mid b - c$, akkor $m \mid (a - b) + (b - c) = a - c$, azaz $a \equiv c$.

(3) A lapon szereplő $a + a' \equiv b + b'$ elírás; a helyes állítás $a + b \equiv a' + b'$. (Az elírt alak nem igaz: $a = a' = 0$, $b = b' = 1$, $m = 3$ esetén $0 \not\equiv 2$.)

- Összeg: $(a + b) - (a' + b') = (a - a') + (b - b')$, és mindkét tag osztható $m$-mel.
- Szorzat: $ab - a'b' = a(b - b') + b'(a - a')$, és mindkét tag osztható $m$-mel.

(4) $(xa + yb) - (xa' + yb') = x(a - a') + y(b - b')$ osztható $m$-mel. $\blacksquare$

::: elmelet
**Elméleti háttér — a kongruencia ekvivalenciareláció és kompatibilis a műveletekkel.** $a \equiv b \pmod m \iff m \mid a - b$. Reflexív, szimmetrikus, tranzitív, és **összeadással, szorzással felcserélhető** — ezért a maradékosztályokkal számolhatunk ($\mathbb Z_m$ gyűrű). A bizonyítások mind arra épülnek, hogy $m$ többszöröseinek összege és egész számszorosa is $m$ többszöröse; a szorzatnál a „hozzáadunk és elveszünk” fogás: $ab - a'b' = a(b - b') + b'(a - a')$.
:::

## 2. feladat

Adjunk meg egy-egy teljes maradékrendszert mod 7, amely (1) csupa páratlan számból, (2) csupa negatív számból áll, illetve (3) csupa prímszámból áll.

**Megoldás.**

Teljes maradékrendszer mod 7: 7 szám, amelyek páronként különböző maradékot adnak (minden maradék $0, \dots, 6$ pontosan egyszer).

1. **Csupa páratlan:** $1, 3, 5, 7, 9, 11, 13$; maradékaik $1, 3, 5, 0, 2, 4, 6$.
2. **Csupa negatív:** $-1, -2, -3, -4, -5, -6, -7$; maradékaik $6, 5, 4, 3, 2, 1, 0$.
3. **Csupa prím:** $7, 29, 2, 3, 11, 5, 13$; maradékaik rendre $0, 1, 2, 3, 4, 5, 6$.

::: elmelet
**Elméleti háttér — teljes maradékrendszer.** $m$ darab egész, amelyek páronként inkongruensek modulo $m$ (így minden maradékosztályból pontosan egyet tartalmaznak). Bármely osztályból tetszőleges reprezentáns választható; a feladat a reprezentánsok ügyes megválasztása (páratlan: $+7$ eltolással, negatív: $-7$-tel, prím: **Dirichlet-tétel** szerint minden $(a, 7) = 1$ osztályban van prím, a $0$ osztályban a $7$).
:::

## 3. feladat

Redukált maradékrendszert alkot-e a $\{7, 19, 31, 43, 55, 67, 79, 91\}$ halmaz mod 30?

**Megoldás.**

**Nem.** A redukált maradékrendszer elemei relatív prímek a modulushoz. A $\varphi(30) = 8$ elemszám stimmel, de $55 = 5 \cdot 11$ és $(55, 30) = 5 \neq 1$.

(Ráadásul a maradékok sem különbözőek: mod 30 a halmaz $7, 19, 1, 13, 25, 7, 19, 1$, hiszen az elemek $12$-esével nőnek.)

::: elmelet
**Elméleti háttér — redukált maradékrendszer.** $\varphi(m)$ darab, $m$-hez relatív prím, páronként inkongruens egész. Két feltétel: (1) minden elem relatív prím $m$-hez, (2) nincs két kongruens elem. Egyetlen sérülő feltétel elég a cáfolathoz. (Ha egy számtani sorozat különbsége nem relatív prím a modulushoz, a maradékok ismétlődnek.)
:::

## 4. feladat

Határozzuk meg a $7^{2026}$ szám utolsó két számjegyét.

**Megoldás.**

Az utolsó két számjegy a mod 100 maradék. $7^2 = 49$ és $7^4 = 2401 \equiv 1 \pmod{100}$. Mivel $2026 = 4 \cdot 506 + 2$:
$$7^{2026} = (7^4)^{506} \cdot 7^2 \equiv 1 \cdot 49 \pmod{100}.$$
**Az utolsó két számjegy: 49.**

::: elmelet
**Elméleti háttér — utolsó két jegy és a rend.** Az utolsó két jegy a $100$-as maradék. Ha egy kis kitevőre $a^k \equiv 1 \pmod{100}$ (itt $k = 4$, a $7$ **rendje**), akkor a kitevőt elég $k$-val osztva venni. Általános korlát: az Euler–Fermat-tétel szerint $k \mid \varphi(100) = 40$.
:::

## 5. feladat (házi feladat)

Igazoljuk, hogy ha $m$ prím, akkor a kongruenciákból négyzetgyököt vonhatunk: ha $a^2 \equiv b^2 \pmod m$, akkor $a \equiv b$ vagy $a \equiv -b \pmod m$. Igaz-e ez minden összetett $m$ modulusra?

**Megoldás.**

**$m$ prím.** $a^2 \equiv b^2 \pmod m \iff m \mid a^2 - b^2 = (a - b)(a + b)$. Prím szorzatot csak úgy oszthat, ha valamelyik tényezőt osztja. Tehát $m \mid a - b$ vagy $m \mid a + b$, azaz $a \equiv b$ vagy $a \equiv -b$. $\blacksquare$

**Összetett modulusra nem igaz minden esetben.** Ellenpéldák:

- $m = 4$: $0^2 \equiv 2^2 \pmod 4$, de $0 \not\equiv \pm 2 \pmod 4$.
- $m = 15$: $1^2 \equiv 4^2 = 16 \pmod{15}$, de $1 \not\equiv \pm 4 \pmod{15}$.

Van viszont olyan összetett modulus, amelyre igaz, például $m = 6$. Pontosan a $m = 2p$ ($p$ páratlan prím) alakú összetett számok ilyenek:

- Ha $p^2 \mid m$ valamely $p$ prímre, akkor $a = 0$, $b = m/p$ ellenpélda: $m \mid b^2$, de $b \not\equiv 0$.
- Egyébként $m$ négyzetmentes. Ha két különböző páratlan prímosztója van, $p$ és $q$, akkor $(m/q, q) = 1$. A kínai maradéktétel szerint van olyan $b$, hogy $b \equiv 1 \pmod{m/q}$ és $b \equiv -1 \pmod q$. Ekkor $b^2 \equiv 1 \pmod m$, de $b \not\equiv 1$ (mod $q$ nem) és $b \not\equiv -1$ (mod $p$ nem). Tehát $a = 1$ és ez a $b$ ellenpélda.
- $m = 2p$-re: mod 2 mindig $b \equiv -b$, mod $p$ pedig $a \equiv \pm b$. Ezért $a \equiv \pm b \pmod{2p}$.

::: elmelet
**Elméleti háttér — prímmodulus: $\mathbb Z_p$ test.** Prím $p$ esetén $p \mid xy \Rightarrow p \mid x$ vagy $p \mid y$ (Euklideszi lemma), ezért $\mathbb Z_p$ nullosztómentes (test). $a^2 - b^2 = (a - b)(a + b)$, így négyzetgyökvonás „$\pm$ erejéig” egyértelmű. Összetett modulusnál nullosztók vannak, és a **kínai maradéktétel** lehetővé teszi, hogy a prímtényezőkre külön-külön különböző előjelet válasszunk — ezért ott több négyzetgyök is lehet.
:::

## 6. feladat

Számítsuk ki az alábbi hatványok maradékait a megadott modulusokra nézve: $12^{1003} \pmod{17}$ és $5^{123} \pmod{18}$.

**Megoldás.**

**$12^{1003} \bmod 17$:** a kis Fermat-tétel szerint $12^{16} \equiv 1 \pmod{17}$, és $1003 = 16 \cdot 62 + 11$, így $12^{1003} \equiv 12^{11}$. Mivel $12 \equiv -5$:
$$(-5)^2 = 25 \equiv 8,\quad (-5)^4 \equiv 64 \equiv -4,\quad (-5)^8 \equiv 16 \equiv -1 \pmod{17},$$
$$12^{11} \equiv (-5)^8 \cdot (-5)^2 \cdot (-5) \equiv (-1) \cdot 8 \cdot (-5) = 40 \equiv 6 \pmod{17}.$$
**A maradék 6.**

**$5^{123} \bmod 18$:** $(5, 18) = 1$ és $\varphi(18) = 6$, így az Euler–Fermat-tétel szerint $5^6 \equiv 1$. Mivel $123 = 6 \cdot 20 + 3$:
$$5^{123} \equiv 5^3 = 125 = 6 \cdot 18 + 17 \equiv 17 \pmod{18}.$$
**A maradék 17.**

::: elmelet
**Elméleti háttér — kis Fermat- és Euler–Fermat-tétel.** Ha $(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1 \pmod m$ (prím $m = p$-re $a^{p-1} \equiv 1$). Így a kitevő $\varphi(m)$ szerint redukálható: $a^n \equiv a^{n \bmod \varphi(m)}$. A maradék hatványt ismételt négyzetre emeléssel (és negatív reprezentánsok használatával) számoljuk.
:::

## 7. feladat

Bizonyítsuk be, hogy az $n^7 - n$ kifejezés minden $n$ egész szám esetén osztható 42-vel.

**Megoldás.**

$42 = 2 \cdot 3 \cdot 7$, páronként relatív prím tényezőkkel. Elég tehát mindhárommal való oszthatóságot igazolni.

- **7:** a kis Fermat-tétel szerint $n^7 \equiv n \pmod 7$.
- **2 és 3:** $n^7 - n = n(n^6 - 1) = n(n^3 - 1)(n^3 + 1) = (n - 1)n(n + 1)(n^2 + n + 1)(n^2 - n + 1)$. Ebben szerepel három szomszédos egész, $(n - 1)n(n + 1)$ szorzata, ami osztható 2-vel és 3-mal.

Tehát $42 \mid n^7 - n$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszthatóság prímtényezőnként.** $42 = 2 \cdot 3 \cdot 7$ páronként relatív prím tényezőkkel; mindegyikkel külön elég. A kis Fermat-tétel $n^p \equiv n \pmod p$ alakja **minden** egészre igaz (a $p \mid n$ esetben is). Kisebb prímekre szorzattá bontással szomszédos számok szorzatát keressük.
:::

## 8. feladat

Legyen $m$ páros, és $a_1, a_2, \dots, a_m$ illetve $b_1, b_2, \dots, b_m$ egy-egy teljes maradékrendszer mod $m$. Igazoljuk, hogy $a_1 + b_1, a_2 + b_2, \dots, a_m + b_m$ nem teljes maradékrendszer mod $m$.

**Megoldás.**

Mindkét rendszer elemei a $0, 1, \dots, m - 1$ maradékokat adják valamilyen sorrendben. Ezért
$$\sum_{i=1}^m a_i \equiv \sum_{i=1}^m b_i \equiv 0 + 1 + \dots + (m - 1) = \frac{m(m - 1)}{2} \pmod m.$$
Páros $m$-re $\frac{m(m-1)}{2} = \frac m2 (m - 1) = \frac m2 \cdot m - \frac m2 \equiv -\frac m2 \equiv \frac m2 \pmod m$.

Ha $a_i + b_i$ teljes maradékrendszer volna, az összegük $\equiv \frac m2 \pmod m$ lenne. Valójában
$$\sum (a_i + b_i) = \sum a_i + \sum b_i \equiv \frac m2 + \frac m2 = m \equiv 0 \pmod m,$$
és $\frac m2 \not\equiv 0 \pmod m$. Ellentmondás. $\blacksquare$

::: elmelet
**Elméleti háttér — invariáns: a maradékrendszer összege.** Egy teljes maradékrendszer elemeinek összege mindig $0 + 1 + \dots + (m-1) = \frac{m(m-1)}{2}$ modulo $m$, függetlenül a reprezentánsoktól. Páros $m$-re ez $\frac m2 \not\equiv 0$, páratlanra $\equiv 0$. Ha egy feltételezett rendszer összege más maradékot ad, nem lehet teljes maradékrendszer — invariáns-érvelés.
:::

## 9. feladat

Legyen $p$ egy $4k + 3$ alakú prímszám. Igazoljuk, hogy az $x^2 \equiv -1 \pmod p$ kongruenciának nincs megoldása az egész számok körében. (*Segítség.* Kis Fermat-tétel)

**Megoldás.**

Tegyük fel, hogy $x^2 \equiv -1 \pmod p$. Ekkor $p \nmid x$ (különben $0 \equiv -1$ lenne). A kis Fermat-tétel szerint $x^{p - 1} \equiv 1$. Másrészt $p - 1 = 4k + 2$, így
$$x^{p-1} = (x^2)^{2k + 1} \equiv (-1)^{2k + 1} = -1 \pmod p.$$
Tehát $1 \equiv -1 \pmod p$, azaz $p \mid 2$. Ez ellentmondás, mert $p \ge 3$. $\blacksquare$

::: elmelet
**Elméleti háttér — kis Fermat-tétel és rend.** Ha $x^2 \equiv -1 \pmod p$, akkor $x^4 \equiv 1$, tehát $x$ rendje $4$, és a rend osztja $p - 1$-et (kis Fermat). $p = 4k + 3$-ra $4 \nmid p - 1$, ellentmondás. A bizonyítás ugyanezt mondja ki közvetlenül: $x^{p-1} = (x^2)^{(p-1)/2} \equiv (-1)^{\text{páratlan}}$. (Ez a **kvadratikus maradékok** elméletének első lépése: $-1$ pontosan akkor négyzet mod $p$, ha $p \equiv 1 \pmod 4$.)
:::

## 10. feladat

Oldjuk meg az alábbi kongruenciákat: $5x \equiv 8 \pmod{23}$, $17^{41}x \equiv 3 \pmod{100}$, $15x \equiv 7 \pmod{55}$.

**Megoldás.**

**$5x \equiv 8 \pmod{23}$:** $(5, 23) = 1$, és $5 \cdot 14 = 70 = 3 \cdot 23 + 1$, tehát $5^{-1} \equiv 14$. Így $x \equiv 8 \cdot 14 = 112 \equiv 20 \pmod{23}$. **$x \equiv 20 \pmod{23}$.** (Ellenőrzés: $5 \cdot 20 = 100 = 4 \cdot 23 + 8$.)

**$17^{41}x \equiv 3 \pmod{100}$:** $(17, 100) = 1$ és $\varphi(100) = 40$, így $17^{41} \equiv 17$. Az egyenlet $17x \equiv 3 \pmod{100}$. Mivel $17 \cdot 53 = 901 \equiv 1$, kapjuk: $x \equiv 3 \cdot 53 = 159 \equiv 59$. **$x \equiv 59 \pmod{100}$.** (Ellenőrzés: $17 \cdot 59 = 1003$.)

**$15x \equiv 7 \pmod{55}$:** $(15, 55) = 5$, és $5 \nmid 7$. **Nincs megoldás.** ($15x - 55y$ mindig osztható 5-tel.)

::: elmelet
**Elméleti háttér — lineáris kongruencia.** $ax \equiv b \pmod m$ pontosan akkor oldható meg, ha $d = (a, m) \mid b$, és ekkor $d$ megoldás van modulo $m$ (egy modulo $\frac md$). Ha $(a, m) = 1$, egyetlen megoldás van: $x \equiv a^{-1}b$, ahol az inverz a kibővített euklideszi algoritmusból (vagy próbálgatással) jön. Hatványos együtthatót előbb Euler–Fermattal redukálunk.
:::

## 11. feladat

Egy egyetemi rendezvényre 300 forintos és 500 forintos szendvicseket rendeltek, összesen pontosan 7300 forint értékben. Hány darabot vehettek az egyes szendvicsekből, ha mindkét fajtából rendeltek legalább egyet?

**Megoldás.**

Legyen $x$ a 300 Ft-os, $y$ az 500 Ft-os szendvicsek száma, $x, y \ge 1$:
$$300x + 500y = 7300 \iff 3x + 5y = 73.$$
Mod 3: $5y \equiv 2y \equiv 73 \equiv 1$, így $y \equiv 2 \pmod 3$, azaz $y = 2, 5, 8, 11, 14, \dots$; $x = \frac{73 - 5y}{3}$ pozitív kell legyen, tehát $y \le 14$.

| $y$ (500 Ft) | 2 | 5 | 8 | 11 | 14 |
|---|---|---|---|---|---|
| $x$ (300 Ft) | 21 | 16 | 11 | 6 | 1 |

**Öt lehetőség van:** $(x, y) = (21, 2), (16, 5), (11, 8), (6, 11), (1, 14)$.

::: elmelet
**Elméleti háttér — lineáris diofantoszi egyenlet pozitív megoldásai.** $ax + by = c$ megoldásai — ha $(a, b) \mid c$ — egy partikuláris megoldásból és a homogén egyenlet megoldásaiból állnak: $x = x_0 + \frac{b}{d}t$, $y = y_0 - \frac adt$. Modulo $a$ (vagy $b$) vett kongruencia gyorsan adja az egyik változó lehetséges maradékát, a pozitivitási feltételek pedig véges sok $t$-re szűkítenek.
:::

## 12. feladat

Oldjuk meg az egész számok halmazán a következő lineáris diofantoszi egyenleteket:

(1) $14x + 35y = 91$

(2) $15x + 21y = 38$.

**Megoldás.**

(1) $(14, 35) = 7 \mid 91$, így van megoldás. 7-tel osztva $2x + 5y = 13$. Egy partikuláris megoldás $x_0 = 4$, $y_0 = 1$. A homogén egyenlet $2x + 5y = 0$ megoldásai $(5t, -2t)$. Tehát
$$x = 4 + 5t, \quad y = 1 - 2t \qquad (t \in \mathbb{Z}).$$

(2) $(15, 21) = 3$, de $3 \nmid 38$. **Nincs egész megoldás.**

::: elmelet
**Elméleti háttér — megoldhatóság és általános megoldás.** $ax + by = c$ pontosan akkor oldható meg egészekben, ha $(a, b) \mid c$ (a bal oldal mindig osztható $(a, b)$-vel; a Bézout-azonosság pedig mutat megoldást). $d$-vel osztva relatív prím együtthatókat kapunk, és az általános megoldás $x = x_0 + \frac bd t$, $y = y_0 - \frac ad t$, $t \in \mathbb Z$.
:::

## 13. feladat

Igazoljuk, hogy ha $N$ nem $m$-edik hatvány, akkor $\sqrt[m]{N}$ irracionális.

**Megoldás.**

Legyen $N$ pozitív egész, $m \ge 2$, és tegyük fel, hogy $\sqrt[m]{N} = \frac pq$, ahol $p, q$ pozitív egészek és $(p, q) = 1$. Ekkor
$$N q^m = p^m.$$
Ha $q > 1$, legyen $r$ a $q$ egy prímosztója. Ekkor $r \mid p^m$, így (prím lévén) $r \mid p$, ami ellentmond $(p, q) = 1$-nek. Tehát $q = 1$ és $N = p^m$, azaz $N$ $m$-edik hatvány. Ez ellentmond a feltevésnek. $\blacksquare$

(Másképp: a számelmélet alaptétele szerint $p^m$ kanonikus alakjában minden kitevő osztható $m$-mel, és $q^m$-ben is. Így $N = p^m/q^m$-ben is, tehát $N$ $m$-edik hatvány.)

::: elmelet
**Elméleti háttér — irracionalitás prímtényezőkkel.** Ha $\sqrt[m]N = \frac pq$ egyszerűsített tört, akkor $Nq^m = p^m$; a nevező bármely prímosztója az **Euklideszi lemma** szerint $p$-t is osztaná, ellentmondva az egyszerűsítettségnek. Így $q = 1$, és $N$ teljes $m$-edik hatvány. Ez a $\sqrt2 \notin \mathbb Q$ bizonyítás általánosítása.
:::

## 14. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben az egyik szám 15.

**Megoldás.**

A primitív pitagoraszi számhármasok alakja
$$a = u^2 - v^2, \quad b = 2uv, \quad c = u^2 + v^2,$$
ahol $u > v > 0$, $(u, v) = 1$, és $u, v$ különböző paritású. 15 páratlan, így nem lehet $b$.

- **$c = 15$:** $u^2 + v^2 = 15$ nem lehetséges, mert $15 \equiv 3 \pmod 4$ nem áll elő két négyzetszám összegeként.
- **$a = 15$:** $(u - v)(u + v) = 15$, ahol $u - v < u + v$:
  - $u - v = 1$, $u + v = 15$: $u = 8$, $v = 7$, a hármas $(15, 112, 113)$;
  - $u - v = 3$, $u + v = 5$: $u = 4$, $v = 1$, a hármas $(15, 8, 17)$.

  Mindkét esetben $(u, v) = 1$ és $u, v$ különböző paritású, tehát a hármasok primitívek.

**A megoldások: $(8, 15, 17)$ és $(15, 112, 113)$.** (A $(9, 12, 15)$, $(15, 20, 25)$, $(15, 36, 39)$ hármasok nem primitívek.)

::: elmelet
**Elméleti háttér — pitagoraszi számhármasok paraméterezése.** A primitív megoldások pontosan $(u^2 - v^2, 2uv, u^2 + v^2)$, ahol $u > v > 0$, $(u, v) = 1$, $u \not\equiv v \pmod 2$. Adott elem esetén eldöntjük, melyik szerepet töltheti be (páratlan elem nem lehet $2uv$; az átfogó $u^2 + v^2$ nem lehet $\equiv 3 \pmod 4$), majd a megfelelő egyenletet szorzattá bontjuk ($u^2 - v^2 = (u - v)(u + v)$).
:::

# Algebra és számelmélet – 7. feladatsor – megoldások

## 1. feladat

Számítsuk ki az alábbi determinánsokat a felső háromszög alakra hozás módszerével, azaz Gauss-eliminációval, az első sor, illetve az utolsó oszlop szerinti kifejtéssel, végül a $3 \times 3$-asokat a Sarrus-szabállyal is.
$$\begin{vmatrix} -1 & 4 \\ 2 & 3 \end{vmatrix} \quad \begin{vmatrix} 0 & 2 & -1 \\ 4 & 1 & 3 \\ 2 & -3 & 2 \end{vmatrix} \quad \begin{vmatrix} x_1 & y_1 & z_1 \\ x_2 & y_2 & z_2 \\ x_3 & y_3 & z_3 \end{vmatrix} \quad \begin{vmatrix} 1 & 2 & 3 & 4 \\ 1 & 2 & 3 & 0 \\ 1 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix} \quad \begin{vmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{vmatrix}$$

**Megoldás.**

**(a) $\begin{vmatrix} -1 & 4 \\ 2 & 3 \end{vmatrix} = -11$.**

- *Gauss:* $S_2 \leftarrow S_2 + 2S_1$: $\begin{vmatrix} -1 & 4 \\ 0 & 11 \end{vmatrix} = (-1) \cdot 11 = -11$.
- *Első sor szerint:* $(-1) \cdot 3 - 4 \cdot 2 = -11$.
- *Utolsó oszlop szerint:* $4 \cdot (-1)^{1+2} \cdot 2 + 3 \cdot (-1)^{2+2} \cdot (-1) = -8 - 3 = -11$.

**(b) $\begin{vmatrix} 0 & 2 & -1 \\ 4 & 1 & 3 \\ 2 & -3 & 2 \end{vmatrix} = 10$.**

- *Gauss:* $S_1 \leftrightarrow S_2$ (előjelváltás), majd $S_3 \leftarrow S_3 - \frac12 S_1$, végül $S_3 \leftarrow S_3 + \frac74 S_2$:
$$-\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 2 & -3 & 2 \end{vmatrix} = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 0 & -\frac72 & \frac12 \end{vmatrix} = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 0 & 0 & -\frac54 \end{vmatrix} = -4 \cdot 2 \cdot \left(-\tfrac54\right) = 10.$$
- *Első sor szerint:* $0 \cdot \begin{vmatrix} 1 & 3 \\ -3 & 2 \end{vmatrix} - 2\begin{vmatrix} 4 & 3 \\ 2 & 2 \end{vmatrix} + (-1)\begin{vmatrix} 4 & 1 \\ 2 & -3 \end{vmatrix} = 0 - 2 \cdot 2 - (-14) = 10$.
- *Utolsó oszlop szerint* (előjelek $+, -, +$): $(-1)\begin{vmatrix} 4 & 1 \\ 2 & -3 \end{vmatrix} - 3\begin{vmatrix} 0 & 2 \\ 2 & -3 \end{vmatrix} + 2\begin{vmatrix} 0 & 2 \\ 4 & 1 \end{vmatrix} = 14 + 12 - 16 = 10$.
- *Sarrus:* $(0 \cdot 1 \cdot 2 + 2 \cdot 3 \cdot 2 + (-1) \cdot 4 \cdot (-3)) - ((-1) \cdot 1 \cdot 2 + 0 \cdot 3 \cdot (-3) + 2 \cdot 4 \cdot 2) = 24 - 14 = 10$.

**(c) Az általános $3 \times 3$-as determináns.**

- *Sarrus:*
$$x_1y_2z_3 + y_1z_2x_3 + z_1x_2y_3 - z_1y_2x_3 - x_1z_2y_3 - y_1x_2z_3.$$
- *Első sor szerint:* $x_1(y_2z_3 - z_2y_3) - y_1(x_2z_3 - z_2x_3) + z_1(x_2y_3 - y_2x_3)$. Kibontva ugyanaz a hat tag.
- *Utolsó oszlop szerint:* $z_1(x_2y_3 - y_2x_3) - z_2(x_1y_3 - y_1x_3) + z_3(x_1y_2 - y_1x_2)$. Szintén ugyanaz.
- *Gauss:* ha $x_1 \neq 0$, akkor $S_2 \leftarrow S_2 - \frac{x_2}{x_1}S_1$ és $S_3 \leftarrow S_3 - \frac{x_3}{x_1}S_1$ után
$$x_1 \begin{vmatrix} y_2 - \frac{x_2}{x_1}y_1 & z_2 - \frac{x_2}{x_1}z_1 \\ y_3 - \frac{x_3}{x_1}y_1 & z_3 - \frac{x_3}{x_1}z_1 \end{vmatrix} = \frac{1}{x_1}\Big[(x_1y_2 - x_2y_1)(x_1z_3 - x_3z_1) - (x_1z_2 - x_2z_1)(x_1y_3 - x_3y_1)\Big].$$
  Kibontva az $x_1^2$-et nem tartalmazó tagok ($x_2y_1x_3z_1$ kétszer, ellentétes előjellel) kiesnek. $x_1$-gyel osztva a fenti hattagú kifejezést kapjuk. ($x_1 = 0$ esetén először sorcserével kell nem nulla elemet a bal felső sarokba vinni.)

**(d) $\begin{vmatrix} 1 & 2 & 3 & 4 \\ 1 & 2 & 3 & 0 \\ 1 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix} = 24$.**

- *Gauss:* $S_1 \leftarrow S_1 - S_2$, $S_2 \leftarrow S_2 - S_3$, $S_3 \leftarrow S_3 - S_4$, ebben a sorrendben, így mindig még változatlan sort vonunk ki. A sorok: $(0,0,0,4)$, $(0,0,3,0)$, $(0,2,0,0)$, $(1,0,0,0)$. Két sorcsere ($S_1 \leftrightarrow S_4$, $S_2 \leftrightarrow S_3$, előjel $+$) után a determináns $\operatorname{diag}(1, 2, 3, 4)$, értéke $24$.
- *Első sor szerint:* az $M_{11}$, $M_{12}$, $M_{13}$ aldeterminánsok mind 0-k (van csupa 0 soruk vagy oszlopuk). Így a determináns
$$-4\begin{vmatrix} 1 & 2 & 3 \\ 1 & 2 & 0 \\ 1 & 0 & 0 \end{vmatrix} = -4 \cdot (-6) = 24,$$
  ahol a $3 \times 3$-as Sarrus-szabállyal $0 + 0 + 0 - (3 \cdot 2 \cdot 1 + 0 + 0) = -6$.
- *Utolsó oszlop szerint:* egyetlen nem nulla elem, az $a_{14} = 4$, előjele $(-1)^{1+4} = -1$. Ugyanazt kapjuk: $-4 \cdot (-6) = 24$.

**(e) $\begin{vmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{vmatrix} = -1$.**

- *Gauss (sorcserékkel):* $S_1 \leftrightarrow S_3$, majd $S_2 \leftrightarrow S_3$, majd $S_3 \leftrightarrow S_4$ után az egységmátrixot kapjuk. Ez 3 csere, tehát a determináns $(-1)^3 = -1$.
- *Első sor szerint:* csak $a_{12} = 1 \neq 0$, előjele $-$:
$$-\begin{vmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{vmatrix} = -1.$$
  A $3 \times 3$-as Sarrus-szabállyal $1 \cdot 1 \cdot 1 = 1$.
- *Utolsó oszlop szerint:* csak $a_{24} = 1$, előjele $(-1)^{2+4} = +$:
$$\begin{vmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{vmatrix} = -1.$$
  Sarrusszal: egyetlen nem nulla szorzat a mellékátlós irányú $a_{12}a_{21}a_{33} = 1$, negatív előjellel.

(Ez permutációmátrix: a $\begin{pmatrix} 1&2&3&4 \\ 2&4&1&3 \end{pmatrix}$ permutációé, amelynek 3 inverziója van, ezért páratlan.)

::: elmelet
**Elméleti háttér — a determináns kiszámításának módszerei.** (1) **Elemi sorműveletek:** sor többszörösének hozzáadása nem változtat, sorcsere előjelet vált, sor $c$-szerese $c$-vel szorozza a determinánst; háromszögmátrix determinánsa a főátló szorzata. (2) **Kifejtési tétel:** $\det A = \sum_j (-1)^{i+j}a_{ij}M_{ij}$ bármely $i$-edik sor (vagy oszlop) szerint — érdemes a legtöbb nullát tartalmazó sort választani. (3) **Sarrus-szabály** csak $3 \times 3$-asra. Mindhárom ugyanazt adja, mert mindegyik a permutációs definícióból ($\sum_\sigma \operatorname{sgn}\sigma\prod a_{i\sigma(i)}$) vezethető le. Permutációmátrix determinánsa a permutáció előjele.
:::

## 2. feladat

Számítsuk ki az alábbi determinánsokat.
$$\begin{vmatrix} 1 & 1 & \dots & 1 \\ 1 & 2 & \dots & 2 \\ \vdots & \vdots & \ddots & \vdots \\ 1 & 2 & \dots & n \end{vmatrix} \quad \begin{vmatrix} 1 & 1 & \dots & 1 \\ y_1 & y_2 & \dots & y_n \\ \vdots & \vdots & \ddots & \vdots \\ y_1^{n-1} & y_2^{n-1} & \dots & y_n^{n-1} \end{vmatrix} \quad \begin{vmatrix} a & b & \dots & b \\ b & a & \dots & b \\ \vdots & \vdots & \ddots & \vdots \\ b & b & \dots & a \end{vmatrix} \quad \begin{vmatrix} 3 & 1 & 0 & \dots & 0 \\ 1 & 3 & 1 & \ddots & \vdots \\ 0 & 1 & 3 & \ddots & 0 \\ \vdots & \ddots & \ddots & \ddots & 1 \\ 0 & \dots & 0 & 1 & 3 \end{vmatrix}$$

**Megoldás.**

**(a) $\det = 1$.** Az $(i, j)$ elem $\min(i, j)$. Alulról felfelé haladva vonjuk ki minden sorból az előtte levőt: $S_i \leftarrow S_i - S_{i-1}$ ($i = n, n-1, \dots, 2$). Az $i$-edik sor $(0, \dots, 0, 1, \dots, 1)$ lesz, az első $1$ az $i$-edik helyen. Felső háromszögmátrixot kapunk csupa 1 főátlóval, így a determináns $1$.

**(b) Vandermonde-determináns:**
$$V(y_1, \dots, y_n) = \prod_{1 \le i < j \le n} (y_j - y_i).$$
*Bizonyítás $n$ szerinti indukcióval.* $n = 1$-re $1$, ez stimmel. Alulról felfelé vonjuk ki minden sorból az előző sor $y_1$-szeresét: $S_k \leftarrow S_k - y_1 S_{k-1}$ ($k = n, \dots, 2$). Ez nem változtat a determinánson. Az első oszlop $(1, 0, \dots, 0)^T$ lesz, a $j$-edik oszlop $k$-adik eleme ($k \ge 2$) pedig $y_j^{k-1} - y_1 y_j^{k-2} = y_j^{k-2}(y_j - y_1)$. Kifejtve az első oszlop szerint, majd a $j$-edik oszlopból kiemelve $(y_j - y_1)$-et:
$$V(y_1, \dots, y_n) = \prod_{j=2}^n (y_j - y_1) \cdot V(y_2, \dots, y_n),$$
és ebből indukcióval adódik az állítás.

**(c) $\det = (a + (n - 1)b)(a - b)^{n-1}$.**

1. Adjuk az első oszlophoz az összes többit. Az első oszlop minden eleme $a + (n-1)b$ lesz; ezt kiemeljük.
2. Az első oszlop így csupa $1$. Minden további sorból vonjuk ki az első sort.

A $k$-adik sor ($k \ge 2$) $(0, \dots, 0, a - b, 0, \dots, 0)$ lesz, $a - b$ a főátlóban. A kapott háromszögmátrix determinánsa $1 \cdot (a - b)^{n-1}$.

**(d) $D_n = F_{2n+2}$** (Fibonacci-számok, $F_1 = F_2 = 1$). Zárt alakban
$$D_n = \frac{1}{\sqrt5}\left[\left(\frac{3 + \sqrt5}{2}\right)^{n+1} - \left(\frac{3 - \sqrt5}{2}\right)^{n+1}\right].$$
Kifejtés az első sor szerint, majd a második tagban az első oszlop szerint:
$$D_n = 3D_{n-1} - 1 \cdot 1 \cdot D_{n-2}, \qquad D_1 = 3,\ D_2 = 8\ (\text{és } D_0 = 1).$$
Így $D_3 = 21$, $D_4 = 55$, $D_5 = 144$, … A $\lambda^2 - 3\lambda + 1 = 0$ karakterisztikus egyenlet gyökei $\lambda_{1,2} = \frac{3 \pm \sqrt5}{2}$. A kezdőértékekből $D_n = \frac{\lambda_1^{n+1} - \lambda_2^{n+1}}{\lambda_1 - \lambda_2}$, és $\lambda_1 - \lambda_2 = \sqrt5$. Mivel $\lambda_1 = \varphi^2$, $\lambda_2 = \psi^2$ ($\varphi, \psi = \frac{1 \pm \sqrt5}{2}$), a Binet-képlet szerint ez éppen $F_{2n+2}$.

::: elmelet
**Elméleti háttér — speciális determinánsok.** Általános $n \times n$-es determinánsnál a cél sor-/oszlopműveletekkel **háromszög alakot** vagy **rekurziót** kapni. Tipikus fogások: szomszédos sorok kivonása (lépcsős mátrix); minden oszlop összeadása egy oszlopba és a közös tényező kiemelése (ha minden sorösszeg ugyanaz); az előző sor többszörösének kivonása (Vandermonde: indukcióval $\prod_{i<j}(y_j - y_i)$); tridiagonális mátrixnál kifejtés az első sor szerint, ami **másodrendű lineáris rekurziót** ad, amelyet a karakterisztikus egyenlettel oldunk meg.
:::

## 3. feladat

Ha egy $B \in \mathbb{R}^{4 \times 4}$ mátrixra $\det B = 3$, akkor mennyi $\det(B + B + B)$?

**Megoldás.**

$B + B + B = 3B$. Egy $4 \times 4$-es mátrix minden elemét 3-mal szorozva mind a 4 sorából kiemelhetünk egy 3-ast:
$$\det(3B) = 3^4 \det B = 81 \cdot 3 = \mathbf{243}.$$
(Nem $3 \cdot 3 = 9$, és nem $3 \det B$!)

::: elmelet
**Elméleti háttér — a determináns homogenitása.** A determináns minden sorában **lineáris** (multilineáris függvény). Ezért egy sor $c$-szerese a determinánst $c$-szeresére változtatja, és ha mind az $n$ sort $c$-vel szorozzuk, $\det(cA) = c^n\det A$. A determináns nem lineáris a mátrixban, csak soronként!
:::

## 4. feladat (házi feladat)

Számítsuk ki az alábbi $3 \times 3$-as determináns értékét, ha tudjuk, hogy az elemei a bal felső sarokból jobbrafelé olvasva egy számtani sorozatot alkotnak:
$$\begin{vmatrix} a & a + d & a + 2d \\ a + 3d & a + 4d & a + 5d \\ a + 6d & a + 7d & a + 8d \end{vmatrix}.$$

**Megoldás.**

Vonjuk ki az első sort a második és a harmadik sorból:
$$\begin{vmatrix} a & a + d & a + 2d \\ 3d & 3d & 3d \\ 6d & 6d & 6d \end{vmatrix}.$$
A harmadik sor a második kétszerese, tehát **a determináns $0$** (bármely $a$, $d$ esetén).

::: elmelet
**Elméleti háttér — lineárisan összefüggő sorok.** Ha a sorok lineárisan összefüggők (valamelyik sor a többi lineáris kombinációja), a determináns $0$. Sor kivonása egy másikból nem változtatja a determinánst, és ha két arányos sor jön létre, az egyiket a másik többszörösével kinullázhatjuk.
:::

## 5. feladat

Egy $2026 \times 2026$-os determináns minden oszlopa számtani sorozat. Mennyi az értéke?

**Megoldás.**

Legyen a $j$-edik oszlop $c_j, c_j + d_j, c_j + 2d_j, \dots$. Ekkor a sorokra $S_3 - S_2 = S_2 - S_1 = (d_1, \dots, d_{2026})$, azaz
$$S_1 - 2S_2 + S_3 = 0.$$
A sorok lineárisan összefüggők, tehát **a determináns $0$**. (Konkrétan $S_3 \leftarrow S_3 - 2S_2 + S_1$ után csupa 0 sort kapunk. Ehhez legalább 3 sor kell; $2026 \ge 3$.)

::: elmelet
**Elméleti háttér — összefüggés és determináns.** Ha az oszlopok számtani sorozatok, akkor a sorok között **lineáris összefüggés** van ($S_1 - 2S_2 + S_3 = 0$, minden oszlopban a második differencia $0$). Egy sorművelettel csupa nulla sort hozunk létre, így a determináns $0$. ($\det A \ne 0 \iff$ a sorok lineárisan függetlenek.)
:::

## 6. feladat

Egy egész elemű determinánsban minden sorösszeg osztható 13-mal. Igazoljuk, hogy a determináns értéke is osztható 13-mal.

**Megoldás.**

Adjuk az utolsó oszlophoz az összes többi oszlopot; ez nem változtat a determinánson. Az utolsó oszlop $i$-edik eleme az $i$-edik sorösszeg lesz, ami $13k_i$ alakú ($k_i \in \mathbb{Z}$). Ebből az oszlopból kiemelhetjük a 13-at:
$$\det A = 13 \cdot \det A',$$
ahol $A'$ is egész elemű, így $\det A'$ egész (a determináns az elemek szorzatainak előjeles összege). Tehát $13 \mid \det A$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszlopműveletek és egész determináns.** Oszlopok összeadása nem változtatja a determinánst (a determináns a transzponáltra is ugyanaz, tehát oszlopokra is érvényesek a sorszabályok). Ha egy oszlop minden eleme osztható $13$-mal, a $13$ kiemelhető, és a maradék determináns egész, mert **egész elemű mátrix determinánsa egész** (egész számok szorzatainak előjeles összege).
:::

## 7. feladat

Egy 3x3-as determináns egyjegyű számokból áll. Minden oszlopban a három számjegyből felülről lefelé összeolvasott háromjegyű szám osztható 11-gyel. Igazoljuk, hogy a determináns is osztható 11-gyel.

**Megoldás.**

Legyenek a sorok $S_1, S_2, S_3$; a $j$-edik oszlop számjegyei felülről $a_j, b_j, c_j$, és $11 \mid 100a_j + 10b_j + c_j$. Cseréljük $S_3$-at $100 S_1 + 10 S_2 + S_3$-ra. (Más sorok többszörösét adjuk hozzá, így a determináns nem változik.) Az új harmadik sor elemei éppen a $100a_j + 10b_j + c_j$ háromjegyű számok, mind oszthatók 11-gyel. Ebből a sorból kiemelve a 11-et, egész elemű determinánst kapunk, tehát $11 \mid \det$. $\blacksquare$

(Ugyanez mod 11-gyel: $100 \equiv 1$, $10 \equiv -1$, így $a_j - b_j + c_j \equiv 0 \pmod{11}$. Ekkor $S_3 \leftarrow S_1 - S_2 + S_3$ után a harmadik sor minden eleme osztható 11-gyel.)

::: elmelet
**Elméleti háttér — sorok egész kombinációja.** A $S_3 \leftarrow 100S_1 + 10S_2 + S_3$ művelet nem változtatja a determinánst (más sorok többszörösét adjuk hozzá). Az oszlopokban így a számjegyekből összeolvasott számok jelennek meg, amelyek a feltétel szerint oszthatók $11$-gyel, és a $11$ kiemelhető. Ugyanez kongruenciával: a determináns elemenként modulo $11$ számolható ($\det$ polinom az elemekben).
:::

## 8. feladat

Hány inverzió van az alábbi permutációkban, illetve a 'hátulról előre' permutációban?
$$\begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 3 & 1 & 4 & 2 & 8 & 5 & 7 & 6 \end{pmatrix} \quad \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 8 & 2 & 4 & 6 & 1 & 3 & 5 & 7 \end{pmatrix} \quad \begin{pmatrix} a & b & c & d & e \\ b & e & a & c & d \end{pmatrix}$$

**Megoldás.**

Inverzió: olyan $i < j$ pár, amelyre $\sigma(i) > \sigma(j)$. Minden elemhez megszámoljuk, hány nála kisebb áll utána.

- $3\,1\,4\,2\,8\,5\,7\,6$: $3 \to 2$ ($1, 2$), $4 \to 1$, $8 \to 3$ ($5, 7, 6$), $7 \to 1$. **Összesen 7 inverzió** (páratlan).
- $8\,2\,4\,6\,1\,3\,5\,7$: $8 \to 7$, $2 \to 1$, $4 \to 2$, $6 \to 3$. **Összesen 13 inverzió** (páratlan).
- $\begin{pmatrix} a&b&c&d&e \\ b&e&a&c&d \end{pmatrix}$, az $a < b < c < d < e$ sorrenddel ez $2\,5\,1\,3\,4$: $2 \to 1$, $5 \to 3$. **Összesen 4 inverzió** (páros).
- **„Hátulról előre"** ($n, n-1, \dots, 1$): bármely két elem inverzióban áll, így **$\binom n2 = \frac{n(n-1)}{2}$ inverzió**. 8 elemre $28$, 5 elemre $10$.

::: elmelet
**Elméleti háttér — inverziók és a permutáció paritása.** Egy $(i, j)$ pár **inverzió**, ha $i < j$, de $\sigma(i) > \sigma(j)$. A permutáció **előjele** $(-1)^{\text{inverziók száma}}$. Gyors számolás: minden elemhez megszámoljuk, hány nála kisebb áll tőle jobbra. A fordított sorrendben minden pár inverzió: $\binom n2$.
:::

## 9. feladat

Hány inverzió lehet maximum egy 6 elemű halmaz egy páros permutációjában?

**Megoldás.**

6 elemű permutációban legfeljebb $\binom62 = 15$ inverzió lehet, és ez csak a „hátulról előre" permutációban teljesül. A 15 viszont páratlan. 14 inverzió elérhető: $6\,5\,4\,3\,1\,2$ (a két utolsó elem cseréje egy inverziót megszüntet). **A maximum 14.**

::: elmelet
**Elméleti háttér — paritás és szomszédos csere.** Két szomszédos elem cseréje pontosan eggyel változtatja az inverziók számát, tehát a paritást is. A maximális ($\binom n2$ inverziójú) permutációból egy szomszédos csere a paritást megfordítja — ha a maximum rossz paritású, egy cserével megkapjuk a legnagyobb jó paritásút.
:::

## 10. feladat

Adjuk meg a 9. feladatban szereplő és az alábbi permutációk diszjunkt ciklusfelbontását és előjelét:
$$(135)(24)(531)(14), \qquad (1357246)(357)(1357246)^{-1}, \qquad [(12)(13)(14)]^{2026}.$$

**Megoldás.**

A feladatlap a „9. feladatban szereplő" permutációkat említi. Ilyenek csak a 8. feladatban vannak, nyilván azokra gondol.

**A 8. feladat permutációi:**

- $3\,1\,4\,2\,8\,5\,7\,6$: $1 \to 3 \to 4 \to 2 \to 1$, $5 \to 8 \to 6 \to 5$, $7$ fix. Ciklusfelbontás **$(1342)(586)$**. Előjel: a 4-ciklus páratlan, a 3-ciklus páros, tehát **páratlan ($-1$)**; ez egyezik a 7 inverzióval.
- $8\,2\,4\,6\,1\,3\,5\,7$: $1 \to 8 \to 7 \to 5 \to 1$, $3 \to 4 \to 6 \to 3$, $2$ fix. Ciklusfelbontás **$(1875)(346)$**, **páratlan**; 13 inverzió.
- $a \to b \to e \to d \to c \to a$: **$(abedc)$**, 5-ciklus, **páros**; 4 inverzió.

(Egy $k$ hosszú ciklus előjele $(-1)^{k-1}$.)

**A szorzatok.** Jobbról balra komponálunk: a jobb szélső ciklust alkalmazzuk először.

- $(135)(24)(531)(14)$: $1 \xrightarrow{(14)} 4 \xrightarrow{(24)} 2$, $2 \xrightarrow{(24)} 4 \xrightarrow{(135)} 4$, $4 \xrightarrow{(14)} 1 \xrightarrow{(531)} 5 \xrightarrow{(135)} 1$. A 3 és az 5 fix. Eredmény **$(124)$**, **páros**. (Balról jobbra komponálva az inverzét, $(142)$-t kapjuk; az előjel ugyanaz.)
- $(1357246)(357)(1357246)^{-1}$: konjugálás. $\tau\,(357)\,\tau^{-1} = (\tau(3)\ \tau(5)\ \tau(7))$, ahol $\tau = (1357246)$, és $\tau(3) = 5$, $\tau(5) = 7$, $\tau(7) = 2$. Eredmény **$(572) = (257)$**, 3-ciklus, **páros**. (Balról jobbra komponálva $(135)$ jön ki; az előjel ugyanaz.)
- $[(12)(13)(14)]^{2026}$: $(12)(13)(14) = (1432)$, mert $1 \to 4$, $4 \to 3$, $3 \to 2$, $2 \to 1$. Ez 4-ciklus, rendje 4. $2026 = 4 \cdot 506 + 2$, így az eredmény $(1432)^2 =$ **$(13)(24)$**, **páros**. (Balról jobbra komponálva $(1234)$ a szorzat, a négyzete ugyanúgy $(13)(24)$.)

::: elmelet
**Elméleti háttér — ciklusfelbontás, kompozíció, konjugálás.** Minden permutáció egyértelműen felbomlik diszjunkt ciklusok szorzatára (elemeket követve a $\sigma$ szerint, amíg vissza nem érünk). Egy $k$ hosszú ciklus előjele $(-1)^{k-1}$ (ennyi transzpozíció szorzata), az előjel multiplikatív. A kompozíciót a konvenció szerint **jobbról balra** számoljuk. **Konjugálás:** $\tau(a_1 \dots a_k)\tau^{-1} = (\tau(a_1) \dots \tau(a_k))$ — csak „átnevezi” az elemeket, a ciklustípus (és így az előjel) megmarad. Hatványozásnál a ciklus rendjével (hosszával) redukáljuk a kitevőt.
:::
