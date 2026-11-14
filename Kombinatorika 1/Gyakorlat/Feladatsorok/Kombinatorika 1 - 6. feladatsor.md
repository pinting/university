# Kombinatorika 1 – 6. feladatsor

### Kombinatorika 1 normál · 2026.

## 89. feladat

Rajzold fel azt az egyszerű gráfot, amelynek csúcsai az $A = \{1, 2, 3\}$ halmaz részhalmazai, és amelyben két *különböző* csúcsot akkor köt össze él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat!

a) Milyen hosszú a legrövidebb séta az $\{1, 2\}$ és az $\{1, 3\}$ csúcs között?

b) Milyen hosszú a leghosszabb út ebben a gráfban?

c) Milyen hosszú a leghosszabb séta a gráfban?

d) Van-e olyan négy hosszú vonal az $\{1, 2\}$ és a $\{2\}$ csúcs között, amely nem út?

e) Van-e négy, öt, illetve hat hosszú kör a gráfban? És olyan hat hosszú zárt vonal (körvonal), amely nem kör?

## 90. feladat

a) Van-e olyan hatcsúcsú, 3-reguláris egyszerű gráf, amelyben nincs Hamilton-kör?

b) Mutass példát olyan 3-reguláris egyszerű összefüggő gráfra, amelyben nincs Hamilton-út!

## 91. feladat

Az alábbi gráfok közül melyekben van nyílt, illetve zárt Euler-vonal? Mindhárom esetben $V = \{1, 2, \dots, 102\}$, és az élhalmaz:

a) $E_1 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 2\}$;

b) $E_2 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 3\}$;

c) $E_3 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \text{ páros}\}$.

## 92. feladat

Van-e Hamilton-kör az alábbi gráfokban? És Hamilton-út?

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=white, inner sep=2.5pt}
]
  % 1. graf
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

  % 2. graf (pillango / bowtie)
  \begin{scope}[xshift=3.8cm, yshift=0.3cm]
    \node[pt] (C) at (1.5, 0.8) {};
    \node[pt] (L_left) at (0, 0.8) {};
    \node[pt] (L_top) at (0.8, 1.5) {};
    \node[pt] (L_bot) at (0.8, 0.1) {};
    \node[pt] (R_right) at (3.0, 0.8) {};
    \node[pt] (R_top) at (2.2, 1.5) {};
    \node[pt] (R_bot) at (2.2, 0.1) {};
    \draw (L_left) -- (L_top) -- (C) -- (L_bot) -- cycle;
    \draw (L_left) -- (C); \draw (L_top) -- (L_bot);
    \draw (R_right) -- (R_top) -- (C) -- (R_bot) -- cycle;
    \draw (R_right) -- (C); \draw (R_top) -- (R_bot);
  \end{scope}

  % 3. graf
  \begin{scope}[xshift=8.5cm, yshift=0.3cm]
    \node[pt] (C) at (1.5, 1.0) {};
    % felso bal K4
    \node[pt] (TL_top) at (0.9, 2.1) {};
    \node[pt] (TL_left) at (0.2, 1.0) {};
    \node[pt] (TL_mid) at (0.9, 1.4) {};
    \draw (C) -- (TL_top) -- (TL_left) -- cycle;
    \draw (TL_mid) -- (C); \draw (TL_mid) -- (TL_top); \draw (TL_mid) -- (TL_left);
    % felso jobb K4
    \node[pt] (TR_top) at (2.1, 2.1) {};
    \node[pt] (TR_right) at (2.8, 1.0) {};
    \node[pt] (TR_mid) at (2.1, 1.4) {};
    \draw (C) -- (TR_top) -- (TR_right) -- cycle;
    \draw (TR_mid) -- (C); \draw (TR_mid) -- (TR_top); \draw (TR_mid) -- (TR_right);
    % also haromszog
    \node[pt] (B_left) at (0.8, 0.0) {};
    \node[pt] (B_right) at (2.2, 0.0) {};
    \draw (C) -- (B_left) -- (B_right) -- cycle;
  \end{scope}

  % 4. graf (racs)
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
    \draw (O1) -- (O2) -- (O3) -- (O4) -- (O5) -- (O6) -- (O7) -- (O8) -- cycle;
    % belso negyzet
    \node[pt] (I1) at (0.6, 0.6) {};
    \node[pt] (I2) at (1.4, 0.6) {};
    \node[pt] (I3) at (2.2, 0.6) {};
    \node[pt] (I4) at (2.2, 1.4) {};
    \node[pt] (I5) at (2.2, 2.2) {};
    \node[pt] (I6) at (1.4, 2.2) {};
    \node[pt] (I7) at (0.6, 2.2) {};
    \node[pt] (I8) at (0.6, 1.4) {};
    \draw (I1) -- (I2) -- (I3) -- (I4) -- (I5) -- (I6) -- (I7) -- (I8) -- cycle;
    % kozeppont es kullok
    \node[pt] (M) at (1.4, 1.4) {};
    \draw (O2) -- (I2) -- (M) -- (I6) -- (O6);
    \draw (O8) -- (I8) -- (M) -- (I4) -- (O4);
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 93. feladat

a) Mutass ellenpéldát a Dirac-tétel megfordítására!

b) Mutass olyan gráfot, amelyben van Hamilton-kör, és ezt az Ore-tétel segítségével be tudod bizonyítani, de a Dirac-tétellel nem!

c) Mutasd meg, hogy az Ore-tétel feltétele nem szükséges a Hamilton-kör létezéséhez!

## 94. feladat

a) Mutass olyan gráfot, amelyben minden csúcs foka páros, még sincs benne zárt Euler-vonal!

b) Mutass olyan gráfot, amely nem összefüggő, de van benne zárt Euler-vonal!

## 95. feladat

a) Mutass olyan egyszerű gráfot, amelyben nincs Hamilton-út, de a csúcstörlős kritériummal ezt nem lehet kimutatni!

b) Adj analóg példát Hamilton-körre is, legalább három csúcson!

c) Mutass olyan egyszerű gráfot, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör!

## 96. feladat

A bal oldali palotaalaprajz szerint a) legkevesebb hány ajtót kell befalazni ahhoz, hogy tehessünk olyan sétát, amely során minden megmaradó ajtón pontosan egyszer megyünk át? b) És ha még vissza is akarunk érni a kiindulási terembe?

## 97. feladat

Mutasd meg, hogy a jobb oldali gráfban a) van Hamilton-út és Hamilton-kör (például a csúcsok megfelelő felsorolásával); b) nincs olyan Hamilton-kör, amelyben az $X$ és az $Y$ szomszédos!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.85]
  % Bal oldali palota alaprajz
  \begin{scope}[xshift=0cm, yshift=0cm]
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

    % Ajtofelulet zarovonalak (ajtofelfak / ticks)
    % y=2 ajtok
    \draw (0.16, 1.85) -- (0.16, 2.15); \draw (0.56, 1.85) -- (0.56, 2.15);
    \draw (0.96, 1.85) -- (0.96, 2.15); \draw (1.36, 1.85) -- (1.36, 2.15);
    \draw (6.66, 1.85) -- (6.66, 2.15); \draw (7.06, 1.85) -- (7.06, 2.15);
    \draw (7.46, 1.85) -- (7.46, 2.15); \draw (7.86, 1.85) -- (7.86, 2.15);
    % x=1.5 ajtok
    \draw (1.35, 0.26) -- (1.65, 0.26); \draw (1.35, 0.76) -- (1.65, 0.76);
    \draw (1.35, 1.26) -- (1.65, 1.26); \draw (1.35, 1.76) -- (1.65, 1.76);
    \draw (1.35, 2.26) -- (1.65, 2.26); \draw (1.35, 2.76) -- (1.65, 2.76);
    \draw (1.35, 3.26) -- (1.65, 3.26); \draw (1.35, 3.76) -- (1.65, 3.76);
    % x=6.5 ajtok
    \draw (6.35, 0.26) -- (6.65, 0.26); \draw (6.35, 0.76) -- (6.65, 0.76);
    \draw (6.35, 1.26) -- (6.65, 1.26); \draw (6.35, 1.76) -- (6.65, 1.76);
    \draw (6.35, 2.26) -- (6.65, 2.26); \draw (6.35, 2.76) -- (6.65, 2.76);
    \draw (6.35, 3.26) -- (6.65, 3.26); \draw (6.35, 3.76) -- (6.65, 3.76);
    % x=3 ajtok
    \draw (2.85, 1.26) -- (3.15, 1.26); \draw (2.85, 1.76) -- (3.15, 1.76);
    \draw (2.85, 2.26) -- (3.15, 2.26); \draw (2.85, 2.76) -- (3.15, 2.76);
    % x=5 ajtok
    \draw (4.85, 1.26) -- (5.15, 1.26); \draw (4.85, 1.76) -- (5.15, 1.76);
    \draw (4.85, 2.26) -- (5.15, 2.26); \draw (4.85, 2.76) -- (5.15, 2.76);
    % x=4 ajtok
    \draw (3.85, 1.26) -- (4.15, 1.26); \draw (3.85, 1.76) -- (4.15, 1.76);
    \draw (3.85, 2.26) -- (4.15, 2.26); \draw (3.85, 2.76) -- (4.15, 2.76);
    % y=1 ajtok
    \draw (3.26, 0.85) -- (3.26, 1.15); \draw (3.76, 0.85) -- (3.76, 1.15);
    \draw (4.26, 0.85) -- (4.26, 1.15); \draw (4.76, 0.85) -- (4.76, 1.15);
    % y=3 ajtok
    \draw (3.26, 2.85) -- (3.26, 3.15); \draw (3.76, 2.85) -- (3.76, 3.15);
    \draw (4.26, 2.85) -- (4.26, 3.15); \draw (4.76, 2.85) -- (4.76, 3.15);
  \end{scope}

  % Jobb oldali graf
  \begin{scope}[xshift=12.2cm, yshift=2cm]
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (A) at (90:2.1) {$A$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (B) at (54:2.1) {$B$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (C) at (18:2.1) {$C$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (D) at (-18:2.1) {$D$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (E) at (-54:2.1) {$E$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (F) at (-90:2.1) {$F$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (G) at (-126:2.1) {$G$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (H) at (-162:2.1) {$H$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (I) at (162:2.1) {$I$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (J) at (126:2.1) {$J$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (X) at (0, 1.1) {$X$};
    \node[circle, draw=black, fill=white, inner sep=1.5pt] (Y) at (0, -1.1) {$Y$};

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
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 98. feladat

Tíz házaspár mindegyik tagjára igaz, hogy a maradék kilenc házaspár mindegyikének legalább egyik tagját ismeri. Az ismeretség kölcsönös, és mindenki ismeri a saját házastársát is. Bizonyítsd be, hogy a húsz személy leültethető egy húszszemélyes, kör alakú asztalhoz úgy, hogy mindenki ismerje mindkét szomszédját!

## 99. feladat

Hány Hamilton-út, illetve Hamilton-kör van a $K_{n,n}$ teljes páros gráfban, ha $n \ge 2$? Két utat vagy kört akkor tekintünk különbözőnek, ha eltér az élhalmazuk.

## 100. feladat

Az $F$ fának 17 csúcsa van, és minden csúcsának fokszáma 1 vagy 4. Határozd meg, legalább hány élt kell $F$-be behúzni ahhoz, hogy a keletkező egyszerű gráfnak legyen zárt Euler-vonala!

## 101. feladat

Bizonyítsd be, hogy ha egy $n \ge 3$ csúcsú egyszerű $G$ gráf kielégíti az Ore-tétel feltételét, vagyis bármely két nem szomszédos csúcsának fokszámösszege legalább $n$, akkor

a) bármely két csúcsának távolsága legfeljebb kettő;

b) a csúcsok legalább felének fokszáma legalább $n/2$.

Két csúcs távolsága a köztük vezető legrövidebb út hossza; ha nincs ilyen út, a távolság végtelen.

## 102. feladat

Legyen $G$ csúcshalmaza $\{1, 2, \dots, 100\}$. Van-e $G$-ben Hamilton-út, ha két *különböző* $i, j$ csúcsot pontosan az alábbi feltétel teljesülésekor kötünk össze?

a) $0 < |i - j| \le 2$;

b) $|i - j| = 2 \text{ vagy } 3$;

c) $i \mid j \text{ vagy } j \mid i$;

d) $|i - j| > 23$.

Négy különböző gráfról van szó.

## Házi feladat

## 103. feladat (házi feladat)

$G$ egy százcsúcsú egyszerű összefüggő $2k$-reguláris gráf, vagyis minden csúcsának foka $2k$. Bizonyítsd be, hogy $G$ néhány élét ki lehet színezni pirosra úgy, hogy minden csúcsra pontosan $k$ piros él illeszkedjen!

## 104. feladat (házi feladat)

Egy sakktáblát szeretnénk bejárni lóugrásban úgy, hogy minden mezőre pontosan egyszer lépjünk. Lehetséges-e ez, ha a tábla a) $4 \times 4$-es; b) $5 \times 5$-ös; c) $3 \times 5$-ös? És ha zárt bejárást szeretnénk, vagyis az utolsó mezőről egy lóugrással vissza is akarunk érkezni az elsőre?

## 105. feladat (házi feladat)

Legyen $n \ge 1$. A $G$ gráf $2^n$ csúcsa egy $n$ elemű halmaz részhalmazainak felel meg. Két *különböző* csúcs között akkor megy irányítatlan él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat.

a) Hány éle van $G$-nek?

b) Van-e benne nyílt vagy zárt Euler-vonal?

c) És Hamilton-kör?
