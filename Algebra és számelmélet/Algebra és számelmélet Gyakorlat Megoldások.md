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

## 3. feladat

Adott 1849 szám úgy, hogy közülük bármelyik 1848 összege 1849. Melyek ezek a számok?

**Megoldás.**

Legyenek a számok $a_1, \dots, a_{1849}$, összegük $S$. Az $a_i$-t kihagyva a maradék összege $S - a_i = 1849$, tehát $a_i = S - 1849$ **minden $i$-re ugyanaz**, mondjuk $a$. Ekkor $S = 1849a$, és $1848a = 1849$, azaz
$$a_1 = a_2 = \dots = a_{1849} = \frac{1849}{1848}.$$

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

## 5. feladat

Ha egy $\mathbb{Q}$ feletti homogén lineáris egyenletrendszernek van nemtriviális komplex megoldása, akkor hány racionális megoldása van? Ha egy $\mathbb{R}$ feletti lineáris egyenletrendszernek van komplex nem valós megoldása, akkor hány valós megoldása van?

**Megoldás.**

**Első kérdés: végtelen sok racionális megoldása van.** A Gauss-elimináció csak a négy alapműveletet használja, így a racionális együtthatós $A$ mátrix lépcsős alakja (és rangja) ugyanaz, akár $\mathbb{Q}$, akár $\mathbb{C}$ felett végezzük. Ha van nemtriviális komplex megoldás, akkor $\operatorname{rang} A$ kisebb az ismeretlenek számánál, azaz van szabad ismeretlen. A szabad ismeretleneknek tetszőleges racionális értéket adva racionális megoldást kapunk; így végtelen sok (megszámlálhatóan végtelen) racionális megoldás van. Pl. ha $v$ nemtriviális racionális megoldás, akkor $qv$ is az minden $q \in \mathbb{Q}$-ra.

**Második kérdés: végtelen sok valós megoldása van.** Legyen $A\mathbf{z} = \mathbf{b}$ ($A$, $\mathbf{b}$ valós), és $\mathbf{z} = \mathbf{u} + i\mathbf{v}$ megoldás, ahol $\mathbf{u}, \mathbf{v}$ valós vektorok és $\mathbf{v} \neq \mathbf{0}$. Ekkor $A\mathbf{u} + iA\mathbf{v} = \mathbf{b}$, és a valós, illetve képzetes részeket összevetve $A\mathbf{u} = \mathbf{b}$, $A\mathbf{v} = \mathbf{0}$. Így $\mathbf{u} + t\mathbf{v}$ minden $t \in \mathbb{R}$-re valós megoldás, és ezek különbözőek.

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

## 8. feladat

Bizonyítsuk be, hogy két felső háromszögmátrix szorzata is felső háromszögmátrix.

**Megoldás.**

Legyenek $A = (a_{ij})$, $B = (b_{ij})$ $n \times n$-es felső háromszögmátrixok: $a_{ij} = 0$ és $b_{ij} = 0$, ha $i > j$. Legyen $i > j$. Ekkor
$$(AB)_{ij} = \sum_{k=1}^{n} a_{ik} b_{kj}.$$
Minden tagban vagy $k < i$, és akkor $a_{ik} = 0$; vagy $k \ge i > j$, és akkor $b_{kj} = 0$. Tehát $(AB)_{ij} = 0$ minden $i > j$-re, azaz $AB$ felső háromszögmátrix. $\blacksquare$

## 9. feladat

Bizonyítsuk be, hogy a mátrixszorzás asszociatív, azaz ha $A \in \mathbb{R}^{n \times m}$, $B \in \mathbb{R}^{m \times k}$ és $C \in \mathbb{R}^{k \times \ell}$, akkor $(AB)C = A(BC)$.

**Megoldás.**

Mindkét oldal $n \times \ell$-es. Az $(i, j)$ elemek:
$$((AB)C)_{ij} = \sum_{s=1}^{k} (AB)_{is}\,c_{sj} = \sum_{s=1}^{k}\sum_{r=1}^{m} a_{ir}b_{rs}c_{sj},$$
$$(A(BC))_{ij} = \sum_{r=1}^{m} a_{ir}\,(BC)_{rj} = \sum_{r=1}^{m}\sum_{s=1}^{k} a_{ir}b_{rs}c_{sj}.$$
A két véges összeg csak az összegzés sorrendjében különbözik (a valós számok összeadása kommutatív és asszociatív, és a szorzás disztributív), tehát egyenlők. $\blacksquare$

## 10. feladat

Ha
$$\begin{pmatrix} 0 & -1 \\ 0 & 0 \end{pmatrix} N = \begin{pmatrix} 2 & -3 & 4 \\ 0 & 0 & 0 \end{pmatrix},$$
akkor mi az $N$ mátrix második sorának első eleme?

**Megoldás.**

$N$ $2 \times 3$-as; legyenek sorai $\mathbf{n}_1$, $\mathbf{n}_2$. A szorzat sorai a bal oldali mátrix sorai szerinti lineáris kombinációk:
$$\begin{pmatrix} 0 & -1 \\ 0 & 0 \end{pmatrix} N = \begin{pmatrix} -\mathbf{n}_2 \\ \mathbf{0} \end{pmatrix} = \begin{pmatrix} 2 & -3 & 4 \\ 0 & 0 & 0 \end{pmatrix}.$$
Tehát $\mathbf{n}_2 = (-2, 3, -4)$, és **$N$ második sorának első eleme $-2$**. ($N$ első sora tetszőleges lehet.)

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

## 12. feladat

Számítsuk ki az $5 \times 5$-ös $N = ((n_{ij}))$ mátrix első öt hatványát, ahol $n_{ij} = 1$, ha $j - i = 1$, és $0$ egyébként. Tegyük fel, hogy egy $n \times n$-es $M = ((m_{ij}))$ mátrix főátlójában és ez alatt csupa nulla van (azaz $m_{ij} = 0$, ha $i \ge j$). Bizonyítsuk be, hogy $M^n = 0$.

**Megoldás.**

$N$-ben az egyesek a főátló feletti első mellékátlóban állnak. Indukcióval: $(N^k)_{ij} = 1$, ha $j - i = k$, és $0$ egyébként. Valóban, $(N^{k+1})_{ij} = \sum_s (N^k)_{is} N_{sj}$, és egy tag csak $s = i + k$ és $j = s + 1$ esetén nem nulla, azaz ha $j = i + k + 1$. Tehát
$$N = \begin{pmatrix} 0&1&0&0&0\\0&0&1&0&0\\0&0&0&1&0\\0&0&0&0&1\\0&0&0&0&0 \end{pmatrix}, \quad N^2 = \begin{pmatrix} 0&0&1&0&0\\0&0&0&1&0\\0&0&0&0&1\\0&0&0&0&0\\0&0&0&0&0 \end{pmatrix}, \quad N^3 = \begin{pmatrix} 0&0&0&1&0\\0&0&0&0&1\\0&0&0&0&0\\0&0&0&0&0\\0&0&0&0&0 \end{pmatrix},$$
$$N^4 = \begin{pmatrix} 0&0&0&0&1\\0&0&0&0&0\\0&0&0&0&0\\0&0&0&0&0\\0&0&0&0&0 \end{pmatrix}, \qquad N^5 = 0.$$

**Általános állítás.** Ha $m_{ij} = 0$ minden $i \ge j$-re, akkor indukcióval: $(M^k)_{ij} = 0$, ha $j - i < k$. $k = 1$-re ez a feltétel. Ha $k$-ra igaz, akkor
$$(M^{k+1})_{ij} = \sum_{s} (M^k)_{is}\,m_{sj},$$
és egy tag csak akkor lehet nem nulla, ha $s - i \ge k$ és $j - s \ge 1$, azaz $j - i \ge k + 1$. Tehát $j - i < k + 1$ esetén $(M^{k+1})_{ij} = 0$. Mivel $j - i \le n - 1 < n$ mindig, $M^n = 0$. $\blacksquare$

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

## 14. feladat

Bizonyítsuk be, hogy invertálható mátrixok szorzata is invertálható. Adjunk ellenpéldát a következő állításra: invertálható mátrixok összege is invertálható.

**Megoldás.**

Ha $A$ és $B$ invertálható ($n \times n$-es), akkor
$$(AB)(B^{-1}A^{-1}) = A(BB^{-1})A^{-1} = AA^{-1} = I, \qquad (B^{-1}A^{-1})(AB) = B^{-1}(A^{-1}A)B = I,$$
tehát $AB$ invertálható, és $(AB)^{-1} = B^{-1}A^{-1}$.

**Ellenpélda az összegre:** $I$ és $-I$ invertálható, de $I + (-I) = 0$ nem.

## 15. feladat

Bizonyítsuk be, hogy $(AB)^T = B^T A^T$, és ha $A \in \mathbb{R}^{n \times n}$ invertálható, akkor $A^T$ is invertálható, továbbá $(A^T)^{-1} = (A^{-1})^T$.

**Megoldás.**

$$((AB)^T)_{ij} = (AB)_{ji} = \sum_k a_{jk}b_{ki} = \sum_k (B^T)_{ik}(A^T)_{kj} = (B^TA^T)_{ij}.$$
Ha $A$ invertálható, akkor ezt felhasználva
$$A^T(A^{-1})^T = (A^{-1}A)^T = I^T = I, \qquad (A^{-1})^TA^T = (AA^{-1})^T = I,$$
tehát $A^T$ invertálható, és $(A^T)^{-1} = (A^{-1})^T$. $\blacksquare$

## 16. feladat

Egy mátrix első két sorát megcseréljük. Hogyan változik meg az inverze?

**Megoldás.**

Az első két sor cseréje balról szorzás a $P$ permutációmátrixszal (az egységmátrix első két sorát cseréljük fel): $A' = PA$. Nyilván $P^2 = I$, így $P^{-1} = P$, és
$$(A')^{-1} = (PA)^{-1} = A^{-1}P^{-1} = A^{-1}P.$$
Jobbról $P$-vel szorozva az oszlopok cserélődnek: **az inverz első két oszlopa cserélődik fel.**

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

# Algebra és számelmélet – 2. feladatsor – megoldások

## 1. feladat

Mutassuk meg, hogy $1^2 + 2^2 + \dots + n^2 = \dfrac{n(n+1)(2n+1)}{6}$.

**Megoldás.**

Teljes indukció. $n = 1$: $1 = \frac{1 \cdot 2 \cdot 3}{6}$. Ha $n$-re igaz, akkor
$$\frac{n(n+1)(2n+1)}{6} + (n+1)^2 = \frac{(n+1)\big(n(2n+1) + 6(n+1)\big)}{6} = \frac{(n+1)(2n^2 + 7n + 6)}{6} = \frac{(n+1)(n+2)(2n+3)}{6},$$
ami éppen az állítás $n + 1$-re. $\blacksquare$

## 2. feladat

Bizonyítsuk be, hogy $1^3 + 2^3 + \dots + n^3 = (1 + 2 + \dots + n)^2$.

**Megoldás.**

Tudjuk, hogy $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, tehát azt kell igazolni, hogy $1^3 + \dots + n^3 = \frac{n^2(n+1)^2}{4}$. Indukció: $n = 1$-re $1 = 1$. Ha $n$-re igaz, akkor
$$\frac{n^2(n+1)^2}{4} + (n+1)^3 = \frac{(n+1)^2(n^2 + 4n + 4)}{4} = \frac{(n+1)^2(n+2)^2}{4}. \qquad \blacksquare$$

## 3. feladat

Igazoljuk, hogy minden $n \in \mathbb{N}^+$ esetén $27 \mid 10^n + 18n - 1$.

**Megoldás.**

Legyen $a_n = 10^n + 18n - 1$. Indukció: $a_1 = 27$. A lépéshez:
$$a_{n+1} - 10a_n = 10^{n+1} + 18n + 17 - 10^{n+1} - 180n + 10 = 27 - 162n = 27(1 - 6n),$$
tehát $a_{n+1} = 10a_n + 27(1 - 6n)$, és ha $27 \mid a_n$, akkor $27 \mid a_{n+1}$. $\blacksquare$

*Másik bizonyítás:* $10^n - 1 = 9R_n$, ahol $R_n = 11\dots1$ ($n$ darab egyes). A jegyösszeg miatt $R_n \equiv n \pmod 3$, így $10^n - 1 + 18n = 9(R_n + 2n)$, és $R_n + 2n \equiv 3n \equiv 0 \pmod 3$.

## 4. feladat

Igazoljuk, hogy minden pozitív egész $n$ esetén $2^n \mid (n+1)(n+2) \cdots (2n)$.

**Megoldás.**

$(n+1)(n+2)\cdots(2n) = \dfrac{(2n)!}{n!}$. A $(2n)!$ szorzatot páros és páratlan tényezőkre bontva:
$$(2n)! = (2 \cdot 4 \cdots 2n)\cdot(1 \cdot 3 \cdots (2n-1)) = 2^n\,n! \cdot (1 \cdot 3 \cdots (2n-1)).$$
Így $(n+1)(n+2)\cdots(2n) = 2^n \cdot 1 \cdot 3 \cdots (2n - 1)$, ami osztható $2^n$-nel (sőt a $2$ kitevője pontosan $n$). $\blacksquare$

## 5. feladat

Legyenek $a$ és $b$ tetszőleges, egymástól különböző egész számok. Bizonyítsuk be, hogy minden $n \ge 1$ egész számra $a - b \mid a^n - b^n$.

**Megoldás.**

Az azonosság
$$a^n - b^n = (a - b)(a^{n-1} + a^{n-2}b + \dots + ab^{n-2} + b^{n-1})$$
(a jobb oldalt kibontva teleszkopikusan kiesnek a tagok) szerint $a^n - b^n$ az $a - b$ egész számszorosa. (Indukcióval is: $a^{n+1} - b^{n+1} = a(a^n - b^n) + b^n(a - b)$.) $\blacksquare$

## 6. feladat

Ha $2^n - 1$ prímszám, akkor $n$ prímszám.

**Megoldás.**

Ha $n = 1$, akkor $2^1 - 1 = 1$ nem prím. Ha $n$ összetett, $n = rs$, $1 < r, s < n$, akkor az előző feladat szerint
$$2^{rs} - 1 = (2^r)^s - 1^s = (2^r - 1)\left(2^{r(s-1)} + \dots + 2^r + 1\right),$$
és $1 < 2^r - 1 < 2^n - 1$, tehát $2^n - 1$ összetett. Így ha $2^n - 1$ prím, akkor $n$ prím. $\blacksquare$ (A megfordítás nem igaz: $2^{11} - 1 = 2047 = 23 \cdot 89$. A $2^p - 1$ alakú prímek a Mersenne-prímek.)

## 7. feladat

Ha $2^n + 1$ prímszám, akkor $n$ kettőhatvány.

**Megoldás.**

Tegyük fel, hogy $n$-nek van $m > 1$ páratlan osztója: $n = mk$. Páratlan $m$-re $x^m + y^m = (x + y)(x^{m-1} - x^{m-2}y + \dots + y^{m-1})$, így
$$2^n + 1 = (2^k)^m + 1^m$$
osztható $2^k + 1$-gyel, és $1 < 2^k + 1 < 2^n + 1$. Tehát $2^n + 1$ összetett. Ha tehát $2^n + 1$ prím, akkor $n$-nek nincs $1$-nél nagyobb páratlan osztója, azaz $n$ kettőhatvány. $\blacksquare$ (A $2^{2^k} + 1$ alakú prímek a Fermat-prímek.)

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

## 9. feladat

Igazoljuk, hogy végtelen sok $4k - 1$, illetve $6k - 1$ alakú prímszám van.

**Megoldás.**

**$4k - 1$ alakú prímek.** Tegyük fel, hogy csak véges sok van: $p_1, \dots, p_r$. Legyen $N = 4p_1 \cdots p_r - 1$. $N$ páratlan és $N \equiv 3 \pmod 4$. $N$ prímtényezői páratlanok, tehát $1$ vagy $3$ maradékúak mod 4. Ha mind $\equiv 1$ volna, a szorzatuk is $\equiv 1$ lenne; tehát van $q \mid N$ prím, $q \equiv 3 \pmod 4$. Ez nem lehet egyik $p_i$ sem, mert $p_i \mid N$ esetén $p_i \mid 4p_1\cdots p_r - N = 1$ volna. Ellentmondás.

**$6k - 1$ alakú prímek.** Ugyanígy $N = 6p_1 \cdots p_r - 1 \equiv 5 \pmod 6$. $N$ relatív prím $6$-hoz, így minden prímtényezője $\equiv \pm 1 \pmod 6$; ha mind $\equiv 1$ volna, $N \equiv 1$ lenne. Tehát van $q \equiv -1 \pmod 6$ prímtényező, és ez az előzőhöz hasonlóan nem lehet egyik $p_i$ sem. $\blacksquare$

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

## 11. feladat

Egy hatjegyű szám alakja $\overline{abcabc}$ (ahol $a \neq 0$). Mutassuk meg, hogy ez a szám mindig osztható 7-tel, 11-gyel és 13-mal is, függetlenül a számjegyek konkrét értékétől.

**Megoldás.**

$$\overline{abcabc} = 1000 \cdot \overline{abc} + \overline{abc} = 1001 \cdot \overline{abc} = 7 \cdot 11 \cdot 13 \cdot \overline{abc},$$
tehát a szám osztható 7-tel, 11-gyel és 13-mal. $\blacksquare$

## 12. feladat

Egy sokszög átlóinak száma prímszám. Hány oldalú a sokszög?

**Megoldás.**

Egy $n$-szög átlóinak száma $\frac{n(n-3)}{2}$ ($n \ge 4$-re pozitív). Legyen ez a $p$ prím: $n(n-3) = 2p$.

- Ha $n$ páros: $\frac n2 \cdot (n - 3) = p$, így vagy $\frac n2 = 1$ ($n = 2$, nem sokszög), vagy $n - 3 = 1$, azaz $n = 4$: $2$ átló, prím. ✓
- Ha $n$ páratlan: $n \cdot \frac{n-3}{2} = p$, így $\frac{n-3}{2} = 1$, azaz $n = 5$: $5$ átló, prím. ✓ (Az $n = 1$ eset értelmetlen.)

**A sokszög négyszög vagy ötszög.**

## 13. feladat

Határozzuk meg azokat a pozitív egész $n$ számokat, amelyekre az $n^4 + n^2 + 1$ kifejezés prímszám.

**Megoldás.**

$$n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2 = (n^2 - n + 1)(n^2 + n + 1).$$
Mindkét tényező pozitív, és $n^2 - n + 1 < n^2 + n + 1$. Prím csak akkor lehet, ha $n^2 - n + 1 = 1$, azaz $n = 1$ (pozitív $n$-re). Ekkor az érték $3$, prím. **Egyetlen megoldás: $n = 1$.**

## 14. feladat

Melyek azok a $p$ prímszámok, amelyek felírhatók $p = n^3 - 1$ alakban, ahol $n$ egy természetes szám?

**Megoldás.**

$n^3 - 1 = (n - 1)(n^2 + n + 1)$. $n \ge 2$-re $n^2 + n + 1 \ge 7 > 1$, így prím csak $n - 1 = 1$, azaz $n = 2$ esetén lehet: $p = 7$. ($n = 0, 1$ nem ad prímet.) **Egyetlen ilyen prím: $p = 7$.**

## 15. feladat

Adjuk meg az összes olyan $n$ természetes számot, amelyre az $n^2 + 5n + 13$ kifejezés egy egész szám négyzete.

**Megoldás.**

Legyen $E = n^2 + 5n + 13$, $n \ge 0$. Ekkor
$$E - (n+2)^2 = n + 9 > 0, \qquad (n+3)^2 - E = n - 4, \qquad (n+4)^2 - E = 3n + 3 > 0.$$

- Ha $n > 4$: $(n+2)^2 < E < (n+3)^2$, két szomszédos négyzetszám közé esik, nem négyzetszám.
- Ha $n < 4$: $(n+3)^2 < E < (n+4)^2$, szintén nem négyzetszám.
- Ha $n = 4$: $E = 49 = 7^2$. ✓

**Egyetlen megoldás: $n = 4$.**

## 16. feladat

Bizonyítsuk be, hogy $30 \mid n^5 - n$ minden $n$ egész számra.

**Megoldás.**

$n^5 - n = n(n^4 - 1) = (n - 1)n(n + 1)(n^2 + 1)$.

- **2-vel osztható:** $n(n-1)$ két szomszédos egész szorzata.
- **3-mal osztható:** $(n-1)n(n+1)$ három szomszédos egész szorzata.
- **5-tel osztható:** ha $n \equiv 0, \pm1 \pmod 5$, akkor $n$, $n - 1$ vagy $n + 1$ osztható 5-tel; ha $n \equiv \pm 2$, akkor $n^2 + 1 \equiv 5 \equiv 0$. (Vagy a kis Fermat-tétel: $n^5 \equiv n \pmod 5$.)

Mivel $2, 3, 5$ páronként relatív prímek, $30 \mid n^5 - n$. $\blacksquare$

## 17. feladat

Igazoljuk, hogy ha $17 \mid 2a + 3b$, akkor $17 \mid 9a + 5b$ is teljesül.

**Megoldás.**

$$9a + 5b = 13(2a + 3b) - 17(a + 2b).$$
(Ellenőrzés: $26a - 17a = 9a$, $39b - 34b = 5b$.) Ha $17 \mid 2a + 3b$, akkor a jobb oldal mindkét tagja osztható 17-tel, tehát $17 \mid 9a + 5b$. $\blacksquare$ (A $13$ szorzót úgy kapjuk, hogy $13 \cdot 2 \equiv 9$ és $13 \cdot 3 \equiv 5 \pmod{17}$.)

## 18. feladat

Bizonyítsuk be, hogy ha $37 \mid \overline{abc}$, akkor $37 \mid \overline{bca}$.

**Megoldás.**

$\overline{abc} = 100a + 10b + c$ és $\overline{bca} = 100b + 10c + a$. Ekkor
$$10 \cdot \overline{abc} = 1000a + 100b + 10c = 999a + \overline{bca}.$$
Mivel $999 = 27 \cdot 37$, ezért $\overline{bca} = 10 \cdot \overline{abc} - 999a$ osztható 37-tel, ha $\overline{abc}$ az. $\blacksquare$

## 19. feladat

Mely $p$ pozitív egész számokra lehet $p$, $p + 2$ és $p + 4$ egyszerre prím?

**Megoldás.**

A $p$, $p + 2$, $p + 4$ számok mod 3 maradékai $p$, $p + 2$, $p + 1$ – ezek az összes maradékot kiadják, így pontosan egyikük osztható 3-mal. Hogy mindhárom prím legyen, az az egyik csak a $3$ lehet: $p = 3$ (ekkor $3, 5, 7$ – mind prím), $p + 2 = 3$ esetén $p = 1$ nem prím, $p + 4 = 3$ lehetetlen. **Egyetlen megoldás: $p = 3$.**

## 20. feladat

Halhatatlan kapitánynak három halhatatlan unokája van, akiknek az életkora három különböző prímszám, és ezek négyzetösszege is prímszám. Hány éves a kapitány legkisebb unokája?

**Megoldás.**

Legyenek a korok $p < q < r$ különböző prímek, és $p^2 + q^2 + r^2$ prím.

- **Egyik sem 2:** ha valamelyik 2 lenne, a másik kettő páratlan, és $4 + \text{páratlan} + \text{páratlan}$ páros és $2$-nél nagyobb – nem prím.
- **Valamelyik 3:** ha egyik sem osztható 3-mal, akkor mindhárom négyzet $\equiv 1 \pmod 3$, így az összeg osztható 3-mal és nagyobb 3-nál – nem prím.

Tehát mindhárom páratlan, és az egyik a $3$, ami a legkisebb páratlan prím. **A legkisebb unoka 3 éves.** (Ilyen hármas létezik: $3^2 + 5^2 + 7^2 = 83$ prím.)

## 21. feladat

Oldjuk meg a prímszámok körében a $p^2 - 6q^2 = 1$ egyenletet.

**Megoldás.**

$p^2 = 6q^2 + 1$ páratlan, tehát $p$ páratlan, és $(p - 1)(p + 1) = 6q^2$. $p - 1$ és $p + 1$ szomszédos páros számok, így egyikük 4-gyel is osztható, szorzatuk osztható 8-cal. Tehát $8 \mid 6q^2$, azaz $4 \mid 3q^2$, így $2 \mid q$, és $q = 2$. Ekkor $p^2 = 25$, $p = 5$. **Egyetlen megoldás: $p = 5$, $q = 2$.**

## 22. feladat

Adjunk meg végtelen sok olyan $n$-et, amelyre $17 \mid 3^n + 5^n$.

**Megoldás.**

Számoljunk mod 17. $3^4 = 81 \equiv 13$ és $5^4 = 625 \equiv 13 \pmod{17}$. Így $n = 4k + 2$ esetén
$$3^{4k+2} + 5^{4k+2} \equiv 13^k \cdot 9 + 13^k \cdot 25 = 13^k \cdot 34 \equiv 0 \pmod{17}.$$
**Minden $n = 4k + 2$ ($k \ge 0$) megfelel**, pl. $n = 2$: $9 + 25 = 34 = 2 \cdot 17$. (Más $n$ nem jó: $5 \cdot 3^{-1} \equiv 13 \equiv -4$, és $(-4)^n \equiv -1 \pmod{17}$ pontosan akkor, ha $n \equiv 2 \pmod 4$.)

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

## 2. feladat

Alakítsuk szorzattá az $a^3 + b^3$ kifejezést. Általánosan, mi lesz $a^n + b^n$ szorzat alakja, ha $n$ páratlan?

**Megoldás.**

$$a^3 + b^3 = (a + b)(a^2 - ab + b^2).$$
Páratlan $n$-re $a^n + b^n = a^n - (-b)^n$, így az $x^n - y^n = (x - y)\sum_{i=0}^{n-1}x^{n-1-i}y^i$ azonosságot $x = a$, $y = -b$-re alkalmazva
$$a^n + b^n = (a + b)\left(a^{n-1} - a^{n-2}b + a^{n-3}b^2 - \dots - ab^{n-2} + b^{n-1}\right).$$

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

## 4. feladat

Oldjuk meg az $x^3 + 3x^2 + 3x + 1 = 0$, $x^3 - 3x^2 + 3x - 1 = 0$, $x^3 + 3x^2 + 3x + 2 = 0$ egyenleteket.

**Megoldás.**

- $x^3 + 3x^2 + 3x + 1 = (x + 1)^3 = 0$: $x = -1$ (háromszoros gyök).
- $x^3 - 3x^2 + 3x - 1 = (x - 1)^3 = 0$: $x = 1$ (háromszoros gyök).
- $x^3 + 3x^2 + 3x + 2 = (x + 1)^3 + 1 = 0$, azaz $(x + 1)^3 = -1$. A valós megoldás $x + 1 = -1$, $x = -2$. Szorzattá alakítva $(x + 2)(x^2 + x + 1) = 0$, és $x^2 + x + 1$-nek nincs valós gyöke (diszkrimináns $-3$); a komplex gyökök $x = \frac{-1 \pm i\sqrt3}{2}$.

## 5. feladat

Alakítsuk szorzattá az $x^2 - 7x + 10$ kifejezést. Adjuk meg az $u + v = 7$, $uv = 10$, majd az $u + v = 6$, $uv = 9$ egyenletrendszer **összes** valós megoldását.

**Megoldás.**

$x^2 - 7x + 10 = (x - 2)(x - 5)$.

A Viète-formulák szerint $u + v = s$, $uv = p$ pontosan akkor, ha $u$ és $v$ a $t^2 - st + p = 0$ egyenlet gyökei.

- $u + v = 7$, $uv = 10$: $t^2 - 7t + 10 = (t - 2)(t - 5)$, így **$(u, v) = (2, 5)$ vagy $(5, 2)$**.
- $u + v = 6$, $uv = 9$: $t^2 - 6t + 9 = (t - 3)^2$, így **egyetlen megoldás: $u = v = 3$**.

## 6. feladat

Végezzük el az alábbi műveleteket a polinomok körében, és állapítsuk meg az eredmény fokát: $(2x^4 - x^2 + 5) - (2x^4 + 3x^3 - x)$, $(x^3 - 2x + 1)(2x^2 + x)$.

**Megoldás.**

- $(2x^4 - x^2 + 5) - (2x^4 + 3x^3 - x) = -3x^3 - x^2 + x + 5$, **foka 3** (a negyedfokú tagok kiestek).
- $(x^3 - 2x + 1)(2x^2 + x) = 2x^5 + x^4 - 4x^3 - 2x^2 + 2x^2 + x = 2x^5 + x^4 - 4x^3 + x$, **foka 5** $= 3 + 2$.

## 7. feladat

Mi lesz a 15-ödfokú tag együtthatója az $(x^8 - 3x^5 + 2)(x^{10} + 2x^7 - x^2 + 5)$ polinomban?

**Megoldás.**

Az $x^{15}$ tag azokból a szorzatokból jön, ahol a kitevők összege 15: $x^8 \cdot 2x^7$ (együttható $2$) és $(-3x^5) \cdot x^{10}$ (együttható $-3$). **Az együttható $2 - 3 = -1$.**

## 8. feladat

Egy nyolcadfokú és egy $m$-edfokú polinom összege harmadfokú. Mik $m$ lehetséges értékei?

**Megoldás.**

Ha $m \neq 8$, akkor az összeg foka $\max\{8, m\} \ge 8$ volna. Tehát **$m = 8$**, és a két polinom főegyütthatója egymás ellentettje (sőt az $x^8, \dots, x^4$ együtthatók is kiejtik egymást).

## 9. feladat

Két polinom szorzata tizedfokú, az összegük pedig negyedfokú. Mennyi lehet a két polinom fokszáma?

**Megoldás.**

Legyenek a fokszámok $a$ és $b$; ekkor $a + b = 10$ (a szorzat foka a fokok összege). Ha $a \neq b$, akkor az összeg foka $\max\{a, b\}$, ami $a + b = 10$ miatt legalább $6$ – nem lehet $4$. Tehát $a = b = 5$, és az összegben a főtagok kiejtik egymást. **Mindkét polinom ötödfokú.** Példa: $f = x^5 + x^4$, $g = -x^5$: $fg = -x^{10} - x^9$, $f + g = x^4$.

## 10. feladat

Emeljük ki az $x - 2$ gyöktényezőt az $x^3 - 4x^2 + x + 6$ polinomból, majd határozzuk meg az összes gyökét.

**Megoldás.**

Horner-elrendezés a $2$ helyen:

|   | $1$ | $-4$ | $1$ | $6$ |
|:---:|:---:|:---:|:---:|:---:|
| $2$ | $1$ | $-2$ | $-3$ | $0$ |

Tehát $x^3 - 4x^2 + x + 6 = (x - 2)(x^2 - 2x - 3) = (x - 2)(x - 3)(x + 1)$. **A gyökök: $2$, $3$, $-1$.**

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

## 14. feladat

Az $n$-edfokú $f(x)$ polinomba behelyettesítjük a $b$ számot. Hány szorzásra van szükség $f(b)$ kiszámításához, ha egyáltalán nem trükközünk; ha a $b$ hatványait előre kiszámoljuk; ha a Horner-elrendezést használjuk?

**Megoldás.**

Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$.

- **Trükközés nélkül:** az $a_kb^k$ tag $k$ szorzás ($k - 1$ a hatványhoz, $1$ az együtthatóval), összesen $1 + 2 + \dots + n = \frac{n(n+1)}{2}$ szorzás.
- **A hatványokat előre kiszámolva:** $b^2, \dots, b^n$ összesen $n - 1$ szorzás ($b^{k} = b^{k-1} \cdot b$), majd az $n$ együtthatóval való szorzás: összesen $2n - 1$.
- **Horner-elrendezéssel:** $f(b) = (\dots((a_nb + a_{n-1})b + a_{n-2})b + \dots)b + a_0$, összesen **$n$ szorzás** (és $n$ összeadás).

## 15. feladat

Bizonyítsuk be, hogy nem létezik olyan egész együtthatós $v(x)$ polinom, amelyre igaz, hogy $v(7) = 11$ és $v(11) = 13$.

**Megoldás.**

Egész együtthatós $v$-re és egész $a, b$-re $a - b \mid v(a) - v(b)$, mert $v(a) - v(b) = \sum_k c_k(a^k - b^k)$, és $a - b \mid a^k - b^k$. Itt $11 - 7 = 4$ kellene, hogy osztója legyen $v(11) - v(7) = 13 - 11 = 2$-nek – ez hamis. Tehát nincs ilyen polinom. $\blacksquare$

## 16. feladat

Bizonyítsuk be, hogy egyetlen nem konstans, egész együtthatós $v(x)$ polinom sem adhat minden $x$ egész számra prímszám értéket.

**Megoldás.**

Tegyük fel, hogy $v$ nem konstans, egész együtthatós, és minden egész helyen prímet vesz fel. Legyen $a$ egész és $p = v(a)$ (prím). Minden $k$ egészre $(a + kp) - a = kp \mid v(a + kp) - v(a)$, így $p \mid v(a + kp)$. Mivel $v(a + kp)$ prím és osztható $p$-vel, $v(a + kp) = p$ (illetve negatív prímeket is megengedve $\pm p$). Tehát $v - p$ (vagy $v + p$) végtelen sok helyen nulla, így azonosan nulla, azaz $v$ konstans – ellentmondás. $\blacksquare$

## 17. feladat

(Schur tétele polinomokra) Bizonyítsuk be, hogy ha $v(x)$ egy egész együtthatós, nem konstans polinom, akkor a $v(1), v(2), v(3), \dots$ helyettesítési értékeknek összesen végtelen sok különböző prímosztója van.

**Megoldás.**

Legyen $v(x) = c_dx^d + \dots + c_1x + c_0$, $d \ge 1$.

**1. eset: $c_0 \neq 0$.** Tegyük fel, hogy csak véges sok prím, $p_1, \dots, p_k$ osztja valamelyik $v(n)$-t ($n \ge 1$), és legyen $P = p_1 \cdots p_k$. Pozitív egész $t$-re
$$v(|c_0|Pt) = c_0 + \sum_{j \ge 1} c_j(|c_0|Pt)^j = c_0\left(1 + Pt\,w(t)\right)$$
valamely $w \in \mathbb{Z}[t]$-vel, mert minden $j \ge 1$-re a tag osztható $c_0Pt$-vel. Mivel $v$ nem konstans, $|v(x)| \to \infty$, így elég nagy $t$-re $|1 + Pt\,w(t)| > 1$, tehát van $q$ prímosztója. De $1 + Pt\,w(t) \equiv 1 \pmod{p_i}$ minden $i$-re, így $q$ egyik $p_i$-vel sem egyenlő, mégis osztja $v(|c_0|Pt)$-t – ellentmondás.

**2. eset: $c_0 = 0$.** Írjuk $v(x) = x^mu(x)$ alakba, $u(0) \neq 0$. Ha $u$ konstans, akkor $v(p) = u \cdot p^m$ minden $p$ prímre osztható $p$-vel – végtelen sok prímosztó. Ha $u$ nem konstans, akkor az 1. eset szerint az $u(n)$ értékeknek végtelen sok prímosztója van, és ezek $v(n)$-t is osztják. $\blacksquare$

## 18. feladat

Ha a 2 (pontosan) háromszoros gyöke $f$-nek és négyszeres gyöke $g$-nek, akkor hányszoros gyöke $f + g$-nek, illetve $f + g + fg$-nek?

**Megoldás.**

Írjuk $f = (x - 2)^3 f_1$, $g = (x - 2)^4 g_1$, ahol $f_1(2) \ne 0$ és $g_1(2) \ne 0$. Ekkor
$$f + g = (x - 2)^3\big(f_1 + (x - 2)g_1\big),$$
és a zárójel értéke a $2$ helyen $f_1(2) \neq 0$: **$f + g$-nek a 2 pontosan háromszoros gyöke.** Hasonlóan
$$f + g + fg = (x - 2)^3\big(f_1 + (x - 2)g_1 + (x - 2)^4f_1g_1\big),$$
a zárójel értéke a $2$-ben ismét $f_1(2) \neq 0$: **$f + g + fg$-nek is pontosan háromszoros gyöke.**

## 19. feladat

Igazoljuk, hogy az $x^2 + bx + c$-nek pontosan akkor van kétszeres gyöke, ha $b^2 = 4c$.

**Megoldás.**

Teljes négyzetté alakítva
$$x^2 + bx + c = \left(x + \frac b2\right)^2 - \frac{b^2 - 4c}{4}.$$
Ha $b^2 = 4c$, akkor $x^2 + bx + c = \left(x + \frac b2\right)^2$, tehát $-\frac b2$ kétszeres gyök. Megfordítva, ha $r$ kétszeres gyök, akkor (a polinom normált és másodfokú) $x^2 + bx + c = (x - r)^2 = x^2 - 2rx + r^2$, így $b = -2r$, $c = r^2$, és $b^2 = 4r^2 = 4c$. $\blacksquare$

## 20. feladat

(A racionális gyökteszt) Bizonyítsuk be, hogy ha a $\frac{p}{q}$ (ahol $p$ és $q$ relatív prím egész számok) racionális szám gyöke az $f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$ egész együtthatós polinomnak, akkor $p \mid a_0$ és $q \mid a_n$.

**Megoldás.**

$f\left(\frac pq\right) = 0$-t $q^n$-nel szorozva:
$$a_np^n + a_{n-1}p^{n-1}q + \dots + a_1pq^{n-1} + a_0q^n = 0.$$
Az $a_0q^n$ kivételével minden tag osztható $p$-vel, így $p \mid a_0q^n$. Mivel $(p, q) = 1$, $(p, q^n) = 1$, tehát $p \mid a_0$. Ugyanígy az $a_np^n$ kivételével minden tag osztható $q$-val, így $q \mid a_np^n$, és $(q, p^n) = 1$ miatt $q \mid a_n$. $\blacksquare$

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

## 2. feladat

Határozzuk meg a $3^{2026}$ utolsó számjegyét.

**Megoldás.**

$3$ hatványainak utolsó jegye 4-es periódussal ismétlődik: $3, 9, 7, 1, 3, \dots$ (mert $3^4 = 81 \equiv 1 \pmod{10}$). Mivel $2026 = 4 \cdot 506 + 2$, $3^{2026} \equiv 3^2 = 9 \pmod{10}$. **Az utolsó jegy 9.**

## 3. feladat

Milyen számjegyre végződik a $4^{100} + 5^{100}$ összeg?

**Megoldás.**

$4^{100} = 16^{50}$, és $6$-ra végződő szám minden hatványa $6$-ra végződik. $5^{100}$ $5$-re végződik. $6 + 5 = 11$, így **az összeg 1-re végződik.**

## 4. feladat

Lehet-e $1! + 2! + 3! + \dots + 2026!$ egy egész szám négyzete?

**Megoldás.**

**Nem.** $1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33$, és $k \ge 5$-re $k!$ osztható 10-zel. Így az összeg $3$-ra végződik. Négyzetszám viszont csak $0, 1, 4, 5, 6, 9$-re végződhet (az $0^2, \dots, 9^2$ utolsó jegyei). (Ugyanez mod 5: az összeg $\equiv 3$, a négyzetek $\equiv 0, 1, 4$.)

## 5. feladat

Igazoljuk, hogy három egymást követő egész szám négyzetösszege 3-mal osztva mindig 2-t ad maradékul.

**Megoldás.**

$$(n - 1)^2 + n^2 + (n + 1)^2 = 3n^2 + 2 \equiv 2 \pmod 3. \qquad \blacksquare$$

## 6. feladat

Számítsuk ki az euklideszi algoritmus segítségével a $(420, 154)$ értéket, majd fejezzük ki az eredményt a két szám egész együtthatós lineáris kombinációjaként.

**Megoldás.**

Euklideszi algoritmus:
$$420 = 2 \cdot 154 + 112, \quad 154 = 1 \cdot 112 + 42, \quad 112 = 2 \cdot 42 + 28, \quad 42 = 1 \cdot 28 + 14, \quad 28 = 2 \cdot 14.$$
Tehát **$(420, 154) = 14$**. Visszafelé helyettesítve:
$$14 = 42 - 28 = 42 - (112 - 2 \cdot 42) = 3 \cdot 42 - 112 = 3(154 - 112) - 112 = 3 \cdot 154 - 4 \cdot 112,$$
$$14 = 3 \cdot 154 - 4(420 - 2 \cdot 154) = 11 \cdot 154 - 4 \cdot 420.$$
(Ellenőrzés: $1694 - 1680 = 14$.)

## 7. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén $(2n + 1, 9n + 4) = 1$.

**Megoldás.**

$$2(9n + 4) - 9(2n + 1) = -1,$$
így bármely közös osztó osztja $1$-et: $(2n + 1, 9n + 4) = 1$. $\blacksquare$

## 8. feladat

Határozzuk meg a $(3n + 5, 2n + 3)$ és a $(n^2 + n, 2n + 1)$ értékét, ha $n$ tetszőleges pozitív egész szám.

**Megoldás.**

- $3(2n + 3) - 2(3n + 5) = -1$, tehát **$(3n + 5, 2n + 3) = 1$**.
- $(n, 2n + 1) = (n, 1) = 1$ és $(n + 1, 2n + 1) = (n + 1, 2n + 1 - 2(n+1)) = (n + 1, -1) = 1$. Mivel $2n + 1$ relatív prím $n$-hez és $n + 1$-hez is, a szorzatukhoz is: **$(n^2 + n, 2n + 1) = 1$**.

## 9. feladat

Határozzuk meg a $p(x) = x^4 - 2x^3 + 2x - 1$ és a $q(x) = x^3 - x^2 - x + 1$ polinomok kitüntetett közös osztóját az $\mathbb{R}[x]$ polinomgyűrűben.

**Megoldás.**

Szorzattá alakítva:
$$q(x) = x^2(x - 1) - (x - 1) = (x - 1)(x^2 - 1) = (x - 1)^2(x + 1),$$
$$p(x) = (x^2 - 1)(x^2 - 2x + 1) = (x - 1)^3(x + 1).$$
(Ellenőrzés: $(x^2 - 1)(x^2 - 2x + 1) = x^4 - 2x^3 + 2x - 1$.) A kitüntetett (normált) legnagyobb közös osztó
$$(p, q) = (x - 1)^2(x + 1) = x^3 - x^2 - x + 1 = q(x).$$
Az euklideszi algoritmus egy lépésben ugyanezt adja: $p(x) = (x - 1)\,q(x) + 0$.

## 10. feladat

Tegyük fel, hogy az $a$ és $b$ egész számok relatív prímek, azaz $(a, b) = 1$. Határozzuk meg az $(a + b, a - b)$ legnagyobb közös osztó lehetséges értékeit.

**Megoldás.**

Legyen $d = (a + b, a - b)$. Ekkor $d \mid (a + b) + (a - b) = 2a$ és $d \mid (a + b) - (a - b) = 2b$, így $d \mid (2a, 2b) = 2(a, b) = 2$. Tehát **$d \in \{1, 2\}$**, és mindkettő előfordul: $a = 2, b = 1$: $(3, 1) = 1$; $a = 3, b = 1$: $(4, 2) = 2$. ($d = 2$ pontosan akkor, ha $a$ és $b$ mindkettő páratlan.)

## 11. feladat

Keressük meg az összes olyan $x, y$ természetes számokból álló párt, amelyekre a legkisebb közös többszörös és a legnagyobb közös osztó értéke: $[x, y] = 168$ és $(x, y) = 14$.

**Megoldás.**

Legyen $x = 14a$, $y = 14b$, ahol $(a, b) = 1$. Ekkor $[x, y] = 14ab = 168$, azaz $ab = 12$. A relatív prím felbontások: $1 \cdot 12$, $3 \cdot 4$ (a $2 \cdot 6$ nem jó). **A megoldások:**
$$(x, y) \in \{(14, 168),\ (168, 14),\ (42, 56),\ (56, 42)\}.$$

## 12. feladat

Mely pozitív egész $n$ számok esetén teljesül, hogy $n + 3 \mid n^2 + 7$?

**Megoldás.**

$n^2 + 7 = (n + 3)(n - 3) + 16$, tehát $n + 3 \mid n^2 + 7 \iff n + 3 \mid 16$. Mivel $n + 3 \ge 4$: $n + 3 \in \{4, 8, 16\}$, azaz **$n \in \{1, 5, 13\}$**. (Ellenőrzés: $4 \mid 8$, $8 \mid 32$, $16 \mid 176$.)

## 13. feladat

Melyik igaz az alábbi állítások közül:

(1) Ha $d \mid 7x + 2y$ és $d \mid 3x + y$, akkor $d \mid x$ és $d \mid y$.

(2) Ha $d \mid 4x + 3y$ és $d \mid 2x + y$, akkor $d \mid x$ és $d \mid y$.

**Megoldás.**

**(1) Igaz.** $x$ és $y$ kifejezhető a két számból egész együtthatókkal:
$$x = (7x + 2y) - 2(3x + y), \qquad y = 7(3x + y) - 3(7x + 2y).$$
(Az együttható-mátrix determinánsa $7 - 6 = 1$.)

**(2) Hamis.** Itt a determináns $4 \cdot 1 - 3 \cdot 2 = -2$, és valóban: $d = 2$, $x = 1$, $y = 0$ esetén $4x + 3y = 4$ és $2x + y = 2$ osztható 2-vel, de $x = 1$ nem.

## 14. feladat

Legyen $F_n$ az $n$-edik Fibonacci-szám ($F_1 = 1$, $F_2 = 1$, $F_{n+1} = F_n + F_{n-1}$). Igazoljuk, hogy tetszőleges $n \ge 1$ egész számra $(F_n, F_{n+1}) = 1$.

**Megoldás.**

Az euklideszi lépés $(a, b) = (a, b - a)$ szerint
$$(F_n, F_{n+1}) = (F_n, F_{n+1} - F_n) = (F_n, F_{n-1}) = (F_{n-1}, F_n) = \dots = (F_1, F_2) = (1, 1) = 1.$$
(Formálisan: indukció $n$ szerint.) $\blacksquare$

## 15. feladat

Bizonyítsuk be, hogy ha $p \ge 5$ prímszám, akkor a $p^2 - 1$ kifejezés osztható 24-gyel.

**Megoldás.**

$p^2 - 1 = (p - 1)(p + 1)$.

- $p$ páratlan, így $p - 1$ és $p + 1$ két szomszédos páros szám, egyikük 4-gyel is osztható: $8 \mid p^2 - 1$.
- $3 \nmid p$, így $p - 1, p, p + 1$ közül (három szomszédos szám) $p - 1$ vagy $p + 1$ osztható 3-mal: $3 \mid p^2 - 1$.

Mivel $(8, 3) = 1$, $24 \mid p^2 - 1$. $\blacksquare$

## 16. feladat

Igazoljuk, hogy egy pozitív egész szám pozitív osztóinak száma pontosan akkor páratlan, ha a szám egy egész szám négyzete.

**Megoldás.**

Párosítsuk az $n$ szám $d$ osztóját az $\frac nd$ osztóval. Ez a párosítás involúció; egy osztó akkor és csak akkor van párban önmagával, ha $d = \frac nd$, azaz $d^2 = n$. A többi osztó kételemű párokba rendeződik. Tehát az osztók száma pontosan akkor páratlan, ha van $d$, amelyre $d^2 = n$, vagyis ha $n$ négyzetszám. $\blacksquare$

(Képlettel: $n = \prod p_i^{\alpha_i}$ esetén az osztók száma $\prod(\alpha_i + 1)$, ami pontosan akkor páratlan, ha minden $\alpha_i$ páros.)

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

## 3. feladat

Igazoljuk, hogy $z \in \mathbb{C}$ abszolút értéke akkor és csak akkor 1, ha reciproka megegyezik a konjugáltjával.

**Megoldás.**

$z \neq 0$ esetén
$$\frac1z = \overline z \iff z\overline z = 1 \iff |z|^2 = 1 \iff |z| = 1. \qquad \blacksquare$$

## 4. feladat

Határozzuk meg a következő összeg algebrai alakját: $i^{123} + i^{124} + i^{125} + i^{126}$.

**Megoldás.**

$i^{123} = i^{120} \cdot i^3 = -i$, $i^{124} = 1$, $i^{125} = i$, $i^{126} = -1$. Az összeg $-i + 1 + i - 1 = \mathbf{0}$. (Vagy: $i^{123}(1 + i + i^2 + i^3) = i^{123} \cdot 0$.)

## 5. feladat

Oldjuk meg a komplex számok halmazán az alábbi egyenletet: $3z + 2\overline{z} = 10 - 4i$.

**Megoldás.**

Legyen $z = a + bi$. Ekkor $3z + 2\overline z = 3a + 3bi + 2a - 2bi = 5a + bi = 10 - 4i$, így $a = 2$, $b = -4$. **$z = 2 - 4i$.**

## 6. feladat

Oldjuk meg $\mathbb{C}$-ben: $x = (4 - 3i)\overline{x}$; $x = 2i\operatorname{Im}(x)$; $\operatorname{Im}(x) = x - \overline{x}$.

**Megoldás.**

- $x = (4 - 3i)\overline x$: abszolút értéket véve $|x| = |4 - 3i|\,|\overline x| = 5|x|$, így $|x| = 0$. **Csak $x = 0$.**
- $x = 2i\operatorname{Im}(x)$: $x = a + bi$ esetén $a + bi = 2bi$, így $a = 0$ és $b = 2b$, azaz $b = 0$. **Csak $x = 0$.**
- $\operatorname{Im}(x) = x - \overline x$: $x - \overline x = 2bi$, így $b = 2bi$, azaz $b(1 - 2i) = 0$, tehát $b = 0$. **A megoldások a valós számok: $x \in \mathbb{R}$.**

## 7. feladat

Tegyük föl, hogy $(x + iy)^k = 12 - 5i$ (itt $x, y \in \mathbb{R}$). Mennyi lesz ekkor $(x^2 + y^2)^k$?

**Megoldás.**

Az abszolút érték multiplikatív:
$$(x^2 + y^2)^k = |x + iy|^{2k} = \left|(x + iy)^k\right|^2 = |12 - 5i|^2 = 144 + 25 = \mathbf{169}.$$

## 8. feladat

Oldjuk meg a következő egyenletrendszert a komplex számok halmazán, ahol $z$ és $w$ is komplex számok:
$$\begin{aligned} (1 + i)z - w &= -1 + 5i \\ 2z + (1 - i)w &= 6 + 2i \end{aligned}$$

**Megoldás.**

Az első egyenletből $w = (1 + i)z + 1 - 5i$. Ezt a másodikba helyettesítve, $(1 - i)(1 + i) = 2$ és $(1 - i)(1 - 5i) = -4 - 6i$ felhasználásával:
$$2z + 2z - 4 - 6i = 6 + 2i \iff 4z = 10 + 8i \iff z = \frac52 + 2i.$$
Ebből $w = (1 + i)\left(\frac52 + 2i\right) + 1 - 5i = \left(\frac12 + \frac92 i\right) + 1 - 5i = \frac32 - \frac12 i$.

**Megoldás: $z = \frac52 + 2i$, $w = \frac32 - \frac12 i$.** (Ellenőrzés: $(1 + i)z - w = -1 + 5i$, $2z + (1 - i)w = (5 + 4i) + (1 - 2i) = 6 + 2i$.)

## 9. feladat

Mutassuk meg, hogy ha az $m$ és $n$ egész számok előállnak két négyzetszám összegeként, akkor $mn$ is előáll így.

**Megoldás.**

Ha $m = a^2 + b^2 = |a + bi|^2$ és $n = c^2 + d^2 = |c + di|^2$, akkor az abszolút érték multiplikativitása miatt
$$mn = |(a + bi)(c + di)|^2 = |(ac - bd) + (ad + bc)i|^2 = (ac - bd)^2 + (ad + bc)^2,$$
ami két egész szám négyzetének összege. $\blacksquare$

## 10. feladat

Oldjuk meg az alábbi egyenleteket: $x^2 + 9 = 0$, $x^2 = -8$, $x^2 - 4x + 13 = 0$, $x^2 - 4ix - 5 = 0$. Írjuk is föl a megfelelő polinomokat gyöktényezős alakban $\mathbb{C}$ fölött.

**Megoldás.**

- $x^2 + 9 = 0$: $x = \pm 3i$; $\;x^2 + 9 = (x - 3i)(x + 3i)$.
- $x^2 = -8$: $x = \pm 2\sqrt2\,i$; $\;x^2 + 8 = (x - 2\sqrt2\,i)(x + 2\sqrt2\,i)$.
- $x^2 - 4x + 13 = 0$: $D = 16 - 52 = -36$, $x = \frac{4 \pm 6i}{2} = 2 \pm 3i$; $\;x^2 - 4x + 13 = (x - 2 - 3i)(x - 2 + 3i)$.
- $x^2 - 4ix - 5 = 0$: $D = (4i)^2 + 20 = 4$, $x = \frac{4i \pm 2}{2} = \pm 1 + 2i$; $\;x^2 - 4ix - 5 = (x - 1 - 2i)(x + 1 - 2i)$.

## 11. feladat

Határozzuk meg azokat a $c + di$ számokat, melyek négyzete $5 + 12i$. Oldjuk meg az $x^2 + (2i - 3)x + (5 - i) = 0$ egyenletet.

**Megoldás.**

$(c + di)^2 = (c^2 - d^2) + 2cd\,i = 5 + 12i$, továbbá az abszolút értékekből $c^2 + d^2 = |5 + 12i| = 13$. Így $c^2 = 9$, $d^2 = 4$, és $cd = 6 > 0$: **$c + di = \pm(3 + 2i)$.**

Az $x^2 + (2i - 3)x + (5 - i) = 0$ egyenlet diszkriminánsa
$$D = (2i - 3)^2 - 4(5 - i) = (5 - 12i) - 20 + 4i = -15 - 8i.$$
Ennek négyzetgyöke (ugyanígy: $c^2 - d^2 = -15$, $c^2 + d^2 = 17$, $cd = -4$): $\pm(1 - 4i)$. Így
$$x = \frac{3 - 2i \pm (1 - 4i)}{2}, \qquad x_1 = 2 - 3i, \quad x_2 = 1 + i.$$
(Ellenőrzés Viète-tel: $x_1 + x_2 = 3 - 2i$, $x_1x_2 = 2 + 2i - 3i + 3 = 5 - i$.)

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

## 13. feladat

Legyen $u = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$ és $v = 3\left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)$. Számítsuk ki az $u \cdot v$ és az $\frac{u}{v}$ kifejezések értékét! A végeredményt trigonometrikus alakban adjuk meg.

**Megoldás.**

Trigonometrikus alakban szorzáskor az abszolút értékek szorzódnak, a szögek összeadódnak:
$$u \cdot v = 6\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right), \qquad \frac uv = \frac23\left(\cos\left(-\frac{\pi}{12}\right) + i\sin\left(-\frac{\pi}{12}\right)\right) = \frac23\left(\cos\frac{23\pi}{12} + i\sin\frac{23\pi}{12}\right).$$

## 14. feladat

Mennyi $-\cos(50^\circ) - i\sin(50^\circ)$ szöge? Ha $z$ szöge $75^\circ$, akkor mennyi $2026/\overline{z}^4$ szöge? Ha $w$ abszolút értéke 1, szöge pedig $45^\circ$, akkor mennyi $w^3/\overline{w}$?

**Megoldás.**

- $-\cos 50^\circ - i\sin 50^\circ = \cos 230^\circ + i\sin 230^\circ$, **a szöge $230^\circ$.**
- $\arg z = 75^\circ$ esetén $\arg\overline z = -75^\circ$, $\arg\overline z^4 = -300^\circ \equiv 60^\circ$, és mivel $2026$ pozitív valós, $\arg\dfrac{2026}{\overline z^4} = -60^\circ \equiv$ **$300^\circ$**.
- $|w| = 1$ esetén $\overline w = \frac1w$, így $\dfrac{w^3}{\overline w} = w^4 = \cos 180^\circ + i\sin 180^\circ = \mathbf{-1}$.

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

## 16. feladat

Mennyi az értéke a $(\sin(\pi/12) + i\cos(\pi/12))^{12}$ és a $(1 + \cos(\pi/5) + i\sin(\pi/5))^5$ kifejezéseknek?

**Megoldás.**

**Első:** $\sin\frac{\pi}{12} + i\cos\frac{\pi}{12} = \cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}$ (pótszögek). A Moivre-formulával
$$\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right)^{12} = \cos 5\pi + i\sin 5\pi = \mathbf{-1}.$$

**Második:** a 12. feladat szerint $1 + \cos\frac\pi5 + i\sin\frac\pi5 = 2\cos\frac{\pi}{10}\left(\cos\frac{\pi}{10} + i\sin\frac{\pi}{10}\right)$, így
$$\left(1 + \cos\frac\pi5 + i\sin\frac\pi5\right)^5 = 32\cos^5\frac{\pi}{10}\left(\cos\frac\pi2 + i\sin\frac\pi2\right) = 32\cos^5\frac{\pi}{10}\cdot i.$$
Mivel $\cos^2\frac{\pi}{10} = \frac{1 + \cos(\pi/5)}{2} = \frac{5 + \sqrt5}{8}$, az érték
$$32\left(\frac{5 + \sqrt5}{8}\right)^2\sqrt{\frac{5 + \sqrt5}{8}}\; i = (15 + 5\sqrt5)\sqrt{\frac{5 + \sqrt5}{8}}\; i \approx 24{,}90\, i.$$

## 17. feladat

A Moivre-képlet felhasználásával számítsuk ki az $(1 - i)^{12}$ kifejezés értékét! A számolást trigonometrikus alakban végezzük el, de a végeredményt algebrai alakban adjuk meg.

**Megoldás.**

$1 - i = \sqrt2\left(\cos\left(-\frac\pi4\right) + i\sin\left(-\frac\pi4\right)\right)$, így
$$(1 - i)^{12} = (\sqrt2)^{12}\left(\cos(-3\pi) + i\sin(-3\pi)\right) = 64 \cdot (-1) = \mathbf{-64}.$$

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

## 19. feladat

Határozzuk meg a $z = -8 + 8\sqrt{3}i$ komplex szám összes harmadik gyökét! A gyököket trigonometrikus alakban adjuk meg.

**Megoldás.**

$|z| = \sqrt{64 + 192} = 16$, $\cos\varphi = -\frac12$, $\sin\varphi = \frac{\sqrt3}{2}$, így $\varphi = 120^\circ$: $z = 16(\cos 120^\circ + i\sin 120^\circ)$. A harmadik gyökök ($\sqrt[3]{16} = 2\sqrt[3]2$):
$$w_k = 2\sqrt[3]2\left(\cos(40^\circ + k \cdot 120^\circ) + i\sin(40^\circ + k\cdot 120^\circ)\right), \quad k = 0, 1, 2,$$
azaz a szögek $40^\circ$, $160^\circ$, $280^\circ$.

## 20. feladat

Legyen $k$ egy pozitív egész szám, és $\varepsilon = \cos(\frac{2\pi i}{k}) + \sin(\frac{2\pi i}{k})$. Mutassuk meg, hogy egy tetszőleges $n$ egész szám esetén az $S = \sum_{j=0}^{k-1} \varepsilon^{jn}$ összeg értéke $k$, ha $k \mid n$, és $0$, ha $k \nmid n$.

**Megoldás.**

(A lapon szereplő képletben elírás van; a szándékolt definíció $\varepsilon = \cos\frac{2\pi}{k} + i\sin\frac{2\pi}{k}$, a primitív $k$-adik egységgyök.)

A Moivre-formula szerint $\varepsilon^n = \cos\frac{2\pi n}{k} + i\sin\frac{2\pi n}{k}$, és $\varepsilon^n = 1 \iff k \mid n$.

- Ha $k \mid n$: minden tag $\varepsilon^{jn} = (\varepsilon^n)^j = 1$, így $S = k$.
- Ha $k \nmid n$: $q = \varepsilon^n \neq 1$, de $q^k = (\varepsilon^k)^n = 1$. A mértani összeg képlete szerint
$$S = \sum_{j=0}^{k-1} q^j = \frac{q^k - 1}{q - 1} = 0. \qquad \blacksquare$$

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

## 23. feladat

A sík mely geometriai transzformációinak felelnek meg a komplex számok halmazának alábbi leképezései: $z \mapsto -2z + 1 - i$, $z \mapsto (1 - i\sqrt{3})z$, $z \mapsto 1/\overline{z}$.

**Megoldás.**

- $z \mapsto -2z + 1 - i$: középpontos hasonlóság $-2$ aránnyal (azaz $180^\circ$-os forgatás és kétszeres nagyítás), majd eltolás az $(1, -1)$ vektorral. Fixpontja $z = -2z + 1 - i$, azaz $z_0 = \frac{1 - i}{3}$; a leképezés tehát **$z_0$ középpontú, $-2$ arányú középpontos hasonlóság**: $z - z_0 \mapsto -2(z - z_0)$.
- $z \mapsto (1 - i\sqrt3)z$: mivel $1 - i\sqrt3 = 2(\cos(-60^\circ) + i\sin(-60^\circ))$, ez **origó körüli $-60^\circ$-os (óramutató járásával egyező) forgatás és kétszeres nagyítás** (forgatva nyújtás).
- $z \mapsto \frac{1}{\overline z} = \frac{z}{|z|^2}$ ($z \neq 0$): a kép ugyanazon az origóból induló félegyenesen van, $\frac{1}{|z|}$ távolságra: **inverzió az egységkörre.**

## 24. feladat

Igazoljuk, hogy egy paralelogramma oldalai hosszának négyzetösszege ugyanaz, mint az átlói hosszának négyzetösszege, és fogalmazzuk meg a megfelelő komplex azonosságot.

**Megoldás.**

Legyen a paralelogramma négy csúcsa $0$, $u$, $v$, $u + v$ (komplex számok). Az oldalak hossza $|u|$ és $|v|$ (mindkettő kétszer), az átlóké $|u + v|$ és $|u - v|$. A megfelelő komplex azonosság:
$$|u + v|^2 + |u - v|^2 = 2|u|^2 + 2|v|^2.$$
*Bizonyítás:* $|w|^2 = w\overline w$ felhasználásával
$$|u \pm v|^2 = (u \pm v)(\overline u \pm \overline v) = |u|^2 + |v|^2 \pm (u\overline v + \overline u v),$$
és a két egyenlőséget összeadva a vegyes tagok kiesnek. $\blacksquare$
