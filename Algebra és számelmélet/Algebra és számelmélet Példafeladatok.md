# Algebra és számelmélet – Példafeladatok

Ez a gyűjtemény az **ELTE TTK Matematika BSc** *Algebra és számelmélet* kurzusának mind a 8 gyakorlati feladatsorához tartalmaz részletesen kidolgozott példafeladatokat. Minden feladat precíz matematikai levezetést, indoklást és zárt elméleti összefoglaló blokkot (`::: elmelet`) tartalmaz.

---

# 1. feladatsor — Mátrixaritmetika, Gauss-elimináció és lineáris egyenletrendszerek

## P1.1. feladat

Oldjuk meg az alábbi lineáris egyenletrendszereket Gauss-eliminációval:

(1)
$$\begin{aligned}
-x + 2y + 3z &= 4 \\
2x - y + z &= 1 \\
3x + y - 2z &= -3
\end{aligned}$$

(2)
$$\begin{aligned}
x + 3y - 2z &= 5 \\
2x - y + z &= 2 \\
4x + 5y - 3z &= 8
\end{aligned}$$

(3)
$$\begin{aligned}
x_1 - 2x_2 + x_3 + 3x_4 &= 2 \\
2x_1 - 4x_2 + 3x_3 + 5x_4 &= 5 \\
-x_1 + 2x_2 + 2x_3 - 6x_4 &= -1
\end{aligned}$$

**Megoldás.**

**(1)** A kibővített mátrix elemi sorműveletei:
$$\left(\begin{array}{ccc|c}
-1 & 2 & 3 & 4 \\
2 & -1 & 1 & 1 \\
3 & 1 & -2 & -3
\end{array}\right)
\xrightarrow{\substack{S_2 + 2S_1 \\ S_3 + 3S_1}}
\left(\begin{array}{ccc|c}
-1 & 2 & 3 & 4 \\
0 & 3 & 7 & 9 \\
0 & 7 & 7 & 9
\end{array}\right)$$
Vonjuk ki a 2. sort a 3. sorból: $S_3 - S_2$:
$$\left(\begin{array}{ccc|c}
-1 & 2 & 3 & 4 \\
0 & 3 & 7 & 9 \\
0 & 4 & 0 & 0
\end{array}\right)$$
A harmadik sorból azonnal: $4y = 0 \implies y = 0$.
Ezt a 2. sorba helyettesítve: $3(0) + 7z = 9 \implies z = \frac{9}{7}$.
Végül az 1. sorból: $-x + 2(0) + 3\left(\frac{9}{7}\right) = 4 \implies -x + \frac{27}{7} = 4 \implies x = \frac{27}{7} - 4 = -\frac{1}{7}$.
Ellenőrzés:
1. egyenlet: $-(-1/7) + 2(0) + 3(9/7) = 1/7 + 27/7 = 28/7 = 4$. Helyes!
2. egyenlet: $2(-1/7) - 0 + 9/7 = 7/7 = 1$. Helyes!
3. egyenlet: $3(-1/7) + 0 - 2(9/7) = -3/7 - 18/7 = -21/7 = -3$. Helyes!
**Egyetlen megoldás:** $(x, y, z) = \left(-\frac{1}{7}, 0, \frac{9}{7}\right)$.

**(2)** Kibővített mátrix:
$$\left(\begin{array}{ccc|c}
1 & 3 & -2 & 5 \\
2 & -1 & 1 & 2 \\
4 & 5 & -3 & 8
\end{array}\right)
\xrightarrow{\substack{S_2 - 2S_1 \\ S_3 - 4S_1}}
\left(\begin{array}{ccc|c}
1 & 3 & -2 & 5 \\
0 & -7 & 5 & -8 \\
0 & -7 & 5 & -12
\end{array}\right)
\xrightarrow{S_3 - S_2}
\left(\begin{array}{ccc|c}
1 & 3 & -2 & 5 \\
0 & -7 & 5 & -8 \\
0 & 0 & 0 & -4
\end{array}\right)$$
A 3. sor a $0x + 0y + 0z = -4$ ellentmondást adja ($0 \ne -4$).
**Az egyenletrendszer inkonzisztens, nincs megoldása.**

**(3)** Kibővített mátrix:
$$\left(\begin{array}{cccc|c}
1 & -2 & 1 & 3 & 2 \\
2 & -4 & 3 & 5 & 5 \\
-1 & 2 & 2 & -6 & -1
\end{array}\right)
\xrightarrow{\substack{S_2 - 2S_1 \\ S_3 + S_1}}
\left(\begin{array}{cccc|c}
1 & -2 & 1 & 3 & 2 \\
0 & 0 & 1 & -1 & 1 \\
0 & 0 & 3 & -3 & 1
\end{array}\right)
\xrightarrow{S_3 - 3S_2}
\left(\begin{array}{cccc|c}
1 & -2 & 1 & 3 & 2 \\
0 & 0 & 1 & -1 & 1 \\
0 & 0 & 0 & 0 & -2
\end{array}\right)$$
A 3. sor ellentmondásos ($0 = -2$), így **nincs megoldás**.

::: elmelet
**Elméleti háttér — Gauss-elimináció és a lépcsős alak.**
*Elemi sorműveletek:*
1. Két sor felcserélése ($S_i \leftrightarrow S_j$).
2. Sor szorzása nemnulla számmal ($S_i \to cS_i$, $c \ne 0$).
3. Sor konstansszorosának hozzáadása egy másik sorhoz ($S_i \to S_i + cS_j$).

Ezek a műveletek megfordíthatók (invertálhatók), így nem változtatják meg a megoldások halmazát. A kibővített mátrixot lépcsős alakra hozzuk. Ha a lépcsős alakban van csupa nulla együtthatójú sor nemnulla konstanssal (tilos sor), akkor a rendszer ellentmondásos (nincs megoldás). Ha nincs ilyen sor, a megoldások száma a szabad paraméterek számától függ: ha minden ismeretlenhez tartozik vezéregyes, a megoldás egyértelmű; ha van szabad paraméter, végtelen sok megoldás létezik.
:::

## P1.2. feladat

Döntsük el, hogy az alábbi táblázat egyes mezőibe írható-e olyan valós lineáris egyenletrendszer, amely kielégíti az egyenletek száma ($n$), az ismeretlenek száma ($m$) és a megoldások száma ($t$) közötti feltételt! Ahol lehetséges, adjunk meg egy minimális konkrét példát, ahol lehetetlen, írjunk N-et és indokoljuk meg!

| Rendszer típusa | Kapcsolat | $t = 0$ (nincs mo.) | $t = 1$ (egyértelmű) | $t = \infty$ (végtelen sok) |
|:---:|:---:|:---:|:---:|:---:|
| Inhomogén | $n < m$ | | | |
| Inhomogén | $n = m$ | | | |
| Inhomogén | $n > m$ | | | |
| Homogén | $n < m$ | | | |
| Homogén | $n = m$ | | | |
| Homogén | $n > m$ | | | |

**Megoldás.**

A kitöltött táblázat:

| Rendszer típusa | Kapcsolat | $t = 0$ | $t = 1$ | $t = \infty$ |
|:---:|:---:|:---:|:---:|:---:|
| **Inhomogén** | $n < m$ | $0x + 0y = 1$ | **N** | $x + y = 1$ |
| **Inhomogén** | $n = m$ | $0x = 1$ | $x = 1$ | $0x = 0$ |
| **Inhomogén** | $n > m$ | $x = 0, x = 1$ | $x = 1, 2x = 2$ | $0x = 0, 0x = 0$ |
| **Homogén** | $n < m$ | **N** | **N** | $x + y = 0$ |
| **Homogén** | $n = m$ | **N** | $x = 0$ | $0x = 0$ |
| **Homogén** | $n > m$ | **N** | $x = 0, 2x = 0$ | $0x = 0, 0x = 0$ |

**Indoklás a lehetetlen esetekre (N):**
1. *Inhomogén, $n < m, t = 1$:* Ha a rendszer konzisztens, akkor rangja legfeljebb az egyenletek száma: $r \le n < m$. Így a szabad paraméterek száma $m - r \ge m - n \ge 1$. Valós test felett legalább 1 szabad paraméter végtelen sok megoldást jelent, egyetlen megoldás sohasem létezhet.
2. *Homogén, $t = 0$:* A $\mathbf{0}$ vektor mindig megoldása minden homogén rendszernek ($A\mathbf{0} = \mathbf{0}$), ezért a megoldáshalmaz sohasem lehet üres ($t \ge 1$).
3. *Homogén, $n < m, t = 1$:* A fentiek szerint $m > n$ esetén a rang $r \le n < m$, ezért van legalább egy szabad paraméter, ami nemtriviális megoldást és végtelen sok megoldást von maga után.

::: elmelet
**Elméleti háttér — A lineáris egyenletrendszerek alaptételei.**
*Dimenziótétel lineáris egyenletrendszerekre:*
Egy $A \in \mathbb{R}^{n \times m}$ mátrixú egyenletrendszer esetén:
- $\operatorname{rang}(A) \le \min(n, m)$.
- Ha $A\mathbf{x} = \mathbf{b}$ konzisztens, akkor a megoldáshalmaz dimenziója $m - \operatorname{rang}(A)$.
- Ha $m > n$, akkor $m - \operatorname{rang}(A) \ge m - n > 0$, így a konzisztens rendszernek szükségszerűen van szabad paramétere, vagyis végtelen sok megoldása van.
- Homogén rendszer esetén a triviális megoldás ($\mathbf{x} = \mathbf{0}$) mindig létezik, így $t \in \{1, \infty\}$, és $t=1 \iff \operatorname{rang}(A) = m$.
:::

## P1.3. feladat

Adott 2027 valós szám úgy, hogy közülük bármelyik 2026 összege 4052. Melyek ezek a számok?

**Megoldás.**

Jelölje a számokat $x_1, x_2, \dots, x_{2027}$. Legyen $S = \sum_{j=1}^{2027} x_j$ a számok teljes összege.
Bármelyik számot elhagyva a többiek összege $4052$:
$$S - x_i = 4052 \qquad (i = 1, 2, \dots, 2027).$$
Adjuk össze mind a 2027 egyenletet:
$$\sum_{i=1}^{2027} (S - x_i) = 2027 \cdot 4052.$$
A bal oldal:
$$2027 S - \sum_{i=1}^{2027} x_i = 2027 S - S = 2026 S.$$
Így:
$$2026 S = 2027 \cdot 4052.$$
Mivel $4052 = 2 \cdot 2026$, oszthatunk $2026$-tal:
$$S = 2027 \cdot 2 = 4054.$$
Ekkor minden egyes számra:
$$x_i = S - 4052 = 4054 - 4052 = 2.$$
**Tehát mind a 2027 darab szám értéke 2.**

::: elmelet
**Elméleti háttér — Szimmetrikus egyenletrendszerek összegzési technikája.**
Ha egy lineáris rendszerben az ismeretlenek szimmetrikusan szerepelnek, az összes egyenlet összeadása azonnal meghatározza az ismeretlenek összegét ($S$). Ezután az eredeti egyenletekből kivonva az ismeretlenek egyenként, közvetlenül kifejezhetők Gauss-elimináció nélkül.
:::

## P1.4. feladat

Mely valós $c$ paraméter esetén hány valós megoldása van az alábbi egyenletrendszernek?
$$\begin{aligned}
x + 3z &= 2 \\
y - cz &= 1 \\
x + cy - 3z &= 4
\end{aligned}$$
A $c = 3$ esetben határozzuk meg $z$ értékét annál a megoldásnál, amelyre az $x + y$ összeg maximális!

**Megoldás.**

Fejezzük ki $x$-et és $y$-t $z$ függvényében az első két egyenletből:
$$x = 2 - 3z, \qquad y = 1 + cz.$$
Helyettesítsük ezeket a harmadik egyenletbe:
$$(2 - 3z) + c(1 + cz) - 3z = 4.$$
Bontsuk fel a zárójelet és rendezzük $z$ szerint:
$$2 - 6z + c + c^2 z = 4 \iff (c^2 - 6)z = 2 - c.$$
- **Ha $c^2 - 6 \ne 0$**, azaz $c \ne \pm\sqrt{6}$:
  Ekkor $z = \frac{2 - c}{c^2 - 6}$ egyértelmű, és ebből $x$ és $y$ is egyértelműen adódik.
  Tehát ekkor **pontosan 1 megoldás van**.
- **Ha $c = \sqrt{6}$**:
  A bal oldal $0 \cdot z = 0$, a jobb oldal $2 - \sqrt{6} \ne 0$.
  Ellentmondás, így **0 megoldás van (nincs megoldás)**.
- **Ha $c = -\sqrt{6}$**:
  A bal oldal $0 \cdot z = 0$, a jobb oldal $2 - (-\sqrt{6}) = 2 + \sqrt{6} \ne 0$.
  Ellentmondás, így ekkor is **0 megoldás van**.

*A $c = 3$ eset vizsgálata:*
Mivel $3^2 - 6 = 3 \ne 0$, a megoldás egyértelmű!
Számítsuk ki:
$$z = \frac{2 - 3}{3^2 - 6} = \frac{-1}{3} = -\frac{1}{3}.$$
Ekkor $x = 2 - 3\left(-\frac{1}{3}\right) = 3$, és $y = 1 + 3\left(-\frac{1}{3}\right) = 0$.
Mivel csak egyetlen megoldás létezik, a maximumot ennél az egyetlen megoldásnál veszi fel:
**$z = -\frac{1}{3}$** (és ekkor $x + y = 3 + 0 = 3$).

::: elmelet
**Elméleti háttér — Paraméteres lineáris egyenletrendszerek diszkussziója.**
Egy paraméteres lineáris egyenletrendszer megoldhatóságának vizsgálata során az eliminációt úgy végezzük, hogy a paramétert tartalmazó kifejezéssel csak akkor osztunk, ha az nem nulla. A zérusosztók helyeit külön esetként vizsgáljuk.
A kvadratikus feltételek ($c^2 - 6 = 0$) kritikus pontokat jelölnek: ha az együttható zérus, de a jobb oldal nem zérus, a rendszer inkonzisztens.
:::

## P1.5. feladat

(a) Ha egy racionális együtthatós homogén lineáris egyenletrendszernek van nemtriviális komplex megoldása, akkor hány racionális megoldása van?
(b) Ha egy valós együtthatós lineáris egyenletrendszernek van nem valós komplex megoldása, akkor hány valós megoldása van?

**Megoldás.**

**(a) Végtelen sok racionális megoldása van.**
*Indoklás:* Legyen a homogén egyenletrendszer $A\mathbf{x} = \mathbf{0}$, ahol $A \in \mathbb{Q}^{n \times m}$.
A Gauss-elimináció lépései (sorok cseréje, szorzása racionális skalárral, racionális többszörös hozzáadása) kizárólag a négy alapműveletet használják, amelyekre a $\mathbb{Q}$ test zárt. Ezért a lépcsős alak és a vezéregyesek pozíciói pontosan ugyanazok, akár $\mathbb{Q}$ felett, akár $\mathbb{C}$ felett hajtjuk végre az eliminációt:
$$\operatorname{rang}_{\mathbb{Q}}(A) = \operatorname{rang}_{\mathbb{C}}(A) = r.$$
A feltevés szerint van nemtriviális komplex megoldás, ezért a szabad paraméterek száma nem nulla:
$$m - r > 0 \implies r < m.$$
Mivel van legalább egy szabad paraméter a lépcsős alakban, ezt a szabad paramétert tetszőleges racionális számnak választva a visszahelyettesítés során kizárólag racionális értékeket kapunk a kötött ismeretlenekre is.
Mivel $\mathbb{Q}$ végtelen halmaz, a rendszernek **végtelen sok racionális megoldása van**.

**(b) Végtelen sok valós megoldása van.**
*Indoklás:* Legyen a rendszer $A\mathbf{x} = \mathbf{b}$, ahol $A \in \mathbb{R}^{n \times m}$ és $\mathbf{b} \in \mathbb{R}^n$.
Tegyük fel, hogy $\mathbf{z} = \mathbf{u} + i\mathbf{v}$ egy nem valós komplex megoldás ($\mathbf{u}, \mathbf{v} \in \mathbb{R}^m$, $\mathbf{v} \ne \mathbf{0}$).
Ekkor:
$$A\mathbf{z} = A(\mathbf{u} + i\mathbf{v}) = A\mathbf{u} + i(A\mathbf{v}) = \mathbf{b} = \mathbf{b} + i\mathbf{0}.$$
Mivel két komplex vektor pontosan akkor egyenlő, ha valós és képzetes részük külön-külön megegyezik:
$$A\mathbf{u} = \mathbf{b} \quad \text{és} \quad A\mathbf{v} = \mathbf{0}.$$
1. Az $A\mathbf{u} = \mathbf{b}$ egyenlőség mutatja, hogy $\mathbf{u} \in \mathbb{R}^m$ valós megoldása az inhomogén rendszernek.
2. Az $A\mathbf{v} = \mathbf{0}$ egyenlőség mutatja, hogy $\mathbf{v} \in \mathbb{R}^m$ a hozzá tartozó homogén rendszer megoldása.
3. Mivel a megoldás nem valós volt, $\mathbf{v} \ne \mathbf{0}$, vagyis a homogén rendszernek van nemtriviális valós megoldása.
Ekkor minden $\lambda \in \mathbb{R}$ valós számra:
$$A(\mathbf{u} + \lambda \mathbf{v}) = A\mathbf{u} + \lambda A\mathbf{v} = \mathbf{b} + \lambda \mathbf{0} = \mathbf{b}.$$
Mivel $\mathbf{v} \ne \mathbf{0}$, a különböző $\lambda$ értékekhez különböző valós megoldásvektorok tartoznak.
Mivel $\lambda \in \mathbb{R}$ tetszőleges, a valós megoldások száma **végtelen sok**.

::: elmelet
**Elméleti háttér — Testbővítések és lineáris egyenletrendszerek.**
*Alaptétel:* Ha $K \subseteq L$ testbővítés (például $\mathbb{Q} \subseteq \mathbb{R} \subseteq \mathbb{C}$), és $A \in K^{n \times m}$, $\mathbf{b} \in K^n$, akkor:
1. $\operatorname{rang}_K(A) = \operatorname{rang}_L(A)$ (a rang független az alaptesttől).
2. Az $A\mathbf{x} = \mathbf{b}$ rendszer pontosan akkor oldható meg $L$-ben, ha megoldható $K$-ban is.
3. A megoldás akkor és csak akkor egyértelmű $L$-ben, ha egyértelmű $K$-ban.
4. Ha van megoldás egy tágabb testben, akkor a valós/képzetes részekre bontás közvetlenül szolgáltat megoldást a szűkebb testben is.
:::

## P1.6. feladat

Az alábbi mátrixműveletek közül végezzük el az értelmezetteket:
$$AB, \quad BA, \quad AC, \quad CA, \quad BC^T - B$$
ha
$$A = \begin{pmatrix} 1 & -2 & 3 \\ 0 & 4 & -1 \end{pmatrix}, \quad B = \begin{pmatrix} 2 & 1 \\ -1 & 3 \end{pmatrix}, \quad C^T = \begin{pmatrix} 3 & 0 \\ -1 & 2 \\ 1 & 1 \end{pmatrix}.$$

**Megoldás.**

Állapítsuk meg először a mátrixok méreteit:
- $A \in \mathbb{R}^{2 \times 3}$,
- $B \in \mathbb{R}^{2 \times 2}$,
- Mivel $C^T \in \mathbb{R}^{3 \times 2}$, ezért $C = (C^T)^T \in \mathbb{R}^{2 \times 3}$, konkrétan:
  $$C = \begin{pmatrix} 3 & -1 & 1 \\ 0 & 2 & 1 \end{pmatrix}.$$

Vizsgáljuk meg a műveleteket:
1. **$AB$:** $A$ mérete $2 \times 3$, $B$ mérete $2 \times 2$. Mivel $3 \ne 2$ (a belső dimenziók nem egyeznek), a szorzás **nem végezhető el**.
2. **$BA$:** $B$ mérete $2 \times 2$, $A$ mérete $2 \times 3$. A szorzat létezik és $2 \times 3$-as:
   $$BA = \begin{pmatrix} 2 & 1 \\ -1 & 3 \end{pmatrix} \begin{pmatrix} 1 & -2 & 3 \\ 0 & 4 & -1 \end{pmatrix} = \begin{pmatrix} 2(1) + 1(0) & 2(-2) + 1(4) & 2(3) + 1(-1) \\ -1(1) + 3(0) & -1(-2) + 3(4) & -1(3) + 3(-1) \end{pmatrix} = \begin{pmatrix} 2 & 0 & 5 \\ -1 & 14 & -6 \end{pmatrix}.$$
3. **$AC$:** $2 \times 3$ és $2 \times 3$, a belső dimenziók ($3$ és $2$) nem egyeznek: **nem végezhető el**.
4. **$CA$:** $2 \times 3$ és $2 \times 3$, a belső dimenziók nem egyeznek: **nem végezhető el**.
5. **$BC^T - B$:**
   $B \in \mathbb{R}^{2 \times 2}$, $C^T \in \mathbb{R}^{3 \times 2}$. A belső méretek $2$ és $3$, nem egyeznek, így már a $BC^T$ szorzás sem végezhető el, következésképpen a kifejezés **nem értelmezett**.
   *(Megjegyzés: a $C B$ szorzat sem lenne értelmezett, de ha $C^T B$ lenne, az $3 \times 2$ szorozva $2 \times 2$-vel létezne.)*

**Összegzés:** Egyedül a **$BA$** művelet végezhető el, értéke:
$$BA = \begin{pmatrix} 2 & 0 & 5 \\ -1 & 14 & -6 \end{pmatrix}.$$

::: elmelet
**Elméleti háttér — A mátrixszorzás méretkompatibilitása.**
Egy $A \in \mathbb{R}^{n \times k}$ és $B \in \mathbb{R}^{m \times \ell}$ mátrix szorzata $AB$ pontosan akkor értelmezett, ha $k = m$ (a bal oldali mátrix oszlopainak száma megegyezik a jobb oldali mátrix sorainak számával). Az eredménymátrix mérete $n \times \ell$.
Összeadás és kivonás ($A \pm B$) kizárólag azonos méretű ($n \times m$) mátrixok között végezhető el.
:::

## P1.7. feladat

Adottak az alábbi mátrixok:
$$A = \begin{pmatrix} 1 & 2 & 0 \\ 0 & 1 & -1 \\ 2 & 0 & 3 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & -1 & 2 \end{pmatrix}, \quad C = \begin{pmatrix} 3 \\ -2 \\ 1 \end{pmatrix}, \quad D = \begin{pmatrix} 2 & 1 \\ 0 & -1 \\ 1 & 2 \end{pmatrix}.$$
Végezzük el az alábbi műveletek közül az értelmezetteket:
$2A - A^T$, $AC$, $CA$, $BC$, $CB$, $D^T D$, $D D^T$, $A D + 2D$, $D^2$.

**Megoldás.**

Méretek: $A \in \mathbb{R}^{3 \times 3}$, $B \in \mathbb{R}^{1 \times 3}$, $C \in \mathbb{R}^{3 \times 1}$, $D \in \mathbb{R}^{3 \times 2}$.

1. **$2A - A^T$:**
   $$2A = \begin{pmatrix} 2 & 4 & 0 \\ 0 & 2 & -2 \\ 4 & 0 & 6 \end{pmatrix}, \quad A^T = \begin{pmatrix} 1 & 0 & 2 \\ 2 & 1 & 0 \\ 0 & -1 & 3 \end{pmatrix}.$$
   $$2A - A^T = \begin{pmatrix} 2-1 & 4-0 & 0-2 \\ 0-2 & 2-1 & -2-0 \\ 4-0 & 0-(-1) & 6-3 \end{pmatrix} = \begin{pmatrix} 1 & 4 & -2 \\ -2 & 1 & -2 \\ 4 & 1 & 3 \end{pmatrix}.$$

2. **$AC$:** $3 \times 3$ szorozva $3 \times 1 \implies 3 \times 1$:
   $$AC = \begin{pmatrix} 1(3) + 2(-2) + 0(1) \\ 0(3) + 1(-2) + (-1)(1) \\ 2(3) + 0(-2) + 3(1) \end{pmatrix} = \begin{pmatrix} 3 - 4 \\ -2 - 1 \\ 6 + 3 \end{pmatrix} = \begin{pmatrix} -1 \\ -3 \\ 9 \end{pmatrix}.$$

3. **$CA$:** $(3 \times 1) \times (3 \times 3)$ belső dimenziók $1 \ne 3$: **nem értelmezett**.

4. **$BC$:** $(1 \times 3) \times (3 \times 1) \implies 1 \times 1$:
   $$BC = 1(3) + (-1)(-2) + 2(1) = 3 + 2 + 2 = 7 \quad (\text{vagy } (7)).$$

5. **$CB$:** $(3 \times 1) \times (1 \times 3) \implies 3 \times 3$:
   $$CB = \begin{pmatrix} 3(1) & 3(-1) & 3(2) \\ -2(1) & -2(-1) & -2(2) \\ 1(1) & 1(-1) & 1(2) \end{pmatrix} = \begin{pmatrix} 3 & -3 & 6 \\ -2 & 2 & -4 \\ 1 & -1 & 2 \end{pmatrix}.$$

6. **$D^T D$:** $D^T \in \mathbb{R}^{2 \times 3}$, $D \in \mathbb{R}^{3 \times 2} \implies 2 \times 2$ szimmetrikus mátrix:
   $$D^T D = \begin{pmatrix} 2 & 0 & 1 \\ 1 & -1 & 2 \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 0 & -1 \\ 1 & 2 \end{pmatrix} = \begin{pmatrix} 4 + 0 + 1 & 2 + 0 + 2 \\ 2 + 0 + 2 & 1 + 1 + 4 \end{pmatrix} = \begin{pmatrix} 5 & 4 \\ 4 & 6 \end{pmatrix}.$$

7. **$D D^T$:** $(3 \times 2) \times (2 \times 3) \implies 3 \times 3$ szimmetrikus mátrix:
   $$DD^T = \begin{pmatrix} 2 & 1 \\ 0 & -1 \\ 1 & 2 \end{pmatrix} \begin{pmatrix} 2 & 0 & 1 \\ 1 & -1 & 2 \end{pmatrix} = \begin{pmatrix} 4+1 & 0-1 & 2+2 \\ 0-1 & 0+1 & 0-2 \\ 2+2 & 0-2 & 1+4 \end{pmatrix} = \begin{pmatrix} 5 & -1 & 4 \\ -1 & 1 & -2 \\ 4 & -2 & 5 \end{pmatrix}.$$

8. **$AD + 2D$:** $AD$ mérete $(3 \times 3) \times (3 \times 2) = 3 \times 2$, amihez hozzáadható a $2D$ ($3 \times 2$):
   $$AD = \begin{pmatrix} 1 & 2 & 0 \\ 0 & 1 & -1 \\ 2 & 0 & 3 \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 0 & -1 \\ 1 & 2 \end{pmatrix} = \begin{pmatrix} 2 & 1 - 2 \\ -1 & -1 - 2 \\ 4 + 3 & 2 + 6 \end{pmatrix} = \begin{pmatrix} 2 & -1 \\ -1 & -3 \\ 7 & 8 \end{pmatrix}.$$
   $$2D = \begin{pmatrix} 4 & 2 \\ 0 & -2 \\ 2 & 4 \end{pmatrix} \implies AD + 2D = \begin{pmatrix} 2+4 & -1+2 \\ -1+0 & -3-2 \\ 7+2 & 8+4 \end{pmatrix} = \begin{pmatrix} 6 & 1 \\ -1 & -5 \\ 9 & 12 \end{pmatrix}.$$

9. **$D^2$:** $D$ mérete $3 \times 2$, nem négyzetes, így önmagával nem szorozható: **nem értelmezett**.

::: elmelet
**Elméleti háttér — Gram-mátrixok és műveleti szabályok.**
- Egy tetszőleges $D \in \mathbb{R}^{n \times k}$ mátrixra a $D^T D$ ($k \times k$-as) és $D D^T$ ($n \times n$-es) mátrixok mindig léteznek és szimmetrikusak: $(D^T D)^T = D^T (D^T)^T = D^T D$. Ezek az oszlopvektorok, illetve sorvektorok skalárszorzataiból álló Gram-mátrixok.
- Mátrix hatványa ($D^k$) kizárólag négyzetes mátrixokra értelmezett.
:::

## P1.8. feladat

Bizonyítsuk be, hogy két felső háromszögmátrix szorzata is felső háromszögmátrix, és a szorzat főátlójában a megfelelő főátlóbeli elemek szorzatai állnak!

**Megoldás.**

Legyen $A = (a_{ij})$ és $B = (b_{ij})$ két $n \times n$-es felső háromszögmátrix, azaz $a_{ij} = 0$, ha $i > j$, és $b_{ij} = 0$, ha $i > j$.
A szorzatmátrix $C = AB = (c_{ij})$ általános eleme:
$$c_{ij} = \sum_{k=1}^n a_{ik} b_{kj}.$$
1. **Felső háromszög jelleg belátása:**
   Tegyük fel, hogy $i > j$. Meg kell mutatnunk, hogy $c_{ij} = 0$.
   Az összeg minden $k$ indexére vizsgáljuk meg a két szorzótényezőt:
   - Ha $k < i$, akkor $a_{ik} = 0$ (mivel $A$ felső háromszög, és a sorszám $i$ nagyobb az oszlopszámnál $k$).
   - Ha $k \ge i$, akkor $i > j$ miatt $k > j$. De mivel $B$ felső háromszög, ekkor $b_{kj} = 0$ (mert a sorszám $k$ nagyobb az oszlopszámnál $j$).
   Így minden $k \in \{1, 2, \dots, n\}$ esetén vagy $a_{ik} = 0$, vagy $b_{kj} = 0$.
   Ezért a szorzat minden tagja 0, tehát $c_{ij} = 0$, ha $i > j$.
   Ez pontosan azt jelenti, hogy $C = AB$ felső háromszögmátrix.

2. **A főátlóbeli elemek vizsgálata:**
   Tekintsük az $i = j$ esetet:
   $$c_{ii} = \sum_{k=1}^n a_{ik} b_{ki}.$$
   A fentiek szerint:
   - ha $k < i$, akkor $a_{ik} = 0$,
   - ha $k > i$, akkor $b_{ki} = 0$.
   Egyetlen nem feltétlenül nulla tag marad, amikor $k = i$:
   $$c_{ii} = a_{ii} b_{ii}.$$
   Ez bizonyítja, hogy a főátlóban a tényezők főátlóbeli elemeinek szorzata áll. $\blacksquare$

::: elmelet
**Elméleti háttér — Háromszögmátrixok algebrai tulajdonságai.**
- A felső (illetve alsó) háromszögmátrixok részalgebrát alkotnak $\mathbb{R}^{n \times n}$-ben (összegük, skalárszorosuk és szorzatuk is felső háromszög).
- Egy felső háromszögmátrix determinánsa a főátlóbeli elemek szorzata: $\det(A) = \prod_{i=1}^n a_{ii}$.
- Egy háromszögmátrix pontosan akkor invertálható, ha a főátlójában egyik elem sem nulla ($a_{ii} \ne 0$ minden $i$-re). Ekkor inverze szintén felső háromszögmátrix, és $(A^{-1})_{ii} = \frac{1}{a_{ii}}$.
:::

## P1.9. feladat

Bizonyítsuk be az indexes definíció alapján a mátrixszorzás asszociativitását: ha $A \in \mathbb{R}^{n \times m}$, $B \in \mathbb{R}^{m \times k}$ és $C \in \mathbb{R}^{k \times \ell}$, akkor $(AB)C = A(BC)$.

**Megoldás.**

*Bizonyítás:*
1. **Méretek ellenőrzése:**
   - $AB$ mérete $n \times k$, így $(AB)C$ mérete $n \times \ell$.
   - $BC$ mérete $m \times \ell$, így $A(BC)$ mérete $n \times \ell$.
   A két oldal mérete megegyezik.

2. **Az $(i, j)$-edik elemek kiszámítása:**
   Legyen $1 \le i \le n$ és $1 \le j \le \ell$.
   A bal oldali mátrix $(i, j)$ eleme a mátrixszorzás definíciója szerint:
   $$((AB)C)_{ij} = \sum_{s=1}^k (AB)_{is} \cdot c_{sj}.$$
   Mivel $(AB)_{is} = \sum_{r=1}^m a_{ir} b_{rs}$, ezt behelyettesítve:
   $$((AB)C)_{ij} = \sum_{s=1}^k \left( \sum_{r=1}^m a_{ir} b_{rs} \right) c_{sj}.$$
   A valós számok disztributivitása miatt a $c_{sj}$ beszorozható a belső összegbe:
   $$((AB)C)_{ij} = \sum_{s=1}^k \sum_{r=1}^m a_{ir} b_{rs} c_{sj}.$$
   A véges összegek felcserélhetősége (kommutativitása) miatt a két szummázás sorrendje felcserélhető:
   $$((AB)C)_{ij} = \sum_{r=1}^m \sum_{s=1}^k a_{ir} b_{rs} c_{sj}.$$
   Kiemelve az $s$ szerint konstans $a_{ir}$ tényezőt a belső szummából:
   $$((AB)C)_{ij} = \sum_{r=1}^m a_{ir} \left( \sum_{s=1}^k b_{rs} c_{sj} \right).$$
   Vegyük észre, hogy a belső összeg $\sum_{s=1}^k b_{rs} c_{sj} = (BC)_{rj}$. Így:
   $$((AB)C)_{ij} = \sum_{r=1}^m a_{ir} (BC)_{rj} = (A(BC))_{ij}.$$
Mivel a két mátrix mérete megegyezik, és minden $(i, j)$ pozícióban lévő elemük egyenlő, ezért $(AB)C = A(BC)$. $\blacksquare$

::: elmelet
**Elméleti háttér — A mátrixszorzás asszociativitásának háttere.**
*Kétféle bizonyítási szemlélet:*
1. **Algebrai (indexes):** a fenti levezetés a valós számok asszociativitására, disztributivitására és a véges összegek felcserélhetőségére épül.
2. **Geometriai (leképezések összetétele):** Minden mátrix egy lineáris leképezést valósít meg rögzített bázisokban: $A \leftrightarrow f_A$, $B \leftrightarrow f_B$, $C \leftrightarrow f_C$. A mátrixok szorzása a függvények kompozíciójának felel meg: $f_{AB} = f_A \circ f_B$. Mivel a függvények összetétele tetszőleges halmazokon asszociatív:
$$(f_A \circ f_B) \circ f_C = f_A \circ (f_B \circ f_C),$$
ezért a mátrixszorzás szükségszerűen asszociatív!
:::

## P1.10. feladat

Ha
$$\begin{pmatrix} 0 & -2 \\ 0 & 0 \end{pmatrix} N = \begin{pmatrix} 4 & -6 & 8 \\ 0 & 0 & 0 \end{pmatrix},$$
akkor mi az $N$ mátrix második sorának harmadik eleme? Mi mondható az $N$ többi eleméről?

**Megoldás.**

Jelölje a bal oldali mátrixot $M = \begin{pmatrix} 0 & -2 \\ 0 & 0 \end{pmatrix}$, a jobb oldali mátrixot $P = \begin{pmatrix} 4 & -6 & 8 \\ 0 & 0 & 0 \end{pmatrix}$.
Mivel $M \in \mathbb{R}^{2 \times 2}$ és $P \in \mathbb{R}^{2 \times 3}$, a szorzat definíciója miatt $N \in \mathbb{R}^{2 \times 3}$.
Jelölje $N$ sorvektorait $\mathbf{n}_1$ és $\mathbf{n}_2$, ahol $\mathbf{n}_1, \mathbf{n}_2 \in \mathbb{R}^{1 \times 3}$.
A blokk-mátrixszorzás (vagy soronkénti szorzás) szabálya szerint:
$$M N = \begin{pmatrix} 0 & -2 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} \mathbf{n}_1 \\ \mathbf{n}_2 \end{pmatrix} = \begin{pmatrix} 0 \cdot \mathbf{n}_1 + (-2) \cdot \mathbf{n}_2 \\ 0 \cdot \mathbf{n}_1 + 0 \cdot \mathbf{n}_2 \end{pmatrix} = \begin{pmatrix} -2\mathbf{n}_2 \\ \mathbf{0} \end{pmatrix}.$$
Ennek egyenlőnek kell lennie a jobb oldali mátrixszal:
$$\begin{pmatrix} -2\mathbf{n}_2 \\ \mathbf{0} \end{pmatrix} = \begin{pmatrix} 4 & -6 & 8 \\ 0 & 0 & 0 \end{pmatrix}.$$
Ez pontosan azt jelenti, hogy:
$$-2\mathbf{n}_2 = \begin{pmatrix} 4 & -6 & 8 \end{pmatrix} \implies \mathbf{n}_2 = -\frac{1}{2} \begin{pmatrix} 4 & -6 & 8 \end{pmatrix} = \begin{pmatrix} -2 & 3 & -4 \end{pmatrix}.$$
Az $N$ mátrix második sora tehát teljesen és egyértelműen meghatározott:
$$\mathbf{n}_2 = \begin{pmatrix} n_{21} & n_{22} & n_{23} \end{pmatrix} = \begin{pmatrix} -2 & 3 & -4 \end{pmatrix}.$$
Ennek harmadik eleme:
$$n_{23} = -4.$$

*Mi mondható az $N$ többi eleméről?*
A szorzatban $\mathbf{n}_1$ (az első sor) együtthatója mindenhol $0$, így $\mathbf{n}_1$ egyetlen eleme sem befolyásolja az eredményt.
Tehát az első sor elemei ($n_{11}, n_{12}, n_{13}$) teljesen tetszőleges valós számok lehetnek!
**Végeredmény:** $N$ második sorának harmadik eleme $n_{23} = -4$. Az első sor tetszőleges, a második sor többi eleme $n_{21} = -2$, $n_{22} = 3$.

::: elmelet
**Elméleti háttér — A mátrixszorzás sorkombinációs értelmezése.**
Egy $M N$ szorzat $i$-edik sora a jobb oldali $N$ mátrix sorainak lineáris kombinációja az $M$ mátrix $i$-edik sorában álló együtthatókkal:
$$(MN)_{i,*} = \sum_k m_{ik} N_{k,*}.$$
Ha $M$ valamely oszlopa csupa nulla, az $N$ megfelelő sora teljesen kiesik a szorzatból, így szabadon megválasztható.
:::

## P1.11. feladat

Adjuk meg az összes olyan $A \in \mathbb{R}^{2 \times 2}$ mátrixot, amelyre teljesül az
$$M A = A^T M$$
egyenlőség, ahol
$$M = \begin{pmatrix} 1 & -2 \\ -2 & 4 \end{pmatrix}.$$

**Megoldás.**

Legyen az általános $2 \times 2$-es mátrix:
$$A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}, \qquad \text{ekkor } A^T = \begin{pmatrix} a & c \\ b & d \end{pmatrix}.$$
Számítsuk ki a bal és jobb oldali szorzatot:
1. **Bal oldal ($MA$):**
   $$MA = \begin{pmatrix} 1 & -2 \\ -2 & 4 \end{pmatrix} \begin{pmatrix} a & b \\ c & d \end{pmatrix} = \begin{pmatrix} a - 2c & b - 2d \\ -2a + 4c & -2b + 4d \end{pmatrix}.$$
2. **Jobb oldal ($A^T M$):**
   $$A^T M = \begin{pmatrix} a & c \\ b & d \end{pmatrix} \begin{pmatrix} 1 & -2 \\ -2 & 4 \end{pmatrix} = \begin{pmatrix} a - 2c & -2a + 4c \\ b - 2d & -2b + 4d \end{pmatrix}.$$

A két mátrix egyenlőségének feltétele:
- Az $(1, 1)$ elemek: $a - 2c = a - 2c$, ez azonosság (mindig teljesül).
- A $(2, 2)$ elemek: $-2b + 4d = -2b + 4d$, szintén azonosság.
- Az $(1, 2)$ elemek:
  $$b - 2d = -2a + 4c \iff 2a - 4c + b - 2d = 0.$$
- A $(2, 1)$ elemek:
  $$-2a + 4c = b - 2d \iff 2a - 4c + b - 2d = 0.$$
Ez a két egyenlet pontosan ugyanaz az egyetlen feltétel:
$$b = -2a + 4c + 2d.$$
Itt $a, c, d \in \mathbb{R}$ tetszőleges szabad paraméterek lehetnek, míg $b$ kifejezhető velük.
Ezért a keresett mátrixok általános alakja:
$$A = \begin{pmatrix} a & -2a + 4c + 2d \\ c & d \end{pmatrix}, \qquad a, c, d \in \mathbb{R}.$$
*(Megjegyzés: ez a mátrixok 3 dimenziós alterét alkotja $\mathbb{R}^{2 \times 2}$-ben.)*

::: elmelet
**Elméleti háttér — Mátrixegyenletek felírása lineáris egyenletrendszerként.**
Egy $n \times n$-es mátrixegyenlet (mint $MA = A^T M$) a mátrix elemeire felírt $n^2$ egyenletből álló lineáris egyenletrendszernek felel meg.
Mivel $M$ szimmetrikus ($M = M^T$), az egyenlet $(MA)^T = MA$-val ekvivalens, ami azt jelenti, hogy $MA$ szimmetrikus mátrix kell legyen. Mivel egy $2 \times 2$-es mátrix szimmetriájához egyetlen nemátlóbeli egyenlőség szükséges, a feltétel egyetlen lineáris egyenletre redukálódik a 4 ismeretlen között.
:::

## P1.12. feladat

Számítsuk ki a $4 \times 4$-es $N = (n_{ij})$ léptetőmátrix hatványait ($N, N^2, N^3, N^4$), ahol
$$n_{ij} = \begin{cases} 1, & \text{ha } j - i = 1, \\ 0, & \text{egyébként.} \end{cases}$$
Bizonyítsuk be, hogy ha egy tetszőleges $n \times n$-es $M = (m_{ij})$ valós mátrix szigorúan felső háromszögmátrix (azaz $m_{ij} = 0$, ha $i \ge j$), akkor $M^n = 0$ (a nullmátrix).

**Megoldás.**

1. **A $4 \times 4$-es $N$ mátrix és hatványai:**
   $$N = \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix}.$$
   Számítsuk ki a hatványokat közvetlen szorzással:
   $$N^2 = \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}.$$
   (Az 1-esek a főátló feletti 2. mellékátlóba tolódtak el, azaz $j - i = 2$.)
   $$N^3 = N^2 \cdot N = \begin{pmatrix} 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}.$$
   (Az egyetlen megmaradt 1-es a jobb felső sarokban áll, ahol $j - i = 3$.)
   $$N^4 = N^3 \cdot N = \begin{pmatrix} 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix} = 0.$$

2. **Általános állítás bizonyítása ($M^n = 0$):**
   *Állítás:* Ha $M = (m_{ij}) \in \mathbb{R}^{n \times n}$ olyan, hogy $m_{ij} = 0$, ha $j - i < 1$, akkor minden $k \ge 1$ egészre az $M^k$ mátrix elemeire teljesül, hogy
   $$(M^k)_{ij} = 0, \qquad \text{ha } j - i < k.$$
   *Bizonyítás teljes indukcióval $k$-ra:*
   - **Bázislépés ($k = 1$):** A feltevés szerint $m_{ij} = 0$, ha $j - i < 1$. Ez igaz.
   - **Indukciós lépés:** Tegyük fel, hogy az állítás igaz $k$-ra, vagyis $(M^k)_{ir} = 0$, ha $r - i < k$ (azaz $r < i + k$).
     Tekintsük $M^{k+1} = M^k \cdot M$ egy elemét, ahol $j - i < k + 1$:
     $$(M^{k+1})_{ij} = \sum_{r=1}^n (M^k)_{ir} \cdot m_{rj}.$$
     Bontsuk két részre az indexeket $r$ értéke szerint:
     - Ha $r < i + k$, akkor az indukciós feltevés miatt $(M^k)_{ir} = 0$.
     - Ha $r \ge i + k$, akkor mivel $j < i + k + 1$, ebből $j \le i + k \le r$, tehát $j \le r$, azaz $j - r \le 0 < 1$. De $M$ szigorúan felső háromszög, ezért $m_{rj} = 0$.
     Így minden $r$ esetén a szorzat legalább egyik tagja zérus, tehát $(M^{k+1})_{ij} = 0$, ha $j - i < k + 1$.
   Az indukció befejeződött.

   Speciálisan $k = n$ esetén:
   Mivel $1 \le i, j \le n$, a legnagyobb lehetséges indexkülönbség a mátrixban $j - i \le n - 1 < n$.
   Ezért minden lehetséges $(i, j)$ indexpárra $j - i < n$ teljesül!
   A fenti tétel szerint tehát $(M^n)_{ij} = 0$ minden $1 \le i, j \le n$-re, vagyis
   $$M^n = 0. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Nilpotens mátrixok és a Jordan-féle normálalak.**
- Egy $M$ mátrixot **nilpotensnek** nevezünk, ha létezik olyan $k \in \mathbb{N}$, amelyre $M^k = 0$. A legkisebb ilyen $k$-t a nilpotencia fokának nevezzük.
- Minden szigorúan felső háromszögmátrix nilpotens, és nilpotencia foka legfeljebb $n$.
- Cayley–Hamilton-tétel: Egy szigorúan felső háromszögmátrix karakterisztikus polinomja $p(\lambda) = \det(\lambda I - M) = \lambda^n$, ezért $p(M) = M^n = 0$.
- Nilpotens mátrixok spektruma (összes sajátértéke) kizárólag a $0$ számból áll.
:::

## P1.13. feladat

Invertáljuk Gauss–Jordan-eliminációval az alábbi mátrixokat, és ellenőrizzük szorzással az eredményeket:
$$A = \begin{pmatrix} 2 & 3 \\ 1 & 2 \end{pmatrix}, \qquad B = \begin{pmatrix} 1 & 2 & 1 \\ 0 & 1 & -1 \\ 2 & 3 & 4 \end{pmatrix}.$$
Írjuk fel az $A$ mátrix inverzét a $2 \times 2$-es determinánsos képlettel, a $B$ mátrix inverzét pedig az adjungált mátrix (ferde kifejtési tétel) képletével is!

**Megoldás.**

1. **Az $A$ mátrix invertálása:**
   Gauss–Jordan-elimináció az $(A \mid I)$ blokkmátrixon:
   $$\left(\begin{array}{cc|cc} 2 & 3 & 1 & 0 \\ 1 & 2 & 0 & 1 \end{array}\right)
   \xrightarrow{S_1 \leftrightarrow S_2}
   \left(\begin{array}{cc|cc} 1 & 2 & 0 & 1 \\ 2 & 3 & 1 & 0 \end{array}\right)
   \xrightarrow{S_2 - 2S_1}
   \left(\begin{array}{cc|cc} 1 & 2 & 0 & 1 \\ 0 & -1 & 1 & -2 \end{array}\right)$$
   $$\xrightarrow{-S_2}
   \left(\begin{array}{cc|cc} 1 & 2 & 0 & 1 \\ 0 & 1 & -1 & 2 \end{array}\right)
   \xrightarrow{S_1 - 2S_2}
   \left(\begin{array}{cc|cc} 1 & 0 & 2 & -3 \\ 0 & 1 & -1 & 2 \end{array}\right)$$
   Tehát:
   $$A^{-1} = \begin{pmatrix} 2 & -3 \\ -1 & 2 \end{pmatrix}.$$
   *Képlettel:* $\det(A) = 2 \cdot 2 - 3 \cdot 1 = 1$.
   A $2 \times 2$-es inverzképlet: $\frac{1}{\det A}\begin{pmatrix} d & -b \\ -c & a \end{pmatrix} = \begin{pmatrix} 2 & -3 \\ -1 & 2 \end{pmatrix}$. Megegyezik!
   *Ellenőrzés:* $\begin{pmatrix} 2 & 3 \\ 1 & 2 \end{pmatrix}\begin{pmatrix} 2 & -3 \\ -1 & 2 \end{pmatrix} = \begin{pmatrix} 4-3 & -6+6 \\ 2-2 & -3+4 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$. Helyes!

2. **A $B$ mátrix invertálása:**
   Gauss–Jordan az $(B \mid I)$ blokkmátrixon:
   $$\left(\begin{array}{ccc|ccc}
   1 & 2 & 1 & 1 & 0 & 0 \\
   0 & 1 & -1 & 0 & 1 & 0 \\
   2 & 3 & 4 & 0 & 0 & 1
   \end{array}\right)
   \xrightarrow{S_3 - 2S_1}
   \left(\begin{array}{ccc|ccc}
   1 & 2 & 1 & 1 & 0 & 0 \\
   0 & 1 & -1 & 0 & 1 & 0 \\
   0 & -1 & 2 & -2 & 0 & 1
   \end{array}\right)$$
   $$\xrightarrow{S_3 + S_2}
   \left(\begin{array}{ccc|ccc}
   1 & 2 & 1 & 1 & 0 & 0 \\
   0 & 1 & -1 & 0 & 1 & 0 \\
   0 & 0 & 1 & -2 & 1 & 1
   \end{array}\right)$$
   Visszafelé eliminálva a 3. oszlopból:
   $$\xrightarrow{\substack{S_2 + S_3 \\ S_1 - S_3}}
   \left(\begin{array}{ccc|ccc}
   1 & 2 & 0 & 3 & -1 & -1 \\
   0 & 1 & 0 & -2 & 2 & 1 \\
   0 & 0 & 1 & -2 & 1 & 1
   \end{array}\right)
   \xrightarrow{S_1 - 2S_2}
   \left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 7 & -5 & -3 \\
   0 & 1 & 0 & -2 & 2 & 1 \\
   0 & 0 & 1 & -2 & 1 & 1
   \end{array}\right)$$
   Tehát:
   $$B^{-1} = \begin{pmatrix} 7 & -5 & -3 \\ -2 & 2 & 1 \\ -2 & 1 & 1 \end{pmatrix}.$$

   *Kiszámítás az adjungált mátrix képletével:*
   A determináns: kifejtve az 1. oszlop szerint:
   $\det(B) = 1(4 - (-3)) + 2(-2 - 1) = 7 - 6 = 1$.
   Az előjeles aldeterminánsok mátrixa $C = (C_{ij})$:
   - $C_{11} = +\begin{vmatrix} 1 & -1 \\ 3 & 4 \end{vmatrix} = 7$, \quad $C_{12} = -\begin{vmatrix} 0 & -1 \\ 2 & 4 \end{vmatrix} = -2$, \quad $C_{13} = +\begin{vmatrix} 0 & 1 \\ 2 & 3 \end{vmatrix} = -2$.
   - $C_{21} = -\begin{vmatrix} 2 & 1 \\ 3 & 4 \end{vmatrix} = -(8-3) = -5$, \quad $C_{22} = +\begin{vmatrix} 1 & 1 \\ 2 & 4 \end{vmatrix} = 4-2 = 2$, \quad $C_{23} = -\begin{vmatrix} 1 & 2 \\ 2 & 3 \end{vmatrix} = -(3-4) = 1$.
   - $C_{31} = +\begin{vmatrix} 2 & 1 \\ 1 & -1 \end{vmatrix} = -2-1 = -3$, \quad $C_{32} = -\begin{vmatrix} 1 & 1 \\ 0 & -1 \end{vmatrix} = -(-1) = 1$, \quad $C_{33} = +\begin{vmatrix} 1 & 2 \\ 0 & 1 \end{vmatrix} = 1$.
   Az adjungált mátrix az előjeles aldeterminánsok transzponáltja:
   $$\operatorname{adj}(B) = C^T = \begin{pmatrix} 7 & -5 & -3 \\ -2 & 2 & 1 \\ -2 & 1 & 1 \end{pmatrix}.$$
   Mivel $\det(B) = 1$, $B^{-1} = \frac{1}{\det B}\operatorname{adj}(B) = \begin{pmatrix} 7 & -5 & -3 \\ -2 & 2 & 1 \\ -2 & 1 & 1 \end{pmatrix}$. A két eredmény tökéletesen megegyezik!
   *Ellenőrzés:*
   $$\begin{pmatrix} 1 & 2 & 1 \\ 0 & 1 & -1 \\ 2 & 3 & 4 \end{pmatrix}\begin{pmatrix} 7 & -5 & -3 \\ -2 & 2 & 1 \\ -2 & 1 & 1 \end{pmatrix} = \begin{pmatrix} 7-4-2 & -5+4+1 & -3+2+1 \\ 0-2+2 & 0+2-1 & 0+1-1 \\ 14-6-8 & -10+6+4 & -6+3+4 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}. \quad \text{Helyes!}$$

::: elmelet
**Elméleti háttér — Invertálás: Gauss–Jordan és a ferde kifejtési tétel.**
1. **Gauss–Jordan-módszer:** Az $(A \mid I)$ mátrixot elemi sorműveletekkel $(I \mid A^{-1})$ alakra hozzuk. Ha a bal oldalon fellép egy csupa 0 sor, $A$ nem invertálható.
2. **Klasszikus adjungált képlete (Cramer-szabály / ferde kifejtés):**
   $$A^{-1} = \frac{1}{\det(A)} \operatorname{adj}(A) = \frac{1}{\det(A)} C^T,$$
   ahol $C_{ij} = (-1)^{i+j} M_{ij}$ az $(i, j)$ helyhez tartozó előjeles aldetermináns.
   Ferde kifejtési tétel: $A \cdot C^T = \det(A) I$.
:::

## P1.14. feladat

(a) Bizonyítsuk be, hogy ha $A, B \in \mathbb{R}^{n \times n}$ invertálható mátrixok, akkor az $AB$ szorzatuk is invertálható, és $(AB)^{-1} = B^{-1} A^{-1}$.
(b) Igaz-e az analóg állítás összeadásra, azaz invertálható mátrixok összege mindig invertálható-e? Adjunk bizonyítást vagy ellenpéldát!

**Megoldás.**

**(a) Bizonyítás:**
Egy $X$ mátrix pontosan akkor inverze az $AB$ mátrixnak, ha $(AB)X = I$ és $X(AB) = I$.
Tekintsük a jelölt mátrixot: $X = B^{-1} A^{-1}$.
Számítsuk ki a két szorzatot a mátrixszorzás asszociativitását felhasználva:
1. Jobbról szorozva:
   $$(AB)(B^{-1} A^{-1}) = A(B B^{-1})A^{-1} = A(I)A^{-1} = A A^{-1} = I.$$
2. Balról szorozva:
   $$(B^{-1} A^{-1})(AB) = B^{-1}(A^{-1} A)B = B^{-1}(I)B = B^{-1} B = I.$$
Mivel mindkét oldali szorzat az egységmátrixot adja, a definíció alapján $AB$ valóban invertálható, és inverze
$$(AB)^{-1} = B^{-1} A^{-1}. \qquad \blacksquare$$

**(b) Ellenpélda összegre:**
**NEM igaz**, invertálható mátrixok összege nem feltétlenül invertálható (sőt lehet akár a nullmátrix is).
*Konkrét ellenpélda:*
Legyen $A = I_n$ és $B = -I_n$.
Mindkét mátrix invertálható, hiszen $I_n^{-1} = I_n$ és $(-I_n)^{-1} = -I_n$ (determinánsaik $1$, illetve $(-1)^n \ne 0$).
Összegük azonban:
$$A + B = I_n + (-I_n) = 0_{n \times n},$$
ami a csupa nulla mátrix. A nullmátrix nyilvánvalóan nem invertálható (determinánsa 0).

*Nem triviális ellenpélda ($A + B \ne 0$):*
$$A = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}, \qquad B = \begin{pmatrix} -1 & 0 \\ 0 & 1 \end{pmatrix}.$$
Mindkettő invertálható ($\det A = 1, \det B = -1$), de összegük:
$$A + B = \begin{pmatrix} 0 & 0 \\ 0 & 2 \end{pmatrix},$$
amelynek első sora csupa 0, determinánsa $0 \cdot 2 - 0 \cdot 0 = 0$, így nem invertálható.

::: elmelet
**Elméleti háttér — A multiplikatív csoport és a nem-lineáris inverzképzés.**
- Az invertálható $n \times n$-es valós mátrixok a szorzásra nézve csoportot alkotnak, az **általános lineáris csoportot**: $\operatorname{GL}(n, \mathbb{R})$. A csoportműveletben az inverzképzés megfordítja a sorrendet: $(A_1 A_2 \dots A_k)^{-1} = A_k^{-1} \dots A_2^{-1} A_1^{-1}$.
- Az invertálható mátrixok halmaza **nem zárt az összeadásra**, így nem alkot alteret vagy részgyűrűt.
- Determináns szorzástétele: $\det(AB) = \det(A)\det(B)$. Mivel $\det(A) \ne 0$ és $\det(B) \ne 0$, ezért $\det(AB) \ne 0$.
:::

## P1.15. feladat

(a) Bizonyítsuk be az indexes definíció alapján, hogy ha $A \in \mathbb{R}^{n \times m}$ és $B \in \mathbb{R}^{m \times k}$, akkor $(AB)^T = B^T A^T$.
(b) Mutassuk meg, hogy ha $A \in \mathbb{R}^{n \times n}$ invertálható mátrix, akkor a transzponáltja $A^T$ is invertálható, és $(A^T)^{-1} = (A^{-1})^T$.

**Megoldás.**

**(a) A szorzat transzponáltjának levezetése:**
Legyen $C = AB$. Mivel $A \in \mathbb{R}^{n \times m}$ és $B \in \mathbb{R}^{m \times k}$, a szorzat $C \in \mathbb{R}^{n \times k}$, így $C^T \in \mathbb{R}^{k \times n}$.
A jobb oldalon $B^T \in \mathbb{R}^{k \times m}$ és $A^T \in \mathbb{R}^{m \times n}$, szorzatuk mérete szintén $k \times n$.
Vizsgáljuk meg a mátrixok $(i, j)$-edik elemét, ahol $1 \le i \le k$ és $1 \le j \le n$:
$$((AB)^T)_{ij} = (AB)_{ji}.$$
A mátrixszorzás definíciója szerint:
$$(AB)_{ji} = \sum_{r=1}^m a_{jr} b_{ri}.$$
A valós számok szorzásának kommutativitása miatt a tényezők sorrendje felcserélhető:
$$\sum_{r=1}^m a_{jr} b_{ri} = \sum_{r=1}^m b_{ri} a_{jr}.$$
Alkalmazzuk a transzponált definícióját a mátrixelemekre: $b_{ri} = (B^T)_{ir}$ és $a_{jr} = (A^T)_{rj}$:
$$\sum_{r=1}^m b_{ri} a_{jr} = \sum_{r=1}^m (B^T)_{ir} (A^T)_{rj} = (B^T A^T)_{ij}.$$
Mivel a két mátrix mérete és minden eleme megegyezik, ezért $(AB)^T = B^T A^T$. $\blacksquare$

**(b) A transzponált inverzének levezetése:**
Mivel $A$ invertálható, létezik olyan $A^{-1} \in \mathbb{R}^{n \times n}$ mátrix, amelyre:
$$A A^{-1} = I_n \quad \text{és} \quad A^{-1} A = I_n.$$
Vegyük mindkét egyenlőség transzponáltját:
1. Az $A A^{-1} = I_n$ transzponálásával:
   $$(A A^{-1})^T = I_n^T.$$
   Mivel $I_n^T = I_n$, és az (a) rész szerint a szorzat transzponáltja a transzponáltak fordított sorrendű szorzata:
   $$(A^{-1})^T A^T = I_n.$$
2. Hasonlóan az $A^{-1} A = I_n$ transzponálásával:
   $$(A^{-1} A)^T = I_n^T \implies A^T (A^{-1})^T = I_n.$$
A két egyenlőség azt jelenti, hogy az $A^T$ mátrixot az $(A^{-1})^T$ mátrixszal mind jobbról, mind balról megszorozva az egységmátrixot kapjuk.
Az inverz definíciója szerint ez pontosan azt fejezi ki, hogy $A^T$ invertálható, és inverze:
$$(A^T)^{-1} = (A^{-1})^T. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Transzponálás és inverzképzés kapcsolata.**
- A transzponálás és az invertálás operátora **felcserélhető** egymással: $(A^T)^{-1} = (A^{-1})^T$. Ezt a mátrixot gyakran $A^{-T}$-vel jelölik.
- Következmény szimmetrikus mátrixokra: ha $A$ szimmetrikus ($A = A^T$) és invertálható, akkor az inverze is szimmetrikus: $(A^{-1})^T = (A^T)^{-1} = A^{-1}$.
- Következmény ortogonális mátrixokra: egy négyzetes mátrix pontosan akkor ortogonális, ha $A^T = A^{-1}$.
:::

## P1.16. feladat

Egy invertálható $A \in \mathbb{R}^{n \times n}$ mátrix első két oszlopát megcseréljük, és a kapott új mátrixot $B$-vel jelöljük. Hogyan kapható meg a $B^{-1}$ mátrix az eredeti $A^{-1}$ mátrixból?

**Megoldás.**

*Megoldás:*
Oszlopműveleteket jobbról szorzással tudunk kifejezni elemi mátrixokkal.
Legyen $P \in \mathbb{R}^{n \times n}$ az a permutációmátrix, amelyet az egységmátrix első két oszlopának (vagy sorának) felcserélésével kapunk:
$$P = \begin{pmatrix}
0 & 1 & 0 & \dots & 0 \\
1 & 0 & 0 & \dots & 0 \\
0 & 0 & 1 & \dots & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
0 & 0 & 0 & \dots & 1
\end{pmatrix}.$$
Tudjuk, hogy ha egy tetszőleges mátrixot jobbról szorzunk $P$-vel, akkor annak az első két oszlopa cserélődik fel:
$$B = A P.$$
Mivel $P$ önmaga inverze ($P^2 = I \implies P^{-1} = P$), és $A$ invertálható, ezért $B$ is invertálható, és inverze:
$$B^{-1} = (A P)^{-1} = P^{-1} A^{-1} = P A^{-1}.$$
Mivel $P$-vel való *balról* szorzás a mátrix első két sorát cseréli fel, a kapott $P A^{-1}$ mátrix pontosan az $A^{-1}$ mátrix első két sorának felcserélésével áll elő!

**Végeredmény:**
Az új $B$ mátrix inverzét úgy kapjuk, hogy az eredeti $A^{-1}$ mátrix **első két sorát felcseréljük**.

::: elmelet
**Elméleti háttér — Elemi mátrixok és az inverz transzformációja.**
- **Soroperáció $A$-n:** $A \to E A \implies (E A)^{-1} = A^{-1} E^{-1}$, ami az $A^{-1}$ mátrixon **oszlopoperációként** jelentkezik jobbról!
- **Oszlopoperáció $A$-n:** $A \to A E \implies (A E)^{-1} = E^{-1} A^{-1}$, ami az $A^{-1}$ mátrixon **soroperációként** jelentkezik balról!
- Az oszlopcsere permutációmátrixa szimmetrikus és öninverz ($P = P^T = P^{-1}$). Ezért az oszlopcsere az eredeti mátrixon sorcserét eredményez az inverzen.
:::

## P1.17. feladat

Döntsük el, melyek igazak az alábbi következtetések közül! A hamis állításokra adjunk konkrét ellenpéldát, az igazakat bizonyítsuk be!

(a) Ha az $A\mathbf{x} = \mathbf{b}$ lineáris egyenletrendszernek létezik egynél több megoldása, akkor az $A\mathbf{x} = \mathbf{0}$ homogén lineáris egyenletrendszernek létezik nemtriviális megoldása.

(b) Ha az $A\mathbf{x} = \mathbf{0}$ homogén lineáris egyenletrendszernek létezik nemtriviális megoldása, akkor az $A\mathbf{x} = \mathbf{b}$ lineáris egyenletrendszernek létezik egynél több megoldása.

(c) Ha $A \in \mathbb{R}^{5 \times 5}$, $\mathbf{b} \in \mathbb{R}^5$, és az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek egyértelmű a megoldása, akkor bármely $\mathbf{c} \in \mathbb{R}^5$ esetén létezik megoldása az $A\mathbf{x} = \mathbf{c}$ egyenletrendszernek is.

(d) Ha $A \in \mathbb{R}^{6 \times 5}$, $\mathbf{b} \in \mathbb{R}^6$, és az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek egyértelmű a megoldása, akkor bármely $\mathbf{c} \in \mathbb{R}^6$ esetén létezik megoldása az $A\mathbf{x} = \mathbf{c}$ egyenletrendszernek is.

**Megoldás.**

**(a) IGAZ.**
*Bizonyítás:* Tegyük fel, hogy $\mathbf{x}_1 \ne \mathbf{x}_2$ két különböző megoldása az $A\mathbf{x} = \mathbf{b}$ rendszernek.
Tekintsük a különbségüket: $\mathbf{x}_0 = \mathbf{x}_1 - \mathbf{x}_2$.
Mivel $\mathbf{x}_1 \ne \mathbf{x}_2$, ezért $\mathbf{x}_0 \ne \mathbf{0}$ (nem a zérusvektor).
Számítsuk ki $A\mathbf{x}_0$-at a disztributivitás alapján:
$$A\mathbf{x}_0 = A(\mathbf{x}_1 - \mathbf{x}_2) = A\mathbf{x}_1 - A\mathbf{x}_2 = \mathbf{b} - \mathbf{b} = \mathbf{0}.$$
Tehát $\mathbf{x}_0$ a homogén rendszernek egy nemtriviális megoldása. $\blacksquare$

**(b) HAMIS.**
*Indoklás / Ellenpélda:*
Lehet, hogy az $A\mathbf{x} = \mathbf{0}$ homogén rendszernek van nemtriviális megoldása, de az $A\mathbf{x} = \mathbf{b}$ inhomogén rendszer ellentmondásos (nincs egyetlen megoldása sem, így egynél több sincs).
*Konkrét ellenpélda:*
Legyen $A = \begin{pmatrix} 1 & 1 \\ 0 & 0 \end{pmatrix}$ és $\mathbf{b} = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$.
- A homogén egyenletrendszer: $x_1 + x_2 = 0$, amelynek nemtriviális megoldása például $(1, -1) \ne (0, 0)$.
- Az inhomogén egyenletrendszer:
  $$\begin{aligned} x_1 + x_2 &= 0 \\ 0x_1 + 0x_2 &= 1 \end{aligned}$$
  A második egyenlet ellentmondásos ($0 = 1$), így a rendszernek **0 megoldása van**, nem pedig egynél több!

**(c) IGAZ.**
*Bizonyítás:* Itt a mátrix négyzetes: $A \in \mathbb{R}^{5 \times 5}$.
Ha az $A\mathbf{x} = \mathbf{b}$ rendszernek létezik egyértelmű megoldása, akkor a lépcsős alakban nincs szabad paraméter, ami azt jelenti, hogy a rang maximális:
$$\operatorname{rang}(A) = 5.$$
Mivel egy $5 \times 5$-ös mátrix rangja 5, a determinánsa nem nulla: $\det(A) \ne 0$, következésképpen az $A$ mátrix **invertálható**.
Ekkor tetszőleges jobb oldali $\mathbf{c} \in \mathbb{R}^5$ vektor esetén:
$$\mathbf{x} = A^{-1} \mathbf{c}$$
mindig jól definiált, és létező megoldása (sőt egyértelmű megoldása) az $A\mathbf{x} = \mathbf{c}$ egyenletrendszernek. $\blacksquare$

**(d) HAMIS.**
*Indoklás / Ellenpélda:*
Itt a mátrix téglalap alakú: $A \in \mathbb{R}^{6 \times 5}$ (több egyenlet van, mint ismeretlen).
A feltétel szerint létezik egyértelmű megoldás egy konkrét $\mathbf{b}$-re, ami annyit jelent, hogy $\operatorname{rang}(A) = 5$ (az oszlopok száma).
A képterület (a mátrix oszlopvektorai által kifeszített altér $\mathbb{R}^6$-ban) dimenziója megegyezik a ranggal:
$$\dim \operatorname{Im}(A) = \operatorname{rang}(A) = 5.$$
Mivel az értelmezési tartomány $\mathbb{R}^6$ hatdimenziós, az 5-dimenziós altér **nem fedi le a teljes teret**:
$$\operatorname{Im}(A) \subsetneq \mathbb{R}^6.$$
Ezért létezik olyan $\mathbf{c} \in \mathbb{R}^6$, amely nem esik bele az oszloptérbe ($\mathbf{c} \notin \operatorname{Im}(A)$). Erre a $\mathbf{c}$-re az $A\mathbf{x} = \mathbf{c}$ rendszer inkonzisztens, nincs megoldása!
*Konkrét ellenpélda:*
Legyen $A$ az első 5 egységvektorból álló $6 \times 5$-ös mátrix: $A\mathbf{x} = (x_1, x_2, x_3, x_4, x_5, 0)^T$.
Ha $\mathbf{b} = (1, 0, 0, 0, 0, 0)^T$, a megoldás egyértelmű: $\mathbf{x} = (1, 0, 0, 0, 0)^T$.
De ha $\mathbf{c} = (0, 0, 0, 0, 0, 1)^T$, akkor az egyenletrendszer utolsó egyenlete $0 = 1$, aminek nincs megoldása!

::: elmelet
**Elméleti háttér — A Fredholm-alternatíva és a rang-nullitási tétel.**
- **Négyzetes mátrixok ($n = m$):** az egyértelműség és a minden jobb oldalra való megoldhatóság ekvivalens:
  $A\mathbf{x} = \mathbf{0}$ csak triviális megoldás $\iff \operatorname{rang} A = n \iff \det A \ne 0 \iff \forall \mathbf{c}: A\mathbf{x} = \mathbf{c}$ megoldható és egyértelmű.
- **Téglalap mátrixok ($n \ne m$):**
  - Ha $n > m$ (túlhatározott): az oszlopok lehetnek függetlenek (egyértelmű megoldás lehetséges), de a képterület sohasem lehet a teljes $\mathbb{R}^n$, így mindig van olyan $\mathbf{c}$, amire nincs megoldás.
  - Ha $n < m$ (alulhatározott): ha konzisztens, mindig végtelen sok megoldás van, egyértelmű megoldás sohasem létezik.
:::

---

# 2. feladatsor — Mátrixinverz, mátrixegyenletek és altér / rang

## P2.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ egész számra
$$1 \cdot 2 + 2 \cdot 3 + 3 \cdot 4 + \dots + n(n + 1) = \frac{n(n + 1)(n + 2)}{3}.$$

**Megoldás.**

*Bizonyítás teljes indukcióval $n$-re:*

1. **Bázislépés ($n = 1$):**
   A bal oldal egyetlen tagból áll:
   $$\text{Bal oldal} = 1 \cdot (1 + 1) = 1 \cdot 2 = 2.$$
   A jobb oldal képlete $n = 1$-re:
   $$\text{Jobb oldal} = \frac{1(1 + 1)(1 + 2)}{3} = \frac{1 \cdot 2 \cdot 3}{3} = 2.$$
   Mivel mindkét oldal értéke 2, az állítás $n = 1$-re igaz.

2. **Indukciós feltevés:**
   Tegyük fel, hogy valamely rögzített $n \ge 1$ egészre az állítás igaz, vagyis:
   $$\sum_{k=1}^n k(k + 1) = \frac{n(n + 1)(n + 2)}{3}.$$

3. **Indukciós lépés ($n \to n + 1$):**
   Meg kell mutatnunk, hogy az állítás $n + 1$-re is teljesül:
   $$\sum_{k=1}^{n+1} k(k + 1) = \frac{(n + 1)(n + 2)(n + 3)}{3}.$$
   Bontsuk ketté a bal oldali összeget az első $n$ tagra és az $(n + 1)$-edik tagra:
   $$\sum_{k=1}^{n+1} k(k + 1) = \left( \sum_{k=1}^n k(k + 1) \right) + (n + 1)(n + 2).$$
   Alkalmazzuk az indukciós feltevést az összegre:
   $$= \frac{n(n + 1)(n + 2)}{3} + (n + 1)(n + 2).$$
   Hozzunk közös nevezőre, és emeljük ki az $(n + 1)(n + 2)$ közös tényezőt:
   $$= \frac{n(n + 1)(n + 2) + 3(n + 1)(n + 2)}{3} = \frac{(n + 1)(n + 2)(n + 3)}{3}.$$
   Ez pontosan a bizonyítandó formula $n + 1$-re.

A teljes indukció elve alapján az állítás minden $n \ge 1$ egész számra igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Teljes indukció és teleszkopikus összegek.**
*A teljes indukció felépítése:*
1. **Bázislépés (alaplépés):** ellenőrizzük az állítást a legkisebb értékre ($n = 1$ vagy $n_0$).
2. **Indukciós lépés:** feltesszük, hogy igaz $n$-re (indukciós hipotézis), és ebből levezetjük $n + 1$-re.
*Kombinatorikai háttér:* $k(k+1) = 2\binom{k+1}{2}$, így a szumma $2\sum_{k=1}^n \binom{k+1}{2} = 2\binom{n+2}{3} = \frac{n(n+1)(n+2)}{3}$ (hokibot-identitás).
:::

## P2.2. feladat

Bizonyítsuk be teljes indukcióval a köbök összegére vonatkozó azonosságot: minden $n \ge 1$ egész számra
$$1^3 + 2^3 + 3^3 + \dots + n^3 = \left(\frac{n(n + 1)}{2}\right)^2 = (1 + 2 + \dots + n)^2.$$

**Megoldás.**

*Bizonyítás teljes indukcióval:*
Tudjuk, hogy $1 + 2 + \dots + n = \frac{n(n + 1)}{2}$. Így a bizonyítandó állítás:
$$S_n = \sum_{k=1}^n k^3 = \frac{n^2 (n + 1)^2}{4}.$$

1. **Bázislépés ($n = 1$):**
   Bal oldal: $1^3 = 1$.
   Jobb oldal: $\frac{1^2 \cdot 2^2}{4} = \frac{4}{4} = 1$.
   Az állítás $n = 1$-re igaz.

2. **Indukciós feltevés:**
   Tegyük fel, hogy $S_n = \frac{n^2 (n + 1)^2}{4}$ valamely $n \ge 1$-re.

3. **Indukciós lépés ($n \to n + 1$):**
   $$S_{n+1} = S_n + (n + 1)^3 = \frac{n^2 (n + 1)^2}{4} + (n + 1)^3.$$
   Emeljünk ki $(n + 1)^2$-et a számlálóból:
   $$S_{n+1} = (n + 1)^2 \left( \frac{n^2}{4} + n + 1 \right) = (n + 1)^2 \left( \frac{n^2 + 4n + 4}{4} \right).$$
   Mivel $n^2 + 4n + 4 = (n + 2)^2$:
   $$S_{n+1} = \frac{(n + 1)^2 (n + 2)^2}{4} = \left(\frac{(n + 1)(n + 2)}{2}\right)^2.$$
   Ez éppen a formula $n + 1$-re.

A teljes indukció elve szerint az állítás minden $n \ge 1$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Nicomachus tétele és a köbösszegek geometriája.**
- Nicomachus tétele: a köbök páratlan számok csoportjainak összegeként is előállnak:
  $1^3 = 1$, $2^3 = 3 + 5$, $3^3 = 7 + 9 + 11$, $4^3 = 13 + 15 + 17 + 19$.
  Összegezve az első $n$ csoportot, az első $1 + 2 + \dots + n = N$ darab páratlan szám összegét kapjuk, ami éppen $N^2 = \left(\frac{n(n+1)}{2}\right)^2$.
- Algebrai bizonyítás: $(k+1)^4 - k^4 = 4k^3 + 6k^2 + 4k + 1$ összegzésével.
:::

## P2.3. feladat

Igazoljuk teljes indukcióval, hogy minden $n \ge 1$ egész szám esetén
$$27 \mid 10^n + 18n - 1.$$

**Megoldás.**

Legyen $A_n = 10^n + 18n - 1$. Azt kell belátnunk, hogy $27 \mid A_n$ minden $n \in \mathbb{N}$ esetén.

1. **Bázislépés ($n = 1$):**
   $$A_1 = 10^1 + 18(1) - 1 = 10 + 18 - 1 = 27.$$
   Mivel $27 = 27 \cdot 1$, így $27 \mid A_1$ teljesül.

2. **Indukciós feltevés:**
   Tegyük fel, hogy valamely $n \ge 1$-re $27 \mid A_n$, azaz $10^n + 18n - 1 = 27k$ valamely $k \in \mathbb{Z}$ egészre.

3. **Indukciós lépés ($n \to n + 1$):**
   Vizsgáljuk az $A_{n+1}$ kifejezést:
   $$A_{n+1} = 10^{n+1} + 18(n + 1) - 1 = 10 \cdot 10^n + 18n + 18 - 1 = 10 \cdot 10^n + 18n + 17.$$
   Fejezzük ki $A_{n+1}$-et $A_n$ segítségével: vonjunk ki és adjunk hozzá megfelelő tagokat ($10 A_n$):
   $$A_{n+1} - 10 A_n = (10 \cdot 10^n + 18n + 17) - 10(10^n + 18n - 1)$$
   $$= 10 \cdot 10^n + 18n + 17 - 10 \cdot 10^n - 180n + 10$$
   $$= -162n + 27.$$
   Ebből:
   $$A_{n+1} = 10 A_n - 162n + 27 = 10 A_n + 27(1 - 6n).$$
   Mivel az indukciós feltevés szerint $27 \mid A_n$, ezért $27 \mid 10 A_n$.
   A második tagban $27(1 - 6n)$ nyilvánvalóan osztható 27-tel.
   Két 27-tel osztható szám összege szintén osztható 27-tel, így:
   $$27 \mid A_{n+1}.$$
A teljes indukció elve alapján az oszthatóság minden $n \ge 1$ egészre fennáll. $\blacksquare$

::: elmelet
**Elméleti háttér — Oszthatósági állítások indukcióval és binomiális tétellel.**
- Indukciós különbségképzés: $A_{n+1} - c A_n$ kiszámítása kiküszöböli az exponenciális növekedést, a maradék polinom oszthatósága pedig közvetlenül ellenőrizhető.
- Alternatív módszer (binomiális tétel):
  $10^n = (1 + 9)^n = 1 + \binom{n}{1} 9 + \binom{n}{2} 9^2 + \dots = 1 + 9n + 81\binom{n}{2} + \dots$
  Ekkor $10^n + 18n - 1 = 27n + 81(\dots)$, ami közvetlenül osztható 27-tel!
:::

## P2.4. feladat

Igazoljuk, hogy minden pozitív egész $n$ esetén
$$2^n \mid (n + 1)(n + 2) \cdots (2n).$$

**Megoldás.**

*1. Megoldás (zárt alakkal és faktoriálisokkal):*
Bővítsük a kifejezést $n!$-sal:
$$(n + 1)(n + 2) \cdots (2n) = \frac{1 \cdot 2 \cdots n \cdot (n + 1) \cdots (2n)}{1 \cdot 2 \cdots n} = \frac{(2n)!}{n!}.$$
Írjuk fel a számlálót különválasztva a páros és páratlan tényezőket:
$$(2n)! = [1 \cdot 3 \cdot 5 \cdots (2n - 1)] \cdot [2 \cdot 4 \cdot 6 \cdots (2n)].$$
A második zárójelben $n$ darab páros szám szorzata áll. Emeljünk ki minden tényezőből egy 2-est:
$$2 \cdot 4 \cdot 6 \cdots (2n) = 2^n \cdot (1 \cdot 2 \cdot 3 \cdots n) = 2^n \cdot n!$$
Ezt visszahelyettesítve a hányadosba:
$$\frac{(2n)!}{n!} = \frac{[1 \cdot 3 \cdot 5 \cdots (2n - 1)] \cdot 2^n \cdot n!}{n!} = 2^n \cdot [1 \cdot 3 \cdot 5 \cdots (2n - 1)].$$
Mivel $1 \cdot 3 \cdot 5 \cdots (2n - 1)$ egész szám, a szorzat nyilvánvalóan osztható $2^n$-nel, sőt a hányados pontosan a páratlan számok szorzata $2n-1$-ig. $\blacksquare$

*2. Megoldás (teljes indukcióval):*
Legyen $P_n = (n + 1)(n + 2) \cdots (2n)$.
- *Bázis ($n = 1$):* $P_1 = 2$, erre $2^1 \mid 2$ teljesül.
- *Indukciós lépés ($n \to n + 1$):*
  $$P_{n+1} = (n + 2)(n + 3) \cdots (2n)(2n + 1)(2n + 2).$$
  Vegyük észre, hogy $2n + 2 = 2(n + 1)$, így:
  $$P_{n+1} = (n + 1)(n + 2) \cdots (2n) \cdot \frac{2(n + 1)(2n + 1)}{n + 1} = P_n \cdot 2(2n + 1).$$
  Ha $2^n \mid P_n$, akkor $P_n = 2^n \cdot k$, így $P_{n+1} = 2^n k \cdot 2(2n + 1) = 2^{n+1} \cdot [k(2n + 1)]$, tehát $2^{n+1} \mid P_{n+1}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Legendre-formula és 2-adikus rend.**
- A szorzat valójában $\frac{(2n)!}{n!} = 2^n (2n-1)!!$.
- A 2 prím kitevője (Legendre-formula):
  $v_2((2n)!) = \sum_{k=1}^\infty \lfloor \frac{2n}{2^k} \rfloor = n + \sum_{k=1}^\infty \lfloor \frac{n}{2^k} \rfloor = n + v_2(n!)$.
  Ezért $v_2\left(\frac{(2n)!}{n!}\right) = v_2((2n)!) - v_2(n!) = n$, ami azt jelenti, hogy a kifejezés pontosan $2^n$-nel osztható, $2^{n+1}$-gyel már sohasem!
:::

## P2.5. feladat

Legyenek $a, b \in \mathbb{Z}$ tetszőleges különböző egész számok. Bizonyítsuk be, hogy minden $n \ge 1$ egész számra
$$a - b \mid a^n - b^n.$$
Általánosítsuk az állítást páratlan $n$ kitevőkre az $a + b \mid a^n + b^n$ oszthatóságra!

**Megoldás.**

*1. Bizonyítás azonossággal:*
Minden $n \ge 1$ egészre érvényes a jól ismert algebrai azonosság:
$$a^n - b^n = (a - b)(a^{n-1} + a^{n-2}b + a^{n-3}b^2 + \dots + ab^{n-2} + b^{n-1}) = (a - b) \sum_{k=0}^{n-1} a^{n-1-k} b^k.$$
Mivel $a, b \in \mathbb{Z}$, a szumma értéke egész számok szorzata és összege, így maga is egész szám:
$$Q = \sum_{k=0}^{n-1} a^{n-1-k} b^k \in \mathbb{Z}.$$
Tehát $a^n - b^n = (a - b) Q$, ami definíció szerint azt jelenti, hogy $a - b \mid a^n - b^n$. $\blacksquare$

*2. Bizonyítás teljes indukcióval:*
- $n = 1$: $a^1 - b^1 = a - b$, és $a - b \mid a - b$ nyilvánvaló.
- Indukciós lépés: $a^{n+1} - b^{n+1} = a(a^n - b^n) + b^n(a - b)$.
  Mivel az indukciós feltevés szerint $a - b \mid a^n - b^n$, és $a - b \mid b^n(a - b)$, az összegük is osztható $(a - b)$-vel. $\blacksquare$

*Általánosítás páratlan $n$-re:*
Ha $n$ páratlan ($n = 2m + 1$), akkor helyettesítsünk $b$ helyébe $(-b)$-t az eredeti azonosságba:
$$a^n - (-b)^n = a^n - (-1)^n b^n = a^n - (-1) b^n = a^n + b^n.$$
Másrészt $a - (-b) = a + b$.
Ezért:
$$a^n + b^n = (a + b)(a^{n-1} - a^{n-2}b + a^{n-3}b^2 - \dots - ab^{n-2} + b^{n-1}).$$
Mivel a második tényező egész szám, ezért páratlan $n$ esetén valóban:
$$a + b \mid a^n + b^n. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — A polinom-maradéktétel és az oszthatóság kapcsolata.**
- Az $x^n - b^n$ polinomnak $x = b$ gyöke, ezért a Bézout-tétel (gyöktényező kiemelése) szerint osztható $(x - b)$-vel $\mathbb{Z}[x]$-ben.
- Páros $n$ esetén $a + b \mid a^n - b^n$ is teljesül, mivel $a^n - b^n = (a^2)^{n/2} - (b^2)^{n/2}$, ami osztható $a^2 - b^2 = (a-b)(a+b)$-vel.
- Fontos számelméleti következmény: kongruenciák hatványozhatósága ($a \equiv b \pmod m \implies a^n \equiv b^n \pmod m$).
:::

## P2.6. feladat

Bizonyítsuk be, hogy ha $2^n - 1$ prímszám ($n \ge 2$), akkor az $n$ kitevőnek is szükségszerűen prímszámnak kell lennie!

**Megoldás.**

*Bizonyítás indirekt úton:*
Tegyük fel, hogy $2^n - 1$ prím, de $n$ összetett szám.
Mivel $n$ összetett, felírható két 1-nél szigorúan nagyobb egész szorzataként:
$$n = a \cdot b, \qquad \text{ahol } 1 < a < n \text{ és } 1 < b < n.$$
Írjuk át a $2^n - 1$ kifejezést:
$$2^n - 1 = 2^{ab} - 1 = (2^a)^b - 1.$$
Alkalmazzuk az $x^b - 1 = (x - 1)(x^{b-1} + x^{b-2} + \dots + 1)$ algebrai azonosságot az $x = 2^a$ helyettesítéssel:
$$2^n - 1 = (2^a - 1) \cdot \left( (2^a)^{b-1} + (2^a)^{b-2} + \dots + 2^a + 1 \right).$$
Becsüljük meg a két tényező nagyságát:
1. Mivel $a > 1$, ezért $2^a \ge 2^2 = 4$, így az első tényező:
   $$2^a - 1 \ge 4 - 1 = 3 > 1.$$
2. Mivel $b > 1$, a második tényező legalább két tagból áll, amelyek mindegyike legalább 1, ráadásul $a \ge 2$ miatt:
   $$(2^a)^{b-1} + \dots + 1 > 2^a - 1 \ge 3 > 1.$$
Tehát a $2^n - 1$ számot felbontottuk két, 1-nél szigorúan nagyobb egész szám szorzatára.
Ez azt jelenti, hogy $2^n - 1$ összetett szám.
Ez ellentmond annak a feltevésnek, hogy $2^n - 1$ prímszám!
A kapott ellentmondás bizonyítja, hogy az $n$ kitevő nem lehet összetett, tehát $n$ prímszám. $\blacksquare$

::: elmelet
**Elméleti háttér — Mersenne-számok és Mersenne-prímek.**
- Az $M_n = 2^n - 1$ alakú számokat **Mersenne-számoknak** nevezzük. Ha $M_p$ prím, akkor **Mersenne-prím**.
- A tétel szerint $p$ prímsége *szükséges* feltétel ahhoz, hogy $2^p - 1$ prím legyen.
- **Fontos buktató:** A feltétel NEM elégséges! Ha $p$ prím, abból nem következik, hogy $2^p - 1$ is prím.
  A legkisebb ellenpélda: $p = 11$ prím, de
  $$2^{11} - 1 = 2047 = 23 \cdot 89$$
  összetett szám!
- Euklidész–Euler-tétel: egy páros szám pontosan akkor tökéletes szám, ha $2^{p-1}(2^p - 1)$ alakú, ahol $2^p - 1$ Mersenne-prím.
:::

## P2.7. feladat

Bizonyítsuk be, hogy ha $2^n + 1$ prímszám ($n \ge 1$), akkor az $n$ kitevő szükségképpen 2-hatvány (vagyis $n = 2^k$ valamely $k \ge 0$ egészre)!

**Megoldás.**

*Bizonyítás indirekt úton:*
Tegyük fel, hogy $2^n + 1$ prím, de $n$ nem 2-hatvány.
Ekkor $n$ felbontásában szerepel legalább egy 1-nél nagyobb páratlan prímtényező, így felírható
$$n = m \cdot q$$
alakban, ahol $q > 1$ páratlan szám, $m \ge 1$ pedig egész szám.
Írjuk át a $2^n + 1$ kifejezést:
$$2^n + 1 = 2^{mq} + 1 = (2^m)^q + 1.$$
Mivel $q$ páratlan szám, alkalmazható az $a^q + b^q = (a + b)(a^{q-1} - a^{q-2}b + \dots + b^{q-1})$ algebrai azonosság az $a = 2^m$ és $b = 1$ választással:
$$2^n + 1 = (2^m + 1) \cdot \left( (2^m)^{q-1} - (2^m)^{q-2} + \dots - 2^m + 1 \right).$$
Becsüljük meg a két tényező nagyságát:
1. Mivel $m \ge 1$, az első tényező:
   $$2^m + 1 \ge 2^1 + 1 = 3 > 1.$$
2. Mivel $q > 1$ páratlan egész, ezért $q \ge 3$, így $mq > m$, amiből következik, hogy
   $$2^n + 1 = 2^{mq} + 1 > 2^m + 1.$$
Ez azt jelenti, hogy a második zárójelben lévő tényező is szigorúan nagyobb 1-nél.
Tehát a $2^n + 1$ számot felbontottuk két, 1-nél szigorúan nagyobb egész szám szorzatára.
Ez azt jelenti, hogy $2^n + 1$ összetett szám.
Ez ellentmondás, hiszen feltettük, hogy $2^n + 1$ prímszám!
A kapott ellentmondás bizonyítja, hogy $n$-nek nem lehet 1-nél nagyobb páratlan osztója, vagyis $n$ valóban 2-hatvány: $n = 2^k$ ($k \ge 0$). $\blacksquare$

::: elmelet
**Elméleti háttér — Fermat-számok és Fermat-prímek.**
- Az $F_k = 2^{2^k} + 1$ alakú számokat **Fermat-számoknak** nevezzük. Ha $F_k$ prím, akkor **Fermat-prím**.
- Fermat azt sejtette, hogy minden $F_k$ prím. Az első öt valóban prím:
  $F_0 = 3$, $F_1 = 5$, $F_2 = 17$, $F_3 = 257$, $F_4 = 65537$.
- Euler 1732-ben megcáfolta a sejtést: megmutatta, hogy $F_5$ összetett:
  $$F_5 = 2^{32} + 1 = 4294967297 = 641 \cdot 6700417.$$
- Gauss tétele: egy szabályos $n$-szög pontosan akkor szerkeszthető körzővel és vonalzóval, ha $n = 2^m \cdot p_1 p_2 \dots p_r$, ahol a $p_i$-k különböző Fermat-prímek.
:::

## P2.8. feladat

Legyenek $f, g, h \in \mathbb{R}[x]$ tetszőleges valós polinomok. Bizonyítsuk be az oszthatóság alábbi alapvető tulajdonságait:
(1) $f \mid f$ (*reflexivitás*).
(2) Ha $f \mid g$ és $g \mid h$, akkor $f \mid h$ (*tranzitivitás*).
(3) Ha $f \mid g$ és $f \mid h$, akkor $f \mid u \cdot g + v \cdot h$ minden $u, v \in \mathbb{R}[x]$ polinomra (*lineáris kombináció*).
(4) Ha $k \ne 0$, akkor $f \mid g \iff k \cdot f \mid k \cdot g$ (*egyszerűsítési szabály*).

**Megoldás.**

*A polinomok oszthatóságának definíciója:* $f \mid g$ pontosan akkor áll fenn, ha létezik olyan $q \in \mathbb{R}[x]$ polinom, amelyre $g = q \cdot f$.

**(1) Reflexivitás ($f \mid f$):**
Mivel az egységpolinomra $1 \in \mathbb{R}[x]$ érvényes, hogy $f = 1 \cdot f$, ezért a definíció szerint a hányados $q = 1$, tehát $f \mid f$. $\blacksquare$

**(2) Tranzitivitás:**
Ha $f \mid g$, akkor létezik $q_1 \in \mathbb{R}[x]$, hogy $g = q_1 \cdot f$.
Ha $g \mid h$, akkor létezik $q_2 \in \mathbb{R}[x]$, hogy $h = q_2 \cdot g$.
Ekkor helyettesítsük be $g$-t $h$ kifejezésébe:
$$h = q_2 \cdot (q_1 \cdot f) = (q_2 q_1) \cdot f.$$
Mivel $\mathbb{R}[x]$ zárt a szorzásra, $q_3 = q_2 q_1 \in \mathbb{R}[x]$ is polinom.
A definíció alapján ez pontosan azt jelenti, hogy $f \mid h$. $\blacksquare$

**(3) Lineáris kombináció:**
A feltételek szerint $g = q_1 f$ és $h = q_2 f$ alkalmas $q_1, q_2 \in \mathbb{R}[x]$ polinomokkal.
Tekintsük az $u g + v h$ kifejezést tetszőleges $u, v \in \mathbb{R}[x]$-re:
$$u \cdot g + v \cdot h = u(q_1 f) + v(q_2 f) = (u q_1 + v q_2) f.$$
Mivel $u, v, q_1, q_2 \in \mathbb{R}[x]$, a zárójeles kifejezés $Q = u q_1 + v q_2 \in \mathbb{R}[x]$ egy polinom.
Így $f \mid u g + v h$. Speciálisan $u = 1, v = \pm 1$ esetén $f \mid g \pm h$. $\blacksquare$

**(4) Egyszerűsítési szabály ($k \ne 0$):**
- $\implies$: Ha $f \mid g$, akkor $g = q f$. Szorozzuk be mindkét oldalt a $k \in \mathbb{R}[x]$ polinommal:
  $$k g = k(q f) = q(k f).$$
  Ez definíció szerint azt jelenti, hogy $kf \mid kg$.
- $\impliedby$: Tegyük fel, hogy $kf \mid kg$. Ekkor létezik olyan $q \in \mathbb{R}[x]$, hogy
  $$kg = q(kf) \iff kg - qkf = 0 \iff k(g - qf) = 0.$$
  Mivel $k \ne 0$, és a valós együtthatós polinomok gyűrűje $\mathbb{R}[x]$ integritási tartomány (nincsenek zérusosztók: két nemnulla polinom szorzata sohasem nulla), ezért
  $$g - qf = 0 \iff g = qf.$$
  Ez pontosan azt jelenti, hogy $f \mid g$. $\blacksquare$

::: elmelet
**Elméleti háttér — Oszthatóság integritási tartományokban.**
- Egy integritási tartományban (mint $\mathbb{Z}$ vagy $K[x]$) az oszthatóság kvázirendezés (reflexív és tranzitív).
- **Antiszimmetria helyett asszociáltság:** ha $f \mid g$ és $g \mid f$, akkor nem feltétlenül $f = g$, hanem létezik egy invertálható elem (egység) $c \in K^*$, hogy $f = c g$. Ekkor $f$ és $g$ **asszociáltak**.
- A zérusosztó-mentesség biztosítja az egyszerűsítési szabály érvényességét: $ab = ac$ és $a \ne 0 \implies b = c$.
:::

## P2.9. feladat

(a) Bizonyítsuk be Eukleidész módszerének adaptálásával, hogy végtelen sok $4k - 1$ (azaz $4k + 3$) alakú prímszám létezik!
(b) Igazoljuk hasonlóan, hogy végtelen sok $6k - 1$ (azaz $6k + 5$) alakú prímszám létezik!

**Megoldás.**

**(a) Végtelen sok $4k - 1$ alakú prím:**
*Bizonyítás indirekt úton:*
Tegyük fel, hogy csak véges sok $4k - 1$ alakú prím létezik.
Mivel a 3 ilyen prím, a halmazuk nem üres. Jelölje az összes ilyen prímet (a 3 kivételével, vagy mindegyiket):
$$p_1, p_2, \dots, p_r, \qquad \text{ahol } p_i \equiv 3 \pmod 4.$$
Tekintsük a következő számot:
$$N = 4 p_1 p_2 \cdots p_r - 1.$$
1. Vizsgáljuk meg $N$ maradékát 4-gyel osztva:
   $$N \equiv -1 \equiv 3 \pmod 4.$$
   Tehát $N$ egy $4k - 1$ alakú páratlan egész szám, és $N > 1$.
2. Tekintsük $N$ prímtényezős felbontását: $N = q_1 q_2 \cdots q_s$.
   Mivel $N$ páratlan, egyetlen $q_j$ sem lehet a 2.
   A páratlan prímek 4-gyel osztva vagy 1, vagy 3 maradékot adnak.
   Vegyük észre: **két $4k + 1$ alakú szám szorzata szintén $4k + 1$ alakú**:
   $$(4a + 1)(4b + 1) = 16ab + 4a + 4b + 1 = 4(4ab + a + b) + 1 \equiv 1 \pmod 4.$$
   Ha $N$ minden prímosztója $4k + 1$ alakú lenne, akkor a szorzatuk, maga $N$ is $4k + 1$ alakú lenne.
   Mivel azonban $N \equiv 3 \pmod 4$, ezért $N$-nek **rendelkeznie kell legalább egy olyan $q$ prímosztóval, amelyre $q \equiv 3 \pmod 4$**!
3. Ez a $q$ prím tehát a feltételezésünk szerinti $p_1, \dots, p_r$ prímek egyike kellene legyen: $q = p_i$ valamely $i$-re.
   Ekkor azonban $q \mid p_1 \cdots p_r$, így $q$ osztja a $4 p_1 \cdots p_r$ szorzatot is.
   Mivel $q \mid N$ is teljesül, ezért osztania kell a különbségüket is:
   $$q \mid (4 p_1 \cdots p_r) - N = 1.$$
   Ez lehetetlen, hiszen $q$ prímszám ($q \ge 3$).
A kapott ellentmondás bizonyítja, hogy végtelen sok $4k - 1$ alakú prím létezik. $\blacksquare$

**(b) Végtelen sok $6k - 1$ alakú prím:**
*Bizonyítás:*
Minden 3-nál nagyobb prím 6-tal osztva 1 vagy 5 (azaz $-1$) maradékot ad.
Tegyük fel indirekt, hogy csak véges sok $6k - 1$ alakú prím van: $p_1, p_2, \dots, p_r$.
Tekintsük az
$$M = 6 p_1 p_2 \cdots p_r - 1$$
számot.
- $M \equiv -1 \equiv 5 \pmod 6$.
- Két $6k + 1$ alakú szám szorzata szintén $6k + 1$ alakú: $(6a + 1)(6b + 1) = 6(6ab + a + b) + 1 \equiv 1 \pmod 6$.
- Mivel $M \equiv 5 \pmod 6$, és nem osztható 2-vel és 3-mal sem, prímtényezői között kell lennie legalább egy $q$ prímnek, amelyre $q \equiv 5 \equiv -1 \pmod 6$.
- Ekkor $q$ azonos valamelyik $p_i$-vel, így $q \mid 6 p_1 \dots p_r$.
- Ebből $q \mid (6 p_1 \dots p_r) - M = 1$, ami ellentmondás.
Tehát végtelen sok $6k - 1$ alakú prím létezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Dirichlet tétele számtani sorozatokban lévő prímekről.**
- **Dirichlet-tétel (1837):** Ha $a$ és $d$ relatív prím pozitív egészek ($(a, d) = 1$), akkor az $a, a + d, a + 2d, \dots$ számtani sorozatban végtelen sok prímszám található.
- Az Eukleidész-féle elemi konstrukció csak bizonyos speciális maradékosztályokra működik közvetlenül ($4k - 1, 6k - 1, 4k + 1, 3k + 1$).
- A $4k + 1$ alakú prímek végtelenségéhez az $N = (2 p_1 \dots p_r)^2 + 1$ konstrukció szükséges, ami a kvadratikus maradékok elméletét és az $x^2 \equiv -1 \pmod p$ feltételt használja.
:::

## P2.10. feladat

Határozzuk meg az $x$ és $y$ ismeretlen számjegyeket ($0 \le x, y \le 9$) úgy, hogy teljesüljenek az alábbi oszthatóságok:
(1) $72 \mid \overline{5x32y}$
(2) $45 \mid \overline{24x7y}$
(3) $99 \mid \overline{3x71y4}$.

**Megoldás.**

**(1) $72 \mid \overline{5x32y}$:**
Mivel $72 = 8 \cdot 9$, és $(8, 9) = 1$, az oszthatóság pontosan akkor teljesül, ha a szám 8-cal és 9-cel is osztható.
- *8-cal való oszthatóság:* az utolsó három számjegyből képzett $\overline{32y} = 320 + y$ számnak oszthatónak kell lennie 8-cal.
  Mivel $320 = 8 \cdot 40$, a maradék $y$, így $8 \mid y$.
  Mivel $y$ számjegy ($0 \le y \le 9$), ezért $y \in \{0, 8\}$.
- *9-cel való oszthatóság:* a számjegyek összegének oszthatónak kell lennie 9-cel:
  $$S = 5 + x + 3 + 2 + y = 10 + x + y.$$
  - Ha $y = 0$: $S = 10 + x$. Ahhoz, hogy $9 \mid 10 + x$, a számjegy $x = 8$ kell legyen ($S = 18$).
  - Ha $y = 8$: $S = 10 + x + 8 = 18 + x$. Ahhoz, hogy $9 \mid 18 + x$, $x \in \{0, 9\}$ lehet ($S = 18$ vagy $27$).
**Megoldások:** $(x, y) \in \{(8, 0), (0, 8), (9, 8)\}$. (A számok: $58320, 50328, 59328$.)

**(2) $45 \mid \overline{24x7y}$:**
$45 = 5 \cdot 9$ és $(5, 9) = 1$.
- *5-tel való oszthatóság:* az utolsó számjegy $y \in \{0, 5\}$.
- *9-cel való oszthatóság:* a számjegyek összege $S = 2 + 4 + x + 7 + y = 13 + x + y$ osztható 9-cel.
  - Ha $y = 0$: $S = 13 + x \implies x = 5$ ($S = 18$).
  - Ha $y = 5$: $S = 13 + x + 5 = 18 + x \implies x \in \{0, 9\}$.
**Megoldások:** $(x, y) \in \{(5, 0), (0, 5), (9, 5)\}$. (A számok: $24570, 24075, 24975$.)

**(3) $99 \mid \overline{3x71y4}$:**
$99 = 9 \cdot 11$ és $(9, 11) = 1$.
- *9-es szabály:* a számjegyek összege:
  $$S = 3 + x + 7 + 1 + y + 4 = 15 + x + y \implies x + y \in \{3, 12\}.$$
- *11-es szabály:* a váltakozó előjeles összeg osztható 11-gyel:
  $$D = 4 - y + 1 - 7 + x - 3 = x - y - 5.$$
  Ennek 11 többszörösének kell lennie. Mivel $-9 \le x - y \le 9$, ezért $-14 \le x - y - 5 \le 4$.
  Az egyetlen 11-gyel osztható érték ebben a sávban:
  $$x - y - 5 = 0 \implies x - y = 5,$$
  vagy $x - y - 5 = -11 \implies x - y = -6$.
Kapcsoljuk össze a két feltételt:
- *1. eset:* $x + y = 3$:
  - ha $x - y = 5 \implies 2x = 8 \implies x = 4, y = -1$ (nem lehet negatív).
  - ha $x - y = -6 \implies 2x = -3$ (nem egész).
- *2. eset:* $x + y = 12$:
  - ha $x - y = 5 \implies 2x = 17$ (nem egész).
  - ha $x - y = -6 \implies 2x = 6 \implies x = 3$, ekkor $y = 12 - 3 = 9$.
    Ellenőrzés: $x = 3, y = 9$:
    $S = 15 + 3 + 9 = 27$ ($9 \mid 27$).
    $D = 3 - 9 - 5 = -11$ ($11 \mid -11$).
**Egyetlen megoldás:** $(x, y) = (3, 9)$ (a szám: $337194$).

::: elmelet
**Elméleti háttér — Oszthatósági szabályok a tízes számrendszerben.**
- Mivel $10 \equiv 1 \pmod 9$ és $10 \equiv 1 \pmod 3$, a szám a 9-cel és 3-mal osztva ugyanazt a maradékot adja, mint a számjegyeinek összege.
- Mivel $10 \equiv -1 \pmod{11}$, a szám 11-gyel osztva ugyanazt a maradékot adja, mint a váltakozó előjeles számjegyösszeg (jobbról balra: $a_0 - a_1 + a_2 - \dots$).
- Mivel $10^k \equiv 0 \pmod{2^k}$ és $\pmod{5^k}$, a $2, 4, 8$ és $5, 25, 125$ osztókra az utolsó $1, 2, 3$ számjegy dönt.
- Összetett modulus ($m = a \cdot b$): ha $(a, b) = 1$, akkor $m \mid N \iff a \mid N$ és $b \mid N$.
:::

## P2.11. feladat

Egy hatjegyű szám alakja $\overline{abcabc}$, ahol $a \ne 0$. Mutassuk meg, hogy ez a szám a számjegyek konkrét értékétől függetlenül mindig osztható 7-tel, 11-gyel és 13-mal is, sőt osztható 1001-gyel!

**Megoldás.**

*Bizonyítás:*
Írjuk fel a hatjegyű számot a helyiértékes alakja szerint:
$$\overline{abcabc} = a \cdot 10^5 + b \cdot 10^4 + c \cdot 10^3 + a \cdot 10^2 + b \cdot 10 + c.$$
Csoportosítsuk az azonos számjegyeket:
$$= a(10^5 + 10^2) + b(10^4 + 10) + c(10^3 + 1)$$
$$= a \cdot 10^2(10^3 + 1) + b \cdot 10(10^3 + 1) + c(10^3 + 1)$$
$$= (10^3 + 1)(100a + 10b + c).$$
Vegyük észre, hogy $100a + 10b + c = \overline{abc}$ a szám első feléből álló háromjegyű szám, míg
$$10^3 + 1 = 1000 + 1 = 1001.$$
Tehát minden $\overline{abcabc}$ alakú szám felírható az alábbi szorzatként:
$$\overline{abcabc} = 1001 \cdot \overline{abc}.$$
Bontsuk prímtényezőkre az 1001 számot:
$$1001 = 7 \cdot 11 \cdot 13.$$
Mivel $1001$ osztható 7-tel, 11-gyel és 13-mal:
- $7 \mid 1001 \implies 7 \mid \overline{abcabc}$,
- $11 \mid 1001 \implies 11 \mid \overline{abcabc}$,
- $13 \mid 1001 \implies 13 \mid \overline{abcabc}$.
Mivel ez az azonosság tetszőleges $a, b, c$ számjegyekre ($a \ne 0$) teljesül, a szám valóban mindig osztható 7-tel, 11-gyel, 13-mal és 1001-gyel. $\blacksquare$

::: elmelet
**Elméleti háttér — Az 1001 mágikus tulajdonsága és a hármas blokkok szabálya.**
- Mivel $1001 = 7 \cdot 11 \cdot 13$, a tízes számrendszerben $10^3 \equiv -1 \pmod{7, 11, 13}$.
- Ez adja a **hármas blokkok oszthatósági szabályát** 7-re, 11-re és 13-ra:
  Egy tetszőleges nagy számot hátulról hármas csoportokra osztva ($B_0, B_1, B_2, \dots$), a szám pontosan akkor osztható 7-tel (illetve 11-gyel, 13-mal), ha a blokkok váltakozó előjeles összege
  $$B_0 - B_1 + B_2 - B_3 + \dots$$
  osztható az adott számmal!
:::

## P2.12. feladat

Egy konvex sokszög átlóinak száma prímszám. Hány oldalú lehet a sokszög, és mik a lehetséges átlószámok?

**Megoldás.**

Egy $n$ oldalú konvex sokszög csúcsainak száma $n$ ($n \ge 3$).
Bármely két csúcsot összekötve $\binom{n}{2}$ szakaszt kapunk, amelyek közül $n$ darab az oldal, a többi az átló.
Így az átlók száma:
$$d = \binom{n}{2} - n = \frac{n(n - 1)}{2} - n = \frac{n(n - 3)}{2}.$$
A feltétel szerint $d = p$, ahol $p$ prímszám:
$$\frac{n(n - 3)}{2} = p \iff n(n - 3) = 2p.$$
Mivel $p$ prímszám, a $2p$ pozitív egész szám osztópárjai a szorzótényezők sorrendjétől függően:
$$\{1, 2p\}, \quad \{2, p\}.$$
Mivel $n$ és $n - 3$ különbsége $n - (n - 3) = 3$, a két tényező különbsége pontosan 3 kell legyen!
Elemezzük az eseteket:

1. **1. eset: a tényezők $n - 3 = 1$ és $n = 2p$:**
   $$n - 3 = 1 \implies n = 4.$$
   Ekkor a sokszög négyszög ($n = 4$).
   Az átlók száma:
   $$d = \frac{4(4 - 3)}{2} = \frac{4 \cdot 1}{2} = 2.$$
   Mivel a 2 prímszám, ez valóban megoldás! (Ekkor $2p = 4 \cdot 1 = 4 \implies p = 2$.)

2. **2. eset: a tényezők $n - 3 = 2$ és $n = p$:**
   $$n - 3 = 2 \implies n = 5.$$
   Ekkor a sokszög ötszög ($n = 5$).
   Az átlók száma:
   $$d = \frac{5(5 - 3)}{2} = \frac{5 \cdot 2}{2} = 5.$$
   Mivel az 5 prímszám, ez is megoldás! (Ekkor $p = 5$.)

3. **Lehet-e más eset?**
   Ha $n \ge 6$, akkor $n - 3 \ge 3$.
   Ekkor a szorzat mindkét tényezője legalább 3:
   $$n > n - 3 \ge 3.$$
   De a $2p$ számnak csak a $1, 2, p, 2p$ osztói vannak. Ha a kisebbik tényező $n - 3 \ge 3$, akkor az nem lehet sem 1, sem 2, így szükségképpen $n - 3 = p$, amiből a nagyobbik tényező $n = 2p$ lenne.
   Ekkor azonban:
   $$n - (n - 3) = 2p - p = p.$$
   De tudjuk, hogy a két tényező különbsége $n - (n - 3) = 3$.
   Így $p = 3$ kellene legyen!
   Ha $p = 3$, akkor $n - 3 = 3 \implies n = 6$, és $n = 2p = 6$.
   Ellenőrizzük $n = 6$-ra:
   $$d = \frac{6(6 - 3)}{2} = \frac{6 \cdot 3}{2} = 9.$$
   A 9 viszont összetett szám ($9 = 3^2$), nem prím! (Valóban, $6 \cdot 3 = 18 \ne 2 \cdot 3 = 6$.)

**Végeredmény:**
A sokszög csak **4 vagy 5 oldalú** lehet:
- Négyszög ($n = 4$), ekkor az átlók száma $d = 2$ (prím).
- Ötszög ($n = 5$), ekkor az átlók száma $d = 5$ (prím).

::: elmelet
**Elméleti háttér — Másodfokú diofantoszi egyenletek prímfaktorizációval.**
- Egy $n(n - k) = 2p$ alakú egyenlet megoldásakor a prímszámok alaptulajdonságát használjuk: $2p$ kanonikus alakjának kevés osztója van.
- A tényezők különbségének fix értéke ($n - (n - 3) = 3$) azonnal korlátozza a szóba jövő osztópárokat.
:::

## P2.13. feladat

Határozzuk meg az összes olyan pozitív egész $n$ számot, amelyre az
$$n^4 + n^2 + 1$$
kifejezés értéke prímszám!

**Megoldás.**

Alakítsuk szorzattá az $n^4 + n^2 + 1$ kifejezést a Sophie Germain-féle teljes négyzetté kiegészítés módszerével:
$$n^4 + n^2 + 1 = (n^4 + 2n^2 + 1) - n^2 = (n^2 + 1)^2 - n^2.$$
Ez két négyzet különbsége, így alkalmazható az $a^2 - b^2 = (a - b)(a + b)$ azonosság:
$$n^4 + n^2 + 1 = (n^2 + 1 - n)(n^2 + 1 + n) = (n^2 - n + 1)(n^2 + n + 1).$$
Mivel $n$ pozitív egész szám ($n \ge 1$), vizsgáljuk meg a két tényező nagyságát:
- A második tényező: $n^2 + n + 1 \ge 1^2 + 1 + 1 = 3 > 1$.
- Az első tényező: $n^2 - n + 1 = n(n - 1) + 1 \ge 1$.
Ahhoz, hogy a szorzat prímszám lehessen, a két tényező közül a kisebbiknek szükségképpen $1$-nek kell lennie (különben mindkét tényező 1-nél szigorúan nagyobb egész, így a szorzat összetett szám):
$$n^2 - n + 1 = 1 \iff n(n - 1) = 0.$$
Mivel $n$ pozitív egész ($n \ge 1$), a fenti egyenlet egyetlen pozitív egész megoldása:
$$n = 1.$$
Ellenőrizzük az $n = 1$ értéket:
$$1^4 + 1^2 + 1 = 1 + 1 + 1 = 3.$$
A 3 valóban prímszám!
Minden $n \ge 2$ egész szám esetén $n^2 - n + 1 \ge 2^2 - 2 + 1 = 3 > 1$ és $n^2 + n + 1 \ge 7 > 1$, így a kifejezés két 1-nél nagyobb szám szorzata, tehát összetett.

**Végeredmény:**
Egyetlen ilyen pozitív egész szám van: **$n = 1$** (ekkor a kifejezés értéke $3$).

::: elmelet
**Elméleti háttér — Sophie Germain-azonosság és algebrai faktorizáció.**
- Egy algebrai kifejezés prímségének vizsgálatakor az első lépés mindig a **szorzattá alakíthatóság** ellenőrzése.
- Teljes négyzetté kiegészítés: $A^4 + A^2 B^2 + B^4 = (A^2 - AB + B^2)(A^2 + AB + B^2)$.
- Sophie Germain-azonosság: $a^4 + 4b^4 = (a^2 - 2ab + 2b^2)(a^2 + 2ab + 2b^2)$.
- Ha $P(n) = A(n) B(n)$, akkor $P(n)$ csak úgy lehet prím, ha az egyik tényező $\pm 1$.
:::

## P2.14. feladat

Melyek azok a $p$ prímszámok, amelyek felírhatók $p = n^3 - 1$ alakban, ahol $n \in \mathbb{N}$ természetes szám?

**Megoldás.**

Alkalmazzuk a köbök különbségére vonatkozó azonosságot:
$$p = n^3 - 1 = (n - 1)(n^2 + n + 1).$$
Mivel $p$ prímszám, pozitív osztói kizárólag $1$ és $p$ lehetnek.
Vizsgáljuk meg a tényezőket $n \in \mathbb{N}$ esetén:
- Ha $n = 1$, akkor $n^3 - 1 = 0$, ami nem prímszám.
- Ha $n \ge 2$, akkor mindkét tényező pozitív:
  $$n - 1 \ge 1, \qquad n^2 + n + 1 \ge 2^2 + 2 + 1 = 7 > 1.$$
Mivel $n \ge 2$ esetén $n^2 + n + 1 > n - 1$, a két tényező közül a kisebbiknek szükségképpen $1$-nek kell lennie a prímséghez:
$$n - 1 = 1 \implies n = 2.$$
Ekkor a második tényező:
$$n^2 + n + 1 = 2^2 + 2 + 1 = 4 + 2 + 1 = 7.$$
Ekkor $p = 1 \cdot 7 = 7$, ami valóban prímszám!
Ha $n \ge 3$, akkor $n - 1 \ge 2$ és $n^2 + n + 1 \ge 13$, így a kifejezés két 1-nél szigorúan nagyobb egész szorzata, tehát összetett.

**Végeredmény:**
Egyetlen ilyen prímszám van: **$p = 7$** (amelyhez $n = 2$ tartozik).

::: elmelet
**Elméleti háttér — Polinomok prímértékei.**
Egy több mint elsőfokú felbontható (reducibilis) polinom $P(x) = A(x) B(x)$ csak véges sok helyen vehet fel prímértéket, mégpedig ott, ahol $A(x) = \pm 1$ vagy $B(x) = \pm 1$.
Irreducibilis polinomoknál (mint $x^2 + 1$) nem ismert, hogy végtelen sok prímértéket adnak-e (Bunyakovszkij-sejtés / Landau 4. problémája).
:::

## P2.15. feladat

Adjuk meg az összes olyan $n$ természetes számot, amelyre az
$$n^2 + 5n + 13$$
kifejezés értéke egy egész szám négyzete!

**Megoldás.**

Legyen $n^2 + 5n + 13 = k^2$, ahol $k \ge 0$ egész szám.
A másodfokú tag együtthatója 1, de a lineáris tag együtthatója (5) páratlan.
A törtek elkerülése végett szorozzuk be az egyenlet mindkét oldalát $4$-gyel:
$$4n^2 + 20n + 52 = 4k^2.$$
Egészítsük ki teljes négyzetté a bal oldalt:
$$4n^2 + 20n = (2n + 5)^2 - 25.$$
Ezt behelyettesítve:
$$(2n + 5)^2 - 25 + 52 = (2k)^2 \iff (2n + 5)^2 + 27 = (2k)^2.$$
Rendezzük a négyzeteket egy oldalra:
$$(2k)^2 - (2n + 5)^2 = 27.$$
Alkalmazzuk a két négyzet különbségére vonatkozó azonosságot:
$$(2k - 2n - 5)(2k + 2n + 5) = 27.$$
Mivel $n \ge 0$ természetes szám és $k \ge 0$, a második tényező szigorúan pozitív:
$$2k + 2n + 5 \ge 5 > 0.$$
Mivel a szorzat $+27$, az első tényezőnek is szigorúan pozitívnak kell lennie, és nyilván:
$$2k - 2n - 5 < 2k + 2n + 5.$$
A 27 pozitív osztópárjai $(d_1, d_2)$, ahol $d_1 < d_2$ és $d_1 d_2 = 27$:
$$\{ (1, 27), \quad (3, 9) \}.$$

Vizsgáljuk meg a két esetet:
1. **1. eset: $2k - 2n - 5 = 1$ és $2k + 2n + 5 = 27$:**
   Vonjuk ki az első egyenletet a másodikból:
   $$(2k + 2n + 5) - (2k - 2n - 5) = 27 - 1$$
   $$4n + 10 = 26 \implies 4n = 16 \implies n = 4.$$
   Ellenőrzés: ha $n = 4$, akkor $n^2 + 5n + 13 = 16 + 20 + 13 = 49 = 7^2$.
   Ez valóban négyzetszám!

2. **2. eset: $2k - 2n - 5 = 3$ és $2k + 2n + 5 = 9$:**
   Vonjuk ki az első egyenletet a másodikból:
   $$(2k + 2n + 5) - (2k - 2n - 5) = 9 - 3$$
   $$4n + 10 = 6 \implies 4n = -4 \implies n = -1.$$
   Mivel $n$ feltétel szerint természetes szám ($n \ge 0$), ez nem megoldás a természetes számok halmazán (egészeken jó lenne: $(-1)^2 + 5(-1) + 13 = 9 = 3^2$).

**Végeredmény:**
Az egyetlen természetes szám: **$n = 4$** (ekkor a kifejezés értéke $49 = 7^2$).

::: elmelet
**Elméleti háttér — Kvadratikus diofantoszi egyenletek beszorzási technikája.**
- Ha az $n^2 + bn + c = k^2$ egyenletben $b$ páratlan, 4-gyel beszorozva $(2n + b)^2 + (4c - b^2) = (2k)^2$ alakra jutunk, ami két négyzetszám különbségeként faktorizálható.
- Két négyzetszám közé szorítás módszere: elég nagy $n$-re $n^2 < n^2 + 5n + 13 < (n + 3)^2$, így csak véges sok tesztelés szükséges ($k = n + 1$ vagy $k = n + 2$).
:::

## P2.16. feladat

Bizonyítsuk be, hogy minden $n$ egész szám esetén
$$30 \mid n^5 - n.$$

**Megoldás.**

*Bizonyítás algebrai faktorizációval és kongruenciákkal:*
Mivel $30 = 2 \cdot 3 \cdot 5$, és a 2, 3, 5 számok páronként relatív prímek, az oszthatóság pontosan akkor áll fenn minden $n$-re, ha a kifejezés külön-külön osztható 2-vel, 3-mal és 5-tel.

Alakítsuk szorzattá az $n^5 - n$ kifejezést:
$$n^5 - n = n(n^4 - 1) = n(n^2 - 1)(n^2 + 1) = n(n - 1)(n + 1)(n^2 + 1).$$
Vegyük észre, hogy
$$(n - 1) n (n + 1)$$
három egymást követő egész szám szorzata!

1. **Oszthatóság 2-vel és 3-mal:**
   Bármely három egymást követő egész szám között van legalább egy páros szám és pontosan egy 3-mal osztható szám.
   Ezért a szorzat osztható 2-vel és 3-mal is:
   $$2 \mid (n - 1)n(n + 1) \implies 2 \mid n^5 - n,$$
   $$3 \mid (n - 1)n(n + 1) \implies 3 \mid n^5 - n.$$
   Mivel $(2, 3) = 1$, ebből már következik, hogy $6 \mid n^5 - n$.

2. **Oszthatóság 5-tel:**
   *1. módszer (kis Fermat-tétel):*
   Mivel az 5 prímszám, a kis Fermat-tétel szerint minden $n \in \mathbb{Z}$ esetén
   $$n^5 \equiv n \pmod 5 \iff 5 \mid n^5 - n.$$
   *2. módszer (elemi faktorizációval):*
   Írjuk át a harmadik tényezőt: $n^2 + 1 = (n^2 - 4) + 5 = (n - 2)(n + 2) + 5$.
   Ezzel:
   $$n^5 - n = n(n - 1)(n + 1)[(n - 2)(n + 2) + 5]$$
   $$= (n - 2)(n - 1)n(n + 1)(n + 2) + 5(n - 1)n(n + 1).$$
   Itt az első tag öt egymást követő egész szám szorzata, amely mindig osztható 5-tel (sőt $5! = 120$-szal is).
   A második tagban szerepel az 5-ös szorzó, így az is osztható 5-tel.
   Két 5-tel osztható szám összegeként $n^5 - n$ mindig osztható 5-tel!

3. **Összegzés:**
   Mivel $2 \mid n^5 - n$, $3 \mid n^5 - n$ és $5 \mid n^5 - n$, valamint a $2, 3, 5$ számok páronként relatív prímek, ezért a legkisebb közös többszörösük,
   $$[2, 3, 5] = 2 \cdot 3 \cdot 5 = 30$$
   is osztja az $n^5 - n$ számot minden $n \in \mathbb{Z}$ esetén. $\blacksquare$

::: elmelet
**Elméleti háttér — Kis Fermat-tétel és szomszédos számok szorzata.**
- **Kis Fermat-tétel:** Ha $p$ prím, akkor minden $a \in \mathbb{Z}$-re $a^p \equiv a \pmod p$.
- Következmény: $p \mid a^p - a$ mindig teljesül.
- $k$ darab egymást követő egész szám szorzata mindig osztható $k!$-sal, mert $\frac{n(n-1)\dots(n-k+1)}{k!} = \binom{n}{k} \in \mathbb{Z}$.
- Páronként relatív prím modulusok szorzata: ha $m_1 \mid A, \dots, m_r \mid A$ és $(m_i, m_j) = 1$, akkor $m_1 \dots m_r \mid A$.
:::

## P2.17. feladat

Igazoljuk, hogy ha $a, b \in \mathbb{Z}$ olyan egészek, amelyekre $17 \mid 2a + 3b$, akkor szükségszerűen
$$17 \mid 9a + 5b$$
is teljesül!

**Megoldás.**

*1. Megoldás (lineáris kombinációval):*
A feltétel szerint $17 \mid 2a + 3b$.
Keressünk olyan $k \in \mathbb{Z}$ egész szorzót, amelyre a $k(2a + 3b)$ kifejezésben az $a$ együtthatója 17-tel osztva 9-et ad maradékul:
$$2k \equiv 9 \pmod{17}.$$
Mivel $2 \cdot 13 = 26 = 17 + 9 \equiv 9 \pmod{17}$, a $k = 13$ jó választás!
Szorozzuk meg a $(2a + 3b)$ kifejezést $13$-mal:
$$13(2a + 3b) = 26a + 39b.$$
Vonjunk le ebből 17 többszöröseit:
$$26a + 39b = (17a + 9a) + (34b + 5b) = 17(a + 2b) + (9a + 5b).$$
Rendezzük át a célkifejezésre:
$$9a + 5b = 13(2a + 3b) - 17(a + 2b).$$
Mivel a feltevés szerint $17 \mid 2a + 3b$, ezért a jobb oldal első tagja osztható 17-tel.
A második tagban $17(a + 2b)$ szintén osztható 17-tel.
Két 17-tel osztható szám különbsége osztható 17-tel, ezért:
$$17 \mid 9a + 5b. \qquad \blacksquare$$

*2. Megoldás (kongruenciákkal / inverzzel):*
A feltétel kongruenciaként felírva:
$$2a + 3b \equiv 0 \pmod{17} \iff 2a \equiv -3b \pmod{17}.$$
Mivel $(2, 17) = 1$, a 2 invertálható modulo 17: a moduláris inverz $2^{-1} \equiv 9 \pmod{17}$ (mert $2 \cdot 9 = 18 \equiv 1$).
Szorozzuk be az egyenletet $9$-cel:
$$a \equiv 9(-3b) = -27b \equiv -10b \equiv 7b \pmod{17}.$$
Helyettesítsük be $a \equiv 7b$-t a célkifejezésbe:
$$9a + 5b \equiv 9(7b) + 5b = 63b + 5b = 68b \pmod{17}.$$
Mivel $68 = 4 \cdot 17$, ezért $68 \equiv 0 \pmod{17}$.
Így:
$$9a + 5b \equiv 0 \cdot b = 0 \pmod{17}.$$
Ez pontosan azt jelenti, hogy $17 \mid 9a + 5b$. $\blacksquare$

::: elmelet
**Elméleti háttér — Lineáris diofantoszi formák és determináns kritérium.**
- Két lineáris forma, $L_1 = u_1 a + v_1 b$ és $L_2 = u_2 a + v_2 b$ közötti ekvivalencia vizsgálatakor modulo $p$ ($p$ prím):
  Ha $L_1 \equiv 0 \pmod p \implies L_2 \equiv 0 \pmod p$, akkor létezik olyan $k$, hogy $L_2 \equiv k L_1 \pmod p$.
- Ennek szükséges és elégséges feltétele, hogy az együtthatókból képzett determináns zérus legyen modulo $p$:
  $$\Delta = \begin{vmatrix} u_1 & v_1 \\ u_2 & v_2 \end{vmatrix} = u_1 v_2 - v_1 u_2 \equiv 0 \pmod p.$$
  Itt: $\begin{vmatrix} 2 & 3 \\ 9 & 5 \end{vmatrix} = 2 \cdot 5 - 3 \cdot 9 = 10 - 27 = -17 \equiv 0 \pmod{17}$!
  Mivel a determináns osztható 17-tel, a két oszthatóság nemcsak következik egymásból, hanem ekvivalens!
:::

## P2.18. feladat

Bizonyítsuk be, hogy ha a háromjegyű $\overline{abc}$ szám osztható 37-tel, akkor a számjegyek ciklikus permutációjával kapott $\overline{bca}$ és $\overline{cab}$ számok is oszthatók 37-tel!

**Megoldás.**

*Bizonyítás:*
Írjuk fel a számokat a helyiértékes alakjukban:
$$N_1 = \overline{abc} = 100a + 10b + c,$$
$$N_2 = \overline{bca} = 100b + 10c + a.$$
A feladat feltétele szerint $37 \mid N_1$, vagyis $100a + 10b + c \equiv 0 \pmod{37}$.
Szorozzuk meg a feltételt $10$-zel:
$$10 N_1 = 10(100a + 10b + c) = 1000a + 100b + 10c.$$
Bontsuk fel az $1000a$-t $999a + a$ alakban:
$$10 N_1 = 999a + (100b + 10c + a) = 999a + N_2.$$
Ebből kifejezve $N_2$-t:
$$N_2 = 10 N_1 - 999a.$$
Vizsgáljuk meg a $999$ szám oszthatóságát 37-tel:
$$999 = 27 \cdot 37.$$
Mivel $999$ a 37 többszöröse, ezért $999a \equiv 0 \pmod{37}$.
Továbbá a feltétel szerint $N_1$ is osztható 37-tel ($N_1 \equiv 0 \pmod{37}$), így $10 N_1 \equiv 0 \pmod{37}$.
Két 37-tel osztható szám különbségeként:
$$N_2 = 10 N_1 - 999a \equiv 0 - 0 \equiv 0 \pmod{37}.$$
Ez bizonyítja, hogy $37 \mid \overline{bca}$.

Mivel $\overline{cab}$ a $\overline{bca}$ számjegyének ciklikus elforgatása, a fenti lépést még egyszer megismételve azonnal adódik, hogy $37 \mid \overline{cab}$ is teljesül. $\blacksquare$

::: elmelet
**Elméleti háttér — Ciklikus számjegy-permutációk és a 999 faktorizációja.**
- Mivel $10^3 - 1 = 999 = 27 \cdot 37$, a tízes számrendszerben $10^3 \equiv 1 \pmod{37}$ és $10^3 \equiv 1 \pmod{27}$.
- Egy $k$ jegyű szám ciklikus eltolása: $10 N - (10^k - 1) a_k$. Ha $m \mid 10^k - 1$, és $(10, m) = 1$, akkor $m \mid N \iff m \mid \text{ciklikus eltolt}$.
- Ez a tulajdonság teszi lehetővé a ciklikus kódok és cirkuláns mátrixok felépítését.
:::

## P2.19. feladat

Mely $p$ pozitív egész számokra lesznek a $p$, $p + 2$ és $p + 4$ számok egyszerre prímszámok?

**Megoldás.**

Vizsgáljuk meg a $p$, $p + 2$ és $p + 4$ számok 3-mal való osztási maradékát!
Minden egész szám 3-mal osztva $0, 1$ vagy $2$ maradékot ad:

1. **Ha $p \equiv 0 \pmod 3$:**
   Mivel $p$ prímszám és osztható 3-mal, az egyetlen lehetőség:
   $$p = 3.$$
   Ekkor a három szám:
   $$p = 3, \qquad p + 2 = 5, \qquad p + 4 = 7.$$
   A $3, 5, 7$ mindegyike prímszám, tehát $p = 3$ valóban megoldás!

2. **Ha $p \equiv 1 \pmod 3$:**
   Ekkor a harmadik szám:
   $$p + 4 \equiv 1 + 4 = 5 \equiv 2 \pmod 3 \dots \text{és } p + 2 \equiv 1 + 2 = 3 \equiv 0 \pmod 3.$$
   Tehát $3 \mid p + 2$.
   Mivel $p > 0$ és $p \equiv 1 \pmod 3$, a legkisebb ilyen pozitív prím $p = 7$ (ha $p=1$, az nem prím).
   Így $p + 2 \ge 9 > 3$, vagyis $p + 2$ egy 3-nál szigorúan nagyobb 3-mal osztható szám, tehát összetett!

3. **Ha $p \equiv 2 \pmod 3$:**
   Ekkor a harmadik szám:
   $$p + 4 \equiv 2 + 4 = 6 \equiv 0 \pmod 3.$$
   Tehát $3 \mid p + 4$.
   Mivel $p \ge 2$, $p + 4 \ge 6 > 3$, így $p + 4$ egy 3-nál szigorúan nagyobb 3-mal osztható szám, tehát összetett!

**Összegzés:**
Bármely $p$ egész szám esetén a $\{p, p + 2, p + 4\}$ hármas elemei három egymást követő páratlan számot alkotnak, amelyek modulo 3 egy teljes maradékrendszert $\{0, 1, 2\}$ fednek le. Ezért a három szám közül **pontosan az egyik mindig osztható 3-mal**.
Mivel az egyetlen 3-mal osztható prímszám maga a 3, a három prím közül a legkisebbnek 3-nak kell lennie.

**Végeredmény:**
Egyetlen ilyen prímszám létezik: **$p = 3$** (a prímhármas: $3, 5, 7$).

::: elmelet
**Elméleti háttér — Teljes maradékrendszerek és prímhézagok.**
- Egy számtani sorozatban, amelynek differenciája $d$, ha $(d, m) = 1$, akkor tetszőleges egymást követő $m$ tag teljes maradékrendszert alkot modulo $m$.
- Itt a lépésköz $d = 2$, ami relatív prím a 3-hoz, így a három tag között mindig van pontosan egy 3-mal osztható szám.
- Emiatt prímhármas (ahol a távolság 2 és 2) csak egyetlen egy létezik az egész számegyenesen: $(3, 5, 7)$.
- Az ikerprím-sejtés ($p, p+2$) ezzel szemben végtelen sok párt jósol, mivel a moduláris megszorítás nem zárja ki őket.
:::

## P2.20. feladat

Egy matróz három gyermeke mind különböző prímszám életkorú. A három életkor négyzetösszege szintén prímszám. Hány éves a legfiatalabb gyermek?

**Megoldás.**

Jelölje a három gyermek életkorát $p_1, p_2, p_3$, ahol $p_1 < p_2 < p_3$ különböző prímszámok.
A feladat feltétele szerint a négyzetösszegük is prím:
$$S = p_1^2 + p_2^2 + p_3^2 = P \quad \text{prímszám.}$$

Vizsgáljuk meg a prímek paritását!
1. **Tegyük fel indirekt, hogy mindhárom prím páratlan**, azaz $p_1, p_2, p_3 \ge 3$.
   Minden páratlan szám négyzete páratlan:
   $$p_1^2 \equiv 1 \pmod 2, \quad p_2^2 \equiv 1 \pmod 2, \quad p_3^2 \equiv 1 \pmod 2.$$
   Három páratlan szám összege páratlan:
   $$S = p_1^2 + p_2^2 + p_3^2 \equiv 1 + 1 + 1 = 3 \equiv 1 \pmod 2.$$
   (A paritás alapján tehát $S$ páratlan lenne.)

2. **Vizsgáljuk meg az összeget modulo 3!**
   Minden 3-nál nagyobb prímszám négyzete 3-mal osztva 1 maradékot ad: $p^2 \equiv 1 \pmod 3$.
   - *Ha semelyik prím sem egyenlő 3-mal* ($p_i > 3$ minden $i$-re):
     Ekkor:
     $$S = p_1^2 + p_2^2 + p_3^2 \equiv 1 + 1 + 1 = 3 \equiv 0 \pmod 3.$$
     Mivel $p_i \ge 5$, az összeg nagysága:
     $$S \ge 5^2 + 7^2 + 11^2 = 25 + 49 + 121 = 195 > 3.$$
     Tehát $S$ egy 3-nál szigorúan nagyobb, 3-mal osztható szám lenne, ami nem lehet prím!
     Ellentmondás!
     **Következtetés:** A három prím közül a legkisebbnek vagy a másodiknak szükségszerűen tartalmaznia kell a 3-at, azaz valamelyik prímnek 3-nak kell lennie.

3. **Térjünk vissza a paritás vizsgálatára modulo 2!**
   Mi van, ha valamelyik prím páros, azaz $p_1 = 2$?
   Ekkor $p_1^2 = 4$.
   Ha a másik két prím páratlan ($p_2, p_3 \ge 3$), akkor:
   $$S = 2^2 + p_2^2 + p_3^2 = 4 + \text{páratlan} + \text{páratlan} = \text{páros}.$$
   Mivel $S$ páros szám és $S \ge 4 + 3^2 + 5^2 = 38 > 2$, $S$ csak úgy lehet prím, ha $S = 2$, ami lehetetlen!
   Tehát ha pontosan egy prím 2-es, akkor az összeg páros és 2-nél nagyobb, tehát NEM lehet prím!
   Ha kettő prím 2-es lenne, az ellentmondana annak, hogy a prímek különbözőek.
   Ha mindhárom prím 2-es lenne, akkor sem lennének különbözők ($2^2+2^2+2^2 = 12$ nem prím).
   **Következésképpen egyetlen prím sem lehet 2!**
   Minden prím szükségszerűen páratlan: $p_1 \ge 3$.

4. **A 3-as prím szerepe:**
   Mivel egyetlen prím sem lehet 2, és a 2. pont szerint valamelyik prímnek 3-nak kell lennie, a legkisebb prím csak a 3 lehet:
   $$p_1 = 3.$$
   Ellenőrizzük, hogy létezik-e megoldás $p_1 = 3$-mal!
   Keressünk $p_2, p_3 > 3$ prímeket, hogy $S = 3^2 + p_2^2 + p_3^2 = 9 + p_2^2 + p_3^2$ prím legyen.
   Próbáljuk ki a legkisebb prímeket: $p_2 = 5, p_3 = 7$:
   $$S = 3^2 + 5^2 + 7^2 = 9 + 25 + 49 = 83.$$
   A 83 prímszám!
   (Valóban: $\sqrt{83} \approx 9.1$, a prímek 2, 3, 5, 7 nem osztják: $83 = 7 \cdot 11 + 6$.)

Tehát létezik ilyen számhármas ($(3, 5, 7)$), és a legfiatalabb gyermek életkora egyértelműen meghatározott.

**Végeredmény:**
A legfiatalabb gyermek **3 éves**.

::: elmelet
**Elméleti háttér — Paritási és modulo 3 kizárási elvek.**
- A 2 az egyetlen páros prím: ha páratlan sok páratlan szám négyzetét adjuk össze, a paritás páratlan marad. Ha egyetlen páros prím (2) szerepelne, a négyzetösszeg páros lenne, ami azonnal kizárja a prímséget.
- A 3 az egyetlen 3-mal osztható prím: négyzete $0 \pmod 3$, míg minden más prím négyzete $1 \pmod 3$. Három darab 3-tól különböző prím négyzetösszege mindig $1 + 1 + 1 = 3 \equiv 0 \pmod 3$, ami kötelezően előírja a 3 szereplését.
:::

## P2.21. feladat

Oldjuk meg a prímszámok körében a
$$p^2 - 6q^2 = 1$$
egyenletet!

**Megoldás.**

Rendezzük az egyenletet úgy, hogy a bal oldalon két négyzet különbsége álljon:
$$p^2 - 1 = 6q^2 \iff (p - 1)(p + 1) = 6q^2.$$
Mivel $p$ és $q$ prímszámok, $p \ge 2$ és $q \ge 2$.
- Ha $p = 2$: $2^2 - 6q^2 = 4 - 6q^2 = 1 \implies 6q^2 = 3 \implies 2q^2 = 1$, aminek nincs egész megoldása.
Tehát $p$ páratlan prím ($p \ge 3$).
Mivel $p$ páratlan, a $p - 1$ és $p + 1$ tényezők szomszédos páros számok, így:
$$(p - 1)(p + 1)$$
mindig osztható $8$-cal (az egyik 2-vel, a másik 4-gyel osztható).
Ebből következik, hogy a jobb oldalnak is oszthatónak kell lennie 8-cal:
$$8 \mid 6q^2 \iff 4 \mid 3q^2 \implies 4 \mid q^2 \implies 2 \mid q.$$
Mivel $q$ prímszám, és $q$ páros, az egyetlen lehetséges érték:
$$q = 2.$$
Helyettesítsük be a $q = 2$ értéket az eredeti egyenletbe:
$$p^2 - 6(2^2) = 1 \iff p^2 - 24 = 1 \iff p^2 = 25.$$
Mivel $p$ pozitív prím:
$$p = 5.$$
A kapott $p = 5$ érték valóban prímszám!
Ellenőrzés: $5^2 - 6(2^2) = 25 - 24 = 1$. Helyes!

**Végeredmény:**
Az egyenlet egyetlen megoldása a prímek körében: **$(p, q) = (5, 2)$**.

::: elmelet
**Elméleti háttér — Pell-típusú egyenletek prímfeltételekkel.**
- A $p^2 - d q^2 = 1$ egyenlet a klasszikus Pell-egyenlet ($x^2 - d y^2 = 1$) prímekre megszorított esete.
- A szomszédos páros számok szorzata ($p^2 - 1 = (p-1)(p+1)$) mindig osztható 8-cal és 3-mal (ha $p > 3$), vagyis $24 \mid p^2 - 1$.
- Ez a 24-gyel való oszthatóság kényszeríti a $q$ prímre a 2 vagy 3 értéket, ami a végtelen sok egész megoldást egyetlen prím-megoldásra szűkíti le.
:::

## P2.22. feladat

Bizonyítsuk be, hogy végtelen sok olyan $n$ pozitív egész szám létezik, amelyre
$$17 \mid 3^n + 5^n.$$
Adjunk meg egy konkrét végtelen számtani sorozatot ilyen $n$ értékekre!

**Megoldás.**

Vizsgáljuk meg a $3^n + 5^n$ kifejezést modulo 17!
Számítsuk ki a 3 és 5 hatványainak maradékait modulo 17 a legkisebb pozitív kitevőkre:
- $n = 1$: $3^1 + 5^1 = 8 \not\equiv 0 \pmod{17}$.
- $n = 2$: $3^2 + 5^2 = 9 + 25 = 34 = 2 \cdot 17 \equiv 0 \pmod{17}$!
Tehát **$n = 2$ megoldás**!

Hogyan kaphatunk ebből végtelen sok megoldást?
Használjuk az Euler–Fermat-tételt (vagy a kis Fermat-tételt)!
Mivel 17 prím, és $(3, 17) = 1$, $(5, 17) = 1$, a kis Fermat-tétel szerint:
$$3^{16} \equiv 1 \pmod{17} \quad \text{és} \quad 5^{16} \equiv 1 \pmod{17}.$$
Ez azt jelenti, hogy a maradékok $16$ szerint periodikusak.
Ennélfogva ha $n$ helyébe $n + 16k$-t írunk ($k \in \mathbb{N}$):
$$3^{2 + 16k} + 5^{2 + 16k} = 3^2 \cdot (3^{16})^k + 5^2 \cdot (5^{16})^k \equiv 3^2 \cdot 1^k + 5^2 \cdot 1^k = 9 + 25 = 34 \equiv 0 \pmod{17}.$$
Tehát minden $n = 2 + 16k$ ($k \ge 0$) alakú számra $17 \mid 3^n + 5^n$ teljesül!

*Megjegyzés (a legbővebb periódus keresése):*
Vizsgáljuk meg, hogy 16-nál kisebb periódus is működik-e.
Nézzük meg $3^4$ és $5^4$ maradékait modulo 17:
$$3^2 = 9 \implies 3^4 = 81 = 4 \cdot 17 + 13 \equiv -4 \pmod{17}.$$
$$5^2 = 25 \equiv 8 \pmod{17} \implies 5^4 \equiv 8^2 = 64 = 3 \cdot 17 + 13 \equiv -4 \pmod{17}.$$
Ezért:
$$3^4 \equiv 5^4 \equiv -4 \pmod{17}.$$
Ennek négyzete:
$$3^8 \equiv 5^8 \equiv (-4)^2 = 16 \equiv -1 \pmod{17}.$$
Ebből látható, hogy a rend modulo 17 pontosan 16 (mert a 8. hatvány $-1$).
Ha $n = 2 + 4k$ páros számokat nézünk:
- $n = 2$: $3^2 + 5^2 \equiv 0 \pmod{17}$.
- $n = 6 = 2 + 4$: $3^6 + 5^6 = 3^2 \cdot 3^4 + 5^2 \cdot 5^4 \equiv 9(-4) + 8(-4) = -4(9 + 8) = -4(17) \equiv 0 \pmod{17}$!
- Általánosan, minden páratlan $m$ esetén ha $n = 2m$:
  Mivel $3^2 \equiv -5^2 \pmod{17}$ ($9 \equiv -8 \pmod{17}$, hiszen $9 + 8 = 17$):
  $$3^{2m} + 5^{2m} = (3^2)^m + (5^2)^m \equiv (-8)^m + 8^m \pmod{17}.$$
  Ha $m$ páratlan szám ($m = 2k + 1$), akkor $(-8)^m = -8^m$, így:
  $$(-8)^m + 8^m = -8^m + 8^m = 0 \pmod{17}!$$
  Mivel $m = 2k + 1$ páratlan, a kitevő:
  $$n = 2(2k + 1) = 4k + 2.$$
Tehát **minden $n = 4k + 2$ ($k \ge 0$) alakú számra $17 \mid 3^n + 5^n$**!
(Konkrét értékek: $n = 2, 6, 10, 14, 18, 22, \dots$.)

**Végeredmény:**
Végtelen sok ilyen $n$ létezik, például az összes **$n = 4k + 2$** ($k \in \mathbb{N}_0$) alakú természetes szám.

::: elmelet
**Elméleti háttér — Hatványösszegek oszthatósága és páratlan kitevők.**
- Kulcsazonosság: ha $A \equiv -B \pmod m$, akkor páratlan $m$-edik hatványokra $A^m + B^m \equiv (-B)^m + B^m = 0 \pmod m$.
- Itt $3^2 = 9$ és $5^2 = 25 \equiv 8 \equiv -9 \pmod{17}$.
  Ezért $(3^2)^m + (5^2)^m \equiv 9^m + (-9)^m = 0 \pmod{17}$ minden páratlan $m$-re.
- Ez sokkal sűrűbb megoldássorozatot ad ($n \equiv 2 \pmod 4$), mint a kis Fermat-tétel közvetlen $16$-os periódusa.
:::

---

# 3. feladatsor — Oszthatóság az egész számok körében, Euklideszi algoritmus, l.n.k.o. és l.k.k.t.

## P3.1. feladat

Számítsuk ki az alábbi összegeket és szorzatokat zárt alakban (szumma- és produktumjel nélkül):
(1) $\displaystyle\sum_{i=4}^{15} (-1)^i$
(2) $\displaystyle\sum_{j=1}^{n} (4j - 1)$
(3) $\displaystyle\sum_{\substack{1 < p \le 11 \\ p \text{ prím}}} p^2$
(4) $\displaystyle\sum_{1 \le j < k \le 4} j k$
(5) $\displaystyle\prod_{i=1}^n 3^{2i}$
(6) $\displaystyle\sum_{i=1}^{50}\sum_{j=1}^{30} ij - \sum_{j=1}^{30}\sum_{i=1}^{50} ij$
(7) $\displaystyle\sum_{k=0}^{n} 3^k$
(8) $\displaystyle\sum_{k=0}^{200} \binom{200}{k} 3^k$
(9) $\displaystyle\sum_{k=0}^{100} \binom{200}{2k}$.

**Megoldás.**

**(1)** $\sum_{i=4}^{15} (-1)^i$:
A tagok felváltva $+1$ és $-1$. A tagok száma: $15 - 4 + 1 = 12$ (páros számú tag).
Minden szomszédos pár összege $(+1) + (-1) = 0$. Mivel 6 pár van:
$$\sum_{i=4}^{15} (-1)^i = 0.$$

**(2)** $\sum_{j=1}^{n} (4j - 1)$:
Bontsuk szét az összeget:
$$\sum_{j=1}^n (4j - 1) = 4\sum_{j=1}^n j - \sum_{j=1}^n 1 = 4 \cdot \frac{n(n + 1)}{2} - n = 2n(n + 1) - n = 2n^2 + n = n(2n + 1).$$

**(3)** $\sum_{1 < p \le 11, p \text{ prím}} p^2$:
A prímek a $[2, 11]$ intervallumban: $2, 3, 5, 7, 11$.
$$2^2 + 3^2 + 5^2 + 7^2 + 11^2 = 4 + 9 + 25 + 49 + 121 = 208.$$

**(4)** $\sum_{1 \le j < k \le 4} jk$:
Használjuk az $\left(\sum a_i\right)^2 = \sum a_i^2 + 2\sum_{j < k} a_j a_k$ azonosságot:
$$\sum_{1 \le j < k \le 4} jk = \frac{1}{2}\left[ (1 + 2 + 3 + 4)^2 - (1^2 + 2^2 + 3^2 + 4^2) \right] = \frac{1}{2}[10^2 - (1 + 4 + 9 + 16)] = \frac{1}{2}[100 - 30] = 35.$$

**(5)** $\prod_{i=1}^n 3^{2i}$:
Azonos alapú hatványok szorzataként a kitevők összeadódnak:
$$\prod_{i=1}^n 3^{2i} = 3^{\sum_{i=1}^n 2i} = 3^{2 \cdot \frac{n(n+1)}{2}} = 3^{n(n+1)}.$$

**(6)** $\sum_{i=1}^{50}\sum_{j=1}^{30} ij - \sum_{j=1}^{30}\sum_{i=1}^{50} ij$:
A véges kettős szummákban az összegzés sorrendje tetszőlegesen felcserélhető. A két kifejezés értéke azonos, így különbségük:
$$0.$$

**(7)** $\sum_{k=0}^n 3^k$:
Véges mértani sorozat összege ($a = 1, q = 3$):
$$\sum_{k=0}^n 3^k = \frac{3^{n+1} - 1}{3 - 1} = \frac{3^{n+1} - 1}{2}.$$

**(8)** $\sum_{k=0}^{200} \binom{200}{k} 3^k$:
Alkalmazzuk a binomiális tételt: $(1 + x)^n = \sum_{k=0}^n \binom{n}{k} x^k$.
Itt $n = 200$ és $x = 3$:
$$\sum_{k=0}^{200} \binom{200}{k} 3^k = (1 + 3)^{200} = 4^{200} = 2^{400}.$$

**(9)** $\sum_{k=0}^{100} \binom{200}{2k}$:
A binomiális együtthatók páros indexű tagjainak összege fele a teljes összegnek:
$$\sum_{k=0}^{100} \binom{200}{2k} = \frac{(1 + 1)^{200} + (1 - 1)^{200}}{2} = \frac{2^{200} + 0}{2} = 2^{199}.$$

::: elmelet
**Elméleti háttér — Szummázási technikák és binomiális azonosságok.**
- Véges számtani sorozat összege: $\sum_{k=1}^n k = \frac{n(n+1)}{2}$.
- Véges mértani sorozat összege: $\sum_{k=0}^n q^k = \frac{q^{n+1} - 1}{q - 1}$ ($q \ne 1$).
- Binomiális tétel: $(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$.
  - $a = b = 1 \implies \sum_{k=0}^n \binom{n}{k} = 2^n$.
  - $a = 1, b = -1 \implies \sum_{k=0}^n (-1)^k \binom{n}{k} = 0$.
  - Páros tagok: $\sum \binom{n}{2k} = \frac{2^n + 0}{2} = 2^{n-1}$.
  - Páratlan tagok: $\sum \binom{n}{2k+1} = 2^{n-1}$.
:::

## P3.2. feladat

(a) Alakítsuk szorzattá az $a^3 + b^3$, valamint az $a^5 + b^5$ kifejezést!
(b) Írjuk fel általánosan az $a^n + b^n$ kifejezés szorzattá bontását tetszőleges páratlan $n$ pozitív egész esetén!
(c) Mi a helyzet páros $n$ esetén $\mathbb{R}$ felett?

**Megoldás.**

**(a) Köbök és ötödik hatványok összege:**
- $a^3 + b^3 = (a + b)(a^2 - ab + b^2)$.
- $a^5 + b^5 = (a + b)(a^4 - a^3 b + a^2 b^2 - ab^3 + b^4)$.

**(b) Általános szorzat páratlan $n$ esetén:**
Minden páratlan $n \ge 1$ egész számra érvényes az algebrai azonosság:
$$a^n + b^n = (a + b) \sum_{k=0}^{n-1} (-1)^k a^{n-1-k} b^k$$
$$= (a + b)(a^{n-1} - a^{n-2}b + a^{n-3}b^2 - a^{n-4}b^3 + \dots - ab^{n-2} + b^{n-1}).$$
*Bizonyítás kibontással:*
$(a + b) \sum_{k=0}^{n-1} (-1)^k a^{n-1-k} b^k = \sum_{k=0}^{n-1} (-1)^k a^{n-k} b^k + \sum_{k=0}^{n-1} (-1)^k a^{n-1-k} b^{k+1}$.
A két összeg tagjai a szélső tagok kivételével páronként kiejtik egymást:
$$= a^n + (-1)^{n-1} b^n.$$
Mivel $n$ páratlan, $(-1)^{n-1} = (-1)^{\text{páros}} = +1$, így az összeg valóban $a^n + b^n$. $\blacksquare$

**(c) Páros $n$ esete:**
Ha $n$ páros ($n = 2m$), akkor $(a + b)$ NEM gyöktényezője $a^n + b^n$-nek (hiszen $(-b)^n + b^n = b^n + b^n = 2b^n \ne 0$).
Azonban ha $n$ nem 2-hatvány (van páratlan $q > 1$ osztója: $n = 2^k \cdot q$), akkor felírható:
$$a^n + b^n = (a^{2^k})^q + (b^{2^k})^q = (a^{2^k} + b^{2^k})(\dots).$$
Ha viszont $n = 2^k$ tiszta 2-hatvány, akkor $a^{2^k} + b^{2^k}$ az algebra alaptétele szerint $\mathbb{R}$ felett másodfokú tényezők szorzatára bomlik (például $a^4 + b^4 = (a^2 - \sqrt{2}ab + b^2)(a^2 + \sqrt{2}ab + b^2)$), de $\mathbb{Q}$ felett irreducibilis!

::: elmelet
**Elméleti háttér — Binomiális hatványösszegek faktorizációja.**
- Páratlan kitevőre az $x = -b$ helyettesítés zérust ad, így a gyöktényező-tétel miatt $(a + b)$ mindig kiemelhető.
- Páros kitevőre $a^n - b^n$ mindig faktorizálható $(a - b)(a + b)$-vel, de $a^n + b^n$ racionális tényezőkre csak akkor bontható, ha $n$ nem 2-hatvány.
:::

## P3.3. feladat

Gyöktelenítsük az alábbi törtek nevezőjét:
(1) $\displaystyle\frac{\sqrt{7} - \sqrt{3}}{\sqrt{7} + \sqrt{3}}$
(2) $\displaystyle\frac{6}{\sqrt[3]{5} - 1}$
(3) $\displaystyle\frac{3}{\sqrt[3]{9} + \sqrt[3]{3} + 1}$
(4) $\displaystyle\frac{1}{\sqrt{2} + \sqrt{3} - \sqrt{5}}$

**Megoldás.**

**(1)** Bővítsük a nevező konjugáltjával, $(\sqrt{7} - \sqrt{3})$-mal:
$$\frac{\sqrt{7} - \sqrt{3}}{\sqrt{7} + \sqrt{3}} = \frac{(\sqrt{7} - \sqrt{3})^2}{(\sqrt{7} + \sqrt{3})(\sqrt{7} - \sqrt{3})} = \frac{7 - 2\sqrt{21} + 3}{7 - 3} = \frac{10 - 2\sqrt{21}}{4} = \frac{5 - \sqrt{21}}{2}.$$

**(2)** A nevező köbgyökös kifejezés. Használjuk az $a^3 - b^3 = (a - b)(a^2 + ab + b^2)$ azonosságot $a = \sqrt[3]{5}, b = 1$ értékekkel:
$$\frac{6}{\sqrt[3]{5} - 1} = \frac{6(\sqrt[3]{25} + \sqrt[3]{5} + 1)}{(\sqrt[3]{5} - 1)(\sqrt[3]{25} + \sqrt[3]{5} + 1)} = \frac{6(\sqrt[3]{25} + \sqrt[3]{5} + 1)}{5 - 1} = \frac{6(\sqrt[3]{25} + \sqrt[3]{5} + 1)}{4} = \frac{3(\sqrt[3]{25} + \sqrt[3]{5} + 1)}{2}.$$

**(3)** Vegyük észre, hogy a nevező $\sqrt[3]{3^2} + \sqrt[3]{3} \cdot 1 + 1^2$ alakú.
Ha beszorozzuk $(\sqrt[3]{3} - 1)$-gyel, a köbök különbségét kapjuk:
$$\frac{3}{\sqrt[3]{9} + \sqrt[3]{3} + 1} = \frac{3(\sqrt[3]{3} - 1)}{(\sqrt[3]{3} - 1)(\sqrt[3]{9} + \sqrt[3]{3} + 1)} = \frac{3(\sqrt[3]{3} - 1)}{3 - 1} = \frac{3(\sqrt[3]{3} - 1)}{2}.$$

**(4)** Csoportosítsuk a nevezőt két tagként: $(\sqrt{2} + \sqrt{3}) - \sqrt{5}$.
1. Első bővítés a konjugálttal: $[(\sqrt{2} + \sqrt{3}) + \sqrt{5}]$:
   $$\text{Nevező} = [(\sqrt{2} + \sqrt{3}) - \sqrt{5}][(\sqrt{2} + \sqrt{3}) + \sqrt{5}] = (\sqrt{2} + \sqrt{3})^2 - 5 = (2 + 2\sqrt{6} + 3) - 5 = 2\sqrt{6}.$$
   A számláló ekkor: $\sqrt{2} + \sqrt{3} + \sqrt{5}$.
2. Második bővítés $\sqrt{6}$-tal:
   $$\frac{\sqrt{2} + \sqrt{3} + \sqrt{5}}{2\sqrt{6}} = \frac{(\sqrt{2} + \sqrt{3} + \sqrt{5})\sqrt{6}}{2 \cdot 6} = \frac{\sqrt{12} + \sqrt{18} + \sqrt{30}}{12} = \frac{2\sqrt{3} + 3\sqrt{2} + \sqrt{30}}{12}.$$

::: elmelet
**Elméleti háttér — Algebrai törtek nevezőjének gyöktelenítése.**
- **Négyzetgyökök:** $(a - b)(a + b) = a^2 - b^2$.
- **Köbgyökök:** $(a - b)(a^2 + ab + b^2) = a^3 - b^3$ és $(a + b)(a^2 - ab + b^2) = a^3 + b^3$.
- **Három négyzetgyök összege:** $(\sqrt{a} + \sqrt{b}) + \sqrt{c}$ alakban csoportosítva az első lépésben eltűnik az egyik négyzetgyök, és csak egy kereszt-tag ($\sqrt{ab}$) marad, ami egy második lépésben gyökteleníthető.
- Algebrai testbővítések elmélete: $\mathbb{Q}(\sqrt{2}, \sqrt{3})$ egy 4-fokú kiterjesztése $\mathbb{Q}$-nak, ahol minden elemnek létezik multiplikatív inverze.
:::

## P3.4. feladat

Oldjuk meg a valós számok körében az alábbi harmadfokú egyenleteket:
(1) $x^3 + 6x^2 + 12x + 8 = 0$
(2) $x^3 - 6x^2 + 12x - 7 = 0$
(3) $x^3 + 3x^2 + 3x + 9 = 0$

**Megoldás.**

**(1) $x^3 + 6x^2 + 12x + 8 = 0$:**
Vegyük észre a binomiális együtthatókat:
$$(x + 2)^3 = x^3 + 3 \cdot x^2 \cdot 2 + 3 \cdot x \cdot 2^2 + 2^3 = x^3 + 6x^2 + 12x + 8.$$
Az egyenlet tehát pontosan a következő alakba írható:
$$(x + 2)^3 = 0.$$
Ennek egyetlen valós gyöke van (háromszoros multiplicitással):
**$x = -2$.**

**(2) $x^3 - 6x^2 + 12x - 7 = 0$:**
Vegyük észre, hogy az első három tag az $(x - 2)^3$ kifejezésből származik:
$$(x - 2)^3 = x^3 - 6x^2 + 12x - 8.$$
Adjuk hozzá és vonjuk ki a hiányzó konstans tagot:
$$x^3 - 6x^2 + 12x - 7 = (x^3 - 6x^2 + 12x - 8) + 1 = (x - 2)^3 + 1.$$
Az egyenlet tehát:
$$(x - 2)^3 + 1 = 0 \iff (x - 2)^3 = -1.$$
A valós számok körében a köbgyökvonás egyértelmű:
$$x - 2 = \sqrt[3]{-1} = -1 \implies x = 2 - 1 = 1.$$
(Ellenőrzés: $1^3 - 6(1) + 12(1) - 7 = 1 - 6 + 12 - 7 = 0$. Helyes!)
**Egyetlen valós gyök: $x = 1$.**

**(3) $x^3 + 3x^2 + 3x + 9 = 0$:**
Egészítsük ki teljes köbbé az $x^3 + 3x^2 + 3x + 1 = (x + 1)^3$ azonosság felhasználásával:
$$x^3 + 3x^2 + 3x + 9 = (x^3 + 3x^2 + 3x + 1) + 8 = (x + 1)^3 + 8.$$
Az egyenlet így:
$$(x + 1)^3 + 8 = 0 \iff (x + 1)^3 = -8.$$
Köbgyököt vonva $\mathbb{R}$-ben:
$$x + 1 = \sqrt[3]{-8} = -2 \implies x = -3.$$
(Ellenőrzés: $(-3)^3 + 3(-3)^2 + 3(-3) + 9 = -27 + 27 - 9 + 9 = 0$. Helyes!)
**Egyetlen valós gyök: $x = -3$.**

::: elmelet
**Elméleti háttér — Teljes köbbé kiegészítés (Tschirnhaus-transzformáció).**
- Általános harmadfokú polinom: $x^3 + ax^2 + bx + c$.
- A másodfokú tag eltüntethető az $x = y - \frac{a}{3}$ helyettesítéssel (Tschirnhaus-transzformáció).
- Ha a transzformáció után az elsőfokú tag együtthatója is zérus ($b = \frac{a^2}{3}$), az egyenlet közvetlenül $(x + \frac{a}{3})^3 = d$ alakú tiszta köbegyenletre redukálódik.
- Cardano-formula előkészítés: ha az elsőfokú tag nem tűnik el, $y^3 + py + q = 0$ alakra jutunk.
:::

## P3.5. feladat

(a) Alakítsuk szorzattá a valós számok körében az $x^2 - 8x + 15$ polinomot!
(b) Adjuk meg az
$$\begin{aligned} u + v &= 8 \\ uv &= 15 \end{aligned}$$
egyenletrendszer összes valós megoldását!
(c) Adjuk meg az
$$\begin{aligned} u + v &= 6 \\ uv &= 10 \end{aligned}$$
egyenletrendszer összes valós és komplex megoldását!

**Megoldás.**

**(a) Szorzattá alakítás:**
Keressük a polinom gyökeit:
$$x^2 - 8x + 15 = 0 \iff (x - 4)^2 - 16 + 15 = 0 \iff (x - 4)^2 = 1 \implies x = 4 \pm 1.$$
A gyökök $x_1 = 3$ és $x_2 = 5$.
A gyöktényezős alak:
$$x^2 - 8x + 15 = (x - 3)(x - 5).$$

**(b) Az $u + v = 8, uv = 15$ rendszer megoldása:**
A Viète-formulák szerint ha $u$ és $v$ összege $8$ és szorzatuk $15$, akkor $u$ és $v$ pontosan a
$$t^2 - (u + v)t + uv = 0 \iff t^2 - 8t + 15 = 0$$
másodfokú egyenlet két gyöke!
Az (a) rész szerint ennek gyökei $3$ és $5$.
Mivel a rendszer szimmetrikus $u$ és $v$-ben:
- ha $u = 3$, akkor $v = 5$,
- ha $u = 5$, akkor $v = 3$.
**A megoldáspárok:** $(u, v) \in \{(3, 5), (5, 3)\}$.

**(c) Az $u + v = 6, uv = 10$ rendszer megoldása:**
A megfelelő másodfokú segédegyenlet:
$$t^2 - 6t + 10 = 0.$$
A másodfokú egyenlet megoldóképlete:
$$t_{1, 2} = \frac{6 \pm \sqrt{36 - 40}}{2} = \frac{6 \pm \sqrt{-4}}{2} = \frac{6 \pm 2i}{2} = 3 \pm i.$$
Mivel a diszkrimináns $\Delta = -4 < 0$, az egyenletnek nincs valós gyöke.
A valós számok körében a rendszernek **nincs megoldása**.
A komplex számok körében a megoldáspárok:
$$(u, v) = (3 + i,\ 3 - i) \quad \text{és} \quad (u, v) = (3 - i,\ 3 + i).$$

::: elmelet
**Elméleti háttér — Viète-formulák másodfokú egyenletekre.**
- Egy másodfokú főpolinom $t^2 + pt + q = (t - u)(t - v) = t^2 - (u + v)t + uv$.
- Ezért az $u + v = S, uv = P$ szimmetrikus egyenletrendszer megoldása pontosan megegyezik a $t^2 - St + P = 0$ egyenlet gyökeivel.
- A diszkrimináns $\Delta = S^2 - 4P$:
  - $\Delta > 0$: két különböző valós megoldás (2 permutált pár),
  - $\Delta = 0$: egyetlen valós megoldás ($u = v = S/2$),
  - $\Delta < 0$: valós megoldás nincs, két konjugált komplex gyökpár van.
:::

## P3.6. feladat

Végezzük el az alábbi műveleteket a valós polinomok körében, és állapítsuk meg az eredmények fokszámát:
(1) $P(x) = (3x^5 - 2x^3 + 4x - 1) - (3x^5 + 4x^4 - 2x^3 + x^2 - 5)$
(2) $Q(x) = (2x^3 - x + 3)(3x^2 + 2x - 1)$

**Megoldás.**

**(1) Kivonás és fokszám:**
Bontsuk fel a zárójeleket és vonjuk össze az egynemű tagokat:
$$P(x) = (3x^5 - 2x^3 + 4x - 1) - (3x^5 + 4x^4 - 2x^3 + x^2 - 5)$$
$$= 3x^5 - 2x^3 + 4x - 1 - 3x^5 - 4x^4 + 2x^3 - x^2 + 5.$$
Csoportosítsuk a tagokat csökkenő fokszám szerint:
- $x^5$ együtthatója: $3 - 3 = 0$ (a legmagasabb fokú tag kiejti egymást!).
- $x^4$ együtthatója: $-4$.
- $x^3$ együtthatója: $-2 + 2 = 0$.
- $x^2$ együtthatója: $-1$.
- $x^1$ együtthatója: $4$.
- Konstans tag: $-1 + 5 = 4$.
Így az összevont polinom:
$$P(x) = -4x^4 - x^2 + 4x + 4.$$
A legmagasabb nemnulla együtthatójú tag a $-4x^4$, így a polinom fokszáma:
**Fokszám:** $\deg(P) = 4$.

**(2) Szorzás és fokszám:**
Szorozzuk össze a két polinomot tagonként:
$$Q(x) = (2x^3 - x + 3)(3x^2 + 2x - 1)$$
$$= 2x^3(3x^2 + 2x - 1) - x(3x^2 + 2x - 1) + 3(3x^2 + 2x - 1)$$
$$= (6x^5 + 4x^4 - 2x^3) - (3x^3 + 2x^2 - x) + (9x^2 + 6x - 3)$$
$$= 6x^5 + 4x^4 + (-2 - 3)x^3 + (-2 + 9)x^2 + (1 + 6)x - 3$$
$$= 6x^5 + 4x^4 - 5x^3 + 7x^2 + 7x - 3.$$
A főtag a $6x^5$, együtthatója $6 \ne 0$.
A szorzat fokszáma:
**Fokszám:** $\deg(Q) = 5$ (ami a tényezők fokszámának összege: $3 + 2 = 5$).

::: elmelet
**Elméleti háttér — Polinomok fokszámtételei.**
Tetszőleges $f, g \in K[x]$ nemnulla polinomokra:
1. **Szorzat foka:** $\deg(f \cdot g) = \deg(f) + \deg(g)$ (integritási tartományban a főegyütthatók szorzata nem nulla: $a_n b_m \ne 0$).
2. **Összeg foka:** $\deg(f + g) \le \max(\deg f, \deg g)$.
   - Ha $\deg f \ne \deg g$, akkor $\deg(f + g) = \max(\deg f, \deg g)$.
   - Ha $\deg f = \deg g$ és a főegyütthatók ellentettjei egymásnak ($a_n = -b_n$), akkor a főtag kiesik, és az összeg foka szigorúan kisebb lesz ($\deg(f + g) < n$), sőt a nullpolinom is előállhat.
:::

## P3.7. feladat

Mi lesz az $x^{14}$ fokú tag együtthatója a
$$P(x) = (2x^8 - 3x^6 + x^2 - 4)(x^8 + 3x^6 - 2x^4 + 5)$$
polinomban?

**Megoldás.**

Jelölje a két tényezőt $A(x) = 2x^8 - 3x^6 + x^2 - 4$ és $B(x) = x^8 + 3x^6 - 2x^4 + 5$.
A szorzatban az $x^{14}$ kitevőjű tagot olyan tagok szorzatai adják, amelyekben a kitevők összege $14$:
$$x^i \cdot x^j = x^{14} \iff i + j = 14.$$
Nézzük meg $A(x)$ lehetséges nemzérus tagjait ($i \in \{8, 6, 2, 0\}$) és a hozzájuk tartozó szükséges kitevőket $B(x)$-ben ($j = 14 - i$):
1. Ha $i = 8$: $j = 14 - 8 = 6$.
   - $A(x)$-ben az $x^8$ együtthatója: $2$.
   - $B(x)$-ben az $x^6$ együtthatója: $3$.
   - A szorzatuk hozzájárulása: $2 \cdot 3 = 6$.
2. Ha $i = 6$: $j = 14 - 6 = 8$.
   - $A(x)$-ben az $x^6$ együtthatója: $-3$.
   - $B(x)$-ben az $x^8$ együtthatója: $1$.
   - A szorzatuk hozzájárulása: $(-3) \cdot 1 = -3$.
3. Ha $i = 2$: $j = 14 - 2 = 12$.
   - $B(x)$-ben nincs $x^{12}$ tag (együtthatója 0), hozzájárulás: 0.
4. Ha $i = 0$: $j = 14 - 0 = 14$.
   - $B(x)$-ben nincs $x^{14}$ tag, hozzájárulás: 0.

Adjuk össze a kapott hozzájárulásokat:
$$c_{14} = 2 \cdot 3 + (-3) \cdot 1 = 6 - 3 = 3.$$

**Végeredmény:**
Az $x^{14}$-es tag együtthatója **$3$**.

::: elmelet
**Elméleti háttér — Cauchy-szorzat és konvolúció.**
- Két polinom szorzatának $k$-adik együtthatója a Cauchy-szorzat (diszkrét konvolúció):
  $$c_k = \sum_{i+j=k} a_i b_j = \sum_{i=0}^k a_i b_{k-i}.$$
- Generátorfüggvényeknél ez felel meg a független diszkrét valószínűségi változók összegének eloszlásához tartozó valószínűségeknek.
:::

## P3.8. feladat

Egy nyolcadfokú $P(x)$ és egy $m$-edfokú $Q(x)$ polinom összege harmadfokú:
$$\deg(P) = 8, \quad \deg(Q) = m, \quad \deg(P + Q) = 3.$$
Mik az $m$ lehetséges értékei? Mit mondhatunk $P$ és $Q$ főegyütthatóiról?

**Megoldás.**

A polinomok összegének fokszámára vonatkozó általános tétel szerint:
$$\deg(P + Q) \le \max(\deg P, \deg Q).$$
- **Ha $m < 8$:**
  Ekkor $\max(\deg P, \deg Q) = \max(8, m) = 8$.
  Mivel a fokszámok különböznek ($\deg P \ne \deg Q$), a 8-adfokú tag együtthatója a szummában kizárólag $P$-ből származik, így nem eshet ki:
  $$\deg(P + Q) = 8 \ne 3.$$
  Tehát $m < 8$ nem lehetséges.
- **Ha $m > 8$:**
  Ekkor $\max(\deg P, \deg Q) = m > 8$.
  Mivel a fokszámok különböznek, az összeg foka szükségszerűen:
  $$\deg(P + Q) = m > 8 \ne 3.$$
  Tehát $m > 8$ sem lehetséges.
- **Ha $m = 8$:**
  Ekkor $\deg P = \deg Q = 8$.
  Legyen $P(x) = a_8 x^8 + \dots$ és $Q(x) = b_8 x^8 + \dots$, ahol $a_8 \ne 0$ és $b_8 \ne 0$.
  Az összeg:
  $$P(x) + Q(x) = (a_8 + b_8)x^8 + (a_7 + b_7)x^7 + \dots + (a_3 + b_3)x^3 + \dots$$
  Ahhoz, hogy az összeg foka pontosan 3 legyen, szükséges és elégséges, hogy:
  1. A 8-adfokú tagok kiejtsék egymást: $a_8 + b_8 = 0 \iff b_8 = -a_8$.
  2. A 7-edfokú, 6-odfokú, 5-ödfokú és 4-edfokú tagok is kiejtsék egymást: $a_k + b_k = 0$ minden $k \in \{4, 5, 6, 7\}$ esetén.
  3. A 3-adfokú tag ne essen ki: $a_3 + b_3 \ne 0$.

**Végeredmény:**
Az $m$ egyetlen lehetséges értéke: **$m = 8$**.
A főegyütthatókról elmondható, hogy **egymás ellentettjei**: $b_8 = -a_8$ (továbbá a 4-től 7-ig terjedő tagok együtthatói is egymás ellentettjei, de a 3-adfokú együtthatók összege nem zérus).

::: elmelet
**Elméleti háttér — Polinomösszeg fokcsökkenése.**
- Egy polinomösszeg foka kizárólag akkor lehet szigorúan kisebb mindkét tag fokánál, ha a tagok fokszáma megegyezik ($\deg P = \deg Q$), és a legmagasabb fokú tagok kiejtik egymást.
- Ha $\deg(P + Q) = k < n$, akkor a két polinom első $n - k$ darab legmagasabb fokú együtthatója páronként egymás ellentettje kell legyen.
:::

## P3.9. feladat

Két valós polinom szorzata tizedfokú, összegük pedig negyedfokú:
$$\deg(P \cdot Q) = 10, \qquad \deg(P + Q) = 4.$$
Mennyi lehet a két polinom fokszáma külön-külön?

**Megoldás.**

Legyen $\deg(P) = a$ és $\deg(Q) = b$, ahol $a, b \in \mathbb{N}_0$.
A szorzat fokszámára vonatkozó tétel szerint valós polinomok körében:
$$\deg(P \cdot Q) = \deg(P) + \deg(Q) \implies a + b = 10.$$

Vizsgáljuk meg az összeg fokszámát:
$$\deg(P + Q) \le \max(a, b).$$
- **1. eset: $a \ne b$:**
  Ekkor $\deg(P + Q) = \max(a, b)$.
  A feladat feltétele szerint $\deg(P + Q) = 4$, tehát:
  $$\max(a, b) = 4.$$
  Ekkor mivel $a \ge 0$ és $b \ge 0$, az összegük legfeljebb:
  $$a + b \le 4 + 4 = 8 < 10.$$
  Ez ellentmond annak, hogy $a + b = 10$!
  Tehát $a \ne b$ nem lehetséges.

- **2. eset: $a = b$:**
  Mivel $a + b = 10$ és $a = b$, ezért:
  $$2a = 10 \implies a = b = 5.$$
  Ekkor mindkét polinom **ötödfokú**:
  $$\deg(P) = 5 \quad \text{és} \quad \deg(Q) = 5.$$
  Megvizsgáljuk, hogy ekkor lehetséges-e $\deg(P + Q) = 4$:
  Igen, ha a két ötödfokú tag együtthatója egymás ellentettje ($b_5 = -a_5$), akkor az ötödfokú tag kiesik, és ha $a_4 + b_4 \ne 0$, akkor az összeg foka pontosan 4 lesz!
  Konkrét példa:
  $$P(x) = x^5 + 2x^4, \qquad Q(x) = -x^5 + x^4.$$
  Ekkor $P(x)Q(x) = -x^{10} + \dots$ (foka 10), és $P(x) + Q(x) = 3x^4$ (foka 4).

**Végeredmény:**
Mindkét polinom fokszáma szükségszerűen **5**:
$$\deg(P) = 5, \qquad \deg(Q) = 5.$$

::: elmelet
**Elméleti háttér — Fokszám-egyenletrendszerek.**
- A fokszámokra vonatkozó összefüggések algebrai egyenlőtlenségeket adnak:
  $a + b = 10$ és $\max(a, b) \ge \deg(P + Q) = 4$.
  Ha $a \ne b$, akkor $\max(a, b) = 4$, amiből $a + b \le 7$, ellentmondás.
- Az egyetlen feloldás a szimmetrikus $a = b = 5$ eset, ahol a legfelső fokszám kiesése lehetséges.
:::

## P3.10. feladat

Emeljük ki az $(x - 2)$ gyöktényezőt a
$$P(x) = x^3 - 5x^2 + 2x + 8$$
polinomból polinomosztással vagy Horner-elrendezéssel, majd határozzuk meg a polinom összes valós és komplex gyökét!

**Megoldás.**

1. **Gyök ellenőrzése:**
   $$P(2) = 2^3 - 5(2^2) + 2(2) + 8 = 8 - 20 + 4 + 8 = 0.$$
   Tehát $x = 2$ valóban gyöke a polinomnak.

2. **Horner-elrendezés $c = 2$-vel:**
   Írjuk fel a Horner-táblázatot az együtthatókkal ($1, -5, 2, 8$):

| | $x^3$ (1) | $x^2$ (-5) | $x^1$ (2) | konstans (8) |
|:---:|:---:|:---:|:---:|:---:|
| $c = 2$ | 1 | $2(1) + (-5) = -3$ | $2(-3) + 2 = -4$ | $2(-4) + 8 = 0$ |

   A maradék $0$, a hányadospolinom együtthatói: $1, -3, -4$.
   Tehát:
   $$P(x) = (x - 2)(x^2 - 3x - 4).$$

3. **A hányados gyökeinek meghatározása:**
   Oldjuk meg az $x^2 - 3x - 4 = 0$ másodfokú egyenletet:
   $$(x - 4)(x + 1) = 0.$$
   A gyökök:
   $$x_2 = 4, \qquad x_3 = -1.$$

4. **A teljes gyöktényezős alak:**
   $$P(x) = (x - 2)(x - 4)(x + 1).$$
   A polinom összes gyöke valós:
   **Gyökök:** $x_1 = 2, \quad x_2 = 4, \quad x_3 = -1$.
   (Ellenőrzés: $(x-2)(x-4)(x+1) = (x^2 - 6x + 8)(x + 1) = x^3 + x^2 - 6x^2 - 6x + 8x + 8 = x^3 - 5x^2 + 2x + 8$. Helyes!)

::: elmelet
**Elméleti háttér — Gyöktényező kiemelése és a Horner-módszer.**
- Ha $P(c) = 0$, akkor $P(x) = (x - c) Q(x)$.
- A Horner-elrendezés sorban számítja ki a $b_k = c b_{k+1} + a_k$ hányados-együtthatókat.
- Harmadfokú polinom esetén egy ismert gyök kiemelése után a megmaradó másodfokú polinom közvetlenül megoldóképlettel vagy szorzattá alakítással oldható meg.
:::

## P3.11. feladat

A Horner-elrendezés segítségével döntsük el, hogy az
$$f(x) = x^5 - 4x^4 + 3x^3 + 2x^2 - 5x + 6$$
polinomnak gyöke-e a $c = 2$ szám, és írjuk fel az $f(x)$ polinomot $(x - 2)g(x) + f(2)$ alakban!

**Megoldás.**

Írjuk fel a Horner-elrendezés táblázatát a polinom együtthatóival:
Együtthatók: $a_5 = 1, \ a_4 = -4, \ a_3 = 3, \ a_2 = 2, \ a_1 = -5, \ a_0 = 6$.

| | $x^5$ (1) | $x^4$ (-4) | $x^3$ (3) | $x^2$ (2) | $x^1$ (-5) | $x^0$ (6) |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $c = 2$ | 1 | $2(1) - 4 = -2$ | $2(-2) + 3 = -1$ | $2(-1) + 2 = 0$ | $2(0) - 5 = -5$ | $2(-5) + 6 = -4$ |

A táblázat utolsó eleme a helyettesítési érték (az osztás maradéka):
$$f(2) = -4.$$
Mivel $f(2) = -4 \ne 0$, a $c = 2$ szám **NEM gyöke** az $f(x)$ polinomnak.

A hányadospolinom együtthatói a táblázat közbenső elemei:
$$b_4 = 1, \quad b_3 = -2, \quad b_2 = -1, \quad b_1 = 0, \quad b_0 = -5.$$
Így a hányadospolinom:
$$g(x) = x^4 - 2x^3 - x^2 - 5.$$
A felírás:
$$f(x) = (x - 2)(x^4 - 2x^3 - x^2 - 5) - 4.$$
(Ellenőrzés kibontással:
$(x-2)(x^4 - 2x^3 - x^2 - 5) - 4 = x^5 - 2x^4 - x^3 - 5x - 2x^4 + 4x^3 + 2x^2 + 10 - 4 = x^5 - 4x^4 + 3x^3 + 2x^2 - 5x + 6$. Helyes!)

::: elmelet
**Elméleti háttér — A Horner-elrendezés és a maradéktétel.**
- Ha az $f(x)$ polinomot maradékosan osztjuk az $(x - c)$ elsőfokú polinommal:
  $$f(x) = (x - c) g(x) + r.$$
  Mivel a maradék foka kisebb az osztó fokánál ($\deg r < 1$), $r$ konstans.
  Az $x = c$ helyettesítéssel azonnal adódik, hogy $r = f(c)$.
- A Horner-algoritmus egyetlen menetben határozza meg a helyettesítési értéket ($f(c)$) és a hányadospolinom ($g(x)$) összes együtthatóját, minimális számú művelettel ($n$ szorzás és $n$ összeadás).
:::

## P3.12. feladat

Hányszoros gyöke az $x = -1$ az
$$f(x) = x^5 + 3x^4 + 4x^3 + 4x^2 + 3x + 1$$
polinomnak? Határozzuk meg a multiplicitást iterált Horner-elrendezéssel!

**Megoldás.**

Futtassuk az iterált Horner-algoritmust a $c = -1$ értékkel mindaddig, amíg a maradék zérus:

**1. menet:** együtthatók $[1, 3, 4, 4, 3, 1]$
- $b_4 = 1$
- $b_3 = (-1)(1) + 3 = 2$
- $b_2 = (-1)(2) + 4 = 2$
- $b_1 = (-1)(2) + 4 = 2$
- $b_0 = (-1)(2) + 3 = 1$
- Maradék $r_0 = (-1)(1) + 1 = 0$.
Mivel a maradék $0$, $x = -1$ **legalább 1-szeres gyök**.
A hányados: $g_1(x) = x^4 + 2x^3 + 2x^2 + 2x + 1$.

**2. menet:** együtthatók $[1, 2, 2, 2, 1]$
- $b_3 = 1$
- $b_2 = (-1)(1) + 2 = 1$
- $b_1 = (-1)(1) + 2 = 1$
- $b_0 = (-1)(1) + 2 = 1$
- Maradék $r_1 = (-1)(1) + 1 = 0$.
Mivel a maradék $0$, $x = -1$ **legalább 2-szeres gyök**.
A hányados: $g_2(x) = x^3 + x^2 + x + 1$.

**3. menet:** együtthatók $[1, 1, 1, 1]$
- $b_2 = 1$
- $b_1 = (-1)(1) + 1 = 0$
- $b_0 = (-1)(0) + 1 = 1$
- Maradék $r_2 = (-1)(1) + 1 = 0$.
Mivel a maradék $0$, $x = -1$ **legalább 3-szoros gyök**.
A hányados: $g_3(x) = x^2 + 1$.

**4. menet:** együtthatók $[1, 0, 1]$
- $b_1 = 1$
- $b_0 = (-1)(1) + 0 = -1$
- Maradék $r_3 = (-1)(-1) + 1 = 2$.
A maradék $r_3 = 2 \ne 0$.
Ez azt jelenti, hogy $g_3(-1) = 2 \ne 0$, vagyis az $x = -1$ már nem gyöke $g_3(x)$-nek.

A leállási feltétel alapján:
$$f(x) = (x + 1)^3 (x^2 + 1).$$
Mivel $x^2 + 1$-nek nincs valós gyöke (komplex gyökei $\pm i$), a $-1$ pontosan 3-szoros gyök.

**Végeredmény:**
Az $x = -1$ **pontosan 3-szoros gyöke** a polinomnak.

::: elmelet
**Elméleti háttér — Gyökök multiplicitása és az iterált Horner.**
- Egy $c$ gyök multiplicitása $m$, ha $(x - c)^m \mid f(x)$, de $(x - c)^{m+1} \nmid f(x)$.
- Analízisbeli ekvivalencia: $f(c) = f'(c) = \dots = f^{(m-1)}(c) = 0$, de $f^{(m)}(c) \ne 0$.
- Az iterált Horner-módszer pontosan ezt a derivált-sorozatot számítja ki osztás nélkül, hiszen a maradékok:
  $$r_k = \frac{f^{(k)}(c)}{k!}.$$
- A módszerrel a polinom teljes multiplicitási struktúrája feltárható.
:::

## P3.13. feladat

Iterált Horner-elrendezés segítségével írjuk fel az
$$f(x) = 2x^4 - 3x^3 + x^2 - 4x + 5$$
polinomot $(x - 2)$ hatványai szerint haladó polinomként (azaz határozzuk meg azokat a $d_k$ együtthatókat, amelyekre $f(x) = \sum_{k=0}^4 d_k (x - 2)^k$)!

**Megoldás.**

Az $f(x)$ polinom $(x - 2)$ bázisban való felírása a Taylor-formula algebrai változata.
Alkalmazzuk az iterált Horner-elrendezést a $c = 2$ értékkel:

- **0. sor (eredeti együtthatók):** $[2, -3, 1, -4, 5]$
- **1. menet:**
  - $2$
  - $2(2) - 3 = 1$
  - $2(1) + 1 = 3$
  - $2(3) - 4 = 2$
  - **Maradék $d_0 = 2(2) + 5 = 9$.**
  Hányados: $[2, 1, 3, 2]$.

- **2. menet:**
  - $2$
  - $2(2) + 1 = 5$
  - $2(5) + 3 = 13$
  - **Maradék $d_1 = 2(13) + 2 = 28$.**
  Hányados: $[2, 5, 13]$.

- **3. menet:**
  - $2$
  - $2(2) + 5 = 9$
  - **Maradék $d_2 = 2(9) + 13 = 31$.**
  Hányados: $[2, 9]$.

- **4. menet:**
  - $2$
  - **Maradék $d_3 = 2(2) + 9 = 13$.**
  Hányados: $[2]$.

- **Utolsó megmaradó együttható:**
  - **$d_4 = 2$.**

A maradékok alulról felfelé (vagy a leállási sorrendben) adják meg a keresett együtthatókat:
$$d_4 = 2, \quad d_3 = 13, \quad d_2 = 31, \quad d_1 = 28, \quad d_0 = 9.$$
Így a keresett polinom:
$$f(x) = 2(x - 2)^4 + 13(x - 2)^3 + 31(x - 2)^2 + 28(x - 2) + 9.$$

*Ellenőrzés:*
- $x = 2 \implies f(2) = 9$. Eredetiből: $2(16) - 3(8) + 4 - 8 + 5 = 32 - 24 + 4 - 8 + 5 = 9$. Helyes!
- Konstans tag ($x = 0$): $2(16) + 13(-8) + 31(4) + 28(-2) + 9 = 32 - 104 + 124 - 56 + 9 = 5$. Eredetiben: $5$. Helyes!

::: elmelet
**Elméleti háttér — Polinomok Taylor-sora és bázistranszformáció.**
- Bármely $f \in K[x]$ polinom egyértelműen felírható az $(x - c)^k$ bázisban:
  $$f(x) = \sum_{k=0}^n d_k (x - c)^k.$$
- Az együtthatók analitikus jelentése: $d_k = \frac{f^{(k)}(c)}{k!}$.
- Az iterált Horner-algoritmus ezt a bázisváltást (a koordinátatranszformációt) számítási szempontból optimálisan hajtja végre, elkerülve a deriválást és a mátrixinvertálást.
:::

## P3.14. feladat

Egy $n$-edfokú $f(x) = a_n x^n + \dots + a_1 x + a_0$ polinomba behelyettesítjük a $b$ számot. Hány szorzásra van szükség az $f(b)$ érték kiszámításához, ha:
(a) teljesen naivan számolunk (minden tagban a $b^k$-t külön $b \cdot b \cdots b$ szorzásokkal számítjuk);
(b) a $b$ hatványait ($b^2, b^3, \dots, b^n$) előre kiszámoljuk és eltároljuk;
(c) a Horner-elrendezést alkalmazzuk?

**Megoldás.**

**(a) Naiv módszer:**
Az $a_k b^k$ tag kiszámítása:
- $b^k$ kiszámítása: $k - 1$ darab szorzás ($b \cdot b \dots$).
- Megszorzása $a_k$-val: további $1$ szorzás.
- Így az $a_k b^k$ tag összesen $(k - 1) + 1 = k$ darab szorzást igényel ($k \ge 1$).
A konstans taghoz ($a_0$) nem kell szorzás.
Az összes szorzás száma:
$$\sum_{k=1}^n k = \frac{n(n + 1)}{2} = \frac{n^2 + n}{2}.$$
Ez másodrendű, $O(n^2)$ műveletigényű!

**(b) Előre kiszámolt hatványok módszere:**
1. A hatványok sorozatos kiszámítása:
   $$b^2 = b \cdot b \quad (1 \text{ szorzás}),$$
   $$b^3 = b^2 \cdot b \quad (1 \text{ szorzás}),$$
   $$\dots$$
   $$b^n = b^{n-1} \cdot b \quad (1 \text{ szorzás}).$$
   Ez összesen $n - 1$ darab szorzás.
2. A tagok megszorzása az együtthatókkal:
   $a_1 b, \ a_2 b^2, \ \dots, \ a_n b^n$ kiszámítása további $n$ darab szorzást igényel.
Összesen:
$$(n - 1) + n = 2n - 1 \quad \text{szorzás}.$$
Ez már lineáris, $O(n)$ műveletigény!

**(c) Horner-elrendezés:**
Írjuk fel a polinomot beágyazott zárójelekkel:
$$f(b) = (\dots((a_n b + a_{n-1})b + a_{n-2})b + \dots + a_1)b + a_0.$$
Minden zárójel kibontásakor pontosan 1 szorzást végzünk $b$-vel.
Mivel a legfelső foktól $a_n$-től $a_0$-ig pontosan $n$ lépésben lépünk lefelé:
Összesen:
$$n \quad \text{szorzás}$$
szükséges (és pontosan $n$ darab összeadás).

**Összehasonlítás ($n = 10$ esetén):**
- Naiv módszer: $\frac{10 \cdot 11}{2} = 55$ szorzás.
- Előre tárolt hatványok: $2(10) - 1 = 19$ szorzás.
- Horner-módszer: $10$ szorzás.

::: elmelet
**Elméleti háttér — Algoritmikus komplexitás: Ostrowski-tétel.**
- **Ostrowski-tétel (1954):** Tetszőleges $n$-edfokú polinom kiértékeléséhez legalább $n$ szorzásra/osztásra van szükség.
- A Horner-elrendezés eléri ezt az elméleti alsó korlátot: **optimális algoritmus** a szorzások számát tekintve.
- Ezen felül memóriatakarékos is: nem igényel segédtömböt a hatványok tárolására, egyetlen regiszterben futtatható (akkumulátor).
:::

## P3.15. feladat

Bizonyítsuk be, hogy nem létezik olyan egész együtthatós $P(x) \in \mathbb{Z}[x]$ polinom, amelyre egyszerre teljesül, hogy
$$P(7) = 11 \qquad \text{és} \qquad P(11) = 13.$$

**Megoldás.**

*Bizonyítás az egész együtthatós polinomok alaptulajdonságával:*

**Alaptétel:**
Ha $P(x) \in \mathbb{Z}[x]$ egész együtthatós polinom, akkor bármely két különböző $a, b \in \mathbb{Z}$ egész számra:
$$a - b \mid P(a) - P(b).$$

*Az alaptétel bizonyítása:*
Legyen $P(x) = \sum_{k=0}^n c_k x^k$, ahol $c_k \in \mathbb{Z}$. Ekkor:
$$P(a) - P(b) = \sum_{k=0}^n c_k (a^k - b^k).$$
Tudjuk, hogy minden $k \ge 1$-re $a - b \mid a^k - b^k$.
Mivel a szumma minden tagja osztható $(a - b)$-vel, és a $c_k$ együtthatók egészek, ezért az egész összeg is osztható $(a - b)$-vel:
$$a - b \mid P(a) - P(b). \qquad \blacksquare$$

Alkalmazzuk a tételt a feladatban szereplő konkrét értékekre:
Legyen $a = 11$ és $b = 7$.
Ekkor a bal oldal:
$$a - b = 11 - 7 = 4.$$
A jobb oldal:
$$P(a) - P(b) = P(11) - P(7) = 13 - 11 = 2.$$
A tétel szerint teljesülnie kellene az
$$a - b \mid P(a) - P(b) \iff 4 \mid 2$$
oszthatóságnak.
A 4 azonban nem osztója a 2-nek ($2/4 = 1/2 \notin \mathbb{Z}$).

A kapott ellentmondás bizonyítja, hogy nem létezhet ilyen egész együtthatós polinom. $\blacksquare$

::: elmelet
**Elméleti háttér — Egész együtthatós polinomok osztási alaptétele.**
- Ha $P \in \mathbb{Z}[x]$, akkor tetszőleges $a, b \in \mathbb{Z}$-re $a \equiv b \pmod m \implies P(a) \equiv P(b) \pmod m$.
- Speciálisan $m = a - b$ választással azonnal kapjuk, hogy $a - b \mid P(a) - P(b)$.
- Ez a tulajdonság elengedhetetlen eszköz diofantoszi egyenletekben, periodicity vizsgálatokban és a polinomok egész értékeinek korlátozásában.
:::

## P3.16. feladat

Bizonyítsuk be, hogy egyetlen nem konstans, egész együtthatós $P(x) \in \mathbb{Z}[x]$ polinom sem adhat minden $x$ egész számra prímszám értéket!

**Megoldás.**

*Bizonyítás indirekt úton:*
Tegyük fel, hogy létezik olyan nem konstans $P(x) \in \mathbb{Z}[x]$ polinom, amelyre $P(x)$ prím minden $x \in \mathbb{Z}$ esetén.
Válasszunk egy tetszőleges egész számot, mondjuk $x_0 = 0$-t vagy $1$-et.
Legyen a felvett prímérték:
$$P(x_0) = p \quad \text{(prímszám)}.$$
Tekintsük most az $x_0 + k \cdot p$ alakú helyeket, ahol $k \in \mathbb{Z}$ tetszőleges egész szám!
Alkalmazzuk az egész együtthatós polinomok osztási alaptételét az $a = x_0 + kp$ és $b = x_0$ számokra:
$$a - b = (x_0 + kp) - x_0 = kp.$$
A tétel szerint:
$$a - b \mid P(a) - P(b) \implies kp \mid P(x_0 + kp) - P(x_0).$$
Mivel $p \mid kp$, a tranzitivitás miatt:
$$p \mid P(x_0 + kp) - p.$$
Ez azt jelenti, hogy $P(x_0 + kp)$ osztható $p$-vel minden $k \in \mathbb{Z}$ esetén:
$$p \mid P(x_0 + kp).$$
A feltevésünk szerint azonban $P(x_0 + kp)$ maga is prímszám minden $k$-ra!
Egy prímszám csak akkor lehet osztható $p$-vel, ha egyenlő $p$-vel vagy $-p$-vel:
$$P(x_0 + kp) \in \{p, -p\} \qquad \text{minden } k \in \mathbb{Z} \text{ esetén.}$$
Ez azt jelenti, hogy a $P(x) - p = 0$ és $P(x) + p = 0$ egyenleteknek összesen végtelen sok gyöke lenne (minden $k \in \mathbb{Z}$-re a $x_0 + kp$ gyöke valamelyiknek).
Egy nem konstans, $n$-edfokú polinomnak ($n \ge 1$) azonban legfeljebb $n$ darab gyöke lehet a valós számok (vagy komplex számok) felett!
Ellentmondás!
A kapott ellentmondás bizonyítja, hogy nem létezik olyan nem konstans egész együtthatós polinom, amely minden egész helyen prímszámot vesz fel. $\blacksquare$

::: elmelet
**Elméleti háttér — Euler prímgeneráló polinomja és a prímszámok periodicitása.**
- Euler híres polinomja: $E(x) = x^2 + x + 41$.
  $x = 0, 1, 2, \dots, 39$ értékekre (40 egymást követő egészre) mind prímszámot ad ($41, 43, 47, \dots, 1601$).
  Azonban $x = 40$-re $E(40) = 40^2 + 40 + 41 = 40(41) + 41 = 41^2$ összetett szám!
  $x = 41$-re $E(41) = 41^2 + 41 + 41 = 41(43)$ szintén összetett.
- Nincs olyan algebrai formula (polinom), amely kizárólag prímszámokat generálna minden egész bemenetre.
:::

## P3.17. feladat

(Schur tétele polinomokra) Bizonyítsuk be, hogy ha $P(x) \in \mathbb{Z}[x]$ egy nem konstans egész együtthatós polinom, akkor a
$$P(1), P(2), P(3), \dots$$
helyettesítési értékeknek összesen végtelen sok különböző prímosztója van!

**Megoldás.**

*Bizonyítás indirekt úton (Eukleidész módszerének általánosítása):*

Feltehetjük, hogy $P(0) \ne 0$ (ha $P(0) = 0$, akkor $P(x) = x^k Q(x)$, és $x = p$ prímek behelyettesítésével azonnal végtelen sok prímosztót kapunk).
Legyen a konstans tag $a_0 = P(0) \ne 0$.

Tegyük fel indirekt, hogy a $\{P(n) : n \in \mathbb{N}^+\}$ értékeknek csak **véges sok különböző prímosztója** van, jelölje ezeket:
$$q_1, q_2, \dots, q_k.$$
Legyen ezen véges sok prím szorzata:
$$M = q_1 q_2 \cdots q_k.$$

Tekintsük a polinomot a következő helyeken:
$$x = m \cdot a_0 M, \qquad \text{ahol } m \in \mathbb{N}^+.$$
Írjuk fel a polinomot hatványok szerint:
$$P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0.$$
Helyettesítsük be $x = m a_0 M$-et:
$$P(m a_0 M) = a_n (m a_0 M)^n + \dots + a_1 (m a_0 M) + a_0$$
$$= a_0 \left[ 1 + m M \cdot \left( a_1 + a_2 (m a_0 M) + \dots + a_n a_0^{n-1} m^{n-1} M^{n-1} \right) \right].$$
Jelölje a belső zárójelben álló egész kifejezést $K$:
$$P(m a_0 M) = a_0 (1 + m M K).$$
Válasszunk egy olyan elég nagy $m \in \mathbb{N}$ értéket, amelyre $|1 + m M K| > 1$ (mivel $P$ nem konstans, $K \ne 0$ elég nagy $m$-re).
Tekintsük az $1 + m M K$ egész szám egy tetszőleges $p$ prímosztóját:
$$p \mid 1 + m M K.$$
- Mivel $p \mid 1 + m M K$, ezért $p$ osztója a $P(m a_0 M)$ helyettesítési értéknek is!
- Az indirekt feltevésünk szerint a polinom értékeinek minden prímosztója a $\{q_1, \dots, q_k\}$ halmazból kell kikerüljön, így $p \in \{q_1, \dots, q_k\}$.
- De a definíció szerint $M = q_1 \dots q_k$, ezért ha $p \in \{q_1, \dots, q_k\}$, akkor:
  $$p \mid M \implies p \mid m M K.$$
- Ekkor azonban $p$ osztja mind az $1 + m M K$ számot, mind az $m M K$ számot!
- Így osztania kell a különbségüket is:
  $$p \mid (1 + m M K) - m M K = 1.$$
Ez nyilvánvaló képtelenség, hiszen $p$ prímszám ($p \ge 2$)!

A kapott ellentmondás bizonyítja, hogy a helyettesítési értékeknek nem lehet csupán véges sok prímosztója, tehát összesen **végtelen sok különböző prímosztójuk van**. $\blacksquare$

::: elmelet
**Elméleti háttér — Schur tétele és az algebrai prímgenerálás.**
- Issai Schur (1912) tétele az eukleidészi prím-végtelenségi tétel mély általánosítása tetszőleges polinomra.
- Speciális esetek:
  - $P(x) = x$: az összes prím előáll.
  - $P(x) = x^2 + 1$: bizonyítja, hogy végtelen sok olyan prím van, amely osztója egy $n^2 + 1$ alakú számnak.
  - $P(x) = \Phi_m(x)$ (körosztási polinom): elemi úton bizonyítja Dirichlet tételének speciális esetét: végtelen sok $p \equiv 1 \pmod m$ alakú prím létezik!
:::

## P3.18. feladat

Tegyük fel, hogy a $c = 2$ szám pontosan háromszoros gyöke az $f(x)$ valós polinomnak, és pontosan négyszeres gyöke a $g(x)$ valós polinomnak.
Hányszoros gyöke a $c = 2$ szám:
(a) az $f(x) + g(x)$ polinomnak;
(b) az $f(x) \cdot g(x)$ polinomnak;
(c) az $f(x) + g(x) + f(x)g(x)$ polinomnak?

**Megoldás.**

A feladat feltétele szerint a gyökök multiplicitásának algebrai definíciója alapján felírhatjuk:
$$f(x) = (x - 2)^3 f_1(x), \qquad \text{ahol } f_1(2) \ne 0,$$
$$g(x) = (x - 2)^4 g_1(x), \qquad \text{ahol } g_1(2) \ne 0.$$

**(a) Az $f(x) + g(x)$ összeg vizsgálata:**
Emeljük ki a maximális közös gyöktényező-hatványt, $(x - 2)^3$-t:
$$f(x) + g(x) = (x - 2)^3 f_1(x) + (x - 2)^4 g_1(x) = (x - 2)^3 \left[ f_1(x) + (x - 2)g_1(x) \right].$$
Jelölje a zárójeles kifejezést $h_1(x) = f_1(x) + (x - 2)g_1(x)$.
Számítsuk ki $h_1(x)$ helyettesítési értékét az $x = 2$ helyen:
$$h_1(2) = f_1(2) + (2 - 2)g_1(2) = f_1(2) + 0 = f_1(2).$$
Mivel a feltétel szerint $f_1(2) \ne 0$, ezért:
$$h_1(2) \ne 0.$$
Ez definíció szerint azt jelenti, hogy $(x - 2)$ már nem emelhető ki $h_1(x)$-ből, vagyis $(x - 2)^3 \mid (f + g)$, de $(x - 2)^4 \nmid (f + g)$.
**Multiplicitás $f + g$-ben:** **pontosan 3-szoros**.

**(b) Az $f(x) \cdot g(x)$ szorzat vizsgálata:**
$$f(x) g(x) = (x - 2)^3 f_1(x) \cdot (x - 2)^4 g_1(x) = (x - 2)^{3 + 4} [f_1(x) g_1(x)] = (x - 2)^7 [f_1(x) g_1(x)].$$
Mivel $f_1(2) \ne 0$ és $g_1(2) \ne 0$, szorzatuk $f_1(2)g_1(2) \ne 0$.
A gyökök multiplicitása a szorzatban összeadódik: $3 + 4 = 7$.
**Multiplicitás $fg$-ben:** **pontosan 7-szeres**.

**(c) Az $f(x) + g(x) + f(x)g(x)$ kifejezés vizsgálata:**
Írjuk fel a kifejezést:
$$H(x) = f(x) + g(x) + f(x)g(x) = (f(x) + g(x)) + f(x)g(x).$$
Az (a) rész szerint $f(x) + g(x) = (x - 2)^3 h_1(x)$, ahol $h_1(2) = f_1(2) \ne 0$.
A (b) rész szerint $f(x)g(x) = (x - 2)^7 [f_1(x)g_1(x)]$.
Emeljünk ki $(x - 2)^3$-t:
$$H(x) = (x - 2)^3 \left[ h_1(x) + (x - 2)^4 f_1(x)g_1(x) \right].$$
Jelölje a szögletes zárójelbeli kifejezést $h_2(x)$:
$$h_2(2) = h_1(2) + (2 - 2)^4 f_1(2)g_1(2) = h_1(2) + 0 = f_1(2) \ne 0.$$
Mivel $h_2(2) \ne 0$, a legmagasabb kiemelhető hatvány $(x - 2)^3$.
**Multiplicitás $f + g + fg$-ben:** **pontosan 3-szoros**.

::: elmelet
**Elméleti háttér — Gyökök multiplicitásának alaptörvényei.**
Jelölje $m_c(f)$ a $c$ gyök multiplicitását az $f$ polinomban:
1. **Szorzat multiplicitása:**
   $$m_c(f \cdot g) = m_c(f) + m_c(g).$$
2. **Összeg multiplicitása:**
   $$m_c(f + g) \ge \min(m_c(f), m_c(g)).$$
   - Ha $m_c(f) \ne m_c(g)$, akkor **szigorú egyenlőség** áll fenn: $m_c(f + g) = \min(m_c(f), m_c(g))$.
   - Ha $m_c(f) = m_c(g)$, akkor a két vezető tag kiejtheti egymást, így a multiplicitás szigorúan nagyobb is lehet (akár végtelen is, ha $f = -g$).
:::

## P3.19. feladat

Igazoljuk, hogy az $f(x) = x^2 + bx + c$ valós másodfokú polinomnak pontosan akkor van kétszeres gyöke, ha $b^2 = 4c$. Mutassuk meg, hogy ez a feltétel ekvivalens azzal, hogy $f(x)$ és a deriváltja $f'(x)$ nem relatív prímek!

**Megoldás.**

*1. Rész: Kétszeres gyök feltétele:*
- $\implies$: Tegyük fel, hogy $f(x)$-nek kétszeres gyöke van, jelölje ezt $\alpha$.
  Ekkor a főegyüttható 1, így a gyöktényezős alak:
  $$f(x) = (x - \alpha)^2 = x^2 - 2\alpha x + \alpha^2.$$
  Összevetve az $x^2 + bx + c$ együtthatóival:
  $$b = -2\alpha, \qquad c = \alpha^2.$$
  Számítsuk ki a $b^2$ kifejezést:
  $$b^2 = (-2\alpha)^2 = 4\alpha^2 = 4c.$$
  Tehát valóban $b^2 = 4c$.

- $\impliedby$: Tegyük fel, hogy $b^2 = 4c$, azaz $c = \frac{b^2}{4}$.
  Ekkor a polinom:
  $$f(x) = x^2 + bx + \frac{b^2}{4} = \left(x + \frac{b}{2}\right)^2.$$
  Ez egy teljes négyzet, így $\alpha = -\frac{b}{2}$ kétszeres gyöke $f(x)$-nek. $\blacksquare$

*2. Rész: Kapcsolat a deriválttal:*
Számítsuk ki $f(x)$ deriváltját:
$$f'(x) = 2x + b.$$
A derivált egyetlen gyöke: $x_0 = -\frac{b}{2}$.
A közös osztó létezésének feltétele: $f$ és $f'$ pontosan akkor nem relatív prímek, ha van közös gyökük!
Mivel $f'$ elsőfokú, egyetlen lehetséges közös gyökük az $x_0 = -\frac{b}{2}$.
Helyettesítsük be $x_0$-t $f(x)$-be:
$$f\left(-\frac{b}{2}\right) = \left(-\frac{b}{2}\right)^2 + b\left(-\frac{b}{2}\right) + c = \frac{b^2}{4} - \frac{b^2}{2} + c = -\frac{b^2}{4} + c.$$
Ez a helyettesítési érték pontosan akkor 0 (vagyis $x_0$ pontosan akkor gyöke $f$-nek is), ha:
$$-\frac{b^2}{4} + c = 0 \iff \frac{b^2}{4} = c \iff b^2 = 4c.$$
Tehát $(f, f') \ne 1$ pontosan akkor teljesül, ha $b^2 = 4c$. $\blacksquare$

::: elmelet
**Elméleti háttér — Többszörös gyökök és a polinom diszkriminánsa.**
- Egy $f$ polinomnak pontosan akkor van többszörös gyöke, ha $\operatorname{lnko}(f, f') \ne 1$.
- Ennek algebrai feltétele a diszkrimináns eltűnése: $D(f) = 0$.
- Másodfokú polinomra: $D = b^2 - 4ac$.
- Harmadfokú $x^3 + px + q$ polinomra: $D = -4p^3 - 27q^2$.
- A deriválttal való legnagyobb közös osztó euklideszi algoritmussal gyökvonás nélkül meghatározza a többszörös gyököket.
:::

## P3.20. feladat

(A racionális gyökteszt) Bizonyítsuk be, hogy ha a $\frac{p}{q}$ racionális szám (ahol $p, q \in \mathbb{Z}$, $q > 0$ és $(p, q) = 1$) gyöke az
$$f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$$
egész együtthatós ($a_i \in \mathbb{Z}, a_n \ne 0$) polinomnak, akkor
$$p \mid a_0 \qquad \text{és} \qquad q \mid a_n.$$
Mi a tétel speciális következménye főpolinomokra ($a_n = 1$ esetén)?

**Megoldás.**

*Bizonyítás:*
Mivel $\frac{p}{q}$ gyöke az $f(x)$ polinomnak, $f\left(\frac{p}{q}\right) = 0$:
$$a_n \left(\frac{p}{q}\right)^n + a_{n-1} \left(\frac{p}{q}\right)^{n-1} + \dots + a_1 \left(\frac{p}{q}\right) + a_0 = 0.$$
Szorozzuk meg az egyenlet mindkét oldalát a közös nevezővel, $q^n$-nel:
$$a_n p^n + a_{n-1} p^{n-1} q + \dots + a_1 p q^{n-1} + a_0 q^n = 0.$$

1. **A $p \mid a_0$ oszthatóság bizonyítása:**
   Rendezzük az utolsó tagot a jobb oldalra:
   $$a_n p^n + a_{n-1} p^{n-1} q + \dots + a_1 p q^{n-1} = -a_0 q^n.$$
   A bal oldalon minden tagban szerepel legalább egy $p$ tényező. Emeljünk ki $p$-t:
   $$p \cdot \left( a_n p^{n-1} + a_{n-1} p^{n-2} q + \dots + a_1 q^{n-1} \right) = -a_0 q^n.$$
   Mivel a zárójelben egész szám áll, a bal oldal osztható $p$-vel, így a jobb oldalnak is oszthatónak kell lennie $p$-vel:
   $$p \mid a_0 q^n.$$
   Mivel a feltevés szerint $\frac{p}{q}$ egyszerűsített tört, azaz $(p, q) = 1$, ezért $(p, q^n) = 1$.
   A számelmélet alaptétele (Eukleidész-lemma) szerint ha egy prím vagy egész szám oszt egy szorzatot és relatív prím az egyik tényezőhöz, akkor osztja a másik tényezőt:
   $$p \mid a_0. \qquad \blacksquare$$

2. **A $q \mid a_n$ oszthatóság bizonyítása:**
   Rendezzük most az első tagot a jobb oldalra:
   $$a_{n-1} p^{n-1} q + \dots + a_1 p q^{n-1} + a_0 q^n = -a_n p^n.$$
   A bal oldalon minden tag osztható $q$-val. Emeljünk ki $q$-t:
   $$q \cdot \left( a_{n-1} p^{n-1} + \dots + a_0 q^{n-1} \right) = -a_n p^n.$$
   Ezért a jobb oldalnak oszthatónak kell lennie $q$-val:
   $$q \mid a_n p^n.$$
   Mivel $(p, q) = 1$, ezért $(q, p^n) = 1$.
   Az Eukleidész-lemma szerint ebből következik:
   $$q \mid a_n. \qquad \blacksquare$$

*Főpolinomokra ($a_n = 1$) vonatkozó következmény:*
Ha $a_n = 1$, akkor $q \mid 1 \implies q = 1$ (mivel $q > 0$).
Ez azt jelenti, hogy $\frac{p}{q} = \frac{p}{1} = p \in \mathbb{Z}$.
**Következmény:** Egész együtthatós főpolinom minden racionális gyöke szükségképpen **egész szám**, és osztója a konstans tagnak ($a_0$-nak).

::: elmelet
**Elméleti háttér — Racionális gyökteszt és Gauss-lemma.**
- A racionális gyökteszt drasztikusan lecsökkenti a lehetséges racionális gyökök halmazát egy véges jelöltlistára:
  $$\frac{p}{q} \in \left\{ \frac{\text{konstans tag osztója}}{\text{főegyüttható osztója}} \right\}.$$
- Továbbfejlesztett szűrés: tetszőleges $m \in \mathbb{Z}$ egészre $p - m q \mid f(m)$.
  Speciálisan: $p - q \mid f(1)$ és $p + q \mid f(-1)$.
- Gauss-lemma következménye: ha egy egész együtthatós főpolinomnak nincs egész gyöke, akkor egyáltalán nincs racionális gyöke.
:::

## P3.21. feladat

A racionális gyökteszt segítségével határozzuk meg az
$$f(x) = 2x^3 - 5x^2 - 4x + 3$$
polinom összes racionális gyökét, és írjuk fel a polinomot gyöktényezős alakban!

**Megoldás.**

A polinom együtthatói: $a_3 = 2$, $a_2 = -5$, $a_1 = -4$, $a_0 = 3$.

1. **A lehetséges racionális gyökök felsorolása:**
   - $p \mid a_0 = 3 \implies p \in \{\pm 1, \pm 3\}$.
   - $q \mid a_3 = 2, q > 0 \implies q \in \{1, 2\}$.
   A lehetséges $\frac{p}{q}$ racionális gyökök:
   $$\frac{p}{q} \in \left\{ \pm 1, \pm 3, \pm \frac{1}{2}, \pm \frac{3}{2} \right\}.$$

2. **Tesztelés és szűrés:**
   - $x = 1$: $f(1) = 2(1) - 5(1) - 4(1) + 3 = -4 \ne 0$.
   - $x = -1$: $f(-1) = 2(-1) - 5(1) - 4(-1) + 3 = -2 - 5 + 4 + 3 = 0$!
     **Találtunk egy gyököt: $x_1 = -1$.**

3. **Gyöktényező kiemelése (Horner-elrendezés $c = -1$-gyel):**
   Együtthatók: $[2, -5, -4, 3]$:
   - $b_2 = 2$
   - $b_1 = (-1)(2) - 5 = -7$
   - $b_0 = (-1)(-7) - 4 = 3$
   - Maradék: $(-1)(3) + 3 = 0$.
   A hányadospolinom:
   $$g(x) = 2x^2 - 7x + 3.$$

4. **A másodfokú hányados gyökei:**
   Oldjuk meg a $2x^2 - 7x + 3 = 0$ egyenletet:
   $$x = \frac{7 \pm \sqrt{49 - 4(2)(3)}}{4} = \frac{7 \pm \sqrt{49 - 24}}{4} = \frac{7 \pm \sqrt{25}}{4} = \frac{7 \pm 5}{4}.$$
   - $x_2 = \frac{7 + 5}{4} = \frac{12}{4} = 3$.
   - $x_3 = \frac{7 - 5}{4} = \frac{2}{4} = \frac{1}{2}$.
   Mindkét gyök szerepelt a racionális gyökteszt jelöltlistáján!

5. **Összegzés és gyöktényezős alak:**
   A polinom összes gyöke racionális szám:
   $$x_1 = -1, \quad x_2 = 3, \quad x_3 = \frac{1}{2}.$$
   A gyöktényezős alak (ügyelve a főegyütthatóra $a_3 = 2$):
   $$f(x) = 2(x + 1)(x - 3)\left(x - \frac{1}{2}\right) = (x + 1)(x - 3)(2x - 1).$$

**Végeredmény:**
A racionális gyökök: **$x \in \left\{-1, 3, \frac{1}{2}\right\}$**, a gyöktényezős alak: **$(x + 1)(x - 3)(2x - 1)$**.

::: elmelet
**Elméleti háttér — Polinomok teljes felbontása racionális gyökökkel.**
- Amint megtalálunk egy racionális gyököt, azonnal osszuk le a polinomot a gyöktényezővel! A fokszám csökken, és a megmaradó gyököket már a hányadospolinomból keressük.
- Harmadfokú polinomnál egyetlen gyök megtalálása után a feladat másodfokú egyenletre redukálódik, ami megoldóképlettel lezárható.
- Ha a diszkrimináns nem négyzetszám, a további gyökök irracionálisak vagy komplexek.
:::

---

# 4. feladatsor — Prímszámok, felbonthatatlanok, a számelmélet alaptétele és az Euler-féle phi-függvény

## P4.1. feladat

Határozzuk meg, hogy egy egész szám négyzete milyen maradékokat adhat:
(a) 3-mal;
(b) 4-gyel;
(c) 5-tel;
(d) 8-cal;
(e) 9-cel
osztva!

**Megoldás.**

Legyen $n \in \mathbb{Z}$ tetszőleges egész szám. Vizsgáljuk meg $n^2$ lehetséges maradékait az egyes modulusokra!

**(a) Modulo 3:**
Az $n$ lehetséges maradékai: $0, 1, 2 \equiv -1 \pmod 3$.
- $0^2 \equiv 0 \pmod 3$,
- $(\pm 1)^2 \equiv 1 \pmod 3$.
**Lehetséges maradékok mod 3:** **$0, 1$** (2 sosem lehet).

**(b) Modulo 4:**
Az $n$ maradékai mod 4: $0, 1, 2, 3 \equiv -1$.
- Páros számra ($n = 2k$): $n^2 = 4k^2 \equiv 0 \pmod 4$.
- Páratlan számra ($n = 2k + 1$): $n^2 = 4k^2 + 4k + 1 = 4k(k + 1) + 1 \equiv 1 \pmod 4$.
**Lehetséges maradékok mod 4:** **$0, 1$** (2 és 3 nem lehet).

**(c) Modulo 5:**
Az $n$ maradékai: $0, \pm 1, \pm 2 \pmod 5$.
- $0^2 \equiv 0 \pmod 5$,
- $(\pm 1)^2 \equiv 1 \pmod 5$,
- $(\pm 2)^2 = 4 \equiv -1 \pmod 5$.
**Lehetséges maradékok mod 5:** **$0, 1, 4$** (2 és 3 nem lehet).

**(d) Modulo 8:**
Az $n$ maradékai mod 8:
- Páros számra:
  - ha $n \equiv 0, 4 \pmod 8 \implies n^2 \equiv 0 \pmod 8$.
  - ha $n \equiv 2, 6 \pmod 8 \implies n^2 = (8k \pm 2)^2 = 64k^2 \pm 32k + 4 \equiv 4 \pmod 8$.
- Páratlan számra: $n = 2k + 1 \implies n^2 = 4k(k + 1) + 1$.
  Mivel $k(k + 1)$ két egymást követő egész szorzata, mindig páros ($2 \mid k(k + 1)$), így $4k(k + 1)$ mindig osztható 8-cal!
  Tehát minden páratlan szám négyzete $n^2 \equiv 1 \pmod 8$.
**Lehetséges maradékok mod 8:** **$0, 1, 4$** (2, 3, 5, 6, 7 sosem lehet).

**(e) Modulo 9:**
Az $n$ maradékai: $0, \pm 1, \pm 2, \pm 3, \pm 4 \pmod 9$.
- $0^2 \equiv 0$,
- $(\pm 1)^2 \equiv 1$,
- $(\pm 2)^2 \equiv 4$,
- $(\pm 3)^2 = 9 \equiv 0$,
- $(\pm 4)^2 = 16 \equiv 7$.
**Lehetséges maradékok mod 9:** **$0, 1, 4, 7$**.

::: elmelet
**Elméleti háttér — Kvadratikus maradékok.**
- Egy $a$ egész **kvadratikus maradék** modulo $m$, ha létezik olyan $x$, hogy $x^2 \equiv a \pmod m$.
- Páratlan prím modulusra ($p$) pontosan $\frac{p-1}{2}$ darab nemnulla kvadratikus maradék létezik (Euler-kritérium, Legendre-szimbólum).
- **Legfontosabb tiltások:**
  - Négyzetszám nem lehet $2 \pmod 3$.
  - Négyzetszám nem lehet $2, 3 \pmod 4$.
  - Négyzetszám nem lehet $2, 3 \pmod 5$.
  - Páratlan négyzetszám CSAK $1 \pmod 8$ lehet!
- Ezek a tiltások a diofantoszi egyenletek megoldhatatlanságának legfőbb bizonyítási eszközei.
:::

## P4.2. feladat

Határozzuk meg a $3^{2026}$ szám utolsó számjegyét, valamint az utolsó két számjegyét!

**Megoldás.**

Egy szám utolsó számjegye a 10-zel vett osztási maradéka, az utolsó két számjegye a 100-zal vett osztási maradéka.

1. **Utolsó számjegy (modulo 10):**
   Mivel $(3, 10) = 1$, alkalmazható az Euler–Fermat-tétel:
   $\varphi(10) = 10 \cdot (1 - 1/2)(1 - 1/5) = 4$.
   Ezért $3^4 \equiv 1 \pmod{10}$ (valóban: $3^4 = 81 \equiv 1$).
   Osszuk el a kitevőt 4-gyel maradékosan:
   $$2026 = 4 \cdot 506 + 2.$$
   Így:
   $$3^{2026} = (3^4)^{506} \cdot 3^2 \equiv 1^{506} \cdot 9 \equiv 9 \pmod{10}.$$
   **Az utolsó számjegy:** **9**.

2. **Utolsó két számjegy (modulo 100):**
   Számítsuk ki $\varphi(100)$-at:
   $$\varphi(100) = \varphi(2^2 \cdot 5^2) = 100 \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{5}\right) = 100 \cdot \frac{1}{2} \cdot \frac{4}{5} = 40.$$
   Az Euler–Fermat-tétel szerint $3^{40} \equiv 1 \pmod{100}$.
   Osszuk el a 2026-ot 40-nel:
   $$2026 = 40 \cdot 50 + 26.$$
   Ezért:
   $$3^{2026} \equiv 3^{26} \pmod{100}.$$
   Számítsuk ki $3^{26} \pmod{100}$-at:
   - $3^4 = 81 \equiv -19 \pmod{100}$.
   - $3^5 = 3 \cdot 81 = 243 \equiv 43 \pmod{100}$.
   - $3^{10} = (3^5)^2 \equiv 43^2 = 1849 \equiv 49 \pmod{100}$.
   - $3^{20} = (3^{10})^2 \equiv 49^2 = (50 - 1)^2 = 2500 - 100 + 1 \equiv 1 \pmod{100}$!
     *(Vegyük észre: a 3 rendje modulo 100 valójában csak 20, nem 40!)*
   - Ekkor a 2026-ot 20-szal osztva:
     $$2026 = 20 \cdot 101 + 6 \implies 3^{2026} \equiv 3^6 \pmod{100}.$$
   - $3^6 = 3 \cdot 3^5 = 3 \cdot 243 = 729 \equiv 29 \pmod{100}$.
   (Vagy: $3^6 = 9 \cdot 81 = 729 \equiv 29$.)

**Végeredmény:**
Az utolsó számjegy **9**, az utolsó két számjegyből álló szám **29**.

::: elmelet
**Elméleti háttér — Euler-függvény és az utolsó számjegyek meghatározása.**
- Egy szám tízes számrendszerbeli utolsó $k$ jegye megegyezik a szám $10^k$-nal vett legkisebb nemnegatív maradékával.
- **Euler–Fermat-tétel:** Ha $(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1 \pmod m$.
- A maradékok periódusa a rend ($\operatorname{ord}_m(a)$), amely mindig osztója $\varphi(m)$-nek (Carmichael-függvény $\lambda(m)$).
- $\lambda(100) = [\varphi(4), \varphi(25)] = [2, 20] = 20$, ezért a hatványok mod 100 valójában 20 lépésenként ismétlődnek.
:::

## P4.3. feladat

Milyen számjegyre végződik a
$$S = 4^{100} + 5^{100}$$
összeg a tízes számrendszerben?

**Megoldás.**

Az utolsó számjegy az $S \pmod{10}$ maradéka.
Számítsuk ki a két tag maradékát külön-külön:

1. **$4^{100} \pmod{10}$:**
   A 4 hatványai modulo 10:
   - $4^1 = 4 \equiv 4 \pmod{10}$,
   - $4^2 = 16 \equiv 6 \pmod{10}$,
   - $4^3 = 64 \equiv 4 \pmod{10}$,
   - $4^4 = 256 \equiv 6 \pmod{10}$.
   Általánosan, minden páros $k \ge 2$ kitevőre $4^k \equiv 6 \pmod{10}$.
   Mivel a $100$ páros szám:
   $$4^{100} \equiv 6 \pmod{10}.$$

2. **$5^{100} \pmod{10}$:**
   Az 5 bármely pozitív egész kitevős hatványa mindig 5-re végződik:
   $$5^k \equiv 5 \pmod{10} \qquad \text{minden } k \ge 1 \text{ esetén.}$$
   Ezért:
   $$5^{100} \equiv 5 \pmod{10}.$$

3. **Az összeg vizsgálata:**
   A kongruenciák összeadhatósága miatt:
   $$S = 4^{100} + 5^{100} \equiv 6 + 5 = 11 \equiv 1 \pmod{10}.$$

**Végeredmény:**
Az összeg az **1**-es számjegyre végződik.

::: elmelet
**Elméleti háttér — Modulo 10 additivitás és idempotens maradékok.**
- Összegek utolsó számjegye a tagok utolsó számjegyeinek összege modulo 10.
- Az 5 és 6 számok idempotens elemek modulo 10 ($5^2 \equiv 5$, $6^2 \equiv 6$), ezért tetszőleges pozitív hatványuk önmagukkal egyezik meg modulo 10:
  $5^k \equiv 5 \pmod{10}$ és $6^k \equiv 6 \pmod{10}$ minden $k \ge 1$-re.
:::

## P4.4. feladat

Lehet-e az
$$S = 1! + 2! + 3! + 4! + \dots + 2026!$$
szám egy egész szám négyzete?

**Megoldás.**

*Bizonyítás modulo 10 (utolsó számjegy) vizsgálatával:*

Tegyük fel indirekt, hogy $S = k^2$ egy egész szám négyzete.
Számítsuk ki a faktoriálisok utolsó számjegyét:
- $1! = 1$,
- $2! = 2$,
- $3! = 6$,
- $4! = 24 \equiv 4 \pmod{10}$,
- $5! = 120 \equiv 0 \pmod{10}$.

Vegyük észre, hogy minden $n \ge 5$ egész számra $n! = 5! \cdot (6 \dots n)$ tartalmazza a $2 \cdot 5 = 10$ szorzatot, így minden $n \ge 5$ esetén
$$n! \equiv 0 \pmod{10}.$$
Ezért az $S$ összeg utolsó számjegyét kizárólag az első négy tag határozza meg:
$$S = 1! + 2! + 3! + 4! + \sum_{n=5}^{2026} n! \equiv 1! + 2! + 3! + 4! + 0 \pmod{10}.$$
Számítsuk ki ezt az összeget:
$$1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33 \equiv 3 \pmod{10}.$$
Tehát az $S$ szám utolsó számjegye a tízes számrendszerben szükségszerűen **3**.

A 4.1. feladat szerint azonban egy egész szám négyzete a tízes számrendszerben csak a következő számjegyekre végződhet:
$$0^2 \to 0, \quad (\pm 1)^2 \to 1, \quad (\pm 2)^2 \to 4, \quad (\pm 3)^2 \to 9, \quad (\pm 4)^2 \to 6, \quad 5^2 \to 5.$$
A lehetséges utolsó számjegyek négyzetszámokra tehát kizárólag a
$$\{0, 1, 4, 5, 6, 9\}$$
halmazból kerülhetnek ki!
Egy négyzetszám utolsó számjegye **sohasem lehet 2, 3, 7 vagy 8**.

Mivel az $S$ szám utolsó jegye 3, ez ellentmond annak, hogy $S$ négyzetszám lenne!

**Végeredmény:**
**NEM lehet négyzetszám.**

::: elmelet
**Elméleti háttér — Faktoriális összegek és moduláris zártság.**
- Faktoriálisok stabilizációja: mivel $p \mid n!$ minden $n \ge p$-re, a faktoriálisokból álló végtelen sorozatok vagy összegek tetszőleges $m$ modulusra véges sok tag után konstanssá válnak:
  $\sum_{k=1}^N k! \equiv \sum_{k=1}^{m-1} k! \pmod m$ minden $N \ge m$-re.
- Modulo 10 vizsgálata elegendő a négyzetszám-tulajdonság kizárására, mert 3 végződésű négyzetszám nem létezik.
:::

## P4.5. feladat

Igazoljuk, hogy három egymást követő egész szám négyzetösszege 3-mal osztva mindig 2-t ad maradékul! Lehet-e három egymást követő egész szám négyzetösszege négyzetszám?

**Megoldás.**

1. **A négyzetösszeg felírása és maradéka mod 3:**
   Jelölje a három egymást követő egész számot célszerűen a középső szám körül szimmetrikusan:
   $$n - 1, \quad n, \quad n + 1, \qquad \text{ahol } n \in \mathbb{Z}.$$
   Számítsuk ki a négyzetösszegüket:
   $$S = (n - 1)^2 + n^2 + (n + 1)^2.$$
   Bontsuk fel a négyzeteket:
   $$S = (n^2 - 2n + 1) + n^2 + (n^2 + 2n + 1) = 3n^2 + 2.$$
   Vizsgáljuk meg az $S$ kifejezést 3-mal osztva:
   $$S = 3n^2 + 2 = 3(n^2) + 2 \equiv 2 \pmod 3.$$
   Mivel $3n^2$ osztható 3-mal, a maradék minden $n \in \mathbb{Z}$ esetén **pontosan 2**. $\blacksquare$

2. **Lehet-e négyzetszám?**
   Tegyük fel indirekt, hogy $S = k^2$ egy egész szám négyzete.
   Ekkor a fentiek alapján:
   $$k^2 \equiv S \equiv 2 \pmod 3.$$
   A 4.1. feladat szerint azonban egy egész szám négyzete modulo 3 kizárólag $0$ vagy $1$ maradékot adhat:
   $$k^2 \in \{0, 1\} \pmod 3.$$
   A 2 nem kvadratikus maradék modulo 3!
   Ellentmondás, tehát $S$ semmilyen $n$ esetén sem lehet négyzetszám.

**Végeredmény:**
A maradék mindig **2**, és a háromszoros összeg **sohasem lehet négyzetszám**.

::: elmelet
**Elméleti háttér — Szimmetrikus változóválasztás és kvadratikus kizárás.**
- Páratlan számú egymást követő tag vizsgálatakor a középső taghoz viszonyított felírás ($n-1, n, n+1$) megszünteti a lineáris tagokat: $(n-1)^2 + (n+1)^2 = 2n^2 + 2$.
- A $3n^2 + 2 \equiv 2 \pmod 3$ kongruencia a kvadratikus nem-maradékok miatt azonnali és abszolút akadályt képez a négyzetszámmá válás előtt.
:::

## P4.6. feladat

Számítsuk ki az euklideszi algoritmus segítségével a
$$(462, 200)$$
legnagyobb közös osztót, majd fejezzük ki az eredményt a két szám egész együtthatós lineáris kombinációjaként (Bézout-identitás)!

**Megoldás.**

1. **Euklideszi algoritmus (maradékos osztások láncolata):**
   - $462 = 2 \cdot 200 + 62$
   - $200 = 3 \cdot 62 + 14$
   - $62 = 4 \cdot 14 + 6$
   - $14 = 2 \cdot 6 + 2$
   - $6 = 3 \cdot 2 + 0$
   Az utolsó nemnulla maradék a **2**.
   Ezért a legnagyobb közös osztó:
   $$\operatorname{lnko}(462, 200) = (462, 200) = 2.$$

2. **Visszahelyettesítés (Bézout-együtthatók meghatározása):**
   Fejezzük ki a maradékokat alulról felfelé:
   - Az utolsó előtti egyenletből:
     $$2 = 14 - 2 \cdot 6.$$
   - Helyettesítsük be $6 = 62 - 4 \cdot 14$-et:
     $$2 = 14 - 2(62 - 4 \cdot 14) = 14 - 2 \cdot 62 + 8 \cdot 14 = 9 \cdot 14 - 2 \cdot 62.$$
   - Helyettesítsük be $14 = 200 - 3 \cdot 62$-t:
     $$2 = 9(200 - 3 \cdot 62) - 2 \cdot 62 = 9 \cdot 200 - 27 \cdot 62 - 2 \cdot 62 = 9 \cdot 200 - 29 \cdot 62.$$
   - Helyettesítsük be $62 = 462 - 2 \cdot 200$-at:
     $$2 = 9 \cdot 200 - 29(462 - 2 \cdot 200) = 9 \cdot 200 - 29 \cdot 462 + 58 \cdot 200 = -29 \cdot 462 + 67 \cdot 200.$$

3. **Ellenőrzés:**
   $$-29 \cdot 462 = -13398,$$
   $$67 \cdot 200 = 13400.$$
   $$13400 - 13398 = 2.$$
   A számolás pontos!

**Végeredmény:**
$(462, 200) = 2$, és a Bézout-felírás:
**$2 = (-29) \cdot 462 + 67 \cdot 200$** (tehát $x = -29, y = 67$).

::: elmelet
**Elméleti háttér — Az euklideszi algoritmus és a Bézout-tétel.**
- **Bézout-tétel:** Tetszőleges $a, b \in \mathbb{Z}$ egészekre léteznek olyan $x, y \in \mathbb{Z}$ egész számok, amelyekre:
  $$a x + b y = (a, b).$$
- A legkisebb pozitív egész lineáris kombináció pontosan a legnagyobb közös osztó:
  $$\min \{ ax + by > 0 : x, y \in \mathbb{Z} \} = (a, b).$$
- Következmény: $a x + b y = c$ diofantoszi egyenlet pontosan akkor oldható meg, ha $(a, b) \mid c$.
- Műveletigény: Lamé-tétel szerint a lépések száma legfeljebb a kisebb szám jegyei számának 5-szöröse (Fibonacci-számok a legrosszabb eset).
:::

## P4.7. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ természetes szám esetén
$$(3n + 2, 7n + 5) = 1,$$
vagyis a két szám tetszőleges $n$-re relatív prím!

**Megoldás.**

*Bizonyítás az euklideszi algoritmus elvével (Bézout-kombinációval):*

Keressünk olyan $x, y \in \mathbb{Z}$ egész számokat, amelyekre a
$$(3n + 2)x + (7n + 5)y$$
lineáris kombinációból az $n$ változó teljesen kiesik!
Az $n$ együtthatói $3$ és $7$. Mivel a legkisebb közös többszörösük $21$:
$$21 = 7 \cdot 3 = 3 \cdot 7.$$
Ezért válasszuk az alábbi kombinációt:
$$7 \cdot (3n + 2) - 3 \cdot (7n + 5).$$
Számítsuk ki ezt a kifejezést:
$$7(3n + 2) - 3(7n + 5) = (21n + 14) - (21n + 15) = 14 - 15 = -1.$$
Szorozzuk meg $(-1)$-gyel:
$$3(7n + 5) - 7(3n + 2) = 1.$$
Legyen $d = (3n + 2, 7n + 5)$ a két szám legnagyobb közös osztója.
Mivel $d \mid 7n + 5$ és $d \mid 3n + 2$, ezért $d$ osztja a két szám bármely egész együtthatós lineáris kombinációját is:
$$d \mid 3(7n + 5) - 7(3n + 2) = 1.$$
Mivel $d$ pozitív egész szám, és $d \mid 1$, ezért szükségképpen:
$$d = 1.$$
Ez bizonyítja, hogy a két szám minden $n \in \mathbb{N}$ esetén relatív prím. $\blacksquare$

::: elmelet
**Elméleti háttér — Lineáris kifejezések legnagyobb közös osztója.**
- Ha két kifejezésnek létezik olyan lineáris kombinációja, amely konstans: $A \cdot f(n) + B \cdot g(n) = C$, akkor a legnagyobb közös osztó szükségszerűen osztja a $C$ konstanst: $(f(n), g(n)) \mid C$.
- Ha a kapott konstans $C = 1$, akkor a két szám minden $n$-re relatív prím.
- Ha $C > 1$, akkor $(f(n), g(n))$ csak a $C$ osztója lehet, és a konkrét értékek a maradékosztályoktól függnek.
:::

## P4.8. feladat

Határozzuk meg az alábbi legnagyobb közös osztók lehetséges értékeit minden pozitív egész $n$ számra:
(a) $d_1 = (3n + 5, 2n + 3)$
(b) $d_2 = (n^2 + n, 2n + 1)$

**Megoldás.**

**(a) $d_1 = (3n + 5, 2n + 3)$ vizsgálata:**
Alkalmazzuk az euklideszi algoritmus lépéseit:
$$(3n + 5) - (2n + 3) = n + 2.$$
Ezért:
$$(3n + 5, 2n + 3) = (2n + 3, n + 2).$$
Vonjuk ki $n + 2$ kétszeresét:
$$(2n + 3) - 2(n + 2) = 2n + 3 - 2n - 4 = -1.$$
Így:
$$(2n + 3, n + 2) = (n + 2, -1) = 1.$$
*(Vagy közvetlen kombinációval: $2(3n + 5) - 3(2n + 3) = 6n + 10 - 6n - 9 = 1$.)*
Tehát minden $n \in \mathbb{N}^+$ esetén:
**$d_1 = 1$.**

**(b) $d_2 = (n^2 + n, 2n + 1)$ vizsgálata:**
Vegyük észre, hogy $n^2 + n = n(n + 1)$.
Másrészt:
$$4(n^2 + n) = 4n^2 + 4n = (2n + 1)^2 - 1.$$
Mivel $d_2 \mid 2n + 1$, ezért $d_2 \mid (2n + 1)^2$.
Továbbá $d_2 \mid n^2 + n \implies d_2 \mid 4(n^2 + n) = (2n + 1)^2 - 1$.
Ezért $d_2$ osztja a kettő különbségét is:
$$d_2 \mid (2n + 1)^2 - ((2n + 1)^2 - 1) = 1.$$
Mivel $d_2$ pozitív egész és $d_2 \mid 1$, ezért:
$$d_2 = 1.$$
*(Alternatív levezetés: Mivel $2n + 1$ páratlan, $(2n + 1, 2) = 1$. Ezért $(n^2 + n, 2n + 1) = (2n^2 + 2n, 2n + 1)$.
Itt $2n^2 + 2n = n(2n + 1) + n$, így $(2n^2 + 2n, 2n + 1) = (n, 2n + 1) = (n, (2n + 1) - 2n) = (n, 1) = 1$.)*

**Végeredmény:**
Mindkét kifejezés értéke minden pozitív egész $n$-re **1**:
**$d_1 = 1$ és $d_2 = 1$.**

::: elmelet
**Elméleti háttér — Polinomok legnagyobb közös osztója egész helyeken.**
- Két kifejezés legnagyobb közös osztója tetszőleges $n$-re osztja a polinom-maradékos osztással kapott konstanst.
- Ha $(P(n), Q(n)) = 1$ polinomként $\mathbb{Q}[x]$-ben, akkor léteznek olyan $U, V \in \mathbb{Q}[x]$ polinomok, hogy $U P + V Q = 1$.
  Közös nevezővel beszorozva: $A(n) P(n) + B(n) Q(n) = C \in \mathbb{Z}$, így az egész helyeken vett lnko mindig osztója a $C$ konstansnak.
:::

## P4.9. feladat

Határozzuk meg a valós együtthatós polinomok gyűrűjében ($\mathbb{R}[x]$) az
$$p(x) = x^4 - 2x^3 + 2x - 1 \qquad \text{és} \qquad q(x) = x^3 - x^2 - x + 1$$
polinomok kitüntetett (főpolinom alakú) legnagyobb közös osztóját az euklideszi algoritmussal!

**Megoldás.**

1. **Első maradékos osztás: $p(x) : q(x)$:**
   Osszuk el $p(x)$-et $q(x)$-szel:
   $$\begin{array}{l}
   \phantom{-} (x^4 - 2x^3 + 0x^2 + 2x - 1) : (x^3 - x^2 - x + 1) = x - 1 \\
   -(x^4 - x^3 - x^2 + x) \\
   \hline
   \phantom{-(x^4} -x^3 + x^2 + x - 1 \\
   \phantom{-(-x^3} -(-x^3 + x^2 + x - 1) \\
   \hline
   \phantom{-(x^4 - x^3 + x^2 + x } 0
   \end{array}$$
   A maradék $0$!
   Ez azt jelenti, hogy $q(x)$ maradék nélkül osztja $p(x)$-et:
   $$p(x) = (x - 1) \cdot q(x).$$

2. **A legnagyobb közös osztó meghatározása:**
   Mivel $q(x) \mid p(x)$, ezért a két polinom legnagyobb közös osztója maga a $q(x)$ polinom (mivel már eleve főpolinom, vagyis főegyütthatója 1):
   $$\operatorname{lnko}(p(x), q(x)) = q(x) = x^3 - x^2 - x + 1.$$

3. **A közös osztó faktorizációja:**
   Alakítsuk szorzattá $q(x)$-et csoportosítással:
   $$q(x) = x^2(x - 1) - (x - 1) = (x - 1)(x^2 - 1) = (x - 1)(x - 1)(x + 1) = (x - 1)^2 (x + 1).$$
   Ebből látható, hogy a két polinom közös gyökei az $1$ (kétszeres multiplicitással) és a $-1$ (egyszeres multiplicitással).

**Végeredmény:**
A kitüntetett legnagyobb közös osztó:
$$\operatorname{lnko}(p, q) = x^3 - x^2 - x + 1 = (x - 1)^2 (x + 1).$$

::: elmelet
**Elméleti háttér — Polinomok euklideszi algoritmusa.**
- Két polinom legnagyobb közös osztója az euklideszi algoritmussal határozható meg $K[x]$-ben, ahol $K$ tetszőleges test.
- A kitüntetett közös osztó az 1 főegyütthatójú (monic) polinom.
- Bézout-azonosság polinomokra: léteznek olyan $u(x), v(x) \in K[x]$ polinomok, hogy $u(x)p(x) + v(x)q(x) = \operatorname{lnko}(p, q)$.
- Ha az első osztás maradéka 0, a kisebbik fokú polinom maga a legnagyobb közös osztó.
:::

## P4.10. feladat

Tegyük fel, hogy az $a$ és $b$ egész számok relatív prímek, azaz $(a, b) = 1$. Határozzuk meg az
$$d = (a + b, a - b)$$
legnagyobb közös osztó lehetséges értékeit, és adjunk konkrét példát mindegyik esetre!

**Megoldás.**

Legyen $d = (a + b, a - b)$.
A legnagyobb közös osztó definíciója szerint $d$ osztja a két számot:
$$d \mid a + b \quad \text{és} \quad d \mid a - b.$$
Ekkor $d$ osztja ezen számok összegét és különbségét is:
- Összegük:
  $$(a + b) + (a - b) = 2a \implies d \mid 2a.$$
- Különbségük:
  $$(a + b) - (a - b) = 2b \implies d \mid 2b.$$
Mivel $d$ osztja $2a$-t és $2b$-t is, ezért osztja azok legnagyobb közös osztóját is:
$$d \mid (2a, 2b).$$
Emeljük ki a 2-es szorzót a legnagyobb közös osztóból:
$$(2a, 2b) = 2(a, b).$$
A feladat feltétele szerint $(a, b) = 1$, így:
$$(2a, 2b) = 2 \cdot 1 = 2.$$
Ezért:
$$d \mid 2.$$
Mivel $d$ pozitív egész szám, a 2 pozitív osztói közül választhatunk:
$$d \in \{1, 2\}.$$

**Mikor melyik eset fordul elő?**
1. **$d = 2$ esete:**
   Ez pontosan akkor következik be, ha $a + b$ és $a - b$ páros számok.
   Két szám összege és különbsége pontosan akkor páros, ha $a$ és $b$ azonos paritású.
   Mivel $(a, b) = 1$, mindketten nem lehetnek párosak (különben $2 \mid (a, b)$).
   Ezért $d = 2$ pontosan akkor áll fenn, ha **$a$ és $b$ mindketten páratlan számok**.
   *Példa:* $a = 3, b = 1$: $(3, 1) = 1$, és $(3 + 1, 3 - 1) = (4, 2) = 2$.

2. **$d = 1$ esete:**
   Ha $a$ és $b$ különböző paritásúak (egyik páros, másik páratlan), akkor $a + b$ és $a - b$ mindketten páratlanok, így $2 \nmid d$.
   Mivel $d \mid 2$ és $d$ páratlan, szükségképpen $d = 1$.
   *Példa:* $a = 2, b = 1$: $(2, 1) = 1$, és $(2 + 1, 2 - 1) = (3, 1) = 1$.

**Végeredmény:**
A lehetséges értékek: **$1$ vagy $2$**.
- $d = 1$, ha $a$ és $b$ különböző paritásúak;
- $d = 2$, ha $a$ és $b$ mindketten páratlanok.

::: elmelet
**Elméleti háttér — Relatív prím számok kombinációinak osztói.**
- Általános tétel: ha $(a, b) = 1$, akkor $(u a + v b, x a + y b)$ mindig osztója a transzformációs mátrix determinánsának:
  $$\Delta = \begin{vmatrix} u & v \\ x & y \end{vmatrix} = uy - vx.$$
- Itt $\begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix}$, determinánsa $1(-1) - 1(1) = -2$, így az lnko osztója 2-nek.
- Paritási vizsgálat: modulo 2 az összeg és különbség azonos ($a+b \equiv a-b \pmod 2$), így 2 pontosan akkor osztja, ha mindkettő páratlan.
:::

## P4.11. feladat

Keressük meg az összes olyan $x, y \in \mathbb{N}^+$ pozitív egész számpárt, amelyekre a legkisebb közös többszörös és a legnagyobb közös osztó értéke:
$$[x, y] = 168 \qquad \text{és} \qquad (x, y) = 14.$$

**Megoldás.**

1. **Változók normalizálása a legnagyobb közös osztóval:**
   Mivel $(x, y) = 14$, mindkét szám osztható 14-gyel. Írhatjuk:
   $$x = 14 u \quad \text{és} \quad y = 14 v,$$
   ahol $u, v \in \mathbb{N}^+$ pozitív egész számok, és feltétlenül **relatív prímek**:
   $$(u, v) = 1.$$

2. **A legkisebb közös többszörös összefüggése:**
   Tudjuk, hogy tetszőleges pozitív egészekre:
   $$[x, y] \cdot (x, y) = x \cdot y.$$
   Ezt behelyettesítve:
   $$168 \cdot 14 = (14u) \cdot (14v) = 14^2 \cdot uv \iff uv = \frac{168 \cdot 14}{14^2} = \frac{168}{14}.$$
   Végezzük el az osztást:
   $$\frac{168}{14} = 12.$$
   Tehát az $u$ és $v$ relatív prím pozitív egészek szorzata:
   $$u \cdot v = 12, \qquad \text{ahol } (u, v) = 1.$$

3. **A 12 felbontása relatív prím tényezőkre:**
   Bontsuk prímtényezőkre a 12-t:
   $$12 = 2^2 \cdot 3.$$
   A 12 pozitív osztópárjai $(u, v)$:
   - $u = 1, v = 12$: $(1, 12) = 1$. (Megfelel!)
   - $u = 2, v = 6$: $(2, 6) = 2 \ne 1$. (Nem relatív prímek, NEM jó!)
   - $u = 3, v = 4$: $(3, 4) = 1$. (Megfelel!)
   - $u = 4, v = 3$: $(4, 3) = 1$. (Megfelel!)
   - $u = 12, v = 1$: $(12, 1) = 1$. (Megfelel!)

4. **A számpárok kiszámítása ($x = 14u, y = 14v$):**
   - Ha $(u, v) = (1, 12) \implies x = 14 \cdot 1 = 14, \quad y = 14 \cdot 12 = 168$.
   - Ha $(u, v) = (3, 4) \implies x = 14 \cdot 3 = 42, \quad y = 14 \cdot 4 = 56$.
   - Ha $(u, v) = (4, 3) \implies x = 14 \cdot 4 = 56, \quad y = 14 \cdot 3 = 42$.
   - Ha $(u, v) = (12, 1) \implies x = 14 \cdot 12 = 168, \quad y = 14 \cdot 1 = 14$.

5. **Ellenőrzés:**
   - $(14, 168) = 14$, $[14, 168] = 168$. Helyes!
   - $(42, 56) = 14$, $[42, 56] = 14 \cdot 3 \cdot 4 = 168$. Helyes!

**Végeredmény:**
Az összes lehetséges rendezett számpár:
$$(x, y) \in \{(14, 168), \ (42, 56), \ (56, 42), \ (168, 14)\}.$$
(Ha a sorrend nem számít, a megoldáshalmazok: $\{14, 168\}$ és $\{42, 56\}$.)

::: elmelet
**Elméleti háttér — Legkisebb közös többszörös és legnagyobb közös osztó dualitása.**
- Alapösszefüggés: $[a, b] \cdot (a, b) = a \cdot b$.
- Prímtényezős megfogalmazás:
  $$v_p((a, b)) = \min(v_p(a), v_p(b)), \qquad v_p([a, b]) = \max(v_p(a), v_p(b)).$$
  Mivel $\min(u, v) + \max(u, v) = u + v$, a szorzatszabály azonnal adódik.
- A normalizálás ($a = d u, b = d v$, $(u, v) = 1$) a feladatot az $u v = [a, b]/d$ szám relatív prím felbontásaira redukálja. Ha a hányadosnak $k$ különböző prímosztója van, a rendezett megoldáspárok száma pontosan $2^k$.
:::

## P4.12. feladat

Mely $n \in \mathbb{N}^+$ pozitív egész számok esetén teljesül, hogy
$$n + 3 \mid n^2 + 7?$$

**Megoldás.**

Alkalmazzuk a polinomok maradékos osztásának módszerét az $n^2 + 7$ számlálóra és az $n + 3$ nevezőre:
Osszuk el az $n^2 + 7$ polinomot $(n + 3)$-mal:
$$n^2 + 7 = n(n + 3) - 3n + 7 = n(n + 3) - 3(n + 3) + 9 + 7 = (n - 3)(n + 3) + 16.$$
*(Ellenőrzés: $(n - 3)(n + 3) + 16 = n^2 - 9 + 16 = n^2 + 7$. Helyes!)*

Az oszthatósági feltétel tehát átírható:
$$n + 3 \mid (n - 3)(n + 3) + 16.$$
Mivel az első tag, $(n - 3)(n + 3)$ nyilvánvalóan osztható $(n + 3)$-mal, az oszthatóság pontosan akkor teljesül, ha az osztó osztja a megmaradó $16$ konstanst:
$$n + 3 \mid 16.$$

Mivel $n \in \mathbb{N}^+$ pozitív egész szám ($n \ge 1$), ezért:
$$n + 3 \ge 1 + 3 = 4.$$
Keressük meg a $16$ azon pozitív osztóit, amelyek legalább 4-gyel egyenlők:
A 16 összes pozitív osztója: $\{1, 2, 4, 8, 16\}$.
A legalább 4-gyel egyenlő osztók:
$$n + 3 \in \{4, 8, 16\}.$$

Számítsuk ki $n$ megfelelő értékeit:
1. $n + 3 = 4 \implies n = 1$.
   Ellenőrzés: $1 + 3 = 4$, $1^2 + 7 = 8$, és $4 \mid 8$. Helyes!
2. $n + 3 = 8 \implies n = 5$.
   Ellenőrzés: $5 + 3 = 8$, $5^2 + 7 = 25 + 7 = 32$, és $8 \mid 32$. Helyes!
3. $n + 3 = 16 \implies n = 13$.
   Ellenőrzés: $13 + 3 = 16$, $13^2 + 7 = 169 + 7 = 176 = 16 \cdot 11$, és $16 \mid 176$. Helyes!

**Végeredmény:**
A feltétel pontosan három pozitív egészre teljesül: **$n \in \{1, 5, 13\}$**.

::: elmelet
**Elméleti háttér — Polinomok redukciója egész oszthatóságnál.**
- Ha $A(n) \mid B(n)$, polinomosztással felírjuk $B(n) = Q(n) A(n) + R$ alakban, ahol $R$ konstans.
- Ekkor $A(n) \mid B(n) \iff A(n) \mid R$.
- Ezzel a változó osztó problémáját egy rögzített konstans ($R$) véges sok osztójának keresésére redukáljuk.
- Negatív egészek megengedése esetén az osztó negatív osztókat is felvehet ($n + 3 \in \{\pm 1, \dots, \pm 16\}$).
:::

## P4.13. feladat

Döntsük el, melyik állítás igaz az alábbiak közül tetszőleges $x, y \in \mathbb{Z}$ és $d \in \mathbb{N}^+$ esetén! Az igaz állítást bizonyítsuk be, a hamisra adjunk ellenpéldát!
(1) Ha $d \mid 7x + 2y$ és $d \mid 3x + y$, akkor $d \mid x$ és $d \mid y$.
(2) Ha $d \mid 4x + 3y$ és $d \mid 2x + y$, akkor $d \mid x$ és $d \mid y$.

**Megoldás.**

**(1) Az 1. állítás: IGAZ.**
*Bizonyítás:*
Keressünk olyan lineáris kombinációkat a két kifejezésből, amelyek közvetlenül $x$-et, illetve $y$-t adják vissza:
- $x$ kifejezése:
  $$(7x + 2y) - 2(3x + y) = 7x + 2y - 6x - 2y = x.$$
  Mivel $d \mid 7x + 2y$ és $d \mid 3x + y$, ezért $d$ osztja azok tetszőleges egész lineáris kombinációját is:
  $$d \mid (7x + 2y) - 2(3x + y) = x \implies d \mid x.$$
- $y$ kifejezése:
  $$7(3x + y) - 3(7x + 2y) = 21x + 7y - 21x - 6y = y.$$
  Hasonlóan:
  $$d \mid 7(3x + y) - 3(7x + 2y) = y \implies d \mid y.$$
Tehát valóban $d \mid x$ és $d \mid y$. $\blacksquare$
*(Megjegyzés: az együtthatómátrix determinánsa $\Delta = \begin{vmatrix} 7 & 2 \\ 3 & 1 \end{vmatrix} = 7 \cdot 1 - 2 \cdot 3 = 1$. Mivel $\Delta = 1$, a mátrix invertálható $\mathbb{Z}$ felett!)*

**(2) A 2. állítás: HAMIS.**
*Indoklás és ellenpélda:*
Számítsuk ki az együtthatókból álló determinánst:
$$\Delta = \begin{vmatrix} 4 & 3 \\ 2 & 1 \end{vmatrix} = 4 \cdot 1 - 3 \cdot 2 = 4 - 6 = -2.$$
Mivel $|\Delta| = 2 \ne 1$, a kombinációkból csak $2x$ és $2y$ oszthatósága következik, nem feltétlenül magáé az $x$-é és $y$-é!
Válasszunk $d = 2$-t!
Keressünk olyan $x, y$ egészeket, amelyekre a két kifejezés páros, de $x$ vagy $y$ páratlan:
Legyen például:
$$x = 1, \qquad y = 0.$$
Ekkor:
- $4x + 3y = 4(1) + 3(0) = 4$, ami osztható 2-vel ($2 \mid 4$).
- $2x + y = 2(1) + 0 = 2$, ami osztható 2-vel ($2 \mid 2$).
Azonban $d = 2 \nmid x = 1$!
Tehát $d \mid 4x + 3y$ és $d \mid 2x + y$ teljesül, de $d \nmid x$.

**Végeredmény:**
Az **(1) állítás igaz**, a **(2) állítás hamis** (ellenpélda: $x = 1, y = 0, d = 2$).

::: elmelet
**Elméleti háttér — Egész értékű invertálhatóság (unimoduláris mátrixok).**
- Egy $\begin{pmatrix} a & b \\ c & d \end{pmatrix}$ egész mátrix pontosan akkor invertálható az egész számok felett ($\mathbb{Z}^{2 \times 2}$-ben), ha determinánsa $\det = \pm 1$. Az ilyen mátrixokat **unimodulárisnak** nevezzük.
- Ha $\det = \pm 1$, a lineáris formák ekvivalensek az eredeti ismeretlenekkel: a formák közös osztói pontosan megegyeznek az ismeretlenek közös osztóival.
- Ha $|\det| = D > 1$, akkor a $D$-vel közös osztók esetén felléphetnek olyan esetek, ahol a formák oszthatók $d$-vel anélkül, hogy az ismeretlenek oszthatók lennének.
:::

## P4.14. feladat

Legyen $F_n$ az $n$-edik Fibonacci-szám ($F_1 = 1, F_2 = 1$ és $F_{n+1} = F_n + F_{n-1}$ minden $n \ge 2$-re).
(a) Igazoljuk, hogy tetszőleges $n \ge 1$ egész számra
$$(F_n, F_{n+1}) = 1,$$
vagyis a szomszédos Fibonacci-számok mindig relatív prímek!
(b) Igazoljuk a Cassini-azonosságot: $F_{n-1} F_{n+1} - F_n^2 = (-1)^n$ minden $n \ge 2$-re!

**Megoldás.**

**(a) Szomszédos Fibonacci-számok relatív prímsége:**
*1. Bizonyítás euklideszi algoritmussal:*
A rekurzió szerint $F_{n+1} = 1 \cdot F_n + F_{n-1}$.
Alkalmazzuk a legnagyobb közös osztó alaptulajdonságát ($(a, b) = (b, a - qb)$):
$$(F_{n+1}, F_n) = (F_n + F_{n-1}, F_n) = (F_{n-1}, F_n) = (F_n, F_{n-1}).$$
Ezt a lépést ismételve egymás után:
$$(F_{n+1}, F_n) = (F_n, F_{n-1}) = (F_{n-1}, F_{n-2}) = \dots = (F_2, F_1).$$
Mivel a sorozat kezdőértékei $F_2 = 1$ és $F_1 = 1$, ezért:
$$(F_{n+1}, F_n) = (1, 1) = 1.$$
Ez bizonyítja, hogy bármely két szomszédos Fibonacci-szám relatív prím. $\blacksquare$

**(b) A Cassini-azonosság bizonyítása:**
*Bizonyítás teljes indukcióval $n$-re:*
- **Bázis ($n = 2$):**
  $F_1 F_3 - F_2^2 = 1 \cdot 2 - 1^2 = 2 - 1 = 1 = (-1)^2$. Igaz!
- **Indukciós lépés ($n \to n + 1$):**
  Tegyük fel, hogy $F_{n-1} F_{n+1} - F_n^2 = (-1)^n$.
  Vizsgáljuk az $n + 1$-hez tartozó kifejezést:
  $$F_n F_{n+2} - F_{n+1}^2.$$
  Használjuk a rekurziót: $F_{n+2} = F_{n+1} + F_n$:
  $$F_n (F_{n+1} + F_n) - F_{n+1}^2 = F_n F_{n+1} + F_n^2 - F_{n+1}^2 = F_n^2 + F_{n+1}(F_n - F_{n+1}).$$
  Mivel $F_n - F_{n+1} = -F_{n-1}$:
  $$= F_n^2 - F_{n+1} F_{n-1} = -(F_{n-1} F_{n+1} - F_n^2).$$
  Az indukciós feltevést behelyettesítve:
  $$= -((-1)^n) = (-1)^{n+1}.$$
Az állítás minden $n \ge 2$-re igaz. $\blacksquare$
*(Megjegyzés: a Cassini-azonosság azonnali új bizonyítást ad az (a) részre, hiszen $F_{n+1} F_{n-1} - F_n \cdot F_n = (-1)^n$ egy konkrét Bézout-azonosság $F_{n+1}$ és $F_n$ között!)*

::: elmelet
**Elméleti háttér — Fibonacci-számok és az euklideszi algoritmus legrosszabb esete.**
- Lamé-tétel (1844): az euklideszi algoritmus a szomszédos Fibonacci-számokon hajtja végre a legtöbb lépést a számok nagyságához képest, mert a hányadosok minden lépésben a legkisebb lehetséges nemnulla egészek ($q_k = 1$).
- Általánosított Fibonacci-lnko tétel:
  $$(F_n, F_m) = F_{(n, m)}.$$
  Ez a csodálatos azonosság azt mutatja, hogy az indexek legnagyobb közös osztója pontosan a Fibonacci-számok legnagyobb közös osztójának indexét adja!
  Speciálisan $(n, n+1) = 1 \implies (F_n, F_{n+1}) = F_1 = 1$.
:::

## P4.15. feladat

Bizonyítsuk be, hogy ha $p \ge 5$ prímszám, akkor a
$$p^2 - 1$$
kifejezés mindig osztható 24-gyel!

**Megoldás.**

*Bizonyítás algebrai felbontással és kongruenciákkal:*
Bontsuk fel a $p^2 - 1$ kifejezést szorzatra:
$$p^2 - 1 = (p - 1)(p + 1).$$
Mivel $24 = 3 \cdot 8$ és $(3, 8) = 1$, elegendő belátnunk, hogy a kifejezés külön-külön osztható 3-mal és 8-cal.

1. **Oszthatóság 3-mal:**
   Mivel $p \ge 5$ prímszám, $p$ nem lehet 3 (és nem osztható 3-mal sem).
   Minden 3-mal nem osztható szám vagy $1$, vagy $2 \equiv -1$ maradékot ad 3-mal osztva:
   $$p \equiv \pm 1 \pmod 3.$$
   Négyzetre emelve:
   $$p^2 \equiv (\pm 1)^2 \equiv 1 \pmod 3 \iff 3 \mid p^2 - 1.$$
   (Vagy másképp: a $p - 1, p, p + 1$ számok közül pontosan az egyik osztható 3-mal. Mivel $p$ prím és $p > 3$, $p$ nem osztható 3-mal, így vagy $p - 1$, vagy $p + 1$ osztható 3-mal.)

2. **Oszthatóság 8-cal:**
   Mivel $p \ge 5$ prímszám, $p$ páratlan szám: $p = 2k + 1$.
   Ekkor a tényezők:
   $$p - 1 = 2k, \qquad p + 1 = 2k + 2 = 2(k + 1).$$
   A szorzatuk:
   $$(p - 1)(p + 1) = 2k \cdot 2(k + 1) = 4k(k + 1).$$
   Vegyük észre, hogy $k$ és $k + 1$ két egymást követő egész szám!
   Két egymást követő egész szám közül az egyik szükségszerűen páros, vagyis $2 \mid k(k + 1)$.
   Ezért a szorzat:
   $$4k(k + 1) = 4 \cdot (2m) = 8m.$$
   Tehát $8 \mid (p - 1)(p + 1) = p^2 - 1$.

3. **Összegzés:**
   Mivel $3 \mid p^2 - 1$ és $8 \mid p^2 - 1$, valamint $(3, 8) = 1$, ezért a legkisebb közös többszörösük:
   $$[3, 8] = 24 \mid p^2 - 1.$$
A tétel minden $p \ge 5$ prímszámra igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — A 24-es modulus univerzális szerepe.**
- A 24 az a legnagyobb modulus $M$, amelyre igaz, hogy minden $(a, M) = 1$ számra $a^2 \equiv 1 \pmod M$.
- Modulo 24 vizsgálva: $\mathbb{Z}_{24}^*$ elemei a következők: $\{1, 5, 7, 11, 13, 17, 19, 23\}$.
  Mind a 8 redukált maradék négyzete:
  $1^2 = 1$, $5^2 = 25 \equiv 1$, $7^2 = 49 \equiv 1$, $11^2 = 121 \equiv 1$, $\dots \equiv 1 \pmod{24}$.
- Ez azt jelenti, hogy $\mathbb{Z}_{24}^* \cong \mathbb{Z}_2 \times \mathbb{Z}_2 \times \mathbb{Z}_2$ Klein-csoport, kitevője 2.
:::

## P4.16. feladat

Bizonyítsuk be, hogy egy $n \in \mathbb{N}^+$ pozitív egész szám pozitív osztóinak száma (jelölje $d(n)$) pontosan akkor páratlan, ha az $n$ szám egy egész szám négyzete (azaz négyzetszám)!

**Megoldás.**

*1. Bizonyítás párosítási (kombinatorikai) érveléssel:*
Legyen $n$ egy pozitív egész szám, és tekintsük az $n$ pozitív osztóinak $D(n)$ halmazát.
Minden $d \in D(n)$ osztóhoz egyértelműen tartozik egy úgynevezett **kiegészítő osztó**:
$$d' = \frac{n}{d} \in D(n), \qquad \text{melyre } d \cdot d' = n.$$
Párosítsuk össze az osztókat $(d, d')$ párokba!
Egy osztó pontosan akkor képez önmagával párt ($d = d'$), ha:
$$d = \frac{n}{d} \iff d^2 = n.$$
- **Ha $n$ NEM négyzetszám:**
  Ekkor nem létezik olyan egész $d$, amelyre $d^2 = n$.
  Így minden osztónak a kiegészítő osztója különbözik önmagától ($d \ne d'$).
  Az összes osztó diszjunkt, két-két elemből álló párokba sorolható:
  $$D(n) = \{ (d_1, d'_1), (d_2, d'_2), \dots, (d_k, d'_k) \}.$$
  Ennélfogva az osztók teljes száma:
  $$d(n) = 2k \quad \text{(páros szám)}.$$

- **Ha $n$ négyzetszám:**
  Ekkor létezik pontosan egy olyan egész $d_0 = \sqrt{n}$, amelyre $d_0 = d'_0$ (önmaga párja).
  Az összes többi osztó továbbra is diszjunkt kételemű párokat alkot.
  Így az osztók száma:
  $$d(n) = 2k + 1 \quad \text{(páratlan szám)}.$$

*2. Bizonyítás prímtényezős felbontással (kanonikus alakkal):*
Írjuk fel $n$ kanonikus alakját a számelmélet alaptétele szerint:
$$n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_r^{\alpha_r}.$$
Az osztók számára vonatkozó ismert képlet:
$$d(n) = (\alpha_1 + 1)(\alpha_2 + 1) \cdots (\alpha_r + 1).$$
Egész számok szorzata pontosan akkor páratlan, ha minden egyes tényezője páratlan:
$$d(n) \text{ páratlan} \iff (\alpha_i + 1) \text{ páratlan minden } i \in \{1, \dots, r\} \text{ esetén.}$$
Egy szám plusz egy pontosan akkor páratlan, ha maga a szám páros:
$$\alpha_i + 1 \equiv 1 \pmod 2 \iff \alpha_i \equiv 0 \pmod 2 \qquad (i = 1, \dots, r).$$
Tehát minden $\alpha_i$ páros szám: $\alpha_i = 2\beta_i$ alkalmas $\beta_i \in \mathbb{N}_0$ egészekkel.
Ekkor:
$$n = p_1^{2\beta_1} p_2^{2\beta_2} \cdots p_r^{2\beta_r} = \left( p_1^{\beta_1} p_2^{\beta_2} \cdots p_r^{\beta_r} \right)^2 = k^2.$$
Ez pontosan azt jelenti, hogy $n$ egy egész szám négyzete.

A két irány ekvivalenciája bizonyított. $\blacksquare$

::: elmelet
**Elméleti háttér — Az osztószám-függvény tulajdonságai.**
- Az osztószám-függvény $d(n) = \tau(n) = \sum_{d \mid n} 1$ multiplikatív számelméleti függvény: ha $(a, b) = 1$, akkor $d(ab) = d(a)d(b)$.
- A kanonikus alakból: $d(\prod p_i^{\alpha_i}) = \prod (\alpha_i + 1)$.
- A szimmetria $d \leftrightarrow n/d$ egy hiperbola rácspontjainak felel meg ($xy = n$).
:::

## P4.17. feladat

Igazoljuk a Legendre-formulát: egy $p$ prímszám kitevője az $n!$ prímtényezős felbontásában:
$$v_p(n!) = \sum_{k=1}^{\infty} \left\lfloor \frac{n}{p^k} \right\rfloor.$$
Ezt felhasználva bizonyítsuk be a
$$v_p(n!) < \frac{n}{p - 1}$$
egyenlőtlenséget!

**Megoldás.**

*1. A Legendre-formula bizonyítása:*
Az $n!$ az első $n$ pozitív egész szám szorzata: $n! = 1 \cdot 2 \cdot 3 \dots n$.
Egy $p$ prím kitevője a szorzatban a tényezőkben szereplő kitevők összege:
$$v_p(n!) = \sum_{m=1}^n v_p(m).$$
Számoljuk meg, hogy az $1, 2, \dots, n$ számok közül hány osztható $p$-vel, $p^2$-tel, $p^3$-nal stb.!
- Azoknak a számoknak a száma $n$-ig, amelyek oszthatók $p$-vel: $\left\lfloor \frac{n}{p} \right\rfloor$.
  Mindegyik ilyen szám legalább 1-gyel hozzájárul $v_p(n!)$-hoz.
- Azoknak a száma, amelyek $p^2$-tel is oszthatók: $\left\lfloor \frac{n}{p^2} \right\rfloor$.
  Ezek egy második $p$ tényezőt is adnak, amit az előző lépésben még nem számoltunk.
- Általánosan, a $p^k$-val osztható számok száma $\left\lfloor \frac{n}{p^k} \right\rfloor$, amelyek a $k$-adik $p$ tényezőt szolgáltatják.
Mivel minden $m$ számban a $p$ kitevője $v_p(m)$ éppen annyiszor kerül megszámlálásra, ahány $k$-ra $p^k \mid m$:
$$v_p(n!) = \sum_{k=1}^\infty \left\lfloor \frac{n}{p^k} \right\rfloor.$$
(A szumma véges, mert ha $p^k > n$, akkor $\lfloor n/p^k \rfloor = 0$.) $\blacksquare$

*2. A felső becslés bizonyítása:*
Használjuk az egészrész alapvető egyenlőtlenségét: minden $x \in \mathbb{R}$-re $\lfloor x \rfloor \le x$, ráadásul ha $x$ nem egész, akkor $\lfloor x \rfloor < x$.
Alkalmazzuk ezt a sorra:
$$v_p(n!) = \sum_{k=1}^{\infty} \left\lfloor \frac{n}{p^k} \right\rfloor < \sum_{k=1}^{\infty} \frac{n}{p^k}.$$
(A szigorú egyenlőtlenség biztosított, mivel elég nagy $k$-ra $0 < \frac{n}{p^k} < 1$, így $\lfloor \frac{n}{p^k} \rfloor = 0 < \frac{n}{p^k}$.)
Emeljük ki $n$-et a végtelen sorból:
$$\sum_{k=1}^\infty \frac{n}{p^k} = n \sum_{k=1}^\infty \left(\frac{1}{p}\right)^k.$$
Ez egy végtelen mértani sor, amelynek első tagja $a = \frac{1}{p}$, hányadosa $q = \frac{1}{p} < 1$.
A végtelen mértani sor összege:
$$\sum_{k=1}^\infty \left(\frac{1}{p}\right)^k = \frac{\frac{1}{p}}{1 - \frac{1}{p}} = \frac{\frac{1}{p}}{\frac{p - 1}{p}} = \frac{1}{p - 1}.$$
Ezt visszahelyettesítve:
$$v_p(n!) < n \cdot \frac{1}{p - 1} = \frac{n}{p - 1}.$$
A tétel bizonyítása befejeződött. $\blacksquare$

::: elmelet
**Elméleti háttér — Legendre-tétel és p-adikus analízis.**
- Legendre-formula zárt alakja számrendszerbeli jegyekkel:
  $$v_p(n!) = \frac{n - S_p(n)}{p - 1},$$
  ahol $S_p(n)$ az $n$ szám $p$ alapú számrendszerbeli jegyeinek összege.
- Mivel $S_p(n) \ge 1$ minden $n \ge 1$-re, azonnal adódik:
  $$v_p(n!) = \frac{n - S_p(n)}{p - 1} \le \frac{n - 1}{p - 1} < \frac{n}{p - 1}.$$
- Kummer tétele (1852): a $\binom{n+m}{n}$ binomiális együtthatóban a $p$ kitevője megegyezik a $p$ alapú összeadás során keletkező átvitelek (maradványok) számával.
:::

## P4.18. feladat

Lássuk be, hogy minden $x \ge 1$ valós számra fennáll a
$$\sum_{n \le x} \frac{1}{n} < \prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1}$$
egyenlőtlenség, ahol a szorzat az $x$-nél nem nagyobb prímszámokon fut végig!
Hogyan következik ebből a prímszámok halmazának végtelensége?

**Megoldás.**

*Bizonyítás az Euler-szorzat kibontásával:*

1. **A tényezők mértani sorként való felírása:**
   Bármely $p \le x$ prímszám esetén $0 < \frac{1}{p} \le \frac{1}{2} < 1$.
   A végtelen mértani sor összege alapján:
   $$\left(1 - \frac{1}{p}\right)^{-1} = \frac{1}{1 - \frac{1}{p}} = \sum_{k=0}^{\infty} \frac{1}{p^k} = 1 + \frac{1}{p} + \frac{1}{p^2} + \frac{1}{p^3} + \dots$$

2. **A szorzat kibontása:**
   Tekintsük a véges sok $p \le x$ prímhez tartozó mértani sorok szorzatát:
   $$\prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1} = \prod_{p \le x} \left( \sum_{k=0}^{\infty} \frac{1}{p^k} \right).$$
   Mivel a sorok abszolút konvergensek, a Cauchy-szorzat szabályai szerint tagonként összeszorozhatók:
   $$= \sum_{k_1=0}^\infty \dots \sum_{k_r=0}^\infty \frac{1}{p_1^{k_1} \cdots p_r^{k_r}}.$$
   A számelmélet alaptétele szerint minden olyan $n$ pozitív egész szám, amelynek **összes prímosztója legfeljebb $x$**, pontosan egyféleképpen áll elő $p_1^{k_1} \cdots p_r^{k_r}$ alakban!
   Ezért a fenti szorzat pontosan megegyezik a következő összeggel:
   $$\prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1} = \sum_{n \in S_x} \frac{1}{n},$$
   ahol $S_x$ azon pozitív egészek halmaza, amelyeknek minden prímosztója $\le x$.

3. **Az egyenlőtlenség igazolása:**
   Ha $n \le x$, akkor $n$ bármely $p$ prímosztójára nyilvánvalóan $p \le n \le x$ teljesül.
   Ezért minden $n \le x$ szám eleme az $S_x$ halmaznak:
   $$\{n \in \mathbb{N}^+ : n \le x\} \subset S_x.$$
   Ráadásul ez a részkészlet valódi, hiszen léteznek olyan $x$-nél nagyobb számok is, amelyeknek prímosztói $\le x$ (például a legkisebb $p=2$ prím elég nagy hatványai: $2^M > x$).
   Mivel minden tag pozitív ($\frac{1}{n} > 0$):
   $$\sum_{n \le x} \frac{1}{n} < \sum_{n \in S_x} \frac{1}{n} = \prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1}.$$
   Az egyenlőtlenség bizonyítása ezzel kész. $\blacksquare$

*A prímek végtelenségének levezetése:*
Tegyük fel indirekt, hogy csak véges sok prímszám létezik, és a legnagyobb prím $P$.
Ekkor bármely $x > P$ valós számra a jobb oldali szorzat felülről korlátos egy fix számmal:
$$\prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1} = \prod_{p \le P} \left(1 - \frac{1}{p}\right)^{-1} = C < \infty.$$
Ekkor a tételbeli egyenlőtlenség szerint minden $x \ge 1$-re:
$$\sum_{n \le x} \frac{1}{n} < C.$$
Ez azonban azt jelentené, hogy a harmonikus sor $\sum_{n=1}^\infty \frac{1}{n}$ részletösszegei felülről korlátosak, tehát a harmonikus sor konvergens lenne!
Tudjuk azonban (Oresme tétele), hogy a harmonikus sor divergens:
$$\lim_{x \to \infty} \sum_{n \le x} \frac{1}{n} = \infty.$$
Ez a feloldhatatlan ellentmondás bizonyítja, hogy a prímszámok száma nem lehet véges, vagyis **végtelen sok prímszám létezik**. $\blacksquare$

::: elmelet
**Elméleti háttér — Euler-szorzat és analitikus számelmélet.**
- Leonhard Euler (1737) felfedezése: a Riemann-féle zéta-függvény Euler-szorzata:
  $$\zeta(s) = \sum_{n=1}^\infty \frac{1}{n^s} = \prod_{p \text{ prím}} \left(1 - \frac{1}{p^s}\right)^{-1} \qquad (s > 1).$$
- Ez az azonosság híd az additív és a multiplikatív számelmélet között.
- Az $s \to 1^+$ határértékben a bal oldal $\zeta(1) = \infty$, amiből következik, hogy $\sum_{p} \frac{1}{p} = \infty$ (a prímek reciprokösszege is divergens, sokkal sűrűbbek, mint a négyzetszámok).
:::

---

# 5. feladatsor — Komplex számok algebrai és trigonometrikus alakja, Moivre-formula, gyökvonás és geometriai alkalmazások

## P5.1. feladat

A komplex számok halmazát $\mathbb{C} = \{a + bi : a, b \in \mathbb{R}\}$ definíciója és az $i^2 = -1$ szabály alapján bizonyítsuk be, hogy a komplex számok szorzása:
(a) asszociatív: $\forall x, y, z \in \mathbb{C}$-re $(xy)z = x(yz)$;
(b) disztributív az összeadásra nézve: $x(y + z) = xy + xz$ és $(x + y)z = xz + yz$.

**Megoldás.**

Legyenek a komplex számok algebrai alakban:
$$x = a + bi, \quad y = c + di, \quad z = e + fi, \qquad \text{ahol } a, b, c, d, e, f \in \mathbb{R}.$$
A komplex szorzás és összeadás definíciója:
$$(a + bi)(c + di) = (ac - bd) + (ad + bc)i,$$
$$(a + bi) + (c + di) = (a + c) + (b + d)i.$$

**(a) Az asszociativitás bizonyítása:**
Számítsuk ki a bal oldalt:
$$xy = (ac - bd) + (ad + bc)i.$$
Ezt szorozzuk meg $z = e + fi$-vel:
$$(xy)z = [ (ac - bd)e - (ad + bc)f ] + [ (ac - bd)f + (ad + bc)e ] i$$
$$= (ace - bde - adf - bcf) + (acf - bdf + ade + bce)i.$$

Számítsuk ki a jobb oldalt:
$$yz = (ce - df) + (cf + de)i.$$
Ezt szorozzuk meg balról $x = a + bi$-vel:
$$x(yz) = [ a(ce - df) - b(cf + de) ] + [ a(cf + de) + b(ce - df) ] i$$
$$= (ace - adf - bcf - bde) + (acf + ade + bce - bdf)i.$$

Hasonlítsuk össze a valós és képzetes részeket:
- A valós részek: $ace - bde - adf - bcf = ace - adf - bcf - bde$. (A valós számok összeadásának kommutativitása miatt megegyeznek!)
- A képzetes részek: $acf - bdf + ade + bce = acf + ade + bce - bdf$. (Szintén megegyeznek!)
Mivel a valós és képzetes részek megegyeznek, ezért $(xy)z = x(yz)$. $\blacksquare$

**(b) A disztributivitás bizonyítása:**
Számítsuk ki $x(y + z)$-t:
$$y + z = (c + e) + (d + f)i.$$
Szorozzuk meg $x = a + bi$-vel:
$$x(y + z) = [ a(c + e) - b(d + f) ] + [ a(d + f) + b(c + e) ] i$$
$$= (ac + ae - bd - bf) + (ad + af + bc + bf)i$$
$$= [ (ac - bd) + (ae - bf) ] + [ (ad + bc) + (af + be) ] i.$$
A valós számok átrendezhetősége miatt:
$$= [ (ac - bd) + (ad + bc)i ] + [ (ae - bf) + (af + be)i ] = xy + xz.$$
A jobb oldali disztributivitás $(x + y)z = xz + yz$ hasonlóan adódik, vagy a komplex szorzás kommutativitásából ($xy = yx$):
$$(x + y)z = z(x + y) = zx + zy = xz + yz.$$
A bizonyítás ezzel teljes. $\blacksquare$

::: elmelet
**Elméleti háttér — A komplex számok testaxiomatikus felépítése.**
- A komplex számok struktúrája $(\mathbb{C}, +, \cdot)$ testet alkot: az összeadás és a szorzás kommutatív, asszociatív, létezik nullelem ($0$), egységelem ($1$), additív inverz ($-z$), nemnulla elemre multiplikatív inverz ($z^{-1} = \frac{\bar{z}}{|z|^2}$), és érvényes a disztributivitás.
- Algebrailag: $\mathbb{C} \cong \mathbb{R}[x]/(x^2 + 1)$, vagyis a valós polinomgyűrű faktorteste az $x^2 + 1$ irreducibilis polinom által generált maximális ideál szerint.
- Geometriailag: a sík pontjai az Argand–Gauss-féle komplex számsíkon.
:::

## P5.2. feladat

Végezzük el az alábbi műveleteket a komplex számok körében, és a végeredményt adjuk meg a lehető legegyszerűbb alakban:
(1) $(3 - 2i)(2 + 5i)$
(2) $\displaystyle\frac{-3}{i}$
(3) $\displaystyle\frac{3 + 4i}{1 - 2i}$
(4) $\displaystyle\left| \frac{\overline{4 - 3i}}{4 - 3i} \right|$
(5) $\displaystyle\left| \frac{(7 - 2026i)^{30}}{(7 + 2026i)^{30}} \right|$
(6) $(1 + i)^4$
(7) $(1 - i)^{512}$
(8) $(1 + i\sqrt{3})^3$

**Megoldás.**

**(1)** $(3 - 2i)(2 + 5i) = 6 + 15i - 4i - 10i^2 = 6 + 11i + 10 = \mathbf{16 + 11i}$.

**(2)** $\frac{-3}{i} = \frac{-3(-i)}{i(-i)} = \frac{3i}{1} = \mathbf{3i}$. (Vagy: $\frac{1}{i} = -i$, így $-3(-i) = 3i$.)

**(3)** Bővítsünk a nevező konjugáltjával ($1 + 2i$):
$$\frac{3 + 4i}{1 - 2i} = \frac{(3 + 4i)(1 + 2i)}{(1 - 2i)(1 + 2i)} = \frac{3 + 6i + 4i + 8i^2}{1^2 + 2^2} = \frac{3 + 10i - 8}{5} = \frac{-5 + 10i}{5} = \mathbf{-1 + 2i}.$$

**(4)** Használjuk az abszolút érték multiplikatív tulajdonságát: $\left|\frac{u}{v}\right| = \frac{|u|}{|v|}$.
Továbbá tetszőleges komplex számra $|\bar{z}| = |z|$.
Így:
$$\left| \frac{\overline{4 - 3i}}{4 - 3i} \right| = \frac{|\overline{4 - 3i}|}{|4 - 3i|} = \frac{|4 - 3i|}{|4 - 3i|} = \mathbf{1}.$$

**(5)** Legyen $z = 7 - 2026i$. Ekkor $7 + 2026i = \bar{z}$.
Mivel $|\bar{z}| = |z|$, ezért:
$$\left| \frac{z^{30}}{\bar{z}^{30}} \right| = \left| \frac{z}{\bar{z}} \right|^{30} = \left( \frac{|z|}{|\bar{z}|} \right)^{30} = 1^{30} = \mathbf{1}.$$

**(6)** Számítsuk ki először a négyzetét:
$$(1 + i)^2 = 1 + 2i + i^2 = 1 + 2i - 1 = 2i.$$
Ekkor:
$$(1 + i)^4 = ((1 + i)^2)^2 = (2i)^2 = 4i^2 = \mathbf{-4}.$$

**(7)** Számítsuk ki $(1 - i)^2$-et:
$$(1 - i)^2 = 1 - 2i + i^2 = -2i.$$
Mivel $512 = 2 \cdot 256$:
$$(1 - i)^{512} = ((1 - i)^2)^{256} = (-2i)^{256} = (-2)^{256} \cdot i^{256}.$$
Mivel a 256 osztható 4-gyel ($256 = 4 \cdot 64$), ezért $i^{256} = (i^4)^{64} = 1^{64} = 1$.
Tehát:
$$(1 - i)^{512} = 2^{256} \cdot 1 = \mathbf{2^{256}}.$$

**(8)** Használjuk az $(a + b)^3 = a^3 + 3a^2 b + 3ab^2 + b^3$ azonosságot $a = 1, b = i\sqrt{3}$ értékekkel:
$$(1 + i\sqrt{3})^3 = 1^3 + 3(1)^2(i\sqrt{3}) + 3(1)(i\sqrt{3})^2 + (i\sqrt{3})^3$$
$$= 1 + 3\sqrt{3}i + 3(-3) + (-3\sqrt{3}i) = 1 + 3\sqrt{3}i - 9 - 3\sqrt{3}i = \mathbf{-8}.$$
*(Vagy trigonometrikus alakban: $1 + i\sqrt{3} = 2(\cos\frac{\pi}{3} + i\sin\frac{\pi}{3}) \implies (1 + i\sqrt{3})^3 = 2^3(\cos\pi + i\sin\pi) = 8(-1) = -8$.)*

::: elmelet
**Elméleti háttér — Komplex algebrai műveletek szabályai.**
- Konjugált és abszolút érték kapcsolata: $z \bar{z} = |z|^2 = a^2 + b^2$.
- Osztás elvégzése: a nevező konjugáltjával való bővítéssel a nevező valós számmá válik: $\frac{w}{z} = \frac{w\bar{z}}{|z|^2}$.
- Abszolút érték multiplikativitása: $|z w| = |z||w|$, $\left|\frac{w}{z}\right| = \frac{|w|}{|z|}$, $|z^n| = |z|^n$.
- A képzetes egység hatványai 4-periódusúak: $i^0 = 1, i^1 = i, i^2 = -1, i^3 = -i, i^4 = 1$.
- Gyakori fogás nagy hatványoknál: $(1 \pm i)^2 = \pm 2i$ felismerése.
:::

## P5.3. feladat

Igazoljuk, hogy egy $z \in \mathbb{C}$ komplex szám abszolút értéke akkor és csak akkor 1, ha a reciproka megegyezik a konjugáltjával:
$$|z| = 1 \iff \frac{1}{z} = \overline{z}.$$
Bizonyítsuk be ennek segítségével, hogy ha $|u| = 1$ és $|v| = 1$ ($uv \ne -1$), akkor a
$$w = \frac{u + v}{1 + uv}$$
szám valós!

**Megoldás.**

*1. Rész: Az ekvivalencia bizonyítása:*
Tudjuk, hogy minden $z \in \mathbb{C}$ komplex számra érvényes az alábbi azonosság:
$$z \cdot \overline{z} = |z|^2.$$
- $\implies$: Tegyük fel, hogy $|z| = 1$. Ekkor $z \ne 0$, így létezik a reciproka, és $|z|^2 = 1^2 = 1$.
  A fenti azonosság szerint:
  $$z \cdot \overline{z} = 1.$$
  Osszuk el mindkét oldalt a $z \ne 0$ számmal:
  $$\overline{z} = \frac{1}{z}.$$
- $\impliedby$: Tegyük fel, hogy $\frac{1}{z} = \overline{z}$ (ami eleve feltételezi, hogy $z \ne 0$).
  Szorozzuk be mindkét oldalt $z$-vel:
  $$1 = z \cdot \overline{z}.$$
  Mivel $z \cdot \overline{z} = |z|^2$, ezért:
  $$|z|^2 = 1.$$
  Mivel az abszolút érték definíció szerint nemnegatív valós szám ($|z| \ge 0$), a négyzetgyökvonás egyértelmű:
  $$|z| = 1.$$
Az ekvivalencia bizonyítása ezzel kész. $\blacksquare$

*2. Rész: Alkalmazás a $w$ szám valós voltának belátására:*
Egy $w$ komplex szám pontosan akkor valós, ha megegyezik a saját konjugáltjával:
$$w \in \mathbb{R} \iff \overline{w} = w.$$
Számítsuk ki $w$ konjugáltját a konjugálás műveleti tulajdonságaival:
$$\overline{w} = \overline{\left(\frac{u + v}{1 + uv}\right)} = \frac{\overline{u + v}}{\overline{1 + uv}} = \frac{\overline{u} + \overline{v}}{1 + \overline{u} \cdot \overline{v}}.$$
Mivel a feltétel szerint $|u| = 1$ és $|v| = 1$, az 1. rész tétele alapján:
$$\overline{u} = \frac{1}{u} \qquad \text{és} \qquad \overline{v} = \frac{1}{v}.$$
Helyettesítsük be ezeket:
$$\overline{w} = \frac{\frac{1}{u} + \frac{1}{v}}{1 + \frac{1}{u} \cdot \frac{1}{v}} = \frac{\frac{v + u}{uv}}{\frac{uv + 1}{uv}}.$$
Egyszerűsítsünk a közös $uv$ nevezővel:
$$\overline{w} = \frac{u + v}{1 + uv} = w.$$
Mivel $\overline{w} = w$, ezért a $w$ szám valóban valós szám. $\blacksquare$

::: elmelet
**Elméleti háttér — Az egységkör csoportja és a Cayley-transzformáció.**
- Az egységnyi abszolút értékű komplex számok az egységkört alkotják a komplex síkon: $\mathbb{T} = \{z \in \mathbb{C} : |z| = 1\}$. Ez a multiplikatív csoport részcsoportja ($\operatorname{U}(1)$ csoport).
- Valós számok algebrai jellemzése: $z \in \mathbb{R} \iff \bar{z} = z$.
- Tiszta képzetes számok: $z \in i\mathbb{R} \iff \bar{z} = -z$.
- A feladatbeli tört a hiperbolikus geometria és a relativisztikus sebességösszeadás ($v = \frac{v_1 + v_2}{1 + v_1 v_2}$) komplex modelljéhez kapcsolódik.
:::

## P5.4. feladat

Határozzuk meg az alábbi összegek algebrai alakját:
(1) $S_1 = i^{123} + i^{124} + i^{125} + i^{126}$
(2) $S_2 = \displaystyle\sum_{k=1}^{2026} i^k$
(3) $S_3 = \displaystyle\sum_{k=0}^{100} (-i)^k$

**Megoldás.**

A képzetes egység hatványai a 4 hosszúságú $(i, -1, -i, 1)$ ciklust ismétlik:
$$i^0 = 1, \quad i^1 = i, \quad i^2 = -1, \quad i^3 = -i, \quad i^4 = 1, \dots$$
Vegyük észre a legfontosabb alaptulajdonságot: **bármely négy egymást követő hatvány összege 0**:
$$i^m + i^{m+1} + i^{m+2} + i^{m+3} = i^m (1 + i + i^2 + i^3) = i^m (1 + i - 1 - i) = i^m \cdot 0 = 0.$$

**(1) $S_1 = i^{123} + i^{124} + i^{125} + i^{126}$:**
Ez a kifejezés négy egymást követő hatvány összege ($m = 123$).
A fenti szabály szerint az értéke azonnal:
$$S_1 = \mathbf{0}.$$
*(Közvetlen számolással: $123 = 4 \cdot 30 + 3 \implies i^{123} = -i$, $i^{124} = 1$, $i^{125} = i$, $i^{126} = -1$, összeadva: $-i + 1 + i - 1 = 0$.)*

**(2) $S_2 = \sum_{k=1}^{2026} i^k$:**
Csoportosítsuk az összeget négyesével az elejétől kezdve:
Mivel $2026 = 4 \cdot 506 + 2$, az összeg $506$ darab négytagú csoportból és még 2 megmaradó tagból áll:
$$S_2 = 506 \cdot 0 + i^{2025} + i^{2026}.$$
Mivel $2025 = 4 \cdot 506 + 1 \implies i^{2025} = i^1 = i$, és $i^{2026} = i^2 = -1$:
$$S_2 = i - 1 = \mathbf{-1 + i}.$$

**(3) $S_3 = \sum_{k=0}^{100} (-i)^k$:**
Alkalmazzuk a véges mértani sor összegképletét ($a = 1, q = -i, n = 100$):
$$S_3 = \frac{1 - (-i)^{101}}{1 - (-i)} = \frac{1 - (-i)^{101}}{1 + i}.$$
Számítsuk ki $(-i)^{101}$-et:
$$(-i)^{101} = (-1)^{101} \cdot i^{101} = -1 \cdot i^1 = -i.$$
Így a számláló:
$$1 - (-i) = 1 + i.$$
A tört tehát:
$$S_3 = \frac{1 + i}{1 + i} = \mathbf{1}.$$
*(Vagy csoportosítással: 101 tag van, az első 100 tag 25 darab 4-es csoportot alkot, melyek mind 0-t adnak, és az utolsó megmaradó tag $(-i)^{100} = ((-i)^4)^{25} = 1^{25} = 1$.)*

::: elmelet
**Elméleti háttér — Ciklikus csoportok és a nullösszeg elve.**
- Az $i$ által generált csoport a negyedrendű ciklikus csoport: $\langle i \rangle = \{1, i, -1, -i\} \cong \mathbb{Z}_4$.
- Bármely véges csoportban vagy ciklikus részcsoportban a csoport összes elemének összege zérus (ha a csoport nem triviális).
- Emiatt a periódus hosszával egyenlő számú egymást követő tag összege mindig zérus.
:::

## P5.5. feladat

Oldjuk meg a komplex számok halmazán az alábbi egyenletet:
$$3z + 2\overline{z} = 10 - 4i.$$

**Megoldás.**

Írjuk fel az ismeretlen $z$ komplex számot algebrai alakban:
$$z = x + yi, \qquad \text{ahol } x, y \in \mathbb{R}.$$
Ekkor a konjugáltja:
$$\overline{z} = x - yi.$$
Helyettesítsük be ezeket az eredeti egyenletbe:
$$3(x + yi) + 2(x - yi) = 10 - 4i.$$
Bontsuk fel a zárójeleket:
$$3x + 3yi + 2x - 2yi = 10 - 4i.$$
Vonjuk össze a valós és a képzetes részeket a bal oldalon:
$$(3x + 2x) + (3y - 2y)i = 10 - 4i \iff 5x + yi = 10 - 4i.$$
Két komplex szám pontosan akkor egyenlő egymással, ha valós és képzetes részeik külön-külön megegyeznek.
Ez két független valós egyenletből álló lineáris rendszert eredményez:
1. Valós részek egyenlősége:
   $$5x = 10 \implies x = \frac{10}{5} = 2.$$
2. Képzetes részek egyenlősége:
   $$y = -4.$$

Ezzel mind a valós, mind a képzetes rész egyértelműen meghatározott:
$$z = 2 - 4i.$$

*Ellenőrzés:*
$$3z = 3(2 - 4i) = 6 - 12i,$$
$$2\overline{z} = 2(2 + 4i) = 4 + 8i.$$
Összegük:
$$3z + 2\overline{z} = (6 + 4) + (-12 + 8)i = 10 - 4i.$$
Az eredmény pontosan egyezik a jobb oldallal.

**Végeredmény:**
Az egyenlet egyetlen megoldása: **$z = 2 - 4i$**.

::: elmelet
**Elméleti háttér — Valós és képzetes részekre bontás módszere.**
- Az olyan egyenletek, amelyekben $z$ és $\bar{z}$ (vagy $\operatorname{Re}(z), \operatorname{Im}(z), |z|$) vegyesen szerepelnek, **nem $\mathbb{C}$-lineárisak**, hanem **$\mathbb{R}$-lineárisak**.
- Megoldási stratégia: a $z = x + iy$ helyettesítéssel az egyenletet szétbontjuk két valós ismeretlenes valós egyenletrendszerre:
  $$\begin{cases} \operatorname{Re}(\text{Bal oldal}) = \operatorname{Re}(\text{Jobb oldal}) \\ \operatorname{Im}(\text{Bal oldal}) = \operatorname{Im}(\text{Jobb oldal}) \end{cases}$$
- Alternatív módszer: az egyenlet mindkét oldalának konjugálásával egy $2 \times 2$-es rendszert kapunk $z$-re és $\bar{z}$-re.
:::

## P5.6. feladat

Oldjuk meg a komplex számok halmazán az alábbi egyenleteket:
(1) $z = (4 - 3i)\overline{z}$
(2) $z = 2i \operatorname{Im}(z)$
(3) $\operatorname{Im}(z) = z - \overline{z}$

**Megoldás.**

**(1) $z = (4 - 3i)\overline{z}$:**
*1. módszer (abszolút értékkel):*
Vegyük mindkét oldal abszolút értékét:
$$|z| = |(4 - 3i)\overline{z}| = |4 - 3i| \cdot |\overline{z}|.$$
Mivel $|4 - 3i| = \sqrt{4^2 + (-3)^2} = \sqrt{16 + 9} = \sqrt{25} = 5$, és $|\overline{z}| = |z|$:
$$|z| = 5 |z| \iff 4 |z| = 0 \implies |z| = 0.$$
Mivel egyetlen olyan komplex szám van, amelynek abszolút értéke 0, ez a nulla:
$$z = 0.$$
*(2. módszer algebrai alakkal: $x + yi = (4 - 3i)(x - yi) = (4x - 3y) + (-3x - 4y)i$.
A rendszer: $x = 4x - 3y \implies 3x - 3y = 0 \implies x = y$.
Második: $y = -3x - 4y \implies 3x + 5y = 0$.
Behelyettesítve $x = y$: $8x = 0 \implies x = 0, y = 0$.)*
**Egyetlen megoldás: $z = 0$.**

**(2) $z = 2i \operatorname{Im}(z)$:**
Legyen $z = x + yi$ ($x, y \in \mathbb{R}$). Ekkor $\operatorname{Im}(z) = y$.
Az egyenlet:
$$x + yi = 2i \cdot y = 0 + 2yi.$$
Egyenlővé téve a valós és képzetes részeket:
- Valós részek: $x = 0$.
- Képzetes részek: $y = 2y \implies y = 0$.
Mindkét komponens nulla, így:
**Egyetlen megoldás: $z = 0$.**

**(3) $\operatorname{Im}(z) = z - \overline{z}$:**
Legyen $z = x + yi$. Ekkor:
- Bal oldal: $\operatorname{Im}(z) = y$.
- Jobb oldal: $z - \overline{z} = (x + yi) - (x - yi) = 2yi$.
Az egyenlet tehát:
$$y = 2yi \iff y + 0i = 0 + 2yi.$$
Valós és képzetes részek egyenlősége:
- Valós részek: $y = 0$.
- Képzetes részek: $0 = 2y \implies y = 0$.
A feltétel tehát mindössze annyi, hogy a képzetes rész nulla legyen ($y = 0$).
A valós részre ($x$) semmilyen megkötés nincs!
Ezért minden olyan komplex szám megoldás, amelynek képzetes része 0, vagyis minden valós szám!
**Megoldások:** **$z \in \mathbb{R}$** (tetszőleges valós szám, azaz $z = x$, $x \in \mathbb{R}$).

::: elmelet
**Elméleti háttér — Homogén komplex egyenletek és alterek.**
- Ha egy egyenletben a két oldal abszolút értéke eltérő skálázódást mutat ($|z| = c |z|$ ahol $c \ne 1$), az abszolút érték azonnal kizárja a nemzérus megoldásokat.
- A komplex konjugálás és valós/képzetes részképzés a sík $\mathbb{R}$-lineáris transzformációi.
- Az $\operatorname{Im}(z) = z - \bar{z}$ egyenlet megoldáshalmaza a valós tengely, mint 1-dimenziós valós altér.
:::

## P5.7. feladat

Tegyük fel, hogy $(x + iy)^k = 12 - 5i$, ahol $x, y \in \mathbb{R}$ és $k \in \mathbb{N}^+$. Mennyi lesz ekkor az
$$(x^2 + y^2)^k$$
kifejezés pontos értéke?

**Megoldás.**

Legyen $z = x + iy$. Ekkor a feltétel:
$$z^k = 12 - 5i.$$
Vegyük mindkét oldal abszolút értékét:
$$|z^k| = |12 - 5i|.$$
Az abszolút érték multiplikativitása és hatványozási szabálya szerint tetszőleges komplex számra és pozitív egész kitevőre:
$$|z^k| = |z|^k.$$
Számítsuk ki a jobb oldali szám abszolút értékét a definíció alapján:
$$|12 - 5i| = \sqrt{12^2 + (-5)^2} = \sqrt{144 + 25} = \sqrt{169} = 13.$$
Így:
$$|z|^k = 13.$$
Másrészt $z = x + iy$ abszolút értéke:
$$|z| = \sqrt{x^2 + y^2} \implies |z|^2 = x^2 + y^2.$$
Ekkor a keresett kifejezés:
$$(x^2 + y^2)^k = \left( |z|^2 \right)^k = \left( |z|^k \right)^2.$$
Mivel $|z|^k = 13$:
$$(x^2 + y^2)^k = 13^2 = 169.$$

**Végeredmény:**
A kifejezés értéke: **$169$**.

::: elmelet
**Elméleti háttér — A komplex abszolút érték és hatványozás.**
- Az abszolút érték leképezés $|\cdot| : \mathbb{C} \to [0, \infty)$ multiplikatív csoport-homomorfizmus: $|z_1 z_2| = |z_1||z_2|$ és $|z^k| = |z|^k$.
- A kifejezés $(x^2 + y^2)^k = (|z|^2)^k = (|z|^k)^2 = |z^k|^2$.
- Ezért a kifejezés értéke közvetlenül a jobb oldal abszolút értékének négyzetével egyenlő, teljesen függetlenül a $k$ kitevő konkrét értékétől!
:::

## P5.8. feladat

Oldjuk meg az alábbi komplex együtthatós lineáris egyenletrendszert a komplex számok halmazán ($z, w \in \mathbb{C}$):
$$\begin{aligned}
(1 + i)z - w &= -1 + 5i \\
2z + (1 - i)w &= 6 + 2i
\end{aligned}$$

**Megoldás.**

Az egyenletrendszer megoldható Gauss-eliminációval vagy behelyettesítéssel.
Fejezzük ki $w$-t az 1. egyenletből:
$$w = (1 + i)z - (-1 + 5i) = (1 + i)z + 1 - 5i.$$
Helyettesítsük be ezt a kifejezést a 2. egyenletbe:
$$2z + (1 - i)\left[ (1 + i)z + 1 - 5i \right] = 6 + 2i.$$
Végezzük el a szorzást:
$$(1 - i)(1 + i) = 1^2 - i^2 = 1 + 1 = 2.$$
$$(1 - i)(1 - 5i) = 1 - 5i - i + 5i^2 = 1 - 6i - 5 = -4 - 6i.$$
Ezeket beírva:
$$2z + 2z + (-4 - 6i) = 6 + 2i \iff 4z - 4 - 6i = 6 + 2i.$$
Rendezzük az ismeretlent az egyik oldalra:
$$4z = (6 + 2i) + (4 + 6i) = 10 + 8i.$$
Osszunk $4$-gyel:
$$z = \frac{10 + 8i}{4} = \frac{5}{2} + 2i.$$

Számítsuk ki $w$ értékét a kifejezéséből:
$$w = (1 + i)\left(\frac{5}{2} + 2i\right) + 1 - 5i$$
$$= \frac{5}{2} + 2i + \frac{5}{2}i + 2i^2 + 1 - 5i$$
$$= \frac{5}{2} + \frac{9}{2}i - 2 + 1 - 5i = \left(\frac{5}{2} - 1\right) + \left(\frac{9}{2} - 5\right)i = \frac{3}{2} - \frac{1}{2}i.$$

*Ellenőrzés a 2. egyenletben:*
$$2z = 2\left(\frac{5}{2} + 2i\right) = 5 + 4i.$$
$$(1 - i)w = (1 - i)\left(\frac{3}{2} - \frac{1}{2}i\right) = \frac{3}{2} - \frac{1}{2}i - \frac{3}{2}i + \frac{1}{2}i^2 = \frac{3}{2} - 2i - \frac{1}{2} = 1 - 2i.$$
Összegük:
$$2z + (1 - i)w = (5 + 4i) + (1 - 2i) = 6 + 2i.$$
Tökéletesen megegyezik a 2. egyenlet jobb oldalával!

**Végeredmény:**
Az egyenletrendszer egyetlen megoldása:
$$z = \frac{5}{2} + 2i, \qquad w = \frac{3}{2} - \frac{1}{2}i.$$

::: elmelet
**Elméleti háttér — Komplex lineáris egyenletrendszerek.**
- Mivel $\mathbb{C}$ test, a klasszikus Gauss-elimináció, a behelyettesítő módszer és a Cramer-szabály változtatás nélkül érvényes $\mathbb{C}$ felett is.
- A determináns:
  $$\det A = \begin{vmatrix} 1 + i & -1 \\ 2 & 1 - i \end{vmatrix} = (1 + i)(1 - i) - (-1)(2) = 2 - (-2) = 4 \ne 0.$$
  Mivel a determináns nem nulla, a megoldás a Cramer-szabály szerint egyértelmű.
:::

## P5.9. feladat

Mutassuk meg, hogy ha az $m$ és $n$ egész számok mindketten előállnak két négyzetszám összegeként, akkor a szorzatuk $m \cdot n$ is előáll két négyzetszám összegeként!
Vezessük le a Brahmagupta–Fibonacci-azonosságot a komplex számok abszolút értékének tulajdonsága segítségével!

**Megoldás.**

*Bizonyítás komplex számok segítségével:*

1. **A két négyzetszám összege mint komplex abszolút érték négyzete:**
   Ha $m$ előáll két négyzetszám összegeként, akkor léteznek olyan $a, b \in \mathbb{Z}$ egészek, hogy
   $$m = a^2 + b^2.$$
   Tekintsük a $z_1 = a + bi \in \mathbb{C}$ Gauss-egészt! Ennek abszolút értékének négyzete:
   $$|z_1|^2 = a^2 + b^2 = m.$$

   Hasonlóan, ha $n$ előáll két négyzetszám összegeként, léteznek $c, d \in \mathbb{Z}$ egészek, hogy
   $$n = c^2 + d^2.$$
   Tekintsük a $z_2 = c + di \in \mathbb{C}$ Gauss-egészt:
   $$|z_2|^2 = c^2 + d^2 = n.$$

2. **A szorzat abszolút értéke:**
   Az abszolút érték multiplikativitása miatt:
   $$m \cdot n = |z_1|^2 \cdot |z_2|^2 = (|z_1| \cdot |z_2|)^2 = |z_1 z_2|^2.$$
   Számítsuk ki a $z_1 z_2$ komplex szorzatot:
   $$z_1 z_2 = (a + bi)(c + di) = (ac - bd) + (ad + bc)i.$$
   Ennek abszolút értékének négyzete a definíció szerint:
   $$|z_1 z_2|^2 = (ac - bd)^2 + (ad + bc)^2.$$
   Mivel $a, b, c, d$ egész számok, az $X = ac - bd$ és $Y = ad + bc$ számok szintén egész számok!
   Ezért:
   $$m \cdot n = X^2 + Y^2 = (ac - bd)^2 + (ad + bc)^2.$$
   Ez bizonyítja, hogy $mn$ valóban előáll két négyzetszám összegeként!

3. **A második felbontás ($z_1 \overline{z_2}$ segítségével):**
   Ha a $z_2$ helyett annak konjugáltjával, $\overline{z_2} = c - di$-vel szorozzuk $z_1$-et (amelynek abszolút értéke ugyanaz: $|\overline{z_2}| = |z_2|$):
   $$z_1 \overline{z_2} = (a + bi)(c - di) = (ac + bd) + (bc - ad)i.$$
   Ebből a Brahmagupta–Fibonacci-azonosság második alakja adódik:
   $$(a^2 + b^2)(c^2 + d^2) = (ac + bd)^2 + (ad - bc)^2.$$

A tétel bizonyítása teljes. $\blacksquare$

::: elmelet
**Elméleti háttér — Brahmagupta–Fibonacci-azonosság és a Gauss-egészek.**
- Az azonosság:
  $$(a^2 + b^2)(c^2 + d^2) = (ac - bd)^2 + (ad + bc)^2 = (ac + bd)^2 + (ad - bc)^2.$$
- A Gauss-egészek gyűrűje $\mathbb{Z}[i] = \{a + bi : a, b \in \mathbb{Z}\}$. A norma $N(a + bi) = a^2 + b^2$ multiplikatív: $N(zw) = N(z)N(w)$.
- Fermat kétnégyzetszám-tétele: egy páratlan prím pontosan akkor áll elő két négyzetszám összegeként, ha $p \equiv 1 \pmod 4$.
  A fenti azonosság biztosítja, hogy a prímek felbontásai tetszőlegesen összekombinálhatók.
:::

## P5.10. feladat

Oldjuk meg az alábbi másodfokú egyenleteket a komplex számok halmazán ($\mathbb{C}$), és írjuk fel a megfelelő polinomok gyöktényezős alakját:
(1) $x^2 + 16 = 0$
(2) $x^2 = -18$
(3) $x^2 - 6x + 25 = 0$
(4) $x^2 - 6ix - 8 = 0$

**Megoldás.**

**(1) $x^2 + 16 = 0$:**
$$x^2 = -16 = 16 i^2 \implies x = \pm \sqrt{16} i = \pm 4i.$$
Gyökök: $x_1 = 4i, x_2 = -4i$.
**Gyöktényezős alak:** $(x - 4i)(x + 4i)$.

**(2) $x^2 = -18$:**
$$x^2 = 18 i^2 \implies x = \pm \sqrt{18} i = \pm 3\sqrt{2} i.$$
Gyökök: $x_1 = 3\sqrt{2}i, x_2 = -3\sqrt{2}i$.
**Gyöktényezős alak:** $(x - 3\sqrt{2}i)(x + 3\sqrt{2}i)$.

**(3) $x^2 - 6x + 25 = 0$:**
Egészítsük ki teljes négyzetté:
$$(x - 3)^2 - 9 + 25 = 0 \iff (x - 3)^2 + 16 = 0 \iff (x - 3)^2 = -16.$$
Gyököt vonva:
$$x - 3 = \pm 4i \implies x = 3 \pm 4i.$$
Gyökök: $x_1 = 3 + 4i, x_2 = 3 - 4i$ (egymás komplex konjugáltjai).
**Gyöktényezős alak:** $(x - (3 + 4i))(x - (3 - 4i)) = (x - 3 - 4i)(x - 3 + 4i)$.

**(4) $x^2 - 6ix - 8 = 0$:**
Egészítsük ki teljes négyzetté az elsőfokú tag alapján (fele $-3i$):
$$(x - 3i)^2 - (3i)^2 - 8 = 0.$$
Mivel $(3i)^2 = 9i^2 = -9$:
$$(x - 3i)^2 - (-9) - 8 = 0 \iff (x - 3i)^2 + 9 - 8 = 0 \iff (x - 3i)^2 + 1 = 0.$$
Ebből:
$$(x - 3i)^2 = -1 = i^2.$$
Négyzetgyököt vonva:
$$x - 3i = \pm i.$$
- Első gyök: $x_1 = 3i + i = 4i$.
- Második gyök: $x_2 = 3i - i = 2i$.
*(Ellenőrzés: $(4i)^2 - 6i(4i) - 8 = -16 - 24(-1) - 8 = -16 + 24 - 8 = 0$. Helyes!
$(2i)^2 - 6i(2i) - 8 = -4 - 12(-1) - 8 = -4 + 12 - 8 = 0$. Helyes!)*
**Gyökök:** $x_1 = 4i, x_2 = 2i$.
**Gyöktényezős alak:** $(x - 4i)(x - 2i)$.

::: elmelet
**Elméleti háttér — Másodfokú egyenletek a komplex számok testében.**
- Az algebra alaptétele szerint minden komplex együtthatós másodfokú polinomnak pontosan két komplex gyöke van (multiplicitással számolva).
- **Valós együtthatós eset:** ha a diszkrimináns negatív ($\Delta < 0$), a gyökök nem valósak, hanem egymás **komplex konjugáltjai**: $x_{1,2} = u \pm iv$.
- **Nem valós együtthatós eset:** a gyökök általában NEM egymás konjugáltjai (mint a (4) részben: $4i$ és $2i$).
- Teljes négyzetté kiegészítés tetszőleges komplex együtthatókra működik: $(x + \frac{b}{2})^2 = \frac{b^2 - 4ac}{4a^2}$.
:::

## P5.11. feladat

(a) Határozzuk meg algebrai alakban azokat a $w = c + di$ ($c, d \in \mathbb{R}$) komplex számokat, amelyek négyzete egyenlő $5 + 12i$-vel (vagyis vonjunk négyzetgyököt az $5 + 12i$ számból)!
(b) Oldjuk meg a fenti eredmény segítségével az alábbi másodfokú egyenletet $\mathbb{C}$-ben:
$$x^2 + (2i - 3)x + (5 - i) = 0.$$

**Megoldás.**

**(a) Négyzetgyökvonás $5 + 12i$-ből:**
Olyan $w = c + di$ számot keresünk, amelyre:
$$(c + di)^2 = 5 + 12i \iff (c^2 - d^2) + 2cd i = 5 + 12i.$$
A valós és képzetes részek összevetésével:
1. $c^2 - d^2 = 5$,
2. $2cd = 12 \implies cd = 6$.
Vegyük hozzá a két oldal abszolút értékét:
$$|(c + di)^2| = c^2 + d^2 = |5 + 12i| = \sqrt{5^2 + 12^2} = \sqrt{25 + 144} = \sqrt{169} = 13.$$
Így kaptunk két egyszerű egyenletet $c^2$-re és $d^2$-re:
$$\begin{aligned}
c^2 + d^2 &= 13 \\
c^2 - d^2 &= 5
\end{aligned}$$
Adjuk össze a két egyenletet:
$$2c^2 = 18 \implies c^2 = 9 \implies c = \pm 3.$$
Vonjuk ki az alsót a felsőből:
$$2d^2 = 8 \implies d^2 = 4 \implies d = \pm 2.$$
Mivel a 2. egyenlet szerint $cd = 6 > 0$, ezért $c$ és $d$ azonos előjelűek!
- Ha $c = 3 \implies d = 2 \implies w_1 = 3 + 2i$.
- Ha $c = -3 \implies d = -2 \implies w_2 = -3 - 2i$.
**A négyzetgyökök:** $\pm (3 + 2i)$.

**(b) A másodfokú egyenlet megoldása:**
Alkalmazzuk a másodfokú egyenlet megoldóképletét:
$$A = 1, \quad B = 2i - 3 = -(3 - 2i), \quad C = 5 - i.$$
Számítsuk ki a diszkriminánst:
$$\Delta = B^2 - 4AC = (2i - 3)^2 - 4(1)(5 - i)$$
$$= (4i^2 - 12i + 9) - (20 - 4i) = (-4 - 12i + 9) - 20 + 4i = (5 - 12i) - 20 + 4i = -15 - 8i \dots$$
Várjunk, ellenőrizzük az eredeti feladatbeli együtthatókat:
A feladatban: $x^2 + (2i - 3)x + (5 - i) = 0$.
$B^2 = (2i - 3)^2 = -4 - 12i + 9 = 5 - 12i$.
$-4C = -4(5 - i) = -20 + 4i$.
$\Delta = 5 - 12i - 20 + 4i = -15 - 8i$.
Ennek a gyöke: keressük $(u + vi)^2 = -15 - 8i \implies u^2 - v^2 = -15, 2uv = -8 \implies uv = -4, u^2 + v^2 = \sqrt{225 + 64} = 17$.
$2u^2 = 2 \implies u = \pm 1$, $2v^2 = 32 \implies v = \pm 4$.
Mivel $uv = -4 < 0$, a gyökök $\pm(1 - 4i)$!
*(Megjegyzés: Az (a) részben az $5 + 12i$ szerepelt, ami a $B^2 - 4AC$ lenne, ha $B = 1 - 2i$ és $C = -1 - 2i$ lenne. Lássuk: a feladatbeli $\Delta = -15 - 8i$ négyzetgyöke $\pm(1 - 4i)$!)*

Számítsuk ki a gyököket:
$$x = \frac{-B \pm \sqrt{\Delta}}{2} = \frac{-(2i - 3) \pm (1 - 4i)}{2} = \frac{3 - 2i \pm (1 - 4i)}{2}.$$
- Első gyök ($+$ jel):
  $$x_1 = \frac{(3 - 2i) + (1 - 4i)}{2} = \frac{4 - 6i}{2} = 2 - 3i.$$
- Második gyök ($-$ jel):
  $$x_2 = \frac{(3 - 2i) - (1 - 4i)}{2} = \frac{2 + 2i}{2} = 1 + i.$$

*Ellenőrzés a Viète-formulákkal:*
- $x_1 + x_2 = (2 - 3i) + (1 + i) = 3 - 2i = -(2i - 3) = -B$. Helyes!
- $x_1 x_2 = (2 - 3i)(1 + i) = 2 + 2i - 3i - 3i^2 = 2 - i + 3 = 5 - i = C$. Helyes!

**Végeredmény:**
(a) Az $5 + 12i$ négyzetgyökei: **$\pm (3 + 2i)$**.
(b) Az egyenlet gyökei: **$x_1 = 2 - 3i$** és **$x_2 = 1 + i$**.

::: elmelet
**Elméleti háttér — Négyzetgyökvonás algebrai alakban.**
- Tetszőleges $z = a + bi$ komplex számnak pontosan két négyzetgyöke van $\mathbb{C}$-ben ($\pm w$), kivéve a 0-t.
- Az algebrai alakkal történő gyökvonás univerzális képlete:
  $$\sqrt{a + bi} = \pm \left( \sqrt{\frac{|z| + a}{2}} + i \cdot \operatorname{sgn}(b) \sqrt{\frac{|z| - a}{2}} \right).$$
- Ennek segítségével tetszőleges komplex együtthatós másodfokú egyenlet megoldható trigonometrikus alak nélkül is.
:::

## P5.12. feladat

Hozzuk trigonometrikus alakra az alábbi komplex számokat:
(1) $z_1 = \sqrt{3} + i$
(2) $z_2 = -2 + 2i$
(3) $z_3 = -1 - \sqrt{3}i$
(4) $z_4 = -5i$
(5) $z_5 = -\sin(20^\circ) + i\cos(20^\circ)$
(6) $z_6 = \displaystyle\frac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta}$ $\left(-\frac{\pi}{2} < \beta < \frac{\pi}{2}\right)$

**Megoldás.**

A trigonometrikus alak: $z = r(\cos\varphi + i\sin\varphi)$, ahol $r = |z| = \sqrt{a^2 + b^2} \ge 0$, és $\varphi \in [0, 2\pi)$ a szám argumentuma (szöge).

**(1) $z_1 = \sqrt{3} + i$:**
- $r = \sqrt{(\sqrt{3})^2 + 1^2} = \sqrt{3 + 1} = 2$.
- $\cos\varphi = \frac{\sqrt{3}}{2}, \sin\varphi = \frac{1}{2}$. Mivel az 1. síknegyedben van: $\varphi = \frac{\pi}{6}$ ($30^\circ$).
**Trigonometrikus alak:** $2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$.

**(2) $z_2 = -2 + 2i$:**
- $r = \sqrt{(-2)^2 + 2^2} = \sqrt{8} = 2\sqrt{2}$.
- $\cos\varphi = \frac{-2}{2\sqrt{2}} = -\frac{\sqrt{2}}{2}, \sin\varphi = \frac{\sqrt{2}}{2}$.
  A 2. síknegyedben van: $\varphi = \pi - \frac{\pi}{4} = \frac{3\pi}{4}$ ($135^\circ$).
**Trigonometrikus alak:** $2\sqrt{2}\left(\cos\frac{3\pi}{4} + i\sin\frac{3\pi}{4}\right)$.

**(3) $z_3 = -1 - \sqrt{3}i$:**
- $r = \sqrt{(-1)^2 + (-\sqrt{3})^2} = \sqrt{1 + 3} = 2$.
- $\cos\varphi = -\frac{1}{2}, \sin\varphi = -\frac{\sqrt{3}}{2}$.
  A 3. síknegyedben van: $\varphi = \pi + \frac{\pi}{3} = \frac{4\pi}{3}$ ($240^\circ$).
**Trigonometrikus alak:** $2\left(\cos\frac{4\pi}{3} + i\sin\frac{4\pi}{3}\right)$.

**(4) $z_4 = -5i$:**
- $r = |-5i| = 5$.
- A negatív képzetes tengelyen helyezkedik el: $\varphi = \frac{3\pi}{2}$ ($270^\circ$).
**Trigonometrikus alak:** $5\left(\cos\frac{3\pi}{2} + i\sin\frac{3\pi}{2}\right)$.

**(5) $z_5 = -\sin(20^\circ) + i\cos(20^\circ)$:**
Használjuk a pótszögek és a szimmetriák összefüggéseit:
$-\sin(20^\circ) = \cos(90^\circ + 20^\circ) = \cos(110^\circ)$.
$\cos(20^\circ) = \sin(90^\circ + 20^\circ) = \sin(110^\circ)$.
Az abszolút érték: $r = \sqrt{\sin^2 20^\circ + \cos^2 20^\circ} = 1$.
A szög $\varphi = 110^\circ$ (a 2. síknegyedben van, mivel $\operatorname{Re} < 0, \operatorname{Im} > 0$).
**Trigonometrikus alak:** $\cos(110^\circ) + i\sin(110^\circ)$.

**(6) $z_6 = \frac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta}$:**
Írjuk fel a tangenst szinusz és koszinusz hányadosaként: $\operatorname{tg}\beta = \frac{\sin\beta}{\cos\beta}$.
Bővítsük a tört számlálóját és nevezőjét $\cos\beta$-val:
$$z_6 = \frac{\cos\beta - i\sin\beta}{\cos\beta + i\sin\beta}.$$
A számláló trigonometrikus alakja:
$$\cos\beta - i\sin\beta = \cos(-\beta) + i\sin(-\beta).$$
A nevező trigonometrikus alakja:
$$\cos\beta + i\sin\beta.$$
Két trigonometrikus alakú komplex szám hányadosánál az abszolút értékek osztódnak, a szögek kivonódnak:
$$z_6 = \frac{1}{1} [ \cos(-\beta - \beta) + i\sin(-\beta - \beta) ] = \cos(-2\beta) + i\sin(-2\beta).$$
Ha a szöget a $[0, 2\pi)$ intervallumban szeretnénk megadni $\beta > 0$ esetén: $\cos(2\pi - 2\beta) + i\sin(2\pi - 2\beta)$.
**Trigonometrikus alak:** $\cos(-2\beta) + i\sin(-2\beta)$.

::: elmelet
**Elméleti háttér — A komplex számok trigonometrikus alakja.**
- Euler-formula: $e^{i\varphi} = \cos\varphi + i\sin\varphi$.
- Trigonometrikus alak: $z = r e^{i\varphi} = r(\cos\varphi + i\sin\varphi)$.
- A szög meghatározása síknegyedek szerint:
  - 1. negyed ($a > 0, b \ge 0$): $\varphi = \operatorname{arctg}(b/a)$.
  - 2. negyed ($a < 0, b \ge 0$): $\varphi = \operatorname{arctg}(b/a) + \pi$.
  - 3. negyed ($a < 0, b < 0$): $\varphi = \operatorname{arctg}(b/a) + \pi$.
  - 4. negyed ($a > 0, b < 0$): $\varphi = \operatorname{arctg}(b/a) + 2\pi$.
- A szorzás és osztás geometriai jelentése: a hosszúságok szorzódnak/osztódnak, a szögek összeadódnak/kivonódnak (forgatva nyújtás).
:::

## P5.13. feladat

Legyen $u = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$ és $v = 3\left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)$. Számítsuk ki az $u \cdot v$ és az $\frac{u}{v}$ kifejezések értékét! A végeredményt trigonometrikus alakban adjuk meg.

**Megoldás.**
A komplex számok trigonometrikus alakjában a szorzás és osztás műveleti szabályai a következők: szorzáskor az abszolút értékek összeszorzódnak, a szögek (argumentumok) összeadódnak; osztáskor az abszolút értékek osztódnak, a szögek kivonódnak:
$$u \cdot v = (|u| \cdot |v|) \left(\cos(\arg u + \arg v) + i\sin(\arg u + \arg v)\right),$$
$$\frac{u}{v} = \frac{|u|}{|v|} \left(\cos(\arg u - \arg v) + i\sin(\arg u - \arg v)\right).$$

Alkalmazzuk ezeket a megadott adatokra:
$|u| = 2$, $\arg u = \frac{\pi}{6}$; $|v| = 3$, $\arg v = \frac{\pi}{4}$.

1. **Szorzat:**
$$|u \cdot v| = 2 \cdot 3 = 6,$$
$$\arg(u \cdot v) = \frac{\pi}{6} + \frac{\pi}{4} = \frac{2\pi + 3\pi}{12} = \frac{5\pi}{12}.$$
Tehát:
$$u \cdot v = \mathbf{6\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right)}.$$

2. **Hányados:**
$$\left|\frac{u}{v}\right| = \frac{2}{3},$$
$$\arg\left(\frac{u}{v}\right) = \frac{\pi}{6} - \frac{\pi}{4} = -\frac{\pi}{12}.$$
A trigonometrikus alakban a szöget szokás a $[0, 2\pi)$ főintervallumban megadni ($-\frac{\pi}{12} \equiv \frac{23\pi}{12} \pmod{2\pi}$):
$$\frac{u}{v} = \mathbf{\frac{2}{3}\left(\cos\left(-\frac{\pi}{12}\right) + i\sin\left(-\frac{\pi}{12}\right)\right)} = \mathbf{\frac{2}{3}\left(\cos\frac{23\pi}{12} + i\sin\frac{23\pi}{12}\right)}.$$

::: elmelet
**Elméleti háttér — Szorzás és osztás trigonometrikus alakban.**
Ha $z_1 = r_1(\cos\varphi_1 + i\sin\varphi_1)$ és $z_2 = r_2(\cos\varphi_2 + i\sin\varphi_2)$ nemnulla komplex számok, akkor a trigonometrikus addíciós tételekből azonnal következik:
$$z_1 z_2 = r_1 r_2 \big((\cos\varphi_1\cos\varphi_2 - \sin\varphi_1\sin\varphi_2) + i(\sin\varphi_1\cos\varphi_2 + \cos\varphi_1\sin\varphi_2)\big) = r_1 r_2 (\cos(\varphi_1 + \varphi_2) + i\sin(\varphi_1 + \varphi_2)).$$
Hasonlóan:
$$\frac{z_1}{z_2} = \frac{r_1}{r_2}(\cos(\varphi_1 - \varphi_2) + i\sin(\varphi_1 - \varphi_2)).$$
**Geometriai jelentés:** A $z_2$-vel való szorzás egy $|z_2|$-szeres origó központú nyújtásból és egy $\varphi_2$ szögű origó körüli pozitív (óramutató járásával ellentétes) irányú forgatásból áll (forgatva nyújtás).
:::

## P5.14. feladat

Mennyi $-\cos(50^\circ) - i\sin(50^\circ)$ szöge? Ha $z$ szöge $75^\circ$, akkor mennyi $2026/\overline{z}^4$ szöge? Ha $w$ abszolút értéke 1, szöge pedig $45^\circ$, akkor mennyi $w^3/\overline{w}$?

**Megoldás.**
1. **$-\cos(50^\circ) - i\sin(50^\circ)$ szöge:**
A szám felírható mint $-1 \cdot (\cos 50^\circ + i\sin 50^\circ)$. Mivel $-1 = \cos 180^\circ + i\sin 180^\circ$, a szorzási szabály szerint:
$$-(\cos 50^\circ + i\sin 50^\circ) = \cos(50^\circ + 180^\circ) + i\sin(50^\circ + 180^\circ) = \cos 230^\circ + i\sin 230^\circ.$$
Tehát a keresett szög **$230^\circ$**.

2. **$2026/\overline{z}^4$ szöge:**
Tudjuk, hogy $\arg z = 75^\circ$. A konjugált szöge:
$$\arg\overline{z} = -\arg z = -75^\circ \equiv 285^\circ.$$
A négyzetre emeléskor a hatványozás szabálya miatt a szög négyszereződik:
$$\arg(\overline{z}^4) = 4 \cdot (-75^\circ) = -300^\circ \equiv 60^\circ \pmod{360^\circ}.$$
A számláló egy pozitív valós szám ($2026 > 0$), így annak szöge $0^\circ$. Az osztási szabállyal:
$$\arg\left(\frac{2026}{\overline{z}^4}\right) = \arg(2026) - \arg(\overline{z}^4) = 0^\circ - (-300^\circ) = 300^\circ.$$
Tehát a szög **$300^\circ$** (vagy $-60^\circ$).

3. **$w^3/\overline{w}$ értéke:**
Mivel $|w| = 1$, a konjugáltja megegyezik a reciprokával: $\overline{w} = \frac{1}{w}$. Ebből:
$$\frac{w^3}{\overline{w}} = \frac{w^3}{1/w} = w^4.$$
Mivel $|w| = 1$ és $\arg w = 45^\circ$, a Moivre-képlet szerint:
$$w^4 = 1^4 \cdot (\cos(4 \cdot 45^\circ) + i\sin(4 \cdot 45^\circ)) = \cos(180^\circ) + i\sin(180^\circ) = -1 + 0i = \mathbf{-1}.$$

::: elmelet
**Elméleti háttér — Argumentum számolási szabályai és egységnyi abszolút értékű számok.**
Az argumentum alapvető tulajdonságai ($z, w \in \mathbb{C} \setminus \{0\}$):
1. $\arg(zw) \equiv \arg z + \arg w \pmod{2\pi}$,
2. $\arg(z/w) \equiv \arg z - \arg w \pmod{2\pi}$,
3. $\arg(z^n) \equiv n\arg z \pmod{2\pi}$ ($n \in \mathbb{Z}$),
4. $\arg(\overline{z}) \equiv -\arg z \pmod{2\pi}$,
5. Pozitív valós szám argumentuma $0$, negatív valósé $\pi$ ($180^\circ$).

**Különleges észrevétel:** Ha $|w| = 1$, akkor $w\overline{w} = |w|^2 = 1$, következésképpen $\overline{w} = w^{-1}$. Ez a tulajdonság rendkívül hasznos egységkörön fekvő számok törtkifejezéseinek egyszerűsítésekor.
:::

## P5.15. feladat

Mondjuk ki, és bizonyítsuk be a Moivre-formulát természetes kitevőkre. A formula, valamint a binomiális tétel felhasználásával fejezzük ki a $\cos(3x)$ és a $\sin(3x)$ függvényeket kizárólag $\cos x$ és $\sin x$ hatványainak segítségével.

**Megoldás.**
1. **A Moivre-formula kimondása:**
Tetszőleges $x \in \mathbb{R}$ valós számra és $n \in \mathbb{N}$ (sőt $n \in \mathbb{Z}$) kitevőre érvényes:
$$(\cos x + i\sin x)^n = \cos(nx) + i\sin(nx).$$

2. **Bizonyítás $n \in \mathbb{N}$-re teljes indukcióval:**
- *Bázislépés:* $n = 1$-re $(\cos x + i\sin x)^1 = \cos(1 \cdot x) + i\sin(1 \cdot x)$, ami triviálisan igaz. ($n = 0$-ra $(\cos x + i\sin x)^0 = 1 = \cos 0 + i\sin 0$ is teljesül.)
- *Indukciós feltevés:* Tegyük fel, hogy valamely $k \ge 1$ egészre igaz, hogy $(\cos x + i\sin x)^k = \cos(kx) + i\sin(kx)$.
- *Indukciós lépés:* Bizonyítandó $n = k + 1$-re.
$$(\cos x + i\sin x)^{k+1} = (\cos x + i\sin x)^k \cdot (\cos x + i\sin x).$$
Az indukciós feltevést behelyettesítve:
$$= (\cos(kx) + i\sin(kx))(\cos x + i\sin x).$$
A komplex szorzást elvégezve és kihasználva, hogy $i^2 = -1$:
$$= (\cos(kx)\cos x - \sin(kx)\sin x) + i(\sin(kx)\cos x + \cos(kx)\sin x).$$
A valós és képzetes részben felismerjük a koszinusz és szinusz addíciós tételeit:
$$\cos(kx)\cos x - \sin(kx)\sin x = \cos(kx + x) = \cos((k+1)x),$$
$$\sin(kx)\cos x + \cos(kx)\sin x = \sin(kx + x) = \sin((k+1)x).$$
Így:
$$(\cos x + i\sin x)^{k+1} = \cos((k+1)x) + i\sin((k+1)x),$$
ami az állítás $n = k + 1$-re. A teljes indukció elve alapján a Moivre-formula minden $n \in \mathbb{N}$-re igaz. $\blacksquare$

3. **$\cos(3x)$ és $\sin(3x)$ kifejezése:**
Legyen $c = \cos x$ és $s = \sin x$. A Moivre-formula szerint $n = 3$-ra:
$$\cos(3x) + i\sin(3x) = (\cos x + i\sin x)^3 = (c + is)^3.$$
Fejtsük ki a jobb oldalt a binomiális tétel segítségével:
$$(c + is)^3 = \binom{3}{0}c^3 + \binom{3}{1}c^2(is) + \binom{3}{2}c(is)^2 + \binom{3}{3}(is)^3 = c^3 + 3ic^2s - 3cs^2 - is^3.$$
Csoportosítsuk a valós és képzetes részeket:
$$(c + is)^3 = (c^3 - 3cs^2) + i(3c^2s - s^3).$$
Két komplex szám akkor és csak akkor egyenlő, ha valós és képzetes részeik megegyeznek:
$$\mathbf{\cos(3x) = \cos^3 x - 3\cos x\sin^2 x},$$
$$\mathbf{\sin(3x) = 3\cos^2 x\sin x - \sin^3 x}.$$
Ha kizárólag $\cos x$-szel, illetve $\sin x$-szel kívánjuk megadni őket, az $s^2 = 1 - c^2$, illetve $c^2 = 1 - s^2$ azonosságokkal:
$$\cos(3x) = c^3 - 3c(1 - c^2) = \mathbf{4\cos^3 x - 3\cos x},$$
$$\sin(3x) = 3(1 - s^2)s - s^3 = \mathbf{3\sin x - 4\sin^3 x}.$$

::: elmelet
**Elméleti háttér — Moivre-formula és a Csebisev-polinomok.**
A Moivre-formula és a binomiális tétel összekapcsolása az egyik leghatékonyabb eszköz többszörös szögek trigonometrikus függvényeinek kiszámítására:
$$\cos(nx) + i\sin(nx) = \sum_{k=0}^n \binom{n}{k} i^k \cos^{n-k}x \sin^k x.$$
A valós rész a páros indexű tagokból adódik ($i^{2m} = (-1)^m$), a képzetes rész a páratlan indexű tagokból ($i^{2m+1} = (-1)^m i$).
A $\cos(nx)$ mint $\cos x$ polinomja nem más, mint az $n$-edfokú **elsőfajú Csebisev-polinom**: $\cos(nx) = T_n(\cos x)$. Hasonlóan $\sin(nx) / \sin x = U_{n-1}(\cos x)$ a **másodfajú Csebisev-polinom**.
:::

## P5.16. feladat

Mennyi az értéke a $\left(\sin\frac{\pi}{12} + i\cos\frac{\pi}{12}\right)^{12}$ és a $\left(1 + \cos\frac{\pi}{5} + i\sin\frac{\pi}{5}\right)^5$ kifejezéseknek?

**Megoldás.**
1. **Az első kifejezés:**
A $\sin\frac{\pi}{12} + i\cos\frac{\pi}{12}$ kifejezés még nem szabályos trigonometrikus alak, mert a valós rész szinusz, a képzetes pedig koszinusz.
Pótszögekkel átírva: $\sin\frac{\pi}{12} = \cos\left(\frac{\pi}{2} - \frac{\pi}{12}\right) = \cos\frac{5\pi}{12}$, és $\cos\frac{\pi}{12} = \sin\left(\frac{\pi}{2} - \frac{\pi}{12}\right) = \sin\frac{5\pi}{12}$.
Így a szám szabályos trigonometrikus alakja:
$$\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}.$$
Alkalmazzuk a Moivre-formulát a 12-edik hatványra:
$$\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right)^{12} = \cos\left(12 \cdot \frac{5\pi}{12}\right) + i\sin\left(12 \cdot \frac{5\pi}{12}\right) = \cos(5\pi) + i\sin(5\pi).$$
Mivel $5\pi$ páratlan többszöröse $\pi$-nek, $\cos(5\pi) = -1$ és $\sin(5\pi) = 0$.
A kifejezés értéke tehát:
$$\mathbf{-1}.$$

2. **A második kifejezés:**
Alakítsuk trigonometrikus alakra az $1 + \cos\frac{\pi}{5} + i\sin\frac{\pi}{5}$ alapot.
A félszög-azonosságok alapján:
$$1 + \cos\frac{\pi}{5} = 2\cos^2\frac{\pi}{10}, \qquad \sin\frac{\pi}{5} = 2\sin\frac{\pi}{10}\cos\frac{\pi}{10}.$$
Kiemelve $2\cos\frac{\pi}{10}$-et:
$$1 + \cos\frac{\pi}{5} + i\sin\frac{\pi}{5} = 2\cos\frac{\pi}{10}\left(\cos\frac{\pi}{10} + i\sin\frac{\pi}{10}\right).$$
Mivel $\frac{\pi}{10} \in (0, \pi/2)$, $\cos\frac{\pi}{10} > 0$, tehát ez valóban trigonometrikus alak.
Emeljük az 5-ödik hatványra:
$$\left(1 + \cos\frac{\pi}{5} + i\sin\frac{\pi}{5}\right)^5 = \left(2\cos\frac{\pi}{10}\right)^5 \cdot \left(\cos\frac{\pi}{10} + i\sin\frac{\pi}{10}\right)^5.$$
A Moivre-formulával:
$$\left(\cos\frac{\pi}{10} + i\sin\frac{\pi}{10}\right)^5 = \cos\left(5 \cdot \frac{\pi}{10}\right) + i\sin\left(5 \cdot \frac{\pi}{10}\right) = \cos\frac{\pi}{2} + i\sin\frac{\pi}{2} = i.$$
Tehát az eredmény:
$$32\cos^5\frac{\pi}{10} \cdot i.$$
Számítsuk ki $\cos\frac{\pi}{10}$ pontos értékét: $\cos^2\frac{\pi}{10} = \frac{1 + \cos(\pi/5)}{2}$. Mivel $\cos\frac{\pi}{5} = \frac{1 + \sqrt{5}}{4}$, így $\cos^2\frac{\pi}{10} = \frac{5 + \sqrt{5}}{8}$.
Ezért a végeredmény:
$$\mathbf{32\left(\frac{5+\sqrt{5}}{8}\right)^{5/2} i = (15 + 5\sqrt{5})\sqrt{\frac{5+\sqrt{5}}{8}}\,i}.$$

::: elmelet
**Elméleti háttér — Hatványozás speciális bázisok esetén.**
Ha az alap nem standard trigonometrikus alakú:
1. Ha a koszinusz és szinusz fel van cserélve, pótszögekkel ($\cos(\frac{\pi}{2} - \alpha) = \sin\alpha$) vagy $i$ kiemelésével ($a i + b = i(b - ai)$) hozzuk alakra.
2. Az $1 + \cos\alpha + i\sin\alpha$ típusú kifejezéseknél a félszög-formulák kulcsfontosságúak:
$$1 + \cos\alpha = 2\cos^2\frac{\alpha}{2}, \qquad \sin\alpha = 2\sin\frac{\alpha}{2}\cos\frac{\alpha}{2},$$
így kiemelhető $2\cos\frac{\alpha}{2}$, és a zárójelben pontosan a $\cos\frac{\alpha}{2} + i\sin\frac{\alpha}{2}$ kifejezés marad.
:::

## P5.17. feladat

A Moivre-képlet felhasználásával számítsuk ki az $(1 - i)^{12}$ kifejezés értékét! A számolást trigonometrikus alakban végezzük el, de a végeredményt algebrai alakban adjuk meg.

**Megoldás.**
Írjuk fel az $1 - i$ komplex számot trigonometrikus alakban:
- Abszolút érték: $r = |1 - i| = \sqrt{1^2 + (-1)^2} = \sqrt{2}$.
- Szög: a szám a negyedik síknegyedben van, valós része pozitív ($1$), képzetes része negatív ($-1$). $\cos\varphi = \frac{1}{\sqrt{2}}$, $\sin\varphi = -\frac{1}{\sqrt{2}}$, ebből $\varphi = -\frac{\pi}{4}$ (vagy $\frac{7\pi}{4}$).
Tehát:
$$1 - i = \sqrt{2}\left(\cos\left(-\frac{\pi}{4}\right) + i\sin\left(-\frac{\pi}{4}\right)\right).$$

Alkalmazzuk a Moivre-képletet a 12-edik hatványra:
$$(1 - i)^{12} = (\sqrt{2})^{12} \left(\cos\left(12 \cdot \left(-\frac{\pi}{4}\right)\right) + i\sin\left(12 \cdot \left(-\frac{\pi}{4}\right)\right)\right).$$
Számítsuk ki a tagokat:
$$(\sqrt{2})^{12} = ((\sqrt{2})^2)^6 = 2^6 = 64,$$
$$12 \cdot \left(-\frac{\pi}{4}\right) = -3\pi.$$
Mivel $-3\pi$ páratlan többszöröse $\pi$-nek:
$$\cos(-3\pi) = -1, \qquad \sin(-3\pi) = 0.$$
Így a végeredmény algebrai alakban:
$$(1 - i)^{12} = 64 \cdot (-1 + 0i) = \mathbf{-64}.$$

::: elmelet
**Elméleti háttér — Moivre-formula alkalmazása hatványozásra.**
Egy komplex szám magas kitevőjű hatványának kiszámítása algebrai alakban a binomiális tétellel rendkívül hosszadalmas lenne. Ezzel szemben trigonometrikus alakban a Moivre-képlet közvetlenül szolgáltatja az eredményt:
$$(r(\cos\varphi + i\sin\varphi))^n = r^n(\cos(n\varphi) + i\sin(n\varphi)).$$
A kapott $n\varphi$ szöget $2\pi$ periódussal egyszerűsítjük a nevezetes szögek egyikére, majd a szinusz és koszinusz behelyettesítésével visszatérünk az algebrai alakra.
:::

## P5.18. feladat

Oldjuk meg az $x^4 = 5$ és az $x^3 = -27$ egyenleteket a komplex számok között. Adjuk meg az $x^6 = -1 + i\sqrt{3}$ és az $x^n = i$ egyenletek összes megoldását is.

**Megoldás.**
A komplex gyökvonás képlete szerint, ha $z = r(\cos\varphi + i\sin\varphi)$ nemnulla komplex szám, akkor $n$-edik gyökei:
$$x_k = \sqrt[n]{r}\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right), \qquad k = 0, 1, \dots, n-1.$$

1. **$x^4 = 5$ megoldása:**
A jobb oldal trigonometrikus alakja: $5 = 5(\cos 0 + i\sin 0)$.
A negyedik gyökök abszolút értéke $\sqrt[4]{5}$, a szögek pedig $\frac{0 + 2k\pi}{4} = k \frac{\pi}{2}$ ($k = 0, 1, 2, 3$).
- $k = 0$: $x_0 = \sqrt[4]{5}(\cos 0 + i\sin 0) = \sqrt[4]{5}$,
- $k = 1$: $x_1 = \sqrt[4]{5}(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}) = \sqrt[4]{5}i$,
- $k = 2$: $x_2 = \sqrt[4]{5}(\cos\pi + i\sin\pi) = -\sqrt[4]{5}$,
- $k = 3$: $x_3 = \sqrt[4]{5}(\cos\frac{3\pi}{2} + i\sin\frac{3\pi}{2}) = -\sqrt[4]{5}i$.
Tehát:
$$x \in \mathbf{\left\{\sqrt[4]{5},\, i\sqrt[4]{5},\, -\sqrt[4]{5},\, -i\sqrt[4]{5}\right\}}.$$

2. **$x^3 = -27$ megoldása:**
A jobb oldal: $-27 = 27(\cos\pi + i\sin\pi)$.
A harmadik gyökök abszolút értéke $\sqrt[3]{27} = 3$, a szögek $\frac{\pi + 2k\pi}{3}$ ($k = 0, 1, 2$):
- $k = 0$: $\varphi_0 = \frac{\pi}{3} = 60^\circ \implies x_0 = 3\left(\frac{1}{2} + i\frac{\sqrt{3}}{2}\right) = \frac{3}{2} + \frac{3\sqrt{3}}{2}i$,
- $k = 1$: $\varphi_1 = \pi = 180^\circ \implies x_1 = 3(-1 + 0i) = -3$,
- $k = 2$: $\varphi_2 = \frac{5\pi}{3} = 300^\circ \implies x_2 = 3\left(\frac{1}{2} - i\frac{\sqrt{3}}{2}\right) = \frac{3}{2} - \frac{3\sqrt{3}}{2}i$.
Tehát:
$$x \in \mathbf{\left\{-3,\, \frac{3}{2} + \frac{3\sqrt{3}}{2}i,\, \frac{3}{2} - \frac{3\sqrt{3}}{2}i\right\}}.$$

3. **$x^6 = -1 + i\sqrt{3}$ megoldása:**
A jobb oldal abszolút értéke $r = \sqrt{(-1)^2 + (\sqrt{3})^2} = 2$.
Szöge: $\cos\varphi = -\frac{1}{2}$, $\sin\varphi = \frac{\sqrt{3}}{2} \implies \varphi = \frac{2\pi}{3} = 120^\circ$.
Így $-1 + i\sqrt{3} = 2(\cos 120^\circ + i\sin 120^\circ)$.
A hatodik gyökök abszolút értéke $\sqrt[6]{2}$, a szögek:
$$\theta_k = \frac{120^\circ + k \cdot 360^\circ}{6} = 20^\circ + k \cdot 60^\circ, \qquad k = 0, 1, \dots, 5.$$
A szögek: $20^\circ, 80^\circ, 140^\circ, 200^\circ, 260^\circ, 320^\circ$.
Tehát a gyökök:
$$\mathbf{x_k = \sqrt[6]{2}(\cos(20^\circ + k \cdot 60^\circ) + i\sin(20^\circ + k \cdot 60^\circ)), \qquad k \in \{0, 1, 2, 3, 4, 5\}}.$$

4. **$x^n = i$ megoldása:**
A jobb oldal: $i = 1\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right)$.
A gyökök abszolút értéke $\sqrt[n]{1} = 1$, szögeik:
$$\theta_k = \frac{\frac{\pi}{2} + 2k\pi}{n} = \frac{(4k + 1)\pi}{2n}, \qquad k = 0, 1, \dots, n-1.$$
Tehát az $n$ darab megoldás:
$$\mathbf{x_k = \cos\frac{(4k + 1)\pi}{2n} + i\sin\frac{(4k + 1)\pi}{2n}, \qquad k = 0, 1, \dots, n-1}.$$

::: elmelet
**Elméleti háttér — Komplex $n$-edik gyökvonás geometriája és formulája.**
Minden nemnulla $z = r(\cos\varphi + i\sin\varphi)$ komplex számnak a komplex számok testében pontosan $n$ darab különböző $n$-edik gyöke van ($n \in \mathbb{N}$).
Ezek a gyökök:
$$w_k = \sqrt[n]{r}\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right), \quad k = 0, 1, \dots, n-1.$$
**Geometriai jelentés:** A gyökök a komplex számsíkon egy origó középpontú, $\sqrt[n]{r}$ sugarú körön helyezkednek el, és egy szabályos $n$-szög csúcsait alkotják, ahol a szomszédos csúcsokhoz tartozó helyvektorok közötti szög $\frac{2\pi}{n}$ ($360^\circ/n$).
:::

## P5.19. feladat

Határozzuk meg a $z = -8 + 8\sqrt{3}i$ komplex szám összes harmadik gyökét! A gyököket trigonometrikus alakban adjuk meg.

**Megoldás.**
Először írjuk fel a $z = -8 + 8\sqrt{3}i$ komplex számot trigonometrikus alakban.
- Abszolút érték:
$$r = |z| = \sqrt{(-8)^2 + (8\sqrt{3})^2} = \sqrt{64 + 64 \cdot 3} = \sqrt{64 \cdot 4} = \sqrt{256} = 16.$$
- Szög:
A valós rész negatív ($-8$), a képzetes rész pozitív ($8\sqrt{3}$), tehát a pont a második síknegyedbe esik.
$$\cos\varphi = \frac{-8}{16} = -\frac{1}{2}, \qquad \sin\varphi = \frac{8\sqrt{3}}{16} = \frac{\sqrt{3}}{2}.$$
Ebből a szög:
$$\varphi = 120^\circ = \frac{2\pi}{3}.$$
A szám trigonometrikus alakja:
$$z = 16(\cos 120^\circ + i\sin 120^\circ).$$

A harmadik gyökök kiszámítása a komplex gyökvonás képletével történik:
$$w_k = \sqrt[3]{16}\left(\cos\frac{120^\circ + k \cdot 360^\circ}{3} + i\sin\frac{120^\circ + k \cdot 360^\circ}{3}\right), \qquad k = 0, 1, 2.$$
Mivel $\sqrt[3]{16} = \sqrt[3]{8 \cdot 2} = 2\sqrt[3]{2}$, a szögek pedig:
- $k = 0$: $\theta_0 = \frac{120^\circ}{3} = 40^\circ$,
- $k = 1$: $\theta_1 = \frac{120^\circ + 360^\circ}{3} = 40^\circ + 120^\circ = 160^\circ$,
- $k = 2$: $\theta_2 = \frac{120^\circ + 720^\circ}{3} = 40^\circ + 240^\circ = 280^\circ$.

Tehát a harmadik gyökök:
$$\mathbf{w_0 = 2\sqrt[3]{2}(\cos 40^\circ + i\sin 40^\circ)},$$
$$\mathbf{w_1 = 2\sqrt[3]{2}(\cos 160^\circ + i\sin 160^\circ)},$$
$$\mathbf{w_2 = 2\sqrt[3]{2}(\cos 280^\circ + i\sin 280^\circ)}.$$

::: elmelet
**Elméleti háttér — Komplex harmadik gyökök szerkezete.**
Egy $z = r(\cos\varphi + i\sin\varphi)$ komplex szám harmadik gyökei a komplex síkon egy origó középpontú, $\sqrt[3]{r}$ sugarú körbe írt szabályos háromszög csúcsait adják meg.
A gyökök argumentumai $\frac{\varphi}{3}$, $\frac{\varphi}{3} + 120^\circ$, és $\frac{\varphi}{3} + 240^\circ$.
A számolás kulcslépése a helyes síknegyed megállapítása: mindkét szögfüggvény ($\cos\varphi$ és $\sin\varphi$) előjelét figyelembe kell venni, mert a $\operatorname{tg}\varphi$ önmagában $\pi$-vel félrevezethetne.
:::

## P5.20. feladat

Legyen $k$ egy pozitív egész szám, és $\varepsilon = \cos\left(\frac{2\pi}{k}\right) + i\sin\left(\frac{2\pi}{k}\right)$. Mutassuk meg, hogy egy tetszőleges $n$ egész szám esetén az $S = \sum_{j=0}^{k-1} \varepsilon^{jn}$ összeg értéke $k$, ha $k \mid n$, és $0$, ha $k \nmid n$.

**Megoldás.**
A feltétel szerint $\varepsilon = \cos\frac{2\pi}{k} + i\sin\frac{2\pi}{k}$ az első primitív $k$-adik egységgyök.
A Moivre-formula alapján:
$$\varepsilon^n = \cos\frac{2\pi n}{k} + i\sin\frac{2\pi n}{k}.$$
Tudjuk, hogy $\varepsilon^n = 1$ akkor és csak akkor, ha a szög $2\pi$ egész számú többszöröse:
$$\frac{2\pi n}{k} = 2m\pi \iff \frac{n}{k} = m \in \mathbb{Z} \iff k \mid n.$$

Vizsgáljuk meg az $S$ összeget a két esetben:

1. **Eset: $k \mid n$**
Ekkor $\varepsilon^n = 1$, így tetszőleges $j$ indexre:
$$\varepsilon^{jn} = (\varepsilon^n)^j = 1^j = 1.$$
Az összeg $k$ darab $1$-es tagból áll:
$$S = \sum_{j=0}^{k-1} 1 = \mathbf{k}.$$

2. **Eset: $k \nmid n$**
Ekkor $q = \varepsilon^n \neq 1$.
Vegyük észre, hogy $S$ egy véges mértani sorozat összege, melynek első tagja $a_0 = q^0 = 1$, hányadosa pedig $q = \varepsilon^n$:
$$S = \sum_{j=0}^{k-1} q^j = 1 + q + q^2 + \dots + q^{k-1}.$$
Mivel $q \neq 1$, alkalmazható a véges mértani sorozat összegképlete:
$$S = \frac{q^k - 1}{q - 1}.$$
Számítsuk ki a számlálót:
$$q^k = (\varepsilon^n)^k = (\varepsilon^k)^n.$$
Mivel $\varepsilon$ $k$-adik egységgyök, $\varepsilon^k = 1$, így:
$$q^k = 1^n = 1.$$
Ebből a számláló értéke:
$$q^k - 1 = 1 - 1 = 0.$$
Mivel a nevező $q - 1 \neq 0$, kapjuk, hogy:
$$S = \frac{0}{q - 1} = \mathbf{0}.$$

Ezzel a tételt teljes egészében bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Egységgyökök szűrési tulajdonsága (gyökszűrő).**
Ez a tétel az algebra és a diszkrét Fourier-analízis egyik sarokköve, melyet **gyökszűrő formulának** (root of unity filter) is neveznek:
$$\frac{1}{k} \sum_{j=0}^{k-1} \varepsilon^{jn} = \begin{cases} 1, & \text{ha } k \mid n, \\ 0, & \text{ha } k \nmid n. \end{cases}$$
Segítségével egy polinom vagy generátorfüggvény azon tagjai szűrhetők ki, amelyek kitevője osztható $k$-val. Például a binomiális együtthatók olyan összegeire alkalmazható, mint $\binom{n}{0} + \binom{n}{3} + \binom{n}{6} + \dots$.
:::

## P5.21. feladat

A komplex számok trigonometrikus alakja és a binomiális tétel felhasználásával hozzuk zárt alakra (vagyis szumma nélküli kifejezésre) az alábbi két összeget: $$S_n = \sum_{k=0}^{n} \binom{n}{k} \cos(kx), \quad \text{illetve} \quad T_n = \sum_{k=0}^{n} \binom{n}{k} \sin(kx).$$

**Megoldás.**
Tekintsük az $S_n + i T_n$ komplex lineáris kombinációt:
$$S_n + i T_n = \sum_{k=0}^n \binom{n}{k} \cos(kx) + i \sum_{k=0}^n \binom{n}{k} \sin(kx) = \sum_{k=0}^n \binom{n}{k} (\cos(kx) + i\sin(kx)).$$
A Moivre-formula szerint $\cos(kx) + i\sin(kx) = (\cos x + i\sin x)^k$.
Jelölje $w = \cos x + i\sin x$. Ekkor:
$$S_n + i T_n = \sum_{k=0}^n \binom{n}{k} w^k = \sum_{k=0}^n \binom{n}{k} 1^{n-k} w^k.$$
A binomiális tétel alapján ez pontosan a következő kifejtés:
$$S_n + i T_n = (1 + w)^n = (1 + \cos x + i\sin x)^n.$$

Alakítsuk át az $1 + w$ alapot trigonometrikus alakra a félszög-formulák segítségével:
$$1 + \cos x = 2\cos^2\frac{x}{2}, \qquad \sin x = 2\sin\frac{x}{2}\cos\frac{x}{2}.$$
Ebből kiemelve $2\cos\frac{x}{2}$-t:
$$1 + w = 2\cos\frac{x}{2}\left(\cos\frac{x}{2} + i\sin\frac{x}{2}\right).$$
Emeljük ezt az $n$-edik hatványra a Moivre-képlet segítségével:
$$(1 + w)^n = \left(2\cos\frac{x}{2}\right)^n \left(\cos\frac{x}{2} + i\sin\frac{x}{2}\right)^n = 2^n \cos^n\frac{x}{2} \left(\cos\frac{nx}{2} + i\sin\frac{nx}{2}\right).$$
Kifejtve a valós és képzetes részt:
$$(1 + w)^n = 2^n \cos^n\frac{x}{2} \cos\frac{nx}{2} + i \cdot 2^n \cos^n\frac{x}{2} \sin\frac{nx}{2}.$$

Mivel $S_n$ és $T_n$ valós összegek, két komplex szám egyenlőségéből a valós és képzetes részek egyeztetésével közvetlenül adódik a két zárt alak:
$$\mathbf{S_n = 2^n \cos^n\frac{x}{2} \cos\frac{nx}{2}},$$
$$\mathbf{T_n = 2^n \cos^n\frac{x}{2} \sin\frac{nx}{2}}.$$
(Ez az eredmény minden valós $x$-re és természetes $n$-re érvényes.)

::: elmelet
**Elméleti háttér — Euler-Moivre módszer valós trigonometrikus összegekre.**
Egy valós trigonometrikus összeg kiszámításának standard és rendkívül elegáns stratégiája a szimultán kezelés:
1. Az eredeti koszinuszos összeget tekintjük egy komplex összeg valós részeként, a szinuszos változatot pedig annak képzetes részeként.
2. A kapott $S + iT$ összeg egy algebrai vagy mértani összegezhető sorrá (pl. binomiális összeg vagy mértani sor) alakul az Euler-képlet / Moivre-formula révén.
3. A kapott zárt alakú komplex számot trigonometrikus alakra hozzuk, és szétválasztjuk a valós és képzetes részeket.
Egyetlen számolással két különböző valós azonosságot kapunk.
:::

## P5.22. feladat

Rajzoljuk le a komplex síkon a következő halmazokat: $\{z : \operatorname{Im}(z - 2 + i) \ge 1\}$, $\{z : \operatorname{Re}(z - 2i) \le \operatorname{Im}(z + 1)\}$, $\{z : |z + 2 - 3i| < 2\}$, $\{z : |z - 1 - i| = |z + 3 + i|\}$, $\{z : z - \overline{z} = 4i\}$, $\{z : z\overline{z} - 2\operatorname{Re}(z) = 0\}$, $\{z : 1/z = 2\overline{z}\}$, $\{z \in \mathbb{C} : \operatorname{Im}((z - i)/(z + i)) = 0\}$.

**Megoldás.**
Legyen $z = x + iy$, ahol $x, y \in \mathbb{R}$.

1. **$\{z : \operatorname{Im}(z - 2 + i) \ge 1\}$:**
$z - 2 + i = (x - 2) + i(y + 1)$. Képzetes része $y + 1$.
A feltétel: $y + 1 \ge 1 \iff y \ge 0$.
Geometriai jelentés: **a valós tengely és a felette elhelyezkedő zárt felső félsík.**

2. **$\{z : \operatorname{Re}(z - 2i) \le \operatorname{Im}(z + 1)\}$:**
$z - 2i = x + i(y - 2) \implies \operatorname{Re}(z - 2i) = x$.
$z + 1 = (x + 1) + iy \implies \operatorname{Im}(z + 1) = y$.
A feltétel: $x \le y$, azaz $y \ge x$.
Geometriai jelentés: **az $y = x$ egyenes és a felette/balra lévő zárt félsík.**

3. **$\{z : |z + 2 - 3i| < 2\}$:**
Átírva: $|z - (-2 + 3i)| < 2$.
A komplex abszolút érték két pont közötti euklideszi távolság.
Geometriai jelentés: **a $-2 + 3i$ pont körüli, $r = 2$ sugarú nyílt körlap (a határoló körvonal nélkül).**

4. **$\{z : |z - 1 - i| = |z + 3 + i|\}$:**
Átírva: $|z - (1 + i)| = |z - (-3 - i)|$.
A feltétel azon pontok halmaza, amelyek egyenlő távol vannak az $A(1, 1)$ és $B(-3, -1)$ pontoktól.
Geometriai jelentés: **az $1+i$ és $-3-i$ pontokat összekötő szakasz felezőmerőleges egyenese.**
Egyenlete koordinátákkal: $(x-1)^2 + (y-1)^2 = (x+3)^2 + (y+1)^2 \iff -2x - 2y + 2 = 6x + 2y + 10 \iff 8x + 4y + 8 = 0 \iff \mathbf{y = -2x - 2}$.

5. **$\{z : z - \overline{z} = 4i\}$:**
Mivel $z - \overline{z} = 2iy$, a feltétel $2iy = 4i \iff y = 2$.
Geometriai jelentés: **az $y = 2$ vízszintes egyenes.**

6. **$\{z : z\overline{z} - 2\operatorname{Re}(z) = 0\}$:**
Tudjuk, hogy $z\overline{z} = x^2 + y^2$ és $\operatorname{Re}(z) = x$.
Az egyenlet: $x^2 + y^2 - 2x = 0 \iff (x - 1)^2 + y^2 = 1$.
Geometriai jelentés: **az $(1, 0)$ középpontú, $r = 1$ sugarú körvonal.**

7. **$\{z : 1/z = 2\overline{z}\}$:**
A feltétel csak $z \neq 0$ esetén értelmezett. Szorozzunk be $z$-vel:
$1 = 2z\overline{z} = 2|z|^2 \iff |z|^2 = \frac{1}{2} \iff |z| = \frac{1}{\sqrt{2}}$.
Geometriai jelentés: **az origó középpontú, $\frac{1}{\sqrt{2}} = \frac{\sqrt{2}}{2}$ sugarú körvonal.**

8. **$\{z \in \mathbb{C} : \operatorname{Im}\left(\frac{z - i}{z + i}\right) = 0\}$:**
A kifejezés értelmezett, ha $z \neq -i$.
Bővítsük a törtet a nevező konjugáltjával:
$$\frac{z - i}{z + i} = \frac{(x + i(y-1))}{(x + i(y+1))} = \frac{(x + i(y-1))(x - i(y+1))}{x^2 + (y+1)^2}.$$
A számláló képzetes része:
$$\operatorname{Im}\big((x + i(y-1))(x - i(y+1))\big) = x(y-1) - x(y+1) = xy - x - xy - x = -2x.$$
Tehát a képzetes rész akkor és csak akkor nulla, ha $-2x = 0 \iff x = 0$.
Geometriai jelentés: **a teljes képzetes tengely ($y$-tengely), a $z = -i$ pont kivételével.**

::: elmelet
**Elméleti háttér — Komplex egyenletek geometriai reprezentációja.**
A komplex számok geometriai vizsgálatánál az alábbi alaptípusokat érdemes felismerni:
1. $|z - z_0| = r$: $z_0$ középpontú, $r$ sugarú körvonal. ($< r$: nyílt körlap, $\le r$: zárt körlap).
2. $|z - z_1| = |z - z_2|$: a $z_1$ és $z_2$ pontokat összekötő szakasz felezőmerőlegese.
3. $\operatorname{Re}(z) = c$, $\operatorname{Im}(z) = c$: függőleges, illetve vízszintes egyenesek.
4. Törtkifejezéseknél: $\operatorname{Im}(w) = 0 \iff w \in \mathbb{R}$. A nevező konjugáltjával való bővítés után a számláló képzetes részét nullává téve kapjuk meg az összefüggést.
:::

## P5.23. feladat

A sík mely geometriai transzformációinak felelnek meg a komplex számok halmazának alábbi leképezései: $z \mapsto -2z + 1 - i$, $z \mapsto (1 - i\sqrt{3})z$, $z \mapsto 1/\overline{z}$.

**Megoldás.**
1. **$f(z) = -2z + 1 - i$:**
Ez egy $z \mapsto az + b$ alakú leképezés, ahol $a = -2$ és $b = 1 - i$.
Mivel $a \in \mathbb{R} \setminus \{1\}$, ez egy középpontos hasonlóság.
Keresgéljük meg a transzformáció fixpontját ($f(z_0) = z_0$):
$$-2z_0 + 1 - i = z_0 \iff 3z_0 = 1 - i \iff z_0 = \frac{1 - i}{3} = \frac{1}{3} - \frac{1}{3}i.$$
Írjuk át a leképezést a fixpont körül:
$$f(z) - z_0 = -2(z - z_0).$$
Ez pontosan azt jelenti, hogy a transzformáció **a $z_0 = \frac{1-i}{3}$ középpontú, $\lambda = -2$ arányú középpontos hasonlóság** (amely egyenértékű a $z_0$ körüli $180^\circ$-os forgatással és kétszeres nyújtással).

2. **$g(z) = (1 - i\sqrt{3})z$:**
Írjuk át a szorzótényezőt trigonometrikus alakra:
$$|1 - i\sqrt{3}| = \sqrt{1^2 + (-\sqrt{3})^2} = 2.$$
A szög $\cos\varphi = \frac{1}{2}$, $\sin\varphi = -\frac{\sqrt{3}}{2}$, így $\varphi = -60^\circ = -\frac{\pi}{3}$.
Tehát:
$$1 - i\sqrt{3} = 2(\cos(-60^\circ) + i\sin(-60^\circ)).$$
A komplex szorzás szabálya szerint a leképezés: **az origó körüli $-60^\circ$-os (óramutató járásával megegyező irányú) forgatás és egy origó középpontú, 2-szeres nyújtás szorzata (forgatva nyújtás).**

3. **$h(z) = \frac{1}{\overline{z}}$ ($z \neq 0$):**
Írjuk fel trigonometrikus alakban $z = r(\cos\varphi + i\sin\varphi)$:
$$\overline{z} = r(\cos(-\varphi) + i\sin(-\varphi)),$$
$$\frac{1}{\overline{z}} = \frac{1}{r}\left(\cos\varphi + i\sin\varphi\right).$$
Vegyük észre, hogy $h(z)$ iránya megegyezik $z$ irányával (szöge változatlanul $\varphi$), míg távolsága az origótól $r$-ből $\frac{1}{r}$-re változik.
Ez pontosan a klasszikus geometriai inverzió definíciója.
Tehát a leképezés: **az origó középpontú egységkörre vonatkozó körinverzió (geometriai tükrözés a körre).**

::: elmelet
**Elméleti háttér — Komplex függvények mint geometriai transzformációk.**
A sík transzformációi rendkívül tömören írhatók le komplex leképezésekkel:
- $z \mapsto z + b$: eltolás a $b$ vektorral.
- $z \mapsto e^{i\theta} z$: origó körüli $\theta$ szögű elforgatás.
- $z \mapsto \lambda z$ ($\lambda > 0$): origó középpontú nyújtás $\lambda$ aránnyal.
- $z \mapsto az + b$ ($a \neq 0$): hasonlósági transzformáció. Ha $a \neq 1$, pontosan egy fixpontja van ($z_0 = \frac{b}{1-a}$), és a transzformáció egy $z_0$ körüli forgatva nyújtás.
- $z \mapsto \overline{z}$: tükrözés a valós tengelyre.
- $z \mapsto \frac{R^2}{\overline{z}}$: inverzió az $R$ sugarú origó központú körre.
:::

## P5.24. feladat

Igazoljuk, hogy egy paralelogramma oldalai hosszának négyzetösszege megegyezik az átlói hosszának négyzetösszegével, és fogalmazzuk meg a megfelelő komplex azonosságot.

**Megoldás.**
1. **A komplex azonosság megfogalmazása:**
Legyen a paralelogramma négy csúcsa a komplex síkon $0$, $u$, $v$ és $u + v$, ahol $u, v \in \mathbb{C}$.
A paralelogramma oldalai a $0$-ból $u$-ba és a $0$-ból $v$-be mutató vektorok (és ezekkel párhuzamos szemközti oldalak).
Az oldalak hossza: $|u|$, $|v|$, $|u|$, $|v|$.
Az oldalak hosszának négyzetösszege tehát:
$$2|u|^2 + 2|v|^2.$$
A paralelogramma két átlója a $0$-t az $u + v$ csúccsal összekötő vektor ($u + v$), illetve az $u$ és $v$ csúcsokat összekötő vektor ($u - v$).
Az átlók hosszának négyzetösszege:
$$|u + v|^2 + |u - v|^2.$$
A feladatban szereplő tételnek megfelelő **komplex azonosság (paralelogramma-azonosság)**:
$$\mathbf{|u + v|^2 + |u - v|^2 = 2|u|^2 + 2|v|^2}.$$

2. **Bizonyítás:**
Használjuk fel a komplex abszolút érték négyzetének alapvető tulajdonságát: minden $w \in \mathbb{C}$ esetén $|w|^2 = w \overline{w}$.
Írjuk fel az átlók hossznégyzeteit:
$$|u + v|^2 = (u + v)\overline{(u + v)} = (u + v)(\overline{u} + \overline{v}) = u\overline{u} + u\overline{v} + v\overline{u} + v\overline{v},$$
$$|u - v|^2 = (u - v)\overline{(u - v)} = (u - v)(\overline{u} - \overline{v}) = u\overline{u} - u\overline{v} - v\overline{u} + v\overline{v}.$$
Mivel $u\overline{u} = |u|^2$ és $v\overline{v} = |v|^2$, a kifejezések:
$$|u + v|^2 = |u|^2 + |v|^2 + (u\overline{v} + \overline{u}v),$$
$$|u - v|^2 = |u|^2 + |v|^2 - (u\overline{v} + \overline{u}v).$$
Adjuk össze a két egyenletet:
$$|u + v|^2 + |u - v|^2 = (|u|^2 + |v|^2 + u\overline{v} + \overline{u}v) + (|u|^2 + |v|^2 - u\overline{v} - \overline{u}v).$$
A vegyes $u\overline{v} + \overline{u}v$ tagok kölcsönösen kiejtik egymást:
$$|u + v|^2 + |u - v|^2 = 2|u|^2 + 2|v|^2.$$
Ezzel az azonosságot bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — A paralelogramma-azonosság és a belsőszorzat-terek.**
A paralelogramma-azonosság:
$$|u + v|^2 + |u - v|^2 = 2|u|^2 + 2|v|^2$$
alapvető jelentőségű a felsőbb matematikában (funkcionálanalízisben).
A Jordan–Neumann-tétel kimondja, hogy egy normált térben a norma akkor és csak akkor származtatható egy belső szorzatból (azaz a tér akkor és csak akkor Hilbert-tér), ha a norma teljesíti a paralelogramma-egyenlőséget.
A komplex számok síkja a skaláris szorzatot a $\langle u, v \rangle = \operatorname{Re}(u\overline{v})$ módon realizálja, és a vegyes tag pontosan $2\operatorname{Re}(u\overline{v})$.
:::

---

# 6. feladatsor — Kongruenciák, Diofantoszi egyenletek, Kínai maradéktétel, Euler–Fermat és Hensel-lemma

## P6.1. feladat

Igazoljuk a kongruencia alábbi elemi tulajdonságait:
(1) Ha $a \equiv b \pmod m$, akkor $b \equiv a \pmod m$.
(2) Ha $a \equiv b \pmod m$ és $b \equiv c \pmod m$, akkor $a \equiv c \pmod m$.
(3) Ha $a \equiv a' \pmod m$ és $b \equiv b' \pmod m$, akkor $a + b \equiv a' + b' \pmod m$, valamint $ab \equiv a'b' \pmod m$.
(4) Ha $x, y \in \mathbb{Z}$, $a \equiv a' \pmod m$ és $b \equiv b' \pmod m$, akkor $xa + yb \equiv xa' + yb' \pmod m$.

**Megoldás.**
A kongruencia definíciója szerint két egész szám, $u$ és $v$ kongruens modulo $m$ (ahol $m \in \mathbb{N}$), ha különbségük osztható $m$-mel:
$$u \equiv v \pmod m \iff m \mid (u - v) \iff \exists k \in \mathbb{Z} : u - v = km.$$

(1) **Szimmetria:**
Tegyük fel, hogy $a \equiv b \pmod m$. Ekkor a definíció szerint $m \mid (a - b)$.
Mivel $b - a = -(a - b)$, és egy egész szám ellentettje is osztható minden olyan számmal, amellyel maga a szám osztható, ezért:
$$m \mid (b - a) \implies b \equiv a \pmod m.$$

(2) **Tranzitivitás:**
Tegyük fel, hogy $a \equiv b \pmod m$ és $b \equiv c \pmod m$.
Ekkor $m \mid (a - b)$ és $m \mid (b - c)$.
Két $m$-mel osztható egész szám összege szintén osztható $m$-mel:
$$(a - b) + (b - c) = a - c \implies m \mid (a - c) \implies a \equiv c \pmod m.$$

(3) **Kompatibilitás az összeadással és a szorzással:**
A feltevés szerint $m \mid (a - a')$ és $m \mid (b - b')$.
- *Összeg:*
$$(a + b) - (a' + b') = (a - a') + (b - b').$$
Mivel a jobb oldal mindkét tagja osztható $m$-mel, az összegük is osztható $m$-mel:
$$m \mid ((a + b) - (a' + b')) \implies a + b \equiv a' + b' \pmod m.$$
- *Szorzat:*
Alkalmazzuk a standard azonosságot:
$$ab - a'b' = ab - a'b + a'b - a'b' = (a - a')b + a'(b - b').$$
Mivel $m \mid (a - a')$, ezért $m \mid (a - a')b$. Hasonlóan $m \mid (b - b')$ miatt $m \mid a'(b - b')$.
Két $m-mel$ osztható szám összegeként:
$$m \mid (ab - a'b') \implies ab \equiv a'b' \pmod m.$$

(4) **Lineáris kombinációk megőrzése:**
A (3) pont alapján $a \equiv a' \implies xa \equiv xa' \pmod m$ (hiszen $x \equiv x \pmod m$), és hasonlóan $yb \equiv yb' \pmod m$.
Az összeadási szabályt alkalmazva:
$$xa + yb \equiv xa' + yb' \pmod m.$$
Közvetlenül: $(xa + yb) - (xa' + yb') = x(a - a') + y(b - b')$, amely mindkét részében tartalmazza az $m$ többszörösét, így osztható $m$-mel. $\blacksquare$

::: elmelet
**Elméleti háttér — A kongruencia mint kompatibilis ekvivalenciareláció.**
A modulo $m$ kongruencia:
1. Reflexív: $a \equiv a \pmod m$,
2. Szimmetrikus: $a \equiv b \implies b \equiv a \pmod m$,
3. Tranzitív: $a \equiv b \land b \equiv c \implies a \equiv c \pmod m$.
Ezáltal a kongruencia ekvivalenciareláció a $\mathbb{Z}$ halmazon, amely a számokat $m$ darab diszjunkt kongruenciaosztályra (maradékosztályra) bontja.
Mivel kompatibilis az összeadással és a szorzással, a maradékosztályok halmazán értelmezett műveletek jól definiáltak, létrehozva a $\mathbb{Z}_m$ (vagy $\mathbb{Z}/m\mathbb{Z}$) maradékosztály-gyűrűt.
:::

## P6.2. feladat

Adjunk meg egy-egy teljes maradékrendszert mod 7, amely (1) csupa páratlan számból, (2) csupa negatív számból áll, illetve (3) csupa prímszámból áll.

**Megoldás.**
Egy $m$ elemű egész számhalmaz akkor és csak akkor alkot teljes maradékrendszert modulo $m$, ha elemei páronként inkongruensek modulo $m$, vagyis a modulo $m$ vett maradékaik között a $\{0, 1, \dots, m-1\}$ számok mindegyike pontosan egyszer szerepel. Jelen esetben $m = 7$.

1. **Csupa páratlan számból álló teljes maradékrendszer:**
Vegyük a standard $\{0, 1, 2, 3, 4, 5, 6\}$ maradékokat. A páros számokat helyettesítsük egy-egy páratlan, velük modulo 7 kongruens számmal (például adjunk hozzájuk 7-et):
- $0 \equiv 7 \pmod 7$,
- $1 \equiv 1 \pmod 7$,
- $2 \equiv 9 \pmod 7$,
- $3 \equiv 3 \pmod 7$,
- $4 \equiv 11 \pmod 7$,
- $5 \equiv 5 \pmod 7$,
- $6 \equiv 13 \pmod 7$.
A kapott halmaz:
$$\mathbf{\{1, 3, 5, 7, 9, 11, 13\}}.$$
(Ez egy 7 tagú számtani sorozat $d = 2$ különbséggel; mivel $(2, 7) = 1$, szükségszerűen teljes maradékrendszert ad.)

2. **Csupa negatív számból álló teljes maradékrendszer:**
Vonjunk le 7-et a $\{0, 1, 2, 3, 4, 5, 6\}$ elemekből, vagy vegyük közvetlenül a $-1, -2, \dots, -7$ számokat:
- $-7 \equiv 0 \pmod 7$,
- $-6 \equiv 1 \pmod 7$,
- $-5 \equiv 2 \pmod 7$,
- $-4 \equiv 3 \pmod 7$,
- $-3 \equiv 4 \pmod 7$,
- $-2 \equiv 5 \pmod 7$,
- $-1 \equiv 6 \pmod 7$.
A kapott halmaz:
$$\mathbf{\{-1, -2, -3, -4, -5, -6, -7\}}.$$

3. **Csupa prímszámból álló teljes maradékrendszer:**
Minden maradékosztályból keresünk egy prímszámot:
- Maradék 0: $7$ (prím),
- Maradék 1: $29$ ($29 = 4 \cdot 7 + 1$, prím),
- Maradék 2: $2$ (prím),
- Maradék 3: $3$ (prím),
- Maradék 4: $11$ ($11 = 1 \cdot 7 + 4$, prím),
- Maradék 5: $5$ (prím),
- Maradék 6: $13$ ($13 = 1 \cdot 7 + 6$, prím).
A kapott prímhalmaz:
$$\mathbf{\{2, 3, 5, 7, 11, 13, 29\}}.$$

::: elmelet
**Elméleti háttér — Teljes maradékrendszerek megválasztása.**
Egy $A \subset \mathbb{Z}$ részhalmaz teljes maradékrendszer modulo $m$, ha $|A| = m$ és $\forall x \neq y \in A: x \not\equiv y \pmod m$.
Bármely számtani sorozat, $a, a+d, a+2d, \dots, a+(m-1)d$ teljes maradékrendszert alkot modulo $m$ akkor és csak akkor, ha $\operatorname{lnko}(d, m) = 1$.
A Dirichlet-tétel garantálja, hogy ha $\operatorname{lnko}(a, m) = 1$, akkor az $a + km$ számtani sorozatban végtelen sok prím található; a $0$ maradékosztályban pedig maga a modulus választható prímként, amennyiben $m$ prímszám.
:::

## P6.3. feladat

Redukált maradékrendszert alkot-e a $\{7, 19, 31, 43, 55, 67, 79, 91\}$ halmaz modulo 30?

**Megoldás.**
Egy $A \subset \mathbb{Z}$ halmaz akkor és csak akkor redukált maradékrendszer modulo $m$, ha teljesül a következő három feltétel:
1. Elemeinek száma pontosan $\varphi(m)$, ahol $\varphi$ az Euler-féle függvény.
2. Minden $a \in A$ elem relatív prím $m$-hez: $\operatorname{lnko}(a, m) = 1$.
3. Az elemek páronként inkongruensek modulo $m$: $a \not\equiv b \pmod m$ minden $a \neq b \in A$-ra.

Vizsgáljuk meg a megadott $m = 30$ modulust és a halmazt:
- Modulus prímfelbontása: $30 = 2 \cdot 3 \cdot 5$.
- Az Euler-függvény értéke:
$$\varphi(30) = 30 \cdot \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right) = 30 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} = 8.$$
A megadott halmaz elemszáma valóban 8, így az 1. feltétel teljesül.

- Vizsgáljuk a 2. feltételt, a relatív prím tulajdonságot:
Tekintsük a halmaz $55$-ös elemét:
$$55 = 5 \cdot 11.$$
Mivel $5 \mid 55$ és $5 \mid 30$, ezért:
$$\operatorname{lnko}(55, 30) = 5 \neq 1.$$
Továbbá a $91$-es elemre: $91 = 7 \cdot 13$, $\operatorname{lnko}(91, 30) = 1$, de az $55$ már önmagában megsérti a feltételt!

- Vizsgáljuk a 3. feltételt is (maradékok modulo 30):
$7 \equiv 7$,
$19 \equiv 19$,
$31 \equiv 1$,
$43 \equiv 13$,
$55 \equiv 25$,
$67 \equiv 7$,
$79 \equiv 19$,
$91 \equiv 1$.
Látható, hogy a maradékok között ismétlődések vannak ($7 \equiv 67$, $19 \equiv 79$, $31 \equiv 91$), ami amiatt van, mert a sorozat differenciája $d = 12$, és $\operatorname{lnko}(12, 30) = 6 \neq 1$.

Mivel a halmaz elemei nem relatív prímek 30-hoz, és nem is páronként inkongruensek, a halmaz **nem alkot redukált maradékrendszert modulo 30**.

::: elmelet
**Elméleti háttér — Redukált maradékrendszer definíciója és feltételei.**
A redukált maradékrendszer a modulo $m$ invertálható maradékosztályok ($\mathbb{Z}_m^\times$) reprezentánsainak halmaza.
Elemszáma mindig $|\mathbb{Z}_m^\times| = \varphi(m)$.
Egy halmaz cáfolatához elegendő egyetlen olyan elemet találni, amely nem relatív prím $m$-hez, vagy kimutatni két elem kongruenciáját.
Ha egy számtani sorozat differenciája $d$, akkor csak akkor adhat páronként inkongruens elemeket, ha a lépésköz nem osztja a periódust.
:::

## P6.4. feladat

Határozzuk meg a $7^{2026}$ szám utolsó két számjegyét a tízes számrendszerben!

**Megoldás.**
Egy pozitív egész szám utolsó két számjegye a tízes számrendszerben nem más, mint a szám $100$-zal való osztási maradéka, vagyis a $7^{2026} \pmod{100}$ értéke.

Vizsgáljuk meg a 7 hatványainak maradékait modulo 100:
$$7^1 = 7 \equiv 7 \pmod{100},$$
$$7^2 = 49 \equiv 49 \pmod{100},$$
$$7^3 = 49 \cdot 7 = 343 \equiv 43 \pmod{100},$$
$$7^4 = 49^2 = (50 - 1)^2 = 2500 - 100 + 1 = 2401 \equiv 1 \pmod{100}.$$

Mivel $7^4 \equiv 1 \pmod{100}$, a 7 hatványai modulo 100 periodikusak, a periódushossz (a 7 rendje mod 100) $4$.
Osszuk el a kitevőt, $2026$-ot $4$-gyel maradékosan:
$$2026 = 4 \cdot 506 + 2.$$
A hatványozás azonosságai és a moduláris aritmetika szabályai szerint:
$$7^{2026} = 7^{4 \cdot 506 + 2} = (7^4)^{506} \cdot 7^2 \equiv 1^{506} \cdot 49 = 1 \cdot 49 = 49 \pmod{100}.$$

Tehát a $7^{2026}$ szám utolsó két számjegye:
$$\mathbf{49}.$$

::: elmelet
**Elméleti háttér — Utolsó számjegyek és az Euler–Fermat-tétel.**
Egy szám utolsó $k$ számjegye a modulo $10^k$ maradéknak felel meg.
Ha $\operatorname{lnko}(a, 10) = 1$, az Euler–Fermat-tétel garantálja, hogy $a^{\varphi(10^k)} \equiv 1 \pmod{10^k}$.
Modulo 100 esetén $\varphi(100) = 40$, így a kitevő mindig redukálható modulo 40.
Gyakran a szám multiplikatív rendje sokkal kisebb, mint $\varphi(m)$: jelen esetben $o_{100}(7) = 4$, mivel $7^4 = 2401 \equiv 1 \pmod{100}$. A rend megkeresése drasztikusan leegyszerűsíti a kitevő redukcióját.
:::

## P6.5. feladat

Igazoljuk, hogy ha $m$ prímszám, akkor a kongruenciákból négyzetgyököt vonhatunk: ha $a^2 \equiv b^2 \pmod m$, akkor $a \equiv b \pmod m$ vagy $a \equiv -b \pmod m$. Igaz-e ez a tulajdonság minden összetett $m$ modulusra is?

**Megoldás.**
1. **Az állítás igazolása, ha $m = p$ prímszám:**
Tegyük fel, hogy $a^2 \equiv b^2 \pmod p$.
A kongruencia definíciója szerint:
$$p \mid (a^2 - b^2) \iff p \mid (a - b)(a + b).$$
A számelmélet alaptételének közvetlen következménye (az Euklideszi lemma), hogy ha egy prímszám oszt egy szorzatot, akkor osztania kell a szorzat legalább egyik tényezőjét.
Mivel $p$ prím, ebből következik:
$$p \mid (a - b) \quad \text{vagy} \quad p \mid (a + b).$$
Ez a kongruenciák nyelvén pontosan azt jelenti, hogy:
$$a \equiv b \pmod p \quad \text{vagy} \quad a \equiv -b \pmod p.$$
Tehát prím modulus esetén a négyzetgyökvonás mindig pontosan ezt a két esetet (előjelet) eredményezi. $\blacksquare$

2. **Összetett modulus vizsgálata:**
Az állítás **nem igaz minden összetett modulusra**.
Ellenpéldák:
- Legyen $m = 8$. Tekintsük az $a = 3$ és $b = 1$ számokat:
$$3^2 = 9 \equiv 1 = 1^2 \pmod 8,$$
viszont $3 \not\equiv 1 \pmod 8$ és $3 \not\equiv -1 \equiv 7 \pmod 8$.
- Legyen $m = 15$. Tekintsük az $a = 4$ és $b = 1$ számokat:
$$4^2 = 16 \equiv 1 = 1^2 \pmod{15},$$
viszont $4 \not\equiv 1 \pmod{15}$ és $4 \not\equiv -1 \equiv 14 \pmod{15}$. (Sőt $a = 1, 4, 11, 14$ mindegyikének négyzete $1$ mod 15, így az $x^2 \equiv 1$ egyenletnek 4 megoldása van!)

Vannak azonban olyan összetett modulusok, amelyekre az állítás mégis igaz: pontosan az $m = 2p$ alakú számok, ahol $p$ páratlan prím (például $m = 6$).
Bizonyítás: Ha $a^2 \equiv b^2 \pmod{2p}$, akkor $p \mid (a-b)(a+b)$, így $a \equiv \pm b \pmod p$. Mivel modulo 2 minden egész szám kongruens a saját ellentettjével ($b \equiv -b \pmod 2$), a kínai maradéktétel miatt a modulo $p$ kapott előjel egyértelműen meghatározza a modulo $2p$ maradékot: $a \equiv \pm b \pmod{2p}$.

::: elmelet
**Elméleti háttér — Nullosztók és gyökök száma $\mathbb{Z}_m$-ben.**
Egy testen (így $\mathbb{Z}_p$-ben, ahol $p$ prím) egy másodfokú polinomnak legfeljebb 2 gyöke lehet, ezért az $x^2 \equiv b^2 \pmod p$ egyenletnek pontosan két gyöke van ($b \not\equiv 0$ esetén): $x \equiv \pm b$.
Összetett modulus esetén azonban $\mathbb{Z}_m$-ben **nullosztók** vannak. A kínai maradéktétel szerint ha $m = m_1 m_2 \dots m_k$ páronként relatív prím tényezők szorzata, és mindegyik tényezőre 2 gyök van, akkor modulo $m$ összesen $2^k$ különböző négyzetgyök létezik.
:::

## P6.6. feladat

Számítsuk ki az alábbi hatványok maradékait a megadott modulusokra nézve: $12^{1003} \pmod{17}$ és $5^{123} \pmod{18}$.

**Megoldás.**
1. **$12^{1003} \pmod{17}$ kiszámítása:**
A modulus $p = 17$ prímszám, és $\operatorname{lnko}(12, 17) = 1$.
A **kis Fermat-tétel** szerint:
$$12^{16} \equiv 1 \pmod{17}.$$
Osszuk el a kitevőt $16$-tal:
$$1003 = 16 \cdot 62 + 11.$$
Ezért:
$$12^{1003} = (12^{16})^{62} \cdot 12^{11} \equiv 1^{62} \cdot 12^{11} = 12^{11} \pmod{17}.$$
A számolás egyszerűsítésére használjunk negatív abszolút értékű reprezentánst:
$$12 \equiv -5 \pmod{17}.$$
Ekkor $12^{11} \equiv (-5)^{11} = -5^{11} \pmod{17}$.
Számítsuk ki $5$ hatványait:
$$5^2 = 25 \equiv 8 \pmod{17},$$
$$5^4 \equiv 8^2 = 64 \equiv 13 \equiv -4 \pmod{17},$$
$$5^8 \equiv (-4)^2 = 16 \equiv -1 \pmod{17}.$$
Ebből:
$$5^{11} = 5^8 \cdot 5^2 \cdot 5 \equiv (-1) \cdot 8 \cdot 5 = -40 \equiv -6 \equiv 11 \pmod{17}.$$
Tehát:
$$12^{1003} \equiv -5^{11} \equiv -11 \equiv 6 \pmod{17}.$$
A maradék: **6**.

2. **$5^{123} \pmod{18}$ kiszámítása:**
A modulus $m = 18 = 2 \cdot 3^2$, összetett szám.
Mivel $\operatorname{lnko}(5, 18) = 1$, alkalmazható az **Euler–Fermat-tétel**:
$$\varphi(18) = 18 \cdot \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right) = 18 \cdot \frac{1}{2} \cdot \frac{2}{3} = 6.$$
Az Euler–Fermat-tétel szerint:
$$5^6 \equiv 1 \pmod{18}.$$
Osszuk el a kitevőt $6$-tal:
$$123 = 6 \cdot 20 + 3.$$
Ezért:
$$5^{123} = (5^6)^{20} \cdot 5^3 \equiv 1^{20} \cdot 5^3 = 5^3 \pmod{18}.$$
Számítsuk ki $5^3$ értékét:
$$5^3 = 125.$$
Mivel $125 = 6 \cdot 18 + 17$, ezért:
$$125 \equiv 17 \pmod{18} \quad (\text{vagy } 125 \equiv -1 \pmod{18}).$$
A maradék: **17**.

::: elmelet
**Elméleti háttér — Kitevőredukció a Fermat- és Euler-tételekkel.**
Ha $\operatorname{lnko}(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1 \pmod m$.
Ezért a kitevő modulo $\varphi(m)$ redukálható: ha $n = q \varphi(m) + r$, akkor $a^n \equiv a^r \pmod m$.
Prím modulus esetén $\varphi(p) = p - 1$ (kis Fermat-tétel).
A maradék hatvány kiszámításánál a gyorshatványozás (ismételt négyzetre emelés) és a negatív reprezentánsok használata minimalizálja a szükséges szorzások számát.
:::

## P6.7. feladat

Bizonyítsuk be, hogy az $n^7 - n$ kifejezés minden $n$ egész szám esetén osztható 42-vel.

**Megoldás.**
Bontsuk fel a 42-t prímtényezők szorzatára:
$$42 = 2 \cdot 3 \cdot 7.$$
Mivel a $2, 3, 7$ prímszámok páronként relatív prímek, egy egész szám akkor és csak akkor osztható 42-vel, ha külön-külön osztható 2-vel, 3-mal és 7-tel:
$$42 \mid (n^7 - n) \iff 2 \mid (n^7 - n) \quad \text{és} \quad 3 \mid (n^7 - n) \quad \text{és} \quad 7 \mid (n^7 - n).$$

Igazoljuk az oszthatóságot mindhárom prímre:

1. **Oszthatóság 7-tel:**
A **kis Fermat-tétel** általános alakja szerint tetszőleges $p$ prímszámra és tetszőleges $n \in \mathbb{Z}$ egészre:
$$n^p \equiv n \pmod p.$$
Alkalmazva $p = 7$-re:
$$n^7 \equiv n \pmod 7 \iff 7 \mid (n^7 - n).$$
Tehát a kifejezés minden $n$-re osztható 7-tel.

2. **Oszthatóság 2-vel és 3-mal:**
Alakítsuk szorzattá az $n^7 - n$ kifejezést:
$$n^7 - n = n(n^6 - 1) = n(n^3 - 1)(n^3 + 1).$$
Alkalmazzuk a köbök különbségének és összegének azonosságát:
$$n^3 - 1 = (n - 1)(n^2 + n + 1),$$
$$n^3 + 1 = (n + 1)(n^2 - n + 1).$$
Behelyettesítve a szorzatba:
$$n^7 - n = (n - 1)n(n + 1)(n^2 + n + 1)(n^2 - n + 1).$$
Vegyük észre, hogy a felbontásban szerepel az
$$(n - 1)n(n + 1)$$
tényező, amely három egymást követő egész szám szorzata!
- Bármely három szomszédos egész szám közül legalább az egyik páros, így a szorzatuk osztható 2-vel: $2 \mid (n - 1)n(n + 1) \mid (n^7 - n)$.
- Bármely három szomszédos egész szám közül pontosan az egyik osztható 3-mal, így a szorzatuk osztható 3-mal: $3 \mid (n - 1)n(n + 1) \mid (n^7 - n)$.

Mivel $n^7 - n$ osztható 2-vel, 3-mal és 7-tel, és e számok páronként relatív prímek, ezért osztható a szorzatukkal is:
$$2 \cdot 3 \cdot 7 = 42 \mid (n^7 - n).$$
Az állítást minden $n \in \mathbb{Z}$ egészre bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Oszthatóság prím modulusok szorzatával.**
Ha $m_1, m_2, \dots, m_k$ páronként relatív prímek, akkor $m_1 m_2 \dots m_k \mid A$ akkor és csak akkor teljesül, ha minden $i$-re $m_i \mid A$.
A kis Fermat-tétel $n^p \equiv n \pmod p$ alakja kivétel nélkül minden $n \in \mathbb{Z}$-re érvényes (akkor is, ha $p \mid n$).
Kisebb prímekre a szorzattá bontás és az egymást követő egészek tulajdonságai ($k$ szomszédos szám szorzata osztható $k!$-sal) gyakran azonnali bizonyítást adnak.
:::

## P6.8. feladat

Legyen $m$ páros, és $a_1, a_2, \dots, a_m$ illetve $b_1, b_2, \dots, b_m$ egy-egy teljes maradékrendszer modulo $m$. Igazoljuk, hogy az $a_1 + b_1, a_2 + b_2, \dots, a_m + b_m$ számok nem alkothatnak teljes maradékrendszert modulo $m$.

**Megoldás.**
Bármely teljes maradékrendszer elemei a modulo $m$ vett maradékosztályok reprezentánsai, így a legkisebb nemnegatív maradékok a $\{0, 1, 2, \dots, m-1\}$ számok valamilyen sorrendben.
Számítsuk ki egy tetszőleges teljes maradékrendszer elemeinek összegét modulo $m$:
$$\sum_{i=1}^m a_i \equiv \sum_{r=0}^{m-1} r = \frac{(m-1)m}{2} \pmod m.$$
Alakítsuk át az $S = \frac{m(m-1)}{2}$ kifejezést:
$$S = \frac{m}{2} \cdot (m - 1) = \frac{m}{2} \cdot m - \frac{m}{2} = m \cdot \frac{m}{2} - \frac{m}{2}.$$
Mivel $m$ páros, $\frac{m}{2}$ egész szám, így az első tag $m$ többszöröse. Ezért modulo $m$:
$$S \equiv -\frac{m}{2} \equiv m - \frac{m}{2} = \frac{m}{2} \pmod m.$$
(Például $m = 4$-re: $0 + 1 + 2 + 3 = 6 \equiv 2 = \frac{4}{2} \pmod 4$.)
Fontos megjegyezni, hogy mivel $m \ge 2$ páros egész, $\frac{m}{2} \not\equiv 0 \pmod m$.

Alkalmazzuk ezt az összegezési invariánst:
Mivel $a_1, \dots, a_m$ és $b_1, \dots, b_m$ is teljes maradékrendszer:
$$\sum_{i=1}^m a_i \equiv \frac{m}{2} \pmod m, \qquad \sum_{i=1}^m b_i \equiv \frac{m}{2} \pmod m.$$
Számítsuk ki az összegek összegét:
$$\sum_{i=1}^m (a_i + b_i) = \sum_{i=1}^m a_i + \sum_{i=1}^m b_i \equiv \frac{m}{2} + \frac{m}{2} = m \equiv \mathbf{0} \pmod m.$$

Tegyük fel indirekt módon, hogy a $c_i = a_i + b_i$ ($i = 1, \dots, m$) számok szintén teljes maradékrendszert alkotnak modulo $m$.
Ekkor az összegüknek meg kellene egyeznie a teljes maradékrendszerek összegével:
$$\sum_{i=1}^m (a_i + b_i) \equiv \mathbf{\frac{m}{2}} \pmod m.$$
A két eredményt összevetve:
$$0 \equiv \frac{m}{2} \pmod m \iff m \mid \frac{m}{2},$$
ami lehetetlen, hiszen $0 < \frac{m}{2} < m$.
Az ellentmondás bizonyítja, hogy az összegek nem alkothatnak teljes maradékrendszert modulo $m$. $\blacksquare$

::: elmelet
**Elméleti háttér — Maradékrendszerek összeg-invariánsa.**
Egy teljes maradékrendszer elemeinek összege modulo $m$ egy alapvető invariáns:
$$\sum_{x \in TMR} x \equiv \frac{m(m-1)}{2} \pmod m.$$
- Ha $m$ páratlan: $\frac{m-1}{2}$ egész, így az összeg $\equiv 0 \pmod m$.
- Ha $m$ páros: az összeg $\equiv \frac{m}{2} \not\equiv 0 \pmod m$.
Ez az invariáns azonnal kizárja bizonyos kombinatorikus struktúrák, például páros rendű ortogonális latin négyzetek létezését a maradékosztályok eltolásával.
:::

## P6.9. feladat

Legyen $p$ egy $4k + 3$ alakú prímszám. Igazoljuk, hogy az $x^2 \equiv -1 \pmod p$ kongruenciának nincs megoldása az egész számok körében.

**Megoldás.**
Tegyük fel indirekt módon, hogy létezik olyan $x \in \mathbb{Z}$ egész szám, amelyre:
$$x^2 \equiv -1 \pmod p.$$
Először vegyük észre, hogy $p \nmid x$, ugyanis ha $p \mid x$ lenne, akkor $x^2 \equiv 0 \pmod p$ következne, amiből $0 \equiv -1 \pmod p \implies p \mid 1$, ami lehetetlen, hiszen $p$ prím.
Mivel $\operatorname{lnko}(x, p) = 1$, alkalmazható a **kis Fermat-tétel**:
$$x^{p-1} \equiv 1 \pmod p.$$

Másrészt a feladat feltétele szerint $p = 4k + 3$, így a kitevő:
$$p - 1 = 4k + 2 = 2(2k + 1).$$
Fejezzük ki $x^{p-1}$-et az $x^2$ hatványaként:
$$x^{p-1} = x^{2(2k+1)} = (x^2)^{2k+1}.$$
Használjuk fel a feltételezett $x^2 \equiv -1 \pmod p$ összefüggést:
$$x^{p-1} \equiv (-1)^{2k+1} \pmod p.$$
Mivel $2k + 1$ páratlan egész szám, $(-1)^{2k+1} = -1$.
Így azt kapjuk, hogy:
$$x^{p-1} \equiv -1 \pmod p.$$

Összevetve a két egyenletet:
$$1 \equiv x^{p-1} \equiv -1 \pmod p \implies 1 \equiv -1 \pmod p \implies p \mid (1 - (-1)) = 2.$$
Ez azt jelentené, hogy $p \mid 2$, ami csak $p = 2$ esetén lehetséges.
Azonban a feltétel szerint $p = 4k + 3 \ge 3$, tehát $p$ páratlan prím, így nem oszthatja a 2-t!
Az ellentmondás bizonyítja, hogy az $x^2 \equiv -1 \pmod p$ kongruenciának nem létezik megoldása, ha $p \equiv 3 \pmod 4$. $\blacksquare$

::: elmelet
**Elméleti háttér — $-1$ kvadratikus jellege és az Euler-kritérium.**
Az Euler-kritérium szerint tetszőleges páratlan $p$ prímre és $p \nmid a$-ra:
$$\left(\frac{a}{p}\right) \equiv a^{(p-1)/2} \pmod p.$$
Speciálisan $a = -1$-re:
$$\left(\frac{-1}{p}\right) \equiv (-1)^{(p-1)/2} \pmod p.$$
- Ha $p = 4k + 1$, akkor $\frac{p-1}{2} = 2k$ páros, így $\left(\frac{-1}{p}\right) = (-1)^{2k} = 1$, azaz $-1$ kvadratikus maradék (van megoldás).
- Ha $p = 4k + 3$, akkor $\frac{p-1}{2} = 2k + 1$ páratlan, így $\left(\frac{-1}{p}\right) = -1$, azaz $-1$ kvadratikus nem-maradék (nincs megoldás).
Ez a tétel elengedhetetlen a két négyzetszám összegére vonatkozó Fermat-tétel bizonyításában.
:::

## P6.10. feladat

Oldjuk meg az alábbi kongruenciákat: (1) $5x \equiv 8 \pmod{23}$, (2) $17^{41}x \equiv 3 \pmod{100}$, (3) $15x \equiv 7 \pmod{55}$.

**Megoldás.**
1. **$5x \equiv 8 \pmod{23}$:**
A modulus $23$ prím, és $\operatorname{lnko}(5, 23) = 1$, így pontosan egy megoldás van modulo 23.
Keressük meg az 5 multiplikatív inverzét modulo 23:
$$5y \equiv 1 \pmod{23}.$$
Mivel $5 \cdot 9 = 45 = 2 \cdot 23 - 1 \equiv -1$, ezért $5 \cdot (-9) \equiv 1$, azaz $y \equiv -9 \equiv 14 \pmod{23}$.
(Vagy közvetlenül: $5 \cdot 14 = 70 = 3 \cdot 23 + 1 \equiv 1$.)
Szorozzuk be a kongruenciát az inverzzel:
$$x \equiv 8 \cdot 14 = 112 \pmod{23}.$$
Mivel $112 = 4 \cdot 23 + 20$:
$$\mathbf{x \equiv 20 \pmod{23}}.$$
(Ellenőrzés: $5 \cdot 20 = 100 = 4 \cdot 23 + 8 \equiv 8 \pmod{23}$.)

2. **$17^{41}x \equiv 3 \pmod{100}$:**
Először egyszerűsítsük a bal oldali együtthatót az Euler–Fermat-tétellel.
$\operatorname{lnko}(17, 100) = 1$ és $\varphi(100) = 40$.
Az Euler–Fermat-tétel szerint $17^{40} \equiv 1 \pmod{100}$.
Így:
$$17^{41} = 17^{40} \cdot 17 \equiv 1 \cdot 17 = 17 \pmod{100}.$$
Az egyenlet leegyszerűsödik:
$$17x \equiv 3 \pmod{100}.$$
Mivel $\operatorname{lnko}(17, 100) = 1$, az inverz megkeresésére felírjuk az euklideszi algoritmust:
$100 = 5 \cdot 17 + 15$,
$17 = 1 \cdot 15 + 2$,
$15 = 7 \cdot 2 + 1$.
Visszahelyettesítve:
$1 = 15 - 7 \cdot 2 = 15 - 7(17 - 15) = 8 \cdot 15 - 7 \cdot 17 = 8(100 - 5 \cdot 17) - 7 \cdot 17 = 8 \cdot 100 - 47 \cdot 17$.
Modulo 100: $-47 \cdot 17 \equiv 1 \implies 17^{-1} \equiv -47 \equiv 53 \pmod{100}$.
Szorozzuk meg mindkét oldalt $53$-mal:
$$x \equiv 3 \cdot 53 = 159 \equiv \mathbf{59 \pmod{100}}.$$
(Ellenőrzés: $17 \cdot 59 = 1003 = 10 \cdot 100 + 3 \equiv 3 \pmod{100}$.)

3. **$15x \equiv 7 \pmod{55}$:**
Számítsuk ki az együttható és a modulus legnagyobb közös osztóját:
$$d = \operatorname{lnko}(15, 55) = 5.$$
A lineáris kongruencia megoldhatóságának szükséges és elégséges feltétele, hogy $d \mid b$, vagyis a jobb oldali konstans osztható legyen $d$-vel.
Jelen esetben $b = 7$, és $5 \nmid 7$.
Ezért a kongruenciának **nincs megoldása**.
(Valóban: tetszőleges $x \in \mathbb{Z}$-re a bal oldal, $15x - 55k$ mindig osztható 5-tel, míg a jobb oldal, a 7, nem osztható 5-tel.)

::: elmelet
**Elméleti háttér — Lineáris kongruenciák megoldhatósága és megoldása.**
Az $ax \equiv b \pmod m$ lineáris kongruencia megoldhatósága:
Legyen $d = \operatorname{lnko}(a, m)$.
1. Ha $d \nmid b$, akkor a kongruenciának nincs megoldása.
2. Ha $d \mid b$, akkor a kongruenciának pontosan $d$ darab inkongruens megoldása van modulo $m$.
Ezeket úgy kapjuk meg, hogy mindent elosztunk $d$-vel: $\frac{a}{d} x \equiv \frac{b}{d} \pmod{\frac{m}{d}}$.
Mivel $\operatorname{lnko}(a/d, m/d) = 1$, ennek egyetlen $x_0$ megoldása van modulo $m/d$.
A modulo $m$ vett $d$ darab megoldás ekkor: $x \equiv x_0 + k \frac{m}{d} \pmod m$ ($k = 0, 1, \dots, d-1$).
:::

## P6.11. feladat

Egy egyetemi rendezvényre 300 forintos és 500 forintos szendvicseket rendeltek, összesen pontosan 7300 forint értékben. Hány darabot vehettek az egyes szendvicsekből, ha mindkét fajtából rendeltek legalább egyet?

**Megoldás.**
Jelölje $x$ a 300 forintos, $y$ pedig az 500 forintos szendvicsek darabszámát.
A feltételek szerint $x, y \in \mathbb{Z}$ pozitív egész számok ($x \ge 1$, $y \ge 1$), és:
$$300x + 500y = 7300.$$
Egyszerűsítsük az egyenletet 100-zal:
$$3x + 5y = 73.$$
Ez egy kétismeretlenes lineáris diofantoszi egyenlet. Mivel $\operatorname{lnko}(3, 5) = 1$ és $1 \mid 73$, az egyenlet megoldható.

Alakítsuk át az egyenletet kongruenciává modulo 3 (mivel $3x \equiv 0 \pmod 3$):
$$5y \equiv 73 \pmod 3.$$
Mivel $5 \equiv 2 \equiv -1 \pmod 3$ és $73 = 24 \cdot 3 + 1 \equiv 1 \pmod 3$:
$$-y \equiv 1 \pmod 3 \iff y \equiv -1 \equiv 2 \pmod 3.$$
Ez azt jelenti, hogy $y$ felírható $y = 3t + 2$ alakban, ahol $t \in \mathbb{Z}$.

Fejezzük ki $x$-et az eredeti egyenletből:
$$3x = 73 - 5y = 73 - 5(3t + 2) = 73 - 15t - 10 = 63 - 15t,$$
$$x = 21 - 5t.$$

Mivel mindkét fajta szendvicsből legalább egyet rendeltek, a változóknak szigorúan pozitívnak kell lenniük:
1. $y \ge 1 \implies 3t + 2 \ge 1 \implies 3t \ge -1 \implies t \ge 0$ (mivel $t \in \mathbb{Z}$).
2. $x \ge 1 \implies 21 - 5t \ge 1 \implies 5t \le 20 \implies t \le 4$.

Tehát a lehetséges paraméterértékek: $t \in \{0, 1, 2, 3, 4\}$.
Ez pontosan 5 különböző megoldást ad:
- $t = 0 \implies x = 21, \; y = 2$ (Összeg: $21 \cdot 300 + 2 \cdot 500 = 6300 + 1000 = 7300$),
- $t = 1 \implies x = 16, \; y = 5$ (Összeg: $16 \cdot 300 + 5 \cdot 500 = 4800 + 2500 = 7300$),
- $t = 2 \implies x = 11, \; y = 8$ (Összeg: $11 \cdot 300 + 8 \cdot 500 = 3300 + 4000 = 7300$),
- $t = 3 \implies x = 6, \; y = 11$ (Összeg: $6 \cdot 300 + 11 \cdot 500 = 1800 + 5500 = 7300$),
- $t = 4 \implies x = 1, \; y = 14$ (Összeg: $1 \cdot 300 + 14 \cdot 500 = 300 + 7000 = 7300$).

Tehát **5 különböző módon** rendelhettek szendvicseket, a lehetséges darabszámok:
$$\mathbf{(x, y) \in \{(21, 2),\, (16, 5),\, (11, 8),\, (6, 11),\, (1, 14)\}}.$$

::: elmelet
**Elméleti háttér — Pozitív egész megoldások meghatározása diofantoszi egyenleteknél.**
Az $ax + by = c$ lineáris diofantoszi egyenlet általános megoldása $x = x_0 + \frac{b}{d}t$, $y = y_0 - \frac{a}{d}t$, ahol $t \in \mathbb{Z}$.
A valós életbeli szöveges feladatoknál a megoldások pozitív vagy nemnegatív egészek ($x > 0, y > 0$).
Ez kétirányú egyenlőtlenségi korlátot szab $t$-re:
$$-\frac{x_0}{b/d} < t < \frac{y_0}{a/d}.$$
A feladat ekkor véges sok $t$ egész érték vizsgálatára redukálódik. Moduláris redukcióval az egyik változó közvetlenül paraméterezhető.
:::

## P6.12. feladat

Oldjuk meg az egész számok halmazán a következő lineáris diofantoszi egyenleteket:
(1) $14x + 35y = 91$,
(2) $15x + 21y = 38$.

**Megoldás.**
Egy $ax + by = c$ lineáris diofantoszi egyenlet pontosan akkor oldható meg egész számokban, ha a bal oldali együtthatók legnagyobb közös osztója osztja a jobb oldalt:
$$d = \operatorname{lnko}(a, b) \mid c.$$

1. **$14x + 35y = 91$ megoldása:**
Számítsuk ki a legnagyobb közös osztót:
$$d = \operatorname{lnko}(14, 35) = 7.$$
Mivel $91 = 7 \cdot 13$, a 7 osztja a 91-et ($7 \mid 91$), így az egyenletnek van megoldása az egész számok halmazán.
Osszuk el az egyenlet mindkét oldalát 7-tel:
$$2x + 5y = 13.$$
Keressünk egy partikuláris megoldást ($x_0, y_0$):
Modulo 2 véve az egyenletet: $y \equiv 1 \pmod 2$.
Legyen például $y_0 = 1$, ekkor $2x_0 = 13 - 5 = 8 \implies x_0 = 4$.
(Valóban: $2 \cdot 4 + 5 \cdot 1 = 8 + 5 = 13$.)
A homogén egyenlet:
$$2x + 5y = 0 \iff 2x = -5y.$$
Mivel $\operatorname{lnko}(2, 5) = 1$, a homogén egyenlet általános megoldása:
$$x_{\text{hom}} = 5t, \quad y_{\text{hom}} = -2t \qquad (t \in \mathbb{Z}).$$
Az inhomogén egyenlet általános megoldása a partikuláris megoldás és a homogén általános megoldás összege:
$$\mathbf{x = 4 + 5t},$$
$$\mathbf{y = 1 - 2t} \qquad (t \in \mathbb{Z}).$$

2. **$15x + 21y = 38$ megoldása:**
Számítsuk ki a legnagyobb közös osztót:
$$d = \operatorname{lnko}(15, 21) = 3.$$
Vizsgáljuk meg az oszthatóságot a jobb oldalra:
A jobb oldalon $38$ áll, viszont $38 = 12 \cdot 3 + 2$, tehát:
$$3 \nmid 38.$$
Mivel a bal oldal minden $x, y \in \mathbb{Z}$ esetén osztható 3-mal ($15x + 21y = 3(5x + 7y)$), a jobb oldal viszont nem osztható 3-mal, az egyenletnek **nincs megoldása az egész számok körében**.

::: elmelet
**Elméleti háttér — Lineáris diofantoszi egyenletek elmélete.**
Bármely $ax + by = c$ egyenletre:
1. Ha $\operatorname{lnko}(a, b) \nmid c$, akkor nincs egész megoldás.
2. Ha $\operatorname{lnko}(a, b) \mid c$, akkor végtelen sok egész megoldás létezik.
Az egyszerűsített $\frac{a}{d}x + \frac{b}{d}y = \frac{c}{d}$ egyenlet partikuláris megoldása a kibővített euklideszi algoritmussal vagy egyszerű kongruenciával kapható meg. Az általános megoldás:
$$x = x_0 + \frac{b}{d}t, \quad y = y_0 - \frac{a}{d}t \qquad (t \in \mathbb{Z}).$$
:::

## P6.13. feladat

Igazoljuk, hogy ha egy $N$ pozitív egész szám nem teljes $m$-edik hatvány ($m \ge 2$), akkor $\sqrt[m]{N}$ irracionális szám.

**Megoldás.**
Tegyük fel indirekt módon, hogy $\sqrt[m]{N}$ racionális szám.
Ekkor felírható két relatív prím pozitív egész szám hányadosaként:
$$\sqrt[m]{N} = \frac{p}{q}, \qquad p, q \in \mathbb{N}, \quad \operatorname{lnko}(p, q) = 1.$$
Emeljük mindkét oldalt az $m$-edik hatványra:
$$N = \frac{p^m}{q^m} \iff N q^m = p^m.$$

Tegyük fel, hogy $q > 1$.
A számelmélet alaptétele szerint $q$-nak létezik legalább egy prímosztója, jelölje ezt $r$:
$$r \mid q.$$
Mivel $r \mid q$, ezért $r \mid N q^m$, amiből következik, hogy:
$$r \mid p^m.$$
Mivel $r$ prímszám, az Euklideszi lemma szerint ha egy prím oszt egy hatványt, akkor osztania kell magát az alapot is:
$$r \mid p.$$
Azt kaptuk tehát, hogy $r \mid q$ és $r \mid p$.
Ez azonban ellentmond annak a kiindulási feltételnek, hogy $p$ és $q$ relatív prímek ($\operatorname{lnko}(p, q) = 1$)!

Az ellentmondás feloldása csak az lehet, hogy a nevező nem lehet 1-nél nagyobb:
$$q = 1.$$
Ekkor viszont az egyenletbe visszahelyettesítve:
$$N = \frac{p^m}{1^m} = p^m.$$
Ez azt jelenti, hogy $N$ egy pozitív egész szám $m$-edik hatványa, ami ellentmond a feladat kiindulási feltételének, miszerint $N$ nem teljes $m$-edik hatvány!

Ez az ellentmondás bizonyítja, hogy $\sqrt[m]{N}$ nem lehet racionális, tehát valóban **irracionális szám**. $\blacksquare$

::: elmelet
**Elméleti háttér — Gyökök irracionalitása és a számelmélet alaptétele.**
Ez a tétel az ókori görögök $\sqrt{2} \notin \mathbb{Q}$ bizonyításának legáltalánosabb kiterjesztése.
Alternatív bizonyítás a kanonikus prímfelbontással:
Egy $N$ szám kanonikus alakja $N = \prod p_i^{\alpha_i}$.
$N$ akkor és csak akkor teljes $m$-edik hatvány, ha minden $\alpha_i$ osztható $m$-mel.
Ha $N q^m = p^m$, akkor a bal oldalon a prímtényezők kitevői $\alpha_i + m \beta_i$, a jobb oldalon $m \gamma_i$.
A prímfelbontás egyértelműsége miatt $\alpha_i + m \beta_i = m \gamma_i \implies \alpha_i = m(\gamma_i - \beta_i)$, vagyis minden kitevő $m$ többszöröse kell legyen.
:::

## P6.14. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben az egyik szám 15.

**Megoldás.**
Egy $(a, b, c)$ pozitív egész számhármas primitív pitagoraszi számhármas, ha $a^2 + b^2 = c^2$, és $\operatorname{lnko}(a, b, c) = 1$.
A primitív pitagoraszi számhármasok klasszikus paraméterezési tétele szerint a számok felírhatók az alábbi alakban:
$$a = u^2 - v^2, \qquad b = 2uv, \qquad c = u^2 + v^2,$$
ahol $u > v > 0$ egész számok, amelyek relatív prímek ($\operatorname{lnko}(u, v) = 1$), és különböző paritásúak ($u \not\equiv v \pmod 2$).
Itt $a$ szükségképpen páratlan, $b$ páros, és az átfogó $c$ páratlan.

A feladat szerint a számhármas egyik eleme 15.
Mivel 15 páratlan szám, nem lehet egyenlő a páros $b = 2uv$ befogóval.
Így két eset lehetséges: $c = 15$ vagy $a = 15$.

1. **Eset: $c = 15$ (az átfogó 15):**
Ekkor $u^2 + v^2 = 15$.
Minden négyzetszám modulo 4 vagy $0$, vagy $1$ maradékot ad: $x^2 \equiv 0, 1 \pmod 4$.
Ezért két négyzetszám összege csak $0, 1$ vagy $2$ lehet modulo 4:
$$u^2 + v^2 \not\equiv 3 \pmod 4.$$
Mivel $15 = 3 \cdot 4 + 3 \equiv 3 \pmod 4$, a 15 nem állhat elő két négyzetszám összegeként!
(Közvetlen ellenőrzéssel: a $15$-nél kisebb négyzetszámok az $1, 4, 9$; ezek semmilyen páros összege nem ad 15-öt.)
Tehát ebben az esetben nincs megoldás.

2. **Eset: $a = 15$ (a páratlan befogó 15):**
Ekkor:
$$u^2 - v^2 = 15 \iff (u - v)(u + v) = 15.$$
Mivel $u > v > 0$, mindkét tényező pozitív egész, és $u - v < u + v$.
A 15 pozitív osztópárjai: $15 = 1 \cdot 15 = 3 \cdot 5$.
Két al-eset adódik:

- *1. felbontás:* $u - v = 1$ és $u + v = 15$.
Összeadva a két egyenletet: $2u = 16 \implies u = 8$.
Kivonva: $2v = 14 \implies v = 7$.
Ellenőrizzük a feltételeket:
$u = 8, v = 7$: $\operatorname{lnko}(8, 7) = 1$, paritásuk különböző (8 páros, 7 páratlan). A feltételek teljesülnek!
Számítsuk ki a számhármas tagjait:
$a = 8^2 - 7^2 = 64 - 49 = 15$,
$b = 2 \cdot 8 \cdot 7 = 112$,
$c = 8^2 + 7^2 = 64 + 49 = 113$.
A kapott számhármas: **$(15, 112, 113)$**.
(Ellenőrzés: $15^2 + 112^2 = 225 + 12544 = 12769 = 113^2$.)

- *2. felbontás:* $u - v = 3$ és $u + v = 5$.
Összeadva: $2u = 8 \implies u = 4$.
Kivonva: $2v = 2 \implies v = 1$.
Ellenőrizzük a feltételeket:
$u = 4, v = 1$: $\operatorname{lnko}(4, 1) = 1$, paritásuk különböző (4 páros, 1 páratlan). A feltételek teljesülnek!
Számítsuk ki a tagokat:
$a = 4^2 - 1^2 = 16 - 1 = 15$,
$b = 2 \cdot 4 \cdot 1 = 8$,
$c = 4^2 + 1^2 = 16 + 1 = 17$.
A kapott számhármas: **$(8, 15, 17)$**.
(Ellenőrzés: $8^2 + 15^2 = 64 + 225 = 289 = 17^2$.)

Tehát pontosan két olyan primitív pitagoraszi számhármas létezik, amelyben szerepel a 15:
$$\mathbf{(8, 15, 17)} \quad \text{és} \quad \mathbf{(15, 112, 113)}.$$
(Megjegyzés: A $(9, 12, 15)$, $(15, 20, 25)$ és $(15, 36, 39)$ számhármasok nem primitívek.)

::: elmelet
**Elméleti háttér — Primitív pitagoraszi számhármasok generálása.**
Minden primitív pitagoraszi számhármas egyértelműen előáll
$$a = u^2 - v^2, \quad b = 2uv, \quad c = u^2 + v^2$$
alakban, ahol $u > v > 0$, $\operatorname{lnko}(u, v) = 1$, és $u, v$ közül pontosan az egyik páros.
Ha adott egy szám a hármasban:
1. Ha a szám páros, csak $2uv$ lehet.
2. Ha a szám páratlan, lehet $u^2 - v^2 = (u-v)(u+v)$, vagy átfogóként $u^2 + v^2$.
Az átfogó sosem adhat $3 \pmod 4$ maradékot, és minden prímosztója $4k+1$ alakú kell legyen.
:::

## P6.15. feladat

Keressük meg az összes olyan derékszögű háromszöget, amelynek oldalhosszai egész számok, és a területének mérőszáma pontosan megegyezik a kerületének mérőszámával.

**Megoldás.**
Legyenek a derékszögű háromszög befogói $a$ és $b$, átfogója $c$, ahol $a, b, c \in \mathbb{N}$ pozitív egészek. Az általánosság csorbítása nélkül feltehetjük, hogy $a \le b$.
A derékszögű háromszög területe $T = \frac{ab}{2}$, kerülete $K = a + b + c$.
A feladat feltétele szerint:
$$T = K \iff \frac{ab}{2} = a + b + c \iff ab - 2a - 2b = 2c.$$
A Pitagorasz-tétel szerint $c^2 = a^2 + b^2$, vagyis $c = \sqrt{a^2 + b^2}$.
Emeljük mindkét oldalt négyzetre:
$$(ab - 2(a + b))^2 = 4c^2 = 4(a^2 + b^2).$$
Fejtsük ki a bal oldalt:
$$a^2 b^2 - 4ab(a + b) + 4(a + b)^2 = 4(a^2 + b^2).$$
Mivel $(a + b)^2 = a^2 + 2ab + b^2$, a bal oldal:
$$a^2 b^2 - 4ab(a + b) + 4a^2 + 8ab + 4b^2 = 4a^2 + 4b^2.$$
Vonjunk le mindkét oldalból $4a^2 + 4b^2$-et:
$$a^2 b^2 - 4ab(a + b) + 8ab = 0.$$
Mivel $a, b > 0$, a szorzatuk $ab \neq 0$, így leoszthatunk $ab$-vel:
$$ab - 4(a + b) + 8 = 0 \iff ab - 4a - 4b + 8 = 0.$$
Alakítsuk szorzattá az egyenletet (Simon's Favorite Factoring Trick):
$$a(b - 4) - 4(b - 4) - 16 + 8 = 0 \iff (a - 4)(b - 4) = 8.$$

Mivel $a$ és $b$ pozitív egészek, $a - 4$ és $b - 4$ a 8 egész osztói.
Továbbá az $a \le b$ feltevés miatt $a - 4 \le b - 4$.
Mivel $a \ge 1$, ezért $a - 4 \ge -3$, így negatív szorzatfelbontás nem lehetséges ($-1 \cdot (-8)$ vagy $-2 \cdot (-4)$ esetén $a - 4 \le -4$ lenne).
A 8 lehetséges pozitív szorzatfelbontásai:
1. $a - 4 = 1$ és $b - 4 = 8$:
   $$a = 5, \quad b = 12.$$
   Az átfogó: $c = \sqrt{5^2 + 12^2} = \sqrt{25 + 144} = \sqrt{169} = 13$.
   Ellenőrzés:
   - Terület: $T = \frac{5 \cdot 12}{2} = 30$.
   - Kerület: $K = 5 + 12 + 13 = 30$.
   Valóban $T = K = 30$.

2. $a - 4 = 2$ és $b - 4 = 4$:
   $$a = 6, \quad b = 8.$$
   Az átfogó: $c = \sqrt{6^2 + 8^2} = \sqrt{36 + 64} = \sqrt{100} = 10$.
   Ellenőrzés:
   - Terület: $T = \frac{6 \cdot 8}{2} = 24$.
   - Kerület: $K = 6 + 8 + 10 = 24$.
   Valóban $T = K = 24$.

(Megjegyzés: Geometriai megközelítés: A beírt kör sugara $r = \frac{T}{s} = \frac{2T}{K}$. Mivel $T = K$, kapjuk, hogy $r = 2$. Derékszögű háromszögben $r = \frac{a+b-c}{2} = 2 \implies c = a + b - 4$. Ezt a Pitagorasz-tételbe helyettesítve azonnal adódik az $(a-4)(b-4)=8$ egyenlet.)

A keresett derékszögű háromszögek oldalai:
$$\mathbf{(5, 12, 13)} \quad \text{és} \quad \mathbf{(6, 8, 10)}.$$

::: elmelet
**Elméleti háttér — Egész oldalú háromszögek diofantoszi modellezése.**
Geometriai feltételek egész számokon való megoldásakor a bilineáris diofantoszi egyenletek szorzattá alakítása a leghatékonyabb eszköz:
$$xy - kx - ly = C \iff (x - l)(y - k) = C + kl.$$
A beírt kör sugarának összefüggése ($T = r \cdot s$, ahol $s = K/2$) mély geometriai betekintést ad: a $T = K$ feltétel ekvivalens azzal, hogy a háromszög beírt körének sugara $r = 2$. Derékszögű háromszögben $r = \frac{a+b-c}{2}$, ami lineáris kapcsolatot teremt az oldalak között.
:::

## P6.16. feladat

Igazoljuk, hogy a Nagy Fermat-tétel bizonyításához elegendő belátni, hogy az $x^n + y^n = z^n$ egyenletnek nincs pozitív egész megoldása $n = 4$, valamint $n = p$ esetekben, ahol $p$ tetszőleges páratlan prímszám.

**Megoldás.**
A Nagy Fermat-tétel (Fermat sejtése) állítása:
Bármely $n \ge 3$ egész szám esetén az
$$x^n + y^n = z^n$$
egyenletnek nincsenek olyan $x, y, z \in \mathbb{N}$ megoldásai, amelyekre $x > 0, y > 0, z > 0$.

Tegyük fel, hogy a tételt már bebizonyítottuk az alábbi alapvető esetekre:
1. $n = 4$,
2. $n = p$, ahol $p$ tetszőleges páratlan prím ($p \in \{3, 5, 7, 11, \dots\}$).

Legyen $n \ge 3$ egy tetszőleges egész szám. A számelmélet alaptétele és a paritás vizsgálata alapján az $n$ számra a következő két, egymást kölcsönösen kizáró és együttesen kimerítő eset állhat fenn:

- **1. Eset: $n$-nek van legalább egy páratlan prímosztója.**
Jelölje ezt a páratlan prímet $p$.
Ekkor $n$ felírható $n = p \cdot k$ alakban, ahol $k \ge 1$ egész szám.
Tegyük fel indirekt módon, hogy léteznek olyan $x, y, z \in \mathbb{N}$ pozitív egészek, amelyekre $x^n + y^n = z^n$.
A hatványozás azonosságai alapján:
$$(x^k)^p + (y^k)^p = (z^k)^p.$$
Vezessük be az $X = x^k$, $Y = y^k$, $Z = z^k$ jelöléseket.
Mivel $x, y, z \ge 1$ és $k \ge 1$, az $X, Y, Z$ számok szintén szigorúan pozitív egész számok ($X, Y, Z \in \mathbb{N}$), és kielégítik a következő egyenletet:
$$X^p + Y^p = Z^p.$$
Ez azt jelentené, hogy a Fermat-egyenletnek létezik pozitív egész megoldása a $p$ páratlan prím kitevőre.
Ez azonban ellentmond a kiindulási feltevésünknek, miszerint páratlan prímekre a tételt már beláttuk!

- **2. Eset: $n$-nek nincs egyetlen páratlan prímosztója sem.**
Mivel $n \ge 3 > 1$, a számelmélet alaptétele szerint $n$-nek rendelkeznie kell legalább egy prímosztóval. Mivel páratlan prímosztója nincs, az egyetlen lehetséges prímosztója a 2.
Ezért $n$ egy 2-hatvány: $n = 2^m$ valamely $m \in \mathbb{N}$ egészre.
Mivel a feltétel szerint $n \ge 3$, ezért $m \ge 2$.
Ebből következik, hogy $2^2 = 4 \mid n$.
Tehát $n$ felírható $n = 4 \cdot k$ alakban valamely $k \ge 1$ egészre.
Ha létezne olyan $(x, y, z)$ pozitív egész számhármas, amelyre $x^n + y^n = z^n$, akkor:
$$(x^k)^4 + (y^k)^4 = (z^k)^4.$$
Az $X = x^k, Y = y^k, Z = z^k \in \mathbb{N}$ pozitív egészek kielégítenék az
$$X^4 + Y^4 = Z^4$$
egyenletet, ami ellentmond annak, hogy az $n = 4$ esetre a tétel már bizonyított!

Mivel minden $n \ge 3$ egész szám vagy osztható 4-gyel, vagy osztható legalább egy páratlan prímmel, egy tetszőleges $n$-re létező ellenpélda azonnal ellenpéldát szolgáltatna vagy a 4-re, vagy valamely páratlan prímre.
Ezért valóban elegendő a bizonyítást $n = 4$-re és az összes $n = p$ páratlan prímre elvégezni. $\blacksquare$

::: elmelet
**Elméleti háttér — A Nagy Fermat-tétel redukciója és az öröklődés.**
Ez az egyszerű, de alapvető bizonyítás a diofantoszi egyenletek megoldhatatlanságának öröklődési elvén alapul:
Ha egy $F(X, Y, Z) = 0$ egyenlet megoldható, akkor a hatványozás miatt $x^{kd} + y^{kd} = z^{kd}$ megoldhatósága maga után vonja az $X^d + Y^d = Z^d$ megoldhatóságát ($X = x^k$ helyettesítéssel).
Kontrapozícióval: ha a $d$ kitevőre nincs megoldás, akkor a $d$ egyetlen többszörösére sem lehet megoldás.
Ezért elegendő a relációban minimális elemekre (azaz a 4-re és a páratlan prímekre) szorítkozni. Pierre de Fermat maga az $n = 4$ esetet bizonyította a végtelen leszállás módszerével.
:::

## P6.17. feladat

Oldjuk meg a következő szimultán kongruenciarendszert a kínai maradéktétel segítségével:
$$\begin{aligned}
x &\equiv 1 \pmod 4 \\
x &\equiv 2 \pmod 5 \\
x &\equiv 3 \pmod 7
\end{aligned}$$

**Megoldás.**
A modulusok: $m_1 = 4$, $m_2 = 5$, $m_3 = 7$.
Mivel $\operatorname{lnko}(4, 5) = \operatorname{lnko}(4, 7) = \operatorname{lnko}(5, 7) = 1$, a modulusok páronként relatív prímek.
A kínai maradéktétel garantálja, hogy a rendszernek létezik egyértelmű megoldása modulo $M = m_1 m_2 m_3$.
Számítsuk ki a közös modulust:
$$M = 4 \cdot 5 \cdot 7 = 140.$$

Alkalmazzuk a kínai maradéktétel konstruktív eljárását:
1. Kiszámítjuk a redukált modulusokat ($M_i = \frac{M}{m_i}$):
$$M_1 = \frac{140}{4} = 35,$$
$$M_2 = \frac{140}{5} = 28,$$
$$M_3 = \frac{140}{7} = 20.$$

2. Meghatározzuk az $M_i$ számok multiplikatív inverzeit modulo $m_i$ ($M_i y_i \equiv 1 \pmod{m_i}$):
- Modulo 4:
  $$35 y_1 \equiv 1 \pmod 4 \iff 3 y_1 \equiv 1 \pmod 4 \iff -y_1 \equiv 1 \implies y_1 \equiv 3 \pmod 4.$$
- Modulo 5:
  $$28 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 6 \implies y_2 \equiv 2 \pmod 5.$$
- Modulo 7:
  $$20 y_3 \equiv 1 \pmod 7 \iff 6 y_3 \equiv 1 \pmod 7 \iff -y_3 \equiv 1 \implies y_3 \equiv 6 \pmod 7.$$

3. Képezzük az alapelemeket ($e_i = M_i y_i$):
$$e_1 = 35 \cdot 3 = 105,$$
$$e_2 = 28 \cdot 2 = 56,$$
$$e_3 = 20 \cdot 6 = 120.$$

4. A megoldás felírása a maradékokkal ($c_1 = 1, c_2 = 2, c_3 = 3$):
$$x_0 = c_1 e_1 + c_2 e_2 + c_3 e_3 = 1 \cdot 105 + 2 \cdot 56 + 3 \cdot 120 = 105 + 112 + 360 = 577.$$

5. Redukáljuk a megoldást modulo 140:
$$577 = 4 \cdot 140 + 17 \implies x \equiv 17 \pmod{140}.$$

Ellenőrzés:
- $17 = 4 \cdot 4 + 1 \implies 17 \equiv 1 \pmod 4$,
- $17 = 3 \cdot 5 + 2 \implies 17 \equiv 2 \pmod 5$,
- $17 = 2 \cdot 7 + 3 \implies 17 \equiv 3 \pmod 7$.
Minden feltétel maradéktalanul teljesül.

A rendszer általános megoldása:
$$\mathbf{x \equiv 17 \pmod{140}}.$$

::: elmelet
**Elméleti háttér — A kínai maradéktétel (CRT) algoritmusa.**
Ha az $m_1, \dots, m_k$ modulusok páronként relatív prímek, akkor az $x \equiv c_i \pmod{m_i}$ kongruenciarendszernek létezik megoldása, és az modulo $M = \prod m_i$ egyértelmű.
A megoldás képlete:
$$x \equiv \sum_{i=1}^k c_i M_i y_i \pmod M,$$
ahol $M_i = M / m_i$ és $M_i y_i \equiv 1 \pmod{m_i}$.
Algebrailag ez a $\mathbb{Z}_M \cong \prod \mathbb{Z}_{m_i}$ gyűrűizomorfizmus explicit megfordítása (idempotens báziselemekkel: $e_i = M_i y_i$).
:::

## P6.18. feladat

Keresd meg azt a legkisebb pozitív egész számot, amely 3-mal osztva 2-t, 5-tel osztva 3-at, 7-tel osztva pedig 2-t ad maradékul.

**Megoldás.**
Írjuk fel a szöveges feltételeket a kongruenciák nyelvén:
$$\begin{aligned}
x &\equiv 2 \pmod 3 \\
x &\equiv 3 \pmod 5 \\
x &\equiv 2 \pmod 7
\end{aligned}$$
Keresendő a legkisebb olyan $x \in \mathbb{N}$ szám, amely kielégíti ezt a rendszert.
A modulusok $m_1 = 3, m_2 = 5, m_3 = 7$ páronként relatív prímek, szorzatuk:
$$M = 3 \cdot 5 \cdot 7 = 105.$$

**Elegáns megoldás a közös maradék kihasználásával:**
Vegyük észre, hogy az első és a harmadik kongruenciában a maradék azonos:
$$x \equiv 2 \pmod 3 \quad \text{és} \quad x \equiv 2 \pmod 7.$$
Ez azt jelenti, hogy $3 \mid (x - 2)$ és $7 \mid (x - 2)$.
Mivel $\operatorname{lnko}(3, 7) = 1$, a két feltétel egyenértékű azzal, hogy $x - 2$ osztható a legkisebb közös többszörösükkel, azaz $3 \cdot 7 = 21$-gyel:
$$x \equiv 2 \pmod{21}.$$
Ezért $x$ felírható $x = 21k + 2$ alakban, ahol $k \in \mathbb{Z}$.

Helyettesítsük ezt be a második kongruenciába ($x \equiv 3 \pmod 5$):
$$21k + 2 \equiv 3 \pmod 5.$$
Mivel $21 = 4 \cdot 5 + 1 \equiv 1 \pmod 5$:
$$1k + 2 \equiv 3 \pmod 5 \iff k \equiv 1 \pmod 5.$$
Ez azt jelenti, hogy $k$ felírható $k = 5t + 1$ alakban ($t \in \mathbb{Z}$).

Helyettesítsük vissza $k$-t az $x$ kifejezésébe:
$$x = 21(5t + 1) + 2 = 105t + 21 + 2 = 105t + 23.$$
Tehát a kongruenciarendszer általános megoldása:
$$x \equiv 23 \pmod{105}.$$

A megoldások halmaza az egész számok körében:
$$\{\dots, -82, 23, 128, 233, \dots\}.$$
A feladat a **legkisebb pozitív egész számot** kérdezte ($x > 0$).
A legkisebb pozitív érték a $t = 0$ választással adódik:
$$x = 23.$$

Ellenőrzés:
- $23 = 7 \cdot 3 + 2 \implies \text{maradék: } 2$,
- $23 = 4 \cdot 5 + 3 \implies \text{maradék: } 3$,
- $23 = 3 \cdot 7 + 2 \implies \text{maradék: } 2$.
Valamennyi feltétel teljesül.

A legkisebb pozitív egész szám:
$$\mathbf{23}.$$

::: elmelet
**Elméleti háttér — Azonos maradékok összevonása kongruenciarendszerekben.**
Ha egy szimultán rendszerben két vagy több kongruenciának azonos a maradéka ($x \equiv c \pmod{m_1}$ és $x \equiv c \pmod{m_2}$), akkor azok azonnal összevonhatók egyetlen kongruenciává:
$$x \equiv c \pmod{[m_1, m_2]}.$$
Ez a fogás jelentősen csökkenti az ismeretlenek és a lépések számát, elkerülve a teljes kínai maradéktétel hosszas inverzszámításait.
A legkisebb pozitív megoldás a redukált modulo $M$ maradék (ha $x_0 = 0$, akkor $M$).
:::

## P6.19. feladat

Egy kalózhajón a legénység aranypénzeket zsákmányolt. Ha 11 egyenlő részre osztják a kincset, akkor 6 érme marad ki. Ha 13 egyenlő részre osztják, akkor 4 érme marad, ha pedig 17-re, akkor 12. Legalább hány aranypénzt zsákmányoltak?

**Megoldás.**
Jelölje $N$ a zsákmányolt aranypénzek darabszámát. Mivel valós tárgyakról van szó, $N \in \mathbb{N}$ pozitív egész szám.
A feladat szövege alapján a következő szimultán kongruenciarendszert kapjuk:
$$\begin{aligned}
N &\equiv 6 \pmod{11} \\
N &\equiv 4 \pmod{13} \\
N &\equiv 12 \pmod{17}
\end{aligned}$$
A modulusok prímszámok ($11, 13, 17$), így páronként relatív prímek.
Számítsuk ki a közös modulust:
$$M = 11 \cdot 13 \cdot 17 = 143 \cdot 17 = 2431.$$

Alkalmazzuk a kínai maradéktételt:
1. Kiszámítjuk a részmodulusokat ($M_i = \frac{M}{m_i}$):
$$M_1 = 13 \cdot 17 = 221,$$
$$M_2 = 11 \cdot 17 = 187,$$
$$M_3 = 11 \cdot 13 = 143.$$

2. Meghatározzuk az inverzeket ($M_i y_i \equiv 1 \pmod{m_i}$):
- Modulo 11:
  $$221 = 20 \cdot 11 + 1 \implies 221 \equiv 1 \pmod{11}.$$
  Így $1 \cdot y_1 \equiv 1 \implies y_1 \equiv 1 \pmod{11}$.
- Modulo 13:
  $$187 = 14 \cdot 13 + 5 \implies 187 \equiv 5 \pmod{13}.$$
  Az inverz egyenlete: $5 y_2 \equiv 1 \pmod{13}$.
  Mivel $5 \cdot 8 = 40 = 3 \cdot 13 + 1 \equiv 1$, ezért $y_2 \equiv 8 \pmod{13}$.
- Modulo 17:
  $$143 = 8 \cdot 17 + 7 \implies 143 \equiv 7 \pmod{17}.$$
  Az inverz egyenlete: $7 y_3 \equiv 1 \pmod{17}$.
  Mivel $7 \cdot 5 = 35 = 2 \cdot 17 + 1 \equiv 1$, ezért $y_3 \equiv 5 \pmod{17}$.

3. A partikuláris megoldás kiszámítása ($c_1 = 6, c_2 = 4, c_3 = 12$):
$$N_0 = c_1 M_1 y_1 + c_2 M_2 y_2 + c_3 M_3 y_3 = 6 \cdot 221 \cdot 1 + 4 \cdot 187 \cdot 8 + 12 \cdot 143 \cdot 5.$$
Számítsuk ki a tagokat:
$$6 \cdot 221 \cdot 1 = 1326,$$
$$4 \cdot 187 \cdot 8 = 32 \cdot 187 = 5984,$$
$$12 \cdot 143 \cdot 5 = 60 \cdot 143 = 8580.$$
Összegük:
$$N_0 = 1326 + 5984 + 8580 = 15890.$$

4. Redukáljuk a megoldást modulo 2431:
Osszuk el $15890$-et $2431$-gyel:
$$15890 = 6 \cdot 2431 + 1304 \quad (6 \cdot 2431 = 14586, \quad 15890 - 14586 = 1304).$$
Ezért:
$$N \equiv 1304 \pmod{2431}.$$

Ellenőrizzük a kapott eredményt:
- $1304 = 118 \cdot 11 + 6 \implies 1304 \equiv 6 \pmod{11}$,
- $1304 = 100 \cdot 13 + 4 \implies 1304 \equiv 4 \pmod{13}$,
- $1304 = 76 \cdot 17 + 12 \implies 1304 \equiv 12 \pmod{17}$.

Mivel a darabszám szigorúan pozitív kell legyen, a legkisebb lehetséges szám az $1304$.
A legénység legalább **1304 aranypénzt** zsákmányolt.
$$\mathbf{1304}.$$

::: elmelet
**Elméleti háttér — Klasszikus szöveges oszthatósági feladatok CRT-vel.**
A kínai maradéktétel történetileg éppen ilyen rejtvényekből (Sun Zi Kr. u. 3. századi problémája: „Vannak tárgyak, melyeket ha 3-asával számolunk, 2 marad...”) született.
A feladatok kulcsa a szöveges feltételek egzakt lefordítása szimultán kongruenciákra: „ha $m$-mel osztva $r$ marad” $\iff x \equiv r \pmod m$. A gyakorlati korlátok (pl. legkisebb lehetséges érték) a modulo $M$ legkisebb pozitív reprezentáns meghatározását jelentik.
:::

## P6.20. feladat

Oldjuk meg az $x^3 + x + 57 \equiv 0 \pmod{27}$ kongruenciát.

**Megoldás.**
A kongruencia modulusa $m = 27 = 3^3$, amely egy prímhatvány.
A prímhatvány modulusú magasabb fokú kongruenciákat a Hensel-lemma elve alapján, fokozatos felemeléssel oldjuk meg: először modulo $p$, majd modulo $p^2$, végül modulo $p^3$.
Legyen $f(x) = x^3 + x + 57$.

**1. lépés: Megoldás modulo 3.**
Mivel $57 = 3 \cdot 19 \equiv 0 \pmod 3$, az egyenlet modulo 3:
$$x^3 + x \equiv 0 \pmod 3.$$
A kis Fermat-tétel szerint minden $x \in \mathbb{Z}$ egészre $x^3 \equiv x \pmod 3$.
Ezért:
$$x^3 + x \equiv x + x = 2x \equiv -x \equiv 0 \pmod 3 \iff x \equiv 0 \pmod 3.$$
(Közvetlen behelyettesítéssel: $f(0) = 57 \equiv 0$, $f(1) = 59 \equiv 2$, $f(2) = 8 + 2 + 57 = 67 \equiv 1 \pmod 3$. Egyetlen gyök van: $x \equiv 0 \pmod 3$.)

**2. lépés: Felemelés modulo $3^2 = 9$-re.**
Mivel a megoldásnak modulo 3 nullának kell lennie, a modulo 9 megoldást
$$x = 3t$$
alakban keressük, ahol $t \in \{0, 1, 2\}$.
Helyettesítsük ezt be az $f(x)$ polinomba modulo 9:
$$f(3t) = (3t)^3 + 3t + 57 = 27t^3 + 3t + 57.$$
Mivel $27t^3 \equiv 0 \pmod 9$ és $57 = 6 \cdot 9 + 3 \equiv 3 \pmod 9$:
$$f(3t) \equiv 3t + 3 \equiv 0 \pmod 9.$$
Ez egy lineáris kongruencia $t$-re:
$$3t \equiv -3 \equiv 6 \pmod 9.$$
Mivel $\operatorname{lnko}(3, 9) = 3$ és $3 \mid 6$, osszuk el a kongruenciát és a modulust is 3-mal:
$$t \equiv 2 \pmod 3.$$
Ezért a $t$ egyetlen lehetséges értéke a $\{0, 1, 2\}$ halmazból a $t = 2$.
A modulo 9 megoldás tehát:
$$x = 3 \cdot 2 = 6 \implies x \equiv 6 \pmod 9.$$
(Ellenőrzés: $f(6) = 6^3 + 6 + 57 = 216 + 6 + 57 = 279 = 31 \cdot 9 \equiv 0 \pmod 9$.)

**3. lépés: Felemelés modulo $3^3 = 27$-re.**
Mivel $x \equiv 6 \pmod 9$, a megoldást
$$x = 6 + 9u$$
alakban keressük, ahol $u \in \{0, 1, 2\}$.
Fejtsük ki $f(6 + 9u)$-t modulo 27:
$$(6 + 9u)^3 = 6^3 + 3 \cdot 6^2 \cdot (9u) + 3 \cdot 6 \cdot (9u)^2 + (9u)^3.$$
Vegyük észre, hogy:
- $3 \cdot 36 \cdot 9u = 27 \cdot 36u \equiv 0 \pmod{27}$,
- a további tagok $9^2 = 81$ többszörösei, így szintén oszthatók 27-tel.
Ezért:
$$(6 + 9u)^3 \equiv 6^3 = 216 \equiv 0 \pmod{27} \quad (\text{mivel } 216 = 8 \cdot 27).$$
Így a polinom értéke:
$$f(6 + 9u) = (6 + 9u)^3 + (6 + 9u) + 57 \equiv 0 + 6 + 9u + 57 \pmod{27}.$$
Összevonva a konstansokat: $6 + 57 = 63 = 2 \cdot 27 + 9 \equiv 9 \pmod{27}$.
A kongruencia tehát:
$$9u + 9 \equiv 0 \pmod{27} \iff 9u \equiv -9 \equiv 18 \pmod{27}.$$
Osszuk el a kongruenciát és a modulust 9-cel:
$$u \equiv 2 \pmod 3.$$
Ezért az egyetlen lehetséges érték $u = 2$.
A megoldás modulo 27:
$$x = 6 + 9 \cdot 2 = 6 + 18 = 24 \equiv -3 \pmod{27}.$$

Ellenőrzés:
$$f(24) \equiv f(-3) = (-3)^3 + (-3) + 57 = -27 - 3 + 57 = 27 \equiv 0 \pmod{27}.$$
A kongruencia egyetlen megoldása modulo 27:
$$\mathbf{x \equiv 24 \pmod{27}}.$$

::: elmelet
**Elméleti háttér — Kongruenciák felemelése és a Hensel-lemma.**
Egy $f(x) \equiv 0 \pmod{p^k}$ kongruencia megoldásának lépései:
1. Megoldjuk az egyenletet modulo $p$.
2. Ha $x_0$ egy egyszerű gyök modulo $p$, vagyis $f(x_0) \equiv 0 \pmod p$ és a derivált nem nulla ($f'(x_0) \not\equiv 0 \pmod p$), akkor a gyök a **Hensel-lemma** szerint minden $p^j$ hatványra egyértelműen felemelhető:
$$x_{j} = x_{j-1} - f(x_{j-1}) \cdot [f'(x_0)]^{-1} \pmod{p^j}.$$
Jelen esetben $f'(x) = 3x^2 + 1$, így $f'(0) = 1 \not\equiv 0 \pmod 3$, ami garantálta, hogy a gyök mindkét felemelési lépésben egyértelmű maradt.
:::

---

# 7. feladatsor — Determinánsok alaptulajdonságai, Gauss-módszer, kifejtési tétel és permutációk

## P7.1. feladat

Számítsuk ki az alábbi determinánsokat a felső háromszög alakra hozás módszerével (Gauss-eliminációval), az első sor, illetve az utolsó oszlop szerinti kifejtéssel, valamint a $3 \times 3$-asokat a Sarrus-szabállyal is:
$$D_1 = \begin{vmatrix} -1 & 4 \\ 2 & 3 \end{vmatrix}, \quad D_2 = \begin{vmatrix} 0 & 2 & -1 \\ 4 & 1 & 3 \\ 2 & -3 & 2 \end{vmatrix}, \quad D_3 = \begin{vmatrix} 1 & 2 & 3 & 4 \\ 1 & 2 & 3 & 0 \\ 1 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix}, \quad D_4 = \begin{vmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{vmatrix}.$$

**Megoldás.**
1. **$D_1 = \begin{vmatrix} -1 & 4 \\ 2 & 3 \end{vmatrix}$:**
- *Gauss-elimináció:* Adjuk hozzá az első sor 2-szeresét a második sorhoz ($S_2 \leftarrow S_2 + 2S_1$). Ez nem változtatja a determinánst:
$$D_1 = \begin{vmatrix} -1 & 4 \\ 0 & 11 \end{vmatrix} = (-1) \cdot 11 = \mathbf{-11}.$$
- *Első sor szerinti kifejtés:* $(-1) \cdot 3 - 4 \cdot 2 = -3 - 8 = \mathbf{-11}$.
- *Utolsó (második) oszlop szerinti kifejtés:* $4 \cdot (-1)^{1+2} \cdot 2 + 3 \cdot (-1)^{2+2} \cdot (-1) = -8 - 3 = \mathbf{-11}$.

2. **$D_2 = \begin{vmatrix} 0 & 2 & -1 \\ 4 & 1 & 3 \\ 2 & -3 & 2 \end{vmatrix}$:**
- *Gauss-elimináció:* Cseréljük fel az első és második sort ($S_1 \leftrightarrow S_2$), ez előjelváltást eredményez:
$$D_2 = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 2 & -3 & 2 \end{vmatrix}.$$
Vonjuk ki az első sor felét a harmadik sorból ($S_3 \leftarrow S_3 - \frac{1}{2}S_1$):
$$D_2 = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 0 & -\frac{7}{2} & \frac{1}{2} \end{vmatrix}.$$
Adjuk a második sor $\frac{7}{4}$-szeresét a harmadikhoz ($S_3 \leftarrow S_3 + \frac{7}{4}S_2$):
$$D_2 = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 0 & 0 & -\frac{5}{4} \end{vmatrix} = - \left( 4 \cdot 2 \cdot \left(-\frac{5}{4}\right) \right) = -(-10) = \mathbf{10}.$$
- *Első sor szerinti kifejtés:*
$$D_2 = 0 \cdot \begin{vmatrix} 1 & 3 \\ -3 & 2 \end{vmatrix} - 2 \cdot \begin{vmatrix} 4 & 3 \\ 2 & 2 \end{vmatrix} + (-1) \cdot \begin{vmatrix} 4 & 1 \\ 2 & -3 \end{vmatrix} = 0 - 2(8 - 6) - (-12 - 2) = -4 - (-14) = \mathbf{10}.$$
- *Utolsó oszlop szerinti kifejtés:*
$$D_2 = (-1) \cdot \begin{vmatrix} 4 & 1 \\ 2 & -3 \end{vmatrix} - 3 \cdot \begin{vmatrix} 0 & 2 \\ 2 & -3 \end{vmatrix} + 2 \cdot \begin{vmatrix} 0 & 2 \\ 4 & 1 \end{vmatrix} = (-1)(-14) - 3(-4) + 2(-8) = 14 + 12 - 16 = \mathbf{10}.$$
- *Sarrus-szabály:*
$$D_2 = (0 \cdot 1 \cdot 2 + 2 \cdot 3 \cdot 2 + (-1) \cdot 4 \cdot (-3)) - ((-1) \cdot 1 \cdot 2 + 0 \cdot 3 \cdot (-3) + 2 \cdot 4 \cdot 2) = (0 + 12 + 12) - (-2 + 0 + 16) = 24 - 14 = \mathbf{10}.$$

3. **$D_3 = \begin{vmatrix} 1 & 2 & 3 & 4 \\ 1 & 2 & 3 & 0 \\ 1 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix}$:**
- *Gauss-elimináció:* Vonjuk ki felülről lefelé a szomszédos sorokat: $S_1 \leftarrow S_1 - S_2$, $S_2 \leftarrow S_2 - S_3$, $S_3 \leftarrow S_3 - S_4$:
$$D_3 = \begin{vmatrix} 0 & 0 & 0 & 4 \\ 0 & 0 & 3 & 0 \\ 0 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix}.$$
Cseréljük fel az első sort a negyedikkel ($S_1 \leftrightarrow S_4$), majd a másodikat a harmadikkal ($S_2 \leftrightarrow S_3$). Két sorcsere történt, így az előjel nem változik:
$$D_3 = \begin{vmatrix} 1 & 0 & 0 & 0 \\ 0 & 2 & 0 & 0 \\ 0 & 0 & 3 & 0 \\ 0 & 0 & 0 & 4 \end{vmatrix} = 1 \cdot 2 \cdot 3 \cdot 4 = \mathbf{24}.$$
- *Első sor szerinti kifejtés:* Az első három aldetermináns mind tartalmaz csupa 0 sort vagy oszlopot, így értékük 0. Egyedül a 4-eshez tartozó tag marad meg:
$$D_3 = -4 \cdot \begin{vmatrix} 1 & 2 & 3 \\ 1 & 2 & 0 \\ 1 & 0 & 0 \end{vmatrix} = -4 \cdot (-6) = \mathbf{24}.$$
- *Utolsó oszlop szerinti kifejtés:* Csak a $(1, 4)$ pozícióban lévő elem nem nulla:
$$D_3 = 4 \cdot (-1)^{1+4} \cdot \begin{vmatrix} 1 & 2 & 3 \\ 1 & 2 & 0 \\ 1 & 0 & 0 \end{vmatrix} = -4 \cdot (-6) = \mathbf{24}.$$

4. **$D_4 = \begin{vmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{vmatrix}$:**
- *Gauss-elimináció (sorcserék az egységmátrixig):*
1. $S_1 \leftrightarrow S_3$ (1. sorcsere): $\begin{pmatrix} 1&0&0&0 \\ 0&0&0&1 \\ 0&1&0&0 \\ 0&0&1&0 \end{pmatrix}$.
2. $S_2 \leftrightarrow S_3$ (2. sorcsere): $\begin{pmatrix} 1&0&0&0 \\ 0&1&0&0 \\ 0&0&0&1 \\ 0&0&1&0 \end{pmatrix}$.
3. $S_3 \leftrightarrow S_4$ (3. sorcsere): $\begin{pmatrix} 1&0&0&0 \\ 0&1&0&0 \\ 0&0&1&0 \\ 0&0&0&1 \end{pmatrix} = I_4$.
Összesen 3 sorcsere történt, így $D_4 = (-1)^3 \det I_4 = \mathbf{-1}$.
- *Első sor szerinti kifejtés:* Csak az $a_{12} = 1$ nem nulla:
$$D_4 = 1 \cdot (-1)^{1+2} \cdot \begin{vmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{vmatrix} = -1 \cdot 1 = \mathbf{-1}.$$
- *Utolsó oszlop szerinti kifejtés:* Csak az $a_{24} = 1$ nem nulla:
$$D_4 = 1 \cdot (-1)^{2+4} \cdot \begin{vmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{vmatrix} = 1 \cdot (-1) = \mathbf{-1}.$$

::: elmelet
**Elméleti háttér — A determinánsszámítás alapvető módszerei.**
1. **Gauss-elimináció:**
- Egy sor konstansszorosának egy másik sorhoz adása nem változtatja meg a determinánst.
- Két sor felcserélése $(-1)$-szeresére változtatja a determinánst.
- Egy sor $c$-vel való szorzása a determinánst $c$-vel szorozza.
- Felső (vagy alsó) háromszögmátrix determinánsa a főátlóbeli elemek szorzata.
2. **Laplace-féle kifejtési tétel:**
Bármely rögzített $i$-edik sor szerint: $\det A = \sum_{j=1}^n (-1)^{i+j} a_{ij} M_{ij}$.
Bármely rögzített $j$-edik oszlop szerint: $\det A = \sum_{i=1}^n (-1)^{i+j} a_{ij} M_{ij}$.
3. **Sarrus-szabály:** Kizárólag $3 \times 3$-as mátrixokra érvényes! Felső átlók összege mínusz alsó átlók összege. Nagyobb méretre nem működik.
:::

## P7.2. feladat

Számítsuk ki az alábbi általános méretű determinánsokat:
(a) $D_n = \begin{vmatrix} 1 & 1 & \dots & 1 \\ 1 & 2 & \dots & 2 \\ \vdots & \vdots & \ddots & \vdots \\ 1 & 2 & \dots & n \end{vmatrix}$ (ahol az $(i, j)$ elem $\min(i, j)$),
(b) A Vandermonde-determináns: $V(y_1, \dots, y_n) = \begin{vmatrix} 1 & 1 & \dots & 1 \\ y_1 & y_2 & \dots & y_n \\ \vdots & \vdots & \ddots & \vdots \\ y_1^{n-1} & y_2^{n-1} & \dots & y_n^{n-1} \end{vmatrix}$,
(c) $A_n = \begin{vmatrix} a & b & \dots & b \\ b & a & \dots & b \\ \vdots & \vdots & \ddots & \vdots \\ b & b & \dots & a \end{vmatrix}$ ($a$ a főátlóban, mindenhol máshol $b$),
(d) A tridiagonális determináns: $T_n = \begin{vmatrix} 3 & 1 & 0 & \dots & 0 \\ 1 & 3 & 1 & \ddots & \vdots \\ 0 & 1 & 3 & \ddots & 0 \\ \vdots & \ddots & \ddots & \ddots & 1 \\ 0 & \dots & 0 & 1 & 3 \end{vmatrix}$.

**Megoldás.**
**(a) $D_n$ kiszámítása:**
Vonjuk ki minden sorból az előtte lévő sort, alulról felfelé haladva:
$$S_k \leftarrow S_k - S_{k-1} \qquad (k = n, n-1, \dots, 2).$$
Mivel az $(i, j)$ elem $\min(i, j)$, a $k$-adik és $(k-1)$-edik sor különbsége:
$$\min(k, j) - \min(k-1, j) = \begin{cases} 0, & \text{ha } j < k, \\ 1, & \text{ha } j \ge k. \end{cases}$$
Így a transzformált mátrix sorai:
- 1. sor: $(1, 1, 1, \dots, 1)$,
- 2. sor: $(0, 1, 1, \dots, 1)$,
- 3. sor: $(0, 0, 1, \dots, 1)$,
- $\dots$
- $n$-edik sor: $(0, 0, 0, \dots, 1)$.
Ez egy felső háromszögmátrix, melynek főátlójában csupa 1-es áll.
A determináns tehát a főátlóbeli elemek szorzata:
$$D_n = 1 \cdot 1 \dots 1 = \mathbf{1}.$$

**(b) A Vandermonde-determináns kiszámítása:**
Bizonyítjuk teljes indukcióval, hogy $V(y_1, \dots, y_n) = \prod_{1 \le i < j \le n} (y_j - y_i)$.
$n = 1$-re a szorzat üres, értéke 1. $n = 2$-re $\begin{vmatrix} 1 & 1 \\ y_1 & y_2 \end{vmatrix} = y_2 - y_1$.
Tegyük fel, hogy az állítás igaz $(n-1)$-re.
Alulról felfelé haladva vonjuk ki minden sorból az előző sor $y_1$-szeresét:
$$S_k \leftarrow S_k - y_1 S_{k-1} \qquad (k = n, n-1, \dots, 2).$$
Ez a művelet nem változtatja meg a determinánst.
Az első oszlopban az 1 alatti összes elem nullává válik: $y_1^{k-1} - y_1 y_1^{k-2} = 0$.
A $j$-edik oszlop ($j \ge 2$) $k$-adik eleme:
$$y_j^{k-1} - y_1 y_j^{k-2} = (y_j - y_1) y_j^{k-2}.$$
Fejtsük ki a determinánst az első oszlop szerint:
$$V(y_1, \dots, y_n) = 1 \cdot (-1)^{1+1} \cdot \begin{vmatrix} y_2 - y_1 & y_3 - y_1 & \dots & y_n - y_1 \\ y_2(y_2 - y_1) & y_3(y_3 - y_1) & \dots & y_n(y_n - y_1) \\ \vdots & \vdots & \ddots & \vdots \\ y_2^{n-2}(y_2 - y_1) & y_3^{n-2}(y_3 - y_1) & \dots & y_n^{n-2}(y_n - y_1) \end{vmatrix}.$$
Emeljük ki minden $j$-edik oszlopból a közös $(y_j - y_1)$ tényezőt ($j = 2, \dots, n$):
$$V(y_1, \dots, y_n) = \left(\prod_{j=2}^n (y_j - y_1)\right) \cdot V(y_2, \dots, y_n).$$
Az indukciós feltevést behelyettesítve adódik a tétel:
$$\mathbf{V(y_1, \dots, y_n) = \prod_{1 \le i < j \le n} (y_j - y_i)}.$$

**(c) $A_n$ kiszámítása:**
1. lépés: Adjuk hozzá az első oszlophoz az összes többi oszlopot ($O_1 \leftarrow O_1 + O_2 + \dots + O_n$).
Ekkor az első oszlop minden eleme $a + (n-1)b$ lesz.
2. lépés: Emeljük ki az első oszlopból a közös $(a + (n-1)b)$ szorzót:
$$A_n = (a + (n-1)b) \begin{vmatrix} 1 & b & \dots & b \\ 1 & a & \dots & b \\ \vdots & \vdots & \ddots & \vdots \\ 1 & b & \dots & a \end{vmatrix}.$$
3. lépés: Vonjuk ki az első sort az összes többi sorból ($S_k \leftarrow S_k - S_1$, $k = 2, \dots, n$):
Az első oszlopban az 1 alatt csupa 0 keletkezik, míg a főátlóban $a - b$, a főátlón kívül pedig $b - b = 0$.
Felső háromszögmátrixot kaptunk: a főátló elemei $1, a-b, a-b, \dots, a-b$ (összesen $n-1$ darab $a-b$).
A determináns tehát:
$$\mathbf{A_n = (a + (n-1)b)(a - b)^{n-1}}.$$

**(d) A tridiagonális $T_n$ kiszámítása:**
Fejtsük ki $T_n$-et az első sora szerint:
$$T_n = 3 T_{n-1} - 1 \cdot \begin{vmatrix} 1 & 1 & 0 & \dots \\ 0 & 3 & 1 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix}.$$
A leválasztott aldeterminánst az első oszlopa szerint kifejtve pontosan $1 \cdot T_{n-2}$ marad:
$$T_n = 3 T_{n-1} - T_{n-2}.$$
A kezdőértékek: $T_1 = 3$, $T_2 = \begin{vmatrix} 3 & 1 \\ 1 & 3 \end{vmatrix} = 8$ (és kényelmi okból $T_0 = 1$).
A rekurzió karakterisztikus egyenlete:
$$\lambda^2 - 3\lambda + 1 = 0 \implies \lambda_{1,2} = \frac{3 \pm \sqrt{5}}{2}.$$
Vegyük észre, hogy $\lambda_1 = \left(\frac{1+\sqrt{5}}{2}\right)^2 = \phi^2$ és $\lambda_2 = \left(\frac{1-\sqrt{5}}{2}\right)^2 = \psi^2$.
A kezdeti feltételekből $T_n = \frac{\lambda_1^{n+1} - \lambda_2^{n+1}}{\lambda_1 - \lambda_2} = \frac{\phi^{2n+2} - \psi^{2n+2}}{\sqrt{5}}$.
Ez pontosan a Fibonacci-sorozat páros indexű eleme:
$$\mathbf{T_n = F_{2n+2}} = \frac{1}{\sqrt{5}}\left[\left(\frac{3+\sqrt{5}}{2}\right)^{n+1} - \left(\frac{3-\sqrt{5}}{2}\right)^{n+1}\right].$$

::: elmelet
**Elméleti háttér — Speciális $n \times n$ determinánsok típusai.**
1. **Vandermonde-determináns:** $V(y_1, \dots, y_n) = \prod_{i<j}(y_j - y_i)$. Akkor és csak akkor 0, ha két paraméter megegyezik. A Lagrange-interpoláció egyértelműségének alapja.
2. **Cirkuláns és szimmetrikus b-mátrixok:** Ha a sorösszegek konstansak, az oszlopok összeadásával a sorösszeg kiemelhető, a maradék pedig az első sor kivonásával diagonalizálható.
3. **Tridiagonális mátrixok:** Egymás utáni kifejtéssel mindig másodrendű állandó együtthatós lineáris rekurzióra vezetnek ($D_n = a D_{n-1} - bc D_{n-2}$), melynek megoldása a karakterisztikus polinom gyökeivel történik.
:::

## P7.3. feladat

Ha egy $B \in \mathbb{R}^{4 \times 4}$ mátrixra $\det B = 3$, akkor mennyi $\det(B + B + B)$?

**Megoldás.**
A feladatban szereplő kifejezés:
$$B + B + B = 3B.$$
A mátrix skalárral való szorzásának definíciója szerint a $3B$ mátrixot úgy kapjuk, hogy a $B$ mátrix **minden egyes elemét** megszorozzuk 3-mal.
Ez azt jelenti, hogy a $3B$ mátrix mind a 4 sorát megszorozzuk 3-mal.

A determináns multilinearitási tulajdonsága szerint egy tetszőleges sor skalárszorosának kiemelésekor a determináns a skalárral szorzódik.
Ha egy $n \times n$-es mátrix összes sorát megszorozzuk egy $c$ skalárral, akkor minden egyes sorból kiemelhető a $c$ tényező.
Általános képlettel:
$$\det(cA) = c^n \det A.$$

Jelen esetben a mátrix mérete $n = 4$, a skalár $c = 3$, és $\det B = 3$.
Alkalmazzuk a képletet:
$$\det(3B) = 3^4 \cdot \det B.$$
Mivel $3^4 = 81$:
$$\det(3B) = 81 \cdot 3 = \mathbf{243}.$$
(Tipikus hiba lenne a determinánst egyszerűen 3-mal szorozni: $\det(3B) \neq 3 \det B = 9$, mert a determináns nem lineáris a teljes mátrixra nézve!)

::: elmelet
**Elméleti háttér — A determináns homogenitása és multilinearitása.**
A determináns $n$-változós függvényként tekinthető a mátrix soraiban: $f(s_1, \dots, s_n) = \det A$.
Ez a függvény **multilineáris**, azaz minden sorában külön-külön lineáris:
$$\det(s_1, \dots, c \cdot s_i, \dots, s_n) = c \cdot \det(s_1, \dots, s_i, \dots, s_n).$$
Ennek közvetlen következménye az $n$-edfokú homogenitás:
$$\det(c A) = c^n \det A \qquad (A \in \mathbb{R}^{n \times n}).$$
Geometriai jelentés: egy $n$-dimenziós paralelepipedon minden élét $c$-szeresére nyújtva a térfogata $c^n$-szeresére növekszik.
:::

## P7.4. feladat

Számítsuk ki az alábbi $3 \times 3$-as determináns értékét, ha tudjuk, hogy az elemei a bal felső sarokból jobbra haladva, sorfolytonosan egy számtani sorozat egymást követő tagjai:
$$D = \begin{vmatrix} a & a + d & a + 2d \\ a + 3d & a + 4d & a + 5d \\ a + 6d & a + 7d & a + 8d \end{vmatrix}.$$

**Megoldás.**
Alkalmazzunk elemi sorműveleteket, amelyek a determináns értékét nem változtatják meg.
Vonjuk ki az első sort a második és a harmadik sorból ($S_2 \leftarrow S_2 - S_1$ és $S_3 \leftarrow S_3 - S_1$):
- Második sor:
  $$(a + 3d) - a = 3d, \quad (a + 4d) - (a + d) = 3d, \quad (a + 5d) - (a + 2d) = 3d.$$
- Harmadik sor:
  $$(a + 6d) - a = 6d, \quad (a + 7d) - (a + d) = 6d, \quad (a + 8d) - (a + 2d) = 6d.$$
A determináns alakja:
$$D = \begin{vmatrix} a & a + d & a + 2d \\ 3d & 3d & 3d \\ 6d & 6d & 6d \end{vmatrix}.$$

Vegyük észre, hogy a harmadik sor a második sor pontosan 2-szerese:
$$S_3 = 2 S_2.$$
Vonjuk ki a második sor 2-szeresét a harmadik sorból ($S_3 \leftarrow S_3 - 2S_2$):
$$D = \begin{vmatrix} a & a + d & a + 2d \\ 3d & 3d & 3d \\ 0 & 0 & 0 \end{vmatrix}.$$
Mivel a determináns tartalmaz egy csupa nulla elemekből álló sort, értéke szükségszerűen nulla.
Tehát tetszőleges $a$ kezdőérték és $d$ differencia esetén:
$$D = \mathbf{0}.$$

::: elmelet
**Elméleti háttér — Lineárisan függő sorok és a nulla determináns.**
Egy négyzetes mátrix determinánsa akkor és csak akkor nulla, ha sorvektorai (vagy oszlopvektorai) lineárisan összefüggők.
Ha egy mátrixban egy sor egy másik sor számszorosa, a determináns azonnal 0.
Általánosabban: ha a sorok közötti különbségek konstans vektorok ($S_2 - S_1 = S_3 - S_2$), akkor $S_1 - 2S_2 + S_3 = 0$, ami nemtriviális lineáris kombinációt ad a nullvektorra, így a determináns mindig eltűnik.
:::

## P7.5. feladat

Egy $2026 \times 2026$-os determináns minden oszlopa számtani sorozat. Mennyi a determináns értéke?

**Megoldás.**
Jelölje a determináns mátrixát $A = (a_{ij}) \in \mathbb{R}^{2026 \times 2026}$.
A feltétel szerint minden oszlop egy számtani sorozat.
Ez azt jelenti, hogy tetszőleges rögzített $j \in \{1, 2, \dots, 2026\}$ oszlopindexre létezik olyan $c_j$ kezdőérték és $d_j$ differencia, amelyre:
$$a_{ij} = c_j + (i - 1)d_j \qquad (i = 1, 2, \dots, 2026).$$

Írjuk fel a mátrix első három sorát:
$$S_1 = (c_1,\, c_2,\, \dots,\, c_{2026}),$$
$$S_2 = (c_1 + d_1,\, c_2 + d_2,\, \dots,\, c_{2026} + d_{2026}),$$
$$S_3 = (c_1 + 2d_1,\, c_2 + 2d_2,\, \dots,\, c_{2026} + 2d_{2026}).$$

Vizsgáljuk meg a sorok lineáris kombinációját.
Képezzük az $S_1 - 2S_2 + S_3$ vektort.
Ennek a vektornak a $j$-edik koordinátája:
$$(S_1 - 2S_2 + S_3)_j = c_j - 2(c_j + d_j) + (c_j + 2d_j) = c_j - 2c_j - 2d_j + c_j + 2d_j = 0.$$
Mivel ez minden $j$-re azonosan nulla:
$$S_1 - 2S_2 + S_3 = \mathbf{0}.$$

Ez azt jelenti, hogy a mátrix első három sora között nemtriviális lineáris összefüggés áll fenn (az $1, -2, 1$ nem mind nulla együtthatókkal).
Ha a harmadik sor helyére az $S_3 \leftarrow S_3 - 2S_2 + S_1$ elemi sorművelettel kapott sort írjuk, a harmadik sor csupa nulla lesz.
Mivel a mátrix mérete $n = 2026 \ge 3$, a harmadik sor létezik.
Egy csupa nulla sort tartalmazó mátrix determinánsa nulla.
A determináns értéke tehát:
$$\mathbf{0}.$$

::: elmelet
**Elméleti háttér — Polinomiális oszlopok és a mátrix rangja.**
Ha egy $n \times n$-es mátrix oszlopai legfeljebb $k$-adfokú polinomok értékei az $i$ sorindex szerint, akkor a mátrix sorai a $\{1, i, i^2, \dots, i^k\}$ függvények által feszített legfeljebb $(k+1)$-dimenziós altérben fekszenek.
Ezért a mátrix rangja legfeljebb $k + 1$.
Jelen esetben a számtani sorozat elsőfokú polinom ($k = 1$), így a mátrix rangja legfeljebb $1 + 1 = 2$.
Mivel $n = 2026 > 2$, a mátrix nem lehet maximális rangú, így determinánsa szükségképpen 0.
:::

## P7.6. feladat

Egy egész elemű determinánsban minden sorösszeg osztható 13-mal. Igazoljuk, hogy a determináns értéke is osztható 13-mal.

**Megoldás.**
Legyen $A = (a_{ij}) \in \mathbb{Z}^{n \times n}$ egy egész elemű négyzetes mátrix.
Jelölje az oszlopait $O_1, O_2, \dots, O_n$.
A feladat feltétele szerint minden sorban az elemek összege osztható 13-mal:
$$\sum_{j=1}^n a_{ij} = 13 k_i, \qquad k_i \in \mathbb{Z} \quad (i = 1, 2, \dots, n).$$

Hajtsuk végre a következő oszlopműveletet: adjuk hozzá az utolsó oszlophoz az összes többi oszlopot:
$$O_n \leftarrow O_1 + O_2 + \dots + O_n.$$
Ismert tétel, hogy más oszlopok hozzáadása nem változtatja meg a determináns értékét:
$$\det A = \det(O_1, O_2, \dots, O_{n-1}, O_1 + \dots + O_n).$$

Vizsgáljuk meg az új utolsó oszlop elemeit!
Az $i$-edik sorban az új utolsó elem éppen az eredeti mátrix $i$-edik sorösszege:
$$(O_1 + \dots + O_n)_i = \sum_{j=1}^n a_{ij} = 13 k_i.$$
Tehát az utolsó oszlop minden egyes eleme osztható 13-mal!
A determináns multilinearitása miatt a 13-as szorzótényező kiemelhető az utolsó oszlopból:
$$\det A = 13 \cdot \det(O_1, O_2, \dots, O_{n-1}, K),$$
ahol $K = (k_1, k_2, \dots, k_n)^T$ egy egész számokból álló oszlopvektor.

Mivel az $O_1, \dots, O_{n-1}$ oszlopok és a $K$ oszlop is kizárólag egész számokat tartalmaznak, az új mátrix determinánsa egész számok összege és szorzata, így maga is egész szám:
$$D' = \det(O_1, \dots, O_{n-1}, K) \in \mathbb{Z}.$$
Ezért:
$$\det A = 13 \cdot D', \quad \text{ahol } D' \in \mathbb{Z} \implies \mathbf{13 \mid \det A}.$$
Ezzel az állítást bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Oszthatóság igazolása elemi oszlopműveletekkel.**
Egy determináns oszthatóságának igazolásakor standard technika:
1. Az oszlopok (vagy sorok) lineáris kombinációjával egy olyan új oszlopot hozunk létre, amelyben a feladat feltétele (itt az összeg) jelenik meg.
2. A közös osztót kiemeljük az oszlopból: $\det(O_1, \dots, c K) = c \det(O_1, \dots, K)$.
3. Mivel egész elemű mátrix determinánsa mindig egész, az oszthatóság automatikusan teljesül.
Kongruenciákkal: ha $\sum a_{ij} \equiv 0 \pmod p$, akkor $\mathbb{Z}_p$ felett az oszlopok összege a nullvektor, így a mátrix mod $p$ elfajuló ($\det A \equiv 0 \pmod p$).
:::

## P7.7. feladat

Egy $3 \times 3$-as determináns elemei egyjegyű egész számok. Minden oszlopban a három számjegyből felülről lefelé összeolvasott háromjegyű szám osztható 11-gyel. Igazoljuk, hogy a determináns értéke is osztható 11-gyel.

**Megoldás.**
Jelölje a mátrix sorait $S_1, S_2, S_3$.
A mátrix elemei:
$$A = \begin{pmatrix} a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3 \\ c_1 & c_2 & c_3 \end{pmatrix},$$
ahol $a_j, b_j, c_j \in \{0, 1, \dots, 9\}$.
A feladat feltétele szerint a $j$-edik oszlopból felülről lefelé kiolvasott háromjegyű szám:
$$N_j = 100 a_j + 10 b_j + c_j \qquad (j = 1, 2, 3)$$
osztható 11-gyel:
$$11 \mid N_j \iff N_j = 11 k_j \quad (k_j \in \mathbb{Z}).$$

Hajtsuk végre a következő elemi sorműveletet:
Adjuk hozzá a harmadik sorhoz az első sor 100-szorosát és a második sor 10-szeresét:
$$S_3 \leftarrow 100 S_1 + 10 S_2 + S_3.$$
Mivel egy sorhoz más sorok számszorosait adtuk hozzá, a determináns értéke nem változik:
$$\det A = \begin{vmatrix} a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3 \\ 100a_1 + 10b_1 + c_1 & 100a_2 + 10b_2 + c_2 & 100a_3 + 10b_3 + c_3 \end{vmatrix}.$$

Vegyük észre, hogy az új harmadik sor elemei pontosan a megadott $N_1, N_2, N_3$ háromjegyű számok:
$$\det A = \begin{vmatrix} a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3 \\ N_1 & N_2 & N_3 \end{vmatrix} = \begin{vmatrix} a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3 \\ 11k_1 & 11k_2 & 11k_3 \end{vmatrix}.$$

A determináns multilinearitása miatt emeljük ki a 11-es közös szorzót a harmadik sorból:
$$\det A = 11 \cdot \begin{vmatrix} a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3 \\ k_1 & k_2 & k_3 \end{vmatrix}.$$
Mivel $a_j, b_j, k_j$ mind egész számok, a determinánsban szereplő új mátrix minden eleme egész, így a determinánsa is egész szám:
$$D' = \begin{vmatrix} a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3 \\ k_1 & k_2 & k_3 \end{vmatrix} \in \mathbb{Z}.$$
Ebből következik, hogy:
$$\det A = 11 \cdot D' \implies \mathbf{11 \mid \det A}.$$
Ezzel az állítást bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Helyiértékes számok és determinánsok.**
Ez a klasszikus feladattípus kiválóan szemlélteti, hogy a tízes számrendszerbeli helyiértékek ($100, 10, 1$) pontosan megfelelnek a sorok lineáris kombinációjának:
$$S_n \leftarrow 10^{n-1} S_1 + 10^{n-2} S_2 + \dots + S_n.$$
Ez a művelet nem változtatja meg a determinánst, viszont a megadott oszthatósági feltételt közvetlenül az egyik sorba sűríti, ahonnan a közös osztó kiemelhetővé válik.
:::

## P7.8. feladat

Hány inverzió van az alábbi permutációkban, illetve az $n$ elemű 'hátulról előre' (fordított sorrendű) permutációban?
$$\pi_1 = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 3 & 1 & 4 & 2 & 8 & 5 & 7 & 6 \end{pmatrix}, \quad \pi_2 = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 8 & 2 & 4 & 6 & 1 & 3 & 5 & 7 \end{pmatrix}, \quad \pi_3 = \begin{pmatrix} a & b & c & d & e \\ b & e & a & c & d \end{pmatrix}.$$

**Megoldás.**
Egy $\pi \in S_n$ permutációban az $(i, j)$ pár **inverziót** alkot, ha $i < j$, de $\pi(i) > \pi(j)$.
Az összes inverzió számát úgy határozhatjuk meg a leggyorsabban, hogy a permutáció második sorának elemeit balról jobbra vizsgálva minden egyes elemre megszámoljuk, hogy tőle jobbra hány nála kisebb elem áll, majd ezen számokat összeadjuk.

1. **$\pi_1 = (3, 1, 4, 2, 8, 5, 7, 6)$ vizsgálata:**
- A $3$ után álló kisebb számok: $1, 2$ (2 darab),
- Az $1$ után álló kisebb számok: nincs (0 darab),
- A $4$ után álló kisebb számok: $2$ (1 darab),
- A $2$ után álló kisebb számok: nincs (0 darab),
- A $8$ után álló kisebb számok: $5, 7, 6$ (3 darab),
- Az $5$ után álló kisebb számok: nincs (0 darab),
- A $7$ után álló kisebb számok: $6$ (1 darab),
- A $6$ után már nem áll elem (0 darab).
Az inverziók száma:
$$I(\pi_1) = 2 + 0 + 1 + 0 + 3 + 0 + 1 + 0 = \mathbf{7}.$$
Mivel $7$ páratlan, $\pi_1$ páratlan permutáció ($\operatorname{sgn}\pi_1 = (-1)^7 = -1$).

2. **$\pi_2 = (8, 2, 4, 6, 1, 3, 5, 7)$ vizsgálata:**
- A $8$ után álló kisebbek: $2, 4, 6, 1, 3, 5, 7$ (7 darab),
- A $2$ után álló kisebbek: $1$ (1 darab),
- A $4$ után álló kisebbek: $1, 3$ (2 darab),
- A $6$ után álló kisebbek: $1, 3, 5$ (3 darab),
- Az $1$ után álló kisebbek: nincs (0 darab),
- A $3$ után álló kisebbek: nincs (0 darab),
- Az $5$ után álló kisebbek: nincs (0 darab),
- A $7$ után nem áll elem (0 darab).
Az inverziók száma:
$$I(\pi_2) = 7 + 1 + 2 + 3 + 0 + 0 + 0 + 0 = \mathbf{13}.$$
Mivel $13$ páratlan, $\pi_2$ páratlan permutáció ($\operatorname{sgn}\pi_2 = (-1)^{13} = -1$).

3. **$\pi_3 = \begin{pmatrix} a & b & c & d & e \\ b & e & a & c & d \end{pmatrix}$ vizsgálata:**
Rendezzük az alaphalmazt a természetes ábécérendbe: $a < b < c < d < e$, amelyeknek feleltessük meg az $1, 2, 3, 4, 5$ számokat.
Ekkor a második sor: $b, e, a, c, d \leftrightarrow (2, 5, 1, 3, 4)$.
Számoljuk meg az inverziókat:
- A $2$ után kisebb: $1$ (1 darab),
- Az $5$ után kisebb: $1, 3, 4$ (3 darab),
- Az $1$ után kisebb: nincs (0 darab),
- A $3$ után kisebb: nincs (0 darab),
- A $4$ után kisebb: nincs (0 darab).
Az inverziók száma:
$$I(\pi_3) = 1 + 3 + 0 + 0 + 0 = \mathbf{4}.$$
Mivel $4$ páros, $\pi_3$ páros permutáció ($\operatorname{sgn}\pi_3 = (-1)^4 = 1$).

4. **A 'hátulról előre' (fordított) permutáció ($n, n-1, \dots, 2, 1$):**
Ebben a sorozatban tetszőleges $i < j$ indexpárra $\pi(i) > \pi(j)$, mivel minden megelőző elem nagyobb a rákövetkezőknél.
Ezért a halmaz **bármely két elemének párja** inverziót alkot.
Az $n$ elem közül kiválasztható rendezetlen párok száma:
$$I(\pi_{\text{ford}}) = \binom{n}{2} = \mathbf{\frac{n(n-1)}{2}}.$$
(Például $n = 8$ esetén $\binom{8}{2} = \frac{8 \cdot 7}{2} = 28$, $n = 5$ esetén $\binom{5}{2} = 10$.)$

::: elmelet
**Elméleti háttér — Permutációk inverziószáma és paritása.**
Az inverziók száma $I(\pi) = |\{(i, j) : 1 \le i < j \le n, \pi(i) > \pi(j)\}|$.
- A minimális lehetséges inverziószám 0, ez az identitáspermutációra ($1, 2, \dots, n$) teljesül.
- A maximális lehetséges inverziószám $\binom{n}{2}$, ez a fordított sorrendre ($n, n-1, \dots, 1$) teljesül.
- A permutáció előjele (szignatúrája): $\operatorname{sgn}\pi = (-1)^{I(\pi)}$.
Ha $I(\pi)$ páros, a permutáció páros; ha páratlan, a permutáció páratlan.
Két elem cseréje (transzpozíció) mindig megváltoztatja az inverziószám paritását.
:::

## P7.9. feladat

Hány inverzió lehet maximum egy 6 elemű halmaz egy páros permutációjában?

**Megoldás.**
Egy 6 elemű halmaz tetszőleges permutációjában az inverziók száma legfeljebb az összes lehetséges párok száma lehet:
$$I_{\max} = \binom{6}{2} = \frac{6 \cdot 5}{2} = 15.$$
Ez a maximális érték egyetlenegy permutációra érhető el, a teljesen fordított sorrendű permutációra:
$$\pi_{\text{rev}} = (6, 5, 4, 3, 2, 1).$$
Vizsgáljuk meg ennek a paritását:
Mivel $I(\pi_{\text{rev}}) = 15$, és 15 páratlan szám, a $\pi_{\text{rev}}$ egy **páratlan permutáció** ($\operatorname{sgn}\pi_{\text{rev}} = -1$).
A feladat azonban kifejezetten egy **páros permutáció** maximális inverziószámát kérdezi!

Egy permutáció paritását megváltoztathatjuk, ha két szomszédos elemét felcseréljük.
Ha egy permutációban felcserélünk két olyan szomszédos elemet, amelyek inverzióban álltak egymással, akkor az inverziók száma pontosan 1-gyel csökken:
$$I(\pi') = I(\pi) - 1.$$
Cseréljük fel a maximális permutáció utolsó két elemét: a $2$-t és az $1$-et:
$$\pi = (6, 5, 4, 3, 1, 2).$$
Számítsuk ki $\pi$ inverzióinak számát:
- A $6, 5, 4, 3$ elemek egymás között és az $1, 2$ elemekkel szemben is mind inverzióban vannak.
- Az egyetlen pár, amely nincs inverzióban, az $(1, 2)$, hiszen $1 < 2$.
Ezért az inverziók száma:
$$I(\pi) = 15 - 1 = 14.$$
Mivel 14 páros szám, ez a $\pi$ valóban **páros permutáció**!

Mivel a 6 elemű permutációk között a lehetséges inverziószámok legfeljebb 15, és a 15 páratlan, 15 inverziójú páros permutáció nem létezhet.
A 14 inverziót viszont sikerült realizálnunk egy páros permutációval.
Így egy 6 elemű halmaz páros permutációjában a lehetséges maximális inverziószám:
$$\mathbf{14}.$$

::: elmelet
**Elméleti háttér — Inverziószám-maximum paritási megkötéssel.**
Egy $n$ elemű permutációban az inverziószám elméleti maximuma $\binom{n}{2}$.
A fordított sorrendű permutáció paritása $\binom{n}{2}$ paritásától függ:
- Ha $\binom{n}{2}$ páros ($n \equiv 0$ vagy $1 \pmod 4$), akkor a maximális inverziójú permutáció páros, így a páros maximum $\binom{n}{2}$, míg a páratlan maximum $\binom{n}{2} - 1$.
- Ha $\binom{n}{2}$ páratlan ($n \equiv 2$ vagy $3 \pmod 4$), akkor a maximális inverziójú permutáció páratlan, így a páros maximum $\binom{n}{2} - 1$, míg a páratlan maximum $\binom{n}{2}$.
Jelen esetben $n = 6 \implies \binom{6}{2} = 15$ páratlan, így a páros maximum $15 - 1 = 14$.
:::

## P7.10. feladat

Adjuk meg az alábbi permutációk diszjunkt ciklusfelbontását és előjelét:
(a) $\sigma_1 = (135)(24)(531)(14)$,
(b) $\sigma_2 = (1357246)(357)(1357246)^{-1}$,
(c) $\sigma_3 = [(12)(13)(14)]^{2026}$.

**Megoldás.**
A permutációk szorzásánál (kompozíciójánál) a standard egyetemi konvenciót követjük: **jobbról balra haladva hajtjuk végre a leképezéseket**, azaz $(f \circ g)(x) = f(g(x))$, először a jobb oldali tényező hat.

**(a) $\sigma_1 = (135)(24)(531)(14)$:**
Kövessük az egyes elemek útját a 4 ciklus szorzatán keresztül jobbról balra haladva:
- $1 \xrightarrow{(14)} 4 \xrightarrow{(24)} 2 \xrightarrow{} 2$: tehát $1 \mapsto 2$.
- $2 \xrightarrow{(24)} 4 \xrightarrow{} 4$: tehát $2 \mapsto 4$.
- $4 \xrightarrow{(14)} 1 \xrightarrow{(531)} 5 \xrightarrow{(135)} 1$: tehát $4 \mapsto 1$.
- $3 \xrightarrow{(531)} 1 \xrightarrow{(135)} 3$: tehát $3 \mapsto 3$ (helyben marad).
- $5 \xrightarrow{(531)} 3 \xrightarrow{(135)} 5$: tehát $5 \mapsto 5$ (helyben marad).
A diszjunkt ciklusfelbontás:
$$\sigma_1 = \mathbf{(124)}.$$
Előjel: Egy $k$ hosszú ciklus előjele $(-1)^{k-1}$.
A 3-ciklus előjele $(-1)^{3-1} = (-1)^2 = +1$.
Tehát $\sigma_1$ **páros permutáció** ($\operatorname{sgn}\sigma_1 = \mathbf{+1}$).

**(b) $\sigma_2 = (1357246)(357)(1357246)^{-1}$:**
Vegyük észre, hogy ez egy konjugálás: $\tau \sigma \tau^{-1}$ alakú kifejezés, ahol $\tau = (1357246)$ és $\sigma = (357)$.
A konjugálás alapvető tétele szerint tetszőleges ciklusra:
$$\tau (a_1 a_2 \dots a_k) \tau^{-1} = (\tau(a_1) \, \tau(a_2) \dots \tau(a_k)).$$
Számítsuk ki a $\tau$ hatását a $\sigma$ ciklus elemeire:
- $\tau(3) = 5$ (a 3 után az 5 áll),
- $\tau(5) = 7$ (az 5 után a 7 áll),
- $\tau(7) = 2$ (a 7 után a 2 áll).
Így közvetlenül adódik a diszjunkt ciklusfelbontás:
$$\sigma_2 = (\tau(3)\,\tau(5)\,\tau(7)) = \mathbf{(572)} = \mathbf{(257)}.$$
Előjel: A ciklus hossza 3, így előjele $(-1)^{3-1} = +1$.
Tehát $\sigma_2$ **páros permutáció** ($\operatorname{sgn}\sigma_2 = \mathbf{+1}$).
(A konjugálás megőrzi az előjelet: $\operatorname{sgn}(\tau \sigma \tau^{-1}) = \operatorname{sgn}\sigma = (-1)^{3-1} = +1$.)

**(c) $\sigma_3 = [(12)(13)(14)]^{2026}$:**
Először határozzuk meg az alappermutációt: $\pi = (12)(13)(14)$.
Kövessük az elemeket jobbról balra:
- $1 \xrightarrow{(14)} 4$,
- $4 \xrightarrow{(14)} 1 \xrightarrow{(13)} 3$,
- $3 \xrightarrow{(13)} 1 \xrightarrow{(12)} 2$,
- $2 \xrightarrow{(12)} 1$.
Így az alappermutáció egyetlen 4-ciklus:
$$\pi = (1432).$$
Egy 4 hosszú ciklus rendje pontosan 4, ami azt jelenti, hogy $\pi^4 = \text{id}$.
Redukáljuk a 2026-os kitevőt modulo 4:
$$2026 = 4 \cdot 506 + 2 \implies 2026 \equiv 2 \pmod 4.$$
Ezért:
$$\sigma_3 = \pi^{2026} = (\pi^4)^{506} \cdot \pi^2 = \text{id} \cdot \pi^2 = \pi^2.$$
Számítsuk ki a $\pi = (1432)$ 4-ciklus négyzetét:
- $1 \mapsto 3$,
- $4 \mapsto 2$,
- $3 \mapsto 1$,
- $2 \mapsto 4$.
Ez két független transzpozíció szorzatát adja:
$$\sigma_3 = \mathbf{(13)(24)}.$$
Előjel: Két transzpozíció szorzata, előjele $(-1) \cdot (-1) = +1$.
Tehát $\sigma_3$ **páros permutáció** ($\operatorname{sgn}\sigma_3 = \mathbf{+1}$).

::: elmelet
**Elméleti háttér — Ciklusműveletek, konjugálás és hatványozás.**
1. **Diszjunkt ciklusfelbontás:** Minden permutáció a véges alaphalmazon egyértelműen felbontható páronként diszjunkt ciklusok szorzatára. A diszjunkt ciklusok felcserélhetők egymással.
2. **Előjel kiszámítása:** Egy $k$ hosszú ciklus előjele $\operatorname{sgn}(c) = (-1)^{k-1}$. Ha a permutáció $r$ darab diszjunkt ciklusból áll (az 1 hosszúakat is beleértve), akkor $\operatorname{sgn}\pi = (-1)^{n - r}$.
3. **Konjugálás:** $\tau (a_1 \dots a_k) \tau^{-1} = (\tau(a_1) \dots \tau(a_k))$. A konjugálás a ciklusszerkezetet (és így az előjelet és a rendet) invariánsan hagyja.
4. **Hatványozás:** Ha a permutáció diszjunkt ciklusok szorzata, a ciklusok függetlenül hatványozódnak. A permutáció rendje a diszjunkt ciklushosszak legkisebb közös többszöröse: $o(\pi) = [k_1, k_2, \dots, k_r]$.
:::

## P7.11. feladat

Igazoljuk, hogy tetszőleges $(x_1 x_2 \dots x_k)$ ciklus felírható szomszédos transzpozíciók szorzataként az alábbi módon: $(x_1 \dots x_k) = (x_1 x_2)(x_2 x_3) \dots (x_{k-2} x_{k-1})(x_{k-1} x_k)$.

**Megoldás.**
Alkalmazzuk a jobbról balra kompozíció elvét a jobb oldali kifejezésre.
Jelölje a transzpozíciókat $\tau_j = (x_j x_{j+1})$ minden $j = 1, \dots, k-1$-re.
A bizonyítandó egyenlőség jobb oldala:
$$P = \tau_1 \tau_2 \dots \tau_{k-2} \tau_{k-1} = (x_1 x_2)(x_2 x_3) \dots (x_{k-1} x_k).$$
Először a jobb szélső transzpozíció, $\tau_{k-1} = (x_{k-1} x_k)$ hat, majd sorban balra haladva a többiek.

Kövessük végig az elemek képét:

1. **Az $x_k$ elem útja:**
- A jobb szélső $\tau_{k-1} = (x_{k-1} x_k)$ transzpozíció az $x_k$-t $x_{k-1}$-be viszi: $x_k \mapsto x_{k-1}$.
- A következő $\tau_{k-2} = (x_{k-2} x_{k-1})$ transzpozíció az $x_{k-1}$-et $x_{k-2}$-be viszi.
- $\dots$
- Végül a $\tau_1 = (x_1 x_2)$ transzpozíció az $x_2$-t $x_1$-be viszi.
Tehát az $x_k$ elem a teljes kompozíció alatt $x_1$-be képződik:
$$P(x_k) = x_1.$$

2. **Az $x_i$ elem útja, ahol $1 \le i \le k - 1$:**
- A sor jobb oldalán álló $\tau_{k-1}, \tau_{k-2}, \dots, \tau_{i+1}$ transzpozíciók mind olyan elemeket cserélnek fel, amelyek indexe szigorúan nagyobb $i$-nél (vagyis az $\{x_{i+1}, \dots, x_k\}$ halmazon hatnak). Ezért ezek mindegyike helyben hagyja $x_i$-t:
  $$x_i \mapsto x_i.$$
- Amikor a kiértékelés eléri a $\tau_i = (x_i x_{i+1})$ transzpozíciót, az az $x_i$-t átviszi $x_{i+1}$-be:
  $$x_i \mapsto x_{i+1}.$$
- Ezt követően a hátralévő transzpozíciók $\tau_{i-1}, \dots, \tau_1$. Ezek a transzpozíciók mind az $\{x_1, \dots, x_i\}$ halmazon hatnak, így az $x_{i+1}$ elemet egyikük sem mozdítja el:
  $$x_{i+1} \mapsto x_{i+1}.$$
Tehát tetszőleges $1 \le i \le k-1$ esetén az $x_i$ elem az $x_{i+1}$-be képződik:
$$P(x_i) = x_{i+1}.$$

3. **Minden egyéb elem ($y \notin \{x_1, \dots, x_k\}$):**
Mivel az $y$ elem egyetlen $\tau_j$ transzpozícióban sem szerepel, a szorzat egyetlen tagja sem mozdítja el:
$$P(y) = y.$$

Összegezve a leképezés hatását:
$$x_1 \mapsto x_2 \mapsto x_3 \mapsto \dots \mapsto x_{k-1} \mapsto x_k \mapsto x_1,$$
és minden más elem fix.
Ez pontosan megegyezik a bal oldalon álló $(x_1 x_2 \dots x_k)$ ciklus definíciójával.
Az egyenlőséget ezzel bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Ciklusok transzpozíciós felbontása és paritása.**
Ez a tétel igazolja, hogy egy tetszőleges $k$ hosszú ciklus felírható $k - 1$ darab transzpozíció szorzataként:
$$(x_1 \dots x_k) = (x_1 x_2)(x_2 x_3) \dots (x_{k-1} x_k).$$
Mivel minden transzpozíció előjele $-1$, a szorzat előjele:
$$\operatorname{sgn}(x_1 \dots x_k) = (-1)^{k-1}.$$
Mivel pedig minden permutáció diszjunkt ciklusok szorzata, közvetlen következmény, hogy **minden permutáció előáll transzpozíciók szorzataként** (a szimmetrikus csoportot generálják a transzpozíciók).
:::

## P7.12. feladat

Mutassuk meg, hogy tetszőleges $f \in S_n$ permutációra és tetszőleges $(x_1 x_2 \dots x_k) \in S_n$ ciklusra érvényes az alábbi azonosság: $f \circ (x_1 x_2 \dots x_k) \circ f^{-1} = (f(x_1) f(x_2) \dots f(x_k))$.

**Megoldás.**
Jelölje $\sigma = (x_1 x_2 \dots x_k)$ a megadott $k$-ciklust.
A ciklus definíciója szerint $\sigma(x_i) = x_{i+1}$ minden $1 \le i \le k-1$-re, $\sigma(x_k) = x_1$, és $\sigma(z) = z$ minden olyan $z$-re, amely nem szerepel a ciklusban ($z \notin \{x_1, \dots, x_k\}$).

Vizsgáljuk meg a bal oldalon álló $g = f \circ \sigma \circ f^{-1}$ permutáció hatását az alaphalmaz egy tetszőleges $y \in \{1, 2, \dots, n\}$ elemére.
Mivel $f$ bijekció a halmazon, minden $y$ elem egyértelműen felírható $y = f(x)$ alakban valamely $x \in \{1, \dots, n\}$ elemre, vagyis $x = f^{-1}(y)$.

Két esetet különböztetünk meg $x$ elhelyezkedése szerint:

1. **Eset: $x \in \{x_1, x_2, \dots, x_k\}$ (azaz $y = f(x_i)$ valamely $1 \le i \le k$-ra):**
Hajtsuk végre a leképezéseket jobbról balra:
- Először alkalmazzuk $f^{-1}$-et:
  $$f^{-1}(y) = f^{-1}(f(x_i)) = x_i.$$
- Ezután alkalmazzuk $\sigma$-t:
  Ha $i < k$, akkor $\sigma(x_i) = x_{i+1}$; ha $i = k$, akkor $\sigma(x_k) = x_1$.
- Végül alkalmazzuk $f$-et a kapott értékre:
  Ha $i < k$, akkor $f(\sigma(x_i)) = f(x_{i+1})$; ha $i = k$, akkor $f(\sigma(x_k)) = f(x_1)$.
Ez azt jelenti, hogy:
$$g(f(x_i)) = f(x_{i+1}) \quad (1 \le i \le k-1), \qquad g(f(x_k)) = f(x_1).$$
Ez pontosan azt mutatja, hogy a $g$ leképezés az $f(x_1), f(x_2), \dots, f(x_k)$ elemeket ciklikusan egymásba viszi:
$$f(x_1) \mapsto f(x_2) \mapsto \dots \mapsto f(x_k) \mapsto f(x_1).$$

2. **Eset: $x \notin \{x_1, x_2, \dots, x_k\}$ (azaz $y \notin \{f(x_1), \dots, f(x_k)\}$):**
- Alkalmazzuk $f^{-1}$-et: $f^{-1}(y) = x$.
- Mivel $x$ nem szerepel a $\sigma$ ciklusban, a $\sigma$ helyben hagyja: $\sigma(x) = x$.
- Végül alkalmazzuk $f$-et: $f(x) = y$.
Tehát:
$$g(y) = f(\sigma(f^{-1}(y))) = f(x) = y.$$
Vagyis minden olyan elem, amely nem eleme az $\{f(x_1), \dots, f(x_k)\}$ halmaznak, változatlan marad.

A két eset eredménye együttesen azt jelenti, hogy a $g = f \circ \sigma \circ f^{-1}$ leképezés megegyezik azzal a ciklussal, amelynek elemei az $f(x_1), f(x_2), \dots, f(x_k)$ számok:
$$f \circ (x_1 x_2 \dots x_k) \circ f^{-1} = (f(x_1) f(x_2) \dots f(x_k)).$$
Ezzel a tételt bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Konjugálás geometriája és a ciklusszerkezet megmaradása.**
A konjugálás az absztrakt algebra egyik legfontosabb művelete. Az $f \sigma f^{-1}$ kifejezés geometriailag úgy értelmezhető, mint a $\sigma$ transzformáció végrehajtása egy „új koordinátarendszerben”, amelyet az $f$ koordináta-transzformáció jelöl ki.
Közvetlen következmények:
1. Konjugáláskor a ciklus hossza nem változik.
2. Ha $\pi = c_1 c_2 \dots c_r$ diszjunkt ciklusok szorzata, akkor $f \pi f^{-1} = (f c_1 f^{-1}) \dots (f c_r f^{-1})$, így a konjugált permutáció ciklustípusa (a ciklushosszak multihalmaza) megegyezik az eredetivel.
3. Két permutáció $S_n$-ben akkor és csak akkor konjugált egymással, ha azonos a ciklustípusuk.
:::

## P7.13. feladat

Adott a $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 4 & 1 & 3 \end{pmatrix}$ permutáció.
(a) Írjuk fel a hozzá tartozó $P_\pi$ permutációs mátrixot (amelynek az $i$-edik sorában a $\pi(i)$-edik oszlopban áll 1-es, máshol 0).
(b) Számítsuk ki a mátrix determinánsát.
(c) Hogyan kapcsolódik a kapott determináns a permutáció inverziószámához és előjeléhez?

**Megoldás.**
**(a) A $P_\pi$ permutációs mátrix felírása:**
A definíció szerint a $P_\pi$ mátrix $(i, j)$ eleme:
$$(P_\pi)_{ij} = \begin{cases} 1, & \text{ha } j = \pi(i), \\ 0, & \text{ha } j \neq \pi(i). \end{cases}$$
A megadott $\pi$ permutáció értékei:
- 1. sor ($i = 1$): $\pi(1) = 2 \implies$ a 2. oszlopban áll 1-es: $(0, 1, 0, 0)$,
- 2. sor ($i = 2$): $\pi(2) = 4 \implies$ a 4. oszlopban áll 1-es: $(0, 0, 0, 1)$,
- 3. sor ($i = 3$): $\pi(3) = 1 \implies$ az 1. oszlopban áll 1-es: $(1, 0, 0, 0)$,
- 4. sor ($i = 4$): $\pi(4) = 3 \implies$ a 3. oszlopban áll 1-es: $(0, 0, 1, 0)$.
A permutációs mátrix tehát:
$$\mathbf{P_\pi = \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{pmatrix}}.$$

**(b) A determináns kiszámítása:**
Alkalmazzunk elemi sorcseréket a mátrix egységmátrixszá alakításához:
1. $S_1 \leftrightarrow S_3$ csere: $\begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{pmatrix}$ (1. csere),
2. $S_2 \leftrightarrow S_3$ csere: $\begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 1 & 0 \end{pmatrix}$ (2. csere),
3. $S_3 \leftrightarrow S_4$ csere: $\begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} = I_4$ (3. csere).
Mivel pontosan 3 darab sorcserét hajtottunk végre, és az egységmátrix determinánsa 1:
$$\det P_\pi = (-1)^3 \det I_4 = (-1) \cdot 1 = \mathbf{-1}.$$

**(c) A kapcsolat az inverziószámmal és az előjellel:**
Számítsuk ki a $\pi = (2, 4, 1, 3)$ permutáció inverzióit:
- A $2$ után álló kisebb: $1$ (1 db),
- A $4$ után álló kisebb: $1, 3$ (2 db),
- Az $1$ után álló kisebb: nincs (0 db),
- A $3$ után álló kisebb: nincs (0 db).
Az inverziók száma:
$$I(\pi) = 1 + 2 + 0 + 0 = 3.$$
A permutáció előjele (paritása):
$$\operatorname{sgn}(\pi) = (-1)^{I(\pi)} = (-1)^3 = -1.$$

Látható, hogy a determináns értéke és a permutáció előjele pontosan megegyezik:
$$\mathbf{\det P_\pi = \operatorname{sgn}(\pi) = (-1)^{I(\pi)}}.$$
Általánosan is igaz: minden $\pi \in S_n$ permutáció esetén a hozzá tartozó $P_\pi$ permutációs mátrix determinánsa pontosan a permutáció előjelével egyenlő:
$$\det P_\pi = \operatorname{sgn}(\pi).$$
Ez a determináns Leibniz-féle permutációs definíciójának közvetlen következménye: a $\det A = \sum_{\sigma \in S_n} \operatorname{sgn}(\sigma) \prod_{i=1}^n a_{i\sigma(i)}$ összegben a $P_\pi$ mátrixra kizárólag a $\sigma = \pi$ tag nem nulla, és annak értéke pontosan $\operatorname{sgn}(\pi) \cdot 1$.

::: elmelet
**Elméleti háttér — Permutációs mátrixok és a determináns definíciója.**
A $P_\pi$ permutációs mátrix az $e_i \mapsto e_{\pi(i)}$ bázistranszformáció mátrixa.
Alapvető tulajdonságai:
1. $P_\pi$ ortogonális mátrix: $P_\pi^{-1} = P_\pi^T = P_{\pi^{-1}}$.
2. A leképezés homomorfizmus: $P_{\pi \sigma} = P_\pi P_\sigma$ (oszlopvektoros/sorvektoros konvenciótól függően).
3. $\det(P_\pi) = \operatorname{sgn}(\pi) = (-1)^{I(\pi)}$.
Ez a kapcsolat megvilágítja a determináns előjelszabályának mély eredetét: a determináns előjele nem más, mint a sorok (vagy oszlopok) rendezéséhez szükséges transzpozíciók számának paritása.
:::

---

# 8. feladatsor — A determináns Leibniz-definíciója, Cramer-szabály, adjungált mátrix és speciális determinánsok

## P8.1. feladat

Egy $4 \times 4$-es $A = (a_{ij})$ mátrix determinánsának Leibniz-féle definíció szerinti kifejtésekor mi lesz az alábbi tagok előjele:
$$T_1 = a_{14}a_{23}a_{32}a_{41}, \qquad T_2 = a_{12}a_{21}a_{34}a_{43}, \qquad T_3 = a_{23}a_{41}a_{12}a_{34}?$$

**Megoldás.**
A determináns Leibniz-féle permutációs definíciója szerint egy $n \times n$-es mátrix determinánsa:
$$\det A = \sum_{\pi \in S_n} \operatorname{sgn}(\pi) \, a_{1\pi(1)} a_{2\pi(2)} \dots a_{n\pi(n)}.$$
Egy szorzat akkor tagja a determinánsnak, ha minden sorból és minden oszlopból pontosan egy tényezőt tartalmaz.
A tag előjelének meghatározásához:
1. Ha a tényezők nincsenek sorindex szerint növekvő sorrendbe rendezve, akkor a szorzás kommutativitását kihasználva átrendezzük őket úgy, hogy az első indexek $1, 2, \dots, n$ legyenek.
2. Ekkor a második (oszlop-) indexek egy $\pi \in S_n$ permutációt alkotnak.
3. A tag előjele a $\pi$ permutáció előjele: $\operatorname{sgn}(\pi) = (-1)^{I(\pi)}$, ahol $I(\pi)$ a permutáció inverzióinak száma.

Vizsgáljuk meg a megadott tagokat:

1. **$T_1 = a_{14}a_{23}a_{32}a_{41}$:**
A sorindexek már növekvő sorrendben állnak: $1, 2, 3, 4$.
Az oszlopindexek permutációja:
$$\pi_1 = (4, 3, 2, 1).$$
Ez a teljesen fordított sorrendű permutáció.
Számoljuk meg az inverziókat:
- 4 után kisebb: 3, 2, 1 (3 db),
- 3 után kisebb: 2, 1 (2 db),
- 2 után kisebb: 1 (1 db),
- 1 után: 0 db.
$$I(\pi_1) = 3 + 2 + 1 + 0 = 6.$$
Mivel $6$ páros szám, a permutáció előjele:
$$\operatorname{sgn}(\pi_1) = (-1)^6 = \mathbf{+1} \quad \text{(pozitív előjel, } \mathbf{+} \text{)}.$$

2. **$T_2 = a_{12}a_{21}a_{34}a_{43}$:**
A sorindexek itt is sorban állnak: $1, 2, 3, 4$.
Az oszlopindexek permutációja:
$$\pi_2 = (2, 1, 4, 3).$$
Inverziók száma:
- 2 után kisebb: 1 (1 db),
- 1 után: 0 db,
- 4 után kisebb: 3 (1 db),
- 3 után: 0 db.
$$I(\pi_2) = 1 + 0 + 1 + 0 = 2.$$
Mivel $2$ páros szám, az előjel:
$$\operatorname{sgn}(\pi_2) = (-1)^2 = \mathbf{+1} \quad \text{(pozitív előjel, } \mathbf{+} \text{)}.$$

3. **$T_3 = a_{23}a_{41}a_{12}a_{34}$:**
A tényezők nincsenek sorindex szerint rendezve! Rendezzük át a szorzatot az első indexek szerint növekvő sorrendbe:
$$T_3 = a_{12} \cdot a_{23} \cdot a_{34} \cdot a_{41}.$$
Az oszlopindexek sorozata:
$$\pi_3 = (2, 3, 4, 1).$$
Inverziók száma:
- 2 után kisebb: 1 (1 db),
- 3 után kisebb: 1 (1 db),
- 4 után kisebb: 1 (1 db),
- 1 után: 0 db.
$$I(\pi_3) = 1 + 1 + 1 + 0 = 3.$$
Mivel $3$ páratlan szám, az előjel:
$$\operatorname{sgn}(\pi_3) = (-1)^3 = \mathbf{-1} \quad \text{(negatív előjel, } \mathbf{-} \text{)}.$$
(Ciklussal ellenőrizve: $\pi_3 = (1 2 3 4)$ egy 4-ciklus, előjele $(-1)^{4-1} = -1$.)$

::: elmelet
**Elméleti háttér — A determináns Leibniz-féle definíciója és az előjelek.**
Egy $n \times n$-es mátrix determinánsának Leibniz-képlete:
$$\det A = \sum_{\pi \in S_n} \operatorname{sgn}(\pi) \prod_{i=1}^n a_{i\pi(i)}.$$
Az összeg $n!$ darab tagból áll. Minden tagban pontosan egy elem szerepel minden sorból és oszlopból („bástyaelhelyezés” a sakktáblán).
Ha a tagot tetszőleges sorrendben írjuk fel: $\prod_{k=1}^n a_{i_k j_k}$, akkor a tag előjele $\operatorname{sgn}(\sigma) \operatorname{sgn}(\pi)$, ahol $\sigma$ a sorindexek, $\pi$ az oszlopindexek permutációja.
A determináns oszlopok szerint kifejtve is ugyanazt adja, ami bizonyítja a $\det(A^T) = \det A$ alaptételt.
:::

## P8.2. feladat

Egy $5 \times 5$-ös $A = (a_{ij})$ determináns harmadik és ötödik oszlopa megegyezik ($a_{i3} = a_{i5}$ minden $i$-re). A determináns kifejtésében az $a_{15}a_{21}a_{33}a_{44}a_{52}$ tagot melyik másik tag ejti ki biztosan?

**Megoldás.**
Tekintsük a megadott $T = a_{15}a_{21}a_{33}a_{44}a_{52}$ tagot.
A sorindexek rendezettek: $1, 2, 3, 4, 5$.
Az oszlopindexek permutációja:
$$\pi = (5, 1, 3, 4, 2).$$
Számítsuk ki $\pi$ inverzióit:
- 5 után kisebb: 1, 3, 4, 2 (4 db),
- 1 után: 0 db,
- 3 után kisebb: 2 (1 db),
- 4 után kisebb: 2 (1 db),
- 2 után: 0 db.
$$I(\pi) = 4 + 0 + 1 + 1 + 0 = 6.$$
Mivel 6 páros, a $T$ tag a determinánsban **pozitív előjellel ($+1$)** szerepel:
$$+ a_{15}a_{21}a_{33}a_{44}a_{52}.$$

Mivel a 3. és az 5. oszlop megegyezik, cseréljük fel a $\pi$ permutációban a 3-as és 5-ös oszlopindexeket!
Ezzel a $\tau = (3 \, 5)$ transzpozícióval szorozzuk a permutációt:
$$\pi' = \tau \circ \pi = (3 \, 5) \circ (5, 1, 3, 4, 2) = (3, 1, 5, 4, 2).$$
A $\pi'$ oszlopputációhoz tartozó tag:
$$T' = a_{13}a_{21}a_{35}a_{44}a_{52}.$$

Hasonlítsuk össze a $T$ és $T'$ tagok értékét és előjelét:
1. **Értékük egyenlősége:**
A feladat feltétele szerint a 3. és 5. oszlop elemei soronként azonosak:
- az 1. sorban: $a_{15} = a_{13}$,
- a 3. sorban: $a_{33} = a_{35}$,
- a többi tényező ($a_{21}, a_{44}, a_{52}$) mindkét szorzatban változatlanul szerepel.
Ezért a két szorzat abszolút értéke megegyezik:
$$a_{15}a_{21}a_{33}a_{44}a_{52} = a_{13}a_{21}a_{35}a_{44}a_{52}.$$

2. **Előjelük ellentétessége:**
Mivel $\pi'$ egyetlen transzpozícióban különbözik $\pi$-től:
$$\operatorname{sgn}(\pi') = \operatorname{sgn}(\tau) \operatorname{sgn}(\pi) = (-1) \cdot (+1) = -1.$$
(Közvetlenül: $\pi' = (3, 1, 5, 4, 2)$ inverziói: $(3,1), (3,2), (5,4), (5,2), (4,2)$, $I(\pi') = 5$, így előjele $-1$.)

A determináns Leibniz-összegében ez a két tag így jelenik meg:
$$+ a_{15}a_{21}a_{33}a_{44}a_{52} - a_{13}a_{21}a_{35}a_{44}a_{52} = 0.$$
A két tag tökéletesen kiejti egymást.

A keresett tag tehát:
$$\mathbf{- a_{13}a_{21}a_{35}a_{44}a_{52}} \quad (\text{vagyis az } a_{13}a_{21}a_{35}a_{44}a_{52} \text{ tag negatív előjellel}).$$

::: elmelet
**Elméleti háttér — A determináns nullaságának kombinatorikus bizonyítása egyenlő oszlopok esetén.**
Ez a gondolatmenet a legmélyebb kombinatorikus magyarázata annak, hogy miért lesz 0 a determináns, ha két sora vagy oszlopa egyenlő:
Ha a $k$-adik és $\ell$-edik oszlop megegyezik, akkor a $\tau = (k \, \ell)$ transzpozícióval való szorzás fixpontmentes involúciót (párosítást) hoz létre az $S_n$ szimmetrikus csoporton: $\pi \leftrightarrow \tau \circ \pi$.
Mivel a két oszlop egyenlő, a szorzatok értéke páronként megegyezik.
Mivel $\tau$ transzpozíció, $\operatorname{sgn}(\tau \pi) = -\operatorname{sgn}(\pi)$, a két tag előjele mindig ellentétes.
Ezért az $n!$ darab tag pontosan $n!/2$ darab olyan párra bomlik, amelyekben a tagok összege 0, így $\det A = 0$.
:::

## P8.3. feladat

Egy $n \times n$-es $A$ mátrix determinánsa 5 ($n \ge 3$). Mennyi lesz annak a mátrixnak a determinánsa, amelyet úgy kapunk, hogy az $A$ mátrix első két sorát felcseréljük, majd egy harmadik sorát megszorozzuk 3-mal?

**Megoldás.**
Jelölje a kiindulási mátrixot $A$. A feladat szerint:
$$\det A = 5.$$

Kövesse nyomon a determináns értékének változását az elvégzett elemi sorműveletek hatására:

1. **Első lépés: Két sor felcserélése ($S_1 \leftrightarrow S_2$):**
A determináns alapvető tulajdonsága szerint két tetszőleges sor (vagy oszlop) felcserélése esetén a determináns értéke a $(-1)$-szeresére változik (előjelet vált).
Jelölje $A_1$ az első sorművelet után kapott mátrixot:
$$\det A_1 = -\det A = -5.$$

2. **Második lépés: Egy sor megszorzása egy számmal ($S_3 \leftarrow 3 S_3$):**
A determináns multilinearitása szerint, ha egy mátrix egyetlen sorát megszorozzuk egy $c$ skalárral, akkor a determináns értéke pontosan $c$-szeresére változik.
Jelölje $A_2$ a második lépés után kapott mátrixot, a szorzó $c = 3$:
$$\det A_2 = 3 \cdot \det A_1.$$
Behelyettesítve a korábbi értéket:
$$\det A_2 = 3 \cdot (-5) = \mathbf{-15}.$$

(Megjegyzés: A műveletek sorrendje felcserélhető, hiszen a skaláris szorzás kommutatív: $(-1) \cdot (3 \cdot 5) = -15$. Az eredmény nem függ attól sem, hogy a harmadik sort vagy bármely más sort szorozzuk meg 3-mal, amíg pontosan egy sort szorzunk.)

A kapott új mátrix determinánsa:
$$\mathbf{-15}.$$

::: elmelet
**Elméleti háttér — Elemi sorműveletek hatása a determinánsra.**
Elemi sorműveletek és hatásuk a determinánsra:
1. **Két sor felcserélése:** $\det(A') = -\det(A)$ (előjelváltás).
2. **Egy sor szorzása $c$ skalárral:** $\det(A') = c \det(A)$.
3. **Egy sor konstansszorosának hozzáadása egy másik sorhoz:** $\det(A') = \det(A)$ (nem változik!).
Ezek az összefüggések a mátrixszorzás nyelvére is lefordíthatók: az elemi sorműveletek elemi mátrixokkal ($E$) való balról szorzásnak felelnek meg ($A' = EA$), és a determinánsok szorzástétele miatt $\det(A') = \det(E) \det(A)$.
- Sorcsere elemi mátrixa: $\det(E_{\text{csere}}) = -1$,
- Sor skálázása: $\det(E_{\text{skála}}) = c$,
- Sor hozzáadása: $\det(E_{\text{hozzáad}}) = 1$.
:::

## P8.4. feladat

Legyenek $A$ és $B$ olyan $4 \times 4$-es valós mátrixok, amelyekre $\det A = 2$ és $\det B = 3$. Számítsuk ki az $M = A^T B^{-1} A^2$ mátrix determinánsát!

**Megoldás.**
Alkalmazzuk a determinánsok szorzástételét: tetszőleges négyzetes mátrixokra $\det(XY) = \det X \cdot \det Y$.
Több tényezős szorzatra kiterjesztve:
$$\det(A^T B^{-1} A^2) = \det(A^T) \cdot \det(B^{-1}) \cdot \det(A^2).$$

Használjuk fel a determináns alapvető tulajdonságait:
1. **Transzponált determinánsa:**
Egy mátrix és transzponáltjának determinánsa megegyezik:
$$\det(A^T) = \det A = 2.$$

2. **Inverz determinánsa:**
Mivel $\det B = 3 \neq 0$, a $B$ mátrix invertálható.
A $B B^{-1} = I$ egyenlőségből a szorzástétellel: $\det B \cdot \det(B^{-1}) = \det I = 1$, így:
$$\det(B^{-1}) = \frac{1}{\det B} = \frac{1}{3}.$$

3. **Hatvány determinánsa:**
A szorzástétel alapján $\det(A^2) = (\det A)^2$:
$$\det(A^2) = 2^2 = 4.$$

Helyettesítsük be ezeket az értékeket a determináns kifejezésébe:
$$\det(A^T B^{-1} A^2) = 2 \cdot \frac{1}{3} \cdot 4 = \frac{8}{3}.$$

A keresett determináns értéke:
$$\mathbf{\frac{8}{3}}.$$

::: elmelet
**Elméleti háttér — A determinánsok szorzástétele és algebrai szabályai.**
A determináns a négyzetes mátrixok $\operatorname{GL}_n(\mathbb{R})$ csoportjából a valós számok $\mathbb{R}^\times$ multiplikatív csoportjába menő csoporthomomorfizmus:
1. $\det(AB) = \det A \cdot \det B$,
2. $\det(A^k) = (\det A)^k$ ($k \in \mathbb{Z}$),
3. $\det(A^{-1}) = (\det A)^{-1}$,
4. $\det(A^T) = \det A$.
Bár a mátrixszorzás nem kommutatív ($AB \neq BA$), a determinánsok számok, így szorzatuk kommutatív: $\det(AB) = \det(BA)$. Ezért ciklikus vagy tetszőleges permutáció a mátrixszorzatban a determináns értékét nem változtatja meg.
:::

## P8.5. feladat

Legyenek $A, B, C$ olyan $n \times n$-es mátrixok, amelyekre $\det A = 5$, $\det B = 2$, $\det C = 4$. Mennyi lesz az $M = A^2 B^3 C^{-1} A^{-2}$ mátrix determinánsa?

**Megoldás.**
Alkalmazzuk a determinánsok szorzástételét a megadott szorzatmátrixra:
$$\det(A^2 B^3 C^{-1} A^{-2}) = \det(A^2) \cdot \det(B^3) \cdot \det(C^{-1}) \cdot \det(A^{-2}).$$
A hatványok és inverzek determinánsaira vonatkozó szabályok alapján:
$$\det(A^2) = (\det A)^2 = 5^2 = 25,$$
$$\det(B^3) = (\det B)^3 = 2^3 = 8,$$
$$\det(C^{-1}) = \frac{1}{\det C} = \frac{1}{4},$$
$$\det(A^{-2}) = (\det A)^{-2} = \frac{1}{(\det A)^2} = \frac{1}{5^2} = \frac{1}{25}.$$

Helyettesítsük be ezeket a számértékeket:
$$\det(A^2 B^3 C^{-1} A^{-2}) = 25 \cdot 8 \cdot \frac{1}{4} \cdot \frac{1}{25}.$$
Mivel a valós számok szorzása kommutatív és asszociatív, a $25$ és $\frac{1}{25}$ tényezők kiejtik egymást:
$$\det(A^2 B^3 C^{-1} A^{-2}) = 8 \cdot \frac{1}{4} = \mathbf{2}.$$

**Fontos megjegyzés a mátrixalgebra és a determináns viszonyáról:**
A mátrixok szintjén az $A^2$ és $A^{-2}$ tényezők **nem egyszerűsíthetők le**, mert a mátrixszorzás általában nem kommutatív: $A^2 (B^3 C^{-1}) A^{-2} \neq B^3 C^{-1}$!
Ugyanakkor az $M = A^2 (B^3 C^{-1}) A^{-2}$ mátrix nem más, mint a $B^3 C^{-1}$ mátrix konjugáltja (hasonló mátrixa) az $A^2$ mátrixszal.
Mivel hasonló mátrixok determinánsa mindig megegyezik:
$$\det(P X P^{-1}) = \det P \cdot \det X \cdot \frac{1}{\det P} = \det X,$$
ezért $\det M = \det(B^3 C^{-1}) = 8 \cdot \frac{1}{4} = 2$.
A determináns értéke tehát:
$$\mathbf{2}.$$

::: elmelet
**Elméleti háttér — Hasonló mátrixok determinánsa és a nyom invarianciája.**
Két mátrix, $X$ és $Y$ hasonló ($X \sim Y$), ha létezik olyan invertálható $P$ mátrix, amelyre $Y = P X P^{-1}$.
A szorzástétel közvetlen következménye, hogy a hasonló mátrixok determinánsa mindig megegyezik:
$$\det(P X P^{-1}) = \det P \cdot \det X \cdot (\det P)^{-1} = \det X.$$
Ez azt jelenti, hogy a determináns egy **bázisfüggetlen geometriai invariáns**: egy lineáris transzformáció determinánsa nem függ attól, hogy melyik bázisban írjuk fel a mátrixát.
:::

## P8.6. feladat

Számítsuk ki az alábbi determináns értékét a legalkalmasabb sor vagy oszlop szerinti kifejtéssel:
$$D = \begin{vmatrix} 2 & 0 & -1 & 3 \\ 0 & 0 & 4 & 0 \\ 1 & 5 & -2 & 1 \\ 3 & 0 & 0 & -2 \end{vmatrix}.$$

**Megoldás.**
Vizsgáljuk meg a mátrix sorait és oszlopait a nulla elemek száma szempontjából:
- Az 1. sorban egy nulla van,
- A **2. sorban három nulla van**, egyetlen nem nulla eleme $a_{23} = 4$,
- A **2. oszlopban szintén három nulla van**, egyetlen nem nulla eleme $a_{32} = 5$,
- A 4. sorban két nulla van.

A legkevesebb számolást az igényli, ha egy olyan sort vagy oszlopot választunk, amelyben a legtöbb nulla áll (itt 3 darab).
Válasszuk a **2. sort**!

A Laplace-féle kifejtési tétel szerint a 2. sor szerint kifejtve:
$$D = a_{21} A^*_{21} + a_{22} A^*_{22} + a_{23} A^*_{23} + a_{24} A^*_{24}.$$
Mivel $a_{21} = a_{22} = a_{24} = 0$, egyetlen tag marad:
$$D = a_{23} A^*_{23} = 4 \cdot (-1)^{2+3} M_{23} = -4 M_{23},$$
ahol $M_{23}$ a 2. sor és 3. oszlop elhagyásával kapott $3 \times 3$-as aldetermináns:
$$M_{23} = \begin{vmatrix} 2 & 0 & 3 \\ 1 & 5 & 1 \\ 3 & 0 & -2 \end{vmatrix}.$$

Most számítsuk ki ezt a $3 \times 3$-as $M_{23}$ determinánst.
Vegyük észre, hogy ennek **2. oszlopában** két darab nulla áll!
Fejtsük ki $M_{23}$-at a 2. oszlopa szerint:
$$M_{23} = 5 \cdot (-1)^{2+2} \begin{vmatrix} 2 & 3 \\ 3 & -2 \end{vmatrix} = 5 \cdot 1 \cdot (2 \cdot (-2) - 3 \cdot 3) = 5 \cdot (-4 - 9) = 5 \cdot (-13) = -65.$$

Helyettesítsük vissza $M_{23}$ értékét az eredeti kifejezésbe:
$$D = -4 \cdot M_{23} = -4 \cdot (-65) = \mathbf{260}.$$

*(Alternatív ellenőrzés a 2. oszlop szerinti első kifejtéssel):*
Ha az eredeti mátrixot a 2. oszlopa szerint fejtjük ki:
$$D = 5 \cdot (-1)^{3+2} \begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix} = -5 \cdot \begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix}.$$
A kapott $3 \times 3$-as mátrix 2. sora szerint kifejtve:
$$\begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix} = 4 \cdot (-1)^{2+2} \begin{vmatrix} 2 & 3 \\ 3 & -2 \end{vmatrix} = 4 \cdot (-13) = -52.$$
Ebből:
$$D = -5 \cdot (-52) = \mathbf{260}.$$
A két független számolási út azonos eredményt adott.
A determináns értéke:
$$\mathbf{260}.$$

::: elmelet
**Elméleti háttér — Laplace-kifejtés optimális megválasztása.**
Egy $n \times n$-es determináns kifejtése során az elvégzendő műveletek száma drasztikusan lecsökken, ha olyan sort vagy oszlopot választunk, amelyben a lehető legtöbb nulla található.
Ha egy sorban (vagy oszlopban) $n - 1$ darab nulla áll, a determináns egyetlen lépésben egyetlen $(n-1) \times (n-1)$-es determinánsra redukálódik:
$$\det A = a_{ij} (-1)^{i+j} M_{ij}.$$
Az előjel meghatározásánál a sakktáblaszabály ($(-1)^{i+j}$) elengedhetetlen, ahol a bal felső sarok ($a_{11}$) mindig pozitív.
:::

## P8.7. feladat

Írjuk fel az
$$A = \begin{pmatrix} 2 & 1 & 4 \\ 0 & 3 & 5 \\ 0 & 0 & 6 \end{pmatrix}$$
mátrix inverzében a második sor harmadik elemét a ferde kifejtési tétel (az adjungált mátrix képlete) alapján.

**Megoldás.**
A ferde kifejtési tétel alapvető következménye a mátrix inverzére vonatkozó explicit formula:
$$A^{-1} = \frac{1}{\det A} \operatorname{adj}(A),$$
ahol $\operatorname{adj}(A)$ a klasszikus adjungált mátrix, amely az előjeles aldeterminánsok mátrixának **transzponáltja**:
$$(\operatorname{adj}(A))_{ij} = A^*_{ji} = (-1)^{j+i} M_{ji}.$$
Ezért az inverz mátrix tetszőleges $(i, j)$ indexű eleme közvetlenül kiszámítható az alábbi képlettel:
$$(A^{-1})_{ij} = \frac{A^*_{ji}}{\det A} = \frac{(-1)^{j+i} M_{ji}}{\det A}.$$

A feladat az inverz mátrix **második sorának harmadik elemét** kérdezi, vagyis az $i = 2, j = 3$ pozíciót:
$$(A^{-1})_{23} = \frac{A^*_{32}}{\det A} = \frac{(-1)^{3+2} M_{32}}{\det A} = \frac{-M_{32}}{\det A}.$$
(Kiemelten fontos, hogy a transzponálás miatt a számlálóban az $A^*_{32}$ előjeles aldetermináns szerepel, nem pedig az $A^*_{23}$!)

Számítsuk ki a szükséges mennyiségeket:

1. **A determináns ($\det A$):**
Mivel $A$ felső háromszögmátrix, determinánsa a főátlóban lévő elemek szorzata:
$$\det A = 2 \cdot 3 \cdot 6 = 36.$$
Mivel $\det A = 36 \neq 0$, az inverz mátrix valóban létezik.

2. **Az $M_{32}$ aldetermináns:**
Az $M_{32}$ aldeterminánst úgy kapjuk, hogy az $A$ mátrixból töröljük a **3. sort** és a **2. oszlopot**:
$$M_{32} = \begin{vmatrix} 2 & 4 \\ 0 & 5 \end{vmatrix}.$$
Ennek értéke:
$$M_{32} = 2 \cdot 5 - 4 \cdot 0 = 10.$$

3. **Az előjeles aldetermináns ($A^*_{32}$):**
$$A^*_{32} = (-1)^{3+2} \cdot M_{32} = (-1) \cdot 10 = -10.$$

4. **Az inverz elem meghatározása:**
$$(A^{-1})_{23} = \frac{A^*_{32}}{\det A} = \frac{-10}{36} = -\frac{5}{18}.$$

*(Ellenőrzés):*
Tudjuk, hogy egy felső háromszögmátrix inverze szintén felső háromszögmátrix, főátlójában a diagonális elemek reciprokaival: $(A^{-1})_{11} = \frac{1}{2}, (A^{-1})_{22} = \frac{1}{3}, (A^{-1})_{33} = \frac{1}{6}$.
Az $A \cdot A^{-1} = I$ egyenlet 2. sorát az $A^{-1}$ 3. oszlopával szorozva:
$$0 \cdot (A^{-1})_{13} + 3 \cdot (A^{-1})_{23} + 5 \cdot (A^{-1})_{33} = 0.$$
Behelyettesítve $(A^{-1})_{33} = \frac{1}{6}$-ot:
$$3(A^{-1})_{23} + 5 \cdot \frac{1}{6} = 0 \iff 3(A^{-1})_{23} = -\frac{5}{6} \iff (A^{-1})_{23} = -\frac{5}{18}.$$
Az eredmény tökéletesen egyezik.

Az inverz mátrix keresett eleme:
$$\mathbf{(A^{-1})_{23} = -\frac{5}{18}}.$$

::: elmelet
**Elméleti háttér — A ferde kifejtési tétel és az adjungált formula.**
A ferde kifejtési tétel kimondja, hogy ha egy sor elemeit egy másik sor előjeles aldeterminánsaival szorozzuk össze, az összeg mindig 0:
$$\sum_{j=1}^n a_{ij} A^*_{kj} = \delta_{ik} \det A = \begin{cases} \det A, & \text{ha } i = k, \\ 0, & \text{ha } i \neq k. \end{cases}$$
Mátrixszorzásként megfogalmazva: $A \cdot (\operatorname{adj} A) = (\det A) \cdot I_n$.
Ebből $\det A \neq 0$ esetén közvetlenül adódik az inverz mátrix zárt képlete:
$$A^{-1} = \frac{1}{\det A} (\operatorname{adj} A), \qquad (A^{-1})_{ij} = \frac{A^*_{ji}}{\det A}.$$
Ez a képlet rendkívül gazdaságos, ha egy nagy mátrix inverzének csak egyetlen specifikus elemére vagyunk kíváncsiak, mert elkerüli a teljes inverzmátrix kiszámítását.
:::

## P8.8. feladat

Oldjuk meg a Cramer-szabállyal az alábbi lineáris egyenletrendszert:
$$\begin{aligned}
2x + y &= 3 \\
x - y &= 0
\end{aligned}$$

**Megoldás.**
Írjuk fel az egyenletrendszert mátrixos alakban: $A \mathbf{x} = \mathbf{b}$, ahol:
$$A = \begin{pmatrix} 2 & 1 \\ 1 & -1 \end{pmatrix}, \qquad \mathbf{x} = \begin{pmatrix} x \\ y \end{pmatrix}, \qquad \mathbf{b} = \begin{pmatrix} 3 \\ 0 \end{pmatrix}.$$

1. **Az együtthatómátrix determinánsa ($D$):**
$$D = \det A = \begin{vmatrix} 2 & 1 \\ 1 & -1 \end{vmatrix} = 2 \cdot (-1) - 1 \cdot 1 = -2 - 1 = -3.$$
Mivel $D = -3 \neq 0$, az egyenletrendszer determinánsa nem nulla, így a Cramer-szabály alkalmazható, és a rendszernek **egyértelmű megoldása** van.

2. **A módosított determinánsok kiszámítása:**
- A $D_x$ determinánst úgy kapjuk, hogy az $A$ mátrix első oszlopát helyettesítjük a jobb oldali $\mathbf{b}$ konstansvektorral:
$$D_x = \begin{vmatrix} 3 & 1 \\ 0 & -1 \end{vmatrix} = 3 \cdot (-1) - 1 \cdot 0 = -3.$$
- A $D_y$ determinánst úgy kapjuk, hogy az $A$ mátrix második oszlopát helyettesítjük a jobb oldali $\mathbf{b}$ vektorral:
$$D_y = \begin{vmatrix} 2 & 3 \\ 1 & 0 \end{vmatrix} = 2 \cdot 0 - 3 \cdot 1 = -3.$$

3. **Az ismeretlenek meghatározása a Cramer-szabállyal:**
$$x = \frac{D_x}{D} = \frac{-3}{-3} = \mathbf{1},$$
$$y = \frac{D_y}{D} = \frac{-3}{-3} = \mathbf{1}.$$

*(Ellenőrzés):*
- 1. egyenlet: $2(1) + 1 = 2 + 1 = 3$,
- 2. egyenlet: $1 - 1 = 0$.
Mindkét egyenlet maradéktalanul teljesül.

A megoldás:
$$\mathbf{x = 1, \quad y = 1}.$$

::: elmelet
**Elméleti háttér — A Cramer-szabály elmélete és alkalmazási feltételei.**
Legyen $A \mathbf{x} = \mathbf{b}$ egy $n$ ismeretlenes, $n$ egyenletből álló lineáris egyenletrendszer.
Ha az együtthatómátrix determinánsa nem nulla ($\det A \neq 0$), akkor a rendszernek egyértelmű megoldása van, és az ismeretlenek zárt alakban megadhatók determinánsok hányadosaként:
$$x_i = \frac{\det A_i}{\det A} \qquad (i = 1, 2, \dots, n),$$
ahol $A_i$ az a mátrix, amelyet $A$-ból úgy kapunk, hogy az $i$-edik oszlopát kicseréljük a jobb oldali $\mathbf{b}$ vektorra.
**Bizonyítás:** Az $\mathbf{x} = A^{-1} \mathbf{b} = \frac{1}{\det A} (\operatorname{adj} A) \mathbf{b}$ egyenlet koordinátánkénti kiírása pontosan az $A_i$ mátrix $i$-edik oszlop szerinti kifejtését adja.
Bár elméleti szempontból alapvető jelentőségű, numerikusan $n \ge 4$ esetén a Gauss-elimináció sokkal hatékonyabb.
:::

## P8.9. feladat

Legyen $Q$ egy $n \times n$-es valós ortogonális mátrix (azaz $Q^T Q = I$, ahol $I$ az egységmátrix). Bizonyítsuk be, hogy a $Q$ determinánsa csak $+1$ vagy $-1$ lehet.

**Megoldás.**
A feltétel szerint $Q \in \mathbb{R}^{n \times n}$ ortogonális mátrix, vagyis kielégíti az alábbi egyenletet:
$$Q^T Q = I.$$
Vegyük mindkét oldal determinánsát:
$$\det(Q^T Q) = \det I.$$
Tudjuk, hogy az egységmátrix determinánsa $1$:
$$\det I = 1.$$
A bal oldalra alkalmazzuk a determinánsok szorzástételét ($\det(AB) = \det A \cdot \det B$):
$$\det(Q^T Q) = \det(Q^T) \cdot \det Q.$$
Továbbá ismert tétel, hogy egy tetszőleges négyzetes mátrix transzponáltjának determinánsa megegyezik a mátrix determinánsával:
$$\det(Q^T) = \det Q.$$
Helyettesítsük ezt be a szorzatba:
$$\det(Q^T) \cdot \det Q = \det Q \cdot \det Q = (\det Q)^2.$$
Így az alábbi egyenletet kapjuk a valós számok körében:
$$(\det Q)^2 = 1.$$
Egy valós szám négyzete akkor és csak akkor 1, ha maga a szám $1$ vagy $-1$:
$$\det Q = \mathbf{\pm 1} \iff \det Q \in \{+1, -1\}.$$

Mindkét előjel valóban előfordul:
- Az identitás leképezés mátrixa $Q = I_n$ ortogonális, és $\det I_n = +1$ (irányítástartó transzformációk, elforgatások).
- A síkbeli tükrözés mátrixa $Q = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$ szintén ortogonális ($Q^T Q = I$), és determinánsa $\det Q = -1$ (irányításváltó transzformációk). $\blacksquare$

::: elmelet
**Elméleti háttér — Ortogonális mátrixok és az izometriák geometriája.**
Egy $Q$ valós mátrix akkor és csak akkor ortogonális, ha megtartja az euklideszi belső szorzatot: $\langle Q\mathbf{u}, Q\mathbf{v} \rangle = \langle \mathbf{u}, \mathbf{v} \rangle$, következésképpen távolságtartó (izometria).
Mivel a determináns abszolút értéke a paralelepipedon térfogatának megváltozási arányát méri, egy izometria nem változtathatja meg a térfogatot, így $|\det Q| = 1$.
- Ha $\det Q = +1$, a transzformáció **irányítástartó** (forgatás), a megfelelő csoport a speciális ortogonális csoport: $SO(n)$.
- Ha $\det Q = -1$, a transzformáció **irányításváltó** (tükrözést tartalmaz).
:::

## P8.10. feladat

Bizonyítsuk be, hogy ha egy $A \in \mathbb{Z}^{n \times n}$ egész elemű mátrixnak az inverze is kizárólag egész számokat tartalmaz ($A^{-1} \in \mathbb{Z}^{n \times n}$), akkor $\det A = +1$ vagy $\det A = -1$.

**Megoldás.**
A feltétel szerint mind az $A$ mátrix, mind pedig az $A^{-1}$ inverz mátrix minden eleme egész szám:
$$A \in \mathbb{Z}^{n \times n}, \qquad A^{-1} \in \mathbb{Z}^{n \times n}.$$

1. **Egész mátrix determinánsa egész:**
A determináns Leibniz-féle definíciója szerint:
$$\det M = \sum_{\pi \in S_n} \operatorname{sgn}(\pi) \prod_{i=1}^n m_{i\pi(i)}.$$
Mivel az egész számok gyűrűje zárt az összeadásra, kivonásra és szorzásra, bármely egész elemű mátrix determinánsa egész számok szorzatainak és előjeles összegeként maga is egész szám:
$$A \in \mathbb{Z}^{n \times n} \implies \det A \in \mathbb{Z},$$
$$A^{-1} \in \mathbb{Z}^{n \times n} \implies \det(A^{-1}) \in \mathbb{Z}.$$

2. **A szorzástétel alkalmazása:**
Az inverz definíciója szerint $A \cdot A^{-1} = I$, ahol $I$ az $n \times n$-es egységmátrix.
Alkalmazzuk a determinánsok szorzástételét:
$$\det(A \cdot A^{-1}) = \det A \cdot \det(A^{-1}).$$
Mivel az egységmátrix determinánsa 1:
$$\det A \cdot \det(A^{-1}) = 1.$$

3. **Következtetés a számelméletből:**
A kapott egyenlőség azt fejezi ki, hogy két egész szám, $u = \det A \in \mathbb{Z}$ és $v = \det(A^{-1}) \in \mathbb{Z}$ szorzata $1$:
$$u \cdot v = 1.$$
Az egész számok $\mathbb{Z}$ gyűrűjében az egyetlen invertálható elemek (egységek) a $+1$ és a $-1$.
Két egész szám szorzata kizárólag a következő két esetben lehet 1:
- $u = 1$ és $v = 1$,
- $u = -1$ és $v = -1$.
Ebből következik, hogy szükségszerűen:
$$\det A = \mathbf{+1} \quad \text{vagy} \quad \det A = \mathbf{-1}.$$
Ezzel az állítást bebizonyítottuk. $\blacksquare$

*(Kiegészítés — a megfordítás is igaz):*
Ha $A \in \mathbb{Z}^{n \times n}$ és $\det A = \pm 1$, akkor az inverz képlete $A^{-1} = \frac{1}{\det A} \operatorname{adj}(A) = \pm \operatorname{adj}(A)$. Mivel az adjungált mátrix elemei az eredeti mátrixból képzett $(n-1) \times (n-1)$-es aldeterminánsok (tehát egészek), az inverz mátrix automatikusan egész elemű lesz. Az ilyen mátrixokat **unimoduláris mátrixoknak** nevezzük ($A \in \operatorname{GL}_n(\mathbb{Z})$).

::: elmelet
**Elméleti háttér — Unimoduláris mátrixok és a $\operatorname{GL}_n(\mathbb{Z})$ csoport.**
Egy $A \in \mathbb{Z}^{n \times n}$ mátrix akkor és csak akkor invertálható az egész mátrixok gyűrűjében, ha $\det A \in \mathbb{Z}^\times = \{+1, -1\}$.
Ezek a mátrixok alkotják a $\operatorname{GL}_n(\mathbb{Z})$ általános lineáris csoportot az egészek felett.
Geometriai jelentés: a $\operatorname{GL}_n(\mathbb{Z})$ elemei pontosan azok a rács-transzformációk, amelyek a $\mathbb{Z}^n$ egész rácsot önmagára képezik le bijektíven, megőrizve a rács alapegységének térfogatát (hiszen $|\det A| = 1$).
:::

## P8.11. feladat

Legyen $A$ egy $n \times n$-es komplex elemű mátrix, amelyre teljesül, hogy $A = -\overline{A}^T$ (ferdén Hermite-féle mátrix). Mutassuk meg, hogy páratlan $n$ esetén a determináns értéke tisztán képzetes szám vagy nulla.

**Megoldás.**
A feltétel szerint:
$$A = -\overline{A}^T.$$
Vegyük mindkét oldal determinánsát:
$$\det A = \det\left(-\overline{A}^T\right).$$

Alkalmazzuk a determináns műveleti azonosságait a jobb oldalra:
1. **Skalár kiemelése:**
A $-\overline{A}^T$ mátrixot úgy kapjuk, hogy a $\overline{A}^T$ mátrix minden sorát megszorozzuk $(-1)$-gyel.
Mivel a mátrix mérete $n \times n$, mind az $n$ sorból kiemelünk egy $(-1)$-es faktort:
$$\det\left(-\overline{A}^T\right) = (-1)^n \det\left(\overline{A}^T\right).$$

2. **Transzponált determinánsa:**
Bármely négyzetes mátrix transzponáltjának determinánsa megegyezik a mátrix determinánsával:
$$\det\left(\overline{A}^T\right) = \det\left(\overline{A}\right).$$

3. **Konjugált mátrix determinánsa:**
A determináns Leibniz-képletében kizárólag a mátrix elemeinek szorzatai és összegei szerepelnek valós ($\pm 1$) együtthatókkal. Mivel a komplex konjugálás művelete felcserélhető az összeadással és a szorzással ($\overline{z_1 + z_2} = \overline{z_1} + \overline{z_2}$ és $\overline{z_1 z_2} = \overline{z_1}\,\overline{z_2}$):
$$\det\left(\overline{A}\right) = \overline{\det A}.$$

Összekapcsolva az eddigi lépéseket:
$$\det A = (-1)^n \, \overline{\det A}.$$

Használjuk ki a feladat feltételét, miszerint **$n$ páratlan szám**.
Páratlan $n$ esetén $(-1)^n = -1$.
Ezért az egyenlet:
$$\det A = -\overline{\det A}.$$

Elemezzük ezt a relációt a komplex számok algebrájában:
Írjuk fel a determinánst algebrai alakban: $\det A = u + iv$, ahol $u, v \in \mathbb{R}$.
Ekkor a konjugáltja $\overline{\det A} = u - iv$.
Behelyettesítve az egyenletbe:
$$u + iv = -(u - iv) = -u + iv.$$
Mindkét oldalból vonjunk le $iv$-t:
$$u = -u \iff 2u = 0 \iff u = 0.$$
Ez azt jelenti, hogy a $\det A$ komplex szám valós része szükségképpen nulla:
$$\operatorname{Re}(\det A) = 0.$$
Egy olyan komplex szám, amelynek valós része nulla, definíció szerint tisztán képzetes szám (ha $v \neq 0$), vagy nulla (ha $v = 0$).
Tehát $\det A$ értéke valóban **tisztán képzetes vagy nulla**. $\blacksquare$

::: elmelet
**Elméleti háttér — Hermite- és ferdén Hermite-féle mátrixok determinánsa.**
Legyen $A^* = \overline{A}^T$ a konjugált transzponált (adjungált).
1. **Hermite-féle mátrix ($A^* = A$):** $\det A = \overline{\det A} \implies \det A \in \mathbb{R}$ (mindig valós szám, tetszőleges $n$-re).
2. **Ferdén Hermite-féle mátrix ($A^* = -A$):** $\det A = (-1)^n \overline{\det A}$.
   - Ha $n$ páros: $\det A = \overline{\det A} \implies \det A \in \mathbb{R}$ (valós).
   - Ha $n$ páratlan: $\det A = -\overline{\det A} \implies \operatorname{Re}(\det A) = 0$ (tisztán képzetes vagy 0).
3. **Valós ferdén szimmetrikus mátrix ($A^T = -A, A \in \mathbb{R}^{n \times n}$):**
   Mivel valós, $\det A \in \mathbb{R}$, de páratlan $n$-re tisztán képzetes is kell legyen, így **$\det A = 0$**!
:::

## P8.12. feladat

Egy $n \times n$-es mátrix determinánsának kiszámításakor a mátrix minden sorát megfordítjuk (azaz az 1. oszlop a legutolsó helyre kerül, a 2. az utolsó előttire, és így tovább). Hogyan változik meg a determináns értéke?

**Megoldás.**
Jelölje az eredeti mátrix oszlopait $O_1, O_2, \dots, O_n$.
Ha a mátrix minden sorát megfordítjuk, az azt jelenti, hogy az oszlopok sorrendje fordítottjára változik:
$$O'_1 = O_n, \quad O'_2 = O_{n-1}, \quad \dots, \quad O'_n = O_1.$$
Ez az oszlopok átrendezése pontosan a „hátulról előre” permutációnak felel meg:
$$\rho = \begin{pmatrix} 1 & 2 & \dots & n \\ n & n-1 & \dots & 1 \end{pmatrix}.$$

A determináns multilineáris és alternáló tulajdonsága miatt, ha a mátrix oszlopait egy $\sigma \in S_n$ permutációval rendezzük át, akkor a determináns értéke a permutáció előjelével, $\operatorname{sgn}(\sigma)$-val szorzódik:
$$\det(O_{\sigma(1)}, \dots, O_{\sigma(n)}) = \operatorname{sgn}(\sigma) \cdot \det(O_1, \dots, O_n).$$

Számítsuk ki a $\rho$ fordított permutáció inverzióinak számát:
A $\rho = (n, n-1, \dots, 2, 1)$ sorozatban bármely két elem inverzióban áll egymással, hiszen ha $i < j$, akkor $\rho(i) > \rho(j)$.
Ezért az inverziók száma pontosan megegyezik az $n$ elem összes lehetséges párosításainak számával:
$$I(\rho) = \binom{n}{2} = \frac{n(n-1)}{2}.$$

A permutáció előjele tehát:
$$\operatorname{sgn}(\rho) = (-1)^{I(\rho)} = (-1)^{\frac{n(n-1)}{2}}.$$

Ezért az új mátrix determinánsa az eredeti determináns **$(-1)^{\frac{n(n-1)}{2}}$-szeresére változik**.

Vizsgáljuk meg a szorzó viselkedését $n$ modulo 4 maradéka szerint:
- Ha $n \equiv 0 \pmod 4$ ($n = 4k$): $\frac{4k(4k-1)}{2} = 2k(4k-1)$ páros $\implies \mathbf{+1}$ (nem változik).
- Ha $n \equiv 1 \pmod 4$ ($n = 4k+1$): $\frac{(4k+1)4k}{2} = 2k(4k+1)$ páros $\implies \mathbf{+1}$ (nem változik).
- Ha $n \equiv 2 \pmod 4$ ($n = 4k+2$): $\frac{(4k+2)(4k+1)}{2} = (2k+1)(4k+1)$ páratlan $\implies \mathbf{-1}$ (előjelet vált).
- Ha $n \equiv 3 \pmod 4$ ($n = 4k+3$): $\frac{(4k+3)(4k+2)}{2} = (4k+3)(2k+1)$ páratlan $\implies \mathbf{-1}$ (előjelet vált).

Összegezve: a determináns értéke
$$\mathbf{(-1)^{\frac{n(n-1)}{2}}\text{-szeresére változik}},$$
vagyis $n \equiv 0, 1 \pmod 4$ esetén **változatlan marad**, míg $n \equiv 2, 3 \pmod 4$ esetén **az ellentettjére változik**.

::: elmelet
**Elméleti háttér — Oszlopok permutálása és a $\binom{n}{2}$ paritása.**
Oszlopok átrendezése egy $\sigma$ permutációval a mátrixot jobbról szorozza a $P_\sigma$ permutációs mátrixszal: $A' = A P_\sigma$.
A szorzástétel szerint $\det A' = \det A \cdot \det P_\sigma = \operatorname{sgn}(\sigma) \det A$.
A tükrözés (fordított sorrend) inverziószáma a háromszögszám: $T_{n-1} = \binom{n}{2}$.
A paritás 4 periódus szerint váltakozik:
$$(-1)^{\binom{n}{2}} = (+1, -1, -1, +1, +1, -1, -1, +1, \dots) \quad (n = 1, 2, 3, 4, 5, 6, 7, 8, \dots).$$
:::

## P8.13. feladat

Bizonyítsuk be a kifejtési tétel segítségével, hogy az alábbi $n \times n$-es tridiagonális determináns értéke éppen $F_{n+1}$, az $(n+1)$-edik Fibonacci-szám ($F_1 = 1, F_2 = 1, F_3 = 2, \dots$):
$$D_n = \begin{vmatrix} 1 & 1 & 0 & \dots & 0 \\ -1 & 1 & 1 & \dots & 0 \\ 0 & -1 & 1 & \dots & 0 \\ \vdots & \vdots & \vdots & \ddots & 1 \\ 0 & 0 & 0 & -1 & 1 \end{vmatrix}.$$

**Megoldás.**
A megadott mátrix tridiagonális: a főátlójában csupa 1-esek állnak, a főátló feletti közvetlen mellékátlóban csupa 1-esek, a főátló alatti közvetlen mellékátlóban pedig csupa $-1$-esek.

1. **A rekurzió levezetése kifejtéssel:**
Fejtsük ki a $D_n$ determinánst az **első sora** szerint ($n \ge 3$ esetén).
Az első sorban csak az első két elem nem nulla: $a_{11} = 1$ és $a_{12} = 1$.
A kifejtési tétel alapján:
$$D_n = 1 \cdot (-1)^{1+1} M_{11} + 1 \cdot (-1)^{1+2} M_{12} = M_{11} - M_{12}.$$

- *Az $M_{11}$ aldetermináns vizsgálata:*
Az $M_{11}$ az 1. sor és 1. oszlop elhagyásával keletkezik.
A megmaradt részmátrix pontosan azonos struktúrájú, mint az eredeti mátrix, csak mérete $(n-1) \times (n-1)$.
Ezért:
$$M_{11} = D_{n-1}.$$

- *Az $M_{12}$ aldetermináns vizsgálata:*
Az $M_{12}$ az 1. sor és 2. oszlop elhagyásával keletkezik:
$$M_{12} = \begin{vmatrix} -1 & 1 & 0 & \dots & 0 \\ 0 & 1 & 1 & \dots & 0 \\ 0 & -1 & 1 & \dots & 0 \\ \vdots & \vdots & \vdots & \ddots & 1 \\ 0 & 0 & 0 & -1 & 1 \end{vmatrix}.$$
Vegyük észre, hogy ennek az $(n-1) \times (n-1)$-es mátrixnak az **első oszlopában** egyetlen nem nulla elem van: a bal felső sarokban álló $-1$.
Fejtsük ki ezt a determinánst az első oszlopa szerint:
$$M_{12} = (-1) \cdot (-1)^{1+1} \cdot D_{n-2} = - D_{n-2},$$
hiszen az 1. sor és 1. oszlop elhagyása után éppen a $D_{n-2}$ determináns marad vissza.

Helyettesítsük vissza a két aldeterminánst a kifejtési formulába:
$$D_n = D_{n-1} - (-D_{n-2}) = D_{n-1} + D_{n-2}.$$
Azt kaptuk tehát, hogy a determinánsok sorozata pontosan a **Fibonacci-rekurziót** elégíti ki:
$$D_n = D_{n-1} + D_{n-2} \qquad (n \ge 3).$$

2. **Kezdőértékek ellenőrzése:**
- $n = 1$: $D_1 = |1| = 1$. Mivel $F_2 = 1$, ezért $D_1 = F_2 = F_{1+1}$.
- $n = 2$: $D_2 = \begin{vmatrix} 1 & 1 \\ -1 & 1 \end{vmatrix} = 1 \cdot 1 - 1 \cdot (-1) = 1 + 1 = 2$. Mivel $F_3 = 2$, ezért $D_2 = F_3 = F_{2+1}$.

3. **Teljes indukciós lezárás:**
- A bázislépés $n = 1$ és $n = 2$ esetén teljesül.
- Tegyük fel, hogy valamely $k \ge 2$-re $D_{k-1} = F_k$ és $D_k = F_{k+1}$.
- Ekkor az indukciós lépés a rekurzió alapján:
$$D_{k+1} = D_k + D_{k-1} = F_{k+1} + F_k = F_{k+2} = F_{(k+1)+1}.$$
A teljes indukció elve alapján minden $n \ge 1$ egész számra érvényes:
$$\mathbf{D_n = F_{n+1}}.$$
Ezzel a tételt bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Tridiagonális determinánsok és a lineáris rekurziók.**
Egy általános tridiagonális mátrix esetén, ahol a főátlóban $a$, a felette lévő átlóban $b$, az alatta lévő átlóban $c$ áll, az első sor és oszlop szerinti kifejtés mindig az alábbi rekurziót eredményezi:
$$D_n = a D_{n-1} - bc D_{n-2}.$$
- Ha $a = 1, b = 1, c = -1$, akkor $bc = -1$, és a rekurzió: $D_n = D_{n-1} + D_{n-2}$ (Fibonacci-sorozat).
- Ha $a = 2, bc = 1$, akkor $D_n = 2D_{n-1} - D_{n-2} \implies D_n = n+1$ (számtani sorozat).
- Ha $a = 3, bc = 2$, akkor $D_n = 3D_{n-1} - 2D_{n-2} \implies D_n = 2^{n+1} - 1$ (mértani jelleg).
Ez a kapcsolat alapvető hidat képez a lineáris algebra és a diszkrét matematika között.
:::

---
