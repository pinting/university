# IV. RÉSZ: ÖSSZEFÜGGŐSÉG, EXTREMÁLIS GRÁFELMÉLET ÉS HALMAZRENDSZEREK

Az eddigi kérdések többsége **létezési** kérdés volt: van-e a gráfban Euler-körséta, Hamilton-kör, teljes párosítás? Ebben a részben **mennyiségi** kérdéseket teszünk fel. Mennyire „erősen” összefüggő egy gráf: hány csúcs vagy él kiesését bírja ki? Mekkorának kell lennie egy gráfnak ahhoz, hogy biztosan legyen benne egy adott alakzat (Ramsey), és legfeljebb hány éle lehet, ha nincs benne (Turán)? Végül egy alaphalmaz részhalmazaiból álló családokat vizsgálunk: legfeljebb hány tagjuk lehet, ha a tagok bizonyos módon viszonyulnak egymáshoz (Sperner, Erdős–Ko–Rado)? Ezek az **extremális kombinatorika** kérdései. A bizonyításokban a korábbi eszközök — skatulyaelv, kettős leszámlálás, indukció, a Hall-tétel — mind visszatérnek, a végén pedig egy új eszköz, a lineáris algebra is megjelenik.

Az első témakörünk a **többszörös összefüggőség**. Ezt az előadás rendjét követve **Menger tételeivel** kezdjük, mert ezek adják majd a legfontosabb eszközt ahhoz, hogy a többszörös összefüggőséget utakkal jellemezzük.

## 50. Menger tételei

Képzeljünk el egy számítógép-hálózatot vagy úthálózatot — egy $G$ gráfot —, amelyben egy $s$ csúcsból egy másik $t$ csúcsba ($s \ne t \in V(G)$) szeretnénk **üzenetet** juttatni. Kétféle helyzetet vizsgálhatunk: a gráf lehet **irányítatlan** (kétirányú kapcsolatok) vagy **irányított** (az éleken csak a nyíl irányában lehet üzenetet továbbítani).

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!65, thick}
]
  \draw[draw=black!60, thick] (0, 0) ellipse (3.1 and 1.25);
  \node at (-2.7, 1.0) {$G$};
  \node[pt, label=below:{\footnotesize $s$}] (s) at (-2.0, -0.1) {};
  \node[pt] (a1) at (-0.9, 0.55) {};
  \node[pt] (a2) at (-0.9, -0.35) {};
  \node[pt] (b1) at (-0.1, 0.85) {};
  \node[pt] (b2) at (-0.1, 0.05) {};
  \node[pt] (b3) at (-0.1, -0.75) {};
  \node[pt] (c1) at (1.1, 0.45) {};
  \node[pt] (c2) at (1.1, -0.45) {};
  \node[pt, label=below:{\footnotesize $t$}] (t) at (2.0, -0.1) {};
  \draw[edge] (s) -- (a1) -- (b1);
  \draw[edge] (a1) -- (b2);
  \draw[edge] (s) -- (a2) -- (b2);
  \draw[edge] (a2) -- (b3);
  \draw[edge] (c1) -- (t);
  \draw[edge] (c2) -- (t);
  \draw[edge] (c1) -- (0.7, 0.75);
  \draw[edge] (c2) -- (0.7, -0.75);
  \draw[edge, dashed, draw=black!40] (b1) -- (c1);
  \draw[edge, dashed, draw=black!40] (b2) -- (c1);
  \draw[edge, dashed, draw=black!40] (b3) -- (c2);
  \draw[-{Stealth[scale=1.1]}, thick] (-2.0, -1.75) -- (2.0, -1.75) node[midway, below=2pt] {\footnotesize üzenet};
  \node at (-2.3, -1.75) {$s$};
  \node at (2.3, -1.75) {$t$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

Tegyük fel, hogy egy **ellenség** meg akarja akadályozni az üzenet célba érését. Attól függően, hogy mit támad az ellenség, két alapvető kérdést kapunk:

- **Ha az ellenség a csúcsokon van** (csomópontokat tud megsemmisíteni): hány olyan úton küldhetünk egyszerre üzenetet, amelyek közbenső csomópontjai nem fedik egymást (**csúcsdiszjunkt** utak), és legalább hány csúcs elhagyásával tudja az ellenség az összes $s$-$t$ utat elvágni?
- **Ha az ellenség az éleken van** (vezetékeket tud elvágni): hány közös él nélküli (**éldiszjunkt**) $s$-$t$ út van, és legalább hány él elvágásával tudja az ellenség az összes $s$-$t$ utat leállítani?

Pontosan rögzítjük a fogalmakat.

> **Definíció.** Legyen $G$ irányítatlan vagy irányított gráf, és $s \ne t \in V(G)$. Az $s$-ből $t$-be menő (irányítatlan, illetve irányított) utak
>
> - **éldiszjunktak**, ha páronként nincs közös élük;
> - **(belsőleg) csúcsdiszjunktak** (pontdiszjunktak), ha páronként nincs közös csúcsuk az $s$ és $t$ végpontokon kívül.
>
> Az $s$-ből $t$-be menő összes utat **lefogó** (más szóval $s$-et és $t$-t **elválasztó**)
>
> - **élhalmaz** egy olyan $F \subseteq E(G)$, amely minden $s$-ből $t$-be menő útból tartalmaz legalább egy élt (azaz $G - F$-ben nincs $s$-$t$ út);
> - **csúcshalmaz** egy olyan $X \subseteq V(G) \setminus \{s, t\}$, amely minden $s$-ből $t$-be menő útból tartalmaz legalább egy belső csúcsot (azaz $G - X$-ben nincs $s$-$t$ út).

A „csúcsdiszjunkt / éldiszjunkt” és az „irányítatlan / irányított” választás egymástól függetlenül kombinálható, így Menger tételének valójában **négy változata** van:

| | irányítatlan gráf | irányított gráf |
|:-:|:--|:--|
| **csúcsdiszjunkt** | belsőleg csúcsdiszjunkt $s$-$t$ utak vs. lefogó csúcsok | belsőleg csúcsdiszjunkt irányított $s$-$t$ utak vs. lefogó csúcsok |
| **éldiszjunkt** | éldiszjunkt $s$-$t$ utak vs. lefogó élek | éldiszjunkt irányított $s$-$t$ utak vs. lefogó élek |

Tekintsük tehát minden változatban a következő két számot:

1. az $s$-ből $t$-be menő (csúcs-, illetve éldiszjunkt, irányítatlan vagy irányított) utak **maximális száma**;
2. az $s$-ből $t$-be menő összes (irányítatlan vagy irányított) utat lefogó csúcsok, illetve élek **minimális száma**.

**A kérdés: mi a két érték közötti kapcsolat?**

*Megjegyzés — az egyik irány nyilvánvaló!* Ha van $k$ páronként éldiszjunkt (illetve belsőleg csúcsdiszjunkt) $s$-$t$ út, akkor bármely lefogó élhalmaznak (illetve csúcshalmaznak) mind a $k$ útból tartalmaznia kell legalább egy elemet. Mivel az utak diszjunktak, ezek a lefogó elemek páronként különbözők — tehát a lefogó halmaz elemszáma **legalább $k$**. Így mindig teljesül a $\max \le \min$ egyenlőtlenség.

Menger tétele azt mondja ki, hogy ennél több igaz: a két érték **mindig egyenlő**.

> **Tétel (Menger, élváltozat — irányítatlan és irányított gráfra).** Legyen $G$ irányítatlan vagy irányított gráf, és $s \ne t \in V(G)$ két csúcsa. Ekkor az $s$-ből $t$-be menő páronként **éldiszjunkt** (irányítatlan, illetve irányított) utak **maximális száma** egyenlő az $s$-ből $t$-be menő összes utat lefogó **élek minimális számával**.

> **Tétel (Menger, pontváltozat — irányítatlan és irányított gráfra).** Legyen $G$ irányítatlan vagy irányított gráf, és $s \ne t \in V(G)$ két olyan csúcsa, amelyek között **nincs közvetlen él** ($st \notin E(G)$, illetve irányított esetben $s \to t \notin E(G)$). Ekkor az $s$-ből $t$-be menő páronként belsőleg **csúcsdiszjunkt** (irányítatlan, illetve irányított) utak **maximális száma** egyenlő az $s$-ből $t$-be menő összes utat lefogó ($s$-től és $t$-től különböző) **csúcsok minimális számával**.

*(Miért kell a pontváltozatban kizárni a közvetlen $st$ — irányítottan $s \to t$ — élet? Mert egy közvetlen élet semmilyen közbenső csúcs törlésével nem lehet lefogni; magát $s$-et vagy $t$-t pedig nyilván nem engedhetjük törölni, hiszen akkor egyetlen csúcs minden utat lefogna, miközben akár sok belsőleg diszjunkt út is lehet. Irányított gráfban a fordított irányú $t \to s$ él természetesen megengedett, az nem akadályozza az állítást.)*

A tételeket az előadáson nem bizonyítottuk.

::: kiegeszites
**Kiegészítés — kapcsolat Kőnig tételével.** Érdemes észrevenni, hogy Kőnig tétele a páros gráfok párosításairól (48. szakasz: $\nu = \tau$) Menger tételének pontváltozatából származtatható speciális esetként. Ha egy $G(A, B)$ páros gráfhoz hozzáveszünk egy $s$ csúcsot, amelyet $A$ összes csúcsával, és egy $t$ csúcsot, amelyet $B$ összes csúcsával összekötünk — irányított változatban az éleket $s \to A \to B \to t$ irányba tájolva —, akkor az $s$-től $t$-be menő belsőleg csúcsdiszjunkt utak éppen a $G$-beli független éleknek (párosításoknak), az utakat lefogó csúcshalmazok pedig éppen a $G$ éleit lefogó csúcshalmazoknak felelnek meg. (A többszörös él nélküli $G$-ben $s$ és $t$ között nincs közvetlen él, így Menger ponttétele alkalmazható.)
:::

## 51. Többszörös összefüggőség

Az összefüggőség egyszerű tulajdonsága csak annyit mond, hogy bármely két csúcs között van út — de nem méri, mennyire **stabil** ez az összefüggőség. Egy fa például bármely élét törölve szétesik (24. szakasz), és ha nem egyetlen élből áll, bármely nem levél csúcsát törölve is. Egy kör már kibírja egy tetszőleges csúcs vagy él kiesését, de kettőét már nem feltétlenül. Ezt a különbséget tesszük pontossá.

Ha $X \subseteq V(G)$, akkor $G - X$ a $G$-ből az $X$ csúcsainak (és a rájuk illeszkedő éleknek) a törlésével kapott gráf; ha $F \subseteq E(G)$, akkor $G - F$ az $F$ éleinek törlésével kapott gráf.

> **Definíció (többszörös csúcsösszefüggőség).** Legyen $k \ge 1$. A $G$ gráf **$k$-szorosan (csúcs- vagy pont)összefüggő**, ha legalább $k + 1$ csúcsa van, és **bármely** $k - 1$ csúcsát törölve összefüggő marad.

*Megjegyzés ($k = 1$).* Az $1$-szeres csúcsösszefüggőség $0$ csúcs törlését jelenti, vagyis az eddigi közönséges **összefüggőség** fogalmát adja (legalább $2$ csúcsú gráfokra).

Miért szükséges a legalább $k + 1$ csúcs kikötése? Két okból is. Egyrészt a teljes gráfokból ($K_n$) akárhány csúcsot törlünk, teljes gráf marad (nem esik szét), így kikötés nélkül $K_n$ minden $k$-ra $k$-szorosan összefüggő lenne — ehelyett legfeljebb $(n-1)$-szeresen az. Másrészt azért elég a definícióban „**bármely** $k - 1$ csúcs” törlését mondani a „legfeljebb $k - 1$ csúcs” helyett: ha legalább $k + 1$ csúcs van, akkor bármilyen $m < k - 1$ csúcs törlése után is marad legalább két csúcs, így ha a gráf szétesett volna, egyetlen komponenst sem ürítve ki tovább törölhetnénk $(k - 1) - m$ csúcsot, és a gráf továbbra is szétesett maradna.

> **Definíció (többszörös élösszefüggőség).** Legyen $k \ge 1$. A $G$ gráf **$k$-szorosan élösszefüggő**, ha legalább $2$ csúcsa van, és **bárhogy** törlünk belőle legfeljebb $k - 1$ élt, összefüggő marad.

*Megjegyzés ($k = 1$).* Az $1$-szeres élösszefüggőség itt is az eddigi közönséges összefüggőséget jelenti (legalább $2$ csúcsra). Az éleknél azért mondunk „**legfeljebb** $k - 1$ élt”, mert egy kevés élű összefüggő gráfban (például a $K_2$-ben) nem is feltétlenül van $k - 1$ él, így már kevesebb él törlésével is széteshet.

### Példák: egyszeresen és kétszeresen összefüggő gráfok, elvágó él

Nézzünk meg három tanulságos rajzot! Az alábbi ábrákon a kis körök egy-egy összefüggő (sűrű, például $K_3$ vagy nagyobb teljes) részgráfot jelölnek, amelyek több éllel kapcsolódnak a középső csúcsokhoz.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=black, inner sep=1.4pt},
  spt/.style={circle, draw=black, fill=black, inner sep=1.0pt},
  blob/.style={draw=black!75, thick, fill=black!4},
  edge/.style={draw=black!70, thin}
]
  % Balra: 1-szeresen csucsosszefuggo, 3-szorosan elosszefuggo
  \begin{scope}
    \node[pt] (c) at (0, 0) {};
    \foreach \ang/\name in {150/A, 30/B, 270/C} {
      \coordinate (ctr\name) at (\ang:1.55);
      \draw[blob] (ctr\name) circle (0.58);
      \path (ctr\name) ++(\ang+90:0.25) node[spt] (p1\name) {};
      \path (ctr\name) ++(\ang-90:0.25) node[spt] (p2\name) {};
      \path (ctr\name) ++(\ang:0.25) node[spt] (p3\name) {};
      \draw[edge] (p1\name) -- (p2\name) -- (p3\name) -- (p1\name);
      \draw[edge] (c) -- (p1\name);
      \draw[edge] (c) -- (p2\name);
      \draw[edge] (c) -- (p3\name);
    }
    \node[align=center] at (0, -2.55) {\footnotesize csak $1$-szeresen pontösszefüggő\\ \footnotesize (de $3$-szorosan élösszefüggő)};
  \end{scope}

  % Jobbra: 2-szeresen csucsosszefuggo
  \begin{scope}[xshift=6.0cm]
    \node[pt] (c1) at (0, 0.38) {};
    \node[pt] (c2) at (0, -0.38) {};
    \foreach \x/\y/\ang/\name in {-1.85/1.1/150/TL, 1.85/1.1/30/TR, -1.85/-1.1/210/BL, 1.85/-1.1/330/BR} {
      \coordinate (q\name) at (\x, \y);
      \draw[blob] (q\name) circle (0.55);
      \path (q\name) ++(\ang+90:0.23) node[spt] (q1\name) {};
      \path (q\name) ++(\ang-90:0.23) node[spt] (q2\name) {};
      \path (q\name) ++(\ang:0.24) node[spt] (q3\name) {};
      \draw[edge] (q1\name) -- (q2\name) -- (q3\name) -- (q1\name);
      \draw[edge] (c1) -- (q1\name);
      \draw[edge] (c1) -- (q2\name);
      \draw[edge] (c1) -- (q3\name);
      \draw[edge] (c2) -- (q1\name);
      \draw[edge] (c2) -- (q2\name);
      \draw[edge] (c2) -- (q3\name);
    }
    \node[align=center] at (0, -2.55) {\footnotesize $2$-szeresen pontösszefüggő\\ \footnotesize (a két középső csúcs törlésével esik szét)};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

- **Bal oldali ábra:** A három háromszögből (három $K_3$-ból, vagy általánosabban három sűrű komponensből) álló gráf mindegyik része $3$ éllel kapcsolódik a középső csúcshoz. Legalább $3$ él kell ahhoz, hogy elvágjuk (így $3$-szorosan élösszefüggő, $\kappa' = 3$), de az **egyetlen középső csúcs** törlésével $3$ darabra esik szét — ezért **csak $1$-szeresen csúcsösszefüggő** ($\kappa = 1$).
- **Jobb oldali ábra:** Ha $4$ komponenst **két** középső csúcshoz kötünk hozzá (mindkettőhöz $3$-$3$ éllel), akkor bármely **egy** csúcs törlése után a gráf összefüggő marad (ha az egyik középsőt töröljük, a másik továbbra is összeköti mind a négy részt; ha az egyik háromszögből törlünk egy csúcsot, a maradék kettő is összeköttetésben marad). A **két** középső csúcs együttes törlésével azonban a gráf $4$ részre esik szét, tehát pontosan **$2$-szeresen csúcsösszefüggő** ($\kappa = 2$).

Mi történik akkor, ha a gráfban van egy **elvágó él** (más szóval **híd**)?

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.4pt},
  blob/.style={draw=black!75, thick, fill=black!4},
  edge/.style={draw=black!70, thin}
]
  \draw[blob] (-1.5, 0) circle (0.62);
  \draw[blob] (1.5, 0) circle (0.62);
  \draw[edge] (-1.85, 0.25) -- (-1.35, -0.25);
  \draw[edge] (-1.75, -0.3) -- (-1.3, 0.3);
  \draw[edge] (-1.55, 0.35) -- (-1.55, -0.35);
  \draw[edge] (1.35, 0.3) -- (1.8, -0.2);
  \draw[edge] (1.35, -0.25) -- (1.85, 0.25);
  \draw[edge] (1.6, 0.35) -- (1.6, -0.35);
  \node[pt] (u) at (-1.12, 0) {};
  \node[pt] (v) at (1.12, 0) {};
  \draw[draw=black, very thick] (u) -- (v) node[midway, above=2pt] {\footnotesize elvágó él (híd)};
\end{tikzpicture}
\end{adjustbox}
\end{center}

- Ez a gráf egyetlen él (a híd) elhagyásával szétesik, tehát **nem $2$-szeresen élösszefüggő**!
- Ebből következően **nem lehet $2$-szeresen csúcsösszefüggő sem**: ha legalább $3$ csúcsa van, akkor a híd valamelyik végpontjának oldalán van legalább még egy csúcs, így az a végpont elvágó csúcs (ha pedig csak $2$ csúcsa van, akkor nincs meg a $k + 1 = 3$ csúcs).
- **Fordítva viszont nem igaz!** Attól, hogy egy gráf *nem* $2$-szeresen csúcsösszefüggő (van elvágó csúcsa), még nyugodtan lehet $2$-szeresen (sőt sokszorosan) élösszefüggő — épp ezt mutatta az első ábra!

### Következmények és az összefüggőségi számok ($\kappa$, $\kappa'$)

A definíciókból és a fenti megfigyelésekből azonnal adódnak a következő kapcsolatok:

> **Következmények.**
>
> 1. Ha $G$ $k$-szorosan csúcsösszefüggő, akkor minden $1 \le k' \le k$-ra $k'$-szeresen csúcsösszefüggő is.
> 2. Ha $G$ $k$-szorosan élösszefüggő, akkor minden $1 \le k' \le k$-ra $k'$-szeresen élösszefüggő is.
> 3. Ha $G$ $k$-szorosan csúcsösszefüggő, akkor $k$-szorosan élösszefüggő is. (**A csúcsösszefüggőség erősebb!**)

Most már egyetlen számmal is mérhetjük egy gráf összefüggőségének erősségét.

> **Definíció ($\kappa$ és $\kappa'$).**
>
> - A $G$ gráf **(csúcs- vagy pont)összefüggőségi száma**, $\kappa(G)$ (olvasd: *kappa*), a legnagyobb olyan $k$, amelyre $G$ $k$-szorosan csúcsösszefüggő (ha $G$ nem összefüggő vagy csak $1$ csúcsa van, akkor $\kappa(G) = 0$).
> - A $G$ gráf **élösszefüggőségi száma**, $\kappa'(G)$ (a szakirodalomban néhol $\lambda(G)$), a legnagyobb olyan $k$, amelyre $G$ $k$-szorosan élösszefüggő (ha $G$ nem összefüggő vagy csak $1$ csúcsa van, akkor $\kappa'(G) = 0$).

**Mi a különbség a két fogalom között?** A „$k$-szorosan összefüggő” egy **tulajdonság** (egy adott gráfra vagy teljesül, vagy nem); a $\kappa(G)$ pedig egy **szám**. A kettő kapcsolata (a fenti 1. következmény miatt): $G$ pontosan akkor $k$-szorosan csúcsösszefüggő, ha $\kappa(G) \ge k$. Ugyanígy: $G$ pontosan akkor $k$-szorosan élösszefüggő, ha $\kappa'(G) \ge k$.

A teljes gráfra $\kappa(K_n) = n - 1$ (és $\kappa'(K_n) = n - 1$). Minden **nem teljes** gráfban viszont van két nem szomszédos csúcs, és a többi csúcsot elhagyva a gráf szétesik; ilyenkor
$$\kappa(G) = \min\{\, |X| : X \subseteq V(G),\ G - X \text{ nem összefüggő} \,\},$$
vagyis a legkisebb **elvágó csúcshalmaz** mérete. Hasonlóan, ha $G$-nek legalább $2$ csúcsa van, $\kappa'(G)$ a legkisebb **elvágó élhalmaz** mérete. Egy olyan csúcsot, amelynek elhagyásával a gráf szétesik, **elvágó csúcsnak**, egy olyan élt, amelynek elhagyásával szétesik, **hídnak** (elvágó élnek) nevezünk. Így egy legalább $3$ csúcsú összefüggő gráf pontosan akkor $2$-szeresen csúcsösszefüggő, ha nincs elvágó csúcsa, és pontosan akkor $2$-szeresen élösszefüggő, ha nincs hídja.

A 3. következmény („a csúcsösszefüggőség erősebb”) számszerű alakja:

> **Tétel (Whitney-egyenlőtlenség).** Minden gráfra
> $$\kappa'(G) \ge \kappa(G), \qquad \text{sőt} \qquad \kappa(G) \le \kappa'(G) \le \delta(G),$$
> ahol $\delta(G)$ a gráf minimális fokszáma.

A két szám között a különbség **tetszőlegesen nagy** lehet (a fordított irány tehát nagyon nem igaz). *Példa:* ragasszunk össze két $K_6$-ot egyetlen közös csúcsban. A közös csúcs elvágó csúcs, tehát $\kappa = 1$. Az élösszefüggőség viszont $5$: ha egy élhalmaz törlése után a gráf szétesik, akkor valamelyik $K_6$ csúcsai két nemüres részre ($a$ és $6 - a$ csúcsra) esnek szét (ha egyik sem esne szét, a közös csúcs miatt mindkettő ugyanabba a részbe kerülne), és ehhez a $K_6$-ból legalább $a(6 - a) \ge 5$ élt kellett törölni. A gráf tehát $5$-szörösen élösszefüggő, de még $2$-szeresen sem csúcsösszefüggő.

*További példák:*

| gráf | $\kappa$ | $\kappa'$ | $\delta$ |
|:--|:-:|:-:|:-:|
| fa ($n \ge 2$) | $1$ | $1$ | $1$ |
| kör, $C_n$ | $2$ | $2$ | $2$ |
| teljes gráf, $K_n$ | $n - 1$ | $n - 1$ | $n - 1$ |
| teljes páros gráf, $K_{a,b}$ ($a \le b$) | $a$ | $a$ | $a$ |
| két háromszög egy közös csúccsal | $1$ | $2$ | $2$ |
| két $K_6$ egy közös csúccsal | $1$ | $5$ | $5$ |

::: kiegeszites
**Kiegészítés — a $\kappa(G) \le \kappa'(G) \le \delta(G)$ egyenlőtlenség bizonyítása.**

**$\kappa' \le \delta$:** Ha $n = 1$ vagy $G$ nem összefüggő, $\kappa' = 0 \le \delta$. Különben ha $v$ egy minimális fokú csúcs, akkor a rá illeszkedő $\delta$ élt elhagyva $v$ izolált lesz, így a gráf szétesik.

**$\kappa \le \kappa'$:** Ha $G$ teljes gráf, $\kappa = \kappa' = n - 1$. Egyébként legyen $F$ egy legkisebb elvágó élhalmaz ($|F| = \kappa'$), és legyen $S$ a $G - F$ egyik komponensének csúcshalmaza; a minimalitás miatt $F$ éppen az $S$ és $V \setminus S$ közötti élek halmaza. Ha $S$ minden csúcsa $V \setminus S$ minden csúcsával szomszédos, akkor $|F| = |S| \cdot |V \setminus S| \ge n - 1 \ge \kappa$. Különben van egy $s \in S$ és egy $t \notin S$ nem szomszédos csúcspár. Válasszunk minden $F$-beli élnek egy végpontját: ha az él $s$-re illeszkedik, a másik végpontját (ez nem $t$, hiszen $st$ nem él), különben az $S$-beli végpontját. A kiválasztott csúcsok $X$ halmazára $|X| \le |F|$ és $s, t \notin X$. Minden $s$-ből $t$-be vezető út valahol átlép $S$-ből $V \setminus S$-be egy $F$-beli élen, és ennek az élnek a kiválasztott végpontja rajta van az úton. Tehát $G - X$-ben $s$ és $t$ között nincs út, vagyis $\kappa \le |X| \le \kappa'$. $\blacksquare$
:::

::: kiegeszites
**Kiegészítés — egy tanulságos buktató: páros fokú gráfok élvágásai.** Létezik-e olyan egyszerű gráf, amelynek **minden** fokszáma $4$, élösszefüggőségi száma $3$ és pontösszefüggőségi száma $2$? Meglepő módon **nem**. Ha minden fokszám páros, akkor minden $S \subseteq V$ halmazra a kézfogási lemma szerint
$$\sum_{v \in S}\deg(v) = 2\,e(S) + e(S, V \setminus S),$$
ahol $e(S)$ az $S$-en belüli, $e(S, V \setminus S)$ az $S$-ből kifutó élek száma. A bal oldal páros, így $e(S, V \setminus S)$ is páros. Minden elvágó élhalmaz tartalmaz egy ilyen „$S$ és a komplementere közötti” élhalmazt, a legkisebb pedig éppen ilyen, tehát **páros fokú gráfban $\kappa'$ páros**. Egy $4$-reguláris gráfban így $\kappa' \in \{0, 2, 4\}$.

Ha a fokszámokra csak alsó korlátot írunk elő ($\delta \ge 4$), a kívánt viselkedés már előállítható. Vegyünk két $K_5$-öt, $a_1, \dots, a_5$ és $b_1, \dots, b_5$ csúcsokkal, és kössük össze őket az $a_1b_1$, $a_1b_2$, $a_2b_3$ élekkel. A minimális fokszám $4$. A három összekötő él elvágó élhalmaz, és kisebb nincs (egy $K_5$ kettévágásához legalább $4$ él kell), tehát $\kappa' = 3$. Az $\{a_1, a_2\}$ csúcsok elhagyása szétvágja a gráfot, egyetlen csúcsé nem, tehát $\kappa = 2$.
:::

### A többszörös összefüggőség útjellemzése

Most érünk el a két téma találkozásához: Menger tételéből azonnal megkapjuk a $k$-szoros csúcs- és élösszefüggőség jellemzését diszjunkt utakkal.

> **Tétel (a többszörös összefüggőség útjellemzése).**
>
> 1. (Whitney) Egy $G$ gráf pontosan akkor **$k$-szorosan csúcsösszefüggő**, ha legalább $k + 1$ csúcsa van, és **bármely** két különböző csúcsa között létezik $k$ páronként belsőleg **csúcsdiszjunkt** út.
> 2. Egy legalább $2$ csúcsú $G$ gráf pontosan akkor **$k$-szorosan élösszefüggő**, ha **bármely** két különböző csúcsa között létezik $k$ páronként **éldiszjunkt** út.

*Bizonyítás (Menger tételéből).*

**A 2. állítás:** Ha bármely két csúcs között van $k$ éldiszjunkt út, és elhagyunk legfeljebb $k - 1$ élt, akkor bármely két csúcs között legalább egy út sértetlen marad: a gráf összefüggő. Megfordítva, ha $G$ $k$-szorosan élösszefüggő, akkor legfeljebb $k - 1$ él törlésével semmilyen $s \ne t$ csúcspár nem választható el, tehát minden $s$-t és $t$-t elválasztó élhalmaz legalább $k$ elemű, és Menger tételének élváltozata szerint van $k$ éldiszjunkt $s$-$t$ út. $\blacksquare$

**Az 1. állítás:** A $\Leftarrow$ irány ugyanígy adódik: ha bármely két csúcs között van $k$ belsőleg csúcsdiszjunkt út, és törlünk $k - 1$ csúcsot, akkor a megmaradó (legalább két) csúcs bármelyik két eleme között legalább egy út érintetlen marad, így $G$ összefüggő marad. A $\Rightarrow$ irány **nem szomszédos** $s, t$ csúcspárokra közvetlenül következik Menger tételének pontváltozatából: $k - 1$ csúcs törlése nem választja el őket, tehát minden elválasztó csúcshalmaz legalább $k$ elemű. A szomszédos csúcspárok esetét a kiegészítésben igazoljuk.

::: kiegeszites
**Kiegészítés — az 1. állítás szomszédos csúcspárokra.** Tegyük fel, hogy $G$ $k$-szorosan csúcsösszefüggő ($|V(G)| \ge k + 1$), és $s, t \in V(G)$ szomszédosak ($st \in E(G)$). Hagyjuk el a közvetlen $st$ élet; legyen $G' = G - st$. Azt állítjuk, hogy $G'$-ben semmilyen $X \subseteq V(G) \setminus \{s, t\}$, $|X| \le k - 2$ csúcshalmaz nem választhatja el $s$-et és $t$-t.

Ha ugyanis $G' - X$-ben nem volna $s$-$t$ út, akkor $s$ és $t$ a $G' - X$ gráf két különböző komponensében, $C_s$-ben és $C_t$-ben lenne (és $G - X$-ben csak az $st$ él kötné össze ezt a két részt). Mivel $|V(G) \setminus X| \ge (k + 1) - (k - 2) = 3$, a két rész közül legalább az egyikben — mondjuk $C_s$-ben — van egy $s$-től (és $t$-től) különböző $w$ csúcs. Ekkor azonban az $X \cup \{s\}$ csúcshalmaz mérete legfeljebb $k - 1$, és $G - (X \cup \{s\})$-ben nincs út $w$ és $t$ között — ellentmondás azzal, hogy $G$ $k$-szorosan csúcsösszefüggő.

Tehát $G'$-ben $s$ és $t$ nem szomszédosak (ha $G$-ben többszörös élek is megengedettek, és $s$ és $t$ között több közvetlen él fut, akkor a $G'$-t az összes $st$-él törlésével képezzük; az érvelés erre is változatlanul érvényes), és elválasztó csúcshalmazuk mérete legalább $k - 1$. Menger tételének pontváltozata szerint $G'$-ben van $k - 1$ belsőleg csúcsdiszjunkt $s$-$t$ út; ezekhez egy közvetlen $st$ élet hozzávéve $k$ belsőleg csúcsdiszjunkt utat kapunk $G$-ben. $\blacksquare$
:::

### Kétszeres összefüggőség és körök

A $k = 2$ eset különösen szemléletes, mert két belsőleg csúcsdiszjunkt $s$-$t$ út együtt egy **kört** alkot.

> **Tétel.** Legyen $G$ legalább $3$ csúcsú egyszerű gráf. A következők ekvivalensek:
>
> 1. $G$ $2$-szeresen (csúcs)összefüggő;
> 2. $G$ bármely két csúcsán átmegy egy közös kör;
> 3. $G$-ben nincs izolált csúcs, és bármely két élén átmegy egy közös kör.

::: kiegeszites
**Kiegészítés — bizonyítás.** **$1 \Rightarrow 2$:** Whitney fenti tétele szerint bármely két csúcs között van két belsőleg csúcsdiszjunkt út, ezek együtt kört alkotnak.

**$2 \Rightarrow 1$:** A gráf összefüggő (bármely két csúcs egy körön, tehát egy úton van). Hagyjunk el egy $w$ csúcsot, és legyen $u, v$ két másik csúcs. A közös körük két, belsőleg diszjunkt $u$-$v$ útra bomlik, és $w$ ezek közül legfeljebb az egyiken van; a másik út $G - w$-ben is megvan. Tehát $G - w$ összefüggő.

**$1 \Rightarrow 3$:** Legyen $e$ és $f$ két él. Osszuk fel mindkettőt egy-egy új csúccsal, $x$-szel és $y$-nal (soros bővítés). A kapott $G'$ gráf is $2$-szeresen összefüggő: ha $x$-et hagyjuk el, $G - e$ egy felosztása marad ($f$-en az $y$ csúccsal), amely összefüggő, mert $\kappa' \ge \kappa \ge 2$ miatt $G$-ben nincs híd; ha egy régi $w$ csúcsot, akkor $G - w$ egy felosztását kapjuk, amelyhez $x$ és $y$ legalább egy éllel kapcsolódik. Az $1 \Rightarrow 2$ irány szerint $x$ és $y$ rajta van $G'$ egy közös körén. Ez a kör $x$-en áthaladva az $e$ mindkét felét használja, $y$-on áthaladva az $f$ mindkét felét; a felosztást visszacsinálva egy $G$-beli kört kapunk, amely $e$-n és $f$-en is átmegy.

**$3 \Rightarrow 2$:** Mivel $n \ge 3$ és nincs izolált csúcs, legalább két él van, így a feltétel szerint minden él rajta van egy körön; ezért minden csúcs foka legalább $2$. Két csúcs, $u$ és $v$ esetén válasszunk tehát egy $u$-ra illeszkedő $e$ és egy $v$-re illeszkedő $f \ne e$ élt. Az $e$-n és $f$-en átmenő kör $u$-n és $v$-n is átmegy. $\blacksquare$
:::

Hasonlóan: egy összefüggő gráf pontosan akkor $2$-szeresen **élösszefüggő**, ha minden éle rajta van egy körön (nincs hídja), és ez pontosan akkor teljesül, ha bármely két csúcsa rajta van egy közös **zárt vonalon** (a két éldiszjunkt út egymás után fűzve zárt vonal, de csúcsok ismétlődhetnek benne).
