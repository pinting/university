<!-- Generated file, do not edit! Source: Algebra és számelmélet/Gyakorlat/Megoldások/, regenerate with: make concat -->

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

## 15. feladat

Keressük meg az összes olyan derékszögű háromszöget, amelynek oldalhosszai egész számok, és a területének mérőszáma pontosan megegyezik a kerületének mérőszámával.

**Megoldás.**

Legyenek a derékszögű háromszög befogói $a$ és $b$, átfogója $c$ ($a, b, c \in \mathbb{Z}^+$, feltehető, hogy $a \le b$). A feltétel szerint
$$\frac{ab}{2} = a + b + c \iff ab - 2(a + b) = 2c.$$
Négyzetre emelve mindkét oldalt, és kihasználva a Pitagorasz-tételt ($c^2 = a^2 + b^2$):
$$(ab - 2(a + b))^2 = 4c^2 = 4(a^2 + b^2).$$
Kifejtve a bal oldalt:
$$a^2 b^2 - 4ab(a + b) + 4(a^2 + 2ab + b^2) = 4a^2 + 8ab + 4b^2.$$
Mindkét oldalból kivonva $4a^2 + 8ab + 4b^2$-et:
$$a^2 b^2 - 4ab(a + b) + 8ab = 0.$$
Mivel $a, b > 0$, így $ab \neq 0$, oszthatunk $ab$-vel:
$$ab - 4(a + b) + 8 = 0 \iff ab - 4a - 4b + 8 = 0.$$
Ezt szorzattá alakítva:
$$(a - 4)(b - 4) = 8.$$
Mivel $a \le b$ pozitív egészek, és $a - 4 \le b - 4$, a 8 lehetséges pozitív szorzatfelbontásai:
1. $a - 4 = 1$ és $b - 4 = 8 \implies a = 5$, $b = 12$. Ekkor $c = \sqrt{5^2 + 12^2} = 13$.
   - Kerület: $K = 5 + 12 + 13 = 30$.
   - Terület: $T = \frac{5 \cdot 12}{2} = 30$.
2. $a - 4 = 2$ és $b - 4 = 4 \implies a = 6$, $b = 8$. Ekkor $c = \sqrt{6^2 + 8^2} = 10$.
   - Kerület: $K = 6 + 8 + 10 = 24$.
   - Terület: $T = \frac{6 \cdot 8}{2} = 24$.

Negatív osztópárok nem adnak megoldást, mert $a, b \ge 1$ miatt $a - 4 \ge -3$, így $a - 4$ nem lehet $-4$ vagy $-8$.

(Megjegyzés: Geometriai úton is célhoz érünk: a beírt kör sugara $r = \frac{T}{s} = \frac{2T}{K} = 2$. Derékszögű háromszögben $r = \frac{a+b-c}{2} = 2$, amiből $c = a + b - 4$. Ezt az $a^2 + b^2 = c^2$ egyenletbe helyettesítve szintén az $(a - 4)(b - 4) = 8$ egyenlet adódik.)

**A megoldások: az $(5, 12, 13)$ és a $(6, 8, 10)$ oldalú háromszögek.**

::: elmelet
**Elméleti háttér — egész oldalú háromszögek és diofantoszi egyenletek.** A geometriai feltételek ($T = K$ és $a^2 + b^2 = c^2$) diofantoszi egyenletre vezetnek. Az $ab - 4a - 4b + 8 = 0$ alakú bilineáris egyenletek standard megoldása a szorzattá alakítás: $(a - u)(b - v) = uv - C$, amellyel a probléma véges sok osztópár vizsgálatára redukálódik. Geometriai szempontból a feltétel rögzíti a beírt kör sugarát ($r = T/s = 2$).
:::

## 16. feladat

Igazoljuk, hogy a Nagy Fermat-tétel bizonyításához elegendő belátni, hogy az $x^n + y^n = z^n$ egyenletnek nincs pozitív egész megoldása $n = 4$, valamint $n = p$ esetekben.

**Megoldás.**

A Nagy Fermat-tétel állítása szerint az $x^n + y^n = z^n$ egyenletnek semmilyen $n \ge 3$ egész kitevőre nincsenek $x, y, z \in \mathbb{Z}^+$ megoldásai. (A feladatban $p$ tetszőleges páratlan prímet jelöl, hiszen $p = 2$ esetén végtelen sok pozitív egész megoldás létezik, a pitagoraszi számhármasok.)

Tegyük fel, hogy az állítást már igazoltuk az $n = 4$ esetre, valamint minden $n = p$ páratlan prímre. Legyen $n \ge 3$ egy tetszőleges egész szám. Két eset lehetséges:

1. **$n$-nek van páratlan prímosztója:** Jelölje ezt $p$. Ekkor $n = p \cdot k$ valamely $k \ge 1$ egészre. Ha létezne olyan $(x, y, z)$ pozitív egész számhármas, amelyre $x^n + y^n = z^n$, akkor a hatványozás azonosságai szerint:
$$(x^k)^p + (y^k)^p = (z^k)^p.$$
Legyen $X = x^k$, $Y = y^k$, $Z = z^k$. Mivel $x, y, z \ge 1$ és $k \ge 1$, az $X, Y, Z$ számok szintén pozitív egészek, és kielégítik az $X^p + Y^p = Z^p$ egyenletet. Ez azonban ellentmond annak a feltevésnek, hogy páratlan $p$ prím esetén az egyenletnek nincs pozitív egész megoldása.

2. **$n$-nek nincs páratlan prímosztója:** Mivel $n > 1$, ezért $n$ egyetlen lehetséges prímosztója a 2, vagyis $n = 2^m$ alakú 2-hatvány. Mivel $n \ge 3$, ezért $m \ge 2$, amiből következik, hogy $4 \mid n$. Így $n = 4 \cdot k$ valamely $k \ge 1$ egészre. Ekkor:
$$(x^k)^4 + (y^k)^4 = (z^k)^4,$$
így $X = x^k, Y = y^k, Z = z^k \in \mathbb{Z}^+$ megoldása lenne az $X^4 + Y^4 = Z^4$ egyenletnek. Ez ellentmond annak a feltevésnek, hogy $n = 4$-re sincs pozitív egész megoldás.

Mivel minden $n \ge 3$ egész szám vagy osztható legalább egy páratlan prímmel, vagy osztható 4-gyel, ezért bármely $n \ge 3$ kitevőjű megoldás maga után vonna egy megoldást valamely páratlan prímre vagy 4-re is. Így valóban elegendő ezeket az eseteket igazolni. $\blacksquare$

::: elmelet
**Elméleti háttér — a Nagy Fermat-tétel redukciója.** Ha az $x^n + y^n = z^n$ egyenletnek van megoldása, akkor minden olyan $d$ kitevőre is van, amely osztja $n$-et, hiszen $(x^{n/d})^d + (y^{n/d})^d = (z^{n/d})^d$. Emiatt a megoldhatatlanság az osztókról öröklődik a többszörösökre: elegendő a minimális kitevőkre bizonyítani. Mivel minden $n \ge 3$ szám osztható vagy egy páratlan prímmel, vagy $4$-gyel, a feladat a páratlan prímekre és a 4-re redukálódik.
:::

## 17. feladat

Oldjuk meg a következő szimultán kongruenciarendszert a kínai maradéktétel segítségével:
$$\begin{aligned}
x &\equiv 1 \pmod 4 \\
x &\equiv 2 \pmod 5 \\
x &\equiv 3 \pmod 7
\end{aligned}$$

**Megoldás.**

A modulusok $m_1 = 4$, $m_2 = 5$, $m_3 = 7$ páronként relatív prímek: $(4, 5) = (4, 7) = (5, 7) = 1$. A kínai maradéktétel szerint létezik megoldás, és az egyértelmű modulo $M = 4 \cdot 5 \cdot 7 = 140$.

Alkalmazzuk a kínai maradéktétel standard konstrukcióját:
- $M_1 = \frac{M}{m_1} = \frac{140}{4} = 35$,
- $M_2 = \frac{M}{m_2} = \frac{140}{5} = 28$,
- $M_3 = \frac{M}{m_3} = \frac{140}{7} = 20$.

Meghatározzuk az $M_i y_i \equiv 1 \pmod{m_i}$ inverzeket:
1. $35 y_1 \equiv 1 \pmod 4 \iff 3 y_1 \equiv 1 \pmod 4 \iff -y_1 \equiv 1 \implies y_1 \equiv 3 \pmod 4$.
2. $28 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 6 \implies y_2 \equiv 2 \pmod 5$.
3. $20 y_3 \equiv 1 \pmod 7 \iff 6 y_3 \equiv 1 \pmod 7 \iff -y_3 \equiv 1 \implies y_3 \equiv 6 \pmod 7$.

A megoldás:
$$x_0 = c_1 M_1 y_1 + c_2 M_2 y_2 + c_3 M_3 y_3,$$
ahol $c_1 = 1$, $c_2 = 2$, $c_3 = 3$.
Behelyettesítve az értékeket:
$$x_0 = 1 \cdot 35 \cdot 3 + 2 \cdot 28 \cdot 2 + 3 \cdot 20 \cdot 6 = 105 + 112 + 360 = 577.$$
Modulo 140 redukálva ($577 = 4 \cdot 140 + 17$):
$$x_0 \equiv 17 \pmod{140}.$$

(Ellenőrzés: $17 = 4 \cdot 4 + 1 \equiv 1 \pmod 4$, $17 = 3 \cdot 5 + 2 \equiv 2 \pmod 5$, $17 = 2 \cdot 7 + 3 \equiv 3 \pmod 7$.)

**A megoldás: $x \equiv 17 \pmod{140}$.**

::: elmelet
**Elméleti háttér — kínai maradéktétel.** Ha az $m_1, \dots, m_k$ modulusok páronként relatív prímek, akkor az $x \equiv c_i \pmod{m_i}$ rendszer megoldható, és a megoldás modulo $M = \prod m_i$ egyértelmű. Az $M_i = M/m_i$ számokhoz megkeressük az $M_i y_i \equiv 1 \pmod{m_i}$ inverzeket. Ekkor az $e_i = M_i y_i$ számokra $e_i \equiv 1 \pmod{m_i}$ és $e_i \equiv 0 \pmod{m_j}$ ($j \neq i$), vagyis $x = \sum c_i e_i$ kielégíti a rendszert.
:::

## 18. feladat

Keresd meg azt a legkisebb pozitív egész számot, amely 3-mal osztva 2-t, 5-tel osztva 3-at, 7-tel osztva pedig 2-t ad maradékul.

**Megoldás.**

A feltételek kongruenciákkal felírva:
$$\begin{aligned}
x &\equiv 2 \pmod 3 \\
x &\equiv 3 \pmod 5 \\
x &\equiv 2 \pmod 7
\end{aligned}$$
A modulusok prímek (így páronként relatív prímek), a szorzatuk $M = 3 \cdot 5 \cdot 7 = 105$.

Mivel az első és a harmadik kongruenciában a maradék megegyezik ($x \equiv 2 \pmod 3$ és $x \equiv 2 \pmod 7$), és $(3, 7) = 1$, ez egyenértékű azzal, hogy
$$x \equiv 2 \pmod{21}.$$
Ezért $x = 21k + 2$ valamely $k \in \mathbb{Z}$ egészre. Behelyettesítve a második kongruenciába:
$$21k + 2 \equiv 3 \pmod 5 \iff 1k + 2 \equiv 3 \pmod 5 \iff k \equiv 1 \pmod 5.$$
Így $k = 5t + 1$ ($t \in \mathbb{Z}$), amiből
$$x = 21(5t + 1) + 2 = 105t + 23 \implies x \equiv 23 \pmod{105}.$$

(A standard formulával: $M_1 = 35 \implies y_1 \equiv 2$, $M_2 = 21 \implies y_2 \equiv 1$, $M_3 = 15 \implies y_3 \equiv 1$. Ekkor $x = 2 \cdot 35 \cdot 2 + 3 \cdot 21 \cdot 1 + 2 \cdot 15 \cdot 1 = 140 + 63 + 30 = 233 \equiv 23 \pmod{105}$.)

A legkisebb pozitív egész megoldást a $t = 0$ adja: $x = 23$.

(Ellenőrzés: $23 = 7 \cdot 3 + 2$, $23 = 4 \cdot 5 + 3$, $23 = 3 \cdot 7 + 2$.)

**A legkisebb pozitív egész szám: 23.**

::: elmelet
**Elméleti háttér — szimultán kongruenciák egyszerűsítése.** Ha egy rendszerben két kongruenciának azonos a maradéka ($x \equiv c \pmod{m_1}$ és $x \equiv c \pmod{m_2}$), akkor azok összevonhatók egyetlen $x \equiv c \pmod{[m_1, m_2]}$ kongruenciává. A kapott $x \equiv x_0 \pmod M$ megoldáshalmaz legkisebb pozitív eleme a $0 < x \le M$ feltételnek eleget tevő reprezentáns.
:::

## 19. feladat

Egy kalózhajón a legénység aranypénzeket zsákmányolt. Ha 11 egyenlő részre osztják a kincset, akkor 6 érme marad ki. Ha 13 egyenlő részre osztják, akkor 4 érme marad, ha pedig 17-re, akkor 12. Legalább hány aranypénzt zsákmányoltak?

**Megoldás.**

Jelölje $N$ az aranypénzek számát ($N \in \mathbb{Z}^+$). A szöveg alapján az alábbi szimultán kongruenciarendszert kapjuk:
$$\begin{aligned}
N &\equiv 6 \pmod{11} \\
N &\equiv 4 \pmod{13} \\
N &\equiv 12 \pmod{17}
\end{aligned}$$
A modulusok prímszámok, így páronként relatív prímek. A közös modulus:
$$M = 11 \cdot 13 \cdot 17 = 143 \cdot 17 = 2431.$$

Kiszámítjuk az $M_i = \frac{M}{m_i}$ értékeket és azok inverzeit modulo $m_i$:
1. $M_1 = 13 \cdot 17 = 221$. Mivel $221 = 20 \cdot 11 + 1 \equiv 1 \pmod{11}$, ezért:
   $$1 \cdot y_1 \equiv 1 \pmod{11} \implies y_1 \equiv 1 \pmod{11}.$$
2. $M_2 = 11 \cdot 17 = 187$. Mivel $187 = 14 \cdot 13 + 5 \equiv 5 \pmod{13}$, ezért:
   $$5 y_2 \equiv 1 \pmod{13} \iff 5 y_2 \equiv 40 \pmod{13} \implies y_2 \equiv 8 \pmod{13}.$$
3. $M_3 = 11 \cdot 13 = 143$. Mivel $143 = 8 \cdot 17 + 7 \equiv 7 \pmod{17}$, ezért:
   $$7 y_3 \equiv 1 \pmod{17} \iff 7 y_3 \equiv 35 \pmod{17} \implies y_3 \equiv 5 \pmod{17}.$$

A partikuláris megoldás:
$$N_0 = c_1 M_1 y_1 + c_2 M_2 y_2 + c_3 M_3 y_3 = 6 \cdot 221 \cdot 1 + 4 \cdot 187 \cdot 8 + 12 \cdot 143 \cdot 5.$$
A szorzatok értékei:
$$6 \cdot 221 = 1326,$$
$$4 \cdot 187 \cdot 8 = 4 \cdot 1496 = 5984,$$
$$12 \cdot 143 \cdot 5 = 60 \cdot 143 = 8580.$$
Összegük:
$$N_0 = 1326 + 5984 + 8580 = 15890.$$
Modulo 2431 redukálva ($15890 = 6 \cdot 2431 + 1304$):
$$N \equiv 1304 \pmod{2431}.$$

(Ellenőrzés: $1304 = 118 \cdot 11 + 6$, $1304 = 100 \cdot 13 + 4$, $1304 = 76 \cdot 17 + 12$.)

Mivel pozitív darabszámot keresünk, a legkisebb lehetséges érték az $1304$.

**Legalább 1304 aranypénzt zsákmányoltak.**

::: elmelet
**Elméleti háttér — szöveges feladatok modellezése kongruenciákkal.** Az osztási maradékokra vonatkozó feltételek szimultán kongruenciarendszerként formalizálhatók. Páronként relatív prím modulusok esetén a kínai maradéktétel garantálja az egyértelmű megoldhatóságot modulo $M = \prod m_i$. A valós problémákban a minimális pozitív megoldás a kongruenciaosztály legkisebb pozitív eleme.
:::

## 20. feladat

Oldjuk meg az $x^3 + x + 57 \equiv 0 \pmod{27}$ kongruenciát.

**Megoldás.**

A modulus $27 = 3^3$ prímhatvány. A magasabb fokú prímhatvány modulusú kongruenciákat lépésről lépésre, a prím hatványai szerint felemelve (Hensel-felemeléssel) oldjuk meg. Legyen $f(x) = x^3 + x + 57$.

**1. lépés: Megoldás modulo 3.**
Mivel $57 = 3 \cdot 19 \equiv 0 \pmod 3$, a kongruencia modulo 3:
$$x^3 + x \equiv 0 \pmod 3.$$
A kis Fermat-tétel szerint minden egészre $x^3 \equiv x \pmod 3$, így
$$x^3 + x \equiv x + x = 2x \equiv -x \equiv 0 \pmod 3 \implies x \equiv 0 \pmod 3.$$
(A maradékokat behelyettesítve is látható: $f(0) \equiv 0$, $f(1) \equiv 2$, $f(2) \equiv 1 \pmod 3$, tehát $x \equiv 0 \pmod 3$ az egyetlen megoldás.)

**2. lépés: Felemelés modulo $3^2 = 9$-re.**
Az $x \equiv 0 \pmod 3$ feltétel miatt a megoldást $x = 3t$ alakban keressük ($t \in \{0, 1, 2\}$). Helyettesítsük be az $f(x)$ polinomba modulo 9:
$$f(3t) = (3t)^3 + 3t + 57 = 27t^3 + 3t + 57.$$
Mivel $27t^3 \equiv 0 \pmod 9$ és $57 = 6 \cdot 9 + 3 \equiv 3 \pmod 9$:
$$f(3t) \equiv 3t + 3 \equiv 0 \pmod 9 \iff 3t \equiv -3 \equiv 6 \pmod 9.$$
3-mal osztva a kongruenciát és a modulust is:
$$t \equiv 2 \pmod 3.$$
Tehát modulo 9 egyetlen megoldás van: $x = 3 \cdot 2 = 6$, azaz
$$x \equiv 6 \pmod 9.$$
(Ellenőrzés: $f(6) = 6^3 + 6 + 57 = 216 + 6 + 57 = 279 = 31 \cdot 9 \equiv 0 \pmod 9$.)

**3. lépés: Felemelés modulo $3^3 = 27$-re.**
Az $x \equiv 6 \pmod 9$ miatt a megoldás $x = 6 + 9u$ alakba írható ($u \in \{0, 1, 2\}$).
Kifejtve $f(6 + 9u)$-t modulo 27:
$$(6 + 9u)^3 = 6^3 + 3 \cdot 6^2 \cdot (9u) + 3 \cdot 6 \cdot (9u)^2 + (9u)^3.$$
Mivel $3 \cdot 36 \cdot 9u = 27 \cdot 36 u \equiv 0 \pmod{27}$ és a további tagok a $9^2 = 81$ többszörösei, ezért
$$(6 + 9u)^3 \equiv 6^3 = 216 \equiv 0 \pmod{27} \quad (\text{mivel } 216 = 8 \cdot 27).$$
Így:
$$f(6 + 9u) \equiv 6^3 + (6 + 9u) + 57 \equiv 0 + 9u + 63 \pmod{27}.$$
Mivel $63 = 2 \cdot 27 + 9 \equiv 9 \pmod{27}$:
$$9u + 9 \equiv 0 \pmod{27} \iff 9u \equiv -9 \equiv 18 \pmod{27}.$$
9-cel osztva az egyenletet és a modulust is:
$$u \equiv 2 \pmod 3.$$
Így modulo 27 a megoldás:
$$x = 6 + 9 \cdot 2 = 24 \pmod{27}.$$

(Ellenőrzés: $24 \equiv -3 \pmod{27}$. Kiszámítva: $f(-3) = (-3)^3 + (-3) + 57 = -27 - 3 + 57 = 27 \equiv 0 \pmod{27}$.)

**A megoldás: $x \equiv 24 \pmod{27}$.**

::: elmelet
**Elméleti háttér — kongruenciák megoldása prímhatvány modulusra és a Hensel-lemma.** Egy $f(x) \equiv 0 \pmod{p^k}$ kongruenciát lépésről lépésre oldunk meg: először modulo $p$, majd a kapott gyököket feloldjuk modulo $p^2, p^3, \dots$ hatványokra. Ha $x_0$ megoldás mod $p^j$, akkor a követező lépésben $x = x_0 + t p^j$ alakban keresünk megoldást modulo $p^{j+1}$. A Taylor-fejtés szerint $f(x_0 + t p^j) \equiv f(x_0) + t p^j f'(x_0) \pmod{p^{j+1}}$. Ha $f'(x_0) \not\equiv 0 \pmod p$, a megoldás minden lépésben egyértelműen emelhető fel (Hensel-lemma). Jelen esetben $f'(x) = 3x^2 + 1$, így $f'(0) = 1 \not\equiv 0 \pmod 3$, ami biztosította az egyértelmű felemelést.
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

## 11. feladat

Igazoljuk, hogy $(x_1 \dots x_k) = (x_1 x_2)(x_2 x_3) \dots (x_{k-2} x_{k-1})(x_{k-1} x_k)$.

**Megoldás.**

Jobbról balra komponálunk (a jobb szélső transzpozíciót alkalmazzuk először), és megnézzük, hová viszi a jobb oldal az egyes elemeket. Jelölje $\tau_j = (x_j x_{j+1})$, így a jobb oldal $\tau_1 \tau_2 \cdots \tau_{k-1}$, és először $\tau_{k-1}$ hat.

- **$x_i$, ahol $1 \le i \le k - 1$:** a $\tau_{k-1}, \dots, \tau_{i+1}$ transzpozíciók csak az $x_{i+1}, \dots, x_k$ elemeket mozgatják, így $x_i$-t helyben hagyják. Ezután $\tau_i$ az $x_i$-t $x_{i+1}$-be viszi. A még hátralevő $\tau_{i-1}, \dots, \tau_1$ csak az $x_1, \dots, x_i$ elemeket mozgatják, $x_{i+1}$-et nem. Tehát $x_i \mapsto x_{i+1}$.
- **$x_k$:** $\tau_{k-1}$ az $x_k$-t $x_{k-1}$-be viszi, $\tau_{k-2}$ ezt $x_{k-2}$-be, …, végül $\tau_1$ az $x_2$-t $x_1$-be. Tehát $x_k \mapsto x_1$.
- **Minden más elemet** egyik transzpozíció sem mozdít el, ezek fixek.

Ez pontosan az $x_1 \mapsto x_2 \mapsto \dots \mapsto x_k \mapsto x_1$ ciklus, azaz $(x_1 \dots x_k)$. $\blacksquare$

*Indukcióval is megy:* $k = 2$-re az állítás triviális, és az előzőhöz hasonló követéssel $(x_1 \dots x_{k-1})(x_{k-1} x_k) = (x_1 \dots x_k)$: az $x_{k-1}$ előbb $x_k$-ba megy, amit a $(k-1)$-ciklus fixen hagy; az $x_k$ előbb $x_{k-1}$-be, majd $x_1$-be; a többi $x_i$ pedig $x_{i+1}$-be.

**Következmény.** Egy $k$ hosszú ciklus $k - 1$ transzpozíció szorzata, ezért az előjele $(-1)^{k-1}$. (Balról jobbra komponálva a szorzat a fordított ciklust, $(x_k \dots x_1)$-et adná; ekkor a transzpozíciókat fordított sorrendben kell felírni. Az előjel mindkét konvencióban ugyanaz.)

::: elmelet
**Elméleti háttér — ciklus felbontása transzpozíciókra.** Permutációk szorzatánál egy elem útját követjük a tényezőkön keresztül, a konvenció szerint **jobbról balra** (mint függvénykompozíciónál, $(\sigma\tau)(x) = \sigma(\tau(x))$). Egy $k$-ciklus $k - 1$ szomszédos transzpozícióra bomlik, és mivel minden permutáció diszjunkt ciklusok szorzata, **minden permutáció transzpozíciók szorzata**. A felbontás nem egyértelmű, de a transzpozíciók számának paritása igen; ez adja az előjelet: $\operatorname{sgn}(x_1 \dots x_k) = (-1)^{k-1}$.
:::

## 12. feladat

Mutassuk meg, hogy $f \circ (x_1 \dots x_k) \circ f^{-1} = (f(x_1) \dots f(x_k))$ (itt $f \in S_n$ és $(x_1 \dots x_k)$ egy tetszőleges ciklus $S_n$-ben).

**Megoldás.**

Legyen $\sigma = (x_1 \dots x_k)$, és az indexeket modulo $k$ értjük ($x_{k+1} = x_1$). Mivel $f$ bijekció, az $f(x_1), \dots, f(x_k)$ elemek különbözők, így a jobb oldal valódi $k$-ciklus. Megmutatjuk, hogy a két oldal minden $y \in \{1, \dots, n\}$ elemen ugyanazt adja.

- **Ha $y = f(x_i)$ valamely $i$-re:** $f^{-1}(y) = x_i$, $\sigma(x_i) = x_{i+1}$, tehát
$$(f \circ \sigma \circ f^{-1})(y) = f(x_{i+1}).$$
  A jobb oldal is $f(x_i)$-t $f(x_{i+1})$-be viszi.
- **Ha $y \notin \{f(x_1), \dots, f(x_k)\}$:** akkor $f^{-1}(y) \notin \{x_1, \dots, x_k\}$, ezért $\sigma$ fixen hagyja, és
$$(f \circ \sigma \circ f^{-1})(y) = f(f^{-1}(y)) = y.$$
  A jobb oldal $y$-t szintén fixen hagyja, hiszen nem szerepel a ciklusban.

Tehát $f \circ (x_1 \dots x_k) \circ f^{-1} = (f(x_1) \dots f(x_k))$. $\blacksquare$

**Következmény.** Ha $\pi = c_1 c_2 \cdots c_r$ diszjunkt ciklusok szorzata, akkor
$$f \pi f^{-1} = (f c_1 f^{-1})(f c_2 f^{-1}) \cdots (f c_r f^{-1}),$$
mert a közbülső $f^{-1} f$ tényezők kiesnek. A jobb oldali ciklusok is diszjunktak, mert $f$ injektív. A konjugálás tehát a ciklusok elemeit „átnevezi” $f$ szerint, a **ciklustípust megőrzi**, így az előjelet is. (Ezt használtuk a 10. feladat második szorzatánál.)

::: elmelet
**Elméleti háttér — konjugálás $S_n$-ben.** Az $f \sigma f^{-1}$ permutáció ugyanazt csinálja az $f(x)$ elemekkel, amit $\sigma$ az $x$ elemekkel: „$f$-fel átcímkézzük” a pontokat, alkalmazzuk $\sigma$-t, majd visszacímkézünk. Ezért konjugált permutációk ciklustípusa (a ciklushosszak multihalmaza) azonos, és meg is fordítható: két azonos ciklustípusú permutáció mindig konjugált. Az előjel konjugálásra invariáns, hiszen $\operatorname{sgn}(f\sigma f^{-1}) = \operatorname{sgn} f \cdot \operatorname{sgn} \sigma \cdot \operatorname{sgn} f^{-1} = \operatorname{sgn} \sigma$.
:::

## 13. feladat

Adott a $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 4 & 1 & 3 \end{pmatrix}$ permutáció. Írjuk fel a hozzá tartozó $P_\pi$ permutációs mátrixot (amelynek az $i$-edik sorában a $\pi(i)$-edik oszlopban áll 1-es, máshol 0), majd számítsuk ki a determinánsát. Hogyan kapcsolódik a kapott determináns a permutáció inverziószámához?

**Megoldás.**

$\pi(1) = 2$, $\pi(2) = 4$, $\pi(3) = 1$, $\pi(4) = 3$, tehát
$$P_\pi = \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{pmatrix}.$$
(Ez éppen az 1. feladat (e) részének mátrixa.)

**A determináns: $\det P_\pi = -1$.**

- *A permutációs definícióval:* $\det A = \sum_{\sigma \in S_4} \operatorname{sgn}\sigma \cdot a_{1\sigma(1)} a_{2\sigma(2)} a_{3\sigma(3)} a_{4\sigma(4)}$. A $P_\pi$ mátrixban $a_{i\sigma(i)} = 1$ pontosan akkor, ha $\sigma(i) = \pi(i)$, különben $0$. Így egyetlen nem nulla tag van, a $\sigma = \pi$-hez tartozó, és értéke $\operatorname{sgn}\pi \cdot 1$.
- *Az inverziók:* a $2\,4\,1\,3$ sorban az inverziók $(2, 1)$, $(4, 1)$ és $(4, 3)$, tehát $I(\pi) = 3$, és $\operatorname{sgn}\pi = (-1)^3 = -1$.
- *Ellenőrzés sorcserékkel:* $S_1 \leftrightarrow S_3$, $S_2 \leftrightarrow S_3$, $S_3 \leftrightarrow S_4$ után egységmátrixot kapunk. Ez 3 csere, tehát $\det P_\pi = (-1)^3 \det I = -1$.
- *Ciklusfelbontással:* $\pi = (1243)$, ami 4-ciklus, tehát páratlan.

**A kapcsolat.** Tetszőleges $\pi \in S_n$-re ugyanígy
$$\det P_\pi = \operatorname{sgn}\pi = (-1)^{I(\pi)},$$
ahol $I(\pi)$ az inverziók száma: a determináns $1$, ha $\pi$ páros, és $-1$, ha páratlan.

::: elmelet
**Elméleti háttér — permutációs mátrixok.** A $P_\pi$ mátrix minden sorában és oszlopában pontosan egy $1$-es áll. A determináns permutációs (Leibniz-) definíciójában $\det A = \sum_\sigma \operatorname{sgn}\sigma \prod_i a_{i\sigma(i)}$ minden tag egy „bástyaelhelyezésnek” felel meg (soronként és oszloponként egy elem). $P_\pi$-nél ezek közül egyetlen helyen áll csupa $1$-es, a $\pi$-hez tartozón, így $\det P_\pi = \operatorname{sgn}\pi = (-1)^{I(\pi)}$. Ezért a determináns definíciójában szereplő előjel éppen az inverziószám paritása.
:::

# Algebra és számelmélet – 8. feladatsor – megoldások

Jelölések: az $A$ mátrix $a_{ij}$ eleméhez tartozó **aldetermináns** $M_{ij}$ (az $i$-edik sor és a $j$-edik oszlop elhagyásával kapott $(n-1) \times (n-1)$-es determináns), az **előjeles aldetermináns** $A^*_{ij} = (-1)^{i+j}M_{ij}$. Az egységmátrix $I$ (a Tankönyvben $E$).

## 1. feladat

Az $((a_{ij}))$ négyszer négyes mátrix determinánsának kiszámításakor mi lesz az alábbi tagok előjele: $a_{14}a_{23}a_{32}a_{41}$, $a_{12}a_{21}a_{34}a_{43}$, $a_{23}a_{41}a_{12}a_{34}$?

**Megoldás.**

Minden tagnál a tényezőket a **sorindex szerint** növekvő sorrendbe rendezzük; ekkor az oszlopindexek egy $\pi \in S_4$ permutációt adnak, és a tag előjele $\operatorname{sgn}\pi = (-1)^{I(\pi)}$, ahol $I(\pi)$ az inverziók száma.

- $a_{14}a_{23}a_{32}a_{41}$: a sorindexek már rendezettek, az oszlopindexek $4\,3\,2\,1$. Ez a „hátulról előre” permutáció, minden pár inverzió: $I = \binom42 = 6$. Az előjel **$+$**.
- $a_{12}a_{21}a_{34}a_{43}$: oszlopindexek $2\,1\,4\,3$; inverziók $(2,1)$ és $(4,3)$, $I = 2$. Az előjel **$+$**.
- $a_{23}a_{41}a_{12}a_{34}$: sorindex szerint rendezve $a_{12}a_{23}a_{34}a_{41}$, az oszlopindexek $2\,3\,4\,1$. Inverziók: $(2,1)$, $(3,1)$, $(4,1)$, $I = 3$. Az előjel **$-$**.

(Ellenőrzés ciklusokkal: $4321 = (14)(23)$, két csere, páros; $2143 = (12)(34)$, páros; $2341 = (1234)$, $4$-ciklus, páratlan.)

::: elmelet
**Elméleti háttér — a determináns Leibniz-féle definíciója.** Egy $n \times n$-es mátrix determinánsa
$$\det A = \sum_{\pi \in S_n} \operatorname{sgn}(\pi)\, a_{1\pi(1)}a_{2\pi(2)}\cdots a_{n\pi(n)}.$$
Minden tag soronként és oszloponként pontosan egy elemet tartalmaz („bástyaelhelyezés”), és $n!$ tag van. Egy szorzat tehát pontosan akkor tagja a determinánsnak, ha a sorindexek is, az oszlopindexek is az $1, \dots, n$ számok egy-egy permutációját adják. Az előjel a $\pi$ permutáció paritása: $\operatorname{sgn}\pi = (-1)^{I(\pi)}$. Ha a tényezőket nem sorindex szerint írtuk fel, előbb rendezzük őket (a szorzás kommutatív, a tag értéke nem változik). Ugyanezt kapjuk, ha a sor- és az oszlopindexek permutációjának előjelét szorozzuk össze, ezért a determináns oszlopok szerint rendezve is ugyanaz ($\det A^T = \det A$).
:::

## 2. feladat

Az $5 \times 5$-ös $((a_{ij}))$ determináns harmadik és ötödik oszlopa egyenlő. Az $a_{15}a_{21}a_{33}a_{44}a_{52}$ tagot melyik tag ejti ki biztosan?

**Megoldás.**

**Az $a_{13}a_{21}a_{35}a_{44}a_{52}$ tag** (amely a determinánsban negatív előjellel szerepel).

A tag oszlopindexei $\pi = 5\,1\,3\,4\,2$. Cseréljük fel benne a $3$-as és az $5$-ös oszlopindexet: $\pi' = 3\,1\,5\,4\,2$, ami az $a_{13}a_{21}a_{35}a_{44}a_{52}$ tagot adja.

- *Az értékük egyenlő.* Mivel a 3. és az 5. oszlop egyenlő, minden sorban $a_{i3} = a_{i5}$; így $a_{13} = a_{15}$ és $a_{35} = a_{33}$, tehát
$$a_{13}a_{21}a_{35}a_{44}a_{52} = a_{15}a_{21}a_{33}a_{44}a_{52}.$$
- *Az előjelük ellentétes.* $\pi' = (3\,5) \circ \pi$, egy csere megfordítja a paritást. Konkrétan: $\pi = 51342$ inverziói $(5,1), (5,3), (5,4), (5,2), (3,2), (4,2)$, $I(\pi) = 6$, előjel $+$; $\pi' = 31542$ inverziói $(3,1), (3,2), (5,4), (5,2), (4,2)$, $I(\pi') = 5$, előjel $-$.

A determinánsban tehát $+a_{15}a_{21}a_{33}a_{44}a_{52} - a_{13}a_{21}a_{35}a_{44}a_{52} = 0$: a két tag kiejti egymást, akármilyenek is a mátrix elemei.

::: elmelet
**Elméleti háttér — miért $0$ a determináns, ha két oszlop egyenlő?** Ez az előző gondolatmenet általánosítása. Ha a $k$-adik és az $\ell$-edik oszlop egyenlő, akkor a $\tau = (k\ \ell)$ cserével a $\pi \mapsto \tau \circ \pi$ megfeleltetés párba állítja az $S_n$ elemeit (kétszer alkalmazva visszaadja $\pi$-t, és fixpontja nincs, mert $\tau\pi \ne \pi$). Egy párban a két tag értéke egyenlő (a két oszlop elemei megegyeznek), előjele ellentétes ($\operatorname{sgn}(\tau\pi) = -\operatorname{sgn}\pi$), így a tagok páronként kiejtik egymást, és $\det A = 0$. Ugyanez sorokra is igaz. Ebből következik, hogy sor többszörösének hozzáadása egy másik sorhoz nem változtat a determinánson: a linearitás miatt a változás egy olyan determináns többszöröse, amelynek két sora egyenlő.
:::

## 3. feladat

Egy $n \times n$-es $A$ mátrix determinánsa 5. Mennyi lesz annak a mátrixnak a determinánsa, amelyet úgy kapunk, hogy az $A$ mátrix első két sorát felcseréljük, majd egy harmadik sorát megszorozzuk 3-mal?

**Megoldás.**

**$-15$.** A két sor cseréje előjelet vált: $5 \to -5$. Egy sor $3$-mal való szorzása a determinánst $3$-szorosára változtatja: $-5 \to -15$. (Mindegy, melyik sort szorozzuk $3$-mal; a feladat $n \ge 3$-at feltételez.)

::: elmelet
**Elméleti háttér — elemi sorműveletek hatása a determinánsra.**

| sorművelet | a determináns |
|:--|:--|
| két sor cseréje | $(-1)$-szeresére változik |
| egy sor szorzása $c$-vel | $c$-szeresére változik |
| egy sor többszörösének hozzáadása egy másik sorhoz | nem változik |

Az első a Leibniz-definícióból jön (a csere minden permutáció paritását megfordítja), a második abból, hogy minden tag pontosan egy elemet tartalmaz az adott sorból (a determináns soronként lineáris), a harmadik az előző feladat elméleti hátteréből. Ugyanezek oszlopokra is érvényesek, mert $\det A^T = \det A$.
:::

## 4. feladat

Legyenek $A$ és $B$ olyan $4 \times 4$-es mátrixok, amelyekre $\det A = 2$ és $\det B = 3$. Számítsuk ki az $A^T B^{-1} A^2$ mátrix determinánsát.

**Megoldás.**

**$\frac{8}{3}$.** A szorzástétel, $\det A^T = \det A$ és $\det B^{-1} = \frac{1}{\det B}$ szerint
$$\det(A^T B^{-1} A^2) = \det A^T \cdot \det B^{-1} \cdot (\det A)^2 = 2 \cdot \frac13 \cdot 4 = \frac83.$$
(A $B^{-1}$ létezik, mert $\det B = 3 \ne 0$.)

::: elmelet
**Elméleti háttér — a determinánsok szorzástétele és következményei.** Bármely két $n \times n$-es mátrixra $\det(AB) = \det A \cdot \det B$. Következmények:

- $\det(A^k) = (\det A)^k$ minden $k \ge 0$ egészre;
- ha $A$ invertálható, akkor $AA^{-1} = I$ miatt $\det A \cdot \det A^{-1} = \det I = 1$, tehát $\det A \ne 0$ és $\det(A^{-1}) = \frac{1}{\det A}$ (így $\det(A^{-k}) = (\det A)^{-k}$ is);
- $\det(A^T) = \det A$ (ez nem a szorzástételből, hanem a Leibniz-definícióból következik).

A mátrixszorzás nem kommutatív, a determinánsok szorzata viszont igen: $\det(AB) = \det(BA)$ akkor is, ha $AB \ne BA$.
:::

## 5. feladat

Legyenek $A, B, C$ olyan $n \times n$-es mátrixok, melyekre $\det A = 5$, $\det B = 2$, $\det C = 4$. Mennyi lesz az $A^2 B^3 C^{-1} A^{-2}$ mátrix determinánsa?

**Megoldás.**

**$2$.** A szorzástétel szerint
$$\det(A^2B^3C^{-1}A^{-2}) = 5^2 \cdot 2^3 \cdot \frac14 \cdot \frac{1}{5^2} = \frac{8}{4} = 2.$$
Bár a mátrixok nem feltétlenül felcserélhetők (tehát $A^2$ és $A^{-2}$ a szorzatban nem ejtik ki egymást), a determinánsok számok, ezek szorzatában már igen.

::: elmelet
**Elméleti háttér — miért nem egyszerűsíthetünk a mátrixszorzatban?** Az $A^2B^3C^{-1}A^{-2}$ szorzatban $A^2$ és $A^{-2}$ nem áll egymás mellett, és mivel a mátrixszorzás nem kommutatív, általában $A^2B^3C^{-1}A^{-2} \ne B^3C^{-1}$. A determináns azonban egy **multiplikatív** függvény a mátrixokról a számokra ($\det(XY) = \det X\det Y$), és a számok szorzása kommutatív — ezért a determinánsok szintjén a tényezők sorrendje közömbös. (A mátrix ugyanakkor *hasonló* a $B^3C^{-1}$ mátrixhoz: $A^2(B^3C^{-1})A^{-2}$, és hasonló mátrixok determinánsa egyenlő.)
:::

## 6. feladat

Számítsuk ki az alábbi determináns értékét úgy, hogy a legalkalmasabb sor vagy oszlop szerint fejtjük ki.
$$\begin{vmatrix} 2 & 0 & -1 & 3 \\ 0 & 0 & 4 & 0 \\ 1 & 5 & -2 & 1 \\ 3 & 0 & 0 & -2 \end{vmatrix}$$

**Megoldás.**

**A determináns értéke $260$.**

A **2. oszlopban** és a **2. sorban** is csak egy nem nulla elem áll. Fejtsük ki a 2. oszlop szerint: egyetlen tag marad, az $a_{32} = 5$ elemé, előjele $(-1)^{3+2} = -1$:
$$\det A = 5 \cdot (-1) \cdot \begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix}.$$
A $3 \times 3$-as determinánst a 2. sora szerint fejtjük ki, ahol csak az $4$ nem nulla, előjele $(-1)^{2+2} = +1$:
$$\begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix} = 4 \cdot \begin{vmatrix} 2 & 3 \\ 3 & -2 \end{vmatrix} = 4 \cdot (-4 - 9) = -52.$$
Tehát $\det A = -5 \cdot (-52) = 260$.

*Ellenőrzés más sorrendben.* A 2. sor szerint kifejtve: $a_{23} = 4$, előjele $(-1)^{2+3} = -1$, és
$$\det A = -4\begin{vmatrix} 2 & 0 & 3 \\ 1 & 5 & 1 \\ 3 & 0 & -2 \end{vmatrix} = -4 \cdot 5 \cdot \begin{vmatrix} 2 & 3 \\ 3 & -2 \end{vmatrix} = -4 \cdot 5 \cdot (-13) = 260,$$
ahol a $3 \times 3$-ast a középső oszlop szerint fejtettük ki ($a_{22} = 5$, előjel $+$).

::: elmelet
**Elméleti háttér — a kifejtési tétel (Laplace).** Bármely $i$-edik sorra
$$\det A = \sum_{j=1}^{n} a_{ij}A^*_{ij} = \sum_{j=1}^{n} (-1)^{i+j}a_{ij}M_{ij},$$
és ugyanígy bármely oszlop szerint. Az előjelek sakktáblaszerűen váltakoznak, a bal felső sarokban $+$-szal:
$$\begin{pmatrix} + & - & + & - \\ - & + & - & + \\ + & - & + & - \\ - & + & - & + \end{pmatrix}.$$
A kifejtés egy $n \times n$-es determinánst $n$ darab $(n-1) \times (n-1)$-esre vezet vissza, de a nulla elemekhez tartozó tagok kiesnek. Ezért mindig a **legtöbb nullát tartalmazó** sort vagy oszlopot választjuk; ha nincs elég nulla, előbb sorműveletekkel csinálunk.
:::

## 7. feladat

Írjuk fel a
$$A = \begin{pmatrix} 2 & 1 & 4 \\ 0 & 3 & 5 \\ 0 & 0 & 6 \end{pmatrix}$$
mátrix inverzében a második sor harmadik elemét a ferde kifejtési tétel alapján.

**Megoldás.**

**$(A^{-1})_{23} = -\dfrac{5}{18}$.**

A ferde kifejtési tételből kapott képlet szerint $A^{-1} = \frac{1}{\det A}\operatorname{adj}A$, ahol az adjungált $i$-edik sorának $j$-edik eleme az $a_{ji}$-hez tartozó előjeles aldetermináns (az indexek felcserélődnek!):
$$(A^{-1})_{23} = \frac{A^*_{32}}{\det A}.$$

- $\det A = 2 \cdot 3 \cdot 6 = 36$ (felső háromszögmátrix: a főátló szorzata).
- $A^*_{32} = (-1)^{3+2}M_{32}$, ahol $M_{32}$ a 3. sor és a 2. oszlop elhagyásával kapott determináns:
$$M_{32} = \begin{vmatrix} 2 & 4 \\ 0 & 5 \end{vmatrix} = 10, \qquad A^*_{32} = -10.$$

Így $(A^{-1})_{23} = \frac{-10}{36} = -\frac{5}{18}$.

*Ellenőrzés.* Felső háromszögmátrix inverze is felső háromszögmátrix, a főátlóban $\frac12, \frac13, \frac16$-dal. Az $AA^{-1} = I$ egyenlőség 2. sorát a 3. oszloppal szorozva: $3 \cdot x_{23} + 5 \cdot x_{33} = 0$, és $x_{33} = \frac16$, tehát $x_{23} = -\frac{5}{18}$. ✓

::: elmelet
**Elméleti háttér — a ferde kifejtési tétel és az inverz képlete.** Ha egy sor elemeit nem a saját, hanem egy **másik** sor előjeles aldeterminánsaival szorozzuk és összeadjuk, az eredmény $0$:
$$\sum_{j=1}^{n} a_{ij}A^*_{kj} = 0 \qquad (i \ne k).$$
*Miért?* Ez a kifejtési tétel annak a mátrixnak a $k$-adik sora szerint, amelyet $A$-ból úgy kapunk, hogy a $k$-adik sort az $i$-edikkel helyettesítjük; ennek két sora egyenlő, így a determinánsa $0$. A saját sorral szorozva viszont $\det A$ jön ki. A két állítást egyben felírva: $A \cdot \operatorname{adj}A = \det A \cdot I$, ahol $(\operatorname{adj}A)_{ij} = A^*_{ji}$. Ha tehát $\det A \ne 0$, akkor
$$A^{-1} = \frac{1}{\det A}\operatorname{adj}A, \qquad (A^{-1})_{ij} = \frac{A^*_{ji}}{\det A}.$$
Ez a képlet egyetlen elem kiszámítására különösen kényelmes: nem kell az egész inverzet előállítani.
:::

## 8. feladat

Oldjuk meg a Cramer-szabállyal a $2x + y = 3$, $x - y = 0$ egyenletrendszert.

**Megoldás.**

**$x = 1$, $y = 1$.**

Az együtthatómátrix determinánsa
$$D = \begin{vmatrix} 2 & 1 \\ 1 & -1 \end{vmatrix} = -2 - 1 = -3 \ne 0,$$
tehát egyértelmű megoldás van. A $D_x$, illetve $D_y$ determinánst úgy kapjuk, hogy az 1., illetve a 2. oszlopot a jobb oldal $(3, 0)^T$ vektorára cseréljük:
$$D_x = \begin{vmatrix} 3 & 1 \\ 0 & -1 \end{vmatrix} = -3, \qquad D_y = \begin{vmatrix} 2 & 3 \\ 1 & 0 \end{vmatrix} = -3.$$
Így $x = \frac{D_x}{D} = 1$ és $y = \frac{D_y}{D} = 1$. *Ellenőrzés:* $2 + 1 = 3$, $1 - 1 = 0$. ✓

::: elmelet
**Elméleti háttér — a Cramer-szabály.** Ha az $A\mathbf{x} = \mathbf{b}$ egyenletrendszerben $A$ négyzetes és $\det A \ne 0$, akkor a rendszernek egyetlen megoldása van, és
$$x_i = \frac{\det A_i}{\det A},$$
ahol $A_i$ az $A$-ból az $i$-edik oszlop $\mathbf{b}$-re cserélésével kapott mátrix. *Bizonyítás:* $\mathbf{x} = A^{-1}\mathbf{b} = \frac{1}{\det A}\operatorname{adj}A\,\mathbf{b}$, és ennek $i$-edik koordinátája $\frac{1}{\det A}\sum_k A^*_{ki}b_k$, ami éppen $\det A_i$ kifejtése az $i$-edik oszlop szerint. A szabály elméletileg fontos (képletet ad a megoldásra), nagy rendszereknél azonban a Gauss-elimináció sokkal gyorsabb.
:::

## 9. feladat

Legyen $Q$ egy $n \times n$-es ortogonális mátrix (azaz $Q^T Q = I$, ahol $I$ az egységmátrix). Bizonyítsuk be, hogy a $Q$ determinánsa csak $1$ vagy $-1$ lehet.

**Megoldás.**

Vegyük mindkét oldal determinánsát, és használjuk a szorzástételt, valamint a $\det Q^T = \det Q$ azonosságot:
$$1 = \det I = \det(Q^TQ) = \det Q^T \cdot \det Q = (\det Q)^2.$$
Egy valós szám négyzete pontosan akkor $1$, ha a szám $1$ vagy $-1$. $\blacksquare$

Mindkét érték elő is fordul: $\det I = 1$, és a $\begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$ tükrözés ortogonális, determinánsa $-1$.

::: elmelet
**Elméleti háttér — ortogonális mátrixok.** A $Q^TQ = I$ feltétel azt jelenti, hogy $Q$ oszlopai **ortonormált** rendszert alkotnak (egységhosszúak és páronként merőlegesek), és hogy $Q^{-1} = Q^T$. Az ortogonális mátrixok éppen a távolság- és szögtartó lineáris leképezések (forgatások és tükrözések). A determináns geometriai jelentése az előjeles térfogatváltozás aránya; távolságtartó leképezés nem változtat a térfogaton, ezért $|\det Q| = 1$. A $\det Q = 1$ eset a forgatásoké (irányítástartó), a $\det Q = -1$ a tükrözést is tartalmazóké (irányításváltó).
:::

## 10. feladat

Bizonyítsuk be, hogy ha egy $A$ $n \times n$-es, csupa egész számból álló mátrixnak az inverze is kizárólag egész számokat tartalmaz, akkor $\det A = 1$ vagy $\det A = -1$.

**Megoldás.**

Egész elemű mátrix determinánsa egész szám, hiszen a Leibniz-definíció szerint egész számok szorzatainak $\pm$ előjeles összege. Így $\det A \in \mathbb{Z}$ és $\det A^{-1} \in \mathbb{Z}$. A szorzástétel szerint
$$\det A \cdot \det A^{-1} = \det(AA^{-1}) = \det I = 1.$$
Két egész szám szorzata csak úgy lehet $1$, ha mindkettő $1$ vagy mindkettő $-1$. Tehát $\det A = \pm 1$. $\blacksquare$

*Megjegyzés (a megfordítás).* Ha $A$ egész elemű és $\det A = \pm1$, akkor $A^{-1} = \pm\operatorname{adj}A$, és az adjungált elemei egész elemű aldeterminánsok, tehát egészek. Az egész elemű, egész elemű inverzzel rendelkező mátrixok tehát pontosan a $\pm1$ determinánsú egész mátrixok (ezeket **unimoduláris** mátrixoknak nevezzük).

::: elmelet
**Elméleti háttér — egészség és determináns.** A determináns az elemek egész együtthatós polinomja, ezért egész elemű mátrixé egész. A „két egész szorzata $1$” típusú érvelés az egészek egységeinek ($\pm 1$) meghatározásán alapul: $\mathbb{Z}$-ben csak $1$-nek és $-1$-nek van multiplikatív inverze. Ugyanez a gondolat polinomokra: ha egy polinom-mátrixnak polinom-mátrix az inverze, akkor a determinánsa nem nulla konstans.
:::

## 11. feladat

Legyen $A$ egy $n \times n$-es komplex elemű mátrix, amelyre igaz, hogy $A = -\overline{A}^T$. Mutassuk meg, hogy páratlan $n$ esetén a determináns értéke tisztán képzetes szám vagy nulla.

**Megoldás.**

Számítsuk ki a jobb oldal determinánsát három tulajdonság segítségével:

1. $\det(-M) = (-1)^n\det M$ (mind az $n$ sorból kiemelünk $(-1)$-et);
2. $\det(M^T) = \det M$;
3. $\det(\overline{M}) = \overline{\det M}$, mert a Leibniz-definícióban az elemek szorzatainak összege áll valós ($\pm1$) együtthatókkal, és a konjugálás felcserélhető az összeadással és a szorzással.

Így
$$\det A = \det\big(-\overline{A}^T\big) = (-1)^n\det\big(\overline{A}^T\big) = (-1)^n\det\overline{A} = (-1)^n\,\overline{\det A}.$$
Páratlan $n$-re ez $\det A = -\overline{\det A}$. Ha $\det A = u + vi$ ($u, v \in \mathbb{R}$), akkor $u + vi = -u + vi$, azaz $u = 0$: **a determináns tisztán képzetes vagy nulla**. $\blacksquare$

*Példa.* $n = 1$-re $A = (a)$, és a feltétel $a = -\overline{a}$, vagyis $a$ tisztán képzetes. $n = 3$-ra $A = iI$ teljesíti a feltételt ($-\overline{iI}^T = -(-i)I = iI$), és $\det A = i^3 = -i$.

::: elmelet
**Elméleti háttér — ferdén Hermite-féle mátrixok.** Az $A^* = \overline{A}^T$ az $A$ **adjungáltja** (transzponált konjugáltja). Ha $A^* = A$, a mátrix **Hermite-féle** (önadjungált), ha $A^* = -A$, **ferdén Hermite-féle**. Az előbbi determinánsa mindig valós ($\det A = \overline{\det A}$), az utóbbié páros $n$-re valós, páratlan $n$-re tisztán képzetes. Valós mátrixoknál ez a szimmetrikus, illetve ferdén szimmetrikus ($A^T = -A$) mátrixoknak felel meg, és ugyanez az érvelés azt adja, hogy **páratlan méretű valós ferdén szimmetrikus mátrix determinánsa $0$** (hiszen valós és tisztán képzetes egyszerre).
:::

## 12. feladat

Egy $n \times n$-es determináns kiszámításakor a mátrix minden sorát megfordítjuk. Hogyan változik meg a determináns értéke?

**Megoldás.**

**A determináns $(-1)^{n(n-1)/2}$-szeresére változik**: $n \equiv 0, 1 \pmod 4$ esetén nem változik, $n \equiv 2, 3 \pmod 4$ esetén előjelet vált.

Ha minden sort megfordítunk, az új mátrix $j$-edik oszlopa a régi $(n + 1 - j)$-edik oszlopa: vagyis az oszlopokat a $\rho = \begin{pmatrix} 1 & 2 & \dots & n \\ n & n-1 & \dots & 1 \end{pmatrix}$ permutáció szerint rendeztük át. Ezt az átrendezést szomszédos oszlopcserékkel így érhetjük el: az utolsó oszlopot $n - 1$ cserével előre visszük, majd az (új) utolsót $n - 2$ cserével a második helyre, és így tovább. Összesen
$$(n-1) + (n-2) + \dots + 1 + 0 = \frac{n(n-1)}{2}$$
csere kell, és mindegyik előjelet vált. (Másképp: $\rho$ minden párt megfordít, így $I(\rho) = \binom n2$.)

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $\binom n2$ | 0 | 1 | 3 | 6 | 10 | 15 | 21 | 28 |
| a determináns | marad | $-$ | $-$ | marad | marad | $-$ | $-$ | marad |

Például $n = 2$-re $\begin{vmatrix} b & a \\ d & c \end{vmatrix} = bc - ad = -\begin{vmatrix} a & b \\ c & d \end{vmatrix}$.

::: elmelet
**Elméleti háttér — oszlopok permutálása.** Ha egy mátrix oszlopait a $\sigma$ permutáció szerint rendezzük át, a determináns $\operatorname{sgn}\sigma$-szorosára változik. Ez abból következik, hogy minden permutáció transzpozíciók (sőt szomszédos transzpozíciók) szorzata, és egy csere előjelet vált; a cserék számának paritása pedig egyértelmű ($\operatorname{sgn}\sigma$). A „hátulról előre” permutáció $\binom{n}{2}$ inverziót tartalmaz, előjele $(-1)^{n(n-1)/2}$, ami $n$ szerint $4$-es periódussal $+, -, -, +$.
:::

## 13. feladat (házi feladat)

Bizonyítsuk be a kifejtési tétel segítségével, hogy az alábbi $n \times n$-es úgynevezett tridiagonális determináns értéke éppen $F_{n+1}$, az $(n+1)$-edik Fibonacci-szám.
$$D_n = \begin{vmatrix} 1 & 1 & 0 & \dots & 0 \\ -1 & 1 & 1 & \dots & 0 \\ 0 & -1 & 1 & \dots & 0 \\ \vdots & \vdots & \vdots & \ddots & 1 \\ 0 & 0 & 0 & -1 & 1 \end{vmatrix}$$

**Megoldás.**

(A Fibonacci-számok: $F_1 = F_2 = 1$, $F_{k} = F_{k-1} + F_{k-2}$.) A főátlóban $1$-esek, felette $1$-esek, alatta $-1$-esek állnak, máshol $0$.

**Kezdőértékek.** $D_1 = |1| = 1 = F_2$ és $D_2 = \begin{vmatrix} 1 & 1 \\ -1 & 1 \end{vmatrix} = 1 + 1 = 2 = F_3$.

**Rekurzió ($n \ge 3$).** Fejtsük ki $D_n$-et az **első sor** szerint. Csak az első két elem nem nulla:
$$D_n = 1 \cdot (-1)^{1+1}M_{11} + 1 \cdot (-1)^{1+2}M_{12} = M_{11} - M_{12}.$$

- $M_{11}$: az első sort és oszlopot elhagyva ugyanilyen szerkezetű, $(n-1) \times (n-1)$-es determinánst kapunk, tehát $M_{11} = D_{n-1}$.
- $M_{12}$: az első sort és a második oszlopot elhagyva a megmaradt mátrix első oszlopa (az eredeti első oszlop alsó része) $(-1, 0, \dots, 0)^T$, a jobb alsó $(n-2) \times (n-2)$-es blokk pedig ismét $D_{n-2}$ szerkezetű:
$$M_{12} = \begin{vmatrix} -1 & 1 & 0 & \dots & 0 \\ 0 & 1 & 1 & \dots & 0 \\ 0 & -1 & 1 & \dots & 0 \\ \vdots & \vdots & & \ddots & \vdots \\ 0 & 0 & \dots & -1 & 1 \end{vmatrix}.$$
  Ezt az első oszlop szerint kifejtve: $M_{12} = (-1) \cdot D_{n-2}$.

Így
$$D_n = D_{n-1} - (-D_{n-2}) = D_{n-1} + D_{n-2}.$$

**Indukció.** $D_n$ és $F_{n+1}$ ugyanazt a rekurziót elégíti ki ($F_{n+1} = F_n + F_{n-1}$), és $D_1 = F_2$, $D_2 = F_3$. Erős teljes indukcióval: ha $D_{n-1} = F_n$ és $D_{n-2} = F_{n-1}$, akkor $D_n = F_n + F_{n-1} = F_{n+1}$. Tehát $D_n = F_{n+1}$ minden $n \ge 1$-re. $\blacksquare$

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $D_n$ | 1 | 2 | 3 | 5 | 8 | 13 |

::: elmelet
**Elméleti háttér — tridiagonális determinánsok rekurziója.** Ha egy tridiagonális mátrix főátlójában $a_1, \dots, a_n$, felette $b_1, \dots, b_{n-1}$, alatta $c_1, \dots, c_{n-1}$ áll, akkor az első sor szerinti kifejtés (majd a második tagban az első oszlop szerinti kifejtés) a
$$D_n = a_1 D'_{n-1} - b_1c_1 D''_{n-2}$$
rekurziót adja, ahol $D'$, $D''$ a jobb alsó sarokból kivágott kisebb tridiagonális determinánsok. Állandó átlók esetén ($a_i = a$, $b_ic_i = bc$) ez egy **másodrendű lineáris rekurzió**: $D_n = aD_{n-1} - bc\,D_{n-2}$. Itt $a = 1$, $bc = 1 \cdot (-1) = -1$, így $D_n = D_{n-1} + D_{n-2}$ — a Fibonacci-rekurzió. (A 7. feladatsor 2. feladatában $a = 3$, $bc = 1$ volt, és $D_n = 3D_{n-1} - D_{n-2}$ adódott.) A megoldás egyértelmű, mert egy másodrendű rekurziót az első két tag meghatároz; ezért elég a kezdőértékek egyezését ellenőrizni.
:::

## Házi feladat: az 1. feladatsor 13. feladatának 4. mátrixa

Legyen
$$A = \begin{pmatrix} 1 & -1 & 1 \\ 0 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix}.$$

**A determináns a definíció szerint.** A Leibniz-képletben $3! = 6$ tag van. A páros permutációk ($123$, $231$, $312$) tagjai pozitív, a páratlanok ($132$, $213$, $321$) tagjai negatív előjellel szerepelnek:
$$\begin{aligned}
\det A &= a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33} - a_{13}a_{22}a_{31} \\
&= 1 \cdot 2 \cdot 0 + (-1)(-1) \cdot 2 + 1 \cdot 0 \cdot 1 - 1 \cdot (-1) \cdot 1 - (-1) \cdot 0 \cdot 0 - 1 \cdot 2 \cdot 2 \\
&= 0 + 2 + 0 + 1 - 0 - 4 = -1.
\end{aligned}$$
Ez szó szerint a Sarrus-szabály: a három „főátló irányú” szorzat a páros, a három „mellékátló irányú” a páratlan permutációké.

**A determináns kifejtési tétellel** (az első oszlop szerint, ahol egy nulla van):
$$\det A = 1 \cdot \begin{vmatrix} 2 & -1 \\ 1 & 0 \end{vmatrix} - 0 + 2 \cdot \begin{vmatrix} -1 & 1 \\ 2 & -1 \end{vmatrix} = 1 \cdot 1 + 2 \cdot (1 - 2) = -1.$$

**Az inverz a ferde kifejtési tételből** ($A^{-1} = \frac{1}{\det A}\operatorname{adj}A$). Az előjeles aldeterminánsok:
$$\begin{aligned}
A^*_{11} &= +\begin{vmatrix} 2 & -1 \\ 1 & 0 \end{vmatrix} = 1, & A^*_{12} &= -\begin{vmatrix} 0 & -1 \\ 2 & 0 \end{vmatrix} = -2, & A^*_{13} &= +\begin{vmatrix} 0 & 2 \\ 2 & 1 \end{vmatrix} = -4, \\
A^*_{21} &= -\begin{vmatrix} -1 & 1 \\ 1 & 0 \end{vmatrix} = 1, & A^*_{22} &= +\begin{vmatrix} 1 & 1 \\ 2 & 0 \end{vmatrix} = -2, & A^*_{23} &= -\begin{vmatrix} 1 & -1 \\ 2 & 1 \end{vmatrix} = -3, \\
A^*_{31} &= +\begin{vmatrix} -1 & 1 \\ 2 & -1 \end{vmatrix} = -1, & A^*_{32} &= -\begin{vmatrix} 1 & 1 \\ 0 & -1 \end{vmatrix} = 1, & A^*_{33} &= +\begin{vmatrix} 1 & -1 \\ 0 & 2 \end{vmatrix} = 2.
\end{aligned}$$
Az adjungált ezek mátrixának **transzponáltja**, így
$$A^{-1} = \frac{1}{-1}\begin{pmatrix} 1 & 1 & -1 \\ -2 & -2 & 1 \\ -4 & -3 & 2 \end{pmatrix} = \begin{pmatrix} -1 & -1 & 1 \\ 2 & 2 & -1 \\ 4 & 3 & -2 \end{pmatrix}.$$
*Ellenőrzés:* $AA^{-1}$ első sora $(1 \cdot (-1) - 2 + 4,\ -1 - 2 + 3,\ 1 + 1 - 2) = (1, 0, 0)$, második sora $(0 + 4 - 4,\ 0 + 4 - 3,\ 0 - 2 + 2) = (0, 1, 0)$, harmadik sora $(-2 + 2 + 0,\ -2 + 2 + 0,\ 2 - 1 + 0) = (0, 0, 1)$. ✓

::: elmelet
**Elméleti háttér — három út ugyanahhoz a determinánshoz.** A Leibniz-definíció $n!$ tagú összeg; $n = 3$-ra a hat tag éppen a Sarrus-szabály hat szorzata (ezért a Sarrus-szabály $4 \times 4$-esre már nem működik: ott $24$ tag van, nem $8$). A kifejtési tétel ugyanezt a hat tagot csoportosítja: az első oszlop szerinti kifejtésben az $a_{i1}$-et tartalmazó két tag alkotja az $a_{i1}A^*_{i1}$ szorzatot. Az inverz képlete a ferde kifejtési tételen múlik: $A\cdot\operatorname{adj}A = \det A \cdot I$. Gyakorlati számolásra $3 \times 3$-nál nagyobb mátrixokra a Gauss–Jordan-elimináció a gyorsabb, de egy-egy elem (7. feladat) vagy paraméteres mátrix inverzéhez a képlet a jobb.
:::

# Algebra és számelmélet – 9. feladatsor – megoldások

Jelölések és alapfogalmak:
- Egy $v_1, \dots, v_k \in V$ vektorrendszer **lineáris kombinációja** a $c_1 v_1 + \dots + c_k v_k$ vektor ($c_i \in \mathbb{R}$).
- A rendszer **lineárisan független**, ha a $c_1 v_1 + \dots + c_k v_k = 0$ egyenlőségből szükségképpen $c_1 = \dots = c_k = 0$ következik (a nullvektor csak a triviális módon áll elő). Ellenkező esetben a rendszer **lineárisan összefüggő**.
- Egy $A \in \mathbb{R}^{m \times n}$ mátrix **sorrangja** ($\operatorname{rang}_{\text{sor}}(A)$) a sorvektorai által alkotott rendszer rangja; **oszloprangja** ($\operatorname{rang}_{\text{oszlop}}(A)$) az oszlopvektorai által alkotott rendszer rangja. A rangtétel szerint $\operatorname{rang}_{\text{sor}}(A) = \operatorname{rang}_{\text{oszlop}}(A) = \operatorname{rang}(A)$.

## 1. feladat

Lineárisan függetlenek-e az alábbi mátrixok oszlop-, illetve sorvektorai? Határozzuk meg a mátrixok sor-, illetve oszloprangját, és mindegyik esetben adjunk meg egy maximális lineárisan független oszloprendszert.
$$\begin{pmatrix} 0 & 2 & 0 \\ 3 & 0 & 0 \\ 0 & 0 & 4 \end{pmatrix} \quad \begin{pmatrix} 1 & 1 & 1 \\ 2 & 2 & 2 \\ -1 & -1 & -1 \end{pmatrix} \quad \begin{pmatrix} 1 & 0 & 2 \\ 0 & 1 & -1 \\ 1 & 1 & 1 \end{pmatrix} \quad \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 4 \\ 0 & 0 & 1 \end{pmatrix}$$

**Megoldás.**

Jelöljük az egyes mátrixok oszlopvektorait $o_1, o_2, o_3$-mal, sorvektorait $s_1, s_2, s_3$-mal.

**(a) $A_1 = \begin{pmatrix} 0 & 2 & 0 \\ 3 & 0 & 0 \\ 0 & 0 & 4 \end{pmatrix}$**

- **Sorrang és oszloprang:** $\operatorname{rang}(A_1) = 3$.
- **Függetlenség:** Mind a sorvektorok, mind az oszlopvektorok **lineárisan függetlenek**.
- **Maximális független oszloprendszer:** Mindhárom oszlopvektor:
  $$\{o_1, o_2, o_3\} = \left\{ \begin{pmatrix} 0 \\ 3 \\ 0 \end{pmatrix}, \begin{pmatrix} 2 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 0 \\ 4 \end{pmatrix} \right\}.$$

*Indoklás:*
A determináns a harmadik sor (vagy oszlop) szerint kifejtve:
$$\det(A_1) = 4 \cdot (0 \cdot 0 - 2 \cdot 3) = -24 \ne 0.$$
Mivel egy $3 \times 3$-as mátrix determinánsa nem nulla, a mátrix teljes rangú: sorrangja és oszloprangja is $3$. Mivel a sorok (és oszlopok) száma $3$, és a rangjuk $3$, a sorvektorok és az oszlopvektorok is lineárisan függetlenek. Bármely $3$ elemű független részrendszer maximális, így maga a három oszlopból álló rendszer az.

**(b) $A_2 = \begin{pmatrix} 1 & 1 & 1 \\ 2 & 2 & 2 \\ -1 & -1 & -1 \end{pmatrix}$**

- **Sorrang és oszloprang:** $\operatorname{rang}(A_2) = 1$.
- **Függetlenség:** Sem a sorvektorok, sem az oszlopvektorok **nem függetlenek** (mindkettő lineárisan összefüggő).
- **Maximális független oszloprendszer:** Bármelyik egyetlen nem nulla oszlopvektor, például:
  $$\{o_1\} = \left\{ \begin{pmatrix} 1 \\ 2 \\ -1 \end{pmatrix} \right\}.$$

*Indoklás:*
Mindhárom oszlopvektor azonos: $o_1 = o_2 = o_3 = (1, 2, -1)^T \ne 0$. Két azonos vektor már összefüggő rendszert alkot ($o_1 - o_2 = 0$), így az oszlopvektorok összefüggők. Az oszlopok által kifeszített tér $1$-dimenziós (a közös oszlop számszorosai), így az oszloprang $1$.
Hasonlóan a sorvektorokra: $s_1 = (1, 1, 1)$, $s_2 = 2s_1$, $s_3 = -s_1$, tehát a sorok egymás skalárszorosai, a sorrang $1$, és a sorvektorok lineárisan összefüggők.
Egy maximális független oszloprendszer pontosan $\operatorname{rang}(A_2) = 1$ független vektorból áll, így bármelyik egyetlen nem nulla oszlop megfelelő.

**(c) $A_3 = \begin{pmatrix} 1 & 0 & 2 \\ 0 & 1 & -1 \\ 1 & 1 & 1 \end{pmatrix}$**

- **Sorrang és oszloprang:** $\operatorname{rang}(A_3) = 2$.
- **Függetlenség:** Sem a sorvektorok, sem az oszlopvektorok **nem függetlenek** (mindkettő lineárisan összefüggő).
- **Maximális független oszloprendszer:** Bármely két oszlopvektor, például:
  $$\{o_1, o_2\} = \left\{ \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} \right\}.$$

*Indoklás:*
Végezzünk Gauss-eliminációt a sorokon: $S_3 \leftarrow S_3 - S_1$:
$$\begin{pmatrix} 1 & 0 & 2 \\ 0 & 1 & -1 \\ 0 & 1 & -1 \end{pmatrix} \xrightarrow{S_3 \leftarrow S_3 - S_2} \begin{pmatrix} 1 & 0 & 2 \\ 0 & 1 & -1 \\ 0 & 0 & 0 \end{pmatrix}.$$
A lépcsős alakban 2 darab nem nulla sor van, így a sorrang $\operatorname{rang}_{\text{sor}}(A_3) = 2$. A rangtétel szerint az oszloprang is $2$.
Mivel a sorok és az oszlopok száma $3 > 2$, a 3 sorvektor és a 3 oszlopvektor is lineárisan összefüggő.
Konkrét összefüggések:
- Sorokra: $s_1 + s_2 = (1, 1, 1) = s_3$, azaz $s_1 + s_2 - s_3 = 0$.
- Oszlopokra: $2o_1 - o_2 = 2(1, 0, 1)^T - (0, 1, 1)^T = (2, -1, 1)^T = o_3$, azaz $2o_1 - o_2 - o_3 = 0$.
Mivel $o_1$ és $o_2$ nem skalárszorosai egymásnak (az első koordináták $1$ és $0$), ők ketten független rendszert alkotnak, amelynek elemszáma megegyezik a ranggal ($2$), így maximális lineárisan független oszloprendszert adnak (ugyanígy jó az $\{o_1, o_3\}$ vagy $\{o_2, o_3\}$ pár is).

**(d) $A_4 = \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 4 \\ 0 & 0 & 1 \end{pmatrix}$**

- **Sorrang és oszloprang:** $\operatorname{rang}(A_4) = 3$.
- **Függetlenség:** Mind a sorvektorok, mind az oszlopvektorok **lineárisan függetlenek**.
- **Maximális független oszloprendszer:** Mindhárom oszlopvektor:
  $$\{o_1, o_2, o_3\} = \left\{ \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 2 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 3 \\ 4 \\ 1 \end{pmatrix} \right\}.$$

*Indoklás:*
A mátrix felső háromszög alakú, a főátlójában csupa nem nulla elem áll ($1, 1, 1$). Determinánsa a főátlóbeli elemek szorzata: $\det(A_4) = 1 \cdot 1 \cdot 1 = 1 \ne 0$.
Ezért a mátrix invertálható, rangja maximális: $\operatorname{rang}(A_4) = 3$. A három sorvektor és a három oszlopvektor egyaránt lineárisan független, és a maximális független oszloprendszer maga az egész $\{o_1, o_2, o_3\}$ rendszer.

::: elmelet
**Elméleti háttér — sorrang, oszloprang és lépcsős alak.** Egy $m \times n$-es mátrix oszlopvektorai által generált alteret az oszloptérnek, a sorvektorai által generált alteret a sortérnek nevezzük. A **rangtétel** (Frobenius) kimondja, hogy a sortér dimenziója (sorrang) mindig megegyezik az oszloptér dimenziójával (oszloprang). Négyzetes $n \times n$-es mátrix esetén a rang pontosan akkor $n$, ha $\det A \ne 0$. Ha a rang $r < n$, akkor mind a sor-, mind az oszlopvektorok összefüggők. Egy oszloprendszerből maximális független részrendszert a lépcsős alak vezérelemeinek (pivotjainak) oszlopaival választhatunk ki az eredeti mátrixból.
:::

## 2. feladat (házi feladat)

Döntsük el, hogy a $v_1 = (1, 2, 3)$, $v_2 = (0, 1, 1)$ és $v_3 = (1, 3, 4)$ vektorok lineárisan függetlenek-e $\mathbb{R}^3$-ben.

**Megoldás.**

A vektorok **lineárisan összefüggők** (nem függetlenek).

*1. megoldás — közvetlen észrevétel (lineáris kombináció).*
Figyeljük meg a vektorok koordinátáit:
$$v_1 + v_2 = (1 + 0,\ 2 + 1,\ 3 + 1) = (1, 3, 4) = v_3.$$
Átrendezve:
$$1 \cdot v_1 + 1 \cdot v_2 - 1 \cdot v_3 = (0, 0, 0).$$
Létezik tehát olyan nullakombináció, amelyben nem minden együttható nulla (itt $c_1 = 1, c_2 = 1, c_3 = -1$), ami a definíció szerint azt jelenti, hogy a rendszer **lineárisan összefüggő**.

*2. megoldás — determinánssal.*
Írjuk a vektorokat egy $3 \times 3$-as mátrix soraiba (vagy oszlopaiba):
$$M = \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 1 \\ 1 & 3 & 4 \end{pmatrix}.$$
Számítsuk ki a determinánst Sarrus-szabállyal vagy az első oszlop szerinti kifejtéssel:
$$\det M = 1 \cdot \begin{vmatrix} 1 & 1 \\ 3 & 4 \end{vmatrix} - 0 + 1 \cdot \begin{vmatrix} 2 & 3 \\ 1 & 1 \end{vmatrix} = 1 \cdot (4 - 3) + 1 \cdot (2 - 3) = 1 - 1 = 0.$$
Mivel három vektor $\mathbb{R}^3$-ben pontosan akkor lineárisan független, ha az általuk alkotott mátrix determinánsa nem nulla, a $\det M = 0$ eredmény azt mutatja, hogy a vektorok **lineárisan összefüggők**.

*3. megoldás — Gauss-eliminációval.*
$$M = \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 1 \\ 1 & 3 & 4 \end{pmatrix} \xrightarrow{S_3 \leftarrow S_3 - S_1} \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 1 \\ 0 & 1 & 1 \end{pmatrix} \xrightarrow{S_3 \leftarrow S_3 - S_2} \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 1 \\ 0 & 0 & 0 \end{pmatrix}.$$
A lépcsős alakban megjelent egy csupa nulla sor, így a rang $2 < 3$, a vektorrendszer összefüggő.

::: elmelet
**Elméleti háttér — függetlenség vizsgálata $\mathbb{R}^n$-ben.** $n$ darab $n$-dimenziós vektor $\{v_1, \dots, v_n\} \subset \mathbb{R}^n$ esetén az alábbiak ekvivalensek:
1. A vektorok lineárisan függetlenek;
2. Bázist alkotnak $\mathbb{R}^n$-ben;
3. Az általuk oszlop- vagy sorként alkotott mátrix determinánsa nem nulla ($\det M \ne 0$);
4. A mátrix rangja $n$ (a Gauss-elimináció után nincs nulla sor).
Ha kevesebb vagy több vektorunk van, a determináns közvetlenül nem alkalmazható: $k > n$ esetén a vektorok mindig összefüggők (a skatulyaelv vektortéri megfelelője), $k < n$ esetén pedig a rang lépcsős alakkal vagy a definíció szerinti egyenletrendszerrel határozható meg.
:::

## 3. feladat

Legyenek adottak a következő vektorok $\mathbb{R}^3$-ben: $u_1 = (1, -1, 0)$, $u_2 = (2, 0, 1)$, $u_3 = (0, 2, 1)$ és $u_4 = (3, -1, 1)$. Adjunk meg ezen vektorok egy maximális lineárisan független részrendszerét.

**Megoldás.**

Egy maximális lineárisan független részrendszer például:
$$\{u_1, u_2\} = \{(1, -1, 0), (2, 0, 1)\}.$$
*(A rendszer rangja $2$; a négy vektor közül bármely két különböző vektor maximális független részrendszert alkot.)*

*Részletes indoklás és levezetés:*
Először is $\mathbb{R}^3$-ben 4 vektor szükségképpen összefüggő, hiszen a tér dimenziója 3. Határozzuk meg a vektorrendszer rangját úgy, hogy a vektorokat sorként egy mátrixba írjuk, és Gauss-eliminációt végzünk:
$$M = \begin{pmatrix} 1 & -1 & 0 \\ 2 & 0 & 1 \\ 0 & 2 & 1 \\ 3 & -1 & 1 \end{pmatrix}.$$
Hajtsuk végre a sorműveleteket:
- $S_2 \leftarrow S_2 - 2S_1$: $(2, 0, 1) - 2(1, -1, 0) = (0, 2, 1)$.
- $S_4 \leftarrow S_4 - 3S_1$: $(3, -1, 1) - 3(1, -1, 0) = (0, 2, 1)$.

A mátrix ekkor:
$$\begin{pmatrix} 1 & -1 & 0 \\ 0 & 2 & 1 \\ 0 & 2 & 1 \\ 0 & 2 & 1 \end{pmatrix}.$$
Most $S_3 \leftarrow S_3 - S_2$ és $S_4 \leftarrow S_4 - S_2$ műveletekkel:
$$\begin{pmatrix} 1 & -1 & 0 \\ 0 & 2 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}.$$
A lépcsős alakban pontosan **két nem nulla sor** maradt. Ez azt jelenti, hogy:
$$\operatorname{rang}(u_1, u_2, u_3, u_4) = 2.$$
Minden maximális lineárisan független részrendszer pontosan $2$ vektorból áll.

Fejezzük ki a megmaradó vektorokat az $u_1, u_2$ segítségével a sorműveletekből:
1. $u_3 = (0, 2, 1) = S_2 - 2S_1 = u_2 - 2u_1$.
   Valóban: $u_2 - 2u_1 = (2, 0, 1) - (2, -2, 0) = (0, 2, 1) = u_3$.
2. $u_4 = (3, -1, 1) = S_4 = 3S_1 + (S_2 - 2S_1) = S_1 + S_2 = u_1 + u_2$.
   Valóban: $u_1 + u_2 = (1, -1, 0) + (2, 0, 1) = (3, -1, 1) = u_4$.

Mivel $u_1$ és $u_2$ nem párhuzamosak (nem egymás skalárszorosai), $\{u_1, u_2\}$ független rendszer. Mivel $u_3$ és $u_4$ is felírható $u_1$ és $u_2$ lineáris kombinációjaként, hozzájuk már sem $u_3$, sem $u_4$ nem vehető hozzá a függetlenség elvesztése nélkül. Tehát $\{u_1, u_2\}$ **maximális lineárisan független részrendszer**.

*(Megjegyzés: Mivel semelyik két vektor nem párhuzamos egymással, a $\binom42 = 6$ darab lehetséges vektorpár mindegyike — $\{u_1, u_2\}$, $\{u_1, u_3\}$, $\{u_1, u_4\}$, $\{u_2, u_3\}$, $\{u_2, u_4\}$, $\{u_3, u_4\}$ — 2 elemű független részrendszert alkot, így bármelyik megadható.)*

::: elmelet
**Elméleti háttér — maximális független részrendszer és bázis.** Egy $S = \{v_1, \dots, v_k\}$ vektorrendszer egy $S' \subseteq S$ részrendszere **maximális lineárisan független részrendszer**, ha $S'$ lineárisan független, de bármely $v \in S \setminus S'$ vektort hozzáadva az $S' \cup \{v\}$ rendszer már lineárisan összefüggővé válik.
Fontos tételek:
1. Egy vektorrendszer minden maximális lineárisan független részrendszere **ugyanannyi elemet tartalmaz**; ez a közös elemszám a rendszer **rangja**, ami megegyezik a generált altér dimenziójával: $|S'| = \operatorname{rang}(S) = \dim(\operatorname{span}(S))$.
2. $S'$ pontosan akkor maximális független részrendszer $S$-ben, ha független és generálja $S$-et: $\operatorname{span}(S') = \operatorname{span}(S)$ (azaz $S'$ bázis az $S$ által generált altérben).
:::

## 4. feladat

Igazoljuk az alábbi állításokat a lineáris függetlenséggel kapcsolatban.

(1) Ha egy vektorrendszer tartalmaz két azonos vektort, akkor lineárisan összefüggő.

(2) Ha a $\{v_1, v_2, v_3\}$ vektorrendszer lineárisan független, akkor a $\{v_1 + v_2, v_2 + v_3, v_3 + v_1\}$ rendszer is lineárisan független.

(3) Ha a $\{v_1, v_2, \ldots, v_k\}$ rendszer lineárisan összefüggő, akkor bármilyen $u$ vektorra a $\{v_1, v_2, \ldots, v_k, u\}$ rendszer is összefüggő marad.

**Megoldás.**

**(1) Bizonyítás.**
Legyen a vektorrendszer $\{v_1, v_2, \dots, v_k\}$, és tegyük fel, hogy $v_i = v_j$ valamely $i \ne j$ indexekre.
Állítsuk elő a nullvektort a rendszer elemeinek alábbi lineáris kombinációjával:
$$1 \cdot v_i + (-1) \cdot v_j + \sum_{\substack{m=1 \\ m \ne i, j}}^k 0 \cdot v_m = v_i - v_j = 0.$$
Ebben a kombinációban a $v_i$ együtthatója $1 \ne 0$ (és a $v_j$ együtthatója $-1 \ne 0$), a többi együttható $0$. Találtunk tehát olyan nemtriviális (nem csupa nulla) együtthatójú lineáris kombinációt, amely a nullvektort adja.
A definíció szerint a vektorrendszer **lineárisan összefüggő**. $\blacksquare$

**(2) Bizonyítás.**
Legyenek $w_1 = v_1 + v_2$, $w_2 = v_2 + v_3$, $w_3 = v_3 + v_1$.
Tegyük fel, hogy a $w_1, w_2, w_3$ vektorok egy lineáris kombinációja a nullvektort adja:
$$c_1 w_1 + c_2 w_2 + c_3 w_3 = 0 \quad (c_1, c_2, c_3 \in \mathbb{R}).$$
Helyettesítsük be a $w_i$ vektorok definícióját:
$$c_1(v_1 + v_2) + c_2(v_2 + v_3) + c_3(v_3 + v_1) = 0.$$
Bontsuk fel a zárójeleket, és csoportosítsuk a tagokat az eredeti $v_1, v_2, v_3$ vektorok szerint:
$$(c_1 + c_3)v_1 + (c_1 + c_2)v_2 + (c_2 + c_3)v_3 = 0.$$
Mivel a feltevés szerint $\{v_1, v_2, v_3\}$ **lineárisan független**, a nullvektort csak úgy adhatják ki, ha mindhárom együttható nulla:
$$\begin{cases}
c_1 + c_3 = 0 \\
c_1 + c_2 = 0 \\
c_2 + c_3 = 0
\end{cases}$$
Az első két egyenletből $c_3 = -c_1$ és $c_2 = -c_1$. Ezt behelyettesítve a harmadik egyenletbe:
$$(-c_1) + (-c_1) = 0 \implies -2c_1 = 0 \implies c_1 = 0.$$
Ebből következik, hogy $c_2 = -0 = 0$ és $c_3 = -0 = 0$.
Tehát a $c_1 w_1 + c_2 w_2 + c_3 w_3 = 0$ egyenlőség csak a triviális $c_1 = c_2 = c_3 = 0$ esetben teljesülhet.
Ez azt bizonyítja, hogy a $\{v_1 + v_2, v_2 + v_3, v_3 + v_1\}$ rendszer **lineárisan független**. $\blacksquare$

*(Mátrixos megjegyzés: a transzformáció mátrixa $\begin{pmatrix} 1 & 0 & 1 \\ 1 & 1 & 0 \\ 0 & 1 & 1 \end{pmatrix}$, melynek determinánsa $1 \cdot 1 + 1 \cdot 1 = 2 \ne 0$, így a leképezés invertálható. Érdekesség, hogy $2$ karakterisztikájú test felett a determináns $2 = 0$, és ott a rendszer valóban összefüggő: $w_1 + w_2 + w_3 = 2(v_1 + v_2 + v_3) = 0$. $\mathbb{R}$ felett viszont független.)*

**(3) Bizonyítás.**
Mivel a $\{v_1, v_2, \ldots, v_k\}$ rendszer lineárisan összefüggő, léteznek olyan $c_1, c_2, \dots, c_k$ skalárok, amelyek **nem mindegyike nulla**, és amelyekre:
$$c_1 v_1 + c_2 v_2 + \cdots + c_k v_k = 0.$$
Egészítsük ki ezt a kombinációt a hozzáadott $u$ vektorral úgy, hogy annak együtthatóját $0$-nak választjuk:
$$c_1 v_1 + c_2 v_2 + \cdots + c_k v_k + 0 \cdot u = 0 + 0 = 0.$$
Ebben a kibővített rendszerre vonatkozó lineáris kombinációban az együtthatók sorozata $(c_1, c_2, \dots, c_k, 0)$. Mivel a feltétel szerint $c_1, \dots, c_k$ között van legalább egy nem nulla érték, a bővített együttható-sorozat sem csupa nulla.
Találtunk tehát nemtriviális nullakombinációt a bővített rendszerben, így a $\{v_1, v_2, \ldots, v_k, u\}$ rendszer is **lineárisan összefüggő marad**. $\blacksquare$

::: elmelet
**Elméleti háttér — öröklődési tulajdonságok.** A lineáris függetlenség és összefüggőség alapvető tulajdonságai:
- **Részrendszer:** Független rendszer minden részrendszere független (monotonitás lefelé).
- **Bővítés:** Összefüggő rendszer bármilyen vektorral bővítve összefüggő marad (monotonitás felfelé).
- **Egy vektor hozzávétele:** Ha $\{v_1, \dots, v_k\}$ független, akkor $\{v_1, \dots, v_k, u\}$ pontosan akkor marad független, ha $u \notin \operatorname{span}(v_1, \dots, v_k)$.
- **Nullvektor:** Ha a rendszer tartalmazza a nullvektort ($0 \in S$), akkor automatikusan összefüggő (a nullvektor együtthatója $1$, a többié $0$).
:::

## 5. feladat

Tegyük fel, hogy az $a, b, c$ vektorok lineárisan függetlenek egy $V$ vektortérben. Igazoljuk, hogy ha egy $x \in V$ vektorra az $\{a+x, b+x, c+x\}$ vektorrendszer lineárisan összefüggő, akkor $x$ felírható az $a, b$ és $c$ vektorok lineáris kombinációjaként.

**Megoldás.**

**Bizonyítás.**
Mivel az $\{a+x, b+x, c+x\}$ rendszer lineárisan összefüggő, léteznek olyan $\alpha, \beta, \gamma \in \mathbb{R}$ skalárok, amelyek **nem mindegyike nulla**, úgy, hogy:
$$\alpha (a + x) + \beta (b + x) + \gamma (c + x) = 0.$$
Bontsuk fel a zárójeleket, és rendezzük át az egyenletet:
$$\alpha a + \beta b + \gamma c + (\alpha + \beta + \gamma)x = 0.$$
Jelöljük a skalárok összegét $S$-sel: $S = \alpha + \beta + \gamma$.

**Állítás:** $S \ne 0$.
*Bizonyítás indirekt úton:* Tegyük fel, hogy $S = \alpha + \beta + \gamma = 0$.
Ekkor az $x$-es tag kiesik: $(\alpha + \beta + \gamma)x = 0 \cdot x = 0$, és az egyenlet az alábbira egyszerűsödik:
$$\alpha a + \beta b + \gamma c = 0.$$
Mivel azonban a feltétel szerint az $a, b, c$ vektorok **lineárisan függetlenek**, a belőlük képzett lineáris kombináció csak csupa nulla együtthatókkal adhatja a nullvektort, azaz:
$$\alpha = 0, \quad \beta = 0, \quad \gamma = 0.$$
Ez ellentmond annak a feltevésnek, hogy $\alpha, \beta, \gamma$ közül nem mindegyik nulla!
Az ellentmondás miatt feltevésünk hamis volt, tehát szükségképpen
$$S = \alpha + \beta + \gamma \ne 0.$$

Mivel $S \ne 0$, az egyenletből kifejezhetjük $x$-et úgy, hogy átvisszük a többi tagot a jobb oldalra, majd osztunk $S$-sel:
$$S x = -(\alpha a + \beta b + \gamma c)$$
$$x = \left(-\frac{\alpha}{\alpha + \beta + \gamma}\right) a + \left(-\frac{\beta}{\alpha + \beta + \gamma}\right) b + \left(-\frac{\gamma}{\alpha + \beta + \gamma}\right) c.$$
Mivel a jobb oldalon $a, b, c$ valós együtthatós kombinációja áll, ez azt bizonyítja, hogy $x$ valóban felírható az $a, b$ és $c$ vektorok lineáris kombinációjaként ($x \in \operatorname{span}(a, b, c)$). $\blacksquare$

::: elmelet
**Elméleti háttér — affin kombinációk és eltolás.** A fenti levezetésben az $a, b$ és $c$ együtthatóinak összege:
$$\left(-\frac{\alpha}{S}\right) + \left(-\frac{\beta}{S}\right) + \left(-\frac{\gamma}{S}\right) = -\frac{\alpha + \beta + \gamma}{S} = -\frac{S}{S} = -1.$$
Geometriai jelentés: az $a+x, b+x, c+x$ vektorok az $a, b, c$ pontok $x$ vektorral történő eltoltjai. Ha ezek egy síkba (vagy egyenesbe) esnek az origóval, akkor az eltolás vektora nem lehet független magától az altértől. Az indirekt lépés kulcsa a függetlenség definíciója: ha az együtthatók összege 0 lenne, akkor $x$ nem játszana szerepet az összefüggőségben, ami azt jelentené, hogy már maga az $\{a, b, c\}$ rendszer is összefüggő volna — kizárva a feladat feltételét.
:::

## 6. feladat

Legyenek $v_1, v_2, \ldots, v_n$ lineárisan független vektorok egy vektortérben. Döntsük el, hogy a
$$w_1 = v_1, \quad w_2 = v_1 + v_2, \quad \ldots, \quad w_n = v_1 + v_2 + \cdots + v_n$$
vektorokból álló $\{w_1, w_2, \ldots, w_n\}$ rendszer lineárisan független-e.

**Megoldás.**

**Igen, a $\{w_1, w_2, \ldots, w_n\}$ rendszer lineárisan független.**

*1. bizonyítás — együtthatók vizsgálata visszafelé haladva (direkt úton).*
Tegyük fel, hogy a $w_1, \dots, w_n$ vektorok egy lineáris kombinációja a nullvektor:
$$c_1 w_1 + c_2 w_2 + \dots + c_n w_n = 0 \quad (c_1, \dots, c_n \in \mathbb{R}).$$
Helyettesítsük be a $w_i = \sum_{j=1}^i v_j$ vektorokat:
$$c_1 v_1 + c_2 (v_1 + v_2) + c_3 (v_1 + v_2 + v_3) + \dots + c_n (v_1 + v_2 + \dots + v_n) = 0.$$
Rendezzük át az összeget az eredeti $v_j$ vektorok együtthatói szerint:
$$(c_1 + c_2 + c_3 + \dots + c_n) v_1 + (c_2 + c_3 + \dots + c_n) v_2 + \dots + (c_{n-1} + c_n) v_{n-1} + c_n v_n = 0.$$
Mivel a $\{v_1, v_2, \dots, v_n\}$ rendszer **lineárisan független**, belőlük a nullvektor csak úgy állhat elő, ha minden egyes $v_j$ együtthatója nulla:
$$\begin{aligned}
c_1 + c_2 + c_3 + \dots + c_n &= 0 \\
c_2 + c_3 + \dots + c_n &= 0 \\
&\;\;\vdots \\
c_{n-1} + c_n &= 0 \\
c_n &= 0
\end{aligned}$$
Oldjuk meg ezt a háromszög alakú egyenletrendszert alulról felfelé haladva:
- Az utolsó egyenletből közvetlenül: $c_n = 0$.
- Az utolsó előttiből: $c_{n-1} + c_n = 0 \implies c_{n-1} + 0 = 0 \implies c_{n-1} = 0$.
- Általánosan, ha már tudjuk, hogy $c_{k+1} = \dots = c_n = 0$, akkor a $k$-adik egyenlet $c_k + 0 = 0 \implies c_k = 0$.
- Végül az első egyenletből: $c_1 = 0$.

Mivel csak a triviális $c_1 = c_2 = \dots = c_n = 0$ megoldás létezik, a $\{w_1, w_2, \dots, w_n\}$ rendszer valóban **lineárisan független**. $\blacksquare$

*2. bizonyítás — a transzformáció invertálhatósága.*
Fejezzük ki az eredeti $v_i$ vektorokat a $w_i$ vektorok segítségével:
$$\begin{aligned}
v_1 &= w_1, \\
v_2 &= w_2 - w_1, \\
v_3 &= w_3 - w_2, \\
&\;\;\vdots \\
v_n &= w_n - w_{n-1}.
\end{aligned}$$
Ez azt mutatja, hogy minden $v_i \in \operatorname{span}(w_1, \dots, w_n)$, tehát
$$\operatorname{span}(v_1, \dots, v_n) \subseteq \operatorname{span}(w_1, \dots, w_n) \subseteq \operatorname{span}(v_1, \dots, v_n),$$
vagyis a két vektorrendszer által generált altér megegyezik. Mivel az altér dimenziója $n$ (a független $v_1, \dots, v_n$ miatt), az őt generáló $n$ elemű $\{w_1, \dots, w_n\}$ rendszer minimális generátorrendszer, azaz bázis az altérben — tehát szükségképpen **lineárisan független**.

*(Mátrixos megfogalmazás: az áttérési mátrix egy $n \times n$-es alsó háromszögmátrix, amelynek főátlójában csupa $1$-esek állnak, determinánsa $\det C = 1 \ne 0$, így a leképezés izomorfizmus.)*

::: elmelet
**Elméleti háttér — bázistranszformáció és háromszögmátrixok.** Ha egy $V$ altérben egy $\{v_1, \dots, v_n\}$ bázisból új vektorokat képezünk egy $C$ mátrix segítségével ($w_j = \sum_i c_{ij} v_i$), akkor az új $\{w_1, \dots, w_n\}$ rendszer pontosan akkor lineárisan független, ha a $C$ áttérési mátrix invertálható, azaz $\det C \ne 0$. Itt $C$ alsó háromszögmátrix $1$-esekkel a főátlójában (egység-alsó-háromszög), így determinánsa mindig $1 \ne 0$, a vektorok száma $n$-től függetlenül megőrzi a függetlenséget.
:::

## 7. feladat

Tegyük fel, hogy egy vektortérben az $X$ és $Y$ diszjunkt, véges vektorhalmazok. Igazoljuk, hogy az $X \cup Y$ vektorrendszer pontosan akkor lineárisan független, ha az $X$ és $Y$ is független, és az általuk generált alterek metszete csak a nullvektort tartalmazza.

**Megoldás.**

Jelöljük a generált altereket $V_X = \operatorname{span}(X)$-szel és $V_Y = \operatorname{span}(Y)$-nal. Legyen $X = \{x_1, \dots, x_k\}$ és $Y = \{y_1, \dots, y_m\}$, ahol $X \cap Y = \emptyset$.
Az állítás egy ekvivalencia („pontosan akkor, ha”), így mindkét irányt külön igazoljuk.

**1. Irány ($\implies$):**
Tegyük fel, hogy az $X \cup Y$ vektorrendszer lineárisan független.
- *Függetlenség öröklődése:* Mivel független rendszer tetszőleges részhalmaza is független, és $X \subseteq X \cup Y$, valamint $Y \subseteq X \cup Y$, ezért **$X$ is és $Y$ is lineárisan független**.
- *Alterek metszete:* Tegyük fel, hogy $v \in V_X \cap V_Y$.
  Mivel $v \in V_X = \operatorname{span}(X)$, léteznek olyan $\alpha_1, \dots, \alpha_k$ skalárok, hogy:
  $$v = \alpha_1 x_1 + \dots + \alpha_k x_k.$$
  Mivel $v \in V_Y = \operatorname{span}(Y)$, léteznek olyan $\beta_1, \dots, \beta_m$ skalárok, hogy:
  $$v = \beta_1 y_1 + \dots + \beta_m y_m.$$
  Vonjuk ki a második egyenletet az elsőből:
  $$\alpha_1 x_1 + \dots + \alpha_k x_k - (\beta_1 y_1 + \dots + \beta_m y_m) = v - v = 0.$$
  Átírva:
  $$\alpha_1 x_1 + \dots + \alpha_k x_k + (-\beta_1) y_1 + \dots + (-\beta_m) y_m = 0.$$
  Mivel $X$ és $Y$ diszjunktak, ez az $X \cup Y$ halmaz különböző elemeinek egy lineáris kombinációja, amely a nullvektort adja. A feltétel szerint $X \cup Y$ lineárisan független, ezért minden együttható nulla:
  $$\alpha_1 = \dots = \alpha_k = 0 \quad \text{és} \quad \beta_1 = \dots = \beta_m = 0.$$
  Ebből következik, hogy $v = 0 \cdot x_1 + \dots + 0 \cdot x_k = 0$.
  Tehát $V_X \cap V_Y$ nem tartalmazhat más vektort, csak a nullvektort: **$V_X \cap V_Y = \{0\}$**.

**2. Irány ($\Longleftarrow$):**
Tegyük fel most, hogy:
(i) $X$ lineárisan független,
(ii) $Y$ lineárisan független, és
(iii) $V_X \cap V_Y = \{0\}$.
Tekintsük az $X \cup Y$ elemeinek egy tetszőleges nullakombinációját:
$$\alpha_1 x_1 + \dots + \alpha_k x_k + \beta_1 y_1 + \dots + \beta_m y_m = 0.$$
Rendezzük át úgy, hogy az $X$-beli és az $Y$-beli tagok a két oldalra kerüljenek:
$$\alpha_1 x_1 + \dots + \alpha_k x_k = -(\beta_1 y_1 + \dots + \beta_m y_m).$$
Vegyük észre, hogy:
- A bal oldalon álló $w = \sum_{i=1}^k \alpha_i x_i$ vektor eleme $V_X$-nek.
- A jobb oldalon álló $-\sum_{j=1}^m \beta_j y_j = \sum_{j=1}^m (-\beta_j) y_j$ vektor eleme $V_Y$-nak.
Mivel a két oldal egyenlő, ez a közös $w$ vektor mindkét altérben benne van:
$$w \in V_X \cap V_Y.$$
A (iii) feltétel szerint azonban $V_X \cap V_Y = \{0\}$, amiből következik, hogy $w = 0$, vagyis mindkét oldal külön-külön a nullvektorral egyenlő:
$$\alpha_1 x_1 + \dots + \alpha_k x_k = 0 \quad \text{és} \quad \beta_1 y_1 + \dots + \beta_m y_m = 0.$$
Most használjuk fel az (i) és (ii) feltételeket:
- Mivel $X$ lineárisan független, az első egyenletből: $\alpha_1 = \dots = \alpha_k = 0$.
- Mivel $Y$ lineárisan független, a második egyenletből: $\beta_1 = \dots = \beta_m = 0$.
Tehát minden együttható nulla, ami azt bizonyítja, hogy az $X \cup Y$ rendszer **lineárisan független**. $\blacksquare$

::: elmelet
**Elméleti háttér — direkt összeg és a dimenziótétel alterekre.** Két altér összege pontosan akkor **direkt összeg** ($V_X \oplus V_Y$), ha metszetük a triviális altér: $V_X \cap V_Y = \{0\}$. A tétel azt fejezi ki, hogy diszjunkt független rendszerek uniója pontosan akkor marad független, ha az általuk generált alterek összege direkt összeg.
Kapcsolat a dimenziótétellel:
$$\dim(V_X + V_Y) = \dim(V_X) + \dim(V_Y) - \dim(V_X \cap V_Y).$$
Ha $X$ és $Y$ független, akkor $\dim(V_X) = |X|$ és $\dim(V_Y) = |Y|$. Az unió $X \cup Y$ pontosan akkor független, ha $\dim(\operatorname{span}(X \cup Y)) = |X \cup Y| = |X| + |Y|$, ami a képlet szerint pontosan $\dim(V_X \cap V_Y) = 0$, azaz $V_X \cap V_Y = \{0\}$ esetén teljesül.
:::

## 8. feladat

Adott az alábbi $A$ mátrix, amely egy $p \in \mathbb{R}$ valós paramétert tartalmaz:
$$A = \begin{pmatrix} 1 & 2 & 1 \\ 2 & p & 2 \\ 3 & 6 & 3 \end{pmatrix}$$
Határozzuk meg a mátrix rangját a $p$ paraméter függvényében.

**Megoldás.**

A mátrix rangja:
$$\operatorname{rang}(A) = \begin{cases} 1, & \text{ha } p = 4, \\ 2, & \text{ha } p \ne 4. \end{cases}$$
*(A mátrix rangja semmilyen $p$ esetén sem lehet $3$.)*

*Levezetés Gauss-eliminációval:*
Írjuk fel a mátrixot, és végezzünk rajta elemi sorműveleteket:
$$A = \begin{pmatrix} 1 & 2 & 1 \\ 2 & p & 2 \\ 3 & 6 & 3 \end{pmatrix}.$$
1. Figyeljük meg a 3. sort: $s_3 = (3, 6, 3) = 3 \cdot (1, 2, 1) = 3 s_1$.
   Vonjuk ki az első sor 3-szorosát a harmadik sorból ($S_3 \leftarrow S_3 - 3S_1$):
   $$\begin{pmatrix} 1 & 2 & 1 \\ 2 & p & 2 \\ 0 & 0 & 0 \end{pmatrix}.$$
2. Vonjuk ki az első sor 2-szeresét a második sorból ($S_2 \leftarrow S_2 - 2S_1$):
   $$(2 - 2\cdot 1,\ p - 2\cdot 2,\ 2 - 2\cdot 1) = (0,\ p - 4,\ 0).$$
   Így a mátrix alakja:
   $$\begin{pmatrix} 1 & 2 & 1 \\ 0 & p - 4 & 0 \\ 0 & 0 & 0 \end{pmatrix}.$$

Ez a mátrix már lépcsős alakú (ha $p \ne 4$, a második sor pivotja a második oszlopban van; ha $p = 4$, a második sor is csupa nulla). A rang a nem nulla sorok száma a lépcsős alakban:

- **1. eset: $p = 4$.**
  Ekkor $p - 4 = 0$, így a lépcsős alak:
  $$\begin{pmatrix} 1 & 2 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}.$$
  Egyetlen nem nulla sor van, tehát:
  $$\operatorname{rang}(A) = 1.$$
  *(Valóban, ha $p = 4$, akkor a sorok: $s_1 = (1, 2, 1)$, $s_2 = 2s_1 = (2, 4, 2)$, $s_3 = 3s_1 = (3, 6, 3)$, mindegyik az első sor többszöröse.)*

- **2. eset: $p \ne 4$.**
  Ekkor $p - 4 \ne 0$, így a második sor nem nulla. A második sort leosztva $(p - 4)$-gyel kapjuk a $(0, 1, 0)$ sort. A lépcsős alak két nem nulla sort tartalmaz: $(1, 2, 1)$ és $(0, 1, 0)$, amelyek függetlenek egymástól. A harmadik sor nulla, így:
  $$\operatorname{rang}(A) = 2.$$

- **Miért nem lehet a rang 3?**
  Mivel $s_3 = 3s_1$ minden $p \in \mathbb{R}$ esetén, a harmadik sor mindig lineárisan függ az elsőtől. Emiatt $\det(A) = 0$ minden $p$-re (két sor arányos), így a rang soha nem érheti el a maximális $3$-at.

::: elmelet
**Elméleti háttér — paraméteres mátrixok rangja és aldeterminánsok.** A rangtétel szerint a mátrix rangja megegyezik a legnagyobb nem nulla aldetermináns méretével (determinánsrang):
- $\det A = 0$ minden $p$-re (mivel a 3. sor a 1. sor 3-szorosa), ezért $\operatorname{rang}(A) < 3$.
- Nézzük a $2 \times 2$-es aldeterminánsokat: a bal felső sarok aldeterminánsa $\begin{vmatrix} 1 & 2 \\ 2 & p \end{vmatrix} = p - 4$. Ha $p \ne 4$, ez az aldetermináns nem nulla, tehát a rang legalább $2$, és mivel kisebb mint $3$, pontosan $2$.
- Ha $p = 4$, a mátrix összes $2 \times 2$-es aldeterminánsa nulla (mindegyik oszlop és sor arányos egymással), de tartalmaz nem nulla elemet (pl. $a_{11} = 1 \ne 0$), ezért a rang $1$.
:::

## 9. feladat

Tegyük fel, hogy az $A \in \mathbb{R}^{n \times k}$ és $B \in \mathbb{R}^{k \times m}$ mátrixok esetén létezik az $AB$ mátrixszorzat. Mely állítások igazak az alábbiak közül minden ilyen mátrixpárra?

(1) Ha a $B$ mátrix oszlopvektorai lineárisan összefüggők, akkor az $AB$ mátrix oszlopvektorai is lineárisan összefüggők.

(2) Ha az $A$ mátrix oszlopvektorai lineárisan összefüggők, akkor az $AB$ mátrix oszlopvektorai is lineárisan összefüggők.

(3) Az $AB$ mátrix rangja nem nagyobb, mint az $A$ mátrix rangja.

(4) Az $AB$ mátrix rangja nem nagyobb, mint a $B$ mátrix rangja.

**Megoldás.**

Az állítások közül minden ilyen mátrixpárra **igazak: (1), (3) és (4)**.
A **(2) állítás hamis** (nem igaz minden mátrixpárra).

---

### (1) Igaz.
**Bizonyítás.**
Jelölje $b_1, b_2, \dots, b_m \in \mathbb{R}^k$ a $B$ mátrix oszlopvektorait.
Az, hogy a $B$ oszlopvektorai lineárisan összefüggők, a definíció szerint azt jelenti, hogy létezik egy **nem csupa nulla** $c = (c_1, c_2, \dots, c_m)^T \in \mathbb{R}^m$ együtthatóvektor ($c \ne 0$), amelyre:
$$\sum_{j=1}^m c_j b_j = 0 \quad \Longleftrightarrow \quad B c = 0.$$
Tekintsük most az $AB$ mátrixot. A mátrixszorzás definíciója szerint az $AB$ oszlopai éppen az $A b_1, A b_2, \dots, A b_m$ vektorok.
Képezzük az $AB$ oszlopvektorainak lineáris kombinációját **ugyanezekkel** a $c_1, \dots, c_m$ együtthatókkal:
$$\sum_{j=1}^m c_j (A b_j) = A \left(\sum_{j=1}^m c_j b_j\right) = A (B c) = A \cdot 0 = 0.$$
Mivel $c \ne 0$, találtunk egy nemtriviális együtthatóvektort, amellyel az $AB$ oszlopvektorainak kombinációja a nullvektort adja. Tehát az $AB$ mátrix oszlopvektorai is **lineárisan összefüggők**. $\blacksquare$

---

### (2) Hamis.
Az állítás nem igaz minden mátrixpárra: abból, hogy $A$ oszlopai összefüggők, nem következik, hogy $AB$ oszlopai is azok lennének.

**Ellenpélda.**
Legyen $n = 2$, $k = 3$, $m = 2$, és tekintsük az alábbi mátrixokat:
$$A = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \in \mathbb{R}^{2 \times 3}, \qquad B = \begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 0 & 0 \end{pmatrix} \in \mathbb{R}^{3 \times 2}.$$
- **$A$ oszlopvektorai:** $a_1 = \begin{pmatrix} 1 \\ 0 \end{pmatrix}$, $a_2 = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$, $a_3 = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$.
  A harmadik oszlop a nullvektor (és 3 vektor van a 2-dimenziós $\mathbb{R}^2$-ben), így $A$ oszlopvektorai **lineárisan összefüggők** ($0\cdot a_1 + 0\cdot a_2 + 1\cdot a_3 = 0$).
- **A szorzat mátrix:**
  $$AB = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2 \in \mathbb{R}^{2 \times 2}.$$
- **$AB$ oszlopvektorai:** $\begin{pmatrix} 1 \\ 0 \end{pmatrix}$ és $\begin{pmatrix} 0 \\ 1 \end{pmatrix}$, amelyek a standard bázisvektorok $\mathbb{R}^2$-ben, tehát **lineárisan függetlenek**!

*(Egy még egyszerűbb $1 \times 1$-es szorzatot adó ellenpélda: $A = \begin{pmatrix} 1 & 0 \end{pmatrix} \in \mathbb{R}^{1 \times 2}$, melynek oszlopai $\mathbb{R}^1$-ben összefüggők; és $B = \begin{pmatrix} 1 \\ 0 \end{pmatrix} \in \mathbb{R}^{2 \times 1}$. Ekkor $AB = (1) \in \mathbb{R}^{1 \times 1}$, melynek egyetlen oszlopa független.)*

---

### (3) Igaz.
**Bizonyítás.**
Az $AB$ mátrix tetszőleges $j$-edik oszlopvektora $(AB)_j = A b_j = \sum_{\ell=1}^k b_{\ell j} a_\ell$, vagyis az $AB$ minden oszlopa az $A$ oszlopvektorainak lineáris kombinációja.
Ez azt jelenti, hogy az $AB$ oszlopvektorai által kifeszített altér (az oszloptér) része az $A$ oszlopvektorai által kifeszített altérnek:
$$\operatorname{oszlop}(AB) \subseteq \operatorname{oszlop}(A).$$
Mivel egy altér részalterének dimenziója nem lehet nagyobb az altér dimenziójánál:
$$\dim(\operatorname{oszlop}(AB)) \le \dim(\operatorname{oszlop}(A)).$$
Mivel az oszloptér dimenziója az oszloprang, és a rangtétel szerint a mátrix rangja megegyezik az oszlopranggal, ezért:
$$\operatorname{rang}(AB) \le \operatorname{rang}(A).$$
Az állítás tehát igaz: az $AB$ rangja nem nagyobb $A$ rangjánál. $\blacksquare$

---

### (4) Igaz.
**Bizonyítás.**
Az $AB$ mátrix tetszőleges $i$-edik sorvektora $(AB)_{i,:} = \sum_{\ell=1}^k a_{i\ell} B_{\ell,:}$, vagyis az $AB$ minden sorvektora a $B$ mátrix sorvektorainak lineáris kombinációja.
Ez azt jelenti, hogy az $AB$ sora által generált altér (a sortér) része a $B$ sortérének:
$$\operatorname{sor}(AB) \subseteq \operatorname{sor}(B).$$
Ennélfogva a dimenziókra:
$$\dim(\operatorname{sor}(AB)) \le \dim(\operatorname{sor}(B)).$$
Mivel a rangtétel szerint a mátrix rangja megegyezik a sorranggal:
$$\operatorname{rang}(AB) \le \operatorname{rang}(B).$$
Az állítás tehát igaz: az $AB$ rangja nem nagyobb $B$ rangjánál. $\blacksquare$

*(Megjegyzés a (3) és (4) ponthoz: a két egyenlőtlenséget összefoglalva kapjuk az ismert alaptételt: $\operatorname{rang}(AB) \le \min(\operatorname{rang}(A), \operatorname{rang}(B))$.)*

::: elmelet
**Elméleti háttér — szorzatmátrix rangja és magtere.** Lineáris leképezések szempontjából az $A \in \mathbb{R}^{n \times k}$ egy $\mathbb{R}^k \to \mathbb{R}^n$, a $B \in \mathbb{R}^{k \times m}$ pedig egy $\mathbb{R}^m \to \mathbb{R}^k$ leképezést valósít meg, az $AB$ pedig a kompozíciójukat ($\mathbb{R}^m \to \mathbb{R}^n$).
- **Képterek:** $\operatorname{Im}(AB) = A(\operatorname{Im}(B)) \subseteq \operatorname{Im}(A)$, amiből azonnal következik $\operatorname{rang}(AB) \le \operatorname{rang}(A)$.
- **Magterek:** Ha $v \in \operatorname{Ker}(B)$, azaz $Bv = 0$, akkor $(AB)v = A(Bv) = 0$, tehát $\operatorname{Ker}(B) \subseteq \operatorname{Ker}(AB)$. Ez közvetlenül bizonyítja az (1) állítást: ha $B$ oszlopai összefüggők, van nem nulla vektor a magtérben, ami az $AB$ magterében is benne lesz, így $AB$ oszlopai is összefüggők.
- **A rang-nullitási tétel szerint:** $\dim(\operatorname{Ker}(B)) + \operatorname{rang}(B) = m$. Mivel $\operatorname{Ker}(B) \subseteq \operatorname{Ker}(AB)$, ezért $\dim(\operatorname{Ker}(AB)) \ge \dim(\operatorname{Ker}(B))$, amiből $\operatorname{rang}(AB) = m - \dim(\operatorname{Ker}(AB)) \le m - \dim(\operatorname{Ker}(B)) = \operatorname{rang}(B)$ — ez a (4) állítás egy másik szép bizonyítása.
- **Sylvester-féle rangegyenlőtlenség:** $\operatorname{rang}(A) + \operatorname{rang}(B) - k \le \operatorname{rang}(AB) \le \min(\operatorname{rang}(A), \operatorname{rang}(B))$.
:::

## 10. feladat

Legyen $A \in \mathbb{R}^{n \times n}$ egy négyzetes mátrix. Mely állítások ekvivalensek azzal a feltétellel, hogy az $A$ mátrix oszlopvektorai lineárisan függetlenek?

(1) Az $Ax = 0$ homogén lineáris egyenletrendszernek csak a triviális megoldása létezik.

(2) Bármely $b \in \mathbb{R}^n$ vektor esetén az $Ax = b$ inhomogén lineáris egyenletrendszernek pontosan egy megoldása van.

(3) Az $A$ mátrix sorvektorai lineárisan összefüggők.

(4) $\det(A) = 0$.

**Megoldás.**

Az alapfeltétellel az alábbi állítások ekvivalensek: **(1) és (2)**.
A **(3) és (4) állítások nem ekvivalensek** a feltétellel (mindkettő pontosan a feltétel tagadásával ekvivalens).

---

### Az egyes állítások részletes vizsgálata:

Alapfeltétel: az $A \in \mathbb{R}^{n \times n}$ mátrix oszlopvektorai lineárisan függetlenek.
Mivel a mátrix $n \times n$-es, $n$ darab oszlopvektora van az $n$-dimenziós $\mathbb{R}^n$ térben. A függetlenségük azt jelenti, hogy az oszloprang maximális:
$$\operatorname{rang}_{\text{oszlop}}(A) = n \quad \Longleftrightarrow \quad \operatorname{rang}(A) = n \quad \Longleftrightarrow \quad A \text{ invertálható} \quad \Longleftrightarrow \quad \det(A) \ne 0.$$

- **(1) Ekvivalens.**
  Írjuk fel a homogén rendszert az oszlopvektorok ($a_1, \dots, a_n$) segítségével:
  $$Ax = x_1 a_1 + x_2 a_2 + \dots + x_n a_n = 0.$$
  A lineáris függetlenség definíciója pontosan az, hogy ez az egyenlőség csak akkor teljesülhet, ha minden $x_i = 0$, azaz $x = 0$ (a triviális megoldás).
  Tehát az oszlopvektorok függetlensége szóról szóra ekvivalens azzal, hogy az $Ax = 0$ rendszernek csak a triviális megoldása van.

- **(2) Ekvivalens.**
  Ha az oszlopvektorok lineárisan függetlenek, akkor $\operatorname{rang}(A) = n$.
  - *Megoldhatóság (létezés):* Mivel $A$ kibővítése a $b \in \mathbb{R}^n$ oszloppal legfeljebb $n$ rangú lehet (hiszen $n$ sora van), $\operatorname{rang}([A \mid b]) = n = \operatorname{rang}(A)$. A Kronecker–Capelli-tétel szerint a rendszer minden $b$-re megoldható (az oszlopok kifeszítik az egész $\mathbb{R}^n$-et).
  - *Egyértelműség:* A szabad változók száma $n - \operatorname{rang}(A) = n - n = 0$, így a megoldás egyértelmű. (Mátrixinverzzel felírva: $x = A^{-1}b$ az egyetlen megoldás.)
  - *Visszafelé:* Ha minden $b$-re pontosan egy megoldás van, akkor speciálisan a $b = 0$ esetén is pontosan egy megoldás van, ami az $x = 0$ triviális megoldás, így az (1) pont miatt az oszlopok függetlenek.
  Tehát a (2) állítás ekvivalens.

- **(3) Nem ekvivalens (annak tagadása).**
  A rangtétel szerint a sorrang megegyezik az oszlopranggal:
  $$\operatorname{rang}_{\text{sor}}(A) = \operatorname{rang}_{\text{oszlop}}(A).$$
  Ha az oszlopvektorok lineárisan függetlenek, akkor $\operatorname{rang}_{\text{oszlop}}(A) = n$, így $\operatorname{rang}_{\text{sor}}(A) = n$. Ez azt jelenti, hogy az $n$ darab sorvektor **lineárisan független**, és semmiképpen sem összefüggő.
  Az, hogy a sorvektorok összefüggők lennének, pontosan akkor áll fenn, ha $\operatorname{rang}(A) < n$, ami az alapfeltétel ellentéte (negációja).

- **(4) Nem ekvivalens (annak tagadása).**
  Egy $n \times n$-es mátrix oszlopai pontosan akkor lineárisan függetlenek, ha a determinánsa **nem nulla**:
  $$\det(A) \ne 0.$$
  A $\det(A) = 0$ feltétel azt jelenti, hogy a mátrix rangja kisebb mint $n$, vagyis az oszlopvektorok (és a sorvektorok is) lineárisan **összefüggők**. Ez tehát éppen az alapfeltétel tagadása.

::: elmelet
**Elméleti háttér — az invertálhatóság ekvivalens feltételei (a „főtétel”).** Legyen $A \in \mathbb{R}^{n \times n}$ négyzetes mátrix. Az alábbi állítások mind egymással ekvivalensek:
1. Az $A$ mátrix invertálható (létezik $A^{-1}$);
2. $\det A \ne 0$;
3. $\operatorname{rang}(A) = n$ (teljes rangú);
4. $A$ oszlopvektorai lineárisan függetlenek;
5. $A$ oszlopvektorai bázist alkotnak $\mathbb{R}^n$-ben ($\operatorname{span}(a_1, \dots, a_n) = \mathbb{R}^n$);
6. $A$ sorvektorai lineárisan függetlenek;
7. Az $Ax = 0$ homogén lineáris egyenletrendszernek csak a triviális $x = 0$ megoldása van;
8. Bármely $b \in \mathbb{R}^n$ esetén az $Ax = b$ egyenletrendszernek létezik megoldása;
9. Bármely $b \in \mathbb{R}^n$ esetén az $Ax = b$ egyenletrendszernek pontosan egy megoldása van ($x = A^{-1}b$);
10. A Gauss–Jordan-elimináció az $I_n$ egységmátrixba viszi $A$-t;
11. $A$ előáll elemi mátrixok szorzataként;
12. A 0 nem sajátértéke $A$-nak.
:::

# Algebra és számelmélet – 10. feladatsor – megoldások

Alapfogalmak és tételek a feladatsorhoz:
- **Csoport:** egy $\langle G, \cdot \rangle$ struktúra, ahol a művelet asszociatív, van kétoldali egységelem ($e \in G$), és minden elemnek létezik kétoldali inverze. Ha a művelet kommutatív is, **Abel-csoportról** (vagy kommutatív csoportról) beszélünk.
- **Gyűrű:** egy $\langle R, +, \cdot \rangle$ struktúra, amelyre $\langle R, + \rangle$ Abel-csoport (nulleleme $0$, inverze $-a$), a szorzás asszociatív, és érvényes a kétoldali disztributivitás: $a(b + c) = ab + ac$ és $(a + b)c = ac + bc$. Ha a szorzás kommutatív, a gyűrű **kommutatív**; ha van szorzási egységelem ($1$), a gyűrű **egységelemes**.
- **Test:** olyan egységelemes, kommutatív gyűrű ($1 \ne 0$), amelyben minden nem nulla elemnek van multiplikatív inverze (azaz $R \setminus \{0\}$ a szorzásra Abel-csoportot alkot).
- **Nullosztó:** egy $R$ gyűrű $a \ne 0$ eleme bal oldali nullosztó, ha van olyan $b \ne 0$, hogy $ab = 0$. (Kommutatív gyűrűben a bal és jobb oldali nullosztó egybeesik.) Egy gyűrű **nullosztómentes**, ha két nem nulla elem szorzata sosem nulla.
- **Integritási tartomány:** kommutatív, egységelemes, nullosztómentes gyűrű ($1 \ne 0$). Minden test integritási tartomány.
- **Polinomgyűrű fokszámtétele:** Ha $R$ integritási tartomány, akkor nem nulla $f, g \in R[x]$ polinomokra $\deg(fg) = \deg(f) + \deg(g)$, és $R[x]$ is integritási tartomány.
- **Gyöktényező kiemelhetősége (Bézout tétele):** Ha $R$ kommutatív, egységelemes gyűrű és $c \in R$ az $f \in R[x]$ gyöke, akkor $x - c \mid f(x)$ az $R[x]$ gyűrűben. Integritási tartományban egy $n$-edfokú ($n \ge 0$) nem nulla polinomnak legfeljebb $n$ gyöke lehet.
- **Schönemann–Eisenstein-féle irreducibilitási kritérium:** Legyen $f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0 \in \mathbb{Z}[x]$ ($n \ge 1$). Ha létezik olyan $p$ prímszám, amelyre:
  1. $p \nmid a_n$,
  2. $p \mid a_i$ minden $0 \le i \le n - 1$ esetén,
  3. $p^2 \nmid a_0$,
  akkor $f(x)$ irreducibilis a racionális számok $\mathbb{Q}$ teste felett (és ha primitív, akkor $\mathbb{Z}[x]$-ben is).

---

## 1. feladat (házi feladat)

Döntsük el, hogy az alábbi halmazok a megadott művelet(ek)re nézve csoportot, gyűrűt vagy testet alkotnak-e. Ha csoport, kommutatív-e?

(1) $(\mathbb{Z}, -)$ (az egész számok halmaza a kivonásra),

(2) $(\mathbb{R} \setminus \{0\}, \cdot)$ (a nemnulla valós számok a szorzásra),

(3) A $2 \times 2$-es valós mátrixok az összeadásra és a mátrixszorzásra nézve,

(4) A $K = \{a + b\sqrt{2} \mid a, b \in \mathbb{Q}\}$ halmaz a szokásos valós összeadásra és szorzásra nézve.

**Megoldás.**

**(1) $(\mathbb{Z}, -)$**

- **Csoportot alkot-e?** **Nem alkot csoportot.**
  - *Asszociativitás vizsgálata:* A kivonás nem asszociatív. Tetszőleges $a, b, c \in \mathbb{Z}$ esetén
    $$(a - b) - c = a - b - c, \qquad a - (b - c) = a - b + c.$$
    Konkrét ellenpélda: $(1 - 2) - 3 = -1 - 3 = -4$, míg $1 - (2 - 3) = 1 - (-1) = 2 \ne -4$.
  - *Egységelem vizsgálata:* Ha létezne olyan $e \in \mathbb{Z}$, hogy minden $a \in \mathbb{Z}$-re $a - e = a$, abból $e = 0$ következne. Azonban bal oldali egységelemnek is kellene lennie: $0 - a = -a \ne a$ (ha $a \ne 0$). Tehát kétoldali egységelem sem létezik.
- Mivel csak egy művelet adott, és az nem asszociatív, sem csoportot, sem gyűrűt, sem testet **nem alkot**.

**(2) $(\mathbb{R} \setminus \{0\}, \cdot)$**

- **Csoportot alkot-e?** **Igen, kommutatív (Abel-) csoportot alkot.**
  - *Zártság:* Két nem nulla valós szám szorzata nem nulla valós szám: ha $a, b \ne 0$, akkor $ab \ne 0$.
  - *Asszociativitás:* A valós számok szokásos szorzása asszociatív: $(ab)c = a(bc)$.
  - *Egységelem:* Az $1 \in \mathbb{R} \setminus \{0\}$ semleges elem, hiszen $1 \cdot a = a \cdot 1 = a$ minden $a$-ra.
  - *Inverz elem:* Minden $a \in \mathbb{R} \setminus \{0\}$ esetén az $a^{-1} = \frac{1}{a} \in \mathbb{R} \setminus \{0\}$ kétoldali multiplikatív inverz: $a \cdot \frac{1}{a} = \frac{1}{a} \cdot a = 1$.
  - *Kommutativitás:* A valós szorzás kommutatív: $ab = ba$.
- *Gyűrű vagy test-e?* Definíció szerint a gyűrű és a test két műveletet (összeadást és szorzást) feltételez; itt csupán a szorzás volt megadva, így a struktúra az $\mathbb{R}$ valós test multiplikatív csoportja ($\mathbb{R}^\times$).

**(3) A $2 \times 2$-es valós mátrixok ($\mathbb{R}^{2 \times 2}, +, \cdot$)**

- **Gyűrűt alkot** (pontosabban: **egységelemes, nem kommutatív gyűrűt**).
  - *$(\mathbb{R}^{2 \times 2}, +)$ Abel-csoport:*
    - Zárt az összeadásra.
    - Az összeadás asszociatív és kommutatív.
    - A nullelem a $0 = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$ zérusmátrix.
    - Minden $A$ mátrix additív inverze a $-A$ mátrix.
  - *A mátrixszorzás tulajdonságai:*
    - Zárt a szorzásra.
    - Asszociatív: $(AB)C = A(BC)$.
    - Mindkét oldalról disztributív az összeadásra nézve: $A(B + C) = AB + AC$ és $(A + B)C = AC + BC$.
    - Van multiplikatív egységelem: az $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ egységmátrix.
  - *Nem kommutatív:* Általában $AB \ne BA$. Például:
    $$A = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \quad B = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} \implies AB = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \quad BA = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}.$$
  - *Nem test:* Nem kommutatív, továbbá nem minden nem nulla elemnek van inverze (például a $\det A = 0$ determinánsú nemnulla mátrixok nem invertálhatók, és nullosztók is léteznek, mint a fenti $A^2 = 0$).

**(4) $K = \{a + b\sqrt{2} \mid a, b \in \mathbb{Q}\}$ a szokásos valós összeadásra és szorzásra nézve**

- **Testet alkot** (ez a racionális számok testének $\mathbb{Q}(\sqrt{2})$ másodfokú algebrai testbővítése).
  - *Részgyűrű-tulajdonságok:* Mivel $K \subset \mathbb{R}$, a műveletek asszociativitása, kommutativitása és disztributivitása automatikusan öröklődik $\mathbb{R}$-ből.
  - *Zártság összeadásra és kivonásra:*
    $$(a + b\sqrt{2}) \pm (c + d\sqrt{2}) = (a \pm c) + (b \pm d)\sqrt{2} \in K,$$
    mivel $a \pm c \in \mathbb{Q}$ és $b \pm d \in \mathbb{Q}$.
    A nullelem $0 = 0 + 0\sqrt{2} \in K$.
  - *Zártság szorzásra:*
    $$(a + b\sqrt{2})(c + d\sqrt{2}) = (ac + 2bd) + (ad + bc)\sqrt{2} \in K,$$
    mivel $ac + 2bd \in \mathbb{Q}$ és $ad + bc \in \mathbb{Q}$.
    Az egységelem $1 = 1 + 0\sqrt{2} \in K$.
  - *Multiplikatív inverz létezése:*
    Legyen $x = a + b\sqrt{2} \in K \setminus \{0\}$.
    Mivel $\sqrt{2}$ irracionális, $a + b\sqrt{2} = 0 \iff a = b = 0$.
    Ezért $a^2 - 2b^2 \ne 0$ (hiszen ha $a^2 - 2b^2 = 0$ lenne, akkor $b \ne 0$ esetén $\sqrt{2} = |a/b| \in \mathbb{Q}$ lenne, ami ellentmondás; $b = 0$ esetén pedig $a = 0$ adódna).
    Gyöktelenítve a nevezőt:
    $$\frac{1}{a + b\sqrt{2}} = \frac{a - b\sqrt{2}}{(a + b\sqrt{2})(a - b\sqrt{2})} = \frac{a}{a^2 - 2b^2} - \frac{b}{a^2 - 2b^2}\sqrt{2}.$$
    Itt $\frac{a}{a^2 - 2b^2} \in \mathbb{Q}$ és $-\frac{b}{a^2 - 2b^2} \in \mathbb{Q}$, tehát $x^{-1} \in K$.
  - Minden nem nulla elem invertálható, a szorzás kommutatív és $1 \ne 0$, így $K$ **test**. (Mivel test, egyben integritási tartomány, kommutatív egységelemes gyűrű, az összeadásra nézve Abel-csoport, és a nemnulla elemei a szorzásra nézve Abel-csoportot alkotnak.)

---

## 2. feladat

Keressük meg a $\mathbb{Z}_{12}$ és a $\mathbb{Z}_{15}$ gyűrűkben az összes nullosztót és az összes invertálható elemet. Létezik-e olyan másodfokú polinom $\mathbb{Z}_{15}[x]$-ben, amelynek 2-nél több gyöke van?

**Megoldás.**

Egy tetszőleges $\mathbb{Z}_m$ maradékosztály-gyűrűben egy $a \in \mathbb{Z}_m$ elemre:
- **Invertálható**, ha létezik $x \in \mathbb{Z}_m$, hogy $ax \equiv 1 \pmod m$. Ez pontosan akkor teljesül, ha $\operatorname{lnko}(a, m) = 1$. Az invertálható elemek száma $\varphi(m)$.
- **Nullosztó** (nem nulla nullosztó): olyan $a \ne 0$ elem, amelyhez létezik $b \ne 0$, hogy $ab \equiv 0 \pmod m$. Ez pontosan akkor teljesül, ha $\operatorname{lnko}(a, m) > 1$ és $a \ne 0$.

**(a) A $\mathbb{Z}_{12}$ gyűrű vizsgálata ($\mathbb{Z}_{12} = \{0, 1, 2, \dots, 11\}$)**

- **Invertálható elemek:** azok az elemek, amelyek relatív prímek 12-höz ($\varphi(12) = 12 \cdot (1 - 1/2)(1 - 1/3) = 4$ darab):
  $$\{1, 5, 7, 11\}.$$
  *Inverzek:*
  - $1 \cdot 1 = 1 \implies 1^{-1} = 1$
  - $5 \cdot 5 = 25 \equiv 1 \pmod{12} \implies 5^{-1} = 5$
  - $7 \cdot 7 = 49 \equiv 1 \pmod{12} \implies 7^{-1} = 7$
  - $11 \cdot 11 = (-1)^2 = 1 \pmod{12} \implies 11^{-1} = 11$.
  (A $\mathbb{Z}_{12}^\times$ egységcsoport izomorf a $\mathbb{Z}_2 \times \mathbb{Z}_2$ Klein-féle négyescsoporttal.)
- **Nullosztók:** a 12-höz nem relatív prím nemnulla elemek:
  $$\{2, 3, 4, 6, 8, 9, 10\}.$$
  *Konkrét párok:*
  - $2 \cdot 6 = 12 \equiv 0$
  - $3 \cdot 4 = 12 \equiv 0$
  - $4 \cdot 3 = 12 \equiv 0$
  - $6 \cdot 2 = 12 \equiv 0$
  - $8 \cdot 3 = 24 \equiv 0$
  - $9 \cdot 4 = 36 \equiv 0$
  - $10 \cdot 6 = 60 \equiv 0$.
- A $0$ elem $0 \cdot b = 0$ minden $b$-re, de a standard definíció szerint a nullosztók nem nulla elemek.

**(b) A $\mathbb{Z}_{15}$ gyűrű vizsgálata ($\mathbb{Z}_{15} = \{0, 1, 2, \dots, 14\}$)**

- **Invertálható elemek:** a 15-höz relatív prím elemek ($\varphi(15) = (3 - 1)(5 - 1) = 8$ darab):
  $$\{1, 2, 4, 7, 8, 11, 13, 14\}.$$
  *Inverzek:*
  - $1^{-1} = 1$
  - $2 \cdot 8 = 16 \equiv 1 \implies 2^{-1} = 8, \ 8^{-1} = 2$
  - $4 \cdot 4 = 16 \equiv 1 \implies 4^{-1} = 4$
  - $7 \cdot 13 = 91 = 6 \cdot 15 + 1 \equiv 1 \implies 7^{-1} = 13, \ 13^{-1} = 7$
  - $11 \cdot 11 = 121 = 8 \cdot 15 + 1 \equiv 1 \implies 11^{-1} = 11$
  - $14 \cdot 14 = (-1)^2 \equiv 1 \implies 14^{-1} = 14$.
- **Nullosztók:** a 15-höz nem relatív prím nemnulla elemek:
  $$\{3, 5, 6, 9, 10, 12\}.$$
  *Konkrét párok:*
  - A 3 többszörösei az 5-tel szorozva adnak nullát: $3 \cdot 5 = 15 \equiv 0$, $6 \cdot 5 = 30 \equiv 0$, $9 \cdot 5 = 45 \equiv 0$, $12 \cdot 5 = 60 \equiv 0$.
  - Az 5 többszörösei a 3-mal szorozva adnak nullát: $5 \cdot 3 = 15 \equiv 0$, $10 \cdot 3 = 30 \equiv 0$.

**(c) Létezik-e olyan másodfokú polinom $\mathbb{Z}_{15}[x]$-ben, amelynek 2-nél több gyöke van?**

**Igen, létezik.**

*Példa:* Tekintsük az
$$f(x) = x^2 - 1$$
polinomot $\mathbb{Z}_{15}[x]$-ben.
Egy $c \in \mathbb{Z}_{15}$ pontosan akkor gyöke $f$-nek, ha $c^2 \equiv 1 \pmod{15}$.
A kínai maradéktétel szerint a $c^2 \equiv 1 \pmod{15}$ kongruencia ekvivalens a következő rendszerrel:
$$\begin{cases} c^2 \equiv 1 \pmod 3, \\ c^2 \equiv 1 \pmod 5. \end{cases}$$
Mivel $\mathbb{Z}_3$ és $\mathbb{Z}_5$ testek, a megoldások:
- Modulo 3: $c \equiv \pm 1 \pmod 3$, azaz $c \in \{1, 2\}$.
- Modulo 5: $c \equiv \pm 1 \pmod 5$, azaz $c \in \{1, 4\}$.

A kínai maradéktétel $2 \times 2 = 4$ darab különböző megoldást ad $\mathbb{Z}_{15}$-ben:
1. $c \equiv 1 \pmod 3$ és $c \equiv 1 \pmod 5 \implies c = 1$. ($1^2 - 1 = 0$)
2. $c \equiv -1 \pmod 3$ és $c \equiv -1 \pmod 5 \implies c = 14$. ($14^2 - 1 = 195 = 15 \cdot 13 \equiv 0$)
3. $c \equiv 1 \pmod 3$ és $c \equiv -1 \pmod 5 \implies c = 4$. ($4^2 - 1 = 15 \equiv 0$)
4. $c \equiv -1 \pmod 3$ és $c \equiv 1 \pmod 5 \implies c = 11$. ($11^2 - 1 = 120 = 15 \cdot 8 \equiv 0$)

Az $f(x) = x^2 - 1$ másodfokú polinomnak tehát **4 különböző gyöke van $\mathbb{Z}_{15}$-ben: $\{1, 4, 11, 14\}$**. Ez szigorúan nagyobb, mint 2.

(Egy másik egyszerű példa: $g(x) = x(x - 1) = x^2 - x$, amelynek gyökei $c \in \{0, 1, 6, 10\}$, szintén 4 darab gyök.)

::: elmelet
**Elméleti háttér.** Az a tétel, miszerint egy $n$-edfokú polinomnak legfeljebb $n$ gyöke lehet, csak **integritási tartományok** (nullosztómentes gyűrűk, így különösen testek) felett érvényes. Ha a gyűrű nem nullosztómentes, akkor egy szorzat $g(x)h(x) = 0$ úgy is teljesülhet, hogy sem $g(x)$, sem $h(x)$ nem nulla, csupán értékeik nullosztópárt alkotnak (például $(4 - 1)(4 + 1) = 3 \cdot 5 = 15 \equiv 0$).
:::

---

## 3. feladat

Adjunk meg olyan elsőfokú $f, g \in \mathbb{Z}_{10}[x]$ polinomokat, amelyek szorzata legfeljebb elsőfokú! Milyen esetben fordulhat elő általánosan egy $R$ gyűrű felett, hogy $\deg(fg) < \deg(f) + \deg(g)$?

**Megoldás.**

**(a) Konkrét példa $\mathbb{Z}_{10}[x]$-ben:**

Legyen:
$$f(x) = 2x + 1, \qquad g(x) = 5x + 1.$$
Mindkét polinom elsőfokú ($\deg f = 1$ és $\deg g = 1$), mivel a főegyütthatóik $2 \ne 0$ és $5 \ne 0$ a $\mathbb{Z}_{10}$ gyűrűben.
Szorzatuk:
$$f(x)g(x) = (2x + 1)(5x + 1) = 10x^2 + 2x + 5x + 1 \equiv 7x + 1 \pmod{10}.$$
A szorzatpolinom $7x + 1$, amelynek foka **1**, tehát legfeljebb elsőfokú:
$$\deg(fg) = 1 < 1 + 1 = \deg(f) + \deg(g).$$

(Egy másik példa: $f(x) = 2x$ és $g(x) = 5x$, ekkor $f(x)g(x) = 10x^2 \equiv 0$, a nullapolinom foka definíció szerint $-\infty \le 1$.)

**(b) Általános feltétel egy tetszőleges $R$ gyűrű felett:**

Legyenek $f, g \in R[x]$ nem nulla polinomok, amelyek foka $\deg f = n \ge 0$ és $\deg g = m \ge 0$. Írjuk fel őket az együtthatóikkal:
$$f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_0, \qquad (a_n \ne 0),$$
$$g(x) = b_m x^m + b_{m-1} x^{m-1} + \dots + b_0, \qquad (b_m \ne 0).$$
A polinomok szorzásának definíciója szerint az $fg$ szorzat legmagasabb fokú lehetséges tagja:
$$fg(x) = (a_n b_m) x^{n+m} + \sum_{k=0}^{n+m-1} c_k x^k.$$
A szorzat foka pontosan akkor lesz szigorúan kisebb, mint $n + m = \deg(f) + \deg(g)$, ha az $x^{n+m}$ tag eltűnik, azaz:
$$a_n b_m = 0.$$
Mivel feltevésünk szerint $a_n \ne 0$ és $b_m \ne 0$, ez a feltétel azt jelenti, hogy:
- Az $R$ gyűrű **nem nullosztómentes**, és
- a két polinom főegyütthatói, $a_n$ és $b_m$, olyan **nullosztók** $R$-ben, amelyek szorzata nulla ($a_n b_m = 0$).

Összefoglalva: $\deg(fg) < \deg(f) + \deg(g)$ **pontosan akkor fordulhat elő, ha a két polinom főegyütthatójának szorzata a gyűrű nulleleme: $a_n b_m = 0$**. Nullosztómentes gyűrűben (integritási tartományban, testben) ez soha nem fordulhat elő, ott mindig $\deg(fg) = \deg(f) + \deg(g)$.

---

## 4. feladat

Legyen $R$ egy kommutatív, egységelemes gyűrű. Igazoljuk, hogy az $R[x]$ polinomgyűrű pontosan akkor nullosztómentes, ha maga az $R$ gyűrű is nullosztómentes.

**Bizonyítás.**

A feladat egy ekvivalenciát fogalmaz meg, így mindkét irányt bizonyítanunk kell.

**1. Szükségesség ($\implies$):**
Tegyük fel, hogy az $R[x]$ polinomgyűrű nullosztómentes.
Az $R$ gyűrű azonosítható az $R[x]$ gyűrű nulladfokú (konstans) polinomjaiból és a nullapolinomból álló részgyűrűjével:
$$R \cong \{ c \in R[x] \mid c \text{ konstans polinom} \}.$$
Tegyük fel, hogy $a, b \in R$ elemekre $ab = 0$.
Tekintsük $a$-t és $b$-t mint konstans polinomokat: $f(x) = a \in R[x]$ és $g(x) = b \in R[x]$.
Ekkor a szorzatpolinom $(fg)(x) = ab = 0$, ami az $R[x]$ nullapolinomja.
Mivel $R[x]$ a feltétel szerint nullosztómentes, két polinom szorzata csak úgy lehet a nullapolinom, ha legalább az egyik tényező a nullapolinom:
$$f = 0 \quad \text{vagy} \quad g = 0 \implies a = 0 \quad \text{vagy} \quad b = 0.$$
Tehát az $R$ gyűrűben sincsenek nullosztók: $R$ nullosztómentes.

**2. Elégségesség ($\impliedby$):**
Tegyük fel, hogy az $R$ gyűrű nullosztómentes.
Legyenek $f, g \in R[x]$ nem nulla polinomok. Meg kell mutatnunk, hogy a szorzatuk sem lehet a nullapolinom ($fg \ne 0$).
Mivel $f \ne 0$ és $g \ne 0$, mindkettőnek létezik foka: legyen $\deg f = n \ge 0$ és $\deg g = m \ge 0$.
A polinomokat írjuk fel az együtthatóikkal:
$$f(x) = \sum_{i=0}^n a_i x^i, \quad a_n \ne 0, \qquad g(x) = \sum_{j=0}^m b_j x^j, \quad b_m \ne 0.$$
A két polinom szorzata:
$$fg(x) = \sum_{k=0}^{n+m} c_k x^k, \quad \text{ahol} \quad c_k = \sum_{i+j=k} a_i b_j.$$
A legmagasabb fokú tag, azaz $x^{n+m}$ együtthatója:
$$c_{n+m} = a_n b_m.$$
Mivel $R$ nullosztómentes, és $a_n \ne 0, b_m \ne 0$, ezért
$$a_n b_m \ne 0.$$
Ez azt jelenti, hogy az $fg$ polinomnak legalább egy együtthatója (nevezetesen $c_{n+m}$) nem nulla, így $fg \ne 0$, sőt $\deg(fg) = n + m$.
Tehát $R[x]$-ben nem létezik két nem nulla polinom, amelynek szorzata nulla, vagyis $R[x]$ nullosztómentes. $\blacksquare$

---

## 5. feladat

Bontsuk fel a $10(x^2 - 3)(x^2 + 4)$ polinomot $\mathbb{C}, \mathbb{R}, \mathbb{Q}$ és $\mathbb{Z}$ felett felbonthatatlanok (irreducibilisek) szorzatára.

**Megoldás.**

Jelöljük a vizsgált polinomot $P(x)$-szel:
$$P(x) = 10(x^2 - 3)(x^2 + 4).$$

**(a) $\mathbb{C}$ felett:**
$\mathbb{C}$ algebrailag zárt test, így $\mathbb{C}[x]$-ben a felbonthatatlan elemek pontosan az elsőfokú polinomok. A nemnulla konstansok a testben invertálhatók (egységek).
- Az $x^2 - 3 = 0$ egyenlet gyökei: $x = \pm \sqrt{3}$. Tehát $x^2 - 3 = (x - \sqrt{3})(x + \sqrt{3})$.
- Az $x^2 + 4 = 0$ egyenlet gyökei: $x = \pm 2i$. Tehát $x^2 + 4 = (x - 2i)(x + 2i)$.
A felbontás $\mathbb{C}$ felett:
$$P(x) = 10(x - \sqrt{3})(x + \sqrt{3})(x - 2i)(x + 2i).$$
(Minden tényező elsőfokú, így irreducibilis.)

**(b) $\mathbb{R}$ felett:**
$\mathbb{R}[x]$-ben a felbonthatatlan elemek:
1. az összes elsőfokú polinom,
2. a negatív diszkriminánsú ($D < 0$) másodfokú polinomok.
- $x^2 - 3 = (x - \sqrt{3})(x + \sqrt{3})$, mindkét tényező valós elsőfokú polinom ($\pm\sqrt{3} \in \mathbb{R}$).
- $x^2 + 4$ valós együtthatós másodfokú polinom, diszkriminánsa $D = 0^2 - 4 \cdot 1 \cdot 4 = -16 < 0$, nincsenek valós gyökei, így $\mathbb{R}$ felett irreducibilis.
- A $10 \in \mathbb{R}^\times$ invertálható konstans (egység).
A felbontás $\mathbb{R}$ felett:
$$P(x) = 10(x - \sqrt{3})(x + \sqrt{3})(x^2 + 4).$$

**(c) $\mathbb{Q}$ felett:**
$\mathbb{Q}$ felett a felbonthatatlan tényezők kereséséhez:
- Az $x^2 - 3$ másodfokú polinom gyökei $\pm\sqrt{3} \notin \mathbb{Q}$. Mivel másodfokú és nincs racionális gyöke (6. feladat), $x^2 - 3$ irreducibilis $\mathbb{Q}$ felett.
- Az $x^2 + 4$ másodfokú polinom gyökei $\pm 2i \notin \mathbb{Q}$. Nincs racionális gyöke, így $x^2 + 4$ is irreducibilis $\mathbb{Q}$ felett.
- A $10 \in \mathbb{Q}^\times$ invertálható skalár (egység).
A felbontás $\mathbb{Q}$ felett:
$$P(x) = 10(x^2 - 3)(x^2 + 4).$$

**(d) $\mathbb{Z}$ felett:**
A $\mathbb{Z}$ gyűrű **nem test**, az egységei csupán az $\{1, -1\}$ számok. Ezért $\mathbb{Z}[x]$-ben az egész együtthatós konstansokat is fel kell bontani $\mathbb{Z}$-beli irreducibilis elemek (prímszámok) szorzatára:
$$10 = 2 \cdot 5.$$
A polinomtényezőkre:
- $x^2 - 3$ és $x^2 + 4$ főegyütthatója 1, együtthatóik relatív prímek (primitív polinomok).
- Mivel primitívek és $\mathbb{Q}$ felett irreducibilisek, a Gauss-lemma következményeként irreducibilisek a $\mathbb{Z}[x]$ gyűrűben is.
A felbontás $\mathbb{Z}$ felett (felbonthatatlan egész számok és primitív irreducibilis polinomok szorzata):
$$P(x) = 2 \cdot 5 \cdot (x^2 - 3)(x^2 + 4).$$
(A felbontás tényezői a $2, 5 \in \mathbb{Z}[x]$ nulladfokú, valamint az $x^2 - 3, x^2 + 4 \in \mathbb{Z}[x]$ másodfokú irreducibilis elemek; egységszerestől, azaz előjeltől eltekintve egyértelműen.)

---

## 6. feladat

Legyen $K$ egy test, és $f \in K[x]$ egy másod- vagy harmadfokú polinom. Bizonyítsuk be, hogy $f$ pontosan akkor irreducibilis $K$ felett, ha nincs gyöke a $K$ testben. Mutassunk példát arra, hogy negyedfokú polinomokra ez az állítás már nem feltétlenül igaz.

**Bizonyítás.**

Legyen $\deg f \in \{2, 3\}$. Az állítás két irányát külön látjuk be:

**1. Ha $f$-nek van gyöke $K$-ban, akkor felbontható (nem irreducibilis):**
Tegyük fel, hogy létezik olyan $c \in K$, amelyre $f(c) = 0$.
A gyöktényező kiemelhetőségének tétele (Bézout tétele) szerint létezik olyan $g \in K[x]$ polinom, hogy
$$f(x) = (x - c)g(x).$$
Mivel $K$ test, a fokszámtétel szerint:
$$\deg f = \deg(x - c) + \deg g = 1 + \deg g \implies \deg g = \deg f - 1.$$
Mivel $\deg f \in \{2, 3\}$, a $g$ polinom foka $\deg g \in \{1, 2\}$.
Mivel mindkét tényező ($x - c$ és $g$) foka legalább 1, egyikük sem invertálható $K[x]$-ben (a test feletti polinomgyűrű egységei pontosan a nem nulla konstansok, $K^\times$).
Ezért $f$ felbomlik két alacsonyabb fokú, nem egység polinom szorzatára, tehát **$f$ felbontható (nem irreducibilis)** $K$ felett.
Kontrapozícióval: ha $f$ irreducibilis $K$ felett, akkor nincs gyöke $K$-ban.

**2. Ha $f$ felbontható, akkor van gyöke $K$-ban:**
Tegyük fel, hogy $f$ nem irreducibilis $K$ felett. Ekkor léteznek olyan $g, h \in K[x]$ nem konstans polinomok, hogy
$$f(x) = g(x)h(x), \quad \text{ahol} \quad \deg g \ge 1, \ \deg h \ge 1.$$
A fokszámok összege:
$$\deg g + \deg h = \deg f \in \{2, 3\}.$$
- Ha $\deg f = 2$, akkor $\deg g + \deg h = 2 \implies \deg g = 1$ és $\deg h = 1$.
- Ha $\deg f = 3$, akkor $\deg g + \deg h = 3 \implies$ a felbontásban az egyik tényező foka 1, a másiké 2.
Mindkét esetben a tényezők között **biztosan szerepel legalább egy elsőfokú polinom**.
Legyen ez mondjuk $g(x) = ax + b$, ahol $a, b \in K$ és $a \ne 0$.
Mivel $K$ test, az $a \ne 0$ elemnek létezik $a^{-1} \in K$ inverze. Ekkor a
$$c = -a^{-1}b \in K$$
elem a $g$ polinom gyöke: $g(c) = a(-a^{-1}b) + b = -b + b = 0$.
Ekkor $f(c) = g(c)h(c) = 0 \cdot h(c) = 0$, tehát $c \in K$ az $f$ polinomnak is gyöke.
Kontrapozícióval: ha $f$-nek nincs gyöke $K$-ban, akkor $f$ irreducibilis. $\blacksquare$

**(b) Negyedfokú ellenpélda:**

Tekintsük a következő negyedfokú polinomot a valós számok $\mathbb{R}$ teste felett:
$$f(x) = (x^2 + 1)^2 = x^4 + 2x^2 + 1 \in \mathbb{R}[x].$$
- **Nincs valós gyöke:** Minden $x \in \mathbb{R}$ esetén $x^2 \ge 0$, így $x^2 + 1 \ge 1$, tehát $f(x) = (x^2 + 1)^2 \ge 1 > 0$. Nincs olyan $c \in \mathbb{R}$, amelyre $f(c) = 0$.
- **Mégsem irreducibilis:** Maga a konstrukció mutatja, hogy $f(x) = (x^2 + 1)(x^2 + 1)$ két másodfokú valós polinom szorzata, ahol egyik tényező sem egység $\mathbb{R}[x]$-ben. Tehát $f$ felbontható $\mathbb{R}$ felett.

Ugyanez a példa $\mathbb{Q}$ felett is működik, vagy vehetjük $\mathbb{Q}$ felett az
$$f(x) = (x^2 - 2)(x^2 - 3) = x^4 - 5x^2 + 6 \in \mathbb{Q}[x]$$
polinomot, amelynek gyökei $\pm\sqrt{2}, \pm\sqrt{3} \notin \mathbb{Q}$, tehát nincs racionális gyöke, mégis két másodfokú racionális polinom szorzata.

---

## 7. feladat

Hány olyan $f$ legfeljebb harmadfokú polinom van $\mathbb{Z}_3[x]$-ben, amely minden $c \in \mathbb{Z}_3$ esetén $f(c) = c$?

**Megoldás.**

A $\mathbb{Z}_3 = \{0, 1, 2\}$ három elemű test felett keresünk olyan $f(x) \in \mathbb{Z}_3[x]$ polinomokat, amelyekre $\deg f \le 3$, és
$$f(0) = 0, \qquad f(1) = 1, \qquad f(2) = 2.$$
Tekintsük a
$$g(x) = f(x) - x$$
polinomot. Mivel $\deg f \le 3$, a $g(x)$ fokszáma is legfeljebb 3 ($\deg g \le 3$).
A feltétel pontosan azt jelenti, hogy a $\mathbb{Z}_3$ test minden eleme gyöke a $g(x)$ polinomnak:
$$g(0) = f(0) - 0 = 0, \qquad g(1) = f(1) - 1 = 0, \qquad g(2) = f(2) - 2 = 0.$$
Mivel $\mathbb{Z}_3$ test, a gyöktényezők kiemelésének tétele szerint $g(x)$ osztható a különböző gyökökhöz tartozó gyöktényezők szorzatával:
$$(x - 0)(x - 1)(x - 2) \mid g(x).$$
Végezzük el a beszorzást $\mathbb{Z}_3$-ban (ahol $-2 \equiv 1$):
$$(x - 0)(x - 1)(x - 2) = x(x - 1)(x + 1) = x(x^2 - 1) = x^3 - x.$$
(Ez összhangban van a kis Fermat-tétellel is: minden $c \in \mathbb{Z}_3$-ra $c^3 \equiv c \pmod 3$, azaz $c^3 - c = 0$.)

Tehát az $(x^3 - x)$ harmadfokú polinom osztója a legfeljebb harmadfokú $g(x)$ polinomnak.
Ezért $g(x)$ csak az $(x^3 - x)$ konstansszorosa lehet:
$$g(x) = k \cdot (x^3 - x), \qquad \text{ahol } k \in \mathbb{Z}_3.$$
Ebből $f(x)$ kifejezhető:
$$f(x) = x + g(x) = x + k(x^3 - x) = k x^3 + (1 - k)x.$$
Mivel a $\mathbb{Z}_3$ testnek pontosan 3 eleme van, a $k \in \{0, 1, 2\}$ paraméternek 3 lehetséges értéke van, és mind a háromhoz különböző, legfeljebb harmadfokú polinom tartozik:

1. $k = 0$:
   $$f_1(x) = x$$
2. $k = 1$:
   $$f_2(x) = x^3$$
3. $k = 2$:
   $$f_3(x) = 2x^3 + (1 - 2)x = 2x^3 - x \equiv 2x^3 + 2x \pmod 3.$$

*Ellenőrzés behelyettesítéssel:*
- $f_1(c) = c$ nyilvánvalóan teljesül minden $c$-re.
- $f_2(0) = 0$, $f_2(1) = 1^3 = 1$, $f_2(2) = 2^3 = 8 \equiv 2 \pmod 3$.
- $f_3(0) = 0$, $f_3(1) = 2(1) + 2(1) = 4 \equiv 1 \pmod 3$, $f_3(2) = 2(8) + 2(2) = 16 + 4 = 20 \equiv 2 \pmod 3$.

Tehát **pontosan 3** ilyen polinom létezik.

---

## 8. feladat

Legyen $R$ gyűrű, $r, s \in R$, és $m, n$ egész számok. Igazoljuk az alábbiakat:

(1) $(-n)r$ az $nr$ ellentettje,

(2) $mr + nr = (m + n)r$,

(3) $n(mr) = (nm)r$,

(4) $n(r + s) = nr + ns$,

(5) $n(rs) = (nr)s = r(ns)$.

**Bizonyítás.**

*Definíció:* Egy gyűrű elemének egész számmal való szorzását az $\langle R, + \rangle$ additív csoportban értelmezzük:
- $0 \cdot r = 0_R$ (ahol $0_R$ az $R$ nulleleme),
- ha $n > 0$, akkor $nr = \underbrace{r + r + \dots + r}_{n \text{ db}}$,
- ha $n < 0$, akkor $nr = -((-n)r) = \underbrace{(-r) + (-r) + \dots + (-r)}_{|n| \text{ db}}$.

**(1) $(-n)r$ az $nr$ ellentettje, azaz $(-n)r = -(nr)$:**

- Ha $n = 0$: $(-0)r = 0r = 0_R$, és $-(0r) = -0_R = 0_R$.
- Ha $n > 0$: a definíció szerint $(-n)r = -(nr)$.
- Ha $n < 0$: legyen $n = -k$, ahol $k > 0$. Ekkor $-n = k > 0$.
  A definíció szerint $nr = (-k)r = -(kr)$, így az ellentettjének ellentettje:
  $$-(nr) = -(-(kr)) = kr = (-n)r.$$
Tehát minden $n \in \mathbb{Z}$ esetén $(-n)r = -(nr)$.

**(2) $mr + nr = (m + n)r$:**

Az $\langle R, + \rangle$ Abel-csoport, az összeadás kommutatív és asszociatív.
- Ha $m, n \ge 0$: $m$ darab $r$ és $n$ darab $r$ összege az asszociativitás miatt $(m + n)$ darab $r$ összege, ami $(m + n)r$.
- Ha $m, n \le 0$: legyen $m = -k, n = -\ell$ ($k, \ell \ge 0$). Ekkor
  $$mr + nr = -(kr) + (-(\ell r)) = -((k + \ell)r) = (-(k + \ell))r = (m + n)r.$$
- Ha különböző előjelűek, tegyük fel, hogy $m \ge 0$ és $n = -k \le 0$.
  - Ha $m \ge k$: az $m$ darab $r$-ből levonva $k$ darab $r$-et, a kommutativitás és az $r + (-r) = 0_R$ miatt $m - k$ darab $r$ marad:
    $$mr + nr = mr - kr = (m - k)r = (m + n)r.$$
  - Ha $m < k$: hasonlóan $-(k - m)r = (m - k)r = (m + n)r$.
Az azonosság tehát minden $m, n \in \mathbb{Z}$ esetén érvényes.

**(3) $n(mr) = (nm)r$:**

- Ha $n \ge 0$, bizonyítsunk $n$ szerinti teljes indukcióval:
  - Bázis: $n = 0$: $0(mr) = 0_R = (0 \cdot m)r$.
  - Indukciós lépés: tegyük fel, hogy $n(mr) = (nm)r$. Ekkor a (2) azonosság felhasználásával:
    $$(n + 1)(mr) = n(mr) + mr = (nm)r + 1(mr) = (nm + m)r = ((n + 1)m)r.$$
- Ha $n < 0$, legyen $n = -k$ ($k > 0$). Az (1) pont és az előző eset alapján:
  $$n(mr) = (-k)(mr) = -(k(mr)) = -((km)r) = (-(km))r = ((-k)m)r = (nm)r.$$
Így az állítás minden $n \in \mathbb{Z}$-re igaz.

**(4) $n(r + s) = nr + ns$:**

- Ha $n = 0$: $0(r + s) = 0_R = 0r + 0s$.
- Ha $n > 0$, indukció $n$-re:
  - $n = 1$: $1(r + s) = r + s = 1r + 1s$.
  - Lépés: $(n + 1)(r + s) = n(r + s) + (r + s) = (nr + ns) + (r + s)$.
    Mivel $\langle R, + \rangle$ Abel-csoport, a tagok átrendezhetők:
    $$(nr + r) + (ns + s) = (n + 1)r + (n + 1)s.$$
- Ha $n < 0$, legyen $n = -k$ ($k > 0$). Felhasználva az (1) pontot és az Abel-csoportbeli $-(a + b) = -a - b$ azonosságot:
  $$n(r + s) = -(k(r + s)) = -(kr + ks) = -(kr) + (-(ks)) = nr + ns.$$

**(5) $n(rs) = (nr)s = r(ns)$:**

- Ha $n = 0$: $0(rs) = 0_R$. Másrészt $(0r)s = 0_R \cdot s = 0_R$ és $r(0s) = r \cdot 0_R = 0_R$ (a gyűrűben a nullával való szorzás mindig nullát ad).
- Ha $n > 0$, indukció $n$-re:
  - $n = 1$: $1(rs) = rs = (1r)s = r(1s)$.
  - Lépés: tegyük fel, hogy $n(rs) = (nr)s = r(ns)$. Ekkor:
    $$(n + 1)(rs) = n(rs) + rs = (nr)s + rs = (nr + r)s = ((n + 1)r)s,$$
    ahol felhasználtuk a gyűrűbeli jobboldali disztributivitást.
    Hasonlóan a baloldali disztributivitással:
    $$(n + 1)(rs) = n(rs) + rs = r(ns) + rs = r(ns + s) = r((n + 1)s).$$
- Ha $n < 0$, legyen $n = -k$ ($k > 0$). Bármely gyűrűben $(-a)b = -(ab) = a(-b)$. Így:
  $$n(rs) = -(k(rs)) = -((kr)s) = (-(kr))s = (nr)s,$$
  és
  $$n(rs) = -(k(rs)) = -(r(ks)) = r(-(ks)) = r(ns).$$
Ezzel mind az öt azonosságot igazoltuk. $\blacksquare$

---

## 9. feladat

Legyen $\mathcal{A}$ a számelméleti függvények halmaza, azaz az $f \colon \mathbb{N}^+ \to \mathbb{C}$ függvényeké. Definiáljuk ezen a halmazon az összeadást tagonként, a szorzást pedig a Dirichlet-konvolúcióval:
$$(f * g)(n) = \sum_{d \mid n} f(d)g\left(\frac{n}{d}\right).$$
Bizonyítsuk be, hogy az $(\mathcal{A}, +, *)$ egy kommutatív, egységelemes gyűrű. Mi lesz a szorzásra vonatkozó egységelem?

**Bizonyítás.**

**(a) $(\mathcal{A}, +)$ Abel-csoport:**
- *Zártság:* Tetszőleges $f, g \in \mathcal{A}$ esetén $(f + g)(n) = f(n) + g(n) \in \mathbb{C}$ minden $n \in \mathbb{N}^+$-ra, így $f + g \in \mathcal{A}$.
- *Asszociativitás és kommutativitás:* Közvetlenül a komplex számok összeadásának asszociativitásából és kommutativitásából adódik tagonként:
  $$((f + g) + h)(n) = (f(n) + g(n)) + h(n) = f(n) + (g(n) + h(n)) = (f + (g + h))(n),$$
  $$(f + g)(n) = f(n) + g(n) = g(n) + f(n) = (g + f)(n).$$
- *Nullelem:* Az azonosan nulla függvény: $\mathbf{0}(n) = 0$ minden $n \in \mathbb{N}^+$ esetén. Ekkor $(f + \mathbf{0})(n) = f(n) + 0 = f(n)$.
- *Additív inverz:* A $(-f)(n) = -f(n)$ függvény, amelyre $(f + (-f))(n) = f(n) - f(n) = 0 = \mathbf{0}(n)$.

**(b) A szorzás ($*$) kommutatív:**
Amikor $d$ végigfut $n$ összes pozitív osztóján, a $d' = \frac{n}{d}$ hányados szintén $n$ összes pozitív osztóján fut végig (fordított sorrendben). Így:
$$(f * g)(n) = \sum_{d \mid n} f(d)g\left(\frac{n}{d}\right) = \sum_{d' \mid n} f\left(\frac{n}{d'}\right)g(d') = \sum_{d' \mid n} g(d')f\left(\frac{n}{d'}\right) = (g * f)(n).$$
Tehát $f * g = g * f$.

**(c) A szorzás ($*$) asszociatív:**
Írjuk fel a konvolúciót az $ab = n$ alakú rendezett számpárokra vett összegként:
$$((f * g) * h)(n) = \sum_{ab = n} (f * g)(a) h(b) = \sum_{ab = n} \left( \sum_{cd = a} f(c)g(d) \right) h(b) = \sum_{cdb = n} f(c)g(d)h(b).$$
Hasonlóan:
$$(f * (g * h))(n) = \sum_{cd = n} f(c)(g * h)(d) = \sum_{cd = n} f(c)\left( \sum_{ab = d} g(a)h(b) \right) = \sum_{cab = n} f(c)g(a)h(b).$$
A két összeg teljesen megegyezik: mindkettő az $n$ szám összes olyan $(a, b, c)$ pozitív egészekből álló rendezett számhármasára összegzi az $f(a)g(b)h(c)$ szorzatot, amelyre $abc = n$.
Tehát $((f * g) * h) = (f * (g * h))$.

**(d) Disztributivitás:**
Mivel $*$ kommutatív, elegendő a bal oldali disztributivitást igazolni:
$$(f * (g + h))(n) = \sum_{d \mid n} f(d)(g + h)\left(\frac{n}{d}\right) = \sum_{d \mid n} f(d)\left( g\left(\frac{n}{d}\right) + h\left(\frac{n}{d}\right) \right)$$
$$= \sum_{d \mid n} f(d)g\left(\frac{n}{d}\right) + \sum_{d \mid n} f(d)h\left(\frac{n}{d}\right) = (f * g)(n) + (f * h)(n).$$
Tehát $f * (g + h) = f * g + f * h$.

**(e) A szorzásra vonatkozó egységelem:**
Olyan $\varepsilon \in \mathcal{A}$ függvényt keresünk, amelyre minden $f \in \mathcal{A}$ és minden $n \in \mathbb{N}^+$ esetén $(f * \varepsilon)(n) = f(n)$.
Definiáljuk az $\varepsilon$ függvényt a következőképpen:
$$\varepsilon(n) = \begin{cases} 1, & \text{ha } n = 1, \\ 0, & \text{ha } n > 1. \end{cases}$$
Számítsuk ki a konvolúciót tetszőleges $f$-re:
$$(f * \varepsilon)(n) = \sum_{d \mid n} f(d)\varepsilon\left(\frac{n}{d}\right).$$
A szummában az $\varepsilon\left(\frac{n}{d}\right)$ tényező pontosan akkor nem nulla (értéke 1), ha $\frac{n}{d} = 1$, azaz $d = n$. Minden más $d < n$ osztóra $\frac{n}{d} > 1$, így $\varepsilon\left(\frac{n}{d}\right) = 0$.
Ezért az összeg egyetlen tagra redukálódik:
$$(f * \varepsilon)(n) = f(n)\varepsilon(1) = f(n) \cdot 1 = f(n).$$
Mivel a szorzás kommutatív, $(\varepsilon * f)(n) = f(n)$ is automatikusan teljesül.
Tehát $\varepsilon$ a szorzás kétoldali egységeleme.

Mindezek alapján $(\mathcal{A}, +, *)$ **kommutatív, egységelemes gyűrű** (amelyet a szakirodalomban Dirichlet-gyűrűnek is neveznek), és szorzási egységeleme az $\varepsilon(n) = \begin{cases} 1, & n = 1 \\ 0, & n > 1 \end{cases}$ függvény. $\blacksquare$

---

## 10. feladat

Bontsuk fel irreducibilis tényezők szorzatára az $x^4 - 1$ polinomot a $\mathbb{Z}_2[x]$, a $\mathbb{Z}_3[x]$ és a $\mathbb{Z}_5[x]$ polinomgyűrűkben.

**Megoldás.**

Tetszőleges kommutatív gyűrű felett érvényes az algebrai azonosság:
$$x^4 - 1 = (x^2 - 1)(x^2 + 1) = (x - 1)(x + 1)(x^2 + 1).$$

**(a) $\mathbb{Z}_2[x]$ felett:**
A 2 karakterisztikájú testben $-1 \equiv 1$, így $x - 1 = x + 1$.
Továbbá a „frissdiák-álom” azonosság szerint $(a + b)^2 = a^2 + b^2$, így:
$$x^2 + 1 = (x + 1)^2.$$
Ebből:
$$x^4 - 1 = x^4 + 1 = (x^2 + 1)^2 = ((x + 1)^2)^2 = (x + 1)^4.$$
Mivel $x + 1$ elsőfokú, irreducibilis $\mathbb{Z}_2[x]$-ben.
A felbontás:
$$x^4 - 1 = (x + 1)^4.$$

**(b) $\mathbb{Z}_3[x]$ felett:**
$\mathbb{Z}_3$-ban $x - 1 = x + 2$, így:
$$x^4 - 1 = (x - 1)(x + 1)(x^2 + 1) = (x + 2)(x + 1)(x^2 + 1).$$
Vizsgáljuk az $x^2 + 1$ másodfokú polinomot:
- Helyettesítsük be $\mathbb{Z}_3 = \{0, 1, 2\}$ elemeit:
  $$0^2 + 1 = 1 \ne 0, \qquad 1^2 + 1 = 2 \ne 0, \qquad 2^2 + 1 = 5 \equiv 2 \ne 0.$$
- Mivel $x^2 + 1$ másodfokú és nincs gyöke a $\mathbb{Z}_3$ testben, a 6. feladat értelmében **irreducibilis** $\mathbb{Z}_3$ felett.
Az $x - 1$ és $x + 1$ tényezők elsőfokúak, tehát irreducibilisek.
A felbontás:
$$x^4 - 1 = (x - 1)(x + 1)(x^2 + 1) \qquad (\text{vagy } (x + 2)(x + 1)(x^2 + 1)).$$

**(c) $\mathbb{Z}_5[x]$ felett:**
$\mathbb{Z}_5$-ben $1 \equiv -4$, így $x^2 + 1 = x^2 - 4 = (x - 2)(x + 2)$.
(Valóban: $2^2 + 1 = 5 \equiv 0$ és $3^2 + 1 = 10 \equiv 0$, ahol $3 \equiv -2 \pmod 5$.)
Így a polinom gyöktényezőkre bomlik:
$$x^4 - 1 = (x - 1)(x + 1)(x - 2)(x + 2).$$
$\mathbb{Z}_5$ elemeivel felírva (mivel $+1 \equiv -4$, $+2 \equiv -3$):
$$x^4 - 1 = (x - 1)(x - 2)(x - 3)(x - 4) = (x + 4)(x + 3)(x + 2)(x + 1).$$
Mivel mind a négy tényező elsőfokú, irreducibilisek $\mathbb{Z}_5[x]$-ben.
(Megjegyzés: a kis Fermat-tétel szerint minden $c \in \mathbb{Z}_5 \setminus \{0\}$ elemre $c^4 \equiv 1 \pmod 5$, így a $\mathbb{Z}_5^\times$ mind a 4 eleme gyöke $x^4 - 1$-nek.)

---

## 11. feladat

Bontsuk gyöktényezős alakra az $x^{27} - 1$ polinomot a $\mathbb{Z}_3$ test felett.

**Megoldás.**

A $\mathbb{Z}_3$ test 3 karakterisztikájú ($p = 3$).
Karakterisztika $p$ esetén tetszőleges kommutatív gyűrűben a binomiális tételből következik a Frobenius-azonosság:
$$(a - b)^p = a^p - b^p.$$
Ezt $p = 3$-ra alkalmazva:
$$(x - 1)^3 = x^3 - 1^3 = x^3 - 1.$$
Alkalmazzuk ezt egymás után háromszor (vagyis $p^k = 3^3 = 27$-re):
$$(x - 1)^9 = ((x - 1)^3)^3 = (x^3 - 1)^3 = (x^3)^3 - 1 = x^9 - 1,$$
$$(x - 1)^{27} = ((x - 1)^9)^3 = (x^9 - 1)^3 = (x^9)^3 - 1 = x^{27} - 1.$$
Mivel $x - 1$ elsőfokú, a gyöktényezős alak:
$$x^{27} - 1 = (x - 1)^{27} \qquad (\text{vagy } (x + 2)^{27}).$$
A polinomnak egyetlen gyöke van a $\mathbb{Z}_3$ testben, az $x = 1$, mégpedig 27-szeres multiplicitással.

---

## 12. feladat

A Schönemann–Eisenstein-kritérium az alábbi polinomok közül melyekre alkalmazható közvetlenül: $x^7 + 6x^2 + 15$, $x^7 + 6x^2 + 18$, $x^7 + 10x^2 + 8$, illetve $x^7 + n$?

**Megoldás.**

Idézzük fel a kritériumot: az $f(x) = a_k x^k + \dots + a_1 x + a_0 \in \mathbb{Z}[x]$ polinomra a kritérium akkor alkalmazható egy $p$ prím segítségével, ha:
1. $p \nmid a_k$,
2. $p \mid a_i$ minden $0 \le i \le k - 1$ esetén,
3. $p^2 \nmid a_0$.

A „közvetlenül alkalmazható” kifejezés azt jelenti, hogy a polinomra magára (helyettesítés vagy változóeltolás nélkül) teljesülnek a fenti feltételek valamely $p$ prímre.

**(1) $f_1(x) = x^7 + 6x^2 + 15$**

- Főegyüttható: $a_7 = 1$.
- A többi együttható: $a_6 = a_5 = a_4 = a_3 = a_1 = 0$, továbbá $a_2 = 6$ és $a_0 = 15$.
- A nulla együtthatókat bármely prím osztja. Olyan $p$ prímet keresünk, amely osztja $6$-ot és $15$-öt is:
  $$\operatorname{lnko}(6, 15) = 3 \implies p = 3.$$
- Ellenőrizzük $p = 3$-ra:
  1. $3 \nmid a_7 = 1$,
  2. $3 \mid a_i$ minden $0 \le i \le 6$ esetén ($3 \mid 6$ és $3 \mid 15$, a többi 0),
  3. $p^2 = 9 \nmid a_0 = 15$ (mivel $15 / 9 \notin \mathbb{Z}$).
- Mindhárom feltétel teljesül, tehát a Schönemann–Eisenstein-kritérium **közvetlenül alkalmazható** ($p = 3$-mal).

**(2) $f_2(x) = x^7 + 6x^2 + 18$**

- Főegyüttható: $a_7 = 1$. A nemnulla együtthatók: $a_2 = 6, a_0 = 18$.
- A közös prímosztók $p = 2$ és $p = 3$.
  - *Próbáljuk $p = 3$-ra:* $3 \mid 6$ és $3 \mid 18$, azonban $p^2 = 9 \mid 18$ ($18 = 2 \cdot 9$), így a 3. feltétel nem teljesül $p = 3$-ra.
  - *Próbáljuk $p = 2$-re:*
    1. $2 \nmid a_7 = 1$,
    2. $2 \mid a_i$ minden $0 \le i \le 6$-ra (mivel $2 \mid 6$, $2 \mid 18$, és a többi együttható 0),
    3. $p^2 = 4 \nmid a_0 = 18$ (mivel $18 = 4 \cdot 4 + 2$, nem osztható 4-gyel).
- A feltételek $p = 2$-re teljesülnek! Tehát a kritérium erre a polinomra is **közvetlenül alkalmazható** ($p = 2$-vel).

**(3) $f_3(x) = x^7 + 10x^2 + 8$**

- Főegyüttható: $a_7 = 1$. Nemnulla együtthatók: $a_2 = 10, a_0 = 8$.
- A közös prímosztók: $\operatorname{lnko}(10, 8) = 2$, tehát egyedül a $p = 2$ jöhet szóba.
- Ellenőrzés $p = 2$-re:
  - $p^2 = 4 \mid a_0 = 8$. A 3. feltétel sérül ($p^2 \mid a_0$).
- Más szóba jöhető prímszám nincs, így a Schönemann–Eisenstein-kritérium erre a polinomra **közvetlenül nem alkalmazható**.

**(4) $f_4(x) = x^7 + n$ ($n \in \mathbb{Z}$)**

- Főegyüttható: $a_7 = 1$. A nem konstans alacsonyabb fokú tagok együtthatói mind nullák ($a_1 = \dots = a_6 = 0$), amelyeket minden prím oszt. A konstans tag $a_0 = n$.
- Egy $p$ prímre a feltételek:
  1. $p \nmid 1$ (mindig igaz),
  2. $p \mid a_i$ minden $i \le 6$-ra $\iff p \mid n$,
  3. $p^2 \nmid n$.
- Tehát a kritérium **pontosan akkor alkalmazható közvetlenül, ha létezik olyan $p$ prímszám, amelyre $p \mid n$, de $p^2 \nmid n$** (azaz $n$-nek van legalább egy olyan prímosztója, amely pontosan az első hatványon szerepel $n$ kanonikus alakjában).
  - Alkalmazható például, ha $n$ négyzetmentes és $|n| > 1$ (pl. $n = 2, 3, 5, 6, 10, \dots$), vagy ha van egyszeres prímtényezője (pl. $n = 12 = 2^2 \cdot 3$-ra $p = 3$-mal).
  - Nem alkalmazható közvetlenül, ha $n = 0, \pm 1$, vagy ha minden prímosztója legalább a második hatványon szerepel (az úgynevezett négyzet-teljes vagy „powerful” számokra: $n = 4, 8, 9, 16, 27, 32, 36, \dots$).

---

## 13. feladat

Bizonyítsuk be az $f(x) = x^3 - 3x + 1$ polinomról, hogy irreducibilis $\mathbb{Q}$ felett, egy megfelelő eltolás segítségével.

**Megoldás.**

Az $f(x) = x^3 - 3x + 1$ polinom együtthatói: $a_3 = 1, a_2 = 0, a_1 = -3, a_0 = 1$.
Mivel a konstans tag $a_0 = 1$, nincs olyan prím, amely osztaná az összes alacsonyabb fokú tagot, így közvetlenül nem alkalmazható az Eisenstein-kritérium.

Alkalmazzunk egy $x = y + c$ változóeltolást ($c \in \mathbb{Z}$). Ha a $g(y) = f(y + c)$ polinom irreducibilis $\mathbb{Q}$ felett, akkor maga az $f(x) = g(x - c)$ polinom is irreducibilis $\mathbb{Q}$ felett (ugyanis az $x \mapsto y + c$ leképezés a $\mathbb{Q}[x]$ polinomgyűrű automorfizmusa, amely megőrzi a felbonthatóságot/felbonthatatlanságot).

**1. megoldás: $x = y - 1$ eltolás ($c = -1$)**

Helyettesítsünk $x = y - 1$-et az $f(x)$ polinomba:
$$\begin{aligned}
g(y) = f(y - 1) &= (y - 1)^3 - 3(y - 1) + 1 \\
&= (y^3 - 3y^2 + 3y - 1) - 3y + 3 + 1 \\
&= y^3 - 3y^2 + 3.
\end{aligned}$$
A kapott $g(y) = y^3 - 3y^2 + 3$ polinom együtthatói:
- Főegyüttható: $b_3 = 1$,
- További együtthatók: $b_2 = -3$, $b_1 = 0$, $b_0 = 3$.

Alkalmazzuk a Schönemann–Eisenstein-kritériumot a $p = 3$ prímszámmal:
1. $p = 3 \nmid b_3 = 1$,
2. $3 \mid b_2 = -3$, $3 \mid b_1 = 0$, és $3 \mid b_0 = 3$,
3. $p^2 = 9 \nmid b_0 = 3$ (mivel $3$ nem osztható $9$-cel).

Mindhárom feltétel teljesül, ezért $g(y)$ irreducibilis $\mathbb{Q}$ felett.
Következésképpen az eredeti $f(x) = x^3 - 3x + 1$ polinom is **irreducibilis $\mathbb{Q}$ felett**.

*(Megjegyzés: az $x = y + 2$ eltolás is működik: $f(y + 2) = (y + 2)^3 - 3(y + 2) + 1 = y^3 + 6y^2 + 9y + 3$, amelyre szintén $p = 3$-mal alkalmazható az Eisenstein-kritérium.)*

---

## 14. feladat

Igazoljuk, hogy az $f(x) = x^4 + x^3 + x^2 + x + 1$ irreducibilis $\mathbb{Q}$ felett.

**Bizonyítás.**

A megadott polinom az 5. körosztási polinom:
$$f(x) = \Phi_5(x) = \frac{x^5 - 1}{x - 1}.$$
Végezzük el az $x = y + 1$ helyettesítést:
$$g(y) = f(y + 1) = \frac{(y + 1)^5 - 1}{(y + 1) - 1} = \frac{(y + 1)^5 - 1}{y}.$$
Fejtsük ki a számlálót a binomiális tétel segítségével:
$$(y + 1)^5 = y^5 + \binom{5}{1}y^4 + \binom{5}{2}y^3 + \binom{5}{3}y^2 + \binom{5}{4}y + 1 = y^5 + 5y^4 + 10y^3 + 10y^2 + 5y + 1.$$
Ebből 1-et kivonva, majd $y$-nal elosztva kapjuk:
$$g(y) = y^4 + 5y^3 + 10y^2 + 10y + 5.$$
A $g(y)$ polinom együtthatói:
- $a_4 = 1$,
- $a_3 = 5$,
- $a_2 = 10$,
- $a_1 = 10$,
- $a_0 = 5$.

Alkalmazzuk a Schönemann–Eisenstein-kritériumot a $p = 5$ prímszámmal:
1. $p = 5 \nmid a_4 = 1$,
2. $5 \mid a_3 = 5$, $5 \mid a_2 = 10$, $5 \mid a_1 = 10$, $5 \mid a_0 = 5$,
3. $p^2 = 25 \nmid a_0 = 5$ (hiszen $5$ nem osztható $25$-tel).

A kritérium feltételei maradéktalanul teljesülnek, így $g(y)$ irreducibilis $\mathbb{Q}$ felett.
Mivel az $x \mapsto y + 1$ eltolás a $\mathbb{Q}[x]$ polinomgyűrű izomorfizmusa, az eredeti $f(x) = x^4 + x^3 + x^2 + x + 1$ polinom is **irreducibilis $\mathbb{Q}$ felett**. $\blacksquare$

---

## 15. feladat

Igaz-e az $5x^2 \mid 4x^3$ oszthatóság rendre a $\mathbb{C}, \mathbb{R}, \mathbb{Q}, \mathbb{Z}$ feletti polinomok körében?

**Megoldás.**

Egy tetszőleges $R$ kommutatív gyűrű feletti $R[x]$ polinomgyűrűben $g(x) \mid f(x)$ pontosan akkor teljesül, ha létezik olyan $h(x) \in R[x]$ polinom, amelyre
$$f(x) = g(x) \cdot h(x).$$
Esetünkben $f(x) = 4x^3$ és $g(x) = 5x^2$.
Ha létezik megfelelő $h(x)$, akkor a fokszámok alapján $\deg h = \deg f - \deg g = 3 - 2 = 1$, tehát $h(x) = c_1 x + c_0$.
Ekkor:
$$5x^2(c_1 x + c_0) = 5c_1 x^3 + 5c_0 x^2 = 4x^3.$$
Az együtthatókat összehasonlítva:
$$5c_1 = 4 \implies c_1 = \frac{4}{5}, \qquad 5c_0 = 0 \implies c_0 = 0.$$
Így az egyetlen lehetséges hányados:
$$h(x) = \frac{4}{5}x.$$

Vizsgáljuk meg az egyes számköröket:

- **$\mathbb{C}$ felett:** $\frac{4}{5} \in \mathbb{C}$, így $h(x) = \frac{4}{5}x \in \mathbb{C}[x]$. Az oszthatóság **IGAZ**.
- **$\mathbb{R}$ felett:** $\frac{4}{5} \in \mathbb{R}$, így $h(x) = \frac{4}{5}x \in \mathbb{R}[x]$. Az oszthatóság **IGAZ**.
- **$\mathbb{Q}$ felett:** $\frac{4}{5} \in \mathbb{Q}$, így $h(x) = \frac{4}{5}x \in \mathbb{Q}[x]$. Az oszthatóság **IGAZ**.
- **$\mathbb{Z}$ felett:** A $\mathbb{Z}[x]$ gyűrűben a polinomok együtthatóinak egész számoknak kell lenniük. Mivel $\frac{4}{5} \notin \mathbb{Z}$, a $h(x) = \frac{4}{5}x$ nem eleme a $\mathbb{Z}[x]$ gyűrűnek, és más polinom sem elégítheti ki az egyenlőséget. Tehát $\mathbb{Z}[x]$-ben $5x^2 \nmid 4x^3$. Az oszthatóság **NEM IGAZ**.

Összefoglalva:

| Gyűrű | $\mathbb{C}[x]$ | $\mathbb{R}[x]$ | $\mathbb{Q}[x]$ | $\mathbb{Z}[x]$ |
|:---:|:---:|:---:|:---:|:---:|
| $5x^2 \mid 4x^3$ | **Igaz** | **Igaz** | **Igaz** | **Nem igaz** |

---

## 16. feladat

Osszuk el maradékosan az $x^4 - 3x^3 + x - 2$ polinomot a $2x^2 - x + 1$ polinommal a valós számok teste felett.

**Megoldás.**

Olyan $q(x), r(x) \in \mathbb{R}[x]$ polinomokat keresünk, amelyekre
$$x^4 - 3x^3 + x - 2 = (2x^2 - x + 1) q(x) + r(x), \qquad \deg r < \deg(2x^2 - x + 1) = 2.$$

Végezzük el a polinomosztást lépésről lépésre:

$$\begin{array}{l}
\phantom{-} (x^4 - 3x^3 + 0x^2 + x - 2) : (2x^2 - x + 1) = \frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8} \\
\underline{-(x^4 - \frac{1}{2}x^3 + \frac{1}{2}x^2)} \\
\phantom{-(x^4} -\frac{5}{2}x^3 - \frac{1}{2}x^2 + x - 2 \\
\phantom{-(x^4} \underline{-(-\frac{5}{2}x^3 + \frac{5}{4}x^2 - \frac{5}{4}x)} \\
\phantom{-(x^4-\frac{5}{2}x^3} -\frac{7}{4}x^2 + \frac{9}{4}x - 2 \\
\phantom{-(x^4-\frac{5}{2}x^3} \underline{-(-\frac{7}{4}x^2 + \frac{7}{8}x - \frac{7}{8})} \\
\phantom{-(x^4-\frac{5}{2}x^3-\frac{7}{4}x^2} \frac{11}{8}x - \frac{9}{8}
\end{array}$$

*A lépések részletesen:*
1. $\frac{x^4}{2x^2} = \frac{1}{2}x^2$.
   Visszaszorozva: $\frac{1}{2}x^2(2x^2 - x + 1) = x^4 - \frac{1}{2}x^3 + \frac{1}{2}x^2$.
   Kivonva: $(-3 - (-\frac{1}{2}))x^3 + (0 - \frac{1}{2})x^2 + x - 2 = -\frac{5}{2}x^3 - \frac{1}{2}x^2 + x - 2$.
2. $\frac{-\frac{5}{2}x^3}{2x^2} = -\frac{5}{4}x$.
   Visszaszorozva: $-\frac{5}{4}x(2x^2 - x + 1) = -\frac{5}{2}x^3 + \frac{5}{4}x^2 - \frac{5}{4}x$.
   Kivonva: $(-\frac{1}{2} - \frac{5}{4})x^2 + (1 - (-\frac{5}{4}))x - 2 = -\frac{7}{4}x^2 + \frac{9}{4}x - 2$.
3. $\frac{-\frac{7}{4}x^2}{2x^2} = -\frac{7}{8}$.
   Visszaszorozva: $-\frac{7}{8}(2x^2 - x + 1) = -\frac{7}{4}x^2 + \frac{7}{8}x - \frac{7}{8}$.
   Kivonva: $(\frac{9}{4} - \frac{7}{8})x + (-2 - (-\frac{7}{8})) = \frac{11}{8}x - \frac{9}{8}$.

Mivel $\deg\left(\frac{11}{8}x - \frac{9}{8}\right) = 1 < 2$, az eljárás véget ért.

**Eredmény:**
- **Hányados:** $q(x) = \frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8}$
- **Maradék:** $r(x) = \frac{11}{8}x - \frac{9}{8}$

*Ellenőrzés visszaszorzással:*
$$(2x^2 - x + 1)\left(\frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8}\right) + \left(\frac{11}{8}x - \frac{9}{8}\right)$$
$$= \left(x^4 - \frac{5}{2}x^3 - \frac{7}{4}x^2 - \frac{1}{2}x^3 + \frac{5}{4}x^2 + \frac{7}{8}x + \frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8}\right) + \frac{11}{8}x - \frac{9}{8}$$
$$= x^4 - 3x^3 + 0x^2 + \left(\frac{7}{8} - \frac{10}{8} + \frac{11}{8}\right)x + \left(-\frac{7}{8} - \frac{9}{8}\right) = x^4 - 3x^3 + x - 2. \quad \checkmark$$

---

## 17. feladat

Legyen $f(x) = 3x^4 + 2x^2 + x + 4$ és $g(x) = 2x^2 + 1$. Végezzük el az $f(x)$ polinom maradékos osztását a $g(x)$ polinommal a $\mathbb{Z}_5[x]$ polinomgyűrűben.

**Megoldás.**

A $\mathbb{Z}_5$ testben számolunk, ahol $2^{-1} = 3$ (mivel $2 \cdot 3 = 6 \equiv 1 \pmod 5$).
Olyan $q(x), r(x) \in \mathbb{Z}_5[x]$ polinomokat keresünk, amelyekre
$$f(x) = g(x)q(x) + r(x), \qquad \deg r < \deg g = 2.$$

**1. lépés:**
A legmagasabb fokú tagok hányadosa:
$$\frac{3x^4}{2x^2} = (3 \cdot 2^{-1})x^2 = (3 \cdot 3)x^2 = 9x^2 \equiv 4x^2 \pmod 5.$$
Szorozzuk vissza az osztót $4x^2$-tel:
$$4x^2 \cdot (2x^2 + 1) = 8x^4 + 4x^2 \equiv 3x^4 + 4x^2 \pmod 5.$$
Vonjuk ki $f(x)$-ből:
$$(3x^4 + 2x^2 + x + 4) - (3x^4 + 4x^2) = (2 - 4)x^2 + x + 4 = -2x^2 + x + 4 \equiv 3x^2 + x + 4 \pmod 5.$$

**2. lépés:**
A legmagasabb fokú tagok hányadosa:
$$\frac{3x^2}{2x^2} = 3 \cdot 2^{-1} = 3 \cdot 3 = 9 \equiv 4 \pmod 5.$$
Szorozzuk vissza az osztót $4$-gyel:
$$4 \cdot (2x^2 + 1) = 8x^2 + 4 \equiv 3x^2 + 4 \pmod 5.$$
Vonjuk ki az előző maradékból:
$$(3x^2 + x + 4) - (3x^2 + 4) = x.$$

Mivel $\deg(x) = 1 < \deg g = 2$, a maradékos osztás véget ért.

**Eredmény:**
- **Hányados:** $q(x) = 4x^2 + 4$
- **Maradék:** $r(x) = x$

*Ellenőrzés $\mathbb{Z}_5[x]$-ben:*
$$g(x)q(x) + r(x) = (2x^2 + 1)(4x^2 + 4) + x = 8x^4 + 8x^2 + 4x^2 + 4 + x$$
$$= 8x^4 + 12x^2 + x + 4 \equiv 3x^4 + 2x^2 + x + 4 \pmod 5 = f(x). \quad \checkmark$$

---

## 18. feladat

Mi a maradék, ha az $x^6 + x^3 + 1$ polinomot osztjuk $x^2 - x + 1$-gyel? Az eredményt indokoljuk meg formális polinomosztás nélkül is.

**Megoldás.**

**A keresett maradék: $r(x) = 1$.**

*Indoklás formális polinomosztás nélkül:*

**1. módszer (Algebrai azonossággal):**
Ismert a köbök összegére vonatkozó azonosság:
$$(x + 1)(x^2 - x + 1) = x^3 + 1.$$
Ebből következik, hogy
$$x^3 + 1 \equiv 0 \pmod{x^2 - x + 1} \implies x^3 \equiv -1 \pmod{x^2 - x + 1}.$$
Az $x^6 + x^3 + 1$ polinomban az $x^6 = (x^3)^2$, így az $x^3 \equiv -1$ helyettesítést elvégezve:
$$x^6 + x^3 + 1 = (x^3)^2 + x^3 + 1 \equiv (-1)^2 + (-1) + 1 = 1 - 1 + 1 = 1 \pmod{x^2 - x + 1}.$$
Mivel az $1$ konstans polinom foka $0$, ami szigorúan kisebb, mint az osztó foka ($\deg(x^2 - x + 1) = 2$), a maradékos osztás egyértelműsége miatt a maradék pontosan **$1$**.

A közvetlen szorzattá alakítás is azonnal kiadja az összefüggést:
$$x^6 + x^3 + 1 - 1 = x^6 + x^3 = x^3(x^3 + 1) = x^3(x + 1)(x^2 - x + 1).$$
Átrendezve:
$$x^6 + x^3 + 1 = (x^2 - x + 1) \cdot x^3(x + 1) + 1 = (x^2 - x + 1)(x^4 + x^3) + 1.$$
Ez a maradékos osztás alakja, ahol a hányados $q(x) = x^4 + x^3$, a maradék pedig $r(x) = 1$.

**2. módszer (Gyökök behelyettesítésével):**
Az osztó másodfokú, így a maradék legfeljebb elsőfokú: $r(x) = ax + b$.
Az osztó $x^2 - x + 1 = 0$ egyenletének gyökei a primitív 6. egységgyökök: $\omega_{1,2} = \frac{1 \pm i\sqrt{3}}{2} = e^{\pm i\pi/3}$.
Ezekre $\omega^3 = -1$ és $\omega^6 = 1$.
Behelyettesítve $\omega$-t a polinomosztás $f(x) = (x^2 - x + 1)q(x) + r(x)$ egyenlőségébe:
$$f(\omega) = \omega^6 + \omega^3 + 1 = 1 + (-1) + 1 = 1.$$
Másrészt $f(\omega) = 0 \cdot q(\omega) + r(\omega) = a\omega + b$.
Tehát $a\omega + b = 1$ kell teljesüljön mindkét gyökre. Mivel $\omega \notin \mathbb{R}$, ez csak $a = 0, b = 1$ esetén állhat fenn, amiből $r(x) = 1$.

---

## 19. feladat

Határozzuk meg az $x^{100} + 2x^{51} - 3x^2 + 4$ polinom maradékát, ha elosztjuk $x^2 + 1$-gyel, illetve $x^2 - 1$-gyel.

**Megoldás.**

Jelöljük a polinomot $f(x) = x^{100} + 2x^{51} - 3x^2 + 4$-gyel.
Mivel mindkét osztó másodfokú, a maradék mindkét esetben legfeljebb elsőfokú:
$$r(x) = ax + b.$$

**(a) Osztás $x^2 + 1$-gyel:**

Modulo $x^2 + 1$ számolva $x^2 \equiv -1$.
Ekkor a magasabb hatványok:
- $x^{100} = (x^2)^{50} \equiv (-1)^{50} = 1$,
- $x^{51} = (x^2)^{25} \cdot x \equiv (-1)^{25} \cdot x = -x$,
- $x^2 \equiv -1$.

Helyettesítsük be ezeket $f(x)$-be:
$$\begin{aligned}
f(x) &\equiv x^{100} + 2x^{51} - 3x^2 + 4 \\
&\equiv 1 + 2(-x) - 3(-1) + 4 \\
&= 1 - 2x + 3 + 4 \\
&= -2x + 8 \pmod{x^2 + 1}.
\end{aligned}$$
Mivel $\deg(-2x + 8) = 1 < \deg(x^2 + 1) = 2$, a maradék:
$$r_1(x) = -2x + 8.$$

*(Ellenőrzés az $x^2 + 1 = 0$ gyökeivel, $x = \pm i$: $f(i) = i^{100} + 2i^{51} - 3i^2 + 4 = 1 + 2(-i) - 3(-1) + 4 = 8 - 2i$. A maradékra $r_1(i) = ai + b = -2i + 8$, tökéletes egyezés.)*

**(b) Osztás $x^2 - 1$-gyel:**

Modulo $x^2 - 1$ számolva $x^2 \equiv 1$.
Ekkor a hatványok:
- $x^{100} = (x^2)^{50} \equiv 1^{50} = 1$,
- $x^{51} = (x^2)^{25} \cdot x \equiv 1^{25} \cdot x = x$,
- $x^2 \equiv 1$.

Helyettesítsük be ezeket $f(x)$-be:
$$\begin{aligned}
f(x) &\equiv x^{100} + 2x^{51} - 3x^2 + 4 \\
&\equiv 1 + 2(x) - 3(1) + 4 \\
&= 1 + 2x - 3 + 4 \\
&= 2x + 2 \pmod{x^2 - 1}.
\end{aligned}$$
Mivel $\deg(2x + 2) = 1 < \deg(x^2 - 1) = 2$, a maradék:
$$r_2(x) = 2x + 2.$$

*(Ellenőrzés az $x = \pm 1$ gyökökkel: $f(1) = 1 + 2 - 3 + 4 = 4$, $r_2(1) = 2(1) + 2 = 4$; továbbá $f(-1) = 1 - 2 - 3 + 4 = 0$, $r_2(-1) = 2(-1) + 2 = 0$. Tökéletes egyezés.)*

---

## 20. feladat

Tudjuk, hogy egy $f(x) \in \mathbb{R}[x]$ polinomot az $x^2 - 2x + 2$ polinommal osztva a maradék $2x - 3$. Határozzuk meg az $f(1 + i)$ helyettesítési értéket.

**Megoldás.**

A maradékos osztás tétele szerint létezik olyan $q(x) \in \mathbb{R}[x]$ hányadospolinom, amelyre
$$f(x) = (x^2 - 2x + 2) q(x) + (2x - 3).$$
Helyettesítsünk $x = 1 + i$-t a fenti egyenlőségbe.
Számítsuk ki először az osztó értékét az $x = 1 + i$ helyen:
$$\begin{aligned}
(1 + i)^2 - 2(1 + i) + 2 &= (1 + 2i + i^2) - 2 - 2i + 2 \\
&= (1 + 2i - 1) - 2i \\
&= 2i - 2i = 0.
\end{aligned}$$
(Ez geometriailag is nyilvánvaló: az $x = 1 + i$ számra $x - 1 = i \implies (x - 1)^2 = -1 \implies x^2 - 2x + 1 = -1 \implies x^2 - 2x + 2 = 0$, tehát $1 + i$ gyöke az $x^2 - 2x + 2$ polinomnak.)

Mivel az osztó értéke $0$, az első tag kiesik:
$$(x^2 - 2x + 2) q(x) \Big|_{x = 1 + i} = 0 \cdot q(1 + i) = 0.$$
Így az $f(1 + i)$ értéke megegyezik a maradékpolinom helyettesítési értékével:
$$f(1 + i) = 2(1 + i) - 3 = 2 + 2i - 3 = -1 + 2i.$$

A keresett érték tehát:
$$f(1 + i) = -1 + 2i.$$

---

## 21. feladat

Az euklideszi algoritmussal határozzuk meg az $f(x) = x^4 - 4x^3 + 5x^2 - 4x + 4$ és a $g(x) = x^3 - 3x^2 + 4x - 2$ polinomok kitüntetett közös osztóját a racionális számok teste felett.

**Megoldás.**

A racionális számok $\mathbb{Q}$ teste feletti polinomgyűrűben a kitüntetett közös osztó az a normált (főegyütthatója 1) közös osztó, amelynek minden más közös osztó többszöröse (azaz az euklideszi algoritmus utolsó nem nulla maradékának normált alakja).

Végezzük el az euklideszi algoritmust:

**1. lépés: Osszuk el $f(x)$-et $g(x)$-szel:**
$$\begin{array}{l}
\phantom{-} (x^4 - 4x^3 + 5x^2 - 4x + 4) : (x^3 - 3x^2 + 4x - 2) = x - 1 \\
\underline{-(x^4 - 3x^3 + 4x^2 - 2x)} \\
\phantom{-(x^4} -x^3 + x^2 - 2x + 4 \\
\phantom{-(x^4} \underline{-(-x^3 + 3x^2 - 4x + 2)} \\
\phantom{-(x^4-x^3} -2x^2 + 2x + 2
\end{array}$$
Az első hányados $q_1(x) = x - 1$, az első maradék:
$$r_1(x) = -2x^2 + 2x + 2.$$

**2. lépés: Osszuk el $g(x)$-et az $r_1(x)$ maradékkal:**
$$g(x) = x^3 - 3x^2 + 4x - 2, \qquad r_1(x) = -2x^2 + 2x + 2.$$
A számolást végezhetjük közvetlenül $r_1(x)$-szel:
- $\frac{x^3}{-2x^2} = -\frac{1}{2}x$.
  Visszaszorozva: $-\frac{1}{2}x(-2x^2 + 2x + 2) = x^3 - x^2 - x$.
  Kivonva: $(x^3 - 3x^2 + 4x - 2) - (x^3 - x^2 - x) = -2x^2 + 5x - 2$.
- $\frac{-2x^2}{-2x^2} = 1$.
  Visszaszorozva: $1 \cdot (-2x^2 + 2x + 2) = -2x^2 + 2x + 2$.
  Kivonva: $(-2x^2 + 5x - 2) - (-2x^2 + 2x + 2) = 3x - 4$.

A második hányados $q_2(x) = -\frac{1}{2}x + 1$, a második maradék:
$$r_2(x) = 3x - 4.$$

**3. lépés: Osszuk el $r_1(x)$-et az $r_2(x)$ maradékkal:**
$$r_1(x) = -2x^2 + 2x + 2, \qquad r_2(x) = 3x - 4.$$
- $\frac{-2x^2}{3x} = -\frac{2}{3}x$.
  Visszaszorozva: $-\frac{2}{3}x(3x - 4) = -2x^2 + \frac{8}{3}x$.
  Kivonva: $(-2x^2 + 2x + 2) - (-2x^2 + \frac{8}{3}x) = \left(2 - \frac{8}{3}\right)x + 2 = -\frac{2}{3}x + 2$.
- $\frac{-\frac{2}{3}x}{3x} = -\frac{2}{9}$.
  Visszaszorozva: $-\frac{2}{9}(3x - 4) = -\frac{2}{3}x + \frac{8}{9}$.
  Kivonva: $\left(-\frac{2}{3}x + 2\right) - \left(-\frac{2}{3}x + \frac{8}{9}\right) = 2 - \frac{8}{9} = \frac{10}{9}$.

A harmadik hányados $q_3(x) = -\frac{2}{3}x - \frac{2}{9}$, a harmadik maradék:
$$r_3 = \frac{10}{9} \ne 0.$$

**4. lépés: Következő osztás:**
Mivel $r_3 = \frac{10}{9}$ egy nem nulla konstans, a következő lépésben a $(3x - 4)$ polinomot $\frac{10}{9}$-cel osztva a maradék $0$ lesz:
$$3x - 4 = \left(\frac{27}{10}x - \frac{18}{5}\right) \cdot \frac{10}{9} + 0.$$

Az utolsó nem nulla maradék a $\frac{10}{9}$ konstans.
Mivel a racionális számok teste felett minden nem nulla konstans invertálható (egység), az asszociáltság erejéig az 1-gyel egyenértékű. A kitüntetett (normált) legnagyobb közös osztó:
$$\operatorname{lnko}(f, g) = 1.$$
A két polinom tehát **relatív prím** $\mathbb{Q}[x]$-ben.

*Ellenőrzés faktorizációval:*
- $f(x) = x^4 - 4x^3 + 5x^2 - 4x + 4 = (x - 2)^2 (x^2 + 1)$, melynek komplex gyökei $2$ (kétszeres) és $\pm i$.
- $g(x) = x^3 - 3x^2 + 4x - 2 = (x - 1)(x^2 - 2x + 2)$, melynek komplex gyökei $1$ és $1 \pm i$.
A két polinomnak nincs közös gyöke a komplex számok testében, így $\mathbb{Q}[x]$-ben sincs közös osztójuk az egységeken (konstansokon) kívül. Tehát $\operatorname{lnko}(f, g) = 1$.

---

## 22. feladat

Mi lesz az $x^{12} - 1$ és az $x^{18} - 1$ polinomok legnagyobb közös osztója? Igazoljuk az eredményt, és fogalmazzunk meg egy általános sejtést az $x^n - 1$ és $x^m - 1$ polinomok közös osztójára.

**Megoldás.**

**(a) Az $x^{12} - 1$ és $x^{18} - 1$ legnagyobb közös osztója:**

**Az eredmény: $\operatorname{lnko}(x^{12} - 1, x^{18} - 1) = x^6 - 1$.**

*Igazolás euklideszi algoritmussal:*
Végezzük el a maradékos osztást a két polinom között:
$$x^{18} - 1 = x^6(x^{12} - 1) + (x^6 - 1).$$
Itt az osztó $x^{12} - 1$, a hányados $x^6$, a maradék pedig $x^6 - 1$.
Mivel $\deg(x^6 - 1) = 6 < 12 = \deg(x^{12} - 1)$, ez valóban a maradékos osztás alakja.

A következő lépésben az $x^{12} - 1$ polinomot osztjuk a kapott $x^6 - 1$ maradékkal:
Mivel $12 = 6 \cdot 2$, a két négyzet különbségének azonossága szerint:
$$x^{12} - 1 = (x^6)^2 - 1 = (x^6 - 1)(x^6 + 1) + 0.$$
A maradék $0$.
Az euklideszi algoritmus utolsó nem nulla maradéka $x^6 - 1$, amely normált, így ez a kitüntetett legnagyobb közös osztó:
$$\operatorname{lnko}(x^{12} - 1, x^{18} - 1) = x^6 - 1.$$

*(Igazolás komplex egységgyökökkel: Az $x^{12} - 1$ gyökei a 12. komplex egységgyökök, az $x^{18} - 1$ gyökei a 18. egységgyökök. Egy $\zeta$ egységgyök pontosan akkor közös gyök, ha rendje osztja 12-t és 18-at is, azaz rendje osztja $\operatorname{lnko}(12, 18) = 6$-ot. Tehát a közös gyökök éppen a 6. egységgyökök, és mivel minden gyök egyszeres, a kitüntetett közös osztó $\prod_{\zeta^6 = 1}(x - \zeta) = x^6 - 1$.)*

**(b) Általános sejtés és bizonyítás:**

> **Tétel (Sejtés).** Tetszőleges $n, m \in \mathbb{N}^+$ pozitív egészek esetén:
> $$\operatorname{lnko}(x^n - 1, x^m - 1) = x^{\operatorname{lnko}(n, m)} - 1.$$

*Bizonyítás:*
A bizonyítás kulcsa, hogy megmutatjuk: a polinomokon végzett euklideszi algoritmus lépésről lépésre párhuzamosan fut a kitevőkön végzett közönséges euklideszi algoritmussal.

Tegyük fel, hogy $m \ge n$. Osszuk el $m$-et maradékosan $n$-nel az egész számok körében:
$$m = qn + r, \qquad \text{ahol } 0 \le r < n.$$
Írjuk fel az $x^m - 1$ polinomot:
$$\begin{aligned}
x^m - 1 &= x^{qn + r} - 1 \\
&= x^r(x^{qn} - 1) + (x^r - 1).
\end{aligned}$$
Mivel $x^n - 1 \mid (x^n)^q - 1 = x^{qn} - 1$ (az $y^q - 1 = (y - 1)(y^{q-1} + \dots + 1)$ azonosság alapján $y = x^n$-nel), létezik olyan $Q(x)$ polinom, hogy $x^{qn} - 1 = Q(x)(x^n - 1)$.
Ezért:
$$x^m - 1 = x^r Q(x) \cdot (x^n - 1) + (x^r - 1).$$
Itt:
- Ha $r > 0$, akkor $\deg(x^r - 1) = r < n = \deg(x^n - 1)$, így az $x^m - 1$ polinomnak az $x^n - 1$-gyel való osztási maradéka pontosan **$x^r - 1$**.
- Ha $r = 0$, akkor $x^r - 1 = x^0 - 1 = 0$, tehát a maradék $0$.

Ez azt jelenti, hogy ha a kitevők euklideszi algoritmusa a következő lépésekből áll:
$$\begin{aligned}
m &= q_1 n + r_1, \\
n &= q_2 r_1 + r_2, \\
r_1 &= q_3 r_2 + r_3, \\
&\ \ \vdots \\
r_{k-1} &= q_{k+1} r_k + 0, \qquad \text{ahol } r_k = \operatorname{lnko}(n, m),
\end{aligned}$$
akkor a megfelelő polinomok euklideszi algoritmusa pontosan a következő:
$$\begin{aligned}
x^m - 1 &= Q_1(x)(x^n - 1) + (x^{r_1} - 1), \\
x^n - 1 &= Q_2(x)(x^{r_1} - 1) + (x^{r_2} - 1), \\
&\ \ \vdots \\
x^{r_{k-1}} - 1 &= Q_{k+1}(x)(x^{r_k} - 1) + 0.
\end{aligned}$$
Az utolsó nem nulla maradék a polinomok körében tehát:
$$x^{r_k} - 1 = x^{\operatorname{lnko}(n, m)} - 1.$$
Mivel ez a polinom normált (főegyütthatója 1), ez adja a kitüntetett legnagyobb közös osztót. $\blacksquare$

# Algebra és számelmélet – 11. feladatsor – megoldások

Alapfogalmak és tételek a feladatsorhoz:
- **Számelméleti függvény:** olyan $f \colon \mathbb{N}^+ \to \mathbb{C}$ leképezés, amely a pozitív egész számokhoz rendel komplex számokat.
- **Multiplikatív függvény:** olyan számelméleti függvény, amelyre $f(1) = 1$, és tetszőleges relatív prím $a, b \in \mathbb{N}^+$ számokra ($ (a, b) = 1$):
  $$f(ab) = f(a)f(b).$$
  Ha a feltétel tetszőleges (nem feltétlenül relatív prím) $a, b$-re is fennáll, a függvény **teljesen multiplikatív**.
- **Additív függvény:** olyan számelméleti függvény, amelyre $f(ab) = f(a) + f(b)$ minden $(a, b) = 1$ esetén. (Ekkor szükségszerűen $f(1) = 0$). Ha minden $a, b$-re teljesül, a függvény **teljesen additív**.
- **Dirichlet-konvolúció:** két számelméleti függvény $f * g$ konvolúciója:
  $$(f * g)(n) = \sum_{d \mid n} f(d) g\left(\frac{n}{d}\right) = \sum_{ab = n} f(a)g(b).$$
  A Dirichlet-konvolúció kommutatív, asszociatív, egységeleme az $\varepsilon(n) = \lfloor 1/n \rfloor$ függvény.
- **Nevezetes számelméleti függvények:**
  - $\varepsilon(n) = \begin{cases} 1, & \text{ha } n = 1 \\ 0, & \text{ha } n > 1 \end{cases}$ (Dirichlet-egységelem),
  - $\mathbf{1}(n) = 1$ minden $n$-re,
  - $I(n) = n$ minden $n$-re (identitás),
  - $d(n) = \sum_{d \mid n} 1 = (\mathbf{1} * \mathbf{1})(n)$ (osztók száma),
  - $\sigma(n) = \sum_{d \mid n} d = (I * \mathbf{1})(n)$ (osztók összege),
  - $\varphi(n)$ az Euler-féle totiens függvény ($\varphi * \mathbf{1} = I$),
  - $\mu(n)$ a Möbius-függvény ($\mu * \mathbf{1} = \varepsilon$).
- **Möbius-féle megfordítási formula:**
  $$g(n) = \sum_{d \mid n} f(d) \iff f(n) = \sum_{d \mid n} \mu(d) g\left(\frac{n}{d}\right), \quad \text{azaz } g = f * \mathbf{1} \iff f = g * \mu.$$

---

## 1. feladat

Két multiplikatív függvény szorzata, illetve hányadosa multiplikatív.

**Megoldás.**

Legyen $f$ és $g$ két multiplikatív számelméleti függvény. Ekkor definíció szerint $f(1) = 1$ és $g(1) = 1$, továbbá bármely relatív prím $a, b \in \mathbb{N}^+$ esetén ($ (a, b) = 1$):
$$f(ab) = f(a)f(b) \quad \text{és} \quad g(ab) = g(a)g(b).$$

**1. Szorzatfüggvény:**
Legyen $h(n) = f(n) \cdot g(n)$ a pontonkénti szorzat.
- $h(1) = f(1)g(1) = 1 \cdot 1 = 1$.
- Tetszőleges $(a, b) = 1$ esetén:
  $$h(ab) = f(ab)g(ab) = (f(a)f(b))(g(a)g(b)) = (f(a)g(a))(f(b)g(b)) = h(a)h(b).$$
Tehát a szorzatfüggvény multiplikatív.

**2. Hányadosfüggvény:**
Tegyük fel, hogy $g(n) \ne 0$ minden $n \in \mathbb{N}^+$ esetén, és legyen $q(n) = \frac{f(n)}{g(n)}$.
- $q(1) = \frac{f(1)}{g(1)} = \frac{1}{1} = 1$.
- Tetszőleges $(a, b) = 1$ esetén:
  $$q(ab) = \frac{f(ab)}{g(ab)} = \frac{f(a)f(b)}{g(a)g(b)} = \frac{f(a)}{g(a)} \cdot \frac{f(b)}{g(b)} = q(a)q(b).$$
Tehát a hányadosfüggvény is multiplikatív. $\blacksquare$

---

## 2. feladat

Két additív függvény összege, illetve különbsége additív.

**Megoldás.**

Legyen $f$ és $g$ két additív számelméleti függvény. Ekkor tetszőleges relatív prím $a, b \in \mathbb{N}^+$ esetén:
$$f(ab) = f(a) + f(b) \quad \text{és} \quad g(ab) = g(a) + g(b).$$

**1. Összegfüggvény:**
Legyen $s(n) = f(n) + g(n)$. Ha $(a, b) = 1$:
$$s(ab) = f(ab) + g(ab) = (f(a) + f(b)) + (g(a) + g(b)) = (f(a) + g(a)) + (f(b) + g(b)) = s(a) + s(b).$$
Tehát az összegfüggvény additív.

**2. Különbségfüggvény:**
Legyen $d(n) = f(n) - g(n)$. Ha $(a, b) = 1$:
$$d(ab) = f(ab) - g(ab) = (f(a) + f(b)) - (g(a) + g(b)) = (f(a) - g(a)) + (f(b) - g(b)) = d(a) + d(b).$$
Tehát a különbségfüggvény is additív. $\blacksquare$

---

## 3. feladat

Legyen $f$ számelméleti függvény, $f(n) > 0$ minden $n$ természetes számra. Igazoljuk, hogy ha $f$ multiplikatív, akkor $\log f$ additív.

**Megoldás.**

Mivel $f(n) > 0$ minden $n$-re, a $\log f(n)$ kifejezés értelmezett.
Legyen $h(n) = \log(f(n))$.
Tetszőleges $(a, b) = 1$ relatív prím pár esetén, mivel $f$ multiplikatív, fennáll:
$$f(ab) = f(a)f(b).$$
Mindkét oldal logaritmusát véve, és felhasználva a logaritmus azonosságát pozitív számok szorzatára ($\log(xy) = \log x + \log y$):
$$h(ab) = \log(f(ab)) = \log(f(a)f(b)) = \log(f(a)) + \log(f(b)) = h(a) + h(b).$$
Ez pontosan az additivitás definíciója, így a $\log f$ függvény valóban additív. $\blacksquare$

---

## 4. feladat

Az alábbi $f \colon \mathbb{N} \to \mathbb{R}$ függvények közül melyek multiplikatívak, melyek additívak?
$$f(n) = n^3, \qquad f(n) = 2^{\omega(n)}, \qquad f(n) = n + 2.$$
($\omega(n)$ az $n$ különböző prímosztóinak számát jelöli)

**Megoldás.**

**1. $f(n) = n^3$:**
- **Multiplikativitás:** $f(1) = 1^3 = 1$. Tetszőleges $a, b \in \mathbb{N}^+$ esetén:
  $$f(ab) = (ab)^3 = a^3 b^3 = f(a)f(b).$$
  Tehát $f$ **multiplikatív** (sőt teljesen multiplikatív).
- **Additivitás:** Egy additív függvényre $f(1) = 0$ kellene legyen, de itt $f(1) = 1 \ne 0$. Konkrét ellenpélda: $(2, 3) = 1$, $f(6) = 216$, míg $f(2) + f(3) = 8 + 27 = 35 \ne 216$. Tehát **nem additív**.

**2. $f(n) = 2^{\omega(n)}$:**
- $\omega(n)$ az $n$ különböző prímosztóinak száma ($\omega(1) = 0$).
  Ha $(a, b) = 1$, akkor $a$-nak és $b$-nek nincsenek közös prímosztói, így $ab$ különböző prímosztóinak halmaza az $a$ és $b$ prímosztóhalmazainak diszjunkt uniója. Ezért:
  $$\omega(ab) = \omega(a) + \omega(b),$$
  vagyis az $\omega$ függvény additív.
- Ekkor:
  $$f(1) = 2^{\omega(1)} = 2^0 = 1.$$
  Továbbá tetszőleges $(a, b) = 1$ esetén:
  $$f(ab) = 2^{\omega(ab)} = 2^{\omega(a) + \omega(b)} = 2^{\omega(a)} \cdot 2^{\omega(b)} = f(a)f(b).$$
  Tehát az $f(n) = 2^{\omega(n)}$ függvény **multiplikatív**.
- **Additivitás:** $f(1) = 1 \ne 0$, így **nem additív**. (Pl. $f(6) = 2^2 = 4$, míg $f(2) + f(3) = 2^1 + 2^1 = 4$, de $f(1 \cdot 2) = 2 \ne 1 + 2 = 3$).

**3. $f(n) = n + 2$:**
- **Multiplikativitás:** $f(1) = 1 + 2 = 3 \ne 1$. Mivel egy multiplikatív függvény értéke az 1 helyen szükségképpen 1, ez a függvény **nem multiplikatív**. (Pl. $f(2 \cdot 3) = f(6) = 8$, míg $f(2)f(3) = 4 \cdot 5 = 20 \ne 8$).
- **Additivitás:** $f(1) = 3 \ne 0$, így **nem additív**. (Pl. $f(6) = 8$, míg $f(2) + f(3) = 4 + 5 = 9 \ne 8$).

---

## 5. feladat

A von Mangoldt-féle $\Lambda$ függvény definíciója a következő:
$$\Lambda(n) = \begin{cases} \log p, & \text{ha } n = p^\alpha, \text{ ahol } p \text{ prím és } \alpha \ge 1, \\ 0, & \text{különben.} \end{cases}$$
Igazoljuk, hogy $\Lambda$ nem additív.

**Megoldás.**

Elég egy ellenpéldát mutatni az additivitás definíciójára ($f(ab) = f(a) + f(b)$ minden $(a, b) = 1$-re):
- Vegyük az $a = 2$ és $b = 3$ relatív prím számokat: $(2, 3) = 1$.
- Mivel 2 és 3 prímek:
  $$\Lambda(2) = \log 2, \qquad \Lambda(3) = \log 3.$$
- A szorzatuk $ab = 6$. Mivel 6-nak két különböző prímosztója van ($2$ és $3$), a 6 nem prímhatvány!
- A definíció szerint ezért:
  $$\Lambda(6) = 0.$$
- Azonban:
  $$\Lambda(2) + \Lambda(3) = \log 2 + \log 3 = \log 6 \ne 0 = \Lambda(6).$$

Tehát a $\Lambda$ függvény **nem additív** (és nem is multiplikatív, hiszen $\Lambda(1) = 0 \ne 1$).

::: elmelet
**Megjegyzés — a von Mangoldt-függvény valódi szerepe.** A $\Lambda$ függvény alapvető tulajdonsága nem az additivitás, hanem az, hogy összegzési függvénye a logaritmus (6. feladat (2) része):
$$\sum_{d \mid n} \Lambda(d) = \log n, \qquad \text{azaz} \qquad \Lambda * \mathbf{1} = \log.$$
A $\log n$ függvény viszont már **teljesen additív**. A Möbius-féle megfordítással ebből $\Lambda = \mu * \log$, azaz $\Lambda(n) = -\sum_{d \mid n} \mu(d) \log d$.
:::

---

## 6. feladat

Bizonyítsuk, hogy

(1) $\sum_{d \mid n} \mu(d) = \lfloor 1/n \rfloor$,

(2) (házi feladat) $\sum_{d \mid n} \Lambda(d) = \log n$.

**Megoldás.**

**(1)** Azt kell igazolnunk, hogy $(\mu * \mathbf{1})(n) = \lfloor 1/n \rfloor = \varepsilon(n)$, vagyis az összeg értéke 1, ha $n = 1$, és 0, ha $n > 1$.
- Ha $n = 1$: az egyetlen pozitív osztó a $d = 1$, így $\mu(1) = 1 = \lfloor 1/1 \rfloor$.
- Ha $n > 1$: írjuk fel $n$ kanonikus prímfelbontását:
  $$n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k} \qquad (k \ge 1, \alpha_i \ge 1).$$
  A Möbius-függvény definíciója szerint $\mu(d) = 0$, ha $d$ nem négyzetmentes. Ezért az összegben csak a négyzetmentes osztók adnak nem nulla értéket: ezek olyan számok, amelyek a $p_1, \dots, p_k$ prímek közül választott különböző prímek szorzatai.
  Egy pontosan $j$ darab különböző prímet tartalmazó $d$ osztóra $\mu(d) = (-1)^j$.
  Ilyen $j$ tényezős osztót $\binom{k}{j}$-féleképpen választhatunk ki a $k$ prím közül ($0 \le j \le k$).
  Ezért:
  $$\sum_{d \mid n} \mu(d) = \sum_{j=0}^{k} \binom{k}{j} (-1)^j = (1 - 1)^k = 0^k = 0 = \lfloor 1/n \rfloor.$$
Ezzel az (1) állítást beláttuk. $\blacksquare$

**(2) (házi feladat)**
Legyen $n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k}$ az $n > 1$ pozitív egész kanonikus prímfelbontása.
A $\Lambda(d)$ függvény definíciója szerint $\Lambda(d) \ne 0$ pontosan akkor teljesül, ha $d$ prímhatvány, azaz $d = p_i^j$ valamely $1 \le i \le k$ és $1 \le j \le \alpha_i$ esetén. Ekkor $\Lambda(p_i^j) = \log p_i$. Minden más osztóra $\Lambda(d) = 0$.
Ezért az összeg:
$$\sum_{d \mid n} \Lambda(d) = \sum_{i=1}^{k} \sum_{j=1}^{\alpha_i} \Lambda(p_i^j) = \sum_{i=1}^{k} \sum_{j=1}^{\alpha_i} \log p_i = \sum_{i=1}^{k} \alpha_i \log p_i.$$
A logaritmus azonosságai alapján:
$$\sum_{i=1}^{k} \alpha_i \log p_i = \sum_{i=1}^{k} \log(p_i^{\alpha_i}) = \log\left(\prod_{i=1}^{k} p_i^{\alpha_i}\right) = \log n.$$
Ha $n = 1$: az egyetlen osztó az 1, $\Lambda(1) = 0 = \log 1$, ami szintén helyes.
Tehát minden $n \ge 1$ esetén $\sum_{d \mid n} \Lambda(d) = \log n$. $\blacksquare$

---

## 7. feladat

Melyek azok a pozitív egész számok, amelyeknek pontosan 3 pozitív osztójuk van?

**Megoldás.**

Legyen $n \in \mathbb{N}^+$ kanonikus prímfelbontása $n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k}$.
Az osztók számának jól ismert képlete:
$$d(n) = (\alpha_1 + 1)(\alpha_2 + 1)\dots(\alpha_k + 1).$$
A feladat feltétele szerint $d(n) = 3$.
Mivel 3 prímszám, 1-nél nagyobb egészek szorzataként csak egytényezős szorzatként állhat elő:
$$3 = \alpha_1 + 1 \implies \alpha_1 = 2, \quad k = 1.$$
Tehát az $n$ számnak egyetlen prímosztója van, és annak kitevője 2, vagyis:
$$n = p^2, \quad \text{ahol } p \text{ prímszám}.$$
A keresett számok pontosan a **prímszámok négyzetei** (például $4, 9, 25, 49, 121, \dots$).
Ezek pozitív osztói mindig: $\{1, p, p^2\}$, ami valóban pontosan 3 darab osztó.

---

## 8. feladat

Jelölje $d(n)$ az $n$ pozitív egész szám osztóinak számát. Lássuk be, hogy minden $n \ge 1$ esetén fennáll a $d(n) \le 2\sqrt{n}$ egyenlőtlenség.

**Megoldás.**

Az $n$ pozitív osztói párokba állíthatók: ha $d \mid n$, akkor a $d' = \frac{n}{d}$ szám szintén osztója $n$-nek, és $d \cdot d' = n$.
Minden $\{d, n/d\}$ osztópárban a két tényező közül a kisebbik szükségképpen legfeljebb $\sqrt{n}$:
$$d \le \frac{n}{d} \iff d^2 \le n \iff d \le \sqrt{n}.$$
Tehát minden osztópárnak van legalább egy olyan eleme, amely az $[1, \sqrt{n}]$ intervallumba esik.
Az $[1, \sqrt{n}]$ intervallumba eső egész számok száma legfeljebb $\lfloor\sqrt{n}\rfloor \le \sqrt{n}$.
Minden egyes $d \le \sqrt{n}$ osztóhoz legfeljebb egy darab $n/d \ge \sqrt{n}$ osztó tartozhat.
Így az összes osztó száma:
$$d(n) \le 2 \cdot (\text{a } \le \sqrt{n} \text{ osztók száma}) \le 2\sqrt{n}.$$
*(Megjegyzés: Ha $n$ négyzetszám, a $d = \sqrt{n}$ osztó önmagával képez párt, így ott $d(n) \le 2\lfloor\sqrt{n}\rfloor - 1 < 2\sqrt{n}$).*
Tehát minden $n \ge 1$ esetén érvényes a $d(n) \le 2\sqrt{n}$ egyenlőtlenség. $\blacksquare$

---

## 9. feladat

Igazoljuk, hogy $\prod_{t \mid n} t = n^{d(n)/2}$.

**Megoldás.**

Jelölje $P = \prod_{t \mid n} t$ az $n$ pozitív osztóinak szorzatát.
Mivel a $t \mapsto \frac{n}{t}$ leképezés az $n$ pozitív osztói halmazának önmagára vett bijekciója (az osztók halmaza megegyezik a komplementer osztók halmazával), a szorzatot felírhatjuk így is:
$$P = \prod_{t \mid n} \frac{n}{t}.$$
Szorozzuk össze a két azonos értékű kifejezést:
$$P^2 = \left(\prod_{t \mid n} t\right) \left(\prod_{t \mid n} \frac{n}{t}\right) = \prod_{t \mid n} \left(t \cdot \frac{n}{t}\right) = \prod_{t \mid n} n.$$
Mivel a szorzatban a tényezők száma pontosan az osztók száma, azaz $d(n)$, ezért:
$$P^2 = n^{d(n)}.$$
Mivel $P > 0$, mindkét oldalból négyzetgyököt vonva:
$$P = \prod_{t \mid n} t = n^{d(n)/2}.$$ $\blacksquare$

---

## 10. feladat

Oldjuk meg a $\sigma(x) = x + 7$ egyenletet a pozitív egész számok halmazán.

**Megoldás.**

A $\sigma(x)$ függvény az $x$ összes pozitív osztójának összege.
Mivel minden $x > 1$ számra az 1 és az $x$ két különböző pozitív osztó, a valódi osztók összege:
$$\sigma(x) - x = \sum_{\substack{d \mid x \\ d < x}} d.$$
Az egyenlet szerint $\sigma(x) - x = 7$, tehát az $x$-nél szigorúan kisebb pozitív osztók összege pontosan 7:
$$\sum_{\substack{d \mid x \\ d < x}} d = 7.$$

- $x = 1$ nem megoldás, mert $\sigma(1) = 1 \ne 8$.
- Ha $x$ prím, akkor egyetlen valódi osztója az 1, az összeg $1 \ne 7$.
- Ha $x$ összetett, legyen $p$ a legkisebb prímosztója, és $d_1 = \frac{x}{p}$ a legnagyobb valódi osztója ($1 < d_1 < x$). Az 1 és a $d_1$ is szerepel az összegben, így $1 + d_1 \le 7$, azaz $d_1 \le 6$. Mivel $p$ a legkisebb prímosztó, $p \le d_1$ legkisebb prímosztója. A lehetséges esetek:

| $d_1$ | $x = p \cdot d_1$ | valódi osztók | összegük |
|:---:|:---:|:---:|:---:|
| $2$ | $4$ | $1, 2$ | $3$ |
| $3$ | $6, 9$ | $1, 2, 3$; $1, 3$ | $6$; $4$ |
| $4$ | $8$ | $1, 2, 4$ | $\mathbf{7}$ |
| $5$ | $10, 15, 25$ | $1, 2, 5$; $1, 3, 5$; $1, 5$ | $8$; $9$; $6$ |
| $6$ | $12$ | $1, 2, 3, 4, 6$ | $16$ |

Egyedül $x = 8$ felel meg: $\sigma(8) = 1 + 2 + 4 + 8 = 15 = 8 + 7$.

Ezért az egyenlet egyetlen megoldása a pozitív egészek körében:
$$\mathbf{x = 8}.$$

---

## 11. feladat

Keressük meg az összes olyan pozitív egész $x$ számot, amelyre $\varphi(x) = x - 1$ teljesül.

**Megoldás.**

A $\varphi(x)$ Euler-féle függvény az $\{1, 2, \dots, x\}$ halmaz azon elemeinek a száma, amelyek relatív prímek $x$-hez.
- Az $x$ szám önmagával sosem relatív prím, ha $x > 1$, hiszen $\operatorname{lnko}(x, x) = x > 1$.
- Ezért az $\{1, 2, \dots, x\}$ számok közül legfeljebb az első $x - 1$ darab szám lehet relatív prím $x$-hez, azaz minden $x > 1$-re:
  $$\varphi(x) \le x - 1.$$
- Az egyenlőség, $\varphi(x) = x - 1$ pontosan akkor áll fenn, ha az összes $1, 2, \dots, x - 1$ szám relatív prím $x$-hez.
- Ez azt jelenti, hogy $x$-nek nincs 1-nél nagyobb és $x$-nél kisebb közös osztója egyetlen kisebb számmal sem, vagyis $x$-nek nincs valódi osztója: **$x$ prímszám**.
- Ha $x$ összetett szám lenne, akkor létezne olyan $1 < d < x$ valódi osztója, amelyre $\operatorname{lnko}(d, x) = d > 1$, így $d$ nem lenne relatív prím $x$-hez, ami miatt $\varphi(x) \le x - 2$ lenne.
- Ha $x = 1$, akkor $\varphi(1) = 1 \ne 1 - 1 = 0$.

Tehát az egyenlet megoldása az összes **prímszám**:
$$\mathbf{x = p}, \quad \text{ahol } p \text{ prím}.$$

---

## 12. feladat

Keressük meg azt a pozitív egész $n$ számot, amelyre teljesül, hogy az osztóinak száma $d(n) = 6$, az osztóinak összege pedig $\sigma(n) = 28$.

**Megoldás.**

Írjuk fel $n$ prímfelbontását. A $d(n) = 6$ egyenlőség a lehetséges kitevőkre két esetet enged meg ($6 = 6$ vagy $6 = 3 \times 2$):

**1. eset:** $n = p^5$ egyetlen prím hatványa.
Ekkor:
$$\sigma(n) = 1 + p + p^2 + p^3 + p^4 + p^5.$$
- Ha $p = 2$: $\sigma(2^5) = 1 + 2 + 4 + 8 + 16 + 32 = 63 > 28$.
- Ha $p \ge 3$, akkor $\sigma(n)$ még nagyobb.
Ebben az esetben tehát nincs megoldás.

**2. eset:** $n = p^2 q$, ahol $p$ és $q$ különböző prímszámok.
Mivel a $\sigma$ függvény multiplikatív:
$$\sigma(n) = \sigma(p^2) \sigma(q) = (1 + p + p^2)(1 + q) = 28.$$
Mivel $p$ prím, $p \ge 2$, így:
$$1 + p + p^2 \ge 1 + 2 + 4 = 7.$$
Továbbá $1 + p + p^2$ osztója kell legyen a 28-nak. A 28 azon pozitív osztói, amelyek $\ge 7$: a $7, 14, 28$.
- Ha $1 + p + p^2 = 7$:
  $$p(p + 1) = 6 \implies p = 2.$$
  Ekkor $1 + q = \frac{28}{7} = 4 \implies q = 3$.
  Mivel $p = 2$ és $q = 3$ különböző prímek, ez valóban megoldást ad:
  $$n = 2^2 \cdot 3 = 12.$$
- Ha $1 + p + p^2 = 14$: $p(p+1) = 13$, nincs egész megoldása.
- Ha $1 + p + p^2 = 28$: $p(p+1) = 27$, nincs egész megoldása.

Ellenőrizzük az $n = 12$-t:
- Osztói: $1, 2, 3, 4, 6, 12$.
- $d(12) = 6$.
- $\sigma(12) = 1 + 2 + 3 + 4 + 6 + 12 = 28$.

Tehát a keresett szám:
$$\mathbf{n = 12}.$$

---

## 13. feladat

Legyenek $f, g$ számelméleti függvények. Az $(f * g)(n) = \sum_{d \mid n} f(d)g(n/d)$ képlettel megadott számelméleti függvény az $f$ és $g$ Dirichlet-konvolúciója. Igazoljuk a következőket:

(1) $f * g = g * f$,

(2) $(f * g) * h = f * (g * h)$,

(3) Ha $f$ és $g$ multiplikatívak, akkor $f * g$ multiplikatív,

ahol $f, g, h$ tetszőleges számelméleti függvények.

**Megoldás.**

**(1) Kommutativitás:**
$$(f * g)(n) = \sum_{d \mid n} f(d) g\left(\frac{n}{d}\right).$$
Vezessünk be új összegzési változót: legyen $k = \frac{n}{d}$.
Amikor $d$ végigfut $n$ pozitív osztóin, $k$ szintén pontosan egyszer fut végig $n$ pozitív osztóin, és ekkor $d = \frac{n}{k}$. Ezért:
$$(f * g)(n) = \sum_{k \mid n} f\left(\frac{n}{k}\right) g(k) = \sum_{k \mid n} g(k) f\left(\frac{n}{k}\right) = (g * f)(n).$$
Szimmetrikus írásmódban: mindkét oldal $\sum_{ab = n} f(a)g(b)$, ami triviálisan szimmetrikus $f$ és $g$-ben.

**(2) Asszociativitás:**
Írjuk fel a konvolúciót az $n$ szám szorzattá bontásai segítségével:
$$((f * g) * h)(n) = \sum_{d \mid n} (f * g)(d) h\left(\frac{n}{d}\right) = \sum_{d \mid n} \left(\sum_{ab = d} f(a)g(b)\right) h\left(\frac{n}{d}\right).$$
Mivel $ab = d$ és $dc = n$ (ahol $c = n/d$), ez a kettős összeg pontosan az összes olyan $(a, b, c)$ pozitív egész hármasra vett összegnek felel meg, amelyre $abc = n$:
$$((f * g) * h)(n) = \sum_{abc = n} f(a)g(b)h(c).$$
Hasonlóan:
$$(f * (g * h))(n) = \sum_{a \mid n} f(a) (g * h)\left(\frac{n}{a}\right) = \sum_{a \mid n} f(a) \left(\sum_{bc = n/a} g(b)h(c)\right) = \sum_{abc = n} f(a)g(b)h(c).$$
Mivel mindkét kifejezés a $\sum_{abc = n} f(a)g(b)h(c)$ összeggel egyenlő, a konvolúció asszociatív.

**(3) Multiplikativitás megőrzése:**
Tegyük fel, hogy $f$ és $g$ multiplikatívak.
Ekkor $(f * g)(1) = f(1)g(1) = 1 \cdot 1 = 1$.
Legyenek $a, b \in \mathbb{N}^+$ relatív prímek: $(a, b) = 1$.
$$(f * g)(ab) = \sum_{d \mid ab} f(d) g\left(\frac{ab}{d}\right).$$
Mivel $(a, b) = 1$, az $ab$ bármely $d$ osztója egyértelműen felírható $d = d_1 d_2$ alakban, ahol $d_1 \mid a$ és $d_2 \mid b$.
Továbbá $(d_1, d_2) = 1$, valamint az $\frac{a}{d_1}$ és $\frac{b}{d_2}$ számok is relatív prímek: $\left(\frac{a}{d_1}, \frac{b}{d_2}\right) = 1$.
Az $f$ és $g$ multiplikativitása miatt:
$$f(d) = f(d_1 d_2) = f(d_1)f(d_2), \qquad g\left(\frac{ab}{d}\right) = g\left(\frac{a}{d_1} \cdot \frac{b}{d_2}\right) = g\left(\frac{a}{d_1}\right) g\left(\frac{b}{d_2}\right).$$
Ezért az összeg szétbontható két független összeg szorzatára:
$$(f * g)(ab) = \sum_{d_1 \mid a} \sum_{d_2 \mid b} f(d_1) f(d_2) g\left(\frac{a}{d_1}\right) g\left(\frac{b}{d_2}\right)$$
$$= \left(\sum_{d_1 \mid a} f(d_1) g\left(\frac{a}{d_1}\right)\right) \left(\sum_{d_2 \mid b} f(d_2) g\left(\frac{b}{d_2}\right)\right) = (f * g)(a) \cdot (f * g)(b).$$
Tehát $f * g$ valóban multiplikatív. $\blacksquare$

---

## 14. feladat

Írjuk fel a Möbius-féle megfordítási formulát a Dirichlet-konvolúció segítségével.

**Megoldás.**

A klasszikus Möbius-féle megfordítási formula így szól:
$$g(n) = \sum_{d \mid n} f(d) \iff f(n) = \sum_{d \mid n} \mu(d) g\left(\frac{n}{d}\right).$$
Vegyük észre, hogy:
- A bal oldali feltétel az $f$ és a konstans $\mathbf{1}$ függvény ($\mathbf{1}(n) = 1$) Dirichlet-konvolúciója:
  $$g = f * \mathbf{1}.$$
- A 6. feladat (1) része szerint a $\mu$ és $\mathbf{1}$ függvények egymás Dirichlet-inverzei:
  $$\mu * \mathbf{1} = \varepsilon.$$
- Ha a $g = f * \mathbf{1}$ egyenlőség mindkét oldalát konvolváljuk a $\mu$ függvénnyel, az asszociativitást felhasználva:
  $$g * \mu = (f * \mathbf{1}) * \mu = f * (\mathbf{1} * \mu) = f * \varepsilon = f.$$

A Möbius-féle megfordítási formula alakja tehát a Dirichlet-konvolúció segítségével:
$$\mathbf{g = f * 1 \iff f = g * \mu}.$$

---

## 15. feladat

Igazoljuk, hogy tetszőleges $n$ pozitív egész számra $\varphi(n) = n \sum_{d \mid n} \frac{\mu(d)}{d}$ teljesül.

**Megoldás.**

Ismert tétel (Gauss tétele), hogy egy pozitív egész szám osztóinak $\varphi$-értékeit összegezve magát a számot kapjuk:
$$\sum_{d \mid n} \varphi(d) = n.$$
A Dirichlet-konvolúció nyelvén ez azt jelenti, hogy:
$$\varphi * \mathbf{1} = I,$$
ahol $I(n) = n$ az identitásfüggvény, és $\mathbf{1}(n) = 1$.
Alkalmazzuk a 14. feladatban megfogalmazott Möbius-inverziót:
$$\varphi = I * \mu.$$
A konvolúció definíciója szerint kifejtve:
$$\varphi(n) = \sum_{d \mid n} \mu(d) I\left(\frac{n}{d}\right) = \sum_{d \mid n} \mu(d) \frac{n}{d} = n \sum_{d \mid n} \frac{\mu(d)}{d}.$$
Ezzel az állítást igazoltuk. $\blacksquare$

---

## 16. feladat

Bizonyítsuk az alábbi összefüggést:
$$\sum_{t \mid n} \mu(t) d\left(\frac{n}{t}\right) = 1.$$

**Megoldás.**

A bal oldali összeg pontosan a $\mu$ és a $d$ (osztószám) függvények Dirichlet-konvolúciója az $n$ helyen:
$$\sum_{t \mid n} \mu(t) d\left(\frac{n}{t}\right) = (\mu * d)(n).$$
Tudjuk, hogy az osztószám-függvény felírható $d = \mathbf{1} * \mathbf{1}$ alakban, hiszen $d(n) = \sum_{t \mid n} 1$.
Használjuk fel a konvolúció asszociativitását és a $\mu * \mathbf{1} = \varepsilon$ azonosságot:
$$\mu * d = \mu * (\mathbf{1} * \mathbf{1}) = (\mu * \mathbf{1}) * \mathbf{1} = \varepsilon * \mathbf{1} = \mathbf{1}.$$
Mivel a konvolúció eredménye a konstans $\mathbf{1}$ függvény, bármely $n \ge 1$ esetén:
$$(\mu * d)(n) = \mathbf{1}(n) = 1.$$
Tehát az összeg értéke minden $n$-re valóban 1. $\blacksquare$

---

## 17. feladat

Bizonyítsuk be, hogy ha $n$ egy tökéletes szám, akkor az osztóinak reciprokösszege pontosan 2, azaz $\sum_{d \mid n} \frac{1}{d} = 2$.

**Megoldás.**

Egy $n$ pozitív egész számot **tökéletes számnak** nevezünk, ha az $n$-nél kisebb pozitív osztóinak összege megegyezik $n$-nel.
Ez ekvivalens azzal, hogy az $n$ összes pozitív osztójának összege $2n$:
$$\sigma(n) = \sum_{d \mid n} d = 2n.$$

Írjuk fel az osztók reciprokösszegét:
$$\sum_{d \mid n} \frac{1}{d}.$$
Alkalmazzuk a $d \mapsto \frac{n}{d}$ helyettesítést (amint $d$ végigfut az osztókon, $n/d$ ugyanazokat az osztókat futja be fordított sorrendben):
$$\sum_{d \mid n} \frac{1}{d} = \sum_{d \mid n} \frac{1}{n/d} = \sum_{d \mid n} \frac{d}{n} = \frac{1}{n} \sum_{d \mid n} d = \frac{\sigma(n)}{n}.$$
Mivel $n$ tökéletes szám, $\sigma(n) = 2n$, így:
$$\sum_{d \mid n} \frac{1}{d} = \frac{2n}{n} = 2.$$
Ezzel az állítást igazoltuk. $\blacksquare$

---

## 18. feladat

Mutassuk meg, hogy egyetlen $p$ prímszám, illetve $p^k$ prímhatvány sem lehet tökéletes szám ($k \ge 1$).

**Megoldás.**

Legyen $n = p^k$, ahol $p$ prímszám és $k \ge 1$.
A $p^k$ osztói az $1, p, p^2, \dots, p^k$ számok. Ezek összege a mértani sorozat összegképlete alapján:
$$\sigma(p^k) = 1 + p + p^2 + \dots + p^k = \frac{p^{k+1} - 1}{p - 1}.$$
Ahhoz, hogy $p^k$ tökéletes szám legyen, a definíció szerint $\sigma(p^k) = 2p^k$ kellene teljesüljön:
$$\frac{p^{k+1} - 1}{p - 1} = 2p^k.$$
Szorozzuk be mindkét oldalt a $(p - 1) > 0$ kifejezéssel:
$$p^{k+1} - 1 = 2p^k(p - 1) = 2p^{k+1} - 2p^k.$$
Rendezzük az egyenletet:
$$2p^k - 1 = p^{k+1}.$$
Mindkét oldalból vonjunk ki $p^{k+1}$-et, és adjunk hozzá 1-et:
$$2p^k - p^{k+1} = 1 \iff p^k(2 - p) = 1.$$
Mivel $p$ prímszám, $p \ge 2$:
- Ha $p = 2$: $2^k(2 - 2) = 2^k \cdot 0 = 0 \ne 1$.
- Ha $p \ge 3$: ekkor $2 - p \le -1$, így a bal oldal negatív ($p^k(2 - p) \le -3^k < 0$), miközben a jobb oldal pozitív (1), ami szintén lehetetlen.

Mivel semmilyen $p$ prímre és $k \ge 1$ egészre nem teljesülhet az egyenlőség, egyetlen $p$ prím és egyetlen $p^k$ prímhatvány sem lehet tökéletes szám. $\blacksquare$

---

## 19. feladat

Számítsuk ki a következő összeget:
$$\sum_{d \mid n} \mu(d)\sigma\left(\frac{n}{d}\right).$$

**Megoldás.**

A megadott összeg a $\mu$ és $\sigma$ számelméleti függvények Dirichlet-konvolúciója:
$$\sum_{d \mid n} \mu(d) \sigma\left(\frac{n}{d}\right) = (\mu * \sigma)(n).$$
Tudjuk, hogy az osztóösszeg-függvény előáll Dirichlet-konvolúcióként: $\sigma = I * \mathbf{1}$, ahol $I(n) = n$ és $\mathbf{1}(n) = 1$.
Behelyettesítve és kihasználva a konvolúció kommutativitását és asszociativitását:
$$\mu * \sigma = \mu * (I * \mathbf{1}) = (\mu * \mathbf{1}) * I.$$
Mivel $\mu * \mathbf{1} = \varepsilon$ (a konvolúció egységeleme), és $\varepsilon * I = I$:
$$\mu * \sigma = \varepsilon * I = I.$$
Ezért tetszőleges $n \ge 1$ esetén:
$$\sum_{d \mid n} \mu(d) \sigma\left(\frac{n}{d}\right) = I(n) = \mathbf{n}.$$

---

## 20. feladat

Legyen az $f(x)$ függvény értelmezve minden $x \in [0, 1]$ racionális számra, és definiáljuk a következőket:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) \quad \text{és} \quad F_1(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n f\left(\frac{k}{n}\right).$$

(1) Mutassuk meg, hogy $F_1 = \mu * F$.

(2) Bizonyítsuk be, hogy
$$\mu(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n \left(\cos \frac{2\pi k}{n} + i \sin \frac{2\pi k}{n}\right).$$

**Megoldás.**

**(1)** Tekintsük az $F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right)$ összeg tagjait.
Bármely $1 \le k \le n$ egészre legyen $d = \operatorname{lnko}(k, n)$. Ekkor $d \mid n$.
Egyszerűsítsük a $\frac{k}{n}$ törtet $d$-vel:
$$k = d \cdot j, \quad n = d \cdot m \implies \frac{k}{n} = \frac{j}{m}, \quad \text{ahol } m = \frac{n}{d}, \ 1 \le j \le m, \text{ és } (j, m) = 1.$$
Csoportosítsuk az összeg tagjait a $d = \operatorname{lnko}(k, n)$ osztó szerint:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) = \sum_{d \mid n} \sum_{\substack{j=1 \\ (j, n/d) = 1}}^{n/d} f\left(\frac{j}{n/d}\right).$$
A belső összeg a definíció szerint pontosan $F_1\left(\frac{n}{d}\right)$:
$$F(n) = \sum_{d \mid n} F_1\left(\frac{n}{d}\right) = (F_1 * \mathbf{1})(n).$$
Mivel $F = F_1 * \mathbf{1}$, alkalmazzuk a Möbius-féle megfordítási formulát (14. feladat):
$$F_1 = F * \mu = \mu * F.$$
Ezzel az (1) állítást beláttuk. $\blacksquare$

**(2)** Alkalmazzuk az (1) rész eredményét az
$$f(x) = e^{2\pi i x} = \cos(2\pi x) + i \sin(2\pi x)$$
függvényre!
Ekkor $F(n)$ az összes $n$-edik egységgyök összege:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) = \sum_{k=1}^n e^{2\pi i k / n}.$$
- Ha $n = 1$: $F(1) = e^{2\pi i} = 1$.
- Ha $n > 1$: az $n$-edik egységgyökök összege 0, hiszen $\omega = e^{2\pi i / n} \ne 1$ mellett
  $$\sum_{k=1}^n \omega^k = \omega \cdot \frac{\omega^n - 1}{\omega - 1} = \omega \cdot \frac{1 - 1}{\omega - 1} = 0.$$
Tehát:
$$F(n) = \begin{cases} 1, & \text{ha } n = 1, \\ 0, & \text{ha } n > 1, \end{cases} \quad \text{azaz } F = \varepsilon \text{ (a Dirichlet-egységelem)}.$$
Az (1) pont szerint $F_1 = \mu * F$. Mivel $F = \varepsilon$:
$$F_1 = \mu * \varepsilon = \mu.$$
Kifejtve $F_1(n)$-et a definíciója szerint:
$$\mu(n) = F_1(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n f\left(\frac{k}{n}\right) = \sum_{\substack{k=1 \\ (k, n)=1}}^n \left(\cos \frac{2\pi k}{n} + i \sin \frac{2\pi k}{n}\right).$$
Ez pontosan a bizonyítandó állítás (a primitív $n$-edik egységgyökök összege $\mu(n)$). $\blacksquare$

---

## 21. feladat

Legyen $F, G \colon (0, \infty) \to \mathbb{R}$, és legyen $\alpha$ egy teljesen multiplikatív függvény. Mutassuk meg, hogy
$$G(x) = \sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right) \quad \text{minden } x \in (0, \infty) \text{ esetén}$$
akkor és csak akkor teljesül, ha
$$F(x) = \sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right) \quad \text{minden } x \in (0, \infty) \text{ esetén}.$$

**Megoldás.**

Ez a tétel a Möbius-féle megfordítási formula általánosítása tetszőleges valós változójú függvényekre és teljesen multiplikatív súlyozásra.

**$\implies$ irány:**
Tegyük fel, hogy $G(x) = \sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right)$ minden $x > 0$-ra.
Helyettesítsük be $G\left(\frac{x}{n}\right)$ kifejezését a második összegbe:
$$\sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right) = \sum_{n \le x} \mu(n)\alpha(n) \left(\sum_{m \le x/n} \alpha(m) F\left(\frac{x/n}{m}\right)\right).$$
Mivel $\alpha$ teljesen multiplikatív, $\alpha(n)\alpha(m) = \alpha(nm)$ minden $n, m \ge 1$-re.
A kettős összegben a szummázási tartomány: $n \ge 1, m \ge 1$ és $nm \le x$.
Vezessük be a $k = nm$ új összegzési változót: ekkor $1 \le k \le x$, és $k$ rögzítése mellett $n$ a $k$ pozitív osztóin fut végig ($n \mid k$), míg $m = k/n$.
Így az összeg átírható:
$$= \sum_{k \le x} \sum_{n \mid k} \mu(n)\alpha(k) F\left(\frac{x}{k}\right) = \sum_{k \le x} \alpha(k) F\left(\frac{x}{k}\right) \left(\sum_{n \mid k} \mu(n)\right).$$
A 6. feladat (1) része alapján:
$$\sum_{n \mid k} \mu(n) = \lfloor 1/k \rfloor = \begin{cases} 1, & \text{ha } k = 1, \\ 0, & \text{ha } k > 1. \end{cases}$$
Ezért a $k > 1$ tagok mind nullává válnak, és kizárólag a $k = 1$ tag marad meg:
$$= \alpha(1) F\left(\frac{x}{1}\right) \cdot 1 = 1 \cdot F(x) = F(x).$$
(Felhasználtuk, hogy teljesen multiplikatív függvényre $\alpha(1) = 1$). Ezzel az $\implies$ irányt igazoltuk.

**$\impliedby$ irány:**
Tegyük fel, hogy $F(x) = \sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right)$.
Helyettesítsük be $F\left(\frac{x}{n}\right)$ képletét az első összegbe:
$$\sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right) = \sum_{n \le x} \alpha(n) \left(\sum_{m \le x/n} \mu(m)\alpha(m) G\left(\frac{x/n}{m}\right)\right).$$
Ismét használva, hogy $\alpha(n)\alpha(m) = \alpha(nm)$ és bevezetve a $k = nm \le x$ változót:
$$= \sum_{k \le x} \alpha(k) G\left(\frac{x}{k}\right) \left(\sum_{m \mid k} \mu(m)\right).$$
Mivel $\sum_{m \mid k} \mu(m) = 1$, ha $k = 1$, és 0 egyébként, csak a $k = 1$ tag marad:
$$= \alpha(1) G(x) \cdot 1 = G(x).$$
Ezzel az ekvivalenciát teljes egészében bebizonyítottuk. $\blacksquare$

# Algebra és számelmélet – 1. ZH (2023) – megoldások

### Bsc algebra és számelmélet normál gyakorlat · Első zárthelyi (2023. október 20.)

## 1. feladat

a) Adjuk meg a $19x + 35y = 149$ egyenlet összes megoldását, majd azokat, ahol $x$ és $y$ is pozitív egész.

b) Számítsuk ki $16^{123456789123}$ osztási maradékát 36-tal osztva.

**Megoldás.**

**a) Az összes egész megoldás:**
$$\mathbf{x = 6 + 35u, \quad y = 1 - 19u \quad (u \in \mathbb{Z})}.$$
**Az egyetlen pozitív egész megoldás:**
$$\mathbf{x = 6, \quad y = 1}.$$

*Levezetés:*
1. Keressük a $19x + 35y = 1$ egyenlet megoldását a kiterjesztett euklideszi algoritmussal:
   $$\begin{aligned}
   35 &= 1 \cdot 19 + 16 \\
   19 &= 1 \cdot 16 + 3 \\
   16 &= 5 \cdot 3 + 1
   \end{aligned}$$
   Visszafelé kifejezve:
   $$1 = 16 - 5 \cdot 3 = 16 - 5(19 - 16) = 6 \cdot 16 - 5 \cdot 19 = 6(35 - 19) - 5 \cdot 19 = 6 \cdot 35 - 11 \cdot 19.$$
   Tehát $19 \cdot (-11) + 35 \cdot 6 = 1$.
2. Partikuláris megoldás keresése modulo 35 kongruenciával:
   $$19x \equiv 149 \equiv 9 \pmod{35}.$$
   Mivel $19 \cdot (-11) \equiv 1 \pmod{35}$:
   $$x \equiv 9 \cdot (-11) = -99 \equiv -99 + 3 \cdot 35 = -99 + 105 = 6 \pmod{35}.$$
   Ha $x = 6$, akkor:
   $$19 \cdot 6 + 35y = 149 \implies 114 + 35y = 149 \implies 35y = 35 \implies y = 1.$$
   Egy partikuláris megoldás tehát $x_0 = 6, y_0 = 1$.
3. Az általános megoldás:
   Mivel $\lnko(19, 35) = 1$:
   $$x = 6 + 35u, \quad y = 1 - 19u \quad (u \in \mathbb{Z}).$$
4. Pozitív egész megoldások ($x > 0, y > 0$):
   $$\begin{aligned}
   x > 0 &\iff 6 + 35u \ge 1 \iff 35u \ge -5 \iff u \ge 0, \\
   y > 0 &\iff 1 - 19u \ge 1 \iff 19u \le 0 \iff u \le 0.
   \end{aligned}$$
   Az egyetlen lehetséges egész paraméter $u = 0$, amely az $x = 6, y = 1$ megoldást adja.

---

**b) A keresett osztási maradék: $\mathbf{28}$.**

Mivel $36 = 4 \cdot 9$ és $\lnko(4, 9) = 1$, a kínai maradéktétel szerint elegendő a maradékot modulo 4 és modulo 9 meghatározni.

1. **Modulo 4:**
   Mivel $16 = 4 \cdot 4 \equiv 0 \pmod 4$, tetszőleges $N \ge 1$ pozitív egészre:
   $$16^N \equiv 0 \pmod 4.$$
2. **Modulo 9:**
   Mivel $\lnko(16, 9) = 1$, alkalmazható az Euler–Fermat-tétel. $\varphi(9) = 9(1 - 1/3) = 6$, így:
   $$16^6 \equiv 1 \pmod 9.$$
   Vizsgáljuk a kitevőt, $N = 123456789123$-at modulo 6:
   - A szám páratlan (az utolsó jegye 3), így $N \equiv 1, 3 \text{ vagy } 5 \pmod 6$.
   - A számjegyeinek összege:
     $$1+2+3+4+5+6+7+8+9+1+2+3 = 45 + 6 = 51.$$
     Mivel $3 \mid 51$, a szám osztható 3-mal: $3 \mid N$.
   - Egy szám pontosan akkor osztható 3-mal és páratlan, ha modulo 6 kongruens 3-mal:
     $$N \equiv 3 \pmod 6.$$
   Ezért:
   $$16^N \equiv 16^3 \equiv (-2)^3 = -8 \equiv 1 \pmod 9.$$
3. **Összevetés (kínai maradéktétel):**
   Olyan $X \in \{0, 1, \dots, 35\}$ maradékot keresünk, amelyre:
   $$\begin{cases} X \equiv 0 \pmod 4 \\ X \equiv 1 \pmod 9 \end{cases}$$
   A modulo 9-ben 1 maradékot adó számok $0$ és $35$ között: $1, 10, 19, 28$.
   Ezek közül néggyel csak a **28** osztható ($28 = 4 \cdot 7$).
   Tehát $16^{123456789123} \equiv 28 \pmod{36}$.

::: elmelet
**Elméleti háttér — lineáris diofantikus egyenletek és kínai maradéktétel.** Az $ax + by = c$ egyenlet pontosan akkor oldható meg egészben, ha $d = \lnko(a, b) \mid c$. Ekkor az általános megoldás $x = x_0 + \frac{b}{d}u$, $y = y_0 - \frac{a}{d}u$. Összetett modulus ($m = m_1 m_2$, relatív prím tényezőkkel) szerinti hatványozásnál a maradékot külön-külön kiszámítjuk a prímhatvány-tényezőkre (Euler–Fermat-tétellel), majd a kínai maradéktétellel egyesítjük.
:::

## 2. feladat

a) Számítsuk ki (trigonometrikus alakban) és ábrázoljuk a $-32$ komplex szám összes ötödik gyökét.

b) Ábrázoljuk azoknak a $z$ komplex számoknak a halmazát a síkon, melyekre $|z + 1| \le |\overline{z} - 1 - i|$.

**Megoldás.**

**a) A $-32$ ötödik gyökei:**
A $-32$ trigonometrikus alakja:
$$-32 = 32(\cos 180^\circ + i \sin 180^\circ) = 2^5(\cos \pi + i \sin \pi).$$
Az ötödik gyökök ($k = 0, 1, 2, 3, 4$):
$$w_k = 2\left(\cos \frac{180^\circ + 360^\circ k}{5} + i \sin \frac{180^\circ + 360^\circ k}{5}\right).$$
- $\mathbf{k = 0: \quad w_0 = 2(\cos 36^\circ + i \sin 36^\circ)}$
- $\mathbf{k = 1: \quad w_1 = 2(\cos 108^\circ + i \sin 108^\circ)}$
- $\mathbf{k = 2: \quad w_2 = 2(\cos 180^\circ + i \sin 180^\circ) = -2}$
- $\mathbf{k = 3: \quad w_3 = 2(\cos 252^\circ + i \sin 252^\circ)}$
- $\mathbf{k = 4: \quad w_4 = 2(\cos 324^\circ + i \sin 324^\circ)}$

*Ábrázolás:* Origó középpontú, 2 sugarú körbe írt szabályos ötszög csúcsai, melynek egyik csúcsa a valós tengelyen a $-2$ pontban található.

---

**b) A ponthalmaz meghatározása és ábrázolása:**

**1. módszer (algebrai koordinátákkal):**
Legyen $z = x + iy$ ($x, y \in \mathbb{R}$). Ekkor:
- $|z + 1| = |(x + 1) + iy| \implies |z + 1|^2 = (x + 1)^2 + y^2$.
- $\overline{z} - 1 - i = (x - iy) - 1 - i = (x - 1) - i(y + 1) \implies |\overline{z} - 1 - i|^2 = (x - 1)^2 + (y + 1)^2$.

Az egyenlőtlenséget négyzetre emelve:
$$(x + 1)^2 + y^2 \le (x - 1)^2 + (y + 1)^2$$
$$x^2 + 2x + 1 + y^2 \le x^2 - 2x + 1 + y^2 + 2y + 1$$
$$2x \le -2x + 2y + 1 \implies 2y \ge 4x - 1 \implies \mathbf{y \ge 2x - \frac{1}{2}}.$$

**2. módszer (geometriai értelmezés):**
Használjuk fel, hogy tetszőleges $w$ komplex számra $|\overline{w}| = |w|$:
$$|\overline{z} - 1 - i| = |\overline{z - (1 - i)}| = |z - (1 - i)|.$$
Az egyenlőtlenség tehát:
$$|z - (-1)| \le |z - (1 - i)|.$$
Ez a sík azon pontjainak halmaza, amelyek közelebb vannak (vagy egyenlő távolságra) a $u_1 = -1$ ponthoz, mint a $u_2 = 1 - i$ ponthoz.
A határoló vonal a $-1$ és $1 - i$ pontokat összekötő szakasz **felezőmerőlegese**:
- Felezőpont: $\frac{-1 + (1 - i)}{2} = -\frac{1}{2}i$, azaz $\left(0, -\frac{1}{2}\right)$.
- Irányvektor a két pont között: $(1 - i) - (-1) = 2 - i$, iránya $(2, -1)$, így a felezőmerőleges normálvektora $(2, -1)$.
- A határoló egyenes egyenlete: $2x - y = 2(0) - \left(-\frac{1}{2}\right) = \frac{1}{2} \implies y = 2x - \frac{1}{2}$.

*Ábrázolás:* Az $\mathbf{y = 2x - \frac{1}{2}}$ **egyenes és az általa határolt zárt felső félsík** (beleértve magát a határvonalat is).

::: elmelet
**Elméleti háttér — komplex egyenlőtlenségek geometriája.** A $|z - a| \le |z - b|$ egyenlőtlenség geometriailag az $a$ és $b$ pontok Voronoj-celláját (felezőmerőleges által határolt félsíkot) írja le. A $|\overline{w}| = |w|$ azonosság révén a konjugáltat tartalmazó kifejezések gyakran visszavezethetők standard ponttávolságokra.
:::

## 3. feladat

a) Ha $a$ és $b$ relatív prímek, akkor mik $7a + 5b$ és $5a + 3b$ legnagyobb közös osztójának lehetséges (pozitív) értékei? Mindegyikhez adjunk is meg egy-egy konkrét $a$ és $b$ egész számot, ami megvalósítja.

b) Mely $n \ge 0$ egészekre lesz $(n^7 - n + 5)^6 + 6$ prímszám?

**Megoldás.**

**a) A lehetséges értékek: $\mathbf{1, \ 2, \ 4}$.**

*Indoklás:*
Legyen $d = \lnko(7a + 5b, \ 5a + 3b)$. Ekkor $d$ osztója a kifejezések bármely egész együtthatós lineáris kombinációjának:
$$\begin{aligned}
d &\mid 5(7a + 5b) - 7(5a + 3b) = (35a + 25b) - (35a + 21b) = 4b, \\
d &\mid 3(7a + 5b) - 5(5a + 3b) = (21a + 15b) - (25a + 15b) = -4a \implies d \mid 4a.
\end{aligned}$$
Mivel $d \mid 4a$ és $d \mid 4b$, így $d$ osztója a legnagyobb közös osztójuknak is:
$$d \mid \lnko(4a, 4b) = 4 \lnko(a, b) = 4 \cdot 1 = 4.$$
Mivel $d$ pozitív egész és $d \mid 4$, a lehetséges értékek a 4 pozitív osztói: **1, 2 és 4**.

*Megvalósítás konkrét relatív prím $a, b$ párokkal:*
- **$d = 1$:** Legyen $a = 1, b = 2$ ($\lnko(1, 2) = 1$).
  $$7(1) + 5(2) = 17, \quad 5(1) + 3(2) = 11 \implies \lnko(17, 11) = 1.$$
- **$d = 2$:** Legyen $a = 1, b = 3$ ($\lnko(1, 3) = 1$).
  $$7(1) + 5(3) = 22, \quad 5(1) + 3(3) = 14 \implies \lnko(22, 14) = 2.$$
- **$d = 4$:** Legyen $a = 1, b = 1$ ($\lnko(1, 1) = 1$).
  $$7(1) + 5(1) = 12, \quad 5(1) + 3(1) = 8 \implies \lnko(12, 8) = 4.$$

---

**b) Egyetlen $n \ge 0$ egészre sem lesz prímszám (nincs ilyen $n$).**

*Indoklás:*
Vizsgáljuk a kifejezést modulo 7:
1. Mivel 7 prím, a kis Fermat-tétel szerint minden $n \in \mathbb{Z}$-re $n^7 \equiv n \pmod 7$.
   Ezért a belső alap:
   $$n^7 - n + 5 \equiv n - n + 5 = 5 \pmod 7.$$
2. Mivel $\lnko(5, 7) = 1$, a kis Fermat-tétel szerint $5^{7-1} = 5^6 \equiv 1 \pmod 7$.
   Így:
   $$(n^7 - n + 5)^6 + 6 \equiv 5^6 + 6 \equiv 1 + 6 = 7 \equiv 0 \pmod 7.$$
   Tehát a kifejezés **minden $n \ge 0$ egészre osztható 7-tel**.

3. Vizsgáljuk a kifejezés nagyságát:
   Minden $n \ge 0$ egészre $n^7 - n = n(n^6 - 1) \ge 0$ (hiszen $n = 0$-ra és $n = 1$-re $0$, $n \ge 2$-re pedig szigorúan pozitív).
   Így az alap legalább 5:
   $$n^7 - n + 5 \ge 5.$$
   Ezért:
   $$(n^7 - n + 5)^6 + 6 \ge 5^6 + 6 = 15\,625 + 6 = 15\,631 > 7.$$

Mivel a kifejezés értéke minden $n \ge 0$-ra 7-nél szigorúan nagyobb és osztható 7-tel, **összetett szám**, így soha nem lehet prím.

::: elmelet
**Elméleti háttér — kis Fermat-tétel és determináns-módszer lnko-ra.** Két kifejezés, $A = c_1 a + d_1 b$ és $B = c_2 a + d_2 b$ közös osztója osztja a mátrix determinánsát: $\det \begin{pmatrix} 7 & 5 \\ 5 & 3 \end{pmatrix} = 21 - 25 = -4$, így $d \mid 4 \lnko(a, b)$. A prímteszteknél az $n^p - n \equiv 0 \pmod p$ azonosság azonnal mutatja, hogy a polinom értékének maradéka független $n$-től.
:::

## 4. feladat

Adjuk meg Gauss-eliminációval az
$$\begin{pmatrix} 2 & 1 \\ 2 & 1 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 1 & 2 \end{pmatrix}$$
lineáris egyenletrendszer általános megoldását. Jelezzük is, melyek a szabad változók.

**Megoldás.**

**A szabad változók: $u$ és $v$ (tetszőleges valós számok).**
**A kötött változók kifejezése:**
$$\mathbf{x = \frac{v}{2}, \quad y = u + \frac{v}{2}}.$$
*(Általános megoldás: $\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} v/2 & u + v/2 \\ u & v \end{pmatrix}$, ahol $u, v \in \mathbb{R}$.)*

*Levezetés:*
Végezzük el a mátrixszorzásokat mindkét oldalon:
- Bal oldal:
  $$\begin{pmatrix} 2 & 1 \\ 2 & 1 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} 2x + u & 2y + v \\ 2x + u & 2y + v \end{pmatrix}.$$
- Jobb oldal:
  $$\begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 1 & 2 \end{pmatrix} = \begin{pmatrix} x + y & 2x + 2y \\ u + v & 2u + 2v \end{pmatrix}.$$

Egyenlővé téve a megfelelő pozíciókat:
$$\begin{aligned}
(1, 1): \quad 2x + u &= x + y \implies x - y + u = 0 \\
(1, 2): \quad 2y + v &= 2x + 2y \implies -2x + v = 0 \\
(2, 1): \quad 2x + u &= u + v \implies 2x - v = 0 \\
(2, 2): \quad 2y + v &= 2u + 2v \implies 2y - 2u - v = 0
\end{aligned}$$

Írjuk fel a kibővített mátrixot az $(x, y, u, v)$ változósorrendben:
$$\left(\begin{array}{cccc|c}
1 & -1 & 1 & 0 & 0 \\
-2 & 0 & 0 & 1 & 0 \\
2 & 0 & 0 & -1 & 0 \\
0 & 2 & -2 & -1 & 0
\end{array}\right)$$

Gauss-elimináció lépései:
1. $S_3 \leftarrow S_3 + S_2$: a 3. sor csupa 0 lesz: $(0, 0, 0, 0 \mid 0)$, majd cseréljük fel a 3. és a 4. sort ($S_3 \leftrightarrow S_4$), hogy a zérussor alulra kerüljön.
2. $S_2 \leftarrow S_2 + 2S_1$:
   $$\left(\begin{array}{cccc|c}
   1 & -1 & 1 & 0 & 0 \\
   0 & -2 & 2 & 1 & 0 \\
   0 & 2 & -2 & -1 & 0 \\
   0 & 0 & 0 & 0 & 0
   \end{array}\right)$$
3. $S_3 \leftarrow S_3 + S_2$:
   $$\left(\begin{array}{cccc|c}
   1 & -1 & 1 & 0 & 0 \\
   0 & -2 & 2 & 1 & 0 \\
   0 & 0 & 0 & 0 & 0 \\
   0 & 0 & 0 & 0 & 0
   \end{array}\right)$$

A lépcsős alakból leolvasható:
- A rang 2, így a 4 változóból $4 - 2 = 2$ darab **szabad változó** van: válasszuk az **$u$ és $v$** változókat szabad paraméternek.
- A második egyenletből:
  $$-2y + 2u + v = 0 \implies 2y = 2u + v \implies y = u + \frac{v}{2}.$$
- Az első egyenletből:
  $$x = y - u = \left(u + \frac{v}{2}\right) - u = \frac{v}{2}.$$

::: elmelet
**Elméleti háttér — homogén lineáris egyenletrendszer megoldásaltere.** Homogén rendszernél az oszlopok száma $n$, a rang $r$. A szabad változók száma $n - r$, a megoldások alteret alkotnak $\mathbb{R}^n$-ben, melynek dimenziója $n - r = 4 - 2 = 2$.
:::

## 5. feladat

Határozzuk meg $9x^4 + 15x^3 + 16x^2 + 7x + 1$ racionális, majd az összes komplex gyökeit is, és ezek multiplicitását.

**Megoldás.**

- **Racionális gyök:** $\mathbf{x = -\frac{1}{3}}$ (multiplicitása 2).
- **Összes komplex gyök:**
  - $\mathbf{x_1 = x_2 = -\frac{1}{3}}$ (kétszeres valós/racionális gyök),
  - $\mathbf{x_3 = -\frac{1}{2} + i\frac{\sqrt{3}}{2}}$ (egyszeres komplex gyök),
  - $\mathbf{x_4 = -\frac{1}{2} - i\frac{\sqrt{3}}{2}}$ (egyszeres komplex gyök).

*Levezetés:*
Jelölje a polinomot $P(x) = 9x^4 + 15x^3 + 16x^2 + 7x + 1$.

1. **Racionális gyökteszt:**
   Ha $\frac{p}{q}$ redukált tört gyöke $P(x)$-nek, akkor $p \mid 1 \implies p \in \{\pm 1\}$ és $q \mid 9 \implies q \in \{1, 3, 9\}$.
   Mivel $P(x)$ minden együtthatója pozitív, pozitív gyök nem lehet. A lehetséges racionális gyökök:
   $$-1, \quad -\frac{1}{3}, \quad -\frac{1}{9}.$$

2. **Horner-elrendezés $x = -\frac{1}{3}$-ra:**
   $$\begin{array}{c|ccccc}
   & 9 & 15 & 16 & 7 & 1 \\
   -\frac{1}{3} & 9 & 12 & 12 & 3 & 0
   \end{array}$$
   A maradék $0$, tehát $x = -\frac{1}{3}$ gyök, és a hányadospolinom:
   $$Q(x) = 9x^3 + 12x^2 + 12x + 3 = 3(3x^3 + 4x^2 + 4x + 1).$$

3. **Újabb Horner-lépés a $3x^3 + 4x^2 + 4x + 1$ polinomra $-\frac{1}{3}$-mal:**
   $$\begin{array}{c|cccc}
   & 3 & 4 & 4 & 1 \\
   -\frac{1}{3} & 3 & 3 & 3 & 0
   \end{array}$$
   A maradék ismét $0$, tehát $-\frac{1}{3}$ legalább kétszeres gyök, és a kapott hányados:
   $$3x^2 + 3x + 3 = 3(x^2 + x + 1).$$

4. **A másodfokú tényező gyökei:**
   $$x^2 + x + 1 = 0 \implies x_{3,4} = \frac{-1 \pm \sqrt{1 - 4}}{2} = -\frac{1}{2} \pm i\frac{\sqrt{3}}{2}.$$
   Mivel $-\frac{1}{3}$ nem gyöke $x^2 + x + 1$-nek ($(-1/3)^2 + (-1/3) + 1 = 7/9 \ne 0$), a $-\frac{1}{3}$ multiplicitása pontosan 2.
   A másik két gyök nem valós, egymás konjugáltjai, és mindkettő multiplicitása 1 (harmadik primitív egységgyökök).

A polinom gyöktényezős felbontása:
$$P(x) = (3x + 1)^2 (x^2 + x + 1) = 9\left(x + \frac{1}{3}\right)^2 \left(x + \frac{1}{2} - i\frac{\sqrt{3}}{2}\right)\left(x + \frac{1}{2} + i\frac{\sqrt{3}}{2}\right).$$

::: elmelet
**Elméleti háttér — racionális gyökteszt és körosztási polinomok.** A racionális gyökök leválasztása után megmaradó $x^2 + x + 1$ polinom a harmadik körosztási polinom ($\Phi_3(x)$), melynek gyökei a primitív 3. egységgyökök: $\varepsilon = \cos\frac{2\pi}{3} + i\sin\frac{2\pi}{3} = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$ és $\overline{\varepsilon}$.
:::

## 6. feladat

Oldjuk meg az $x^2 + 5xy + 6y^2 = 3$ diofantikus egyenletet.

**Megoldás.**

**A megoldások: $\mathbf{(x, y) \in \{(3, -2), \ (-3, 2), \ (7, -2), \ (-7, 2)\}}$.**

*Levezetés:*
Bontsuk szorzattá a bal oldali másodfokú homogén kifejezést:
$$x^2 + 5xy + 6y^2 = (x + 2y)(x + 3y).$$
Az egyenlet tehát:
$$(x + 2y)(x + 3y) = 3.$$
Mivel $x, y \in \mathbb{Z}$, a tényezők ($x + 2y$ és $x + 3y$) szintén egész számok.
A 3 prím, így egész osztói a $\{1, -1, 3, -3\}$ számok. Négy eset lehetséges:

1. **Eset 1:** $\begin{cases} x + 2y = 1 \\ x + 3y = 3 \end{cases}$
   A második egyenletből kivonva az elsőt: $y = 3 - 1 = 2$.
   Ekkor $x = 1 - 2y = 1 - 4 = -3$.
   Megoldás: **$(-3, 2)$**.
   *Ellenőrzés:* $(-3)^2 + 5(-3)(2) + 6(2)^2 = 9 - 30 + 24 = 3$.

2. **Eset 2:** $\begin{cases} x + 2y = 3 \\ x + 3y = 1 \end{cases}$
   Kivonva a két egyenletet: $y = 1 - 3 = -2$.
   Ekkor $x = 3 - 2(-2) = 7$.
   Megoldás: **$(7, -2)$**.
   *Ellenőrzés:* $7^2 + 5(7)(-2) + 6(-2)^2 = 49 - 70 + 24 = 3$.

3. **Eset 3:** $\begin{cases} x + 2y = -1 \\ x + 3y = -3 \end{cases}$
   Kivonva: $y = -3 - (-1) = -2$.
   Ekkor $x = -1 - 2(-2) = 3$.
   Megoldás: **$(3, -2)$**.
   *Ellenőrzés:* $3^2 + 5(3)(-2) + 6(-2)^2 = 9 - 30 + 24 = 3$.

4. **Eset 4:** $\begin{cases} x + 2y = -3 \\ x + 3y = -1 \end{cases}$
   Kivonva: $y = -1 - (-3) = 2$.
   Ekkor $x = -3 - 2(2) = -7$.
   Megoldás: **$(-7, 2)$**.
   *Ellenőrzés:* $(-7)^2 + 5(-7)(2) + 6(2)^2 = 49 - 70 + 24 = 3$.

::: elmelet
**Elméleti háttér — szorzattá alakításos diofantikus egyenletek.** Ha egy kétváltozós diofantikus egyenlet bal oldala lineáris tényezők szorzatára bontható ($F(x, y) = L_1(x, y)L_2(x, y) = c$), akkor a jobb oldal egész osztóinak véges sok felbontására vizsgálva az egyenlet véges sok $2 \times 2$-es lineáris egyenletrendszerre esik szét, melyek mindegyike közvetlenül megoldható.
:::

# Algebra és számelmélet – 1. ZH (2026 minta) – megoldások

## 1. feladat

a) Invertáljuk a következő mátrixot:
$$A = \begin{pmatrix} \frac{2}{3} & \frac{1}{3} & -\frac{1}{3} \\ \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} \\ -\frac{1}{3} & \frac{1}{3} & \frac{1}{6} \end{pmatrix}$$

b) Oldjuk meg az alábbi egyenletrendszert:
$$\begin{aligned}
x + y &= -3 \\
x + 2z &= 9 \\
2y + 2z &= 6
\end{aligned}$$

**Megoldás.**

**a) A mátrix inverze:**
$$A^{-1} = \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 2 \\ 0 & 2 & 2 \end{pmatrix}.$$

*Levezetés Gauss–Jordan-eliminációval ($[A \mid I] \to [I \mid A^{-1}]$):*
$$\left(\begin{array}{ccc|ccc}
\frac{2}{3} & \frac{1}{3} & -\frac{1}{3} & 1 & 0 & 0 \\
\frac{1}{3} & -\frac{1}{3} & \frac{1}{3} & 0 & 1 & 0 \\
-\frac{1}{3} & \frac{1}{3} & \frac{1}{6} & 0 & 0 & 1
\end{array}\right)$$

1. Adjuk hozzá a második sort az elsőhöz ($S_1 \leftarrow S_1 + S_2$), valamint a harmadikhoz ($S_3 \leftarrow S_3 + S_2$):
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} & 0 & 1 & 0 \\
   0 & 0 & \frac{1}{2} & 0 & 1 & 1
   \end{array}\right)$$
2. Az első sor segítségével kinullázzuk a második sor első elemét: $S_2 \leftarrow S_2 - \frac{1}{3}S_1$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & -\frac{1}{3} & \frac{1}{3} & -\frac{1}{3} & \frac{2}{3} & 0 \\
   0 & 0 & \frac{1}{2} & 0 & 1 & 1
   \end{array}\right)$$
3. Szorozzuk a harmadik sort 2-vel: $S_3 \leftarrow 2S_3$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & -\frac{1}{3} & \frac{1}{3} & -\frac{1}{3} & \frac{2}{3} & 0 \\
   0 & 0 & 1 & 0 & 2 & 2
   \end{array}\right)$$
4. Vonjuk ki a harmadik sor $\frac{1}{3}$-szorosát a második sorból: $S_2 \leftarrow S_2 - \frac{1}{3}S_3$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & -\frac{1}{3} & 0 & -\frac{1}{3} & 0 & -\frac{2}{3} \\
   0 & 0 & 1 & 0 & 2 & 2
   \end{array}\right)$$
5. Végül szorozzuk a második sort $(-3)$-mal: $S_2 \leftarrow -3S_2$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & 1 & 0 & 1 & 0 & 2 \\
   0 & 0 & 1 & 0 & 2 & 2
   \end{array}\right)$$

*Ellenőrzés szorzással:*
$$A \cdot A^{-1} = \begin{pmatrix} \frac{2}{3} & \frac{1}{3} & -\frac{1}{3} \\ \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} \\ -\frac{1}{3} & \frac{1}{3} & \frac{1}{6} \end{pmatrix} \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 2 \\ 0 & 2 & 2 \end{pmatrix} = \begin{pmatrix} \frac{2+1}{3} & \frac{2-2}{3} & \frac{2-2}{3} \\ \frac{1-1}{3} & \frac{1+0}{3} + \frac{2}{3} & \frac{-2+2}{3} \\ \frac{-1+1}{3} & \frac{-1}{3} + \frac{2}{6} & \frac{2}{3} + \frac{2}{6} \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}.$$

---

**b) Az egyenletrendszer megoldása:**
$$\mathbf{x = -1, \quad y = -2, \quad z = 5}.$$

*Levezetés:*
Írjuk fel az egyenletrendszert mátrixos alakban:
$$\begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 2 \\ 0 & 2 & 2 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} -3 \\ 9 \\ 6 \end{pmatrix}.$$
Vegyük észre, hogy az együtthatómátrix pontosan az előző részfeladatban meghatározott $A^{-1}$ mátrix!
Az egyenlet tehát $A^{-1}\mathbf{v} = \mathbf{b}$ alakú, ahol $\mathbf{v} = (x, y, z)^T$ és $\mathbf{b} = (-3, 9, 6)^T$.

Mivel $(A^{-1})^{-1} = A$, mindkét oldalt balról megszorozva $A$-val:
$$\mathbf{v} = A \mathbf{b} = \begin{pmatrix} \frac{2}{3} & \frac{1}{3} & -\frac{1}{3} \\ \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} \\ -\frac{1}{3} & \frac{1}{3} & \frac{1}{6} \end{pmatrix} \begin{pmatrix} -3 \\ 9 \\ 6 \end{pmatrix}.$$
Kiszámítva a szorzatot:
$$\begin{aligned}
x &= \frac{2}{3}(-3) + \frac{1}{3}(9) - \frac{1}{3}(6) = -2 + 3 - 2 = -1, \\
y &= \frac{1}{3}(-3) - \frac{1}{3}(9) + \frac{1}{3}(6) = -1 - 3 + 2 = -2, \\
z &= -\frac{1}{3}(-3) + \frac{1}{3}(9) + \frac{1}{6}(6) = 1 + 3 + 1 = 5.
\end{aligned}$$

::: elmelet
**Elméleti háttér — mátrixinverz és lineáris egyenletrendszerek.** Egy négyzetes $M$ mátrix invertálható, ha $\det M \ne 0$. A Gauss–Jordan-elimináció lépései elemi mátrixokkal való szorzásoknak felelnek meg, így az egységmátrixra ugyanazon műveleteket végezve $M^{-1}$-et kapjuk. Ha az $M\mathbf{x} = \mathbf{b}$ rendszerben $M = A^{-1}$, akkor közvetlenül $\mathbf{x} = A\mathbf{b}$.
:::

## 2. feladat

Határozzuk meg a 95 és 26 legnagyobb közös osztóját és írjuk fel $95x + 26y$ alakban valamely $x, y$ egész számokra.

**Megoldás.**

**$\lnko(95, 26) = 1$, és felírása: $1 = 95 \cdot (-3) + 26 \cdot 11$ (azaz $x = -3, y = 11$).**

*1. Euklideszi algoritmus a legnagyobb közös osztó meghatározására:*
$$\begin{aligned}
95 &= 3 \cdot 26 + 17 \\
26 &= 1 \cdot 17 + 9 \\
17 &= 1 \cdot 9 + 8 \\
9 &= 1 \cdot 8 + 1 \\
8 &= 8 \cdot 1 + 0
\end{aligned}$$
Az utolsó nem nulla maradék $1$, tehát $\lnko(95, 26) = 1$ (a két szám relatív prím).

*2. Kiterjesztett euklideszi algoritmus (visszahelyettesítés):*
Kifejezzük a maradékokat:
$$\begin{aligned}
17 &= 95 - 3 \cdot 26 \\
9 &= 26 - 17 = 26 - (95 - 3 \cdot 26) = -95 + 4 \cdot 26 \\
8 &= 17 - 9 = (95 - 3 \cdot 26) - (-95 + 4 \cdot 26) = 2 \cdot 95 - 7 \cdot 26 \\
1 &= 9 - 8 = (-95 + 4 \cdot 26) - (2 \cdot 95 - 7 \cdot 26) = -3 \cdot 95 + 11 \cdot 26
\end{aligned}$$

Tehát $x = -3$ és $y = 11$.

*Ellenőrzés:*
$$95 \cdot (-3) + 26 \cdot 11 = -285 + 286 = 1.$$

::: elmelet
**Elméleti háttér — Bézout-lemma és a kiterjesztett euklideszi algoritmus.** Bármely $a, b \in \mathbb{Z}$ egészekre léteznek olyan $x, y \in \mathbb{Z}$ egész számok, amelyekre $ax + by = \lnko(a, b)$. Ezen $x, y$ együtthatók az euklideszi algoritmus osztási lépéseinek visszafelé történő helyettesítésével szisztematikusan megkaphatók.
:::

## 3. feladat

Adjuk meg az $f(x) = 4x^4 + 12x^3 + 17x^2 + 10x + 2$ polinom racionális, majd összes komplex gyökét. Írjuk fel gyöktényezős alakban.

**Megoldás.**

- **Racionális gyök:** $\mathbf{x = -\frac{1}{2}}$ (multiplicitása 2).
- **Összes komplex gyök:** $\mathbf{-\frac{1}{2}}$ (kétszeres), $\mathbf{-1 + i}$ (egyszeres), $\mathbf{-1 - i}$ (egyszeres).
- **Gyöktényezős alak:**
  $$f(x) = 4\left(x + \frac{1}{2}\right)^2 (x + 1 - i)(x + 1 + i) = (2x + 1)^2 (x + 1 - i)(x + 1 + i).$$

*Levezetés:*

1. **Racionális gyökteszt:**
   Ha $\frac{p}{q}$ redukált tört gyöke $f(x)$-nek, akkor $p \mid 2$ és $q \mid 4$:
   $$p \in \{\pm 1, \pm 2\}, \quad q \in \{1, 2, 4\}.$$
   Mivel $f(x)$ minden együtthatója szigorúan pozitív, pozitív gyök nem létezhet ($x \ge 0 \implies f(x) \ge 2 > 0$).
   A lehetséges racionális gyökök tehát:
   $$-1, \quad -2, \quad -\frac{1}{2}, \quad -\frac{1}{4}.$$

2. **Horner-elrendezés $x = -\frac{1}{2}$-re:**
   $$\begin{array}{c|ccccc}
   & 4 & 12 & 17 & 10 & 2 \\
   -\frac{1}{2} & 4 & 10 & 12 & 4 & 0
   \end{array}$$
   A maradék $0$, tehát $x = -\frac{1}{2}$ gyök, és a hányadospolinom:
   $$g(x) = 4x^3 + 10x^2 + 12x + 4.$$

3. **Újabb Horner-lépés $x = -\frac{1}{2}$-re a hányadosra:**
   $$\begin{array}{c|cccc}
   & 4 & 10 & 12 & 4 \\
   -\frac{1}{2} & 4 & 8 & 8 & 0
   \end{array}$$
   A maradék ismét $0$, így $x = -\frac{1}{2}$ legalább kétszeres gyök, és a maradék másodfokú polinom:
   $$h(x) = 4x^2 + 8x + 8 = 4(x^2 + 2x + 2).$$

4. **A másodfokú tényező gyökei:**
   $$x^2 + 2x + 2 = 0 \implies x_{3,4} = \frac{-2 \pm \sqrt{4 - 8}}{2} = \frac{-2 \pm 2i}{2} = -1 \pm i.$$
   Mivel $-1 \pm i \notin \mathbb{R}$, ezek egyszeres komplex gyökök, és $-\frac{1}{2}$ pontosan kétszeres gyök.

::: elmelet
**Elméleti háttér — racionális gyökteszt és gyöktényezős alak.** Egész együtthatós $a_n x^n + \dots + a_0$ polinom racionális $p/q$ gyökeire $p \mid a_0$ és $q \mid a_n$. A gyökök megtalálása után a Horner-elrendezéssel faktoriálunk. A polinom gyöktényezős alakja $a_n \prod (x - \alpha_i)^{m_i}$, ahol $\alpha_i$ a komplex gyökök és $m_i$ a multiplicitásaik.
:::

## 4. feladat

Igazoljuk, hogy minden $n \ge 2$ természetes számra
$$\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right) = \frac{n + 1}{2n}.$$

**Megoldás.**

**1. módszer: Teljes indukcióval $n$ szerint.**

- **Bázis ($n = 2$):**
  A bal oldal: $1 - \frac{1}{2^2} = 1 - \frac{1}{4} = \frac{3}{4}$.
  A jobb oldal: $\frac{2 + 1}{2 \cdot 2} = \frac{3}{4}$.
  Az egyenlőség teljesül.
- **Indukciós feltevés:** Tegyük fel, hogy valamely $n \ge 2$-re igaz az állítás:
  $$\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right) = \frac{n + 1}{2n}.$$
- **Indukciós lépés ($n + 1$-re):**
  Számítsuk ki a szorzatot $n + 1$-ig:
  $$\prod_{k=2}^{n+1} \left(1 - \frac{1}{k^2}\right) = \left[\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right)\right] \cdot \left(1 - \frac{1}{(n+1)^2}\right).$$
  Az indukciós feltevést behelyettesítve:
  $$= \frac{n+1}{2n} \cdot \frac{(n+1)^2 - 1}{(n+1)^2} = \frac{n+1}{2n} \cdot \frac{n^2 + 2n}{(n+1)^2} = \frac{n+1}{2n} \cdot \frac{n(n+2)}{(n+1)^2}.$$
  Egyszerűsítve $(n+1)$-gyel és $n$-nel:
  $$= \frac{n+2}{2(n+1)} = \frac{(n+1) + 1}{2(n+1)}.$$
  Ez éppen a bizonyítandó formula $n + 1$-re. Ezzel az indukció kész. $\blacksquare$

---

**2. módszer: Teleszkopikus szorzatként közvetlenül.**
Alakítsuk szorzattá a tényezőket a számlálóban:
$$1 - \frac{1}{k^2} = \frac{k^2 - 1}{k^2} = \frac{(k - 1)(k + 1)}{k \cdot k} = \frac{k - 1}{k} \cdot \frac{k + 1}{k}.$$
A teljes szorzat két szorzatra esik szét:
$$\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right) = \left(\prod_{k=2}^n \frac{k-1}{k}\right) \cdot \left(\prod_{k=2}^n \frac{k+1}{k}\right).$$
- Az első szorzat: $\frac{1}{2} \cdot \frac{2}{3} \cdot \frac{3}{4} \cdots \frac{n-1}{n} = \frac{1}{n}$.
- A második szorzat: $\frac{3}{2} \cdot \frac{4}{3} \cdot \frac{5}{4} \cdots \frac{n+1}{n} = \frac{n+1}{2}$.
A kettő szorzata:
$$\frac{1}{n} \cdot \frac{n+1}{2} = \frac{n+1}{2n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — teleszkopikus szorzatok és teljes indukció.** Egy szorzat akkor teleszkopikus, ha a szomszédos tényezők kiejtik egymást. A másodfokú algebrai azonosság ($k^2 - 1 = (k-1)(k+1)$) lineáris faktorokra bontja a tagokat, melyek számlálói és nevezői átlósan egyszerűsíthetők, csak a szélső tagokat hagyva meg.
:::

## 5. feladat

a) Milyen maradékot ad $11^{20262026}$ 45-tel osztva?

b) Mi a megoldása a $12x \equiv 5 \pmod{17}$ kongruenciának?

**Megoldás.**

**a) A keresett osztási maradék: $\mathbf{31}$.**

Mivel $45 = 9 \cdot 5$, és $\lnko(11, 45) = 1$, alkalmazhatjuk az **Euler–Fermat-tételt**:
$$\varphi(45) = \varphi(9 \cdot 5) = \varphi(3^2) \cdot \varphi(5) = (9 - 3)(5 - 1) = 6 \cdot 4 = 24.$$
Az Euler–Fermat-tétel szerint:
$$11^{24} \equiv 1 \pmod{45}.$$
Vizsgáljuk a kitevőt modulo 24:
$$20262026 = 24 \cdot 844251 + 2 \implies 20262026 \equiv 2 \pmod{24}.$$
Ezért:
$$11^{20262026} \equiv 11^2 = 121 \pmod{45}.$$
Mivel $121 = 2 \cdot 45 + 31$:
$$121 \equiv 31 \pmod{45}.$$
A maradék tehát **31**.

---

**b) A kongruencia megoldása: $\mathbf{x \equiv 16 \equiv -1 \pmod{17}}$.**

*1. módszer (elemi kongruencia-átalakítás):*
Mivel $12 \equiv -5 \pmod{17}$:
$$12x \equiv 5 \pmod{17} \iff -5x \equiv 5 \pmod{17}.$$
Mivel $\lnko(-5, 17) = 1$, oszthatunk $(-5)$-tel:
$$x \equiv -1 \equiv 16 \pmod{17}.$$

*2. módszer (inverz keresése a kis Fermat-tétellel):*
Mivel 17 prím és $\lnko(12, 17) = 1$, a kis Fermat-tétel szerint $12^{16} \equiv 1 \pmod{17}$.
Így $12^{-1} \equiv 12^{15} \pmod{17}$, és a megoldás:
$$x \equiv 12^{15} \cdot 5 \pmod{17}.$$
Gyors hatványozással modulo 17 ($12 \equiv -5$):
$$\begin{aligned}
12^2 &= 144 \equiv 8 \pmod{17}, \\
12^4 &\equiv 8^2 = 64 \equiv 13 \pmod{17}, \\
12^8 &\equiv 13^2 = 169 \equiv 16 \equiv -1 \pmod{17}.
\end{aligned}$$
Ekkor:
$$12^{15} = 12^8 \cdot 12^4 \cdot 12^2 \cdot 12^1 \equiv (-1) \cdot 13 \cdot 8 \cdot 12 \equiv (-1) \cdot 13 \cdot 96 \equiv (-1) \cdot 13 \cdot 11 = -143 \equiv 10 \pmod{17}.$$
Tehát:
$$x \equiv 10 \cdot 5 = 50 \equiv 16 \equiv -1 \pmod{17}.$$

::: elmelet
**Elméleti háttér — Euler–Fermat-tétel és lineáris kongruenciák.** Ha $\lnko(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1 \pmod m$, így a kitevő modulo $\varphi(m)$ redukálható. Az $ax \equiv b \pmod m$ lineáris kongruencia pontosan akkor oldható meg, ha $d = \lnko(a, m) \mid b$; ekkor $d$ darab megoldás van modulo $m$. Ha $m$ prím és $p \nmid a$, a megoldás egyértelmű modulo $p$.
:::

## 6. feladat

Mik a $z = -50\sqrt{3} - 50i$ komplex szám ötödik gyökei? A gyököket trigonometrikus alakban adjuk meg és ábrázoljuk őket vázlatosan a komplex számsíkon.

**Megoldás.**

Írjuk fel $z$-t trigonometrikus alakban:
- Abszolút érték:
  $$r = |z| = \sqrt{(-50\sqrt{3})^2 + (-50)^2} = \sqrt{7500 + 2500} = \sqrt{10000} = 100.$$
- Főérték (szög):
  $$\cos \varphi = \frac{-50\sqrt{3}}{100} = -\frac{\sqrt{3}}{2}, \quad \sin \varphi = \frac{-50}{100} = -\frac{1}{2}.$$
  Mivel mind a valós, mind a képzetes rész negatív, $z$ a 3. síknegyedbe esik:
  $$\varphi = \pi + \frac{\pi}{6} = \frac{7\pi}{6} = 210^\circ.$$
Így $z = 100 \left(\cos \frac{7\pi}{6} + i \sin \frac{7\pi}{6}\right)$.

A komplex gyökvonás képlete szerint az ötödik gyökök ($k = 0, 1, 2, 3, 4$):
$$w_k = \sqrt[5]{100} \left(\cos \frac{\frac{7\pi}{6} + 2k\pi}{5} + i \sin \frac{\frac{7\pi}{6} + 2k\pi}{5}\right) = \sqrt[5]{100} \left(\cos \frac{7\pi + 12k\pi}{30} + i \sin \frac{7\pi + 12k\pi}{30}\right).$$

A gyökök kifejtve:
- **$k = 0$:** $w_0 = \sqrt[5]{100} \left(\cos \frac{7\pi}{30} + i \sin \frac{7\pi}{30}\right) = \sqrt[5]{100} (\cos 42^\circ + i \sin 42^\circ)$
- **$k = 1$:** $w_1 = \sqrt[5]{100} \left(\cos \frac{19\pi}{30} + i \sin \frac{19\pi}{30}\right) = \sqrt[5]{100} (\cos 114^\circ + i \sin 114^\circ)$
- **$k = 2$:** $w_2 = \sqrt[5]{100} \left(\cos \frac{31\pi}{30} + i \sin \frac{31\pi}{30}\right) = \sqrt[5]{100} (\cos 186^\circ + i \sin 186^\circ)$
- **$k = 3$:** $w_3 = \sqrt[5]{100} \left(\cos \frac{43\pi}{30} + i \sin \frac{43\pi}{30}\right) = \sqrt[5]{100} (\cos 258^\circ + i \sin 258^\circ)$
- **$k = 4$:** $w_4 = \sqrt[5]{100} \left(\cos \frac{55\pi}{30} + i \sin \frac{55\pi}{30}\right) = \sqrt[5]{100} \left(\cos \frac{11\pi}{6} + i \sin \frac{11\pi}{6}\right) = \sqrt[5]{100} (\cos 330^\circ + i \sin 330^\circ)$

**Geometriai ábrázolás a komplex számsíkon:**
A gyökök egy origó középpontú, $R = \sqrt[5]{100} \approx 2{,}512$ sugarú körön helyezkednek el, és egy **szabályos ötszög** csúcsait alkotják. A szomszédos gyökök szögtávolsága $\frac{2\pi}{5} = 72^\circ$. Az első gyök a pozitív valós tengelyhez képest $42^\circ$-os szögben áll az 1. síknegyedben.

::: elmelet
**Elméleti háttér — komplex gyökvonás geometriája.** Ha $z = r(\cos\varphi + i\sin\varphi)$, akkor $\sqrt[n]{z}$ értékei $\sqrt[n]{r}\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right)$ ($k = 0, \dots, n-1$). Geometriailag ezek egy $\sqrt[n]{r}$ sugarú körbe írt szabályos $n$-szög csúcsai, melyek $2\pi/n$ szöggel vannak elforgatva egymáshoz képest.
:::

## 7. feladat

Egy $A \in \mathbb{C}^{3 \times 3}$ mátrix transzponált konjugáltja $A^* = \overline{A^T}$, ahol a konjugálás mátrixelemenkénti konjugálást jelent. Igazoljuk, hogy tetszőleges $A, B \in \mathbb{C}^{3 \times 3}$ mátrixokra:

a) $(A + B)^* = A^* + B^*$,

b) tetszőleges $c \in \mathbb{C}$ komplex számra $(cA)^* = \overline{c}A^*$,

c) $(A^*)^* = A$,

d) $(AB)^* = B^* A^*$,

e) ha $A$ invertálható, akkor $A^*$ is invertálható és $(A^*)^{-1} = (A^{-1})^*$,

f) $\det(A^*) = \overline{\det(A)}$.

**Megoldás.**

Jelölje $A$ elemeit $a_{ij}$, $B$ elemeit $b_{ij}$. Ekkor a definíció szerint $(A^*)_{ij} = \overline{a_{ji}}$.

**a) $(A + B)^* = A^* + B^*$:**
Az $(i, j)$-edik elemre a transzponálás és a konjugálás linearitása miatt:
$$((A + B)^*)_{ij} = \overline{(A + B)^T_{ij}} = \overline{(A + B)_{ji}} = \overline{a_{ji} + b_{ji}} = \overline{a_{ji}} + \overline{b_{ji}} = (A^*)_{ij} + (B^*)_{ij}.$$
Mivel ez minden $(i, j)$ párra teljesül, $(A + B)^* = A^* + B^*$. $\blacksquare$

**b) $(cA)^* = \overline{c}A^*$:**
A definíció szerint:
$$((cA)^*)_{ij} = \overline{(cA)^T_{ij}} = \overline{(cA)_{ji}} = \overline{c \cdot a_{ji}} = \overline{c} \cdot \overline{a_{ji}} = \overline{c} \cdot (A^*)_{ij} = (\overline{c}A^*)_{ij}.$$
Tehát $(cA)^* = \overline{c}A^*$. $\blacksquare$

**c) $(A^*)^* = A$:**
A kettős transzponálás és kettős konjugálás tulajdonságaiból:
$$((A^*)^*)_{ij} = \overline{(A^*)_{ji}} = \overline{\overline{a_{ij}}} = a_{ij} = (A)_{ij}.$$
Tehát $(A^*)^* = A$. $\blacksquare$

**d) $(AB)^* = B^* A^*$:**
A mátrixszorzás definíciója szerint $(AB)_{ji} = \sum_{k=1}^3 a_{jk} b_{ki}$.
Ekkor az $(i, j)$-edik elem:
$$((AB)^*)_{ij} = \overline{(AB)^T_{ij}} = \overline{(AB)_{ji}} = \overline{\sum_{k=1}^3 a_{jk} b_{ki}} = \sum_{k=1}^3 \overline{a_{jk} b_{ki}} = \sum_{k=1}^3 \overline{b_{ki}} \cdot \overline{a_{jk}}.$$
Mivel $\overline{b_{ki}} = (B^*)_{ik}$ és $\overline{a_{jk}} = (A^*)_{kj}$:
$$((AB)^*)_{ij} = \sum_{k=1}^3 (B^*)_{ik} (A^*)_{kj} = (B^* A^*)_{ij}.$$
Ez minden koordinátára igaz, így $(AB)^* = B^* A^*$. $\blacksquare$

**e) Ha $A$ invertálható, akkor $A^*$ is invertálható és $(A^*)^{-1} = (A^{-1})^*$:**
Mivel $A$ invertálható, létezik $A^{-1}$, amelyre $A A^{-1} = A^{-1} A = I$, ahol $I$ a $3 \times 3$-as egységmátrix.
Alkalmazzuk mindkét egyenlőségre a d) pontban igazolt szorzási szabályt:
$$(A A^{-1})^* = (A^{-1})^* A^* \quad \text{és} \quad I^* = \overline{I^T} = \overline{I} = I.$$
Így:
$$(A^{-1})^* A^* = I.$$
Hasonlóan a másik sorrendre:
$$(A^{-1} A)^* = A^* (A^{-1})^* = I^* = I.$$
Mivel $(A^{-1})^*$ mindkét oldalról megszorozva $A^*$-ot az egységmátrixot adja, az invertálhatóság definíciója szerint $A^*$ invertálható, és inverze
$$(A^*)^{-1} = (A^{-1})^*. \quad \blacksquare$$

**f) $\det(A^*) = \overline{\det(A)}$:**
A transzponált mátrix determinánsa megegyezik az eredeti mátrix determinánsával: $\det(M^T) = \det(M)$.
Ezért:
$$\det(A^*) = \det(\overline{A^T}) = \det(\overline{A}^T) = \det(\overline{A}).$$
A determináns Leibniz-féle permutációs definíciója szerint:
$$\det(\overline{A}) = \sum_{\sigma \in S_3} \operatorname{sgn}(\sigma) \prod_{i=1}^3 \overline{a_{i,\sigma(i)}}.$$
Mivel az összeg és szorzat konjugáltja megegyezik a konjugáltak összegével és szorzatával, valamint $\operatorname{sgn}(\sigma) \in \{+1, -1\} \subset \mathbb{R}$:
$$\det(\overline{A}) = \overline{\sum_{\sigma \in S_3} \operatorname{sgn}(\sigma) \prod_{i=1}^3 a_{i,\sigma(i)}} = \overline{\det(A)}.$$
Tehát $\det(A^*) = \overline{\det(A)}$. $\blacksquare$

::: elmelet
**Elméleti háttér — adjungált (Hermite-féle transzponált) tulajdonságai.** A komplex vektorterekben a transzponálás természetes megfelelője a transzponált konjugált (más néven Hermite-féle adjungált, $A^* = A^H$). A művelet anti-lineáris és anti-multiplikatív ($(AB)^* = B^*A^*$), a determinánst pedig komplex konjugálja. Azok a mátrixok, amelyekre $A^* = A$, az önadjungált (vagy Hermite-féle) mátrixok, amelyek a valós szimmetrikus mátrixok komplex megfelelői.
:::

# Algebra és számelmélet – 1. ZH (2026) – megoldások

### Bsc algebra és számelmélet normál gyakorlat · Első zárthelyi (2026. október 21.)

## 1. feladat

a) Adjuk meg a $15x + 21y = 360$ diofantikus egyenlet általános megoldását, valamint az összes olyan megoldását, ahol $x$ és $y$ is pozitív egész.

b) Számítsuk ki $78^{123456783}$ utolsó két számjegyét a tízes számrendszerben.

**Megoldás.**

**a) Az összes egész megoldás:**
$$\mathbf{x = 3 + 7t, \quad y = 15 - 5t \quad (t \in \mathbb{Z})}$$
*(vagy ekvivalensen például $x = 10 + 7k, y = 10 - 5k$, $k \in \mathbb{Z}$).*

**Az összes pozitív egész megoldás:**
$$\mathbf{(x, y) \in \{(3, 15), (10, 10), (17, 5)\}}.$$

*Levezetés:*
1. **Egyszerűsítés:** A bal oldali együtthatók legnagyobb közös osztója $\lnko(15, 21) = 3$. Mivel $3 \mid 360$, az egyenlet mindkét oldala osztható 3-mal:
   $$5x + 7y = 120.$$
   Mivel $\lnko(5, 7) = 1$, az egyenlet megoldható az egész számok körében.
2. **Partikuláris megoldás keresése:**
   Tekintsük az egyenletet modulo 7:
   $$5x \equiv 120 \equiv 1 \pmod 7.$$
   Mivel $3 \cdot 5 = 15 \equiv 1 \pmod 7$, szorozzuk be a kongruencia mindkét oldalát 3-mal:
   $$x \equiv 3 \pmod 7.$$
   Választhatjuk az $x_0 = 3$ értéket partikuláris megoldásnak. Ekkor:
   $$5 \cdot 3 + 7y = 120 \implies 15 + 7y = 120 \implies 7y = 105 \implies y_0 = 15.$$
   *(Közvetlenül is észrevehető az $x_0 = 10, y_0 = 10$ partikuláris megoldás, hiszen $5 \cdot 10 + 7 \cdot 10 = 120$.)*
3. **Általános megoldás:**
   Mivel $\lnko(5, 7) = 1$, a diofantikus egyenlet általános megoldása:
   $$x = 3 + 7t, \quad y = 15 - 5t \quad (t \in \mathbb{Z}).$$
4. **Pozitív egész megoldások ($x > 0, y > 0$):**
   $$\begin{aligned}
   x > 0 &\iff 3 + 7t \ge 1 \iff 7t \ge -2 \iff t \ge 0, \\
   y > 0 &\iff 15 - 5t \ge 1 \iff 5t \le 14 \iff t \le 2.
   \end{aligned}$$
   Az egész $t$ paraméter lehetséges értékei tehát $t \in \{0, 1, 2\}$.
   - $t = 0 \implies x = 3, \quad y = 15$;
   - $t = 1 \implies x = 10, \quad y = 10$;
   - $t = 2 \implies x = 17, \quad y = 5$.

---

**b) Az utolsó két számjegy: $\mathbf{52}$.**

*Levezetés:*
Egy szám utolsó két számjegye a tízes számrendszerben a $100$-zal való osztási maradékával egyezik meg. Mivel $100 = 4 \cdot 25$ és $\lnko(4, 25) = 1$, a kínai maradéktételt használjuk: meghatározzuk a hatvány maradékát modulo 4 és modulo 25.

1. **Modulo 4:**
   $$78 \equiv 2 \equiv -2 \pmod 4.$$
   Mivel a kitevő $N = 123456783 \ge 2$, ezért:
   $$78^N = 78^2 \cdot 78^{N-2} \equiv 2^2 \cdot 78^{N-2} = 4 \cdot 78^{N-2} \equiv 0 \pmod 4.$$
2. **Modulo 25:**
   $$78 \equiv 3 \pmod{25}.$$
   Mivel $\lnko(3, 25) = 1$, alkalmazható az Euler–Fermat-tétel. Az Euler-féle $\varphi$-függvény értéke:
   $$\varphi(25) = 25 \left(1 - \frac{1}{5}\right) = 20,$$
   így $3^{20} \equiv 1 \pmod{25}$.
   A kitevőt modulo 20 vizsgálva:
   $$123456783 = 123456780 + 3 \equiv 3 \pmod{20}.$$
   Ennek megfelelően:
   $$78^{123456783} \equiv 3^{123456783} \equiv 3^3 = 27 \equiv 2 \pmod{25}.$$
3. **Egyesítés a kínai maradéktétellel:**
   Olyan $X \in \{0, 1, \dots, 99\}$ számot keresünk, amelyre:
   $$\begin{cases} X \equiv 0 \pmod 4 \\ X \equiv 2 \pmod{25} \end{cases}$$
   A modulo 25-ben 2 maradékot adó nemnegatív, 100 alatti számok:
   $$2, \quad 27, \quad 52, \quad 77.$$
   Ezek közül megvizsgálva a modulo 4 maradékokat:
   - $2 \equiv 2 \pmod 4 \ne 0$,
   - $27 \equiv 3 \pmod 4 \ne 0$,
   - $52 = 4 \cdot 13 \equiv 0 \pmod 4$,
   - $77 \equiv 1 \pmod 4 \ne 0$.
   Egyedül az $X = 52$ teljesíti mindkét feltételt.
   Tehát $78^{123456783} \equiv 52 \pmod{100}$, így az utolsó két számjegy **52**.

::: elmelet
**Elméleti háttér — lineáris diofantikus egyenletek és utolsó számjegyek.**
- Az $ax + by = c$ kétismeretlenes lineáris diofantikus egyenlet pontosan akkor oldható meg egész számokban, ha $d = \lnko(a, b) \mid c$. Ha $x_0, y_0$ egy partikuláris megoldás, akkor a teljes megoldáshalmaz $x = x_0 + \frac{b}{d}t$, $y = y_0 - \frac{a}{d}t$ ($t \in \mathbb{Z}$).
- Egy szám tízes számrendszerbeli utolsó két számjegye a modulo 100 maradéka. Ha a modulus összetett ($100 = 4 \cdot 25$), a maradékot prímhatvány-tényezőnként érdemes számolni (Euler–Fermat-tétellel: $a^{\varphi(m)} \equiv 1 \pmod m$, ha $\lnko(a, m) = 1$), majd a kínai maradéktétellel egyesíteni.
:::

## 2. feladat

a) Számítsuk ki és ábrázoljuk $\sqrt{3} - \sqrt{3}i$ három köbgyökét.

b) Ábrázoljuk azoknak a $z$ komplex számoknak a halmazát a síkon, melyekre $|4\overline{z} - 4 + i| = \operatorname{Im}(4z + i)$.

**Megoldás.**

**a) A három köbgyök trigonometrikus alakja:**
$$z_0 = \sqrt[6]{6} \left(\cos 105^\circ + i \sin 105^\circ\right) = \sqrt[6]{6} \left(\cos \frac{7\pi}{12} + i \sin \frac{7\pi}{12}\right),$$
$$z_1 = \sqrt[6]{6} \left(\cos 225^\circ + i \sin 225^\circ\right) = \sqrt[6]{6} \left(\cos \frac{5\pi}{4} + i \sin \frac{5\pi}{4}\right),$$
$$z_2 = \sqrt[6]{6} \left(\cos 345^\circ + i \sin 345^\circ\right) = \sqrt[6]{6} \left(\cos \frac{23\pi}{12} + i \sin \frac{23\pi}{12}\right).$$

*(Algebrai alakban például $z_1 = -\sqrt[6]{6}\frac{\sqrt{2}}{2}(1 + i) = -\frac{\sqrt[3]{6}}{2}(1 + i)$, míg $z_0, z_2 = \sqrt[6]{6}\left(\frac{\pm(\sqrt{2}-\sqrt{6})}{4} + i\frac{\sqrt{6}+\sqrt{2}}{4}\right)$.)*

*Levezetés:*
1. Írjuk fel a $w = \sqrt{3} - \sqrt{3}i$ komplex számot trigonometrikus alakban:
   - Abszolút érték:
     $$|w| = \sqrt{(\sqrt{3})^2 + (-\sqrt{3})^2} = \sqrt{3 + 3} = \sqrt{6}.$$
   - Irányszög: Mivel $\operatorname{Re}(w) = \sqrt{3} > 0$ és $\operatorname{Im}(w) = -\sqrt{3} < 0$, a szám a IV. síknegyedben helyezkedik el.
     $$\tan \varphi = \frac{-\sqrt{3}}{\sqrt{3}} = -1 \implies \varphi = -\frac{\pi}{4} = \frac{7\pi}{4} = 315^\circ.$$
   Tehát:
   $$w = \sqrt{6}\left(\cos 315^\circ + i \sin 315^\circ\right) = \sqrt{6}\left(\cos \frac{7\pi}{4} + i \sin \frac{7\pi}{4}\right).$$
2. A komplex köbgyökvonás képlete:
   $$z_k = \sqrt[3]{\sqrt{6}} \left(\cos \frac{315^\circ + 360^\circ k}{3} + i \sin \frac{315^\circ + 360^\circ k}{3}\right), \quad k \in \{0, 1, 2\}.$$
   A gyökök abszolút értéke:
   $$R = \sqrt[3]{\sqrt{6}} = (6^{1/2})^{1/3} = 6^{1/6} = \sqrt[6]{6} \approx 1{,}348.$$
   Az irányszögek:
   - $k = 0$: $\theta_0 = \frac{315^\circ}{3} = 105^\circ = \frac{7\pi}{12}$,
   - $k = 1$: $\theta_1 = 105^\circ + 120^\circ = 225^\circ = \frac{5\pi}{4}$,
   - $k = 2$: $\theta_2 = 225^\circ + 120^\circ = 345^\circ = \frac{23\pi}{12}$ *(vagy $-15^\circ$)*.

*Ábrázolás a komplex síkon:*
A három köbgyök az origó középpontú, $R = \sqrt[6]{6} \approx 1{,}348$ sugarú körre esik, és egy olyan origó középpontú szabályos háromszög csúcsait alkotják, melynek csúcsai a $105^\circ$ (II. síknegyed), $225^\circ$ (III. síknegyed, a harmadik síknegyed szögfelezőjén), valamint $345^\circ$ (IV. síknegyed) polárszögeknél találhatók.

---

**b) A ponthalmaz:**
$$\mathbf{y = (x - 1)^2}$$
**egy felfelé nyíló parabola a komplex síkon, melynek tengelypontja (csúcsa) az $(1, 0)$, azaz az $1 + 0i$ valós pont, szimmetriatengelye az $x = 1$ függőleges egyenes, fókusza az $F\left(1, \frac{1}{4}\right) = 1 + \frac{1}{4}i$, vezéregyenese pedig a $d: y = -\frac{1}{4}$ egyenes.**

*Levezetés (algebrai koordinátákkal):*
Legyen $z = x + iy$, ahol $x, y \in \mathbb{R}$. Ekkor $\overline{z} = x - iy$.
1. A bal oldal kifejtése:
   $$4\overline{z} - 4 + i = 4(x - iy) - 4 + i = (4x - 4) + i(1 - 4y).$$
   Ennek abszolút értéke:
   $$|4\overline{z} - 4 + i| = \sqrt{(4x - 4)^2 + (1 - 4y)^2} = \sqrt{16(x - 1)^2 + (1 - 4y)^2}.$$
2. A jobb oldal kifejtése:
   $$4z + i = 4(x + iy) + i = 4x + i(4y + 1) \implies \operatorname{Im}(4z + i) = 4y + 1.$$
3. Egyenlet és ekvivalens átalakítások:
   $$\sqrt{16(x - 1)^2 + (1 - 4y)^2} = 4y + 1.$$
   Mivel a bal oldal abszolút érték, értéke nemnegatív, ezért a megoldáshoz szükséges feltétel:
   $$4y + 1 \ge 0 \iff y \ge -\frac{1}{4}.$$
   E feltétel mellett mindkét oldalt négyzetre emelhetjük:
   $$16(x - 1)^2 + (1 - 4y)^2 = (4y + 1)^2.$$
   Kifejtve a négyzeteket:
   $$(1 - 4y)^2 = 1 - 8y + 16y^2, \qquad (4y + 1)^2 = 1 + 8y + 16y^2.$$
   Behelyettesítve:
   $$16(x - 1)^2 + 1 - 8y + 16y^2 = 1 + 8y + 16y^2.$$
   Mindkét oldalból kivonva az $1 + 16y^2$-et:
   $$16(x - 1)^2 - 8y = 8y \implies 16(x - 1)^2 = 16y \implies y = (x - 1)^2.$$
4. A feltétel ellenőrzése:
   Mivel minden valós $x$-re $(x - 1)^2 \ge 0 > -\frac{1}{4}$, a feltétel automatikusan teljesül minden valós $x$-re.
   A keresett ponthalmaz tehát a teljes $y = (x - 1)^2$ parabola.

*Geometriai meggondolás (fókusz-vezéregyenes értelmezés):*
Osszuk el az eredeti egyenlet mindkét oldalát 4-gyel, és használjuk fel, hogy $|\overline{w}| = |w|$:
$$\left|\overline{z - \left(1 + \frac{i}{4}\right)}\right| = \left|z - \left(1 + \frac{i}{4}\right)\right| = y + \frac{1}{4} = y - \left(-\frac{1}{4}\right).$$
A bal oldal a $z$ pont távolsága a sík $F\left(1, \frac{1}{4}\right)$ rögzített pontjától, a jobb oldal pedig (ha $y \ge -\frac{1}{4}$) a $z$ pont távolsága a $d: y = -\frac{1}{4}$ vízszintes vezéregyenestől. Azon pontok mértani helye, amelyek egy ponttól és egy egyenestől egyenlő távolságra vannak, a definíció szerint parabola.

::: elmelet
**Elméleti háttér — komplex gyökvonás és másodrendű görbék.**
- A $w = r(\cos \varphi + i \sin \varphi)$ szám $n$-edik gyökei egy origó középpontú, $\sqrt[n]{r}$ sugarú körbe írt szabályos $n$-szög csúcsait alkotják a síkon.
- A komplex síkon távolságokat abszolút értékkel fejezünk ki: $|z - z_0|$ a $z$ és $z_0$ távolsága. Ha egy pont távolsága egy fókuszponttól megegyezik egy egyenestől mért távolságával, a mértani hely parabola.
:::

## 3. feladat

a) Mik $m^2 + m + 4$ és $m^2 + 2$ legnagyobb közös osztójának lehetséges (pozitív) értékei? Mindegyikhez adjunk is meg egy-egy konkrét $m$ egész számot, ami megvalósítja.

b) Mely $n \ge 0$ egészekre lesz $n^3 - 8$ pozitív vagy negatív prímszám?

**Megoldás.**

**a) A legnagyobb közös osztó lehetséges értékei:**
$$\mathbf{d \in \{1, 2, 3, 6\}}.$$

**Megvalósító konkrét $m$ egész számok:**
- $\mathbf{d = 1}$-re például $\mathbf{m = 3}$: ekkor $3^2 + 3 + 4 = 16$ és $3^2 + 2 = 11$, $\lnko(16, 11) = 1$.
- $\mathbf{d = 2}$-re például $\mathbf{m = 0}$: ekkor $0^2 + 0 + 4 = 4$ és $0^2 + 2 = 2$, $\lnko(4, 2) = 2$.
- $\mathbf{d = 3}$-re például $\mathbf{m = 1}$: ekkor $1^2 + 1 + 4 = 6$ és $1^2 + 2 = 3$, $\lnko(6, 3) = 3$.
- $\mathbf{d = 6}$-ra például $\mathbf{m = 4}$: ekkor $4^2 + 4 + 4 = 24$ és $4^2 + 2 = 18$, $\lnko(24, 18) = 6$.

*Levezetés:*
1. Legyen $d = \lnko(m^2 + m + 4, m^2 + 2)$.
   Mivel $d$ mindkét kifejezést osztja, osztja azok különbségét is:
   $$d \mid (m^2 + m + 4) - (m^2 + 2) = m + 2.$$
2. Mivel $d \mid (m + 2)$, ezért $d$ osztja az $(m + 2)$ bármely egész együtthatós többszörösét is. Vonjuk ki az $(m - 2)(m + 2) = m^2 - 4$ szorzatot az $m^2 + 2$ kifejezésből:
   $$d \mid (m^2 + 2) - (m - 2)(m + 2) = m^2 + 2 - (m^2 - 4) = 6.$$
   *(Kongruenciával fogalmazva: $d \mid (m + 2) \implies m \equiv -2 \pmod d$, így $m^2 + 2 \equiv (-2)^2 + 2 = 6 \equiv 0 \pmod d$, azaz $d \mid 6$.)*
3. Mivel a legnagyobb közös osztó definíció szerint pozitív egész és $d \mid 6$, $d$ lehetséges értékei kizárólag a 6 pozitív osztói lehetnek:
   $$d \in \{1, 2, 3, 6\}.$$
4. A fenti példák mutatják, hogy mind a 4 lehetséges érték valóban realizálható egész $m$ értékekkel.

---

**b) A keresett nemnegatív egészek:**
$$\mathbf{n = 1 \quad \text{és} \quad n = 3}.$$
*(Az $n = 1$ esetben $n^3 - 8 = -7$, ami negatív prím; az $n = 3$ esetben $n^3 - 8 = 19$, ami pozitív prím.)*

*Levezetés:*
1. Bontsuk szorzattá a kifejezést a köbök különbségének azonosságával ($a^3 - b^3 = (a - b)(a^2 + ab + b^2)$):
   $$n^3 - 8 = n^3 - 2^3 = (n - 2)(n^2 + 2n + 4).$$
2. Az egész számok gyűrűjében egy szám akkor (pozitív vagy negatív) prímszám (azaz felbonthatatlan elem), ha pontosan négy osztója van: $\pm 1$ és $\pm p$ (ahol $|p| > 1$).
   Ha két egész szám szorzata prím, akkor az egyik tényezőnek feltétlenül $\pm 1$-nek kell lennie.
3. Vizsgáljuk a második tényezőt tetszőleges $n \ge 0$ egész esetén:
   $$n^2 + 2n + 4 = (n + 1)^2 + 3.$$
   Mivel $n \ge 0$, ezért $n + 1 \ge 1 \implies (n + 1)^2 \ge 1$, amiből:
   $$n^2 + 2n + 4 \ge 1 + 3 = 4.$$
   A második tényező tehát minden $n \ge 0$-ra legalább 4, így soha nem lehet sem $1$, sem $-1$.
4. A szorzat tehát kizárólag akkor lehet prím, ha az első tényező értéke $\pm 1$:
   - **1. eset: $n - 2 = 1 \implies n = 3$.**
     Ekkor $n^3 - 8 = 3^3 - 8 = 27 - 8 = 19$.
     Mivel a 19 pozitív prímszám, az $n = 3$ megoldás.
   - **2. eset: $n - 2 = -1 \implies n = 1$.**
     Ekkor $n^3 - 8 = 1^3 - 8 = 1 - 8 = -7$.
     Mivel $|-7| = 7$ prím, a $-7$ negatív prímszám, így az $n = 1$ is megoldás.
5. Egyéb $n \ge 0$ egészek vizsgálata:
   - $n = 0$: $n^3 - 8 = -8 = (-2) \cdot 4$, összetett szám (nem prím).
   - $n = 2$: $n^3 - 8 = 0$, nem prím.
   - $n \ge 4$: ekkor $n - 2 \ge 2$ és $n^2 + 2n + 4 \ge 28$, azaz két 1-nél szigorúan nagyobb egész szorzata, így összetett szám.
   Tehát csak az $n = 1$ és $n = 3$ felel meg a feltételeknek.

::: elmelet
**Elméleti háttér — euklideszi algoritmus polinomokra és felbonthatatlanság.**
- Polinomok egész helyettesítési értékeinek legnagyobb közös osztójánál az euklideszi lépésekkel a fokszám redukálható: $\lnko(A, B) = \lnko(B, A - qB)$. Ha eljutunk egy konstans $C$ egészhez, a lehetséges $\lnko$-k a $C$ osztói.
- Az egész számok gyűrűjében a felbonthatatlan (irreducibilis) és a prím elemek fogalma egybeesik. Ha egy egész szorzat prím, az egyik szorzótényező egység ($\pm 1$) kell legyen.
:::

## 4. feladat

Adjuk meg Gauss-eliminációval az
$$\begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix}$$
lineáris egyenletrendszer általános megoldását.

**Megoldás.**

**Az egyenletrendszer általános megoldása:**
$$\mathbf{\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} t - s & s \\ 0 & t \end{pmatrix} \quad (s, t \in \mathbb{R})}$$
*(vagy az $r = t - s \in \mathbb{R}$ paraméterezéssel:*
$$\mathbf{\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} r & s \\ 0 & r + s \end{pmatrix} \quad (r, s \in \mathbb{R})}).$$

*Levezetés Gauss-eliminációval:*
1. Végezzük el a mátrixszorzásokat mindkét oldalon:
   - Bal oldal:
     $$\begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} 2x + u & 2y + v \\ 3u & 3v \end{pmatrix}.$$
   - Jobb oldal:
     $$\begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix} = \begin{pmatrix} 2x & x + 3y \\ 2u & u + 3v \end{pmatrix}.$$
2. A két mátrix egyenlőségéből pozíciónként felírjuk az egyenleteket:
   $$\begin{aligned}
   (1, 1): \quad 2x + u &= 2x \implies u = 0 \\
   (1, 2): \quad 2y + v &= x + 3y \implies -x - y + v = 0 \\
   (2, 1): \quad 3u &= 2u \implies u = 0 \\
   (2, 2): \quad 3v &= u + 3v \implies u = 0
   \end{aligned}$$
3. Írjuk fel a homogén lineáris egyenletrendszer kibővített mátrixát az $(x, y, u, v)$ oszloprendben:
   $$\left(\begin{array}{cccc|c}
   0 & 0 & 1 & 0 & 0 \\
   -1 & -1 & 0 & 1 & 0 \\
   0 & 0 & 1 & 0 & 0 \\
   0 & 0 & -1 & 0 & 0
   \end{array}\right)$$
4. Gauss-elimináció lépései:
   - Cseréljük meg az 1. és 2. sort ($S_1 \leftrightarrow S_2$), majd szorozzuk meg az új 1. sort $(-1)$-gyel ($S_1 \leftarrow -S_1$):
     $$\left(\begin{array}{cccc|c}
     1 & 1 & 0 & -1 & 0 \\
     0 & 0 & 1 & 0 & 0 \\
     0 & 0 & 1 & 0 & 0 \\
     0 & 0 & -1 & 0 & 0
     \end{array}\right)$$
   - Vonjuk ki a 2. sort a 3. sorból ($S_3 \leftarrow S_3 - S_2$), és adjuk hozzá a 4. sorhoz ($S_4 \leftarrow S_4 + S_2$):
     $$\left(\begin{array}{cccc|c}
     1 & 1 & 0 & -1 & 0 \\
     0 & 0 & 1 & 0 & 0 \\
     0 & 0 & 0 & 0 & 0 \\
     0 & 0 & 0 & 0 & 0
     \end{array}\right)$$
5. **A lépcsős alak elemzése:**
   - A vezéregyesek az 1. és a 3. oszlopban állnak, így a **kötött változók**: $x$ és $u$.
   - A 2. és a 4. oszlop nem tartalmaz vezérelemet, így a **szabad változók**: $y$ és $v$.
6. A megoldás kifejezése:
   - A 2. sor szerint:
     $$u = 0.$$
   - Az 1. sor szerint:
     $$x + y - v = 0 \implies x = v - y.$$
   Legyen a két szabad paraméter $y = s \in \mathbb{R}$ és $v = t \in \mathbb{R}$. Ekkor:
   $$x = t - s, \quad y = s, \quad u = 0, \quad v = t.$$
   Mátrix alakban felírva:
   $$\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} t - s & s \\ 0 & t \end{pmatrix} = t \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} + s \begin{pmatrix} -1 & 1 \\ 0 & 0 \end{pmatrix} \quad (s, t \in \mathbb{R}).$$

::: elmelet
**Elméleti háttér — mátrixok kommutátora és Gauss-elimináció.**
- Azon mátrixok halmaza, amelyek kommutálnak egy rögzített $A$ mátrixszal ($AX = XA$), alteret alkotnak $\mathbb{R}^{n \times n}$-ben (az $A$ kommutánsa).
- A Gauss-elimináció során az elemi sorműveletekkel (sorcsere, számmal szorzás, sor hozzáadása másikhoz) lépcsős alakra hozzuk a kibővített mátrixot. A vezérelemek oszlopaihoz tartoznak a kötött változók, a többihez a szabad változók.
:::

## 5. feladat

Határozzuk meg $4x^4 + 12x^3 + 17x^2 + 10x + 2$ racionális, majd az összes komplex gyökeit is, és ezek multiplicitását.

**Megoldás.**

**Racionális gyökök:**
$$\mathbf{x_1 = -\frac{1}{2} \quad \text{(multiplicitása 2)}}.$$

**Összes komplex gyök és multiplicitásuk:**
$$\mathbf{x_1 = -\frac{1}{2} \quad \text{(multiplicitása 2)}},$$
$$\mathbf{x_2 = -1 + i \quad \text{(multiplicitása 1)}},$$
$$\mathbf{x_3 = -1 - i \quad \text{(multiplicitása 1)}}.$$

**Gyöktényezős felbontás:**
$$4x^4 + 12x^3 + 17x^2 + 10x + 2 = 4\left(x + \frac{1}{2}\right)^2 (x + 1 - i)(x + 1 + i) = (2x + 1)^2 (x^2 + 2x + 2).$$

*Levezetés:*
1. **Racionális gyökteszt:**
   Legyen $f(x) = 4x^4 + 12x^3 + 17x^2 + 10x + 2$.
   Ha $\frac{p}{q}$ egy egyszerűsített alakú racionális gyök ($\lnko(p, q) = 1$):
   - $p \mid a_0 = 2 \implies p \in \{\pm 1, \pm 2\}$,
   - $q \mid a_4 = 4 \implies q \in \{1, 2, 4\}$.
   A lehetséges racionális gyökök jelöltjei:
   $$\pm 1, \quad \pm 2, \quad \pm \frac{1}{2}, \quad \pm \frac{1}{4}.$$
   Mivel $f(x)$ minden együtthatója szigorúan pozitív ($4, 12, 17, 10, 2 > 0$), ha $x \ge 0$, akkor $f(x) \ge 2 > 0$. Így $f(x)$-nek nem létezhet nemnegatív valós gyöke, elegendő csak a negatív számokat ellenőrizni:
   $$-1, \quad -2, \quad -\frac{1}{2}, \quad -\frac{1}{4}.$$
2. **Gyökkeresés és Horner-elrendezés:**
   - $x = -1$: $f(-1) = 4(-1)^4 + 12(-1)^3 + 17(-1)^2 + 10(-1) + 2 = 4 - 12 + 17 - 10 + 2 = 1 \ne 0$.
   - $x = -2$: $f(-2) = 4(16) + 12(-8) + 17(4) + 10(-2) + 2 = 64 - 96 + 68 - 20 + 2 = 18 \ne 0$.
   - $x = -\frac{1}{2}$:
     Készítsük el a Horner-táblázatot az $f(x)$ együtthatóira a $-\frac{1}{2}$ helyen:
     $$\begin{array}{c|ccccc}
     & 4 & 12 & 17 & 10 & 2 \\
     -\frac{1}{2} & 4 & 10 & 12 & 4 & \mathbf{0}
     \end{array}$$
     A maradék 0, tehát $x = -\frac{1}{2}$ valóban gyök!
     A kapott hányadospolinom:
     $$g(x) = 4x^3 + 10x^2 + 12x + 4 = 2(2x^3 + 5x^2 + 6x + 2).$$
3. **Multiplicitás vizsgálata:**
   Nézzük meg, hogy $x = -\frac{1}{2}$ többszörös gyök-e. Alkalmazzuk újra a Horner-elrendezést a $2x^3 + 5x^2 + 6x + 2$ polinomra a $-\frac{1}{2}$ helyen:
   $$\begin{array}{c|cccc}
   & 2 & 5 & 6 & 2 \\
   -\frac{1}{2} & 2 & 4 & 4 & \mathbf{0}
   \end{array}$$
   A maradék ismét 0, így $x = -\frac{1}{2}$ legalább kétszeres gyök!
   A megmaradt másodfokú hányadospolinom:
   $$2x^2 + 4x + 4 = 2(x^2 + 2x + 2).$$
   Helyettesítsük be $x = -\frac{1}{2}$-et a megmaradt $x^2 + 2x + 2$ kifejezésbe:
   $$\left(-\frac{1}{2}\right)^2 + 2\left(-\frac{1}{2}\right) + 2 = \frac{1}{4} - 1 + 2 = \frac{5}{4} \ne 0.$$
   Tehát $x = -\frac{1}{2}$ **pontosan 2 multiplicitású** racionális gyök.
4. **A további komplex gyökök meghatározása:**
   A hiányzó két gyök a megmaradt $x^2 + 2x + 2 = 0$ másodfokú egyenletből adódik:
   $$(x + 1)^2 + 1 = 0 \iff (x + 1)^2 = -1 \iff x + 1 = \pm i \iff x = -1 \pm i.$$
   Mivel ezek a számok nem valósak és különböznek egymástól (valamint a $-\frac{1}{2}$-től is), mindkettő multiplicitása 1.

::: elmelet
**Elméleti háttér — polinomok gyökei és multiplicitása.**
- *Racionális gyökteszt:* egész együtthatós $a_n x^n + \dots + a_0$ polinom tetszőleges $\frac{p}{q}$ racionális gyökére $p \mid a_0$ és $q \mid a_n$.
- *Horner-elrendezés:* gyors algoritmus a behelyettesítési érték kiszámítására és az $(x - c)$ gyöktényezővel való maradékos osztásra.
- *Multiplicitás:* a $c$ gyök multiplicitása $k$, ha $(x - c)^k \mid f(x)$, de $(x - c)^{k+1} \nmid f(x)$.
- Valós együtthatós polinom nemvalós komplex gyökei mindig konjugált párokban lépnek fel azonos multiplicitással.
:::

## 6. feladat

Adjuk meg az $x^2 - y^2 = 32$ diofantikus egyenlet összes pozitív egész megoldását.

**Megoldás.**

**Az összes pozitív egész megoldáspár:**
$$\mathbf{(x, y) \in \{(6, 2), (9, 7)\}}.$$

*Levezetés:*
1. **Szorzattá alakítás:**
   Alkalmazzuk a négyzetek különbségének azonosságát a bal oldalon:
   $$(x - y)(x + y) = 32.$$
2. **A szorzótényezők tulajdonságai:**
   Vezessük be az $u = x - y$ és $v = x + y$ jelöléseket.
   Mivel a feladat feltétele szerint $x, y \in \mathbb{Z}^+$ (azaz $x \ge 1, y \ge 1$ egész számok):
   - $v = x + y \ge 1 + 1 = 2 > 0$, így $v$ pozitív egész.
   - Mivel $u \cdot v = 32 > 0$ és $v > 0$, ebből következik, hogy $u = x - y > 0$ is szigorúan pozitív egész.
   - Mivel $y > 0$, ezért $x - y < x + y$, vagyis $u < v$.
   - **Paritásvizsgálat:**
     $$v - u = (x + y) - (x - y) = 2y.$$
     Mivel $2y$ páros egész szám, $u$ és $v$ különbsége páros, ami azt jelenti, hogy $u$ és $v$ **azonos paritásúak** (vagy mindkettő páros, vagy mindkettő páratlan).
     Mivel szorzatuk $u \cdot v = 32 = 2^5$ páros szám, nem lehet mindkettő páratlan, így $u$-nak és $v$-nek **mindkettőnek párosnak kell lennie**.
3. **Lehetséges osztópárok vizsgálata:**
   A 32 pozitív osztói: $1, 2, 4, 8, 16, 32$.
   A lehetséges $(u, v)$ párok, amelyekre $u < v$, $u \cdot v = 32$, és mindkét tag páros:
   - **1. eset: $u = 2, v = 16$.**
     $$\begin{cases} x - y = 2 \\ x + y = 16 \end{cases}$$
     A két egyenletet összeadva: $2x = 18 \implies x = 9$.
     Kivonva a másodikat az elsőből: $2y = 14 \implies y = 7$.
     Mindkettő pozitív egész.
     *Ellenőrzés:* $9^2 - 7^2 = 81 - 49 = 32$. Helyes!
   - **2. eset: $u = 4, v = 8$.**
     $$\begin{cases} x - y = 4 \\ x + y = 8 \end{cases}$$
     A két egyenletet összeadva: $2x = 12 \implies x = 6$.
     Kivonva: $2y = 4 \implies y = 2$.
     Mindkettő pozitív egész.
     *Ellenőrzés:* $6^2 - 2^2 = 36 - 4 = 32$. Helyes!
4. **Teljesség:**
   Mivel $u < v$ és $u \cdot v = 32$, szükségképpen $u < \sqrt{32} \approx 5{,}65$. Az $5{,}65$-nél kisebb páros pozitív egészek kizárólag a 2 és a 4, így más eset nem létezik.
   *(Az egyetlen további pozitív osztópár az $u = 1, v = 32$ volna, de itt $u$ páratlan és $v$ páros, a paritásuk különbözik, ami $2x = 33 \implies x = \frac{33}{2} \notin \mathbb{Z}$ nem egész megoldásra vezetne.)*
   Az egyenletnek tehát pontosan két pozitív egész megoldáspárja van: $(6, 2)$ és $(9, 7)$.

::: elmelet
**Elméleti háttér — szorzattá alakítható diofantikus egyenletek.**
- Az $x^2 - y^2 = c$ típusú egyenletek az $(x - y)(x + y) = c$ faktorizációval a $c$ egész szám osztópárjainak felbontására vezethetők vissza.
- A paritáskulcs: $x + y$ és $x - y$ paritása mindig megegyezik, mert összegük és különbségük ($2x$, illetve $2y$) páros. Emiatt $c \equiv 2 \pmod 4$ esetén az egyenletnek egyáltalán nincs egész megoldása, páros $c$ esetén pedig mindkét tényezőnek párosnak kell lennie.
:::
