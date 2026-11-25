# Kombinatorika 1 – 7. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 106. feladat

Egy térképen az országok összefüggő tartományok. Két ország akkor szomszédos, ha van közös határszakaszuk.
a) Egy nemzetközi konferencián egy asztalnál öt különböző ország egy-egy képviselője ül. Bizonyítsd be, hogy van köztük kettő, akiknek az országa nem szomszédos!
b) Adj meg olyan térképet, amelyen négy ország közül bármely kettő szomszédos!

**Megoldás.**

**a)** Készítsük el a térkép **duális gráfját** a $5$ szóban forgó országra szorítkozva: minden országnak feleltessünk meg egy-egy csúcsot (az ország belsejében egy „fővárost”), és ha két ország szomszédos, kössük össze a két pontot egy, a közös határszakaszon áthaladó úttal (éllel) úgy, hogy az utak csak a két ország belsejében és a választott közös határpontban haladnak, ezért nem keresztezik egymást. (Mivel az országok összefüggőek, ez megtehető.)

Ha mind az $5$ ország páronként szomszédos volna, akkor egy $K_5$ teljes gráfot kaptunk volna síkba rajzolva keresztezés nélkül. Ez azonban lehetetlen, hiszen $K_5$ nem síkbarajzolható (az $5$ csúcsú egyszerű síkgráf élszámkorlátja $3 \cdot 5 - 6 = 9 < 10 = \binom{5}{2}$). Tehát biztosan van két nem szomszédos ország az öt között! $\blacksquare$

**b)** Négy ország lehet páronként szomszédos, mert $K_4$ síkbarajzolható! Például: a középen fekvő háromszög alakú $O_1$ ország három oldala mentén három külső ország ($O_2, O_3, O_4$) találkozik egymással is egy-egy szakaszon.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.0]
  \fill[black!8] (90:0.95) -- (210:0.95) -- (-30:0.95) -- cycle;
  \draw[very thick] (0,0) circle (2.1cm);
  \draw[very thick] (90:0.95) -- (210:0.95) -- (-30:0.95) -- cycle;
  \draw[very thick] (90:0.95) -- (90:2.1);
  \draw[very thick] (210:0.95) -- (210:2.1);
  \draw[very thick] (-30:0.95) -- (-30:2.1);
  \node at (0, 0.1) {\small $O_1$};
  \node at (150:1.45) {\small $O_2$};
  \node at (30:1.45) {\small $O_3$};
  \node at (-90:1.45) {\small $O_4$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — térképek szomszédsági gráfja és a négyes korlát.** Egy síkbeli (vagy gömbfelszíni) térkép összefüggő országainak szomszédsági gráfja mindig síkbarajzolható, ezért nem tartalmazhat $K_5$-öt: nem létezik $5$ egymással páronként közös határszakasszal bíró összefüggő ország (míg egy-egy pontban való találkozást megengedve természetesen végtelen sok ország is összefuthatna egy csúcsban, de az nem közös *határszakasz*).
:::

---

## 107. feladat

Síkbarajzolhatók-e az alábbi gráfok? Nemleges válasz esetén Kuratowski tételével indokolj!

**Megoldás.**

- **a) Síkbarajzolható!** A gráfnak $5$ csúcsa ($T$ csúcs, $U_L, U_R, B_L, B_R$) és $8$ éle van. Egyedül a $K_4$ alapot alkotó $\{U_L, U_R, B_L, B_R\}$ négyes két átlója metszi egymást: ha az egyik átlót (pl. $B_L U_R$) kívülről, a háromszögeket megkerülve vezetjük el, teljesen keresztezésmentes rajzot kapunk.
- **b) Nem síkbarajzolható!** A $6$ csúcsot váltakozva színezve ($A = \{1, 3, 5\}$, $B = \{2, 4, 6\}$) mind a hatszög külső élei, mind a három főátló ($1-4$, $2-5$, $3-6$) mindig $A$-beli és $B$-beli csúcsot köt össze, tehát ez a gráf **pontos mása a $K_{3,3}$-nak**, ami Kuratowski tétele szerint nem síkbarajzolható.
- **c) Síkbarajzolható!** A gráf két háromszögből ($\{1, 2, 6\}$ és $\{3, 4, 5\}$) és három összekötő élből ($1-4, 2-3, 6-5$) áll — ez a **háromszög alapú hasáb** élgráfja. Ha a $\{3, 4, 5\}$ háromszöget a $\{1, 2, 6\}$ háromszög belsejébe rajzoljuk, keresztezés nélkül lerajzolható (lásd az alábbi ábrát).
- **d) Nem síkbarajzolható!** Ez a $7$ csúcsú $C_7^2$ gráf: a csúcsok körben $1, 2, 3, 4, 5, 6, 7$, minden csúcs össze van kötve az $1$ és a $2$ távolságra lévő szomszédaival ($n = 7, e = 14$). Ez tartalmazza a **$K_{3,3}$ soros bővítését**: válasszuk ki az $A = \{4, 7, 3\}$ és $B = \{6, 2, 5\}$ csúcshármasokat!
  - A $4$-es csúcs szomszédai $\{2, 3, 5, 6\} \supseteq \{6, 2, 5\} = B$.
  - A $7$-es csúcs szomszédai $\{5, 6, 1, 2\} \supseteq \{6, 2, 5\} = B$.
  - A $3$-as csúcs szomszédai között megvan a $2$ és az $5$, a hiányzó $\{3, 6\}$ él helyén pedig az $1$-es csúcson átmenő **$3 - 1 - 6$** út áll rendelkezésre (mert $1$ szomszédos $3$-mal és $6$-tal is).
  Tehát a gráf tartalmaz egy $K_{3,3}$ felosztást, nem síkbarajzolható! $\blacksquare$
- **e) Nem síkbarajzolható!** Ez a $10$ csúcsú **Petersen-gráf** ($o_1, \dots, o_5$ külső ötszög, $i_1, \dots, i_5$ belső ötágú csillag, küllők $o_k i_k$). Hagyjuk el belőle az $o_1$ csúcsot; a megmaradó $9$ csúcsból álló részgráf a **$K_{3,3}$ soros bővítése**:
  Legyen a két főosztály $A = \{o_3, i_4, i_5\}$ és $B = \{o_4, i_3, i_2\}$! Ellenőrizzük a $9$ elágazás nélküli, belső csúcsban diszjunkt utat $A$ és $B$ között:
  - $o_3 \in A$: közvetlenül kapcsolódik $o_4$-hez és $i_3$-hoz, az $i_2$-höz pedig az $o_3 - o_2 - i_2$ úton jut el (az $o_2$ osztóponton át);
  - $i_4 \in A$: közvetlenül kapcsolódik $o_4$-hez és $i_2$-höz, az $i_3$-hoz az $i_4 - i_1 - i_3$ úton jut el (az $i_1$ osztóponton át);
  - $i_5 \in A$: közvetlenül kapcsolódik $i_3$-hoz és $i_2$-höz, az $o_4$-hez az $i_5 - o_5 - o_4$ úton jut el (az $o_5$ osztóponton át).
  Mivel a három köztes csúcs ($o_2, i_1, o_5$) páronként különböző és diszjunkt $A \cup B$-től, ez valóban egy $K_{3,3}$-felosztás. $\blacksquare$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.92,
  pt/.style={circle, draw=black, fill=white, inner sep=1.7pt, thick},
  ptA/.style={circle, draw=red!80!black, fill=red!18, inner sep=1.8pt, thick},
  ptB/.style={circle, draw=blue!80!black, fill=blue!18, inner sep=1.8pt, thick},
  sub/.style={circle, draw=black, fill=black!15, inner sep=1.5pt, thick}
]
  % a) sikrajz
  \begin{scope}[xshift=0cm]
    \node[pt] (T) at (0, 2.0) {};
    \node[pt] (UL) at (-0.8, 1.0) {};
    \node[pt] (UR) at (0.8, 1.0) {};
    \node[pt] (BL) at (-0.8, -0.3) {};
    \node[pt] (BR) at (0.8, -0.3) {};
    \draw (T) -- (UL) -- (UR) -- (T);
    \draw (UL) -- (BL) -- (BR) -- (UR);
    \draw (UL) -- (BR);
    \draw (UR) to[out=25, in=-45, looseness=1.7] (0, -0.95) to[out=135, in=-135, looseness=1.2] (BL);
    \node at (0, -1.55) {\scriptsize \textbf{a)} síkrajza};
  \end{scope}

  % c) sikrajz (haromszog hasab)
  \begin{scope}[xshift=3.4cm, yshift=0.85cm]
    \node[pt] (o1) at (90:1.25) {};
    \node[pt] (o2) at (210:1.25) {};
    \node[pt] (o6) at (-30:1.25) {};
    \node[pt] (i4) at (90:0.52) {};
    \node[pt] (i5) at (210:0.52) {};
    \node[pt] (i3) at (-30:0.52) {};
    \draw (o1) -- (o2) -- (o6) -- (o1);
    \draw (i4) -- (i5) -- (i3) -- (i4);
    \draw (o1) -- (i4); \draw (o2) -- (i5); \draw (o6) -- (i3);
    \node at (0, -1.65) {\scriptsize \textbf{c)} síkrajza (hasáb)};
  \end{scope}

  % d) K3,3 felosztas
  \begin{scope}[xshift=7.0cm, yshift=0.85cm]
    \foreach \idx/\lbl/\st in {0/1/sub, 1/2/ptB, 2/3/ptA, 3/4/ptA, 4/5/ptB, 5/6/ptB, 6/7/ptA} {
      \pgfmathsetmacro{\ang}{90 - \idx * 360 / 7}
      \node[\st, label=\ang:{\tiny \lbl}] (d\lbl) at (\ang:1.1) {};
    }
    \draw[draw=black!20] (d1) -- (d2) -- (d3) -- (d4) -- (d5) -- (d6) -- (d7) -- (d1);
    \draw[draw=black!20] (d1) -- (d3) -- (d5) -- (d7) -- (d2) -- (d4) -- (d6) -- (d1);
    \draw[very thick] (d4) -- (d6); \draw[very thick] (d4) -- (d2); \draw[very thick] (d4) -- (d5);
    \draw[very thick] (d7) -- (d6); \draw[very thick] (d7) -- (d2); \draw[very thick] (d7) -- (d5);
    \draw[very thick] (d3) -- (d2); \draw[very thick] (d3) -- (d5);
    \draw[very thick, dashed] (d3) -- (d1) -- (d6);
    \node at (0, -1.65) {\scriptsize \textbf{d)} $K_{3,3}$-felosztás};
  \end{scope}

  % e) Petersen K3,3 felosztas
  \begin{scope}[xshift=10.6cm, yshift=0.85cm]
    \node[pt, draw=black!30] (po1) at (90:1.15) {};
    \node[sub] (po2) at (18:1.15) {};
    \node[ptA] (po3) at (-54:1.15) {};
    \node[ptB] (po4) at (-126:1.15) {};
    \node[sub] (po5) at (162:1.15) {};
    \node[sub] (pi1) at (90:0.52) {};
    \node[ptB] (pi2) at (18:0.52) {};
    \node[ptB] (pi3) at (-54:0.52) {};
    \node[ptA] (pi4) at (-126:0.52) {};
    \node[ptA] (pi5) at (162:0.52) {};
    \draw[draw=black!20] (po1) -- (po2); \draw[draw=black!20] (po1) -- (po5); \draw[draw=black!20] (po1) -- (pi1);
    \draw[very thick] (po3) -- (po4); \draw[very thick] (po3) -- (pi3);
    \draw[very thick, dashed] (po3) -- (po2) -- (pi2);
    \draw[very thick] (pi4) -- (po4); \draw[very thick] (pi4) -- (pi2);
    \draw[very thick, dashed] (pi4) -- (pi1) -- (pi3);
    \draw[very thick] (pi5) -- (pi3); \draw[very thick] (pi5) -- (pi2);
    \draw[very thick, dashed] (pi5) -- (po5) -- (po4);
    \node at (0, -1.65) {\scriptsize \textbf{e)} Petersen $K_{3,3}$-felosztás};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — a két legkisebb nem síkbarajzolható csíra.** Bár a szimmetrikus rajzokon sok az élkereszteződés (mint az **a)** és a **c)** gráfban), a síkbarajzolhatóság csak *egy* keresztezésmentes rajz létezését követeli. Ha viszont nem síkbarajzolható a gráf (és az $e \le 3n - 6$ korlát nem sértett, mint **d)** $14 \le 15$ és **e)** $15 \le 24$ esetén), akkor Kuratowski tétele alapján $6$ főcsúcsú $K_{3,3}$- vagy $5$ főcsúcsú $K_5$-felosztást kell benne találnunk (a maradék csúcsok legfeljebb kettő fokszámmal, felosztópontként vagy elhagyva szerepelnek).
:::

---

## 108. feladat

Síkbarajzolhatók-e az alábbi gráfok? Ha igen, adj keresztezésmentes rajzot! Ha nem, bizonyítsd be!

**Megoldás.**

Jelöljük a csúcsokat az eredeti ábrák elrendezése szerint.

- **a) Nem síkbarajzolható!**
  Jelöljük a felső sor $4$ csúcsát balról jobbra $T_1, T_2, T_3, T_4$-gyel, az alsó sor $3$ csúcsát $B_1, B_2, B_3$-mal, a középső belső csúcsot pedig $M$-mel. Tekintsük az alábbi két csúcshármast:
  $$X = \{M, B_2, T_2\} \qquad \text{és} \qquad Y = \{T_1, T_3, T_4\}.$$
  A két osztály között mind a $9$ kapcsolat megvan egymástól független, belső csúcsaikban diszjunkt utakon:
  - $M$ közvetlenül össze van kötve $T_1$-gyel, $T_3$-mal és $T_4$-gyel;
  - $B_2$ közvetlenül össze van kötve $T_3$-mal és $T_4$-gyel, $T_1$-hez pedig a $B_2 - B_1 - T_1$ úton kapcsolódik (a $B_1$ felosztóponton át);
  - $T_2$ közvetlenül össze van kötve $T_1$-gyel és $T_3$-mal, $T_4$-hez pedig a $T_2 - B_3 - T_4$ úton kapcsolódik (a $B_3$ felosztóponton át).
  Mivel $B_1$ és $B_3$ különbözőek és kívül esnek $X \cup Y$-on, a gráf tartalmazza a **$K_{3,3}$ soros bővítését**, így nem síkbarajzolható. $\blacksquare$

- **b) Síkbarajzolható!**
  A gráfnak $8$ csúcsa van ($o_1, \dots, o_5$ a külső ötszög csúcsai, $i_1$ a felső belső, $i_2$ a bal alsó belső, $i_3$ a jobb alsó belső csúcs), és minden csúcsa pontosan $4$ fokú ($16$ él — ez a négyzet alapú antihasáb élgráfja!).
  Helyezzük el az $o_1, o_2, o_3, o_4$ csúcsokat egy vízszintes sorba, alattuk középen $i_3$-at (összekötve mind a néggyel), fölöttük balra $i_1$-et ($o_1, o_2$-vel összekötve), jobbra $i_2$-t ($o_3, o_4$-gyel és $i_1$-gyel összekötve), és legfelül középen $o_5$-öt ($o_1, o_4, i_1, i_2$-vel összekötve): így teljesen egyenes szakaszokból álló, keresztezésmentes síkrajzot kapunk!

- **c) Nem síkbarajzolható!**
  Jelöljük a külső hat csúcsot balról felfelé haladva $B_l, L_u, T_l, T_r, B_r, B_m$-mel ($B_m$ az alsó él közepén lévő csúcs), a két belső csúcsot pedig balról jobbra $M_l$-lel és $M_r$-rel. Figyeljük meg az alábbi $5$ csúcsot:
  $$\{T_l, T_r, M_l, M_r, B_r\}.$$
  - A $\{T_l, T_r, M_l, M_r\}$ négy csúcs között minden lehetséges ($\binom{4}{2} = 6$) él be van húzva (egy $K_4$-et alkotnak).
  - A $B_r$ csúcs közvetlenül szomszédos $T_r$-rel, $T_l$-lel és $M_r$-rel, az $M_l$ csúcshoz pedig a $B_r - B_m - M_l$ kétélű úton jut el (a $B_m$ osztóponton át).
  Ezért a gráf tartalmazza a **$K_5$ soros bővítését**, így Kuratowski tétele szerint nem síkbarajzolható! $\blacksquare$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.88,
  pt/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  ptA/.style={circle, draw=red!80!black, fill=red!65!black, inner sep=2pt},
  ptB/.style={circle, draw=blue!80!black, fill=blue!70!black, inner sep=2pt},
  sub/.style={circle, draw=black, fill=white, thick, inner sep=1.8pt}
]
  % a) K3,3
  \begin{scope}[xshift=0cm]
    \node[ptB, label=above:{\tiny $T_1$}] (Lt) at (0, 2.0) {};
    \node[ptA, label=above:{\tiny $T_2$}] (Mt) at (1.15, 2.0) {};
    \node[ptB, label=above:{\tiny $T_3$}] (Rt) at (2.3, 2.0) {};
    \node[ptB, label=above:{\tiny $T_4$}] (Et) at (3.5, 2.0) {};
    \node[ptA, label=below:{\tiny $M$}] (Mm) at (1.15, 0.7) {};
    \node[sub, label=below:{\tiny $B_1$}] (Lb) at (0, 0) {};
    \node[ptA, label=below:{\tiny $B_2$}] (Rb) at (2.3, 0) {};
    \node[sub, label=below:{\tiny $B_3$}] (Eb) at (3.5, 0) {};
    \draw[very thick] (Lt) -- (Mt) -- (Rt);
    \draw[very thick, dashed] (Lb) -- (Rb); \draw[draw=black!25] (Rb) -- (Eb);
    \draw[very thick, dashed] (Lt) -- (Lb); \draw[very thick] (Rt) -- (Rb);
    \draw[very thick, dashed] (Et) -- (Eb);
    \draw[very thick] (Lt) -- (Mm) -- (Rt); \draw[very thick] (Mm) -- (Et);
    \draw[draw=black!25] (Lb) -- (Mt);
    \draw[very thick, dashed] (Mt) -- (Eb); \draw[very thick] (Rb) -- (Et);
    \node at (1.75, -0.8) {\scriptsize \textbf{a)} $K_{3,3}$-felosztás};
  \end{scope}

  % b) Sikrajz (negyzet alapu antihasab)
  \begin{scope}[xshift=7.0cm, yshift=1.1cm]
    \node[pt, label=below:{\tiny $i_3$}] (bi3) at (0, -1.1) {};
    \node[pt, label=left:{\tiny $o_1$}] (bo1) at (-2.1, 0) {};
    \node[pt, label=below left:{\tiny $o_2$}] (bo2) at (-0.7, 0) {};
    \node[pt, label=below right:{\tiny $o_3$}] (bo3) at (0.7, 0) {};
    \node[pt, label=right:{\tiny $o_4$}] (bo4) at (2.1, 0) {};
    \node[pt, label=left:{\tiny $i_1$}] (bi1) at (-0.85, 0.7) {};
    \node[pt, label=right:{\tiny $i_2$}] (bi2) at (0.85, 0.7) {};
    \node[pt, label=above:{\tiny $o_5$}] (bo5) at (0, 1.8) {};
    \draw[thick] (bo1) -- (bo2) -- (bo3) -- (bo4);
    \draw[thick] (bi3) -- (bo1); \draw[thick] (bi3) -- (bo2);
    \draw[thick] (bi3) -- (bo3); \draw[thick] (bi3) -- (bo4);
    \draw[thick] (bo5) -- (bo1) -- (bi1) -- (bo2);
    \draw[thick] (bo5) -- (bo4) -- (bi2) -- (bo3);
    \draw[thick] (bi1) -- (bi2) -- (bo5) -- (bi1);
    \node at (0, -1.9) {\scriptsize \textbf{b)} keresztezésmentes síkrajz};
  \end{scope}

  % c) K5 felosztas
  \begin{scope}[xshift=10.4cm]
    \node[pt, draw=black!35, fill=black!35] (cBl) at (0, 0) {};
    \node[sub, label=below:{\tiny $B_m$}] (cBm) at (1.3, 0) {};
    \node[ptA, label=below right:{\tiny $B_r$}] (cBr) at (3.1, 0) {};
    \node[ptA, label=above right:{\tiny $T_r$}] (cTr) at (2.6, 2.0) {};
    \node[ptA, label=above left:{\tiny $T_l$}] (cTl) at (0.85, 2.0) {};
    \node[pt, draw=black!35, fill=black!35] (cLu) at (0, 1.35) {};
    \node[ptA, label=left:{\tiny $M_l$}] (cMl) at (0.65, 0.70) {};
    \node[ptA, label=below right:{\tiny $M_r$}] (cMr) at (1.55, 0.70) {};
    \draw[draw=black!20] (cBl) -- (cBm); \draw[draw=black!20] (cBl) -- (cLu) -- (cTl);
    \draw[draw=black!20] (cLu) -- (cMl) -- (cBl);
    \draw[very thick, dashed] (cBr) -- (cBm) -- (cMl);
    \draw[very thick] (cBr) -- (cTr) -- (cTl) -- (cMr) -- (cBr);
    \draw[very thick] (cTl) -- (cMl) -- (cMr);
    \draw[very thick] (cMl) -- (cTr) -- (cMr);
    \draw[very thick] (cTl) -- (cBr);
    \node at (1.55, -0.8) {\scriptsize \textbf{c)} $K_5$-felosztás};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — az élszám-korlát alatti gráfok eldöntése.** A **108. a)**, **b)** és **c)** gráfokra egyaránt igaz, hogy $n = 8$ és $e \le 3(8) - 6 = 18$ ($13, 16, 17$), így az egyszerű Euler-korlát egyiket sem zárja ki. Az alapos szerkezeti elemzés dönti el a választ: vagy keresztezésmentes átrajzolást adunk (mint a **b)** antihasábnál), vagy $K_{3,3}$- / $K_5$-felosztást mutatunk fel (mint az **a)** és **c)** esetben).
:::

---

## 109. feladat

Mutass példát ugyanannak a gráfnak két olyan síkbeli lerajzolására, amelyek duálisai nem izomorfak!

**Megoldás.**

Tekintsük az alábbi $6$ csúcsú, $8$ élű $G$ gráfot: két háromszögből álló rombusz ($A-B-C-D-A$ az $AC$ átlóval) és a $C$ csúcsra illesztett független $CEF$ háromszög ($C$ elválasztó csúcs).

- **1. síkrajz ($CEF$ az $ABCD$ négyszögön kívül):**
  A tartományok határhosszai (vagyis a duális gráf csúcsainak fokszámai!): $ABC$ belső háromszöge ($3$), $ACD$ belső háromszöge ($3$), $CEF$ belső háromszöge ($3$), és a külső végtelen tartomány, amelyet az $A-B-C-E-F-C-D-A$ határ jár körbe ($7$ él). A duális $G_1^*$ gráf fokszámsorozata tehát **$(7, 3, 3, 3)$**.
- **2. síkrajz ($CEF$ az $ABC$ háromszög belsejében):**
  A tartományok határhosszai: $ACD$ ($3$), $CEF$ ($3$), a külső tartomány ($ABCD$, $4$ él), valamint az $ABC \setminus CEF$ gyűrű alakú tartomány ($3 + 3 = 6$ él). A duális $G_2^*$ gráf fokszámsorozata tehát **$(6, 4, 3, 3)$**.

Mivel a két duális gráfnak eltérő a fokszámsorozata ($7$-es fokú csúcs az egyikben van, a másikban nincs), ezért $G_1^*$ és $G_2^*$ **nem izomorfak**!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=white, inner sep=1.7pt, thick}
]
  % 1. rajz: kivul
  \begin{scope}[xshift=0cm]
    \node[pt, label=left:{\scriptsize $A$}] (A1) at (0, 0) {};
    \node[pt, label=above:{\scriptsize $B$}] (B1) at (1.1, 1.1) {};
    \node[pt, label=above:{\scriptsize $C$}] (C1) at (2.2, 0) {};
    \node[pt, label=below:{\scriptsize $D$}] (D1) at (1.1, -1.1) {};
    \node[pt, label=above right:{\scriptsize $E$}] (E1) at (3.4, 0.7) {};
    \node[pt, label=below right:{\scriptsize $F$}] (F1) at (3.4, -0.7) {};
    \draw[thick] (A1) -- (B1) -- (C1) -- (D1) -- (A1) -- (C1);
    \draw[thick] (C1) -- (E1) -- (F1) -- (C1);
    \node at (1.7, -1.65) {\scriptsize 1. síkrajz: duális fokszámok $(7,3,3,3)$};
  \end{scope}

  % 2. rajz: belul
  \begin{scope}[xshift=6.5cm]
    \node[pt, label=left:{\scriptsize $A$}] (A2) at (0, 0) {};
    \node[pt, label=above:{\scriptsize $B$}] (B2) at (1.5, 1.45) {};
    \node[pt, label=right:{\scriptsize $C$}] (C2) at (3.0, 0) {};
    \node[pt, label=below:{\scriptsize $D$}] (D2) at (1.5, -1.1) {};
    \node[pt, label=left:{\tiny $E$}] (E2) at (1.45, 0.65) {};
    \node[pt, label=below:{\tiny $F$}] (F2) at (1.8, 0.25) {};
    \draw[thick] (A2) -- (B2) -- (C2) -- (D2) -- (A2) -- (C2);
    \draw[thick] (C2) -- (E2) -- (F2) -- (C2);
    \node at (1.5, -1.65) {\scriptsize 2. síkrajz: duális fokszámok $(6,4,3,3)$};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}
*(Megjegyzés: megfigyelhetjük, hogy $3$-szorosan összefüggő síkgráfnál — Whitney tétele szerint — a tartományok szerkezete egyértelmű, tehát itt éppen a $C$ elválasztó csúcs tette lehetővé a két különböző tartományszerkezetű lerajzolást.)*

::: elmelet
**Elméleti háttér — duális gráf és tartományhatárok.** A duális gráf csúcsai az eredeti síkrajz tartományai, és minden tartomány foka a duálisban éppen a tartomány határhosszával egyenlő. Két síkba ágyazás nem izomorf duálisát legegyszerűbben egy elválasztó csúcs vagy $2$-es vágás mentén „belülre fordított” résszel kaphatjuk.
:::

---

## 110. feladat

Egy gömbre keresztezés nélkül felrajzolunk egy egyszerű, $16$ élű, $4$-reguláris gráfot (azaz minden csúcs foka négy). Hány tartománya lesz?

**Megoldás.**

A kézfogás-tétel szerint a csúcsok száma $n$:
$$4n = 2e = 2 \cdot 16 = 32 \implies n = 8.$$

Ellenőrizzük az összefüggőséget: mivel a gráf egyszerű és minden csúcs foka $4$, minden komponensben legalább $1 + 4 = 5$ csúcsnak kell lennie. Ha két komponense volna, akkor legalább $5 + 5 = 10 > 8$ csúcs kellene, tehát a gráf **szükségképpen összefüggő**!

A gömbre való keresztezésmentes rajz ekvivalens a síkbarajzolással (sztereografikus vetítés), így teljesül az Euler-féle poliédertétel ($n - e + t = 2$):
$$t = 2 - n + e = 2 - 8 + 16 = \mathbf{10}.$$

**Válasz:** A gráfnak **$10$ tartománya** lesz.

::: elmelet
**Elméleti háttér — az összefüggőség ellenőrzése Euler előtt.** Az $n - e + t = 2$ képlet csak **összefüggő** síkgráfokra érvényes ($k$ komponens esetén $n - e + t = k + 1$). Ezért egy ilyen feladatnál mindig röviden igazolni kell, hogy a fokszámok és a csúcsszám kizárják a több komponenst!
:::

---

## 111. feladat

Egy $20$ csúcsú konvex poliédernek $12$ lapja van. Hány oldala van egy lapjának, ha tudjuk, hogy ez a szám minden lapra azonos?

**Megoldás.**

Egy konvex poliéder csúcshálója összefüggő síkgráf, ahol $n = 20$ és $t = 12$. Az Euler-formula szerint az élek száma:
$$20 - e + 12 = 2 \implies e = 30.$$

Jelölje $k$ egy lap oldalainak (a határán lévő éleknek) a számát. Minden lap $k$ élet határol, és minden él pontosan $2$ lap határán szerepel:
$$k \cdot t = 2e \implies 12k = 2 \cdot 30 = 60 \implies k = \mathbf{5}.$$

**Válasz:** Minden lap **$5$ oldalú** (ötszög; ez pontosan a szabályos dodekaéder szerkezete).

::: elmelet
**Elméleti háttér — szabályos testek számolása Eulerrel.** A poliéder $n - e + t = 2$ összefüggése mellett a lapok oldalhatárának összeszámolása ($kt = 2e$) és a fokszámok összegzése ($dn = 2e$) együtt határozzák meg az öt platóni testet (szabályos dodekaéder: $n=20, e=30, t=12$, minden lap ötszög, minden csúcs $3$-adfokú).
:::

---

## 112. feladat

a) Igaz-e, hogy minden $n$ csúcsú, legfeljebb $3n - 6$ élű gráf síkbarajzolható?
b) Ha nem volt előadáson, igazold, hogy egy $n \ge 3$ csúcsú egyszerű, páros síkgráfnak legfeljebb $2n - 4$ éle van! Gyengíthető-e a párosság feltétele úgy, hogy ugyanez az élkorlát érvényben maradjon?

**Megoldás.**

**a) Nem igaz!** Az $e \le 3n - 6$ feltétel csak *szükséges* ($n \ge 3$-ra), de nem *elégséges*.
Ellenpélda: a **$K_{3,3}$** gráf, amelyben $n = 6$ és $e = 9 \le 3 \cdot 6 - 6 = 12$, mégsem síkbarajzolható! (Vagy bármely $n \ge 6$ csúcsú gráf, amely tartalmaz egy $K_{3,3}$-at vagy $K_5$-öt és kevés további éle van, pl. $K_5$ egy izolált csúccsal: $n = 6, e = 10 \le 12$.)

**b)** Legyen $G$ egy $n \ge 3$ csúcsú, egyszerű, páros síkgráf.
- Tegyük fel először, hogy $G$ **összefüggő**. Ha $G$ fa, akkor $e = n - 1$, és $n \ge 3$-ra $n - 1 \le 2n - 4 \iff n \ge 3$ teljesül.
  Ha $G$ tartalmaz kört, akkor mivel $G$ páros és egyszerű, minden körének hossza legalább $4$ (páros, $\ge 4$, nincs benne hurokél vagy párhuzamos él, és nincs $3$-as kör sem). Vizsgáljuk meg egy tetszőleges $T$ tartomány határhosszát: $1$ vagy $2$ nem lehet az egyszerűség és az $n \ge 3$ feltétel miatt; és $3$ sem lehet, mert egy $3$ élű zárt séta vagy háromszöget tartalmazna (lehetetlen páros gráfban!), vagy egy élt tartalmazna háromszor vagy páratlan ciklusra esne szét (lehetetlen). Tehát minden tartomány határhossza legalább $4$:
  $$4t \le 2e.$$
  Az Euler-formula szerint $t = e - n + 2$, behelyettesítve:
  $$4(e - n + 2) \le 2e \implies 2e \le 4n - 8 \implies \mathbf{e \le 2n - 4}.$$
- Ha $G$ **nem összefüggő**, színezzük ki minden komponensét $2$ színnel ($A_i, B_i$), és a külső tartományon keresztül kössük össze a szomszédos komponenseket egy-egy új éllel úgy, hogy mindig $A$-beli csúcsot $B$-beli csúcshoz csatlakoztassunk. Az így kapott gráf már összefüggő, továbbra is egyszerű, páros és síkbarajzolható $n$ csúccsal, több éllel, így eredetileg is $e \le 2n - 4$. $\blacksquare$

**Gyengíthető-e a feltétel?**
**Igen!** A bizonyításban valójában kizárólag azt használtuk fel, hogy $G$-ben nincs $3$-as kör! Így az $e \le 2n - 4$ élkorlát minden $n \ge 3$ csúcsú **háromszögmentes ($C_3$-mentes)** egyszerű síkgráfra is érvényes marad (holott például az ötszöget vagy dodekaédert tartalmazó háromszögmentes síkgráfok nem párosak).

::: elmelet
**Elméleti háttér — háromszögmentesség és körhossz-korlátok.** Általánosan igaz a girth-$g$ (legrövidebb kör legalább $g$) síkgráfokra is: $g(e - n + 2) \le 2e \implies e \le \frac{g}{g - 2}(n - 2)$. Itt $g = 3$-ra $e \le 3n - 6$, $g = 4$-re (háromszögmentes, speciálisan páros gráfokra) $e \le 2n - 4$, $g = 5$-re pedig $e \le \frac{5}{3}(n - 2)$.
:::

---

## 113. feladat

Egy hurokélmentes gráf maximális fokszáma $d$. Bizonyítsd be, hogy a csúcsai $d + 1$ színnel kiszínezhetők!

**Megoldás.**

Alkalmazzuk a mohó színezési eljárást (vagy teljes indukciót a $n$ csúcsszámra).

Soroljuk fel a gráf csúcsait tetszőleges sorrendben: $v_1, v_2, \dots, v_n$, és rendeljünk hozzájuk sorban színeket az $\{1, 2, \dots, d + 1\}$ színpalettáról.
Amikor a $v_k$ csúcshoz érünk ($1 \le k \le n$), $v_k$-nak az egész gráfban legfeljebb $d$ szomszédja van (mivel hurokél nincs, párhuzamos élek pedig egyetlen szomszédnak felelnek meg vagy legfeljebb $d$ szomszédhoz vezethetnek). Ezért a már korábban ($v_1, \dots, v_{k-1}$) kiszínezett szomszédai összesen legfeljebb $d$ különböző színt viselhetnek.

Mivel rendelkezésünkre áll $d + 1$ különböző szín, mindig marad legalább $(d + 1) - d = 1$ szabad szín, amellyel $v_k$-t szabályosan ki tudjuk színezni. Az eljárás végén minden csúcs jó színezést kap legfeljebb $d + 1$ színnel, azaz $\chi(G) \le d + 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\chi(G) \le \Delta(G) + 1$ korlát és a Brooks-tétel.** A mohó színezési tétel minden hurokélmentes véges gráfra érvényes. Brooks tétele pontosítja: összefüggő egyszerű gráf esetén az egyenlőség ($\chi = \Delta + 1$) kizárólag a teljes gráfokra ($K_n$) és a páratlan körökre ($C_{2k+1}$) teljesül.
:::

---

## 114. feladat

Legyen $T$ a síkbarajzolt $G$ gráf egy tetszőleges tartománya. Mutasd meg, hogy $G$ úgy is lerajzolható a síkban, hogy a $T$-t határoló élek a végtelen tartományt határolják!

**Megoldás.**

A **sztereografikus vetítés** segítségével visszük át a síkrajzot a gömbre, majd onnan vissza egy másik síkba:
1. Vetítsük fel az eredeti síkon fekvő $G$ síkrajzot az érintő vagy alatta lévő gömb felszínére a sztereografikus vetítés inverzével (az Északi-sarkról $N$ kiindulva a sík pontjait a gömb $S^2 \setminus \{N\}$ pontjaira vetítjük; a végtelen tartomány belsejében van az Északi-sark képe). Ezzel a $G$-t keresztezésmentesen felrajzoltuk a gömb felszínére, minden tartomány — így $T$ is — a gömbfelszín egy összefüggő nyílt tartományára képeződik.
2. Forgassuk el a gömböt úgy, hogy egy tetszőleges, a $T$ tartomány *belsejében* fekvő $P \in T$ pont kerüljön az új Északi-sarkba!
3. Vetítsük vissza a gömbről a síkra az új Északi-sarkból ($P$-ből) kiinduló sztereografikus vetítéssel! Mivel $P$ nem illeszkedik a gráf egyetlen csúcsára vagy élére sem, a $G$ minden csúcsa és éle véges síkbeli képet kap keresztezés nélkül, és az a gömbi tartomány, amely az Északi-sarkot tartalmazza — vagyis pontosan **$T$** —, a síkon a **külső, végtelen tartományra** képeződik! $\blacksquare$

::: elmelet
**Elméleti háttér — sztereografikus vetítés és külső tartomány.** A topológiai síkon valójában nincs kitüntetett különbség a „belső” és a „külső” tartomány között: mindegyik ugyanazt a szerepet játssza a gömbre való egy-egy pontosítás (egypontos kompaktifikáció) révén. Bármely tartomány kijelölhető külső tartománynak úgy, hogy a tartományok és határaik gráfszerkezete teljesen megmarad!
:::

---

## 115. feladat

Mi a duálisa a következő síkgráfoknak?
a) $C_n$ \qquad b) $K_4$ \qquad c) a kocka élhálózata \qquad d) az oktaéder élhálózata

**Megoldás.**

- **a) $C_n$ duálisa:** A $C_n$ körgráfnak $2$ tartománya (a belső és a külső) és $n$ éle van, amelyek mindkét tartományt határolják. Ezért duálisa a **$2$ csúcsú gráf, amelynek két csúcsát $n$ darab párhuzamos él köti össze** (ún. $n$-szoros dipólus vagy $C_n^*$).
- **b) $K_4$ duálisa:** Ön-duális, azaz maga a **$K_4$**. ($4$ csúcs, $6$ él, $4$ háromszög alakú tartomány; mindegyik tartomány szomszédos mind a másik hárommal.)
- **c) A kocka élhálózatának duálisa:** Az **oktaéder élhálózata**. (A kockának $8$ csúcsa, $12$ éle és $6$ négyzet alakú lapja van $\implies$ duálisának $6$ csúcsa, $12$ éle, $8$ háromszög lapja van és $4$-reguláris.)
- **d) Az oktaéder élhálózatának duálisa:** A **kocka élhálózata** (a duális duálisa összefüggő síkgráfban izomorf az eredeti síkgráffal).

::: elmelet
**Elméleti háttér — összefüggő síkgráf duálisának paraméterei.** Ha $G$ összefüggő síkgráf $n$ csúccsal, $e$ éllel és $t$ tartománnyal, akkor duálisa $G^*$ is összefüggő síkgráf $n^* = t$ csúccsal, $e^* = e$ éllel és $t^* = n$ tartománnyal, továbbá $(G^*)^* \cong G$.
:::

---

## 116. feladat

Mutasd meg, hogy ha a síkbarajzolt $G$ gráf minden tartományának határhossza páros, akkor $G$ páros gráf! A tartomány határán a hidakat kétszer számoljuk.

**Megoldás.**

Egy gráf pontosan akkor páros, ha nem tartalmaz páratlan hosszúságú kört. Tekintsünk tehát egy tetszőleges egyszerű $C$ kört $G$-ben, és bizonyítsuk be, hogy $|E(C)|$ páros!

A Jordan-féle görbetétel szerint a $C$ kör a síkot egy véges belső területre (tartományra) és egy végtelen külső területre osztja. Legyenek $T_1, T_2, \dots, T_m$ mindazok a tartományai $G$-nek, amelyek $C$ **belsejében** helyezkednek el (a $C$ kört felbontják belsejében lévő élek és hidak).

Adjuk össze e belső tartományok határhosszait: $\displaystyle\sum_{i=1}^m h(T_i)$.
Nézzük meg, hányszor szerepel egy-egy él ebben az összegben:
- A $C$ kör egy éle pontosan $1$-szer szerepel a $C$ belsejéből tekintett tartományhatáron (a másik oldala $C$-n kívül van), így az összeghez **$1$-gyel** járul hozzá.
- Minden olyan él (beleértve a hidakat is), amely szigorúan $C$ belsejében halad (és valamely $T_i$-t határolja), pontosan **kétszer** fordul elő a belső tartományok határbejárásai során: vagy két különböző $T_i, T_j$ határán $1$-$1$-szer, vagy (ha híd) ugyanazon $T_i$ határán oda-vissza $2$-szer. Így ezek az élek **$2$-vel** járulnak hozzá az összeghez.
- Minden $C$-n kívüli él $0$-szor szerepel.

Ezért ha $b$ jelöli a $C$ belsejében haladó élek számát:
$$\sum_{i=1}^m h(T_i) = |E(C)| + 2b \implies |E(C)| = \sum_{i=1}^m h(T_i) - 2b.$$

A feladat feltétele szerint minden $h(T_i)$ páros, és $2b$ is páros, ezért $|E(C)|$ **páros**! Mivel $G$ egyetlen köre sem páratlan, $G$ páros gráf. $\blacksquare$

::: elmelet
**Elméleti háttér — az „összes belső tartomány határa” elve és duális állítása.** Ez a tétel a párosság és a fokszámok közötti duális kapcsolat fele: síkgráfban a tartományok határhossza pont a duális gráf csúcsainak fokszáma! Így a tétel pontosan duálisa a **123. feladatnak** (ha minden csúcs foka páros, a tartományok $2$-színezhetők $\iff$ ha minden tartományhatár páros, a csúcsok $2$-színezhetők).
:::

---

## 117. feladat

Mutasd meg, hogy a $K_8$ bármely síkbeli lerajzolásában a) legalább $10$, b) legalább $14$ élkereszteződés van! A rajzon szomszédos élek csak a közös végpontjukban találkoznak, és egy kereszteződésben pontosan két él vesz részt.

**Megoldás.**

A $K_8$ teljes gráfnak $n = 8$ csúcsa és $e = \binom{8}{2} = 28$ éle van. Jelölje $c$ egy adott síkbeli lerajzolásban előforduló élkereszteződések számát.

**a) $c \ge 10$ (élszám-becsléssel):**
Minden élkereszteződésből töröljük a két metsző él egyikét (ha egy él több helyen is metsz, akkor már az első törlésnél eltávolítjuk). Így legfeljebb $c$ élt törlünk, a megmaradó $G'$ gráf pedig keresztezésmentes (egyszerű síkgráf) $n = 8$ csúccsal, tehát az élszámbecslés szerint legfeljebb $3 \cdot 8 - 6 = 18$ éle lehet:
$$28 - c \le e(G') \le 18 \implies \mathbf{c \ge 10}.$$

**b) $c \ge 14$ ($K_5$ részgráfok kettős leszámlálásával):**
A $K_8$ csúcsai közül bármely $5$-ös kiválasztásával egy $K_5$ részgráfot kapunk; ilyen részgráfok száma $\binom{8}{5} = \mathbf{56}$.
- Mivel $K_5$ nem síkbarajzolható, mind az $56$ darab $K_5$ részgráf rajzában kell legyen **legalább $1$ élkereszteződés** (két nem szomszédos él között, hiszen szomszédos élek nem metszik egymást).
- Másrészt egy rögzített kereszteződésben két nem szomszédos él vesz részt, vagyis pontosan **$4$ különböző csúcs** határozza meg azt. Ez a $4$ csúcs a maradék $8 - 4 = 4$ csúcs valamelyikével kiegészítve pontosan **$4$ darab $K_5$ részgráfban** szerepel!

Számoljuk össze kétféleképpen az $(H, X)$ párokat, ahol $H$ egy $5$-csúcsú részgráf ($K_5$) és $X$ egy olyan élkereszteződés, amelynek mindkét éle $H$-beli:
- $H$ szerint összegezve: legalább $56 \cdot 1 = 56$ pár.
- $X$ szerint összegezve: pontosan $c \cdot 4 = 4c$ pár.

Így $4c \ge 56$, ahonnan:
$$\mathbf{c \ge 14}. \ \blacksquare$$

*(Megjegyzés: a $K_8$ valódi metszési száma egyébként $\operatorname{cr}(K_8) = 18$.)*

::: elmelet
**Elméleti háttér — metszési szám becslése részgráfokkal.** Az a) rész a legegyszerűbb alsó becslés ($\operatorname{cr}(G) \ge e - (3n - 6)$), amely azonban nagyobb $e$-knél már nem elég éles. Ha a $K_5$ (vagy $K_{3,3}$) egy-egy metszését felfogjuk úgy, mint ami legfeljebb $\binom{n-4}{k-4}$ részgráfot ront el egyszerre, azonnal pontosabb alsó korlátot kapunk (ez az Ajtai–Chvátal–Newborn–Szemerédi–Leighton-féle metszési lemma alapgondolatának speciális esete).
:::

---

## 118. feladat

Bizonyítsd be, hogy $\chi(G) \le 6$ minden olyan hurokélmentes $G$ gráfra, amely legfeljebb öt élének elhagyásával síkbarajzolhatóvá tehető!

**Megoldás.**

A párhuzamos élek elhagyása nem változtatja meg a csúcsszínezhetőséget ($\chi$), és ugyanazon $\le 5$ él elhagyásából egy részhalmaz elhagyásával az egyszerűsített gráf is síkbarajzolható marad. Tegyük fel tehát WLOG, hogy $G$ **egyszerű** gráf!

Megmutatjuk, hogy $G$ minden $H$ részgráfjában (legyen $|V(H)| = m$) van legalább egy legfeljebb $5$-ödfokú csúcs ($\delta(H) \le 5$):
- Ha $m \le 6$, akkor minden csúcs fokszáma legfeljebb $m - 1 \le 5$.
- Ha $m \ge 3$ általánosan: a $H$ feszített részgráf is síkbarajzolhatóvá tehető legfeljebb ugyanazon $5$ él törlésével (hiszen azok közül csak legfeljebb $5$ esik $H$-ba!). A törlés után kapott $m$ csúcsú egyszerű síkgráf élszáma legfeljebb $3m - 6$, ezért
  $$e(H) \le (3m - 6) + 5 = 3m - 1.$$
  A kézfogás-tétel alapján $H$ átlagos fokszáma:
  $$\frac{2e(H)}{m} \le \frac{6m - 2}{m} = 6 - \frac{2}{m} < 6.$$
  Mivel az átlagos fokszám szigorúan kisebb $6$-nál, **van $H$-ban olyan csúcs, amelynek a foka legfeljebb $5$**!

Ezért $G$ csúcsai sorban eltávolíthatók úgy, hogy minden lépésben egy legfeljebb $5$ fokú csúcsot veszünk ki (teljes indukció $n$-re):
- $n \le 6$ esetén triviálisan $\chi(G) \le n \le 6$.
- Ha $n > 6$, válasszunk egy $\deg_G(v) \le 5$ csúcsot. Az indukciós feltevés szerint $G - v$ kiszínezhető $6$ színnel; mivel $v$-nek legfeljebb $5$ szomszédja van, marad legalább egy szabad szín $v$-nek is! Így $\chi(G) \le 6$. $\blacksquare$

::: elmelet
**Elméleti háttér — degeneráltság és a hat-szín tétel kiterjesztése.** Gyakran az élszám-becslés ($e \le 3n - 6 + k$) azonnali átlagfok-korlátot ad *minden* részgráfra, ami a legegyszerűbb út a $d$-degenerált színezéshez (nincs szükség sem a négyszín-, sem az ötszín-tételre a $\le 6$ bizonyításához, még $+5$ plusz él esetén sem!).
:::

---

## 119. feladat

Bizonyítsd be, hogy tetszőleges hurokélmentes $G$ gráfra $e(G) \ge \binom{\chi(G)}{2}$, ahol $e(G)$ a gráf éleinek száma. Összefüggő gráfra mikor áll fenn egyenlőség?

**Megoldás.**

**1. Az egyenlőtlenség bizonyítása:**
Legyen $k = \chi(G)$, és tekintsünk egy jó $k$-színezést a $V(G)$ csúcshalmazon, amely $k$ színosztályra ($V_1, V_2, \dots, V_k$) bontja a csúcsokat.
Állítjuk, hogy bármely két különböző $V_i$ és $V_j$ ($1 \le i < j \le k$) színosztály között fut **legalább egy él**. Ha ugyanis $V_i$ és $V_j$ között egyetlen él sem volna, akkor a $V_i \cup V_j$ halmazon belül sem volna él (hiszen $V_i$ és $V_j$ külön-külön is független csúcshalmazok), így $V_i$-t és $V_j$-t közös színre átszínezve $G$-nek létezne $(k - 1)$-színezése, ami ellentmond a $\chi(G) = k$ minimalitásnak.

Mivel két különböző színosztálypár közötti élhalmazok diszjunktak, minden $\binom{k}{2}$ darab $\{i, j\}$ párhoz tartozik legalább $1$ él:
$$e(G) \ge \binom{k}{2} = \binom{\chi(G)}{2}. \ \blacksquare$$

**2. Mikor áll fenn egyenlőség összefüggő gráfra?**
Állítjuk, hogy összefüggő $G$-re pontosan akkor teljesül $e(G) = \binom{k}{2}$, ha **$G \cong K_k$** (teljes gráf: $k = 1$-re az izolált $K_1$ csúcs, $k = 2$-re $K_2$, $k \ge 3$-ra $K_k$, párhuzamos élek nélkül!).
- *Elégségesség:* $K_k$-ban $\chi(K_k) = k$ és $e(K_k) = \binom{k}{2}$.
- *Szükségesség:* Tegyük fel, hogy $G$ összefüggő, $\chi(G) = k$ és $e(G) = \binom{k}{2}$. Ha $k = 1$, akkor $e(G) = 0$, így az összefüggőség miatt $G \cong K_1$.
  Ha $k \ge 2$, hagyjunk el $G$-ből csúcsokat (és éleket) mindaddig, amíg egy csúcsokra minimális $k$-kromatikus $H \subseteq G$ részgráfot kapunk ($\chi(H) = k$, de bármely $v \in V(H)$-ra $\chi(H - v) < k$).
  - Minden $v \in V(H)$-nak legalább $k - 1$ **különböző szomszédja** kell legyen $H$-ban: ha ugyanis kevesebb volna, akkor $H - v$ optimális $(k - 1)$-színezésében $v$ kaphatna egy szabad színt a $k - 1$ közül, így $\chi(H) \le k - 1$ adódna (ellentmondás).
  - Tehát a $H$-beli egyszerű élek száma legalább $\frac{|V(H)|(k - 1)}{2}$. Mivel $H$ $k$-színezhető nem-triviálisan, $|V(H)| \ge k$; és ha $|V(H)| > k$ volna, akkor $e(H) \ge \frac{(k+1)(k-1)}{2} > \frac{k(k-1)}{2} = \binom{k}{2} = e(G)$ adódna, ami lehetetlen!
  - Ezért $|V(H)| = k$, minden $v \in V(H)$-nak pontosan $k - 1$ szomszédja van $H$-ban (azaz az összes másik csúcs), és $e(H) \ge \binom{k}{2} = e(G)$ miatt **az összes él $H$-ban van** (sem párhuzamos él, sem $H$-n kívüli él nem létezik).
  - Mivel $G$ összefüggő és $|V(H)| \ge 2$, nem lehet $H$-n kívüli izolált csúcs sem, következésképpen $V(G) = V(H)$ és **$G \cong K_k$**. $\blacksquare$

::: elmelet
**Elméleti háttér — minimális élszám és a $k$-kritikus csúcshalmaz.** Bár színezéssel rögtön látszik az $e(G) \ge \binom{\chi}{2}$ korlát, az egyenlőség jellemzéséhez vigyázni kell az „üres ágakra”: önmagában a színosztályok közti $1$-$1$ él létezéséből még *nem* azonnal triviális (bár igaz), hogy nincs többletcsúcs ugyanabban a színosztályban; a $k$-kritikus részgráf fokszám-korlátja ($\deg_H(v) \ge k - 1$) azonban azonnal és elegánsan lezárja a kérdést, akár párhuzamos élek megengedése mellett is!
:::

---

## 120. feladat

Határozd meg a következő gráfok kromatikus számát ($\chi$) és élkromatikus számát ($\chi'$)!

**Megoldás.**

- **a) $K_n$ ($n \ge 1$):**
  - $\chi(K_n) = \mathbf{n}$ (minden két csúcs szomszédos).
  - $\chi'(K_n) = \begin{cases} 0, & \text{ha } n = 1, \\ \mathbf{n - 1}, & \text{ha } n \text{ páros}, \\ \mathbf{n}, & \text{ha } n \ge 3 \text{ páratlan}. \end{cases}$
    *(Indoklás: páros $n$-re a reguláris $n$-szög szabályos $1$-faktorizációja — minden színosztály egy teljes párosítás — $(n-1)$ színt használ; páratlan $n$-re egy szín legfeljebb $\frac{n-1}{2}$ élt kaphat, ezért $\chi' \ge \frac{n(n-1)/2}{(n-1)/2} = n$, és $K_{n+1}$ $(n)$-színezéséből egy csúcs törlésével megvalósítható $n$ színnel.)*

- **b) $K_{n,m}$ ($n, m \ge 1$):**
  - $\chi(K_{n,m}) = \mathbf{2}$ (páros gráf, van benne él).
  - $\chi'(K_{n,m}) = \mathbf{\max(n, m)}$ (Kőnig tétele: minden páros gráfban $\chi'(G) = \Delta(G)$).

- **c) $C_n$ ($n \ge 3$):**
  - Ha $n$ páros: $\chi(C_n) = \mathbf{2}$, $\chi'(C_n) = \mathbf{2}$.
  - Ha $n$ páratlan: $\chi(C_n) = \mathbf{3}$, $\chi'(C_n) = \mathbf{3}$ (sem a csúcsok, sem az élek nem színezhetők $2$ színnel egy páratlan körön).

- **d) Petersen-gráf ($P$):**
  - $\chi(P) = \mathbf{3}$: van benne $5$-ös kör ($\chi \ge 3$), és például a külső $C_5$-re $(1, 2, 1, 2, 3)$, a megfelelő belső csúcsokra $(2, 3, 3, 1, 2)$ színezést adva minden él különböző végpontú.
  - $\chi'(P) = \mathbf{4}$: $\Delta(P) = 3$, tehát $\chi' \ge 3$. Ha $3$-élszínezhető volna, mindhárom színosztály egy $5$ élből álló teljes párosítás volna. A külső $o_1..o_5$ és belső $i_1..i_5$ $5$-ös köröket összekötő $5$ küllő mindegyike része valamely színnek; mindkét kör páratlan méretű ($5$ csúcs), így minden teljes párosítás **páratlan sok ($1, 3$ vagy $5$) küllőt** használ!
    - Ha egy színosztály mind az $5$ küllőt viszi, marad két különálló $C_5$, amik $2$ színnel már nem élszínezhetők!
    - Ha a három szín $(1, 1, 3)$ küllőt tartalmaz, akkor a $3$ küllős teljes párosítás két szomszédos $o_k, o_{k+1}$ csúcsát köti össze a külső körön (különben nem maradna párosítható $2$ külső csúcs), ami miatt a belső oldalon a két szabad maradék csúcs $i_k$ és $i_{k+1}$ kellene legyen — csakhogy $i_k$ és $i_{k+1}$ **nem** szomszédos az ötágú belső csillagban! Így $3$ szín lehetetlen.
    - $4$ szín elegendő: színezzük a külső $C_5$-öt $\{1, 2, 3\}$-mal, a belső $C_5$-öt is $\{1, 2, 3\}$-mal, és mind az $5$ küllőt a $4$-es színnel!

- **e) $20$ csúcsú fa ($T$):**
  - $\chi(T) = \mathbf{2}$ (minden $n \ge 2$ csúcsú fa páros és van éle).
  - $\chi'(T) = \mathbf{\Delta(T)}$ (a fa maximális fokszáma; értékét a fa alakja szabja meg $2 \le \Delta(T) \le 19$ között).

- **f) $C_n$ kör egy átlóval ($n \ge 4$):**
  - Legyen $u$ és $v$ az átló két végpontja; ezek a kört két diszjunkt útra vágják, amelyek hossza $p \ge 2$ és $q \ge 2$ ($p + q = n$).
  - $\chi(G)$: ha $n$ páratlan (vagy ha $n$ páros, de $p$ és $q$ **páratlan**, így az átló által létrehozott két kör páratlan), akkor $\chi = \mathbf{3}$; ha pedig $p$ és $q$ **páros** (pl. $C_4$ főátlóval? Vigyázat: $C_4$ átlója két háromszöget ad, mert $p=2, q=2 \implies p+1=3$ páratlan! Viszont $C_6$ szemközti átlója $p=3, q=3 \implies$ két $4$-es kör, páros!), vagyis **ha $p$ és $q$ egyaránt páratlan ($\ge 3$)**, akkor két páros kör keletkezik, tehát $G$ páros és $\chi = \mathbf{2}$, különben $\chi = \mathbf{3}$.
  - $\chi'(G) = \mathbf{3}$ mindig ($n \ge 4$)! Valóban: $\Delta(G) = 3 \implies \chi' \ge 3$; és a $3$-élszínezés mindig konstruálható: színezzük az $u-v$ átlót $3$-as színnel; az első $p$ élű $u-v$ utat színezzük $\{1, 2\}$-vel felváltva $u$-nál $1$-gyel indulva (így $v$-nél $c_1 \in \{1, 2\}$-vel ér véget); a második $q \ge 2$ élű $u-v$ utat $u$-nál $2$-vel indítjuk, $v$-nél pedig $c_2 = 3 - c_1$-gyel fejezzük be ($q$ párosnál egyszerű `2, 1, 2, 1, ...`; $q \ge 3$ páratlannál `2, 3, 1, 2, 1, ...` ha `1` kell a végére, ill. `2, 1, 3, 2, ...` ha `2`), elkerülve a $3$-ast az $u$ és $v$ végpontokban!

- **g) $V(G) = \{1, \dots, 100\}$, $ij \in E(G) \iff 0 < |i - j| \le 2$:**
  - $\chi(G) = \mathbf{3}$: az $\{1, 2, 3\}$ csúcsok háromszöget alkotnak ($\chi \ge 3$), és a $c(i) = i \bmod 3$ ($3$-as maradék szerinti) színezés jó, mert $|i - j| \in \{1, 2\}$ sosem ad azonos $3$-as maradékot.
  - $\chi'(G) = \mathbf{4}$: minden belső csúcs ($3 \le i \le 98$) foka $4$, tehát $\Delta(G) = 4 \implies \chi' \ge 4$. Másrészt az $\{i, i+1\}$ éleket felváltva $1, 2, 1, 2, \dots$ színekkel színezve, az $\{i, i+2\}$ élek két útját (páratlanok és párosok) pedig felváltva $3, 4, 3, 4, \dots$ színekkel színezve szabályos $4$-élszínezést kapunk!

::: elmelet
**Elméleti háttér — Vizing-osztályozás és páros gráfok.** A Vizing-tétel szerint minden egyszerű gráfra $\Delta(G) \le \chi'(G) \le \Delta(G) + 1$. Kőnig tétele garantálja, hogy a páros gráfok (mint a $K_{n,m}$, a páros $C_n$ és a fák) mind az alsó határon ($\chi' = \Delta$) vannak, míg a nem-bipartit Petersen-gráf és a páratlan $K_{2k+1}$, $C_{2k+1}$ esetek elérik a $\Delta + 1$ felső határt.
:::

---

## 121. feladat

a) Mutass végtelen sok $n$-re olyan $n$ csúcsú, $n$ élű gráfot, amely nem síkbarajzolható!
b) Mutasd meg, hogy minden $n$ csúcsú, $n$ élű összefüggő gráf síkbarajzolható!
c) Mutass végtelen sok $n$-re olyan $n$ csúcsú, $n + 3$ élű, összefüggő gráfot, amely nem síkbarajzolható!

**Megoldás.**

- **a)** Nem összefüggő gráfnál szabadon tehetünk be izolált csúcsokat és egy egy-egy élű erdőt egy nem síkbarajzolható komponens mellé: például minden $n \ge 9$-re vegyük a $K_{3,3}$-at ($6$ csúcs, $9$ él), és egészítsük ki a maradék $n - 6$ csúcs között egy $n - 8$ csúcsú úttal ($n - 9$ él) meg $2$ izolált csúccsal! Így a csúcsok száma $6 + (n - 6) = n$, az élek száma $9 + (n - 9) = n$, és $K_{3,3}$ részgráfja miatt nem síkbarajzolható!
- **b)** Ha egy $G$ gráf összefüggő, $n$ csúcsú és $n$ élű, akkor egy feszítőfája $n - 1$ élből áll, vagyis $G$ egy feszítőfa $+$ egyetlen további él. Ezért $G$-ben **pontosan egyetlen kör** van (ez lehetséges hurokél vagy $2$-es kör multigráfban, illetve $\ge 3$ hosszú egyszerű kör egyszerű gráfban). Egy kört nyilván le lehet rajzolni a síkban konvex sokszögként (keresztezés nélkül), az ebben a körben nem szereplő többi élet (amelyek a kör csúcsaihoz kifelé ágazó fák) pedig a kör külső (végtelen) tartományába egymástól elszeparálva keresztezés nélkül lerajzolhatók! (Másképp: egy $K_5$ vagy $K_{3,3}$ felosztásában legalább $4$ független kör van, azaz $e - n \ge 3$, míg itt $e - n = 0$.) $\blacksquare$
- **c)** Minden $n \ge 6$ esetén vegyük a $K_{3,3}$ gráfot ($6$ csúcs, $9$ él, összefüggő), és az egyik csúcsára láncoljunk fel egy $(n - 6)$ csúcsú „farkat” (utat), vagyis $n - 6$ új csúcsot és $n - 6$ új élt. Így:
  - a csúcsok száma $6 + (n - 6) = n$,
  - az élek száma $9 + (n - 6) = n + 3$,
  - a gráf összefüggő, és tartalmazza a $K_{3,3}$-at, tehát nem síkbarajzolható! $\blacksquare$

::: elmelet
**Elméleti háttér — körmélység ($e - n + c$) és síkbarajzolhatóság.** Egy $n$ csúcsú összefüggő gráf esetén $e - n + 1$ a feszítőfán felüli élek száma (a körtér dimenziója). Mivel mind a $K_{3,3}$ ($9 - 6 + 1 = 4$), mind a $K_5$ ($10 - 5 + 1 = 6$) legalább $4$-dimenziós körtérrel bír, összefüggő nem síkbarajzolható gráfnak szükségképpen legalább $n + 3$ éle kell legyen! Ez mutatja, hogy a **c)** részben az $n + 3$ küszöb teljesen éles.
:::

---

## 122. feladat

A $K_{7,7}$ teljes páros gráf élhalmazát két részre osztottuk. Lehetséges-e, hogy mindkét rész síkbarajzolható gráfot határoz meg?

**Megoldás.**

**Nem lehetséges!**

A $K_{7,7}$ gráfnak $n = 7 + 7 = 14$ csúcsa és $e = 7 \cdot 7 = 49$ éle van. Ha élhalmazát felbontjuk két részre ($E_1 \sqcup E_2 = E(K_{7,7})$), akkor a $G_1 = (V, E_1)$ és $G_2 = (V, E_2)$ részgráfok egyaránt $n = 14$ csúcsú, egyszerű, **páros** gráfok.

A **112. b)** feladatban bizonyított élkorlát szerint minden $n = 14$ csúcsú, egyszerű, páros síkgráfnak legfeljebb
$$2n - 4 = 2 \cdot 14 - 4 = 24$$
éle lehet! Tehát ha mind $G_1$, mind $G_2$ síkbarajzolható volna, akkor az összes élszám legfeljebb
$$|E_1| + |E_2| \le 24 + 24 = 48$$
lehetne — ez azonban ellentmond annak, hogy $K_{7,7}$-nek $49$ éle van ($49 > 48$). $\blacksquare$

::: elmelet
**Elméleti háttér — a gráf „vastagsága” ($\theta$).** Egy gráf *vastagsága* a minimális számú síkbarajzolható részgráf száma, amelyek uniója kiadja a gráfot. A fenti becslés azt mutatja, hogy $\theta(K_{7,7}) \ge \left\lceil \frac{49}{24} \right\rceil = 3$ (holott $\theta(K_{6,6}) = 2$ még teljesülhet és valóban igaz is!).
:::

---

## 123. feladat

Igazold, hogy ha egy összefüggő, síkbarajzolt gráfban minden fokszám páros, akkor a tartományai kiszínezhetők sakktáblaszerűen két színnel úgy, hogy az élben szomszédos tartományok színe különböző legyen!

**Megoldás.**

Kétféleképpen is könnyen igazolhatjuk:

**1. megoldás (duális gráffal és a 116. feladattal):**
Tekintsük a síkbarajzolt $G$ gráf $G^*$ duális gráfját!
- Mivel $G$ összefüggő és minden csúcsa páros fokú, $G$-ben nincs híd (minden él benne van egy zárt Euler-vonalban, azaz körön), ezért $G$ minden élének két különböző tartomány van a két oldalán — következésképpen **$G^*$ hurokélmentes** (síkbarajzolt összefüggő gráf).
- A $G^*$ minden tartománya $G$ egy-egy csúcsát veszi körül, és a tartomány határhossza $G^*$-ban pontosan a körülzárt $G$-beli csúcs fokszáma — tehát **$G^*$ minden tartományának határhossza páros**!
- A **116. feladat** állítását alkalmazva a $G^*$ síkgráfra: $G^*$ csúcsai (amelyek éppen $G$ tartományainak felelnek meg!) szabályosan kiszínezhetők $2$ színnel, azaz $G$ két szomszédos (közös élen osztozó) tartománya mindig eltérő színt kap! $\blacksquare$

**2. megoldás (közvetlen paritásérveléssel):**
Mivel $G$ összefüggő és minden csúcsának foka páros, az élei felbonthatók véges sok zárt kör élhalmazára (Euler-körsétából induktív körleválasztással). Minden egyszerű kör sakktáblaszerűen $2$-színezi a síkot (a belseje sötét, külseje világos), több szuperponált kör színezését pedig minden pontban „összeadjuk” modulo $2$ (ahányszor páratlan sok kör belsejében van a tartomány, az legyen fekete, ahányszor páros sokban, az fehér). Egy $e$ élen átlépve pontosan azon egyetlen kör belsejéből lépünk ki vagy be, amelyik $e$-t tartalmazza, így az átlépett tartományok színe garantáltan megváltozik! $\blacksquare$

::: elmelet
**Elméleti háttér — Euler-gráfok és tartomány-kétszínezés.** Míg tetszőleges síkgráf tartományainak (térképek országainak) színezéséhez $4$ szín kell, addig az Euler-síkgráfok (minden fokszám páros) duálisai mindig párosak, így már **2 szín** is elegendő a sakktáblaszerű tartományszínezéshez!
:::

---

## 124. feladat (házi feladat)

A $K_4$, $K_7$, $K_{4,5}$ és $K_{7,2}$ gráfok közül melyek síkbarajzolhatók?

**Megoldás.**

- **$K_4$: Síkbarajzolható.** (Például egy háromszög és a közepén lévő negyedik csúcs a három csúccsal összekötve.)
- **$K_7$: Nem síkbarajzolható.** ($n = 7$, $e = \binom{7}{2} = 21 > 3 \cdot 7 - 6 = 15$, és tartalmaz $K_5$-öt.)
- **$K_{4,5}$: Nem síkbarajzolható.** ($n = 9$, páros egyszerű gráfként $e = 4 \cdot 5 = 20 > 2 \cdot 9 - 4 = 14$, és tartalmaz $K_{3,3}$-at.)
- **$K_{7,2}$: Síkbarajzolható!** ($n = 9, e = 14 = 2 \cdot 9 - 4$ még éppen teljesül, és könnyen lerajzolható keresztezés nélkül: helyezzük a $2$ csúcsú osztályt egy függőleges oszlop aljára és tetejére, a $7$ csúcsú osztály csúcsait pedig közöttük vízszintes sorba, majd húzzuk be mindegyikhez a két-két szakaszt!)

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.82,
  pt/.style={circle, draw=black, fill=black, inner sep=1.7pt}
]
  \node[pt] (a1) at (0, 1.3) {};
  \node[pt] (a2) at (0, -1.3) {};
  \foreach \k in {-3,-2,-1,0,1,2,3} {
    \node[pt] (b\k) at (\k*0.85, 0) {};
    \draw (a1) -- (b\k) -- (a2);
  }
  \node at (0, -1.8) {\scriptsize A $K_{7,2}$ keresztezésmentes síkrajza};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — a $K_{n,2}$ család síkbarajzolhatósága.** Minden $K_{2, n}$ teljes páros gráf síkbarajzolható bármilyen nagy $n$-re (a fenti „lampion”-elrendezés miatt), hiszen $K_{3,3}$-hoz legalább mindkét osztályban $3$-$3$ csúcs kell!
:::

---

## 125. feladat (házi feladat)

Egy egyszerű gráf tartalmaz három különböző, páronként éldiszjunkt feszítőfát. Mutasd meg, hogy van olyan részgráfja, amely a $K_5$ vagy a $K_{3,3}$ soros bővítése!

**Megoldás.**

Jelölje $n$ a $G$ egyszerű gráf csúcsainak számát. Mindhárom feszítőfának $n - 1$ éle van, és páronként éldiszjunktak, ezért
$$e(G) \ge 3(n - 1) = 3n - 3.$$

Továbbá mivel a fák *különbözőek* és *éldiszjunktak*, nem lehet $n = 1$ (egy csúcson csak egyetlen üres fa van, nem három különböző) és $n \in \{2, 3, 4, 5\}$ esetén egy egyszerű gráfnak összesen csak $\binom{n}{2}$ éle lehet, márpedig
$$\binom{n}{2} \ge 3n - 3 \iff n(n - 1) \ge 6(n - 1) \iff n \ge 6 \quad (n \ge 2\text{-re}).$$
Tehát szükségképpen **$n \ge 6 \ge 3$**, és
$$e(G) \ge 3n - 3 > 3n - 6.$$
Az élszámbecslés ($e \le 3n - 6$) ellentmondása miatt $G$ **nem síkbarajzolható**, így **Kuratowski tétele** szerint szükségképpen van olyan részgráfja, amely a $K_5$ vagy a $K_{3,3}$ soros bővítése! $\blacksquare$

::: elmelet
**Elméleti háttér — arboricitás és síkbarajzolhatóság.** Egy gráf *arboricitása* a legkevesebb erdő száma, amire az élhalmaza felbontható; síkgráfra az $e \le 3n - 6$ korlátból következik (Nash–Williams tétele nyomán is), hogy minden síkgráf élhalmaza felbontható legfeljebb **3** erdőre, viszont soha nem tartalmazhat $3$ teljes feszítőfát egyszerre (mert $3(n-1) > 3n - 6$).
:::

---

## 126. feladat (házi feladat)

Egy egyszerű, $n$ csúcsú síkgráf valamennyi csúcsa egy közös tartomány határán fekszik. Legfeljebb hány éle, illetve hány tartománya lehet a gráfnak?

**Megoldás.**

*(Az ilyen síkgráfokat **külsíkgráfoknak** nevezzük; $n \le 2$ esetén az eredmény triviális: $n=1$-re $e=0, t=1$, $n=2$-re $e \le 1, t=1$. Tekintsük az $n \ge 3$ esetet!)*

1. **Legfeljebb hány éle lehet?**
   Mivel $G$ valamennyi csúcsa egyetlen közös $T$ tartomány (amelyet a 114. feladat szerint akár a végtelen külső tartománynak is választhatunk) határán fekszik, elhelyezhetünk a $T$ tartomány *belsejében* egy új $v_0$ csúcsot, és $v_0$-t egymást nem metsző görbékkel (a $T$-n belül haladva) összeköthetjük mind az $n$ eredeti csúccsal!
   Az így kapott $G'$ gráf $n + 1 \ge 4$ csúcsú, **egyszerű síkgráf**, amelynek élszáma $e(G) + n$. Az élszámbecslés szerint:
   $$e(G) + n \le 3(n + 1) - 6 = 3n - 3 \implies \mathbf{e(G) \le 2n - 3} \qquad (n \ge 3).$$
   Ez az élszám megvalósítható: egy konvex $n$-szög ($n$ él) bármely háromszögelésében ($n - 3$ egymást nem metsző belső átló) összesen $n + (n - 3) = 2n - 3$ él van, és minden csúcs a külső tartomány határán fekszik!

2. **Hány tartománya ($t$) lehet?**
   - **Legfeljebb $n - 1$ tartománya lehet ($n \ge 3$):** Ha $G$ nem összefüggő ($c$ komponens), a közös külső tartományon belül húzott $c - 1$ éllel összeköthetjük a komponenseket úgy, hogy ez az új élhalmaz hidakat képezve *nem bont fel tartományt* (a tartományok $t$ száma változatlan marad!), miközben az $e$ élszám csak nőhet ($e' \le 2n - 3$). Ezért az összefüggő gráfra alkalmazva az Euler-formulát:
     $$t = e' - n + 2 \le (2n - 3) - n + 2 = \mathbf{n - 1}.$$
     *(Ezt pontosan az előbbi háromszögelt $n$-szög éri el: $n - 2$ belső háromszög + $1$ külső tartomány $= n - 1$ tartomány.)*
   - *Megvalósítható tartományszámok:* $1 \le t \le n - 1$ közül **bármelyik** előáll (például $t = 1$-re egy fa vagy az üres gráf, $t = k$-ra $1 \le k \le n - 2$ belső átló húzása a $C_n$ körbe, ami $k + 1$ tartományt ad, így végül $t \in \{1, 2, \dots, n - 1\}$).

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.85,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt}
]
  \begin{scope}[xshift=-2.8cm]
    \foreach \i/\ang in {1/90, 2/30, 3/-30, 4/-90, 5/-150, 6/150} {
      \node[pt] (a\i) at (\ang:1.2) {};
    }
    \draw[thick] (a1) -- (a2) -- (a3) -- (a4) -- (a5) -- (a6) -- (a1);
    \draw[thick] (a1) -- (a3) -- (a5) -- (a1);
    \node at (0, -1.7) {\scriptsize Maximális külsíkgráf ($n=6$): $e=9, t=5$};
  \end{scope}
  \begin{scope}[xshift=2.8cm]
    \foreach \i/\ang in {1/90, 2/30, 3/-30, 4/-90, 5/-150, 6/150} {
      \node[pt] (b\i) at (\ang:1.2) {};
    }
    \node[pt, fill=white, thick, label=right:{\tiny $v_0$}] (v0) at (1.95, 0.9) {};
    \draw[thick] (b1) -- (b2) -- (b3) -- (b4) -- (b5) -- (b6) -- (b1);
    \draw[thick] (b1) -- (b3) -- (b5) -- (b1);
    \draw[dashed, black!70] (v0) -- (b1); \draw[dashed, black!70] (v0) -- (b2);
    \draw[dashed, black!70] (v0) to[out=-65, in=10] (b3);
    \draw[dashed, black!70] (v0) to[out=-50, in=-20, looseness=1.35] (b4);
    \draw[dashed, black!70] (v0) to[out=-30, in=-110, looseness=1.7] (b5);
    \draw[dashed, black!70] (v0) to[out=135, in=105, looseness=1.35] (b6);
    \node at (0.3, -1.7) {\scriptsize A $v_0$ csúcs bekötése a külső tartományon át};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — külsíkgráfok ($e \le 2n - 3$ és $3$-színezhetőség).** Az olyan síkgráfokat, amelyek lerajzolhatók úgy, hogy minden csúcs a külső tartomány határára essen, **külsíkgráfoknak** nevezzük. Ezeknél az élszám-korlát a síkgráfok $3n - 6$-jánál szigorúbb: $2n - 3$ (és mindig van bennük legfeljebb $2$-edfokú csúcs, ezért minden külsíkgráf $3$ színnel csúcsszínezhető). A $v_0$ segédcsúcs beillesztése a leggyorsabb bizonyítás, mert $e + n \le 3(n+1) - 6$ azonnal kiadja a felső határt!
:::
