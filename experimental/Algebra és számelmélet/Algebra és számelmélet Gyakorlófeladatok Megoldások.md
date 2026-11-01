# Algebra és számelmélet – Gyakorlófeladatok Megoldások

Ez a kötet a *Gyakorlófeladatok* kötetben kitűzött valamennyi (296 darab) gyakorlófeladat teljes, részletes, lépésről lépésre kidolgozott megoldását tartalmazza. Minden megoldás megismétli a feladat kitűzését, részletes levezetést ad, kiemeli a végeredményt, és egy önálló `::: elmelet` blokkban összefoglalja a kapcsolódó fogalmakat, tételeket és tipikus típushibákat.

---

# Az 1. feladatsorhoz – Megoldások — Mátrixaritmetika, Gauss-elimináció és lineáris egyenletrendszerek

## Gy1.1.1. feladat

Oldjuk meg Gauss-eliminációval az alábbi lineáris egyenletrendszert:
$$\begin{aligned}
x + 2y - z &= 3 \\
3x - y + 2z &= 1 \\
2x - 3y + 3z &= -2
\end{aligned}$$

**Megoldás.**

Kibővített mátrix:
$$\left(\begin{array}{ccc|c}
1 & 2 & -1 & 3 \\
3 & -1 & 2 & 1 \\
2 & -3 & 3 & -2
\end{array}\right)
\xrightarrow{\substack{S_2 - 3S_1 \\ S_3 - 2S_1}}
\left(\begin{array}{ccc|c}
1 & 2 & -1 & 3 \\
0 & -7 & 5 & -8 \\
0 & -7 & 5 & -8
\end{array}\right)
\xrightarrow{S_3 - S_2}
\left(\begin{array}{ccc|c}
1 & 2 & -1 & 3 \\
0 & -7 & 5 & -8 \\
0 & 0 & 0 & 0
\end{array}\right)$$
A 3. sor kiesett, a rang 2, így van 1 szabad paraméter. Válasszuk $z = t \in \mathbb{R}$-t.
A 2. sorból: $-7y + 5t = -8 \implies y = \frac{5t + 8}{7}$.
Az 1. sorból: $x = 3 - 2y + z = 3 - \frac{10t + 16}{7} + t = \frac{21 - 10t - 16 + 7t}{7} = \frac{5 - 3t}{7}$.
**Végtelen sok megoldás:** $(x, y, z) = \left(\frac{5 - 3t}{7},\ \frac{8 + 5t}{7},\ t\right)$, $t \in \mathbb{R}$.

::: elmelet
**Elméleti háttér — Szabad változók és a megoldástér dimenziója.**

A Gauss-elimináció lépcsős alakjában a vezéregyeseket (pivot elemeket) nem tartalmazó oszlopokhoz tartozó ismeretlenek a *szabad változók*.
Ha a rendszer mátrixa $A \in \mathbb{R}^{m \times n}$ és rangja $r = \operatorname{rang}(A)$:
1. A kötött ismeretlenek (pivotok) száma pontosan $r$.
2. A szabad változók száma $n - r$ (dimenziótétel / rang-nullitási tétel).
3. A homogén rendszer megoldástere egy $n - r$ dimenziós altér $\mathbb{R}^n$-ben: $\dim(\ker A) = n - r$.
4. Az inhomogén rendszer tetszőleges partikuláris megoldásához hozzáadva a magtér (homogén rendszer) elemeit, az összes megoldás egy $n - r$ dimenziós affin alteret alkot: $x = x_0 + \ker A$.
:::

## Gy1.1.2. feladat

Oldjuk meg az alábbi lineáris egyenletrendszert:
$$\begin{aligned}
2x_1 + x_2 - x_3 + x_4 &= 3 \\
4x_1 + 2x_2 - 2x_3 + 3x_4 &= 7 \\
-2x_1 - x_2 + x_3 + 2x_4 &= 0
\end{aligned}$$

**Megoldás.**

Kibővített mátrix:
$$\left(\begin{array}{cccc|c}
2 & 1 & -1 & 1 & 3 \\
4 & 2 & -2 & 3 & 7 \\
-2 & -1 & 1 & 2 & 0
\end{array}\right)
\xrightarrow{\substack{S_2 - 2S_1 \\ S_3 + S_1}}
\left(\begin{array}{cccc|c}
2 & 1 & -1 & 1 & 3 \\
0 & 0 & 0 & 1 & 1 \\
0 & 0 & 0 & 3 & 3
\end{array}\right)
\xrightarrow{S_3 - 3S_2}
\left(\begin{array}{cccc|c}
2 & 1 & -1 & 1 & 3 \\
0 & 0 & 0 & 1 & 1 \\
0 & 0 & 0 & 0 & 0
\end{array}\right)$$
A 2. sorból közvetlenül $x_4 = 1$.
A vezérelemek az 1. és 4. oszlopban vannak, így $x_2 = u$ és $x_3 = v$ szabad paraméterek ($u, v \in \mathbb{R}$).
Az 1. sorból: $2x_1 + u - v + 1 = 3 \implies 2x_1 = 2 - u + v \implies x_1 = 1 - \frac{u}{2} + \frac{v}{2}$.
**Végtelen sok megoldás:** $(x_1, x_2, x_3, x_4) = \left(1 - \frac{u}{2} + \frac{v}{2},\ u,\ v,\ 1\right)$, ahol $u, v \in \mathbb{R}$.

::: elmelet
**Elméleti háttér — Több szabad változó és affin alterek reprezentációja.**

Ha a lépcsős alakban $k \ge 2$ oszlopban nincs vezérelem, akkor a rendszer $k$ paraméteres család formájában oldható meg:
$$x = x_{\text{partikuláris}} + t_1 v_1 + t_2 v_2 + \dots + t_k v_k \quad (t_i \in \mathbb{R}).$$
A $v_1, \dots, v_k$ irányvektorok a homogén egyenletrendszer fundamentális megoldásrendszerét (a $\ker A$ bázisát) alkotják. A bázisvektorok leolvasásának standard módja: rendre az egyik szabad paramétert 1-nek, a többit 0-nak választjuk, és meghatározzuk a kötött változók egyértelmű értékeit.
:::

## Gy1.2.1. feladat

Létezik-e olyan valós lineáris egyenletrendszer, amelynek pontosan 2026 megoldása van? És $\mathbb{Z}_2$ vagy $\mathbb{Z}_3$ felett?

**Megoldás.**

**Valós számok felett: NEM létezik.**
Ha $\mathbf{u} \ne \mathbf{v}$ két különböző megoldás, akkor minden $\lambda \in \mathbb{R}$-re $\mathbf{x}_\lambda = \lambda \mathbf{u} + (1 - \lambda)\mathbf{v}$ is megoldás:
$$A(\lambda \mathbf{u} + (1 - \lambda)\mathbf{v}) = \lambda A\mathbf{u} + (1 - \lambda)A\mathbf{v} = \lambda \mathbf{b} + (1 - \lambda)\mathbf{b} = \mathbf{b}.$$
Mivel $\mathbb{R}$ végtelen test, $\lambda$ végtelen sok értéket vehet fel, és $\mathbf{u} \ne \mathbf{v}$ miatt a vektorok mind különböznek. Így a megoldások száma $\mathbb{R}$ felett csak 0, 1 vagy $\infty$ lehet.

**Véges testek felett:**
Egy véges $\mathbb{F}_q$ test felett a konzisztens rendszer megoldásainak száma $q^k$, ahol $k$ a szabad változók száma.
- Mivel $2026 = 2 \cdot 1013$ nem prímhatvány, semmilyen véges test felett sem lehet egy lineáris egyenletrendszernek pontosan 2026 megoldása!

::: elmelet
**Elméleti háttér — A megoldáshalmaz mérete különböző testek felett.**
Egy $K$ test feletti konzisztens lineáris egyenletrendszer megoldáshalmaza a homogén megoldástér egy affin mellékosztálya: $\mathbf{x}_0 + V_0$. Ezért a megoldások száma megegyezik a $V_0$ altér számosságával: $|K|^{\dim V_0}$. Végtelen testnél ez 1 vagy $\infty$, véges testnél $q^k$.
:::

## Gy1.2.2. feladat

Mutassuk meg, hogy ha egy homogén lineáris egyenletrendszerben több ismeretlen van, mint egyenlet, akkor létezik nemtriviális megoldása.

**Megoldás.**

Legyen a rendszer $A\mathbf{x} = \mathbf{0}$, ahol $A \in \mathbb{R}^{n \times m}$ és $m > n$.
Alkalmazzunk Gauss-eliminációt az $A$ mátrixra. A kapott lépcsős alakban a vezérelemek száma a mátrix rangja, jelölje $r$.
Mivel minden sorban legfeljebb egy vezérelem lehet, ezért $r \le n$.
Mivel a feltevés szerint $n < m$, így $r < m$.
Ez azt jelenti, hogy a lépcsős alakban legalább $m - r \ge m - n \ge 1$ darab olyan oszlop van, amelyben nem áll vezérelem. Az ezekhez tartozó ismeretlenek szabad paraméterek.
Válasszunk egy szabad paramétert $1$-nek, a többi szabad paramétert $0$-nak. A visszahelyettesítés során a kötött ismeretlenek egyértelműen meghatározódnak.
Mivel legalább egy komponens $1 \ne 0$, ez a kapott megoldásvektor nem a zérusvektor, vagyis nemtriviális megoldás. $\blacksquare$

::: elmelet
**Elméleti háttér — A rang-nullitási tétel és a homogén rendszerek.**
A leképezés magjának dimenziója (a nullitás) $\dim \ker A = m - \operatorname{rang} A$. Ha $m > n$, akkor $\operatorname{rang} A \le n < m$, következésképpen $\dim \ker A \ge m - n \ge 1$. Mivel egy legalább 1 dimenziós vektortérben a nullvektoron kívül más vektorok is vannak, mindig létezik nemtriviális megoldás.
:::

## Gy1.3.1. feladat

Adott 5 valós szám úgy, hogy közülük bármelyik 4 összege rendre $10, 11, 12, 13, 14$. Határozzuk meg a számokat!

**Megoldás.**

Legyen a számok összege $S = x_1 + x_2 + x_3 + x_4 + x_5$.
Az 5 egyenlet:
$$S - x_1 = 10, \quad S - x_2 = 11, \quad S - x_3 = 12, \quad S - x_4 = 13, \quad S - x_5 = 14.$$
Összeadva a bal és jobb oldalakat:
$$5S - S = 4S = 10 + 11 + 12 + 13 + 14 = 60 \implies S = 15.$$
Ebből a számok:
$$x_1 = 15 - 10 = 5,$$
$$x_2 = 15 - 11 = 4,$$
$$x_3 = 15 - 12 = 3,$$
$$x_4 = 15 - 13 = 2,$$
$$x_5 = 15 - 14 = 1.$$
**A keresett számok: $5, 4, 3, 2, 1$.**

::: elmelet
**Elméleti háttér — Lineáris leképezés invertálása szimmetrikus mátrixokra.**
A rendszer mátrixa $J - I$, ahol $J$ a csupa 1-es mátrix. Ennek sajátértékei könnyen számíthatók: a csupa 1 sajátvektorhoz tartozó sajátérték $n - 1$, a nullösszegű vektorokhoz pedig $-1$, így ha $n \ne 1$, a mátrix invertálható.
:::

## Gy1.3.2. feladat

Oldjuk meg az alábbi egyenletrendszert a valós számok körében:
$$\begin{aligned}
x_1 + x_2 + x_3 + x_4 &= 10 \\
x_1 + x_2 + x_3 + x_5 &= 11 \\
x_1 + x_2 + x_4 + x_5 &= 12 \\
x_1 + x_3 + x_4 + x_5 &= 13 \\
x_2 + x_3 + x_4 + x_5 &= 14
\end{aligned}$$

**Megoldás.**

Jelölje $S = \sum_{i=1}^5 x_i$. Az egyenletek:
$$S - x_5 = 10, \quad S - x_4 = 11, \quad S - x_3 = 12, \quad S - x_2 = 13, \quad S - x_1 = 14.$$
Összegezve: $5S - S = 4S = 10 + 11 + 12 + 13 + 14 = 60 \implies S = 15$.
Innen:
$$x_1 = 15 - 14 = 1, \quad x_2 = 15 - 13 = 2, \quad x_3 = 15 - 12 = 3, \quad x_4 = 15 - 11 = 4, \quad x_5 = 15 - 10 = 5.$$
**Megoldás:** $(x_1, x_2, x_3, x_4, x_5) = (1, 2, 3, 4, 5)$.

::: elmelet
**Elméleti háttér — Hiányzó komponensek és diagonális elimináció.**

Ha egy lineáris egyenletrendszerben bizonyos egyenletekből hiányoznak változók (ritka mátrix / sparse matrix):
Az eliminációs lépések sorrendjét optimalizálni lehet a legkevesebb műveletet igénylő ismeretlenek kiküszöbölésével.
A Gauss-Jordan algoritmus során cél a redukált lépcsős alak (RREF), ahol minden pivot oszlopban a vezéregyes felett és alatt is csupa zérus áll. Ekkor a kötött változók értéke közvetlenül, visszahelyettesítés nélkül leolvasható.
:::

## Gy1.4.1. feladat

Határozzuk meg, hogy a valós $a$ paraméter mely értékeire van $0, 1$, illetve végtelen sok megoldása az alábbi egyenletrendszernek:
$$\begin{aligned}
ax + y &= 1 \\
x + ay &= a
\end{aligned}$$

**Megoldás.**

A determináns: $\det \begin{pmatrix} a & 1 \\ 1 & a \end{pmatrix} = a^2 - 1 = (a - 1)(a + 1)$.
- **Ha $a \ne 1$ és $a \ne -1$:** A determináns nemnulla, a Cramer-szabály szerint **pontosan 1 megoldás van**:
  $$x = \frac{\det \begin{pmatrix} 1 & 1 \\ a & a \end{pmatrix}}{a^2 - 1} = \frac{0}{a^2 - 1} = 0, \quad y = \frac{\det \begin{pmatrix} a & 1 \\ 1 & a \end{pmatrix}}{a^2 - 1} = \frac{a^2 - 1}{a^2 - 1} = 1.$$
- **Ha $a = 1$:**
  Mindkét egyenlet $x + y = 1$, így $y = 1 - x$. **Végtelen sok megoldás van.**
- **Ha $a = -1$:**
  Az 1. egyenlet: $-x + y = 1 \iff y - x = 1$.
  A 2. egyenlet: $x - y = -1 \iff y - x = 1$.
  A két egyenlet ekvivalens, így ekkor is **végtelen sok megoldás van**: $(x, x + 1)$, $x \in \mathbb{R}$.

::: elmelet
**Elméleti háttér — Cramer-szabály és determináns feltétel.**
$n \times n$-es rendszernél az egyértelmű megoldhatóság szükséges és elégséges feltétele $\det(A) \ne 0$. Ha $\det(A) = 0$, akkor vagy 0, vagy végtelen sok megoldás létezik, amit a kibővített mátrix rangja dönt el.
:::

## Gy1.4.2. feladat

Mely valós $k$ értékekre van végtelen sok megoldása a következő egyenletrendszernek?
$$\begin{aligned}
x + y + kz &= 1 \\
x + ky + z &= 1 \\
kx + y + z &= 1
\end{aligned}$$

**Megoldás.**

Adjuk össze a három egyenletet:
$$(k + 2)x + (k + 2)y + (k + 2)z = 3 \iff (k + 2)(x + y + z) = 3.$$
- Ha $k = -2$, akkor a bal oldal 0, a jobb oldal 3, így $0 = 3$ ellentmondás, **nincs megoldás**.
- Ha $k = 1$, mindhárom egyenlet $x + y + z = 1$, amelynek **végtelen sok megoldása van** (2 szabad paraméterrel).
- Ha $k \ne 1$ és $k \ne -2$: vonjuk ki az 1. egyenletet a 2.-ból és a 3.-ból:
  $(k - 1)y + (1 - k)z = 0 \iff (k - 1)(y - z) = 0 \implies y = z$.
  Hasonlóan $(k - 1)(x - z) = 0 \implies x = z$.
  Mivel $x = y = z$, a $(k + 2)(3x) = 3 \implies x = \frac{1}{k + 2}$.
  Ez egyértelmű megoldás.
**Végtelen sok megoldás kizárólag $k = 1$ esetén van.**

::: elmelet
**Elméleti háttér — Cirkuláns és szimmetrikus lineáris rendszerek.**

Egy rendszer ciklikus szimmetriája (cirkuláns együtthatómátrix) esetén az egyenletek összeadásával vagy Fourier-transzformációval a rendszer diagonális alakra transzformálható.
Az egyenletek összege: $\sum_{i=1}^n (\text{bal oldal}) = (\sum a_i) \sum x_j$.
Ha az együtthatók összege zérus vagy a paraméter kritikus értékét veszi fel, a mátrix determinánsa 0 lesz, ami a Kronecker–Capelli tétel alapján vagy ellentmondáshoz, vagy végtelen sok megoldáshoz vezet.
:::

## Gy1.5.1. feladat

Legyen $A \in \mathbb{R}^{n \times n}$. Igazoljuk, hogy ha az $A\mathbf{x} = \mathbf{0}$ rendszernek létezik nemnulla komplex megoldása, akkor $\det(A) = 0$.

**Megoldás.**

*Bizonyítás:* Tegyük fel indirekt, hogy $\det(A) \ne 0$.
Ekkor az $A$ mátrix invertálható $\mathbb{R}^{n \times n}$-ben, és minthogy $\mathbb{R} \subseteq \mathbb{C}$, invertálható $\mathbb{C}^{n \times n}$-ben is (inverze ugyanaz az $A^{-1}$ mátrix).
Szorozzuk be az $A\mathbf{z} = \mathbf{0}$ egyenletet balról $A^{-1}$-gyel:
$$A^{-1}(A\mathbf{z}) = A^{-1}\mathbf{0} \implies (A^{-1}A)\mathbf{z} = \mathbf{0} \implies I\mathbf{z} = \mathbf{0} \implies \mathbf{z} = \mathbf{0}.$$
Ez ellentmond annak, hogy létezik nemnulla megoldás.
Tehát szükségképpen $\det(A) = 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — Négyzetes mátrixok invertálhatósága és a rang.**

Négyzetes $A \in \mathbb{R}^{n \times n}$ mátrix esetén a következő tulajdonságok ekvivalensek:
1. $A$ invertálható (reguláris), létezik $A^{-1}$;
2. $\det(A) \neq 0$;
3. $\operatorname{rang}(A) = n$ (teljes rangú);
4. Az $Ax = 0$ homogén rendszernek csak a triviális $x = 0$ megoldása létezik ($\ker A = \{0\}$);
5. Bármely $b \in \mathbb{R}^n$ esetén az $Ax = b$ rendszer egyértelműen megoldható: $x = A^{-1}b$;
6. $A$ oszlopvektorai (és sorvektorai) lineárisan függetlenek $\mathbb{R}^n$-ben.
:::

## Gy1.5.2. feladat

Mutassuk meg, hogy ha egy valós együtthatós $A\mathbf{x} = \mathbf{b}$ rendszernek a komplex számok felett pontosan 1 megoldása van, akkor az a megoldás szükségszerűen valós!

**Megoldás.**

*Bizonyítás:* Legyen $\mathbf{z} \in \mathbb{C}^n$ az egyetlen komplex megoldás: $A\mathbf{z} = \mathbf{b}$.
Vegyük mindkét oldal koordinátánkénti komplex konjugáltját:
$$\overline{A\mathbf{z}} = \overline{\mathbf{b}}.$$
Mivel az $A$ mátrix és a $\mathbf{b}$ vektor elemei valósak, $\overline{A} = A$ és $\overline{\mathbf{b}} = \mathbf{b}$.
Továbbá a mátrixszorzás tulajdonsága miatt $\overline{A\mathbf{z}} = \overline{A}\,\overline{\mathbf{z}} = A\overline{\mathbf{z}}$.
Így:
$$A\overline{\mathbf{z}} = \mathbf{b}.$$
Ez azt jelenti, hogy $\overline{\mathbf{z}}$ is megoldása az egyenletrendszernek!
Mivel a feltevés szerint a rendszernek pontosan egy komplex megoldása van, a két megoldásnak meg kell egyeznie:
$$\overline{\mathbf{z}} = \mathbf{z}.$$
Egy komplex szám (illetve vektor) pontosan akkor egyezik meg a konjugáltjával, ha minden koordinátájának képzetes része nulla, vagyis $\mathbf{z} \in \mathbb{R}^n$.
Tehát a megoldás szükségszerűen valós. $\blacksquare$

::: elmelet
**Elméleti háttér — Komplex konjugálás mint automorfizmus.**
A komplex konjugálás megőrzi az összeadást és a szorzást ($\overline{z+w} = \bar{z}+\bar{w}$, $\overline{zw} = \bar{z}\bar{w}$). Valós együtthatós rendszerek megoldáshalmaza invariáns a konjugálásra, így az egyértelmű megoldás önmaga konjugáltja, tehát valós.
:::

## Gy1.6.1. feladat

Legyen $A \in \mathbb{R}^{3 \times 2}$, $B \in \mathbb{R}^{2 \times 4}$, $C \in \mathbb{R}^{4 \times 3}$. Milyen méretűek az alábbi kifejezések, amennyiben léteznek?
a) $ABC$
b) $CBA$
c) $A^T C^T B^T$
d) $B C A + I_2$

**Megoldás.**

a) $A(BC)$: $B(2 \times 4) \times C(4 \times 3) = BC(2 \times 3)$. Ekkor $A(3 \times 2) \times BC(2 \times 3) = ABC(3 \times 3)$. **Létezik, mérete $3 \times 3$.**
b) $C(4 \times 3) \times B(2 \times 4)$: a belső dimenziók $3 \ne 2$, így $CB$ nem létezik, **$CBA$ nem értelmezett**.
c) $A^T \in \mathbb{R}^{2 \times 3}$, $C^T \in \mathbb{R}^{3 \times 4}$, $B^T \in \mathbb{R}^{4 \times 2}$.
   $A^T C^T$ mérete $2 \times 4$, ezt megszorozva $B^T(4 \times 2)$-vel az eredmény $2 \times 2$-es. **Létezik, mérete $2 \times 2$** (megjegyzés: ez éppen $(C B A)$ transzponáltja lenne, ha létezne, de valójában $(B C A)^T$).
d) $B(2 \times 4) \times C(4 \times 3) = 2 \times 3$. Ezt megszorozva $A(3 \times 2)$-vel $BCA$ mérete $2 \times 2$. Az $I_2$ egységmátrix szintén $2 \times 2$-es. **Létezik, mérete $2 \times 2$.**

::: elmelet
**Elméleti háttér — Többtényezős mátrixszorzatok dimenziói.**
Ha $A_1, A_2, \dots, A_k$ rendre $d_0 \times d_1, d_1 \times d_2, \dots, d_{k-1} \times d_k$ méretűek, a szorzat láncolható és mérete $d_0 \times d_k$ lesz. Négyzetes mátrixokhoz azonos méretű egységmátrix adható.
:::

## Gy1.6.2. feladat

Számítsuk ki az $AB$ és $BA$ szorzatokat, ha
$$A = \begin{pmatrix} 1 \\ -2 \\ 3 \end{pmatrix}, \qquad B = \begin{pmatrix} 2 & 4 & -1 \end{pmatrix}.$$

**Megoldás.**

$A \in \mathbb{R}^{3 \times 1}$ oszlopvektor, $B \in \mathbb{R}^{1 \times 3}$ sorvektor.
1. **$AB$ (külső szorzat, dyadikus szorzat):**
   Mérete $(3 \times 1) \times (1 \times 3) = 3 \times 3$:
   $$AB = \begin{pmatrix} 1 \\ -2 \\ 3 \end{pmatrix} \begin{pmatrix} 2 & 4 & -1 \end{pmatrix} = \begin{pmatrix} 1 \cdot 2 & 1 \cdot 4 & 1 \cdot (-1) \\ -2 \cdot 2 & -2 \cdot 4 & -2 \cdot (-1) \\ 3 \cdot 2 & 3 \cdot 4 & 3 \cdot (-1) \end{pmatrix} = \begin{pmatrix} 2 & 4 & -1 \\ -4 & -8 & 2 \\ 6 & 12 & -3 \end{pmatrix}.$$
2. **$BA$ (belső szorzat, skaláris szorzat):**
   Mérete $(1 \times 3) \times (3 \times 1) = 1 \times 1$ (skalár):
   $$BA = \begin{pmatrix} 2 & 4 & -1 \end{pmatrix} \begin{pmatrix} 1 \\ -2 \\ 3 \end{pmatrix} = 2(1) + 4(-2) + (-1)(3) = 2 - 8 - 3 = -9.$$
   (Mátrixként $(-9)$.)

::: elmelet
**Elméleti háttér — Belső és külső szorzat.**
Egy oszlopvektor és egy sorvektor szorzata sorrendtől függően radikálisan eltérő: $BA = \mathbf{b} \cdot \mathbf{a}$ egy skalár (nyom, belső szorzat), míg $AB = \mathbf{a}\mathbf{b}^T$ egy 1 rangú mátrix (külső szorzat).
:::

## Gy1.7.1. feladat

Számítsuk ki az $A^2 - 3A + 2I_2$ mátrixot, ha $A = \begin{pmatrix} 2 & 1 \\ -1 & 3 \end{pmatrix}$.

**Megoldás.**

Számítsuk ki $A^2$-et:
$$A^2 = \begin{pmatrix} 2 & 1 \\ -1 & 3 \end{pmatrix} \begin{pmatrix} 2 & 1 \\ -1 & 3 \end{pmatrix} = \begin{pmatrix} 4 - 1 & 2 + 3 \\ -2 - 3 & -1 + 9 \end{pmatrix} = \begin{pmatrix} 3 & 5 \\ -5 & 8 \end{pmatrix}.$$
Ekkor:
$$3A = \begin{pmatrix} 6 & 3 \\ -3 & 9 \end{pmatrix}, \qquad 2I_2 = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}.$$
Összeadva:
$$A^2 - 3A + 2I_2 = \begin{pmatrix} 3 - 6 + 2 & 5 - 3 + 0 \\ -5 - (-3) + 0 & 8 - 9 + 2 \end{pmatrix} = \begin{pmatrix} -1 & 2 \\ -2 & 1 \end{pmatrix}.$$
**Eredmény:** $\begin{pmatrix} -1 & 2 \\ -2 & 1 \end{pmatrix}$.

::: elmelet
**Elméleti háttér — Mátrixpolinomok és a Cayley–Hamilton-tétel.**

Ha $P(x) = \sum_{k=0}^m c_k x^k$ egy egyváltozós polinom, a $P(A)$ mátrixpolinomot a hatványok behelyettesítésével definiáljuk: $P(A) = \sum_{k=0}^m c_k A^k$ (ahol $A^0 = I$).
*Cayley–Hamilton-tétel:* Minden négyzetes mátrix kielégíti a saját karakterisztikus polinomját: $p_A(A) = 0$, ahol $p_A(\lambda) = \det(\lambda I - A)$.
$2 \times 2$-es mátrixra $p_A(\lambda) = \lambda^2 - \operatorname{tr}(A)\lambda + \det(A)$, így $A^2 - \operatorname{tr}(A)A + \det(A)I = 0$, ami lehetővé teszi magas mátrixhatványok gyors redukcióját.
:::

## Gy1.7.2. feladat

Igazoljuk, hogy tetszőleges $A \in \mathbb{R}^{n \times n}$ mátrix felírható egy szimmetrikus és egy ferdén szimmetrikus (antiszimmetrikus) mátrix összegeként!

**Megoldás.**

*Konstrukció és bizonyítás:*
Tekintsük az alábbi két mátrixot:
$$A_{\text{szimm}} = \frac{A + A^T}{2}, \qquad A_{\text{anti}} = \frac{A - A^T}{2}.$$
1. **Összegük:**
   $$A_{\text{szimm}} + A_{\text{anti}} = \frac{A + A^T + A - A^T}{2} = \frac{2A}{2} = A.$$
2. **Szimmetrikus tulajdonság:**
   $$(A_{\text{szimm}})^T = \left(\frac{A + A^T}{2}\right)^T = \frac{A^T + (A^T)^T}{2} = \frac{A^T + A}{2} = A_{\text{szimm}}.$$
3. **Antiszimmetrikus tulajdonság:**
   $$(A_{\text{anti}})^T = \left(\frac{A - A^T}{2}\right)^T = \frac{A^T - (A^T)^T}{2} = \frac{A^T - A}{2} = -\frac{A - A^T}{2} = -A_{\text{anti}}.$$
A felbontás ráadásul egyértelmű, mert a szimmetrikus és ferdén szimmetrikus mátrixok altereinek metszete csak a nullmátrix. $\blacksquare$

::: elmelet
**Elméleti háttér — Szimmetrikus és antiszimmetrikus alterek direkt összege.**
A négyzetes mátrixok tere $\mathbb{R}^{n \times n} = \operatorname{Sym}_n \oplus \operatorname{Skew}_n$ direkt felbontású, a transzponálás operátor $+1$ és $-1$ sajátaltereire való bontásaként.
:::

## Gy1.8.1. feladat

Bizonyítsuk be, hogy két alsó háromszögmátrix szorzata alsó háromszögmátrix!

**Megoldás.**

*1. módszer (transzponálással):*
Legyen $L_1, L_2$ alsó háromszögmátrix. Ekkor $L_1^T$ és $L_2^T$ felső háromszögmátrixok.
A felső háromszögmátrixok szorzására vonatkozó tétel szerint $L_2^T L_1^T$ felső háromszögmátrix.
Ekkor a szorzat transzponáltja:
$$(L_2^T L_1^T)^T = (L_1^T)^T (L_2^T)^T = L_1 L_2.$$
Mivel egy felső háromszögmátrix transzponáltja alsó háromszögmátrix, $L_1 L_2$ alsó háromszög. $\blacksquare$

*2. módszer (indexes számolással):*
Legyen $i < j$. $(L_1 L_2)_{ij} = \sum_{k=1}^n a_{ik} b_{kj}$. Ha $k > i$, $a_{ik} = 0$. Ha $k \le i < j$, $b_{kj} = 0$. Minden tag 0. $\blacksquare$

::: elmelet
**Elméleti háttér — Háromszögmátrixok algebrája és a transzponálás antiautomorfizmusa.**

Az alsó (illetve felső) háromszögmátrixok részgyűrűt (sőt részalgebrát) alkotnak az $\mathbb{R}^{n \times n}$ mátrixgyűrűben:
1. Két alsó háromszögmátrix összege és szorzata is alsó háromszögmátrix;
2. A főátló elemei a szorzás során pontonként szorzódnak: $(AB)_{ii} = A_{ii} B_{ii}$;
3. Egy alsó háromszögmátrix pontosan akkor invertálható, ha a főátlóján nincs zérus, és az inverze is alsó háromszögmátrix.
A transzponálás megfordítja a háromszög-jelleget ($L^T = U$), és antiautomorfizmus: $(AB)^T = B^T A^T$.
:::

## Gy1.8.2. feladat

Legyen $U$ egy szigorúan felső háromszögmátrix (főátlójában és alatta csupa nulla áll). Igazoljuk, hogy $U^2$ főátlója feletti első mellékátlójában is csupa nulla áll!

**Megoldás.**

A feltevés szerint $u_{ik} = 0$, ha $k \le i$.
Tekintsük $U^2$ elemeit: $(U^2)_{ij} = \sum_{k=1}^n u_{ik} u_{kj}$.
Ahhoz, hogy $u_{ik} \ne 0$ legyen, szükséges, hogy $k \ge i + 1$.
Ahhoz, hogy $u_{kj} \ne 0$ legyen, szükséges, hogy $j \ge k + 1 \ge (i + 1) + 1 = i + 2$.
Tehát ha $j \le i + 1$ (azaz a főátlóban $j = i$ vagy az első mellékátlóban $j = i + 1$), akkor nincs olyan $k$, amelyre mindkét tényező nemnulla lenne!
Következésképpen $(U^2)_{ij} = 0$, ha $j - i \le 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Szigorúan háromszögmátrixok és a nilpotencia.**

Egy $U$ mátrix *szigorúan felső háromszögmátrix*, ha a főátlójában és alatta minden elem zérus ($u_{ij} = 0$, ha $i \ge j$).
Minden ilyen mátrix nilpotens: $U^n = 0$, ahol $n$ a mátrix mérete.
Hatványozáskor a zérusok átlói lépésről lépésre tolódnak felfelé: $U^k$ elemei csak a $j - i \ge k$ sávban lehetnek nemnullák. A nilpotencia indexe legfeljebb $n$.
:::

## Gy1.9.1. feladat

Bizonyítsuk be az indexes jelöléssel a mátrixszorzás bal oldali disztributivitását: ha $A \in \mathbb{R}^{n \times m}$ és $B, C \in \mathbb{R}^{m \times k}$, akkor $A(B + C) = AB + AC$.

**Megoldás.**

*Bizonyítás:*
Mindkét oldal $n \times k$ méretű.
Vizsgáljuk az $(i, j)$ elemet:
$$(A(B + C))_{ij} = \sum_{r=1}^m a_{ir} (B + C)_{rj} = \sum_{r=1}^m a_{ir} (b_{rj} + c_{rj}).$$
A valós számok szorzásának disztributivitása miatt $a_{ir}(b_{rj} + c_{rj}) = a_{ir}b_{rj} + a_{ir}c_{rj}$, így:
$$\sum_{r=1}^m (a_{ir}b_{rj} + a_{ir}c_{rj}) = \sum_{r=1}^m a_{ir}b_{rj} + \sum_{r=1}^m a_{ir}c_{rj} = (AB)_{ij} + (AC)_{ij} = (AB + AC)_{ij}.$$
Mivel ez minden $i, j$-re teljesül, $A(B + C) = AB + AC$. $\blacksquare$

::: elmelet
**Elméleti háttér — Mátrixszorzás indexes definíciója és asszociativitása.**

Ha $A \in \mathbb{R}^{m \times k}$ és $B \in \mathbb{R}^{k \times n}$, a szorzatkomponensek definíciója:
$$(AB)_{ij} = \sum_{r=1}^k a_{ir} b_{rj}.$$
Az asszociativitás $(AB)C = A(BC)$ bizonyítása a kettős összegzés felcserélhetőségéből következik:
$$((AB)C)_{ij} = \sum_s (AB)_{is} c_{sj} = \sum_s \left(\sum_r a_{ir} b_{rs}\right) c_{sj} = \sum_r a_{ir} \left(\sum_s b_{rs} c_{sj}\right) = (A(BC))_{ij}.$$
A mátrixszorzás a lineáris leképezések kompozíciójának felel meg, és a leképezések kompozíciója mindig asszociatív.
:::

## Gy1.9.2. feladat

Igaz-e, hogy ha $AB = AC$ és $A \ne 0$, akkor $B = C$? Adjunk bizonyítást vagy ellenpéldát!

**Megoldás.**

**NEM igaz (nem lehet egyszerűsíteni nemnulla mátrixszal).**
*Ellenpélda:* Legyen
$$A = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \quad B = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}, \quad C = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}.$$
Ekkor $B \ne C$, és:
$$AB = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix},$$
$$AC = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}.$$
Tehát $AB = AC = 0$, holott $A \ne 0$ és $B \ne C$.
*(Egyszerűsíteni csak invertálható $A$ esetén szabad, balról $A^{-1}$-gyel szorozva.)*

::: elmelet
**Elméleti háttér — Zérusosztók a mátrixgyűrűben és egyszerűsíthetőség.**

A mátrixszorzás nem kommutatív ($AB \neq BA$), és az $\mathbb{R}^{n \times n}$ mátrixgyűrű nem integritási tartomány: léteznek zérusosztók, azaz nemnulla mátrixok, amelyek szorzata zérus ($AB = 0$, holott $A \neq 0$ és $B \neq 0$).
Ennek közvetlen következménye, hogy az $AB = AC$ egyenlőségből $A \neq 0$ esetén NEM következik $B = C$!
Az egyszerűsítés csak akkor megengedett, ha $A$ *invertálható*, ugyanis ekkor balról szorozhatunk $A^{-1}$-gyel: $A^{-1}(AB) = A^{-1}(AC) \implies B = C$.
:::

## Gy1.10.1. feladat

Határozzuk meg az $X \in \mathbb{R}^{2 \times 2}$ mátrixot, ha
$$\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} X = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}.$$

**Megoldás.**

Legyen $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$. Mivel $\det(A) = 1(4) - 2(3) = -2 \ne 0$, $A$ invertálható:
$$A^{-1} = \frac{1}{-2}\begin{pmatrix} 4 & -2 \\ -3 & 1 \end{pmatrix} = \begin{pmatrix} -2 & 1 \\ 3/2 & -1/2 \end{pmatrix}.$$
Ekkor $X = A^{-1} B$:
$$X = \begin{pmatrix} -2 & 1 \\ 3/2 & -1/2 \end{pmatrix} \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix} = \begin{pmatrix} -10 + 7 & -12 + 8 \\ 15/2 - 7/2 & 18/2 - 8/2 \end{pmatrix} = \begin{pmatrix} -3 & -4 \\ 4 & 5 \end{pmatrix}.$$
(Ellenőrzés: $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}\begin{pmatrix} -3 & -4 \\ 4 & 5 \end{pmatrix} = \begin{pmatrix} -3+8 & -4+10 \\ -9+16 & -12+20 \end{pmatrix} = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$.)
**Eredmény:** $X = \begin{pmatrix} -3 & -4 \\ 4 & 5 \end{pmatrix}$.

::: elmelet
**Elméleti háttér — Mátrixegyenletek megoldása invertálással.**
Az $AX = B$ egyenlet invertálható $A$ esetén egyértelműen megoldható balról $A^{-1}$-gyel szorozva: $X = A^{-1}B$. Nem invertálható $A$ esetén oszloponkénti Gauss-eliminációval oldható meg.
:::

## Gy1.10.2. feladat

Létezik-e olyan $2 \times 2$-es $X$ mátrix, amelyre
$$\begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} X = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}?$$

**Megoldás.**

Jelölje $A = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix}$. Vegyük észre, hogy $A$ második sora az első sor kétszerese: $S_2 = 2S_1$.
A mátrixszorzás sorkombinációs tulajdonsága miatt tetszőleges $X$ mátrix esetén az $AX$ szorzat második sora is az első sorának pontosan a kétszerese kell legyen:
$$(AX)_{2,*} = 2(AX)_{1,*}.$$
A jobb oldalon azonban az identitásmátrix áll, amelynek első sora $(1, 0)$, második sora $(0, 1)$, és nyilván $(0, 1) \ne 2(1, 0) = (2, 0)$.
Ellentmondás, tehát **nem létezik ilyen $X$ mátrix** (az $A$ mátrixnak nem létezik jobbinverze, mert nem teljes rangú).

::: elmelet
**Elméleti háttér — Mátrixegyenletek és a determináns multiplikativitása.**

Egy $X^2 = A$ alakú mátrixegyenlet vizsgálatakor a determinánsok szorzástétele $\det(AB) = \det(A)\det(B)$ azonnali szükséges feltételeket ad:
$$\det(X^2) = (\det X)^2 = \det(A).$$
Ha a valós számok felett $\det(A) < 0$, akkor a valós $\det(X)$ négyzete nem lehet negatív, így semmilyen valós mátrixmegoldás nem létezhet!
Ez a spektrálelmélet fundamentális tesztje: valós négyzetgyök létezéséhez a negatív sajátértékeknek páros multiplicitással kell szerepelniük.
:::

## Gy1.11.1. feladat

Keressük meg az összes olyan $A \in \mathbb{R}^{2 \times 2}$ mátrixot, amely kommutál a $J = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$ mátrixszal ($AJ = JA$)!

**Megoldás.**

Legyen $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$.
$$AJ = \begin{pmatrix} a & b \\ c & d \end{pmatrix} \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} = \begin{pmatrix} -b & a \\ -d & c \end{pmatrix},$$
$$JA = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} \begin{pmatrix} a & b \\ c & d \end{pmatrix} = \begin{pmatrix} c & d \\ -a & -b \end{pmatrix}.$$
Összevetve az elemeket:
$-b = c \implies c = -b$,
$a = d \implies d = a$,
$-d = -a$ (azonos),
$c = -b$ (azonos).
Tehát a mátrixok alakja:
$$A = \begin{pmatrix} a & b \\ -b & a \end{pmatrix} = a\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} + b\begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}, \qquad a, b \in \mathbb{R}.$$
*(Ez a halmaz izomorf a komplex számok testével: $a + bi \leftrightarrow \begin{pmatrix} a & b \\ -b & a \end{pmatrix}$.)*

::: elmelet
**Elméleti háttér — A centralizátor és a komplex számok mátrixmodellje.**
Egy mátrixszal kommutáló mátrixok halmaza (a centralizátor) részgyűrűt alkot. A $J^2 = -I$ tulajdonságú mátrix centralizátora $\mathbb{R}^{2 \times 2}$-ben egy 2-dimenziós mező, amely izomorf $\mathbb{C}$-vel.
:::

## Gy1.11.2. feladat

Határozzuk meg azokat a $2 \times 2$-es valós mátrixokat, amelyek minden $2 \times 2$-es valós mátrixszal kommutálnak!

**Megoldás.**

Legyen $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ olyan mátrix, amelyre $AX = XA$ minden $X \in \mathbb{R}^{2 \times 2}$-re.
Teszteljük az elemi mátrixokon:
1. $X = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$:
   $$AX = \begin{pmatrix} a & 0 \\ c & 0 \end{pmatrix}, \quad XA = \begin{pmatrix} a & b \\ 0 & 0 \end{pmatrix} \implies b = 0 \text{ és } c = 0.$$
   Tehát $A$ diagonális: $A = \begin{pmatrix} a & 0 \\ 0 & d \end{pmatrix}$.
2. $X = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$:
   $$AX = \begin{pmatrix} 0 & a \\ 0 & 0 \end{pmatrix}, \quad XA = \begin{pmatrix} 0 & d \\ 0 & 0 \end{pmatrix} \implies a = d.$$
Tehát $A = \begin{pmatrix} a & 0 \\ 0 & a \end{pmatrix} = a I_2$.
Könnyen ellenőrizhető, hogy bármely skalármátrix ($aI$) valóban minden mátrixszal kommutál: $(aI)X = a(IX) = aX = X(aI)$.
**A keresett mátrixok a skalármátrixok:** $A = c I_2$, ahol $c \in \mathbb{R}$.

::: elmelet
**Elméleti háttér — A mátrixalgebra centruma (Schur-lemma előkészítés).**
Az $\mathbb{R}^{n \times n}$ mátrixgyűrű centruma (a minden elemmel kommutáló mátrixok) kizárólag a skalármátrixokból áll: $Z(\mathbb{R}^{n \times n}) = \{c I_n : c \in \mathbb{R}\}$. Ez mutatja, hogy a mátrixalgebra egyszerű algebra.
:::

## Gy1.12.1. feladat

Legyen $N \in \mathbb{R}^{3 \times 3}$ a nilpotens léptetőmátrix:
$$N = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}.$$
Számítsuk ki az $(I_3 - N)^{-1}$ mátrix inverzét a geometriai sor formula segítségével!

**Megoldás.**

Mivel $N^3 = 0$, a skalár $\frac{1}{1 - x} = 1 + x + x^2 + \dots$ formula mintájára:
$$(I - N)(I + N + N^2) = I - N^3 = I - 0 = I.$$
Ezért $(I - N)^{-1} = I + N + N^2$.
Számítsuk ki $N^2$-et:
$$N^2 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}.$$
Összeadva:
$$(I - N)^{-1} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} + \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix} + \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix}.$$
(Ellenőrzés: $\begin{pmatrix} 1 & -1 & 0 \\ 0 & 1 & -1 \\ 0 & 0 & 1 \end{pmatrix}\begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = I$.)
**Eredmény:** $\begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix}$.

::: elmelet
**Elméleti háttér — Nilpotens operátorok és a formális Neumann-sor.**

Ha egy $N$ mátrix nilpotens ($N^k = 0$), akkor az $I - N$ mátrix mindig invertálható, és inverze egy véges geometriai sor (Neumann-sor):
$$(I - N)^{-1} = I + N + N^2 + \dots + N^{k-1}.$$
Bizonyítás beszorzással:
$$(I - N)(I + N + N^2 + \dots + N^{k-1}) = I - N^k = I - 0 = I.$$
Ez a formula rendkívül gyors algoritmust ad perturbált identitásmátrixok invertálására anélkül, hogy Gauss-eliminációt kellene végezni.
:::

## Gy1.12.2. feladat

Bizonyítsuk be, hogy ha $AB = BA$ és $A$, $B$ nilpotens mátrixok, akkor $A + B$ is nilpotens mátrix! Igaz marad-e az állítás, ha $AB \ne BA$?

**Megoldás.**

*1. Rész: ha $AB = BA$:*
Legyen $A^n = 0$ és $B^m = 0$. Mivel $A$ és $B$ kommutálnak, alkalmazható a binomiális tétel:
$$(A + B)^{n + m - 1} = \sum_{k=0}^{n + m - 1} \binom{n + m - 1}{k} A^k B^{n + m - 1 - k}.$$
Bármely $k \in \{0, 1, \dots, n + m - 1\}$ esetén:
- vagy $k \ge n$, ekkor $A^k = A^{k-n} A^n = 0$,
- vagy $k \le n - 1$, ekkor a kitevő $n + m - 1 - k \ge n + m - 1 - (n - 1) = m$, így $B^{n + m - 1 - k} = 0$.
Tehát az összeg minden tagja 0, így $(A + B)^{n + m - 1} = 0$, vagyis $A + B$ valóban nilpotens. $\blacksquare$

*2. Rész: ha $AB \ne BA$:*
**NEM marad igaz.**
Ellenpélda:
$$A = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \qquad B = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}.$$
Mindkettő nilpotens ($A^2 = 0, B^2 = 0$), de:
$$A + B = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \qquad (A + B)^2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I \ne 0.$$
Így $(A + B)^{2k} = I \ne 0$ minden $k$-ra, tehát $A + B$ nem nilpotens!

::: elmelet
**Elméleti háttér — Kommutativitás és a binomiális tétel mátrixokra.**
A binomiális tétel $(A+B)^N = \sum \binom{N}{k}A^k B^{N-k}$ kizárólag kommutáló mátrixokra ($AB = BA$) érvényes. Nem kommutáló esetben kereszt-tagok lépnek fel, és a nilpotens mátrixok összege akár invertálható is lehet.
:::

## Gy1.13.1. feladat

Invertáljuk az alábbi $3 \times 3$-as felső egység-háromszögmátrixot Gauss–Jordan-eliminációval:
$$M = \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 4 \\ 0 & 0 & 1 \end{pmatrix}.$$

**Megoldás.**

Gauss–Jordan-elimináció a blokkmátrixon:
$$\left(\begin{array}{ccc|ccc}
1 & 2 & 3 & 1 & 0 & 0 \\
0 & 1 & 4 & 0 & 1 & 0 \\
0 & 0 & 1 & 0 & 0 & 1
\end{array}\right)
\xrightarrow{\substack{S_2 - 4S_3 \\ S_1 - 3S_3}}
\left(\begin{array}{ccc|ccc}
1 & 2 & 0 & 1 & 0 & -3 \\
0 & 1 & 0 & 0 & 1 & -4 \\
0 & 0 & 1 & 0 & 0 & 1
\end{array}\right)
\xrightarrow{S_1 - 2S_2}
\left(\begin{array}{ccc|ccc}
1 & 0 & 0 & 1 & -2 & 5 \\
0 & 1 & 0 & 0 & 1 & -4 \\
0 & 0 & 1 & 0 & 0 & 1
\end{array}\right)$$
**Az inverz mátrix:**
$$M^{-1} = \begin{pmatrix} 1 & -2 & 5 \\ 0 & 1 & -4 \\ 0 & 0 & 1 \end{pmatrix}.$$
(Ellenőrzés: $M M^{-1} = \begin{pmatrix} 1 & -2+2 & 5-8+3 \\ 0 & 1 & -4+4 \\ 0 & 0 & 1 \end{pmatrix} = I_3$.)

::: elmelet
**Elméleti háttér — Unipotens háromszögmátrixok invertálása.**
Egy unipotens (főátlójában 1-eseket tartalmazó) felső háromszögmátrix inverze szintén unipotens felső háromszögmátrix. Mivel már eleve felső háromszög alakban van, csak felfelé kell eliminálni.
:::

## Gy1.13.2. feladat

Mely valós $x$ értékekre invertálható a $K = \begin{pmatrix} 1 & x \\ x & 9 \end{pmatrix}$ mátrix? Adjuk meg az inverzet ezen $x$-ekre!

**Megoldás.**

A mátrix determinánsa: $\det(K) = 1 \cdot 9 - x \cdot x = 9 - x^2$.
Egy mátrix pontosan akkor invertálható, ha determinánsa nem nulla:
$$9 - x^2 \ne 0 \iff x^2 \ne 9 \iff x \ne 3 \text{ és } x \ne -3.$$
Ekkor a $2 \times 2$-es inverzképlet szerint:
$$K^{-1} = \frac{1}{9 - x^2} \begin{pmatrix} 9 & -x \\ -x & 1 \end{pmatrix}.$$
**Eredmény:** $x \in \mathbb{R} \setminus \{-3, 3\}$ esetén invertálható, inverze $K^{-1} = \frac{1}{9-x^2}\begin{pmatrix} 9 & -x \\ -x & 1 \end{pmatrix}$.

::: elmelet
**Elméleti háttér — Paraméteres determinánsok és invertálhatósági spektrum.**

Egy paraméteres mátrix $A(x)$ pontosan azon $x$ értékekre szinguláris (nem invertálható), amelyekre $\det(A(x)) = 0$.
A determináns $x$-nek egy polinomja. A polinom valós gyökei adják a szingularitási spektrumot.
Minden olyan pontban, ahol a determináns nem zérus, a mátrix egyértelműen invertálható, és az inverz folytonosan (sőt racionálisan) függ a paramétertől az adjungált mátrix Cramer-képlete alapján: $A^{-1} = \frac{1}{\det A} \operatorname{adj}(A)$.
:::

## Gy1.14.1. feladat

Bizonyítsuk be, hogy ha $A \in \mathbb{R}^{n \times n}$ invertálható, akkor tetszőleges $k \in \mathbb{N}$ esetén $A^k$ is invertálható, és $(A^k)^{-1} = (A^{-1})^k$.

**Megoldás.**

*Bizonyítás teljes indukcióval $k$-ra:*
- $k = 1$: $(A^1)^{-1} = A^{-1} = (A^{-1})^1$, triviálisan igaz.
- Tegyük fel, hogy $k$-ra igaz: $(A^k)^{-1} = (A^{-1})^k$.
- Lépés $k + 1$-re: $A^{k+1} = A^k \cdot A$. Mivel két invertálható mátrix szorzata invertálható:
  $$(A^{k+1})^{-1} = (A^k \cdot A)^{-1} = A^{-1} \cdot (A^k)^{-1}.$$
  Az indukciós feltevést behelyettesítve:
  $$A^{-1} \cdot (A^{-1})^k = (A^{-1})^{k+1}.$$
Így az állítás minden $k \ge 1$ egészre igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Hatványozás negatív egész kitevőkre.**
Invertálható mátrixokra a negatív egész kitevős hatványok értelmezettek: $A^{-k} := (A^{-1})^k = (A^k)^{-1}$. Ekkor érvényes az azonosság: $A^p A^q = A^{p+q}$ minden $p, q \in \mathbb{Z}$-re.
:::

## Gy1.14.2. feladat

Tegyük fel, hogy $A, B \in \mathbb{R}^{n \times n}$ olyanok, hogy $AB$ invertálható. Következik-e ebből, hogy $A$ és $B$ külön-külön is invertálható?

**Megoldás.**

**Igen, négyzetes mátrixokra következik.**
*Bizonyítás:* A determinánsok szorzástétele alapján:
$$\det(AB) = \det(A) \cdot \det(B).$$
Mivel $AB$ invertálható, determinánsa nem nulla: $\det(AB) \ne 0$.
Valós számok szorzata csak akkor lehet nemnulla, ha egyik tényezője sem nulla:
$$\det(A) \ne 0 \quad \text{és} \quad \det(B) \ne 0.$$
Négyzetes mátrixok esetén a nemnulla determináns ekvivalens az invertálhatósággal, így $A$ és $B$ szükségszerűen mindketten invertálhatók. $\blacksquare$
*(Megjegyzés: Ha $A$ és $B$ nem négyzetes mátrixok, például $A \in \mathbb{R}^{1 \times 2}$ és $B \in \mathbb{R}^{2 \times 1}$, akkor $AB$ lehet $1 \times 1$-es invertálható mátrix úgy, hogy sem $A$, sem $B$ nem invertálható.)*

::: elmelet
**Elméleti háttér — Négyzetes vs. téglalap mátrixok szorzatának invertálhatósága.**
Négyzetes esetben $\det(AB) = \det A \det B$ miatt a szorzat invertálhatósága szétválik a tényezőkre. Nem négyzetes mátrixoknál $AB = I_k$ csak annyit jelent, hogy $A$ jobbinverze $B$-nek ($k \le n$).
:::

## Gy1.15.1. feladat

Bizonyítsuk be, hogy ha $A$ invertálható ferdén szimmetrikus mátrix ($A^T = -A$), akkor az inverze $A^{-1}$ is ferdén szimmetrikus!

**Megoldás.**

*Bizonyítás:*
Vegyük az $A^{-1}$ mátrix transzponáltját, és használjuk fel a tételbeli azonosságot:
$$(A^{-1})^T = (A^T)^{-1}.$$
Mivel $A$ ferdén szimmetrikus, $A^T = -A$:
$$(A^T)^{-1} = (-A)^{-1}.$$
Skalárral való szorzás inverzére vonatkozó szabály szerint ($(-1 \cdot A)^{-1} = (-1)^{-1} A^{-1} = -A^{-1}$):
$$(-A)^{-1} = -A^{-1}.$$
Összevetve az első és utolsó kifejezést:
$$(A^{-1})^T = -A^{-1}.$$
Ez definíció szerint azt jelenti, hogy $A^{-1}$ ferdén szimmetrikus. $\blacksquare$

::: elmelet
**Elméleti háttér — Lie-algebrák és szimmetriák.**
A szimmetrikus és antiszimmetrikus tulajdonság megőrződik az invertálás során. Antiszimmetrikus valós mátrix csak páros dimenzióban lehet invertálható, mert páratlan dimenzióban $\det(A) = \det(A^T) = \det(-A) = (-1)^n \det(A) = -\det(A) \implies \det A = 0$.
:::

## Gy1.15.2. feladat

Igazoljuk, hogy tetszőleges $A \in \mathbb{R}^{n \times m}$ mátrix esetén az $A A^T$ és $A^T A$ mátrixok mindegyike szimmetrikus!

**Megoldás.**

*Bizonyítás:*
1. Tekintsük az $A A^T$ mátrixot ($n \times n$-es):
   $$(A A^T)^T = (A^T)^T A^T = A A^T.$$
   Mivel egyenlő a saját transzponáltjával, $A A^T$ szimmetrikus.
2. Tekintsük az $A^T A$ mátrixot ($m \times m$-es):
   $$(A^T A)^T = A^T (A^T)^T = A^T A.$$
   Ezért $A^T A$ is szimmetrikus. $\blacksquare$

::: elmelet
**Elméleti háttér — Pozitív szemidefinitség.**
Nemcsak szimmetrikusak, hanem pozitív szemidefinitek is: $\mathbf{x}^T (A^TA) \mathbf{x} = \|A\mathbf{x}\|^2 \ge 0$. Ez a tulajdonság a legkisebb négyzetek módszerének és a szinguláris érték felbontásnak (SVD) az alapja.
:::

## Gy1.16.1. feladat

Egy invertálható $A$ mátrix harmadik sorát megszorozzuk egy $\lambda \ne 0$ számmal. Hogyan változik meg az inverz mátrix?

**Megoldás.**

A harmadik sor szorzása balról szorzás a diagonális elemi mátrixszal:
$$E = \operatorname{diag}(1, 1, \dots, \lambda, \dots, 1),$$
ahol a 3. helyen $\lambda$ áll.
Az új mátrix $A' = E A$.
Ennek inverze:
$$(A')^{-1} = (EA)^{-1} = A^{-1} E^{-1}.$$
Mivel $E$ diagonális, $E^{-1} = \operatorname{diag}(1, 1, \dots, 1/\lambda, \dots, 1)$.
Egy mátrixot jobbról diagonális mátrixszal szorozva az oszlopai szorzódnak a diagonális elemekkel.
Így az $A^{-1} E^{-1}$ mátrixot úgy kapjuk, hogy az $A^{-1}$ **harmadik oszlopát osztjuk $\lambda$-val** (vagyis megszorozzuk $\frac{1}{\lambda}$-val).
**Végeredmény:** Az inverz harmadik oszlopa $\frac{1}{\lambda}$-szorosára változik, a többi oszlop változatlan marad.

::: elmelet
**Elméleti háttér — Elemi sorműveletek és inverzképzés kapcsolata.**

Az elemi sorműveletek mátrixszorzásként reprezentálhatók elemi mátrixokkal:
1. Egy sor megszorzása $c \neq 0$ konstanssal: balról szorzás egy $E_i(c)$ diagonális elemi mátrixszal.
2. Mivel $(EA)^{-1} = A^{-1} E^{-1}$, ha $A$-n sorműveletet hajtunk végre, az inverz $A^{-1}$ jobb oldalról szorzódik $E^{-1}$-gyel.
3. Konkrétan: ha $A$ harmadik sorát szorozzuk $c$-vel, akkor $A^{-1}$ harmadik *oszlopa* szorzódik $1/c$-vel!
Ez a dualitás az oka a szimplex algoritmus oszlop- és sorfrissítési szabályainak.
:::

## Gy1.16.2. feladat

Egy $A$ mátrix első sorához hozzáadjuk a második sorának 3-szorosát. Hogyan változik az inverz mátrix?

**Megoldás.**

A sorművelet balról szorzás az $E = I + 3E_{12}$ elemi mátrixszal:
$$A' = EA.$$
Az inverz:
$$(A')^{-1} = A^{-1} E^{-1}.$$
Mivel $(I + 3E_{12})^{-1} = I - 3E_{12}$, ezért:
$$(A')^{-1} = A^{-1} (I - 3E_{12}) = A^{-1} - 3 A^{-1} E_{12}.$$
Egy mátrixot jobbról $E_{12}$-vel szorozva az 1. oszlopa kerül a 2. oszlop helyére (a többi oszlop nulla).
Ezért a jobbról való szorzás azt jelenti, hogy:
az $A^{-1}$ **második oszlopából ki kell vonni az első oszlop 3-szorosát**!
(A többi oszlop változatlan marad.)

::: elmelet
**Elméleti háttér — Hozzáadási sorművelet inverze.**
Ha az $i$-edik sorhoz hozzáadjuk a $j$-edik sor $c$-szeresét ($S_i \to S_i + cS_j$), akkor az inverz mátrixban a $j$-edik oszlopból vonódik ki az $i$-edik oszlop $c$-szerese ($O_j \to O_j - cO_i$).
:::

## Gy1.17.1. feladat

Igazoljuk, hogy ha egy $A \in \mathbb{R}^{n \times n}$ négyzetes mátrixra az $A\mathbf{x} = \mathbf{0}$ egyenletnek van nemtriviális megoldása, akkor létezik olyan $\mathbf{b} \in \mathbb{R}^n$, amelyre az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek nincs megoldása!

**Megoldás.**

*Bizonyítás:*
A rang-nullitási tétel szerint $\dim \ker(A) + \dim \operatorname{Im}(A) = n$.
Mivel létezik nemtriviális megoldás a homogén egyenletre, $\ker(A) \ne \{\mathbf{0}\}$, tehát $\dim \ker(A) \ge 1$.
Ebből következik, hogy:
$$\dim \operatorname{Im}(A) = n - \dim \ker(A) \le n - 1 < n.$$
A képterület $\operatorname{Im}(A)$ tehát egy legfeljebb $(n - 1)$-dimenziós valódi altere $\mathbb{R}^n$-nek.
Mivel valódi altér nem fedheti le a teljes teret, létezik olyan $\mathbf{b} \in \mathbb{R}^n$ vektor, amely nincs benne a képterületben: $\mathbf{b} \notin \operatorname{Im}(A)$.
Ezen $\mathbf{b}$ vektorra nincs olyan $\mathbf{x}$, amelyre $A\mathbf{x} = \mathbf{b}$ teljesülne, azaz az egyenletrendszer inkonzisztens. $\blacksquare$

::: elmelet
**Elméleti háttér — Fredholm-alternatíva négyzetes rendszerekre.**
Egy négyzetes rendszerre vagy minden jobb oldalra egyértelműen létezik megoldás, vagy a homogén rendszernek van nemtriviális megoldása ÉS létezik olyan jobb oldal, amire nincs megoldás.
:::

## Gy1.17.2. feladat

Legyen $A \in \mathbb{R}^{3 \times 4}$. Lehetséges-e, hogy az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek pontosan egy megoldása legyen? Indokoljuk válaszunkat!

**Megoldás.**

**NEM lehetséges.**
*Indoklás:*
Az ismeretlenek száma $m = 4$, az egyenletek száma $n = 3$.
A mátrix rangja legfeljebb a sorok száma: $\operatorname{rang}(A) \le 3$.
Ha az egyenletrendszernek egyáltalán létezik megoldása (konzisztens), akkor a szabad változók száma:
$$\text{szabad változók száma} = m - \operatorname{rang}(A) \ge 4 - 3 = 1.$$
Mivel a szabad változók száma legalább 1, és a valós számok teste végtelen, a megoldások száma szükségszerűen **végtelen sok**.
Ha pedig nem konzisztens, akkor a megoldások száma 0.
A megoldások száma tehát csak 0 vagy $\infty$ lehet, pontosan 1 megoldás semmilyen $\mathbf{b}$ esetén sem létezhet. $\blacksquare$

::: elmelet
**Elméleti háttér — Alulhatározott rendszerek és a magtér dimenziója.**

Ha egy lineáris egyenletrendszerben kevesebb egyenlet van, mint ismeretlen ($m < n$, alulhatározott rendszer):
A mátrix rangjára $\operatorname{rang}(A) \le \min(m, n) = m < n$.
A dimenziótétel szerint a homogén rendszer magterének dimenziója:
$$\dim(\ker A) = n - \operatorname{rang}(A) \ge n - m > 0.$$
Következésképpen:
- Az $Ax = 0$ homogén rendszernek mindig van nemtriviális megoldása;
- Ha az $Ax = b$ inhomogén rendszer megoldható, akkor a megoldás SOHA nem lehet egyértelmű, mindig végtelen sok megoldás létezik (legalább $n - m$ szabad paraméterrel).
:::

---

# Az 2. feladatsorhoz – Megoldások — Mátrixinverz, mátrixegyenletek és altér / rang

## Gy2.1.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ egészre
$$1^2 + 3^2 + 5^2 + \dots + (2n - 1)^2 = \frac{n(2n - 1)(2n + 1)}{3}.$$

**Megoldás.**

*Bázislépés ($n = 1$):* Bal oldal: $1^2 = 1$. Jobb oldal: $\frac{1 \cdot 1 \cdot 3}{3} = 1$. Igaz.
*Indukciós feltevés:* Tegyük fel, hogy igaz $n$-re: $\sum_{k=1}^n (2k - 1)^2 = \frac{n(2n - 1)(2n + 1)}{3}$.
*Indukciós lépés ($n+1$):*
$$\sum_{k=1}^{n+1} (2k - 1)^2 = \frac{n(2n - 1)(2n + 1)}{3} + (2n + 1)^2 = (2n + 1)\left( \frac{2n^2 - n + 6n + 3}{3} \right)$$
$$= (2n + 1)\frac{2n^2 + 5n + 3}{3} = \frac{(2n + 1)(n + 1)(2n + 3)}{3} = \frac{(n + 1)(2(n + 1) - 1)(2(n + 1) + 1)}{3}.$$
Ez éppen a formula $n + 1$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — Páratlan számok négyzetösszege.**
A páratlan négyzetszámok összege visszavezethető a teljes négyzetösszegre is: $\sum_{k=1}^{2n} k^2 - \sum_{k=1}^n (2k)^2 = \frac{2n(2n+1)(4n+1)}{6} - 4\frac{n(n+1)(2n+1)}{6} = \frac{n(2n-1)(2n+1)}{3}$.
:::

## Gy2.1.2. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$-re
$$\frac{1}{1 \cdot 2} + \frac{1}{2 \cdot 3} + \dots + \frac{1}{n(n + 1)} = \frac{n}{n + 1}.$$

**Megoldás.**

*Bázislépés ($n = 1$):* Bal oldal: $\frac{1}{1 \cdot 2} = \frac{1}{2}$. Jobb oldal: $\frac{1}{1 + 1} = \frac{1}{2}$. Igaz.
*Indukciós lépés:*
$$\sum_{k=1}^{n+1} \frac{1}{k(k+1)} = \frac{n}{n + 1} + \frac{1}{(n + 1)(n + 2)} = \frac{n(n + 2) + 1}{(n + 1)(n + 2)} = \frac{n^2 + 2n + 1}{(n + 1)(n + 2)} = \frac{(n + 1)^2}{(n + 1)(n + 2)} = \frac{n + 1}{n + 2}.$$
Ez pontosan a formula $n + 1$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — Teleszkopikus törtek és indukciós összegzés.**

A racionális törtek összegzésénél az indukciós lépésben a közös nevezőre hozás és a számláló faktorizációja a döntő:
$$S_n + a_{n+1} = \frac{A(n)}{B(n)} + \frac{1}{(a(n+1)+b)(a(n+1)+c)}.$$
Teleszkopikus struktúra esetén a parciális törtekre bontás azonnal megadja a sejtést a zárt alakra, amit az indukciós lépés tisztán algebrai úton verifikál. A teleszkopikus sorok határértéke a végtelen sor összegét is azonnal szolgáltatja.
:::

## Gy2.2.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$-re
$$1^3 + 3^3 + 5^3 + \dots + (2n - 1)^3 = n^2 (2n^2 - 1).$$

**Megoldás.**

*Bázislépés ($n = 1$):* Bal oldal: $1^3 = 1$. Jobb oldal: $1^2(2 \cdot 1 - 1) = 1$. Igaz.
*Indukciós lépés:*
$$\sum_{k=1}^{n+1}(2k - 1)^3 = n^2(2n^2 - 1) + (2n + 1)^3 = 2n^4 - n^2 + 8n^3 + 12n^2 + 6n + 1 = 2n^4 + 8n^3 + 11n^2 + 6n + 1.$$
A célkifejezés: $(n + 1)^2(2(n + 1)^2 - 1) = (n^2 + 2n + 1)(2n^2 + 4n + 1) = 2n^4 + 4n^3 + n^2 + 4n^3 + 8n^2 + 2n + 2n^2 + 4n + 1 = 2n^4 + 8n^3 + 11n^2 + 6n + 1$.
A két kifejezés megegyezik! $\blacksquare$

::: elmelet
**Elméleti háttér — Páratlan számok köbeinek összege és polinom-identitások.**

Az első $n$ páratlan szám köbeinek összege:
$$\sum_{k=1}^n (2k - 1)^3 = n^2(2n^2 - 1).$$
Levezetés az összes köbszám összegéből:
$$\sum_{k=1}^{2n} k^3 - \sum_{j=1}^n (2j)^3 = \left(\frac{2n(2n+1)}{2}\right)^2 - 8 \left(\frac{n(n+1)}{2}\right)^2 = n^2(2n+1)^2 - 2n^2(n+1)^2 = n^2(2n^2 - 1).$$
Az indukciós lépésben az $n^2(2n^2 - 1) + (2n+1)^3 = (n+1)^2(2(n+1)^2 - 1)$ azonosság közvetlenül ellenőrizhető a zárójelek kibontásával.
:::

## Gy2.2.2. feladat

Számítsuk ki a $\sum_{k=1}^n k(k + 1)(k + 2)$ összeget!

**Megoldás.**

Mivel $k(k+1)(k+2) = 6\binom{k+2}{3}$, a hokibot-identitás szerint:
$$\sum_{k=1}^n k(k+1)(k+2) = 6 \sum_{k=1}^n \binom{k+2}{3} = 6 \binom{n+3}{4} = 6 \cdot \frac{(n+3)(n+2)(n+1)n}{24} = \frac{n(n+1)(n+2)(n+3)}{4}.$$
**Végeredmény:** $\frac{n(n+1)(n+2)(n+3)}{4}$.

::: elmelet
**Elméleti háttér — Faktoriális hatványok és differenciaszámítás.**
A csökkenő faktoriális hatványokra $x^{\underline{m}} = x(x-1)\dots(x-m+1)$ érvényes a diszkrét Newton–Leibniz formula: $\sum_{k=1}^n k^{\underline{m}} = \frac{(n+1)^{\underline{m+1}}}{m+1}$.
:::

## Gy2.3.1. feladat

Igazoljuk teljes indukcióval, hogy minden $n \ge 1$ egészre $64 \mid 9^n - 8n - 1$.

**Megoldás.**

Legyen $B_n = 9^n - 8n - 1$.
*Bázis ($n = 1$):* $B_1 = 9 - 8 - 1 = 0$, és $64 \mid 0$. Igaz. ($n = 2$-re: $81 - 16 - 1 = 64$, $64 \mid 64$.)
*Lépés ($n \to n+1$):*
$$B_{n+1} - 9B_n = (9^{n+1} - 8(n+1) - 1) - 9(9^n - 8n - 1) = -8n - 9 + 72n + 9 = 64n.$$
Így $B_{n+1} = 9B_n + 64n$.
Mivel $64 \mid B_n$ (indukciós hipotézis) és $64 \mid 64n$, ezért $64 \mid B_{n+1}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Kettős gyökök és oszthatóság $(a-1)^2$-tel.**

Tekintsük az $f(x) = x^n - 1 - n(x - 1)$ polinomot!
1. $f(1) = 1 - 1 - 0 = 0$, tehát $x = 1$ gyöke $f$-nek.
2. A deriváltja: $f'(x) = n x^{n-1} - n$, így $f'(1) = n - n = 0$.
Mivel az első deriváltnak is gyöke az 1, az $x = 1$ legalább kétszeres gyök, vagyis a polinom osztható $(x - 1)^2$-tel!
Egész $a$ számot behelyettesítve $a^n - 1 - n(a - 1)$ mindig osztható $(a - 1)^2$-tel.
$a = 9$ esetén $(9 - 1)^2 = 64$, így $64 \mid 9^n - 1 - 8n$ minden $n \ge 1$-re.
Binomiális tétellel: $9^n = (1 + 8)^n = 1 + 8n + \binom{n}{2} 64 + \dots \equiv 1 + 8n \pmod{64}$.
:::

## Gy2.3.2. feladat

Bizonyítsuk be teljes indukcióval, hogy $133 \mid 11^{n+1} + 12^{2n-1}$ minden $n \ge 1$ egészre.

**Megoldás.**

Legyen $C_n = 11^{n+1} + 12^{2n-1}$.
*Bázis ($n = 1$):* $C_1 = 11^2 + 12^1 = 121 + 12 = 133$. $133 \mid 133$, igaz!
*Lépés ($n \to n+1$):*
$$C_{n+1} = 11^{n+2} + 12^{2n+1} = 11 \cdot 11^{n+1} + 144 \cdot 12^{2n-1}.$$
Bontsuk fel a $144$-et $11 + 133$ alakban:
$$C_{n+1} = 11(11^{n+1} + 12^{2n-1}) + 133 \cdot 12^{2n-1} = 11 C_n + 133 \cdot 12^{2n-1}.$$
Mivel $133 \mid C_n$, mindkét tag osztható 133-mal, így $133 \mid C_{n+1}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Összetett modulusok faktorizációja és kongruenciák.**

Annak igazolására, hogy egy kifejezés osztható egy $m = p \cdot q$ összetett számmal (ahol $\gcd(p, q) = 1$):
Elegendő az oszthatóságot külön-külön a $p$ és $q$ prímekre igazolni:
$$x \equiv 0 \pmod{133} \iff x \equiv 0 \pmod 7 \quad \text{és} \quad x \equiv 0 \pmod{19},$$
ugyanis $133 = 7 \cdot 19$. Moduláris aritmetikával és hatványozással az indukciós lépés $11^{n+1} + 12^{2n+1} = 11 \cdot 11^n + 144 \cdot 12^{2n-1}$ közvetlenül redukálható $11(11^n + 12^{2n-1}) + 133 \cdot 12^{2n-1}$ alakra, ahol a 133 többszöröse azonnal kiemelhető.
:::

## Gy2.4.1. feladat

Bizonyítsuk be, hogy a $\binom{2n}{n}$ binomiális együttható minden $n \ge 1$-re páros!

**Megoldás.**

*Bizonyítás:*
A felbontás szerint:
$$\binom{2n}{n} = \frac{(2n)!}{n! n!} = \frac{(n + 1)(n + 2) \cdots (2n)}{n!} = \frac{2^n \cdot 1 \cdot 3 \cdots (2n - 1)}{n!}.$$
Másrészt használhatjuk az indukciós összefüggést: $\binom{2n}{n} = 2\binom{2n-1}{n-1}$.
Mivel $\binom{2n-1}{n-1}$ egész szám, a 2-es szorzó miatt $\binom{2n}{n}$ minden $n \ge 1$-re osztható 2-vel, azaz páros. $\blacksquare$

::: elmelet
**Elméleti háttér — Középső binomiális együtthatók és prímfaktorok.**

A $\binom{2n}{n} = \frac{(2n)!}{(n!)^2}$ középső binomiális együttható fontos szerepet játszik a Csebisev-féle prímbecslésekben.
Ha $n < p < 2n$ egy prímszám, akkor $p$ osztója a számlálónak $(2n)!$, de nem szerepel a nevezőben $n!$, így $p \mid \binom{2n}{n}$.
Minden $n \ge 1$-re a $\binom{2n}{n}$ páros szám, mert $\binom{2n}{n} = \frac{2n}{n}\binom{2n-1}{n-1} = 2\binom{2n-1}{n-1}$.
:::

## Gy2.4.2. feladat

Határozzuk meg a 2 legmagasabb hatványát, amely még osztja az $n!$-t $n = 100$ esetén!

**Megoldás.**

A Legendre-formula alapján:
$$v_2(100!) = \sum_{k=1}^\infty \left\lfloor \frac{100}{2^k} \right\rfloor = \left\lfloor \frac{100}{2} \right\rfloor + \left\lfloor \frac{100}{4} \right\rfloor + \left\lfloor \frac{100}{8} \right\rfloor + \left\lfloor \frac{100}{16} \right\rfloor + \left\lfloor \frac{100}{32} \right\rfloor + \left\lfloor \frac{100}{64} \right\rfloor$$
$$= 50 + 25 + 12 + 6 + 3 + 1 = 97.$$
*(Alternatív számolás: $v_2(n!) = n - S_2(n)$, ahol $S_2(100)$ a 100 kettes számrendszerbeli jegyeinek összege: $100 = 64 + 32 + 4 = 1100100_2$, $S_2(100) = 3$, így $100 - 3 = 97$.)*
**Végeredmény:** $2^{97}$.

::: elmelet
**Elméleti háttér — Legendre tétele prímhatványok faktoriálisbeli kitevőjéről.**

*Legendre-formula (1808):* Egy $p$ prím maximális kitevője $n!$ kanonikus felbontásában:
$$v_p(n!) = \sum_{k=1}^\infty \left\lfloor \frac{n}{p^k} \right\rfloor = \frac{n - S_p(n)}{p - 1},$$
ahol $S_p(n)$ az $n$ számjegyösszege a $p$ alapú számrendszerben.
Középső binomiális együtthatóra $p = 2$ esetén:
$$v_2\left(\binom{2n}{n}\right) = v_2((2n)!) - 2 v_2(n!) = S_2(n),$$
ami pontosan az $n$ bináris reprezentációjában szereplő 1-esek száma!
:::

## Gy2.5.1. feladat

Mutassuk meg, hogy $2025 \mid 2026^n - 1$ minden $n \ge 1$ egészre!

**Megoldás.**

Alkalmazzuk az $a - b \mid a^n - b^n$ tételt az $a = 2026$ és $b = 1$ választással:
$$a - b = 2026 - 1 = 2025.$$
Mivel $b^n = 1^n = 1$, ezért:
$$2025 \mid 2026^n - 1.$$
Ez minden $n \ge 1$-re azonnal igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Algebrai azonosságok és $a - b \mid a^n - b^n$.**

Minden $n \ge 1$ pozitív egészre és tetszőleges $a, b$ egészekre:
$$a^n - b^n = (a - b)(a^{n-1} + a^{n-2}b + \dots + a b^{n-2} + b^{n-1}).$$
Ennek közvetlen következménye, hogy $a - b \mid a^n - b^n$.
Speciálisan $b = 1$ választással:
$$a - 1 \mid a^n - 1 \quad \text{minden } n \ge 1 \text{ esetén}.$$
$a = 2026$ esetén $a - 1 = 2025$, így $2025 \mid 2026^n - 1$ azonnal teljesül.
:::

## Gy2.5.2. feladat

Bizonyítsuk be, hogy $2^{30} - 1$ osztható 31-gyel és 7-tel is!

**Megoldás.**

- Mivel $30 = 5 \cdot 6$, írhatjuk: $2^{30} - 1 = (2^5)^6 - 1 = 32^6 - 1$.
  Az $a - b \mid a^n - b^n$ azonosság szerint $32 - 1 \mid 32^6 - 1$, azaz $31 \mid 2^{30} - 1$.
- Hasonlóan $30 = 3 \cdot 10$, így $2^{30} - 1 = (2^3)^{10} - 1 = 8^{10} - 1$.
  Mivel $8 - 1 = 7 \mid 8^{10} - 1$, ezért $7 \mid 2^{30} - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Kitevők faktorizációja és összetett osztók.**

Ha $d \mid n$, akkor $a^d - 1 \mid a^n - 1$.
Bizonyítás: Legyen $n = d \cdot k$. Ekkor $a^n - 1 = (a^d)^k - 1$. Az alapazonosságot az $A = a^d$ alapra alkalmazva:
$$A - 1 \mid A^k - 1 \implies a^d - 1 \mid a^n - 1.$$
Például $2^{30} - 1$ osztható $2^5 - 1 = 31$-gyel, $2^3 - 1 = 7$-tel, $2^2 - 1 = 3$-mal és $2^6 - 1 = 63$-mal is, mivel 5, 3, 2, 6 mind osztói 30-nak.
:::

## Gy2.6.1. feladat

Mutassuk meg, hogy ha $a^n - 1$ prímszám ($a \ge 2, n \ge 2$), akkor szükségképpen $a = 2$ és $n$ prímszám!

**Megoldás.**

*Bizonyítás:*
Tudjuk, hogy $a - 1 \mid a^n - 1$.
Mivel $a^n - 1$ prím, a pozitív osztója ($a - 1$) csak 1 vagy önmaga lehet.
- Ha $a - 1 > 1$, azaz $a > 2$, akkor mivel $n \ge 2$, $a^n - 1 > a - 1 > 1$, így $a - 1$ valódi osztója $a^n - 1$-nek, ami ellentmond a prímségnek.
- Tehát szükségképpen $a - 1 = 1 \implies a = 2$.
Ekkor $2^n - 1$ prím, amiből az előző tétel alapján következik, hogy $n$ is prím. $\blacksquare$

::: elmelet
**Elméleti háttér — Mersenne-számok és a kitevő prímsége.**

Egy $M_n = a^n - 1$ alakú szám ($a \ge 2, n \ge 2$) csak akkor lehet prímszám, ha:
1. $a = 2$ (ugyanis $a - 1 \mid a^n - 1$, így ha $a > 2$, $a - 1 > 1$ egy valódi osztó);
2. $n = p$ prímszám (ugyanis ha $n = k \cdot m$ összetett, akkor $2^k - 1 \mid 2^n - 1$ valódi osztó).
A $2^p - 1$ alakú prímeket *Mersenne-prímeknek* nevezzük. A feltétel szükséges, de nem elégséges: pl. $2^{11} - 1 = 2047 = 23 \cdot 89$ összetett szám.
:::

## Gy2.6.2. feladat

Ellenőrizzük, hogy $2^p - 1$ prím-e a $p = 2, 3, 5, 7$ értékekre!

**Megoldás.**

- $p = 2$: $2^2 - 1 = 3$ prím.
- $p = 3$: $2^3 - 1 = 7$ prím.
- $p = 5$: $2^5 - 1 = 31$ prím.
- $p = 7$: $2^7 - 1 = 127$ prím.
Mind a négy Mersenne-prím! (A következő a sorban $p = 11$, amire $2^{11} - 1 = 2047 = 23 \cdot 89$ már összetett.)

::: elmelet
**Elméleti háttér — Eukleidész–Euler-tétel páros tökéletes számokról.**

Egy szám tökéletes, ha megegyezik a nála kisebb pozitív osztóinak összegével ($\sigma(n) = 2n$).
*Eukleidész–Euler-tétel:* Egy páros szám akkor és csak akkor tökéletes, ha
$$n = 2^{p-1}(2^p - 1),$$
ahol $2^p - 1$ egy Mersenne-prím.
A legkisebb Mersenne-prímek $p = 2, 3, 5, 7$-re: $M_2 = 3, M_3 = 7, M_5 = 31, M_7 = 127$.
A hozzájuk tartozó páros tökéletes számok: 6, 28, 496, 8128. Páratlan tökéletes szám létezése máig a matematika egyik leghíresebb nyitott problémája.
:::

## Gy2.7.1. feladat

Mutassuk meg, hogy ha $a^n + 1$ prímszám ($a \ge 2, n \ge 1$), akkor vagy $a$ páros és $n$ kettőhatvány, vagy $a$ páratlan és $n = 1$ ($a + 1 = 2$).

**Megoldás.**

*Bizonyítás:*
1. Ha $a$ páratlan és $a > 1$, akkor $a^n + 1$ egy páratlan szám hatványa plusz 1, ami páros szám. Mivel $a^n + 1 > 2$, az egyetlen páros prím a 2 lenne, ami csak $a^n + 1 = 2 \implies a = 1$ esetén állhatna fenn, de $a \ge 2$. Tehát $a$ szükségszerűen páros (kivéve ha $a = 1$).
2. Ha $a$ páros, és $n$-nek lenne páratlan $q > 1$ osztója ($n = mq$), akkor $a^n + 1 = (a^m)^q + 1 = (a^m + 1)((a^m)^{q-1} - \dots + 1)$ összetett lenne, mivel $a^m + 1 \ge 3 > 1$ és $q \ge 3$ miatt a másik tényező is $> 1$.
Tehát $n$-nek nem lehet páratlan prímosztója, azaz $n = 2^k$. $\blacksquare$

::: elmelet
**Elméleti háttér — Fermat-számok és a 2-hatvány kitevő szükségessége.**

Egy $F = a^n + 1$ ($a \ge 2$) alakú szám csak akkor lehet prím, ha:
1. $a$ páros (különben $a^n + 1$ páros és 2-nél nagyobb, tehát összetett);
2. $n$ kettőhatvány: $n = 2^k$.
*Bizonyítás:* Ha $n$-nek lenne egy páratlan $q > 1$ osztója ($n = q \cdot m$), akkor az $A = a^m$ jelöléssel:
$$a^n + 1 = A^q + 1 = (A + 1)(A^{q-1} - A^{q-2} + \dots + 1).$$
Mivel $q$ páratlan, a felbontás érvényes, és $A + 1 = a^m + 1$ valódi osztó, ami ellentmond a prímségnek.
A $2^{2^k} + 1$ alakú számokat *Fermat-számoknak* nevezzük ($F_0=3, F_1=5, F_2=17, F_3=257, F_4=65537$ prímek, de Euler megmutatta, hogy $641 \mid F_5$).
:::

## Gy2.7.2. feladat

Igazoljuk, hogy bármely két különböző Fermat-szám relatív prím: ha $k \ne m$, akkor $(F_k, F_m) = 1$!

**Megoldás.**

*Bizonyítás:*
Feltehetjük, hogy $k < m$.
Tudjuk, hogy $F_m - 2 = 2^{2^m} - 1 = (2^{2^k})^{2^{m-k}} - 1$.
Mivel $2^{m-k}$ páros (ha $m - k \ge 1$), a hatvány osztható $2^{2^k} + 1 = F_k$-val!
Valóban, általánosan érvényes az azonosság:
$$F_m - 2 = F_0 F_1 F_2 \cdots F_{m-1}.$$
Ha $d = (F_k, F_m)$, akkor $d \mid F_k$, ezért $d \mid F_0 \dots F_{m-1} = F_m - 2$.
Mivel $d \mid F_m$ is teljesül, ezért $d$ osztja a különbségüket is:
$$d \mid F_m - (F_m - 2) = 2.$$
Így $d$ csak 1 vagy 2 lehet.
Azonban minden $F_n = 2^{2^n} + 1$ páratlan szám, ezért 2 nem oszthatja $d$-t.
Tehát szükségképpen $d = 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Fermat-számok és a prímek végtelensége (Pólya-féle bizonyítás).**
Mivel a Fermat-számok páronként relatív prímek, mindegyikük tartalmaz legalább egy olyan prímosztót, amely egyetlen korábbi Fermat-számban sem szerepel. Ez egy elegáns, konstruktív bizonyítást ad arra, hogy végtelen sok prímszám létezik.
:::

## Gy2.8.1. feladat

Igazoljuk, hogy ha $f \mid g$ és $g \mid f$ a valós polinomok körében, akkor létezik olyan $c \in \mathbb{R} \setminus \{0\}$ konstans, amelyre $f(x) = c \cdot g(x)$!

**Megoldás.**

*Bizonyítás:*
A feltétel szerint léteznek olyan $q_1, q_2 \in \mathbb{R}[x]$ polinomok, hogy $g = q_1 f$ és $f = q_2 g$.
Helyettesítsük a másodikat az elsőbe:
$$g = q_1 (q_2 g) = (q_1 q_2) g \iff (1 - q_1 q_2) g = 0.$$
- Ha $g = 0$, akkor $f = q_2 \cdot 0 = 0$, ekkor bármely $c \ne 0$-ra $f = c g = 0$.
- Ha $g \ne 0$, akkor a nullosztómentesség miatt $1 - q_1 q_2 = 0 \implies q_1 q_2 = 1$.
Mivel a fokszámok összeadódnak: $\deg(q_1) + \deg(q_2) = \deg(1) = 0$.
Mivel a fokszámok nemnegatívak, $\deg(q_1) = \deg(q_2) = 0$, tehát $q_1$ és $q_2$ nemnulla konstansok.
Legyen $c = q_2 \in \mathbb{R} \setminus \{0\}$. Ekkor $f(x) = c \cdot g(x)$. $\blacksquare$

::: elmelet
**Elméleti háttér — Egységek és asszociált elemek polinomgyűrűkben.**
Egy test feletti $K[x]$ polinomgyűrű egységei (invertálható elemei) pontosan a nemnulla konstans polinomok: $K[x]^* = K^*$. Két polinom pontosan akkor osztja egymást kölcsönösen, ha egymás konstansszorosai.
:::

## Gy2.8.2. feladat

Igazoljuk, hogy az $x - 1 \mid x^n - 1$ és $x + 1 \mid x^n - 1$ (ha $n$ páros) oszthatóságok közvetlenül következnek a Horner-elrendezésből vagy a gyöktesztből!

**Megoldás.**

*Bizonyítás:*
A gyöktényező-tétel szerint $x - c \mid P(x) \iff P(c) = 0$.
Legyen $P(x) = x^n - 1$.
1. Helyettesítsünk $c = 1$-et: $P(1) = 1^n - 1 = 1 - 1 = 0$. Mivel a helyettesítési érték 0, ezért $x - 1 \mid x^n - 1$ minden $n \ge 1$-re.
2. Helyettesítsünk $c = -1$-et, feltéve, hogy $n$ páros ($n = 2k$):
   $P(-1) = (-1)^n - 1 = (-1)^{2k} - 1 = 1 - 1 = 0$.
   Mivel $P(-1) = 0$, ezért $x - (-1) = x + 1 \mid x^n - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Gyöktényezős felbontás és polinom-oszthatóság.**

A Bézout-tétel szerint egy $P(x)$ polinomnak a $c$ szám pontosan akkor gyöke, ha $x - c \mid P(x)$.
- Mivel $P(1) = 1^n - 1 = 0$, mindig $x - 1 \mid x^n - 1$.
- Mivel $(-1)^n - 1 = 0$ pontosan akkor áll fenn, ha $n$ páros, $x + 1 \mid x^n - 1$ akkor és csak akkor igaz, ha $n$ páros.
- Páratlan $n$ esetén $(-1)^n + 1 = 0$, ezért $x + 1 \mid x^n + 1$ pontosan a páratlan $n$-ekre teljesül.
:::

## Gy2.9.1. feladat

Igazoljuk, hogy végtelen sok $3k - 1$ (azaz $3k + 2$) alakú prímszám létezik!

**Megoldás.**

*Bizonyítás:*
Vegyük észre, hogy egy prímszám pontosan akkor $3k - 1$ alakú, ha $6k - 1$ alakú, kivéve magát a 2-t (mert páratlan $3k - 1$ alakú szám mindig $6m - 1$ alakú: ha $3k - 1$ páratlan, akkor $k$ páros, $k = 2m$, így $6m - 1$).
Mivel a tétel szerint végtelen sok $6m - 1$ alakú prím van, mindezek $3(2m) - 1$ alakúak is, így végtelen sok $3k - 1$ alakú prím létezik.
*(Közvetlen Eukleidész-bizonyítás: $N = 3 p_1 \dots p_r - 1$ konstrukcióval ugyanígy adódik.)* $\blacksquare$

::: elmelet
**Elméleti háttér — Modulusok transzformációja.**
A $p \equiv -1 \pmod 3$ feltétel páratlan prímekre ekvivalens a $p \equiv -1 \pmod 6$ feltétellel a Kínai Maradéktétel szerint, mivel $p \equiv 1 \pmod 2$ és $p \equiv 2 \pmod 3$ együtt $p \equiv 5 \equiv -1 \pmod 6$.
:::

## Gy2.9.2. feladat

Mutassuk meg, hogy ha egy $N$ természetes szám prímtényezős felbontásában minden prím $4k + 1$ alakú, akkor $N \equiv 1 \pmod 4$!

**Megoldás.**

*Bizonyítás:*
Legyen $N = q_1^{e_1} q_2^{e_2} \dots q_s^{e_s}$, ahol minden $q_j \equiv 1 \pmod 4$.
A kongruenciák szorzási szabálya szerint:
$$q_j \equiv 1 \pmod 4 \implies q_j^{e_j} \equiv 1^{e_j} \equiv 1 \pmod 4.$$
Továbbá szorzatukra:
$$N = \prod_{j=1}^s q_j^{e_j} \equiv \prod_{j=1}^s 1 \equiv 1 \pmod 4.$$
Tehát valóban $N \equiv 1 \pmod 4$. $\blacksquare$

::: elmelet
**Elméleti háttér — $4k+3$ alakú prímek és a végtelen sok prím tétele.**

*Tétel:* Végtelen sok $4k + 3$ alakú prímszám létezik.
*Euklideszi típusú bizonyítás:*
1. Tegyük fel indirekt, hogy csak véges sok $4k+3$ alakú prím létezik: $p_1, p_2, \dots, p_r$.
2. Tekintsük az $N = 4 p_1 p_2 \dots p_r - 1 = 4(p_1 \dots p_r - 1) + 3$ számot.
3. $N \equiv 3 \pmod 4$, és páratlan szám.
4. $N$ minden prímtényezője páratlan. Ha $N$ minden prímtényezője $4k + 1$ alakú lenne, akkor szorzatuk is $4k + 1$ alakú lenne, ami ellentmondás, hiszen $N \equiv 3 \pmod 4$.
5. Tehát $N$-nek van legalább egy $q \equiv 3 \pmod 4$ prímosztója.
6. Ez a $q$ nem szerepelhet a listában, mert ha $q = p_i$, akkor $q \mid N - 4 p_1 \dots p_r = -1$, ami lehetetlen!
Ez Dirichlet tételének (számtani sorozatok prímjei) legegyszerűbb speciális esete.
:::

## Gy2.10.1. feladat

Határozzuk meg az összes olyan $\overline{1x2y}$ alakú négyjegyű számot, amely osztható 36-tal!

**Megoldás.**

$36 = 4 \cdot 9$, $(4, 9) = 1$.
- $4 \mid \overline{2y} \implies y \in \{0, 4, 8\}$.
- $9 \mid 1 + x + 2 + y = x + y + 3$:
  - $y = 0 \implies x + 3 \in \{9\} \implies x = 6 \implies 1620$.
  - $y = 4 \implies x + 7 \in \{9\} \implies x = 2 \implies 1224$.
  - $y = 8 \implies x + 11 \in \{18\} \implies x = 7 \implies 1728$.
**A számok: $1620, 1224, 1728$.**

::: elmelet
**Elméleti háttér — Helyiértékes oszthatósági szabályok (2 és 5 hatványai).**

A tízes számrendszerben $10 = 2 \cdot 5$.
Mivel $10^k = 2^k \cdot 5^k$, tetszőleges $N = \sum a_i 10^i$ számra:
$$N \equiv \sum_{i=0}^{k-1} a_i 10^i \pmod{2^k} \quad \text{és} \quad N \equiv \sum_{i=0}^{k-1} a_i 10^i \pmod{5^k}.$$
Ezért az oszthatóság $2^k$-nal (illetve $5^k$-nal) kizárólag a szám utolsó $k$ számjegyétől függ:
- 4-gyel ($2^2$) való oszthatóság: az utolsó 2 jegyből képzett szám osztható 4-gyel;
- 8-cal ($2^3$) való oszthatóság: az utolsó 3 jegyből képzett szám osztható 8-cal.
:::

## Gy2.10.2. feladat

Milyen számjegyekre teljesül, hogy $15 \mid \overline{7x4y}$?

**Megoldás.**

$15 = 3 \cdot 5$.
- $5 \mid \overline{7x4y} \implies y \in \{0, 5\}$.
- $3 \mid 7 + x + 4 + y = 11 + x + y \equiv 2 + x + y \pmod 3$:
  - Ha $y = 0$: $2 + x \equiv 0 \pmod 3 \implies x \in \{1, 4, 7\}$.
  - Ha $y = 5$: $2 + x + 5 = 7 + x \equiv 1 + x \equiv 0 \pmod 3 \implies x \in \{2, 5, 8\}$.
**Megoldások:** $(x, y) \in \{(1, 0), (4, 0), (7, 0), (2, 5), (5, 5), (8, 5)\}$.

::: elmelet
**Elméleti háttér — Összetett oszthatósági szabályok szétbontása.**

Egy összetett $m = p \cdot q$ számmal való oszthatóság ($\gcd(p, q) = 1$ esetén) pontosan akkor teljesül, ha a szám mindkét relatív prím tényezővel osztható.
Például $15 = 3 \cdot 5$:
1. $5 \mid N \iff$ az utolsó jegy $y \in \{0, 5\}$;
2. $3 \mid N \iff$ a számjegyek összege osztható 3-mal.
A két feltétel függetlenül határozza meg az ismeretlen számjegyeket, szűkítve a lehetséges megoldások halmazát egyetlen véges keresésre.
:::

## Gy2.11.1. feladat

Egy nyolcjegyű szám alakja $\overline{abcdabcd}$. Bizonyítsuk be, hogy osztható 73-mal és 137-tel!

**Megoldás.**

*Bizonyítás:*
A helyiértékes felbontás szerint:
$$\overline{abcdabcd} = \overline{abcd} \cdot 10^4 + \overline{abcd} = \overline{abcd} \cdot (10^4 + 1) = 10001 \cdot \overline{abcd}.$$
Bontsuk prímtényezőkre a 10001-et:
$$10001 = 73 \cdot 137.$$
Mivel 10001 osztható 73-mal és 137-tel is, a szorzat, azaz az eredeti nyolcjegyű szám is mindig osztható 73-mal és 137-tel. $\blacksquare$

::: elmelet
**Elméleti háttér — Periodikusan ismétlődő számszerkezetek és $10^k + 1$.**

Ha egy $2k$ jegyű szám két azonos $k$ jegyű blokk egymás után írásából áll:
$$\overline{A A} = A \cdot 10^k + A = A(10^k + 1).$$
Például egy nyolcjegyű $\overline{abcdabcd}$ szám esetén:
$$\overline{abcdabcd} = \overline{abcd} \cdot 10^4 + \overline{abcd} = \overline{abcd} \cdot 10001.$$
Mivel $10001 = 73 \cdot 137$, minden ilyen szerkezetű szám osztható 73-mal és 137-tel, függetlenül a konkrét számjegyektől!
:::

## Gy2.11.2. feladat

Döntsük el a hármas blokkok szabályával, hogy a $915\,824$ szám osztható-e 7-tel, 11-gyel, illetve 13-mal!

**Megoldás.**

Bontsuk hármas csoportokra hátulról: $B_0 = 824$, $B_1 = 915$.
A váltakozó összeg:
$$B_0 - B_1 = 824 - 915 = -91.$$
Vizsgáljuk meg a $-91$ oszthatóságát:
- $91 = 7 \cdot 13$:
  - $7 \mid -91$ $\implies$ a szám **osztható 7-tel**.
  - $13 \mid -91$ $\implies$ a szám **osztható 13-mal**.
  - $11 \nmid -91$ (mivel $91 = 11 \cdot 8 + 3$) $\implies$ a szám **nem osztható 11-gyel**.
(Ellenőrzés: $915824 / 7 = 130832$; $915824 / 13 = 70448$; $915824 = 11 \cdot 83256 + 8$.)

::: elmelet
**Elméleti háttér — A 7, 11, 13 univerzális hármas blokkszabálya ($1001$).**

Mivel $10^3 + 1 = 1001 = 7 \cdot 11 \cdot 13$, tetszőleges szám esetén $1000 \equiv -1 \pmod{7, 11, 13}$.
Ennek következtében a számot hátulról hármas csoportokra osztva alternáló előjelű blokkösszeget képezhetünk:
$$N = B_0 + B_1 10^3 + B_2 10^6 + \dots \equiv B_0 - B_1 + B_2 - B_3 + \dots \pmod{1001}.$$
A szám pontosan akkor osztható 7-tel, 11-gyel vagy 13-mal, ha ez az alternáló blokkösszeg osztható velük. Mivel $91 = 7 \cdot 13$, a 91-gyel való oszthatóság pontosan a 7-tel és 13-mal való egyidejű oszthatóságot jelenti.
:::

## Gy2.12.1. feladat

Hány oldalú az a konvex sokszög, amelynek átlóinak száma páratlan prímszám?

**Megoldás.**

A tételbeli levezetés szerint az átlók száma $d \in \{2, 5\}$ lehet.
Ezek közül az egyetlen páratlan prím az $5$.
Az átlók száma $d = 5$, amihez tartozó oldalszám:
$$\frac{n(n-3)}{2} = 5 \iff n^2 - 3n - 10 = 0 \iff (n - 5)(n + 2) = 0 \implies n = 5.$$
**A sokszög ötszög ($n = 5$).**

::: elmelet
**Elméleti háttér — Paritás és prímfelbontás sokszögek átlóinál.**

Egy konvex $n$-szög átlóinak száma $d = \frac{n(n-3)}{2}$.
Ha az átlók száma prímszám ($d = p$):
$$n(n - 3) = 2p.$$
Mivel $p$ prím, a $2p$ szorzat felbontása két tényezőre csak véges sokféle lehet:
A tényezők különbsége: $n - (n - 3) = 3$.
Az egyetlen egész felbontás, ahol a tényezők különbsége 3: $2p = 5 \cdot 2$ ($n = 5, p = 5$), vagy általánosan az osztópárok szisztematikus vizsgálata vezet az egyetlen geometriailag értelmes konvex sokszöghöz.
:::

## Gy2.12.2. feladat

Létezik-e olyan konvex sokszög, amelynek pontosan annyi átlója van, mint ahány oldala?

**Megoldás.**

A feltétel: $d = n$.
$$\frac{n(n - 3)}{2} = n.$$
Mivel $n \ge 3$, oszthatunk $n$-nel:
$$\frac{n - 3}{2} = 1 \iff n - 3 = 2 \implies n = 5.$$
**Igen, az ötszögnek pontosan 5 oldala és 5 átlója van.**

::: elmelet
**Elméleti háttér — Önmagával egyenlő átlószám és az ötszög szimmetriája.**

Mikor egyezik meg egy sokszög átlóinak száma az oldalai számával ($d_n = n$)?
$$\frac{n(n-3)}{2} = n \implies n-3 = 2 \implies n = 5.$$
Az egyetlen olyan konvex sokszög, amelynek pontosan ugyanannyi átlója van, mint ahány oldala (5), a konvex ötszög. Ez az ötszög pentagramma-szimmetriájának és a szabályos ötszög aranyarányos tulajdonságainak geometriai alapja.
:::

## Gy2.13.1. feladat

Határozzuk meg az összes olyan pozitív egész $n$ számot, amelyre $n^4 + 4$ prímszám!

**Megoldás.**

Alkalmazzuk a Sophie Germain-azonosságot:
$$n^4 + 4 = n^4 + 4n^2 + 4 - 4n^2 = (n^2 + 2)^2 - (2n)^2 = (n^2 - 2n + 2)(n^2 + 2n + 2).$$
Vizsgáljuk a kisebbik tényezőt:
$$n^2 - 2n + 2 = (n - 1)^2 + 1 \ge 1.$$
Prímséghez szükséges, hogy a kisebbik tényező 1 legyen:
$$(n - 1)^2 + 1 = 1 \iff (n - 1)^2 = 0 \iff n = 1.$$
Ekkor $n = 1 \implies 1^4 + 4 = 5$, ami prímszám.
Minden $n \ge 2$ esetén $(n-1)^2 + 1 > 1$ és $n^2 + 2n + 2 > 1$, így $n^4 + 4$ összetett.
**Egyetlen megoldás: $n = 1$.**

::: elmelet
**Elméleti háttér — A Sophie Germain-azonosság.**

A számelmélet egyik legfontosabb algebrai faktorizációja:
$$a^4 + 4b^4 = (a^2 + 2b^2)^2 - 4a^2 b^2 = (a^2 - 2ab + 2b^2)(a^2 + 2ab + 2b^2).$$
Alkalmazása: $n^4 + 4^n$ vizsgálatakor, ha $n$ páros ($n = 2k$), a kifejezés páros és nagyobb 2-nél.
Ha $n$ páratlan ($n = 2k + 1$), akkor $4^n = 4 \cdot 4^{2k} = 4 \cdot (2^k)^4$, így a kifejezés $a^4 + 4b^4$ alakú ($a = n, b = 2^k$).
A Sophie Germain-azonosság miatt $n > 1$ esetén mindkét faktor 1-nél szigorúan nagyobb egész, így a kifejezés soha nem lehet prím, kivéve az egyetlen $n = 1$ esetet ($1^4 + 4^1 = 5$).
:::

## Gy2.13.2. feladat

Mely egész $n$ számokra lesz az $n^3 - 8$ kifejezés értéke prímszám?

**Megoldás.**

Alakítsuk szorzattá:
$$n^3 - 8 = n^3 - 2^3 = (n - 2)(n^2 + 2n + 4).$$
Mivel $n^2 + 2n + 4 = (n + 1)^2 + 3 \ge 3 > 0$, a második tényező mindig szigorúan pozitív és legalább 3.
Így a szorzat csak akkor lehet prím, ha az első tényező értéke 1:
$$n - 2 = 1 \implies n = 3.$$
Ekkor $n = 3 \implies 3^3 - 8 = 27 - 8 = 19$, ami prímszám!
Ha $n - 2 = -1 \implies n = 1$, akkor $1^3 - 8 = -7$, de negatív szám nem pozitív prím (vagy ha a $-7$-et prímnek tekintjük a Gauss-egészek/asszociáltak értelmében, abszolút értéke prím). Pozitív egészek körében $n = 3$.
**Végeredmény:** $n = 3$ (az érték $19$).

::: elmelet
**Elméleti háttér — Köbök különbsége és prímértékek vizsgálata.**

Az $n^3 - a^3 = (n - a)(n^2 + an + a^2)$ kifejezés csak akkor lehet prímszám egész $n$-re, ha a kisebbik tényező értéke 1 (vagy $-1$):
Ha $n > a > 0$, a feltétel:
$$n - a = 1 \implies n = a + 1.$$
Ekkor a második tényező $n^2 + an + a^2 = (a+1)^2 + a(a+1) + a^2 = 3a^2 + 3a + 1$.
Ha ez a szám prímszám, akkor kaptunk prím megoldást; minden más $n > a + 1$ értékre a kifejezés összetett szám.
:::

## Gy2.14.1. feladat

Melyek azok a $p$ prímek, amelyek felírhatók $p = n^3 + 1$ alakban ($n \in \mathbb{N}$)? Számítsuk ki $n$ és $p$ értékét!

**Megoldás.**

Bontsuk fel szorzatra:
$$p = n^3 + 1 = (n + 1)(n^2 - n + 1).$$
Mivel $p$ prím, a két pozitív tényező közül a kisebbik 1 kell legyen.
Mivel $n \ge 1$, az első tényező $n + 1 \ge 2 > 1$.
Ezért csak a második tényező lehet 1:
$$n^2 - n + 1 = 1 \iff n(n - 1) = 0.$$
Mivel $n \in \mathbb{N}^+$, egyetlen lehetőség: $n = 1$.
Ekkor $p = 1^3 + 1 = 2$.
A 2 valóban prímszám!
**Végeredmény:** Egyetlen ilyen prím van, a **$p = 2$** (ekkor $n = 1$).

::: elmelet
**Elméleti háttér — Köbök összege és az egyetlen páros prím.**

A köbök összege felbontása:
$$p = x^3 + y^3 = (x + y)(x^2 - xy + y^2).$$
Mivel $p$ prím és $x, y \ge 1$, a tényezők pozitív egészek.
Az első tényező $x + y \ge 2$. Ahhoz, hogy a szorzat prím legyen, a második tényezőnek szükségképpen 1-nek kell lennie:
$$x^2 - xy + y^2 = 1 \iff (x - y)^2 + xy = 1.$$
Mivel $x, y$ pozitív egészek, $xy \ge 1$, az egyetlen lehetőség $x = y = 1$. Ekkor $p = 1^3 + 1^3 = 2$, ami az egyetlen páros prímszám.
:::

## Gy2.14.2. feladat

Létezik-e olyan $n$ természetes szám, amelyre $n^4 - 1$ prímszám?

**Megoldás.**

Bontsuk tényezőkre:
$$n^4 - 1 = (n^2 - 1)(n^2 + 1) = (n - 1)(n + 1)(n^2 + 1).$$
Ahhoz, hogy ez prím legyen, a három tényező közül a kettő legkisebbnek 1-nek kellene lennie.
De $n - 1 = 1 \implies n = 2$.
Ekkor a szorzat:
$$(2 - 1)(2 + 1)(2^2 + 1) = 1 \cdot 3 \cdot 5 = 15.$$
A 15 nem prím ($15 = 3 \cdot 5$).
Ha $n \ge 3$, akkor mindhárom tényező $> 1$, a szám összetett.
Ha $n = 1$, akkor $1^4 - 1 = 0$, nem prím.
**NEM létezik ilyen természetes szám.**

::: elmelet
**Elméleti háttér — Polinomok felbonthatósága és Schinzel-hipotézis.**

Ha egy egész együtthatós polinom felbontható több nemkonstans egész polinom szorzatára: $P(x) = A(x) B(x)$, akkor $P(n)$ helyettesítési érték csak véges sok $n$-re lehet prím (azokra, ahol $A(n) = \pm 1$ vagy $B(n) = \pm 1$).
Ezzel szemben irreducibilis polinomok esetén (mint $n^2 + 1$) a Bunyakovszkij-sejtés és a Schinzel-hipotézis jósolja meg, hogy végtelen sok prímérték keletkezik, ám ez máig bizonyítatlan.
:::

## Gy2.15.1. feladat

Határozzuk meg az összes olyan $n \in \mathbb{N}$ számot, amelyre $n^2 + 4n + 12$ egy négyzetszám!

**Megoldás.**

Legyen $n^2 + 4n + 12 = k^2$.
Teljes négyzetté kiegészítve:
$$(n + 2)^2 + 8 = k^2 \iff k^2 - (n + 2)^2 = 8 \iff (k - n - 2)(k + n + 2) = 8.$$
Mivel $n \ge 0$, $k + n + 2 \ge 2$. A két tényező paritása megegyezik (különbségük $2n + 4$ páros).
A 8 páros osztópárjai: csak $2 \cdot 4 = 8$.
Így $k - n - 2 = 2$ és $k + n + 2 = 4$.
Kivonva: $(2n + 4) = 4 - 2 = 2 \implies 2n = -2 \implies n = -1$.
Természetes számok között nincs megoldás!
**Végeredmény: Nincs ilyen természetes szám.**

::: elmelet
**Elméleti háttér — Négyzetszámok különbsége és a paritási akadály.**

Két egész szám négyzetének különbsége felbontható:
$$a^2 - b^2 = (a - b)(a + b).$$
Mivel $(a + b) - (a - b) = 2b$ páros szám, a két tényező ($a - b$ és $a + b$) mindig **azonos paritású**: vagy mindkettő páros, vagy mindkettő páratlan.
- Ha mindkettő páratlan, a szorzat páratlan szám ($2k + 1$);
- Ha mindkettő páros, a szorzat osztható 4-gyel ($4k$).
Következésképpen egyetlen $4k + 2$ alakú szám sem állhat elő két négyzetszám különbségeként! Ezzel szemben minden páratlan szám és minden 4-gyel osztható szám előállítható két négyzetszám különbségeként.
:::

## Gy2.15.2. feladat

Mely $n \ge 0$ egészre lesz $n^2 + 2n$ négyzetszám?

**Megoldás.**

Legyen $n^2 + 2n = k^2$.
$(n + 1)^2 - 1 = k^2 \iff (n + 1)^2 - k^2 = 1 \iff (n + 1 - k)(n + 1 + k) = 1$.
Mivel a tényezők egészek és szorzatuk 1, ezért $n + 1 + k = 1$ és $n + 1 - k = 1$.
Összeadva: $2n + 2 = 2 \implies 2n = 0 \implies n = 0$.
Ekkor $0^2 + 2(0) = 0 = 0^2$.
**Egyetlen megoldás: $n = 0$.**

::: elmelet
**Elméleti háttér — Egységnyi különbségű négyzetszámok és prímfelbontás.**

Két egymást követő négyzetszám különbsége:
$$(n + 1)^2 - n^2 = 2n + 1.$$
Mivel ez az érték mindig páratlan és $n \ge 1$-re legalább 3, a pozitív négyzetszámok közötti legkisebb különbség $1^2 - 0^2 = 1$. Pozitív számok körében a legkisebb különbség $2^2 - 1^2 = 3$.
Ennek következtében az $a^2 - b^2 = p$ egyenlet prím $p$ esetén kizárólag az $a - b = 1, a + b = p$ felbontást engedi meg, ami egyértelmű megoldást determinál.
:::

## Gy2.16.1. feladat

Bizonyítsuk be, hogy $42 \mid n^7 - n$ minden $n$ egész számra!

**Megoldás.**

$42 = 2 \cdot 3 \cdot 7$.
- A kis Fermat-tétel szerint $7 \mid n^7 - n$, mivel 7 prím.
- $n^7 - n = n(n^6 - 1) = n(n^2 - 1)(n^4 + n^2 + 1) = (n - 1)n(n + 1)(n^4 + n^2 + 1)$.
  A szorzat tartalmazza a három egymást követő szám szorzatát ($(n - 1)n(n + 1)$), így osztható $2 \cdot 3 = 6$-tal.
Mivel $(6, 7) = 1$, ezért $6 \cdot 7 = 42 \mid n^7 - n$. $\blacksquare$

::: elmelet
**Elméleti háttér — Kis Fermat-tétel és a legnagyobb prímfaktor megkeresése.**

*Kis Fermat-tétel (1640):* Ha $p$ prímszám és $p \nmid a$, akkor
$$a^{p-1} \equiv 1 \pmod p.$$
Következésképpen $p \mid a^{p-1} - 1$.
Ez azonnal megmutatja a kifejezés prímosztóit: pl. $a^6 - 1$ esetén $p - 1 = 6 \implies p = 7$, így 7 mindig osztója $a^6 - 1$-nek, ha $7 \nmid a$.
A többi prímosztó az alacsonyabb kitevős faktorokból ($a^3 - 1, a^2 - 1$) adódik.
:::

## Gy2.16.2. feladat

Igazoljuk, hogy minden páratlan $n$ egész számra $24 \mid n(n^2 - 1)$!

**Megoldás.**

Legyen $n = 2k + 1$ páratlan szám.
$n(n^2 - 1) = (n - 1)n(n + 1) = 2k(2k + 1)(2k + 2) = 4k(k + 1)(2k + 1)$.
Mivel $k$ és $k + 1$ közül az egyik páros, $k(k + 1)$ osztható 2-vel, így a szorzat osztható $4 \cdot 2 = 8$-cal.
Másrészt három egymást követő szám szorzataként osztható 3-mal is.
Mivel $(8, 3) = 1$, ezért $8 \cdot 3 = 24 \mid n(n^2 - 1)$. $\blacksquare$

::: elmelet
**Elméleti háttér — Páratlan számok négyzete modulo 8.**

Minden páratlan egész szám felírható $n = 2k + 1$ alakban. Négyzetre emelve:
$$n^2 = (2k + 1)^2 = 4k^2 + 4k + 1 = 4k(k + 1) + 1.$$
Mivel $k$ és $k + 1$ két egymást követő egész szám, egyikük szükségképpen páros, így $k(k+1)$ osztható 2-vel.
Ebből következik a számelmélet egyik legfontosabb lemmája:
$$n^2 \equiv 1 \pmod 8 \quad \text{minden páratlan } n \text{ egészre}.$$
Ez az azonosság kizárja a $8k + 7$ alakú számok három négyzet összegeként való előállítását (Gauss háromnégyzetszám-tétele).
:::

## Gy2.17.1. feladat

Igazoljuk, hogy $13 \mid 3a + 4b \iff 13 \mid 2a + 7b$ minden $a, b \in \mathbb{Z}$ esetén!

**Megoldás.**

Számítsuk ki a két kifejezés együtthatóiból álló determinánst:
$$\Delta = \begin{vmatrix} 3 & 4 \\ 2 & 7 \end{vmatrix} = 3 \cdot 7 - 4 \cdot 2 = 21 - 8 = 13.$$
Mivel $\Delta = 13 \equiv 0 \pmod{13}$, a két forma lineárisan függő modulo 13.
Konkrétan:
$2(3a + 4b) - 3(2a + 7b) = 6a + 8b - 6a - 21b = -13b$.
Így:
$$3(2a + 7b) = 2(3a + 4b) + 13b.$$
Mivel $(3, 13) = 1$, $13 \mid 3a + 4b \iff 13 \mid 2a + 7b$. $\blacksquare$

::: elmelet
**Elméleti háttér — Lineáris formák ekvivalenciája modulo $p$ és determináns.**

Két lineáris forma $L_1(x, y) = a_1 x + b_1 y$ és $L_2(x, y) = a_2 x + b_2 y$ pontosan akkor ekvivalens modulo $p$ (azaz $L_1 \equiv 0 \iff L_2 \equiv 0$), ha a formák együtthatói arányosak modulo $p$.
Ez mátrixnyelven azt jelenti, hogy az együtthatókból képzett mátrix determinánsa:
$$\Delta = a_1 b_2 - a_2 b_1 \equiv 0 \pmod p.$$
Ha $\Delta \equiv 0 \pmod p$, a két forma egymás skalárszorosa a $\mathbb{Z}_p$ véges test felett, így magterük (megoldáshalmazuk) megegyezik.
:::

## Gy2.17.2. feladat

Ha $19 \mid 3x + 5y$, következik-e ebből, hogy $19 \mid 4x + y$?

**Megoldás.**

Számítsuk ki a determinánst:
$$\Delta = \begin{vmatrix} 3 & 5 \\ 4 & 1 \end{vmatrix} = 3 \cdot 1 - 5 \cdot 4 = 3 - 20 = -17.$$
Mivel $19 \nmid -17$, a determináns nem nulla modulo 19!
Ezért **NEM következik**.
*Ellenpélda:* Válasszunk olyan $x, y$-t, amelyre $3x + 5y = 19$.
Például $x = 3, y = 2$: $3(3) + 5(2) = 9 + 10 = 19$, így $19 \mid 3x + 5y$.
Ekkor azonban:
$$4x + y = 4(3) + 2 = 12 + 2 = 14,$$
és $19 \nmid 14$. Tehát a következtetés valóban nem érvényes.

::: elmelet
**Elméleti háttér — Független formák és egyértelmű zérusmegoldás.**

Ha a formák determinánsa nem osztható $p$-vel ($\Delta \not\equiv 0 \pmod p$):
A formák lineárisan függetlenek $\mathbb{Z}_p$ felett.
A Cramer-szabály értelmében a homogén $L_1 \equiv 0, L_2 \equiv 0 \pmod p$ kongruenciarendszernek kizárólag a triviális $x \equiv 0, y \equiv 0 \pmod p$ megoldása létezik.
:::

## Gy2.18.1. feladat

Igazoljuk, hogy ha egy háromjegyű szám osztható 27-tel, akkor bármelyik ciklikus permutációja is osztható 27-tel!

**Megoldás.**

*Bizonyítás:*
A levezetés pontosan megegyezik a 37 esetével:
$\overline{bca} = 10 \overline{abc} - 999a$.
Mivel $999 = 27 \cdot 37$, a $999$ osztható 27-tel: $999 \equiv 0 \pmod{27}$.
Ha $27 \mid \overline{abc}$, akkor $10\overline{abc} - 999a$ mindkét tagja osztható 27-tel, így a különbség, $\overline{bca}$ is osztható 27-tel. $\blacksquare$

::: elmelet
**Elméleti háttér — Ciklikus szimmetria és oszthatóság 27-tel, 37-tel ($999$).**

Mivel $10^3 - 1 = 999 = 27 \cdot 37$:
Ha egy 3-jegyű szám számjegyeit ciklikusan permutáljuk:
$$\overline{abc} + \overline{bca} + \overline{cab} = 111(a + b + c) = 3 \cdot 37(a + b + c).$$
Továbbá a különbségek:
$$\overline{abc} - \overline{bca} = 99a - 90b - 9c = 9(11a - 10b - c).$$
Mivel $1000 \equiv 1 \pmod{27}$ és $\pmod{37}$, a 3-as blokkok összege határozza meg az oszthatóságot 27-tel és 37-tel.
:::

## Gy2.18.2. feladat

Igaz-e, hogy ha $7 \mid \overline{abc}$, akkor $7 \mid \overline{bca}$ is mindig teljesül? Adjunk bizonyítást vagy ellenpéldát!

**Megoldás.**

**NEM igaz.**
*Indoklás / Ellenpélda:*
$7 \mid 10 \overline{abc} - 999a$ csak akkor teljesülne, ha $7 \mid 999$.
Azonban $999 = 7 \cdot 142 + 5$, így $999 \equiv 5 \not\equiv 0 \pmod 7$.
*Konkrét ellenpélda:*
Legyen $\overline{abc} = 140$.
$140 = 7 \cdot 20$, tehát $7 \mid 140$.
A ciklikus eltolt: $\overline{bca} = 401$.
$401 = 7 \cdot 57 + 2$, ami nem osztható 7-tel!

::: elmelet
**Elméleti háttér — A feltétel specificitása.**
A ciklikus invariancia elengedhetetlen feltétele, hogy a modulus ossza a $10^k - 1$ értéket. Mivel $7 \nmid 999$ (mert $7 \mid 1001 = 10^3 + 1$), 7-re nem a ciklikus eltolás, hanem az előjeles hármas blokk az invariáns.
:::

## Gy2.19.1. feladat

Mely $p$ prímekre lesz $p, p + 10, p + 14$ mind prím?

**Megoldás.**

Vizsgáljuk meg a számokat modulo 3:
- Ha $p \equiv 0 \pmod 3 \implies p = 3 \implies (3, 13, 17)$ mind prím! Jó!
- Ha $p \equiv 1 \pmod 3 \implies p + 14 \equiv 1 + 2 = 3 \equiv 0 \pmod 3$. Mivel $p+14 > 3$, összetett.
- Ha $p \equiv 2 \pmod 3 \implies p + 10 \equiv 2 + 1 = 3 \equiv 0 \pmod 3$. Mivel $p+10 > 3$, összetett.
**Egyetlen megoldás: $p = 3$.**

::: elmelet
**Elméleti háttér — Teljes maradékrendszerek és fedési tulajdonság.**

Egy $\{r_1, r_2, \dots, r_m\}$ halmazt *teljes maradékrendszernek* nevezünk modulo $m$, ha minden $x \in \mathbb{Z}$ egész szám pontosan egy $r_i$-vel kongruens modulo $m$.
Ha adott egy számhalmaz, amely lefed minden lehetséges maradékot modulo $m$:
Bármely egész sorozatból képezett algebrai kifejezés maradéka vizsgálható a maradékosztályokon. Ha a lehetséges értékek között minden maradékosztályból szerepel legalább egy elem, a kifejezés mindig garantáltan osztható lesz $m$-mel egy alkalmas kombinációban.
:::

## Gy2.19.2. feladat

Létezik-e olyan $p > 3$ prím, amelyre $p$ és $8p^2 + 1$ is prím?

**Megoldás.**

Mivel $p > 3$ prím, $p$ nem osztható 3-mal, így $p \equiv \pm 1 \pmod 3$.
Ekkor $p^2 \equiv 1 \pmod 3$.
Helyettesítsük ezt be:
$$8p^2 + 1 \equiv 8(1) + 1 = 9 \equiv 0 \pmod 3.$$
Tehát $8p^2 + 1$ mindig osztható 3-mal.
Mivel $p > 3$, ezért $8p^2 + 1 > 8(9) + 1 = 73 > 3$, vagyis egy 3-nál nagyobb 3-mal osztható szám, tehát összetett!
*(Megjegyzés: $p = 3$-ra $8(9) + 1 = 73$ prím lenne, de a kérdés $p > 3$-ra vonatkozott.)*
**Válasz: NEM létezik.**

::: elmelet
**Elméleti háttér — Kvadratikus maradékok modulo 3 és négyzetösszegek.**

Modulo 3 vizsgálva az egész számok négyzeteit:
$$0^2 \equiv 0 \pmod 3, \quad 1^2 \equiv 1 \pmod 3, \quad 2^2 \equiv 1 \pmod 3.$$
Ezért modulo 3 a négyzetszámok kizárólag 0 vagy 1 maradékot adhatnak: $x^2 \in \{0, 1\} \pmod 3$.
Két négyzetszám összege: $x^2 + y^2 \in \{0+0, 0+1, 1+1\} = \{0, 1, 2\} \pmod 3$.
A 0 maradék ($3 \mid x^2 + y^2$) kizárólag $0 + 0$ esetén jöhet létre:
$$3 \mid x^2 + y^2 \iff 3 \mid x \quad \text{és} \quad 3 \mid y.$$
:::

## Gy2.20.1. feladat

Létezik-e három olyan különböző prímszám, amelyek összege és négyzetösszege is prímszám?

**Megoldás.**

Legyen a három prím $p_1 < p_2 < p_3$.
1. Ha mindhárom páratlan, akkor összegük $p_1 + p_2 + p_3$ három páratlan szám összegeként páratlan, ami lehet prím.
   Azonban a fenti tétel szerint $p_1 = 3$ kell legyen a négyzetösszeg prímségéhez.
   Teszteljük a legkisebbeket:
   - $(3, 5, 7)$: összegük $3 + 5 + 7 = 15 = 3 \cdot 5$ összetett!
   - $(3, 5, 11)$: négyzetösszegük $9 + 25 + 121 = 155 = 5 \cdot 31$ összetett.
   - $(3, 5, 17)$: összegük $3 + 5 + 17 = 25 = 5^2$ összetett.
   - $(3, 7, 11)$: összegük $3 + 7 + 11 = 21 = 3 \cdot 7$ összetett.
   - $(3, 7, 13)$: összegük $3 + 7 + 13 = 23$ (PRÍM!), négyzetösszegük $9 + 49 + 169 = 227$ (PRÍM, mert $\sqrt{227} \approx 15$, és 2, 3, 5, 7, 11, 13 nem osztja: $227 = 13 \cdot 17 + 6$).
**Igen, létezik, például a $\{3, 7, 13\}$ prímhármas.**

::: elmelet
**Elméleti háttér — Együttes prímfeltételek és a 2-es prím kivételes szerepe.**

Amikor egy feladatban több kifejezés (pl. $p + q$ és $p^2 + q^2$) egyidejű prímségét követeljük meg:
A paritás a legelső szűrő: két páratlan prím összege páros és legalább $3 + 3 = 6$, így sosem lehet prím!
Ennek következtében ahhoz, hogy $p + q$ prím lehessen, az egyik prímnek szükségképpen párosnak kell lennie: $p = 2$.
A 2-es prím rögzítése után a megmaradó kifejezések egyváltozós prímkereséssé egyszerűsödnek, melyek kis modulusok szerinti vizsgálattal determinálhatók.
:::

## Gy2.20.2. feladat

Mutassuk meg, hogy nem létezik négy különböző prímszám, amelyek négyzetösszege prímszám!

**Megoldás.**

*Bizonyítás:*
Legyen a négy prím $p_1 < p_2 < p_3 < p_4$, összegük $S = p_1^2 + p_2^2 + p_3^2 + p_4^2$.
- Ha egyik prím sem 2 (mind a négy páratlan):
  Minden négyzetszám páratlan, négy páratlan szám összege PÁROS:
  $S \equiv 1 + 1 + 1 + 1 = 4 \equiv 0 \pmod 2$.
  Mivel $S \ge 3^2 + 5^2 + 7^2 + 11^2 = 204 > 2$, $S$ páros és 2-nél nagyobb, tehát összetett!
- Ha az egyik prím a 2 ($p_1 = 2$):
  Ekkor $S = 4 + p_2^2 + p_3^2 + p_4^2$.
  Vizsgáljuk $S$-et modulo 3:
  Ha $p_2, p_3, p_4 > 3$, akkor négyzeteik mind $1 \pmod 3$:
  $S \equiv 4 + 1 + 1 + 1 = 7 \equiv 1 \pmod 3$ (ez még lehetne jó).
  De mi a helyzet mod 4-gyel?
  Páratlan számok négyzete mindig $1 \pmod 8$, speciálisan $1 \pmod 4$.
  $S = 4 + p_2^2 + p_3^2 + p_4^2 \equiv 0 + 1 + 1 + 1 = 3 \pmod 4$.
  Azonban ha $p_2 = 3$: $S = 4 + 9 + p_3^2 + p_4^2 = 13 + p_3^2 + p_4^2$.
  Modulo 3: $13 + 1 + 1 = 15 \equiv 0 \pmod 3$.
  Mivel $S > 3$, $S$ osztható 3-mal, így összetett!
  Ha pedig $p_2 > 3$, akkor modulo 3: $S \equiv 1 + 1 + 1 + 1 = 4 \equiv 1 \pmod 3$, de modulo 8:
  $p_i^2 \equiv 1 \pmod 8 \implies S = 4 + 1 + 1 + 1 = 7 \pmod 8$.
  (A legkisebb ilyen a $2^2 + 5^2 + 7^2 + 11^2 = 4 + 25 + 49 + 121 = 199$. A 199 prím!)
  Vigyázat: $2^2 + 5^2 + 7^2 + 11^2 = 199$ PRÍMSZÁM!
  Tehát LÉTEZIK ilyen négy prím ($2, 5, 7, 11$)! $\blacksquare$

::: elmelet
**Elméleti háttér — Négyzetösszegek paritása és prímkorlátok.**

Ha $p$ és $q$ prímek és $p^2 + q^2$ prím:
- Ha mindkét prím páratlan, akkor $p^2 \equiv 1, q^2 \equiv 1 \pmod 2$, így összegük $p^2 + q^2 \ge 9 + 9 = 18$ páros összetett szám.
- Tehát szükségképpen az egyik prím $p = 2$. Ekkor $4 + q^2$ prím.
Modulo 3 vizsgálva: ha $q > 3$, akkor $q^2 \equiv 1 \pmod 3$, így $4 + q^2 \equiv 1 + 1 = 2 \pmod 3$. Ha $q = 3$, akkor $4 + 9 = 13$ prím.
:::

## Gy2.21.1. feladat

Oldjuk meg a prímek halmazán a $p^2 - 2q^2 = 1$ egyenletet!

**Megoldás.**

$p^2 - 1 = 2q^2 \iff (p - 1)(p + 1) = 2q^2$.
- Ha $p = 2$: $4 - 2q^2 = 1 \implies 2q^2 = 3$ (nincs mo.).
- Ha $p > 2$ páratlan: $8 \mid p^2 - 1 \implies 8 \mid 2q^2 \implies 4 \mid q^2 \implies 2 \mid q \implies q = 2$.
Ekkor $p^2 - 2(4) = 1 \implies p^2 = 9 \implies p = 3$.
A $p = 3$ prím!
**Egyetlen megoldás: $(p, q) = (3, 2)$.**

::: elmelet
**Elméleti háttér — Páros prímek kényszerfeltétele diofantoszi egyenletekben.**

Amikor egy diofantoszi egyenletben prímek szerepelnek (pl. $p^2 - 2q^2 = 1$ vagy $p^a + q^b = r^c$):
A paritásvizsgálat a legerősebb első lépés:
- Ha két prím összege vagy különbsége páratlan, az egyik prímnek szükségképpen párosnak, azaz $2$-nek kell lennie.
- Modulo 3, 4 vagy 8 vizsgálattal a négyzetszámok lehetséges maradékai ($x^2 \equiv 0, 1 \pmod 3, 4$) kizárják a végtelen ágakat, és véges sok prímértékre redukálják a rendszert.
:::

## Gy2.21.2. feladat

Oldjuk meg a prímszámok körében a $p^2 - 5q^2 = 4$ egyenletet!

**Megoldás.**

- Ha $q = 2$: $p^2 - 5(4) = 4 \implies p^2 = 24$ (nem négyzetszám).
- Ha $q = 3$: $p^2 - 5(9) = 4 \implies p^2 = 49 \implies p = 7$. Mindkettő prím! Megoldás: $(7, 3)$.
- Ha $q > 3$: akkor $q^2 \equiv 1 \pmod 3$, így $p^2 \equiv 5(1) + 4 = 9 \equiv 0 \pmod 3 \implies 3 \mid p \implies p = 3$.
  De $p = 3 \implies 9 - 5q^2 = 4 \implies 5q^2 = 5 \implies q^2 = 1 \implies q = 1$ (nem prím).
**Egyetlen megoldás: $(p, q) = (7, 3)$.**

::: elmelet
**Elméleti háttér — Pell-típusú diofantoszi egyenletek moduláris szűrése.**

Egy $x^2 - d y^2 = c$ alakú egyenlet vizsgálatánál a modulus megválasztása a kulcs:
Ha az egyenletet modulo $p$ redukáljuk, ahol $d$ kvadratikus nem-maradék modulo $p$:
A bal oldal lehetséges maradékai szigorúan korlátozottak. Ha a jobb oldal nem szerepel a lehetséges maradékok között, az egyenletnek semmilyen egész megoldása nem lehet.
Például modulo 3: $x^2 - 3y^2 \equiv x^2 \in \{0, 1\} \pmod 3$.
:::

## Gy2.22.1. feladat

Igazoljuk, hogy végtelen sok $n$ esetén $13 \mid 2^n + 3^n$!

**Megoldás.**

Keressünk kis megoldást:
- $n = 1$: $2 + 3 = 5 \not\equiv 0$.
- $n = 2$: $4 + 9 = 13 \equiv 0 \pmod{13}$!
Mivel $2^2 = 4$ és $3^2 = 9 \equiv -4 \pmod{13}$:
Minden páratlan $m$-re: $(2^2)^m + (3^2)^m \equiv 4^m + (-4)^m = 0 \pmod{13}$.
Így minden $n = 2(2k + 1) = 4k + 2$ alakú számra $13 \mid 2^n + 3^n$.
**Végtelen sok van: $n = 4k + 2$ ($k \ge 0$).**

::: elmelet
**Elméleti háttér — Négyzetek ellentettje és kvadratikus reciprocitás.**

Ha egy $p$ prím felírható $a^2 + b^2 = p$ alakban:
Modulo $p$ véve az egyenletet: $a^2 \equiv -b^2 \pmod p$.
Beszorozva $(b^{-1})^2$-tel: $(a b^{-1})^2 \equiv -1 \pmod p$.
Ez azt jelenti, hogy $-1$ kvadratikus maradék modulo $p$.
Euler kritériuma szerint $(-1)^{(p-1)/2} \equiv 1 \pmod p$, ami pontosan akkor teljesül, ha $\frac{p-1}{2}$ páros, azaz $p \equiv 1 \pmod 4$ (Fermat karácsonyi tétele).
:::

## Gy2.22.2. feladat

Létezik-e olyan $n$, amelyre $7 \mid 2^n + 5^n$?

**Megoldás.**

Modulo 7 vizsgálva:
$5 \equiv -2 \pmod 7$.
Ezért minden $n$-re:
$$2^n + 5^n \equiv 2^n + (-2)^n \pmod 7.$$
- Ha $n$ páratlan: $2^n + (-2)^n = 2^n - 2^n = 0 \pmod 7$.
Tehát **minden páratlan $n$ pozitív egészre** $7 \mid 2^n + 5^n$!
(Például $n = 1$: $2 + 5 = 7$; $n = 3$: $8 + 125 = 133 = 7 \cdot 19$.)
**Igen, minden páratlan $n$-re teljesül.**

::: elmelet
**Elméleti háttér — Ellentett alapok hatványösszege és páratlan kitevők.**

Ha két szám összege osztható egy $m$ modulussal ($a + b \equiv 0 \pmod m$, azaz $b \equiv -a \pmod m$):
Minden $n$ kitevőre:
$$a^n + b^n \equiv a^n + (-a)^n = a^n + (-1)^n a^n \pmod m.$$
- Ha $n$ páratlan: $(-1)^n = -1$, így $a^n - a^n = 0 \pmod m$, vagyis $m \mid a^n + b^n$ minden páratlan $n$-re teljesül!
- Ha $n$ páros: $a^n + b^n \equiv 2a^n \pmod m$, ami csak akkor osztható $m$-mel, ha $m \mid 2a^n$.
:::

---

# Az 3. feladatsorhoz – Megoldások — Oszthatóság az egész számok körében, Euklideszi algoritmus, l.n.k.o. és l.k.k.t.

## Gy3.1.1. feladat

Számítsuk ki a $\sum_{k=1}^{n} (6k - 3)$ összeget!

**Megoldás.**

$$\sum_{k=1}^n (6k - 3) = 6\sum_{k=1}^n k - 3\sum_{k=1}^n 1 = 6 \cdot \frac{n(n+1)}{2} - 3n = 3n(n+1) - 3n = 3n^2.$$
(Érdekesség: $n = 1 \to 3$, $n = 2 \to 3 + 9 = 12 = 3(4)$, $n = 3 \to 12 + 15 = 27 = 3(9)$.)
**Végeredmény:** $3n^2$.

::: elmelet
**Elméleti háttér — Számtani sorozatok összegzése és másodfokú polinomok.**

Minden $a_k = a_1 + (k-1)d$ számtani sorozat első $n$ tagjának összege egy konstans nélküli másodfokú polinom:
$$S_n = \sum_{k=1}^n a_k = n \cdot \frac{2a_1 + (n-1)d}{2} = \frac{d}{2} n^2 + \left(a_1 - \frac{d}{2}\right) n.$$
A feladatban $a_k = 6k - 3$, így $a_1 = 3$ és a differencia $d = 6$.
Behelyettesítve: $\frac{6}{2} n^2 + (3 - 3) n = 3n^2$.
Megjegyzés: $6k - 3 = 3(2k - 1)$, így az összeg a klasszikus páratlan számok összegének ($\sum (2k-1) = n^2$) pontosan a 3-szorosa: $3n^2$.
:::

## Gy3.1.2. feladat

Mennyi az értéke a $\sum_{k=0}^{50} (-1)^k \binom{100}{2k}$ összegnek? Fejezzük ki zárt alakban a komplex binomiális tétel segítségével!

**Megoldás.**

Tekintsük az $(1 + i)^{100}$ kifejezést:
$$(1 + i)^{100} = \sum_{m=0}^{100} \binom{100}{m} i^m.$$
A valós rész pontosan a páros indexű tagokból áll ($i^{2k} = (-1)^k$):
$$\operatorname{Re}((1 + i)^{100}) = \sum_{k=0}^{50} \binom{100}{2k} (-1)^k.$$
Számítsuk ki $(1 + i)^{100}$ értékét trigonometrikus alakban:
$1 + i = \sqrt{2}\left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)$.
$$(1 + i)^{100} = (\sqrt{2})^{100} \left(\cos\frac{100\pi}{4} + i\sin\frac{100\pi}{4}\right) = 2^{50}(\cos(25\pi) + i\sin(25\pi)) = 2^{50}(-1 + 0i) = -2^{50}.$$
Ennek valós része $-2^{50}$.
**Végeredmény:** $-2^{50}$.

::: elmelet
**Elméleti háttér — Komplex szűrőmódszer binomiális összegekre.**
Az egységgyökök felhasználásával tetszőleges maradékosztályú indexek kiszűrhetők: $\frac{1}{m}\sum_{j=0}^{m-1} \varepsilon^{-jr} (1 + \varepsilon^j x)^n$ adja a $\pmod m$ indexű tagok összegét.
:::

## Gy3.2.1. feladat

Alakítsuk szorzattá a valós számok felett az $x^4 + 64$ kifejezést!

**Megoldás.**

Alkalmazzuk a Sophie Germain-féle teljes négyzetté kiegészítést:
$$x^4 + 64 = x^4 + 16x^2 + 64 - 16x^2 = (x^2 + 8)^2 - (4x)^2 = (x^2 - 4x + 8)(x^2 + 4x + 8).$$
Mindkét másodfokú tényező diszkriminánsa negatív ($\Delta = 16 - 32 = -16 < 0$), így $\mathbb{R}$ felett nem bonthatók tovább.
**Végeredmény:** $(x^2 - 4x + 8)(x^2 + 4x + 8)$.

::: elmelet
**Elméleti háttér — Negyedfokú polinomok teljes négyzetté kiegészítése.**

Egy $x^4 + c$ alakú binom valós faktorizációja a teljes négyzetté kiegészítés módszerével történik:
$$x^4 + 4a^4 = (x^2 + 2a^2)^2 - 4a^2 x^2 = (x^2 - 2ax + 2a^2)(x^2 + 2ax + 2a^2).$$
Hasonlóan $x^4 + x^2 + 1 = (x^2 + 1)^2 - x^2 = (x^2 - x + 1)(x^2 + x + 1)$.
Ez a technika garantálja, hogy a negatív diszkriminánsú komplex gyökpárok valós másodfokú faktorokká álljanak össze anélkül, hogy a komplex számtestre át kellene térni.
:::

## Gy3.2.2. feladat

Bontsuk fel racionális tényezők szorzatára az $x^6 + 1$ polinomot!

**Megoldás.**

Mivel $6 = 2 \cdot 3$ páratlan tényezőt tartalmaz ($q = 3$):
$$x^6 + 1 = (x^2)^3 + 1^3 = (x^2 + 1)( (x^2)^2 - x^2 + 1 ) = (x^2 + 1)(x^4 - x^2 + 1).$$
Mindkét tényező irreducibilis $\mathbb{Q}$ felett.
**Végeredmény:** $(x^2 + 1)(x^4 - x^2 + 1)$.

::: elmelet
**Elméleti háttér — Körosztási polinomok és az $x^n \pm 1$ faktorizációja.**

Az $x^n - 1$ polinom felbontása a primitív egységgyökök $\Phi_d(x)$ körosztási polinomjainak szorzatára:
$$x^n - 1 = \prod_{d \mid n} \Phi_d(x).$$
Az $x^6 + 1$ polinom esetén az $y = x^2$ helyettesítéssel $y^3 + 1 = (y + 1)(y^2 - y + 1) = (x^2 + 1)(x^4 - x^2 + 1)$.
Az $x^4 - x^2 + 1$ tovább bontható valósban: $(x^2 + 1)^2 - 3x^2 = (x^2 - \sqrt{3}x + 1)(x^2 + \sqrt{3}x + 1)$.
:::

## Gy3.3.1. feladat

Gyöktelenítsük az alábbi tört nevezőjét:
$$\frac{4}{\sqrt[3]{4} - \sqrt[3]{2}}.$$

**Megoldás.**

Emeljünk ki $\sqrt[3]{2}$-t a nevezőből:
$$\sqrt[3]{4} - \sqrt[3]{2} = \sqrt[3]{2}(\sqrt[3]{2} - 1).$$
Bővítsünk $(\sqrt[3]{4} + \sqrt[3]{2} + 1)$-gyel:
$$(\sqrt[3]{2} - 1)(\sqrt[3]{4} + \sqrt[3]{2} + 1) = 2 - 1 = 1.$$
Ekkor a tört:
$$\frac{4(\sqrt[3]{4} + \sqrt[3]{2} + 1)}{\sqrt[3]{2}} = \frac{4(\sqrt[3]{4} + \sqrt[3]{2} + 1)\sqrt[3]{4}}{2} = 2(\sqrt[3]{4} + \sqrt[3]{2} + 1)\sqrt[3]{4} = 2(2 + 2 + \sqrt[3]{4}) \dots$$
Vagy közvetlenül:
$\frac{4}{\sqrt[3]{2}(\sqrt[3]{2}-1)} = 4 \cdot 2^{-1/3} \cdot \frac{\sqrt[3]{4}+\sqrt[3]{2}+1}{1} = 2^{5/3} + 2^{4/3} + 2^{2/3} = 2\sqrt[3]{4} + 2\sqrt[3]{2} + \sqrt[3]{16} = 4\sqrt[3]{2} + 2\sqrt[3]{4}$.
**Végeredmény:** $4\sqrt[3]{2} + 2\sqrt[3]{4}$ (vagy $2\sqrt[3]{2}(2 + \sqrt[3]{2})$).

::: elmelet
**Elméleti háttér — Köbgyökös nevezők gyöktelenítése (köbök különbsége).**

A $\frac{1}{\sqrt[3]{a} \pm \sqrt[3]{b}}$ típusú törtek gyöktelenítéséhez az $x^3 \pm y^3 = (x \pm y)(x^2 \mp xy + y^2)$ azonosságot alkalmazzuk:
Ha a nevező $\sqrt[3]{a} - \sqrt[3]{b}$, bővítünk a hiányos négyzetösszeggel:
$$\sqrt[3]{a^2} + \sqrt[3]{ab} + \sqrt[3]{b^2}.$$
Ekkor a nevezőben $a - b$ jelenik meg, ami racionális szám. Ha a tagokból közös köbgyöktényező emelhető ki, a bővítés előtt érdemes egyszerűsíteni a számítási lépések minimalizálására.
:::

## Gy3.3.2. feladat

Gyöktelenítsük az $\frac{1}{1 + \sqrt{2} + \sqrt{3}}$ tört nevezőjét!

**Megoldás.**

Csoportosítsunk: $(1 + \sqrt{2}) + \sqrt{3}$.
Bővítsünk $[(1 + \sqrt{2}) - \sqrt{3}]$-mal:
Nevező: $(1 + \sqrt{2})^2 - 3 = 1 + 2\sqrt{2} + 2 - 3 = 2\sqrt{2}$.
Számláló: $1 + \sqrt{2} - \sqrt{3}$.
Bővítsünk $\sqrt{2}$-vel:
$$\frac{(1 + \sqrt{2} - \sqrt{3})\sqrt{2}}{2\sqrt{2} \cdot \sqrt{2}} = \frac{\sqrt{2} + 2 - \sqrt{6}}{4}.$$
**Végeredmény:** $\frac{2 + \sqrt{2} - \sqrt{6}}{4}$.

::: elmelet
**Elméleti háttér — Kétlépéses konjugálás összetett gyökös kifejezéseknél.**

Ha a nevezőben három vagy több gyök szerepel (pl. $1 + \sqrt{2} + \sqrt{3}$):
1. *Csoportosítás:* a nevezőt két blokkra osztjuk: $A = 1 + \sqrt{2}$ és $B = \sqrt{3}$.
2. *Első bővítés:* szorzunk az $A - B$ konjugálttal, ekkor a nevező $A^2 - B^2 = (1 + \sqrt{2})^2 - 3 = 2\sqrt{2}$ lesz, amelyben már csak egyetlen négyzetgyök maradt.
3. *Második bővítés:* szorzunk $\sqrt{2}$-vel, elérve a teljesen racionális nevezőt.
Ez az eljárás a Galois-elméletben a testbővítések normájának kiszámítását valósítja meg elemi szinten.
:::

## Gy3.4.1. feladat

Oldjuk meg a valós számok körében az $x^3 - 3x^2 + 3x - 28 = 0$ egyenletet!

**Megoldás.**

Vegyük észre: $x^3 - 3x^2 + 3x - 1 = (x - 1)^3$.
Így az egyenlet:
$$(x - 1)^3 - 27 = 0 \iff (x - 1)^3 = 27.$$
Valós köbgyököt vonva:
$$x - 1 = 3 \implies x = 4.$$
**Egyetlen valós gyök: $x = 4$.**

::: elmelet
**Elméleti háttér — Valós köbgyökvonás egyértelműsége és monotonitása.**

A valós számok halmazán az $f(x) = x^3$ függvény szigorúan monoton növekvő és szürjektív ($\mathbb{R} \to \mathbb{R}$).
Ennek következtében minden valós számnak pontosan egy valós köbgyöke létezik: $\sqrt[3]{-a} = -\sqrt[3]{a}$.
A komplex számtest felett ezzel szemben minden nemnulla számnak pontosan 3 köbgyöke van, amelyek a komplex síkon egy szabályos háromszög csúcsait alkotják (a harmadik egységgyökökkel $\omega = e^{2\pi i / 3}$ szorozva).
:::

## Gy3.4.2. feladat

Határozzuk meg az $x^3 + 9x^2 + 27x + 26 = 0$ egyenlet összes komplex gyökét!

**Megoldás.**

$x^3 + 9x^2 + 27x + 27 = (x + 3)^3$.
Az egyenlet:
$$(x + 3)^3 - 1 = 0 \iff (x + 3)^3 = 1.$$
Az 1 harmadik egységgyökei: $1, \omega, \omega^2$, ahol $\omega = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$.
1. $x + 3 = 1 \implies x_1 = -2$.
2. $x + 3 = -\frac{1}{2} + i\frac{\sqrt{3}}{2} \implies x_2 = -\frac{7}{2} + i\frac{\sqrt{3}}{2}$.
3. $x + 3 = -\frac{1}{2} - i\frac{\sqrt{3}}{2} \implies x_3 = -\frac{7}{2} - i\frac{\sqrt{3}}{2}$.
**A gyökök:** $x_1 = -2$, $x_{2,3} = -\frac{7}{2} \pm i\frac{\sqrt{3}}{2}$.

::: elmelet
**Elméleti háttér — Köbgyökös azonosságok és Cardano-képletek.**

Ha $\sqrt[3]{a} + \sqrt[3]{b} = c$, mindkét oldalt köbre emelve az $(u + v)^3 = u^3 + v^3 + 3uv(u + v)$ azonosságot alkalmazzuk:
$$c^3 = a + b + 3\sqrt[3]{ab} \cdot c.$$
Ez a kapcsolat az alapja a harmadfokú egyenletek Cardano-féle megoldóképletének, és lehetővé teszi összetett gyökös kifejezések zárt egész vagy racionális formára hozását.
:::

## Gy3.5.1. feladat

Oldjuk meg a valós számok körében az $u + v = 10, uv = 21$ egyenletrendszert!

**Megoldás.**

A segédegyenlet:
$$t^2 - 10t + 21 = 0 \iff (t - 3)(t - 7) = 0.$$
A gyökök $t_1 = 3, t_2 = 7$.
**Megoldáspárok:** $(u, v) \in \{(3, 7), (7, 3)\}$. (Ellenőrzés: $3+7=10, 3 \cdot 7 = 21$.)

::: elmelet
**Elméleti háttér — Szimmetrikus kétismeretlenes rendszerek és elemi szimmetrikus polinomok.**

Ha egy egyenletrendszer invariáns az ismeretlenek $x \leftrightarrow y$ cseréjére, érdemes bevezetni az elemi szimmetrikus polinomokat:
$$\sigma_1 = x + y, \quad \sigma_2 = xy.$$
A magasabb fokú szimmetrikus kifejezések a Newton–Girard formulákkal fejezhetők ki:
$$x^2 + y^2 = \sigma_1^2 - 2\sigma_2, \quad x^3 + y^3 = \sigma_1^3 - 3\sigma_1 \sigma_2.$$
A $\sigma_1, \sigma_2$ értékek meghatározása után $x$ és $y$ a $t^2 - \sigma_1 t + \sigma_2 = 0$ másodfokú egyenlet két gyökeként adódik, ami automatikusan adja a szimmetrikus megoldáspárokat.
:::

## Gy3.5.2. feladat

Mely valós $c$ értékekre van valós megoldása az $u + v = 4, uv = c$ egyenletrendszernek?

**Megoldás.**

A segédegyenlet: $t^2 - 4t + c = 0$.
A valós megoldhatóság feltétele a nemnegatív diszkrimináns:
$$\Delta = (-4)^2 - 4(1)(c) = 16 - 4c \ge 0 \iff 4c \le 16 \iff c \le 4.$$
Ha $c = 4$, $u = v = 2$. Ha $c < 4$, két különböző valós megoldás van.
**Feltétel:** $c \le 4$.

::: elmelet
**Elméleti háttér — Newton–Girard-formulák hatványösszegekre.**

Legyenek $s_k = x^k + y^k$ a hatványösszegek és $\sigma_1 = x + y, \sigma_2 = xy$ az elemi szimmetrikus polinomok.
A rekurzív Newton-formula szerint:
$$s_k - \sigma_1 s_{k-1} + \sigma_2 s_{k-2} = 0 \quad (k \ge 2).$$
Kezdeti értékek: $s_0 = 2, s_1 = \sigma_1$.
Ezzel $s_2 = \sigma_1^2 - 2\sigma_2$, $s_3 = \sigma_1^3 - 3\sigma_1 \sigma_2$, $s_4 = \sigma_1^4 - 4\sigma_1^2 \sigma_2 + 2\sigma_2^2$, ami tetszőleges fokú szimmetrikus egyenletrendszert lineárisan megoldhatóvá tesz.
:::

## Gy3.6.1. feladat

Határozzuk meg az $(x^2 - 3x + 2)^3$ polinom fokszámát és konstans tagját!

**Megoldás.**

- A fokszám a hatványozás szabálya szerint: $\deg(P^k) = k \cdot \deg(P) = 3 \cdot 2 = 6$.
- A konstans tag a $P(0)$ helyettesítési érték:
  $$P(0) = (0^2 - 3(0) + 2)^3 = 2^3 = 8.$$
**Fokszám: 6, konstans tag: 8.**

::: elmelet
**Elméleti háttér — Polinomok kiértékelése és együttható-összegek.**

Legyen $P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$.
A kiértékelési leképezés (evaluációs homomorfizmus) alapvető tulajdonságai:
1. *Konstans tag:* $P(0) = a_0$;
2. *Összes együttható összege:* $P(1) = \sum_{k=0}^n a_k$;
3. *Alternáló együttható-összeg:* $P(-1) = a_0 - a_1 + a_2 - \dots + (-1)^n a_n$;
4. *Páros fokú együtthatók összege:* $\frac{P(1) + P(-1)}{2}$;
5. *Páratlan fokú együtthatók összege:* $\frac{P(1) - P(-1)}{2}$.
Ezek a tulajdonságok a polinom kibontása nélkül, tetszőleges szorzat- vagy hatványalakból azonnal kiszámíthatók.
:::

## Gy3.6.2. feladat

Számítsuk ki a $(2x^2 - x + 1)(x^3 - 2)$ polinom együtthatóinak összegét anélkül, hogy kibontanánk a szorzatot!

**Megoldás.**

Az együtthatók összege a $P(1)$ érték:
$$P(1) = (2(1)^2 - 1 + 1)(1^3 - 2) = (2 - 1 + 1)(1 - 2) = 2 \cdot (-1) = -2.$$
**Az együtthatók összege: $-2$.**

::: elmelet
**Elméleti háttér — Evaluáció mint gyűrűhomomorfizmus.**

A $\operatorname{ev}_c: K[x] \to K, P \mapsto P(c)$ leképezés tetszőleges $c \in K$ esetén gyűrűhomomorfizmus:
$$\operatorname{ev}_c(P + Q) = P(c) + Q(c), \quad \operatorname{ev}_c(P \cdot Q) = P(c) \cdot Q(c).$$
Ennek következtében egy szorzatpolinom együtthatóinak összege a tényezők együttható-összegeinek szorzata:
$$(P \cdot Q)(1) = P(1) \cdot Q(1).$$
Ez teszi lehetővé hatalmas szorzatok együttható-összegeinek egyetlen lépésben történő kiszámítását.
:::

## Gy3.7.1. feladat

Határozzuk meg az $x^4$ együtthatóját az $(1 + 2x - x^2)(3 - x + 2x^2 + 4x^3)$ szorzatban!

**Megoldás.**

A párok, melyek összege 4:
- $i = 0, j = 4$: $1 \cdot 0 = 0$.
- $i = 1, j = 3$: $2 \cdot 4 = 8$.
- $i = 2, j = 2$: $(-1) \cdot 2 = -2$.
Összeg: $8 - 2 = 6$.
**Az $x^4$ együtthatója: 6.**

::: elmelet
**Elméleti háttér — Kijelölt fokszámú együtthatók konvolúciója.**

Két polinom szorzatában $P(x) Q(x) = \sum c_k x^k$ a $k$-adik együttható a Cauchy-szorzat (diszkrét konvolúció) szerint:
$$c_k = \sum_{j=0}^k a_j b_{k-j}.$$
Egy adott $x^k$ együttható meghatározásához nem kell a teljes szorzatot elvégezni: elegendő megkeresni azokat az $(i, j)$ indexpárokat, amelyekre $i + j = k$, és összegezni az $a_i b_j$ szorzatokat.
:::

## Gy3.7.2. feladat

Mennyi az $x^3$ együtthatója az $(1 + x + x^2)^4$ polinomban?

**Megoldás.**

Alkalmazzuk a polinomiális tételt: az $1^a x^b (x^2)^c$ tagban $a + b + c = 4$ és $b + 2c = 3$.
Mivel $c \ge 0$ egész:
- Ha $c = 0 \implies b = 3 \implies a = 4 - 3 - 0 = 1$. Együttható: $\frac{4!}{1! 3! 0!} = 4$.
- Ha $c = 1 \implies b = 1 \implies a = 4 - 1 - 1 = 2$. Együttható: $\frac{4!}{2! 1! 1!} = \frac{24}{2} = 12$.
- Ha $c \ge 2 \implies 2c \ge 4 > 3$, nincs több eset.
Összesen: $4 + 12 = 16$.
**Az $x^3$ együtthatója: 16.**

::: elmelet
**Elméleti háttér — A polinomiális tétel (Multinomial Theorem).**

Többtagú kifejezés hatványozásakor a binomiális tétel általánosítása érvényes:
$$(x_1 + x_2 + \dots + x_m)^n = \sum_{k_1 + \dots + k_m = n} \binom{n}{k_1, k_2, \dots, k_m} x_1^{k_1} x_2^{k_2} \dots x_m^{k_m},$$
ahol a multinomiális együttható:
$$\binom{n}{k_1, \dots, k_m} = \frac{n!}{k_1!\, k_2! \dots k_m!}.$$
Egy konkrét $x^r$ tag együtthatóját azon index-vektorok adják, amelyeknél a fokszámok súlyozott összege $\sum i \cdot k_i = r$.
:::

## Gy3.8.1. feladat

Lehetséges-e, hogy két ötödfokú polinom összege nulladfokú legyen? Adjunk példát!

**Megoldás.**

**Igen, lehetséges.**
Például legyen:
$$P(x) = x^5 + 2x^4 + 3, \qquad Q(x) = -x^5 - 2x^4 + 4.$$
Összegük:
$$P(x) + Q(x) = 7.$$
Ez egy nemnulla konstans polinom, melynek fokszáma $\deg(7) = 0$.
Mindkét polinom ötödfokú volt, összegük nulladfokú.

::: elmelet
**Elméleti háttér — A fokszám axiómái és a nullpolinom foka.**

Egy $P(x) = \sum a_k x^k$ polinom fokán a legmagasabb nemnulla együtthatójú tag kitevőjét értjük: $\deg P = \max\{k : a_k \neq 0\}$.
- Nemnulla konstans polinom foka: $\deg(c) = 0$ ($c \neq 0$);
- Nullpolinom foka: konvenció szerint $\deg(0) = -\infty$ (vagy nincs értelmezve).
Ennek a konvenciónak az oka a szorzási fokszámtétel megőrzése: $\deg(P \cdot Q) = \deg P + \deg Q$, ami $-\infty$-nel is érvényes marad ($-\infty + k = -\infty$).
:::

## Gy3.8.2. feladat

Tudjuk, hogy $\deg(f) = 5$ és $\deg(f - g) = 2$. Mennyi lehet $\deg(g)$?

**Megoldás.**

Írjuk fel $g$-t: $g = f - (f - g)$.
Mivel $\deg(f) = 5$ és $\deg(f - g) = 2$, a két polinom fokszáma különbözik ($5 \ne 2$).
Ezért az összegük/különbségük foka a nagyobbik fokszám:
$$\deg(g) = \max(\deg f, \deg(f - g)) = \max(5, 2) = 5.$$
A főegyütthatója megegyezik $f$ főegyütthatójával.
**Egyetlen lehetséges érték: $\deg(g) = 5$.**

::: elmelet
**Elméleti háttér — Polinomösszeg foka és a vezértagok kiejtése.**

Tetszőleges $P, Q \in K[x]$ polinomokra:
$$\deg(P + Q) \le \max(\deg P, \deg Q).$$
- Ha $\deg P \neq \deg Q$, akkor egyenlőség áll fenn: $\deg(P + Q) = \max(\deg P, \deg Q)$ (a nagyobbik fok determinálja az összeget).
- Ha $\deg P = \deg Q$, akkor a vezértagok összeadódhatnak vagy kiejthetik egymást. Ha a főegyütthatók ellentettek ($a_n + b_n = 0$), a fokszám szigorúan csökkenhet, akár $-\infty$-ig is (ha $P = -Q$).
:::

## Gy3.9.1. feladat

Két polinom szorzata 8-adfokú, összegük 6-odfokú. Mik lehetnek a fokszámok?

**Megoldás.**

$a + b = 8$ és $\deg(P + Q) = 6$.
- Ha $a \ne b$: $\max(a, b) = 6$. Ekkor a másik $\le 5$, és összegük $8 \implies 6 + 2 = 8$.
  Tehát a fokszámok lehetnek $\{6, 2\}$.
- Ha $a = b$: $2a = 8 \implies a = b = 4$. De ekkor $\max(a, b) = 4$, így $\deg(P + Q) \le 4$, ami nem lehet 6!
**Egyetlen lehetőség: az egyik másodfokú, a másik hatodfokú (fokszámok: 2 és 6).**

::: elmelet
**Elméleti háttér — Fokszám-egyenletek integritási tartományok felett.**

Ha $K$ egy test (vagy integritási tartomány):
$$\deg(P \cdot Q) = \deg P + \deg Q.$$
Ha egy egyenletrendszerben megadott az összeg és a szorzat foka:
$\deg(P \cdot Q) = d_1 + d_2 = S$ és $\deg(P + Q) = \max(d_1, d_2) = M$ (feltéve, hogy nincs kiejtés).
Ebből a kétismeretlenes lineáris rendszerből a két polinom foka egyértelműen meghatározható.
:::

## Gy3.9.2. feladat

Létezik-e olyan két polinom, amelyek szorzata 6-odfokú, összegük pedig 7-edfokú?

**Megoldás.**

Nemnegatív egész fokszámokra: $\deg(PQ) = a + b = 6$.
Ebből $a \le 6$ és $b \le 6$, így $\max(a, b) \le 6$.
De az összeg foka legfeljebb $\max(a, b) \le 6$, így nem lehet 7!
**NEM létezik ilyen polinom.**

::: elmelet
**Elméleti háttér — Összetett polinomok foka (láncszabály fokszámokra).**

Ha $P(x)$ és $Q(x)$ nemnulla polinomok, akkor kompozíciójuk $P(Q(x))$ foka:
$$\deg(P \circ Q) = \deg P \cdot \deg Q.$$
*Bizonyítás:* Legyen $P(x) = a_n x^n + \dots$ ($a_n \neq 0$) és $Q(x) = b_m x^m + \dots$ ($b_m \neq 0$).
Ekkor $P(Q(x)) = a_n (b_m x^m + \dots)^n + \dots = a_n b_m^n x^{n \cdot m} + \dots$
Mivel a főegyüttható $a_n b_m^n \neq 0$, a fokszám pontosan $n \cdot m$.
A kompozíció foka tehát multiplikatív, szemben a szorzat fokának additív természetével.
:::

## Gy3.10.1. feladat

Emeljük ki az $(x - 3)$ gyöktényezőt az $x^3 - 4x^2 - 3x + 18$ polinomból, és határozzuk meg a gyökök multiplicitását!

**Megoldás.**

Horner $c = 3$-mal az $[1, -4, -3, 18]$ soron:
- $b_2 = 1$
- $b_1 = 3(1) - 4 = -1$
- $b_0 = 3(-1) - 3 = -6$
- Maradék: $3(-6) + 18 = 0$.
A hányados $x^2 - x - 6 = (x - 3)(x + 2)$.
Így $x^3 - 4x^2 - 3x + 18 = (x - 3)^2 (x + 2)$.
**A gyökök:** $x = 3$ (kétszeres gyök) és $x = -2$ (egyszeres gyök).

::: elmelet
**Elméleti háttér — Gyöktényező leválasztása és multiplicitás.**

Ha $P(c) = 0$, a Bézout-tétel szerint $P(x) = (x - c) Q(x)$.
A $c$ gyök multiplicitása (többszörössége) az a maximális $m \ge 1$ egész szám, amelyre $(x - c)^m \mid P(x)$.
Ez azt jelenti, hogy:
$$P(x) = (x - c)^m R(x), \quad \text{ahol } R(c) \neq 0.$$
A multiplicitás megállapításához a gyöktényezőt iteratívan osztjuk le (Horner-elrendezéssel), amíg a hányados helyettesítési értéke nem zérus.
:::

## Gy3.10.2. feladat

Bontsuk fel elsőfokú valós tényezők szorzatára az $x^3 - 7x + 6$ polinomot!

**Megoldás.**

Együtthatók összege: $1 + 0 - 7 + 6 = 0 \implies x_1 = 1$ gyök.
Horner $c = 1$-gyel $[1, 0, -7, 6]$:
- $b_2 = 1$
- $b_1 = 1(1) + 0 = 1$
- $b_0 = 1(1) - 7 = -6$
- Maradék: $1(-6) + 6 = 0$.
Hányados: $x^2 + x - 6 = (x - 2)(x + 3)$.
**Gyöktényezős alak:** $(x - 1)(x - 2)(x + 3)$.
**Gyökök:** $1, 2, -3$.

::: elmelet
**Elméleti háttér — Maradékos osztás másodfokú polinommal és Lagrange-interpoláció.**

Ha egy $P(x)$ polinomot osztunk egy $D(x) = (x - a)(x - b)$ ($a \neq b$) szorzattal:
$$P(x) = Q(x)(x - a)(x - b) + R(x), \quad \text{ahol } R(x) = Ax + B.$$
A maradék egy legfeljebb elsőfokú polinom.
Behelyettesítve $x = a$ és $x = b$ értékeket:
$$R(a) = P(a), \quad R(b) = P(b).$$
A két egyenletből $A$ és $B$ azonnal adódik, ami pontosan a 2 pontra felírt Lagrange-féle interpolációs polinom:
$$R(x) = P(a)\frac{x - b}{a - b} + P(b)\frac{x - a}{b - a}.$$
:::

## Gy3.11.1. feladat

Számítsuk ki a Horner-elrendezéssel a $P(x) = 2x^4 - 3x^3 + 5x - 7$ polinom helyettesítési értékét a $c = -2$ helyen, és adjuk meg a hányadospolinomot!

**Megoldás.**

Az együtthatók (ügyelve a hiányzó $x^2$ tagra: $a_2 = 0$): $[2, -3, 0, 5, -7]$.
Horner $c = -2$-vel:
- $b_3 = 2$
- $b_2 = -2(2) - 3 = -7$
- $b_1 = -2(-7) + 0 = 14$
- $b_0 = -2(14) + 5 = -23$
- Maradék: $-2(-23) - 7 = 46 - 7 = 39$.
Tehát: $P(-2) = 39$, a hányados: $g(x) = 2x^3 - 7x^2 + 14x - 23$.
**Eredmény:** $P(x) = (x + 2)(2x^3 - 7x^2 + 14x - 23) + 39$, $P(-2) = 39$.

::: elmelet
**Elméleti háttér — Maradékos osztás négyzetes gyöktényezővel $(x-a)^2$.**

Ha az osztó $D(x) = (x - a)^2$:
A maradék $R(x) = Ax + B$ alakú.
Taylor-fejtést alkalmazva a $P(x)$ polinomra az $x = a$ pont körül:
$$P(x) = P(a) + P'(a)(x - a) + \frac{P''(a)}{2}(x - a)^2 + \dots$$
Mivel az $(x - a)^2$-es és magasabb tagok mind oszthatók $(x - a)^2$-tel:
$$R(x) = P'(a)(x - a) + P(a) = P'(a)x + (P(a) - a P'(a)).$$
Így az $x$ együtthatója mindig az első derivált helyettesítési értéke $P'(a)$, míg a konstans tag $P(a) - a P'(a)$.
:::

## Gy3.11.2. feladat

Döntsük el Horner-módszerrel, hogy $x - 3$ osztója-e a $Q(x) = x^4 - 2x^3 - 2x^2 - 2x - 3$ polinomnak!

**Megoldás.**

Együtthatók: $[1, -2, -2, -2, -3]$, $c = 3$:
- $b_3 = 1$
- $b_2 = 3(1) - 2 = 1$
- $b_1 = 3(1) - 2 = 1$
- $b_0 = 3(1) - 2 = 1$
- Maradék: $3(1) - 3 = 0$.
A maradék 0, tehát $x - 3$ **osztója** $Q(x)$-nek, és a hányados $x^3 + x^2 + x + 1$.
**Igen, osztója.**

::: elmelet
**Elméleti háttér — Osztási maradékok deriválttal nagy kitevőkre.**

Nagy kitevőjű $x^n$ polinomok esetén a fenti Taylor-maradék formula azonnali választ ad:
Ha $P(x) = x^n$, akkor $P(a) = a^n$ és $P'(x) = n x^{n-1} \implies P'(a) = n a^{n-1}$.
A maradék:
$$R(x) = n a^{n-1}(x - a) + a^n = n a^{n-1} x - (n - 1)a^n.$$
Ez szükségtelenné teszi a hosszú polinomosztási algoritmus elvégzését.
:::

## Gy3.12.1. feladat

Iterált Hornerrel határozzuk meg a 2 gyök multiplicitását az $f(x) = x^4 - 4x^3 + 6x^2 - 4x$ polinomban!

**Megoldás.**

Vegyük észre: $f(x) = (x - 1)^4 - 1$ vagy emeljünk ki $x$-et: $x(x - 2)^2 \dots$ vizsgáljuk Hornerrel $c = 2$-nél:
Együtthatók: $[1, -4, 6, -4, 0]$.
1. menet:
- $b_3 = 1, b_2 = -2, b_1 = 2, b_0 = 0$, maradék $r_0 = 0$. (1-szeres)
2. menet $[1, -2, 2, 0]$:
- $b_2 = 1, b_1 = 0, b_0 = 2$, maradék $r_1 = 2(2) + 0 = 4 \ne 0$.
A maradék nem 0! Tehát $x = 2$ csak **egyszeres gyök**.
(Valóban: $f(2) = 16 - 32 + 24 - 8 = 0$, de $f'(x) = 4x^3 - 12x^2 + 12x - 4 \implies f'(2) = 32 - 48 + 24 - 4 = 4 \ne 0$.)
**Multiplicitás: 1 (egyszeres gyök).**

::: elmelet
**Elméleti háttér — Gyökök multiplicitása és a formális derivált.**

*Tétel:* A $c$ szám pontosan akkor legalább $m$-szeres gyöke a $P(x)$ polinomnak, ha
$$P(c) = P'(c) = P''(c) = \dots = P^{(m-1)}(c) = 0.$$
Pontosan akkor $m$-szeres gyök, ha a fenti egyenlőségek mellett $P^{(m)}(c) \neq 0$.
*Bizonyítás Taylor-sorral:* A $P(x) = \sum_{k=0}^n \frac{P^{(k)}(c)}{k!} (x - c)^k$ kifejtésben az első $m$ együttható zérus, így $(x - c)^m$ kiemelhető, és a megmaradó konstans tag $\frac{P^{(m)}(c)}{m!} \neq 0$.
:::

## Gy3.12.2. feladat

Hányszoros gyöke a $-2$ az $x^4 + 8x^3 + 24x^2 + 32x + 16$ polinomnak?

**Megoldás.**

Vegyük észre: a binomiális együtthatók $1, 4 \cdot 2, 6 \cdot 4, 4 \cdot 8, 16$.
Ez pontosan $(x + 2)^4$.
Tehát a gyöktényezős alak $(x + 2)^4$, a $-2$ **négyszeres gyök**.
**Multiplicitás: 4.**

::: elmelet
**Elméleti háttér — Közös gyökök és deriváltak legnagyobb közös osztója.**

*Tétel:* A $P(x)$ polinomnak a $c$ szám pontosan akkor többszörös gyöke, ha $c$ közös gyöke $P(x)$-nek és a formális deriváltjának $P'(x)$-nek:
$$(x - c)^2 \mid P(x) \iff (x - c) \mid \gcd(P(x), P'(x)).$$
Ennek következtében a $P(x)$ polinom pontosan akkor négyzetmentes (minden gyöke egyszeres), ha $\gcd(P(x), P'(x)) = 1$.
Ez a teszt az euklideszi algoritmussal a gyökök explicit kiszámítása nélkül elvégezhető!
:::

## Gy3.13.1. feladat

Írjuk fel az $f(x) = x^3 - 3x + 2$ polinomot $(x - 1)$ hatványai szerint!

**Megoldás.**

Együtthatók: $[1, 0, -3, 2]$, $c = 1$.
1. menet: $1, 1, -2$, maradék $d_0 = 0$.
2. menet $[1, 1, -2]$: $1, 2$, maradék $d_1 = 0$.
3. menet $[1, 2]$: $1$, maradék $d_2 = 3$.
Utolsó: $d_3 = 1$.
Tehát:
$$f(x) = (x - 1)^3 + 3(x - 1)^2.$$
(Ellenőrzés: $(x-1)^2(x-1+3) = (x^2 - 2x + 1)(x + 2) = x^3 + 2x^2 - 2x^2 - 4x + x + 2 = x^3 - 3x + 2$. Helyes!)
**Eredmény:** $(x - 1)^3 + 3(x - 1)^2$.

::: elmelet
**Elméleti háttér — Polinomok Taylor-fejtése pont körül.**

Tetszőleges $n$-edfokú $P(x)$ polinom és tetszőleges $c \in K$ esetén létezik egyértelmű felírás az $x - c$ hatványai szerint:
$$P(x) = b_0 + b_1(x - c) + b_2(x - c)^2 + \dots + b_n(x - c)^n.$$
A Taylor-formula szerint az együtthatók: $b_k = \frac{P^{(k)}(c)}{k!}$.
A $b_0, b_1, \dots, b_n$ együtthatók kiszámításának leggyorsabb módja az iterált Horner-elrendezés $c$-vel való leosztásokkal.
A legkisebb nemnulla $b_k$ indexe pontosan megadja a $c$ gyök multiplicitását.
:::

## Gy3.13.2. feladat

Írjuk fel a $P(x) = x^3 + 4x^2 + 6x + 5$ polinomot $(x + 1)$ hatványai szerint!

**Megoldás.**

Együtthatók $[1, 4, 6, 5]$, $c = -1$:
1. menet: $1, 3, 3$, maradék $d_0 = 2$.
2. menet $[1, 3, 3]$: $1, 2$, maradék $d_1 = 1$.
3. menet $[1, 2]$: $1$, maradék $d_2 = 1$.
Főegyüttható: $d_3 = 1$.
**Eredmény:** $P(x) = (x + 1)^3 + (x + 1)^2 + (x + 1) + 2$.

::: elmelet
**Elméleti háttér — Báziscsere polinomterekben és Taylor-transzformáció.**

Az $\{1, x, x^2, \dots, x^n\}$ monom-bázisról az $\{1, (x-c), (x-c)^2, \dots, (x-c)^n\}$ eltolt bázisra való áttérés a polinomterek automorfizmusa.
A transzformációs mátrix egy alsó háromszögmátrix, melynek elemei a Pascal-háromszög binomiális együtthatói $\binom{i}{j} c^{i-j}$.
Az áttérés megőrzi a műveleti struktúrát és a gyökök multiplicitását.
:::

## Gy3.14.1. feladat

Hány szorzást igényel egy 100-adfokú polinom kiértékelése Horner-elrendezéssel és naiv módszerrel?

**Megoldás.**

- Horner-elrendezéssel: pontosan $n = 100$ szorzás.
- Naiv módszerrel: $\frac{100 \cdot 101}{2} = 5050$ szorzás.
A Horner-módszer több mint 50-szer gyorsabb!
**Horner: 100, naiv: 5050.**

::: elmelet
**Elméleti háttér — Racionális gyökteszt (Gauss-lemma következménye).**

*Tétel:* Legyen $P(x) = a_n x^n + \dots + a_1 x + a_0$ egy egész együtthatós polinom ($a_i \in \mathbb{Z}, a_n \neq 0, a_0 \neq 0$).
Ha a $\frac{p}{q}$ tovább nem egyszerűsíthető tört ($\gcd(p, q) = 1$) gyöke $P$-nek, akkor:
$$p \mid a_0 \quad (\text{a számláló osztja a konstans tagot}),$$
$$q \mid a_n \quad (\text{a nevező osztja a főegyütthatót}).$$
*Bizonyítás:* Behelyettesítve és $q^n$-nel beszorozva: $a_n p^n + a_{n-1} p^{n-1}q + \dots + a_0 q^n = 0$.
Átrendezve: $p(-a_n p^{n-1} - \dots) = a_0 q^n \implies p \mid a_0 q^n \implies p \mid a_0$ (mivel $\gcd(p, q) = 1$). Hasonlóan $q \mid a_n p^n \implies q \mid a_n$.
Főpolinomnál ($a_n = 1$) minden racionális gyök szükségképpen egész szám!
:::

## Gy3.14.2. feladat

Hány összeadásra van szükség a Horner-módszernél egy $n$-edfokú polinom esetén?

**Megoldás.**

A Horner-algoritmus minden lépésben egy szorzást és egy összeadást végez: $b_k = c b_{k+1} + a_k$.
Mivel $k$ az $n-1$-től $0$-ig fut, ez pontosan $n$ lépést jelent.
Így az összeadások száma:
$$n.$$
**Összesen $n$ összeadás szükséges.**

::: elmelet
**Elméleti háttér — Racionális gyökök kizárási tesztje moduláris redukcióval.**

Ha a racionális gyökteszt túl sok $\pm p/q$ jelöltet ad:
Egy egész polinom gyökére tetszőleges $m \in \mathbb{Z}$ esetén teljesül, hogy $x - m \mid P(x) - P(m)$.
Speciálisan tetszőleges egész $m$-re:
$$p - m q \mid P(m).$$
$m = 1$ és $m = -1$ választással a $p - q \mid P(1)$ és $p + q \mid P(-1)$ szigorú feltételek a jelöltek túlnyomó többségét azonnal kizárják.
:::

## Gy3.15.1. feladat

Létezik-e olyan egész együtthatós $f(x)$ polinom, amelyre $f(3) = 5$ és $f(8) = 20$?

**Megoldás.**

Alkalmazzuk a tételt:
$a - b = 8 - 3 = 5$.
$f(a) - f(b) = 20 - 5 = 15$.
Teljesül-e: $5 \mid 15$? Igen, $15 = 5 \cdot 3$.
Tehát a feltétel nem zárja ki a létezést!
Konstruálhatunk is ilyet: legyen elsőfokú: $f(x) = ax + b$.
$f(8) - f(3) = 5a = 15 \implies a = 3$.
$f(3) = 3(3) + b = 5 \implies b = -4$.
A polinom: $f(x) = 3x - 4 \in \mathbb{Z}[x]$.
Ellenőrzés: $f(3) = 9 - 4 = 5$, $f(8) = 24 - 4 = 20$.
**Igen, létezik, például az $f(x) = 3x - 4$ polinom.**

::: elmelet
**Elméleti háttér — Viète-formulák gyökök és együtthatók kapcsolatára.**

Ha $P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_0$ gyökei $\alpha_1, \dots, \alpha_n \in \mathbb{C}$:
A gyöktényezős alak $P(x) = a_n \prod_{i=1}^n (x - \alpha_i)$ beszorzásával és együttható-egyeztetéssel adódnak a Viète-formulák:
$$\sum_{i=1}^n \alpha_i = -\frac{a_{n-1}}{a_n}, \quad \sum_{1 \le i < j \le n} \alpha_i \alpha_j = \frac{a_{n-2}}{a_n}, \quad \dots, \quad \prod_{i=1}^n \alpha_i = (-1)^n \frac{a_0}{a_n}.$$
Másodfokú polinomra ($a x^2 + b x + c$): $x_1 + x_2 = -b/a$, $x_1 x_2 = c/a$.
Harmadfokúra: $x_1 + x_2 + x_3 = -b/a$, $x_1 x_2 + x_1 x_3 + x_2 x_3 = c/a$, $x_1 x_2 x_3 = -d/a$.
:::

## Gy3.15.2. feladat

Bizonyítsuk be, hogy ha $P(x) \in \mathbb{Z}[x]$, és $P(0)$ valamint $P(1)$ mindketten páratlan számok, akkor $P(x)$-nek nem lehet egész gyöke!

**Megoldás.**

*Bizonyítás indirekt úton:*
Tegyük fel, hogy létezik olyan $c \in \mathbb{Z}$ egész szám, amelyre $P(c) = 0$.
A paritás szerint $c$ vagy páros, vagy páratlan:
1. Ha $c$ páros: ekkor $c - 0 = c$ páros szám.
   A tétel szerint $c - 0 \mid P(c) - P(0) \implies c \mid 0 - P(0) = -P(0)$.
   Mivel $c$ páros, $-P(0)$-nak is párosnak kellene lennie, tehát $P(0)$ páros.
   Ez ellentmond annak, hogy $P(0)$ páratlan!
2. Ha $c$ páratlan: ekkor $c - 1$ páros szám.
   A tétel szerint $c - 1 \mid P(c) - P(1) = -P(1)$.
   Mivel $c - 1$ páros, $P(1)$-nek párosnak kellene lennie.
   Ez ellentmond annak, hogy $P(1)$ páratlan!
Mivel $c$ sem páros, sem páratlan nem lehet, $P(x)$-nek nem létezik egész gyöke. $\blacksquare$

::: elmelet
**Elméleti háttér — Szimmetrikus gyökkifejezések és Viète-formulák.**

A Viète-formulák lehetővé teszik a gyökök bármely szimmetrikus függvényének kiszámítását anélkül, hogy magukat a gyököket ismernénk:
Például gyökök négyzetösszege harmadfokú polinomra:
$$x_1^2 + x_2^2 + x_3^2 = (x_1 + x_2 + x_3)^2 - 2(x_1 x_2 + x_1 x_3 + x_2 x_3) = \left(-\frac{b}{a}\right)^2 - 2\left(\frac{c}{a}\right) = \frac{b^2 - 2ac}{a^2}.$$
Gyökök reciprokösszege:
$$\frac{1}{x_1} + \frac{1}{x_2} + \frac{1}{x_3} = \frac{x_1 x_2 + x_1 x_3 + x_2 x_3}{x_1 x_2 x_3} = \frac{c/a}{-d/a} = -\frac{c}{d}.$$
:::

## Gy3.16.1. feladat

Mutassuk meg, hogy az $f(x) = x^2 - x + 41$ polinom értéke $x = 41$ és $x = 42$ esetén összetett szám!

**Megoldás.**

- $x = 41$:
  $$f(41) = 41^2 - 41 + 41 = 41^2 = 1681.$$
  Ez a $41$ négyzete, tehát összetett szám.
- $x = 42$:
  $$f(42) = 42^2 - 42 + 41 = 42(41) + 41 = 41(42 + 1) = 41 \cdot 43 = 1763.$$
  Két prím szorzata, tehát összetett szám. $\blacksquare$

::: elmelet
**Elméleti háttér — A Horner-elrendezés (Ruffini–Horner-algoritmus).**

A Horner-módszer a polinomok kiértékelésének és gyöktényezővel való maradékos osztásának optimális numerikus algoritmusa:
$$P(x) = (\dots((a_n x + a_{n-1})x + a_{n-2})x + \dots + a_1)x + a_0.$$
A Horner-táblázat első sorában a polinom együtthatói állnak.
A második sor elemei a rekurzió szerint számolódnak: $b_n = a_n$, és $b_{k} = a_k + c \cdot b_{k+1}$.
- Az utolsó elem $b_0$ pontosan a $P(c)$ helyettesítési érték (és a maradék);
- A többi $b_n, \dots, b_1$ elem a $Q(x) = \frac{P(x) - P(c)}{x - c}$ hányadospolinom együtthatói.
:::

## Gy3.16.2. feladat

Bizonyítsuk be, hogy ha $P(x) \in \mathbb{Z}[x]$ nem konstans, akkor a $|P(n)|$ értékek között végtelen sok összetett szám van!

**Megoldás.**

*Bizonyítás:*
Ha $P(x_0) = c \ne 0$ valamely $x_0$-ra:
- Ha $|c| > 1$, akkor minden $k \ge 1$-re $P(x_0 + k c) \equiv P(x_0) = c \equiv 0 \pmod c$.
  Mivel $|P(x)| \to \infty$, ha $|x| \to \infty$, elég nagy $k$-ra $|P(x_0 + kc)| > |c|$, így valódi többszöröse $c$-nek, tehát összetett.
- Ha $|P(x)| \in \{0, 1\}$ lenne szinte mindenhol, a polinom konstans lenne.
Tehát végtelen sok összetett érték keletkezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Horner-elrendezés alkalmazása deriváltak számítására.**

A teljes Taylor-polinom együtthatóinak kiszámításához a Horner-sémát iteráltan alkalmazzuk:
1. Az első Horner-menet adja a maradékot $b_0 = P(c)$, és a hányados $Q_1(x)$-et.
2. A második menet a $Q_1(x)$-re adja a $b_1 = P'(c)$ értéket, és a $Q_2(x)$-et.
3. A $k$-adik menet a $b_{k-1} = \frac{P^{(k-1)}(c)}{(k-1)!}$ értéket adja.
Ez az algoritmus numerikusan stabil és minimális számú műveletet igényel ($O(n^2)$ szorzás és összeadás).
:::

## Gy3.17.1. feladat

Mutassuk meg, hogy az $x^2 + 1$ polinom helyettesítési értékeinek ($n^2 + 1$) végtelen sok különböző prímosztója van!

**Megoldás.**

*Bizonyítás:*
Tegyük fel, hogy csak véges sok van: $p_1, \dots, p_k$.
Legyen $N = 2 p_1 \dots p_k$.
Tekintsük $P(N) = N^2 + 1 = 4(p_1 \dots p_k)^2 + 1$.
Mivel $N^2 + 1 > 1$, van egy $q$ prímosztója.
Ha $q \in \{p_1, \dots, p_k\}$, akkor $q \mid N \implies q \mid N^2$, így $q \mid (N^2 + 1) - N^2 = 1$, ellentmondás.
Tehát $q$ egy új prím! Így végtelen sok prím osztója $n^2 + 1$-nek. $\blacksquare$

::: elmelet
**Elméleti háttér — Schönemann–Eisenstein-féle irreducibilitási kritérium.**

*Tétel (Eisenstein, 1850):* Legyen $P(x) = a_n x^n + \dots + a_1 x + a_0 \in \mathbb{Z}[x]$.
Ha létezik olyan $p$ prímszám, amelyre:
1. $p \nmid a_n$ ($p$ nem osztja a főegyütthatót);
2. $p \mid a_i$ minden $0 \le i \le n - 1$ esetén ($p$ osztja az összes többi együtthatót);
3. $p^2 \nmid a_0$ ($p$ négyzete nem osztja a konstans tagot);
akkor a $P(x)$ polinom irreducibilis a racionális számtest $\mathbb{Q}$ felett (és primitív polinom esetén $\mathbb{Z}$ felett is).
*Bizonyítás:* Modulo $p$ redukálva $\bar{P}(x) = \bar{a}_n x^n$, ami mutatja, hogy bármely valódi faktor konstans tagja osztható lenne $p$-vel, ami ellentmond $p^2 \nmid a_0$-nak.
:::

## Gy3.17.2. feladat

Bizonyítsuk be, hogy nem létezik olyan nem konstans egész együtthatós polinom, amelynek értékei csak 2- és 3-hatványok szorzatai lennének!

**Megoldás.**

*Bizonyítás:*
Schur tétele szerint minden nem konstans $P \in \mathbb{Z}[x]$ polinom értékeinek végtelen sok különböző prímosztója van.
Ha az értékek mind $2^a 3^b$ alakúak lennének, akkor a prímosztók halmaza $\{2, 3\}$ lenne, ami véges (2 elemű).
Ez közvetlenül ellentmond Schur tételének. $\blacksquare$

::: elmelet
**Elméleti háttér — Eltolt Eisenstein-kritérium (transzlációs módszer).**

Ha egy $P(x)$ polinomra közvetlenül nem alkalmazható az Eisenstein-kritérium, gyakran sikeres az $x \mapsto x + c$ transzformáció:
Mivel $P(x)$ pontosan akkor reducibilis $\mathbb{Q}$ felett, ha $Q(x) = P(x + c)$ reducibilis, ha $Q(x)$-re találunk megfelelő Eisenstein-prímet, $P(x)$ is irreducibilis.
Klasszikus példa: a $p$-edik körosztási polinom $\Phi_p(x) = \frac{x^p - 1}{x - 1} = x^{p-1} + \dots + x + 1$.
$x \mapsto x + 1$ helyettesítéssel $\Phi_p(x+1) = \frac{(x+1)^p - 1}{x} = x^{p-1} + \binom{p}{1} x^{p-2} + \dots + p$, amelyre $p$-vel teljesül az Eisenstein-kritérium, így $\Phi_p(x)$ irreducibilis $\mathbb{Q}$ felett.
:::

## Gy3.18.1. feladat

Ha $c$ háromszoros gyöke $f$-nek és háromszoros gyöke $g$-nek, mit mondhatunk $c$ multiplicitásáról $f + g$-ben?

**Megoldás.**

$f(x) = (x - c)^3 f_1(x)$ és $g(x) = (x - c)^3 g_1(x)$.
Összegük: $f(x) + g(x) = (x - c)^3 [f_1(x) + g_1(x)]$.
- Ha $f_1(c) + g_1(c) \ne 0$, a multiplicitás pontosan 3.
- Ha $f_1(c) + g_1(c) = 0$, akkor $x - c$ még kiemelhető, így a multiplicitás **legalább 4** (vagy ha $f = -g$, a nullpolinom).
**Válasz: Legalább 3-szoros gyök (lehet nagyobb is, vagy a nullpolinom).**

::: elmelet
**Elméleti háttér — Az algebra alaptétele és irreducibilitás $\mathbb{C}$ és $\mathbb{R}$ felett.**

1. *$\mathbb{C}$ felett (Gauss, 1799):* A komplex számtest algebrailag zárt, minden nemkonstans polinomnak van komplex gyöke. Ezért $\mathbb{C}[x]$-ben az irreducibilis polinomok kizárólag az 1-fokú (lineáris) polinomok: $a x + b$.
2. *$\mathbb{R}$ felett:* A valós együtthatós polinomok komplex gyökei konjugált párokban lépnek fel. A nemvalós gyökpárokhoz $(x - (u + iv))(x - (u - iv)) = x^2 - 2ux + (u^2 + v^2)$ alakú negatív diszkriminánsú valós másodfokú faktorok tartoznak.
Ezért $\mathbb{R}[x]$-ben az irreducibilis polinomok pontosan:
- az 1-fokú polinomok;
- a negatív diszkriminánsú ($b^2 - 4ac < 0$) 2-fokú polinomok.
Semmilyen 3 vagy magasabb fokú polinom nem lehet irreducibilis $\mathbb{R}$ felett!
:::

## Gy3.18.2. feladat

Legyen $f(x) = (x - 1)^2 (x + 2)$ és $g(x) = (x - 1)^3 (x - 3)$. Határozzuk meg az $x = 1$ gyök multiplicitását az $f^2 + g$ polinomban!

**Megoldás.**

- $f(x)$ multiplicitása 1-ben: $m = 2 \implies f^2(x)$ multiplicitása $2 \cdot 2 = 4$.
- $g(x)$ multiplicitása 1-ben: $m = 3$.
Mivel a két összeadandó tag multiplicitása különböző ($4 \ne 3$):
$$m_1(f^2 + g) = \min(4, 3) = 3.$$
**A multiplicitás pontosan 3.**

::: elmelet
**Elméleti háttér — Irreducibilitás $\mathbb{Q}$ felett: tetszőleges fokszámok.**

Szemben $\mathbb{C}$-vel és $\mathbb{R}$-rel, a racionális számtest $\mathbb{Q}$ felett tetszőleges magas fokú irreducibilis polinomok léteznek!
Például tetszőleges $n \ge 1$ egészre az $x^n - 2$ polinom az Eisenstein-kritérium szerint ($p = 2$) irreducibilis $\mathbb{Q}$ felett.
Ez az oka annak, hogy a racionális testbővítések és az algebrai számtestek végtelenül gazdag struktúrával bírnak.
:::

## Gy3.19.1. feladat

Határozzuk meg a $k$ valós paraméter értékét úgy, hogy az $x^2 - 6x + k = 0$ egyenletnek kétszeres gyöke legyen!

**Megoldás.**

A kétszeres gyök feltétele: $b^2 = 4ac$.
Itt $a = 1, b = -6, c = k$.
$$(-6)^2 = 4(1)(k) \iff 36 = 4k \implies k = 9.$$
Ekkor $(x - 3)^2 = 0$, a kétszeres gyök $x = 3$.
**Végeredmény: $k = 9$.**

::: elmelet
**Elméleti háttér — Euklideszi algoritmus polinomokra és l.n.k.o.**

A $K[x]$ polinomgyűrű (ahol $K$ test) euklideszi gyűrű a fokszám normával: tetszőleges $A(x), B(x)$ polinomokra ($B \neq 0$) léteznek egyértelmű $Q(x)$ és $R(x)$ polinomok, hogy
$$A(x) = Q(x) B(x) + R(x), \quad \text{ahol } \deg R < \deg B \text{ vagy } R = 0.$$
Az euklideszi algoritmus lépései: $R_{k-1} = Q_k R_k + R_{k+1}$.
Az utolsó nemnulla maradék a két polinom legnagyobb közös osztója, $\gcd(A, B)$ (főpolinomra normálva).
A polinomok akkor relatív prímek, ha $\gcd(A, B) = 1$.
:::

## Gy3.19.2. feladat

Bizonyítsuk be, hogy az $x^3 - 3x + 2$ polinomnak van többszörös gyöke a derivált segítségével!

**Megoldás.**

$f(x) = x^3 - 3x + 2$, $f'(x) = 3x^2 - 3 = 3(x^2 - 1) = 3(x - 1)(x + 1)$.
A derivált gyökei: $x = 1$ és $x = -1$.
Helyettesítsük be $f$-be:
- $f(1) = 1 - 3 + 2 = 0$. Mivel $f(1) = f'(1) = 0$, az $x = 1$ **többszörös gyök**!
- $f(-1) = -1 + 3 + 2 = 4 \ne 0$.
Tényezőkre bontva: $x^3 - 3x + 2 = (x - 1)^2 (x + 2)$. $\blacksquare$

::: elmelet
**Elméleti háttér — Polinom euklideszi algoritmus törtmentesítése.**

Egész együtthatós polinomok euklideszi algoritmusa során a törtek elkerülésére a pszeudo-osztást (pseudo-division) alkalmazzuk:
Ha a vezértag nem osztja a másik vezértagot, az osztandót megszorozzuk az osztó főegyütthatójának megfelelő hatványával ($b_m^{\deg A - \deg B + 1}$), így minden köztes lépésben az együtthatók egészek maradnak.
A kapott l.n.k.o. a racionális számtest felett a Gauss-lemma szerint a tartalom (együtthatók l.n.k.o.-ja) leosztásával primitív egész polinomként áll elő.
:::

## Gy3.20.1. feladat

Soroljuk fel a $3x^3 - 5x + 2 = 0$ egyenlet összes lehetséges racionális gyökét a gyökteszt alapján!

**Megoldás.**

$a_3 = 3$, $a_0 = 2$.
- $p \mid 2 \implies p \in \{\pm 1, \pm 2\}$.
- $q \mid 3, q > 0 \implies q \in \{1, 3\}$.
A lehetséges $\frac{p}{q}$ értékek:
$$\frac{p}{q} \in \left\{ \pm 1, \pm 2, \pm \frac{1}{3}, \pm \frac{2}{3} \right\}.$$
Összesen 8 lehetséges racionális gyök van. $\blacksquare$

::: elmelet
**Elméleti háttér — Bézout-azonosság polinomokra.**

*Tétel:* Tetszőleges $A(x), B(x) \in K[x]$ polinomokhoz léteznek olyan $u(x), v(x) \in K[x]$ polinomok, hogy
$$u(x) A(x) + v(x) B(x) = \gcd(A(x), B(x)).$$
Különösen, ha $A$ és $B$ relatív prímek ($\gcd = 1$):
$$u(x) A(x) + v(x) B(x) = 1.$$
Az $u(x), v(x)$ Bézout-polinomok a kibővített euklideszi algoritmussal határozhatók meg a maradékok visszahelyettesítésével. A fokszámok választhatók úgy, hogy $\deg u < \deg B$ és $\deg v < \deg A$.
:::

## Gy3.20.2. feladat

Mutassuk meg, hogy az $x^3 + 3x - 5 = 0$ egyenletnek nincs racionális gyöke!

**Megoldás.**

A polinom egész együtthatós és főpolinom ($a_3 = 1$).
A tétel következménye szerint racionális gyök csak egész szám lehet, és osztania kell a konstans tagot ($a_0 = -5$).
A lehetséges gyökök: $x \in \{\pm 1, \pm 5\}$.
Teszteljük őket:
- $f(1) = 1 + 3 - 5 = -1 \ne 0$.
- $f(-1) = -1 - 3 - 5 = -9 \ne 0$.
- $f(5) = 125 + 15 - 5 = 135 \ne 0$.
- $f(-5) = -125 - 15 - 5 = -145 \ne 0$.
Egyik sem gyök.
**Tehát az egyenletnek nincs racionális gyöke.**

::: elmelet
**Elméleti háttér — Kibővített euklideszi algoritmus mátrixos felírásban.**

A Bézout-együtthatók meghatározásához a lépéseket $2 \times 2$-es mátrixszorzatokként reprezentálhatjuk:
$$\begin{pmatrix} R_{k-1} \\ R_k \end{pmatrix} = \begin{pmatrix} Q_k & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} R_k \\ R_{k+1} \end{pmatrix}.$$
Az átmeneti mátrixok inverzeinek összeszorzásával a kezdeti és a végső maradék között közvetlen kapcsolat nyerhető:
$$\begin{pmatrix} \gcd(A, B) \\ 0 \end{pmatrix} = M \begin{pmatrix} A \\ B \end{pmatrix}.$$
Az $M$ mátrix első sora pontosan az $u(x)$ és $v(x)$ Bézout-polinomokat szolgáltatja.
:::

## Gy3.21.1. feladat

Határozzuk meg a $2x^3 + 3x^2 - 8x + 3 = 0$ egyenlet összes racionális gyökét!

**Megoldás.**

$a_3 = 2, a_0 = 3$. Jelöltek: $\pm 1, \pm 3, \pm 1/2, \pm 3/2$.
- $x = 1$: $2 + 3 - 8 + 3 = 0 \implies x_1 = 1$ gyök!
Horner $c = 1$-gyel $[2, 3, -8, 3]$:
$b_2 = 2, b_1 = 5, b_0 = -3$, maradék 0.
Hányados: $2x^2 + 5x - 3 = 0$.
$x = \frac{-5 \pm \sqrt{25 + 24}}{4} = \frac{-5 \pm 7}{4}$:
$x_2 = 2/4 = 1/2$, $x_3 = -12/4 = -3$.
**Racionális gyökök:** $1, \frac{1}{2}, -3$.

::: elmelet
**Elméleti háttér — Felbontás irreducibilisek szorzatára (UFD tulajdonság).**

A $K[x]$ polinomgyűrű alaptulajdonsága, hogy Gauss-gyűrű (Unique Factorization Domain / UFD):
Minden nem zérus polinom a főegyüttható és a sorrend erejéig egyértelműen felbontható monic (főpolinom) irreducibilis faktorok szorzatára:
$$P(x) = c \cdot p_1(x)^{e_1} p_2(x)^{e_2} \dots p_k(x)^{e_k}.$$
A felbontás jellege alapvetően függ az alaptesttől:
- $\mathbb{C}$ felett lineáris faktorok;
- $\mathbb{R}$ felett legfeljebb másodfokú faktorok;
- $\mathbb{Q}$ felett tetszőleges fokú irreducibilisek léphetnek fel.
:::

## Gy3.21.2. feladat

Bontsuk irreducibilis tényezőkre $\mathbb{Q}$ felett a $3x^3 - x^2 - 3x + 1$ polinomot!

**Megoldás.**

Csoportosítási módszer:
$$3x^3 - x^2 - 3x + 1 = x^2(3x - 1) - (3x - 1) = (3x - 1)(x^2 - 1) = (3x - 1)(x - 1)(x + 1).$$
A gyökök: $1/3, 1, -1$.
**Felbontás:** $(3x - 1)(x - 1)(x + 1)$.
**Gyökök:** $1/3, 1, -1$.

::: elmelet
**Elméleti háttér — Irreducibilis faktorok száma és Galois-csoport.**

Egy polinom irreducibilis felbontása $\mathbb{Q}$ felett a polinom Galois-csoportjának tranzitív hatásával áll kapcsolatban.
Ha egy valós polinom nemvalós gyökei mind egyszeresek, azok páronként konjugált valós másodfokú faktorokká állnak össze $\mathbb{R}[x]$-ben.
Ha a polinom páros fokú és minden tagja páros hatványú ($P(x) = Q(x^2)$), a felbontás gyakran az $y = x^2$ helyettesítéssel és a kétváltozós azonosságokkal azonnal előáll.
:::

---

# Az 4. feladatsorhoz – Megoldások — Prímszámok, felbonthatatlanok, a számelmélet alaptétele és az Euler-féle phi-függvény

## Gy4.1.1. feladat

Bizonyítsuk be, hogy az $x^2 - 5y^2 = 2$ diofantoszi egyenletnek nincs egész megoldása!

**Megoldás.**

*Bizonyítás:*
Tekintsük az egyenletet modulo 5:
$$x^2 - 5y^2 \equiv x^2 - 0 \equiv x^2 \pmod 5.$$
Az egyenlet szerint:
$$x^2 \equiv 2 \pmod 5.$$
Azonban a 4.1. feladat szerint egy négyzetszám modulo 5 csak $0, 1$ vagy $4$ maradékot adhat!
Mivel $2$ nem kvadratikus maradék modulo 5, nem létezik olyan $x \in \mathbb{Z}$, amelyre $x^2 \equiv 2 \pmod 5$.
Tehát az egyenletnek nincs megoldása az egészek halmazán. $\blacksquare$

::: elmelet
**Elméleti háttér — A prímszámok végtelensége (Eukleidész tétele).**

*Eukleidész tétele (i.e. 300 körül):* A prímszámok halmaza végtelen.
*Klasszikus bizonyítás:*
Tegyük fel indirekt, hogy csak véges sok prímszám létezik: $p_1, p_2, \dots, p_n$.
Tekintsük az $N = p_1 p_2 \dots p_n + 1$ számot!
Mivel $N > 1$, a számelmélet alaptétele szerint $N$-nek van legalább egy $q$ prímosztója.
Ha $q$ a fenti listából való lenne ($q = p_i$), akkor $q$ osztaná a szorzatot $p_1 \dots p_n$-t is.
Ekkor $q$ osztaná a különbséget is: $q \mid N - p_1 \dots p_n = 1$, ami lehetetlen, hiszen $q \ge 2$ prím.
Ez az ellentmondás bizonyítja, hogy a prímek halmaza nem lehet véges.
:::

## Gy4.1.2. feladat

Lehet-e két négyzetszám összege $7 \pmod 8$ alakú?

**Megoldás.**

Négyzetszámok lehetséges maradékai mod 8: $\{0, 1, 4\}$.
Két négyzetszám összege $x^2 + y^2 \pmod 8$ a következő összegekből állhat elő:
- $0 + 0 = 0$, $0 + 1 = 1$, $0 + 4 = 4$,
- $1 + 1 = 2$, $1 + 4 = 5$,
- $4 + 4 = 8 \equiv 0$.
A lehetséges összegek halmaza mod 8: $\{0, 1, 2, 4, 5\}$.
A $7$ (és a $3, 6$) nem szerepel a listában!
**NEM lehet.**

::: elmelet
**Elméleti háttér — Három és négy négyzetszám összege.**
Mivel $x^2 + y^2 \not\equiv 7 \pmod 8$, három négyzetszám összege sem lehet $7 \pmod 8$ (mert $x^2 + y^2 + z^2 \equiv 7 \pmod 8 \implies$ mindháromnak $1 \pmod 8$-nak kellene lennie, de $1+1+1=3 \ne 7$). Emiatt $8k + 7$ alakú szám nem áll elő 3 négyzetszám összegeként (Gauss tétele).
:::

## Gy4.2.1. feladat

Határozzuk meg a $7^{2026}$ szám utolsó számjegyét!

**Megoldás.**

Modulo 10: $\varphi(10) = 4$.
$7^1 \equiv 7$, $7^2 = 49 \equiv 9$, $7^3 \equiv 3$, $7^4 = 2401 \equiv 1 \pmod{10}$.
$2026 = 4 \cdot 506 + 2 \implies 7^{2026} \equiv 7^2 = 49 \equiv 9 \pmod{10}$.
**Az utolsó számjegy: 9.**

::: elmelet
**Elméleti háttér — Eratoszthenész szitája és a prímek aszimptotikája.**

Az $N$-ig terjedő prímek meghatározására szolgáló ókori algoritmus:
1. Felírjuk a számokat 2-től $N$-ig.
2. A legkisebb be nem jelölt szám mindig prím (először 2); kihúzzuk a nála nagyobb többszöröseit.
3. Elegendő a szitálást $\sqrt{N}$-ig végezni, mert minden $N$-nél nem nagyobb összetett számnak van legalább egy prímosztója $p \le \sqrt{N}$.
*Prímszámtétel (Hadamard és de la Vallée Poussin, 1896):* $\pi(x) \sim \frac{x}{\ln x}$.
:::

## Gy4.2.2. feladat

Mi a $2^{2026}$ utolsó számjegye?

**Megoldás.**

Mivel $(2, 10) = 2 \ne 1$, az Euler–Fermat-tétel közvetlenül nem alkalmazható.
De a 2 hatványai mod 10 periodikusak:
$2^1 = 2, 2^2 = 4, 2^3 = 8, 2^4 = 16 \equiv 6, 2^5 = 32 \equiv 2 \pmod{10}$.
A periódus 4 hosszú a $k \ge 1$ kitevőkre: $(2, 4, 8, 6)$.
Mivel $2026 = 4 \cdot 506 + 2$, a ciklus 2. eleme:
$$2^{2026} \equiv 2^2 = 4 \pmod{10}.$$
**Az utolsó számjegy: 4.**

::: elmelet
**Elméleti háttér — Prímhézagok és ikerprím-sejtés.**

A szomszédos prímek közötti távolság $g_n = p_{n+1} - p_n$.
- Tetszőlegesen nagy prímhézag létezik: az $(n+1)! + 2, (n+1)! + 3, \dots, (n+1)! + n + 1$ számok mind összetettek (rendre oszthatók $2, 3, \dots, n+1$-gyel), így $n$ hosszú prímmentes szakasz keletkezik.
- Másfelől az ikerprím-sejtés szerint végtelen sok olyan prím van, melyre $p_{n+1} - p_n = 2$. Yitang Zhang (2013) áttörése óta tudjuk, hogy $\liminf g_n \le 246$ (feltétel nélkül).
:::

## Gy4.3.1. feladat

Milyen számjegyre végződik a $9^{99} + 6^{66}$ összeg?

**Megoldás.**

- $9^1 \equiv 9, 9^2 \equiv 1 \implies 9^{\text{páratlan}} \equiv 9 \pmod{10}$. Mivel $99$ páratlan: $9^{99} \equiv 9$.
- $6^k \equiv 6 \pmod{10}$ minden $k \ge 1$-re, így $6^{66} \equiv 6$.
Összegük: $9 + 6 = 15 \equiv 5 \pmod{10}$.
**Az utolsó számjegy: 5.**

::: elmelet
**Elméleti háttér — A számelmélet alaptétele (egyértelmű prímfaktorizáció).**

*Alaptétel:* Minden 1-nél nagyobb egész szám egyértelműen felírható prímszámok szorzataként a tényezők sorrendjétől eltekintve:
$$n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k} \quad (\alpha_i \ge 1).$$
*A bizonyítás kulcsa: Eukleidész lemmája:* Ha $p$ prím és $p \mid ab$, akkor $p \mid a$ vagy $p \mid b$.
Ez a lemma a Bézout-tételből ($p x + a y = 1$) következik. Olyan gyűrűkben, ahol az egyértelmű faktorizáció sérül (pl. $\mathbb{Z}[\sqrt{-5}]$-ben: $6 = 2 \cdot 3 = (1+\sqrt{-5})(1-\sqrt{-5})$), az Eukleidész-lemma nem teljesül a felbonthatatlan elemekre.
:::

## Gy4.3.2. feladat

Határozzuk meg a $2^{100} + 3^{100} + 4^{100} + 5^{100}$ összeg utolsó számjegyét!

**Megoldás.**

Modulo 10:
- $2^{100} = (2^4)^{25} \equiv 6^{25} \equiv 6$.
- $3^{100} = (3^4)^{25} \equiv 1^{25} \equiv 1$.
- $4^{100} \equiv 6$.
- $5^{100} \equiv 5$.
Összegük: $6 + 1 + 6 + 5 = 18 \equiv 8 \pmod{10}$.
**Az utolsó számjegy: 8.**

::: elmelet
**Elméleti háttér — Multiplikatív számelméleti függvények alaptulajdonsága.**

Egy $f: \mathbb{N} \to \mathbb{C}$ függvény *multiplikatív*, ha $f(1) = 1$ és $\gcd(a, b) = 1$ esetén:
$$f(a \cdot b) = f(a) \cdot f(b).$$
*Tétel:* Minden multiplikatív függvény értéke tetszőleges $n$ számra egyértelműen meghatározott a prímhatványokon felvett értékei által:
$$f(n) = f\left(\prod_{i=1}^k p_i^{\alpha_i}\right) = \prod_{i=1}^k f(p_i^{\alpha_i}).$$
Ez a tulajdonság teszi lehetővé a $d(n), \sigma(n), \varphi(n)$ függvények kompakt zárt képleteit.
:::

## Gy4.4.1. feladat

Lehet-e $1! + 2! + 3! + \dots + n!$ négyzetszám valamely $n \ge 1$ egészre?

**Megoldás.**

Teszteljük a kis $n$ értékeket:
- $n = 1$: $S_1 = 1 = 1^2$ (NÉGYZETSZÁM!).
- $n = 2$: $S_2 = 1 + 2 = 3$ (nem négyzetszám).
- $n = 3$: $S_3 = 3 + 6 = 9 = 3^2$ (NÉGYZETSZÁM!).
- $n = 4$: $S_4 = 9 + 24 = 33$ (nem négyzetszám).
- $n \ge 5$: $S_n \equiv S_4 = 33 \equiv 3 \pmod{10}$, így nem lehet négyzetszám.
**Igen, pontosan két ilyen érték létezik: $n = 1$ és $n = 3$.**

::: elmelet
**Elméleti háttér — Az osztószám-függvény multiplikativitása.**

Ha $n = \prod p_i^{\alpha_i}$ a kanonikus felbontás, az $n$ pozitív osztóinak száma:
$$d(n) = \tau(n) = \prod_{i=1}^k (\alpha_i + 1).$$
*Bizonyítás:* Minden osztó $d = \prod p_i^{\beta_i}$ alakú, ahol $0 \le \beta_i \le \alpha_i$. A $\beta_i$ kitevő függetlenül $\alpha_i + 1$ értéket vehet fel.
*Következmény:* $d(n)$ akkor és csak akkor páratlan szám, ha minden $\alpha_i + 1$ páratlan, azaz minden $\alpha_i$ páros. Ez pontosan azt jelenti, hogy $n$ négyzetszám!
:::

## Gy4.4.2. feladat

Milyen maradékot ad $1! + 2! + \dots + 100!$ osztva 12-vel?

**Megoldás.**

$4! = 24 = 2 \cdot 12 \equiv 0 \pmod{12}$.
Minden $n \ge 4$ esetén $12 \mid n!$.
Ezért:
$$\sum_{k=1}^{100} k! \equiv 1! + 2! + 3! = 1 + 2 + 6 = 9 \pmod{12}.$$
**A maradék 9.**

::: elmelet
**Elméleti háttér — Az osztószám-függvény aszimptotikája (Dirichlet-féle hiperbola-módszer).**

Hány osztója van átlagosan egy számnak?
*Dirichlet tétele (1849):*
$$\sum_{n \le x} d(n) = x \ln x + (2\gamma - 1) x + O(\sqrt{x}),$$
ahol $\gamma \approx 0{,}5772$ az Euler–Mascheroni konstans.
Ez azt jelenti, hogy egy $x$ körüli szám átlagos osztószáma $\ln x$. Bár az osztószám lokálisan vadul oszcillál ($d(p) = 2$, míg $d(2^k) = k + 1$), átlagos növekedése logaritmikus.
:::

## Gy4.5.1. feladat

Milyen maradékot adhat öt egymást követő egész szám négyzetösszege 5-tel osztva? Lehet-e négyzetszám?

**Megoldás.**

Legyen a számsor: $n-2, n-1, n, n+1, n+2$.
Négyzetösszegük:
$$(n-2)^2 + (n-1)^2 + n^2 + (n+1)^2 + (n+2)^2 = 5n^2 + 2(2^2 + 1^2) = 5n^2 + 10 \equiv 0 \pmod 5.$$
A maradék mod 5 mindig 0.
Sőt: $S = 5(n^2 + 2)$.
Ahhoz, hogy négyzetszám legyen, oszthatónak kell lennie $5^2 = 25$-tel, azaz $5 \mid n^2 + 2 \iff n^2 \equiv -2 \equiv 3 \pmod 5$.
De 3 nem kvadratikus maradék mod 5!
Tehát **sohasem lehet négyzetszám**.
**Maradék: mindig 0; négyzetszám sosem lehet.**

::: elmelet
**Elméleti háttér — Az osztóösszeg-függvény képlete.**

Az $n$ pozitív osztóinak összege:
$$\sigma(n) = \sum_{d \mid n} d = \prod_{i=1}^k \left(1 + p_i + p_i^2 + \dots + p_i^{\alpha_i}\right) = \prod_{i=1}^k \frac{p_i^{\alpha_i + 1} - 1}{p_i - 1}.$$
A mértani sorok szorzata kibontva pontosan egyszer állítja elő $n$ összes osztóját.
A $\sigma(n)$ és $d(n)$ függvények multiplikatívak: $\gcd(a, b) = 1$ esetén $\sigma(ab) = \sigma(a)\sigma(b)$.
:::

## Gy4.5.2. feladat

Mutassuk meg, hogy két egymást követő egész szám négyzetösszege sohasem ad 3 maradékot 4-gyel osztva!

**Megoldás.**

$n^2 + (n + 1)^2 = 2n^2 + 2n + 1 = 2n(n + 1) + 1$.
Mivel $n(n + 1)$ két egymást követő szám szorzata, mindig páros ($n(n+1) = 2k$).
Így $2n(n + 1) + 1 = 4k + 1 \equiv 1 \pmod 4$.
A maradék mod 4 mindig 1, tehát sohasem lehet 3 (sőt mindig $1 \pmod 4$). $\blacksquare$

::: elmelet
**Elméleti háttér — Tökéletes, bővelkedő és hiányos számok.**

Az osztóösszeg $\sigma(n)$ és a szám $2n$ viszonya szerint Nicomachus osztályozása:
1. *Tökéletes szám:* $\sigma(n) = 2n$ (a valódi osztók összege $s(n) = n$);
2. *Hiányos (deficiens) szám:* $\sigma(n) < 2n$ (minden prímhatvány hiányos: $\sigma(p^k) = \frac{p^{k+1}-1}{p-1} < 2 p^k$);
3. *Bővelkedő (abundáns) szám:* $\sigma(n) > 2n$ (a legkisebb bővelkedő szám a 12, mert $\sigma(12) = 1 + 2 + 3 + 4 + 6 + 12 = 28 > 24$).
:::

## Gy4.6.1. feladat

Számítsuk ki az euklideszi algoritmussal a $(525, 231)$ értéket, és fejezzük ki lineáris kombinációként!

**Megoldás.**

1. Lépések:
- $525 = 2 \cdot 231 + 63$
- $231 = 3 \cdot 63 + 42$
- $63 = 1 \cdot 42 + 21$
- $42 = 2 \cdot 21 + 0$
$\implies (525, 231) = 21$.
2. Visszahelyettesítés:
- $21 = 63 - 1 \cdot 42$
- $21 = 63 - (231 - 3 \cdot 63) = 4 \cdot 63 - 231$
- $21 = 4(525 - 2 \cdot 231) - 231 = 4 \cdot 525 - 9 \cdot 231$.
Ellenőrzés: $4(525) - 9(231) = 2100 - 2079 = 21$.
**Eredmény: $(525, 231) = 21 = 4 \cdot 525 - 9 \cdot 231$.**

::: elmelet
**Elméleti háttér — Az Euler-féle $\varphi$-függvény és kiszámítási képlete.**

Az Euler-féle $\varphi(n)$ függvény az $\{1, 2, \dots, n\}$ halmazbeli azon számok számát adja meg, amelyek relatív prímek $n$-hez:
$$\varphi(n) = |\{k \in [n] : \gcd(k, n) = 1\}|.$$
1. Prímhatványra: a nem relatív prím számok a $p$ többszörösei ($p, 2p, \dots, p^{\alpha-1}p$), ezek száma $p^{\alpha-1}$, így:
$$\varphi(p^\alpha) = p^\alpha - p^{\alpha-1} = p^\alpha \left(1 - \frac{1}{p}\right).$$
2. Mivel $\varphi$ multiplikatív, a kanonikus felbontásból:
$$\varphi(n) = n \prod_{p \mid n} \left(1 - \frac{1}{p}\right).$$
:::

## Gy4.6.2. feladat

Keressünk olyan $x, y \in \mathbb{Z}$ egészeket, amelyekre $37x + 16y = 1$!

**Megoldás.**

Euklideszi algoritmus:
- $37 = 2 \cdot 16 + 5$
- $16 = 3 \cdot 5 + 1$
- $5 = 5 \cdot 1 + 0 \implies (37, 16) = 1$.
Visszahelyettesítés:
$1 = 16 - 3 \cdot 5 = 16 - 3(37 - 2 \cdot 16) = 16 - 3 \cdot 37 + 6 \cdot 16 = 7 \cdot 16 - 3 \cdot 37$.
Így $37(-3) + 16(7) = -111 + 112 = 1$.
**Megoldás: $x = -3, y = 7$.**

::: elmelet
**Elméleti háttér — Euler $\varphi$-függvényének alsó becslése.**

Minden $n \ge 3$ egész számra érvényes az elemi alsó korlát:
$$\varphi(n) > \frac{n}{2 \ln n} \quad \text{és} \quad \varphi(n) > \sqrt{\frac{n}{2}}.$$
Ez garantálja, hogy $\varphi(n) \to \infty$, amikor $n \to \infty$.
A pontosabb minimális növekedési rendet Landau tétele írja le a primoriális számok $p_k\#$ mentén: $\liminf \frac{\varphi(n) \ln \ln n}{n} = e^{-\gamma}$.
:::

## Gy4.7.1. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén $(2n + 1, 9n + 4) = 1$!

**Megoldás.**

*Bizonyítás:*
Keressünk olyan kombinációt, amely kiejti $n$-et:
$$9(2n + 1) - 2(9n + 4) = (18n + 9) - (18n + 8) = 1.$$
Ha $d = (2n + 1, 9n + 4)$, akkor $d \mid 9(2n + 1) - 2(9n + 4) = 1 \implies d = 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Gauss-azonosság az Euler-függvény osztóösszegeire.**

*Gauss tétele:* Minden $n \ge 1$ egész számra:
$$\sum_{d \mid n} \varphi(d) = n.$$
*Kombinatorikus bizonyítás:*
Tekintsük az $\frac{1}{n}, \frac{2}{n}, \frac{3}{n}, \dots, \frac{n}{n}$ törteket! Ezek száma $n$.
Egyszerűsítsünk minden törtet tovább nem egyszerűsíthető $\frac{a}{d}$ alakra, ahol $d \mid n$ és $\gcd(a, d) = 1$.
Egy adott $d \mid n$ nevezőhöz pontosan azon $a \in [d]$ számlálók tartoznak, amelyek relatív prímek $d$-hez; ezek száma definíció szerint $\varphi(d)$.
Mivel minden tört pontosan egy ilyen osztályba esik, a törtek osztályonkénti összege $n$.
:::

## Gy4.7.2. feladat

Mutassuk meg, hogy a $\frac{12n + 1}{30n + 2}$ tört semmilyen $n \in \mathbb{N}$ esetén sem egyszerűsíthető!

**Megoldás.**

A tört pontosan akkor egyszerűsíthető, ha a számláló és nevező nem relatív prímek.
Számítsuk ki a legnagyobb közös osztójukat:
$$5(12n + 1) - 2(30n + 2) = (60n + 5) - (60n + 4) = 1.$$
Mivel $(12n + 1, 30n + 2) = 1$ minden $n$-re, a tört semmilyen $n$-re nem egyszerűsíthető. $\blacksquare$

::: elmelet
**Elméleti háttér — A Möbius-féle megfordítási formula (Möbius Inversion).**

A Möbius-$\mu(n)$ függvény definíciója: $\mu(1) = 1$; $\mu(n) = (-1)^k$, ha $n$ négyzetmentes és $k$ prímfaktor szorzata; $\mu(n) = 0$, ha $n$-nek van négyzetszám osztója ($p^2 \mid n$).
*Möbius-inverziós tétel:* Ha $f$ és $g$ számelméleti függvények, akkor
$$f(n) = \sum_{d \mid n} g(d) \iff g(n) = \sum_{d \mid n} \mu(d) f\left(\frac{n}{d}\right).$$
A Gauss-azonosság $\sum_{d \mid n} \varphi(d) = n$ megfordításával közvetlenül adódik:
$$\varphi(n) = \sum_{d \mid n} \mu(d) \frac{n}{d} = n \sum_{d \mid n} \frac{\mu(d)}{d} = n \prod_{p \mid n} \left(1 - \frac{1}{p}\right).$$
:::

## Gy4.8.1. feladat

Határozzuk meg a $(5n + 2, 3n + 1)$ legnagyobb közös osztó lehetséges értékeit!

**Megoldás.**

Kombináció:
$$3(5n + 2) - 5(3n + 1) = 15n + 6 - 15n - 5 = 1.$$
Mivel a kombináció 1, a legnagyobb közös osztó minden $n$-re 1.
**Végeredmény: Mindig 1.**

::: elmelet
**Elméleti háttér — Legnagyobb közös osztó és legkisebb közös többszörös kapcsolata.**

Ha $a = \prod p_i^{\alpha_i}$ és $b = \prod p_i^{\beta_i}$:
$$\gcd(a, b) = \prod p_i^{\min(\alpha_i, \beta_i)}, \quad \operatorname{lcm}(a, b) = \prod p_i^{\max(\alpha_i, \beta_i)}.$$
Mivel tetszőleges valós számokra $\min(x, y) + \max(x, y) = x + y$:
$$\min(\alpha_i, \beta_i) + \max(\alpha_i, \beta_i) = \alpha_i + \beta_i.$$
Ennek következtében minden pozitív egész $a, b$-re:
$$\gcd(a, b) \cdot \operatorname{lcm}(a, b) = a \cdot b.$$
:::

## Gy4.8.2. feladat

Határozzuk meg a $(2n + 5, n + 1)$ értékét a pozitív egész $n$ függvényében!

**Megoldás.**

Euklideszi lépés:
$$(2n + 5) - 2(n + 1) = 2n + 5 - 2n - 2 = 3.$$
Ezért $(2n + 5, n + 1) = (n + 1, 3)$.
A 3 prím, így a lehetséges értékek 1 vagy 3:
- Ha $3 \mid n + 1$, azaz $n \equiv 2 \pmod 3$ ($n = 2, 5, 8, \dots$), akkor az **lnko = 3**.
- Ha $3 \nmid n + 1$, azaz $n \not\equiv 2 \pmod 3$, akkor az **lnko = 1**.
**Eredmény: 3, ha $n \equiv 2 \pmod 3$; és 1, ha $n \not\equiv 2 \pmod 3$.**

::: elmelet
**Elméleti háttér — Az osztóháló disztributivitása.**

A pozitív egészek a $\mid$ oszthatósági relációval részben rendezett halmazt (hálót) alkotnak:
- Infimum (metszet): $\gcd(a, b) = a \wedge b$;
- Szuprémum (egyesítés): $\operatorname{lcm}(a, b) = a \vee b$.
Ez a háló *disztributív háló*, mert a prímhatványok kitevőire a $\min$ és $\max$ műveletek kielégítik a disztributivitási azonosságot:
$$\gcd(a, \operatorname{lcm}(b, c)) = \operatorname{lcm}(\gcd(a, b), \gcd(a, c)),$$
$$\operatorname{lcm}(a, \gcd(b, c)) = \gcd(\operatorname{lcm}(a, b), \operatorname{lcm}(a, c)).$$
:::

## Gy4.9.1. feladat

Számítsuk ki az euklideszi algoritmussal az $f(x) = x^3 - 1$ és $g(x) = x^2 - 1$ polinomok legnagyobb közös osztóját!

**Megoldás.**

- $x^3 - 1 = x(x^2 - 1) + (x - 1)$.
- $x^2 - 1 = (x + 1)(x - 1) + 0$.
Az utolsó nemnulla maradék $x - 1$.
**Legnagyobb közös osztó: $x - 1$.**

::: elmelet
**Elméleti háttér — Euklideszi algoritmus és l.n.k.o. polinomok körében.**

A polinomok körében végzett euklideszi algoritmus lépései pontosan analógok az egész számokéval:
Minden lépésben $A(x) = Q(x) B(x) + R(x)$, ahol $\deg R < \deg B$.
Az utolsó nemnulla maradék a legnagyobb közös osztó, amelyet egy konstans szorzóval főpolinommá (1 főegyütthatójúvá) normálunk.
Ha az utolsó maradék nemnulla konstans, a két polinom relatív prím ($\gcd = 1$).
:::

## Gy4.9.2. feladat

Határozzuk meg az $x^4 + x^2 + 1$ és $x^3 - 1$ polinomok legnagyobb közös osztóját!

**Megoldás.**

Tudjuk:
- $x^4 + x^2 + 1 = (x^2 - x + 1)(x^2 + x + 1)$.
- $x^3 - 1 = (x - 1)(x^2 + x + 1)$.
A közös tényező $x^2 + x + 1$.
Euklideszi osztással: $x^4 + x^2 + 1 = (x)(x^3 - 1) + (x^2 + x + 1)$.
Második lépés: $x^3 - 1 = (x - 1)(x^2 + x + 1) + 0$.
**Legnagyobb közös osztó: $x^2 + x + 1$.**

::: elmelet
**Elméleti háttér — Az euklideszi algoritmus lépésszáma (Lamé-tétel).**

*Lamé tétele (1844, a számításelmélet első komplexitási tétele):*
Az euklideszi algoritmus lépéseinek száma az $a > b$ egészekre legfeljebb a kisebbik szám tízes számrendszerbeli számjegyei számának 5-szöröse:
$$\text{lépésszám} \le 5 \log_{10}(b).$$
A legrosszabb eset (leglassabb lefutás) pontosan akkor következik be, ha minden hányados $q_i = 1$, ami azt jelenti, hogy a számok szomszédos Fibonacci-számok: $a = F_{n+1}, b = F_n$.
:::

## Gy4.10.1. feladat

Ha $(a, b) = 1$, mik a lehetséges értékei az $(a + 2b, 2a + b)$ legnagyobb közös osztónak?

**Megoldás.**

A determináns:
$$\Delta = \begin{vmatrix} 1 & 2 \\ 2 & 1 \end{vmatrix} = 1 - 4 = -3.$$
Így $d \mid 3 \implies d \in \{1, 3\}$.
- Ha $a = 2, b = 1$: $(2+2, 4+1) = (4, 5) = 1$.
- Ha $a = 4, b = 1$: $(4+2, 8+1) = (6, 9) = 3$.
**Lehetséges értékek: 1 vagy 3.**

::: elmelet
**Elméleti háttér — Kétismeretlenes lineáris diofantoszi egyenletek.**

Az $a x + b y = c$ ($a, b, c \in \mathbb{Z}$) diofantoszi egyenlet:
*Megoldhatósági tétel:* Az egyenlet akkor és csak akkor oldható meg egész számokban, ha
$$\gcd(a, b) \mid c.$$
Ha a feltétel teljesül és $(x_0, y_0)$ egy partikuláris megoldás (amely a kibővített euklideszi algoritmussal nyerhető):
Az összes megoldás leírható az alábbi paraméteres alakban:
$$x = x_0 + \frac{b}{\gcd(a, b)} \cdot t, \quad y = y_0 - \frac{a}{\gcd(a, b)} \cdot t \quad (t \in \mathbb{Z}).$$
:::

## Gy4.10.2. feladat

Igazoljuk, hogy ha $(a, b) = 1$, akkor $(a + b, a^2 - ab + b^2)$ lehetséges értékei csak 1 vagy 3!

**Megoldás.**

Használjuk az $a^2 - ab + b^2 = (a + b)^2 - 3ab$ azonosságot.
Ha $d = (a + b, a^2 - ab + b^2)$, akkor $d \mid a + b$, így $d \mid (a + b)^2$.
Ekkor $d \mid (a + b)^2 - (a^2 - ab + b^2) = 3ab$.
Mivel $(a + b, a) = (b, a) = 1$ és $(a + b, b) = (a, b) = 1$, ezért $(a + b, ab) = 1$.
Tehát $(d, ab) = 1$.
Mivel $d \mid 3ab$ és $(d, ab) = 1$, ezért $d \mid 3$.
Pozitív egészekben $d \in \{1, 3\}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Nemnegatív diofantoszi megoldások és a Frobenius-probléma.**

Ha az $a x + b y = c$ egyenletben $x \ge 0, y \ge 0$ nemnegatív egész megoldásokat keresünk ($\gcd(a, b) = 1$):
*Frobenius-féle pénzváltási probléma:*
Létezik egy küszöbérték, a Frobenius-szám:
$$g(a, b) = ab - a - b.$$
- Minden $c > ab - a - b$ egész szám előállítható nemnegatív $x, y$ egészekkel;
- A $g(a, b) = ab - a - b$ szám a legnagyobb olyan egész, amely NEM állítható elő.
- Pontosan $\frac{(a-1)(b-1)}{2}$ darab pozitív egész nem állítható elő.
:::

## Gy4.11.1. feladat

Határozzuk meg az összes olyan $x \le y$ pozitív egész párt, amelyre $(x, y) = 12$ és $[x, y] = 360$!

**Megoldás.**

$x = 12u, y = 12v$, $(u, v) = 1$, $u \le v$.
$uv = 360 / 12 = 30 = 2 \cdot 3 \cdot 5$.
Relatív prím osztópárok $u \le v$:
- $u = 1, v = 30 \implies (x, y) = (12, 360)$.
- $u = 2, v = 15 \implies (x, y) = (24, 180)$.
- $u = 3, v = 10 \implies (x, y) = (36, 120)$.
- $u = 5, v = 6 \implies (x, y) = (60, 72)$.
**Megoldások:** $\{ (12, 360), (24, 180), (36, 120), (60, 72) \}$.

::: elmelet
**Elméleti háttér — A $p$-adikus értékelés (valuáció) axiómái.**

Egy $n \in \mathbb{Z} \setminus \{0\}$ egész szám $p$-adikus értékelése $v_p(n)$ az a maximális $k \ge 0$ kitevő, amelyre $p^k \mid n$.
Tulajdonságai:
1. $v_p(a \cdot b) = v_p(a) + v_p(b)$ (homomorfizmus a multiplikatív csoportról az additív csoportra);
2. $v_p(a + b) \ge \min(v_p(a), v_p(b))$ (ultrametrikus egyenlőtlenség);
3. Ha $v_p(a) \neq v_p(b)$, akkor szigorú egyenlőség áll fenn: $v_p(a + b) = \min(v_p(a), v_p(b))$.
Ez a tulajdonság teszi lehetővé prímhatvány-oszthatósági feladatok egyértelmű vizsgálatát.
:::

## Gy4.11.2. feladat

Létezik-e olyan $x, y$ pozitív egész pár, amelyre $(x, y) = 10$ és $[x, y] = 205$?

**Megoldás.**

Mivel minden szám osztható a legnagyobb közös osztójával, és a legkisebb közös többszörös mindkét számnak többszöröse, ezért szükségképpen:
$$(x, y) \mid [x, y].$$
Itt azonban $(x, y) = 10$ és $[x, y] = 205$.
Mivel $10 \nmid 205$ (205 nem páros), a feltétel nem teljesül.
**NEM létezik ilyen számpár.**

::: elmelet
**Elméleti háttér — Oszthatóság és valuáció kapcsolata.**

Két szám oszthatósági relációja ekvivalens a valuációik pontonkénti egyenlőtlenségével:
$$a \mid b \iff v_p(a) \le v_p(b) \quad \text{minden } p \text{ prímre}.$$
Továbbá:
$$v_p(\gcd(a, b)) = \min(v_p(a), v_p(b)), \quad v_p(\operatorname{lcm}(a, b)) = \max(v_p(a), v_p(b)).$$
Ez a leírás algebrai hidat képez az oszthatósági reláció és a rendezett vektorterek között.
:::

## Gy4.12.1. feladat

Mely $n \in \mathbb{N}^+$ számokra teljesül, hogy $n + 2 \mid n^2 + 2n + 7$?

**Megoldás.**

$n^2 + 2n + 7 = n(n + 2) + 7$.
Ezért $n + 2 \mid n^2 + 2n + 7 \iff n + 2 \mid 7$.
A 7 prím, pozitív osztói 1 és 7.
Mivel $n \ge 1 \implies n + 2 \ge 3$, az egyetlen lehetséges osztó a 7:
$$n + 2 = 7 \implies n = 5.$$
Ellenőrzés: $n = 5 \implies 5 + 2 = 7 \mid 25 + 10 + 7 = 42 = 7 \cdot 6$. Helyes!
**Egyetlen megoldás: $n = 5$.**

::: elmelet
**Elméleti háttér — Unimoduláris mátrixok és az $\operatorname{SL}(2, \mathbb{Z})$ csoport.**

Egy egész elemű $A \in \mathbb{Z}^{2 \times 2}$ mátrixot *unimodulárisnak* nevezünk, ha determinánsa $\det(A) = \pm 1$.
Ez a feltétel ekvivalens azzal, hogy $A^{-1}$ szintén egész elemű mátrix.
Ha $A$ oszlopai $u, v \in \mathbb{Z}^2$, akkor $\det(u, v) = \pm 1$ pontosan akkor áll fenn, ha $u$ és $v$ generálja a teljes $\mathbb{Z}^2$ rácsot bázisként. Ekkor a koordináták legnagyobb közös osztója 1, és a diofantoszi kombinációk lefedik az egész síkot.
:::

## Gy4.12.2. feladat

Mely $n$ egész számokra lesz az $\frac{2n + 5}{n - 1}$ tört értéke egész szám?

**Megoldás.**

$\frac{2n + 5}{n - 1} = \frac{2(n - 1) + 7}{n - 1} = 2 + \frac{7}{n - 1}$.
A tört pontosan akkor egész, ha $n - 1 \mid 7$.
A 7 egész osztói: $\{\pm 1, \pm 7\}$.
- $n - 1 = 1 \implies n = 2$
- $n - 1 = -1 \implies n = 0$
- $n - 1 = 7 \implies n = 8$
- $n - 1 = -7 \implies n = -6$.
**A megoldások az egészek körében:** $n \in \{-6, 0, 2, 8\}$. Pozitív egészekben: $n \in \{2, 8\}$.

::: elmelet
**Elméleti háttér — Rácstranszformációk és báziscsere $\mathbb{Z}^2$-ben.**

Egy lineáris leképezés $T: \mathbb{Z}^2 \to \mathbb{Z}^2$ pontosan akkor bijekció (rácsautomorfizmus), ha mátrixa unimoduláris: $\det(T) = \pm 1$.
Minden ilyen transzformáció megőrzi a rács fundamentális paralelogrammájának területét ($|\det T| = 1$), és kölcsönösen egyértelműen képezi le a primitív rácspontokat ($\gcd(x, y) = 1$) primitív rácspontokra.
:::

## Gy4.13.1. feladat

Igaz-e, hogy ha $d \mid 5x + 3y$ és $d \mid 3x + 2y$, akkor $d \mid x$ és $d \mid y$?

**Megoldás.**

Számítsuk ki a determinánst:
$$\Delta = \begin{vmatrix} 5 & 3 \\ 3 & 2 \end{vmatrix} = 10 - 9 = 1.$$
Mivel $\Delta = 1$:
- $2(5x + 3y) - 3(3x + 2y) = 10x + 6y - 9x - 6y = x \implies d \mid x$.
- $5(3x + 2y) - 3(5x + 3y) = 15x + 10y - 15x - 9y = y \implies d \mid y$.
**IGAZ.**

::: elmelet
**Elméleti háttér — Prímszámok előállítása $x^2 + 2y^2$ alakban.**

*Fermat tétele:* Egy páratlan $p$ prím akkor és csak akkor írható fel $p = x^2 + 2y^2$ alakban, ha
$$p \equiv 1 \pmod 8 \quad \text{vagy} \quad p \equiv 3 \pmod 8.$$
Ez ekvivalens azzal, hogy $-2$ kvadratikus maradék modulo $p$: $\left(\frac{-2}{p}\right) = 1$.
A kvadratikus reciprocitási tétel és a kiegészítő tételek alapján $\left(\frac{-2}{p}\right) = \left(\frac{-1}{p}\right)\left(\frac{2}{p}\right) = (-1)^{\frac{p-1}{2}} (-1)^{\frac{p^2-1}{8}}$, ami pontosan az 1 és 3 maradékokra ad $+1$-et.
:::

## Gy4.13.2. feladat

Adjunk ellenpéldát arra az állításra, hogy ha $d \mid 3x + y$ és $d \mid x + 3y$, akkor $d \mid x$ és $d \mid y$!

**Megoldás.**

Determináns: $\Delta = 3 \cdot 3 - 1 \cdot 1 = 8$.
Legyen $d = 2$, $x = 1, y = 1$:
- $3x + y = 3(1) + 1 = 4$ (páros, $2 \mid 4$).
- $x + 3y = 1 + 3(1) = 4$ (páros, $2 \mid 4$).
De $d = 2 \nmid x = 1$ és $2 \nmid y = 1$!
**Ellenpélda: $x = 1, y = 1, d = 2$.**

::: elmelet
**Elméleti háttér — Kétváltozós kvadratikus alakok és determináns.**

Egy $Q(x, y) = a x^2 + 2b xy + c y^2$ binér kvadratikus alak determinánsa $\Delta = ac - b^2$.
Ha $\Delta > 0$ és $a > 0$, az alak pozitív definit, és csak nemnegatív értékeket vesz fel.
Az egész számok előállítása kvadratikus alakokkal a Gauss-féle kvadratikus formák elméletének tárgya: egy $n$ szám pontosan akkor állítható elő, ha az alak megfelelően reprezentálja modulo az alak diszkriminánsát.
:::

## Gy4.14.1. feladat

Számítsuk ki az $(F_{12}, F_{18})$ legnagyobb közös osztót a Fibonacci-lnko tétel segítségével!

**Megoldás.**

A tétel szerint:
$$(F_{12}, F_{18}) = F_{(12, 18)}.$$
Mivel $(12, 18) = 6$:
$$(F_{12}, F_{18}) = F_6.$$
A Fibonacci-számok: $F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, F_6 = 8$.
**Eredmény: $F_6 = 8$.**

::: elmelet
**Elméleti háttér — Erős oszthatósági sorozatok és Fibonacci-háló.**

Egy $(a_n)$ sorozatot *erős oszthatósági sorozatnak* (strong divisibility sequence) nevezünk, ha minden $m, n \ge 1$-re:
$$\gcd(a_m, a_n) = a_{\gcd(m, n)}.$$
A Fibonacci-sorozat a legismertebb példa erre. Ebből azonnal adódik, hogy $m \mid n \implies F_m \mid F_n$.
Továbbá ha $F_n$ prímszám, akkor $n$-nek szükségképpen prímnek kell lennie (az egyetlen kivétel $F_4 = 3$, ahol $n = 4$).
:::

## Gy4.14.2. feladat

Mutassuk meg mátrixszorzással a Cassini-azonosságot!

**Megoldás.**

Legyen $M = \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}$.
Indukcióval igazolható, hogy $M^n = \begin{pmatrix} F_{n+1} & F_n \\ F_n & F_{n-1} \end{pmatrix}$.
Vegyük mindkét oldal determinánsát:
$\det(M) = 1 \cdot 0 - 1 \cdot 1 = -1$.
A determinánsok szorzástétele miatt:
$$\det(M^n) = (\det M)^n = (-1)^n.$$
Másrészt a blokkmátrix determinánsa:
$$\det \begin{pmatrix} F_{n+1} & F_n \\ F_n & F_{n-1} \end{pmatrix} = F_{n+1} F_{n-1} - F_n^2.$$
A két oldal egyenlőségéből azonnal: $F_{n+1} F_{n-1} - F_n^2 = (-1)^n$. $\blacksquare$

::: elmelet
**Elméleti háttér — Fibonacci-mátrix és $O(\log n)$ hatványozás.**

A $Q = \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}$ mátrix hatványai közvetlenül generálják a Fibonacci-számokat:
$$Q^n = \begin{pmatrix} F_{n+1} & F_n \\ F_n & F_{n-1} \end{pmatrix}.$$
A gyorshatványozás (ismételt négyzetre emelés) algoritmusával $Q^n$ mindössze $O(\log n)$ mátrixszorzással kiszámítható, ami lehetővé teszi hatalmas Fibonacci-számok (akár több százezer jegyűek) rendkívül gyors előállítását.
:::

## Gy4.15.1. feladat

Igazoljuk, hogy ha $p$ és $q$ 3-nál nagyobb prímszámok, akkor $24 \mid p^2 - q^2$!

**Megoldás.**

*Bizonyítás:*
A tétel szerint mivel $p \ge 5$ és $q \ge 5$:
$$p^2 \equiv 1 \pmod{24} \quad \text{és} \quad q^2 \equiv 1 \pmod{24}.$$
Kivonva a két kongruenciát:
$$p^2 - q^2 \equiv 1 - 1 = 0 \pmod{24}.$$
Tehát $24 \mid p^2 - q^2$. $\blacksquare$

::: elmelet
**Elméleti háttér — Fermat-számok páronkénti relatív prímsége (Pólya tétele).**

A Fermat-számok $F_n = 2^{2^n} + 1$ kielégítik a híres szorzatazonosságot:
$$\prod_{k=0}^{n-1} F_k = F_n - 2.$$
*Bizonyítás teljes indukcióval:* $F_0 = 3 = F_1 - 2$. Ha igaz $n$-re:
$$\prod_{k=0}^n F_k = (F_n - 2) F_n = (2^{2^n} - 1)(2^{2^n} + 1) = (2^{2^n})^2 - 1 = 2^{2^{n+1}} - 1 = F_{n+1} - 2.$$
*Következmény (Pólya György, 1925):* Ha $m < n$, akkor $F_m \mid F_n - 2$.
Ha $d = \gcd(F_m, F_n)$, akkor $d \mid F_n$ és $d \mid F_n - 2$, így $d \mid 2$.
Mivel minden Fermat-szám páratlan, $d = 1$.
Tehát a Fermat-számok páronként relatív prímek! Ez újabb elegáns bizonyítást ad a prímek végtelenségére (minden $F_n$-nek van egy új, korábban nem látott prímosztója).
:::

## Gy4.15.2. feladat

Igaz-e, hogy ha $p \ge 5$ prím, akkor $p^4 \equiv 1 \pmod{240}$?

**Megoldás.**

$240 = 16 \cdot 3 \cdot 5$.
- Modulo 3: $p \ge 5 \implies p^2 \equiv 1 \implies p^4 \equiv 1 \pmod 3$.
- Modulo 5: kis Fermat szerint $p^4 \equiv 1 \pmod 5$.
- Modulo 16: $p$ páratlan, $p = 2k + 1$. $p^2 = 8m + 1$, így $p^4 = (8m + 1)^2 = 64m^2 + 16m + 1 \equiv 1 \pmod{16}$.
Mivel $3, 5, 16$ páronként relatív prímek: $p^4 \equiv 1 \pmod{3 \cdot 5 \cdot 16 = 240}$.
**IGAZ.**

::: elmelet
**Elméleti háttér — Fermat-számok prímfaktorainak alakja (Euler–Lucas-tétel).**

Ha egy $q$ prímszám osztója az $F_n = 2^{2^n} + 1$ Fermat-számnak:
Ekkor $2^{2^n} \equiv -1 \pmod q \implies 2^{2^{n+1}} \equiv 1 \pmod q$.
Ez azt jelenti, hogy 2 rendje modulo $q$ pontosan $2^{n+1}$.
A kis Fermat-tétel szerint $2^{q-1} \equiv 1 \pmod q$, így a rend osztja $q - 1$-et:
$$2^{n+1} \mid q - 1 \implies q \equiv 1 \pmod{2^{n+1}}.$$
Lucas ezt tovább élesítette: minden osztó $q = k \cdot 2^{n+2} + 1$ alakú.
Euler ezzel a tétellel találta meg az $F_5 = 2^{32} + 1$ első prímfaktorát: $k = 5$-re $q = 5 \cdot 2^7 + 1 = 641 \mid F_5$.
:::

## Gy4.16.1. feladat

Hány pozitív osztója van a 3600 számnak? Páros vagy páratlan ez a szám?

**Megoldás.**

$3600 = 36 \cdot 100 = 6^2 \cdot 10^2 = 2^2 \cdot 3^2 \cdot 2^2 \cdot 5^2 = 2^4 \cdot 3^2 \cdot 5^2$.
Az osztók száma:
$$d(3600) = (4 + 1)(2 + 1)(2 + 1) = 5 \cdot 3 \cdot 3 = 45.$$
Mivel $3600 = 60^2$ négyzetszám, $d(3600) = 45$ páratlan szám!
**45 osztója van, és páratlan.**

::: elmelet
**Elméleti háttér — Erősen összetett számok (Highly Composite Numbers).**

Egy $n$ számot *erősen összetett számnak* nevezünk (Ramanujan, 1915), ha több osztója van, mint bármely nála kisebb pozitív egésznek:
$$d(n) > d(m) \quad \text{minden } m < n \text{ esetén}.$$
A legkisebb erősen összetett számok: 1, 2, 4, 6, 12, 24, 36, 48, 60, 120, 180, 240, 360, 720, 840, 1260, 1680, 2520, 5040...
Ezek prímfelbontásában a prímek folytonosan követik egymást (nincs ugrás), és a kitevők monoton csökkennek: $\alpha_1 \ge \alpha_2 \ge \dots \ge \alpha_k$, az utolsó kitevő pedig szinte mindig 1.
:::

## Gy4.16.2. feladat

Melyek azok a számok, amelyeknek pontosan 3 pozitív osztójuk van?

**Megoldás.**

$d(n) = 3$. Mivel a 3 prím, a szorzat $(\alpha_1 + 1)\dots$ csak egyetlen tényezőből állhat:
$$\alpha_1 + 1 = 3 \implies \alpha_1 = 2.$$
Ez azt jelenti, hogy $n = p^2$, ahol $p$ prímszám.
Az osztók pontosan: $\{1, p, p^2\}$.
**Pontosan a prímszámok négyzetei: $p^2$ (pl. $4, 9, 25, 49, \dots$).**

::: elmelet
**Elméleti háttér — Prímszámú osztóval rendelkező számok.**

Mikor lesz $d(n) = p$ egy prímszám?
Mivel $d(n) = \prod (\alpha_i + 1)$, a szorzatnak egyetlen nem 1 tényezője lehet: $\alpha_1 + 1 = p \implies \alpha_1 = p - 1$.
Ez azt jelenti, hogy a számnak pontosan egy prímosztója van:
$$n = q^{p-1}, \quad \text{ahol } q \text{ egy tetszőleges prímszám}.$$
Például $d(n) = 3$ prím $\iff n = q^2$ prímnégyzet ($4, 9, 25, 49, \dots$).
$d(n) = 2$ prím $\iff n = q^1$ maga egy prímszám.
:::

## Gy4.17.1. feladat

Hány nullára végződik a $1000!$ szám a tízes számrendszerben?

**Megoldás.**

A nullák száma a 10 kitevője $1000!$-ban: $\min(v_2(1000!), v_5(1000!)) = v_5(1000!)$.
A Legendre-formula alapján:
$$v_5(1000!) = \left\lfloor \frac{1000}{5} \right\rfloor + \left\lfloor \frac{1000}{25} \right\rfloor + \left\lfloor \frac{1000}{125} \right\rfloor + \left\lfloor \frac{1000}{625} \right\rfloor$$
$$= 200 + 40 + 8 + 1 = 249.$$
**A $1000!$ pontosan 249 nullára végződik.**

::: elmelet
**Elméleti háttér — Faktoriálisok záró nullái és 10-es bázis.**

Egy szám tízes számrendszerbeli záró nulláinak száma megegyezik a szám prímtényezős felbontásában a 10 kitevőjével:
$$Z(n!) = v_{10}(n!) = \min(v_2(n!), v_5(n!)).$$
Mivel a 2-es tényezők sokkal sűrűbben fordulnak elő a számegyenesen, mint az 5-ösök ($v_2(n!) > v_5(n!)$ minden $n \ge 2$-re), a záró nullák számát kizárólag a legmagasabb 5-hatvány kitevője determinálja:
$$Z(n!) = v_5(n!) = \sum_{k=1}^\infty \left\lfloor \frac{n}{5^k} \right\rfloor = \left\lfloor \frac{n}{5} \right\rfloor + \left\lfloor \frac{n}{25} \right\rfloor + \left\lfloor \frac{n}{125} \right\rfloor + \dots$$
:::

## Gy4.17.2. feladat

Mutassuk meg, hogy $2^n \nmid n!$ semmilyen $n \ge 1$ egész számra!

**Megoldás.**

A Legendre-formula $p = 2$-re:
$$v_2(n!) = n - S_2(n).$$
Mivel $n \ge 1$, az $n$ kettes számrendszerbeli jegyeinek összege $S_2(n) \ge 1$.
Ezért:
$$v_2(n!) = n - S_2(n) \le n - 1 < n.$$
Mivel a 2 kitevője $n!$-ban szigorúan kisebb $n$-nél, $2^n$ nem oszthatja $n!$-t. $\blacksquare$

::: elmelet
**Elméleti háttér — Kummer tétele és átvitelek a binomiális együtthatóban.**

*Ernst Kummer tétele (1852):*
A $\binom{n+m}{n}$ binomiális együtthatóban a $p$ prím kitevője $v_p\left(\binom{n+m}{n}\right)$ pontosan megegyezik az $n$ és $m$ számok $p$ alapú számrendszerbeli összeadásakor keletkező **átvitelek (carry-k) számával**.
Ez azonnal látható a Legendre-formulából:
$$v_p\left(\binom{n+m}{n}\right) = \frac{(n+m) - S_p(n+m)}{p-1} - \frac{n - S_p(n)}{p-1} - \frac{m - S_p(m)}{p-1} = \frac{S_p(n) + S_p(m) - S_p(n+m)}{p-1}.$$
Minden átvitel pontosan $p - 1$-gyel csökkenti a számjegyösszeget, így a hányados a carry-k száma.
:::

## Gy4.18.1. feladat

Becsüljük meg alulról a $\sum_{p \le x} \frac{1}{p}$ összeget a fenti Euler-egyenlőtlenség logaritmizálásával!

**Megoldás.**

Vegyük a logaritmust:
$$\ln\left(\sum_{n \le x} \frac{1}{n}\right) < \sum_{p \le x} -\ln\left(1 - \frac{1}{p}\right).$$
Mivel $-\ln(1 - u) = u + \frac{u^2}{2} + \dots < u + u^2$, és $\sum \frac{1}{p^2} < \sum \frac{1}{n^2} = \frac{\pi^2}{6}$:
$$\sum_{p \le x} -\ln\left(1 - \frac{1}{p}\right) \le \sum_{p \le x} \frac{1}{p} + C_0.$$
Mivel $\sum_{n \le x} \frac{1}{n} > \ln(x)$:
$$\sum_{p \le x} \frac{1}{p} > \ln(\ln x) - C_0.$$
Mivel $\ln(\ln x) \to \infty$, a prímek reciprokösszege divergens! $\blacksquare$

::: elmelet
**Elméleti háttér — A Riemann-féle zéta-függvény és a számelmélet analitikus módszerei.**

A Dirichlet-sorok elméletében minden multiplikatív számtani függvény generátorfüggvénye Euler-szorzatként fejezhető ki:
$$\sum_{n=1}^\infty \frac{f(n)}{n^s} = \prod_{p \text{ prím}} \left(1 + \frac{f(p)}{p^s} + \frac{f(p^2)}{p^{2s}} + \dots\right).$$
Különösen:
- $\sum_{n=1}^\infty \frac{1}{n^s} = \zeta(s) = \prod_p \frac{1}{1 - p^{-s}}$;
- $\sum_{n=1}^\infty \frac{\mu(n)}{n^s} = \frac{1}{\zeta(s)}$;
- $\sum_{n=1}^\infty \frac{\varphi(n)}{n^s} = \frac{\zeta(s-1)}{\zeta(s)}$;
- $\sum_{n=1}^\infty \frac{d(n)}{n^s} = \zeta(s)^2$.
Ezek az azonosságok kötik össze a diszkrét prímszám-eloszlást a komplex analízissel (Riemann-hipotézis).
:::

## Gy4.18.2. feladat

Igazoljuk, hogy $\prod_{p} \left(1 - \frac{1}{p^2}\right) = \frac{6}{\pi^2}$!

**Megoldás.**

Euler formulája $s = 2$-re:
$$\prod_p \left(1 - \frac{1}{p^2}\right)^{-1} = \zeta(2) = \sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6}.$$
Mindkét oldal reciprokát véve:
$$\prod_p \left(1 - \frac{1}{p^2}\right) = \frac{1}{\zeta(2)} = \frac{6}{\pi^2} \approx 0{,}6079.$$
*(Valószínűségszámítási jelentés: annak a valószínűsége, hogy két véletlenszerűen választott egész szám relatív prím, pontosan $\frac{6}{\pi^2}$.)* $\blacksquare$

::: elmelet
**Elméleti háttér — A bázeli probléma és az Euler-féle szorzatformula.**

*Euler tétele (1735):* A négyzetszámok reciprokainak összege konvergens, és pontos értéke:
$$\zeta(2) = \sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6}.$$
Euler zseniális felismerése szerint a Riemann-féle zéta-függvény felírható az összes prímre kiterjedő Euler-szorzatként:
$$\zeta(s) = \sum_{n=1}^\infty \frac{1}{n^s} = \prod_{p \text{ prím}} \frac{1}{1 - p^{-s}} \quad (\operatorname{Re}(s) > 1).$$
$s = 2$ esetén mindkét oldal reciprokát véve:
$$\prod_{p \text{ prím}} \left(1 - \frac{1}{p^2}\right) = \frac{1}{\zeta(2)} = \frac{6}{\pi^2}.$$
Ez az azonosság adja meg annak a valószínűségét is, hogy két véletlenszerűen választott pozitív egész szám relatív prím egymáshoz: $P(\gcd(a, b) = 1) = \frac{6}{\pi^2} \approx 60{,}79\%$.
:::

---

# Az 5. feladatsorhoz – Megoldások — Komplex számok algebrai és trigonometrikus alakja, Moivre-formula, gyökvonás és geometriai alkalmazások

## Gy5.1.1. feladat

Bizonyítsuk be, hogy a komplex számok szorzása kommutatív: $xy = yx$ minden $x, y \in \mathbb{C}$ esetén!

**Megoldás.**

*Bizonyítás:*
Legyen $x = a + bi$ és $y = c + di$.
$$xy = (ac - bd) + (ad + bc)i.$$
$$yx = (ca - db) + (cb + da)i.$$
Mivel a valós számok szorzása és összeadása kommutatív:
$ca - db = ac - bd$ és $cb + da = bc + ad = ad + bc$.
Így $xy = yx$. $\blacksquare$

::: elmelet
**Elméleti háttér — A komplex test axiomatikája és szorzási kommutativitás.**

A komplex számtest $\mathbb{C}$ az $\mathbb{R}^2$ vektortér felett definiált test:
$$(a, b) + (c, d) = (a + c, b + d), \quad (a, b) \cdot (c, d) = (ac - bd, ad + bc).$$
Az $i = (0, 1)$ képzetes egységgel $i^2 = -1$.
A szorzás kommutativitása ($(a+bi)(c+di) = (c+di)(a+bi)$) a valós számok kommutativitásából és disztributivitásából öröklődik. $\mathbb{C}$ egy 2-dimenziós valós kommutatív algebra és test (Frobenius tétele szerint az egyetlen kommutatív véges dimenziós valós osztásos algebra $\mathbb{R}$ mellett).
:::

## Gy5.1.2. feladat

Határozzuk meg a $z = a + bi \ne 0$ komplex szám multiplikatív inverzét algebrai alakban!

**Megoldás.**

Bővítsük a törtet a konjugálttal:
$$\frac{1}{a + bi} = \frac{a - bi}{(a + bi)(a - bi)} = \frac{a - bi}{a^2 + b^2} = \frac{a}{a^2 + b^2} - \frac{b}{a^2 + b^2} i.$$
Mivel $z \ne 0$, $a^2 + b^2 = |z|^2 > 0$, így a nevező nem nulla.
**Eredmény: $z^{-1} = \frac{\bar{z}}{|z|^2} = \frac{a - bi}{a^2 + b^2}$.**

::: elmelet
**Elméleti háttér — Multiplikatív inverz és a komplex norma.**

Minden nemnulla $z = a + bi \in \mathbb{C} \setminus \{0\}$ komplex számhoz létezik egyértelmű $z^{-1}$ multiplikatív inverz.
Mivel $z \cdot \bar{z} = (a + bi)(a - bi) = a^2 + b^2 = |z|^2 \in \mathbb{R}^+$, a nevező valósításával azonnal adódik a formula:
$$z^{-1} = \frac{\bar{z}}{|z|^2} = \frac{a - bi}{a^2 + b^2}.$$
Ez azt mutatja, hogy az inverz képzése geometriailag egy egységkörre való inverzió (tükrözés az egységkörre) és a valós tengelyre való konjugálás (tükrözés) egymás utáni elvégzése.
:::

## Gy5.2.1. feladat

Számítsuk ki a $\frac{1 + 3i}{2 - i} + \frac{1 - 3i}{2 + i}$ kifejezés pontos értékét!

**Megoldás.**

Vegyük észre, hogy a két tag egymás komplex konjugáltja: $w + \bar{w} = 2\operatorname{Re}(w)$.
Számítsuk ki az első tagot:
$$\frac{1 + 3i}{2 - i} = \frac{(1 + 3i)(2 + i)}{2^2 + 1^2} = \frac{2 + i + 6i - 3}{5} = \frac{-1 + 7i}{5} = -\frac{1}{5} + \frac{7}{5}i.$$
Ekkor a második tag ennek konjugáltja: $-\frac{1}{5} - \frac{7}{5}i$.
Összegük:
$$\left(-\frac{1}{5} + \frac{7}{5}i\right) + \left(-\frac{1}{5} - \frac{7}{5}i\right) = -\frac{2}{5}.$$
**Végeredmény: $-\frac{2}{5}$.**

::: elmelet
**Elméleti háttér — Konjugált komplex törtek összege és valóság.**

Ha egy kifejezés előáll $w + \bar{w}$ alakban, akkor annak értéke automatikusan valós szám:
$$w + \bar{w} = 2 \operatorname{Re}(w).$$
Mivel a komplex konjugálás testautomorfizmus ($\overline{u + v} = \bar{u} + \bar{v}$, $\overline{u / v} = \bar{u} / \bar{v}$):
$$\overline{\left(\frac{1 + 3i}{2 - i}\right)} = \frac{1 - 3i}{2 + i}.$$
Ennek következtében a két tört összege pontosan a valós rész kétszerese, így a képzetes komponens számolása szükségtelen, azonnal zérust ad.
:::

## Gy5.2.2. feladat

Mennyi az értéke az $(1 + i)^{20}$ kifejezésnek?

**Megoldás.**

$(1 + i)^2 = 2i$.
Ekkor $(1 + i)^{20} = ((1 + i)^2)^{10} = (2i)^{10} = 2^{10} \cdot i^{10}$.
Mivel $i^{10} = (i^4)^2 \cdot i^2 = 1 \cdot (-1) = -1$:
$$(1 + i)^{20} = 1024 \cdot (-1) = -1024.$$
**Végeredmény: $-1024$.**

::: elmelet
**Elméleti háttér — Poláris hatványozás és a 8-as ciklikusság.**

Az $1 + i$ komplex szám polárkoordinátás (trigonometrikus) alakja:
$$1 + i = \sqrt{2} \left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right) = \sqrt{2} e^{i\pi/4}.$$
A Moivre-formula szerint hatványozáskor a hosszak hatványozódnak, a szögek szorzódnak:
$$(1 + i)^n = (\sqrt{2})^n e^{i n \pi / 4} = 2^{n/2} \left(\cos\frac{n\pi}{4} + i\sin\frac{n\pi}{4}\right).$$
Mivel $e^{i \cdot 8\pi/4} = e^{i \cdot 2\pi} = 1$, az $(1+i)^8 = (\sqrt{2})^8 = 16$ tiszta valós szám. Emiatt a hatványok 8-as periódus szerint viselkednek az irányban.
:::

## Gy5.3.1. feladat

Igazoljuk, hogy ha $|z| = 1$ és $z \ne 1$, akkor a $\frac{z + 1}{z - 1}$ szám tiszta képzetes!

**Megoldás.**

*Bizonyítás:*
Egy szám pontosan akkor tiszta képzetes, ha $\overline{w} = -w$.
Legyen $w = \frac{z + 1}{z - 1}$. Mivel $|z| = 1$, $\bar{z} = 1/z$.
$$\overline{w} = \frac{\bar{z} + 1}{\bar{z} - 1} = \frac{1/z + 1}{1/z - 1} = \frac{(1 + z)/z}{(1 - z)/z} = \frac{z + 1}{1 - z} = -\frac{z + 1}{z - 1} = -w.$$
Mivel $\overline{w} = -w$, $w$ tiszta képzetes szám. $\blacksquare$

::: elmelet
**Elméleti háttér — Cayley-transzformáció és az egységkör leképezése.**

A $w = \frac{z + 1}{z - 1}$ törtlineáris függvény (Möbius-transzformáció) a komplex függvénytan egyik alapeszköze (Cayley-transzformáció).
Ha $|z| = 1$ és $z \neq 1$, akkor $z = e^{i\theta}$ ($\theta \in (0, 2\pi)$). Ekkor:
$$\frac{e^{i\theta} + 1}{e^{i\theta} - 1} = \frac{e^{i\theta/2}(e^{i\theta/2} + e^{-i\theta/2})}{e^{i\theta/2}(e^{i\theta/2} - e^{-i\theta/2})} = \frac{2\cos(\theta/2)}{2i\sin(\theta/2)} = -i \operatorname{ctg}\frac{\theta}{2}.$$
Mivel $\operatorname{ctg}(\theta/2)$ valós szám, az eredmény tiszta képzetes szám ($\operatorname{Re}(w) = 0$).
Geometriailag: a Cayley-transzformáció az egységkört pontosan az imaginárius tengelyre képezi le.
:::

## Gy5.3.2. feladat

Határozzuk meg az összes olyan $z \in \mathbb{C}$ számot, amelyre $z + \frac{1}{z} \in \mathbb{R}$!

**Megoldás.**

Feltétel: $z + \frac{1}{z} = \overline{z + \frac{1}{z}} = \bar{z} + \frac{1}{\bar{z}}$.
Rendezzük egy oldalra:
$$(z - \bar{z}) + \left(\frac{1}{z} - \frac{1}{\bar{z}}\right) = 0 \iff (z - \bar{z}) + \frac{\bar{z} - z}{|z|^2} = 0 \iff (z - \bar{z})\left(1 - \frac{1}{|z|^2}\right) = 0.$$
Ez a szorzat pontosan akkor 0, ha:
1. $z - \bar{z} = 0 \iff z \in \mathbb{R} \setminus \{0\}$, VAGY
2. $1 - \frac{1}{|z|^2} = 0 \iff |z|^2 = 1 \iff |z| = 1$.
**A számok: vagy a nemnulla valós számok, vagy az egységkörön lévő komplex számok.**

::: elmelet
**Elméleti háttér — Zsukovszkij-transzformáció és valós értékek.**

A $J(z) = z + \frac{1}{z}$ Zsukovszkij-leképezés az aerodinamika (szárnyprofilok modellezése) klasszikus eszköze.
Ha $z = r e^{i\theta}$, akkor:
$$z + \frac{1}{z} = r(\cos\theta + i\sin\theta) + \frac{1}{r}(\cos\theta - i\sin\theta) = \left(r + \frac{1}{r}\right)\cos\theta + i\left(r - \frac{1}{r}\right)\sin\theta.$$
A kifejezés képzetes része pontosan akkor zérus (valós értékű), ha:
1. $\sin\theta = 0 \implies \theta \in \{0, \pi\} \implies z \in \mathbb{R} \setminus \{0\}$ (a valós tengely pontjai);
2. $r - \frac{1}{r} = 0 \implies r = 1 \implies |z| = 1$ (az origó középpontú egységkör pontjai).
:::

## Gy5.4.1. feladat

Számítsuk ki az $i \cdot i^2 \cdot i^3 \dots i^{100}$ szorzat értékét!

**Megoldás.**

A kitevők összeadódnak:
$$1 + 2 + \dots + 100 = \frac{100 \cdot 101}{2} = 5050.$$
A hatvány: $i^{5050}$.
Mivel $5050 = 4 \cdot 1262 + 2$:
$$i^{5050} = i^2 = -1.$$
**A szorzat értéke: $-1$.**

::: elmelet
**Elméleti háttér — Exponenciális szorzatok és a számtani sorozat összege.**

A hatványozás azonosságai alapján azonos alapú hatványok szorzatánál a kitevők összeadódnak:
$$\prod_{k=1}^n i^k = i^{\sum_{k=1}^n k} = i^{\frac{n(n+1)}{2}}.$$
Mivel $i$ hatványai modulo 4 periodikusak ($i^0=1, i^1=i, i^2=-1, i^3=-i$), az érték kizárólag az $\frac{n(n+1)}{2}$ kitevő modulo 4 maradékától függ.
:::

## Gy5.4.2. feladat

Mennyi az értéke a $\sum_{k=1}^{4n} k \cdot i^k$ összegnek?

**Megoldás.**

Bontsuk négyes blokkokra a tagokat:
$(4m+1)i + (4m+2)i^2 + (4m+3)i^3 + (4m+4)i^4 = (4m+1)i - (4m+2) - (4m+3)i + (4m+4) = 2 - 2i$.
Minden 4-es blokk értéke konstans: $2 - 2i$!
Mivel $n$ darab ilyen blokk van:
$$\sum_{k=1}^{4n} k \cdot i^k = n(2 - 2i) = 2n(1 - i).$$
**Végeredmény: $2n - 2ni$.**

::: elmelet
**Elméleti háttér — Súlyozott ciklikus összegek és a derivált generátorfüggvény.**

A $\sum_{k=1}^m k z^k$ típusú összegek kiszámításának standard módszere a véges mértani sor deriválása:
$$\sum_{k=1}^m z^k = z \frac{z^m - 1}{z - 1} \implies \sum_{k=1}^m k z^{k-1} = \frac{d}{dz}\left(z \frac{z^m - 1}{z - 1}\right).$$
$z = i$ esetén $i^k$ négyes periódusú. Egy 4 hosszú blokkban:
$$1 \cdot i + 2 \cdot (-1) + 3 \cdot (-i) + 4 \cdot 1 = (4 - 2) + i(1 - 3) = 2 - 2i.$$
Minden további 4-es blokk ugyanezzel az eltolással járul hozzá, ami azonnali zárt képletet ad tetszőleges $4n$ hosszúságú szakaszra.
:::

## Gy5.5.1. feladat

Oldjuk meg a $2z - 3\overline{z} = -2 + 15i$ egyenletet $\mathbb{C}$-ben!

**Megoldás.**

Legyen $z = x + yi$.
$2(x + yi) - 3(x - yi) = (2x - 3x) + (2y + 3y)i = -x + 5yi$.
Egyenlővé téve a jobb oldallal:
$$-x + 5yi = -2 + 15i.$$
- Valós rész: $-x = -2 \implies x = 2$.
- Képzetes rész: $5y = 15 \implies y = 3$.
**A megoldás: $z = 2 + 3i$.**
(Ellenőrzés: $2(2+3i) - 3(2-3i) = 4+6i - 6+9i = -2 + 15i$. Helyes!)

::: elmelet
**Elméleti háttér — Lineáris egyenletek $z$-ben és $\bar{z}$-ban (valós szétcsatolás).**

Egy $a z + b \bar{z} = c$ alakú egyenlet megoldásának két alapvető módszere:
1. *Komponens-módszer:* $z = x + iy$ helyettesítéssel a valós és képzetes részek szétválasztásával egy $2 \times 2$-es valós lineáris egyenletrendszert kapunk $x$-re és $y$-ra.
2. *Konjugált egyenlet módszere:* Vesszük az egyenlet konjugáltját: $\bar{b} z + \bar{a} \bar{z} = \bar{c}$.
Ez egy $2 \times 2$-es lineáris rendszer a $z$ és $\bar{z}$ formális változókra. A rendszer determinánsa $|a|^2 - |b|^2$.
Ha $|a| \neq |b|$, a rendszernek egyértelmű megoldása van.
:::

## Gy5.5.2. feladat

Oldjuk meg az $i z + 2\overline{z} = 1 + 2i$ egyenletet!

**Megoldás.**

Legyen $z = x + yi$.
$iz = i(x + yi) = -y + xi$.
$2\bar{z} = 2x - 2yi$.
Összegük:
$$(2x - y) + (x - 2y)i = 1 + 2i.$$
A kapott valós egyenletrendszer:
1) $2x - y = 1 \implies y = 2x - 1$.
2) $x - 2y = 2 \implies x - 2(2x - 1) = 2 \iff x - 4x + 2 = 2 \implies -3x = 0 \implies x = 0$.
Ekkor $y = 2(0) - 1 = -1$.
Így $z = 0 - i = -i$.
Ellenőrzés: $i(-i) + 2(\overline{-i}) = 1 + 2(i) = 1 + 2i$. Helyes!
**A megoldás: $z = -i$.**

::: elmelet
**Elméleti háttér — Szinguláris és csatolt komplex rendszerek.**

Ha az $a z + b \bar{z} = c$ rendszerben a determináns $|a|^2 - |b|^2 = 0$ (azaz $|a| = |b|$):
A rendszer együtthatómátrixa szinguláris. Ekkor a Kronecker–Capelli tételnek megfelelően:
- Ha az egyenletek ellentmondásosak, nincs megoldás;
- Ha az egyenletek összefüggők, végtelen sok megoldás van (geometriailag egy egyenes a komplex számsíkon).
:::

## Gy5.6.1. feladat

Oldjuk meg a $z = (3 + 4i)\overline{z}$ egyenletet!

**Megoldás.**

Abszolút értéket véve: $|z| = |3 + 4i||\bar{z}| = 5|z| \implies 4|z| = 0 \implies |z| = 0$.
Így az egyetlen megoldás $z = 0$.
**Megoldás: $z = 0$.**

::: elmelet
**Elméleti háttér — A komplex abszolút érték multiplikatív normája.**

A komplex modulus (abszolút érték) kielégíti a norma axiómáit:
1. $|z| \ge 0$, és $|z| = 0 \iff z = 0$;
2. $|z \cdot w| = |z| \cdot |w|$;
3. $|z + w| \le |z| + |w|$ (háromszög-egyenlőtlenség).
Továbbá $|\bar{z}| = |z|$.
Ezért egy $z = c \bar{z}$ alakú egyenlet mindkét oldalának abszolút értékét véve:
$$|z| = |c| \cdot |\bar{z}| = |c| \cdot |z| \implies |z|(1 - |c|) = 0.$$
Ha $|c| \neq 1$, akkor kényszerűen $|z| = 0$, így az egyetlen megoldás a triviális $z = 0$.
:::

## Gy5.6.2. feladat

Határozzuk meg az összes olyan $z \in \mathbb{C}$ számot, amelyre $\operatorname{Re}(z) = z + \overline{z}$!

**Megoldás.**

Legyen $z = x + yi$.
$\operatorname{Re}(z) = x$.
$z + \bar{z} = 2x$.
Az egyenlet: $x = 2x \implies x = 0$.
A képzetes részre ($y$) nincs feltétel.
**A megoldások a tiszta képzetes számok: $z = yi$, ahol $y \in \mathbb{R}$.**

::: elmelet
**Elméleti háttér — A képzetes tengely karakterizációja konjugálttal.**

Egy $z \in \mathbb{C}$ komplex számra az alábbiak ekvivalensek:
1. $z$ tiszta képzetes szám ($\operatorname{Re}(z) = 0$);
2. $\bar{z} = -z$;
3. $z^2 \le 0$ valós szám.
Geometriailag ez a Gauss-féle számsík vertikális tengelye. Hasonlóan $\bar{z} = z$ pontosan a valós tengely pontjait karakterizálja.
:::

## Gy5.7.1. feladat

Tegyük fel, hogy $(a + bi)^5 = 8 - 6i$ ($a, b \in \mathbb{R}$). Mennyi $(a^2 + b^2)^5$ értéke?

**Megoldás.**

Legyen $z = a + bi$. Ekkor $|z^5| = |8 - 6i| = \sqrt{64 + 36} = \sqrt{100} = 10$.
Másrészt $(a^2 + b^2)^5 = (|z|^2)^5 = (|z|^5)^2 = 10^2 = 100$.
**Végeredmény: 100.**

::: elmelet
**Elméleti háttér — Pitagoraszi számhármasok és komplex hatványok normája.**

Mivel a komplex abszolút érték multiplikatív, ha $z^n = w$, akkor:
$$|z|^n = |w| \implies |z| = \sqrt[n]{|w|}.$$
Ha $w = a + bi$ koordinátái pitagoraszi számhármast alkotnak (pl. $8 - 6i$, ahol $8^2 + (-6)^2 = 64 + 36 = 100 = 10^2$), akkor $|w| = 10$.
Ennek következtében $z$ abszolút értéke azonnal adódik a gyökvonás nélkül: $|z| = \sqrt[5]{10}$, ami tetszőleges algebrai alak keresése nélkül egzaktul meghatározza $a^2 + b^2 = |z|^2$ értékét.
:::

## Gy5.7.2. feladat

Ha $(x + iy)^3 = 1 + i$, mennyi $x^2 + y^2$ pontos értéke?

**Megoldás.**

$|z^3| = |1 + i| = \sqrt{1^2 + 1^2} = \sqrt{2}$.
Másrészt $|z^3| = |z|^3 = (\sqrt{x^2 + y^2})^3 = (x^2 + y^2)^{3/2}$.
Így $(x^2 + y^2)^{3/2} = 2^{1/2} \implies x^2 + y^2 = (2^{1/2})^{2/3} = 2^{1/3} = \sqrt[3]{2}$.
**Végeredmény: $\sqrt[3]{2}$.**

::: elmelet
**Elméleti háttér — Hatványok abszolút értéke és a normatérkép.**

A $N(z) = |z|^2 = x^2 + y^2$ algebrai normatérkép multiplikatív: $N(z_1 z_2) = N(z_1) N(z_2)$.
Ha $(x + iy)^k = w$, akkor mindkét oldal normáját véve:
$$(x^2 + y^2)^k = N(w) \implies x^2 + y^2 = \sqrt[k]{N(w)}.$$
Ez a technika lehetővé teszi a komponensek négyzetösszegének pontos meghatározását anélkül, hogy a magas fokú egyenletrendszert valós és képzetes részekre kellene bontani.
:::

## Gy5.8.1. feladat

Oldjuk meg a következő rendszert $\mathbb{C}$-ben a Cramer-szabállyal:
$$\begin{aligned}
z + iw &= 1 \\
iz + w &= 1
\end{aligned}$$

**Megoldás.**

Fődetermináns:
$$D = \begin{vmatrix} 1 & i \\ i & 1 \end{vmatrix} = 1 - i^2 = 1 - (-1) = 2 \ne 0.$$
Ismeretlenek determinánsai:
$$D_z = \begin{vmatrix} 1 & i \\ 1 & 1 \end{vmatrix} = 1 - i.$$
$$D_w = \begin{vmatrix} 1 & 1 \\ i & 1 \end{vmatrix} = 1 - i.$$
A gyökök:
$$z = \frac{D_z}{D} = \frac{1 - i}{2} = \frac{1}{2} - \frac{1}{2}i, \qquad w = \frac{D_w}{D} = \frac{1 - i}{2} = \frac{1}{2} - \frac{1}{2}i.$$
(Ellenőrzés: $z + iw = \frac{1-i}{2} + \frac{i+1}{2} = \frac{2}{2} = 1$. Helyes!)
**Megoldás: $z = \frac{1-i}{2}, w = \frac{1-i}{2}$.**

::: elmelet
**Elméleti háttér — Cramer-szabály tetszőleges test felett.**

A lineáris algebra fundamentális tétele szerint a Cramer-szabály tetszőleges kommutatív test ($K$, így $\mathbb{C}$) felett érvényes:
Ha egy $n$ ismeretlenes, $n$ egyenletből álló rendszer együtthatómátrixára $\det(A) \neq 0$, akkor a rendszernek pontosan egy megoldása van, és
$$z_j = \frac{\det(A_j)}{\det(A)},$$
ahol $A_j$ az a mátrix, amelyet az $A$ $j$-edik oszlopának a konstans vektorra való kicserélésével kapunk. A számítás során a komplex aritmetika szabályai szerint szorzunk és osztunk.
:::

## Gy5.8.2. feladat

Oldjuk meg a $z + 2w = 5, \quad 2z + 4w = 10 + 2i$ rendszert $\mathbb{C}$-ben!

**Megoldás.**

Szorozzuk meg az 1. egyenletet 2-vel:
$$2z + 4w = 10.$$
A 2. egyenlet szerint viszont $2z + 4w = 10 + 2i$.
A kettőből $10 = 10 + 2i \implies 2i = 0$, ami ellentmondás!
**Nincs megoldás (inkonzisztens rendszer).**

::: elmelet
**Elméleti háttér — Ellentmondásos komplex lineáris rendszerek.**

Egy komplex lineáris rendszer pontosan akkor inkonzisztens (ellentmondásos, nincs megoldása), ha az együtthatómátrix rangja szigorúan kisebb a kibővített mátrix rangjánál:
$$\operatorname{rang}(A) < \operatorname{rang}(A | b).$$
$2 \times 2$-es esetben ez azt jelenti, hogy az egyenletek bal oldalai egymás skalárszorosai (determináns zérus), de a jobb oldali konstansok nem ugyanezzel a skalárral arányosak, ami $0 = c \neq 0$ típusú ellentmondáshoz vezet.
:::

## Gy5.9.1. feladat

Írjuk fel a $65 = 5 \cdot 13$ számot kétféleképpen két négyzetszám összegeként a fenti azonossággal!

**Megoldás.**

$5 = 2^2 + 1^2 \implies z_1 = 2 + i$.
$13 = 3^2 + 2^2 \implies z_2 = 3 + 2i$.
1. Szorzat: $z_1 z_2 = (2 + i)(3 + 2i) = (6 - 2) + (4 + 3)i = 4 + 7i$.
   Négyzetösszeg: $4^2 + 7^2 = 16 + 49 = 65$.
2. Konjugálttal: $z_1 \bar{z}_2 = (2 + i)(3 - 2i) = (6 + 2) + (-4 + 3)i = 8 - i$.
   Négyzetösszeg: $8^2 + (-1)^2 = 64 + 1 = 65$.
**A két felbontás: $65 = 4^2 + 7^2 = 1^2 + 8^2$.**

::: elmelet
**Elméleti háttér — Brahmagupta–Fibonacci-azonosság és két négyzet összege.**

A komplex számok normájának multiplikativitása közvetlenül bizonyítja a két négyzetszám összegének szorzattételét:
$$(a^2 + b^2)(c^2 + d^2) = |a+bi|^2 |c+di|^2 = |(a+bi)(c+di)|^2 = (ac - bd)^2 + (ad + bc)^2.$$
Mivel a konjugálttal is szorozhatunk:
$|(a+bi)(c-di)|^2 = (ac + bd)^2 + (ad - bc)^2$.
Ez azonnal két különböző felbontást ad négyzetszámok összegére összetett számok esetén (pl. $65 = 5 \cdot 13 = (2^2+1^2)(3^2+2^2)$).
:::

## Gy5.9.2. feladat

Előállhat-e a 2026 két négyzetszám összegeként?

**Megoldás.**

$2026 = 2 \cdot 1013$.
A 2 előáll: $2 = 1^2 + 1^2$.
Vizsgáljuk meg a 1013 számot: prím-e? $\sqrt{1013} \approx 31.8$.
Nem osztható $2, 3$ ($1+0+1+3=5$), $5, 7$ ($1013 = 7 \cdot 144 + 5$), $11$ ($3-1+0-1=1$), $13$ ($1013 = 13 \cdot 77 + 12$), $17$ ($17 \cdot 59 + 10$), $19$ ($19 \cdot 53 + 6$), $23$ ($23 \cdot 44 + 1$), $29$ ($29 \cdot 34 + 27$), $31$ ($31 \cdot 32 + 21$).
Tehát 1013 prímszám!
Mivel $1013 = 4 \cdot 253 + 1 \equiv 1 \pmod 4$, a kétnégyzetszám-tétel szerint előáll két négyzet összegeként!
Konkrétan: $1013 = 3^2 + 1004 \dots 1013 - 18^2 = 1013 - 324 = 689$; $1013 - 22^2 = 1013 - 484 = 529 = 23^2$.
Tehát $1013 = 22^2 + 23^2$.
Ekkor $2026 = (1^2 + 1^2)(22^2 + 23^2)$ is előáll két négyzet összegeként!
$(1 + i)(22 + 23i) = (22 - 23) + (23 + 22)i = -1 + 45i \implies 2026 = 1^2 + 45^2 = 1 + 2025 = 2026$!
**Igen, előáll: $2026 = 1^2 + 45^2$.**

::: elmelet
**Elméleti háttér — Fermat-tétel két négyzetszám összegéről.**

*Fermat tétele (1640):* Egy páratlan $p$ prímszám akkor és csak akkor írható fel két négyzetszám összegeként ($p = x^2 + y^2$), ha
$$p \equiv 1 \pmod 4.$$
Egy tetszőleges $N$ pozitív egész pontosan akkor áll elő két négyzetszám összegeként, ha a kanonikus prímfelbontásában minden $q \equiv 3 \pmod 4$ alakú prím páros hatványon szerepel.
A 2026 szám esetén $2026 = 2 \cdot 1013$. Mivel $1013 \equiv 1 \pmod 4$ prím, 2026 felírható két négyzet összegeként ($2026 = 45^2 + 1^2$).
:::

## Gy5.10.1. feladat

Oldjuk meg az $x^2 - 2x + 5 = 0$ egyenletet, és írjuk fel a gyöktényezős alakját!

**Megoldás.**

$(x - 1)^2 + 4 = 0 \iff (x - 1)^2 = -4 \implies x - 1 = \pm 2i \implies x = 1 \pm 2i$.
Gyökök: $1 + 2i, 1 - 2i$.
**Gyöktényezős alak:** $(x - 1 - 2i)(x - 1 + 2i)$.

::: elmelet
**Elméleti háttér — Valós együtthatós polinomok konjugált gyökpárjai.**

*Tétel:* Ha $P(x) \in \mathbb{R}[x]$ valós együtthatós polinom és $\alpha \in \mathbb{C}$ gyöke $P$-nek ($P(\alpha) = 0$), akkor a konjugáltja is gyök:
$$P(\bar{\alpha}) = \overline{P(\alpha)} = \bar{0} = 0.$$
*Következmény:* A nemvalós gyökök mindig párosával lépnek fel, és a hozzájuk tartozó $(x - \alpha)(x - \bar{\alpha}) = x^2 - 2\operatorname{Re}(\alpha)x + |\alpha|^2$ polinom valós együtthatós és irreducibilis $\mathbb{R}$ felett. Ezért minden páratlan fokú valós polinomnak van legalább egy valós gyöke.
:::

## Gy5.10.2. feladat

Oldjuk meg az $x^2 + 2ix + 3 = 0$ egyenletet!

**Megoldás.**

$(x + i)^2 - i^2 + 3 = 0 \iff (x + i)^2 - (-1) + 3 = 0 \iff (x + i)^2 + 4 = 0 \iff (x + i)^2 = -4$.
$x + i = \pm 2i$.
- $x_1 = -i + 2i = i$.
- $x_2 = -i - 2i = -3i$.
(Ellenőrzés: $i^2 + 2i(i) + 3 = -1 - 2 + 3 = 0$.)
**Gyökök: $x_1 = i, x_2 = -3i$.**

::: elmelet
**Elméleti háttér — Nemvalós együtthatós másodfokú egyenletek.**

Ha egy másodfokú egyenlet együtthatói komplex számok (pl. $a x^2 + b x + c = 0$, ahol $b \notin \mathbb{R}$):
A gyökök már NEM feltétlenül alkotnak konjugált párokat!
A megoldóképlet változatlanul érvényes:
$$x_{1, 2} = \frac{-b \pm \sqrt{\Delta}}{2a},$$
ahol $\Delta = b^2 - 4ac \in \mathbb{C}$ komplex szám, és a négyzetgyökvonást a komplex számok körében kell elvégezni.
:::

## Gy5.11.1. feladat

Vonjunk négyzetgyököt algebrai alakban a $z = -3 + 4i$ komplex számból!

**Megoldás.**

$|z| = \sqrt{(-3)^2 + 4^2} = 5$.
$c^2 + d^2 = 5$, $c^2 - d^2 = -3$.
$2c^2 = 2 \implies c = \pm 1$.
$2d^2 = 8 \implies d = \pm 2$.
Mivel $2cd = 4 > 0$, $c$ és $d$ azonos előjelűek.
**A négyzetgyökök: $\pm (1 + 2i)$.**
(Ellenőrzés: $(1 + 2i)^2 = 1 + 4i - 4 = -3 + 4i$.)

::: elmelet
**Elméleti háttér — Négyzetgyökvonás algebrai alakban.**

Egy $w = a + bi$ komplex szám négyzetgyökeit keressük $z = c + di$ alakban ($z^2 = w$):
$$c^2 - d^2 = a, \quad 2cd = b, \quad c^2 + d^2 = |w| = \sqrt{a^2 + b^2}.$$
A két egyenlet összeadásából és kivonásából adódik a zárt formula:
$$c = \pm \sqrt{\frac{|w| + a}{2}}, \quad d = \pm \operatorname{sgn}(b) \sqrt{\frac{|w| - a}{2}}.$$
A két előjel összetartozik (a $2cd = b$ feltétel miatt a szorzat előjele $b$ előjelével azonos).
:::

## Gy5.11.2. feladat

Oldjuk meg az $x^2 - 2x + (1 - 2i) = 0$ egyenletet!

**Megoldás.**

$\Delta = (-2)^2 - 4(1)(1 - 2i) = 4 - 4 + 8i = 8i$.
Keressük $\sqrt{8i}$-t: $|8i| = 8$.
$c = \sqrt{8/2} = 2$, $d = \sqrt{8/2} = 2$.
$\sqrt{8i} = \pm (2 + 2i)$.
A gyökök:
$$x = \frac{2 \pm (2 + 2i)}{2} = 1 \pm (1 + i).$$
- $x_1 = 1 + 1 + i = 2 + i$.
- $x_2 = 1 - 1 - i = -i$.
Ellenőrzés: $(2+i)(-i) = -2i - i^2 = 1 - 2i$. Helyes!
**Gyökök: $x_1 = 2 + i, x_2 = -i$.**

::: elmelet
**Elméleti háttér — Tiszta képzetes diszkrimináns és szögfelezés.**

Ha a másodfokú egyenlet diszkriminánsa tiszta képzetes ($\Delta = 2k i$):
Mivel $i = e^{i\pi/2}$, a négyzetgyökei $e^{i\pi/4} = \frac{1+i}{\sqrt{2}}$ irányúak.
Így $\sqrt{2ki} = \pm \sqrt{k} (1 + i)$.
A valós és képzetes komponensek egyenlők ($c = d$), ami azonnal adja a gyökök szerkezetét.
:::

## Gy5.12.1. feladat

Hozzuk trigonometrikus alakra a $z = 1 - i$ komplex számot!

**Megoldás.**

$r = \sqrt{1^2 + (-1)^2} = \sqrt{2}$.
$\cos\varphi = \frac{1}{\sqrt{2}}, \sin\varphi = -\frac{1}{\sqrt{2}}$.
A 4. síknegyedben van: $\varphi = 2\pi - \frac{\pi}{4} = \frac{7\pi}{4}$ (vagy $-\frac{\pi}{4}$).
**Trigonometrikus alak: $\sqrt{2}\left(\cos\frac{7\pi}{4} + i\sin\frac{7\pi}{4}\right)$.**

::: elmelet
**Elméleti háttér — Trigonometrikus alak és a főérték-tartomány.**

Egy $z = x + iy \neq 0$ komplex szám trigonometrikus (poláris) alakja:
$$z = r(\cos\varphi + i\sin\varphi) = r e^{i\varphi},$$
ahol $r = |z| = \sqrt{x^2 + y^2} > 0$ a modulus, és $\varphi = \operatorname{arg}(z)$ az argumentum.
A szög meghatározása a síknegyedektől függ:
- 1. negyed ($x > 0, y \ge 0$): $\varphi = \operatorname{arctg}(y/x)$;
- 2. negyed ($x < 0, y \ge 0$): $\varphi = \operatorname{arctg}(y/x) + \pi$;
- 3. negyed ($x < 0, y < 0$): $\varphi = \operatorname{arctg}(y/x) - \pi$ (vagy $+\pi$);
- 4. negyed ($x > 0, y < 0$): $\varphi = \operatorname{arctg}(y/x)$ (negatív szög, vagy $+2\pi$).
:::

## Gy5.12.2. feladat

Hozzuk trigonometrikus alakra az $1 + \cos\alpha + i\sin\alpha$ számot ($-\pi < \alpha < \pi$)!

**Megoldás.**

Használjuk a fél-szög azonosságokat:
$1 + \cos\alpha = 2\cos^2\left(\frac{\alpha}{2}\right)$,
$\sin\alpha = 2\sin\left(\frac{\alpha}{2}\right)\cos\left(\frac{\alpha}{2}\right)$.
Emeljünk ki $2\cos\left(\frac{\alpha}{2}\right)$-t (mivel $-\pi < \alpha < \pi$, $\cos(\alpha/2) > 0$):
$$1 + \cos\alpha + i\sin\alpha = 2\cos\left(\frac{\alpha}{2}\right) \left[ \cos\left(\frac{\alpha}{2}\right) + i\sin\left(\frac{\alpha}{2}\right) \right].$$
Ez pontosan trigonometrikus alak, ahol a sugár $r = 2\cos(\alpha/2)$, a szög $\varphi = \alpha/2$.
**Trigonometrikus alak: $2\cos\left(\frac{\alpha}{2}\right)\left(\cos\frac{\alpha}{2} + i\sin\frac{\alpha}{2}\right)$.**

::: elmelet
**Elméleti háttér — Trigonometrikus félszög-azonosságok komplex alakban.**

Az $1 + \cos\alpha + i\sin\alpha$ kifejezés trigonometrikus alakra hozásának leggyorsabb módja az Euler-alak félszög-kiemelése:
$$1 + e^{i\alpha} = e^{i\alpha/2}(e^{-i\alpha/2} + e^{i\alpha/2}) = e^{i\alpha/2} \cdot 2\cos\frac{\alpha}{2}.$$
Ha $\cos(\alpha/2) > 0$, akkor a modulus $r = 2\cos(\alpha/2)$, és az argumentum pontosan a félszög: $\varphi = \alpha/2$.
Ez az azonosság a geometriai vektorok felező szögének komplex reprezentációja.
:::

## Gy5.13.1. feladat

Legyen $u = 4\left(\cos\frac{\pi}{3} + i\sin\frac{\pi}{3}\right)$ és $v = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$. Számítsuk ki az $u \cdot v$ és $\frac{u}{v}$ értékét trigonometrikus és algebrai alakban is!

**Megoldás.**
1. Szorzás:
$$|u \cdot v| = 4 \cdot 2 = 8,$$
$$\arg(u \cdot v) = \frac{\pi}{3} + \frac{\pi}{6} = \frac{\pi}{2}.$$
Trigonometrikus alak:
$$u \cdot v = 8\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right).$$
Mivel $\cos\frac{\pi}{2} = 0$ és $\sin\frac{\pi}{2} = 1$, az algebrai alak:
$$u \cdot v = \mathbf{8i}.$$

2. Osztás:
$$\left|\frac{u}{v}\right| = \frac{4}{2} = 2,$$
$$\arg\left(\frac{u}{v}\right) = \frac{\pi}{3} - \frac{\pi}{6} = \frac{\pi}{6}.$$
Trigonometrikus alak:
$$\frac{u}{v} = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right).$$
Mivel $\cos\frac{\pi}{6} = \frac{\sqrt{3}}{2}$ és $\sin\frac{\pi}{6} = \frac{1}{2}$, az algebrai alak:
$$\frac{u}{v} = 2\left(\frac{\sqrt{3}}{2} + \frac{1}{2}i\right) = \mathbf{\sqrt{3} + i}.$$

::: elmelet
**Elméleti háttér — Műveletek trigonometrikus alakban és visszatérés algebrai alakba.**
Trigonometrikus alakban elvégzett szorzás és osztás után a nevezetes szögek ($\frac{\pi}{6}, \frac{\pi}{4}, \frac{\pi}{3}, \frac{\pi}{2}$ és ezek többszörösei) szinusz- és koszinuszértékeinek behelyettesítésével azonnal megkapjuk az eredmény algebrai alakját: $z = r\cos\varphi + i(r\sin\varphi)$. Ez a módszer gyakran lényegesen gyorsabb és kevésbé téveszthető, mint a közvetlen algebrai beszorzás vagy a konjugálttal való bővítés.
:::

## Gy5.13.2. feladat

Legyen $u = \sqrt{2}\left(\cos\frac{3\pi}{4} + i\sin\frac{3\pi}{4}\right)$ és $v = 2\sqrt{2}\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right)$. Számítsuk ki az $u \cdot v$ és $\frac{u}{v}$ értékét trigonometrikus alakban, a szögeket a $[0, 2\pi)$ intervallumban megadva!

**Megoldás.**
1. Szorzás:
$$|u \cdot v| = \sqrt{2} \cdot 2\sqrt{2} = 4,$$
$$\arg(u \cdot v) = \frac{3\pi}{4} + \frac{\pi}{2} = \frac{5\pi}{4}.$$
Trigonometrikus alak:
$$u \cdot v = 4\left(\cos\frac{5\pi}{4} + i\sin\frac{5\pi}{4}\right).$$
(Algebrai alakban: $4\left(-\frac{\sqrt{2}}{2} - i\frac{\sqrt{2}}{2}\right) = -2\sqrt{2} - 2\sqrt{2}i$.)

2. Osztás:
$$\left|\frac{u}{v}\right| = \frac{\sqrt{2}}{2\sqrt{2}} = \frac{1}{2},$$
$$\arg\left(\frac{u}{v}\right) = \frac{3\pi}{4} - \frac{\pi}{2} = \frac{\pi}{4}.$$
Trigonometrikus alak:
$$\frac{u}{v} = \frac{1}{2}\left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right).$$
(Algebrai alakban: $\frac{\sqrt{2}}{4} + \frac{\sqrt{2}}{4}i$.)

::: elmelet
**Elméleti háttér — Szögek normalizálása $[0, 2\pi)$ intervallumba.**
Komplex számok szorzásakor és osztásakor az argumentumok összege vagy különbsége kívül eshet a $[0, 2\pi)$ standard intervallumon. Mivel a $\cos$ és $\sin$ függvények $2\pi$ szerint periodikusak, az argumentumhoz tetszőleges $2k\pi$ ($k \in \mathbb{Z}$) hozzáadható vagy levonható anélkül, hogy a komplex szám értéke megváltozna. Általában a főértéket a $[0, 2\pi)$ vagy a $(-\pi, \pi]$ intervallumban adjuk meg.
:::

## Gy5.14.1. feladat

Mennyi $-\sin(40^\circ) + i\cos(40^\circ)$ szöge? Ha $z$ szöge $40^\circ$, határozzuk meg a $\frac{i z^3}{\overline{z}^2}$ komplex szám szögét!

**Megoldás.**
1. Írjuk át a kifejezést trigonometrikus alakra:
$$-\sin(40^\circ) + i\cos(40^\circ).$$
Tudjuk, hogy a pótszögekkel $\sin(40^\circ) = \cos(50^\circ)$ és $\cos(40^\circ) = \sin(50^\circ)$.
Így:
$$-\sin(40^\circ) + i\cos(40^\circ) = -\cos(50^\circ) + i\sin(50^\circ).$$
A második síknegyedben a koszinusz negatív, a szinusz pozitív: $-\cos(50^\circ) = \cos(180^\circ - 50^\circ) = \cos(130^\circ)$, és $\sin(50^\circ) = \sin(180^\circ - 50^\circ) = \sin(130^\circ)$.
Tehát $-\sin(40^\circ) + i\cos(40^\circ) = \cos(130^\circ) + i\sin(130^\circ)$, a szöge **$130^\circ$**.

2. Számítsuk ki $\frac{i z^3}{\overline{z}^2}$ szögét:
- $\arg i = 90^\circ$,
- $\arg(z^3) = 3 \arg z = 3 \cdot 40^\circ = 120^\circ$,
- $\arg(\overline{z}^2) = 2 \arg\overline{z} = 2 \cdot (-40^\circ) = -80^\circ$.
Az argumentumok összeadásával és kivonásával:
$$\arg\left(\frac{i z^3}{\overline{z}^2}\right) = \arg i + \arg(z^3) - \arg(\overline{z}^2) = 90^\circ + 120^\circ - (-80^\circ) = 290^\circ.$$
A keresett szög **$290^\circ$**.

::: elmelet
**Elméleti háttér — Pótszögek és az argumentum meghatározása.**
Gyakran előfordul, hogy egy kifejezésben a $\sin$ és $\cos$ felcserélve, vagy nem megfelelő előjelekkel szerepel. Ilyenkor a pótszög-összefüggések ($\cos(90^\circ - \alpha) = \sin\alpha$, $\sin(90^\circ - \alpha) = \cos\alpha$) vagy a koordinátatengelyekkel bezárt szögek segítik a helyes argumentum azonosítását. Egy másik elegáns módszer a kiemelés: $-\sin\alpha + i\cos\alpha = i(\cos\alpha + i\sin\alpha)$, és mivel $i = \cos 90^\circ + i\sin 90^\circ$, a szög azonnal $90^\circ + \alpha$.
:::

## Gy5.14.2. feladat

Tegyük fel, hogy $|u| = 1$ és $\arg u = 30^\circ$. Számítsuk ki a $\frac{u^5}{\overline{u}^3}$ komplex szám abszolút értékét és algebrai alakját!

**Megoldás.**
Mivel $|u| = 1$, ezért $\overline{u} = u^{-1}$.
Ebből a kifejezés:
$$\frac{u^5}{\overline{u}^3} = \frac{u^5}{(u^{-1})^3} = u^5 \cdot u^3 = u^8.$$
Az abszolút érték:
$$\left|\frac{u^5}{\overline{u}^3}\right| = |u|^8 = 1^8 = \mathbf{1}.$$
A szög:
$$\arg(u^8) = 8 \arg u = 8 \cdot 30^\circ = 240^\circ.$$
A szám trigonometrikus alakja:
$$u^8 = \cos(240^\circ) + i\sin(240^\circ).$$
Mivel $\cos(240^\circ) = -\frac{1}{2}$ és $\sin(240^\circ) = -\frac{\sqrt{3}}{2}$, az algebrai alak:
$$\frac{u^5}{\overline{u}^3} = \mathbf{-\frac{1}{2} - \frac{\sqrt{3}}{2}i}.$$

::: elmelet
**Elméleti háttér — Egységnyi abszolút értékű komplex számok hatványai.**
Az egységkörön lévő pontok halmaza, az $\mathbb{T} = \{z \in \mathbb{C} : |z| = 1\}$, multiplikatív részcsoportot alkot a komplex számok szorzáscsoportjában. Ezen a körön a konjugálás megegyezik az invertálással ($\overline{z} = z^{-1}$), így bármilyen racionális kifejezés $z$-ben egyetlen hatvánnyá egyszerűsíthető. Az ilyen számok hatványozása pusztán az argumentum skaláris szorzását jelenti.
:::

## Gy5.15.1. feladat

A Moivre-formula és a binomiális tétel segítségével fejezzük ki $\cos(4x)$-et és $\sin(4x)$-et $\cos x$ és $\sin x$ hatványaival, majd írjuk fel $\cos(4x)$-et kizárólag $\cos x$ polinomjaként!

**Megoldás.**
Jelölje $c = \cos x$ és $s = \sin x$. A Moivre-formula szerint:
$$\cos(4x) + i\sin(4x) = (c + is)^4.$$
A binomiális tétel alapján:
$$(c + is)^4 = c^4 + 4c^3(is) + 6c^2(is)^2 + 4c(is)^3 + (is)^4 = c^4 + 4ic^3s - 6c^2s^2 - 4ics^3 + s^4.$$
Szétválasztva a valós és képzetes részeket:
$$(c + is)^4 = (c^4 - 6c^2s^2 + s^4) + i(4c^3s - 4cs^3).$$
Összevetve a két oldalt:
$$\cos(4x) = \mathbf{\cos^4 x - 6\cos^2 x\sin^2 x + \sin^4 x},$$
$$\sin(4x) = \mathbf{4\cos^3 x\sin x - 4\cos x\sin^3 x}.$$

$\cos(4x)$ kifejezése kizárólag $\cos x$-szel: behelyettesítjük $s^2 = 1 - c^2$ és $s^4 = (1 - c^2)^2 = 1 - 2c^2 + c^4$:
$$\cos(4x) = c^4 - 6c^2(1 - c^2) + (1 - 2c^2 + c^4) = c^4 - 6c^2 + 6c^4 + 1 - 2c^2 + c^4 = \mathbf{8\cos^4 x - 8\cos^2 x + 1}.$$

::: elmelet
**Elméleti háttér — Többszörös szögfüggvények levezetése.**
Páros kitevő esetén a valós részben $\sin$ csak páros hatványokon szerepel, így az $s^2 = 1 - c^2$ helyettesítéssel $\cos(nx)$ mindig felírható $\cos x$ tiszta polinomjaként. A kapott együtthatók az elsőfajú Csebisev-polinom $T_4(t) = 8t^4 - 8t^2 + 1$ együtthatói.
:::

## Gy5.15.2. feladat

A Moivre-formula segítségével fejezzük ki $\cos(5x)$-et kizárólag $\cos x$ hatványaival!

**Megoldás.**
Legyen $c = \cos x$ és $s = \sin x$.
$$\cos(5x) = \operatorname{Re}\left((c + is)^5\right).$$
A binomiális tétel páros képzetes kitevőjű tagjai adják a valós részt:
$$\operatorname{Re}\left((c + is)^5\right) = \binom{5}{0}c^5 - \binom{5}{2}c^3 s^2 + \binom{5}{4}c s^4 = c^5 - 10c^3 s^2 + 5c s^4.$$
Behelyettesítjük $s^2 = 1 - c^2$ és $s^4 = (1 - c^2)^2 = 1 - 2c^2 + c^4$:
$$\cos(5x) = c^5 - 10c^3(1 - c^2) + 5c(1 - 2c^2 + c^4) = c^5 - 10c^3 + 10c^5 + 5c - 10c^3 + 5c^5.$$
Összevonva az azonos fokú tagokat:
$$\cos(5x) = \mathbf{16\cos^5 x - 20\cos^3 x + 5\cos x}.$$

::: elmelet
**Elméleti háttér — Páratlan többszörös szögek és $T_n(x)$.**
Páratlan kitevőre ($n = 5$) $\cos(5x)$ a $\cos x$ páratlan függvénye, így csak páratlan hatványok jelennek meg a kifejezésben. Az ötödfokú Csebisev-polinom: $T_5(t) = 16t^5 - 20t^3 + 5t$. A binomiális kifejtés és az $s^2 = 1 - c^2$ helyettesítés általános képletet ad minden $n$-re.
:::

## Gy5.16.1. feladat

Számítsuk ki a $\left(\sin\frac{\pi}{8} - i\cos\frac{\pi}{8}\right)^8$ és a $\left(1 + \cos\frac{\pi}{3} + i\sin\frac{\pi}{3}\right)^6$ kifejezések pontos értékét!

**Megoldás.**
1. Első kifejezés:
Kiemelünk $-i$-t:
$$\sin\frac{\pi}{8} - i\cos\frac{\pi}{8} = -i\left(\cos\frac{\pi}{8} + i\sin\frac{\pi}{8}\right).$$
Mivel $(-i)^8 = ((-i)^4)^2 = 1^2 = 1$, ezért a 8-adik hatvány:
$$\left(\sin\frac{\pi}{8} - i\cos\frac{\pi}{8}\right)^8 = (-i)^8 \cdot \left(\cos\frac{\pi}{8} + i\sin\frac{\pi}{8}\right)^8 = 1 \cdot (\cos\pi + i\sin\pi) = \mathbf{-1}.$$

2. Második kifejezés:
$1 + \cos\frac{\pi}{3} + i\sin\frac{\pi}{3} = 2\cos\frac{\pi}{6}\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right) = 2 \cdot \frac{\sqrt{3}}{2} \left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right) = \sqrt{3}\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$.
A 6-oduk hatvány:
$$\left(\sqrt{3}\right)^6 \cdot \left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)^6 = 27 \cdot (\cos\pi + i\sin\pi) = 27 \cdot (-1) = \mathbf{-27}.$$

::: elmelet
**Elméleti háttér — Kiemelés és félszögek alkalmazása.**
A $-i$ kiemelése $\sin\alpha - i\cos\alpha$-ból közvetlenül szolgáltatja az alakot: $\sin\alpha - i\cos\alpha = -i(\cos\alpha + i\sin\alpha)$. Mivel $-i = \cos(-\pi/2) + i\sin(-\pi/2)$, a hatványozásnál a kitevő szétbontható a két tényezőre, ami nagyban egyszerűsíti a számolást.
:::

## Gy5.16.2. feladat

Számítsuk ki a $\left(1 - \cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)^8$ kifejezés algebrai alakját!

**Megoldás.**
Használjuk az $1 - \cos\alpha = 2\sin^2\frac{\alpha}{2}$ és $\sin\alpha = 2\sin\frac{\alpha}{2}\cos\frac{\alpha}{2}$ azonosságokat $\alpha = \frac{\pi}{4}$-re ($\frac{\alpha}{2} = \frac{\pi}{8}$):
$$1 - \cos\frac{\pi}{4} + i\sin\frac{\pi}{4} = 2\sin^2\frac{\pi}{8} + 2i\sin\frac{\pi}{8}\cos\frac{\pi}{8} = 2\sin\frac{\pi}{8}\left(\sin\frac{\pi}{8} + i\cos\frac{\pi}{8}\right).$$
A zárójelből emeljünk ki $i$-t:
$$\sin\frac{\pi}{8} + i\cos\frac{\pi}{8} = i\left(\cos\frac{\pi}{8} - i\sin\frac{\pi}{8}\right) = i\left(\cos\left(-\frac{\pi}{8}\right) + i\sin\left(-\frac{\pi}{8}\right)\right).$$
Így a szám:
$$2\sin\frac{\pi}{8} \cdot i \cdot \left(\cos\left(-\frac{\pi}{8}\right) + i\sin\left(-\frac{\pi}{8}\right)\right).$$
Emeljük a 8-adik hatványra:
$$\left(2\sin\frac{\pi}{8}\right)^8 \cdot i^8 \cdot (\cos(-\pi) + i\sin(-\pi)).$$
Mivel $i^8 = 1$ és $\cos(-\pi) + i\sin(-\pi) = -1$:
$$= -256 \sin^8\frac{\pi}{8}.$$
Tudjuk, hogy $\sin^2\frac{\pi}{8} = \frac{1 - \cos(\pi/4)}{2} = \frac{2 - \sqrt{2}}{4}$.
Így $\sin^8\frac{\pi}{8} = \left(\frac{2 - \sqrt{2}}{4}\right)^4 = \frac{(6 - 4\sqrt{2})^2}{256} = \frac{68 - 48\sqrt{2}}{256}$.
Ebből a szorzat:
$$-256 \cdot \frac{68 - 48\sqrt{2}}{256} = \mathbf{-68 + 48\sqrt{2}}.$$

::: elmelet
**Elméleti háttér — $1 - \cos\alpha$ típusú kifejezések átírása.**
Hasonlóan az $1 + \cos\alpha$ esethez, az $1 - \cos\alpha$ kifejezés $2\sin^2\frac{\alpha}{2}$ alakra hozható. A kiemelés után keletkező $\sin\frac{\alpha}{2} + i\cos\frac{\alpha}{2}$ tényező $i$-t kiemelve vagy a pótszögekkel válik standard trigonometrikus alakká.
:::

## Gy5.17.1. feladat

A Moivre-képlet segítségével számítsuk ki az $(\sqrt{3} - i)^9$ komplex szám pontos algebrai alakját!

**Megoldás.**
Írjuk át a $\sqrt{3} - i$ számot trigonometrikus alakra:
$$r = \sqrt{(\sqrt{3})^2 + (-1)^2} = \sqrt{3 + 1} = 2.$$
A szög a negyedik negyedben van: $\cos\varphi = \frac{\sqrt{3}}{2}$, $\sin\varphi = -\frac{1}{2}$, tehát $\varphi = -\frac{\pi}{6}$.
$$\sqrt{3} - i = 2\left(\cos\left(-\frac{\pi}{6}\right) + i\sin\left(-\frac{\pi}{6}\right)\right).$$
A 9-edik hatvány:
$$(\sqrt{3} - i)^9 = 2^9 \left(\cos\left(9 \cdot \left(-\frac{\pi}{6}\right)\right) + i\sin\left(9 \cdot \left(-\frac{\pi}{6}\right)\right)\right) = 512 \left(\cos\left(-\frac{3\pi}{2}\right) + i\sin\left(-\frac{3\pi}{2}\right)\right).$$
Mivel $-\frac{3\pi}{2} \equiv \frac{\pi}{2} \pmod{2\pi}$:
$$\cos\left(-\frac{3\pi}{2}\right) = 0, \qquad \sin\left(-\frac{3\pi}{2}\right) = 1.$$
Így a végeredmény algebrai alakban:
$$(\sqrt{3} - i)^9 = 512 \cdot i = \mathbf{512i}.$$

::: elmelet
**Elméleti háttér — Nevezetes szögek és hatványozás.**
A $\pm 1, \pm \sqrt{3}$ koordináták az $r = 2$ abszolút érték mellett a $\frac{\pi}{6}$ és $\frac{\pi}{3}$ standard szögekhez tartoznak. A hatványozás után kapott szögek gyakran a tengelyekre esnek ($0, \frac{\pi}{2}, \pi, \frac{3\pi}{2}$), ekkor a hatvány tiszta valós vagy tiszta képzetes szám lesz.
:::

## Gy5.17.2. feladat

A Moivre-képlet segítségével számítsuk ki az $(-1 - i\sqrt{3})^{10}$ komplex szám pontos algebrai alakját!

**Megoldás.**
Írjuk fel $-1 - i\sqrt{3}$-at trigonometrikus alakban:
$$r = \sqrt{(-1)^2 + (-\sqrt{3})^2} = \sqrt{1 + 3} = 2.$$
A pont a harmadik síknegyedben van: $\cos\varphi = -\frac{1}{2}$, $\sin\varphi = -\frac{\sqrt{3}}{2}$, tehát $\varphi = -\frac{2\pi}{3}$ (vagy $\frac{4\pi}{3}$).
$$-1 - i\sqrt{3} = 2\left(\cos\left(-\frac{2\pi}{3}\right) + i\sin\left(-\frac{2\pi}{3}\right)\right).$$
A 10-edik hatvány:
$$(-1 - i\sqrt{3})^{10} = 2^{10} \left(\cos\left(-\frac{20\pi}{3}\right) + i\sin\left(-\frac{20\pi}{3}\right)\right).$$
Egyszerűsítsük a szöget $2\pi$ többszöröseivel:
$$-\frac{20\pi}{3} = -6\pi - \frac{2\pi}{3} \equiv -\frac{2\pi}{3} \equiv \frac{4\pi}{3} \pmod{2\pi}.$$
Így:
$$\cos\left(-\frac{20\pi}{3}\right) = -\frac{1}{2}, \qquad \sin\left(-\frac{20\pi}{3}\right) = -\frac{\sqrt{3}}{2}.$$
A szorzat:
$$(-1 - i\sqrt{3})^{10} = 1024 \left(-\frac{1}{2} - i\frac{\sqrt{3}}{2}\right) = \mathbf{-512 - 512\sqrt{3}i}.$$

::: elmelet
**Elméleti háttér — Szögek redukciója nagy kitevőjű hatványozásnál.**
Ha a kitevő nagy, az argumentum $n\varphi$ értéke többször körülfordulhat az origó körül. A pontos szögfüggvényértékek leolvasásához elengedhetetlen a szög modulo $2\pi$ ($360^\circ$) redukálása: $n\varphi = 2k\pi + \theta$, ahol $\theta \in [0, 2\pi)$.
:::

## Gy5.18.1. feladat

Oldjuk meg a komplex számok halmazán az $x^4 = 16$ és az $x^3 = -8i$ egyenleteket!

**Megoldás.**
1. $x^4 = 16$:
$16 = 16(\cos 0 + i\sin 0)$.
Az abszolút érték $\sqrt[4]{16} = 2$.
A szögek: $\frac{0 + 2k\pi}{4} = k \frac{\pi}{2}$, $k = 0, 1, 2, 3$.
- $k = 0$: $x_0 = 2$,
- $k = 1$: $x_1 = 2i$,
- $k = 2$: $x_2 = -2$,
- $k = 3$: $x_3 = -2i$.
A megoldások halmaza:
$$x \in \mathbf{\{2,\, 2i,\, -2,\, -2i\}}.$$

2. $x^3 = -8i$:
$-8i = 8\left(\cos\frac{3\pi}{2} + i\sin\frac{3\pi}{2}\right) = 8(\cos 270^\circ + i\sin 270^\circ)$.
Az abszolút érték $\sqrt[3]{8} = 2$.
A szögek:
$$\theta_k = \frac{270^\circ + k \cdot 360^\circ}{3} = 90^\circ + k \cdot 120^\circ, \qquad k = 0, 1, 2.$$
- $k = 0$: $\theta_0 = 90^\circ \implies x_0 = 2(\cos 90^\circ + i\sin 90^\circ) = 2i$,
- $k = 1$: $\theta_1 = 210^\circ \implies x_1 = 2(\cos 210^\circ + i\sin 210^\circ) = 2\left(-\frac{\sqrt{3}}{2} - \frac{1}{2}i\right) = -\sqrt{3} - i$,
- $k = 2$: $\theta_2 = 330^\circ \implies x_2 = 2(\cos 330^\circ + i\sin 330^\circ) = 2\left(\frac{\sqrt{3}}{2} - \frac{1}{2}i\right) = \sqrt{3} - i$.
A megoldáshalmaz:
$$x \in \mathbf{\{2i,\, -\sqrt{3} - i,\, \sqrt{3} - i\}}.$$

::: elmelet
**Elméleti háttér — Tiszta valós és tiszta képzetes számok gyökei.**
Tiszta képzetes számok esetén az argumentum $\frac{\pi}{2}$ vagy $\frac{3\pi}{2}$. A gyökvonás során a kapott szögek szabályos háromszöget (harmadik gyök esetén) vagy szabályos négyszöget (negyedik gyök esetén) feszítenek ki. Az algebrai alakra való áttérésnél a nevezetes szögek értékei pontos zárt alakot adnak.
:::

## Gy5.18.2. feladat

Oldjuk meg az $x^6 = 1 - i\sqrt{3}$ egyenletet, és adjuk meg a gyököket trigonometrikus alakban!

**Megoldás.**
Írjuk fel a jobb oldalt trigonometrikus alakban:
$$r = |1 - i\sqrt{3}| = \sqrt{1 + 3} = 2.$$
A negyedik síknegyedben vagyunk: $\cos\varphi = \frac{1}{2}$, $\sin\varphi = -\frac{\sqrt{3}}{2}$, így $\varphi = 300^\circ$ (vagy $-60^\circ$).
Tehát $1 - i\sqrt{3} = 2(\cos 300^\circ + i\sin 300^\circ)$.
A hatodik gyökök abszolút értéke $\sqrt[6]{2}$.
A szögek:
$$\theta_k = \frac{300^\circ + k \cdot 360^\circ}{6} = 50^\circ + k \cdot 60^\circ, \qquad k = 0, 1, 2, 3, 4, 5.$$
A szögek tehát: $50^\circ, 110^\circ, 170^\circ, 230^\circ, 290^\circ, 350^\circ$.
A megoldások halmaza:
$$\mathbf{x_k = \sqrt[6]{2}\left(\cos(50^\circ + k \cdot 60^\circ) + i\sin(50^\circ + k \cdot 60^\circ)\right), \quad k \in \{0, 1, 2, 3, 4, 5\}}.$$

::: elmelet
**Elméleti háttér — Szabályos hatszög csúcsai a komplex síkon.**
A hatodik gyökök a komplex síkon egy origó középpontú szabályos hatszöget alkotnak. Ha az egyik gyök argumentuma $\theta_0$, akkor az összes többi gyök $\theta_0 + k \cdot 60^\circ$ ($k = 1, \dots, 5$) alakban kapható meg, vagy úgy, hogy az első gyököt megszorozzuk a hatodik egységgyökökkel ($\varepsilon_6^k$).
:::

## Gy5.19.1. feladat

Határozzuk meg a $z = -8 - 8\sqrt{3}i$ komplex szám összes harmadik gyökét trigonometrikus alakban!

**Megoldás.**
1. Trigonometrikus alak:
$$|z| = \sqrt{(-8)^2 + (-8\sqrt{3})^2} = 16.$$
A harmadik síknegyedben van: $\cos\varphi = -\frac{8}{16} = -\frac{1}{2}$, $\sin\varphi = -\frac{8\sqrt{3}}{16} = -\frac{\sqrt{3}}{2}$, így $\varphi = 240^\circ$.
$$z = 16(\cos 240^\circ + i\sin 240^\circ).$$
2. A harmadik gyökök abszolút értéke $\sqrt[3]{16} = 2\sqrt[3]{2}$.
A szögek:
$$\theta_k = \frac{240^\circ + k \cdot 360^\circ}{3} = 80^\circ + k \cdot 120^\circ, \qquad k \in \{0, 1, 2\}.$$
- $k = 0$: $\theta_0 = 80^\circ$,
- $k = 1$: $\theta_1 = 200^\circ$,
- $k = 2$: $\theta_2 = 320^\circ$.
A gyökök trigonometrikus alakban:
$$\mathbf{w_0 = 2\sqrt[3]{2}(\cos 80^\circ + i\sin 80^\circ)},$$
$$\mathbf{w_1 = 2\sqrt[3]{2}(\cos 200^\circ + i\sin 200^\circ)},$$
$$\mathbf{w_2 = 2\sqrt[3]{2}(\cos 320^\circ + i\sin 320^\circ)}.$$

::: elmelet
**Elméleti háttér — Harmadik síknegyedbeli komplex számok gyökei.**
Ha a valós és képzetes rész is negatív, az argumentum a $(\pi, 3\pi/2)$, azaz $(180^\circ, 270^\circ)$ intervallumba esik. A három harmadik gyök argumentumai $120^\circ$-os különbséggel egyenlő távolságra helyezkednek el a kör kerületén.
:::

## Gy5.19.2. feladat

Határozzuk meg a $z = -16$ komplex szám összes negyedik gyökét algebrai alakban!

**Megoldás.**
Írjuk fel a $-16$-ot trigonometrikus alakban:
$$-16 = 16(\cos 180^\circ + i\sin 180^\circ).$$
A negyedik gyökök abszolút értéke $\sqrt[4]{16} = 2$.
A szögek:
$$\theta_k = \frac{180^\circ + k \cdot 360^\circ}{4} = 45^\circ + k \cdot 90^\circ, \qquad k = 0, 1, 2, 3.$$
A szögek: $45^\circ, 135^\circ, 225^\circ, 315^\circ$.
Átírás algebrai alakra:
- $k = 0$: $w_0 = 2\left(\frac{\sqrt{2}}{2} + i\frac{\sqrt{2}}{2}\right) = \sqrt{2} + i\sqrt{2}$,
- $k = 1$: $w_1 = 2\left(-\frac{\sqrt{2}}{2} + i\frac{\sqrt{2}}{2}\right) = -\sqrt{2} + i\sqrt{2}$,
- $k = 2$: $w_2 = 2\left(-\frac{\sqrt{2}}{2} - i\frac{\sqrt{2}}{2}\right) = -\sqrt{2} - i\sqrt{2}$,
- $k = 3$: $w_3 = 2\left(\frac{\sqrt{2}}{2} - i\frac{\sqrt{2}}{2}\right) = \sqrt{2} - i\sqrt{2}$.
A gyökök halmaza:
$$w \in \mathbf{\{\pm\sqrt{2} \pm i\sqrt{2}\}}.$$

::: elmelet
**Elméleti háttér — Negatív valós szám negyedik gyökei.**
A $-a^4$ alakú számok negyedik gyökei a tengelyek szögfelezőin fekszenek ($\pm 45^\circ, \pm 135^\circ$). Mivel $\cos 45^\circ = \sin 45^\circ = \frac{\sqrt{2}}{2}$, valós és képzetes részeik azonos abszolút értékűek, ami egy négyzetet alkot a síkon.
:::

## Gy5.20.1. feladat

Legyen $\varepsilon = \cos\frac{2\pi}{5} + i\sin\frac{2\pi}{5}$ primitív 5-ödik egységgyök. Számítsuk ki az $1 + \varepsilon^2 + \varepsilon^4 + \varepsilon^6 + \varepsilon^8$ összeg pontos értékét!

**Megoldás.**
Vegyük észre, hogy ez az összeg pontosan az $S = \sum_{j=0}^{4} \varepsilon^{jn}$ formula $k = 5$ és $n = 2$ választásával.
Mivel $k = 5$ és $n = 2$, nyilvánvalóan $5 \nmid 2$.
A mértani sorozat összegképletével, ahol $q = \varepsilon^2 \neq 1$:
$$S = \sum_{j=0}^{4} (\varepsilon^2)^j = \frac{(\varepsilon^2)^5 - 1}{\varepsilon^2 - 1} = \frac{(\varepsilon^5)^2 - 1}{\varepsilon^2 - 1}.$$
Mivel $\varepsilon^5 = 1$, a számláló $1^2 - 1 = 0$, míg a nevező $\varepsilon^2 - 1 \neq 0$.
Tehát az összeg értéke:
$$S = \mathbf{0}.$$

::: elmelet
**Elméleti háttér — Mértani sor egységgyökökkel.**
Ha egy mértani sorozat hányadosa egy $k$-adik egységgyök (amely nem $1$), akkor a sorozat első $k$ tagjának összege mindig $0$. Ez geometriailag azt fejezi ki, hogy a szabályos $k$-szög csúcsainak súlypontja az origóban van.
:::

## Gy5.20.2. feladat

Bizonyítsuk be, hogy ha $\varepsilon$ primitív 6-odik egységgyök, akkor $\sum_{j=0}^{5} (-1)^j \varepsilon^j = 0$!

**Megoldás.**
Mivel $\varepsilon$ primitív 6-odik egységgyök, szöge $\frac{2\pi}{6} = \frac{\pi}{3}$.
Tudjuk, hogy $-1 = \cos\pi + i\sin\pi = \varepsilon^3$, hiszen a szöge $\pi = 3 \cdot \frac{\pi}{3}$.
Így $(-1)^j \varepsilon^j = (\varepsilon^3)^j \varepsilon^j = \varepsilon^{4j}$.
Az összeg tehát:
$$S = \sum_{j=0}^{5} (\varepsilon^4)^j.$$
Ez a gyökszűrő formulának felel meg $k = 6$ és $n = 4$ értékekkel.
Mivel $6 \nmid 4$, a hányados $q = \varepsilon^4 \neq 1$, de $q^6 = (\varepsilon^6)^4 = 1^4 = 1$.
A mértani összegképlettel:
$$S = \frac{q^6 - 1}{q - 1} = \frac{1 - 1}{q - 1} = \mathbf{0}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Váltakozó előjelű egységgyök-összegek.**
A váltakozó előjelű összeg $(-1)^j$ tényezője átírható egy alkalmas egységgyök hatványaként (páros rend esetén $\varepsilon^{k/2} = -1$). Ezzel a váltakozó előjelű összeg visszavezethető egy közönséges mértani összegre egy módosított hányadossal.
:::

## Gy5.21.1. feladat

A komplex számok és a binomiális tétel segítségével határozzuk meg az $U_n = \sum_{k=0}^{n} (-1)^k \binom{n}{k} \cos(kx)$ összeg zárt alakját!

**Megoldás.**
Tekintsük a megfelelő komplex összeget:
$$U_n + i V_n = \sum_{k=0}^n \binom{n}{k} (-1)^k (\cos(kx) + i\sin(kx)) = \sum_{k=0}^n \binom{n}{k} (-w)^k = (1 - w)^n,$$
ahol $w = \cos x + i\sin x$.
Alakítsuk át az $1 - w$ kifejezést:
$$1 - w = 1 - \cos x - i\sin x = 2\sin^2\frac{x}{2} - 2i\sin\frac{x}{2}\cos\frac{x}{2} = -2i\sin\frac{x}{2}\left(\cos\frac{x}{2} + i\sin\frac{x}{2}\right).$$
Mivel $-i = \cos(-\pi/2) + i\sin(-\pi/2)$:
$$1 - w = 2\sin\frac{x}{2}\left(\cos\left(\frac{x - \pi}{2}\right) + i\sin\left(\frac{x - \pi}{2}\right)\right).$$
Emeljük $n$-edik hatványra:
$$(1 - w)^n = 2^n \sin^n\frac{x}{2}\left(\cos\frac{n(x - \pi)}{2} + i\sin\frac{n(x - \pi)}{2}\right).$$
Ennek valós része adja $U_n$-et:
$$U_n = 2^n \sin^n\frac{x}{2} \cos\left(\frac{n(x - \pi)}{2}\right).$$

::: elmelet
**Elméleti háttér — Váltakozó előjelű binomiális trigonometrikus összegek.**
A váltakozó előjelű binomiális összeg az $(1 - w)^n$ hatványnak felel meg. Az $1 - \cos x = 2\sin^2(x/2)$ azonosság segítségével a kifejezés hasonlóan szorzattá alakítható, mint az $1 + w$ esetben, csak itt a szinusz függvény jelenik meg modulusaiként.
:::

## Gy5.21.2. feladat

Határozzuk meg az $S = \sum_{k=0}^n \binom{n}{k} \cos^2(kx)$ összeg zárt alakját az $S_{2n} = \sum_{k=0}^n \binom{n}{k} \cos(2kx)$ összegre visszavezetve!

**Megoldás.**
Használjuk a linearizáló formulát: $\cos^2(kx) = \frac{1 + \cos(2kx)}{2}$.
Behelyettesítve a szummába:
$$S = \sum_{k=0}^n \binom{n}{k} \frac{1 + \cos(2kx)}{2} = \frac{1}{2}\sum_{k=0}^n \binom{n}{k} + \frac{1}{2}\sum_{k=0}^n \binom{n}{k}\cos(2kx).$$
Az első összeg a binomiális együtthatók összege: $\sum_{k=0}^n \binom{n}{k} = 2^n$.
A második összeg az eredeti $S_n$ formula $2x$-szel:
$$\sum_{k=0}^n \binom{n}{k} \cos(k \cdot 2x) = 2^n \cos^n x \cos(nx).$$
Összeadva a két részt:
$$S = \frac{1}{2} \cdot 2^n + \frac{1}{2} \cdot 2^n \cos^n x \cos(nx) = \mathbf{2^{n-1}(1 + \cos^n x \cos(nx))}.$$

::: elmelet
**Elméleti háttér — Négyzetes trigonometrikus összegek linearizálása.**
Nemlineáris trigonometrikus kifejezések összegzésekor az első lépés a linearizálás a fél- vagy duplaszög azonosságokkal ($\cos^2\theta = \frac{1+\cos 2\theta}{2}$, $\sin^2\theta = \frac{1-\cos 2\theta}{2}$). Ezzel a feladat visszavezethető az ismert lineáris Moivre-típusú összegekre.
:::

## Gy5.22.1. feladat

Határozzuk meg és jellemezzük geometriailag a következő halmazokat: $\{z : |z - 3i| \ge 2\}$, $\{z : |z - 2| = |z + 4i|\}$ és $\{z : z + \overline{z} = 6\}$!

**Megoldás.**
1. $\{z : |z - 3i| \ge 2\}$:
$|z - 3i|$ a $z$ távolsága a $(0, 3)$ ponttól. A feltétel szerint ez legalább $2$.
Geometriai jelentés: **a $3i$ középpontú, $2$ sugarú zárt körlap külseje (a határoló körvonalat is beleértve).**

2. $\{z : |z - 2| = |z - (-4i)|\}$:
A $z = 2$ pont és a $z = -4i$ pont távolsága egyenlő.
Ez a két pontot összekötő szakasz felezőmerőlegese.
Algebrai levezetés: $(x-2)^2 + y^2 = x^2 + (y+4)^2 \iff -4x + 4 = 8y + 16 \iff 8y = -4x - 12 \iff \mathbf{y = -\frac{1}{2}x - \frac{3}{2}}$.

3. $\{z : z + \overline{z} = 6\}$:
Mivel $z + \overline{z} = 2\operatorname{Re}(z) = 2x$, a feltétel $2x = 6 \iff x = 3$.
Geometriai jelentés: **az $x = 3$ függőleges egyenes.**

::: elmelet
**Elméleti háttér — Távolságok és egyenesek a komplex síkon.**
A valós rész $z + \overline{z} = 2\operatorname{Re}(z)$, a képzetes rész $z - \overline{z} = 2i\operatorname{Im}(z)$ formulával kapható meg közvetlenül. Két pont felezőmerőlegese mindig felírható mind geometriai definícióként, mind pedig az euklideszi távolságok négyzetének egyeztetésével.
:::

## Gy5.22.2. feladat

Határozzuk meg azon $z \in \mathbb{C}$ pontok halmazát, amelyekre $\operatorname{Re}\left(\frac{z - 1}{z + 1}\right) = 0$ ($z \neq -1$)!

**Megoldás.**
Legyen $z = x + iy$.
Bővítsük a törtet a nevező konjugáltjával:
$$\frac{z - 1}{z + 1} = \frac{(x - 1) + iy}{(x + 1) + iy} = \frac{((x - 1) + iy)((x + 1) - iy)}{(x + 1)^2 + y^2}.$$
A számláló valós része:
$$\operatorname{Re}\big(((x - 1) + iy)((x + 1) - iy)\big) = (x - 1)(x + 1) + y^2 = x^2 - 1 + y^2 = x^2 + y^2 - 1.$$
A valós rész akkor és csak akkor nulla, ha a számláló valós része nulla:
$$x^2 + y^2 - 1 = 0 \iff x^2 + y^2 = 1 \iff |z| = 1.$$
Mivel $z \neq -1$, a keresett halmaz:
**az origó középpontú egységkörvonal, a $z = -1$ pont kivételével.**

::: elmelet
**Elméleti háttér — Merőlegesség és a Thálész-tétel komplex alakja.**
Ha egy tört valós része nulla, akkor a számláló és a nevező által reprezentált vektorok merőlegesek egymásra: $(z - 1) \perp (z - (-1))$. Azon pontok mértani helye, amelyekből a $[-1, 1]$ szakasz derékszögben látszik, a Thálész-tétel értelmében éppen a szakasz mint átmérő fölé rajzolt körvonal (a végpontok kivételével).
:::

## Gy5.23.1. feladat

Milyen geometriai transzformációnak felel meg a $z \mapsto (\sqrt{3} + i)z$ leképezés a komplex síkon?

**Megoldás.**
Írjuk fel a szorzótényezőt trigonometrikus alakban:
$$|\sqrt{3} + i| = \sqrt{3 + 1} = 2.$$
A szög $\cos\varphi = \frac{\sqrt{3}}{2}$, $\sin\varphi = \frac{1}{2} \implies \varphi = 30^\circ = \frac{\pi}{6}$.
Tehát:
$$\sqrt{3} + i = 2(\cos 30^\circ + i\sin 30^\circ).$$
A leképezés hatására minden pont távolsága az origótól a 2-szeresére nő, és elfordul az origó körül pozitív (óramutató járásával ellentétes) irányban $30^\circ$-kal.
A geometriai transzformáció: **az origó körüli $+30^\circ$-os forgatás és 2-szeres nyújtás (forgatva nyújtás).**

::: elmelet
**Elméleti háttér — Forgatva nyújtás és szorzás komplex számmal.**
Egy rögzített $w = R(\cos\theta + i\sin\theta)$ komplex számmal való szorzás az origót fixen hagyó közvetlen hasonlóság, amely egy $\theta$ szögű elforgatás és egy $R$ tényezőjű skálázás egymásutánja.
:::

## Gy5.23.2. feladat

Határozzuk meg a $z \mapsto -i z + 2$ leképezés fixpontját és geometriai jellegét!

**Megoldás.**
A fixpont meghatározása:
$$z_0 = -i z_0 + 2 \iff (1 + i)z_0 = 2 \iff z_0 = \frac{2}{1 + i} = \frac{2(1 - i)}{2} = 1 - i.$$
A transzformáció felírható a fixpont segítségével:
$$f(z) - z_0 = -i(z - z_0).$$
Mivel $-i = \cos(-90^\circ) + i\sin(-90^\circ)$, a szorzó abszolút értéke $|-i| = 1$, szöge pedig $-90^\circ$.
A leképezés tehát: **a $z_0 = 1 - i$ pont körüli $-90^\circ$-os (óramutató járásával megegyező) forgatás.**

::: elmelet
**Elméleti háttér — Tetszőleges középpontú forgatás.**
Ha $a = e^{i\theta}$ egységnyi abszolút értékű és $a \neq 1$, akkor a $z \mapsto az + b$ leképezés egy tiszta elforgatás a $z_0 = \frac{b}{1-a}$ fixpont körül $\theta$ szöggel. Nem történik skálázás, mivel $|a| = 1$.
:::

## Gy5.24.1. feladat

A paralelogramma-azonosság felhasználásával vezessük le az $a, b, c$ oldalú háromszög $c$ oldalhoz tartozó $s_c$ súlyvonalának hosszára vonatkozó formulát: $s_c^2 = \frac{2a^2 + 2b^2 - c^2}{4}$!

**Megoldás.**
Egészítsük ki a háromszöget paralelogrammává úgy, hogy a $c$ oldal felezőpontjára tükrözzük a szemközti csúcsot.
A keletkező paralelogramma oldalai az eredeti háromszög $a$ és $b$ oldalai (mindkettőből 2 darab).
A paralelogramma egyik átlója éppen az eredeti háromszög $c$ oldala.
A másik átlója a $c$ oldalhoz tartozó súlyvonal kétszerese: $2s_c$.
Alkalmazzuk a paralelogramma-azonosságot a kapott paralelogrammára:
$$e^2 + f^2 = 2a^2 + 2b^2,$$
ahol $e = c$ és $f = 2s_c$.
Behelyettesítve:
$$c^2 + (2s_c)^2 = 2a^2 + 2b^2.$$
$$c^2 + 4s_c^2 = 2a^2 + 2b^2.$$
Kifejezve $s_c^2$-et:
$$4s_c^2 = 2a^2 + 2b^2 - c^2 \iff \mathbf{s_c^2 = \frac{2a^2 + 2b^2 - c^2}{4}}.$$
Ezzel a képletet levezettük. $\blacksquare$

::: elmelet
**Elméleti háttér — Apollóniosz tétele a súlyvonalról.**
Apollóniosz tétele a háromszög súlyvonalának hosszát fejezi ki az oldalak hosszával: $b^2 + c^2 = 2s_a^2 + \frac{a^2}{2}$. Ez közvetlen következménye a paralelogramma-szabálynak, és kiválóan mutatja, hogy a komplex algebrai azonosságok milyen elegáns geometriai eszközöket szolgáltatnak.
:::

## Gy5.24.2. feladat

Bizonyítsuk be komplex számok segítségével, hogy egy paralelogramma akkor és csak akkor rombusz, ha átlói merőlegesek egymásra!

**Megoldás.**
Legyenek az oldalak vektorai $u$ és $v$. A paralelogramma akkor és csak akkor rombusz, ha minden oldala egyenlő hosszú, azaz $|u| = |v| \iff |u|^2 = |v|^2$.
Az átlók vektorai: $e = u + v$ és $f = u - v$.
Két vektor akkor és csak akkor merőleges egymásra, ha komplex belső szorzatuk valós része $0$:
$$\operatorname{Re}(e \overline{f}) = 0.$$
Számítsuk ki $e \overline{f}$-et:
$$e \overline{f} = (u + v)\overline{(u - v)} = (u + v)(\overline{u} - \overline{v}) = u\overline{u} - u\overline{v} + v\overline{u} - v\overline{v} = |u|^2 - |v|^2 + (v\overline{u} - u\overline{v}).$$
Vegyük észre, hogy $v\overline{u} - u\overline{v} = v\overline{u} - \overline{v\overline{u}} = 2i \operatorname{Im}(v\overline{u})$, amely tiszta képzetes szám!
Ezért a szorzat valós része:
$$\operatorname{Re}(e \overline{f}) = |u|^2 - |v|^2.$$
Következésképpen:
$$\operatorname{Re}(e \overline{f}) = 0 \iff |u|^2 - |v|^2 = 0 \iff |u| = |v|.$$
Ez pontosan azt jelenti, hogy az átlók akkor és csak akkor merőlegesek, ha a szomszédos oldalak egyenlő hosszúak, vagyis ha a paralelogramma rombusz. $\blacksquare$

::: elmelet
**Elméleti háttér — Merőlegesség kifejezése komplex belső szorzattal.**
Két komplex szám, $w_1$ és $w_2$ által reprezentált vektor merőlegességének feltétele: $\operatorname{Re}(w_1 \overline{w_2}) = 0$, míg párhuzamosságuké $\operatorname{Im}(w_1 \overline{w_2}) = 0$. Mivel $u\overline{v} - \overline{u}v$ mindig tiszta képzetes, a valós rész közvetlenül a hosszak négyzetének különbségét adja.
:::

---

# Az 6. feladatsorhoz – Megoldások — Kongruenciák, Diofantoszi egyenletek, Kínai maradéktétel, Euler–Fermat és Hensel-lemma

## Gy6.1.1. feladat

Bizonyítsuk be, hogy ha $a \equiv b \pmod m$, akkor tetszőleges $k \in \mathbb{N}$ esetén $a^k \equiv b^k \pmod m$, és tetszőleges egész együtthatós polinomra $P(a) \equiv P(b) \pmod m$!

**Megoldás.**
1. **Hatványozás ($a^k \equiv b^k \pmod m$):**
Bizonyítsuk teljes indukcióval $k$ szerint.
- $k = 1$-re a feltevés miatt $a^1 \equiv b^1 \pmod m$ igaz.
- Tegyük fel, hogy $a^k \equiv b^k \pmod m$.
- Mivel $a \equiv b \pmod m$, a szorzási kompatibilitási szabály szerint az egyoldali kongruenciák összeszorozhatók:
$$a^k \cdot a \equiv b^k \cdot b \pmod m \implies a^{k+1} \equiv b^{k+1} \pmod m.$$
Az indukció elve alapján az állítás minden $k \in \mathbb{N}$-re teljesül.
(Közvetlenül az $a^k - b^k = (a - b)(a^{k-1} + a^{k-2}b + \dots + b^{k-1})$ azonosságból is következik, hiszen $m \mid (a - b)$ miatt a szorzat is osztható $m$-mel.)

2. **Polinomok ($P(a) \equiv P(b) \pmod m$):**
Legyen $P(x) = c_n x^n + c_{n-1} x^{n-1} + \dots + c_1 x + c_0$, ahol $c_i \in \mathbb{Z}$.
Mivel minden $j \in \{0, \dots, n\}$ esetén $a^j \equiv b^j \pmod m$, a skalárral való szorzás miatt:
$$c_j a^j \equiv c_j b^j \pmod m.$$
A kongruenciák tagonkénti összeadásával:
$$\sum_{j=0}^n c_j a^j \equiv \sum_{j=0}^n c_j b^j \pmod m \implies P(a) \equiv P(b) \pmod m. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Polinomok és hatványok helyettesítési elve modulo $m$.**
Ha $a \equiv b \pmod m$, akkor bármely egész együtthatós polinom behelyettesítési értékei is kongruensek maradnak: $P(a) \equiv P(b) \pmod m$. Ez a moduláris aritmetika legalapvetőbb eszköze: bonyolult algebrai kifejezések kiszámításakor az alapok tetszőlegesen helyettesíthetők kényelmesebb (kisebb abszolút értékű) maradékokkal a számítás bármely köztes lépésében.
:::

## Gy6.1.2. feladat

Bizonyítsuk be, hogy ha $ca \equiv cb \pmod m$ és $d = \operatorname{lnko}(c, m)$, akkor $a \equiv b \pmod{m/d}$. Igaz-e, hogy $(c, m) = 1$ esetén egyszerűsíthetünk $c$-vel?

**Megoldás.**
A feltétel szerint $ca \equiv cb \pmod m$, ami azt jelenti, hogy:
$$m \mid (ca - cb) \iff m \mid c(a - b).$$
Ez azt jelenti, hogy létezik olyan $k \in \mathbb{Z}$, amelyre:
$$c(a - b) = km.$$
Osszuk el az egyenlet mindkét oldalát a $d = \operatorname{lnko}(c, m)$ legnagyobb közös osztóval:
$$\frac{c}{d}(a - b) = k \frac{m}{d}.$$
Mivel $d \mid c$ és $d \mid m$, a $\frac{c}{d}$ és $\frac{m}{d}$ hányadosok egész számok, és a legnagyobb közös osztó alaptulajdonsága miatt relatív prímek:
$$\operatorname{lnko}\left(\frac{c}{d}, \frac{m}{d}\right) = 1.$$
Az egyenletből következik, hogy $\frac{m}{d}$ osztja a $\frac{c}{d}(a - b)$ szorzatot.
Mivel $\frac{m}{d}$ relatív prím $\frac{c}{d}$-hez, az Euklideszi lemma szerint osztania kell a másik tényezőt:
$$\frac{m}{d} \;\Bigg|\; (a - b) \implies a \equiv b \pmod{\frac{m}{d}}.$$
Ez igazolja az általános állítást.

Különösen, ha $\operatorname{lnko}(c, m) = 1$, akkor $d = 1$, így $\frac{m}{d} = m$.
Ebben az esetben tehát:
$$ca \equiv cb \pmod m \implies a \equiv b \pmod m.$$
Vagyis relatív prím tényezővel szabad egyszerűsíteni mindkét oldalon. $\blacksquare$

::: elmelet
**Elméleti háttér — Egyszerűsítés kongruenciákban.**
Kongruenciákban nem lehet tetszőleges nemnulla számmal egyszerűsíteni! Ha $ca \equiv cb \pmod m$, akkor csak akkor következik $a \equiv b \pmod m$, ha $\operatorname{lnko}(c, m) = 1$. Általános esetben a modulus is osztódik $d = \operatorname{lnko}(c, m)$-mel: az új modulus $m/d$. Ellenpélda: $2 \cdot 1 \equiv 2 \cdot 4 \pmod 6$, de $1 \not\equiv 4 \pmod 6$, viszont $1 \equiv 4 \pmod{6/2}$, azaz mod 3 már igaz.
:::

## Gy6.2.1. feladat

Adjunk meg egy-egy teljes maradékrendszert modulo 5, amely (1) csupa 3-mal osztható számból áll, (2) csupa páros pozitív számból áll, illetve (3) csupa prímszámból áll!

**Megoldás.**
Modulo 5 a szükséges elemszám 5.

1. **Csupa 3-mal osztható:**
Mivel $\operatorname{lnko}(3, 5) = 1$, a $3 \cdot 0, 3 \cdot 1, 3 \cdot 2, 3 \cdot 3, 3 \cdot 4$ sorozat teljes maradékrendszert alkot:
$$\mathbf{\{0, 3, 6, 9, 12\}}.$$
Maradékaik mod 5: $0, 3, 1, 4, 2$ — mind az 5 maradékosztály pontosan egyszer szerepel.

2. **Csupa páros pozitív szám:**
Mivel $\operatorname{lnko}(2, 5) = 1$, vehetjük a $2, 4, 6, 8, 10$ számokat:
$$\mathbf{\{2, 4, 6, 8, 10\}}.$$
Maradékaik mod 5: $2, 4, 1, 3, 0$, mind pozitív páros egészek.

3. **Csupa prímszám:**
Keresünk 5 prímszámot, amelyek a modulo 5 maradékokat adják:
- Maradék 0: $5$ (prím),
- Maradék 1: $11$ (prím),
- Maradék 2: $7$ (prím),
- Maradék 3: $3$ (prím),
- Maradék 4: $19$ (prím).
A halmaz:
$$\mathbf{\{3, 5, 7, 11, 19\}}.$$

::: elmelet
**Elméleti háttér — Számtani sorozatok mint maradékrendszerek.**
Ha $\operatorname{lnko}(d, m) = 1$, akkor az $\{a + kd : k = 0, 1, \dots, m-1\}$ halmaz mindig teljes maradékrendszer. Ez biztosítja, hogy tetszőleges oszthatósági feltételnek eleget tevő reprezentánsrendszert egyszerűen fel tudunk írni a különbség alkalmas megválasztásával.
:::

## Gy6.2.2. feladat

Döntsük el, hogy a $\{14, 20, 26, 32, 38, 44\}$ halmaz teljes maradékrendszert alkot-e modulo 6! Válaszunkat indokoljuk meg!

**Megoldás.**
Számítsuk ki a halmaz elemeinek 6-os osztási maradékát:
- $14 = 2 \cdot 6 + 2 \equiv 2 \pmod 6$,
- $20 = 3 \cdot 6 + 2 \equiv 2 \pmod 6$,
- $26 = 4 \cdot 6 + 2 \equiv 2 \pmod 6$,
- $32 = 5 \cdot 6 + 2 \equiv 2 \pmod 6$,
- $38 = 6 \cdot 6 + 2 \equiv 2 \pmod 6$,
- $44 = 7 \cdot 6 + 2 \equiv 2 \pmod 6$.
Látható, hogy a halmaz minden egyes eleme $2$ maradékot ad modulo 6!
A halmaz elemei között nemhogy 6 különböző maradék nincs, de valamennyi elem kongruens egymással: $14 \equiv 20 \equiv 26 \equiv 32 \equiv 38 \equiv 44 \equiv 2 \pmod 6$.
Ennek oka, hogy a számtani sorozat különbsége $d = 6$, amely nyilvánvalóan nem relatív prím a modulushoz ($\operatorname{lnko}(6, 6) = 6 \neq 1$).
Így a halmaz **nem alkot teljes maradékrendszert modulo 6**.

::: elmelet
**Elméleti háttér — A differencia és a modulus relatív prím volta.**
Ha $d = a_{k+1} - a_k$ nem relatív prím $m$-hez, akkor $a + kd \pmod m$ nem fedheti le az összes maradékot, mert az értékek mind $a + t \cdot \operatorname{lnko}(d, m)$ alakúak maradnak. Így legfeljebb $m / \operatorname{lnko}(d, m)$ különböző maradék jelenhet meg.
:::

## Gy6.3.1. feladat

Redukált maradékrendszert alkot-e a $\{1, 5, 7, 11, 13, 17, 19, 23\}$ halmaz modulo 24?

**Megoldás.**
1. Modulus: $24 = 2^3 \cdot 3$.
Euler-függvény:
$$\varphi(24) = 24 \cdot \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right) = 24 \cdot \frac{1}{2} \cdot \frac{2}{3} = 8.$$
A halmaz elemszáma 8, ami megegyezik $\varphi(24)$-gyel.

2. Relatív prím feltétel:
Egy szám pontosan akkor relatív prím 24-hez, ha sem 2-vel, sem 3-mal nem osztható (vagyis páratlan és számjegyeinek összege nem osztható 3-mal).
- $1$: relatív prím,
- $5$: prím, nem osztja 24-et,
- $7$: prím,
- $11$: prím,
- $13$: prím,
- $17$: prím,
- $19$: prím,
- $23$: prím.
Valamennyi elem relatív prím 24-hez.

3. Páronkénti inkongruencia:
Mind a 8 szám a $0$ és $23$ közé esik és páronként különbözőek, így modulo 24 mind különböző maradékot adnak.
Mivel mindhárom feltétel teljesül, a halmaz **redukált maradékrendszert alkot modulo 24**.

::: elmelet
**Elméleti háttér — Redukált maradékrendszer ellenőrzése.**
Ha a számok a $[1, m-1]$ intervallumba esnek, az inkongruencia triviális (a különböző számok nem lehetnek kongruensek). Ekkor elegendő ellenőrizni, hogy az elemek száma $\varphi(m)$, és mindegyik relatív prím $m$-hez.
:::

## Gy6.3.2. feladat

Határozzuk meg $\varphi(20)$ értékét, és adjunk meg egy olyan redukált maradékrendszert modulo 20, amely csupa 20-nál nagyobb számból áll!

**Megoldás.**
1. $\varphi(20)$ kiszámítása:
$20 = 2^2 \cdot 5$.
$$\varphi(20) = 20 \cdot \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{5}\right) = 20 \cdot \frac{1}{2} \cdot \frac{4}{5} = 8.$$
A modulo 20 legkisebb nemnegatív redukált maradékrendszere azon $1 \le a < 20$ számokból áll, amelyek nem oszthatók sem 2-vel, sem 5-tel:
$$\{1, 3, 7, 9, 11, 13, 17, 19\}.$$

2. 20-nál nagyobb elemekből álló rendszer:
Adjunk hozzá minden elemhez $20$-at (vagy annak tetszőleges pozitív többszörösét):
- $1 + 20 = 21$,
- $3 + 20 = 23$,
- $7 + 20 = 27$,
- $9 + 20 = 29$,
- $11 + 20 = 31$,
- $13 + 20 = 33$,
- $17 + 20 = 37$,
- $19 + 20 = 39$.
Mivel $a + 20 \equiv a \pmod{20}$, a maradékok nem változnak, és $\operatorname{lnko}(a+20, 20) = \operatorname{lnko}(a, 20) = 1$.
A keresett halmaz:
$$\mathbf{\{21, 23, 27, 29, 31, 33, 37, 39\}}.$$

::: elmelet
**Elméleti háttér — Redukált maradékosztályok eltolása.**
Mivel $a \equiv b \pmod m$ esetén $\operatorname{lnko}(a, m) = \operatorname{lnko}(b, m)$, egy redukált maradékrendszer bármelyik eleme helyettesíthető a saját maradékosztályának tetszőleges másik reprezentánsával. Ezért tetszőlegesen nagy (vagy negatív) elemekből álló redukált maradékrendszer is könnyen képezhető a modulus többszöröseinek hozzáadásával.
:::

## Gy6.4.1. feladat

Határozzuk meg a $3^{2026}$ szám utolsó két számjegyét!

**Megoldás.**
A feladat a $3^{2026} \pmod{100}$ maradék kiszámítása.
Számítsuk ki a 3 kis hatványait modulo 100:
$$3^2 = 9,$$
$$3^4 = 81 \equiv -19 \pmod{100},$$
$$3^8 = (-19)^2 = 361 \equiv 61 \pmod{100},$$
$$3^{10} = 3^8 \cdot 3^2 \equiv 61 \cdot 9 = 549 \equiv 49 \pmod{100},$$
$$3^{20} = (3^{10})^2 \equiv 49^2 \equiv 1 \pmod{100}.$$
(Valóban, $\varphi(100) = 40$, és a rend osztja 40-et: $o_{100}(3) = 20$.)

Osszuk el a 2026 kitevőt 20-szal:
$$2026 = 20 \cdot 101 + 6.$$
Ebből:
$$3^{2026} \equiv (3^{20})^{101} \cdot 3^6 \equiv 1^{101} \cdot 3^6 = 3^6 \pmod{100}.$$
Mivel $3^6 = 729 \equiv 29 \pmod{100}$, kapjuk, hogy:
$$3^{2026} \equiv 29 \pmod{100}.$$
Az utolsó két számjegy tehát:
$$\mathbf{29}.$$

::: elmelet
**Elméleti háttér — Hatványozás modulo 100 és rend.**
Modulo 100 esetén a relatív prím alapok maximális rendje nem $\varphi(100) = 40$, hanem a Carmichael-függvény értéke: $\lambda(100) = [\lambda(4), \lambda(25)] = [2, 20] = 20$. Tehát minden 100-hoz relatív prím $a$-ra $a^{20} \equiv 1 \pmod{100}$, így a kitevő mindig csökkenthető modulo 20.
:::

## Gy6.4.2. feladat

Határozzuk meg a $9^{2026}$ szám utolsó két számjegyét!

**Megoldás.**
Számítsuk ki a $9^{2026} \pmod{100}$ értéket.
Mivel $9 = 3^2$, a keresett érték $3^{4052} \pmod{100}$.
Mivel $3^{20} \equiv 1 \pmod{100}$ (vagy közvetlenül $9^{10} = (3^{20}) \equiv 1 \pmod{100}$):
A 9 rendje modulo 100 pontosan $10$:
$$9^1 = 9,$$
$$9^2 = 81 \equiv -19,$$
$$9^3 \equiv -19 \cdot 9 = -171 \equiv 29,$$
$$9^5 \equiv 9^2 \cdot 9^3 \equiv (-19) \cdot 29 = -551 \equiv -1 \equiv 99 \pmod{100},$$
$$9^{10} \equiv (-1)^2 = 1 \pmod{100}.$$
A kitevő 10-es maradéka:
$$2026 = 10 \cdot 202 + 6.$$
Így:
$$9^{2026} \equiv (9^{10})^{202} \cdot 9^6 \equiv 1 \cdot (9^5 \cdot 9) \equiv (-1) \cdot 9 = -9 \equiv 91 \pmod{100}.$$
Az utolsó két számjegy:
$$\mathbf{91}.$$

::: elmelet
**Elméleti háttér — Utolsó két számjegy meghatározása modulo 100.**

Egy szám utolsó két számjegyét a modulo 100 maradéka adja meg.
Mivel $100 = 4 \cdot 25$ és $\gcd(4, 25) = 1$, az Euler-féle $\varphi$-függvény:
$$\varphi(100) = 100 \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{5}\right) = 40.$$
Az Euler–Fermat-tétel szerint ha $\gcd(a, 100) = 1$, akkor $a^{40} \equiv 1 \pmod{100}$.
Ha az alap közel áll a 10 valamelyik hatványához (pl. $9 = 10 - 1$), a binomiális tétellel való sorfejtés rendkívül gyors:
$$9^n = (10 - 1)^n = (-1)^n + n(-1)^{n-1} \cdot 10 + \binom{n}{2}(-1)^{n-2} \cdot 100 + \dots \equiv (-1)^n + 10n(-1)^{n-1} \pmod{100}.$$
:::

## Gy6.5.1. feladat

Oldjuk meg az $x^2 \equiv 1 \pmod 8$ kongruenciát! Hány inkongruens megoldás van modulo 8?

**Megoldás.**
Modulo 8 a maradékosztályok reprezentánsai: $\{0, 1, 2, 3, 4, 5, 6, 7\}$.
Számítsuk ki a négyzeteiket modulo 8:
- $0^2 = 0 \equiv 0$,
- $1^2 = 1 \equiv 1$,
- $2^2 = 4 \equiv 4$,
- $3^2 = 9 \equiv 1$,
- $4^2 = 16 \equiv 0$,
- $5^2 = 25 \equiv 1$,
- $6^2 = 36 \equiv 4$,
- $7^2 = 49 \equiv 1$.
Látható, hogy minden páratlan szám négyzete $1$ maradékot ad modulo 8.
Az $x^2 \equiv 1 \pmod 8$ egyenlet megoldásai:
$$\mathbf{x \equiv 1, 3, 5, 7 \pmod 8}.$$
Tehát az egyenletnek **4 inkongruens megoldása** van modulo 8.

::: elmelet
**Elméleti háttér — Páratlan számok négyzete modulo 8.**
Minden páratlan egész szám felírható $x = 2k + 1$ alakban. Ekkor $x^2 = 4k^2 + 4k + 1 = 4k(k+1) + 1$. Mivel $k$ és $k+1$ közül az egyik páros, a $4k(k+1)$ tag osztható 8-cal, így $x^2 \equiv 1 \pmod 8$ minden páratlan $x$-re. Emiatt modulo 8 az 1-nek négy darab négyzetgyöke van.
:::

## Gy6.5.2. feladat

Mutassuk meg, hogy ha $p$ és $q$ különböző páratlan prímek és $m = pq$, akkor az $x^2 \equiv 1 \pmod m$ kongruenciának pontosan 4 inkongruens megoldása van modulo $m$!

**Megoldás.**
Mivel $\operatorname{lnko}(p, q) = 1$, az $x^2 \equiv 1 \pmod{pq}$ kongruencia a kínai maradéktétel szerint ekvivalens az alábbi szimultán kongruenciarendszerrel:
$$\begin{cases} x^2 \equiv 1 \pmod p \\ x^2 \equiv 1 \pmod q \end{cases}$$
Mivel $p$ és $q$ prímek, az első kongruencia megoldásai $x \equiv \pm 1 \pmod p$, a másodiké pedig $x \equiv \pm 1 \pmod q$.
Ez 4 lehetséges előjel-kombinációt jelent:
1. $x \equiv 1 \pmod p$ és $x \equiv 1 \pmod q$,
2. $x \equiv -1 \pmod p$ és $x \equiv -1 \pmod q$,
3. $x \equiv 1 \pmod p$ és $x \equiv -1 \pmod q$,
4. $x \equiv -1 \pmod p$ és $x \equiv 1 \pmod q$.
A kínai maradéktétel értelmében mind a 4 rendszernek létezik egyértelmű megoldása modulo $pq$, és ezek a megoldások páronként inkongruensek egymással modulo $pq$ (hiszen legalább az egyik prímre nézve különböznek a maradékaik).
Ezért az egyenletnek pontosan **4 inkongruens megoldása** van modulo $pq$. $\blacksquare$

::: elmelet
**Elméleti háttér — Kínai maradéktétel és nemtriviális négyzetgyökök.**
Az $x \equiv \pm 1 \pmod m$ megoldások a triviális négyzetgyökök. Ha $m = pq$, akkor a „vegyes” előjelű rendszerekből származó gyökök a **nemtriviális négyzetgyökök**. A modern kriptográfiában (pl. Rabin-titkosítás) a nemtriviális négyzetgyökök ismerete ekvivalens a modulus faktorizációjával, mivel $\operatorname{lnko}(x - 1, m) \in \{p, q\}$.
:::

## Gy6.6.1. feladat

Számítsuk ki a $11^{1005} \pmod{19}$ és a $7^{162} \pmod{20}$ maradékokat!

**Megoldás.**
1. $11^{1005} \pmod{19}$:
$19$ prím, $\operatorname{lnko}(11, 19) = 1$. A kis Fermat-tétel szerint $11^{18} \equiv 1 \pmod{19}$.
Kitevő redukciója: $1005 = 18 \cdot 55 + 15$.
Így $11^{1005} \equiv 11^{15} \equiv 11^{-3} \pmod{19}$ (mivel $11^{18} \equiv 1$).
Vagy közvetlenül negatív alapokkal: $11 \equiv -8 \pmod{19}$.
$(-8)^2 = 64 \equiv 7 \pmod{19}$,
$(-8)^3 \equiv 7 \cdot (-8) = -56 \equiv 1 \pmod{19}$!
Mivel $(-8)^3 \equiv 1 \pmod{19}$, a periódus valójában 3!
A kitevő 3-as maradéka: $1005 = 3 \cdot 335 + 0$.
Ezért:
$$11^{1005} \equiv (11^3)^{335} \equiv 1^{335} = \mathbf{1} \pmod{19}.$$

2. $7^{162} \pmod{20}$:
$\operatorname{lnko}(7, 20) = 1$, $\varphi(20) = 8$. Az Euler–Fermat-tétel szerint $7^8 \equiv 1 \pmod{20}$.
(Sőt $7^2 = 49 \equiv 9$, $7^4 \equiv 9^2 = 81 \equiv 1 \pmod{20}$, a rend $4$.)
Kitevő redukciója 4-gyel: $162 = 4 \cdot 40 + 2$.
Így:
$$7^{162} \equiv (7^4)^{40} \cdot 7^2 \equiv 1 \cdot 49 \equiv \mathbf{9} \pmod{20}.$$

::: elmelet
**Elméleti háttér — A rend és az Euler-függvény kapcsolata.**
Bár az Euler–Fermat-tétel mindig garantálja a $\varphi(m)$ szerinti redukciót, az elem valódi rendje gyakran a $\varphi(m)$ egy valódi osztója (mint a fenti példában $o_{19}(11) = 3 \mid 18$). Ha hamar eljutunk az $1$-hez, a kitevőt közvetlenül a renddel érdemes redukálni.
:::

## Gy6.6.2. feladat

Számítsuk ki a $13^{2026} \pmod{15}$ és a $4^{203} \pmod{13}$ kifejezések pontos maradékait!

**Megoldás.**
1. $13^{2026} \pmod{15}$:
Mivel $13 \equiv -2 \pmod{15}$, ezért $13^{2026} \equiv (-2)^{2026} = 2^{2026} \pmod{15}$.
$\varphi(15) = 15 \cdot \frac{2}{3} \cdot \frac{4}{5} = 8$, de vizsgáljuk a 2 hatványait:
$2^4 = 16 \equiv 1 \pmod{15}$. A rend 4!
A kitevő: $2026 = 4 \cdot 506 + 2$.
Így:
$$2^{2026} \equiv (2^4)^{506} \cdot 2^2 \equiv 1 \cdot 4 = \mathbf{4} \pmod{15}.$$

2. $4^{203} \pmod{13}$:
$13$ prím, $\operatorname{lnko}(4, 13) = 1$. A kis Fermat-tétel szerint $4^{12} \equiv 1 \pmod{13}$.
Nézzük a 4 kis hatványait: $4^3 = 64 = 5 \cdot 13 - 1 \equiv -1 \pmod{13}$, így $4^6 \equiv 1 \pmod{13}$ (a rend 6).
A kitevő 6-os maradéka: $203 = 6 \cdot 33 + 5$.
Így:
$$4^{203} \equiv 4^5 = 4^3 \cdot 4^2 \equiv (-1) \cdot 16 \equiv -3 \equiv \mathbf{10} \pmod{13}.$$

::: elmelet
**Elméleti háttér — Negatív maradékok a számítás meggyorsítására.**
A bázis helyettesítése $a \equiv a - m$ értékkel azonnal kisebb számokat ad (pl. $13 \equiv -2 \pmod{15}$). Páros kitevő esetén a negatív előjel automatikusan eltűnik, ami jelentősen csökkenti a számítási hibák kockázatát.
:::

## Gy6.7.1. feladat

Bizonyítsuk be, hogy az $n^5 - n$ kifejezés minden $n \in \mathbb{Z}$ esetén osztható 30-cal!

**Megoldás.**
$30 = 2 \cdot 3 \cdot 5$, ahol a tényezők páronként relatív prímek.
1. Oszthatóság 5-tel:
A kis Fermat-tétel szerint $p = 5$-re minden egészre $n^5 \equiv n \pmod 5$, így $5 \mid (n^5 - n)$.

2. Oszthatóság 2-vel és 3-mal:
Szorzattá alakítva:
$$n^5 - n = n(n^4 - 1) = n(n^2 - 1)(n^2 + 1) = (n - 1)n(n + 1)(n^2 + 1).$$
A szorzat tartalmazza $(n-1)n(n+1)$-et, három egymást követő egész szorzatát.
Három szomszédos szám szorzata osztható $3! = 6$-tal, azaz 2-vel és 3-mal is.

Mivel $n^5 - n$ osztható 2-vel, 3-mal és 5-tel, osztható a legkisebb közös többszörösükkel, $30$-cal is:
$$30 \mid (n^5 - n). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — $n^p - n$ oszthatósága.**
Általánosan, ha $p$ prím, akkor $n^p - n$ mindig osztható $p$-vel, és ha $p$ páratlan, akkor $n^p - n = n(n-1)(n^{p-2} + \dots + 1)$ miatt $2$-vel is osztható, így legalább $2p \mid (n^p - n)$. Specifikus prímekre ($p = 5$) a faktorizáció további prímosztókat ($3$) is garantál.
:::

## Gy6.7.2. feladat

Bizonyítsuk be, hogy minden $n$ egész szám esetén $n^{13} - n$ osztható 2730-cal!

**Megoldás.**
Bontsuk fel a 2730-at prímtényezőkre:
$$2730 = 2 \cdot 3 \cdot 5 \cdot 7 \cdot 13.$$
Megmutatjuk, hogy $n^{13} - n$ mind az öt prímfaktorral osztható:
- **13:** A kis Fermat-tétel szerint $n^{13} \equiv n \pmod{13}$, így $13 \mid (n^{13} - n)$.
- **7:** Mivel $n^7 \equiv n \pmod 7$, ezért $n^{13} = n^7 \cdot n^6 \equiv n \cdot n^6 = n^7 \equiv n \pmod 7$, így $7 \mid (n^{13} - n)$.
- **5:** $n^5 \equiv n \pmod 5 \implies n^{13} = (n^5)^2 \cdot n^3 \equiv n^2 \cdot n^3 = n^5 \equiv n \pmod 5$, így $5 \mid (n^{13} - n)$.
- **3:** $n^3 \equiv n \pmod 3 \implies n^{13} = (n^3)^4 \cdot n \equiv n^4 \cdot n = n^5 = n^3 \cdot n^2 \equiv n \cdot n^2 = n^3 \equiv n \pmod 3$.
- **2:** $n^{13}$ és $n$ paritása megegyezik, így $2 \mid (n^{13} - n)$.
Mivel a modulusok páronként relatív prímek:
$$2 \cdot 3 \cdot 5 \cdot 7 \cdot 13 = 2730 \mid (n^{13} - n). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Kitevőredukció a kis Fermat-tétellel prímfaktoronként.**
Ha $p - 1 \mid k - 1$, akkor $n^k \equiv n \pmod p$ minden egész $n$-re. Mivel $13 - 1 = 12$, és $12$ osztható a következő értékekkel: $2-1=1$, $3-1=2$, $5-1=4$, $7-1=6$, $13-1=12$, ezért $n^{13} \equiv n$ modulo $2, 3, 5, 7, 13$ mindegyikére teljesül! Ez a Carmichael-számok elméletének alapja.
:::

## Gy6.8.1. feladat

Mutassuk meg, hogy ha $m$ páratlan, akkor létezhet olyan $a_i$ és $b_i$ teljes maradékrendszer, amelyek összege szintén teljes maradékrendszert alkot! Mutassunk konkrét példát $m = 3$ és $m = 5$ esetén!

**Megoldás.**
Ha $m$ páratlan, akkor $\operatorname{lnko}(2, m) = 1$, így a 2 invertálható modulo $m$.
Válasszuk mindkét rendszernek ugyanazt az alaprendszert: $a_i = b_i = i$ ($i = 0, 1, \dots, m-1$).
Ekkor $c_i = a_i + b_i = 2i$.
Mivel $\operatorname{lnko}(2, m) = 1$, a $2 \cdot 0, 2 \cdot 1, \dots, 2 \cdot (m-1)$ sorozat tagjai páronként inkongruensek modulo $m$:
$$2i \equiv 2j \pmod m \iff m \mid 2(i - j) \iff m \mid (i - j) \iff i = j.$$
Így $c_i$ valóban teljes maradékrendszer.

Konkrét példák:
1. $m = 3$:
$a = (0, 1, 2)$, $b = (0, 1, 2)$.
$a + b = (0, 2, 4) \equiv \mathbf{(0, 2, 1)} \pmod 3$, amely teljes maradékrendszer.
2. $m = 5$:
$a = (0, 1, 2, 3, 4)$, $b = (0, 1, 2, 3, 4)$.
$a + b = (0, 2, 4, 6, 8) \equiv \mathbf{(0, 2, 4, 1, 3)} \pmod 5$, amely szintén teljes maradékrendszer.

::: elmelet
**Elméleti háttér — Teljes maradékrendszerek összege páratlan modulusra.**
Páratlan $m$ esetén a $\sum c_i \equiv 0 \pmod m$ összegfeltétel nem vezet ellentmondásra ($0 + 0 = 0$). Az $a_i \mapsto 2a_i$ bijekció $\mathbb{Z}_m$-en, így önmagával összeadva egy teljes maradékrendszert újra teljes maradékrendszert kapunk.
:::

## Gy6.8.2. feladat

Legyen $m$ páros egész szám, és $a_1, \dots, a_m$ egy teljes maradékrendszer modulo $m$. Alkot-e a $2a_1, 2a_2, \dots, 2a_m$ halmaz teljes maradékrendszert modulo $m$? Válaszunkat indokoljuk!

**Megoldás.**
Nem alkothat teljes maradékrendszert.
Indoklás:
Mivel $m$ páros, $2 \mid m$, így $\operatorname{lnko}(2, m) \ge 2 > 1$.
Minden $i$-re a $2a_i$ szám páros, így modulo $m$ vett maradéka is páros (hiszen $2a_i = qm + r$, ahol $m$ páros, $2a_i$ páros, így $r = 2a_i - qm$ is páros).
Ezért a $\{2a_1, \dots, 2a_m\}$ elemek között egyetlen páratlan maradék sem fordulhat elő!
Mivel egy teljes maradékrendszernek modulo $m$ minden lehetséges maradékot (így a páratlanokat is) tartalmaznia kellene, a megadott halmaz **nem alkot teljes maradékrendszert modulo $m$**.

::: elmelet
**Elméleti háttér — Skalárral való szorzás hatása maradékrendszerekre.**
Ha $a_1, \dots, a_m$ teljes maradékrendszer modulo $m$, akkor $c a_1, \dots, c a_m$ akkor és csak akkor teljes maradékrendszer, ha $\operatorname{lnko}(c, m) = 1$. Ha $\operatorname{lnko}(c, m) = d > 1$, akkor a szorzatok csak a $d$ többszöröseinek maradékosztályait vehetik fel, mindegyiket $d$-szer lefedve.
:::

## Gy6.9.1. feladat

Igazoljuk, hogy ha $p = 4k + 1$ alakú prím, akkor az $x = \left(\frac{p-1}{2}\right)!$ számra teljesül, hogy $x^2 \equiv -1 \pmod p$ (felhasználva a Wilson-tételt)!

**Megoldás.**
A Wilson-tétel szerint minden $p$ prímre:
$$(p - 1)! \equiv -1 \pmod p.$$
Bontsuk szét a faktoriálist a felénél, ahol $m = \frac{p-1}{2}$:
$$(p - 1)! = 1 \cdot 2 \dots m \cdot (m + 1) \dots (p - 1).$$
Írjuk át a második felében lévő tényezőket modulo $p$:
$$p - 1 \equiv -1 \pmod p,$$
$$p - 2 \equiv -2 \pmod p,$$
$$\vdots$$
$$m + 1 = p - m \equiv -m \pmod p.$$
Mivel pontosan $m$ darab tényezőt írtunk át:
$$(m + 1)(m + 2) \dots (p - 1) \equiv (-1)^m \cdot (m \cdot (m-1) \dots 1) = (-1)^m \cdot m! \pmod p.$$
Ezért a teljes faktoriális:
$$(p - 1)! \equiv m! \cdot (-1)^m m! = (-1)^m (m!)^2 \pmod p.$$
Mivel $p = 4k + 1$, $m = \frac{p-1}{2} = 2k$ páros szám, így $(-1)^m = (-1)^{2k} = 1$.
Ebből kapjuk:
$$(p - 1)! \equiv (m!)^2 \pmod p.$$
A Wilson-tétel alapján viszont $(p - 1)! \equiv -1 \pmod p$, így:
$$(m!)^2 \equiv -1 \pmod p.$$
Vagyis $x = \left(\frac{p-1}{2}\right)!$ kielégíti az $x^2 \equiv -1 \pmod p$ kongruenciát. $\blacksquare$

::: elmelet
**Elméleti háttér — A Wilson-tétel és kvadratikus gyökök konstruálása.**
A Wilson-tétel ($(p-1)! \equiv -1 \pmod p$) nemcsak elméleti jelentőségű, hanem konstruktív formulát ad az $x^2 \equiv -1 \pmod p$ megoldására minden $p \equiv 1 \pmod 4$ prímre: $x \equiv \pm ((p-1)/2)!$. Például $p = 5$-re: $((5-1)/2)! = 2! = 2$, és valóban $2^2 = 4 \equiv -1 \pmod 5$.
:::

## Gy6.9.2. feladat

Bizonyítsuk be, hogy végtelen sok $4k + 1$ alakú prímszám létezik annak felhasználásával, hogy $x^2 + 1$ minden páratlan prímosztója $4k+1$ alakú!

**Megoldás.**
Tegyük fel indirekt módon, hogy csak véges sok $4k + 1$ alakú prím létezik: $p_1, p_2, \dots, p_r$.
Tekintsük az alábbi egész számot:
$$N = (2 p_1 p_2 \dots p_r)^2 + 1.$$
Mivel $N > 1$, van legalább egy prím osztója, jelölje ezt $q$.
Mivel $N$ nyilvánvalóan páratlan szám (egy páros szám négyzete plusz 1), a $q$ prím szükségképpen páratlan: $q \ge 3$.
Mivel $q \mid N$, ezért:
$$(2 p_1 p_2 \dots p_r)^2 + 1 \equiv 0 \pmod q \iff (2 p_1 p_2 \dots p_r)^2 \equiv -1 \pmod q.$$
Ez azt jelenti, hogy a $-1$ kvadratikus maradék modulo $q$.
A 6.9 feladat tétele szerint ez csak akkor lehetséges, ha $q \not\equiv 3 \pmod 4$.
Mivel $q$ páratlan prím, szükségszerűen:
$$q \equiv 1 \pmod 4.$$
Így $q$ egy $4k + 1$ alakú prímszám.
A feltevésünk szerint a véges listánk ($p_1, \dots, p_r$) tartalmazza az összes ilyen alakú prímet, így létezik olyan $j \in \{1, \dots, r\}$, amelyre $q = p_j$.
Ekkor viszont $p_j$ osztja a szorzatot: $p_j \mid (2 p_1 \dots p_r)^2$.
Mivel $q = p_j$ osztja $N$-et is, osztania kell a különbségüket:
$$q \mid (N - (2 p_1 \dots p_r)^2) = 1.$$
Ez ellentmondás, hiszen egy prímszám nem oszthatja az 1-et.
Tehát végtelen sok $4k + 1$ alakú prím létezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Dirichlet-tétel speciális esete.**
Ez az Euklidész-féle prím-végtelenségi bizonyítás elegáns algebrai kiterjesztése polinomokra: az $x^2 + 1$ alakú számok vizsgálatával a kvadratikus maradékok elmélete révén tiszta elemi úton igazolható a Dirichlet-tétel $4k + 1$ alakú prímekre vonatkozó esete.
:::

## Gy6.10.1. feladat

Oldjuk meg a $7x \equiv 5 \pmod{29}$ és a $12x \equiv 18 \pmod{30}$ kongruenciákat!

**Megoldás.**
1. $7x \equiv 5 \pmod{29}$:
$29$ prím, $\operatorname{lnko}(7, 29) = 1$.
Keressük 7 inverzét mod 29: $7 \cdot 4 = 28 \equiv -1 \implies 7 \cdot (-4) \equiv 1 \implies 7^{-1} \equiv -4 \equiv 25 \pmod{29}$.
Szorozzuk be a kongruenciát $-4$-gyel:
$$x \equiv 5 \cdot (-4) = -20 \equiv \mathbf{9 \pmod{29}}.$$
(Ellenőrzés: $7 \cdot 9 = 63 = 2 \cdot 29 + 5 \equiv 5$.)

2. $12x \equiv 18 \pmod{30}$:
$d = \operatorname{lnko}(12, 30) = 6$. Mivel $6 \mid 18$, van megoldás, pontosan $6$ darab mod 30!
Osszuk el a kongruenciát és a modulust 6-tal:
$$2x \equiv 3 \pmod 5.$$
Modulo 5: $2x \equiv 3 \equiv 8 \implies x \equiv 4 \pmod 5$.
Az alpmegoldás $x_0 = 4$. A $d = 6$ darab megoldás modulo 30 ($x_0 + 5k$, $k = 0, \dots, 5$):
$$\mathbf{x \equiv 4, 9, 14, 19, 24, 29 \pmod{30}}.$$

::: elmelet
**Elméleti háttér — Több megoldással rendelkező lineáris kongruenciák.**
Ha $d = \operatorname{lnko}(a, m) > 1$ és $d \mid b$, akkor az egyszerűsítés után kapott egyetlen modulo $m/d$ megoldás a teljes modulo $m$ gyűrűben egy $d$ elemű ekvidisztáns számtani sorozatot alkot, melynek lépésköze $m/d$.
:::

## Gy6.10.2. feladat

Oldjuk meg a $21x \equiv 14 \pmod{35}$ és a $9x \equiv 4 \pmod{26}$ kongruenciákat!

**Megoldás.**
1. $21x \equiv 14 \pmod{35}$:
$d = \operatorname{lnko}(21, 35) = 7$. Mivel $7 \mid 14$, pontosan 7 megoldás van modulo 35.
Osszunk 7-tel:
$$3x \equiv 2 \pmod 5.$$
Mivel $2 \equiv 12 \pmod 5$, ezért $3x \equiv 12 \implies x \equiv 4 \pmod 5$.
A 7 megoldás modulo 35 ($x \equiv 4 + 5k$):
$$\mathbf{x \equiv 4, 9, 14, 19, 24, 29, 34 \pmod{35}}.$$

2. $9x \equiv 4 \pmod{26}$:
$\operatorname{lnko}(9, 26) = 1$. Egyetlen megoldás van modulo 26.
Keressük meg 9 inverzét mod 26: $9 \cdot 3 = 27 \equiv 1 \pmod{26}$, tehát $9^{-1} \equiv 3 \pmod{26}$.
Szorozzuk meg mindkét oldalt 3-mal:
$$x \equiv 4 \cdot 3 = \mathbf{12 \pmod{26}}.$$
(Ellenőrzés: $9 \cdot 12 = 108 = 4 \cdot 26 + 4 \equiv 4 \pmod{26}$.)

::: elmelet
**Elméleti háttér — Inverz gyors megtalálása kis modulusokra.**
Kis modulusok esetén a kibővített euklideszi algoritmus helyett gyakran azonnal látható az inverz: pl. $9 \cdot 3 = 27 = 26 + 1$, így $9^{-1} \equiv 3 \pmod{26}$. Egy másik módszer a jobb oldal bővítése a modulus többszöröseivel, amíg az együtthatóval oszthatóvá nem válik: $3x \equiv 2 \equiv 7 \equiv 12 \implies x \equiv 4$.
:::

## Gy6.11.1. feladat

Egy boltban 400 és 700 forintos füzeteket vásároltak összesen 8900 forintért. Mindkét fajtából vettek legalább egyet. Hány darabot vásárolhattak az egyes füzetekből?

**Megoldás.**
Legyen $x$ a 400 Ft-os, $y$ a 700 Ft-os füzetek száma ($x, y \ge 1$ egész):
$$400x + 700y = 8900 \iff 4x + 7y = 89.$$
Vegyük az egyenletet modulo 4:
$$7y \equiv 89 \pmod 4 \iff 3y \equiv 1 \pmod 4 \iff -y \equiv 1 \iff y \equiv 3 \pmod 4.$$
Így $y = 4t + 3$ ($t \in \mathbb{Z}$).
Fejezzük ki $x$-et:
$$4x = 89 - 7(4t + 3) = 89 - 28t - 21 = 68 - 28t \implies x = 17 - 7t.$$
Feltételek:
$y \ge 1 \implies 4t + 3 \ge 1 \implies t \ge 0$,
$x \ge 1 \implies 17 - 7t \ge 1 \implies 7t \le 16 \implies t \le 2$.
A lehetséges $t$ értékek: $t \in \{0, 1, 2\}$.
Megoldások:
- $t = 0 \implies (x, y) = (17, 3)$,
- $t = 1 \implies (x, y) = (10, 7)$,
- $t = 2 \implies (x, y) = (3, 11)$.
A lehetséges darabszámok: **$(17, 3)$, $(10, 7)$ vagy $(3, 11)$**.

::: elmelet
**Elméleti háttér — Együtthatók paritása és modulusválasztás.**
A modulust érdemes mindig a kisebb abszolút értékű együtthatónak választani (itt 4), mert így az $x$ ismeretlen azonnal kiesik, és az $y$-ra kapott kongruencia rendkívül gyorsan megoldható.
:::

## Gy6.11.2. feladat

Egy cukrászdában 250 Ft-os pogácsát és 600 Ft-os süteményt árulnak. Lehetséges-e pontosan 6150 Ft értékben vásárolni úgy, hogy mindkettőből veszünk legalább egyet? Ha igen, hányféleképpen?

**Megoldás.**
Legyen $x$ a pogácsák, $y$ a sütemények száma ($x, y \ge 1$):
$$250x + 600y = 6150.$$
Osszuk el mindkét oldalt $50$-nel:
$$5x + 12y = 123.$$
Modulo 5:
$$12y \equiv 123 \pmod 5 \iff 2y \equiv 3 \equiv 8 \implies y \equiv 4 \pmod 5.$$
Tehát $y = 5t + 4$ ($t \in \mathbb{Z}$).
Kifejezve $x$-et:
$$5x = 123 - 12(5t + 4) = 123 - 60t - 48 = 75 - 60t \implies x = 15 - 12t.$$
Feltételek:
$y \ge 1 \implies 5t + 4 \ge 1 \implies t \ge 0$,
$x \ge 1 \implies 15 - 12t \ge 1 \implies 12t \le 14 \implies t \le 1$.
A lehetséges $t$ értékek: $t \in \{0, 1\}$.
Megoldások:
- $t = 0 \implies (x, y) = (15, 4)$ (Összeg: $15 \cdot 250 + 4 \cdot 600 = 3750 + 2400 = 6150$ Ft),
- $t = 1 \implies (x, y) = (3, 9)$ (Összeg: $3 \cdot 250 + 9 \cdot 600 = 750 + 5400 = 6150$ Ft).
Tehát **lehetséges, pontosan 2-féleképpen**.

::: elmelet
**Elméleti háttér — Közös osztók leosztása diofantoszi modellezésben.**
Gyakorlati feladatokban a numerikus értékek gyakran nagyok (pl. 250, 600, 6150). A legnagyobb közös osztóval (50) való azonnali egyszerűsítés minimalizálja a számolási bonyolultságot, és azonnal láthatóvá teszi a megoldhatóságot.
:::

## Gy6.12.1. feladat

Oldjuk meg az egész számok halmazán a (1) $18x + 42y = 114$ és a (2) $25x + 40y = 73$ egyenleteket!

**Megoldás.**
1. $18x + 42y = 114$:
$\operatorname{lnko}(18, 42) = 6$.
Mivel $114 = 6 \cdot 19$, $6 \mid 114$, van megoldás.
Osszunk 6-tal:
$$3x + 7y = 19.$$
Partikuláris megoldás keresése: mod 3 véve $7y \equiv 19 \implies y \equiv 1 \pmod 3$.
Válasszuk $y_0 = 1$-et, ekkor $3x_0 = 19 - 7 = 12 \implies x_0 = 4$.
Az általános megoldás:
$$\mathbf{x = 4 + 7t}, \quad \mathbf{y = 1 - 3t} \qquad (t \in \mathbb{Z}).$$

2. $25x + 40y = 73$:
$\operatorname{lnko}(25, 40) = 5$.
Mivel $5 \nmid 73$, az egyenletnek **nincs megoldása az egész számok körében**.

::: elmelet
**Elméleti háttér — Megoldhatósági kritérium ellenőrzése.**
Mielőtt bármilyen számolást kezdenénk, a legelső lépés mindig a legnagyobb közös osztó meghatározása és az oszthatósági teszt elvégzése. Ha a teszt elbukik, azonnal kijelenthető a megoldhatatlanság.
:::

## Gy6.12.2. feladat

Oldjuk meg a $21x + 49y = 105$ diofantoszi egyenletet az egész számok halmazán!

**Megoldás.**
$\operatorname{lnko}(21, 49) = 7$.
Mivel $105 = 7 \cdot 15$, $7 \mid 105$, létezik megoldás.
Osszuk el mindkét oldalt 7-tel:
$$3x + 7y = 15.$$
Partikuláris megoldás:
Vegyük észre, hogy $y_0 = 0$ esetén $3x_0 = 15 \implies x_0 = 5$ közvetlenül adódik!
A homogén egyenlet: $3x + 7y = 0 \implies x_{\text{hom}} = 7t, y_{\text{hom}} = -3t$.
Az általános megoldás:
$$\mathbf{x = 5 + 7t}, \quad \mathbf{y = -3t} \qquad (t \in \mathbb{Z}).$$

::: elmelet
**Elméleti háttér — Triviális partikuláris megoldások.**
Ha a jobb oldali konstans osztható az egyik együtthatóval (itt $3 \mid 15$), a másik változó 0-vá választásával azonnal, bármilyen algoritmus nélkül adódik egy partikuláris megoldás ($y_0 = 0, x_0 = c/a$).
:::

## Gy6.13.1. feladat

Bizonyítsuk be, hogy $\sqrt[3]{12}$ irracionális szám!

**Megoldás.**
Bontsuk fel a 12-t prímtényezőkre:
$$12 = 2^2 \cdot 3^1.$$
Ahhoz, hogy a 12 teljes köbszám ($m = 3$) legyen, a prímfelbontásában szereplő minden kitevőnek 3-mal oszthatónak kellene lennie.
Itt a 2 kitevője 2, a 3 kitevője 1; egyik sem osztható 3-mal.
Ezért a 12 nem teljes harmadik hatvány.
A 6.13 tétel alapján, ha egy egész szám nem teljes $m$-edik hatvány, akkor az $m$-edik gyöke irracionális.
Tehát $\sqrt[3]{12}$ **irracionális szám**. $\blacksquare$

::: elmelet
**Elméleti háttér — Kanonikus alak és hatványok.**
Egy szám $m$-edik hatvány volta pusztán a prímtényezős felbontás kitevőinek modulo $m$ vizsgálatával eldönthető. Ha legalább egy prímtényező kitevője nem osztható $m$-mel, a gyök szükségszerűen irracionális.
:::

## Gy6.13.2. feladat

Bizonyítsuk be, hogy $\sqrt{2} + \sqrt{3}$ irracionális szám!

**Megoldás.**
Tegyük fel indirekt módon, hogy $\alpha = \sqrt{2} + \sqrt{3} \in \mathbb{Q}$ racionális.
Mivel $\sqrt{2}, \sqrt{3} > 0$, $\alpha > 0$.
Emeljük négyzetre az egyenlőséget:
$$\alpha^2 = (\sqrt{2} + \sqrt{3})^2 = 2 + 2\sqrt{6} + 3 = 5 + 2\sqrt{6}.$$
Fejezzük ki $\sqrt{6}$-ot:
$$2\sqrt{6} = \alpha^2 - 5 \iff \sqrt{6} = \frac{\alpha^2 - 5}{2}.$$
Mivel a racionális számok teste zárt a négyzetre emelésre, kivonásra és osztásra, ha $\alpha \in \mathbb{Q}$, akkor a jobb oldal is racionális lenne:
$$\frac{\alpha^2 - 5}{2} \in \mathbb{Q} \implies \sqrt{6} \in \mathbb{Q}.$$
Viszont $6 = 2 \cdot 3$ nem teljes négyzetszám, így a 6.13 tétel szerint $\sqrt{6}$ irracionális!
Ellentmondásra jutottunk, tehát a kiindulási feltevésünk hamis volt:
$\sqrt{2} + \sqrt{3}$ **irracionális szám**. $\blacksquare$

::: elmelet
**Elméleti háttér — Algebrai számok irracionalitása.**
Összetett gyökkifejezések irracionalitásának igazolásakor az algebrai manipuláció célja a kérdés visszavezetése egyetlen, már ismert irracionális gyökre. Ha a feltételezett racionális értékből racionális műveletekkel előállítható lenne az ismert irracionális szám, az ellentmondás igazolja az állítást.
:::

## Gy6.14.1. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben az egyik szám 21!

**Megoldás.**
Mivel 21 páratlan, nem lehet $2uv$.
1. $c = 21$: $u^2 + v^2 = 21$. Mivel $21 \equiv 1 \pmod 4$, elvileg lehetne, de a 21 prímosztója a 3 és a 7, amelyek mindketten $3 \pmod 4$ prímek, így 21 nem állhat elő két négyzet összegeként (a 21-nél kisebb négyzetszámok: $1, 4, 9, 16$, összegük nem 21).

2. $a = 21$:
$u^2 - v^2 = (u - v)(u + v) = 21$.
A 21 pozitív osztópárjai ($u - v < u + v$):
- $u - v = 1, u + v = 21 \implies u = 11, v = 10$.
  $\operatorname{lnko}(11, 10) = 1$, különböző paritásúak.
  $b = 2 \cdot 11 \cdot 10 = 220$, $c = 11^2 + 10^2 = 121 + 100 = 221$.
  Hármas: **$(21, 220, 221)$**.
- $u - v = 3, u + v = 7 \implies u = 5, v = 2$.
  $\operatorname{lnko}(5, 2) = 1$, különböző paritásúak.
  $b = 2 \cdot 5 \cdot 2 = 20$, $c = 5^2 + 2^2 = 25 + 4 = 29$.
  Hármas: **$(20, 21, 29)$**.

A megoldások: **$(20, 21, 29)$ és $(21, 220, 221)$**.

::: elmelet
**Elméleti háttér — Páratlan befogó faktorizációja.**
Egy rögzített páratlan $a$ szám esetén az $u^2 - v^2 = a$ egyenlet megoldása az $a = d_1 d_2$ ($d_1 < d_2$) osztópárokkal ekvivalens. Mivel $u = \frac{d_1 + d_2}{2}$ és $v = \frac{d_2 - d_1}{2}$, páratlan $a$-ra $d_1$ és $d_2$ is páratlan, így $u$ és $v$ mindig egész számok.
:::

## Gy6.14.2. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben a páros befogó 24!

**Megoldás.**
A páros befogó alakja $b = 2uv = 24 \implies uv = 12$.
Feltételek: $u > v > 0$, $\operatorname{lnko}(u, v) = 1$, és $u, v$ különböző paritású.
A 12 szorzatfelbontásai $u > v$-re:
1. $u = 12, v = 1$:
   $\operatorname{lnko}(12, 1) = 1$, 12 páros, 1 páratlan. Megfelel!
   $a = 12^2 - 1^2 = 144 - 1 = 143$,
   $b = 24$,
   $c = 12^2 + 1^2 = 144 + 1 = 145$.
   Hármas: **$(24, 143, 145)$**.
2. $u = 6, v = 2$:
   $\operatorname{lnko}(6, 2) = 2 \neq 1$, nem relatív prímek, nem primitív.
3. $u = 4, v = 3$:
   $\operatorname{lnko}(4, 3) = 1$, 4 páros, 3 páratlan. Megfelel!
   $a = 4^2 - 3^2 = 16 - 9 = 7$,
   $b = 24$,
   $c = 4^2 + 3^2 = 16 + 9 = 25$.
   Hármas: **$(7, 24, 25)$**.

A megoldások: **$(7, 24, 25)$ és $(24, 143, 145)$**.

::: elmelet
**Elméleti háttér — Páros befogó felbontása.**
Ha a páros befogó adott ($b = 2uv$), a feladat $uv = b/2$ olyan szorzatfelbontásaira redukálódik, ahol $u$ és $v$ relatív prímek és különböző paritásúak. Ez pontosan azt jelenti, hogy az $u$ és $v$ tényezők a $b/2$ szám prímhatvány-osztóiból állnak.
:::

## Gy6.15.1. feladat

Keressük meg az összes olyan egész oldalú derékszögű háromszöget, amelynek területe kétszerese a kerületének ($T = 2K$)!

**Megoldás.**
A feltétel: $T = 2K \iff \frac{ab}{2} = 2(a + b + c) \iff ab - 4(a + b) = 4c$.
Geometriailag: a beírt kör sugara $r = \frac{T}{s} = \frac{2T}{K} = 4$.
Derékszögű háromszögben $r = \frac{a + b - c}{2} = 4 \implies c = a + b - 8$.
Helyettesítsük be a Pitagorasz-tételbe ($a^2 + b^2 = c^2$):
$$a^2 + b^2 = (a + b - 8)^2 = a^2 + b^2 + 64 + 2ab - 16a - 16b.$$
Egyszerűsítve:
$$2ab - 16a - 16b + 64 = 0 \iff ab - 8a - 8b + 32 = 0.$$
Alakítsuk szorzattá:
$$(a - 8)(b - 8) = 32.$$
Tegyük fel, hogy $a \le b$. Mivel $a > 0$, $a - 8 \ge -7$, a negatív osztók kiesnek.
A 32 lehetséges szorzatai $a - 8 \le b - 8$-ra:
1. $a - 8 = 1, b - 8 = 32 \implies a = 9, b = 40 \implies c = 41$. ($T = 180, K = 90$, $T = 2K$.)
2. $a - 8 = 2, b - 8 = 16 \implies a = 10, b = 24 \implies c = 26$. ($T = 120, K = 60$, $T = 2K$.)
3. $a - 8 = 4, b - 8 = 8 \implies a = 12, b = 16 \implies c = 20$. ($T = 96, K = 48$, $T = 2K$.)
A megoldások: **$(9, 40, 41)$, $(10, 24, 26)$ és $(12, 16, 20)$**.

::: elmelet
**Elméleti háttér — Beírt kör sugara és a bilineáris egyenlet konstansa.**
Tetszőleges $r$ sugarú beírt kör esetén a derékszögű háromszög befogóira az $(a - 2r)(b - 2r) = 2r^2$ diofantoszi egyenlet érvényes. Itt $r = 4$, így $(a - 8)(b - 8) = 2 \cdot 16 = 32$. Ez a képlet közvetlenül adja az összes megoldást a $2r^2$ osztóinak felírásával.
:::

## Gy6.15.2. feladat

Létezik-e olyan derékszögű háromszög egész oldalhosszakkal, amelyben a kerület mérőszáma kétszerese a területének ($K = 2T$)?

**Megoldás.**
A feltétel szerint $K = 2T \iff T = \frac{1}{2}K$.
A beírt kör sugara:
$$r = \frac{T}{s} = \frac{T}{K/2} = \frac{K/2}{K/2} = 1.$$
Alkalmazzuk az $(a - 2r)(b - 2r) = 2r^2$ általános azonosságot $r = 1$-re:
$$(a - 2)(b - 2) = 2 \cdot 1^2 = 2.$$
Mivel 2 prím, egyetlen pozitív szorzatfelbontása van $a \le b$ mellett:
$$a - 2 = 1, \quad b - 2 = 2.$$
Ebből a befogók:
$$a = 3, \quad b = 4.$$
Az átfogó:
$$c = \sqrt{3^2 + 4^2} = 5.$$
Ellenőrzés:
- Terület: $T = \frac{3 \cdot 4}{2} = 6$.
- Kerület: $K = 3 + 4 + 5 = 12$.
Valóban $K = 2T$ ($12 = 2 \cdot 6$).
Tehát **létezik, pontosan egy ilyen háromszög van: a $(3, 4, 5)$ oldalú**.

::: elmelet
**Elméleti háttér — Az $r = 1$ beírt körű derékszögű háromszög.**
Mivel a 2 prímszám, az $(a - 2)(b - 2) = 2$ egyenletnek egyetlen egész megoldása létezik. Ez azt a nevezetes geometriai tényt tükrözi, hogy az egyetlen olyan egész oldalú derékszögű háromszög, amelynek beírt köre egységsugarú, a klasszikus $(3, 4, 5)$ egyiptomi háromszög.
:::

## Gy6.16.1. feladat

Mutassuk meg, hogy az $x^4 + y^4 = z^2$ egyenlet pozitív egész megoldhatatlanságából közvetlenül következik a Nagy Fermat-tétel $n = 4$ esete ($x^4 + y^4 = z^4$)!

**Megoldás.**
Tegyük fel indirekt módon, hogy az $x^4 + y^4 = z^4$ egyenletnek létezik pozitív egész megoldása: $x, y, z \in \mathbb{N}$.
Írjuk át a jobb oldalt:
$$z^4 = (z^2)^2.$$
Legyen $Z = z^2$. Mivel $z \in \mathbb{N}$, a négyzete szintén pozitív egész szám: $Z \in \mathbb{N}$.
Ekkor a számhármas kielégíti az alábbi egyenletet:
$$x^4 + y^4 = Z^2.$$
Ez azt jelenti, hogy az $(x, y, Z)$ számhármas pozitív egész megoldása lenne az $x^4 + y^4 = z^2$ egyenletnek.
Ha tehát tudjuk, hogy az $x^4 + y^4 = z^2$ egyenletnek nincs pozitív egész megoldása, akkor ellentmondásra jutottunk, így az $x^4 + y^4 = z^4$ egyenletnek sem létezhet pozitív egész megoldása. $\blacksquare$

::: elmelet
**Elméleti háttér — Fermat végtelen leszállása és erősebb állítások.**
Fermat valójában az $x^4 + y^4 = z^2$ egyenlet megoldhatatlanságát igazolta, amely egy szigorúan erősebb állítás, mint az $x^4 + y^4 = z^4$, hiszen minden negyedik hatvány egyben négyzetszám is. Az indukciós leszállás működéséhez a jobb oldalon elegendő a másodfokú tag, ami lehetővé teszi a pitagoraszi számhármasok paraméterezésének ismételt alkalmazását.
:::

## Gy6.16.2. feladat

Igazoljuk, hogy ha egy $F(x, y, z) = x^n + y^n - z^n$ kifejezésnek van pozitív egész gyöke, akkor $n$ semelyik osztójára sem lehet igaz a Fermat-tétel!

**Megoldás.**
Legyen $d \mid n$, azaz $n = d \cdot m$ valamely $m \in \mathbb{N}$ pozitív egészre.
Ha $(a, b, c) \in \mathbb{N}^3$ megoldása az $x^n + y^n = z^n$ egyenletnek:
$$a^{dm} + b^{dm} = c^{dm} \iff (a^m)^d + (b^m)^d = (c^m)^d.$$
Legyen $A = a^m, B = b^m, C = c^m$. Mivel $a, b, c > 0$ és $m \ge 1$, az $A, B, C$ számok szintén pozitív egészek.
Ekkor $A^d + B^d = C^d$, vagyis az $(A, B, C)$ hármas megoldást ad a $d$ kitevőre is.
Következésképpen a $d$ kitevőre sem lehet igaz a megoldhatatlanság tétele. $\blacksquare$

::: elmelet
**Elméleti háttér — Osztók és többszörösök közötti öröklődés.**
Ez a tétel a diofantoszi egyenletcsaládok functoriális tulajdonságát fejezi ki: a hatványozás beágyazást ad a kisebb kitevőjű egyenletek megoldáshalmazába. Ezért a diofantoszi geometriában mindig a legkisebb, nem felbontható kitevőkre koncentrálunk.
:::

## Gy6.17.1. feladat

Oldjuk meg a következő kongruenciarendszert: $x \equiv 2 \pmod 3$, $x \equiv 3 \pmod 5$, $x \equiv 1 \pmod 7$!

**Megoldás.**
Modulusok: $m_1 = 3, m_2 = 5, m_3 = 7$.
$M = 3 \cdot 5 \cdot 7 = 105$.
1. Részmodulusok:
$M_1 = 35$, $M_2 = 21$, $M_3 = 15$.
2. Inverzek:
- $35 y_1 \equiv 1 \pmod 3 \iff 2 y_1 \equiv 1 \implies y_1 \equiv 2 \pmod 3$.
- $21 y_2 \equiv 1 \pmod 5 \iff 1 y_2 \equiv 1 \implies y_2 \equiv 1 \pmod 5$.
- $15 y_3 \equiv 1 \pmod 7 \iff 1 y_3 \equiv 1 \implies y_3 \equiv 1 \pmod 7$.
3. Megoldás:
$$x_0 = 2 \cdot (35 \cdot 2) + 3 \cdot (21 \cdot 1) + 1 \cdot (15 \cdot 1) = 2 \cdot 70 + 3 \cdot 21 + 15 = 140 + 63 + 15 = 218.$$
4. Redukció modulo 105:
$218 = 2 \cdot 105 + 8 \implies x \equiv 8 \pmod{105}$.
Ellenőrzés: $8 = 2 \cdot 3 + 2 \equiv 2$, $8 = 1 \cdot 5 + 3 \equiv 3$, $8 = 1 \cdot 7 + 1 \equiv 1$.
A megoldás:
$$\mathbf{x \equiv 8 \pmod{105}}.$$

::: elmelet
**Elméleti háttér — Kínai maradéktétel (CRT) és moduláris inverzek.**

*Kínai maradéktétel (Sun Tzu, 3. század):*
Ha $m_1, m_2, \dots, m_k$ páronként relatív prím modulusok ($M = \prod m_i$), akkor az $x \equiv a_i \pmod{m_i}$ kongruenciarendszernek létezik egyértelmű megoldása modulo $M$.
Konstruktív algoritmus:
1. Legyen $M_i = M / m_i$. Mivel $\gcd(M_i, m_i) = 1$, létezik $y_i = M_i^{-1} \pmod{m_i}$ (a kibővített euklideszi algoritmussal).
2. A megoldás:
$$x \equiv \sum_{i=1}^k a_i M_i y_i \pmod M.$$
A moduláris inverzek gyors kereséséhez kis modulusok esetén a próbálgatás vagy az Euler-tétel ($y_i \equiv M_i^{\varphi(m_i)-1}$) alkalmazható.
:::

## Gy6.17.2. feladat

Oldjuk meg a következő kongruenciarendszert: $x \equiv 3 \pmod 4$, $x \equiv 1 \pmod 5$, $x \equiv 2 \pmod 9$!

**Megoldás.**
Modulusok: $m_1 = 4, m_2 = 5, m_3 = 9$.
Mivel $\operatorname{lnko}(4, 5) = \operatorname{lnko}(4, 9) = \operatorname{lnko}(5, 9) = 1$, páronként relatív prímek.
$M = 4 \cdot 5 \cdot 9 = 180$.
1. Részmodulusok:
$M_1 = 45$, $M_2 = 36$, $M_3 = 20$.
2. Inverzek:
- $45 y_1 \equiv 1 \pmod 4 \iff 1 y_1 \equiv 1 \implies y_1 = 1$.
- $36 y_2 \equiv 1 \pmod 5 \iff 1 y_2 \equiv 1 \implies y_2 = 1$.
- $20 y_3 \equiv 1 \pmod 9 \iff 2 y_3 \equiv 1 \equiv 10 \implies y_3 = 5$.
3. Megoldás:
$$x_0 = 3 \cdot 45 \cdot 1 + 1 \cdot 36 \cdot 1 + 2 \cdot 20 \cdot 5 = 135 + 36 + 200 = 371.$$
4. Redukció:
$371 = 2 \cdot 180 + 11 \implies x \equiv 11 \pmod{180}$.
Ellenőrzés:
$11 = 2 \cdot 4 + 3 \equiv 3 \pmod 4$,
$11 = 2 \cdot 5 + 1 \equiv 1 \pmod 5$,
$11 = 1 \cdot 9 + 2 \equiv 2 \pmod 9$.
A megoldás:
$$\mathbf{x \equiv 11 \pmod{180}}.$$

::: elmelet
**Elméleti háttér — Prímhatvány modulusok a CRT-ben.**
A kínai maradéktétel tetszőleges páronként relatív prím modulusokra működik, nem szükséges, hogy a modulusok prímek legyenek; elegendő, ha prímhatványok (mint $4 = 2^2$ és $9 = 3^2$), amelyek különböző prímekhez tartoznak.
:::

## Gy6.18.1. feladat

Határozzuk meg a legkisebb pozitív egész számot, amely 4-gyel osztva 1-et, 5-tel osztva 2-t, 7-tel osztva pedig 4-et ad maradékul!

**Megoldás.**
Kongruenciarendszer:
$x \equiv 1 \pmod 4$,
$x \equiv 2 \pmod 5$,
$x \equiv 4 \pmod 7$.
$M = 4 \cdot 5 \cdot 7 = 140$.
1. Részmodulusok: $M_1 = 35$, $M_2 = 28$, $M_3 = 20$.
2. Inverzek:
- $35 y_1 \equiv 1 \pmod 4 \iff 3 y_1 \equiv 1 \implies y_1 \equiv 3 \pmod 4$.
- $28 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 1 \implies y_2 \equiv 2 \pmod 5$.
- $20 y_3 \equiv 1 \pmod 7 \iff 6 y_3 \equiv 1 \implies y_3 \equiv 6 \pmod 7$.
3. Megoldás:
$$x_0 = 1 \cdot 35 \cdot 3 + 2 \cdot 28 \cdot 2 + 4 \cdot 20 \cdot 6 = 105 + 112 + 480 = 697.$$
4. Redukció:
$697 = 4 \cdot 140 + 137 \implies x \equiv 137 \pmod{140}$.
Ellenőrzés:
$137 = 34 \cdot 4 + 1 \implies 1$,
$137 = 27 \cdot 5 + 2 \implies 2$,
$137 = 19 \cdot 7 + 4 \implies 4$.
A legkisebb pozitív egész szám:
$$\mathbf{137}.$$

::: elmelet
**Elméleti háttér — Pozitív maradék kiválasztása.**
A CRT algoritmus $x_0$ partikuláris megoldása gyakran nagyobb, mint $M$. A legkisebb pozitív reprezentáns az $x_0 \bmod M$ maradék (ha ez pozitív), amely egyértelműen az $\{1, 2, \dots, M\}$ intervallumba esik.
:::

## Gy6.18.2. feladat

Határozzuk meg a legkisebb pozitív egész számot, amely 3-mal osztva 1-et, 5-tel osztva 4-et, 11-gyel osztva pedig 7-et ad maradékul!

**Megoldás.**
Rendszer:
$x \equiv 1 \pmod 3$,
$x \equiv 4 \pmod 5$,
$x \equiv 7 \pmod{11}$.
A közös modulus $M = 3 \cdot 5 \cdot 11 = 165$.
Használjuk a behelyettesítéses módszert:
A harmadik kongruenciából: $x = 11k + 7$.
Behelyettesítve a másodikba mod 5:
$11k + 7 \equiv 4 \pmod 5 \iff k + 2 \equiv 4 \implies k \equiv 2 \pmod 5$.
Így $k = 5t + 2 \implies x = 11(5t + 2) + 7 = 55t + 29$.
Behelyettesítve az elsőbe mod 3:
$55t + 29 \equiv 1 \pmod 3 \iff 1t + 2 \equiv 1 \implies t \equiv -1 \equiv 2 \pmod 3$.
Így $t = 3u + 2 \implies x = 55(3u + 2) + 29 = 165u + 110 + 29 = 165u + 139$.
A legkisebb pozitív megoldás $u = 0$-ra:
$$x = \mathbf{139}.$$
(Ellenőrzés: $139 = 46 \cdot 3 + 1$, $139 = 27 \cdot 5 + 4$, $139 = 12 \cdot 11 + 7$.)

::: elmelet
**Elméleti háttér — Behelyettesítéses módszer szimultán kongruenciákra.**
A kínai maradéktétel standard konstrukciójának kiváló alternatívája a láncolt behelyettesítés: a legnagyobb modulussal kezdve lépésről lépésre elégítjük ki a további kongruenciákat. Ez gyakran lényegesen kevesebb nagy számolást igényel, mint a szimmetrikus formula.
:::

## Gy6.19.1. feladat

Egy hadsereg katonáit felsorakoztatják. Ha 7-esével állnak sorba, 2 marad ki; ha 9-esével, 4 marad ki; ha 11-esével, 6 marad ki. Legalább hány katona van a seregben?

**Megoldás.**
Rendszer:
$N \equiv 2 \pmod 7$,
$N \equiv 4 \pmod 9$,
$N \equiv 6 \pmod{11}$.
$M = 7 \cdot 9 \cdot 11 = 693$.
Részmodulusok:
$M_1 = 99$, $M_2 = 77$, $M_3 = 63$.
Inverzek:
- $99 \equiv 1 \pmod 7 \implies y_1 \equiv 1$.
- $77 \equiv 5 \pmod 9 \implies 5 y_2 \equiv 1 \equiv 10 \implies y_2 \equiv 2$.
- $63 \equiv 8 \equiv -3 \pmod{11} \implies -3 y_3 \equiv 1 \equiv -10 \dots -3 \cdot 7 = -21 \equiv 1 \implies y_3 \equiv 7$.
Megoldás:
$$N_0 = 2 \cdot 99 \cdot 1 + 4 \cdot 77 \cdot 2 + 6 \cdot 63 \cdot 7 = 198 + 616 + 2646 = 3460.$$
Redukció modulo 693:
$3460 = 4 \cdot 693 + 688 \implies N \equiv 688 \pmod{693}$.
(Ellenőrzés: $688 = 98 \cdot 7 + 2$, $688 = 76 \cdot 9 + 4$, $688 = 62 \cdot 11 + 6$.)
Legalább **688 katona** van a seregben.

::: elmelet
**Elméleti háttér — Oszthatósági maradékok és a valós minimum.**
Ha a kongruenciarendszer pozitív egész megoldását keressük egy valós szituációban, a legkisebb lehetséges pozitív érték mindig a $0 < N \le M$ tartományba eső reprezentáns. Ha $N_0 \equiv 0 \pmod M$, akkor a válasz maga $M$ (ha a feladat feltételezi, hogy a létszám nem nulla).
:::

## Gy6.19.2. feladat

Egy könyvtárban a könyveket polcokra rendezik. Ha polconként 5 könyvet tesznek fel, 3 marad kimaradva. Ha polconként 7-et, akkor 5 marad ki, ha pedig 8-at, akkor 1 marad ki. Legalább hány könyv van?

**Megoldás.**
Rendszer:
$N \equiv 3 \pmod 5$,
$N \equiv 5 \pmod 7$,
$N \equiv 1 \pmod 8$.
A modulusok páronként relatív prímek: $M = 5 \cdot 7 \cdot 8 = 280$.
Vegyük észre, hogy $N \equiv 3 \equiv -2 \pmod 5$ és $N \equiv 5 \equiv -2 \pmod 7$!
Ez azt jelenti, hogy $N \equiv -2 \equiv 33 \pmod{35}$.
Legyen $N = 35k + 33$.
Behelyettesítve a harmadikba mod 8:
$35k + 33 \equiv 1 \pmod 8 \iff 3k + 1 \equiv 1 \pmod 8 \iff 3k \equiv 0 \pmod 8 \implies k \equiv 0 \pmod 8$.
Így $k = 8t \implies N = 35(8t) + 33 = 280t + 33$.
A legkisebb pozitív megoldás $t = 0$-ra:
$$N = \mathbf{33}.$$
(Ellenőrzés: $33 = 6 \cdot 5 + 3$, $33 = 4 \cdot 7 + 5$, $33 = 4 \cdot 8 + 1$.)

::: elmelet
**Elméleti háttér — Negatív maradékok felismerése.**
Ha észrevesszük, hogy két kongruencia negatív maradéka azonos ($3 \equiv -2 \pmod 5$ és $5 \equiv -2 \pmod 7$), a modulusaik szorzatára azonnal megkapjuk az összevont kongruenciát: $N \equiv -2 \pmod{35}$, amivel a feladat egy lépésben megoldódik.
:::

## Gy6.20.1. feladat

Oldjuk meg az $x^3 + 2x + 9 \equiv 0 \pmod{27}$ kongruenciát!

**Megoldás.**
Legyen $f(x) = x^3 + 2x + 9$.
1. Modulo 3:
$f(x) \equiv x^3 + 2x \equiv x + 2x = 3x \equiv 0 \pmod 3$.
Mivel minden egészre $x^3 \equiv x \pmod 3$, az egyenlőség $x^3 + 2x \equiv 3x \equiv 0 \pmod 3$ azonosan teljesül minden $x$-re!
Tehát modulo 3 minden maradék gyök: $x \equiv 0, 1, 2 \pmod 3$.

2. Felemelés modulo 9:
$f(x) \equiv x^3 + 2x \pmod 9$ (mivel $9 \equiv 0$).
- $x = 0 \implies f(0) = 0 \equiv 0 \pmod 9 \implies x \equiv 0, 3, 6 \pmod 9$.
- $x = 1 \implies f(1) = 3 \not\equiv 0 \pmod 9$.
- $x = 2 \implies f(2) = 8 + 4 = 12 \equiv 3 \not\equiv 0 \pmod 9$.
Továbbá vizsgáljuk $x = 3t$ értékeit:
$f(3t) = 27t^3 + 6t + 9 \equiv 6t \equiv 0 \pmod 9 \iff 2t \equiv 0 \pmod 3 \implies t \equiv 0 \pmod 3$.
Így $x = 3 \cdot 0 = 0$, tehát modulo 9 az egyetlen gyök $x \equiv 0 \pmod 9$.

3. Felemelés modulo 27:
Legyen $x = 9u$ ($u \in \{0, 1, 2\}$).
$f(9u) = (9u)^3 + 2(9u) + 9 \equiv 18u + 9 \equiv 0 \pmod{27}$.
$18u \equiv -9 \equiv 18 \pmod{27}$.
9-cel osztva:
$2u \equiv 2 \pmod 3 \implies u \equiv 1 \pmod 3$.
Így $x = 9 \cdot 1 = 9 \pmod{27}$.
(Ellenőrzés: $f(9) = 729 + 18 + 9 = 756 = 28 \cdot 27 \equiv 0 \pmod{27}$.)
A megoldás:
$$\mathbf{x \equiv 9 \pmod{27}}.$$

::: elmelet
**Elméleti háttér — Elfajuló esetek prímhatvány felemelésnél.**
Ha $f'(x_0) \equiv 0 \pmod p$, a Hensel-lemma klasszikus alakja nem alkalmazható közvetlenül. Ekkor a gyök vagy egyáltalán nem emelhető fel (nincs megoldás a magasabb hatványra), vagy $p$ darab különböző ágra ágazik szét. A fenti feladatban modulo 3 mind a 3 osztály gyök volt, de csak az $x \equiv 0$ ág emelkedett tovább modulo 9-re és 27-re.
:::

## Gy6.20.2. feladat

Oldjuk meg az $x^2 + x + 7 \equiv 0 \pmod{25}$ kongruenciát!

**Megoldás.**
Legyen $f(x) = x^2 + x + 7$. A modulus $25 = 5^2$.
1. Megoldás modulo 5:
$f(x) \equiv x^2 + x + 2 \equiv 0 \pmod 5$.
Próbáljuk ki a maradékokat:
- $x = 0: 2 \not\equiv 0$,
- $x = 1: 1 + 1 + 2 = 4 \not\equiv 0$,
- $x = 2: 4 + 2 + 2 = 8 \equiv 3 \not\equiv 0$,
- $x = 3: 9 + 3 + 2 = 14 \equiv 4 \not\equiv 0$,
- $x = 4: 16 + 4 + 2 = 22 \equiv 2 \not\equiv 0$.
A kongruenciának már modulo 5 sincs egyetlen megoldása sem!
Mivel bármely modulo 25 megoldásnak modulo 5 is megoldásnak kellene lennie, a kongruenciának **nincs megoldása modulo 25**.
$$\mathbf{\emptyset}.$$

::: elmelet
**Elméleti háttér — Megoldhatatlanság felismerése alacsony modulussal.**
Ha egy polinomkongruenciának nincs megoldása modulo $p$, akkor automatikusan nem létezhet megoldása semmilyen $p^k$ prímhatvány modulusra sem ($k \ge 1$), sőt semmilyen $p$-vel osztható modulusra sem. Ezért a legelső lépés a modulo $p$ vizsgálat, amely azonnal kizárhatja a megoldhatóságot.
:::

---

# Az 7. feladatsorhoz – Megoldások — Determinánsok alaptulajdonságai, Gauss-módszer, kifejtési tétel és permutációk

## Gy7.1.1. feladat

Számítsuk ki a $\begin{vmatrix} 2 & -3 \\ 5 & 1 \end{vmatrix}$ és a $\begin{vmatrix} 1 & 0 & 2 \\ 2 & -1 & 3 \\ 4 & 1 & 8 \end{vmatrix}$ determinánsok értékét Gauss-eliminációval és kifejtéssel is!

**Megoldás.**
1. $2 \times 2$-es determináns:
- Kifejtés: $2 \cdot 1 - (-3) \cdot 5 = 2 + 15 = \mathbf{17}$.
- Gauss: $S_2 \leftarrow S_2 - \frac{5}{2}S_1 \implies \begin{vmatrix} 2 & -3 \\ 0 & \frac{17}{2} \end{vmatrix} = 2 \cdot \frac{17}{2} = \mathbf{17}$.

2. $3 \times 3$-as determináns:
- Gauss-elimináció:
$S_2 \leftarrow S_2 - 2S_1$: $\begin{pmatrix} 0 & -1 & -1 \end{pmatrix}$.
$S_3 \leftarrow S_3 - 4S_1$: $\begin{pmatrix} 0 & 1 & 0 \end{pmatrix}$.
A determináns:
$$\begin{vmatrix} 1 & 0 & 2 \\ 0 & -1 & -1 \\ 0 & 1 & 0 \end{vmatrix}.$$
$S_3 \leftarrow S_3 + S_2$: $\begin{pmatrix} 0 & 0 & -1 \end{pmatrix}$.
A felső háromszög alak:
$$\begin{vmatrix} 1 & 0 & 2 \\ 0 & -1 & -1 \\ 0 & 0 & -1 \end{vmatrix} = 1 \cdot (-1) \cdot (-1) = \mathbf{1}.$$
- Első sor szerinti kifejtés:
$$1 \cdot \begin{vmatrix} -1 & 3 \\ 1 & 8 \end{vmatrix} - 0 + 2 \cdot \begin{vmatrix} 2 & -1 \\ 4 & 1 \end{vmatrix} = 1 \cdot (-8 - 3) + 2(2 - (-4)) = -11 + 2(6) = -11 + 12 = \mathbf{1}.$$

::: elmelet
**Elméleti háttér — Stratégiaválasztás determinánsszámításnál.**
Ha egy sorban vagy oszlopban sok a nulla, a Laplace-kifejtés a leggyorsabb. Ha kevés a nulla, a Gauss-eliminációval 1-2 lépésben nullákat generálunk egy kiszemelt oszlopba, majd kifejtjük a determinánst.
:::

## Gy7.1.2. feladat

Számítsuk ki az alábbi $4 \times 4$-es felső háromszögmátrix determinánsát: $D = \begin{vmatrix} 2 & 1 & 5 & -3 \\ 0 & 3 & 4 & 1 \\ 0 & 0 & -1 & 7 \\ 0 & 0 & 0 & 5 \end{vmatrix}$!

**Megoldás.**
Vegyük észre, hogy a mátrix felső háromszögmátrix, ugyanis a főátló alatti összes elem nulla ($a_{ij} = 0$, ha $i > j$).
A háromszögmátrixok alapvető tétele szerint a determináns értéke pontosan a főátlóban lévő elemek szorzata:
$$D = a_{11} \cdot a_{22} \cdot a_{33} \cdot a_{44}.$$
Behelyettesítve a főátló elemeit:
$$D = 2 \cdot 3 \cdot (-1) \cdot 5 = \mathbf{-30}.$$
(Ez a kifejtési tételből is adódik: egymás után mindig az első oszlop szerint kifejtve minden lépésben csak az $a_{ii}$ tag marad meg.)

::: elmelet
**Elméleti háttér — Háromszögmátrixok determinánsa.**
Felső, alsó háromszögmátrixok és diagonális mátrixok determinánsa kivétel nélkül a főátlóbeli elemek szorzata: $\det A = \prod_{i=1}^n a_{ii}$. A Gauss-elimináció célja a mátrix ilyen alakra transzformálása.
:::

## Gy7.2.1. feladat

Számítsuk ki a $\begin{vmatrix} x & y & y \\ y & x & y \\ y & y & x \end{vmatrix}$ determináns értékét és a $V(1, 2, 3, 4)$ Vandermonde-determinánst!

**Megoldás.**
1. Az $A_3$ mátrixra alkalmazzuk a 7.2(c) formulát $n = 3$, $a = x$, $b = y$ értékekkel:
$$A_3 = (x + (3 - 1)y)(x - y)^{3 - 1} = \mathbf{(x + 2y)(x - y)^2}.$$
(Közvetlenül: oszlopok összeadása után $x+2y$ kiemelhető, majd az 1. sort kivonva a 2. és 3.-ból átlós mátrixot kapunk.)

2. $V(1, 2, 3, 4)$ Vandermonde-determináns:
$$V(1, 2, 3, 4) = \prod_{1 \le i < j \le 4} (y_j - y_i).$$
A 6 darab különbség:
- $(y_2 - y_1) = 2 - 1 = 1$,
- $(y_3 - y_1) = 3 - 1 = 2$,
- $(y_4 - y_1) = 4 - 1 = 3$,
- $(y_3 - y_2) = 3 - 2 = 1$,
- $(y_4 - y_2) = 4 - 2 = 2$,
- $(y_4 - y_3) = 4 - 3 = 1$.
A szorzat:
$$V = 1 \cdot 2 \cdot 3 \cdot 1 \cdot 2 \cdot 1 = \mathbf{12}.$$

::: elmelet
**Elméleti háttér — Vandermonde szorzatfaktorai.**
Az $n$ pontú Vandermonde-determináns értéke $\binom{n}{2}$ darab különbség szorzata. Egymást követő egész számok esetén ($1, 2, \dots, n$) a determináns értéke $\prod_{k=1}^{n-1} k!$, úgynevezett szuperfaktoriális.
:::

## Gy7.2.2. feladat

Számítsuk ki az $n \times n$-es tridiagonális $D_n = \begin{vmatrix} 2 & 1 & 0 & \dots \\ 1 & 2 & 1 & \dots \\ 0 & 1 & 2 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix}$ determináns értékét!

**Megoldás.**
Kifejtve az első sor szerint, a másodikat pedig az első oszlop szerint:
$$D_n = 2 D_{n-1} - 1 \cdot D_{n-2}.$$
Kezdőértékek:
$D_1 = 2$,
$D_2 = \begin{vmatrix} 2 & 1 \\ 1 & 2 \end{vmatrix} = 4 - 1 = 3$,
$D_3 = 2 \cdot 3 - 2 = 4$.
Sejtés: $D_n = n + 1$.
Bizonyítás teljes indukcióval:
- $n = 1, 2$-re igaz.
- Tegyük fel, hogy $D_{k-1} = k$ és $D_{k-2} = k - 1$.
- Ekkor $D_k = 2 D_{k-1} - D_{k-2} = 2k - (k - 1) = k + 1$.
Az indukció elve alapján minden $n \ge 1$-re:
$$\mathbf{D_n = n + 1}.$$

::: elmelet
**Elméleti háttér — Elfajuló karakterisztikus gyökök.**
A $D_n = 2D_{n-1} - D_{n-2}$ rekurzió karakterisztikus egyenlete $\lambda^2 - 2\lambda + 1 = (\lambda - 1)^2 = 0$. Mivel kétszeres gyöke van ($\lambda = 1$), az általános megoldás alakja $D_n = c_1 \cdot 1^n + c_2 \cdot n \cdot 1^n = c_1 + c_2 n$, vagyis számtani sorozat.
:::

## Gy7.3.1. feladat

Legyen $A \in \mathbb{R}^{3 \times 3}$ olyan mátrix, amelyre $\det A = -2$. Számítsuk ki $\det(-2A)$ és $\det(A^3)$ értékét!

**Megoldás.**
1. $\det(-2A)$ kiszámítása:
A mátrix mérete $n = 3$, a skalár $c = -2$.
$$\det(-2A) = (-2)^3 \cdot \det A = (-8) \cdot (-2) = \mathbf{16}.$$

2. $\det(A^3)$ kiszámítása:
A determinánsok szorzástétele szerint $\det(XY) = \det X \cdot \det Y$.
Így tetszőleges pozitív egész kitevőre $\det(A^k) = (\det A)^k$.
$$\det(A^3) = (\det A)^3 = (-2)^3 = \mathbf{-8}.$$

::: elmelet
**Elméleti háttér — Determináns szorzástétele és hatványozás.**
A determináns multiplikatív leképezés: $\det(AB) = \det(A)\det(B)$. Ebből következik, hogy $\det(A^k) = (\det A)^k$, valamint invertálható mátrixra $\det(A^{-1}) = (\det A)^{-1}$. A skalárszorzásra vonatkozó formula ($\det(cA) = c^n \det A$) szintén megkapható ebből, hiszen $cA = (cI_n) A$, és $\det(cI_n) = c^n$.
:::

## Gy7.3.2. feladat

Egy $C \in \mathbb{R}^{5 \times 5}$ mátrix determinánsa 4. Számítsuk ki $\det(2C^{-1})$ értékét!

**Megoldás.**
Alkalmazzuk a homogenitási szabályt a $c = 2$ skalárra és az $n = 5$ méretre:
$$\det(2C^{-1}) = 2^5 \cdot \det(C^{-1}).$$
Mivel $\det(C^{-1}) = \frac{1}{\det C}$:
$$\det(2C^{-1}) = 32 \cdot \frac{1}{4} = \mathbf{8}.$$

::: elmelet
**Elméleti háttér — Skalárral szorzott mátrix determinánsa és az inverz.**

Legyen $A \in \mathbb{R}^{n \times n}$ egy $n \times n$-es mátrix és $c \in \mathbb{R}$ tetszőleges skalár.
A determináns $n$-lineáris tulajdonsága miatt (minden sorból külön-külön kiemelhető a $c$ szorzó):
$$\det(c A) = c^n \det(A).$$
Ha $A$ invertálható ($\det A \neq 0$):
$$\det(A^{-1}) = \frac{1}{\det A} = (\det A)^{-1}.$$
Kombinálva a kettőt: $\det(c A^{-1}) = c^n \det(A^{-1}) = \frac{c^n}{\det A}$.
:::

## Gy7.4.1. feladat

Igazoljuk, hogy ha egy $3 \times 3$-as mátrix elemei $a_{ij} = i + 2j$, akkor determinánsa 0!

**Megoldás.**
Írjuk fel a mátrixot expliciten:
$$A = \begin{pmatrix} 1+2 & 1+4 & 1+6 \\ 2+2 & 2+4 & 2+6 \\ 3+2 & 3+4 & 3+6 \end{pmatrix} = \begin{pmatrix} 3 & 5 & 7 \\ 4 & 6 & 8 \\ 5 & 7 & 9 \end{pmatrix}.$$
Vonjuk ki az első sort a másodikból és a harmadikból:
$$S_2 - S_1 = (1, 1, 1), \qquad S_3 - S_1 = (2, 2, 2).$$
Látható, hogy $S_3 - S_1 = 2(S_2 - S_1) \implies S_3 - 2S_2 + S_1 = 0$.
A sorok lineárisan összefüggnek, ezért:
$$\det A = \mathbf{0}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Lineáris indexfüggvények.**
Ha a mátrix elemei az indexek lineáris függvényei ($a_{ij} = \alpha i + \beta j + \gamma$), akkor a sorok mind a generált $\{(1, \dots, 1), (1, 2, \dots, n)\}$ kétdimenziós altérben fekszenek. Mivel a sorok alterének dimenziója (a mátrix rangja) legfeljebb 2, minden $n \ge 3$ méret esetén a determináns szükségszerűen 0.
:::

## Gy7.4.2. feladat

Legyen $n \ge 3$. Igazoljuk, hogy az $a_{ij} = i + j$ elemekből álló $n \times n$-es mátrix determinánsa 0!

**Megoldás.**
Tekintsük a mátrix első három sorát:
$S_1 = (2, 3, 4, \dots, n+1)$,
$S_2 = (3, 4, 5, \dots, n+2)$,
$S_3 = (4, 5, 6, \dots, n+3)$.
Számítsuk ki az $S_1 - 2S_2 + S_3$ kombinációt:
A $j$-edik komponens:
$$(1 + j) - 2(2 + j) + (3 + j) = 1 + j - 4 - 2j + 3 + j = 0.$$
Ez azt jelenti, hogy $S_1 - 2S_2 + S_3 = \mathbf{0}$.
Mivel találtunk egy nemtriviális (nem csupa nulla együtthatójú) lineáris kombinációt, amely a nullvektort adja, a sorok lineárisan összefüggők.
Ezért:
$$\det A = \mathbf{0}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — A másodrendű differencia eltűnése.**
Ha egy sorozat elsőfokú (számtani sorozat), akkor a szomszédos tagok különbsége konstans, a második különbség pedig azonosan 0: $\Delta^2 x_k = x_{k+2} - 2x_{k+1} + x_k = 0$. Ez közvetlenül garantálja a sorok közötti összefüggést tetszőleges $n \ge 3$ dimenzióra.
:::

## Gy7.5.1. feladat

Egy $n \times n$-es mátrix ($n \ge 3$) minden sora számtani sorozat. Mutassuk meg, hogy a determinánsa 0!

**Megoldás.**
Mivel minden sor számtani sorozat, a $j$-edik oszlop és a szomszédos oszlopok kapcsolata:
$$a_{ij} = a_{i1} + (j - 1)d_i.$$
Tekintsük az első három oszlopot:
$O_1 = (a_{11}, \dots, a_{n1})^T$,
$O_2 = (a_{11} + d_1, \dots, a_{n1} + d_n)^T$,
$O_3 = (a_{11} + 2d_1, \dots, a_{n1} + 2d_n)^T$.
Képezzük az $O_1 - 2O_2 + O_3$ oszlopvektort:
Minden sorban: $a_{i1} - 2(a_{i1} + d_i) + (a_{i1} + 2d_i) = 0$.
Tehát:
$$O_1 - 2O_2 + O_3 = \mathbf{0}.$$
Az oszlopok lineárisan összefüggnek, így $\det A = \mathbf{0}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Oszlop- és sorfüggőség dualitása.**
Mivel $\det(A) = \det(A^T)$, a determináns pontosan ugyanúgy viselkedik az oszlopok lineáris kombinációira, mint a sorokéra. Az oszlopok közötti összefüggés azonnal garantálja a determináns nullaságát.
:::

## Gy7.5.2. feladat

Egy $n \times n$-es mátrix ($n \ge 4$) minden oszlopa egy másodfokú polinom értékeit tartalmazza: $a_{ij} = A_j i^2 + B_j i + C_j$. Mutassuk meg, hogy determinánsa 0!

**Megoldás.**
Másodfokú polinomok esetén a harmadik differencia azonosan nulla:
$$\Delta^3 P(i) = P(i+3) - 3P(i+2) + 3P(i+1) - P(i) = 0.$$
Ezért a mátrix első négy sorára teljesül:
$$S_4 - 3S_3 + 3S_2 - S_1 = \mathbf{0}.$$
Mivel $n \ge 4$, a négy sor létezik a mátrixban.
A sorok lineárisan összefüggnek, így a determináns értéke:
$$\det A = \mathbf{0}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Magasabb rendű differenciák és rangkorlát.**
Tetszőleges $k$-adfokú polinomra $\Delta^{k+1} P = 0$. Emiatt ha a sorok vagy oszlopok $k$-adfokúak, akkor tetszőleges $n \ge k + 2$ méretű mátrix determinánsa mindig 0. Itt $k = 2$, így $n \ge 4$-re $\det = 0$.
:::

## Gy7.6.1. feladat

Egy egész számokból álló négyzetes mátrixban minden sorösszeg páros. Igazoljuk, hogy a mátrix determinánsa is páros szám!

**Megoldás.**
Adjuk az utolsó oszlophoz az összes többi oszlopot: $O_n \leftarrow \sum_{j=1}^n O_j$.
A determináns értéke változatlan marad.
Az új utolsó oszlop $i$-edik eleme a sorösszeg: $\sum_{j=1}^n a_{ij} = 2 k_i$ ($k_i \in \mathbb{Z}$).
Kiemelve a 2-est az utolsó oszlopból:
$$\det A = 2 \cdot \det(O_1, \dots, O_{n-1}, K),$$
ahol a determinánsban szereplő mátrix minden eleme egész szám, így determinánsa egész.
Tehát $\det A$ osztható 2-vel, vagyis páros. $\blacksquare$

::: elmelet
**Elméleti háttér — Paritási invariáns determinánsoknál.**
A $\det A \pmod 2$ vizsgálata a $\mathbb{F}_2$ test feletti algebrának felel meg. Ha minden sorösszeg 0 mod 2, akkor az $(1, 1, \dots, 1)^T$ vektor benne van a jobb oldali magtérben ($A \mathbf{1} \equiv \mathbf{0} \pmod 2$), így a determináns szükségszerűen 0 mod 2.
:::

## Gy7.6.2. feladat

Egy egész elemű mátrixban minden oszlop összege osztható $p$-vel, ahol $p$ prímszám. Igazoljuk, hogy a determináns értéke osztható $p$-vel!

**Megoldás.**
Mivel a transzponált mátrix determinánsa megegyezik az eredetivel ($\det A^T = \det A$), a sorokra vonatkozó tulajdonságok az oszlopokra is érvényesek.
Hajtsuk végre a sorokon a műveletet: adjuk az utolsó sorhoz az összes többi sort:
$$S_n \leftarrow S_1 + S_2 + \dots + S_n.$$
Az új utolsó sor $j$-edik eleme az eredeti mátrix $j$-edik oszlopösszege:
$$\sum_{i=1}^n a_{ij} = p \cdot m_j, \qquad m_j \in \mathbb{Z}.$$
Az utolsó sorból emeljük ki a $p$ tényezőt:
$$\det A = p \cdot \det(S_1^T, \dots, S_{n-1}^T, M^T)^T.$$
Mivel az új mátrix minden eleme egész, determinánsa egész szám.
Így $p \mid \det A$. $\blacksquare$

::: elmelet
**Elméleti háttér — Oszlopösszegek és a transzponálás.**
Mivel az oszlopösszegek a transzponált sorösszegei, a tételt sorösszegekre alkalmazva a transzponált determinánsa osztható $p$-vel, és mivel $\det A = \det A^T$, maga $\det A$ is osztható $p$-vel.
:::

## Gy7.7.1. feladat

Egy $3 \times 3$-as determináns elemei számjegyek. A sorokból balról jobbra kiolvasott háromjegyű számok mindegyike osztható 17-tel. Igazoljuk, hogy a determináns értéke is osztható 17-tel!

**Megoldás.**
Legyenek az oszlopok $O_1, O_2, O_3$.
Hajtsuk végre a harmadik oszlopon a műveletet:
$$O_3 \leftarrow 100 O_1 + 10 O_2 + O_3.$$
Ez a művelet a determináns értékét nem változtatja meg.
Az új harmadik oszlop $i$-edik eleme:
$100 a_{i1} + 10 a_{i2} + a_{i3}$, amely pontosan az $i$-edik sorból balról jobbra kiolvasott háromjegyű szám!
A feltétel szerint mindhárom ilyen szám osztható 17-tel: $17 k_i$ ($k_i \in \mathbb{Z}$).
Kiemelve a 17-et az új harmadik oszlopból:
$$\det A = 17 \cdot \det(O_1, O_2, K),$$
ahol a determináns egész elemű, így értéke egész szám.
Ezért $17 \mid \det A$. $\blacksquare$

::: elmelet
**Elméleti háttér — Sorok és oszlopok helyiértékes kombinációja.**
Ha az oszlopok helyett a sorokból összeolvasott számok oszthatók, akkor oszlopműveleteket alkalmazunk ($O_n \leftarrow \sum 10^{n-j} O_j$), amely ugyanúgy nem változtat a determinánson, és az utolsó oszlopba koncentrálja a számokat.
:::

## Gy7.7.2. feladat

Egy $4 \times 4$-es mátrix oszlopaiból felülről lefelé kiolvasott négyjegyű számok mind oszthatók 19-cel. Igazoljuk, hogy a mátrix determinánsa osztható 19-cel!

**Megoldás.**
Legyenek a sorok $S_1, S_2, S_3, S_4$.
Hajtsuk végre a negyedik soron az alábbi elemi műveletet:
$$S_4 \leftarrow 1000 S_1 + 100 S_2 + 10 S_3 + S_4.$$
A determináns értéke változatlan marad.
Az új negyedik sor $j$-edik eleme:
$$1000 a_{1j} + 100 a_{2j} + 10 a_{3j} + a_{4j} = N_j.$$
A feltétel szerint minden $N_j$ osztható 19-cel: $N_j = 19 k_j$ ($k_j \in \mathbb{Z}$).
A negyedik sorból kiemelve a 19-et:
$$\det A = 19 \cdot \det(S_1^T, S_2^T, S_3^T, K^T)^T.$$
Mivel az új mátrix minden eleme egész, determinánsa egész szám.
Így $19 \mid \det A$. $\blacksquare$

::: elmelet
**Elméleti háttér — Tetszőleges méretű helyiértékes konstrukció.**
A módszer tetszőleges $n \times n$-es mátrixra működik: az utolsó sort $S_n \leftarrow \sum_{k=1}^n 10^{n-k} S_k$ módon helyettesítve az $n$-jegyű számok oszthatósága azonnal átöröklődik a determinánsra.
:::

## Gy7.8.1. feladat

Határozzuk meg a $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 \\ 2 & 4 & 6 & 1 & 3 & 5 \end{pmatrix}$ permutáció inverziószámát és előjelét!

**Megoldás.**
A permutáció második sora: $(2, 4, 6, 1, 3, 5)$.
Számoljuk meg minden elemre a tőle jobbra lévő kisebbeket:
- $2$: utána kisebb az $1$ (1 db),
- $4$: utána kisebb az $1, 3$ (2 db),
- $6$: utána kisebb az $1, 3, 5$ (3 db),
- $1$: utána nincs kisebb (0 db),
- $3$: utána nincs kisebb (0 db),
- $5$: utána nincs kisebb (0 db).
Az inverziók száma:
$$I(\pi) = 1 + 2 + 3 + 0 + 0 + 0 = \mathbf{6}.$$
Mivel az inverziók száma 6 páros, a permutáció **páros**, előjele $\operatorname{sgn}\pi = \mathbf{+1}$.

::: elmelet
**Elméleti háttér — Inverziók és a rendezési algoritmusok.**
Az inverziók száma megegyezik a szomszédos elemek azon cseréinek minimális számával, amelyekkel a permutáció az identitásba (növekvő sorrendbe) rendezhető. A buborékrendezés (bubble sort) pontosan $I(\pi)$ darab cserét hajt végre.
:::

## Gy7.8.2. feladat

Hány inverzió van a $\sigma = (n, 1, 2, \dots, n-1)$ és a $\tau = (2, 3, \dots, n, 1)$ ciklikus eltolásokban?

**Megoldás.**
1. $\sigma = (n, 1, 2, \dots, n-1)$:
Az első elem $n$, amely az összes utána következő elemnél nagyobb. Ez pontosan $n - 1$ darab inverziót jelent.
A többi elem ($1, 2, \dots, n-1$) növekvő sorrendben van, így közöttük 0 darab inverzió található.
Összesen:
$$I(\sigma) = \mathbf{n - 1}.$$

2. $\tau = (2, 3, \dots, n, 1)$:
Az első $n - 1$ elem növekvő sorrendben van egymás között ($2 < 3 < \dots < n$).
Viszont mindegyik nagyobb az utolsó elemnél, az $1$-nél.
Ez minden elemre 1 inverziót ad, vagyis összesen:
$$I(\tau) = \mathbf{n - 1}.$$

::: elmelet
**Elméleti háttér — Egyetlen elem körbeforgatásának inverziószáma.**
Egy elem áthelyezése a sor végéről az elejére (vagy fordítva) pontosan $n - 1$ szomszédos cserével egyenértékű, így az inverziók száma pontosan $n - 1$-gyel nő vagy csökken. Ennek megfelelően az $n$-ciklus előjele $(-1)^{n-1}$.
:::

## Gy7.9.1. feladat

Hány inverzió lehet maximum egy 5 elemű halmaz egy páratlan permutációjában?

**Megoldás.**
Az 5 elemű permutációk maximális lehetséges inverziószáma:
$$I_{\max} = \binom{5}{2} = \frac{5 \cdot 4}{2} = 10.$$
A fordított sorrendű permutáció: $\pi_{\text{rev}} = (5, 4, 3, 2, 1)$, amelyre $I(\pi_{\text{rev}}) = 10$.
Mivel 10 páros szám, a maximális permutáció páros!
Ahhoz, hogy páratlan permutációt kapjunk, az inverziók számának páratlannak kell lennie, így nem lehet 10.
A maximális páratlan érték legfeljebb $10 - 1 = 9$ lehet.
Ez elérhető az utolsó két elem megcserélésével:
$$\pi = (5, 4, 3, 1, 2), \qquad I(\pi) = 9.$$
Mivel 9 páratlan szám, a keresett maximum:
$$\mathbf{9}.$$

::: elmelet
**Elméleti háttér — Maximális inverziószám és a megfordított permutáció.**

Egy $n$ elemű permutációban az inverziók száma a páronként vett rendezési hibákat méri: $0 \le I(\pi) \le \binom{n}{2}$.
- Az egyetlen 0 inverziójú permutáció az identitás: $\mathrm{id} = (1, 2, \dots, n)$;
- A maximális inverziószámú permutáció az elemek teljesen megfordított sorrendje: $\pi_{\max} = (n, n-1, \dots, 2, 1)$.
Ebben minden $(i, j)$ pár ($i < j$) inverziót alkot, így az inverziók száma a lehetséges párok száma:
$$I_{\max} = \binom{n}{2} = \frac{n(n-1)}{2}.$$
$n = 5$ esetén: $\binom{5}{2} = 10$.
:::

## Gy7.9.2. feladat

Határozzuk meg egy 7 elemű halmaz páros, illetve páratlan permutációinak maximális inverziószámát!

**Megoldás.**
A 7 elemű halmaz összes párjának száma:
$$\binom{7}{2} = \frac{7 \cdot 6}{2} = 21.$$
A fordított permutáció $(7, 6, 5, 4, 3, 2, 1)$ inverziószáma 21.
Mivel 21 páratlan szám:
- A **páratlan permutációk** maximális inverziószáma: $\mathbf{21}$.
- A **páros permutációk** nem érhetik el a 21-et, a legnagyobb páros szám a $21 - 1 = 20$.
Például $(7, 6, 5, 4, 3, 1, 2)$ inverziószáma pontosan 20.
A páros permutációk maximális inverziószáma: $\mathbf{20}$.

::: elmelet
**Elméleti háttér — Páros és páratlan permutációk felezése és az alternáló csoport.**

Minden $\pi \in S_n$ ($n \ge 2$) permutáció vagy páros ($I(\pi)$ páros, $\operatorname{sgn}(\pi) = +1$), vagy páratlan ($I(\pi)$ páratlan, $\operatorname{sgn}(\pi) = -1$).
A szignatúra leképezés $\operatorname{sgn}: S_n \to \{+1, -1\}$ egy csoport-homomorfizmus.
Ennek magja az $A_n$ *alternáló csoport* (a páros permutációk részcsoportja).
Mivel tetszőleges transzpozícióval ($ (1 2) $) való szorzás bijekciót létesít a páros és páratlan permutációk között:
$$|A_n| = |S_n \setminus A_n| = \frac{|S_n|}{2} = \frac{n!}{2}.$$
Bármely $n \ge 2$ esetén a permutációk pontosan fele páros, fele páratlan.
:::

## Gy7.10.1. feladat

Adjuk meg a $\sigma = (123)(345)(12)(45)$ permutáció diszjunkt ciklusfelbontását és előjelét!

**Megoldás.**
Kövessük az elemek útját jobbról balra:
- $1 \xrightarrow{(12)} 2 \xrightarrow{(123)} 3$: $1 \mapsto 3$.
- $3 \xrightarrow{(345)} 4 \xrightarrow{} 4$: $3 \mapsto 4$.
- $4 \xrightarrow{(45)} 5 \xrightarrow{(345)} 3 \xrightarrow{(123)} 1$: $4 \mapsto 1$.
- $2 \xrightarrow{(12)} 1 \xrightarrow{(123)} 2$: $2 \mapsto 2$ (fix).
- $5 \xrightarrow{(45)} 4 \xrightarrow{(345)} 5$: $5 \mapsto 5$ (fix).
A diszjunkt ciklusfelbontás:
$$\sigma = \mathbf{(134)}.$$
Előjele: 3-ciklus lévén $(-1)^{3-1} = \mathbf{+1}$ (páros).

::: elmelet
**Elméleti háttér — Jobbról balra kiértékelés szabálya.**
A függvénykompozíció elve alapján a jobbról balra történő követésnél az elemet mindig a legelső olyan ciklus módosítja, amely tartalmazza, majd a kapott képpel lépünk tovább a következő (balra lévő) ciklusokra.
:::

## Gy7.10.2. feladat

Számítsuk ki a $\pi = (12345)^3$ hatvány ciklusfelbontását és előjelét!

**Megoldás.**
Mivel $k = 5$ és a kitevő $m = 3$ relatív prímek ($\operatorname{lnko}(3, 5) = 1$), egy 5-ciklus harmadik hatványa szintén egy 5-ciklus marad!
Lépjünk 3-asával a kör mentén:
$1 \xrightarrow{+3} 4 \xrightarrow{+3} 2 \xrightarrow{+3} 5 \xrightarrow{+3} 3 \xrightarrow{+3} 1$.
A diszjunkt ciklusfelbontás:
$$\pi = \mathbf{(14253)}.$$
Előjele: 5-ciklus, így $(-1)^{5-1} = (-1)^4 = \mathbf{+1}$ (páros).

::: elmelet
**Elméleti háttér — Ciklusok hatványozása és a ciklusszétesés tétele.**

Legyen $\sigma = (a_1 a_2 \dots a_p)$ egy $p$ hosszúságú ciklus.
A $\sigma^k$ hatvány ciklusstruktúráját a kitevő és a ciklushossz legnagyobb közös osztója $d = \gcd(k, p)$ határozza meg:
- $\sigma^k$ pontosan $d$ darab diszjunkt, $p/d$ hosszúságú ciklus szorzatára esik szét.
- Speciálisan, ha $p$ prímszám és $p \nmid k$, akkor $\gcd(k, p) = 1$, így $\sigma^k$ egyetlen, változatlanul $p$ hosszúságú ciklus marad (csak az elemek bejárási sorrendje lépked $k$-asával).
:::

## Gy7.11.1. feladat

Igazoljuk, hogy tetszőleges ciklus felírható közös kezdőpontú transzpozíciók szorzataként is: $(x_1 x_2 \dots x_k) = (x_1 x_k)(x_1 x_{k-1}) \dots (x_1 x_2)$!

**Megoldás.**
Alkalmazzuk a jobbról balra követést a jobb oldalon:
- $x_1 \xrightarrow{(x_1 x_2)} x_2$, a továbbiak nem tartalmazzák $x_2$-t $\implies x_1 \mapsto x_2$.
- $x_i$ ($2 \le i \le k-1$): a jobb oldali tagok nem hatnak rá, amíg el nem éri az $(x_1 x_i)$-t:
  $x_i \xrightarrow{(x_1 x_i)} x_1 \xrightarrow{(x_1 x_{i+1})} x_{i+1}$, a továbbiak nem tartalmazzák $x_{i+1}$-et $\implies x_i \mapsto x_{i+1}$.
- $x_k$: a jobb oldali tagok nem hatnak rá az $(x_1 x_k)$-ig: $x_k \xrightarrow{(x_1 x_k)} x_1 \implies x_k \mapsto x_1$.
A kapott leképezés pontosan az $(x_1 x_2 \dots x_k)$ ciklus. $\blacksquare$

::: elmelet
**Elméleti háttér — Alternatív transzpozíciós felbontások.**
Egy permutáció transzpozíciós felbontása nem egyértelmű, sem a tényezők számára, sem a konkrét transzpozíciókra nézve. Azonban a transzpozíciók számának paritása mindig invariáns, és megegyezik a permutáció paritásával.
:::

## Gy7.11.2. feladat

Írjuk fel az $(1 4 3 2)$ ciklust szomszédos transzpozíciók szorzataként a 7.11 feladat formulája alapján!

**Megoldás.**
Alkalmazzuk közvetlenül a formulát az $x_1 = 1, x_2 = 4, x_3 = 3, x_4 = 2$ sorozatra:
$$(x_1 x_2 \dots x_k) = (x_1 x_2)(x_2 x_3) \dots (x_{k-1} x_k).$$
Behelyettesítve:
$$(1 4 3 2) = \mathbf{(1 4)(4 3)(3 2)}.$$
Ellenőrzés jobbról balra:
- $1 \xrightarrow{(14)} 4$,
- $4 \xrightarrow{(14)} 1 \xrightarrow{} 1 \dots$ várjunk:
  $4 \xrightarrow{(43)} 3$,
  $3 \xrightarrow{(32)} 2 \xrightarrow{(43)} 2 \xrightarrow{} 2$,
  $2 \xrightarrow{(32)} 3 \xrightarrow{(43)} 4 \xrightarrow{(14)} 1$.
Valóban $1 \mapsto 4 \mapsto 3 \mapsto 2 \mapsto 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Permutációk felbontása szomszédos transzpozíciók szorzatára.**

Minden transzpozíció páratlan permutáció ($\operatorname{sgn} = -1$).
Egy $k$ hosszúságú ciklus felbontható $k - 1$ darab transzpozíció szorzatára:
$$(a_1 a_2 \dots a_k) = (a_1 a_k)(a_1 a_{k-1}) \dots (a_1 a_2).$$
A paritása: $\operatorname{sgn} = (-1)^{k-1}$.
Továbbá minden transzpozíció felbontható szomszédos transzpozíciók $(i, i+1)$ szorzatára. Egy permutáció szomszédos transzpozíciókra bontásának minimális lépésszáma pontosan az inverziók száma $I(\pi)$ (buborékrendezés lépésszáma).
:::

## Gy7.12.1. feladat

Konjugáljuk a $\sigma = (123)(45)$ permutációt az $f = (14)(25)$ permutációval a fenti tétel segítségével!

**Megoldás.**
Alkalmazzuk a tételt a diszjunkt ciklusokra:
$$f \sigma f^{-1} = (f(1)\,f(2)\,f(3)) (f(4)\,f(5)).$$
Számítsuk ki az elemek képeit az $f = (14)(25)$ permutáció mellett:
- $f(1) = 4$,
- $f(2) = 5$,
- $f(3) = 3$ (mivel $f$ nem tartalmazza a 3-at),
- $f(4) = 1$,
- $f(5) = 2$.
Behelyettesítve a képeket:
$$f \sigma f^{-1} = \mathbf{(453)(12)} = \mathbf{(345)(12)}.$$
Látható, hogy a konjugált permutáció ciklustípusa szintén $(3, 2)$ maradt.

::: elmelet
**Elméleti háttér — Ciklustípus invarianciája.**
A konjugálás pusztán „átcímkézi” a ciklusok elemeit az $f$ bijekció szerint. Az új ciklusok pontosan olyan hosszúak, mint az eredetiek, így a ciklustípus a konjugált osztályok fundamentális invariánsa.
:::

## Gy7.12.2. feladat

Hány elem van a $\sigma = (12)(345)$ permutáció konjugált osztályában az $S_5$ szimmetrikus csoportban?

**Megoldás.**
A 7.12 tétel szerint $S_5$-ben egy permutáció konjugáltjai pontosan az azonos ciklustípusú permutációk.
Itt a ciklustípus egy 2-ciklus és egy diszjunkt 3-ciklus szorzata az 5 elemű halmazon.
Számoljuk meg az ilyen alakú permutációk számát:
1. Kiválasztjuk a 2-ciklus 2 elemét az 5-ből: $\binom{5}{2} = 10$ lehetőség.
2. A kiválasztott 2 elemből pontosan 1 darab 2-ciklus képezhető: $(a b) = (b a)$.
3. A maradék 3 elemből képezhető 3-ciklusok száma: $(3 - 1)! = 2! = 2$ lehetőség.
Összesen:
$$10 \cdot 1 \cdot 2 = \mathbf{20}.$$
Tehát a konjugált osztály pontosan 20 elemet tartalmaz.

::: elmelet
**Elméleti háttér — Konjugált osztályok mérete $S_n$-ben.**
Egy $(k_1, k_2, \dots)$ ciklustípushoz tartozó elemek száma kombinatorikusan számítható: az alaphalmaz partícióinak száma szorozva az egyes ciklusok lehetséges sorrendjeivel, osztva az azonos hosszúságú ciklusok felcserélhetőségével.
:::

## Gy7.13.1. feladat

Írjuk fel a $\pi = \begin{pmatrix} 1 & 2 & 3 \\ 3 & 1 & 2 \end{pmatrix}$ permutáció $P_\pi$ mátrixát, és határozzuk meg determinánsát!

**Megoldás.**
A permutációs mátrix:
$$P_\pi = \begin{pmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix}.$$
Inverziók száma a $(3, 1, 2)$ sorozatban:
- 3 után kisebb: 1, 2 (2 db),
- 1 után: 0 db,
- 2 után: 0 db.
$I(\pi) = 2$.
A determináns:
$$\det P_\pi = (-1)^{I(\pi)} = (-1)^2 = \mathbf{+1}.$$
(Közvetlen kifejtéssel: $1 \cdot (-1)^{1+3} \cdot \begin{vmatrix} 1 & 0 \\ 0 & 1 \end{vmatrix} = 1 \cdot 1 = 1$.)

::: elmelet
**Elméleti háttér — Kétsoros jelölés és diszjunkt ciklusfelbontás.**

A Cauchy-féle kétsoros jelölésben az első sor az argumentumokat, a második sor az értékeket tartalmazza: $\begin{pmatrix} 1 & 2 & \dots & n \\ \pi(1) & \pi(2) & \dots & \pi(n) \end{pmatrix}$.
Mivel minden permutáció egyértelműen felbontható páronként diszjunkt ciklusok szorzatára:
A ciklusok egymással felcserélhetők (kommutálnak). Az 1 hosszúságú ciklusok a permutáció fixpontjai ($\pi(i) = i$), amelyeket a ciklusos írásmódban gyakran elhagyunk.
:::

## Gy7.13.2. feladat

Igazoljuk, hogy tetszőleges $\pi \in S_n$ permutációra $\det(P_\pi) \in \{+1, -1\}$, és a páros permutációk mátrixai az $SO(n)$ speciális ortogonális csoportba esnek!

**Megoldás.**
1. Mivel $P_\pi$ elemei 0-k és 1-esek, és minden sorban és oszlopban pontosan egy 1-es áll, az oszlopvektorai az ortonormált standard bázis vektorai átrendezve:
$$P_\pi^T P_\pi = I_n.$$
Ezért $P_\pi$ ortogonális mátrix ($P_\pi \in O(n)$).
A determinánsok szorzástétele miatt:
$$\det(P_\pi^T P_\pi) = (\det P_\pi)^2 = \det I_n = 1 \implies \det P_\pi = \pm 1.$$

2. A 7.13 tétel szerint $\det P_\pi = \operatorname{sgn}(\pi)$.
Ha $\pi \in A_n$ páros permutáció, akkor $\operatorname{sgn}(\pi) = +1$, így $\det P_\pi = +1$.
Az $SO(n)$ definíció szerint az $1$ determinánsú ortogonális mátrixok csoportja:
$$SO(n) = \{Q \in O(n) : \det Q = +1\}.$$
Ezért minden páros permutáció mátrixa az $SO(n)$ csoport eleme. $\blacksquare$

::: elmelet
**Elméleti háttér — Permutációs mátrixok és a determináns.**

Egy $\pi \in S_n$ permutációhoz tartozó $P_\pi$ permutációs mátrixban az $i$-edik sor $\pi(i)$-edik eleme 1, minden más eleme 0:
$$(P_\pi)_{ij} = \delta_{\pi(i), j}.$$
A permutációs mátrixok leképezése izomorfizmus a mátrixszorzásra: $P_{\pi \sigma} = P_\sigma P_\pi$.
Mivel $P_\pi$ az identitásmátrix soraiból a $\pi$ permutációval áll elő:
$$\det(P_\pi) = \operatorname{sgn}(\pi) \in \{+1, -1\}.$$
Ez közvetlen hidat képez a determináns Leibniz-formulája és az absztrakt csoportelmélet között.
:::

---

# Az 8. feladatsorhoz – Megoldások — A determináns Leibniz-definíciója, Cramer-szabály, adjungált mátrix és speciális determinánsok

## Gy8.1.1. feladat

Egy $4 \times 4$-es mátrix determinánsában mi lesz az $a_{13}a_{24}a_{31}a_{42}$ és az $a_{31}a_{14}a_{42}a_{23}$ tagok előjele?

**Megoldás.**
1. $a_{13}a_{24}a_{31}a_{42}$:
A sorindexek rendezettek: $1, 2, 3, 4$.
Az oszlopindexek: $\pi = (3, 4, 1, 2)$.
Inverziók:
- 3 után: 1, 2 (2 db),
- 4 után: 1, 2 (2 db),
- 1 után: 0 db,
- 2 után: 0 db.
$I(\pi) = 2 + 2 + 0 + 0 = 4$.
Mivel 4 páros, az előjel: $\mathbf{+}$ (pozitív).

2. $a_{31}a_{14}a_{42}a_{23}$:
Rendezzük sorindex szerint növekvő sorrendbe:
$$a_{14} a_{23} a_{31} a_{42}.$$
Az oszlopindexek: $\sigma = (4, 3, 1, 2)$.
Inverziók:
- 4 után: 3, 1, 2 (3 db),
- 3 után: 1, 2 (2 db),
- 1 után: 0 db,
- 2 után: 0 db.
$I(\sigma) = 3 + 2 + 0 + 0 = 5$.
Mivel 5 páratlan, az előjel: $\mathbf{-}$ (negatív).

::: elmelet
**Elméleti háttér — Rendezés a szorzás kommutativitásával.**
Ha a sorindexek nincsenek rendezve, a legegyszerűbb és legkevésbé hibalehetőséget rejtő módszer a tényezők fizikai átrendezése növekvő sorindexek szerint. Ezt követően a második indexek azonnal kiadják az oszlopputációt.
:::

## Gy8.1.2. feladat

Egy $5 \times 5$-ös mátrix determinánsában határozzuk meg az $a_{15}a_{24}a_{33}a_{42}a_{51}$ és az $a_{13}a_{21}a_{35}a_{44}a_{52}$ tagok előjelét!

**Megoldás.**
1. $a_{15}a_{24}a_{33}a_{42}a_{51}$:
Oszlopindexek: $(5, 4, 3, 2, 1)$, a teljes fordított sorrend $n = 5$-re.
Inverziók száma: $\binom{5}{2} = \frac{5 \cdot 4}{2} = 10$.
Mivel 10 páros, az előjel: $\mathbf{+}$ (pozitív).

2. $a_{13}a_{21}a_{35}a_{44}a_{52}$:
Oszlopindexek: $\pi = (3, 1, 5, 4, 2)$.
Inverziók:
- 3 után: 1, 2 (2 db),
- 1 után: 0 db,
- 5 után: 4, 2 (2 db),
- 4 után: 2 (1 db),
- 2 után: 0 db.
$I(\pi) = 2 + 0 + 2 + 1 + 0 = 5$.
Mivel 5 páratlan, az előjel: $\mathbf{-}$ (negatív).

::: elmelet
**Elméleti háttér — Mellékátlós szorzat előjele $n \times n$-ben.**
A mellékátló elemeinek szorzata ($a_{1n}a_{2,n-1}\dots a_{n1}$) a fordított sorrendű permutációnak felel meg. Ennek inverziószáma $\binom{n}{2} = \frac{n(n-1)}{2}$. Ezért a mellékátló előjele a determinánsban: $+$, ha $n \equiv 0, 1 \pmod 4$, és $-$, ha $n \equiv 2, 3 \pmod 4$.
:::

## Gy8.2.1. feladat

Egy $4 \times 4$-es mátrix 1. és 3. sora megegyezik. Az $a_{12}a_{24}a_{31}a_{43}$ tagot melyik tag ejti ki biztosan a determinánsban?

**Megoldás.**
A feltétel szerint az 1. és 3. sor egyezik meg ($a_{1j} = a_{3j}$ minden $j$-re).
A tag: $a_{12}a_{24}a_{31}a_{43}$.
Cseréljük fel az 1-es és 3-as sorindexeket a tényezőkben:
$$a_{32}a_{24}a_{11}a_{43}.$$
Rendezzük sorindex szerint növekvő sorrendbe:
$$a_{11}a_{24}a_{32}a_{43}.$$
Mivel $a_{12} = a_{32}$ és $a_{31} = a_{11}$, a két szorzat numerikus értéke megegyezik.
Előjelek vizsgálata:
- Eredeti tag oszlopindexei: $\pi = (2, 4, 1, 3)$, inverziók: $(2,1), (4,1), (4,3) \implies I = 3 \implies$ előjel: $-$.
- Új tag oszlopindexei: $\pi' = (1, 4, 2, 3)$, inverziók: $(4,2), (4,3) \implies I = 2 \implies$ előjel: $+$.
A két tag előjele ellentétes, így a keresett kiejtő tag:
$$\mathbf{+ a_{11}a_{24}a_{32}a_{43}}.$$

::: elmelet
**Elméleti háttér — Sorcsere hatása a determinánstagokra.**
Ha két sor egyenlő, a sorindexek transzpozíciójával állítjuk párba a tagokat. A sorindexek rendezése után az oszlopindexek pontosan egy transzpozícióval módosulnak, ami garantálja az ellentétes előjelet.
:::

## Gy8.2.2. feladat

Egy $5 \times 5$-ös mátrix 2. és 4. oszlopa egyenlő. Melyik tag ejti ki az $a_{12}a_{23}a_{34}a_{41}a_{55}$ tagot?

**Megoldás.**
Az oszlopindexek: $\pi = (2, 3, 4, 1, 5)$.
Inverziók: $(2,1), (3,1), (4,1) \implies I = 3 \implies$ előjel: $-$.
Cseréljük fel a 2-es és 4-es oszlopindexeket:
$$\pi' = (4, 3, 2, 1, 5).$$
A hozzá tartozó szorzat:
$$a_{14}a_{23}a_{32}a_{41}a_{55}.$$
Mivel a 2. és 4. oszlop azonos ($a_{12} = a_{14}$ és $a_{34} = a_{32}$), a szorzatok értéke megegyezik.
A $\pi'$ inverziói: $(4,3), (4,2), (4,1), (3,2), (3,1), (2,1) \implies I = 6 \implies$ előjel: $+$.
A kiejtő tag tehát:
$$\mathbf{+ a_{14}a_{23}a_{32}a_{41}a_{55}}.$$

::: elmelet
**Elméleti háttér — Alternáló multilineáris formák és egyenlő oszlopok.**

A determináns a sorai (és oszlopai) szerint *alternáló multilineáris leképezés*:
1. Multilineáris: minden sorában/oszlopában külön-külön lineáris.
2. Alternáló: ha egy mátrixnak két sora (vagy két oszlopa) megegyezik, akkor a determinánsa szükségképpen zérus:
$$A_i = A_j \ (i \neq j) \implies \det(A) = 0.$$
Bizonyítás: Két oszlop felcserélése a determináns előjelét megfordítja ($\det = -\det$). Ha a két oszlop azonos, a mátrix a csere után változatlan marad, így $\det(A) = -\det(A) \implies 2\det(A) = 0 \implies \det(A) = 0$ (karakterisztika $\neq 2$ esetén).
:::

## Gy8.3.1. feladat

Legyen $A \in \mathbb{R}^{4 \times 4}$ olyan mátrix, amelyre $\det A = 7$. Mennyi lesz annak a mátrixnak a determinánsa, amelyet úgy kapunk, hogy a 2. és 4. sort felcseréljük, majd az 1. sort $(-2)$-vel, a 3. sort pedig $5$-tel megszorozzuk?

**Megoldás.**
Kövessük a sorműveletek hatásait:
1. Sorcsere ($S_2 \leftrightarrow S_4$): a determináns megszorzódik $(-1)$-gyel: $7 \cdot (-1) = -7$.
2. Első sor szorzása $(-2)$-vel: megszorzódik $(-2)$-vel: $-7 \cdot (-2) = 14$.
3. Harmadik sor szorzása $5$-tel: megszorzódik $5$-tel: $14 \cdot 5 = 70$.
Az új determináns értéke:
$$\det A' = (-1) \cdot (-2) \cdot 5 \cdot \det A = 10 \cdot 7 = \mathbf{70}.$$

::: elmelet
**Elméleti háttér — Több sorművelet szimultán hatása.**
Mivel minden elemi művelet egy-egy skaláris szorzótényezőt jelent a determinánsra, a végső determináns az eredeti determináns és az egyes lépések szorzóinak szorzata: $\det A' = (\prod c_k) \det A$.
:::

## Gy8.3.2. feladat

Egy $4 \times 4$-es mátrix determinánsa $-4$. Egymás után 3 sorcserét hajtunk végre, majd a mátrix minden elemét megszorozzuk 2-vel. Mennyi lesz az új determináns értéke?

**Megoldás.**
1. Három darab sorcsere:
Minden sorcsere $(-1)$-gyel szorozza a determinánst. 3 sorcsere hatása:
$$(-1)^3 = -1.$$
A determináns: $(-4) \cdot (-1) = 4$.

2. A mátrix minden elemének szorzása 2-vel:
Ez a teljes $4 \times 4$-es mátrix skalárszorzása ($2A'$), amely mind a 4 sor szorzását jelenti:
$$2^4 = 16.$$
A végső determináns:
$$\det A_{\text{új}} = (-1)^3 \cdot 2^4 \cdot \det A = (-1) \cdot 16 \cdot (-4) = \mathbf{64}.$$

::: elmelet
**Elméleti háttér — Sor szorzása vs. teljes mátrix szorzása.**
Lényegi különbség van egyetlen sor szorzása és a teljes mátrix szorzása között: egyetlen sor $c$-vel való szorzása $c$-vel szorozza a determinánst, míg a teljes $n \times n$-es mátrix szorzása $c^n$-nel szorozza meg a determinánst!
:::

## Gy8.4.1. feladat

Legyenek $A$ és $B$ olyan $3 \times 3$-as mátrixok, amelyekre $\det A = 3$ és $\det B = -2$. Számítsuk ki $\det(A^{-1} B^T A^3)$ és $\det(2 A B^{-1})$ értékét!

**Megoldás.**
1. $\det(A^{-1} B^T A^3)$:
$$\det(A^{-1} B^T A^3) = \det(A^{-1}) \cdot \det(B^T) \cdot (\det A)^3 = \frac{1}{3} \cdot (-2) \cdot 3^3 = \frac{1}{3} \cdot (-2) \cdot 27 = -2 \cdot 9 = \mathbf{-18}.$$

2. $\det(2 A B^{-1})$:
A mátrix mérete $n = 3$, így a $c = 2$ skalár $2^3 = 8$ szorzóval emelhető ki:
$$\det(2 A B^{-1}) = 2^3 \cdot \det A \cdot \det(B^{-1}) = 8 \cdot 3 \cdot \left(-\frac{1}{2}\right) = 24 \cdot \left(-\frac{1}{2}\right) = \mathbf{-12}.$$

::: elmelet
**Elméleti háttér — Skalár kiemelése összetett mátrixkifejezésből.**
Ha a kifejezés előtt skalár áll ($\det(c M)$), mindig a mátrix $n$ dimenziója szerinti hatványt ($c^n$) kell kiemelni a szorzat elé, mielőtt a tényezők determinánsait kiszámítanánk.
:::

## Gy8.4.2. feladat

Legyenek $A, B \in \mathbb{R}^{4 \times 4}$ olyan mátrixok, amelyekre $\det A = -1$ és $\det B = 4$. Számítsuk ki a $\det((A^2 B)^T (B^{-1})^2)$ kifejezés értékét!

**Megoldás.**
Alkalmazzuk a szorzástételt:
$$\det((A^2 B)^T (B^{-1})^2) = \det((A^2 B)^T) \cdot \det((B^{-1})^2).$$
Mivel $\det(M^T) = \det M$:
$$\det((A^2 B)^T) = \det(A^2 B) = (\det A)^2 \cdot \det B = (-1)^2 \cdot 4 = 1 \cdot 4 = 4.$$
Továbbá:
$$\det((B^{-1})^2) = (\det(B^{-1}))^2 = \left(\frac{1}{\det B}\right)^2 = \left(\frac{1}{4}\right)^2 = \frac{1}{16}.$$
A szorzat:
$$\det = 4 \cdot \frac{1}{16} = \mathbf{\frac{1}{4}}.$$

::: elmelet
**Elméleti háttér — Transzponálás és hatványozás sorrendje.**
A transzponálás és a hatványozás műveletei felcserélhetők a determinánsszámításban: $\det((A^k)^T) = (\det A)^k$. Ez jelentősen egyszerűsíti a bonyolult zárójelezésű algebrai kifejezések kiértékelését.
:::

## Gy8.5.1. feladat

Legyenek $A, B, C \in \mathbb{R}^{n \times n}$ mátrixok, amelyekre $\det A = 3$, $\det B = -1$, $\det C = 6$. Mennyi $\det(B^5 A C^{-1} B^{-3})$ értéke?

**Megoldás.**
A szorzástétellel a determinánsok szorzatára bontunk:
$$\det(B^5 A C^{-1} B^{-3}) = (\det B)^5 \cdot \det A \cdot (\det C)^{-1} \cdot (\det B)^{-3}.$$
A $\det B$ hatványait összevonva: $(\det B)^5 \cdot (\det B)^{-3} = (\det B)^2$.
Behelyettesítve a számokat:
$$\det = (-1)^2 \cdot 3 \cdot \frac{1}{6} = 1 \cdot \frac{3}{6} = \mathbf{\frac{1}{2}}.$$

::: elmelet
**Elméleti háttér — Hatványok összevonása a determinánsszinten.**
Bár maguk a mátrixhatványok nem cserélhetők fel a szorzatban, a kapott determinánsértékek közönséges valós számok, így az azonos mátrixhoz tartozó kitevők a hatványozás azonosságai szerint egyszerűen összevonhatók.
:::

## Gy8.5.2. feladat

Legyenek $X, Y \in \mathbb{R}^{n \times n}$ mátrixok, amelyekre $\det X = 7$ és $\det Y = 2$. Mennyi a $\det(X Y X^{-1} Y^2 X^2 Y^{-3} X^{-2})$ determináns értéke?

**Megoldás.**
Számoljuk meg az egyes mátrixok összesített kitevőit a determinánsban:
- $X$ kitevői: $1 + (-1) + 2 + (-2) = 0$.
- $Y$ kitevői: $1 + 2 + (-3) = 0$.
A determináns:
$$\det = (\det X)^0 \cdot (\det Y)^0 = 7^0 \cdot 2^0 = 1 \cdot 1 = \mathbf{1}.$$

::: elmelet
**Elméleti háttér — Kommutátorok determinánsa.**
Tetszőleges $X, Y$ invertálható mátrixok kommutátora $[X, Y] = X Y X^{-1} Y^{-1}$. Mivel a determináns homomorfizmus kommutatív célcsoportba, minden kommutátor determinánsa szükségszerűen 1: $\det([X, Y]) = 1$. Tetszőleges olyan kifejezés, amelyben minden mátrix kitevőinek összege 0, 1 determinánst ad.
:::

## Gy8.6.1. feladat

Számítsuk ki a legalkalmasabb kifejtéssel a következő determinánst: $D = \begin{vmatrix} 3 & 1 & 0 & -2 \\ 0 & 0 & 0 & 5 \\ 2 & -1 & 4 & 1 \\ 1 & 0 & 0 & 3 \end{vmatrix}$!

**Megoldás.**
A 2. sorban három nulla áll, egyetlen nem nulla elem az $a_{24} = 5$.
Fejtsük ki a 2. sor szerint:
$$D = 5 \cdot (-1)^{2+4} \begin{vmatrix} 3 & 1 & 0 \\ 2 & -1 & 4 \\ 1 & 0 & 0 \end{vmatrix} = 5 \cdot 1 \cdot \begin{vmatrix} 3 & 1 & 0 \\ 2 & -1 & 4 \\ 1 & 0 & 0 \end{vmatrix}.$$
A megmaradt $3 \times 3$-as determináns 3. sorában két nulla áll, egyetlen nem nulla eleme $a_{31} = 1$:
Fejtsük ki a 3. sor szerint:
$$\begin{vmatrix} 3 & 1 & 0 \\ 2 & -1 & 4 \\ 1 & 0 & 0 \end{vmatrix} = 1 \cdot (-1)^{3+1} \begin{vmatrix} 1 & 0 \\ -1 & 4 \end{vmatrix} = 1 \cdot (4 - 0) = 4.$$
Így a végeredmény:
$$D = 5 \cdot 4 = \mathbf{20}.$$

::: elmelet
**Elméleti háttér — Láncolt kifejtés ritka mátrixokra.**
Ritka (sok nullát tartalmazó) mátrixok esetén a kifejtési lépések egymás után fűzhetők: az $n \times n$-esből $(n-1) \times (n-1)$-es, abból $(n-2) \times (n-2)$-es lesz anélkül, hogy akár egyetlen összetett aldeterminánst is ki kellene számolni.
:::

## Gy8.6.2. feladat

Számítsuk ki a $D = \begin{vmatrix} 0 & 2 & 0 & 0 \\ 4 & -1 & 3 & 2 \\ 0 & 5 & 0 & -3 \\ 1 & 0 & 2 & 0 \end{vmatrix}$ determináns értékét kifejtéssel!

**Megoldás.**
Az 1. sorban három nulla áll: csak az $a_{12} = 2$ nem nulla.
Fejtsük ki az 1. sor szerint:
$$D = 2 \cdot (-1)^{1+2} \begin{vmatrix} 4 & 3 & 2 \\ 0 & 0 & -3 \\ 1 & 2 & 0 \end{vmatrix} = -2 \cdot \begin{vmatrix} 4 & 3 & 2 \\ 0 & 0 & -3 \\ 1 & 2 & 0 \end{vmatrix}.$$
A $3 \times 3$-as determináns 2. sorában két nulla áll: csak az elem a 3. oszlopban nem nulla (értéke $-3$, pozíciója $(2, 3)$):
$$\begin{vmatrix} 4 & 3 & 2 \\ 0 & 0 & -3 \\ 1 & 2 & 0 \end{vmatrix} = (-3) \cdot (-1)^{2+3} \begin{vmatrix} 4 & 3 \\ 1 & 2 \end{vmatrix} = (-3) \cdot (-1) \cdot (8 - 3) = 3 \cdot 5 = 15.$$
A végeredmény:
$$D = -2 \cdot 15 = \mathbf{-30}.$$

::: elmelet
**Elméleti háttér — Előjelek kezelése kettős kifejtésnél.**
Kettős kifejtésnél nagyon ügyeljünk az előjelekre: mindkét lépésben külön-külön figyelembe kell venni az adott részmátrixbeli koordináták szerinti $(-1)^{i+j}$ faktort és magának az elemnek az előjelét is.
:::

## Gy8.7.1. feladat

Határozzuk meg az $A = \begin{pmatrix} 1 & 2 & 0 \\ 0 & 4 & 3 \\ 0 & 0 & 5 \end{pmatrix}$ mátrix inverzében az $(A^{-1})_{12}$ és $(A^{-1})_{23}$ elemeket az adjungált képlettel!

**Megoldás.**
Felső háromszögmátrix, $\det A = 1 \cdot 4 \cdot 5 = 20$.
1. $(A^{-1})_{12} = \frac{A^*_{21}}{\det A}$:
$A^*_{21} = (-1)^{2+1} M_{21} = -\begin{vmatrix} 2 & 0 \\ 0 & 5 \end{vmatrix} = -10$.
$$(A^{-1})_{12} = \frac{-10}{20} = \mathbf{-\frac{1}{2}}.$$

2. $(A^{-1})_{23} = \frac{A^*_{32}}{\det A}$:
$A^*_{32} = (-1)^{3+2} M_{32} = -\begin{vmatrix} 1 & 0 \\ 0 & 3 \end{vmatrix} = -3$.
$$(A^{-1})_{23} = \frac{-3}{20} = \mathbf{-\frac{3}{20}}.$$

::: elmelet
**Elméleti háttér — Indexek transzponálása a képletben.**
A leggyakoribb hiba az indexek elfelejtett megfordítása: az $(A^{-1})_{ij}$ kiszámításához az $A^*_{ji}$ kofaktort kell használni (a sor- és oszlopindex felcserélődik az adjungált definíciójában).
:::

## Gy8.7.2. feladat

Határozzuk meg az $A = \begin{pmatrix} 3 & 1 & 2 \\ 0 & 2 & 1 \\ 0 & 0 & 4 \end{pmatrix}$ mátrix inverzének első sor harmadik elemét, azaz $(A^{-1})_{13}$-at!

**Megoldás.**
$\det A = 3 \cdot 2 \cdot 4 = 24$.
A képlet szerint:
$$(A^{-1})_{13} = \frac{A^*_{31}}{\det A} = \frac{(-1)^{3+1} M_{31}}{\det A} = \frac{M_{31}}{24}.$$
Számítsuk ki $M_{31}$-et (a 3. sor és 1. oszlop elhagyásával):
$$M_{31} = \begin{vmatrix} 1 & 2 \\ 2 & 1 \end{vmatrix} = 1 \cdot 1 - 2 \cdot 2 = 1 - 4 = -3.$$
Így $A^*_{31} = +1 \cdot (-3) = -3$.
Az inverz elem:
$$(A^{-1})_{13} = \frac{-3}{24} = \mathbf{-\frac{1}{8}}.$$

::: elmelet
**Elméleti háttér — Egyetlen inverzelem célzott meghatározása.**
A Kramer- és adjungált formulák legnagyobb előnye elméleti és lokális számításoknál mutatkozik meg: a teljes Gauss–Jordan elimináció helyett egyetlen $2 \times 2$-es aldetermináns kiszámítása elegendő.
:::

## Gy8.8.1. feladat

Oldjuk meg a Cramer-szabállyal a $\begin{cases} 3x - 2y = 7 \\ 2x + 3y = 9 \end{cases}$ egyenletrendszert!

**Megoldás.**
1. $D = \begin{vmatrix} 3 & -2 \\ 2 & 3 \end{vmatrix} = 3 \cdot 3 - (-2) \cdot 2 = 9 + 4 = 13 \neq 0$.
2. $D_x = \begin{vmatrix} 7 & -2 \\ 9 & 3 \end{vmatrix} = 7 \cdot 3 - (-2) \cdot 9 = 21 + 18 = 39$.
3. $D_y = \begin{vmatrix} 3 & 7 \\ 2 & 9 \end{vmatrix} = 3 \cdot 9 - 7 \cdot 2 = 27 - 14 = 13$.
A megoldások:
$$x = \frac{D_x}{D} = \frac{39}{13} = \mathbf{3},$$
$$y = \frac{D_y}{D} = \frac{13}{13} = \mathbf{1}.$$
(Ellenőrzés: $3(3) - 2(1) = 7$, $2(3) + 3(1) = 9$.)

::: elmelet
**Elméleti háttér — Cramer-szabály alkalmazhatósági határa.**
A Cramer-szabály kizárólag akkor alkalmazható, ha a mátrix négyzetes és $\det A \neq 0$. Ha $\det A = 0$, a rendszer vagy ellentmondásos (nincs megoldás, ha valamelyik $D_i \neq 0$), vagy határozatlan (végtelen sok megoldás, ha minden $D_i = 0$).
:::

## Gy8.8.2. feladat

Oldjuk meg a Cramer-szabállyal az alábbi $3 \times 3$-as rendszert: $\begin{cases} x + y + z = 6 \\ 2x - y + z = 3 \\ x + 2y - z = 2 \end{cases}$!

**Megoldás.**
1. Fődetermináns:
$$D = \begin{vmatrix} 1 & 1 & 1 \\ 2 & -1 & 1 \\ 1 & 2 & -1 \end{vmatrix}.$$
Sarrus-szabállyal:
$D = (1 + 1 + 4) - (-1 + 2 - 2) = 6 - (-1) = 7 \neq 0$.

2. $D_x = \begin{vmatrix} 6 & 1 & 1 \\ 3 & -1 & 1 \\ 2 & 2 & -1 \end{vmatrix}$:
$D_x = (6 + 2 + 6) - (-2 + 12 - 3) = 14 - 7 = 7 \implies x = \frac{7}{7} = \mathbf{1}$.

3. $D_y = \begin{vmatrix} 1 & 6 & 1 \\ 2 & 3 & 1 \\ 1 & 2 & -1 \end{vmatrix}$:
$D_y = (-3 + 6 + 4) - (3 + 2 - 12) = 7 - (-7) = 14 \implies y = \frac{14}{7} = \mathbf{2}$.

4. $D_z = \begin{vmatrix} 1 & 1 & 6 \\ 2 & -1 & 3 \\ 1 & 2 & 2 \end{vmatrix}$:
$D_z = (-2 + 3 + 24) - (-6 + 6 + 4) = 25 - 4 = 21 \implies z = \frac{21}{7} = \mathbf{3}$.
A megoldás: **$x = 1, y = 2, z = 3$**.

::: elmelet
**Elméleti háttér — Cramer-szabály háromismeretlenes rendszerekre.**

Egy $3 \times 3$-as $A x = b$ rendszer megoldása a Cramer-szabállyal:
$$x_1 = \frac{\det(A_1)}{\det A}, \quad x_2 = \frac{\det(A_2)}{\det A}, \quad x_3 = \frac{\det(A_3)}{\det A}.$$
Feltétele, hogy a fődetermináns nemnulla: $\det A \neq 0$.
A determinánsok kifejtése $3 \times 3$-as méretre a Sarrus-szabállyal vagy sor szerinti Laplace-kifejtéssel végezhető el. A módszer elméleti jelentősége kiemelkedő, mert a megoldásokat a rendszer együtthatóinak explicit racionális törtfüggvényeként állítja elő.
:::

## Gy8.9.1. feladat

Legyen $U \in \mathbb{C}^{n \times n}$ unitér mátrix (azaz $U^* U = I$, ahol $U^* = \overline{U}^T$). Igazoljuk, hogy $|\det U| = 1$, azaz a determinánsa a komplex egységkörön helyezkedik el!

**Megoldás.**
Vegyük a determinánst: $\det(U^* U) = \det I = 1$.
A szorzástétellel: $\det(U^*) \cdot \det U = 1$.
Tudjuk, hogy $\det(U^*) = \det(\overline{U}^T) = \det(\overline{U}) = \overline{\det U}$.
Ezért:
$$\overline{\det U} \cdot \det U = 1 \iff |\det U|^2 = 1.$$
Mivel $|\det U|$ nemnegatív valós szám:
$$|\det U| = \mathbf{1}.$$
Ez pontosan azt jelenti, hogy $\det U$ a komplex sík origó körüli egységkörén fekszik: $\det U = e^{i\theta}$ ($\theta \in \mathbb{R}$). $\blacksquare$

::: elmelet
**Elméleti háttér — Unitér csoport determinánsa.**
Az $U(n)$ unitér csoport a komplex euklideszi tér izometriáit reprezentálja. A determináns egy szürjektív csoporthomomorfizmus az $U(n)$ csoportból az egységkör $\mathbb{T} = \{z \in \mathbb{C} : |z| = 1\}$ szorzáscsoportjába. A magja az $SU(n)$ speciális unitér csoport ($\det U = 1$).
:::

## Gy8.9.2. feladat

Legyen $A \in \mathbb{R}^{3 \times 3}$ egy $3 \times 3$-as forgatásmátrix ($\det A = 1, A^T A = I$). Igazoljuk, hogy $\lambda = 1$ sajátértéke $A$-nak (Euler tétele a forgástengelyről)!

**Megoldás.**
$\lambda = 1$ akkor és csak akkor sajátérték, ha $\det(A - I) = 0$.
Számítsuk ki $\det(A - I)$-t a transzponált és az ortogonalitás segítségével:
$$\det(A - I) = \det((A - I)^T) = \det(A^T - I).$$
Mivel $A$ ortogonális, $I = A^T A$:
$$\det(A^T - I) = \det(A^T - A^T A) = \det(A^T (I - A)) = \det(A^T) \cdot \det(I - A).$$
Mivel $\det(A^T) = \det A = 1$, és $3 \times 3$-as mátrixban $\det(I - A) = (-1)^3 \det(A - I) = -\det(A - I)$:
$$\det(A - I) = 1 \cdot (-\det(A - I)) = -\det(A - I).$$
Átrendezve:
$$2 \det(A - I) = 0 \iff \det(A - I) = 0.$$
Ez bizonyítja, hogy $\lambda = 1$ sajátérték, így létezik olyan $\mathbf{v} \neq \mathbf{0}$ vektor, amelyre $A \mathbf{v} = \mathbf{v}$ (Euler forgástengelye). $\blacksquare$

::: elmelet
**Elméleti háttér — Euler-féle forgástétel.**
A $\det(I - A) = (-1)^n \det(A - I)$ tulajdonság páratlan $n = 3$ esetén előjelet vált. Ez a tisztán determináns-algebrai levezetés bebizonyítja, hogy minden háromdimenziós forgatásnak van egy fixen maradó iránya (a forgástengely).
:::

## Gy8.10.1. feladat

Döntsük el, hogy az $A = \begin{pmatrix} 3 & 5 \\ 2 & 3 \end{pmatrix}$ és a $B = \begin{pmatrix} 2 & 1 \\ 4 & 3 \end{pmatrix}$ mátrixoknak egész elemű-e az inverze!

**Megoldás.**
Számítsuk ki a determinánsokat:
1. $\det A = 3 \cdot 3 - 5 \cdot 2 = 9 - 10 = -1$.
Mivel $A$ egész elemű és $\det A = -1 \in \{\pm 1\}$, az inverze **egész elemű**!
Valóban: $A^{-1} = \frac{1}{-1}\begin{pmatrix} 3 & -5 \\ -2 & 3 \end{pmatrix} = \begin{pmatrix} -3 & 5 \\ 2 & -3 \end{pmatrix} \in \mathbb{Z}^{2 \times 2}$.

2. $\det B = 2 \cdot 3 - 1 \cdot 4 = 6 - 4 = 2$.
Mivel $\det B = 2 \notin \{\pm 1\}$, a tétel szerint az inverze **nem lehet egész elemű** (osztani kellene 2-vel, így félegészek jelennek meg: $B^{-1} = \begin{pmatrix} 3/2 & -1/2 \\ -2 & 1 \end{pmatrix}$).

::: elmelet
**Elméleti háttér — Unimoduláris diofantoszi invertálhatósági teszt.**

Egy egész elemű $A \in \mathbb{Z}^{n \times n}$ mátrix akkor és csak akkor invertálható az egész számok körében (azaz $A^{-1} \in \mathbb{Z}^{n \times n}$), ha
$$\det(A) \in \{+1, -1\}.$$
*Bizonyítás:*
- Szükségesség: Ha $A$ és $A^{-1}$ egészek, akkor $\det(A)$ és $\det(A^{-1})$ egész számok. Mivel $\det(A)\det(A^{-1}) = \det(I) = 1$, a determinánsnak osztania kell az 1-et $\mathbb{Z}$-ben, így csak $\pm 1$ lehet.
- Elégségesség: Az adjungált mátrix képletéből $A^{-1} = \frac{1}{\det A} \operatorname{adj}(A)$. Mivel $A$ egész elemű, az aldeterminánsokból álló $\operatorname{adj}(A)$ szintén egész elemű. Ha $\det A = \pm 1$, az osztás egész mátrixot eredményez.
:::

## Gy8.10.2. feladat

Igazoljuk, hogy ha $A \in \mathbb{Z}^{n \times n}$ és $\det A = 1$, akkor az $A \mathbf{x} = \mathbf{b}$ egyenletrendszernek tetszőleges egész $\mathbf{b} \in \mathbb{Z}^n$ vektor esetén létezik egész megoldása!

**Megoldás.**
Mivel $\det A = 1 \neq 0$, az egyenletrendszer egyértelmű megoldása:
$$\mathbf{x} = A^{-1} \mathbf{b}.$$
A 8.10 tétel szerint, mivel $A$ egész elemű és $\det A = 1 \in \{\pm 1\}$, az inverz mátrix $A^{-1}$ szintén kizárólag egész számokat tartalmaz:
$$A^{-1} \in \mathbb{Z}^{n \times n}.$$
Egy egész elemű mátrix és egy egész komponensű oszlopvektor szorzata egész számok szorzásából és összeadásából áll, így a kapott $\mathbf{x}$ vektor minden koordinátája egész szám lesz:
$$\mathbf{x} = A^{-1} \mathbf{b} \in \mathbb{Z}^n.$$
Tehát tetszőleges egész jobb oldalra a megoldásvektor garantáltan egész. $\blacksquare$

::: elmelet
**Elméleti háttér — Egész megoldhatóság unimoduláris rendszereknél.**
A Cramer-szabály szerint $x_i = \det A_i / \det A$. Ha $\det A = \pm 1$, a nevező $\pm 1$, így a hányados mindig egész szám, ami garantálja az egész megoldást bármilyen jobb oldalra.
:::

## Gy8.11.1. feladat

Bizonyítsuk be, hogy ha $A$ egy páratlan méretű valós ferdén szimmetrikus mátrix ($A^T = -A$, $A \in \mathbb{R}^{n \times n}$, $n$ páratlan), akkor $\det A = 0$!

**Megoldás.**
Mivel $A^T = -A$, vegyük mindkét oldal determinánsát:
$$\det(A^T) = \det(-A).$$
Tudjuk, hogy $\det(A^T) = \det A$, és $n$ sorból kiemelve $(-1)$-et: $\det(-A) = (-1)^n \det A$.
Így:
$$\det A = (-1)^n \det A.$$
Mivel $n$ páratlan, $(-1)^n = -1$:
$$\det A = -\det A \iff 2 \det A = 0 \iff \mathbf{\det A = 0}.$$
Ezzel az állítást bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Páratlan ferdén szimmetrikus mátrixok elfajulása.**
Minden páratlan dimenziós valós ferdén szimmetrikus mátrix szinguláris (nem invertálható), magtere legalább 1 dimenziós, és $\lambda = 0$ mindig sajátértéke. A nemnulla sajátértékek tisztán képzetes konjugált párokat alkotnak ($\pm i \omega$).
:::

## Gy8.11.2. feladat

Igazoljuk, hogy tetszőleges $n$-re egy $H \in \mathbb{C}^{n \times n}$ Hermite-féle mátrix ($H = \overline{H}^T$) determinánsa valós szám!

**Megoldás.**
A feltétel szerint $H = \overline{H}^T$.
Vegyük mindkét oldal determinánsát:
$$\det H = \det(\overline{H}^T) = \det(\overline{H}) = \overline{\det H}.$$
Egy komplex szám pontosan akkor egyezik meg a saját konjugáltjával, ha képzetes része nulla:
$$\det H = \overline{\det H} \iff \operatorname{Im}(\det H) = 0 \iff \mathbf{\det H \in \mathbb{R}}.$$
Ezzel a tételt bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Hermite-féle mátrixok determinánsa és valós spektrum.**

Egy $H \in \mathbb{C}^{n \times n}$ mátrixot *önadjungáltnak* (vagy Hermite-félének) nevezünk, ha megegyezik a konjugált transzponáltjával:
$$H^* = \overline{H}^T = H.$$
*Alaptétel:* Minden Hermite-féle mátrix sajátértékei valós számok.
Mivel a determináns a sajátértékek szorzata ($\det H = \prod \lambda_i$), egy Hermite-féle mátrix determinánsa szükségképpen valós szám:
$$\det(H) \in \mathbb{R}.$$
Bizonyítás determinánssal: $\det(H) = \det(H^*) = \det(\overline{H}^T) = \det(\overline{H}) = \overline{\det(H)} \implies \det(H) \in \mathbb{R}$.
:::

## Gy8.12.1. feladat

Hogyan változik meg egy $n \times n$-es mátrix determinánsa, ha a sorait és az oszlopait is megfordítjuk (középpontos tükrözés a mátrix középpontjára)?

**Megoldás.**
1. A sorok megfordítása a determinánst $(-1)^{n(n-1)/2}$-szeresére változtatja.
2. Az oszlopok megfordítása függetlenül szintén $(-1)^{n(n-1)/2}$-szeresére változtatja a determinánst.
A két művelet együttes hatása a szorzók szorzata:
$$\left((-1)^{\frac{n(n-1)}{2}}\right) \cdot \left((-1)^{\frac{n(n-1)}{2}}\right) = \left((-1)^{\frac{n(n-1)}{2}}\right)^2 = \mathbf{+1}.$$
Tehát tetszőleges $n$ méret esetén a determináns értéke **nem változik** (változatlan marad). $\blacksquare$

::: elmelet
**Elméleti háttér — Kettős tükrözés determinánsa.**
Mátrixosan a középpontos tükrözés az $A' = J_n A J_n$ szorzatnak felel meg, ahol $J_n$ a mellékátlós egységmátrix. Mivel $\det(J_n A J_n) = (\det J_n)^2 \det A$, és $(\pm 1)^2 = 1$, a determináns sosem változik.
:::

## Gy8.12.2. feladat

Hogyan változik egy $n \times n$-es determináns, ha a sorait ciklikusan eltoljuk lefelé egy pozícióval (azaz az 1. sor a 2.-ba, a 2. a 3.-ba, ..., az $n$-edik az 1. sorba kerül)?

**Megoldás.**
A sorok permutációja egyetlen $n$-ciklus: $\sigma = (1 2 3 \dots n)$.
Egy $n$ hosszú ciklus előjele:
$$\operatorname{sgn}(\sigma) = (-1)^{n - 1}.$$
Ezért a determináns a **$(-1)^{n-1}$-szeresére változik**.
- Ha $n$ páratlan: $n - 1$ páros $\implies$ a determináns **nem változik**.
- Ha $n$ páros: $n - 1$ páratlan $\implies$ a determináns **előjelet vált**.

::: elmelet
**Elméleti háttér — Ciklikus soreltolás paritása.**
Egy ciklikus eltolás $n - 1$ szomszédos sorcserével valósítható meg: az utolsó sort egymás után $n - 1$ cserével a legelső helyre mozgatjuk. Ennek megfelelően a determináns $(-1)^{n-1}$-szeresére változik.
:::

## Gy8.13.1. feladat

Bizonyítsuk be, hogy az alábbi tridiagonális determináns szintén a Fibonacci-számokat állítja elő: $D_n = \begin{vmatrix} 1 & -1 & 0 & \dots \\ 1 & 1 & -1 & \dots \\ 0 & 1 & 1 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix} = F_{n+1}$!

**Megoldás.**
Fejtsük ki az első sor szerint:
$$D_n = 1 \cdot D_{n-1} - (-1) \cdot M_{12} = D_{n-1} + M_{12}.$$
Az $M_{12}$ determináns első oszlopában az első elem 1, alatta csupa 0 áll. Első oszlop szerint kifejtve:
$$M_{12} = 1 \cdot D_{n-2}.$$
Így a rekurzió:
$$D_n = D_{n-1} + D_{n-2}.$$
A kezdőértékek:
$D_1 = 1 = F_2$,
$D_2 = \begin{vmatrix} 1 & -1 \\ 1 & 1 \end{vmatrix} = 1 - (-1) = 2 = F_3$.
Mivel a rekurzió és a kezdőértékek megegyeznek, $D_n = \mathbf{F_{n+1}}$ minden $n \ge 1$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — Előjelek szimmetriája tridiagonális mátrixban.**
A rekurzióban a mellékátlók elemeinek szorzata ($bc$) számít: mindkét esetben $bc = 1 \cdot (-1) = -1$, így a rekurzió mindkét előjel-elrendezésre azonos marad ($D_n = D_{n-1} + D_{n-2}$).
:::

## Gy8.13.2. feladat

Számítsuk ki a $D_n = \begin{vmatrix} 3 & 2 & 0 & \dots \\ 1 & 3 & 2 & \dots \\ 0 & 1 & 3 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix}$ determináns zárt alakját!

**Megoldás.**
A tridiagonális rekurzió paraméterei: $a = 3, b = 2, c = 1 \implies bc = 2$.
A rekurzió:
$$D_n = 3 D_{n-1} - 2 D_{n-2}.$$
Karakterisztikus egyenlet:
$$\lambda^2 - 3\lambda + 2 = 0 \iff (\lambda - 1)(\lambda - 2) = 0 \implies \lambda_1 = 1, \lambda_2 = 2.$$
Az általános megoldás alakja:
$$D_n = c_1 \cdot 1^n + c_2 \cdot 2^n = c_1 + c_2 \cdot 2^n.$$
Kezdőértékek:
$D_1 = 3$,
$D_2 = \begin{vmatrix} 3 & 2 \\ 1 & 3 \end{vmatrix} = 9 - 2 = 7$.
Egyenletrendszer $c_1, c_2$-re:
$c_1 + 2 c_2 = 3$,
$c_1 + 4 c_2 = 7$.
Kivonva a kettőt: $2 c_2 = 4 \implies c_2 = 2$, amiből $c_1 = 3 - 4 = -1$.
A zárt alak tehát:
$$D_n = -1 + 2 \cdot 2^n = \mathbf{2^{n+1} - 1}.$$

::: elmelet
**Elméleti háttér — Tridiagonális determináns zárt alakja karakterisztikus egyenlettel.**
Ha a karakterisztikus gyökök különbözőek ($\lambda_1 \neq \lambda_2$), a tridiagonális determináns mindig $c_1 \lambda_1^n + c_2 \lambda_2^n$ alakban fejezhető ki, ahol a konstansok az első két méret determinánsából határozhatók meg.
:::

---
