## 35. Páros gráfok és a 2-színezhetőség

A színezések legegyszerűbb nemtriviális esete a $2$ színnel való színezhetőség: mikor elég $2$ szín egy gráf kiszínezéséhez?

- Ha $\chi(G) = 1$, a gráfnak egyáltalán nincs éle.
- Ha $\chi(G) = 2$, a csúcsok két független halmazba ($A$ és $B$) oszthatók: $V = A \cup B$, és minden él egy $A$-beli és egy $B$-beli csúcs között fut.

Az ilyen gráfokat már korábban elneveztük:

> **Definíció (páros gráf).** Egy $G = (V, E)$ gráfot **páros gráfnak** (vagy kétosztályú gráfnak, idegen szóval *bipartite graph*) nevezünk, ha a csúcshalmaza felosztható két diszjunkt részre: $V = A \cup B$ ($A \cap B = \emptyset$), úgy, hogy minden $e \in E$ él egyik végpontja $A$-ban, másik végpontja $B$-ben van.

A fenti ekvivalencia alapján:
> Egy éllel rendelkező gráf pontosan akkor páros, ha $\chi(G) = 2$ (általában: $\chi(G) \le 2$).

Milyen belső szerkezeti tulajdonság dönti el, hogy egy gráf páros-e? Ezt mondja ki a páros gráfok alaptétele:

> **Tétel (a páros gráfok karakterizációja).** Egy $G$ gráf pontosan akkor páros (azaz $\chi(G) \le 2$), ha **minden köre páros hosszúságú** (vagyis $G$-ben nincs páratlan kör).

### A tétel bizonyítása

A tétel kétirányú állítás, mindkét irányt külön kell belátnunk.

**1. Irány ($\implies$): ha a gráf páros, minden köre páros hosszúságú.**
Tegyük fel, hogy $G$ páros, azaz csúcsai $2$ színnel (mondjuk $A$ és $B$ színekkel) jól színezhetők.
Tekintsünk egy tetszőleges $C = (v_1, v_2, \dots, v_k, v_1)$ kört a gráfban.
A kör élei mentén lépkedve a csúcsok színe minden lépésben váltakozik:
$$v_1 \in A \implies v_2 \in B \implies v_3 \in A \implies v_4 \in B \implies \dots$$
Ahhoz, hogy a zárt kör végén visszatérjünk a kiindulási $v_1 \in A$ csúcsba, szükségképpen **páros sok lépést** kellett megtennünk. Ha ugyanis $k$ páratlan lenne, akkor $v_k \in A$ lenne, ám $v_k$ össze van kötve $v_1$-gyel, ami azt jelentené, hogy két szomszédos csúcs azonos osztályba ($A$-ba) esik, ellentmondásban azzal, hogy $G$ páros.
A kör hossza tehát szükségképpen páros.

**2. Irány ($\impliedby$): ha a gráfban nincs páratlan kör, akkor páros.**
A bizonyítást az előadáson ismertetett konstruktív módszerrel végezzük.
Mivel a különböző összefüggőségi komponensek között nem fut él, elég a tételt **összefüggő gráfokra** bizonyítani (nem összefüggő esetben komponensenként végezzük el az eljárást).

Tegyük fel tehát, hogy $G$ összefüggő, és nem tartalmaz páratlan kört.
Válasszunk ki egy tetszőleges $v_0 \in V$ csúcsot kezdőpontnak (gyökérnek).
Minden $u \in V$ csúcs esetén jelölje $d(v_0, u)$ a $v_0$ és $u$ közötti **legrövidebb út hosszát** (távolságát). Mivel a gráf összefüggő, ez a távolság minden csúcsra egy jól definiált egész szám.

Osszuk a csúcsokat két osztályba a $v_0$-tól mért távolságuk **paritása** szerint:
$$A = \{u \in V : d(v_0, u) \text{ páros}\}, \qquad B = \{u \in V : d(v_0, u) \text{ páratlan}\}.$$
Maga a gyökér $d(v_0, v_0) = 0$ miatt $A$-ba kerül.
Nyilvánvalóan $V = A \cup B$ és $A \cap B = \emptyset$, hiszen minden távolság vagy páros, vagy páratlan, de nem lehet egyszerre mindkettő (*„egyik sem kerül bele mindkettő kategóriába”*).

Azt kell belátnunk, hogy **sem $A$-n belül, sem $B$-n belül nem fut él**.
Tegyük fel indirekt, hogy mégis van egy ilyen él!
Tegyük fel, hogy két azonos osztálybeli csúcs van összekötve: létezik egy $e = uv$ él, mondjuk ahol $u, v \in B$ páratlan távolságú csúcsok (az alábbi ábrának megfelelően; az $u, v \in A$ eset teljesen azonos módon tárgyalható).
Mivel $u, v \in B$, mindkét távolság páratlan: $d(v_0, u) = 2k + 1$ és $d(v_0, v) = 2m + 1$. Mivel $u$ és $v$ szomszédosak, távolságaik legfeljebb $1$-gyel térhetnek el egymástól, az azonos paritás miatt pedig szükségképpen $d(v_0, u) = d(v_0, v)$.

Vegyünk egy $P_u$ legrövidebb utat $v_0$-ból $u$-ba, és egy $P_v$ legrövidebb utat $v_0$-ból $v$-be.
Jelölje $w$ a két út **utolsó közös csúcsát** (amely után a két út a végpontokig már nem találkozik; legrosszabb esetben $w = v_0$). Vegyük észre, hogy $w \neq u$ és $w \neq v$, hiszen $d(v_0, u) = d(v_0, v)$ miatt egyik végpont sem előzheti meg a másikat egy legrövidebb úton.
Mivel $P_u$ és $P_v$ legrövidebb utak, a $v_0$-tól $w$-ig tartó részútjuk is legrövidebb út, így $d(v_0, w)$ egyértelmű.

A $w$-ből $u$-ba vezető $P_u$-beli részút, valamint a $w$-ből $v$-be vezető $P_v$-beli részút a $w$ csúcson kívül már diszjunktak (nincs további közös pontjuk), hosszaik pedig:
$$\ell(w \to u) = d(v_0, u) - d(v_0, w), \qquad \ell(w \to v) = d(v_0, v) - d(v_0, w).$$

Fűzzük össze a $w \to u$ utat, az $uv$ élt, és a $v \to w$ utat visszafelé: ez egy egyszerű kört alkot $G$-ben!
Számoljuk ki ennek a körnek a hosszát:
$$\ell(\text{kör}) = \big(d(v_0, u) - d(v_0, w)\big) + \big(d(v_0, v) - d(v_0, w)\big) + 1.$$
Mivel $d(v_0, u)$ és $d(v_0, v)$ paritása megegyezik (mindkettő páratlan, illetve az $A$-beli esetben mindkettő páros), a belőlük levont azonos $d(v_0, w)$ után a két különbség paritása is megegyezik!
Két azonos paritású egész szám összege viszont **mindig páros**:
$$\big(d(v_0, u) - d(v_0, w)\big) + \big(d(v_0, v) - d(v_0, w)\big) \equiv 0 \pmod 2.$$
Ehhez hozzáadva az $uv$ élnek megfelelő $+1$-et, a kör teljes hossza:
$$\ell(\text{kör}) \equiv 0 + 1 = 1 \pmod 2,$$
vagyis a kör **PÁRATLAN HOSSZÚSÁGÚ**!

Ez azonban éles ellentmondás, hiszen feltettük, hogy a gráfban nincs egyetlen páratlan kör sem!
Az indirekt feltevésünk tehát hamis volt: nem létezhet olyan él, amelynek mindkét végpontja $B$-ben van (és hasonlóan nem létezhet olyan él sem, amelynek mindkét végpontja $A$-ban van).
Minden él tehát szükségképpen egy $A$-beli és egy $B$-beli csúcsot köt össze, így $G$ valóban páros gráf, és $\chi(G) \le 2$. $\blacksquare$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=white, thick, minimum size=16pt, inner sep=0pt},
  sq/.style={rectangle, draw=black, fill=black!15, thick, minimum size=15pt, inner sep=0pt},
  tree/.style={draw=black!80, thick},
  bad/.style={draw=black, very thick, dashed}
]
  % Layer 0
  \node[v] (v0) at (0, 2.5) {$v_0$};
  \node[anchor=east] at (-3.7, 2.5) {\footnotesize $d=0$ ($A$, páros)};

  % Layer 1
  \node[sq] (u1) at (-2, 1.2) {$u_1$};
  \node[sq] (u2) at (0, 1.2) {$u_2$};
  \node[sq] (u3) at (2, 1.2) {$u_3$};
  \node[anchor=east] at (-3.7, 1.2) {\footnotesize $d=1$ ($B$, páratlan)};

  % Layer 2
  \node[v] (w1) at (-2.5, -0.2) {$w$};
  \node[v] (x) at (0, -0.2) {};
  \node[v] (y) at (2, -0.2) {};
  \node[anchor=east] at (-3.7, -0.2) {\footnotesize $d=2$ ($A$, páros)};

  % Layer 3
  \node[sq] (u) at (-3.2, -1.5) {$u$};
  \node[sq] (v) at (-1.8, -1.5) {$v$};
  \node[sq] (z) at (1, -1.5) {};
  \node[anchor=east] at (-3.7, -1.5) {\footnotesize $d=3$ ($B$, páratlan)};

  \draw[tree] (v0) -- (u1);
  \draw[tree] (v0) -- (u2);
  \draw[tree] (v0) -- (u3);
  \draw[tree] (u1) -- (w1);
  \draw[tree] (u2) -- (x);
  \draw[tree] (u3) -- (y);
  \draw[tree] (w1) -- (u);
  \draw[tree] (w1) -- (v);
  \draw[tree] (x) -- (z);

  % Dashed edge within layer 3
  \draw[bad] (u) -- (v);
  \node[align=center] at (-0.6, -2.35) {\footnotesize $uv$ él azonos osztályban: páratlan kör keletkezik! ($w \to u \to v \to w$)};
\end{tikzpicture}
\end{adjustbox}
\end{center}

> **Következmény (a fák páros gráfok).** Minden fa páros gráf.
> Mivel a fa körmentes gráf, egyetlen kört sem tartalmaz — így speciálisan $0$ darab páratlan köre van. A tétel értelmében tehát minden fa $2$-színezhető.

---

## 36. Számítási bonyolultság és élszínezés

### Emlékeztető és a becslések pontossága

A korábbiakban megállapítottuk a kromatikus szám alapvető korlátait:
$$\omega(G) \le \chi(G) \le \Delta(G) + 1.$$
A bal oldalon a klikkszám áll, a jobb oldalon a mohó színezéssel kapott felső korlát.

Ahogyan Sziklai Péter az előadáson hangsúlyozta: *„Ez a becslés marha rossz: ez a három szám tud nagyon messze lenni egymástól!”*
Vajon garantálja-e egy kis klikkszám, hogy a kromatikus szám is kicsi? A válasz meglepő módon: **nem**. Jan Mycielski 1955-ben konstruált olyan háromszögmentes gráfokat (amelyekben $\omega(G) = 2$), amelyek kromatikus száma tetszőlegesen nagy lehet! A klikkszám és a kromatikus szám között tehát szakadék tátonghat.

::: kiegeszites
**Kiegészítés — Mycielski konstrukciója.** Legyen $G$ egy háromszögmentes gráf a $v_1, \dots, v_n$ csúcsokon, $\chi(G) = k$. Készítsük el az $M(G)$ gráfot: a $v_i$ csúcsok mellé vegyünk fel minden $v_i$-hez egy $u_i$ „árnyékcsúcsot”, és még egy $w$ csúcsot. Az élek:

- $G$ összes éle;
- ha $v_iv_j \in E(G)$, akkor $u_iv_j$ és $u_jv_i$ is él (az árnyék ugyanazokkal a $v$-kkel szomszédos, mint az eredeti);
- $w$ össze van kötve az összes $u_i$-vel.

*$M(G)$ háromszögmentes.* Az $u_i$ csúcsok egymással nem szomszédosak, és $w$-nek csak $u$-szomszédai vannak, így $w$ nincs háromszögben. Egy háromszög tehát legfeljebb egy $u$-csúcsot tartalmaz; ha egyet sem, $G$-beli háromszög volna. Ha pontosan egyet, az $u_iv_jv_l$ alakú, ahol $v_jv_l \in E(G)$ és $v_iv_j, v_iv_l \in E(G)$ — de akkor $v_iv_jv_l$ háromszög volna $G$-ben. Ellentmondás.

*$\chi(M(G)) = k + 1$.* Felső becslés: $G$ egy jó $k$-színezését terjesszük ki úgy, hogy $u_i$ megkapja $v_i$ színét (ez jó, mert $u_i$ szomszédai $v_i$ szomszédai közül kerülnek ki), $w$ pedig egy új, $(k+1)$-edik színt. Alsó becslés: tegyük fel, hogy $M(G)$-nek van jó színezése $k$ színnel, és $w$ színe a $k$-adik szín. Ekkor egyik $u_i$ sem $k$-adik színű. Színezzük át $G$ minden olyan $v_i$ csúcsát, amely $k$-adik színű, az $u_i$ színére. Ez $G$ jó színezése $k - 1$ színnel: egy átszínezett $v_i$ és egy szomszédja, $v_j$ nem lehet azonos színű, mert ha $v_j$-t nem színeztük át, akkor $v_j$ az $u_i$-nek is szomszédja; ha pedig $v_j$-t is átszíneztük, akkor $v_i$ és $v_j$ eredetileg is azonos ($k$-adik) színű szomszédok lettek volna. Ez ellentmond $\chi(G) = k$-nak.

A $K_2$-ből indulva $M(K_2)$ az ötszög ($C_5$, $\chi = 3$), $M(C_5)$ a $11$ csúcsú Grötzsch-gráf ($\chi = 4$), és így tovább: minden $k$-ra van $\chi = k$ kromatikus számú háromszögmentes gráf, miközben $\omega = 2$.
:::

### Számítási bonyolultság: mi könnyű és mi nehéz?

Gyakorlati szempontból döntő kérdés, hogy algoritmikusan mennyire nehéz eldönteni egy gráf színezhetőségét:

- **$\chi(G) \le 2$ eldöntése: nagyon könnyű.** A 35. szakaszban látott legrövidebb utak paritásán alapuló szélességi keresés (BFS) a gráf éleinek és csúcsainak számával arányos, lineáris időben ($O(|V| + |E|)$ lépésben) vagy kiszínezi a gráfot $2$ színnel, vagy talál egy páratlan kört.
- **$\chi(G) \le 3$ eldöntése: NAGYON NEHÉZ (NP-teljes).** Richard Karp híres 1972-es eredménye szerint már annak eldöntése is NP-teljes, hogy egy tetszőleges gráf kiszínezhető-e $3$ színnel! Nincs rá ismert hatékony (polinomiális idejű) algoritmus.
- **$\chi(G)$ pontos meghatározása: NP-nehéz.** Általános gráfban a kromatikus szám kiszámítása a legnehezebb algoritmikus problémák közé tartozik.

*(Emlékeztető: „NP-teljes: egyet megoldanánk, az összeset megoldanánk.”)*

---

### 2. témakör: Élszínezés

A csúcsok színezése után felmerül a kérdés: mi történik, ha a gráf **éleit** szeretnénk kiszínezni?

> **Definíció (jó élszínezés).** Egy $G = (V, E)$ gráf egy **jó élszínezése** egy olyan
> $$c: E \to \{1, 2, \dots, k\}$$
> leképezés, amelyre bármely két szomszédos (közös csúcsban találkozó) él különböző színt kap:
> $$e_1 \cap e_2 \ne \emptyset \implies c(e_1) \ne c(e_2).$$

> **Definíció (élkromatikus szám).** A legkisebb olyan $k$ pozitív egész számot, amelyre létezik jó $k$-élszínezés, a $G$ gráf **élkromatikus számának** (vagy kromatikus indexének) nevezzük, és $\chi'(G)$-vel vagy $\chi_e(G)$-vel jelöljük.

### Mekkora lehet az élkromatikus szám?

Egy tetszőleges $v \in V$ csúcsból induló élek mindegyike találkozik $v$-ben, tehát páronként szomszédosak. Ennélfogva semelyik kettő nem kaphat azonos színt: mindegyiknek különböző színűnek kell lennie!
Ez azonnal ad egy triviális alsó korlátot:

> **Állítás (alsó korlát az élkromatikus számra).** Minden $G$ gráfra
> $$\chi'(G) \ge \Delta(G).$$

**Bizonyítás.** Válasszunk ki egy maximális fokszámú csúcsot: $\deg(v) = \Delta(G)$. A $v$-be befutó $\Delta(G)$ darab él mindegyikének páronként különböző színt kell kapnia, így a jó élszínezéshez legalább $\Delta(G)$ szín szükséges. $\blacksquare$

### Példák

1. **Egy 8 csúcsú példagráf:**
   Az alább bemutatott gráfban a maximális fokszám $\Delta = 4$. Sikerült az éleket $4$ színnel jól kiszínezni, így $\chi'(G) = 4 = \Delta(G)$.

2. **Az 5-csúcsú kör ($C_5$):**
   A kör minden csúcsának foka $2$, így $\Delta(C_5) = 2$.
   Elég-e $2$ szín az élek színezésére?
   Egy jó élszínezésben az azonos színű élek **független élhalmazt** (párosítást) alkotnak, azaz nem lehet közös csúcsuk. Egy $5$-csúcsú körben a legnagyobb független élhalmaz mérete $\lfloor 5/2 \rfloor = 2$.
   Két színnel tehát legfeljebb $2 \times 2 = 4$ élt tudnánk kiszínezni. Ám a $C_5$ körnek $5$ éle van!
   Ezért $2$ szín semmiképpen sem elegendő: szükség van egy harmadik színre is:
   $$\chi'(C_5) = 3 = \Delta(C_5) + 1.$$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.0,
  v/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  edge/.style={draw=black!70, thick}
]
  \begin{scope}[xshift=-3.5cm]
    \node[v] (n1) at (-1.8, 0) {};
    \node[v] (n2) at (-1.2, 1.0) {};
    \node[v] (n3) at (-1.2, -1.0) {};
    \node[v] (n4) at (0, 1.2) {};
    \node[v] (n5) at (0, -0.8) {};
    \node[v] (n6) at (0.8, 0.4) {};
    \node[v] (n7) at (1.1, 1.4) {};
    \node[v] (n8) at (1.8, 0.4) {};

    \draw[edge] (n1) -- node[above left, inner sep=1pt]{\footnotesize $1$} (n2);
    \draw[edge] (n1) -- node[below left, inner sep=1pt]{\footnotesize $2$} (n3);
    \draw[edge] (n2) -- node[above, inner sep=1pt]{\footnotesize $4$} (n4);
    \draw[edge] (n2) -- node[right, inner sep=1pt]{\footnotesize $2$} (n5);
    \draw[edge] (n3) -- node[below, inner sep=1pt]{\footnotesize $1$} (n5);
    \draw[edge] (n4) -- node[above, inner sep=1pt]{\footnotesize $3$} (n6);
    \draw[edge] (n5) -- node[left, inner sep=1pt]{\footnotesize $4$} (n6);
    \draw[edge] (n4) -- node[above, inner sep=1pt]{\footnotesize $2$} (n7);
    \draw[edge] (n6) -- node[right, inner sep=1pt]{\footnotesize $1$} (n7);
    \draw[edge] (n6) -- node[below, inner sep=1pt]{\footnotesize $2$} (n8);

    \node at (0, -1.85) {\footnotesize\begin{tabular}{c} $\Delta(G) = 4$ \\ $\chi'(G) = 4$ \end{tabular}};
  \end{scope}

  \begin{scope}[xshift=3.5cm]
    \node[v] (c1) at (90:1.3) {};
    \node[v] (c2) at (162:1.3) {};
    \node[v] (c3) at (234:1.3) {};
    \node[v] (c4) at (306:1.3) {};
    \node[v] (c5) at (18:1.3) {};

    \draw[edge] (c1) -- node[above left, inner sep=1pt]{\footnotesize $1$} (c2);
    \draw[edge] (c2) -- node[left, inner sep=1pt]{\footnotesize $2$} (c3);
    \draw[edge] (c3) -- node[below, inner sep=1pt]{\footnotesize $1$} (c4);
    \draw[edge] (c4) -- node[right, inner sep=1pt]{\footnotesize $2$} (c5);
    \draw[edge] (c5) -- node[above right, inner sep=1pt]{\footnotesize $3$} (c1);

    \node at (0, -1.85) {\footnotesize\begin{tabular}{c} $C_5$ \\ $\Delta=2, \, \chi'=3$ \end{tabular}};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Vizing tétele: az élkromatikus szám csodája

Vajon milyen messze eshet $\chi'(G)$ a maximális fokszámtól?
A válasz a gráfelmélet egyik legszebb és legmeglepőbb tétele:

> **Tétel (Vizing-tétel, 1964).** Minden egyszerű $G$ gráfra:
> $$\Delta(G) \le \chi'(G) \le \Delta(G) + 1.$$

Ez a tétel azt jelenti, hogy egy egyszerű gráf élkromatikus száma **mindössze kétféle értéket vehet fel**: vagy $\Delta(G)$, vagy $\Delta(G) + 1$!
Ennek megfelelően a gráfokat két osztályba soroljuk:

- **1. osztályú gráfok (Class 1):** amelyekre $\chi'(G) = \Delta(G)$. Ide tartoznak például a páros gráfok (Kőnig Dénes tétele szerint minden páros gráf 1. osztályú).
- **2. osztályú gráfok (Class 2):** amelyekre $\chi'(G) = \Delta(G) + 1$. Ide tartoznak a páratlan körök, és általában azok a gráfok, amelyekben túl sok él van ahhoz, hogy $\Delta$ darab független élhalmazba lehessen őket tömöríteni.

::: kiegeszites
**Kiegészítés — Kőnig élszínezési tétele: páros gráfra $\chi'(G) = \Delta(G)$.** Az alsó korlátot már láttuk; azt mutatjuk meg, hogy $\Delta$ szín elég. Az éleket egyenként színezzük, és azt bizonyítjuk, hogy ha egy páros gráfban egy $uv$ él kivételével minden él jól ki van színezve $\Delta$ színnel, akkor (esetleg néhány él átszínezésével) az $uv$ él is kiszínezhető.

Az $u$-nál legfeljebb $\Delta - 1$ színezett él van, így van egy $\alpha$ szín, amely **hiányzik** $u$-nál (nincs ilyen színű él $u$-nál); hasonlóan van egy $v$-nél hiányzó $\beta$ szín. Ha $\alpha$ $v$-nél is hiányzik, az $uv$ élt színezzük $\alpha$-ra. Különben $\alpha \ne \beta$, és $v$-ből indul egy $\alpha$ színű él. Tekintsük azt a $P$ utat, amely $v$-ből indul, és felváltva $\alpha$ és $\beta$ színű éleken halad, ameddig csak lehet. (Mivel minden csúcsnál legfeljebb egy $\alpha$ és egy $\beta$ színű él van, ez az út egyértelmű, és nem tér vissza önmagába: $v$-nél nincs $\beta$-él, amelyen visszaérhetne.)

*Az út nem jut el $u$-hoz.* Legyen $u \in A$, $v \in B$ a két osztály. Az út csúcsai felváltva vannak $B$-ben és $A$-ban: $v \in B$, a második csúcs $A$-ban, a harmadik $B$-ben, … — és minden $A$-beli csúcsba $\alpha$ színű élen érkezünk (a páratlanadik élek $\alpha$ színűek). Az $u$-nál viszont $\alpha$ hiányzik, így $u$-ba nem érkezhetünk.

Cseréljük fel $P$ mentén az $\alpha$ és $\beta$ színeket. A színezés jó marad: $P$ belső csúcsainál a két szín helyet cserél, a végpontjainál pedig az új szín éppen ott hiányzott (különben az út folytatódna). Most $\alpha$ hiányzik $v$-nél, és továbbra is hiányzik $u$-nál (az $u$-t nem érintettük), így az $uv$ élt $\alpha$-ra színezhetjük. $\blacksquare$
:::

> **Megjegyzés a számítási bonyolultságról.** Bár a Vizing-tétel szerint csak két lehetséges érték van, Ian Holyer (1981) bebizonyította, hogy annak eldöntése, hogy egy adott egyszerű gráf 1. vagy 2. osztályú-e, **NP-teljes feladat**! Még 3-reguláris gráfokra is NP-teljes eldönteni, hogy $\chi' = 3$ vagy $\chi' = 4$.

::: kiegeszites
**Kiegészítés — többszörös élek és a Shannon-tétel.**
Ha a gráf nem egyszerű, hanem többszörös éleket is tartalmazhat, a Vizing-tétel ebben a formában már nem érvényes: ha két csúcs között $3$ párhuzamos él fut, akkor még $\chi' = 3 = \Delta$, de ha egy háromszög minden élét megkettőzzük, akkor $\Delta = 4$, ám mind a $6$ él páronként szomszédos, így $\chi' = 6 > \Delta + 1$. Hurokélmentes többszörös élű gráfokra Claude Shannon 1949-es tétele érvényes: $\chi'(G) \le \lfloor \frac{3}{2}\Delta(G) \rfloor$.
:::

::: kiegeszites
**Kiegészítés — a Vizing-tétel bizonyítása** (Misra és Gries változata). Legyen $k = \Delta + 1$, és színezzük az éleket egyenként $k$ színnel. Elég megmutatni: ha egy $uv$ él kivételével minden él jól ki van színezve, akkor néhány él átszínezésével $uv$ is kiszínezhető. Mivel minden csúcs foka legfeljebb $\Delta < k$, **minden csúcsnál hiányzik legalább egy szín** (van olyan szín, amilyen színű él nem indul belőle).

*Legyező.* Az $u$ csúcs különböző szomszédainak egy $y_0 = v, y_1, \dots, y_\ell$ sorozatát **legyezőnek** nevezzük, ha minden $1 \le i \le \ell$-re az $uy_i$ él színe hiányzik $y_{i-1}$-nél. Vegyünk egy olyan legyezőt, amely nem hosszabbítható meg.

*Forgatás.* Ha egy $y_0, \dots, y_j$ legyező végén, $y_j$-nél, és $u$-nál is hiányzik ugyanaz a $d$ szín, akkor a legyezőt „elforgathatjuk”: minden $1 \le i \le j$-re az $uy_{i-1}$ él megkapja az $uy_i$ régi színét, az $uy_j$ él pedig a $d$ színt. A színezés jó marad: $y_{i-1}$-nél az új szín a legyező definíciója szerint hiányzott; $u$-nál a színek halmaza csak a $d$-vel bővült, ami ott hiányzott; $y_j$-nél $d$ hiányzott. Így az $uv = uy_0$ él is színt kapott.

*A forgatás előkészítése.* Legyen $c$ egy $u$-nál, $d$ egy $y_\ell$-nél hiányzó szín. Ha $d$ $u$-nál is hiányzik, forgassuk el a teljes legyezőt. Különben van egy $d$ színű $uz$ él. Ha $z$ nem volna a legyezőben, $y_{\ell+1} = z$-vel meghosszabbíthatnánk — tehát $z = y_j$ valamilyen $1 \le j < \ell$-re (ha $j = \ell$ volna, a $d$ nem hiányozna $y_\ell$-nél), és $d$ hiányzik $y_{j-1}$-nél.

A $c$ és $d$ színű élek gráfjában minden csúcs foka legfeljebb $2$, így komponensei utak és körök. Legyen $P$ az $u$-t tartalmazó komponens: mivel $c$ hiányzik $u$-nál, ez egy út, amely $u$-ból az $uy_j$ éllel indul. Cseréljük fel $P$-n a $c$ és $d$ színeket; a színezés jó marad, és ezután $d$ hiányzik $u$-nál. A legyező többi éle ($uy_i$, $i \ne j$) színe nem $c$ (az hiányzik $u$-nál) és nem $d$ (az csak $uy_j$-é volt), és a csere nem változtat azon, hogy egy $c$-től és $d$-től különböző szín hiányzik-e egy csúcsnál. Két eset van.

- *$y_{j-1}$ nincs rajta $P$-n.* Ekkor $y_{j-1}$-nél továbbra is hiányzik $d$, és az $y_0, \dots, y_{j-1}$ legyező érintetlen maradt. Forgassuk el ezt a legyezőt $d$-vel.
- *$y_{j-1}$ rajta van $P$-n.* Mivel $y_{j-1}$-nél hiányzik $d$, ő $P$ végpontja, és $P$ utolsó éle nála $c$ színű volt; a csere után $c$ hiányzik $y_{j-1}$-nél, tehát az $uy_j$ él új színe, $c$, megfelel a legyező feltételének. Az $y_\ell$ nincs $P$-n: ő is egy $c$–$d$ út végpontja (nála $d$ hiányzik), $P$ két végpontja pedig $u$ és $y_{j-1} \ne y_\ell$. Így $d$ továbbra is hiányzik $y_\ell$-nél, és a teljes $y_0, \dots, y_\ell$ legyező forgatható $d$-vel.

Mindkét esetben az $uv$ él színt kapott, és $k = \Delta + 1$ színnél többet nem használtunk. $\blacksquare$

Az egyszerűség lényeges: a legyező csúcsai az $u$ **különböző** szomszédai, és egy $uy_i$ élhez egyértelműen tartozik a végpontja — többszörös éleknél ez nem igaz, és ott a korlát valóban nem érvényes.
:::

---

### 3. témakör: Tartományok színezése

A harmadik természetes kérdés: mi a helyzet a síkbeli térképek, tartományok színezésével?
Ezt a témát egyelőre elhalasztjuk: ahhoz, hogy a tartományok színezéséről beszélni tudjunk, először pontosan meg kell értenünk a **síkbarajzolható gráfok** szerkezetét! A kérdésre a 43–44. szakaszban térünk vissza.

---
