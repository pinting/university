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
