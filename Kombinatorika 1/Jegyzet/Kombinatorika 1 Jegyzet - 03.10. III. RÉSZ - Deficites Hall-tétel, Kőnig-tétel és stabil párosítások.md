## 48. A deficites Hall-tétel és a Kőnig-tétel

A Hall-tétel megmondja, mikor van $A$-t fedő párosítás. De mi a helyzet, ha a Hall-feltétel **nem** teljesül? Ekkor nincs $A$-t fedő párosítás — de mekkora a legnagyobb? A válasz meglepően pontos: a Hall-feltétel „hiánya” éppen a fedetlenül maradó csúcsok számát adja meg.

> **Definíció.** A $G(A, B)$ páros gráfban egy $X \subseteq A$ halmaz **hiánya** (deficitje) $|X| - |N(X)|$. A gráf hiánya
> $$d = \max_{X \subseteq A}\big(|X| - |N(X)|\big).$$

Mivel $X = \emptyset$-ra a hiány $0$, mindig $d \ge 0$; a Hall-feltétel pontosan azt jelenti, hogy $d = 0$. Ha a Hall-feltétel „$d$ híján” teljesül, vagyis minden $X \subseteq A$-ra $|N(X)| \ge |X| - d$, akkor a következő tétel szerint majdnem teljes a siker: csak $d$ csúcs marad ki.

> **Tétel (deficites Hall-tétel, Kőnig Dénes).** A $G(A, B)$ páros gráfban
> $$\nu(G) = |A| - d = |A| - \max_{X \subseteq A}\big(|X| - |N(X)|\big).$$

*Bizonyítás.* **$\nu \le |A| - d$.** Legyen $X$ egy $d$ hiányú halmaz, és $M$ egy tetszőleges párosítás. Az $X$-nek csak $N(X)$-beli csúcsokkal lehet párja, és ezek a párok különbözők, így $X$-ből legfeljebb $|N(X)|$ csúcs fedett. Legalább $|X| - |N(X)| = d$ csúcsa tehát fedetlen, vagyis $|M| \le |A| - d$.

**$\nu \ge |A| - d$.** Vegyünk hozzá $B$-hez $d$ új csúcsot, és mindegyiket kössük össze $A$ összes csúcsával. Az új $G'$ gráfban minden nemüres $X \subseteq A$-ra
$$|N_{G'}(X)| = |N(X)| + d \ge |X|,$$
mert $d$ a hiányok maximuma. $G'$ tehát teljesíti a Hall-feltételt, így van benne $A$-t fedő $M'$ párosítás. Ennek legfeljebb $d$ éle megy új csúcsba; ezeket elhagyva $G$-nek egy legalább $|A| - d$ élű párosítását kapjuk. $\blacksquare$

*Példa.* Legyen $A = \{a_1, a_2, a_3, a_4\}$, $B = \{b_1, b_2, b_3\}$, és az élek $a_1b_1$, $a_2b_1$, $a_3b_1$, $a_4b_2$, $a_4b_3$. Az $X = \{a_1, a_2, a_3\}$ halmazra $N(X) = \{b_1\}$, a hiány $2$; nagyobb hiány nincs. A tétel szerint $\nu = 4 - 2 = 2$, és valóban: az $a_1b_1$, $a_4b_2$ párosítás maximális.

### Kőnig tétele: $\nu = \tau$ páros gráfokban

A 46. szakaszban láttuk, hogy minden gráfban $\nu \le \tau$ és (izolált csúcs nélkül) $\alpha \le \rho$. Általános gráfban itt nem mindig áll fenn egyenlőség: a háromszögben $\nu = 1$, de $\tau = 2$. Páros gráfokban azonban mindkét egyenlőtlenség egyenlőséggel teljesül.

> **Tétel (Kőnig Dénes, 1931).** Minden páros gráfban a független élek maximális száma egyenlő az éleket lefogó csúcsok minimális számával:
> $$\nu(G) = \tau(G).$$

*1. bizonyítás (a Hall-tétel bizonyításának ábrájával).* A $\nu \le \tau$ irány minden gráfra igaz, elég tehát egy $\nu$ méretű lefogó csúcshalmazt találni (ez $\tau \le \nu$-t ad).

Tekintsük a $G(A, B)$ páros gráfban a javító utas algoritmus végén kapott maximális, $M$ párosítást (amikor már nincs javító út; az alábbi gondolatmenet egyben azt is igazolja, hogy $|M| = \nu$). Jelölje $U$ az $A$-beli fedetlen csúcsok halmazát, és tekintsük azokat a $B$-beli csúcsokat, amelyekbe $U$-ból javító út kezdeménnyel (alternáló úttal) el lehet jutni — legyen ez a halmaz $B_1$ (ahogy a 47. szakaszban a $T$ halmazt képeztük, csak most $U$ összes csúcsából kiindulva), a belőlük $M$-éleken elérhető $A$-beli párok halmaza pedig $A_1$.

- **$B_1$ minden csúcsának van párja:** ha valamelyik $b \in B_1$ fedetlen volna, akkor egy $U$-beli csúcsból oda vezető javító út kezdemény maga javító út volna, és tovább javíthatnánk a párosítást — ellentmondás azzal, hogy már nincs javító út. Így $|A_1| = |B_1|$.
- Legyen $A_2$ a **többi** fedett $A$-beli csúcs halmaza (vagyis $A \setminus (A_1 \cup U)$). A párosítás $|M|$ éle közül $|A_1| = |B_1|$ él fut $A_1$ és $B_1$ között, a maradék $|M| - |B_1|$ él pedig $A_2$ és $B \setminus B_1$ között.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  nedge/.style={draw=black!45, thin},
  medge/.style={draw=black, very thick},
  cover/.style={draw=red!75!black, thick, rounded corners=6pt}
]
  % B osztaly
  \draw[rounded corners=8pt, draw=black!55] (-0.4, 2.0) rectangle (5.4, 2.8);
  \node at (-0.8, 2.4) {$B$};
  % A osztaly
  \draw[rounded corners=8pt, draw=black!55] (-0.4, -0.4) rectangle (5.4, 0.4);
  \node at (-0.8, 0) {$A$};

  % Fedett csucsok: A2 (balra, 1 db), A1 (kozepen, 3 db)
  \node[pt] (a0) at (0.2, 0) {}; \node[pt] (b0) at (0.2, 2.4) {};
  \node[pt] (a1) at (1.1, 0) {}; \node[pt] (b1) at (1.1, 2.4) {};
  \node[pt] (a2) at (1.9, 0) {}; \node[pt] (b2) at (1.9, 2.4) {};
  \node[pt] (a3) at (2.7, 0) {}; \node[pt] (b3) at (2.7, 2.4) {};

  % Fedetlen A-beliek (U) es tobbi B-beliek
  \node[pt] (u1) at (3.9, 0) {};
  \node[pt] (u2) at (4.7, 0) {};
  \node[pt] (b4) at (3.9, 2.4) {};
  \node[pt] (b5) at (4.9, 2.4) {};

  % Nem parositasi elek (javito ut kezdemenyek)
  \draw[nedge] (u1) -- (b1);
  \draw[nedge] (u1) -- (b2);
  \draw[nedge] (u2) -- (b2);
  \draw[nedge] (a1) -- (b3);

  % Parositasi elek
  \draw[medge] (a0) -- (b0);
  \draw[medge] (a1) -- (b1);
  \draw[medge] (a2) -- (b2);
  \draw[medge] (a3) -- (b3);

  % U korbekeritve
  \draw[rounded corners=5pt, draw=black!65] (3.55, -0.26) rectangle (5.05, 0.26);
  \node at (4.3, -0.75) {\footnotesize $U$ (fedetlenek)};
  \draw[|<->|, >=Stealth, thin] (0.0, -0.55) -- (2.9, -0.55) node[midway, below=3pt] {\footnotesize $|M|$ db párosításbeli él};

  % Piros lefogó halmaz: B1 (B-ben b1..b3) és A2 (A-ban a0)
  \draw[cover] (0.8, 2.12) rectangle (3.0, 2.68);
  \draw[cover] (-0.1, -0.25) rectangle (0.5, 0.25);
  \node[red!75!black] at (1.9, 3.05) {\footnotesize $B_1$};
  \node[red!75!black] at (0.2, 0.65) {\footnotesize $A_2$};

  \node[align=left, anchor=west] at (5.7, 2.4) {\footnotesize $U$-ból jav. út kezdeményekkel\\ \footnotesize elérhető $B$-beliek ($B_1$) — mindnek van párja};
  \node[align=left, anchor=west] at (5.7, 0.0) {\footnotesize A piros keretben jelölt $L = A_2 \cup B_1$ halmaz\\ \footnotesize mérete $|M|$, és lefogó csúcshalmaz};
\end{tikzpicture}
\end{adjustbox}
\end{center}

Vegyük az
$$L = A_2 \cup B_1$$
csúcshalmazt!

- **Mérete pontosan $|M|$:** $A_2$ és $B_1$ diszjunktak, és mindegyik $M$-beli élnek pontosan egyik végpontja van $L$-ben ($A_1$ és $B_1$ között a $B_1$-beli, $A_2$ és $B \setminus B_1$ között az $A_2$-beli), így $|L| = |A_2| + |B_1| = |M|$.
- **$L$ lefogó csúcshalmaz:** egy $ab$ él ($a \in A$, $b \in B$) esetén ha $a \in A_2$, az $a$ pont lefogja. Ha $a \in U \cup A_1$, akkor $a$-ba el lehet jutni $U$-ból (ha $a \in U$, $0$ hosszú úttal; ha $a \in A_1$, a párján át $M$-beli élen). Ha az $ab$ él nem párosításbeli, akkor az utat folytatva $b$-be is eljutunk $U$-ból (ha $b$ már szerepelt az úton, eleve $b \in B_1$; különben a meghosszabbított út vezet $b$-be), tehát $b \in B_1 \subseteq L$; ha pedig $ab \in M$, akkor $a \in A_1$ párja éppen $b \in B_1 \subseteq L$. Tehát minden él legalább egyik végpontja $L$-ben van.

Következésképpen $\tau \le |L| = |M| \le \nu$, és mivel $\nu \le \tau$, kapjuk, hogy $\nu = \tau = |M|$ (vagyis $M$ valóban maximális párosítás, és $\nu = \tau$). $\blacksquare$

*2. bizonyítás (a deficites Hall-tételből).* Legyen $G = G(A, B)$, és $X \subseteq A$ egy maximális, $d$ hiányú halmaz. Legyen $L = (A \setminus X) \cup N(X)$. Egy $ab$ él ($a \in A$, $b \in B$) esetén ha $a \notin X$, akkor $a \in L$; ha $a \in X$, akkor $b \in N(X) \subseteq L$. Tehát
$$\tau \le |L| = |A| - |X| + |N(X)| = |A| - d = \nu,$$
és $\nu \le \tau$ miatt $\nu = \tau$. $\blacksquare$

A Gallai-tétel két egyenletét ($\alpha + \tau = n$ és $\rho + \nu = n$) összevetve azonnal adódik a párja:

> **Következmény.** Ha $G$ izolált csúcs nélküli páros gráf, akkor $\alpha(G) = \rho(G)$: a független csúcsok maximális száma egyenlő a csúcsokat lefedő élek minimális számával.

*Bizonyítás.* Mivel $\alpha + \tau = n$ és $\rho + \nu = n$, valamint a Kőnig-tétel szerint $\tau = \nu$, kapjuk, hogy $\alpha = n - \tau = n - \nu = \rho$. $\blacksquare$

**Mátrixos alak.** A 47. szakasz párosítási mátrixával (most tetszőleges $p \times q$ méretben) Kőnig tétele így szól: *egy $0$–$1$ mátrixban a független (semelyik kettő nem egy sorban vagy oszlopban álló) $1$-esek maximális száma egyenlő azon sorok és oszlopok minimális számával, amelyek együtt az összes $1$-est lefedik.* A sorok és oszlopok a csúcsok, az $1$-esek az élek, a független $1$-esek a párosítás, a lefedő sorok és oszlopok a lefogó csúcshalmaz.

## 49. Stabil párosítások

Eddig a párosításnál csak az számított, hogy két csúcs **összeköthető**-e. A valóságban a résztvevőknek gyakran **preferenciáik** is vannak: nem mindegy, kivel kerülnek párba.

> **Feladat (stabil házasság).** Adott $n$ nő ($X_1, X_2, \dots, X_n$) és $n$ férfi ($Y_1, Y_2, \dots, Y_n$). Mindenkinek van egy szigorú (holtverseny nélküli) **preferencialistája** a másik nem tagjairól: azt, hogy $X_i$ a saját listáján $Y_j$-t előrébb sorolja $Y_k$-nál („preferálja $Y_j$-t $Y_k$-hoz képest”), így jelöljük:
> $$Y_j >_{X_i} Y_k.$$
> Keressünk olyan teljes párosítást, amelyben ez a rendszer stabil!

> **Definíció.** Legyen adott egy teljes párosítás. A párosítás **instabil**, ha van egy olyan „kölcsönös él” (blokkoló pár), amely erősebb preferencia, mint külön-külön a jelenlegi párjuk: vagyis léteznek olyan $(X_i, Y_j)$ és $(X_k, Y_l)$ párok, amelyekre
> $$Y_l >_{X_i} Y_j \quad \text{és} \quad X_i >_{Y_l} X_k.$$
> A párosítás **stabil**, ha nincs ilyen instabilitás.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  match/.style={draw=black, very thick},
  block/.style={draw=black, dashed, thick}
]
  \draw[rounded corners=8pt, draw=black!50] (-0.5, 1.5) rectangle (2.5, 2.3);
  \draw[rounded corners=8pt, draw=black!50] (-0.5, -0.3) rectangle (2.5, 0.5);
  \node[pt, label=above:{\footnotesize $X_i$}] (xi) at (0.3, 1.9) {};
  \node[pt, label=above:{\footnotesize $X_k$}] (xk) at (1.7, 1.9) {};
  \node[pt, label=below:{\footnotesize $Y_j$}] (yj) at (0.3, 0.1) {};
  \node[pt, label=below:{\footnotesize $Y_l$}] (yl) at (1.7, 0.1) {};
  \draw[match] (xi) -- (yj);
  \draw[match] (xk) -- (yl);
  \draw[block] (xi) -- (yl);
  \node[align=left, anchor=west] at (3.0, 1.0) {\footnotesize Instabilitás: $Y_l >_{X_i} Y_j$ és $X_i >_{Y_l} X_k$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

Egy ilyen $(X_i, Y_l)$ pár tagjai „otthagynák” a jelenlegi párjukat egymásért, a párosítás tehát nem tartós. Gráfelméleti nyelven: a $K_{n,n}$ teljes páros gráf minden csúcsánál adott a szomszédok egy sorrendje, és olyan teljes párosítást keresünk, amelyhez nincs a fenti értelemben kölcsönösen jobb él. Egyáltalán nem nyilvánvaló, hogy ilyen mindig létezik — a megfelelő „nem kétosztályú” feladatban (szobatárs-probléma) nem is mindig létezik.

> **Tétel (Gale–Shapley, 1962).** Mindig létezik stabil (teljes) párosítás.

A bizonyítás egy algoritmus — a **leányvásár** (más néven **késleltetett elfogadási** vagy **leánykérő**) **algoritmus**:

1. Minden körben (egymás után) minden olyan férfi, akinek még nincs lebegtetett párja, megkéri a saját preferencialistáján az első olyan nőnek a kezét, aki őt még nem utasította vissza.
2. Ha a megkért nőnek még nem volt párja, akkor a kérőt **lebegteti** (ideiglenesen megtartja). Ha már volt lebegtetett párja, akkor a kettő közül a rosszabbat **elutasítja**, a jobbat pedig **lebegteti tovább**.
3. Ha még nincs mindenkinek lebegtetett párja, visszatérünk az 1. lépéshez. Az eljárás akkor ér véget, amikor már mindenkinek van lebegtetett párja — ezek lesznek a végleges házasságok.

*Bizonyítás.* **Véges:** A listák végesek, és minden körben új nőnek a kezét kérik meg a férfiak a saját listájukról; legfeljebb $n^2$ kérés történhet, tehát az algoritmus véget ér.

**Mindenki párt kap:** Egy nő, aki már kapott ajánlatot, a továbbiakban mindig lebegtet valakit (csak jobbra cserél). Ha egy férfit mind az $n$ nő elutasítana, akkor mind az $n$ nőnek volna tőle különböző lebegtetett párja — de csak $n - 1$ másik férfi van, ami ellentmondás. A kapott párosítás tehát teljes.

**Állítás: a kapott párosítás stabil.** *Indirekt bizonyítás.* Tegyük fel, hogy nem stabil: léteznek olyan $(X, Y)$ és $(A, B)$ párok ($X, A$ nők; $Y, B$ férfiak), amelyekre
$$B >_X Y \quad \text{és} \quad X >_B A.$$
Mivel $X >_B A$, a $B$ férfi a listáján $X$-et $A$ előtt kereste fel, tehát **előbb kérte meg $X$-et, mint $A$-t**. Mivel a végén $B$ párja $A$ lett (és nem $X$), egy idő után már nem lebegett $B$ az $X$ nőnél: $X$ elutasította őt, mert jött egy ($X$ szerint) jobb férfi, mint $B$. Mivel $X$ az algoritmus során egyre jobbakat lebegtet, végül úgy fogadta el $Y$-t, hogy
$$Y >_X B.$$
Ez ellentmond a $B >_X Y$ feltevésnek. Nincs tehát instabilitás ebben a rendszerben. $\blacksquare$

*Példa.* Férfiak: $Y_1, Y_2, Y_3$; nők: $X_1, X_2, X_3$. A preferenciák (balról jobbra csökkenő sorrendben):

| | 1. | 2. | 3. |
|:-:|:-:|:-:|:-:|
| $Y_1$ | $X_1$ | $X_2$ | $X_3$ |
| $Y_2$ | $X_1$ | $X_3$ | $X_2$ |
| $Y_3$ | $X_2$ | $X_1$ | $X_3$ |
| $X_1$ | $Y_3$ | $Y_2$ | $Y_1$ |
| $X_2$ | $Y_1$ | $Y_3$ | $Y_2$ |
| $X_3$ | $Y_1$ | $Y_2$ | $Y_3$ |

1. kör: $Y_1$ és $Y_2$ az $X_1$-et, $Y_3$ az $X_2$-t kéri meg. $X_1$ lebegteti $Y_2$-t és elutasítja $Y_1$-et ($Y_2 >_{X_1} Y_1$); $X_2$ lebegteti $Y_3$-at.
2. kör: $Y_1$ az $X_2$-t kéri meg; $X_2$ jobban szereti $Y_1$-et, mint $Y_3$-at ($Y_1 >_{X_2} Y_3$), tehát $Y_1$-et lebegteti tovább, $Y_3$-at elutasítja.
3. kör: $Y_3$ az $X_1$-et kéri meg; $X_1$ jobban szereti $Y_3$-at, mint $Y_2$-t ($Y_3 >_{X_1} Y_2$), ezért $Y_3$-at lebegteti tovább, $Y_2$-t elutasítja.
4. kör: $Y_2$ az $X_3$-at kéri meg, akinek még nincs párja, és $X_3$ lebegteti. Ezzel mindenkinek van lebegtetett párja, így létrejönnek a házasságok.

Az eredmény: $(X_1, Y_3)$, $(X_2, Y_1)$, $(X_3, Y_2)$. Ellenőrizzük: $Y_1$ jobban szeretné $X_1$-et, de $X_1$-nek $Y_3$ az első helyezettje; $Y_2$ is $X_1$-et szeretné, ugyanezért hiába; $Y_3$ az $X_2$-t szeretné, de $X_2$-nek $Y_1$ az első. Nincs instabilitás.

> **Tétel.** A fenti algoritmus **férfi-optimális** ($Y$-optimális) — vagy ha a nők kérnek meg, nő-optimális. Az $Y$-optimalitás azt jelenti, hogy a kapott párosítás minden egyes férfi számára legalább olyan kedvező, mint ami egyáltalán számára kijöhet bármely stabil párosításból. Egyúttal az eredmény **nő-pesszimális** ($X$-pesszimális): minden nő a lehető legrosszabb olyan párt kapja, aki valamely stabil párosításban a párja lehet.

**Megjegyzések (Gale és Shapley, 1962).** A tétel akkor is igaz, ha a gráf nem teljes páros gráf (nem mindenki fogadható el mindenkinek): ekkor a stabil párosítás nem feltétlenül teljes, de mindig létezik. Mire használják? Ilyen elven működnek a valódi párosító piacok: például az USA-ban a kórházak és a rezidensorvosok párosítása, valamint a magyar felsőoktatási felvételi rendszer is egy változatát használja. Shapley és Roth 2012-ben közgazdasági Nobel-emlékdíjat kapott ezekért az eredményekért.

---
