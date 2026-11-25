## 14. Rácsutak és a tükrözési elv

A Catalan-számok előkészítéseként két, első ránézésre egymástól távoli feladatot vizsgálunk.

### Rácsutak

> **Feladat.** A síkon az $S = (0, 0)$ pontból az $E = (a, b)$ pontba szeretnénk eljutni úgy, hogy minden lépésben $1$-et lépünk **jobbra** vagy $1$-et **felfelé**. Hányféle ilyen útvonal (töröttvonal) van?

> **Állítás.** Az ilyen útvonalak száma $\displaystyle\binom{a+b}{a}$.

::: kiegeszites
**Kiegészítés — bizonyítás.** Minden útvonal pontosan $a$ jobbra és $b$ felfelé lépésből áll, összesen $a + b$ lépésből. Az útvonalat egyértelműen meghatározza, hogy az $a + b$ lépés közül melyik $a$ a jobbra lépés; és minden ilyen kiválasztás pontosan egy útvonalat ad. (Ez bijekció az útvonalak és az $[a+b]$ halmaz $a$ elemű részhalmazai között.) Az útvonalak száma tehát $\binom{a+b}{a}$. Másképp: ez a $J\dots J\,F\dots F$ szó ($a$ darab $J$, $b$ darab $F$) ismétléses permutációinak száma, $\frac{(a+b)!}{a!\,b!}$. $\blacksquare$
:::

\begin{center}
\begin{tikzpicture}[scale=0.85,
  gridline/.style={draw=black!25, thin},
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}, thick},
  pathstep/.style={draw=black, very thick, -{Stealth[scale=0.8]}},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt}
]
  \draw[gridline] (0, 0) grid (4, 3);
  \draw[axis] (-0.4, 0) -- (4.7, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -0.4) -- (0, 3.7) node[above] {\footnotesize $y$};

  \foreach \x in {1, 2, 3, 4} {
    \draw (\x, 0.08) -- (\x, -0.08) node[below] {\scriptsize \x};
  }
  \foreach \y in {1, 2, 3} {
    \draw (0.08, \y) -- (-0.08, \y) node[left] {\scriptsize \y};
  }

  \draw[pathstep] (0,0) -- (1,0) node[midway, below=1pt] {\scriptsize $J$};
  \draw[pathstep] (1,0) -- (2,0) node[midway, below=1pt] {\scriptsize $J$};
  \draw[pathstep] (2,0) -- (2,1) node[midway, right=1pt] {\scriptsize $F$};
  \draw[pathstep] (2,1) -- (3,1) node[midway, below=1pt] {\scriptsize $J$};
  \draw[pathstep] (3,1) -- (3,2) node[midway, right=1pt] {\scriptsize $F$};
  \draw[pathstep] (3,2) -- (3,3) node[midway, right=1pt] {\scriptsize $F$};
  \draw[pathstep] (3,3) -- (4,3) node[midway, above=1pt] {\scriptsize $J$};

  \node[pt, label=below left:{\footnotesize $S(0,0)$}] at (0,0) {};
  \node[pt, label=above right:{\footnotesize $E(4,3)$}] at (4,3) {};

  \node at (2, -1.0) {\footnotesize Egy rácsút $(0,0)$-ból $(4,3)$-ba: $4$ darab $J$ és $3$ darab $F$ lépés; összesen $\binom{4+3}{4} = 35$ ilyen út van.};
\end{tikzpicture}
\end{center}

### Ferde utak a rácson

Egy másik gyakori — a következő szakaszban közvetlenül is használható — rácsútmodellben a lépések iránya átlós.

> **Definíció (Ferde út).** *Ferde lépésnek* nevezzük az $(1, 1)$ vektorral (ferdén felfelé) vagy az $(1, -1)$ vektorral (ferdén lefelé) való lépést. Egy rácspontokon haladó út **ferde út**, ha minden lépése ferde lépés.

Mivel minden ferde lépés pontosan $1$-gyel növeli az $x$-koordinátát, egy $(0, 0)$-ból az $(a, b)$ pontba vezető ferde út szükségképpen pontosan $a$ lépésből áll.

> **Lemma (Ferde utak száma).** Legyenek $a \ge 0$ és $b \in \mathbb{Z}$ egészek. Az origóból az $(a, b)$ pontba vezető ferde utak száma
> $$\binom{a}{(a+b)/2},$$
> ha $a + b$ páros és $|b| \le a$; különben nincs ilyen út.

*Bizonyítás.* Jelölje $f$ a felfelé, $\ell$ a lefelé lépések számát. Mivel minden lépés $1$-gyel növeli az $x$-koordinátát, $f + \ell = a$; az $y$-koordináta felfelé lépéskor $1$-gyel nő, lefelé lépéskor $1$-gyel csökken, így $f - \ell = b$. A két egyenletet összeadva $2f = a + b$, vagyis
$$f = \frac{a + b}{2}.$$
Ez pontosan akkor egész, ha $a + b$ páros, és pontosan akkor esik $0$ és $a$ közé ($0 \le f \le a$, azaz $0 \le \frac{a+b}{2} \le a \iff -a \le b \le a$), ha $|b| \le a$. Ilyenkor az $a$ lépés közül pontosan az a kérdés, melyik $f = \frac{a+b}{2}$ lépés megy ferdén felfelé, tehát az utak száma $\binom{a}{(a+b)/2}$. $\blacksquare$

**Megjegyzés (Binomiális együttható kiterjesztése).** A $|b| \le a$ feltétel szemléletesen azt jelenti, hogy az $(a, b)$ pont az $y = x$ és az $y = -x$ egyenesek közötti, a pozitív $x$-tengelyt tartalmazó szögtartományban fekszik. Ha megállapodunk abban, hogy $\binom{n}{m} = 0$, valahányszor $m < 0$ vagy $m > n$ (összhangban azzal, hogy egy $n$ elemű halmaznak ilyenkor nincs $m$ elemű részhalmaza), akkor a lemma $\binom{a}{(a+b)/2}$ képlete minden olyan esetben igaz, amikor $a + b$ páros.

\begin{center}
\begin{tikzpicture}[scale=0.68,
  gridline/.style={draw=black!20, thin},
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}, thick},
  cone/.style={draw=black!45, dashed},
  pathstep/.style={draw=black, very thick, -{Stealth[scale=0.8]}},
  pt/.style={circle, draw=black, fill=black, inner sep=1.7pt}
]
  \draw[gridline] (0, -2) grid (6, 4);
  \draw[axis] (-0.4, 0) -- (6.7, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -2.4) -- (0, 4.4) node[above] {\footnotesize $y$};
  \draw[cone] (0,0) -- (4.3, 4.3) node[above right] {\scriptsize $y=x$};
  \draw[cone] (0,0) -- (2.3, -2.3) node[below right] {\scriptsize $y=-x$};

  \draw[pathstep] (0,0) -- (1,1);
  \draw[pathstep] (1,1) -- (2,2);
  \draw[pathstep] (2,2) -- (3,1);
  \draw[pathstep] (3,1) -- (4,2);
  \draw[pathstep] (4,2) -- (5,3);
  \draw[pathstep] (5,3) -- (6,2);

  \node[pt, label=below left:{\footnotesize $(0,0)$}] at (0,0) {};
  \node[pt, label=right:{\footnotesize $(6,2)$}] at (6,2) {};

  \node at (3.2, -3.0) {\footnotesize Ferde út $(0,0)$-ból $(6,2)$-be: $6$ lépésből $f = \frac{6+2}{2} = 4$ felfelé, $\ell = 2$ lefelé; összesen $\binom{6}{4} = 15$ út.};
\end{tikzpicture}
\end{center}

### A folyó-probléma

> **Feladat.** Egy egyenes folyó ugyanazon partján áll a $B$ pont és az $M$ pont. A $B$-ből az $M$-be kell eljutnunk úgy, hogy közben **érintjük a folyót** (például vizet merítünk belőle). Melyik a legrövidebb útvonal?

Az ötlet a **tükrözés**. Tükrözzük az $M$ pontot a folyó egyenesére; a tükörképe legyen $M'$. Ha $P$ a folyó egy tetszőleges pontja, akkor a tükrözés miatt $|PM| = |PM'|$, így a $B \to P \to M$ útvonal hossza
$$|BP| + |PM| = |BP| + |PM'| \ge |BM'|$$
a háromszög-egyenlőtlenség szerint, egyenlőséggel pontosan akkor, ha $P$ a $BM'$ szakaszon van. A legrövidebb útvonal tehát az, amelyik a folyót a $BM'$ szakasz és a folyó metszéspontjában érinti.

Valójában többet is kaptunk: egy **kölcsönösen egyértelmű megfeleltetést** a folyót érintő $B \to M$ útvonalak és a $B \to M'$ útvonalak között. Egy folyót érintő útvonalnak az **első** érintési pont *utáni* részét tükrözzük a folyóra, így egy $B$-ből $M'$-be vezető útvonalat kapunk; megfordítva, minden $B \to M'$ útvonal keresztezi a folyót (hiszen $B$ és $M'$ a két ellentétes parton van), és ha az első közös pont utáni részét visszatükrözzük, a folyót érintő $B \to M$ útvonalat kapunk. Ez a két művelet egymás inverze. (Megjegyezzük, hogy pontosan ugyanilyen érvényes bijekciót kapunk akkor is, ha az első érintési pont helyett mindenütt az **utolsó** érintési pont utáni részt tükrözzük.) Ez a **tükrözési elv**, és a következő szakaszban rácsutakra alkalmazzuk.

\begin{center}
\begin{tikzpicture}[scale=0.9,
  river/.style={draw=black!70, very thick},
  bank/.style={draw=none, fill=black!6},
  pathopt/.style={draw=black, very thick},
  pathsub/.style={draw=black!50, dashed, thick},
  pathalt/.style={draw=black!40, thick},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt}
]
  \fill[bank] (-0.5, -0.15) rectangle (6.5, 0.15);
  \draw[river] (-0.5, 0) -- (6.5, 0) node[right] {\footnotesize folyó ($y=0$)};

  \node[pt, label=above left:{\small $B$}] (B) at (0.8, 2.0) {};
  \node[pt, label=above right:{\small $M$}] (M) at (5.2, 1.6) {};
  \node[pt, label=below right:{\small $M'$ \footnotesize (tükörkép)}] (Mp) at (5.2, -1.6) {};
  \node[pt, label=above:{\footnotesize $P^*$}] (Pstar) at (3.24, 0) {};
  \node[pt, label=above:{\footnotesize $P$}] (Palt) at (1.8, 0) {};

  \draw[draw=black!30, dashed] (M) -- (Mp);
  \draw[pathopt] (B) -- (Pstar) -- (M);
  \draw[pathsub] (Pstar) -- (Mp);
  \draw[pathalt] (B) -- (Palt) -- (M);
  \draw[draw=black!30, dashed] (Palt) -- (Mp);

  \node at (3.0, -2.4) {\footnotesize A tükrözési elv: $|BP| + |PM| = |BP| + |PM'| \ge |BM'|$, egyenlőség a $P^*$ metszéspontban áll fenn.};
\end{tikzpicture}
\end{center}

## 15. A Catalan-számok

A **Catalan-számok** Eugène Charles Catalan belga matematikusról kapták a nevüket. A sorozat első tagjai
$$1, 1, 2, 5, 14, 42, 132, \dots$$
Rengeteg leszámlálási feladat vezet rájuk. Most egy ilyen feladaton keresztül vezetjük be őket, és megmutatjuk, hogyan számolhatók ki: először a tükrözési elvvel, a következő szakaszban pedig — ahol előkerül a rekurziós gondolat is — rekurzióval.

### A pénztár-feladat

> **Feladat.** Egy mozipénztár előtt $2n$ ember áll sorban. A jegy $1$ euróba kerül; $n$ embernél egy $1$ eurós, $n$ embernél egy $2$ eurós érme van. A pénztárban kezdetben **nincs pénz**. A $2$ eurós érmével fizetőknek $1$ eurót vissza kell adni. Hányféle lehet a sorban állók sorrendje (csak azt figyeljük, ki milyen érmével fizet), ha azt szeretnénk, hogy a pénztáros **mindig vissza tudjon adni**?

Ha például az első ember $2$ euróval fizet, akkor nem lehet visszaadni: ez egy rossz sorban állás. Kis esetek: $n = 1$-re csak az $(1, 2)$ sorrend jó; $n = 2$-re az $(1, 1, 2, 2)$ és az $(1, 2, 1, 2)$, tehát $2$ jó sorrend van; $n = 3$-ra $5$.

A feladat sokféle alakban megfogalmazható:

- **$\pm 1$ sorozatok.** Írjunk $+1$-et minden $1$ eurós és $-1$-et minden $2$ eurós fizetőhöz. A pénztárban levő $1$ eurósok száma a sorozat részletösszege. A jó sorrendek tehát éppen azok a sorozatok, amelyek $n$ darab $+1$-ből és $n$ darab $-1$-ből állnak, és **minden kezdőszeletük összege nemnegatív**. Például $n = 5$-re a
$$+\,-\,+\,+\,+\,-\,+\,-\,-\,-$$
sorozat részletösszegei $1, 0, 1, 2, 3, 2, 3, 2, 1, 0$, tehát jó.

- **Helyes zárójelezések.** Ha $+1$ helyett „(”-t, $-1$ helyett „)”-t írunk, a jó sorozatok éppen a helyesen zárójelezett kifejezések $n$ zárójelpárral, például $(\,(\,(\,\dots)\,\dots)\,\dots)$.
- **Rácsutak.** Ezt a változatot érdemes lerajzolni.

### Ábrázoljuk!

Feleltessük meg minden sorrendnek egy rácsutat (töröttvonalat): az $1$ eurós fizető legyen egy **jobbra** lépés, a $2$ eurós egy **felfelé** lépés. Ez kölcsönösen egyértelmű megfeleltetés a sorrendek és a $(0, 0)$-ból az $(n, n)$-be vezető rácsutak között. Ha $j$ ember fizetett már, és közülük $x$ fizetett $1$, $y$ pedig $2$ euróval, akkor az út az $(x, y)$ pontban van, a pénztárban pedig $x - y$ darab $1$ eurós van.

**Mikor rossz egy sorrend?** Pontosan akkor, ha valamikor egy $2$ eurós fizető üres pénztárhoz érkezik, vagyis ha az út valamikor az $y = x$ átló **fölé** lép. Mivel az út rácspontokon halad, ez azt jelenti, hogy az út **rálép az $y = x + 1$ egyenesre**. Ez a **tiltott egyenes**: ha rálépünk, baj van.

\begin{center}
\begin{tikzpicture}[scale=0.9,
  gridline/.style={draw=black!25, thin},
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}, thick},
  diag/.style={draw=black!75, thick},
  forbidden/.style={draw=black!60, dashed, thick},
  goodpath/.style={draw=black, very thick},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt}
]
  \fill[black!4] (0,0) -- (4,0) -- (4,4) -- cycle;
  \draw[gridline] (0,0) grid (4,4);
  \draw[axis] (-0.3, 0) -- (4.8, 0) node[right] {\footnotesize $x$ \scriptsize ($1$ eurósok)};
  \draw[axis] (0, -0.3) -- (0, 4.8) node[above] {\footnotesize $y$ \scriptsize ($2$ eurósok)};

  \foreach \i in {1, 2, 3, 4} {
    \draw (\i, 0.08) -- (\i, -0.08) node[below] {\scriptsize \i};
    \draw (0.08, \i) -- (-0.08, \i) node[left] {\scriptsize \i};
  }

  \draw[diag] (-0.2, -0.2) -- (4.5, 4.5) node[right] {\footnotesize $y = x$ \scriptsize (egyenleg $\ge 0$)};
  \draw[forbidden] (-0.2, 0.8) -- (3.5, 4.5) node[above left] {\footnotesize $y = x + 1$ \scriptsize (tiltott egyenes)};

  \draw[goodpath] (0,0) -- (1,0) -- (2,0) -- (2,1) -- (3,1) -- (3,2) -- (3,3) -- (4,3) -- (4,4);

  \node[pt, label=below left:{\footnotesize $(0,0)$}] at (0,0) {};
  \node[pt, label=above right:{\footnotesize $(4,4)$}] at (4,4) {};

  \node at (2.2, -1.1) {\footnotesize Jó sorrend (Dyck-út): az út végig az $y = x$ átlón vagy alatta halad ($x \ge y$), így elkerüli a tiltott egyenest.};
\end{tikzpicture}
\end{center}

### Dobjuk ki a rosszat!

Az összes út száma $\binom{2n}{n}$ (14. szakasz). A jó utak számához meg kell számolnunk a rossz utakat, vagyis azokat, amelyek érintik a tiltott egyenest. Ehhez a tükrözési elvet használjuk.

> **Állítás.** A $(0,0)$-ból $(n, n)$-be vezető, az $y = x + 1$ egyenest érintő rácsutak kölcsönösen egyértelműen megfeleltethetők a $(0, 0)$-ból az $(n-1, n+1)$ pontba vezető rácsutaknak.

*Bizonyítás.* Az $y = x + 1$ egyenesre való tükrözés az $(x, y)$ pontot az $(y - 1, x + 1)$ pontba viszi, és a jobbra lépéseket felfelé lépésekké alakítja, és fordítva. Az $(n, n)$ pont tükörképe $(n-1, n+1)$.

Legyen $P$ egy rossz út, és $T$ az a pont, ahol $P$ **először** érinti a tiltott egyenest. Tükrözzük $P$-nek a $T$ **utáni** részét az egyenesre, a $T$ előtti részt pedig hagyjuk változatlanul. Az így kapott út $(0,0)$-ból indul, és a tükörképbe, $(n-1, n+1)$-be érkezik.

Megfordítva: minden $(0,0) \to (n-1, n+1)$ út érinti a tiltott egyenest. Az $y - x$ különbség ugyanis a $(0,0)$ pontban $0$, a végpontban $2$, és minden lépés $\pm 1$-gyel változtatja, tehát valahol $1$ — ott az út a tiltott egyenesen van. Az első ilyen pont utáni részt visszatükrözve egy $(0,0) \to (n, n)$ rossz utat kapunk.

A két eljárás egymás inverze, mert a tükrözés nem változtat az első érintési ponton és az azt megelőző szakaszon. $\blacksquare$

\begin{center}
\begin{tikzpicture}[scale=0.85,
  gridline/.style={draw=black!25, thin},
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}, thick},
  diag/.style={draw=black!40, thin},
  forbidden/.style={draw=black!70, dashed, thick},
  commonpath/.style={draw=black, very thick},
  origtail/.style={draw=black!45, line width=1.4pt},
  refltail/.style={draw=black, very thick, dashed},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  hitpt/.style={circle, draw=black, fill=white, very thick, inner sep=2.2pt}
]
  \draw[gridline] (0,0) grid (4,5);
  \draw[axis] (-0.3, 0) -- (4.8, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -0.3) -- (0, 5.6) node[above] {\footnotesize $y$};

  \foreach \x in {1, 2, 3, 4} {
    \draw (\x, 0.08) -- (\x, -0.08) node[below] {\scriptsize \x};
  }
  \foreach \y in {1, 2, 3, 4, 5} {
    \draw (0.08, \y) -- (-0.08, \y) node[left] {\scriptsize \y};
  }

  \draw[diag] (-0.2, -0.2) -- (4.4, 4.4) node[right] {\scriptsize $y = x$};
  \draw[forbidden] (-0.3, 0.7) -- (4.2, 5.2) node[above] {\footnotesize $y = x + 1$ \scriptsize (tiltott egyenes)};

  \draw[commonpath] (0,0) -- (1,0) -- (1,1) -- (1,2);
  \draw[origtail] (1,2) -- (2,2) -- (3,2) -- (3,3) -- (4,3) -- (4,4);
  \draw[refltail] (1,2) -- (1,3) -- (1,4) -- (2,4) -- (2,5) -- (3,5);
  \draw[draw=black!30, dotted, thick] (4,4) -- (3,5);

  \node[pt, label=below left:{\footnotesize $(0,0)$}] at (0,0) {};
  \node[hitpt, label=above left:{\small $T(1,2)$}] at (1,2) {};
  \node[pt, label=right:{\small $(4,4) = (n,n)$}] at (4,4) {};
  \node[pt, label=above:{\small $(3,5) = (n-1, n+1)$}] at (3,5) {};

  \node at (2.0, -1.4) {\footnotesize\begin{tabular}{c}
    André tükrözése: az első érintési pont ($T$) utáni szakaszt tükrözve \\
    a végpont az $(n,n)$ célpontból az $(n-1,n+1)$ tükörképbe jut. \\
    \scriptsize (Szürke: eredeti folytatás, fekete szaggatott: tükrözött folytatás)
  \end{tabular}};
\end{tikzpicture}
\end{center}

A 14. szakasz szerint a $(0, 0) \to (n-1, n+1)$ utak száma $\binom{(n-1)+(n+1)}{n-1} = \binom{2n}{n-1}$. Így a jó utak száma $\binom{2n}{n} - \binom{2n}{n-1}$.

> **Tétel (a Catalan-számok képlete).** A pénztár-feladat jó sorrendjeinek száma — az $n$-edik **Catalan-szám** —
> $$C_n = \binom{2n}{n} - \binom{2n}{n-1} = \frac{1}{n+1}\binom{2n}{n}.$$

::: kiegeszites
**Kiegészítés — a második egyenlőség.** Mivel $(n+1)! = (n+1)\cdot n!$ és $n! = n \cdot (n-1)!$,
$$\binom{2n}{n-1} = \frac{(2n)!}{(n-1)!\,(n+1)!} = \frac{(2n)!}{n!\,n!}\cdot\frac{n}{n+1} = \frac{n}{n+1}\binom{2n}{n},$$
így
$$\binom{2n}{n} - \binom{2n}{n-1} = \left(1 - \frac{n}{n+1}\right)\binom{2n}{n} = \frac{1}{n+1}\binom{2n}{n}. \ \blacksquare$$
:::

Az első néhány érték (megállapodás szerint $C_0 = 1$, ami az üres sornak felel meg):

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $\binom{2n}{n}$ | 1 | 2 | 6 | 20 | 70 | 252 | 924 | 3432 | 12870 | 48620 |
| $C_n$ | 1 | 1 | 2 | 5 | 14 | 42 | 132 | 429 | 1430 | 4862 |

### Ferde utas levezetés és a tükrözési módszer receptje

A pénztár-feladatot **ferde utakkal** is felírhatjuk, ami sok alkalmazásban még áttekinthetőbb, mert a „pénztár egyenlege” közvetlenül a függőleges $y$-koordináta lesz:

- Ha valaki $1$ euróssal ($10$ forintossal) fizet, lépjünk $(1, 1)$-gyel ferdén felfelé; ha $2$ euróssal ($20$ forintossal), lépjünk $(1, -1)$-gyel ferdén lefelé. Ekkor a jó és rossz sorrendek együttesen az $(0, 0) \to (2n, 0)$ ferde utak ($\binom{2n}{n}$ darab).
- A pénztáros pontosan akkor akad el valamikor, ha az út az $x$-tengely alá megy, vagyis érinti a **tiltott $y = -1$ vízszintes egyenest**.
- A végpont, $(2n, 0)$ tükörképe az $y = -1$ egyenesre a $(2n, -2)$ pont. Egy rossz út utolsó $y = -1$-en lévő $X$ pontja utáni részét tükrözve bijekciót kapunk az $y = -1$-et érintő $(0, 0) \to (2n, 0)$ és az összes $(0, 0) \to (2n, -2)$ ferde út között. A ferde utakról szóló lemma alapján utóbbiak száma $\binom{2n}{(2n-2)/2} = \binom{2n}{n-1}$, így újra $C_n = \binom{2n}{n} - \binom{2n}{n-1}$ adódik.

\begin{center}
\begin{tikzpicture}[scale=0.72,
  gridline/.style={draw=black!20, thin},
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}, thick},
  forbidden/.style={draw=black!70, dashed, thick},
  commonpath/.style={draw=black, very thick},
  origtail/.style={draw=black!45, line width=1.4pt},
  refltail/.style={draw=black, very thick, dashed},
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  hitpt/.style={circle, draw=black, fill=white, very thick, inner sep=2.2pt}
]
  \draw[gridline] (0,-3) grid (8,2);
  \draw[axis] (-0.3, 0) -- (8.8, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -3.3) -- (0, 2.5) node[above] {\footnotesize $y$};
  \draw[forbidden] (-0.3, -1) -- (8.6, -1) node[right] {\footnotesize $y = -1$ \scriptsize (tiltott egyenes)};

  % Rossz ut: (0,0)->(1,1)->(2,0)->(3,-1)->(4,0)->(5,-1)->(6,0)->(7,1)->(8,0)
  % Utolso erintes: X=(5,-1)
  \draw[commonpath] (0,0) -- (1,1) -- (2,0) -- (3,-1) -- (4,0) -- (5,-1);
  \draw[origtail] (5,-1) -- (6,0) -- (7,1) -- (8,0);
  \draw[refltail] (5,-1) -- (6,-2) -- (7,-3) -- (8,-2);
  \draw[draw=black!30, dotted, thick] (8,0) -- (8,-2);

  \node[pt, label=above left:{\footnotesize $(0,0)$}] at (0,0) {};
  \node[hitpt, label=below left:{\small $X(5,-1)$}] at (5,-1) {};
  \node[pt, label=above right:{\footnotesize $(2n,0)$}] at (8,0) {};
  \node[pt, label=below right:{\footnotesize $(2n,-2)$}] at (8,-2) {};

  \node at (4.0, -3.9) {\footnotesize Ferde utas tükrözés ($n = 4$): az utolsó $X \in \{y = -1\}$ pont utáni rész tükrözése $(2n,-2)$-be visz.};
\end{tikzpicture}
\end{center}

> **Tipikus példa (Belépés a táncterembe).** Hányféleképpen mehet be $12$ fiú és $14$ lány egy táncterembe (egyesével), ha odabent mindig legalább annyi lány kell legyen, mint fiú? *Mi változik, ha a személyek megkülönböztethetők?*
>
> - **Séta:** Egy belépő fiú jelentsen $(1, 1)$ (ferdén felfelé), egy belépő lány $(1, -1)$ (ferdén lefelé) lépést. A magasság a bent lévő fiúk és lányok számának különbsége, így a $(0, 0)$-ból a $(26, -2)$ pontba jutunk ($26$ lépésből $12$ felfelé). Az összes séta száma $\binom{26}{12}$.
> - **Tiltott egyenes:** A feltétel szerint a magasság soha nem lehet pozitív, vagyis az út nem érintheti az $y = 1$ egyenest.
> - **Számolás:** A $(26, -2)$ végpont tükörképe az $y = 1$ egyenesre $(26, 4)$. A tükrözési elv szerint a rossz séták bijekcióban állnak a $(0, 0) \to (26, 4)$ ferde utakkal, amelyek száma $\binom{26}{(26+4)/2} = \binom{26}{15} = \binom{26}{11}$. A jó fiú–lány belépési sorrendek száma tehát
>   $$\binom{26}{12} - \binom{26}{11}.$$
>   Ha a belépő emberek **megkülönböztethetők**, minden jó fiú–lány mintázatnál a $12$ fiú $12!$-féle, a $14$ lány $14!$-féle sorrendben érkezhet, így a válasz $12! \cdot 14! \cdot \left(\binom{26}{12} - \binom{26}{11}\right)$.

A hasonló feladatok megoldásának **általános háromlépéses receptje** mindig ugyanaz:
1. A feladatot lefordítjuk rácspontokon való sétára.
2. Meghatározzuk a **tiltott egyenest**: azokat a pontokat, ahol a feltétel először sérül (például ha a különbség egyszer $+1$ lesz, mielőtt $+2$ lehetne).
3. A jó séták számát *összes mínusz rossz* alakban kapjuk; a rossz séták száma a kezdőpontból a végpont tiltott egyenesre vett tükörképébe vezető séták száma. (Ha a személyek vagy tárgyak megkülönböztethetők, a végén szorozni kell a belső sorrendek számával.)
