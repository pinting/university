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
