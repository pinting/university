# Kombinatorika 1 – 5. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 75. feladat

Adott egy véges egyszerű gráf. Mutasd meg, hogy a csúcsai két színnel színezhetőek úgy, hogy az élek legalább fele különböző színű csúcsokat kössön össze.

**Megoldás.**

Nevezzük egy élt **jónak**, ha a két végpontja különböző színű, és **rossznak**, ha azonos színű. A csúcsok $2$-színezéseinek száma véges ($2^n$), tehát van olyan színezés, amelyben a jó élek száma **maximális**. Megmutatjuk, hogy ez megfelel.

Legyen $v$ tetszőleges csúcs, és jelölje $j(v)$, illetve $r(v)$ a $v$-re illeszkedő jó, illetve rossz élek számát. Ha $r(v) > j(v)$ volna, akkor $v$ színét átváltva a $v$-re illeszkedő rossz élek jókká, a jók rosszakká válnának, a többi él nem változna. A jó élek száma így $r(v) - j(v) > 0$-val nőne, ellentmondásban a maximalitással. Tehát minden csúcsra $j(v) \ge r(v)$.

Összegezzük ezt az összes csúcsra! Minden jó él két végpontjánál is jó élként számít, így $\sum_v j(v) = 2J$, ahol $J$ a jó élek száma; ugyanígy $\sum_v r(v) = 2R$. Tehát $2J \ge 2R$, azaz $J \ge R$, és mivel $J + R = |E|$, kapjuk, hogy $J \ge \frac{|E|}{2}$. $\blacksquare$

::: elmelet
**Elméleti háttér — szélsőérték-elv és helyi javítás.** Ha egy véges halmazon (itt a színezéseken) egy mennyiséget maximalizálunk, akkor a maximumban egyetlen „helyi lépés” (egy csúcs átszínezése) sem javíthat. Ez a helyi feltétel ($j(v) \ge r(v)$ minden csúcsra) a fokszámok összegzésével (kézfogási lemma: minden él két végpontnál számít) globális állítássá válik. Ugyanez a módszer algoritmust is ad: amíg van olyan csúcs, amelynél a rossz élek vannak többségben, színezzük át — minden lépés növeli a jó élek számát, tehát legfeljebb $|E|$ lépés után megállunk. (Egy másik bizonyítás: véletlen színezésnél minden él $\frac12$ valószínűséggel jó, így a jó élek várható száma $\frac{|E|}{2}$, tehát van olyan színezés, amelyben legalább ennyi.)
:::

## 76. feladat

a) Hány éle van annak a 100 csúcsú gráfnak, melynek 5 komponense van, melyek mindegyike fa? Általában hány éle van egy $n$ csúcsú, $k$ komponensű körmentes gráfnak?

b) Mutass két olyan számozott fát, melyek nem azonosak, de izomorfak!

c) Egy fa Prüfer-kódja csupa különböző számot tartalmaz. Hogy néz ki a fa?

**Megoldás.**

a) Ha a komponensek $n_1, \dots, n_k$ csúcsú fák ($n_1 + \dots + n_k = n$), akkor az $i$-edik komponensnek $n_i - 1$ éle van, így az élek száma
$$\sum_{i=1}^k (n_i - 1) = n - k.$$
Egy körmentes gráf komponensei fák, tehát **$n$ csúcsú, $k$ komponensű körmentes gráfnak $n - k$ éle van**. A konkrét esetben: **$100 - 5 = 95$ él.**

b) Például a $\{1, 2, 3\}$ csúcshalmazon az $1 - 2 - 3$ út (élei $\{1,2\}, \{2,3\}$) és a $2 - 1 - 3$ út (élei $\{1,2\}, \{1,3\}$). Mindkettő $3$ csúcsú út, tehát izomorfak, de az élhalmazuk különböző, így számozott fákként nem azonosak. (Az első fában a $2$, a másodikban az $1$ a középső csúcs.)

c) A Prüfer-kódban az $i$ csúcs pontosan $\deg(i) - 1$-szer szerepel. Ha a kód $n - 2$ eleme csupa különböző, akkor $n - 2$ csúcs pontosan egyszer szerepel, ezek foka $2$; a maradék $2$ csúcs nem szerepel, ezek levelek. **A fa tehát egy út** (egy fa, amelynek minden csúcsa legfeljebb másodfokú, út), és a kódban éppen az út belső csúcsai szerepelnek. Megfordítva, minden út kódja csupa különböző számból áll, mert minden belső csúcs foka $2$. (A kód a belső csúcsokat általában nem az úton elfoglalt sorrendjükben sorolja fel.)

::: elmelet
**Elméleti háttér — erdők élszáma és a Prüfer-kód fokszám-tulajdonsága.** Egy fának eggyel kevesebb éle van, mint csúcsa; körmentes gráfra (erdőre) ebből komponensenként összegezve $|E| = n - k$. Megfordítva, egy $n$ csúcsú, $n - k$ élű gráf pontosan akkor körmentes, ha $k$ komponense van. A Prüfer-kódnál a kulcs: az $i$ szám annyiszor kerül a kódba, ahányszor egy szomszédját letépjük, és ez $\deg(i) - 1$ — így a kódból azonnal leolvasható a fokszámsorozat, és a levelek pontosan a kódban nem szereplő csúcsok. Az „izomorf” és az „azonos” (számozott fáknál: ugyanaz az élhalmaz) fogalmát gondosan meg kell különböztetni: a Cayley-tétel ($n^{n-2}$) a számozott fákat számolja, nem az izomorfia-osztályokat.
:::

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

**Megoldás.**

**Bal oldali fa** ($n = 8$, a kód $6$ hosszú). Élei: $\{1,4\}, \{1,8\}, \{1,5\}, \{1,7\}, \{5,6\}, \{5,2\}, \{2,3\}$. Kezdetben a levelek: $3, 4, 6, 7, 8$. Mindig a legkisebb levelet tépjük le, és a szomszédját jegyezzük fel:

| levél (mit) | 3 | 2 | 4 | 6 | 5 | 7 | *1* |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| szomszéd (hova) | **2** | **5** | **1** | **5** | **1** | **1** | *8* |

(A $3$ letépése után a $2$ levéllé válik és ő a legkisebb; a $6$ letépése után az $5$ válik levéllé.) **A Prüfer-kód: $(2, 5, 1, 5, 1, 1)$.**

*Ellenőrzés:* $\deg(1) = 4$ és az $1$ háromszor szerepel; $\deg(5) = 3$, kétszer; $\deg(2) = 2$, egyszer; a levelek nem szerepelnek.

**Jobb oldali fa** ($n = 11$, a kód $9$ hosszú). Élei: $\{4,6\}, \{4,5\}, \{4,3\}, \{3,7\}, \{3,2\}, \{2,8\}, \{2,1\}, \{2,9\}, \{9,11\}, \{2,10\}$. Kezdetben a levelek: $1, 5, 6, 7, 8, 10, 11$.

| levél (mit) | 1 | 5 | 6 | 4 | 7 | 3 | 8 | 10 | 2 | *9* |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| szomszéd (hova) | **2** | **4** | **4** | **3** | **3** | **2** | **2** | **2** | **9** | *11* |

**A Prüfer-kód: $(2, 4, 4, 3, 3, 2, 2, 2, 9)$.**

*Ellenőrzés:* $\deg(2) = 5$, a $2$ négyszer szerepel; $\deg(3) = \deg(4) = 3$, kétszer-kétszer; $\deg(9) = 2$, egyszer.

::: elmelet
**Elméleti háttér — a Prüfer-kódolás.** Egy $n \ge 2$ csúcsú számozott fából $n - 2$-szer letépjük a **legkisebb sorszámú levelet**, és feljegyezzük a **szomszédját**. Letépés után új levelek keletkezhetnek (itt a $2$, az $5$, a $4$, a $3$), ezért minden lépésben újra meg kell keresni a legkisebb levelet. A legnagyobb sorszámú csúcs ($n$) sosem kerül letépésre, így az utolsó, meg nem jegyzett él mindig az $n$-be fut. Önellenőrzésre a fokszám-tulajdonság szolgál: az $i$ csúcs $\deg(i) - 1$-szer szerepel a kódban.
:::

## 78. feladat

Rajzoljuk le azt a fát, melynek Prüfer-kódja **a)** $1, 2, 3, 4, 5, 4, 3$; **b)** $2, 5, 10, 1, 9, 3, 8$.

**Megoldás.**

a) A kód $7$ hosszú, tehát $n = 9$, a csúcsok $1, \dots, 9$. Dekódolás: minden lépésben a legkisebb olyan, még fel nem használt szám a levél, amely a kód **hátralevő** részében nem szerepel; ezt a hátralevő kód első elemével kötjük össze.

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $1, 2, 3, 4, 5, 4, 3$ | 6 | 1 |
| 2 | $2, 3, 4, 5, 4, 3$ | 1 | 2 |
| 3 | $3, 4, 5, 4, 3$ | 2 | 3 |
| 4 | $4, 5, 4, 3$ | 7 | 4 |
| 5 | $5, 4, 3$ | 8 | 5 |
| 6 | $4, 3$ | 5 | 4 |
| 7 | $3$ | 4 | 3 |
| — | (a két megmaradó csúcs) | 3 | 9 |

A végén megmaradó két csúcs a $3$ és a $9$. **Élek:** $\{6,1\}, \{1,2\}, \{2,3\}, \{7,4\}, \{8,5\}, \{5,4\}, \{4,3\}, \{3,9\}$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \node[pt, label=above:{6}] (6) at (0, 0) {};
  \node[pt, label=above:{1}] (1) at (1, 0) {};
  \node[pt, label=above:{2}] (2) at (2, 0) {};
  \node[pt, label=above:{3}] (3) at (3, 0) {};
  \node[pt, label=above:{9}] (9) at (4, 0) {};
  \node[pt, label=left:{4}] (4) at (3, -1) {};
  \node[pt, label=left:{7}] (7) at (2.3, -1.8) {};
  \node[pt, label=right:{5}] (5) at (3.7, -1.8) {};
  \node[pt, label=right:{8}] (8) at (3.7, -2.7) {};
  \draw (6) -- (1) -- (2) -- (3) -- (9); \draw (3) -- (4); \draw (4) -- (7); \draw (4) -- (5); \draw (5) -- (8);
\end{tikzpicture}
\end{adjustbox}
\end{center}

*Ellenőrzés:* a $3$ és a $4$ kétszer szerepel a kódban, fokuk $3$; az $1, 2, 5$ egyszer, fokuk $2$; a levelek $6, 7, 8, 9$.

b) **Ilyen fa nincs.** A kód $7$ hosszú, tehát egy $n = 9$ csúcsú, $1, \dots, 9$ számozású fa kódja volna — de a kódban szerepel a $10$, ami nem csúcs. (Egy $10$ csúcsú fa kódja $8$ hosszú volna.) Az $n$ csúcsú fák Prüfer-kódjai pontosan az $[n]^{n-2}$ halmaz elemei; a $2, 5, 10, 1, 9, 3, 8$ sorozat nem eleme $[9]^7$-nek.

::: elmelet
**Elméleti háttér — dekódolás és a kódok halmaza.** A dekódolásnál az első letépett levél a kódban nem szereplő legkisebb szám (a levelek pontosan a kódban nem szereplő csúcsok), szomszédja a kód első eleme; ezután a kód első elemét elhagyjuk, a levelet „elhasználtnak” jelöljük, és ugyanígy folytatjuk. A végén két fel nem használt csúcs marad, ezeket összekötjük (az egyik mindig $n$). A Prüfer-megfeleltetés bijekció az $n$ csúcsú számozott fák és az $[n]^{n-2}$ sorozatok között; ebből jön a Cayley-tétel ($n^{n-2}$ fa). Egy sorozat tehát pontosan akkor Prüfer-kód, ha hossza $n - 2$ és minden eleme $1$ és $n$ közé esik.
:::

## 79. feladat

Hány olyan fa van $n$ számozott csúcson, **a)** ami nem egy csillag; **b)** amelynek minden csúcsa legfeljebb másodfokú; **c)** amelyben az 1 indexű csúcs elsőfokú?

**Megoldás.**

A Cayley-tétel szerint az összes számozott fa száma $n^{n-2}$.

a) Egy csillagot a középpontja egyértelműen meghatároz, és $n \ge 3$ esetén a középpont is egyértelmű (az egyetlen nem levél), tehát $n$ csillag van. Így **$n \ge 3$-ra $n^{n-2} - n$** fa nem csillag. ($n \le 2$-re az egyetlen fa csillag, a válasz $0$; $n = 3$-ra a képlet is $0$-t ad, hiszen minden $3$ csúcsú fa út, azaz csillag.)

b) Egy fa, amelynek minden foka legfeljebb $2$, egy **út**. Egy út a csúcsok egy sorrendje, de a két irányból olvasott sorrend ugyanazt az utat adja (tehénszabály), így **$n \ge 2$-re $\frac{n!}{2}$** ilyen fa van ($n = 1$-re $1$).

c) Az $1$ csúcs pontosan akkor levél, ha **nem szerepel a Prüfer-kódban**. Az ilyen kódok olyan $n - 2$ hosszú sorozatok, amelyek elemei a $2, \dots, n$ számok közül kerülnek ki: **$(n-1)^{n-2}$** fa ($n \ge 2$).

*Ellenőrzés $n = 3$-ra:* $3$ fa van (melyik csúcs van középen); ebből $2$-ben levél az $1$, és valóban $(3-1)^1 = 2$.

::: elmelet
**Elméleti háttér — leszámlálás Prüfer-kóddal.** A Prüfer-kód bijekciója a fák egy-egy tulajdonságát a kódok egyszerű tulajdonságává fordítja: „$i$ levél” $\iff$ „$i$ nem szerepel a kódban”, „$\deg(i) = d$” $\iff$ „$i$ pontosan $d - 1$-szer szerepel”. Ezért a fokszámra vonatkozó feltételek ismétléses variációk és permutációk számolására vezetnek; például a $d_1, \dots, d_n$ fokszámú fák száma $\frac{(n-2)!}{\prod_i (d_i - 1)!}$. A csillagok kódja konstans ($c, c, \dots, c$), az utak kódja csupa különböző elemből áll (76. c) feladat) — ez is egy út a b) részhez: $n(n-1)\cdots 3 = \frac{n!}{2}$ sorozat áll különböző elemekből.
:::

## 80. feladat

Legyen $G$ egy élsúlyozott teljes gráf $n$ számozott csúcson, aminek az $(1, 2)$ éle 1 súlyú, a többi pedig 2 súlyú. Hány minimális súlyú feszítőfája van $G$-nek?

**Megoldás.**

Minden feszítőfának $n - 1$ éle van. Ha a fa tartalmazza az $\{1, 2\}$ élt, a súlya $1 + 2(n-2) = 2n - 3$; ha nem, $2(n - 1) = 2n - 2$. A minimális súlyú feszítőfák tehát **pontosan az $\{1, 2\}$ élt tartalmazó feszítőfák** (ilyen van, pl. a Kruskal-algoritmus elsőként ezt az élt választja). Ezeket kell megszámolni.

**1. megoldás (kettős leszámlálás).** Számoljuk meg a (feszítőfa, a fa egy éle) párokat. Egyrészt $n^{n-2}$ fa van, mindegyiknek $n - 1$ éle: $n^{n-2}(n - 1)$ pár. Másrészt a $K_n$ szimmetriája miatt (a csúcsok átszámozása élt élbe, fát fába visz) minden él ugyanannyi, mondjuk $t$ fában szerepel, és $\binom{n}{2}$ él van: $\binom{n}{2} t$ pár. Tehát
$$t = \frac{n^{n-2}(n-1)}{\binom{n}{2}} = \frac{n^{n-2}(n-1) \cdot 2}{n(n-1)} = 2n^{n-3}.$$

**2. megoldás (Prüfer-kóddal).** Húzzuk össze az $\{1, 2\}$ élt egyetlen $v^*$ csúccsá. Egy $\{1, 2\}$-t tartalmazó $T$ feszítőfából így egy $n - 1$ csúcsú (a $v^*, 3, 4, \dots, n$ csúcsokon) számozott $T'$ fa lesz, és $T$-t a $T'$ és az a választás határozza meg, hogy a $v^*$-ra illeszkedő $\deg_{T'}(v^*)$ él mindegyike az $1$-be vagy a $2$-be fut. Tehát a keresett szám
$$\sum_{T'} 2^{\deg_{T'}(v^*)} = 2 \sum_{T'} 2^{\deg_{T'}(v^*) - 1}.$$
A $T'$ Prüfer-kódja $n - 3$ hosszú sorozat $n - 1$ jelből, és $\deg_{T'}(v^*) - 1$ a $v^*$ előfordulásainak száma a kódban. Ha a kód minden pozíciójához $2$ súlyt rendelünk, ha ott $v^*$ áll, és $1$-et különben, akkor $2^{\deg(v^*) - 1}$ a súlyok szorzata, és az összes kódra összegezve
$$\sum_{T'} 2^{\deg_{T'}(v^*) - 1} = (\underbrace{2}_{v^*} + \underbrace{1 + \dots + 1}_{n - 2})^{n - 3} = n^{n-3}.$$

**A minimális feszítőfák száma $2n^{n-3}$** ($n \ge 2$; $n = 2$-re $1$, $n = 3$-ra $2$).

::: elmelet
**Elméleti háttér — a legolcsóbb él mindig benne van; adott élt tartalmazó fák.** Ha egy gráfban egyetlen legkisebb súlyú él van, akkor minden minimális feszítőfa tartalmazza: ha egy $T$ fa nem tartalmazná, $T + e$ egyetlen körén van egy $e$-nél nehezebb él, amelyet elhagyva olcsóbb feszítőfát kapnánk. Az adott élt tartalmazó feszítőfák száma $K_n$-ben $2n^{n-3}$; általánosabban, egy rögzített, $a_1, \dots, a_k$ csúcsú komponensekből álló feszítő erdőt tartalmazó fák száma $K_n$-ben $n^{k-2} a_1 a_2 \cdots a_k$ (itt $k = n - 1$, egy komponens $2$ csúcsú: $n^{n-3} \cdot 2$). A 2. megoldás súlyozott Prüfer-összegzése ennek a képletnek a bizonyítási ötlete is.
:::

## 81. feladat

Adjuk meg az ábrán látható gráf egy minimális súlyú feszítőfáját! Hány különböző minimális súlyú feszítőfája van?

**Megoldás.**

Nevezzük el a csúcsokat: $T$ a csúcs, $L$ és $R$ a bal, illetve jobb felső, $M$ és $N$ a két középső, $P$, $Q$, $S$ az alsó (bal, középső, jobb) csúcs. Az élek súly szerint:

- $1$: $LT$, $MT$, $LM$ (háromszög);
- $2$: $MN$, $MQ$, $NQ$ (háromszög);
- $3$: $LP$;
- $4$: $TN$, $TR$, $NR$;
- $5$: $RS$;
- $6$: $MP$, $NS$, $PQ$, $QS$.

**Kruskal-algoritmus** (mindig a legolcsóbb olyan élt vesszük, amely nem zár be kört):

1. Az $1$ súlyú háromszögből $2$ élt vehetünk (a harmadik kört zárna): $\{L, T, M\}$ összefügg.
2. A $2$ súlyú háromszögből $2$ élt: $\{L, T, M, N, Q\}$ összefügg.
3. $LP$ ($3$): $P$ is bekerül.
4. A $4$ súlyú élek közül $TN$ kört zárna; $TR$ és $NR$ közül pontosan egyet vehetünk: $R$ bekerül.
5. $RS$ ($5$): $S$ is bekerül. Ezzel $7 = 8 - 1$ élünk van, a fa kész.

Egy minimális feszítőfa például: $LT, MT, MN, MQ, LP, NR, RS$ (vastag élek az ábrán). **A súlya $1 + 1 + 2 + 2 + 3 + 4 + 5 = 18$.**

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.05,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  w/.style={fill=white, inner sep=1pt, font=\small},
  t/.style={line width=2.2pt},
  n/.style={draw=black!40}
]
  \node[pt, label=above:{$T$}] (T) at (4, 3.2) {};
  \node[pt, label=left:{$L$}] (L) at (1.3, 2.1) {};
  \node[pt, label=right:{$R$}] (R) at (6.7, 2.1) {};
  \node[pt, label=below left:{$M$}] (M) at (2.9, 1.6) {};
  \node[pt, label=below right:{$N$}] (N) at (5.1, 1.6) {};
  \node[pt, label=below:{$P$}] (BL) at (0.8, 0.3) {};
  \node[pt, label=below:{$Q$}] (BM) at (4, 0.3) {};
  \node[pt, label=below:{$S$}] (BR) at (7.2, 0.3) {};
  \draw[t] (L) -- node[w] {1} (T);
  \draw[t] (M) -- node[w, pos=0.6] {1} (T);
  \draw[n] (L) -- node[w] {1} (M);
  \draw[n] (T) -- node[w, pos=0.45] {4} (N);
  \draw[n] (T) -- node[w] {4} (R);
  \draw[t] (M) -- node[w] {2} (N);
  \draw[t] (N) -- node[w] {4} (R);
  \draw[t] (L) -- node[w] {3} (BL);
  \draw[n] (M) -- node[w] {6} (BL);
  \draw[t] (M) -- node[w] {2} (BM);
  \draw[n] (N) -- node[w] {2} (BM);
  \draw[n] (N) -- node[w] {6} (BR);
  \draw[t] (R) -- node[w] {5} (BR);
  \draw[n] (BL) -- node[w] {6} (BM);
  \draw[n] (BM) -- node[w] {6} (BR);
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Hány minimális feszítőfa van?** Minden minimális feszítőfa megkapható a Kruskal-algoritmussal, ha az egyenlő súlyú éleket alkalmas sorrendben vizsgáljuk. Ráadásul minden $w$-re igaz, hogy egy minimális feszítőfa legfeljebb $w$ súlyú élei a legfeljebb $w$ súlyú élek gráfjának egy feszítő erdőjét alkotják (ugyanannyi komponenssel). A választási lehetőségek szintenként:

- $1$-es szint: a háromszög $3$ feszítőfája közül bármelyik — $3$ lehetőség;
- $2$-es szint: az $\{L, T, M\}$ összehúzása után az $MN$, $MQ$, $NQ$ élek háromszöget alkotnak — $3$ lehetőség;
- $3$-as szint: $LP$ kötelező — $1$;
- $4$-es szint: $TN$ kört zárna, $TR$ és $NR$ közül pontosan az egyik — $2$ lehetőség;
- $5$-ös szint: $RS$ kötelező — $1$.

A választások függetlenek, így **$3 \cdot 3 \cdot 2 = 18$ különböző minimális súlyú feszítőfa** van (mind $18$ súlyú).

::: elmelet
**Elméleti háttér — Kruskal-algoritmus és a minimális feszítőfák szerkezete.** A mohó (optimista) Kruskal-algoritmus a súly szerint növekvő sorrendben veszi az éleket, és minden olyat megtart, amely nem zár be kört; mindig minimális feszítőfát ad. Ha a súlyok különbözők, a minimális feszítőfa egyértelmű; egyenlő súlyoknál a döntetlenek feloldása adja a különböző optimumokat. Minden $w$ küszöbre a minimális feszítőfa $\le w$ súlyú élei a $G_{\le w}$ gráf (a $\le w$ súlyú élek) feszítő erdőjét alkotják; így a minimális feszítőfák száma szintenként szorzódik: minden szinten a korábbi komponensek összehúzásával kapott (multi)gráf feszítő erdőinek száma számít. Itt minden szint egy kis háromszög vagy párhuzamos élpár volt.
:::

## 82. feladat

Egy fa Prüfer-kódja $1, 3, x, 3, 2, 2, x, 4, 5$. Mi lehet az $x$ legkisebb értéke, ha a fában minden csúcs foka legfeljebb 3? Rajzold is fel a kapott fát!

**Megoldás.**

A kód $9$ hosszú, így $n = 11$, és $x \in \{1, \dots, 11\}$. Az $i$ csúcs foka $1 + (\text{az } i \text{ előfordulásainak száma})$, tehát a feltétel: **egyik szám sem szerepelhet $2$-nél többször** a kódban. Az $x$ nélkül: az $1$, a $4$, az $5$ egyszer, a $2$ és a $3$ kétszer szerepel. Az $x$ kétszer szerepel, így

- $x \in \{2, 3\}$ esetén ez a szám $4$-szer szerepelne (fok $5$);
- $x \in \{1, 4, 5\}$ esetén $3$-szor (fok $4$);
- $x = 6$ esetén a $6$ kétszer szerepel (fok $3$) — ez jó.

**Az $x$ legkisebb értéke $6$.** A kód $(1, 3, 6, 3, 2, 2, 6, 4, 5)$, dekódolva:

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $1, 3, 6, 3, 2, 2, 6, 4, 5$ | 7 | 1 |
| 2 | $3, 6, 3, 2, 2, 6, 4, 5$ | 1 | 3 |
| 3 | $6, 3, 2, 2, 6, 4, 5$ | 8 | 6 |
| 4 | $3, 2, 2, 6, 4, 5$ | 9 | 3 |
| 5 | $2, 2, 6, 4, 5$ | 3 | 2 |
| 6 | $2, 6, 4, 5$ | 10 | 2 |
| 7 | $6, 4, 5$ | 2 | 6 |
| 8 | $4, 5$ | 6 | 4 |
| 9 | $5$ | 4 | 5 |
| — | (a két megmaradó csúcs) | 5 | 11 |

**Élek:** $\{7,1\}, \{1,3\}, \{8,6\}, \{9,3\}, \{3,2\}, \{10,2\}, \{2,6\}, \{6,4\}, \{4,5\}, \{5,11\}$. A fa egy $7 - 1 - 3 - 2 - 6 - 4 - 5 - 11$ út, amelynek $3$, $2$, $6$ csúcsaira egy-egy levél ($9$, $10$, $8$) csatlakozik:

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \foreach \v/\x in {7/0, 1/1, 3/2, 2/3, 6/4, 4/5, 5/6, 11/7} { \node[pt, label=above:{\v}] (n\v) at (\x, 0) {}; }
  \node[pt, label=below:{9}] (n9) at (2, -1) {};
  \node[pt, label=below:{10}] (n10) at (3, -1) {};
  \node[pt, label=below:{8}] (n8) at (4, -1) {};
  \draw (n7) -- (n1) -- (n3) -- (n2) -- (n6) -- (n4) -- (n5) -- (n11);
  \draw (n3) -- (n9); \draw (n2) -- (n10); \draw (n6) -- (n8);
\end{tikzpicture}
\end{adjustbox}
\end{center}

Minden fok legfeljebb $3$ (a $2$, $3$, $6$ csúcsoké pontosan $3$).

::: elmelet
**Elméleti háttér — fokszámkorlát Prüfer-kódban.** Mivel $\deg(i) = 1 + (\text{az } i \text{ előfordulásainak száma})$, a „minden fok legfeljebb $D$” feltétel azt jelenti, hogy egyik szám sem szerepel $D - 1$-nél többször a kódban. Ismeretlen kódelemeknél tehát a már meglévő előfordulásokat kell megszámolni, és azt a legkisebb értéket keresni, amelynél egyik szám sem lépi túl a korlátot. A dekódolás után érdemes a fokszámokat ellenőrizni.
:::

## 83. feladat

Olyan fát szeretnék készíteni, melyben csak két különböző fokszám fordul elő: az egyik fajta 9-szer, a másik fajta 92-szer. Mi lehet a szóban forgó két fokszám?

**Megoldás.**

A fának $n = 9 + 92 = 101$ csúcsa és $100$ éle van, így a fokszámok összege $2 \cdot 100 = 200$. Egy legalább $2$ csúcsú fában van levél, tehát az egyik fokszám $1$.

- Ha $9$ levél van és $92$ darab $d$ fokú csúcs: $9 + 92d = 200$, $92d = 191$ — nem egész. Lehetetlen.
- Ha $92$ levél van és $9$ darab $d$ fokú csúcs: $92 + 9d = 200$, $9d = 108$, $d = 12$.

**A két fokszám csak $1$ és $12$ lehet** ($92$ levél, $9$ darab $12$ fokú csúcs). Ilyen fa létezik: vegyünk egy $9$ csúcsú utat; a két végpontjára $11$-$11$, a $7$ belső csúcsára $10$-$10$ levelet kötve minden útcsúcs foka $12$ lesz, a levelek száma $2 \cdot 11 + 7 \cdot 10 = 92$. (Általában is: $\sum d_i = 2(n - 1)$, $d_i \ge 1$ esetén mindig van ilyen fa.)

::: elmelet
**Elméleti háttér — fák fokszámsorozatai.** Egy $d_1, \dots, d_n$ ($n \ge 2$) sorozat pontosan akkor egy fa fokszámsorozata, ha minden $d_i \ge 1$ és $\sum d_i = 2(n - 1)$. A szükségesség a kézfogási lemmából és az élszámból ($n - 1$) jön; az elégségesség például Prüfer-kóddal: írjuk le az $i$ számot $d_i - 1$-szer, ez $\sum (d_i - 1) = n - 2$ hosszú sorozat, tehát egy fa kódja, amelyben $\deg(i) = d_i$. Itt a két feltétel egy lineáris diofantoszi egyenletet ad.
:::

## 84. feladat

Bergengócia három nagy szigetből áll. Mindhárom szigeten 10-10 város található. A Bergengóciai Közlekedési Minisztérium szeretné elérni, hogy bármely városból bármelyikbe el lehessen jutni tömegközlekedéssel (esetleg átszállásokkal). Ehhez városok között indíthatnak közvetlen járatokat. Bármely két azonos szigeten lévő város között indulhat buszjárat, melynek költsége évi 1 millió buznyák. Bármely két különböző szigeten lévő város között indulhat hajójárat, melynek költsége évi 2 millió buznyák. A Minisztérium célja természetesen, hogy a lehető legolcsóbban lehessen üzemeltetni a hálózatot.

a) Mennyi ez a minimális üzemeltetési költség éves szinten?

b) Hányféleképpen nézhet ki egy minimális üzemeltetési költséggel működő hálózat?

**Megoldás.**

Modell: a $30$ város a csúcsok, a lehetséges járatok az élek (teljes gráf), a buszjáratok súlya $1$, a hajójáratoké $2$ (millió buznyák). Egy hálózat akkor jó, ha összefüggő feszítő részgráf. Minimális költségű hálózat **fa**: ha volna benne kör, a kör egy élét elhagyva olcsóbb, még mindig összefüggő hálózatot kapnánk. Tehát minimális súlyú feszítőfát keresünk.

a) Egy feszítőfának $29$ éle van; legyen $b$ a buszjáratok, $h$ a hajójáratok száma, $b + h = 29$. Egy szigeten belüli buszjáratok körmentesek, így szigetenként legfeljebb $9$, összesen $b \le 27$, tehát $h \ge 2$. A költség
$$b + 2h = 29 + h \ge 31.$$
Egyenlőség pontosan akkor van, ha $h = 2$ és $b = 27$, vagyis **minden szigeten a buszjáratok a sziget $10$ városának egy feszítőfáját alkotják** ($9$ él), és a **$2$ hajójárat a három szigetet összeköti**. Ilyen hálózat létezik, tehát **a minimális költség évi $31$ millió buznyák.**

b) A minimális hálózatokat a fenti szerkezet szerint választjuk ki:

- Szigetenként a buszhálózat a $10$ város egy feszítőfája: a Cayley-tétel szerint $10^8$-féle, a három szigeten együtt $(10^8)^3 = 10^{24}$.
- A $2$ hajójárat a három szigetet „fává” köti: el kell dönteni, melyik sziget van középen ($3$-féle), és mindkét hajójárat egy-egy végpontját a középső szigeten ($10$-féle) és a másik szigeten ($10$-féle) kell kiválasztani: $3 \cdot 100 \cdot 100 = 3 \cdot 10^4$.

**Összesen $10^{24} \cdot 3 \cdot 10^4 = 3 \cdot 10^{28}$ minimális költségű hálózat** van.

::: elmelet
**Elméleti háttér — minimális feszítőfa két súlyértékkel.** Ha az élsúlyok csak kétfélék, a minimális feszítőfa szerkezete közvetlenül leolvasható: a Kruskal-algoritmus először a könnyű élek gráfjának egy feszítő erdőjét építi fel (itt három $K_{10}$ feszítőfáit), majd a komponenseket a lehető legkevesebb nehéz éllel (komponensszám mínusz $1$) köti össze. A leszámlálásnál a két szint függetlenül választható; a komponensek összekötésének száma a „szuper-csúcsokon” vett fák száma, élenként a végpontok választásával súlyozva — ez az $n^{k-2} a_1 \cdots a_k$ képlet ($30^{1} \cdot 10^3 = 3 \cdot 10^4$).
:::

## 85*. feladat

Legyen $G$ véges, összefüggő, élsúlyozott gráf, $T_1$ és $T_2$ pedig két minimális feszítőfája. Bizonyítsd be, hogy bármely $e \in E(T_1) \setminus E(T_2)$ élhez található olyan $f \in E(T_2) \setminus E(T_1)$ él, amelyre mind $T_1 - e + f$, mind $T_2 - f + e$ minimális feszítőfa.

**Megoldás.**

Legyen $w$ a súlyfüggvény és $W = w(T_1) = w(T_2)$ a minimális feszítőfák közös súlya.

*Az $f$ él kiválasztása.* Ha $T_1$-ből elhagyjuk az $e$ élt, két komponens marad; legyen ezek csúcshalmaza $S$ és $V \setminus S$. $T_1$-nek $e$ az egyetlen éle, amely $S$ és $V \setminus S$ között fut (a többi éle valamelyik komponensen belül van). Mivel $e \notin E(T_2)$, a $T_2 + e$ gráfban pontosan egy kör van, a $C$, amely tartalmazza $e$-t. A $C$ kör $e$ mentén átlép $S$ és $V \setminus S$ között, és mivel zárt, **még egyszer át kell lépnie**: van egy $f \ne e$ éle, amely szintén $S$ és $V \setminus S$ között fut. Mivel $f \in C \setminus \{e\} \subseteq E(T_2)$, és $T_1$-nek az $e$-n kívül nincs $S$ és $V \setminus S$ közötti éle, $f \notin E(T_1)$. Tehát $f \in E(T_2) \setminus E(T_1)$.

*Mindkét csere feszítőfát ad.* $T_1 - e + f$ feszítőfa, mert az $f$ él összeköti a $T_1 - e$ két komponensét ($n - 1$ éle van és összefüggő). $T_2 - f + e$ feszítőfa, mert $f$ a $T_2 + e$ egyetlen körén van, így elhagyva összefüggő gráf marad, $n - 1$ éllel.

*Mindkettő minimális.* A minimalitás miatt
$$W \le w(T_1 - e + f) = W - w(e) + w(f) \;\Rightarrow\; w(e) \le w(f),$$
$$W \le w(T_2 - f + e) = W - w(f) + w(e) \;\Rightarrow\; w(f) \le w(e).$$
Tehát $w(e) = w(f)$, és mindkét új fa súlya $W$: mindkettő minimális feszítőfa. $\blacksquare$

::: elmelet
**Elméleti háttér — vágások, körök és élcsere.** Egy fa egy élének elhagyása a csúcsokat két részre vágja, és a fa ennek az élnek a **fundamentális vágását** határozza meg; egy nem fabeli él hozzávétele pedig egyetlen **fundamentális kört** hoz létre. Egy kör és egy vágás mindig páros sok élben metszi egymást — ezért kellett lennie egy második átlépő élnek. Ez a „szimmetrikus báziscsere” tulajdonság (a matroidelmélet egyik alaptétele) mutatja, hogy bármely két minimális feszítőfa lépésenként, minimális feszítőfákon keresztül egymásba vihető, és hogy a minimális feszítőfák súlyainak multihalmaza mind ugyanaz.
:::

## 86. feladat (házi feladat)

Egy gráfban minden csúcs foka legfeljebb 5. Bizonyítsd be, hogy a csúcsok 3 színnel színezhetők úgy, hogy minden csúcsnak legfeljebb 1 vele megegyező színű szomszédja legyen.

**Megoldás.**

(A gráf véges.) Nevezzük **rossznak** az azonos színű csúcsokat összekötő éleket. Válasszunk a csúcsok $3$-színezései közül egy olyat, amelyben a rossz élek száma **minimális** (véges sok színezés van, így ilyen létezik). Megmutatjuk, hogy ebben minden csúcsnak legfeljebb $1$ azonos színű szomszédja van.

Tegyük fel, hogy egy $v$ csúcsnak legalább $2$ azonos színű szomszédja van. $v$-nek legfeljebb $5$ szomszédja van, ebből legalább $2$ a $v$ színével azonos, így a másik két szín együtt legfeljebb $3$ szomszédon fordul elő. Ezért valamelyik másik szín **legfeljebb $1$** szomszédon szerepel. Színezzük át $v$-t erre a színre: a $v$-re illeszkedő rossz élek száma legalább $2$-ről legfeljebb $1$-re csökken, a többi él nem változik. Így a rossz élek száma csökkent — ellentmondás a minimalitással. $\blacksquare$

::: elmelet
**Elméleti háttér — szélsőérték-elv színezéseknél (Lovász-féle „hibás” színezés).** Ugyanaz a módszer, mint a 75. feladatban: a rossz élek számát minimalizáljuk, és megmutatjuk, hogy egy hibás csúcs átszínezése javítana. Általánosan: ha $\Delta(G) \le d$ és $k$ színt használunk, akkor van olyan színezés, amelyben minden csúcsnak legfeljebb $\lfloor d/k \rfloor$ azonos színű szomszédja van (skatulyaelv: a legritkább szín legfeljebb $\lfloor d/k \rfloor$-szor fordul elő a szomszédok között). Itt $d = 5$, $k = 3$: $\lfloor 5/3 \rfloor = 1$. A $k = 2$ esetből a 75. feladat egy változata adódik.
:::

## 87. feladat (házi feladat)

Egy teljes gráf ponthalmaza $x_1, x_2, \dots, x_k, y_1, y_2, \dots, y_l$. Az $(x_i, x_j)$ élek költsége (súlya) 1, az $(y_i, y_j)$ éleké 2, az $(x_i, y_j)$ éleké 3. Hány legolcsóbb feszítőfája van a gráfnak és mennyibe kerülnek ezek?

**Megoldás.**

Legyen $k, l \ge 1$. Egy feszítőfának $k + l - 1$ éle van; legyen $a$ az $xx$-, $b$ az $yy$-, $c$ az $xy$-élek száma. A fa körmentes, így $a \le k - 1$ és $b \le l - 1$; továbbá $c \ge 1$, hiszen a fa összefüggő. A költség
$$a + 2b + 3c = 3(a + b + c) - 2a - b = 3(k + l - 1) - 2a - b \ge 3(k + l - 1) - 2(k - 1) - (l - 1) = k + 2l.$$
Egyenlőség pontosan akkor van, ha $a = k - 1$, $b = l - 1$, $c = 1$, vagyis ha az $xx$-élek az $x$-csúcsok egy feszítőfáját, az $yy$-élek az $y$-csúcsok egy feszítőfáját alkotják, és egyetlen $xy$-él köti össze a kettőt. **A legolcsóbb feszítőfák költsége $k + 2l$.**

**Számuk:** az $x$-csúcsok feszítőfája $k^{k-2}$-féle, az $y$-csúcsoké $l^{l-2}$-féle (Cayley), az összekötő él $k \cdot l$-féle. Összesen
$$k^{k-2} \cdot l^{l-2} \cdot kl = k^{k-1}\, l^{l-1}.$$

*Ellenőrzés:* $k = l = 1$-re egyetlen él van, $3 = 1 + 2$ költséggel, és $1^0 \cdot 1^0 = 1$ fa. (Ha $l = 0$, a gráf $K_k$, a válasz $k^{k-2}$ fa, $k - 1$ költséggel; ha $k = 0$, akkor $l^{l-2}$ fa, $2(l - 1)$ költséggel.)

::: elmelet
**Elméleti háttér — Kruskal-algoritmus szintenként.** A Kruskal-algoritmus először az összes $1$ súlyú élt vizsgálja: ezekből az $x$-klikk egy feszítőfáját választja; utána a $2$ súlyúakból az $y$-klikk egy feszítőfáját; végül a két komponenst egyetlen $3$ súlyú él köti össze. A számolás a 84. feladatéval azonos: a szintek függetlenek, a választások száma szorzódik. A fenti egyenlőtlenséges érvelés a Kruskal-algoritmus helyességét ebben a speciális esetben közvetlenül is igazolja.
:::

## 88. feladat (házi feladat)

a) Mi lehet az $x$ értéke, ha a $2, 10, 4, 6, 10, 1, 3, x$ Prüfer-kódhoz tartozó fában négy levél van? Rajzoljuk fel az $x$ legnagyobb értékéhez tartozó fát!

b) Válasszuk meg $x$ értékét úgy, hogy az alábbi sorozat olyan fát kódoljon, melynek minden foka páratlan: $2, 3, x, 3, 2, 4, 4, 3$. Rajzold is fel a kapott fát!

**Megoldás.**

a) A kód $8$ hosszú, így $n = 10$ és $x \in \{1, \dots, 10\}$. A levelek pontosan a kódban nem szereplő csúcsok. Az $x$ nélkül a kódban szereplő különböző számok: $1, 2, 3, 4, 6, 10$; a nem szereplők: $5, 7, 8, 9$.

- Ha $x \in \{1, 2, 3, 4, 6, 10\}$, a levelek $5, 7, 8, 9$: **$4$ levél**.
- Ha $x \in \{5, 7, 8, 9\}$, az $x$ már nem levél: csak $3$ levél van.

**Tehát $x \in \{1, 2, 3, 4, 6, 10\}$**, a legnagyobb érték $x = 10$. A $(2, 10, 4, 6, 10, 1, 3, 10)$ kód dekódolása:

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $2, 10, 4, 6, 10, 1, 3, 10$ | 5 | 2 |
| 2 | $10, 4, 6, 10, 1, 3, 10$ | 2 | 10 |
| 3 | $4, 6, 10, 1, 3, 10$ | 7 | 4 |
| 4 | $6, 10, 1, 3, 10$ | 4 | 6 |
| 5 | $10, 1, 3, 10$ | 6 | 10 |
| 6 | $1, 3, 10$ | 8 | 1 |
| 7 | $3, 10$ | 1 | 3 |
| 8 | $10$ | 3 | 10 |
| — | (a két megmaradó csúcs) | 9 | 10 |

**Élek:** $\{5,2\}, \{2,10\}, \{7,4\}, \{4,6\}, \{6,10\}, \{8,1\}, \{1,3\}, \{3,10\}, \{9,10\}$. A $10$ (fokszáma $4$) négy ágat tart: $10 - 2 - 5$, $10 - 6 - 4 - 7$, $10 - 3 - 1 - 8$ és $10 - 9$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \node[pt, label=above left:{10}] (10) at (0, 0) {};
  \node[pt, label=above:{2}] (2) at (-1, 0) {};
  \node[pt, label=above:{5}] (5) at (-2, 0) {};
  \node[pt, label=above:{6}] (6) at (1, 0) {};
  \node[pt, label=above:{4}] (4) at (2, 0) {};
  \node[pt, label=above:{7}] (7) at (3, 0) {};
  \node[pt, label=right:{3}] (3) at (0, -0.9) {};
  \node[pt, label=right:{1}] (1) at (0, -1.8) {};
  \node[pt, label=right:{8}] (8) at (0, -2.7) {};
  \node[pt, label=right:{9}] (9) at (0, 0.9) {};
  \draw (5) -- (2) -- (10) -- (6) -- (4) -- (7);
  \draw (10) -- (3) -- (1) -- (8); \draw (10) -- (9);
\end{tikzpicture}
\end{adjustbox}
\end{center}

b) A kód $8$ hosszú, így $n = 10$. Minden fok páratlan $\iff$ minden $\deg(i) - 1$ páros $\iff$ **minden szám páros sokszor szerepel a kódban**. Az $x$ nélkül: a $2$ kétszer, a $4$ kétszer, a $3$ **háromszor** szerepel. Az egyetlen $x$ csak egy szám előfordulását változtatja, és a $3$ előfordulásainak számát párossá kell tenni: **$x = 3$**. Ekkor a $3$ négyszer szerepel (fok $5$), a $2$ és a $4$ kétszer (fok $3$), a többi csúcs levél (fok $1$) — minden fok páratlan.

A $(2, 3, 3, 3, 2, 4, 4, 3)$ kód dekódolása:

| lépés | hátralevő kód | levél | szomszéd |
|:-:|:--|:-:|:-:|
| 1 | $2, 3, 3, 3, 2, 4, 4, 3$ | 1 | 2 |
| 2 | $3, 3, 3, 2, 4, 4, 3$ | 5 | 3 |
| 3 | $3, 3, 2, 4, 4, 3$ | 6 | 3 |
| 4 | $3, 2, 4, 4, 3$ | 7 | 3 |
| 5 | $2, 4, 4, 3$ | 8 | 2 |
| 6 | $4, 4, 3$ | 2 | 4 |
| 7 | $4, 3$ | 9 | 4 |
| 8 | $3$ | 4 | 3 |
| — | (a két megmaradó csúcs) | 3 | 10 |

**Élek:** $\{1,2\}, \{5,3\}, \{6,3\}, \{7,3\}, \{8,2\}, \{2,4\}, \{9,4\}, \{4,3\}, \{3,10\}$.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt}
]
  \node[pt, label=below:{3}] (3) at (0, 0) {};
  \node[pt, label=right:{5}] (5) at (0.9, 0.9) {};
  \node[pt, label=right:{6}] (6) at (1.2, 0) {};
  \node[pt, label=right:{7}] (7) at (0.9, -0.9) {};
  \node[pt, label=above:{10}] (10) at (0, 1.1) {};
  \node[pt, label=above:{4}] (4) at (-1.2, 0) {};
  \node[pt, label=below:{9}] (9) at (-1.2, -1) {};
  \node[pt, label=above:{2}] (2) at (-2.4, 0) {};
  \node[pt, label=left:{1}] (1) at (-3.2, 0.7) {};
  \node[pt, label=left:{8}] (8) at (-3.2, -0.7) {};
  \draw (3) -- (5); \draw (3) -- (6); \draw (3) -- (7); \draw (3) -- (10);
  \draw (3) -- (4) -- (2); \draw (4) -- (9); \draw (2) -- (1); \draw (2) -- (8);
\end{tikzpicture}
\end{adjustbox}
\end{center}

A fokszámok: $\deg(3) = 5$, $\deg(2) = \deg(4) = 3$, a többi $1$.

::: elmelet
**Elméleti háttér — levelek és fokparitás a Prüfer-kódból.** A levelek száma $n$ mínusz a kódban szereplő **különböző** számok száma, így egy ismeretlen kódelem pontosan akkor nem változtat a levelek számán, ha egy már szereplő értéket vesz fel. A fokok paritását az előfordulások paritása határozza meg ($\deg(i) - 1$ előfordulás), így a „minden fok páratlan” feltétel azt jelenti, hogy minden szám páros sokszor szerepel. Ebből az is következik, hogy minden fokszámában páratlan fának páros sok csúcsa van (a kód hossza, $n - 2$, a páros előfordulások összege, tehát páros) — összhangban a kézfogási lemmával.
:::
