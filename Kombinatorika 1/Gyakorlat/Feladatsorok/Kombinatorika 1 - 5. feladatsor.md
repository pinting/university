# Kombinatorika 1 – 5. feladatsor

### Kombinatorika 1 normál · 2026.

## 75. feladat

Adott egy véges egyszerű gráf. Mutasd meg, hogy a csúcsai két színnel színezhetőek úgy, hogy az élek legalább fele különböző színű csúcsokat kössön össze.

## 76. feladat

a) Hány éle van annak a 100 csúcsú gráfnak, melynek 5 komponense van, melyek mindegyike fa? Általában hány éle van egy $n$ csúcsú, $k$ komponensű körmentes gráfnak?

b) Mutass két olyan számozott fát, melyek nem azonosak, de izomorfak!

c) Egy fa Prüfer-kódja csupa különböző számot tartalmaz. Hogy néz ki a fa?

## 77. feladat

Határozd meg az alábbi fák Prüfer-kódját!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \begin{scope}
    \node[pt, label=above:{4}] (4) at (0, 2) {};
    \node[pt, label=above:{8}] (8) at (1, 2) {};
    \node[pt, label=left:{5}] (5) at (0, 1) {};
    \node[pt, label=above right:{1}] (1) at (1, 1) {};
    \node[pt, label=right:{7}] (7) at (2, 1) {};
    \node[pt, label=left:{6}] (6) at (0, 0) {};
    \node[pt, label=above:{2}] (2) at (1, 0) {};
    \node[pt, label=right:{3}] (3) at (2, 0) {};
    \draw (4) -- (1); \draw (8) -- (1); \draw (5) -- (1); \draw (1) -- (7);
    \draw (5) -- (6); \draw (5) -- (2); \draw (2) -- (3);
  \end{scope}
  \begin{scope}[xshift=5.2cm, yshift=0.6cm]
    \node[pt, label=above:{6}] (6) at (-1, 0.6) {};
    \node[pt, label=below:{5}] (5) at (-1, -0.6) {};
    \node[pt, label=below:{4}] (4) at (0, 0) {};
    \node[pt, label=above:{3}] (3) at (1, 0) {};
    \node[pt, label=right:{7}] (7) at (1, -0.8) {};
    \node[pt, label=below right:{2}] (2) at (2, 0) {};
    \node[pt, label=right:{8}] (8) at (2, -0.8) {};
    \node[pt, label=right:{1}] (1) at (3, 0) {};
    \node[pt, label=right:{9}] (9) at (1.5, 0.8) {};
    \node[pt, label=right:{11}] (11) at (1.0, 1.5) {};
    \node[pt, label=right:{10}] (10) at (2.4, 0.8) {};
    \draw (6) -- (4); \draw (5) -- (4); \draw (4) -- (3); \draw (3) -- (7); \draw (3) -- (2);
    \draw (2) -- (8); \draw (2) -- (1); \draw (2) -- (9); \draw (9) -- (11); \draw (2) -- (10);
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 78. feladat

Rajzoljuk le azt a fát, melynek Prüfer-kódja **a)** $1, 2, 3, 4, 5, 4, 3$; **b)** $2, 5, 10, 1, 9, 3, 8$.

## 79. feladat

Hány olyan fa van $n$ számozott csúcson, **a)** ami nem egy csillag; **b)** amelynek minden csúcsa legfeljebb másodfokú; **c)** amelyben az 1 indexű csúcs elsőfokú?

## 80. feladat

Legyen $G$ egy élsúlyozott teljes gráf $n$ számozott csúcson, aminek az $(1, 2)$ éle 1 súlyú, a többi pedig 2 súlyú. Hány minimális súlyú feszítőfája van $G$-nek?

## 81. feladat

Adjuk meg az ábrán látható gráf egy minimális súlyú feszítőfáját! Hány különböző minimális súlyú feszítőfája van?

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.05,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  w/.style={fill=white, inner sep=1pt, font=\small}
]
  \node[pt] (T) at (4, 3.2) {};
  \node[pt] (L) at (1.3, 2.1) {};
  \node[pt] (R) at (6.7, 2.1) {};
  \node[pt] (M) at (2.9, 1.6) {};
  \node[pt] (N) at (5.1, 1.6) {};
  \node[pt] (BL) at (0.8, 0.3) {};
  \node[pt] (BM) at (4, 0.3) {};
  \node[pt] (BR) at (7.2, 0.3) {};
  \draw (L) -- node[w] {1} (T);
  \draw (M) -- node[w, pos=0.6] {1} (T);
  \draw (L) -- node[w] {1} (M);
  \draw (T) -- node[w, pos=0.45] {4} (N);
  \draw (T) -- node[w] {4} (R);
  \draw (M) -- node[w] {2} (N);
  \draw (N) -- node[w] {4} (R);
  \draw (L) -- node[w] {3} (BL);
  \draw (M) -- node[w] {6} (BL);
  \draw (M) -- node[w] {2} (BM);
  \draw (N) -- node[w] {2} (BM);
  \draw (N) -- node[w] {6} (BR);
  \draw (R) -- node[w] {5} (BR);
  \draw (BL) -- node[w] {6} (BM);
  \draw (BM) -- node[w] {6} (BR);
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 82. feladat

Egy fa Prüfer-kódja $1, 3, x, 3, 2, 2, x, 4, 5$. Mi lehet az $x$ legkisebb értéke, ha a fában minden csúcs foka legfeljebb 3? Rajzold is fel a kapott fát!

## 83. feladat

Olyan fát szeretnék készíteni, melyben csak két különböző fokszám fordul elő: az egyik fajta 9-szer, a másik fajta 92-szer. Mi lehet a szóban forgó két fokszám?

## 84. feladat

Bergengócia három nagy szigetből áll. Mindhárom szigeten 10-10 város található. A Bergengóciai Közlekedési Minisztérium szeretné elérni, hogy bármely városból bármelyikbe el lehessen jutni tömegközlekedéssel (esetleg átszállásokkal). Ehhez városok között indíthatnak közvetlen járatokat. Bármely két azonos szigeten lévő város között indulhat buszjárat, melynek költsége évi 1 millió buznyák. Bármely két különböző szigeten lévő város között indulhat hajójárat, melynek költsége évi 2 millió buznyák. A Minisztérium célja természetesen, hogy a lehető legolcsóbban lehessen üzemeltetni a hálózatot.

a) Mennyi ez a minimális üzemeltetési költség éves szinten?

b) Hányféleképpen nézhet ki egy minimális üzemeltetési költséggel működő hálózat?

## 85*. feladat

Legyen $G$ véges, összefüggő, élsúlyozott gráf, $T_1$ és $T_2$ pedig két minimális feszítőfája. Bizonyítsd be, hogy bármely $e \in E(T_1) \setminus E(T_2)$ élhez található olyan $f \in E(T_2) \setminus E(T_1)$ él, amelyre mind $T_1 - e + f$, mind $T_2 - f + e$ minimális feszítőfa.

## 86. feladat (házi feladat)

Egy gráfban minden csúcs foka legfeljebb 5. Bizonyítsd be, hogy a csúcsok 3 színnel színezhetők úgy, hogy minden csúcsnak legfeljebb 1 vele megegyező színű szomszédja legyen.

## 87. feladat (házi feladat)

Egy teljes gráf ponthalmaza $x_1, x_2, \dots, x_k, y_1, y_2, \dots, y_l$. Az $(x_i, x_j)$ élek költsége (súlya) 1, az $(y_i, y_j)$ éleké 2, az $(x_i, y_j)$ éleké 3. Hány legolcsóbb feszítőfája van a gráfnak és mennyibe kerülnek ezek?

## 88. feladat (házi feladat)

a) Mi lehet az $x$ értéke, ha a $2, 10, 4, 6, 10, 1, 3, x$ Prüfer-kódhoz tartozó fában négy levél van? Rajzoljuk fel az $x$ legnagyobb értékéhez tartozó fát!

b) Válasszuk meg $x$ értékét úgy, hogy az alábbi sorozat olyan fát kódoljon, melynek minden foka páratlan: $2, 3, x, 3, 2, 4, 4, 3$. Rajzold is fel a kapott fát!
