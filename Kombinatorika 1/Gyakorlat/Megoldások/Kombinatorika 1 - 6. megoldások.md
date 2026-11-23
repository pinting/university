# Kombinatorika 1 – 6. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

Alapfogalmak és tételek a feladatsorhoz:
- **Séta (walk):** Csúcsok és élek váltakozó sorozata: $v_0, e_1, v_1, e_2, \dots, e_k, v_k$, ahol $e_i = \{v_{i-1}, v_i\}$. A séta hossza az élek száma ($k$). Ismétlődhetnek benne csúcsok és élek is.
- **Vonal (trail):** Olyan séta, amelyben minden él különböző (élismétlés nélküli séta).
- **Út (path):** Olyan séta, amelyben minden csúcs különböző (csúcsismétlés nélküli séta). Minden út vonal is egyben.
- **Zárt séta, zárt vonal (körvonal), kör:** Ha $v_0 = v_k$. A **kör** (cycle) olyan zárt séta ($k \ge 3$), amelyben a kezdő- és végpont kivételével minden csúcs különböző, és minden él különböző.
- **Euler-vonal:**
  - **Zárt Euler-vonal:** Olyan zárt vonal, amely a gráf *minden élét* pontosan egyszer tartalmazza. Létezésének szükséges és elégséges feltétele: a gráf (az izolált csúcsoktól eltekintve) összefüggő, és minden csúcsának foka páros.
  - **Nyílt Euler-vonal:** Olyan nyílt vonal, amely a gráf minden élét pontosan egyszer tartalmazza. Feltétele: a gráf (az izolált csúcsoktól eltekintve) összefüggő, és pontosan két páratlan fokú csúcsa van (a vonal ezek között halad).
- **Hamilton-út és Hamilton-kör:**
  - **Hamilton-út:** Olyan út, amely a gráf *minden csúcsát* pontosan egyszer tartalmazza.
  - **Hamilton-kör:** Olyan kör, amely a gráf minden csúcsát pontosan egyszer tartalmazza.
- **Csúcstörlős szükséges feltétel (Toughness):**
  - Ha $G$-ben van Hamilton-kör, akkor tetszőleges nem üres $S \subset V$ csúcshalmaz elhagyása után a megmaradó gráf komponenseinek száma:
    $$c(G - S) \le |S|.$$
  - Ha $G$-ben van Hamilton-út, akkor tetszőleges $S \subset V$ esetén:
    $$c(G - S) \le |S| + 1.$$
- **Dirac-tétel:** Ha egy $n \ge 3$ csúcsú egyszerű gráfban minden csúcs foka legalább $\frac{n}{2}$ ($\delta(G) \ge \frac{n}{2}$), akkor a gráf tartalmaz Hamilton-kört.
- **Ore-tétel:** Ha egy $n \ge 3$ csúcsú egyszerű gráfban bármely két nem szomszédos $u, v$ csúcsra $d(u) + d(v) \ge n$, akkor a gráf tartalmaz Hamilton-kört.

---

## 89. feladat

Rajzold fel azt az egyszerű gráfot, amelynek csúcsai az $A = \{1, 2, 3\}$ halmaz részhalmazai, és amelyben két *különböző* csúcsot akkor köt össze él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat!

a) Milyen hosszú a legrövidebb séta az $\{1, 2\}$ és az $\{1, 3\}$ csúcs között?

b) Milyen hosszú a leghosszabb út ebben a gráfban?

c) Milyen hosszú a leghosszabb séta a gráfban?

d) Van-e olyan négy hosszú vonal az $\{1, 2\}$ és a $\{2\}$ csúcs között, amely nem út?

e) Van-e négy, öt, illetve hat hosszú kör a gráfban? És olyan hat hosszú zárt vonal (körvonal), amely nem kör?

**Megoldás.**

A gráf csúcshalmaza $\mathcal{P}(\{1, 2, 3\})$, összesen $2^3 = 8$ csúcs:
- $\emptyset$ (0 elemű),
- $\{1\}, \{2\}, \{3\}$ (1 eleműek),
- $\{1, 2\}, \{1, 3\}, \{2, 3\}$ (2 eleműek),
- $\{1, 2, 3\}$ (3 elemű).

Az élek a valódi tartalmazási relációknak felelnek meg:
- Az $\emptyset$ részhalmaza az összes többi 7 részhalmaznak, így foka $d(\emptyset) = 7$.
- Az $\{1, 2, 3\}$ tartalmazza az összes többi 7 részhalmazt, így foka $d(\{1, 2, 3\}) = 7$.
- Bármely $\{i\}$ egyelemű részhalmaz szomszédai: $\emptyset$, $\{1, 2, 3\}$, valamint a két őt tartalmazó kételemű halmaz (foka $1 + 1 + 2 = 4$).
- Bármely $\{i, j\}$ kételemű részhalmaz szomszédai: $\emptyset$, $\{1, 2, 3\}$, valamint az ő két egyelemű részhalmaza $\{i\}$ és $\{j\}$ (foka $1 + 1 + 2 = 4$).

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.05,
  v/.style={circle, draw=black, fill=white, inner sep=2pt, font=\small}
]
  % Csucsok szintenkent (Hasse-diagram elrendezesben)
  \node[v] (empty) at (0, 0) {$\emptyset$};
  
  \node[v] (1) at (-2.5, 1.8) {$\{1\}$};
  \node[v] (2) at (0, 1.8) {$\{2\}$};
  \node[v] (3) at (2.5, 1.8) {$\{3\}$};
  
  \node[v] (12) at (-2.5, 3.6) {$\{1,2\}$};
  \node[v] (13) at (0, 3.6) {$\{1,3\}$};
  \node[v] (23) at (2.5, 3.6) {$\{2,3\}$};
  
  \node[v] (123) at (0, 5.4) {$\{1,2,3\}$};

  % Ures halmazbol indulo elek (mind a 7 csucsba)
  \draw[thick] (empty) -- (1);
  \draw[thick] (empty) -- (2);
  \draw[thick] (empty) -- (3);
  \draw[gray, dashed] (empty) to[bend left=25] (12);
  \draw[gray, dashed] (empty) to[bend right=25] (23);
  \draw[gray, dashed] (empty) to[bend left=10] (13);
  \draw[gray, dashed] (empty) to[bend right=55] (123);

  % 1-es es 2-es szintek kozotti elek
  \draw[thick] (1) -- (12);
  \draw[thick] (1) -- (13);
  \draw[thick] (2) -- (12);
  \draw[thick] (2) -- (23);
  \draw[thick] (3) -- (13);
  \draw[thick] (3) -- (23);

  % Teljes halmazba futo elek (mind a 7 csucsbol)
  \draw[thick] (12) -- (123);
  \draw[thick] (13) -- (123);
  \draw[thick] (23) -- (123);
  \draw[gray, dashed] (1) to[bend left=30] (123);
  \draw[gray, dashed] (2) to[bend right=15] (123);
  \draw[gray, dashed] (3) to[bend right=30] (123);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**a)** Az $\{1, 2\}$ és $\{1, 3\}$ csúcsok nem szomszédosak (egyik sem tartalmazza a másikat), így nem létezik 1 hosszú séta. Létezik viszont 2 hosszú út (és így séta is) köztük, például az $\{1\}$ közös részhalmazon át:
$$\{1, 2\} - \{1\} - \{1, 3\}$$
(továbbá az $\emptyset$ és az $\{1, 2, 3\}$ csúcsokon keresztül is). Tehát a legrövidebb séta hossza **2**.

**b)** Az út definíció szerint nem ismételhet csúcsot. Mivel a gráfnak 8 csúcsa van, egy egyszerű út legfeljebb $8 - 1 = 7$ élből állhat. Megadható 7 hosszú út, amely a gráf összes csúcsát bejárja (Hamilton-út):
$$\{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1\} - \{1, 2\} - \emptyset - \{1, 2, 3\}.$$
Minden szomszédos pár tartalmazza a másikat, és mind a 8 csúcs pontosan egyszer szerepel. Tehát a leghosszabb út hossza **7**.

**c)** A séta ismételhet csúcsokat és éleket is. Mivel a gráf összefüggő és tartalmaz éleket (sőt köröket is), tetszőleges élen ide-oda lépkedve **tetszőlegesen hosszú séta** készíthető (nincs maximális hossz, a hossz tetszőlegesen nagy egész szám lehet).

**d)** **Igen, van.** A vonal élismétlés nélküli séta. Olyan 4 élből álló vonalat keresünk $\{1, 2\}$ és $\{2\}$ között, amelyben legalább egy csúcs ismétlődik.
Tekintsük az alábbi élsorozatot:
1. $e_1 = \{\{1, 2\}, \emptyset\}$
2. $e_2 = \{\emptyset, \{1, 2, 3\}\}$
3. $e_3 = \{\{1, 2, 3\}, \{1, 2\}\}$
4. $e_4 = \{\{1, 2\}, \{2\}\}$

Ez a séta a következő csúcsokat érinti sorrendben:
$$\{1, 2\} \to \emptyset \to \{1, 2, 3\} \to \{1, 2\} \to \{2\}.$$
A 4 él mind különböző, tehát ez egy vonal. Hossza 4, végpontjai $\{1, 2\}$ és $\{2\}$, és a kezdő $\{1, 2\}$ csúcs a 3. lépés után újra megjelenik (csúcsismétlés), így **nem út**.

**e)**
- **4 hosszú kör:** Létezik, például:
  $$\{1\} - \{1, 2\} - \{2\} - \emptyset - \{1\}.$$
  (Mind a 4 csúcs különböző, az egymást követők tartalmazzák egymást).
- **5 hosszú kör:** Létezik, például:
  $$\emptyset - \{1\} - \{1, 2\} - \{1, 2, 3\} - \{2, 3\} - \emptyset.$$
  (5 különböző csúcs, a szomszédosak tartalmazzák egymást: $\emptyset \subset \{1\} \subset \{1, 2\} \subset \{1, 2, 3\} \supset \{2, 3\} \supset \emptyset$).
- **6 hosszú kör:** Létezik, például az 1 és 2 elemű halmazok alternálásával:
  $$\{1\} - \{1, 2\} - \{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1\}.$$
- **6 hosszú zárt vonal, amely nem kör:**
  Két olyan 3 hosszú kört (háromszöget) veszünk, amelyeknek pontosan egy közös csúcsuk van, így élük nem közös. Legyen a közös csúcs az $\emptyset$:
  - 1. háromszög: $\emptyset - \{1\} - \{1, 2\} - \emptyset$ (élek: $\{\emptyset, \{1\}\}$, $\{\{1\}, \{1, 2\}\}$, $\{\{1, 2\}, \emptyset\}$).
  - 2. háromszög: $\emptyset - \{3\} - \{2, 3\} - \emptyset$ (élek: $\{\emptyset, \{3\}\}$, $\{\{3\}, \{2, 3\}\}$, $\{\{2, 3\}, \emptyset\}$).
  Ezek élei mind különbözők. A zárt séta:
  $$\emptyset \to \{1\} \to \{1, 2\} \to \emptyset \to \{3\} \to \{2, 3\} \to \emptyset.$$
  Ez 6 hosszú zárt vonal, de nem kör, mert az $\emptyset$ csúcsot kétszer is érinti a bejárás során.

---

## 90. feladat

a) Van-e olyan hatcsúcsú, 3-reguláris egyszerű gráf, amelyben nincs Hamilton-kör?

b) Mutass példát olyan 3-reguláris egyszerű összefüggő gráfra, amelyben nincs Hamilton-út!

**Megoldás.**

**a)** **Nincs ilyen gráf.**
Legyen $G$ egy 6 csúcsú, 3-reguláris egyszerű gráf.
A komplementere, $\overline{G}$ szintén egyszerű gráf 6 csúcson, és minden csúcsának foka $6 - 1 - 3 = 2$, vagyis $\overline{G}$ 2-reguláris gráf.
A 6 csúcsú 2-reguláris gráfok diszjunkt körök uniói. A 6 felbontásai legalább 3 hosszú körök összegeként:
1. Egyetlen 6 hosszú kör: $\overline{G} \cong C_6$.
2. Két diszjunkt 3 hosszú kör: $\overline{G} \cong C_3 \cup C_3$.

Vizsgáljuk meg mindkét esetet:
1. Ha $\overline{G} \cong C_3 \cup C_3$: ekkor a komplementer gráf a $K_{3,3}$ teljes páros gráf. A $K_{3,3}$ páros gráfban ($A = \{a_1, a_2, a_3\}, B = \{b_1, b_2, b_3\}$) létezik Hamilton-kör, például:
   $$a_1 - b_1 - a_2 - b_2 - a_3 - b_3 - a_1.$$
2. Ha $\overline{G} \cong C_6$: jelölje a komplementer kör csúcsait sorban $1, 2, 3, 4, 5, 6$. Ekkor $G$-ben pontosan azok a csúcspárok vannak összekötve, amelyek nem szomszédosak a $C_6$-ban. Könnyen találunk benne Hamilton-kört:
   $$1 - 3 - 5 - 2 - 6 - 4 - 1.$$
   Ellenőrzés: a használt élek különbségei mod 6: $|3-1|=2$, $|5-3|=2$, $|2-5|=3$, $|6-2|=4 \equiv -2$, $|4-6|=2$, $|1-4|=3$. Egyik sem 1 mod 6, tehát mind élei $G$-nek!

Mivel nincs más 6 csúcsú 3-reguláris egyszerű gráf, **minden 6 csúcsú 3-reguláris egyszerű gráfban van Hamilton-kör**.

**b)** Olyan összefüggő, 3-reguláris egyszerű gráfot keresünk, amelyben nincs Hamilton-út.
Alkalmazzuk a csúcstörlős szükséges feltételt: ha egy gráfban létezik Hamilton-út, akkor tetszőleges $S \subset V$ esetén $c(G - S) \le |S| + 1$.
Ha találunk egy olyan gráfot, amelyben egyetlen csúcs elhagyásával legalább 3 komponens keletkezik ($|S| = 1$ mellett $c(G - S) \ge 3 > 2$), abban nem létezhet Hamilton-út!

**Konstrukció:**
Készítsünk egy olyan 5 csúcsú $H$ részgráfot, amelyben egy kitüntetett $u$ csúcs foka 2, a többi 4 csúcs foka pedig 3:
- Vegyünk 5 csúcsot: $\{u, a, b, c, d\}$.
- Kössük össze a teljes $K_5$ éleivel, majd hagyjunk el belőle 3 élt: az $u$-ból induló $ua$ és $ub$ éleket, valamint a $cd$ élt.
- Ekkor az élek száma $\binom{5}{2} - 3 = 10 - 3 = 7$.
- A fokszámok: $d(u) = 4 - 2 = 2$ (szomszédai $c$ és $d$); $d(a) = 4 - 1 = 3$; $d(b) = 4 - 1 = 3$; $d(c) = 4 - 1 = 3$; $d(d) = 4 - 1 = 3$.
- Tehát $H$-ban $u$ foka 2, minden más csúcs foka 3.

Most vegyünk egy független $w$ csúcsot, és 3 darab diszjunkt másolatot $H$-ból: $H_1, H_2, H_3$, kitüntetett csúcsaik rendre $u_1, u_2, u_3$.
Kössük össze $w$-t az $u_1, u_2, u_3$ csúcsokkal!
- A gráf csúcsszáma $1 + 3 \times 5 = 16$.
- $w$ foka 3 (szomszédai $u_1, u_2, u_3$).
- Minden $u_i$ foka $2 + 1 = 3$ lett.
- A többi csúcs foka már eredetileg is 3 volt.
- A kapott $G$ gráf egyszerű, összefüggő és 3-reguláris!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=0.95,
  v/.style={circle, draw=black, fill=white, inner sep=2pt, font=\small},
  cut/.style={circle, draw=red!80!black, fill=red!15, inner sep=2.5pt, font=\small\bfseries}
]
  % Kozponti vagocsucs
  \node[cut] (w) at (0, 0) {$w$};

  % H1 komponens (felul)
  \begin{scope}[shift={(0, 2.2)}]
    \node[v] (u1) at (0, 0) {$u_1$};
    \node[v] (c1) at (-1.1, 1.0) {$c_1$};
    \node[v] (d1) at (1.1, 1.0) {$d_1$};
    \node[v] (a1) at (-0.7, 2.2) {$a_1$};
    \node[v] (b1) at (0.7, 2.2) {$b_1$};
    \draw (u1) -- (c1); \draw (u1) -- (d1);
    \draw (a1) -- (b1); \draw (a1) -- (c1); \draw (a1) -- (d1);
    \draw (b1) -- (c1); \draw (b1) -- (d1);
  \end{scope}

  % H2 komponens (bal lent)
  \begin{scope}[shift={(-2.8, -1.6)}]
    \node[v] (u2) at (0.8, 0.4) {$u_2$};
    \node[v] (c2) at (-0.2, 1.1) {$c_2$};
    \node[v] (d2) at (0.4, -0.7) {$d_2$};
    \node[v] (a2) at (-1.3, 0.4) {$a_2$};
    \node[v] (b2) at (-0.8, -0.8) {$b_2$};
    \draw (u2) -- (c2); \draw (u2) -- (d2);
    \draw (a2) -- (b2); \draw (a2) -- (c2); \draw (a2) -- (d2);
    \draw (b2) -- (c2); \draw (b2) -- (d2);
  \end{scope}

  % H3 komponens (jobb lent)
  \begin{scope}[shift={(2.8, -1.6)}]
    \node[v] (u3) at (-0.8, 0.4) {$u_3$};
    \node[v] (c3) at (0.2, 1.1) {$c_3$};
    \node[v] (d3) at (-0.4, -0.7) {$d_3$};
    \node[v] (a3) at (1.3, 0.4) {$a_3$};
    \node[v] (b3) at (0.8, -0.8) {$b_3$};
    \draw (u3) -- (c3); \draw (u3) -- (d3);
    \draw (a3) -- (b3); \draw (a3) -- (c3); \draw (a3) -- (d3);
    \draw (b3) -- (c3); \draw (b3) -- (d3);
  \end{scope}

  % w osszekotese a harom komponenssel
  \draw[very thick, red!80!black] (w) -- (u1);
  \draw[very thick, red!80!black] (w) -- (u2);
  \draw[very thick, red!80!black] (w) -- (u3);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Miért nincs benne Hamilton-út?**
Ha elhagyjuk az $S = \{w\}$ egyelemű csúcshalmazt, a $G - \{w\}$ gráf a három független $H_1, H_2, H_3$ komponensre esik szét, így:
$$c(G - \{w\}) = 3 > |\{w\}| + 1 = 2.$$
A csúcstörlős kritérium miatt a gráfban **nem létezhet Hamilton-út**.

---

## 91. feladat

Az alábbi gráfok közül melyekben van nyílt, illetve zárt Euler-vonal? Mindhárom esetben $V = \{1, 2, \dots, 102\}$, és az élhalmaz:

a) $E_1 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 2\}$;

b) $E_2 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 3\}$;

c) $E_3 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \text{ páros}\}$.

**Megoldás.**

Euler tétele szerint egy összefüggő gráfban:
- pontosan akkor van zárt Euler-vonal, ha minden csúcs foka páros;
- pontosan akkor van nyílt Euler-vonal, ha pontosan 2 csúcs foka páratlan (a többi páros).

**a)** $E_1$: az $i$ és $j$ csúcs akkor van összekötve, ha különbségük 1 vagy 2.
A csúcsok fokszámai:
- Az 1-es csúcs szomszédai: 2, 3 $\implies d(1) = 2$ (páros).
- A 2-es csúcs szomszédai: 1, 3, 4 $\implies d(2) = 3$ (**páratlan**).
- Minden $3 \le i \le 100$ csúcs szomszédai: $i-2, i-1, i+1, i+2 \implies d(i) = 4$ (páros).
- A 101-es csúcs szomszédai: 99, 100, 102 $\implies d(101) = 3$ (**páratlan**).
- A 102-es csúcs szomszédai: 100, 101 $\implies d(102) = 2$ (páros).

A gráf összefüggő (az $1 - 2 - 3 - \dots - 102$ út benne van), és pontosan két páratlan fokú csúcsa van (a 2 és a 101).
Ezért a gráfban **zárt Euler-vonal nincs**, de **nyílt Euler-vonal van** (a 2 és a 101 csúcsok között).

**b)** $E_2$: a különbség legfeljebb 3.
A csúcsok fokszámai:
- $d(1) = 3$ (szomszédai: 2, 3, 4) — **páratlan**.
- $d(2) = 4$ (szomszédai: 1, 3, 4, 5) — páros.
- $d(3) = 5$ (szomszédai: 1, 2, 4, 5, 6) — **páratlan**.
- $d(100) = 5$ (szomszédai: 97, 98, 99, 101, 102) — **páratlan**.
- $d(101) = 4$ — páros.
- $d(102) = 3$ — **páratlan**.

A páratlan fokú csúcsok száma legalább 4 (az 1, 3, 100, 102 csúcsok mind páratlanok). Mivel a páratlan csúcsok száma nem 0 és nem 2, a gráfban **sem zárt, sem nyílt Euler-vonal nincs**.

**c)** $E_3$: $j - i$ páros.
Két szám különbsége pontosan akkor páros, ha azonos a paritásuk.
Tehát a páratlan számok mind össze vannak kötve az összes többi páratlan számmal, a páros számok pedig az összes többi páros számmal, de páratlan és páros szám között egyetlen él sincs!
A gráf két diszjunkt teljes gráf uniója: egy $K_{51}$ az $\{1, 3, 5, \dots, 101\}$ halmazon, és egy másik $K_{51}$ a $\{2, 4, 6, \dots, 102\}$ halmazon.
Mivel mindkét komponensben van él ($51 \ge 2$), egyetlen séta sem járhatja be mindkét komponens éleit.
A gráf nem összefüggő (két külön éllel rendelkező komponense van), így **sem zárt, sem nyílt Euler-vonal nincs**.

---

## 92. feladat

Van-e Hamilton-kör az alábbi gráfokban? És Hamilton-út?

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=white, inner sep=2.5pt}
]
  % 1. graf (haziko K4 alappal)
  \begin{scope}[xshift=0cm]
    \node[pt] (T) at (1, 2.5) {};
    \node[pt] (TL) at (0.2, 1.2) {};
    \node[pt] (TR) at (1.8, 1.2) {};
    \node[pt] (BL) at (0.2, 0) {};
    \node[pt] (BR) at (1.8, 0) {};
    \draw (T) -- (TL); \draw (T) -- (TR);
    \draw (TL) -- (TR); \draw (TL) -- (BL); \draw (TR) -- (BR); \draw (BL) -- (BR);
    \draw (TL) -- (BR); \draw (TR) -- (BL);
  \end{scope}

  % 2. graf (ket K4 egy kozos C csuccsal)
  \begin{scope}[xshift=3.8cm, yshift=0.3cm]
    \node[pt] (C) at (1.5, 0.8) {};
    \node[pt] (L_left) at (0, 0.8) {};
    \node[pt] (L_top) at (0.8, 1.5) {};
    \node[pt] (L_bot) at (0.8, 0.1) {};
    \node[pt] (R_right) at (3.0, 0.8) {};
    \node[pt] (R_top) at (2.2, 1.5) {};
    \node[pt] (R_bot) at (2.2, 0.1) {};
    % Bal oldali K4
    \draw (L_left) -- (L_top);
    \draw (L_top) -- (C);
    \draw (C) -- (L_bot);
    \draw (L_bot) -- (L_left);
    \draw (L_left) -- (C);
    \draw (L_top) -- (L_bot);
    % Jobb oldali K4
    \draw (C) -- (R_top);
    \draw (R_top) -- (R_right);
    \draw (R_right) -- (R_bot);
    \draw (R_bot) -- (C);
    \draw (C) -- (R_right);
    \draw (R_top) -- (R_bot);
  \end{scope}

  % 3. graf (ket K4 es also haromszog C csuccsal, TL_left - B_left osszekotessel)
  \begin{scope}[xshift=8.5cm, yshift=0.3cm]
    \node[pt] (C) at (1.5, 1.0) {};
    % felso bal K4
    \node[pt] (TL_top) at (0.9, 2.1) {};
    \node[pt] (TL_left) at (0.2, 1.0) {};
    \node[pt] (TL_mid) at (0.9, 1.4) {};
    \draw (C) -- (TL_top);
    \draw (TL_top) -- (TL_left);
    \draw (TL_left) -- (C);
    \draw (TL_mid) -- (C);
    \draw (TL_mid) -- (TL_top);
    \draw (TL_mid) -- (TL_left);
    % felso jobb K4
    \node[pt] (TR_top) at (2.1, 2.1) {};
    \node[pt] (TR_right) at (2.8, 1.0) {};
    \node[pt] (TR_mid) at (2.1, 1.4) {};
    \draw (C) -- (TR_top);
    \draw (TR_top) -- (TR_right);
    \draw (TR_right) -- (C);
    \draw (TR_mid) -- (C);
    \draw (TR_mid) -- (TR_top);
    \draw (TR_mid) -- (TR_right);
    % also haromszog es javitas
    \node[pt] (B_left) at (0.8, 0.0) {};
    \node[pt] (B_right) at (2.2, 0.0) {};
    \draw (C) -- (B_left);
    \draw (B_left) -- (B_right);
    \draw (B_right) -- (C);
    \draw (TL_left) -- (B_left);
  \end{scope}

  % 4. graf (racs: kulso es belso 8-as negyzet + 4 kullo)
  \begin{scope}[xshift=13.0cm]
    % kulso negyzet
    \node[pt] (O1) at (0, 0) {};
    \node[pt] (O2) at (1.4, 0) {};
    \node[pt] (O3) at (2.8, 0) {};
    \node[pt] (O4) at (2.8, 1.4) {};
    \node[pt] (O5) at (2.8, 2.8) {};
    \node[pt] (O6) at (1.4, 2.8) {};
    \node[pt] (O7) at (0, 2.8) {};
    \node[pt] (O8) at (0, 1.4) {};
    \draw (O1) -- (O2);
    \draw (O2) -- (O3);
    \draw (O3) -- (O4);
    \draw (O4) -- (O5);
    \draw (O5) -- (O6);
    \draw (O6) -- (O7);
    \draw (O7) -- (O8);
    \draw (O8) -- (O1);
    % belso negyzet
    \node[pt] (I1) at (0.6, 0.6) {};
    \node[pt] (I2) at (1.4, 0.6) {};
    \node[pt] (I3) at (2.2, 0.6) {};
    \node[pt] (I4) at (2.2, 1.4) {};
    \node[pt] (I5) at (2.2, 2.2) {};
    \node[pt] (I6) at (1.4, 2.2) {};
    \node[pt] (I7) at (0.6, 2.2) {};
    \node[pt] (I8) at (0.6, 1.4) {};
    \draw (I1) -- (I2);
    \draw (I2) -- (I3);
    \draw (I3) -- (I4);
    \draw (I4) -- (I5);
    \draw (I5) -- (I6);
    \draw (I6) -- (I7);
    \draw (I7) -- (I8);
    \draw (I8) -- (I1);
    % kozeppont es kullok
    \node[pt] (M) at (1.4, 1.4) {};
    \draw (O2) -- (I2); \draw (I2) -- (M); \draw (M) -- (I6); \draw (I6) -- (O6);
    \draw (O8) -- (I8); \draw (I8) -- (M); \draw (M) -- (I4); \draw (I4) -- (O4);
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Megoldás.**

**1. gráf (házikó alakú gráf, 5 csúcs):**
A gráf egy alsó 4 csúcsú teljes részgráfból ($K_4$) és egy felső csúcsból áll, amely a $K_4$ két felső csúcsához kapcsolódik.
Jelölje a csúcsokat: $T$ (felső tetőcsúcs), $TL, TR$ (felső bal és jobb), $BL, BR$ (alsó bal és jobb).
- **Hamilton-kör:** Létezik:
  $$T - TL - BL - BR - TR - T.$$
  Ez az 5 csúcsú egyszerű kör mind az 5 csúcsot tartalmazza.
- **Hamilton-út:** Mivel van Hamilton-kör, annak bármelyik élét elhagyva **Hamilton-út is van**.

**2. gráf (pillangó / két $K_4$ egyetlen közös csúccsal, 7 csúcs):**
A bal oldali 3 csúcs a központi $C$ csúccsal egy $K_4$-et alkot, a jobb oldali 3 csúcs szintén a $C$ csúccsal egy $K_4$-et alkot. A két részgráf kizárólag a $C$ csúcsban találkozik.
- **Hamilton-kör:** Ha elhagyjuk az $S = \{C\}$ csúcsot, a megmaradó gráf 2 komponensre esik: $c(G - \{C\}) = 2 > |\{C\}| = 1$. A csúcstörlős feltétel miatt **nincs Hamilton-kör**.
- **Hamilton-út:** Létezik: bejárjuk a bal oldali $K_4$ három külső csúcsát, átmegyünk $C$-be, majd bejárjuk a jobb oldali $K_4$ három külső csúcsát:
  $$L_1 - L_2 - L_3 - C - R_1 - R_2 - R_3.$$
  Ez 7 csúcsú út, tehát **van Hamilton-út**.

**3. gráf (két $K_4$ és egy háromszög, 9 csúcs):**
A gráfban a központi $C$ csúcshoz két diszjunkt $K_4$ és egy alsó háromszög csatlakozik.
- **Hamilton-kör:** Töröljük az $S = \{C\}$ csúcsot ($|S| = 1$). A jobb oldali $K_4 \setminus \{C\}$ független komponensként leválik, így a megmaradó komponensek száma legalább 2: $c(G - \{C\}) \ge 2 > |\{C\}| = 1$. A csúcstörlős szükséges feltétel megsérülése miatt **nincs Hamilton-kör**.
- **Hamilton-út vizsgálata:**
  - *A javított ábra szerint ($TL_{left} - B_{left}$ összeköttetéssel):* A bal oldali $K_4$ alsó-bal csúcsa és az alsó háromszög bal csúcsa össze van kötve. Ekkor $S = \{C\}$ törlésével a bal oldal és az alsó rész egyetlen 5 csúcsú komponensben marad, a jobb $K_4$ pedig egy 3 csúcsú komponens lesz: $c(G - \{C\}) = 2 \le |S| + 1 = 2$. Ebben a gráfban **létezik Hamilton-út**:
    $$TR_{top} - TR_{mid} - TR_{right} - C - B_{right} - B_{left} - TL_{left} - TL_{top} - TL_{mid}.$$
    Ez mind a 9 csúcsot pontosan egyszer látogatja meg!
  - *Az eredeti (szimmetrikus) feladat szerint (ahol a három blokk kizárólag a $C$ csúcsban érintkezik):* Ekkor $c(G - \{C\}) = 3 > 1 + 1 = 2$, így a csúcstörlős feltétel szerint **Hamilton-út sem létezik** (ezért szerepel a feladatlap jegyzetében a *„Nincs kör, nincs út”* válasz).

**4. gráf (17 csúcsú rács-szerű, koncentrikus körökből álló gráf):**
A gráf csúcsai:
- Külső 8-as kör: $O_1, O_2, \dots, O_8$.
- Belső 8-as kör: $I_1, I_2, \dots, I_8$.
- Középpont: $M$.
Összeköttetések: a páros indexű külső csúcsok össze vannak kötve a megfelelő belső csúcsokkal ($O_{2k} - I_{2k}$), és a 4 belső páros csúcs össze van kötve $M$-mel ($I_{2k} - M$).

*1. észrevétel (Párosság):*
A gráf páros! Színezzük a csúcsokat két színnel ($A$ és $B$):
- $A$ osztály: a külső kör páratlan csúcsai ($O_1, O_3, O_5, O_7$) és a belső kör páros csúcsai ($I_2, I_4, I_6, I_8$). Mérete: $|A| = 4 + 4 = 8$.
- $B$ osztály: a külső kör páros csúcsai ($O_2, O_4, O_6, O_8$), a belső kör páratlan csúcsai ($I_1, I_3, I_5, I_7$), valamint a középpont $M$. Mérete: $|B| = 4 + 4 + 1 = 9$.
Minden él $A$ és $B$ között fut, így a gráf valóban páros.
Mivel a két színosztály elemszáma különböző ($|A| = 8 \ne 9 = |B|$), a gráfban **nem létezhet Hamilton-kör** (hiszen egy Hamilton-kör váltakozva látogatná az $A$ és $B$ osztályokat, amihez $|A| = |B|$ szükséges).

*2. észrevétel (Hamilton-út hiánya csúcstörléssel):*
Tekintsük az $S = \{I_2, I_4, I_6, I_8\}$ csúcshalmazt ($|S| = 4$).
Ha töröljük az $S$-beli 4 csúcsot a gráfból:
- $M$ izolált csúcs lesz (1 komponens),
- $I_1, I_3, I_5, I_7$ mind izolált csúcsok lesznek (4 különálló komponens),
- a külső csúcsok a külső körön keresztül összefüggők maradnak (1 komponens).
Így a komponensek száma:
$$c(G - S) = 1 + 4 + 1 = 6.$$
A Hamilton-út létezésének szükséges feltétele szerint $c(G - S) \le |S| + 1$ kellene legyen, de:
$$6 > 4 + 1 = 5.$$
Tehát a 4. gráfban **Hamilton-út sem létezik**.

---

## 93. feladat

a) Mutass ellenpéldát a Dirac-tétel megfordítására!

b) Mutass olyan gráfot, amelyben van Hamilton-kör, és ezt az Ore-tétel segítségével be tudod bizonyítani, de a Dirac-tétellel nem!

c) Mutasd meg, hogy az Ore-tétel feltétele nem szükséges a Hamilton-kör létezéséhez!

**Megoldás.**

**a)** A Dirac-tétel azt mondja ki, hogy ha egy $n \ge 3$ csúcsú egyszerű gráfban minden csúcs foka $d(v) \ge \frac{n}{2}$, akkor van benne Hamilton-kör.
A tétel megfordítása így hangzana: *„Ha egy egyszerű gráfban van Hamilton-kör, akkor minden csúcs foka legalább $\frac{n}{2}$.”*
**Ellenpélda:** Tetszőleges $C_n$ körgráf, ahol $n \ge 5$ (például $C_5$).
A $C_5$ gráfban van Hamilton-kör (maga a kör), de minden csúcs foka $2$, ami szigorúan kisebb, mint $\frac{n}{2} = \frac{5}{2} = 2.5$. Tehát a megfordítás hamis.

**b)** Olyan gráfot keresünk, amelyre teljesül az Ore-feltétel ($d(u) + d(v) \ge n$ minden nem szomszédos párra), de van olyan csúcsa, amelynek foka kisebb, mint $\frac{n}{2}$ (így a Dirac-tétel nem alkalmazható).
**Példa:** Legyen $n = 5$, és tekintsük a $G$ gráfot az $\{1, 2, 3, 4, 5\}$ csúcshalmazon úgy, hogy a $\{2, 3, 4, 5\}$ csúcsok egy $K_4$-et alkotnak, az $1$-es csúcs pedig csak a $2$ és $3$ csúcsokkal van összekötve.
- Fokszámok:
  $d(1) = 2$,
  $d(2) = 4$,
  $d(3) = 4$,
  $d(4) = 3$,
  $d(5) = 3$.
- Mivel $d(1) = 2 < \frac{5}{2} = 2.5$, a **Dirac-tétel nem alkalmazható**.
- A nem szomszédos csúcspárok kizárólag az $\{1, 4\}$ és $\{1, 5\}$:
  $d(1) + d(4) = 2 + 3 = 5 \ge 5$,
  $d(1) + d(5) = 2 + 3 = 5 \ge 5$.
  Minden nem szomszédos pár fokszámösszege legalább $n = 5$, így az **Ore-tétel alkalmazható**, és garantálja a Hamilton-kör létezését (amely valóban létezik, pl. $1 - 2 - 4 - 5 - 3 - 1$).

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.05,
  v/.style={circle, draw=black, fill=white, inner sep=2.5pt, font=\small}
]
  \node[v, label=left:{$1 \ (\deg=2)$}] (1) at (0, 1.2) {1};
  \node[v, label=above:{$2 \ (\deg=4)$}] (2) at (2, 2.2) {2};
  \node[v, label=below:{$3 \ (\deg=4)$}] (3) at (2, 0.2) {3};
  \node[v, label=above:{$4 \ (\deg=3)$}] (4) at (4, 2.2) {4};
  \node[v, label=below:{$5 \ (\deg=3)$}] (5) at (4, 0.2) {5};

  % 1 csatlakozasa 2-hoz es 3-hoz
  \draw[thick] (1) -- (2);
  \draw[thick] (1) -- (3);

  % {2,3,4,5} K4 reszgraf
  \draw[thick] (2) -- (4) -- (5) -- (3) -- (2);
  \draw[thick] (2) -- (5);
  \draw[thick] (3) -- (4);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**c)** Az Ore-tétel feltétele nem szükséges: tekintsük újra az $n \ge 5$ csúcsú $C_n$ kört (pl. $C_5$).
Van benne Hamilton-kör, de bármely két nem szomszédos csúcs fokszámösszege $2 + 2 = 4 < 5 = n$. Tehát van Hamilton-kör anélkül, hogy az Ore-feltétel teljesülne.

---

## 94. feladat

a) Mutass olyan gráfot, amelyben minden csúcs foka páros, még sincs benne zárt Euler-vonal!

b) Mutass olyan gráfot, amely nem összefüggő, de van benne zárt Euler-vonal!

**Megoldás.**

**a)** Vegyünk két diszjunkt háromszöget: $G = C_3 \cup C_3$.
Ebben a gráfban 6 csúcs van, és minden csúcs foka pontosan 2 (tehát páros). Ennek ellenére nincs zárt Euler-vonal, mivel a gráf nem összefüggő, így egyetlen séta nem tartalmazhatja mindkét diszjunkt háromszög éleit.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.0,
  v/.style={circle, draw=black, fill=white, inner sep=2.5pt}
]
  % 1. C3
  \node[v] (a1) at (0, 0) {};
  \node[v] (a2) at (1.4, 0) {};
  \node[v] (a3) at (0.7, 1.1) {};
  \draw[thick] (a1) -- (a2);
  \draw[thick] (a2) -- (a3);
  \draw[thick] (a3) -- (a1);

  % 2. C3
  \node[v] (b1) at (2.6, 0) {};
  \node[v] (b2) at (4.0, 0) {};
  \node[v] (b3) at (3.3, 1.1) {};
  \draw[thick] (b1) -- (b2);
  \draw[thick] (b2) -- (b3);
  \draw[thick] (b3) -- (b1);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**b)** Euler tétele megengedi, hogy a gráfban legyenek olyan komponensek, amelyek egyetlen izolált csúcsból állnak (nem tartalmaznak élt).
Legyen $G$ egy 3 hosszú kör és egy izolált csúcs uniója:
$$V = \{1, 2, 3, 4\}, \qquad E = \{\{1, 2\}, \{2, 3\}, \{3, 1\}\}.$$
A 4-es csúcs foka 0, így a gráf nem összefüggő (két komponense van: $\{1, 2, 3\}$ és $\{4\}$).
Ugyanakkor az $1 - 2 - 3 - 1$ zárt séta a gráf **összes élét** pontosan egyszer tartalmazza, vagyis definíció szerint zárt Euler-vonal!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.0,
  v/.style={circle, draw=black, fill=white, inner sep=2.5pt, font=\small}
]
  \node[v] (c1) at (0, 0) {1};
  \node[v] (c2) at (1.4, 0) {2};
  \node[v] (c3) at (0.7, 1.1) {3};
  \draw[thick] (c1) -- (c2);
  \draw[thick] (c2) -- (c3);
  \draw[thick] (c3) -- (c1);

  \node[v, fill=gray!20] (c4) at (2.6, 0.5) {4};
\end{tikzpicture}
\end{adjustbox}
\end{center}

---

## 95. feladat

a) Mutass olyan egyszerű gráfot, amelyben nincs Hamilton-út, de a csúcstörlős kritériummal ezt nem lehet kimutatni!

b) Adj analóg példát Hamilton-körre is, legalább három csúcson!

c) Mutass olyan egyszerű gráfot, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör!

**Megoldás.**

**a)** Olyan egyszerű gráfot kell megadnunk, amelyben **nincs Hamilton-út**, de **minden** $S \subset V$ csúcshalmazra teljesül a csúcstörlős szükséges feltétel:
$$c(G - S) \le |S| + 1.$$

**Konstrukció:**
Tekintsünk két kitüntetett csúcsot, $x$-et és $y$-t, amelyeket összekötünk egymással.
Csatoljunk hozzájuk 3 darab független komponenst: $C_1, C_2, C_3$.
Mindegyik $C_i$ legyen egy olyan 4 csúcsú gráf ($v_{i,1}, v_{i,2}, v_{i,3}, v_{i,4}$), amely a $K_4$-ből egyetlen él elhagyásával keletkezik (a hiányzó él $\{v_{i,2}, v_{i,4}\}$).
Mindhárom komponensben $x$-et kössük össze $v_{i,1}$-gyel, $y$-t pedig $v_{i,3}$-mal.
A gráf összesen $2 + 3 \times 4 = 14$ csúcsú.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=0.95,
  pt/.style={circle, draw=black, fill=white, inner sep=2.2pt, font=\small},
  hub/.style={circle, draw=black, fill=blue!15, inner sep=2.5pt, font=\small\bfseries}
]
  % Kituntetett csucsok: x es y
  \node[hub] (x) at (-1.5, 2.5) {$x$};
  \node[hub] (y) at (1.5, 2.5) {$y$};
  \draw[very thick] (x) -- (y);

  % C1 komponens (bal)
  \node[pt] (v11) at (-3.8, 1.1) {$v_{1,1}$};
  \node[pt] (v13) at (-2.6, 1.1) {$v_{1,3}$};
  \node[pt] (v12) at (-4.2, 0.0) {$v_{1,2}$};
  \node[pt] (v14) at (-2.2, 0.0) {$v_{1,4}$};
  \draw[thick] (v11) -- (v12) -- (v13) -- (v14) -- (v11);
  \draw[thick] (v11) -- (v13);
  \draw[thick, blue!80!black] (x) -- (v11);
  \draw[thick, blue!80!black] (y) -- (v13);

  % C2 komponens (kozep)
  \node[pt] (v21) at (-0.6, 1.1) {$v_{2,1}$};
  \node[pt] (v23) at (0.6, 1.1) {$v_{2,3}$};
  \node[pt] (v22) at (-1.0, 0.0) {$v_{2,2}$};
  \node[pt] (v24) at (1.0, 0.0) {$v_{2,4}$};
  \draw[thick] (v21) -- (v22) -- (v23) -- (v24) -- (v21);
  \draw[thick] (v21) -- (v23);
  \draw[thick, blue!80!black] (x) -- (v21);
  \draw[thick, blue!80!black] (y) -- (v23);

  % C3 komponens (jobb)
  \node[pt] (v31) at (2.6, 1.1) {$v_{3,1}$};
  \node[pt] (v33) at (3.8, 1.1) {$v_{3,3}$};
  \node[pt] (v32) at (2.2, 0.0) {$v_{3,2}$};
  \node[pt] (v34) at (4.2, 0.0) {$v_{3,4}$};
  \draw[thick] (v31) -- (v32) -- (v33) -- (v34) -- (v31);
  \draw[thick] (v31) -- (v33);
  \draw[thick, blue!80!black] (x) -- (v31);
  \draw[thick, blue!80!black] (y) -- (v33);
\end{tikzpicture}
\end{adjustbox}
\end{center}

*Miért nincs benne Hamilton-út?*
Egy Hamilton-útnak mindhárom $C_1, C_2, C_3$ komponenst be kell járnia. Mivel a komponensek között csak $x$-en és $y$-on keresztül lehet átjárni, és egy út $x$-et legfeljebb egyszer, $y$-t is legfeljebb egyszer érintheti:
- Legfeljebb két komponens tartalmazhatja az út végpontjait (egyikben indul, másikban végződik).
- A harmadik (közbenső) komponensbe az útnak az egyik kitüntetett csúcson (pl. $x$-en át $v_{i,1}$-nél) be kell lépnie, és a másikon (pl. $y$-on át $v_{i,3}$-nál) ki kell lépnie, miközben bejárja a komponens *összes* csúcsát!
Azonban a $K_4 \setminus \{v_{i,2}, v_{i,4}\}$ gráfban a $v_{i,2}$ és $v_{i,4}$ csúcsok szomszédai kizárólag a $\{v_{i,1}, v_{i,3}\}$ csúcspár. Ezért bármely $v_{i,1}$-ből induló és $v_{i,3}$-ban végződő egyszerű út legfeljebb az egyiküket tudja meglátogatni ($v_{i,1} - v_{i,2} - v_{i,3}$ vagy $v_{i,1} - v_{i,4} - v_{i,3}$), de mindkettőt egyszerre sosem!
Így egyik komponens sem tud közbenső komponensként viselkedni, tehát a gráfban **nincs Hamilton-út**.

*Miért nem mutatja ezt ki a csúcstörlős feltétel?*
Az $S = \{x, y\}$ törlésével ($|S| = 2$) a megmaradó gráf komponenseinek száma 3 ($C_1, C_2, C_3$).
A feltétel szerint $c(G - S) \le |S| + 1 = 2 + 1 = 3$, ami teljesül!
Minden más $S$ részhalmazra szintén igazolható (akár gépi ellenőrzéssel is), hogy $c(G - S) \le |S| + 1$, tehát a csúcstörlős feltétellel a Hamilton-út hiánya nem mutatható ki.

**b)** Hamilton-körre az analóg tulajdonság: a gráfban nincs Hamilton-kör, de minden $S \subset V$ esetén $c(G - S) \le |S|$.
A klasszikus példa a **Petersen-gráf** ($n = 10$ csúcs, 15 él):
- Ismert tétel, hogy a Petersen-gráfban **nincs Hamilton-kör** (például a külső 5-szög és belső 5-ágú csillag közötti küllők paritásos számlálásával igazolható).
- Ugyanakkor a Petersen-gráf 3-szorosan összefüggő, és tetszőleges $S \subset V$ csúcshalmazra $c(G - S) \le |S|$, vagyis a csúcstörlős kritérium nem tudja kimutatni a Hamilton-kör hiányát.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.0,
  v/.style={circle, draw=black, fill=white, inner sep=2.5pt}
]
  % Kulso 5-szog
  \foreach \i in {1,...,5} {
    \node[v] (O\i) at ({90 + (\i-1)*72}:2.2) {};
  }
  \draw[thick] (O1) -- (O2) -- (O3) -- (O4) -- (O5) -- (O1);

  % Belso 5-szog / csillag
  \foreach \i in {1,...,5} {
    \node[v] (I\i) at ({90 + (\i-1)*72}:1.1) {};
  }
  \draw[thick] (I1) -- (I3) -- (I5) -- (I2) -- (I4) -- (I1);

  % Kullok
  \foreach \i in {1,...,5} {
    \draw[thick] (O\i) -- (I\i);
  }
\end{tikzpicture}
\end{adjustbox}
\end{center}

**c)** Olyan gráfot keresünk, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör.
**Példa:** A „pillangó gráf” (két háromszög egy közös csúccsal):
Legyen $V = \{v, a_1, a_2, b_1, b_2\}$, és az élek a két háromszög élei: $v - a_1 - a_2 - v$ és $v - b_1 - b_2 - v$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.0,
  v/.style={circle, draw=black, fill=white, inner sep=2.5pt, font=\small}
]
  \node[v, fill=red!15] (v) at (0, 0) {$v$};
  \node[v] (a1) at (-1.8, 0.9) {$a_1$};
  \node[v] (a2) at (-1.8, -0.9) {$a_2$};
  \node[v] (b1) at (1.8, 0.9) {$b_1$};
  \node[v] (b2) at (1.8, -0.9) {$b_2$};

  \draw[thick] (v) -- (a1);
  \draw[thick] (a1) -- (a2);
  \draw[thick] (a2) -- (v);
  \draw[thick] (v) -- (b1);
  \draw[thick] (b1) -- (b2);
  \draw[thick] (b2) -- (v);
\end{tikzpicture}
\end{adjustbox}
\end{center}
- **Zárt Euler-vonal:** Minden csúcs foka páros ($d(v) = 4$, $d(a_1) = d(a_2) = d(b_1) = d(b_2) = 2$), és a gráf összefüggő, így van zárt Euler-vonal:
  $$v - a_1 - a_2 - v - b_1 - b_2 - v.$$
- **Hamilton-út:** Létezik:
  $$a_1 - a_2 - v - b_1 - b_2.$$
  Ez mind az 5 csúcsot bejárja.
- **Hamilton-kör nincs:** Ha töröljük a $v$ csúcsot, a gráf 2 komponensre esik ($c(G - \{v\}) = 2 > |\{v\}| = 1$), így a csúcstörlős feltétel miatt nem tartalmazhat Hamilton-kört.

---

## 96. feladat

A bal oldali palotaalaprajz szerint a) legkevesebb hány ajtót kell befalazni ahhoz, hogy tehessünk olyan sétát, amely során minden megmaradó ajtón pontosan egyszer megyünk át? b) És ha még vissza is akarunk érni a kiindulási terembe?

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.85]
  % Kulso fal
  \draw[very thick] (0, 0) rectangle (8, 4);

  % Fuggoleges falak
  \draw[thick] (1.5, 0) -- (1.5, 0.26);
  \draw[thick] (1.5, 0.76) -- (1.5, 1.26);
  \draw[thick] (1.5, 1.76) -- (1.5, 2.26);
  \draw[thick] (1.5, 2.76) -- (1.5, 3.26);
  \draw[thick] (1.5, 3.76) -- (1.5, 4);

  \draw[thick] (3, 1) -- (3, 1.26);
  \draw[thick] (3, 1.76) -- (3, 2.26);
  \draw[thick] (3, 2.76) -- (3, 3);

  \draw[thick] (4, 0) -- (4, 1.26);
  \draw[thick] (4, 1.76) -- (4, 2.26);
  \draw[thick] (4, 2.76) -- (4, 4);

  \draw[thick] (5, 1) -- (5, 1.26);
  \draw[thick] (5, 1.76) -- (5, 2.26);
  \draw[thick] (5, 2.76) -- (5, 3);

  \draw[thick] (6.5, 0) -- (6.5, 0.26);
  \draw[thick] (6.5, 0.76) -- (6.5, 1.26);
  \draw[thick] (6.5, 1.76) -- (6.5, 2.26);
  \draw[thick] (6.5, 2.76) -- (6.5, 3.26);
  \draw[thick] (6.5, 3.76) -- (6.5, 4);

  % Vizszintes falak
  \draw[thick] (0, 2) -- (0.16, 2);
  \draw[thick] (0.56, 2) -- (0.96, 2);
  \draw[thick] (1.36, 2) -- (1.5, 2);

  \draw[thick] (1.5, 1) -- (3.26, 1);
  \draw[thick] (3.76, 1) -- (4.26, 1);
  \draw[thick] (4.76, 1) -- (6.5, 1);

  \draw[thick] (3, 2) -- (5, 2);

  \draw[thick] (1.5, 3) -- (3.26, 3);
  \draw[thick] (3.76, 3) -- (4.26, 3);
  \draw[thick] (4.76, 3) -- (6.5, 3);

  \draw[thick] (6.5, 2) -- (6.66, 2);
  \draw[thick] (7.06, 2) -- (7.46, 2);
  \draw[thick] (7.86, 2) -- (8, 2);

  % Ajtok zaro vonalai
  \draw (0.16, 1.85) -- (0.16, 2.15); \draw (0.56, 1.85) -- (0.56, 2.15);
  \draw (0.96, 1.85) -- (0.96, 2.15); \draw (1.36, 1.85) -- (1.36, 2.15);
  \draw (6.66, 1.85) -- (6.66, 2.15); \draw (7.06, 1.85) -- (7.06, 2.15);
  \draw (7.46, 1.85) -- (7.46, 2.15); \draw (7.86, 1.85) -- (7.86, 2.15);
  \draw (1.35, 0.26) -- (1.65, 0.26); \draw (1.35, 0.76) -- (1.65, 0.76);
  \draw (1.35, 1.26) -- (1.65, 1.26); \draw (1.35, 1.76) -- (1.65, 1.76);
  \draw (1.35, 2.26) -- (1.65, 2.26); \draw (1.35, 2.76) -- (1.65, 2.76);
  \draw (1.35, 3.26) -- (1.65, 3.26); \draw (1.35, 3.76) -- (1.65, 3.76);
  \draw (6.35, 0.26) -- (6.65, 0.26); \draw (6.35, 0.76) -- (6.65, 0.76);
  \draw (6.35, 1.26) -- (6.65, 1.26); \draw (6.35, 1.76) -- (6.65, 1.76);
  \draw (6.35, 2.26) -- (6.65, 2.26); \draw (6.35, 2.76) -- (6.65, 2.76);
  \draw (6.35, 3.26) -- (6.65, 3.26); \draw (6.35, 3.76) -- (6.65, 3.76);
  \draw (2.85, 1.26) -- (3.15, 1.26); \draw (2.85, 1.76) -- (3.15, 1.76);
  \draw (2.85, 2.26) -- (3.15, 2.26); \draw (2.85, 2.76) -- (3.15, 2.76);
  \draw (4.85, 1.26) -- (5.15, 1.26); \draw (4.85, 1.76) -- (5.15, 1.76);
  \draw (4.85, 2.26) -- (5.15, 2.26); \draw (4.85, 2.76) -- (5.15, 2.76);
  \draw (3.85, 1.26) -- (4.15, 1.26); \draw (3.85, 1.76) -- (4.15, 1.76);
  \draw (3.85, 2.26) -- (4.15, 2.26); \draw (3.85, 2.76) -- (4.15, 2.76);
  \draw (3.26, 0.85) -- (3.26, 1.15); \draw (3.76, 0.85) -- (3.76, 1.15);
  \draw (4.26, 0.85) -- (4.26, 1.15); \draw (4.76, 0.85) -- (4.76, 1.15);
  \draw (3.26, 2.85) -- (3.26, 3.15); \draw (3.76, 2.85) -- (3.76, 3.15);
  \draw (4.26, 2.85) -- (4.26, 3.15); \draw (4.76, 2.85) -- (4.76, 3.15);

  % Termek feliratai
  \node[font=\footnotesize, gray] at (0.75, 3) {$S_1$};
  \node[font=\footnotesize, gray] at (0.75, 1) {$S_2$};
  \node[font=\footnotesize, gray] at (2.25, 3.5) {$F_1$};
  \node[font=\footnotesize, gray] at (2.25, 0.5) {$F_2$};
  \node[font=\footnotesize, gray] at (2.25, 2) {$K_1$};
  \node[font=\footnotesize, gray] at (3.5, 2.5) {$B_1$};
  \node[font=\footnotesize, gray] at (3.5, 1.5) {$B_2$};
  \node[font=\footnotesize, gray] at (4.5, 2.5) {$B_3$};
  \node[font=\footnotesize, gray] at (4.5, 1.5) {$B_4$};
  \node[font=\footnotesize, gray] at (5.75, 2) {$K_2$};
  \node[font=\footnotesize, gray] at (5.75, 3.5) {$F_3$};
  \node[font=\footnotesize, gray] at (5.75, 0.5) {$F_4$};
  \node[font=\footnotesize, gray] at (7.25, 3) {$S_3$};
  \node[font=\footnotesize, gray] at (7.25, 1) {$S_4$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Megoldás.**

Modellezzük a palotát gráffal (duális gráf): a gráf csúcsai a palota termei, és két csúcs között pontosan akkor fut él, ha a két megfelelő terem között van ajtó.

### A palota gráfjának felépítése

A palota alaprajzán az alábbi 14 terem található (vízszintes és függőleges szimmetriával):
- **Bal szárny (7 terem):**
  - $S_1$ (bal-felső sarokterem) és $S_2$ (bal-alsó sarokterem)
  - $F_1$ (felső-bal folyosó) és $F_2$ (alsó-bal folyosó)
  - $K_1$ (középső-bal terem)
  - $B_1$ (belső felső-bal terem) és $B_2$ (belső alsó-bal terem)
- **Jobb szárny (7 terem):**
  - $B_3$ (belső felső-jobb terem) és $B_4$ (belső alsó-jobb terem)
  - $K_2$ (középső-jobb terem)
  - $F_3$ (felső-jobb folyosó) és $F_4$ (alsó-jobb folyosó)
  - $S_3$ (jobb-felső sarokterem) és $S_4$ (jobb-alsó sarokterem)

A palotában összesen **22 ajtó** (él) található:
- $S_1$ és $S_2$ között a válaszfalon **2 ajtó** nyílik (párhuzamos élek). Hasonlóan $S_3$ és $S_4$ között is **2 ajtó** van.
- A bal szárnyon belül: $S_1 - F_1$, $S_1 - K_1$, $S_2 - F_2$, $S_2 - K_1$, $F_1 - B_1$, $F_2 - B_2$, $K_1 - B_1$, $K_1 - B_2$ (8 ajtó).
- A jobb szárnyon belül szimmetrikusan: $S_3 - F_3$, $S_3 - K_2$, $S_4 - F_4$, $S_4 - K_2$, $F_3 - B_3$, $F_4 - B_4$, $K_2 - B_3$, $K_2 - B_4$ (8 ajtó).
- A **két szárny közötti egyetlen összeköttetést** a két belső átjáró alkotja:
  - $B_1 - B_3$ (felső átjáró a középső függőleges falon)
  - $B_2 - B_4$ (alsó átjáró a középső függőleges falon)

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.05,
  room/.style={circle, draw=black, fill=white, inner sep=2pt, font=\small},
  oddroom/.style={circle, draw=red!80!black, fill=red!15, inner sep=2pt, font=\small\bfseries},
  hall/.style={rectangle, rounded corners=3pt, draw=blue!70!black, fill=blue!10, inner sep=3pt, font=\small},
  corridor/.style={rectangle, draw=gray, fill=gray!15, inner sep=2.5pt, font=\small},
  door/.style={thick}
]
  % Csucsok
  \node[room] (S1) at (0, 3) {$S_1$ \scriptsize (4)};
  \node[room] (S2) at (0, 1) {$S_2$ \scriptsize (4)};
  \node[corridor] (F1) at (2.2, 3.5) {$F_1$ \scriptsize (2)};
  \node[corridor] (F2) at (2.2, 0.5) {$F_2$ \scriptsize (2)};
  \node[hall] (K1) at (1.8, 2) {$K_1$ \scriptsize (4)};
  \node[oddroom] (B1) at (3.3, 2.6) {$B_1$ \scriptsize (3)};
  \node[oddroom] (B2) at (3.3, 1.4) {$B_2$ \scriptsize (3)};

  \node[oddroom] (B3) at (4.7, 2.6) {$B_3$ \scriptsize (3)};
  \node[oddroom] (B4) at (4.7, 1.4) {$B_4$ \scriptsize (3)};
  \node[hall] (K2) at (6.2, 2) {$K_2$ \scriptsize (4)};
  \node[corridor] (F3) at (5.8, 3.5) {$F_3$ \scriptsize (2)};
  \node[corridor] (F4) at (5.8, 0.5) {$F_4$ \scriptsize (2)};
  \node[room] (S3) at (8, 3) {$S_3$ \scriptsize (4)};
  \node[room] (S4) at (8, 1) {$S_4$ \scriptsize (4)};

  % Elek
  \draw[door] (S1) to[bend left=20] (S2);
  \draw[door] (S1) to[bend right=20] (S2);
  \draw[door] (S1) -- (F1);
  \draw[door] (S1) -- (K1);
  \draw[door] (S2) -- (F2);
  \draw[door] (S2) -- (K1);
  \draw[door] (F1) -- (B1);
  \draw[door] (F2) -- (B2);
  \draw[door] (K1) -- (B1);
  \draw[door] (K1) -- (B2);

  \draw[door, very thick] (B1) -- node[above, font=\scriptsize] {felső átjáró} (B3);
  \draw[door, very thick] (B2) -- node[below, font=\scriptsize] {alsó átjáró} (B4);

  \draw[door] (B3) -- (K2);
  \draw[door] (B4) -- (K2);
  \draw[door] (B3) -- (F3);
  \draw[door] (B4) -- (F4);
  \draw[door] (F3) -- (S3);
  \draw[door] (F4) -- (S4);
  \draw[door] (K2) -- (S3);
  \draw[door] (K2) -- (S4);
  \draw[door] (S3) to[bend left=20] (S4);
  \draw[door] (S3) to[bend right=20] (S4);
\end{tikzpicture}
\end{adjustbox}
\end{center}

Számoljuk meg a termek fokszámait (az ajtók számát):
- **4 páratlan fokú terem:** $d(B_1) = d(B_2) = d(B_3) = d(B_4) = 3$.
- **10 páros fokú terem:**
  - $d(F_1) = d(F_2) = d(F_3) = d(F_4) = 2$,
  - $d(S_1) = d(S_2) = d(S_3) = d(S_4) = 4$,
  - $d(K_1) = d(K_2) = 4$.

Egy ajtó befalazása pontosan egy él törlését jelenti a gráfból, ami a két érintett terem fokszámát $1$-gyel csökkenti, így azok paritását az ellenkezőjére változtatja.

---

### a) Olyan séta, amely minden megmaradó ajtón pontosan egyszer megy át

Ez egy **nyílt (vagy zárt) Euler-vonal**.
Euler tétele szerint egy összefüggő gráfban akkor és csak akkor létezik nyílt Euler-vonal, ha a páratlan fokú csúcsok száma legfeljebb $2$ (pontosan $0$ vagy $2$).

1. Jelenleg $4$ páratlan fokú csúcs van, így legalább egy befalazás szükséges ($0$ nem elég).
2. Egyetlen ajtó befalazásával két szomszédos csúcs fokszáma csökken $1$-gyel. Ha olyan ajtót választunk, amely két páratlan csúcsot köt össze, akkor mindkét érintett csúcs párossá válik, így a páratlan csúcsok száma $4 - 2 = 2$-re csökken.
3. Befalazzuk a két felső belső terem közötti **$B_1 - B_3$ felső átjárót** (az ábrán a kék karikás és áthúzott ajtó):
   - $B_1$ és $B_3$ foka $3$-ról $2$-re csökken (**páros** lesz).
   - $B_2$ és $B_4$ foka változatlanul $3$ marad (**páratlan**).
   - A többi 10 terem foka változatlanul páros.
   - **Összefüggőség:** A palota megmaradó ajtóinak gráfja **összefüggő marad**, hiszen a bal és jobb szárnyat az alsó átjáró ($B_2 - B_4$) továbbra is közvetlenül összeköti.

Így pontosan 2 páratlan fokú csúcs ($B_2$ és $B_4$) marad egy összefüggő gráfban, tehát létezik nyílt Euler-séta (amely a $B_2$ és $B_4$ termek egyike és másika között halad).

**Válasz: Legkevesebb 1 ajtót kell befalazni.**

---

### b) Visszatérés a kiindulási terembe (zárt Euler-vonal)

A feltétel egy **zárt Euler-vonal** létezését írja elő.
Euler tétele szerint ehhez a megmaradó ajtók gráfjának **összefüggőnek** kell lennie, és **minden terem foka páros** kell legyen ($0$ páratlan csúcs).

#### Miért hibás a naiv „2 ajtó elég” állítás?
A 4 páratlan csúcs paritásának párosra változtatásához 2 él elhagyásával a 2 élnek a 4 páratlan csúcs között kellene futnia:
- a felső $B_1 - B_3$ átjárónak, és
- az alsó $B_2 - B_4$ átjárónak.

Csakhogy a $\{B_1 - B_3, \ B_2 - B_4\}$ élpár a palota bal szárnya ($7$ terem) és jobb szárnya ($7$ terem) közötti **egyetlen összeköttetés (egy 2 élű vágás)**!
Ha mindkét átjárót befalazzuk, a gráf **két diszjunkt összefüggő komponensre esik szét** (mindkét komponensben 10-10 megmaradó ajtóval). Két diszjunkt épületrész ajtóit egyetlen összefüggő sétával lehetetlen bejárni, így **2 ajtó befalazásával nem valósítható meg zárt Euler-séta**.

#### Miért nem elegendő 3 ajtó befalazása sem?
Egy zárt Euler-vonalat tartalmazó gráfban **egyetlen vágás sem lehet páratlan méretű** (speciálisan nem tartalmazhat hidat / vágóélt), hiszen a séta ahányszor átmegy a vágáson az egyik oldalra, pontosan annyiszor kell visszatérnie a másik oldalra.
- Ha a két szárnyat összekötő átjárók közül pontosan 1-et falazunk be, a másik megmaradó átjáró híd lesz a két oldal között, amin zárt séta nem mehet át minden ajtón pontosan egyszer.
- Ha mindkét összekötő átjáró ($B_1 - B_3$ és $B_2 - B_4$) megmarad, akkor a 4 belső terem ($B_1, B_2, B_3, B_4$) fokát kizárólag a saját szárnyuk felé néző ajtókkal lehet csökkenteni. Mivel mind a 4 teremhez külön, nem közös ajtók vezetnek a többi terem felől, mind a 4 terem paritásának megváltoztatásához legalább $1-1$ külön ajtót – összesen tehát legalább 4 ajtót – kell befalazni.

#### Megvalósítás 4 ajtó befalazásával (az ábra piros X jelölései)
Befalazzuk a 4 belső terem és a szomszédos nagy termek ($K_1, K_2$) közötti ajtókat (a fényképen a 4 piros X):
1. $K_1 - B_1$
2. $K_1 - B_2$
3. $K_2 - B_3$
4. $K_2 - B_4$

Ekkor a fokszámok:
- $\deg(B_1) = \deg(B_2) = \deg(B_3) = \deg(B_4) = 3 - 1 = 2$ (**páros**).
- $\deg(K_1) = \deg(K_2) = 4 - 2 = 2$ (**páros** maradt).
- Az összes többi terem foka változatlan: $\deg(F_i) = 2$, $\deg(S_i) = 4$ (mind **páros**).
- **Összefüggőség:** A palota teljesen összefüggő marad: a bal és jobb oldal között mindkét átjáró ($B_1 - B_3$ és $B_2 - B_4$) nyitva áll, és a termek körbejárhatók a folyosókon ($F_1, F_2, F_3, F_4$) és a saroktermeken ($S_1, S_2, S_3, S_4$) keresztül.

Mivel minden csúcs foka páros és a gráf összefüggő, létezik zárt Euler-séta.

**Válasz: Legkevesebb 4 ajtót kell befalazni.**

---

## 97. feladat

Mutasd meg, hogy a jobb oldali gráfban a) van Hamilton-út és Hamilton-kör (például a csúcsok megfelelő felsorolásával); b) nincs olyan Hamilton-kör, amelyben az $X$ és az $Y$ szomszédos!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  scale=1.05,
  pt/.style={circle, draw=black, fill=white, inner sep=2pt, font=\small\bfseries}
]
  \node[pt] (A) at (90:2.3) {$A$};
  \node[pt] (B) at (54:2.3) {$B$};
  \node[pt] (C) at (18:2.3) {$C$};
  \node[pt] (D) at (-18:2.3) {$D$};
  \node[pt] (E) at (-54:2.3) {$E$};
  \node[pt] (F) at (-90:2.3) {$F$};
  \node[pt] (G) at (-126:2.3) {$G$};
  \node[pt] (H) at (-162:2.3) {$H$};
  \node[pt] (I) at (162:2.3) {$I$};
  \node[pt] (J) at (126:2.3) {$J$};
  \node[pt, fill=blue!10] (X) at (0, 1.1) {$X$};
  \node[pt, fill=blue!10] (Y) at (0, -1.1) {$Y$};

  \draw (A) -- (C); \draw (A) -- (I); \draw (A) -- (X);
  \draw (B) -- (D); \draw (B) -- (H); \draw (B) -- (J);
  \draw (C) -- (E); \draw (C) -- (G);
  \draw (D) -- (F); \draw (D) -- (X);
  \draw (E) -- (G); \draw (E) -- (X); \draw (E) -- (Y);
  \draw (F) -- (H); \draw (F) -- (Y);
  \draw (G) -- (I);
  \draw (H) -- (J);
  \draw (I) -- (Y);
  \draw (J) -- (X); \draw (J) -- (Y);
  \draw (X) -- (Y);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Megoldás.**

A gráf 12 csúcsú: 10 külső csúcs ($A, B, C, D, E, F, G, H, I, J$) egy tízszög mentén, valamint 2 belső csúcs ($X, Y$).

**a)** **Hamilton-kör és Hamilton-út létezése:**
Adjuk meg a csúcsok egy olyan ciklikus felsorolását, ahol minden szomszédos pár között van él:
$$A - X - J - H - B - D - F - Y - I - G - E - C - A.$$
Ellenőrizzük az éleket a megadott gráfban:
1. $A - X$: él (van)
2. $X - J$: él (van)
3. $J - H$: él (van)
4. $H - B$: él (van)
5. $B - D$: él (van)
6. $D - F$: él (van)
7. $F - Y$: él (van)
8. $Y - I$: él (van)
9. $I - G$: él (van)
10. $G - E$: él (van)
11. $E - C$: él (van)
12. $C - A$: él (van)
Mind a 12 csúcs pontosan egyszer szerepel, és a kör bezárul. Ez egy **Hamilton-kör**.
Egy tetszőleges élét (pl. $C - A$) elhagyva a kapott sorozat **Hamilton-út**.

**b)** **Nincs olyan Hamilton-kör, amelyben $X$ és $Y$ szomszédos:**
Vizsgáljuk meg a 10 külső csúcs közötti éleket:
- A páratlan betűk halmaza $C_1 = \{A, C, E, G, I\}$ egy 5 hosszú kört alkot belső átlókkal: az élek $A-C, C-E, E-G, G-I, I-A$, valamint átlók mint $C-G$. Egyetlen él sem megy $C_1$-ből a páros betűk felé!
- A páros betűk halmaza $C_2 = \{B, D, F, H, J\}$ szintén egy 5 hosszú kört alkot ($B-D, D-F, F-H, H-J, J-B$), egy átlóval ($B-H$).
- A külső csúcsok között **egyetlen él sincs $C_1$ és $C_2$ között**! A $G - \{X, Y\}$ részgráf két diszjunkt összefüggő komponensre esik: $C_1$-re és $C_2$-re.

Tegyük fel indirekt, hogy létezik olyan $H$ Hamilton-kör, amelyben $X$ és $Y$ szomszédos (azaz $H$ tartalmazza az $\{X, Y\}$ élt).
- Ekkor az $\{X, Y\}$ él a kör egyik éle mindkét csúcsnál.
- Mivel egy körben minden csúcs foka pontosan 2, $X$-nek a körben pontosan egyetlen további éle van a külső csúcsok felé (legyen ez egy $u \in C_1 \cup C_2$ csúcs felé mutató él).
- Hasonlóan, $Y$-nak a körben pontosan egyetlen további éle van a külső csúcsok felé (legyen ez egy $v \in C_1 \cup C_2$ felé mutató él).
- Ha a $H$ körből elhagyjuk az $X$ és $Y$ csúcsokat, a megmaradt csúcsok egyetlen összefüggő utat kell alkossanak $u$ és $v$ között a $G - \{X, Y\}$ gráfban.
Azonban $G - \{X, Y\}$-ban nincsenek élek $C_1$ és $C_2$ között:
- Ha $u$ és $v$ mindketten $C_1$-ben lennének, az út sosem érhetné el $C_2$-t, így $C_2$ csúcsai kimaradnának a körből.
- Ha $u$ és $v$ mindketten $C_2$-ben lennének, $C_1$ csúcsai maradnának ki.
- Ha az egyik $C_1$-ben, a másik $C_2$-ben van, akkor nem létezhet köztük összefüggő út $G - \{X, Y\}$-ban.
Mindegyik eset ellentmondásra vezet, így **nem létezhet olyan Hamilton-kör, amelyben $X$ és $Y$ szomszédos**. $\blacksquare$

---

## 98. feladat

Tíz házaspár mindegyik tagjára igaz, hogy a maradék kilenc házaspár mindegyikének legalább egyik tagját ismeri. Az ismeretség kölcsönös, és mindenki ismeri a saját házastársát is. Bizonyítsd be, hogy a húsz személy leültethető egy húszszemélyes, kör alakú asztalhoz úgy, hogy mindenki ismerje mindkét szomszédját!

**Megoldás.**

Készítsünk ismeretségi gráfot:
- A csúcsok a személyek: $n = 10 \times 2 = 20$ csúcs.
- Két csúcs között él fut, ha a két személy ismeri egymást.
- A feladat kérdése az, hogy van-e Hamilton-kör ebben a 20 csúcsú egyszerű gráfban.

Becsüljük meg egy tetszőleges $P$ személy fokszámát (az ismerőseinek számát):
1. $P$ ismeri a saját házastársát: ez legalább 1 személy.
2. A maradék 9 házaspár mindegyikéből ismeri legalább az egyik tagot: ez további legalább 9 személy.
Tehát bármely $P$ csúcs foka:
$$d(P) \ge 1 + 9 = 10.$$

Mivel a csúcsszám $n = 20 \ge 3$, és minden csúcsra:
$$d(P) \ge 10 = \frac{20}{2} = \frac{n}{2},$$
a **Dirac-tétel** feltétele teljesül!
A Dirac-tétel értelmében a gráfban létezik Hamilton-kör.
A Hamilton-kör mentén leültetve a személyeket az asztal köré, mindenki mindkét mellette ülő szomszédját ismerni fogja. $\blacksquare$

---

## 99. feladat

Hány Hamilton-út, illetve Hamilton-kör van a $K_{n,n}$ teljes páros gráfban, ha $n \ge 2$? Két utat vagy kört akkor tekintünk különbözőnek, ha eltér az élhalmazuk.

**Megoldás.**

Jelölje a két színosztályt $A = \{a_1, \dots, a_n\}$ és $B = \{b_1, \dots, b_n\}$.

**1. Hamilton-körök száma:**
Egy Hamilton-kör $2n$ csúcsú, és felváltva kell látogatnia $A$ és $B$ csúcsait:
$$a_{i_1} - b_{j_1} - a_{i_2} - b_{j_2} - \dots - a_{i_n} - b_{j_n} - a_{i_1}.$$
- A ciklikus elforgatások kiküszöbölésére rögzítsük a kezdőcsúcsot: legyen ez az $a_1 \in A$ csúcs.
- A maradék $n-1$ darab $A$-beli csúcs sorrendje $(n-1)!$-féleképpen választható meg.
- Az $n$ darab $B$-beli csúcs beiktatási sorrendje $n!$-féleképpen választható meg.
- Mivel a kört a két ellentétes körüljárási irányban bejárva ugyanazt az élhalmazt kapjuk, osztanunk kell 2-vel:
$$\text{Hamilton-körök száma} = \frac{(n-1)! \cdot n!}{2}.$$

**2. Hamilton-utak száma:**
Egy Hamilton-út $2n$ csúcsot tartalmaz, így $2n-1$ éle van. Felváltva látogatja $A$ és $B$ csúcsait:
- Vagy $A$-ban kezdődik és $B$-ben végződik: $a_{i_1}, b_{j_1}, \dots, a_{i_n}, b_{j_n}$.
  Az $A$ csúcsainak sorrendje $n!$, a $B$ csúcsainak sorrendje $n!$, ez $n! \cdot n! = (n!)^2$ lehetőség.
- Vagy $B$-ben kezdődik és $A$-ban végződik: $b_{j_1}, a_{i_1}, \dots, b_{j_n}, a_{i_n}$.
  Ez szintén $(n!)^2$ lehetőség.
Összesen $2 \cdot (n!)^2$ irányított csúcssorozat van.
Mivel két utat akkor tekintünk azonosnak, ha megegyezik az élhalmazuk, és egy irányítatlan utat pontosan a két végpontja felől indulva olvashatunk ki (az egyik $A$-ban, a másik $B$-ben kezdődik), minden élhalmaz pontosan 2 irányított sorozatnak felel meg.
Ezért:
$$\text{Hamilton-utak száma} = \frac{2 \cdot (n!)^2}{2} = (n!)^2.$$

---

## 100. feladat

Az $F$ fának 17 csúcsa van, és minden csúcsának fokszáma 1 vagy 4. Határozd meg, legalább hány élt kell $F$-be behúzni ahhoz, hogy a keletkező egyszerű gráfnak legyen zárt Euler-vonala!

**Megoldás.**

Legyen a fa csúcsszáma $n = 17$. Egy $n$ csúcsú fa éleinek száma $e = n - 1 = 16$.
A fokszámösszeg a kézfogási lemma szerint:
$$\sum_{v \in V} d_F(v) = 2e = 32.$$
Jelölje $k$ a 4-edfokú csúcsok, $\ell$ pedig az 1-edfokú csúcsok (levelek) számát:
$$k + \ell = 17,$$
$$4k + \ell = 32.$$
A második egyenletből kivonva az elsőt: $3k = 15 \implies k = 5$, és így $\ell = 17 - 5 = 12$.
Tehát a fának **5 darab páros (4-edfokú)** és **12 darab páratlan (1-edfokú)** csúcsa van.

Olyan új $E'$ élhalmazt akarunk behúzni, hogy a keletkező $G = (V, E \cup E')$ egyszerű gráfban minden csúcs foka páros legyen (hiszen $G$ összefüggő, mivel tartalmazza az $F$ fát).
Jelölje $d_{E'}(v)$ a behúzott élek számát a $v$ csúcsnál:
- Ha $v$ 4-edfokú volt $F$-ben, akkor $d_G(v) = 4 + d_{E'}(v)$ párosságához $d_{E'}(v)$-nek **párosnak** kell lennie ($\ge 0$).
- Ha $v$ 1-edfokú volt $F$-ben, akkor $d_G(v) = 1 + d_{E'}(v)$ párosságához $d_{E'}(v)$-nek **páratlannak** kell lennie ($\ge 1$).

A behúzott élek fokszámösszege a 12 levélre:
$$\sum_{u \text{ levél}} d_{E'}(u) \ge 12 \times 1 = 12.$$
Mivel a behúzott élek fokszámösszege $2|E'|$:
$$2|E'| = \sum_{v \in V} d_{E'}(v) \ge \sum_{u \text{ levél}} d_{E'}(u) \ge 12 \implies |E'| \ge 6.$$
Tehát legalább **6 élt** be kell húzni.

Megmutatjuk, hogy 6 él behúzása elegendő:
Ha a 12 levelet párokba állítjuk, és behúzunk közéjük 6 független élt (egy teljes párosítást a leveleken):
- Ekkor minden levél foka $1 + 1 = 2$ (páros) lesz.
- Az 5 belső csúcs foka változatlanul 4 (páros) marad.
- A keletkező gráf egyszerű marad, mert két levél semmiképp sem volt szomszédos az $F$ fában (ha két levél szomszédos lenne egy fában, akkor a fának csak 2 csúcsa lenne, de itt $n = 17$).
Így a keletkező egyszerű gráf minden csúcsa páros fokú és összefüggő, tehát van benne zárt Euler-vonal.
A minimális élszám tehát **6**.

---

## 101. feladat

Bizonyítsd be, hogy ha egy $n \ge 3$ csúcsú egyszerű $G$ gráf kielégíti az Ore-tétel feltételét, vagyis bármely két nem szomszédos csúcsának fokszámösszege legalább $n$, akkor

a) bármely két csúcsának távolsága legfeljebb kettő;

b) a csúcsok legalább felének fokszáma legalább $n/2$.

**Megoldás.**

**a)** Legyen $u, v \in V$ két tetszőleges különböző csúcs.
- Ha $u$ és $v$ szomszédosak, akkor köztük a távolság 1, ami $\le 2$.
- Ha $u$ és $v$ nem szomszédosak:
  Az Ore-feltétel szerint $d(u) + d(v) \ge n$.
  Mind $u$, mind $v$ szomszédai a maradék $V \setminus \{u, v\}$ halmazban találhatók, amelynek mérete $|V \setminus \{u, v\}| = n - 2$.
  A skatulyaelv (vagy a szita-formula) szerint a közös szomszédaik száma:
  $$|N(u) \cap N(v)| = |N(u)| + |N(v)| - |N(u) \cup N(v)| \ge n - (n - 2) = 2 \ge 1.$$
  Mivel van közös szomszédjuk (sőt legalább kettő is), jelöljön egyet $w \in N(u) \cap N(v)$.
  Ekkor $u - w - v$ egy 2 hosszú út $u$ és $v$ között, tehát $\text{dist}(u, v) \le 2$. $\blacksquare$

**b)** Legyen $S = \{v \in V : d(v) < n/2\}$ a kis fokszámú csúcsok halmaza, és legyen $k = |S|$.
Azt kell belátnunk, hogy a csúcsok legalább fele legalább $n/2$ fokú, azaz $k \le n/2$.

Tegyük fel indirekt, hogy $k > n/2$.
1. Először belátjuk, hogy **$S$-ben bármely két csúcs szomszédos**:
   Ha létezne két nem szomszédos $u, v \in S$ csúcs, akkor az Ore-tétel szerint $d(u) + d(v) \ge n$ lenne.
   Azonban a definíció szerint $d(u) < n/2$ és $d(v) < n/2$, amiből
   $$d(u) + d(v) < \frac{n}{2} + \frac{n}{2} = n,$$
   ami ellentmondás!
   Tehát az $S$ halmaz feszített részgráfja teljes gráf: $G[S] \cong K_k$.
2. Mivel $S$ egy $k$ méretű teljes gráf, minden $v \in S$ csúcsnak már $S$-en belül van legalább $k - 1$ szomszédja, így:
   $$d(v) \ge k - 1.$$
3. Vizsgáljuk meg a $k > n/2$ feltételt:
   - Ha $n$ páros ($n = 2m$): $k > m \implies k \ge m + 1$, amiből $d(v) \ge k - 1 \ge m = n/2$, ami ellentmond annak, hogy $v \in S$ (hiszen $d(v) < n/2$).
   - Ha $n$ páratlan ($n = 2m + 1$): $n/2 = m + 0.5$. $k > n/2 \implies k \ge m + 1$.
     - Ha $k \ge m + 2$, akkor $d(v) \ge k - 1 \ge m + 1 > n/2$, ami ellentmondás.
     - Ha $k = m + 1$: ekkor $k - 1 = m$. Mivel $v \in S$, $d(v) < m + 0.5$, azaz $d(v) \le m$. Mivel $d(v) \ge k - 1 = m$, ebből következik, hogy **minden $v \in S$ csúcsra $d(v) = m$**.
       Ez azt jelenti, hogy az $S$-beli csúcsoknak **egyáltalán nincs élük $S$-en kívülre** (csak az $S$-beli $k-1=m$ másik csúcshoz kapcsolódnak).
       Ekkor $S$ a gráf egy izolált komponense.
       A gráf többi csúcsának halmaza $V \setminus S$, amelynek mérete $n - k = (2m + 1) - (m + 1) = m \ge 1$ (mivel $n \ge 3 \implies m \ge 1$).
       Válasszunk egy $u \in S$ és egy $w \in V \setminus S$ csúcsot! Mivel nincsenek élek $S$ és $V \setminus S$ között, $u$ és $w$ nem szomszédosak.
       Az Ore-feltétel szerint:
       $$d(u) + d(w) \ge n = 2m + 1.$$
       Mivel $d(u) = m$, ebből $d(w) \ge (2m + 1) - m = m + 1$ következne.
       Azonban $w$-nek sincs éle $S$ felé, így $w$ csak a $V \setminus S$ halmaz többi csúcsához kapcsolódhat, amiből legfeljebb $|V \setminus S| - 1 = m - 1$ darab van!
       Így $d(w) \le m - 1 < m + 1$, ami ellentmondás!

Minden esetben ellentmondásra jutottunk, tehát feltevésünk hamis volt: $k \le n/2$.
Így legalább $n - k \ge n/2$ csúcs fokszáma legalább $n/2$. $\blacksquare$

---

## 102. feladat

Legyen $G$ csúcshalmaza $\{1, 2, \dots, 100\}$. Van-e $G$-ben Hamilton-út, ha két *különböző* $i, j$ csúcsot pontosan az alábbi feltétel teljesülésekor kötünk össze?

a) $0 < |i - j| \le 2$;

b) $|i - j| = 2 \text{ vagy } 3$;

c) $i \mid j \text{ vagy } j \mid i$;

d) $|i - j| > 23$.

**Megoldás.**

**a)** **Van Hamilton-út.**
A feltétel megengedi az 1 különbségű szomszédokat is, így az
$$1 - 2 - 3 - \dots - 100$$
sorozat minden szomszédos elemére $|(i+1) - i| = 1 \le 2$, ami egy triviális Hamilton-út. (Sőt a páros és páratlan számokon oda-vissza lépkedve Hamilton-kör is készíthető).

**b)** **Van Hamilton-út.**
Konstruálhatunk explicit Hamilton-utat. Osszuk a csúcsokat 20 darab 5 elemű blokkra: $\{5k+1, \dots, 5k+5\}$, $k = 0, 1, \dots, 19$. A $k$-adik blokkot a következő sorrendben járjuk be:
$$5k+3 \xrightarrow{-2} 5k+1 \xrightarrow{+3} 5k+4 \xrightarrow{-2} 5k+2 \xrightarrow{+3} 5k+5.$$
A blokk utolsó csúcsából ($5k+5$) a következő blokk első csúcsába ($5k+8$) $+3$-mal lépünk át. Így a teljes út:
$$3, 1, 4, 2, 5, 8, 6, 9, 7, 10, 13, 11, \dots, 98, 96, 99, 97, 100.$$
Minden lépés $2$ vagy $3$ hosszú, és mind a 100 csúcsot pontosan egyszer érintjük. Tehát létezik Hamilton-út.

**c)** **Nincs Hamilton-út.**
Tekintsük az 50-nél nagyobb prímszámokat $\{1, 2, \dots, 100\}$-ban:
$$53, 59, 61, 67, 71, 73, 79, 83, 89, 97.$$
Összesen 10 ilyen prím van.
Egy tetszőleges $p > 50$ prím osztói csak az 1 és a $p$. Többszörösei a halmazban: $1 \cdot p = p$ és $2p > 100$, tehát a halmazban nincs nála nagyobb többszöröse.
Ez azt jelenti, hogy **bármely $p > 50$ prímnek az egész gráfban egyetlen szomszédja van: az 1-es szám**!
A gráfban tehát legalább 10 darab olyan 1-fokú (levél) csúcs van, amelyek mind kizárólag az 1-es csúcshoz csatlakoznak.
Egy egyszerű útban egyetlen csúcsnak legfeljebb 2 szomszédja lehet. Az 1-es csúcson keresztül legfeljebb 2 levél látogatható meg (az egyik lehet az út kezdőpontja, a másik a végpontja).
A maradék legalább 8 levél-prímet egyetlen egyszerű út sem tudja meglátogatni!
(Formálisan a csúcstörlős feltétellel: $S = \{1\}$ elhagyásával a 10 darab prím mind izolált komponenssé válik, így $c(G - \{1\}) \ge 10 > |\{1\}| + 1 = 2$).
Tehát a gráfban **nem létezik Hamilton-út**.

**d)** **Van Hamilton-út.**
A csúcsok száma $n = 100$. Két csúcs pontosan akkor van összekötve, ha $|i - j| \ge 24$.
Bármely $i \in \{1, \dots, 100\}$ esetén azok a $j \ne i$ csúcsok, amelyek *nincsenek* összekötve $i$-vel, kielégítik a $|i - j| \le 23$ egyenlőtlenséget.
Legfeljebb 23 darab nála kisebb és legfeljebb 23 darab nála nagyobb szám lehet, így a nem-szomszédok száma legfeljebb $23 + 23 = 46$.
Ezért minden $i$ csúcs foka:
$$d(i) \ge (100 - 1) - 46 = 53.$$
Mivel $n = 100$ és minden csúcsra:
$$d(i) \ge 53 \ge 50 = \frac{n}{2},$$
a **Dirac-tétel** szerint a gráfban nemcsak Hamilton-út, hanem **Hamilton-kör is van**!

---

## Házi feladat

## 103. feladat (házi feladat)

$G$ egy százcsúcsú egyszerű összefüggő $2k$-reguláris gráf, vagyis minden csúcsának foka $2k$. Bizonyítsd be, hogy $G$ néhány élét ki lehet színezni pirosra úgy, hogy minden csúcsra pontosan $k$ piros él illeszkedjen!

**Megoldás.**

Mivel $G$ összefüggő és minden csúcsának foka $2k$ (páros szám), Euler tétele értelmében a gráfban létezik egy $W$ **zárt Euler-vonal**:
$$v_0, e_1, v_1, e_2, v_2, \dots, e_m, v_0,$$
ahol $m$ a gráf összes éleinek száma:
$$m = \frac{100 \cdot 2k}{2} = 100k.$$
Mivel 100 páros, az élek $m = 100k$ száma **páros szám**.

Színezzük ki az éleket a zárt Euler-vonal mentén haladva felváltva pirosra és kékre:
- $e_1$ piros,
- $e_2$ kék,
- $e_3$ piros,
- és így tovább, általában $e_{2i-1}$ piros, $e_{2i}$ kék minden $i = 1, \dots, 50k$ esetén.
Mivel $m$ páros, az utolsó $e_m$ él kék lesz, így a zárt vonalon a paritás nem törik meg ($e_m$ kék, a rákövetkező $e_1$ piros).

Vizsgáljuk meg a csúcsokra illeszkedő élek színeit:
- A zárt Euler-vonal minden $v$ csúcsot pontosan $k$-szor látogat meg (mivel minden látogatáskor 2 illeszkedő élet használ el, és a fokszám $2k$).
- Bármelyik látogatás során a vonal egy belépő élen ($e_t$) érkezik $v$-be, és egy kilépő élen ($e_{t+1}$) távozik.
- Mivel a színek szigorúan alternálnak a vonal mentén, az $\{e_t, e_{t+1}\}$ élpár közül az egyik szükségképpen **piros**, a másik pedig **kék**.
- (A kezdő $v_0$ csúcsnál a befejező él $e_m$ kék, a kezdő él $e_1$ piros, így ott is 1 piros és 1 kék él keletkezik).

Mivel minden csúcsot pontosan $k$-szor látogatunk meg, és minden látogatás pontosan 1 piros és 1 kék élet ad a csúcsnak, a bejárás végén minden csúcsra **pontosan $k$ darab piros él** és $k$ darab kék él fog illeszkedni. $\blacksquare$

---

## 104. feladat (házi feladat)

Egy sakktáblát szeretnénk bejárni lóugrásban úgy, hogy minden mezőre pontosan egyszer lépjünk. Lehetséges-e ez, ha a tábla a) $4 \times 4$-es; b) $5 \times 5$-ös; c) $3 \times 5$-ös? És ha zárt bejárást szeretnénk, vagyis az utolsó mezőről egy lóugrással vissza is akarunk érkezni az elsőre?

**Megoldás.**

A sakktábla mezőit a szokásos módon színezzük fekete és fehér színekre.
Mivel a huszár minden lépéssel megváltoztatja a mező színét (fehérről feketére vagy feketéről fehérre lép), a **huszárgráf páros gráf**.
- Zárt bejárás (Hamilton-kör) csak páros számú mező esetén létezhet, és szükséges hozzá, hogy a fekete és fehér mezők száma megegyezzen.
- Nyílt bejárás (Hamilton-út) esetén a két színosztály mezőszámának különbsége legfeljebb 1 lehet.

**a) $4 \times 4$-es tábla (16 mező):**
- **Zárt bejárás (Hamilton-kör):** **Nem lehetséges.**
- **Nyílt bejárás (Hamilton-út):** **Nem lehetséges.**

*Bizonyítás csúcstörléssel:*
Tekintsük a 4 belső mezőt: $S = \{(2,2), (2,3), (3,2), (3,3)\}$ ($|S| = 4$).
A 4 sarokmező ($(1,1), (1,4), (4,1), (4,4)$) mindegyikéből egy huszár kizárólag a 4 belső mező valamelyikére tud lépni!
Például az $(1,1)$ szomszédai a táblán csak a $(2,3)$ és a $(3,2)$.
Ha töröljük az $S$ halmaz 4 csúcsát:
- a 4 sarokmező mindegyike izolált ponttá válik (4 komponens);
- a maradék 8 peremmező két diszjunkt 4 hosszú kört alkot: $(1,2) - (3,1) - (4,3) - (2,4) - (1,2)$ és $(1,3) - (2,1) - (4,2) - (3,4) - (1,3)$, ami további 2 komponenst jelent.
Így $G - S$ komponenseinek száma:
$$c(G - S) = 4 + 2 = 6.$$
A Hamilton-út létezésének szükséges feltétele szerint $c(G - S) \le |S| + 1$ kellene, de:
$$6 > 4 + 1 = 5.$$
Ezért a $4 \times 4$-es táblán **sem nyílt, sem zárt bejárás nem lehetséges**.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.0]
  % 4x4 sakktabla racs
  \draw[step=1cm, gray!60, very thin] (0, 0) grid (4, 4);

  % Sarkok (izolaltak S torlese utan): sarga
  \foreach \x/\y in {0/0, 0/3, 3/0, 3/3} {
    \fill[yellow!25] (\x, \y) rectangle ++(1, 1);
  }
  % S belso mezok (torolt csucsok): piros
  \foreach \x/\y in {1/1, 1/2, 2/1, 2/2} {
    \fill[red!20] (\x, \y) rectangle ++(1, 1);
    \node[red!80!black, font=\bfseries] at (\x+0.5, \y+0.5) {$S$};
  }

  % Csucspontok
  \node[circle, draw=black, fill=yellow!60, inner sep=1.8pt] (c11) at (0.5, 3.5) {};
  \node[circle, draw=black, fill=yellow!60, inner sep=1.8pt] (c14) at (3.5, 3.5) {};
  \node[circle, draw=black, fill=yellow!60, inner sep=1.8pt] (c41) at (0.5, 0.5) {};
  \node[circle, draw=black, fill=yellow!60, inner sep=1.8pt] (c44) at (3.5, 0.5) {};

  % 1. ciklus mezopontjai (kek)
  \node[circle, draw=blue!80!black, fill=blue!30, inner sep=1.8pt] (c12) at (1.5, 3.5) {};
  \node[circle, draw=blue!80!black, fill=blue!30, inner sep=1.8pt] (c31) at (0.5, 1.5) {};
  \node[circle, draw=blue!80!black, fill=blue!30, inner sep=1.8pt] (c43) at (2.5, 0.5) {};
  \node[circle, draw=blue!80!black, fill=blue!30, inner sep=1.8pt] (c24) at (3.5, 2.5) {};
  \draw[very thick, blue!80!black] (c12) -- (c31) -- (c43) -- (c24) -- (c12);

  % 2. ciklus mezopontjai (zold)
  \node[circle, draw=green!60!black, fill=green!30, inner sep=1.8pt] (c13) at (2.5, 3.5) {};
  \node[circle, draw=green!60!black, fill=green!30, inner sep=1.8pt] (c21) at (0.5, 2.5) {};
  \node[circle, draw=green!60!black, fill=green!30, inner sep=1.8pt] (c42) at (1.5, 0.5) {};
  \node[circle, draw=green!60!black, fill=green!30, inner sep=1.8pt] (c34) at (3.5, 1.5) {};
  \draw[very thick, green!60!black] (c13) -- (c21) -- (c42) -- (c34) -- (c13);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**b) $5 \times 5$-ös tábla (25 mező):**
- **Zárt bejárás:** **Nem lehetséges**, mert a mezők száma (25) páratlan, így páros gráfban nem tartalmazhat Hamilton-kört.
- **Nyílt bejárás:** **Lehetséges.**
  Explicit bejárási sorrend a mezők sorszámozásával ($1$-től $25$-ig):

$$\begin{array}{|c|c|c|c|c|}
\hline
1 & 12 & 25 & 18 & 3 \\ \hline
22 & 17 & 2 & 13 & 24 \\ \hline
11 & 8 & 23 & 4 & 19 \\ \hline
16 & 21 & 6 & 9 & 14 \\ \hline
7 & 10 & 15 & 20 & 5 \\ \hline
\end{array}$$

Könnyen ellenőrizhető, hogy minden $k \to k+1$ lépés szabályos huszárlépés, és a tábla minden mezője pontosan egyszer szerepel.

**c) $3 \times 5$-ös tábla (15 mező):**
- **Zárt bejárás:** **Nem lehetséges**, mert a mezők száma (15) páratlan.
- **Nyílt bejárás:** **Nem lehetséges.**

*Bizonyítás csúcstörléssel:*
Színezzük a mezőket sakktáblaszerűen úgy, hogy a sarkok feketék legyenek. Ekkor 8 fekete és 7 fehér mező van.
A 4 sarokmező ($(1,1), (1,5), (3,1), (3,5)$) mindegyike fekete.
A sarkok szomszédai mind fehérek:
- $(1,1)$ szomszédai: $(2,3)$ és $(3,2)$;
- $(1,5)$ szomszédai: $(2,3)$ és $(3,4)$;
- $(3,1)$ szomszédai: $(2,3)$ és $(1,2)$;
- $(3,5)$ szomszédai: $(2,3)$ és $(1,4)$.
Válasszuk ki az alábbi 5 fehér mezőből álló halmazt:
$$S = \{(1,2), (1,4), (2,3), (3,2), (3,4)\} \qquad (|S| = 5).$$
Ha ezt az 5 csúcsot töröljük a gráfból, a 4 fekete sarokmező mindegyike izolált ponttá válik; a $(2,2)$ és $(2,4)$ mezők szomszédai ($(1,4), (3,4)$, illetve $(1,2), (3,2)$) mind $S$-ben vannak, így ezek is izoláltak lesznek; végül a megmaradó $(1,3), (2,1), (3,3), (2,5)$ mezők egy 4 hosszú kört alkotnak. Összesen tehát $c(G - S) = 4 + 2 + 1 = 7$ komponens keletkezik.
A Hamilton-útra vonatkozó feltétel szerint $c(G - S) \le |S| + 1$ kellene, de:
$$7 > 5 + 1 = 6.$$
Ezért a $3 \times 5$-ös táblán **sem nyílt, sem zárt bejárás nem lehetséges**.

---

## 105. feladat (házi feladat)

Legyen $n \ge 1$. A $G$ gráf $2^n$ csúcsa egy $n$ elemű halmaz részhalmazainak felel meg. Két *különböző* csúcs között akkor megy irányítatlan él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat.

a) Hány éle van $G$-nek?

b) Van-e benne nyílt vagy zárt Euler-vonal?

c) És Hamilton-kör?

**Megoldás.**

**a)** A gráf élei a rendezetlen $\{X, Y\}$ részhalmazpároknak felelnek meg, ahol $X \subsetneq Y$ vagy $Y \subsetneq X$.
Minden él pontosan egy olyan $(X, Y)$ rendezett párt határoz meg, amelyre $X \subsetneq Y$.
Számoljuk meg az összes olyan $(X, Y)$ párt, amelyre $X \subseteq Y$:
Az alaphalmaz minden egyes $i \in \{1, \dots, n\}$ elemére pontosan 3 lehetőség van:
1. $i \notin Y$ (és így $i \notin X$ sem),
2. $i \in Y$, de $i \notin X$,
3. $i \in X$ és $i \in Y$.
Ezért összesen $3^n$ darab olyan $(X, Y)$ pár van, ahol $X \subseteq Y$.
Ezek közül pontosan $2^n$ esetben egyezik meg a két halmaz ($X = Y$).
Így a szigorú tartalmazást ($X \subsetneq Y$) kielégítő párok száma:
$$\text{Élek száma} = 3^n - 2^n.$$

*(Ellenőrzés: $n=1$-re $3^1 - 2^1 = 1$; $n=3$-ra $3^3 - 2^3 = 27 - 8 = 19$, összhangban a 89. feladattal).*

**b)** Számítsuk ki egy tetszőleges $k$-elemű $X$ csúcs fokszámát ($0 \le k \le n$):
- $X$ valódi részhalmazainak száma: $2^k - 1$.
- $X$-et valódi részként tartalmazó bővebb halmazok száma: $2^{n-k} - 1$.
Ezért a fokszám:
$$d(X) = (2^k - 1) + (2^{n-k} - 1) = 2^k + 2^{n-k} - 2.$$

Vizsgáljuk meg $d(X)$ paritását:
- Ha $k = 0$ ($X = \emptyset$): $d(\emptyset) = 2^0 + 2^n - 2 = 2^n - 1$, ami **páratlan** minden $n \ge 1$ esetén.
- Ha $k = n$ ($X$ a teljes halmaz): $d(V) = 2^n + 2^0 - 2 = 2^n - 1$, ami szintén **páratlan** minden $n \ge 1$ esetén.
- Ha $1 \le k \le n - 1$: ekkor mind $k \ge 1$, mind $n - k \ge 1$, így $2^k$ és $2^{n-k}$ is páros számok. Ekkor $d(X) = 2^k + 2^{n-k} - 2$ két páros szám összege mínusz 2, ami **páros**!

Ez azt jelenti, hogy:
- **Minden $n \ge 1$ esetén pontosan két csúcs foka páratlan** (az üres halmaz és a teljes halmaz), az összes többi $2^n - 2$ csúcs foka páros.
- A gráf összefüggő, mivel minden csúcs össze van kötve az üres halmazzal.
Ezért:
- **Zárt Euler-vonal sosem létezik** (mindig van páratlan fokú csúcs).
- **Nyílt Euler-vonal minden $n \ge 1$ esetén létezik** (amely az $\emptyset$ és a teljes halmaz között fut).

**c)**
- **$n = 1$ esetén:** A gráfnak 2 csúcsa van ($\emptyset$ és $\{1\}$). Egy egyszerű körhöz legalább 3 csúcs szükséges, így $n = 1$-re **nincs Hamilton-kör**.
- **$n \ge 2$ esetén:** **Mindig van Hamilton-kör.**
  *Bizonyítás:* A hiperkockagráf ($Q_n$) csúcsai szintén a részhalmazok, és két halmaz akkor szomszédos, ha szimmetrikus differenciájuk 1 elemű (azaz az egyik úgy keletkezik a másikból, hogy hozzáadunk vagy elhagyunk egyetlen elemet).
  Mivel ha $|Y \setminus X| = 1$ és $X \subset Y$, akkor az egyik tartalmazza a másikat, a $Q_n$ hiperkocka minden éle a mi $G$ gráfunknak is éle (azaz $Q_n \subseteq G$).
  Ismert tétel, hogy a $Q_n$ hiperkockában minden $n \ge 2$ esetén létezik Hamilton-kör (ezt adja meg a bináris Gray-kód).
  Mivel $Q_n$ részgráfja $G$-nek, a $Q_n$-beli Hamilton-kör a $G$ gráfban is Hamilton-kör!
  *(Például $n=2$-re: $\emptyset - \{1\} - \{1, 2\} - \{2\} - \emptyset$; $n=3$-ra: $\emptyset - \{1\} - \{1, 2\} - \{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1, 2, 3\} - \emptyset$).*
