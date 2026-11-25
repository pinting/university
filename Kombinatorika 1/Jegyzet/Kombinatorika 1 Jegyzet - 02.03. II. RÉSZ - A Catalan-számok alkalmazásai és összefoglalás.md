## 16. A Catalan-számok rekurziója és alkalmazásai

### Rekurzió

A Catalan-számokra rekurzió is felírható. A kérdés, amely elvezet hozzá: **mikor ürül ki először a pénztár?**

> **Tétel (Catalan-rekurzió).** $C_0 = 1$, és minden $n \ge 1$ esetén
> $$C_n = C_0C_{n-1} + C_1C_{n-2} + C_2C_{n-3} + \dots + C_{n-1}C_0 = \sum_{k=1}^{n} C_{k-1}\,C_{n-k}.$$

*Bizonyítás.* Legyen $n \ge 1$, és tekintsünk egy jó sorrendet. A pénztár kezdetben üres, és a végén is üres (ugyanannyi $1$-es és $2$-es érkezett). Legyen $2k$ ($1 \le k \le n$) az a pillanat, amikor a pénztár az indulás után **először** ürül ki; a rácsúton ez az a pont, ahol az út először tér vissza az $y = x$ átlóra, a $(k, k)$ pont. Válasszuk szét a jó sorrendeket $k$ értéke szerint.

Rögzített $k$ mellett:

- Az **első** fizető $1$ eurós (különben rossz volna a sorrend), a **$2k$-adik** pedig $2$ eurós (különben a pénztár nem ürülne ki éppen ekkor).
- A **közbülső** $2k - 2$ ember alatt a pénztár egyszer sem ürül ki, vagyis mindig van benne legalább az az $1$ euró, amelyet az első ember hozott. Ha ezt az egy eurót „félretesszük”, a közbülső $2k - 2$ ember egy jó sorrendet alkot $k - 1$ darab $1$-essel és $k - 1$ darab $2$-essel; és fordítva, bármely ilyen jó sorrend megfelel. Ez $C_{k-1}$ lehetőség. (A rácsúton: a $(1, 0)$ és a $(k, k-1)$ pont közötti szakasz az $y = x - 1$ egyenesen vagy alatta halad, ami eltolva egy $(k-1)$-es jó út.)
- A $(k, k)$ pont **utáni** $2n - 2k$ ember ismét üres pénztárral kezd, tehát tetszőleges jó sorrendet alkothat $n - k$ párral: $C_{n-k}$ lehetőség.

A független választás elve szerint rögzített $k$ mellett $C_{k-1}\,C_{n-k}$ jó sorrend van, és ezeket $k = 1, \dots, n$-re összeadva kapjuk az állítást. $\blacksquare$

\begin{center}
\begin{tikzpicture}[scale=0.85,
  gridline/.style={draw=black!25, thin},
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}, thick},
  diag/.style={draw=black!75, thick},
  pathp/.style={draw=black, very thick},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  retpt/.style={circle, draw=black, fill=white, very thick, inner sep=2.2pt}
]
  \fill[black!5] (1,0) rectangle (3,2);
  \fill[black!8] (3,3) rectangle (5,5);

  \draw[gridline] (0,0) grid (5,5);
  \draw[axis] (-0.3, 0) -- (5.8, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -0.3) -- (0, 5.8) node[above] {\footnotesize $y$};

  \draw[diag] (-0.2, -0.2) -- (5.5, 5.5) node[right] {\footnotesize $y = x$};

  \draw[pathp] (0,0) -- (1,0) node[midway, below=1pt] {\scriptsize $J$};
  \draw[pathp] (1,0) -- (2,0) -- (2,1) -- (3,1) -- (3,2);
  \draw[pathp] (3,2) -- (3,3) node[midway, right=1pt] {\scriptsize $F$};
  \draw[pathp] (3,3) -- (4,3) -- (4,4) -- (5,4) -- (5,5);

  \node[pt, label=below left:{\footnotesize $(0,0)$}] at (0,0) {};
  \node[retpt, label=above left:{\footnotesize $(k,k)=(3,3)$}] at (3,3) {};
  \node[pt, label=above right:{\footnotesize $(n,n)=(5,5)$}] at (5,5) {};

  \node at (2.0, 0.7) {\footnotesize $C_{k-1}$};
  \node at (4.0, 3.7) {\footnotesize $C_{n-k}$};

  \node at (2.5, -1.4) {\footnotesize\begin{tabular}{c}
    A Catalan-rekurzió: az első visszatérés az átlóra a $(k,k)$ pontban történik. \\
    A $(1,0)$ és $(k,k-1)$ közötti szakasz egy $k-1$ méretű Dyck-út ($C_{k-1}$ lehetőség), \\
    a $(k,k)$-tól induló hátralévő rész pedig egy $n-k$ méretű Dyck-út ($C_{n-k}$ lehetőség).
  \end{tabular}};
\end{tikzpicture}
\end{center}

*Ellenőrzés:* $C_3 = C_0C_2 + C_1C_1 + C_2C_0 = 2 + 1 + 2 = 5$, és $C_4 = 5 + 2 + 2 + 5 = 14$.

**Megjegyzés.** Ez a rekurzió nem lineáris, és nem is véges rendű: $C_n$ kiszámolásához az **összes** korábbi tagra szükség van. A 12. szakasz módszere tehát nem alkalmazható rá — a zárt képlethez itt a bijektív (tükrözéses) gondolatmenet vezetett el. A rekurzió viszont arra kiválóan alkalmas, hogy más feladatokról megmutassuk, hogy ugyancsak a Catalan-számokra vezetnek.

::: kiegeszites
**Kiegészítés — Lemma.** *Ha a $(t_n)_{n\ge0}$ sorozatra $t_0 = 1$ és minden $n \ge 1$-re $t_n = \sum_{k=1}^{n} t_{k-1}t_{n-k}$, akkor $t_n = C_n$ minden $n$-re.*

*Bizonyítás.* Erős teljes indukció: $t_0 = 1 = C_0$, és ha $t_m = C_m$ minden $m < n$-re, akkor a jobb oldalon csak $n$-nél kisebb indexek szerepelnek, így $t_n = \sum_{k=1}^{n} C_{k-1}C_{n-k} = C_n$. $\blacksquare$
:::

### Alkalmazások

**(A) Sokszögek háromszögelése.** Hányféleképpen bontható fel egy konvex $n$-szög egymást nem metsző átlóival háromszögekre? Jelölje ezt $T_n$.

| $n$ | 3 | 4 | 5 | 6 |
|:-:|:-:|:-:|:-:|:-:|
| $T_n$ | 1 | 2 | 5 | 14 |

(A háromszöget nem kell felbontani; a négyszöget a két átló bármelyike felbontja; az ötszögnél bármelyik csúcsból húzott két átló jó.) Az $1, 2, 5, 14$ sorozat ismerős! A **sejtés**: $T_n = C_{n-2}$. Az előadáson elhangzott, hogy ez rekurzióval bizonyítható.

\begin{center}
\begin{tikzpicture}[scale=0.75,
  polyedge/.style={draw=black!70, thick},
  diag/.style={draw=black, very thick},
  pt/.style={circle, draw=black, fill=black, inner sep=1.3pt}
]
  \begin{scope}[xshift=-5.0cm]
    \node[pt] (a1) at (90:1.0) {};
    \node[pt] (a2) at (162:1.0) {};
    \node[pt] (a3) at (234:1.0) {};
    \node[pt] (a4) at (306:1.0) {};
    \node[pt] (a5) at (18:1.0) {};
    \draw[polyedge] (a1) -- (a2) -- (a3) -- (a4) -- (a5) -- (a1);
    \draw[diag] (a1) -- (a3);
    \draw[diag] (a1) -- (a4);
    \node at (0, -1.3) {\scriptsize $1$-es csúcsból};
  \end{scope}

  \begin{scope}[xshift=-2.5cm]
    \node[pt] (b1) at (90:1.0) {};
    \node[pt] (b2) at (162:1.0) {};
    \node[pt] (b3) at (234:1.0) {};
    \node[pt] (b4) at (306:1.0) {};
    \node[pt] (b5) at (18:1.0) {};
    \draw[polyedge] (b1) -- (b2) -- (b3) -- (b4) -- (b5) -- (b1);
    \draw[diag] (b2) -- (b4);
    \draw[diag] (b2) -- (b5);
    \node at (0, -1.3) {\scriptsize $2$-es csúcsból};
  \end{scope}

  \begin{scope}[xshift=0cm]
    \node[pt] (c1) at (90:1.0) {};
    \node[pt] (c2) at (162:1.0) {};
    \node[pt] (c3) at (234:1.0) {};
    \node[pt] (c4) at (306:1.0) {};
    \node[pt] (c5) at (18:1.0) {};
    \draw[polyedge] (c1) -- (c2) -- (c3) -- (c4) -- (c5) -- (c1);
    \draw[diag] (c3) -- (c5);
    \draw[diag] (c3) -- (c1);
    \node at (0, -1.3) {\scriptsize $3$-as csúcsból};
  \end{scope}

  \begin{scope}[xshift=2.5cm]
    \node[pt] (d1) at (90:1.0) {};
    \node[pt] (d2) at (162:1.0) {};
    \node[pt] (d3) at (234:1.0) {};
    \node[pt] (d4) at (306:1.0) {};
    \node[pt] (d5) at (18:1.0) {};
    \draw[polyedge] (d1) -- (d2) -- (d3) -- (d4) -- (d5) -- (d1);
    \draw[diag] (d4) -- (d1);
    \draw[diag] (d4) -- (d2);
    \node at (0, -1.3) {\scriptsize $4$-es csúcsból};
  \end{scope}

  \begin{scope}[xshift=5.0cm]
    \node[pt] (e1) at (90:1.0) {};
    \node[pt] (e2) at (162:1.0) {};
    \node[pt] (e3) at (234:1.0) {};
    \node[pt] (e4) at (306:1.0) {};
    \node[pt] (e5) at (18:1.0) {};
    \draw[polyedge] (e1) -- (e2) -- (e3) -- (e4) -- (e5) -- (e1);
    \draw[diag] (e5) -- (e2);
    \draw[diag] (e5) -- (e3);
    \node at (0, -1.3) {\scriptsize $5$-ös csúcsból};
  \end{scope}

  \node at (0, -1.8) {\footnotesize $T_5 = C_3 = 5$: egy konvex ötszög mind az $5$ lehetséges háromszögelése (mindegyik $n-3 = 2$ átlót tartalmaz).};
\end{tikzpicture}
\end{center}

::: kiegeszites
**Kiegészítés — a háromszögelések és a Catalan-számok.**

*Előbb két egyszerű tény.* Egy konvex $n$-szög minden háromszögelésében **$n - 2$ háromszög és $n - 3$ átló** van. A háromszögek szögei együtt pontosan kiadják a sokszög szögeit (minden háromszög csúcsa a sokszög egy csúcsa), így a háromszögek száma $\frac{(n-2)\pi}{\pi} = n - 2$. Ha minden háromszög oldalait összeszámoljuk, $3(n-2)$-t kapunk; ebben a sokszög minden oldala egyszer, minden átló kétszer (a két oldalán levő háromszögnél) szerepel, így ha $d$ az átlók száma, $3(n-2) = n + 2d$, ahonnan $d = n - 3$.

*A rekurzió.* Számozzuk meg a sokszög csúcsait körbe $1$-től $m$-ig ($m \ge 3$). Az $\{1, m\}$ oldal minden háromszögelésben pontosan egy háromszöghöz tartozik; ennek harmadik csúcsa legyen $k$, ahol $2 \le k \le m - 1$. Ez a háromszög a sokszöget két részre vágja: az $1, 2, \dots, k$ csúcsú $k$-szögre és a $k, k+1, \dots, m$ csúcsú $(m-k+1)$-szögre, amelyeket egymástól függetlenül kell háromszögelni. Ha $k = 2$ (vagy $k = m-1$), az egyik rész egyetlen szakasszá fajul; ezt úgy vehetjük figyelembe, hogy megállapodás szerint $T_2 = 1$. Így
$$T_m = \sum_{k=2}^{m-1} T_k\,T_{m-k+1}.$$
Legyen $t_j = T_{j+2}$ ($j \ge 0$), tehát $t_0 = T_2 = 1$. Az $m = n + 2$ helyettesítéssel és $i = k - 2$ jelöléssel
$$t_n = T_{n+2} = \sum_{i=0}^{n-1} T_{i+2}\,T_{n-i+1} = \sum_{i=0}^{n-1} t_i\,t_{n-1-i} = \sum_{k=1}^{n} t_{k-1}\,t_{n-k}.$$
Ez éppen a Catalan-rekurzió, tehát a lemma szerint $t_n = C_n$, vagyis $T_n = C_{n-2}$. $\blacksquare$
:::

\begin{center}
\begin{tikzpicture}[scale=0.9,
  poly/.style={draw=black!70, thick},
  base/.style={draw=black, line width=2pt},
  triang/.style={draw=black, very thick, fill=black!10},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt}
]
  \coordinate (v1) at (-2.6, -1.0);
  \coordinate (v2) at (-3.2, 0.0);
  \coordinate (vk) at (-0.4, 1.8);
  \coordinate (vm1) at (2.8, 0.2);
  \coordinate (vm) at (2.2, -1.0);

  \draw[triang] (v1) -- (vk) -- (vm) -- (v1);
  \draw[poly] (v1) -- (v2) -- (-2.2, 1.2) -- (vk);
  \path (v2) -- (-2.2, 1.2) node[midway, left=2pt] {\scriptsize $\dots$};
  \draw[poly] (vk) -- (1.5, 1.5) -- (vm1) -- (vm);
  \path (1.5, 1.5) -- (vm1) node[midway, right=2pt] {\scriptsize $\dots$};
  \draw[base] (v1) -- (vm);

  \node[pt, label=below left:{\small $1$}] at (v1) {};
  \node[pt, label=left:{\small $2$}] at (v2) {};
  \node[pt, label=above:{\small $k$}] at (vk) {};
  \node[pt, label=right:{\small $m-1$}] at (vm1) {};
  \node[pt, label=below right:{\small $m$}] at (vm) {};

  \node at (-1.8, 0.2) {\footnotesize $k$-szög};
  \node at (-1.8, -0.2) {\scriptsize ($T_k$ mód)};
  \node at (1.3, 0.2) {\footnotesize $(m-k+1)$-szög};
  \node at (1.3, -0.2) {\scriptsize ($T_{m-k+1}$ mód)};
  \node at (-0.2, -1.3) {\footnotesize kitüntetett $\{1, m\}$ alapél};

  \node at (0, -2.1) {\footnotesize\begin{tabular}{c}
    Rekurzió háromszögelésekre: a rögzített $\{1, m\}$ alapélhez a $k$ csúcsot választva \\
    a sokszög két kisebb sokszögre bomlik: $T_m = \sum_{k=2}^{m-1} T_k T_{m-k+1}$.
  \end{tabular}};
\end{tikzpicture}
\end{center}

**(B) Szorzatok zárójelezése.** Hányféleképpen zárójelezhető egy $n$ tényezős szorzat, ha a tényezők sorrendje rögzített, és minden lépésben két tényezőt szorzunk össze? Négy tényezőre például
$$((a\cdot b)\cdot c)\cdot d,\quad (a\cdot(b\cdot c))\cdot d,\quad (a\cdot b)\cdot(c\cdot d),\quad a\cdot((b\cdot c)\cdot d),\quad a\cdot(b\cdot(c\cdot d)),$$
ez $5 = C_3$ lehetőség.

\begin{center}
\begin{tikzpicture}[scale=0.72,
  edge/.style={draw=black!70, thick},
  leaf/.style={inner sep=1pt, font=\scriptsize},
  treenode/.style={circle, draw=black, fill=black, inner sep=1.2pt}
]
  % 1: ((ab)c)d
  \begin{scope}[xshift=-5.2cm]
    \node[treenode] (r) at (0.38, 1.8) {};
    \node[treenode] (n1) at (-0.15, 1.2) {};
    \node[treenode] (n2) at (-0.6, 0.6) {};
    \node[leaf] (a) at (-0.9, 0) {$a$};
    \node[leaf] (b) at (-0.3, 0) {$b$};
    \node[leaf] (c) at (0.3, 0) {$c$};
    \node[leaf] (d) at (0.9, 0) {$d$};
    \draw[edge] (r) -- (n1);
    \draw[edge] (r) -- (d);
    \draw[edge] (n1) -- (n2);
    \draw[edge] (n1) -- (c);
    \draw[edge] (n2) -- (a);
    \draw[edge] (n2) -- (b);
    \node at (0, -0.4) {\scriptsize $((ab)c)d$};
  \end{scope}

  % 2: (a(bc))d
  \begin{scope}[xshift=-2.6cm]
    \node[treenode] (r) at (0.22, 1.8) {};
    \node[treenode] (n1) at (-0.45, 1.2) {};
    \node[treenode] (n2) at (0.0, 0.6) {};
    \node[leaf] (a) at (-0.9, 0) {$a$};
    \node[leaf] (b) at (-0.3, 0) {$b$};
    \node[leaf] (c) at (0.3, 0) {$c$};
    \node[leaf] (d) at (0.9, 0) {$d$};
    \draw[edge] (r) -- (n1);
    \draw[edge] (r) -- (d);
    \draw[edge] (n1) -- (a);
    \draw[edge] (n1) -- (n2);
    \draw[edge] (n2) -- (b);
    \draw[edge] (n2) -- (c);
    \node at (0, -0.4) {\scriptsize $(a(bc))d$};
  \end{scope}

  % 3: (ab)(cd)
  \begin{scope}[xshift=0cm]
    \node[treenode] (r) at (0.0, 1.8) {};
    \node[treenode] (n1) at (-0.6, 1.0) {};
    \node[treenode] (n2) at (0.6, 1.0) {};
    \node[leaf] (a) at (-0.9, 0) {$a$};
    \node[leaf] (b) at (-0.3, 0) {$b$};
    \node[leaf] (c) at (0.3, 0) {$c$};
    \node[leaf] (d) at (0.9, 0) {$d$};
    \draw[edge] (r) -- (n1);
    \draw[edge] (r) -- (n2);
    \draw[edge] (n1) -- (a);
    \draw[edge] (n1) -- (b);
    \draw[edge] (n2) -- (c);
    \draw[edge] (n2) -- (d);
    \node at (0, -0.4) {\scriptsize $(ab)(cd)$};
  \end{scope}

  % 4: a((bc)d)
  \begin{scope}[xshift=2.6cm]
    \node[treenode] (r) at (-0.22, 1.8) {};
    \node[treenode] (n1) at (0.45, 1.2) {};
    \node[treenode] (n2) at (0.0, 0.6) {};
    \node[leaf] (a) at (-0.9, 0) {$a$};
    \node[leaf] (b) at (-0.3, 0) {$b$};
    \node[leaf] (c) at (0.3, 0) {$c$};
    \node[leaf] (d) at (0.9, 0) {$d$};
    \draw[edge] (r) -- (a);
    \draw[edge] (r) -- (n1);
    \draw[edge] (n1) -- (n2);
    \draw[edge] (n1) -- (d);
    \draw[edge] (n2) -- (b);
    \draw[edge] (n2) -- (c);
    \node at (0, -0.4) {\scriptsize $a((bc)d)$};
  \end{scope}

  % 5: a(b(cd))
  \begin{scope}[xshift=5.2cm]
    \node[treenode] (r) at (-0.38, 1.8) {};
    \node[treenode] (n1) at (0.15, 1.2) {};
    \node[treenode] (n2) at (0.6, 0.6) {};
    \node[leaf] (a) at (-0.9, 0) {$a$};
    \node[leaf] (b) at (-0.3, 0) {$b$};
    \node[leaf] (c) at (0.3, 0) {$c$};
    \node[leaf] (d) at (0.9, 0) {$d$};
    \draw[edge] (r) -- (a);
    \draw[edge] (r) -- (n1);
    \draw[edge] (n1) -- (b);
    \draw[edge] (n1) -- (n2);
    \draw[edge] (n2) -- (c);
    \draw[edge] (n2) -- (d);
    \node at (0, -0.4) {\scriptsize $a(b(cd))$};
  \end{scope}

  \node at (0, -0.9) {\footnotesize Egy $4$ tényezős szorzat $C_3 = 5$ különböző zárójelezése és a nekik megfelelő bináris fák.};
\end{tikzpicture}
\end{center}

::: kiegeszites
**Kiegészítés — bizonyítás.** Jelölje $b_n$ egy $n + 1$ tényezős szorzat zárójelezéseinek számát; $b_0 = 1$ (egyetlen tényezőn nincs mit zárójelezni). Egy zárójelezésben az **utolsó** szorzás két részre bontja a szorzatot: az első $i + 1$ és az utolsó $n - i$ tényező szorzatára, ahol $0 \le i \le n - 1$. A két részt egymástól függetlenül kell zárójelezni, így
$$b_n = \sum_{i=0}^{n-1} b_i\,b_{n-1-i} = \sum_{k=1}^{n} b_{k-1}\,b_{n-k}.$$
A lemma szerint $b_n = C_n$; egy $n$ tényezős szorzat tehát $C_{n-1}$-féleképpen zárójelezhető. $\blacksquare$
:::

**(C) $\pm 1$ sorozatok.** Ahogy a 15. szakaszban láttuk, $n$ darab $+1$ és $n$ darab $-1$ olyan sorrendjeinek száma, amelyekben minden kezdőszelet összege nemnegatív, éppen $C_n$ — ez a pénztár-feladat átfogalmazása.

Ezzel a leszámlálás fejezet végére értünk.

## A II. rész összefoglalása

- **Barkochba:** $n$ elem közül egy kitalálásához $\lceil \log_2 n \rceil$ igen/nem kérdés kell és elég. Felső becslés: kettes számrendszer (a kérdések előre leírhatók). Alsó becslés: az ördög a nagyobbik felet választja, így $k$ válasz után még legalább $n/2^k$ lehetőség marad.
- **Fibonacci-számok:** $F_n = F_{n-1} + F_{n-2}$, $F_0 = 0$, $F_1 = 1$; $\sum_{i=1}^k F_i = F_{k+2} - 1$, $\sum_{i=1}^{k} F_{2i-1} = F_{2k}$, $\sum_{i=1}^k F_i^2 = F_kF_{k+1}$, $F_{n+1}F_{n-1} - F_n^2 = (-1)^n$; Binet-képlet: $F_n = \frac{1}{\sqrt5}\big(\Phi^n - \Psi^n\big)$.
- **Lineáris rekurziók:** az $a_n = c_1a_{n-1} + c_2a_{n-2}$ megoldásai kétdimenziós alteret alkotnak. Karakterisztikus egyenlet: $q^2 - c_1q - c_2 = 0$. Két különböző gyök esetén $a_n = \alpha q_1^n + \beta q_2^n$, kétszeres gyök esetén $a_n = \alpha q^n + \beta nq^n$; $\alpha$ és $\beta$ a kezdeti feltételekből adódik. $k$-adrendű rekurziónál egy $m$-szeres $q$ gyök a $q^n, nq^n, \dots, n^{m-1}q^n$ megoldásokat adja. Visszafelé: a megoldás alakjából a gyököket, abból a rekurziót kapjuk (pl. $n^3$ csak negyedrendű rekurziónak lehet megoldása).
- **Rekurzív gondolkodás:** nevezzük el a mennyiséget, számoljunk kis eseteket, keressünk rekurziót esetszétválasztással (lépcsőmászás: $L_n = F_{n+1}$; szomszédos $1$-esek nélküli $0$–$1$ sorozatok: $F_{n+2}$; dominólefedések: $F_{n+1}$).
- **Rácsutak:** $(0,0) \to (a,b)$: $\binom{a+b}{a}$. **Tükrözési elv:** az első érintés utáni rész tükrözése bijekció.
- **Catalan-számok:** $C_n = \binom{2n}{n} - \binom{2n}{n-1} = \frac{1}{n+1}\binom{2n}{n}$, rekurzió: $C_n = \sum_{k=1}^n C_{k-1}C_{n-k}$. Ezek számolják a pénztár-feladat jó sorrendjeit, a helyes zárójelezéseket, a konvex $(n+2)$-szög háromszögeléseit és az $n+1$ tényezős szorzat zárójelezéseit.

---
