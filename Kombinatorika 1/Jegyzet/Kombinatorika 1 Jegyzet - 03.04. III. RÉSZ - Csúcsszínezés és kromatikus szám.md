## 33. Gráfszínezések: csúcsszínezés és kromatikus szám

Az előző fejezetekben láttuk, hogy míg az Euler-séták és körséták létezése egyszerűen és gyorsan (polinomiális időben) ellenőrizhető a fokszámok paritásából, addig a Hamilton-út és Hamilton-kör létezésének eldöntése számításelméleti szempontból rendkívül nehéz (NP-teljes feladat). Most a gráfelmélet egy újabb, gazdag és gyakorlati szempontból is alapvető területére lépünk: a **gráfszínezésekhez**.

Színezési feladatokkal a mindennapi életben és a számítástudományban is lépten-nyomon találkozunk:

- **Vizsgabeosztás és órarendkészítés:** a kurzusok a csúcsok, és két kurzus közé élt húzunk, ha van közös hallgatójuk. Olyan időpontokat (színeket) kell a vizsgákhoz rendelni, hogy ütköző vizsgák ne essenek azonos időpontra.
- **Frekvenciakiosztás:** a rádióadók vagy mobil adótornyok csúcsok; ha két adó közel van egymáshoz (interferálhatnak), élt húzunk közéjük. Az azonos frekvenciák a színek.
- **Regiszterallokáció a fordítóprogramokban:** a programban szereplő változók közül melyek férnek el a processzor korlátozott számú hardver-regiszterében úgy, hogy az egyszerre élő változók ne ütközzenek.

Első témakörünk a **csúcsok színezése**.

> **Definíció (jó csúcsszínezés).** Egy $G = (V, E)$ gráf $k$ színnel való **jó csúcsszínezése** (vagy reguláris csúcsszínezése) egy olyan
> $$c: V \to \{1, 2, \dots, k\}$$
> leképezés, amelyre bármely $uv \in E$ él esetén
> $$c(u) \ne c(v).$$
> Más szavakkal: semelyik két szomszédos (éllel összekötött) csúcs nem kaphatja ugyanazt a színt.

A természetes kérdés: *hány színre van minimálisan szükségünk egy adott gráf jó kiszínezéséhez?*

> **Definíció (kromatikus szám).** A legkisebb olyan $k$ pozitív egész számot, amelyre a $G$ gráfnak létezik $k$ színnel való jó csúcsszínezése, a $G$ gráf **kromatikus számának** nevezzük, és $\chi(G)$-vel jelöljük (a görög khí betűvel: $\chi$). Ha $\chi(G) \le k$, akkor azt mondjuk, hogy a gráf **$k$-színezhető**.

### Mekkora lehet a kromatikus szám?

Bármely $n$ csúcsú egyszerű gráfra nyilvánvalóan teljesül:
$$1 \le \chi(G) \le n.$$

Nézzük meg a két szélsőértéket:

- **Alsó szélsőérték:** $\chi(G) = 1$ pontosan akkor áll fenn, ha a gráfnak **egyetlen éle sincs** (üres gráf, $E = \emptyset$). Ha ugyanis akár egyetlen $uv$ él is létezik, akkor $u$ és $v$ nem kaphat azonos színt, így legalább $2$ színre van szükség.
- **Felső szélsőérték:** $\chi(G) = n$ pontosan akkor áll fenn, ha $G = K_n$, az $n$ csúcsú **teljes gráf**. A teljes gráfban ugyanis bármely két csúcs össze van kötve, így semelyik kettő nem kaphat azonos színt: mind az $n$ csúcsnak külön színt kell kapnia.

Mi történik, ha egy teljes gráfból elhagyunk egy élt?
Tekintsük például az $5$ csúcsú teljes gráfot, a $K_5$-öt: $n = 5$, és $e = \binom{5}{2} = 10$ éle van. Mint láttuk, $\chi(K_5) = 5$.
Ha elhagyunk belőle egyetlen élt, mondjuk az $uv$ élt: az $u$ és $v$ csúcs között már nem fut él, így ők ketten megkaphatják ugyanazt a színt! A maradék három csúcs viszont továbbra is páronként össze van kötve egymással és $u$-val, $v$-vel is, így nekik három további, egymástól és az $u, v$ színétől is különböző színre van szükségük. Ezzel $K_5 - e$ már kiszínezhető $4$ színnel:
$$\chi(K_5 - e) = 4.$$
Egyetlen él elhagyása tehát $1$-gyel csökkentette a kromatikus számot.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.1,
  v/.style={circle, draw=black, fill=black!10, thick, minimum size=18pt, inner sep=0pt},
  edge/.style={draw=black!70, thick},
  missing/.style={draw=black!40, dashed, thick}
]
  \node[v] (v1) at (90:1.4) {$1$};
  \node[v] (v2) at (162:1.4) {$2$};
  \node[v] (v3) at (234:1.4) {$3$};
  \node[v] (v4) at (306:1.4) {$4$};
  \node[v] (v5) at (18:1.4) {$1$};

  \draw[missing] (v1) -- (v5);
  \draw[edge] (v1) -- (v2);
  \draw[edge] (v1) -- (v3);
  \draw[edge] (v1) -- (v4);
  \draw[edge] (v2) -- (v3);
  \draw[edge] (v2) -- (v4);
  \draw[edge] (v2) -- (v5);
  \draw[edge] (v3) -- (v4);
  \draw[edge] (v3) -- (v5);
  \draw[edge] (v4) -- (v5);

  \node[align=center] at (0, -1.85) {\footnotesize $K_5 - e$: a szaggatott él hiányzik, \\ \footnotesize így a két végpont azonos színt ($1$) kaphat; $\chi = 4$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Egy példa

Vizsgáljuk meg az alábbi példagráfot:

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.05,
  c1/.style={circle, draw=black, fill=white, thick, minimum size=18pt, inner sep=0pt},
  c2/.style={circle, draw=black, fill=black!15, thick, minimum size=18pt, inner sep=0pt},
  c3/.style={circle, draw=black, fill=black!35, thick, minimum size=18pt, inner sep=0pt},
  edge/.style={draw=black!70, thick}
]
  \node[c1] (tl) at (-1.3, 1.2) {$1$};
  \node[c3] (top) at (0.3, 1.8) {$3$};
  \node[c1] (tr) at (1.9, 1.1) {$1$};
  \node[c2] (mid) at (0.3, 0.4) {$2$};
  \node[c2] (fl) at (-2.3, 0.0) {$2$};
  \node[c1] (in) at (-1.0, -0.3) {$1$};
  \node[c1] (bl) at (-1.8, -1.3) {$1$};
  \node[c3] (bot) at (0.3, -1.2) {$3$};

  \draw[edge] (top) -- (tl);
  \draw[edge] (top) -- (mid);
  \draw[edge] (top) -- (tr);
  \draw[edge] (tr) -- (mid);
  \draw[edge] (tl) -- (mid);
  \draw[edge] (tl) -- (fl);
  \draw[edge] (fl) -- (in);
  \draw[edge] (fl) -- (bl);
  \draw[edge] (in) -- (mid);
  \draw[edge] (in) -- (bot);
  \draw[edge] (bl) -- (bot);
  \draw[edge] (mid) -- (bot);

  \node[right=0.4cm of tr] {\begin{tabular}{l}
    $\chi(G) = 3$ \\
    $\omega(G) = 3$ \\
    $\Delta(G) = 5$
  \end{tabular}};
\end{tikzpicture}
\end{adjustbox}
\end{center}

Ebben a gráfban a csúcsokat sikerült $3$ színnel ($1, 2, 3$) jól kiszínezni: semelyik két szomszédos csúcs nem azonos színű. Mivel a gráf tartalmaz háromszöget (például a felső $3$, a középső $2$ és a jobb oldali $1$ csúcs egy $K_3$-at alkot), $2$ szín nem lehet elegendő, tehát a kromatikus szám pontosan $\chi(G) = 3$. A maximális fokszám $\Delta(G) = 5$ (a középső $2$-es színű csúcsnak $5$ szomszédja van), a legnagyobb teljes részgráf mérete pedig $\omega(G) = 3$.

---

## 34. A kromatikus szám becslései: klikkszám és mohó színezés

Egy tetszőleges gráf kromatikus számának közvetlen kiszámítása nehéz feladat. Szükségünk van olyan könnyen számolható gráftulajdonságokra, amelyek alsó és felső korlátot adnak $\chi(G)$-re.

### Alsó becslés: a klikkszám

> **Definíció (klikk, klikkszám).** Egy $G$ gráf egy részgráfját **klikknek** nevezzük, ha teljes gráf. A $G$-beli legnagyobb klikk csúcsainak számát a gráf **klikkszámának** nevezzük, és $\omega(G)$-vel jelöljük (a görög ómega betűvel: $\omega$).

> **Állítás (alsó korlát a klikkszámmal).** Minden $G$ egyszerű gráfra
> $$\omega(G) \le \chi(G).$$

**Bizonyítás.** Legyen $K$ egy maximális méretű klikk $G$-ben, azaz $|V(K)| = \omega(G)$. Mivel $K$-ban bármely két csúcs össze van kötve éllel, egyetlen jó színezésben sem kaphat semelyik két csúcsa azonos színt. Így már önmagában a $K$ klikk csúcsainak kiszínezéséhez is legalább $\omega(G)$ különböző színre van szükség. Mivel a teljes gráf jó színezése a részgráfján is jó színezést ad, a teljes $G$ gráfhoz is legalább ennyi szín kell: $\chi(G) \ge \omega(G)$. $\blacksquare$

### Felső becslés: mohó színezés és a maximális fokszám

A felső becsléshez a gráf csúcsainak fokszámait hívjuk segítségül.

> **Definíció (maximális fokszám).** A $G$ gráf csúcsainak legnagyobb fokszámát $\Delta(G)$-vel (vagy röviden $\Delta$-val) jelöljük:
> $$\Delta(G) = \max_{v \in V} \deg(v).$$

> **Tétel (felső korlát a maximális fokszámmal).** Minden $G$ egyszerű gráfra
> $$\chi(G) \le \Delta(G) + 1.$$

**Bizonyítás („nem lehet elrontani” — mohó színezés).**
Vegyünk $\Delta(G) + 1$ darab színt: $\{1, 2, \dots, \Delta(G) + 1\}$.
Rendezzük a gráf csúcsait tetszőleges sorrendbe:
$$v_1, v_2, \dots, v_n.$$
Haladjunk sorra a csúcsokon ebben a rögzített sorrendben, és színezzük őket a **mohó elv** szerint: amikor a $v_i$ csúcsra kerül a sor, adjuk neki a rendelkezésre álló színek közül a **legkisebb sorszámút**, amelyet a már korábban kiszínezett szomszédai még nem használnak.

Elakadhat-e ez az eljárás?
A $v_i$ csúcsnak az egész gráfban összesen legfeljebb $\deg(v_i) \le \Delta(G)$ szomszédja van. Ennélfogva a korábban már kiszínezett szomszédainak száma sem lehet több $\Delta(G)$-nél. Ezek a szomszédok legfeljebb $\Delta(G)$ különböző színt használhattak el.
Mivel azonban összesen $\Delta(G) + 1$ szín áll rendelkezésünkre, a szomszédok által „lefoglalt” legfeljebb $\Delta(G)$ szín elkerülése után **legalább egy szín mindig szabadon marad** a $v_i$ csúcs számára!

A mohó algoritmus tehát minden lépésben talál megengedett színt, soha nem akad el, és legfeljebb $\Delta(G) + 1$ szín felhasználásával egy jó csúcsszínezést állít elő. Ebből következik, hogy $\chi(G) \le \Delta(G) + 1$. $\blacksquare$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  v/.style={circle, draw=black, fill=black!15, thick, minimum size=18pt, inner sep=0pt},
  cur/.style={circle, draw=black, fill=white, very thick, minimum size=20pt, inner sep=0pt},
  edge/.style={draw=black!70, thick}
]
  \draw[rounded corners=15pt, fill=black!5, draw=black!30, dashed] (-3.4, -1.5) rectangle (3.4, 1.85);
  \node[cur] (v) at (0, 0.05) {$v$};
  \node[v] (u1) at (-2.2, 0.9) {$c_1$};
  \node[v] (u2) at (-1.0, 1.2) {$c_2$};
  \node[v] (u3) at (0.6, 1.2) {$c_3$};
  \node[v] (u4) at (2.2, 0.8) {$c_k$};
  \node[v] (w1) at (-2.0, -0.8) {};
  \node[v] (w2) at (1.8, -0.8) {};

  \draw[edge] (v) -- (u1);
  \draw[edge] (v) -- (u2);
  \draw[edge] (v) -- (u3);
  \draw[edge] (v) -- (u4);
  \path (u3) -- (u4) node[midway] {$\dots$};

  \node[below=0.15cm of v] {\footnotesize $k \le \deg(v) \le \Delta(G)$};
  \node at (0, 2.2) {\footnotesize már kiszínezett szomszédok ($\le \Delta(G)$ tiltott szín)};
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Mikor éri el a felső korlátot a kromatikus szám?

Feltehetjük a kérdést: léteznek-e olyan gráfok, amelyekre a fenti felső korlát pontos, azaz $\chi(G) = \Delta(G) + 1$?
Az előadáson két ilyen családot azonosítottunk:

1. **Teljes gráfok ($K_n$):**
   Minden csúcs foka $n - 1$, így $\Delta(K_n) = n - 1$. Ugyanakkor minden csúcsnak külön szín kell: $\chi(K_n) = n = \Delta(K_n) + 1$.
   Például $K_3$-ra $\Delta = 2$ és $\chi = 3$.

2. **Páratlan körök ($C_{2k+1}$):**
   A kör minden csúcsának foka $2$, így $\Delta(C_{2k+1}) = 2$. Két színnel viszont nem színezhető ki: ha a kör mentén felváltva adnánk a két színt, a páratlanadik lépésben a kezdő és az utolsó csúcs azonos színű lenne, ami éllel van összekötve. Ezért szükség van egy harmadik színre is:
   $$\chi(C_{2k+1}) = 3 = \Delta(C_{2k+1}) + 1.$$
   Ezzel szemben egy páros kör ($C_{2k}$) mindig kiszínezhető $2$ színnel: $\Delta(C_{2k}) = 2$ és $\chi(C_{2k}) = 2$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.85,
  v/.style={circle, draw=black, fill=black!10, thick, minimum size=16pt, inner sep=0pt},
  edge/.style={draw=black!70, thick}
]
  % K_3
  \begin{scope}[xshift=-4.5cm]
    \node[v] (k1) at (90:1.1) {$1$};
    \node[v] (k2) at (210:1.1) {$2$};
    \node[v] (k3) at (330:1.1) {$3$};
    \draw[edge] (k1) -- (k2) -- (k3) -- (k1);
    \node at (0, -1.8) {\footnotesize\begin{tabular}{c} $K_3$ \\ $\Delta=2, \, \chi=3$ \end{tabular}};
  \end{scope}

  % C_5
  \begin{scope}[xshift=0cm]
    \node[v] (c1) at (90:1.1) {$1$};
    \node[v] (c2) at (162:1.1) {$2$};
    \node[v] (c3) at (234:1.1) {$1$};
    \node[v] (c4) at (306:1.1) {$2$};
    \node[v] (c5) at (18:1.1) {$3$};
    \draw[edge] (c1) -- (c2) -- (c3) -- (c4) -- (c5) -- (c1);
    \node at (0, -1.8) {\footnotesize\begin{tabular}{c} $C_5$ \\ $\Delta=2, \, \chi=3$ \end{tabular}};
  \end{scope}

  % C_4
  \begin{scope}[xshift=4.5cm]
    \node[v] (q1) at (45:1.1) {$1$};
    \node[v] (q2) at (135:1.1) {$2$};
    \node[v] (q3) at (225:1.1) {$1$};
    \node[v] (q4) at (315:1.1) {$2$};
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q1);
    \node at (0, -1.8) {\footnotesize\begin{tabular}{c} $C_4$ \\ $\Delta=2, \, \chi=2$ \end{tabular}};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

Meglepő és mély tény, hogy ezen a két triviális eseten kívül **nincs más kivétel**! Ezt mondja ki a gráfelmélet egyik klasszikus eredménye:

> **Tétel (Brooks-tétel, 1941).** Ha $G$ összefüggő egyszerű gráf, és $G$ nem teljes gráf ($G \ne K_n$), valamint nem páratlan kör ($G \ne C_{2k+1}$), akkor:
> $$\chi(G) \le \Delta(G).$$

::: kiegeszites
**Kiegészítés — a Brooks-tétel bizonyítása** (Lovász László 1975-ös gondolatmenete). A mohó színezésnél a csúcsok sorrendje tetszőleges volt, és a legrosszabb esetben $\Delta + 1$ szín kellett. A bizonyítás kulcsa, hogy a sorrendet **a gráf szerkezetéhez igazítva** választjuk meg úgy, hogy egyik csúcs se lássa „maga előtt” mind a $\Delta$ szomszédját kiszínezve. Legyen $\Delta = \Delta(G)$.

*A kis esetek.* Ha $\Delta \le 2$, akkor az összefüggő $G$ egy út vagy egy kör (a $2$-reguláris gráfokról a 29. szakaszban mondottak szerint). $\Delta = 0$ esetén $G = K_1$, $\Delta = 1$ esetén $G = K_2$ — mindkettő teljes gráf, ezeket kizártuk. $\Delta = 2$ esetén $G$ egy legalább $3$ csúcsú út vagy páros kör (a páratlan kört kizártuk), ezek $2 = \Delta$ színnel színezhetők. A továbbiakban $\Delta \ge 3$.

**Segédállítás (fa-sorrend).** *Legyen $H$ összefüggő gráf, amelyben minden fok legfeljebb $\Delta$, és $r$ egy csúcsa. Rendezzük $H$ csúcsait egy $r$ gyökerű feszítőfa szerint a gyökértől mért (fabeli) távolság csökkenő sorrendjében; $r$ kerüljön utoljára. Ekkor a mohó színezés minden $r$-től különböző csúcsot a $\{1, \dots, \Delta\}$ színek valamelyikével színez.*

*Bizonyítás.* Egy $w \ne r$ csúcs szülője a fában közelebb van a gyökérhez, tehát a sorrendben $w$ után jön. Így $w$-nek legfeljebb $\deg(w) - 1 \le \Delta - 1$ szomszédja van kiszínezve, amikor rá kerül a sor, és a $\Delta$ szín közül legalább egy szabad. $\blacksquare$

**1. eset: $G$ nem $\Delta$-reguláris.** Van olyan $r$ csúcs, amelyre $\deg(r) \le \Delta - 1$. A segédállítás szerinti sorrendben a mohó színezés minden $r$-től különböző csúcsnak talál színt $\{1, \dots, \Delta\}$-ből, és $r$-nek is, hiszen neki összesen is legfeljebb $\Delta - 1$ szomszédja van. Tehát $\chi(G) \le \Delta$.

**2. eset: $G$ $\Delta$-reguláris, és van elvágó csúcsa** (olyan $x$ csúcs, amelynek törlésével a gráf szétesik). Legyen $C$ a $G - x$ egyik komponense, $G_1$ a $C \cup \{x\}$ által feszített részgráf, $G_2$ pedig a $G - C$ gráf. Mindkettő összefüggő, a fokok legfeljebb $\Delta$-k, és $x$ foka mindkettőben kisebb $\Delta$-nál, hiszen $x$-nek mindkét oldalon van szomszédja. Az 1. eset gondolatmenete (amely csak ennyit használt) szerint $G_1$ és $G_2$ is színezhető $\Delta$ színnel. A $G_2$ színezésében a színeket átnevezve elérhetjük, hogy $x$ ugyanazt a színt kapja, mint $G_1$-ben; a két színezés együtt $G$ jó színezése, mert $G_1 - x$ és $G_2 - x$ között nem fut él.

**3. eset: $G$ $\Delta$-reguláris ($\Delta \ge 3$), és nincs elvágó csúcsa (2-szeresen összefüggő).** Megmutatjuk, hogy van olyan $v$ csúcs és annak két **nem szomszédos** $x, y$ szomszédja, hogy $G - \{x, y\}$ összefüggő. Ebből a tétel így következik: a sorrend legyen $v_1 = x$, $v_2 = y$, utánuk a $G - \{x, y\}$ csúcsai egy $v$ gyökerű feszítőfa szerint, a segédállításban leírt módon, $v_n = v$-vel a végén. Az $x$ és az $y$ is az $1$-es színt kapja (nem szomszédosak). A közbülső csúcsoknak a segédállítás szerint jut szín. Végül $v$-nek $\Delta$ szomszédja van, de közülük $x$ és $y$ azonos színű, így a szomszédai legfeljebb $\Delta - 1$ színt foglalnak, és $v$ is kap színt a $\{1, \dots, \Delta\}$ halmazból.

*A megfelelő $v, x, y$ létezése.* Két esetet különböztetünk meg.

- *Ha $G$ 3-szorosan összefüggő* (két csúcs törlésével sem esik szét): mivel $G$ nem teljes gráf, van két nem szomszédos csúcsa; tekintsük közöttük egy legrövidebb utat, és legyen $x, v, y$ az út első három csúcsa. Az $x$ és az $y$ nem szomszédos (különben rövidebb út volna), és $G - \{x, y\}$ összefüggő.
- *Ha $G$ nem 3-szorosan összefüggő*, van két csúcs, $v$ és $w$, amelyek együttes törlésével a gráf szétesik; ekkor $G - v$ összefüggő, de $w$ elvágó csúcsa. Használjuk a **blokkok** fogalmát: egy összefüggő gráf blokkjai a maximális elvágó csúcs nélküli részgráfjai; két blokk legfeljebb egy (elvágó) csúcsban metszi egymást, és a blokkok az elvágó csúcsokon keresztül fa-szerkezetben kapcsolódnak. Mivel $G - v$-nek van elvágó csúcsa, legalább két blokkja van, így legalább két **levélblokkja** is ($B_1$ és $B_2$), amelyek csak egy-egy elvágó csúcsot tartalmaznak, $c_1$-et, illetve $c_2$-t.
  - A $v$-nek van szomszédja $B_1 - c_1$-ben: különben $c_1$ a $G$-ben is elválasztaná $B_1 - c_1$-et a többi csúcstól, de $G$-nek nincs elvágó csúcsa. Legyen $x$ egy ilyen szomszéd, és ugyanígy $y$ egy szomszédja $B_2 - c_2$-ben.
  - Az $x$ és az $y$ nem szomszédos: egy él egyetlen blokkban fekszik, $x$ viszont csak $B_1$-hez, $y$ csak $B_2$-höz tartozik.
  - $G - \{x, y\}$ összefüggő. A $B_1$ blokk legalább $3$ csúcsú: ha csak a $c_1x$ élből állna, $x$-nek $c_1$-en és esetleg $v$-n kívül nem volna szomszédja, de $\deg x = \Delta \ge 3$. Egy legalább $3$ csúcsú, elvágó csúcs nélküli gráfból egy csúcsot törölve összefüggő gráf marad, így $B_1 - x$ összefüggő és tartalmazza $c_1$-et; ugyanígy $B_2 - y$. A többi blokk érintetlen, ezért a blokkok fa-szerkezete miatt $G - \{v, x, y\}$ összefüggő. Végül $v$-nek $\Delta \ge 3$ szomszédja van, köztük $x$-en és $y$-on kívül is legalább egy, így $v$ is kapcsolódik a többihez.

Ezzel mindhárom esetben $\chi(G) \le \Delta$. $\blacksquare$
:::

### Színosztályok és független halmazok

Hogyan „kell” elképzelni egy $\chi(G)$ kromatikus számú gráfot?
Egy jó színezésben az azonos színt kapott csúcsok között nem futhat él.

> **Definíció (független csúcshalmaz).** A $G = (V, E)$ gráf egy $U \subseteq V$ részhalmazát **független csúcshalmaznak** nevezzük, ha semelyik két eleme nincs összekötve éllel, azaz a feszített részgráfban nincsenek élek: $E(G[U]) = \emptyset$.

Ha $c: V \to \{1, 2, \dots, k\}$ egy jó színezés, akkor vezessük be az egyes színekhez tartozó csúcshalmazokat:
$$V_i = \{v \in V : c(v) = i\} \qquad (i = 1, 2, \dots, k).$$
Ekkor:

1. $V = V_1 \cup V_2 \cup \dots \cup V_k$, és az osztályok páronként diszjunktak ($V_i \cap V_j = \emptyset$).
2. Minden $V_i$ osztály **független halmaz**: az osztályon belül nem megy él!
3. **Élek kizárólag a különböző színosztályok között futhatnak.**

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  dot/.style={circle, draw=black, fill=black, inner sep=1.2pt},
  edge/.style={draw=black!70, thick}
]
  \draw[thick, fill=black!5] (-2.2, 1.2) ellipse (1.2cm and 0.8cm);
  \node at (-2.2, 2.2) {\textbf{1. színosztály} ($V_1$)};
  \node[dot] (a1) at (-2.6, 1.4) {};
  \node[dot] (a2) at (-1.8, 1.5) {};
  \node[dot] (a3) at (-2.2, 0.9) {};

  \draw[thick, fill=black!5] (2.2, 1.2) ellipse (1.2cm and 0.8cm);
  \node at (2.2, 2.2) {\textbf{2. színosztály} ($V_2$)};
  \node[dot] (b1) at (1.8, 1.4) {};
  \node[dot] (b2) at (2.6, 1.5) {};
  \node[dot] (b3) at (2.2, 0.9) {};

  \draw[thick, fill=black!5] (0, -1.4) ellipse (1.2cm and 0.8cm);
  \node at (0, -2.4) {\textbf{3. színosztály} ($V_3$)};
  \node[dot] (c1) at (-0.4, -1.2) {};
  \node[dot] (c2) at (0.4, -1.2) {};
  \node[dot] (c3) at (0, -1.6) {};

  \draw[edge] (a2) -- (b1);
  \draw[edge] (a3) -- (b1);
  \draw[edge] (a3) -- (c1);
  \draw[edge] (b3) -- (c2);
  \draw[edge] (b3) -- (c3);

  \node at (0, 0.2) {\footnotesize élek csak az osztályok \emph{között} futnak};
\end{tikzpicture}
\end{adjustbox}
\end{center}

A gráf $k$ színnel való jó színezése tehát **teljesen ekvivalens azzal**, hogy a csúcshalmazát $k$ darab diszjunkt független halmaz uniójára bontjuk szét.

---
