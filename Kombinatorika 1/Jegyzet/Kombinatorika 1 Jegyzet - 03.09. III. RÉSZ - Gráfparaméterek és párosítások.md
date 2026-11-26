## 46. Gráfparaméterek: független és lefogó halmazok

Egy **gráfparaméter** egy gráfhoz rendelt szám, amely nem függ a gráf lerajzolásától (izomorf gráfokra ugyanaz). Eddig ezekkel találkoztunk:

| jelölés | jelentés |
|:-:|:--|
| $n = \lvert V(G) \rvert$ | a csúcsok száma |
| $e = \lvert E(G) \rvert$ | az élek száma |
| $\chi$ | a kromatikus szám |
| $\chi_e$ | az élkromatikus szám |
| $\Delta$ | a maximális fokszám |
| $\omega$ | a klikkszám (a legnagyobb teljes részgráf mérete) |
| $k$ | a komponensek száma |

Egy paramétert vagy **megszámolunk** ($n$, $e$, $k$), vagy egy **minimumként, illetve maximumként** definiálunk ($\chi$, $\chi_e$, $\Delta$, $\omega$). A szélsőértékek az érdekesek!

Most **négy új paramétert** vezetünk be.

> **Definíció.** Legyen $G$ egy gráf.
>
> - Egy $U \subseteq V(G)$ csúcshalmaz **független**, ha semelyik két eleme között nincs él. A **független csúcsok maximális száma** $\alpha(G)$.
> - Egy $T \subseteq V(G)$ csúcshalmaz **lefogó**, ha $G$ minden élének legalább egyik végpontja $T$-ben van (a csúcsok „lefogják” az összes élt). A **lefogó csúcsok minimális száma** $\tau(G)$.
> - Egy $M \subseteq E(G)$ élhalmaz **független**, ha semelyik két élének nincs közös csúcsa. Ezt **párosításnak** is nevezzük („Ki kivel hajlandó táncolni?” — egy ember egyszerre csak egy partnerrel táncol). A **független élek maximális száma** $\nu(G)$.
> - Egy $F \subseteq E(G)$ élhalmaz **lefogó** (lefedő), ha $G$ minden csúcsa illeszkedik $F$ valamelyik élére (az élek „lefedik” az összes csúcsot). A **lefogó élek minimális száma** $\rho(G)$.

Egy független csúcshalmaz minden részhalmaza is független, egy párosítás minden része is párosítás; a lefogó halmazoknál fordítva, a bővítés őrzi meg a tulajdonságot. Ezért a független halmazoknál a maximumot, a lefogóknál a minimumot keressük.

**Szóródás: jól van definiálva?** Az $\alpha$, $\tau$, $\nu$ mindig létezik (az üres halmaz független, az összes csúcs lefogó). A $\rho$ viszont csak akkor, ha **nincs $0$ fokú (izolált) csúcs**: egy izolált csúcsot egyetlen él sem fed le, így lefogó élhalmaz nem létezik.

*Példák.* Az ötszögre ($C_5$): $\alpha = 2$, $\tau = 3$, $\nu = 2$, $\rho = 3$. A $3$ levelű csillagra ($K_{1,3}$, $n = 4$): $\alpha = 3$ (a levelek), $\tau = 1$ (a középpont), $\nu = 1$ (bármely két él közös csúcsban, a középpontban találkozik), $\rho = 3$ (minden levélhez kell a saját éle).

### Nyilvánvaló egyenlőtlenségek

> **Állítás.** Minden gráfra $\nu \le \tau$, és ha nincs izolált csúcs, $\alpha \le \rho$.

*Bizonyítás.* **$\nu \le \tau$:** vegyünk $\nu$ független élt. Már ezek lefogásához is $\nu$ csúcs kell, mert egy csúcs a független élek közül legfeljebb egyre illeszkedik — és a többi él lefogásához esetleg további csúcsok. **$\alpha \le \rho$:** vegyünk $\alpha$ független csúcsot. Már ezek lefedéséhez is $\alpha$ él kell, mert egy él a független csúcsok közül legfeljebb egyet fed le (két független csúcs között nincs él) — és a többi csúcshoz esetleg további élek. $\blacksquare$

A bizonyítás könnyű, de érdemes megérteni a mintáját: egy „független” objektum minden elemét a „lefogó” objektum egy-egy *külön* eleme kell, hogy elintézze.

> **Tétel (Gallai-tétel).** Minden $n$ csúcsú gráfra
> $$\alpha + \tau = n,$$
> és ha a gráfban nincs izolált csúcs, akkor
> $$\nu + \rho = n.$$

A tétel bizonyítását a kiegészítésben részletezzük.

::: kiegeszites
**Kiegészítés — a Gallai-tétel bizonyítása.**

**$\alpha + \tau = n$.** *Egy $U$ csúcshalmaz pontosan akkor független, ha a komplementere, $V(G) \setminus U$ lefogó.* Valóban: $U$ független $\iff$ nincs él, amelynek mindkét vége $U$-ban van $\iff$ minden élnek van végpontja $V(G) \setminus U$-ban. A komplementerképzés tehát bijekció a független és a lefogó csúcshalmazok között, és az $|U|$ méretet $n - |U|$-ra változtatja; így a legnagyobb független halmaz komplementere a legkisebb lefogó halmaz: $\tau = n - \alpha$.

**$\nu + \rho \le n$, azaz $\rho \le n - \nu$.** Legyen $M$ egy $\nu$ élű párosítás; ez $2\nu$ csúcsot fed le. A maradék $n - 2\nu$ csúcs mindegyikéhez válasszunk egy rá illeszkedő élt (izolált csúcs nincs, így van ilyen). Az $M$ élei a kiválasztott élekkel együtt lefogó élhalmazt alkotnak, legfeljebb $\nu + (n - 2\nu) = n - \nu$ éllel. Tehát $\rho \le n - \nu$.

**$\nu + \rho \ge n$, azaz $\nu \ge n - \rho$.** Legyen $F$ egy $\rho$ élű lefogó élhalmaz. A minimalitás miatt $F$-ben nincs olyan él, amelynek mindkét végpontját más $F$-beli élek is lefedik (az ilyen él elhagyható volna). Ebből következik, hogy az $F$ élei által alkotott gráfban nincs kör és nincs $3$ hosszú út (ezek középső éle elhagyható volna), tehát $F$ minden komponense egy **csillag** (egy középpont néhány levéllel, esetleg egyetlen él). Az $F$ élei által alkotott gráf $n$ csúcsú (minden csúcsot lefed), körmentes és $\rho$ élű, így a fák élszámáról tanultak szerint (lásd a 24. szakasz $5 \Rightarrow 1$ bizonyítását) $n - \rho$ komponense van. Minden komponensből (csillagból) egy élt választva $n - \rho$ független élt kapunk. Tehát $\nu \ge n - \rho$.

A két egyenlőtlenségből $\nu + \rho = n$. $\blacksquare$

*Megjegyzés.* A Gallai-tétel szerint a két „nyilvánvaló egyenlőtlenség” egymással ekvivalens: $\alpha \le \rho \iff n - \tau \le n - \nu \iff \nu \le \tau$. Hogy mikor áll fenn egyenlőség — például $\nu = \tau$ —, az már mély kérdés: Kőnig Dénes tétele szerint páros gráfokban mindig.
:::

## 47. Párosítások: a Hall-, a Frobenius- és a Tutte-tétel

Az előző szakasz négy paramétere közül most a $\nu(G)$-vel foglalkozunk. Emlékeztetőül: egy $M \subseteq E(G)$ élhalmaz **párosítás**, ha semelyik két élének nincs közös csúcsa, és $\nu(G)$ a legnagyobb párosítás élszáma. A **cél: minél több élt** szeretnénk kiválasztani úgy, hogy az élek páronként diszjunktak legyenek.

> **Definíció.** Legyen $M$ a $G$ gráf egy párosítása.
>
> - Egy csúcs **lefedett** (fedett), ha illeszkedik $M$ valamelyik élére; különben **fedetlen**. Ha $uv \in M$, akkor $u$ és $v$ egymás **párja**.
> - $M$ **maximális párosítás**, ha $|M| = \nu(G)$, vagyis nincs több élű párosítás.
> - $M$ **teljes párosítás**, ha $G$ minden csúcsa lefedett. Ez az „ideális állapot”: ilyenkor $|M| = \frac{n}{2}$, tehát $\nu(G) = \frac{n}{2}$, és ez csak páros $n$-re lehetséges.

Vigyázat: egy párosítás lehet úgy is **bővíthetetlen** (nem vehető hozzá újabb él), hogy nem maximális. Egy $3$ élű úton a középső él bővíthetetlen párosítás, a maximális párosítás viszont a két szélső él.

### Speciális eset: páros gráfok

A legfontosabb speciális eset a **kétosztályú (páros) gráfoké**. Ezt $G(A, B)$-vel jelöljük: a csúcshalmaz $A \cup B$ ($A \cap B = \emptyset$), és minden él egy $A$-beli és egy $B$-beli csúcsot köt össze. Szemléletesen: $A$-ban fiúk, $B$-ben lányok vannak, az élek azt mutatják, ki kivel hajlandó táncolni.

Itt a természetes kérdés az, hogy **van-e $A$-t fedő párosítás**, vagyis olyan, amelyben minden $A$-beli csúcs kap párt. Ha egy $X \subseteq A$ halmazra
$$N(X) = \{\, b \in B : b\text{-nek van szomszédja } X\text{-ben} \,\}$$
az $X$ **szomszédsága** (angolul *neighbourhood*), akkor nyilván szükséges, hogy az $X$ csúcsainak legalább $|X|$ különböző szomszédja legyen.

> **Definíció (Hall-feltétel).** A $G(A, B)$ páros gráf teljesíti a **Hall-feltételt**, ha
> $$\forall X \subseteq A: \quad |N(X)| \ge |X|.$$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!45, thin},
  medge/.style={draw=black, very thick}
]
  \draw[rounded corners=8pt, draw=black!50] (-0.4, 1.6) rectangle (4.4, 2.4);
  \draw[rounded corners=8pt, draw=black!50] (-0.4, -0.4) rectangle (4.4, 0.4);
  \node at (-0.9, 2) {$B$};
  \node at (-0.9, 0) {$A$};
  \foreach \i in {0,1,2,3,4} { \node[pt] (b\i) at (\i, 2) {}; }
  \foreach \i in {0,1,2,3} { \node[pt] (a\i) at (\i + 0.5, 0) {}; }
  \draw[edge] (a0) -- (b1); \draw[edge] (a1) -- (b0); \draw[edge] (a1) -- (b2);
  \draw[edge] (a2) -- (b3); \draw[edge] (a3) -- (b2);
  \draw[medge] (a0) -- (b0); \draw[medge] (a1) -- (b1); \draw[medge] (a2) -- (b2); \draw[medge] (a3) -- (b4);
  \node at (2, -1.0) {\footnotesize Egy $A$-t fedő párosítás (vastag élek) a $G(A, B)$ páros gráfban.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

> **Tétel (Hall-tétel).** A $G(A, B)$ páros gráfban pontosan akkor létezik $A$-t fedő párosítás, ha teljesül a Hall-feltétel.

> **Tétel (Frobenius-tétel).** A $G(A, B)$ páros gráfban pontosan akkor létezik teljes párosítás, ha $|A| = |B|$, és teljesül a Hall-feltétel.

Hogyan lehet egy maximális párosítást ténylegesen **megtalálni**? Erre a kérdésre a Hall-tétel bizonyítása is választ ad: a bizonyítás egy algoritmus.

### A Hall-tétel bizonyítása

**$\Rightarrow$ (a feltétel szükséges).** Legyen $M$ egy $A$-t fedő párosítás és $X \subseteq A$. Az $X$ csúcsaiból induló $|X|$ darab párosításél $B$-beli végpontjai **csupa különbözők** (a párosítás élei diszjunktak), és mindegyikük $N(X)$-ben van. Tehát $|N(X)| \ge |X|$.

**$\Leftarrow$ (a feltétel elégséges).** Tegyük fel, hogy teljesül a Hall-feltétel. Az alábbi algoritmus egy $A$-t fedő párosítást állít elő.

**1. lépés: mohó kezdés.** Mohón keresünk független éleket: amíg van olyan él, amelynek mindkét végpontja fedetlen, hozzávesszük a párosításhoz. Ez egy bővíthetetlen párosítás, de általában **nem optimális**.

Ha ezután egy $u \in A$ csúcs fedetlen maradt, akkor:

- $u$-nak van éle, különben $X = \{u\}$-ra $|N(X)| = 0 < 1$, és sérülne a Hall-feltétel (minden $A$-beli csúcsból indul ki él);
- $u$-nak csak olyan éle lehet, amely **fedett** $B$-beli csúcsba vezet: ha egy fedetlenbe vezetne, azt az élt az 1. lépés kiválasztotta volna.

**2. lépés: javító utak.** Színezzük a párosítás éleit pirosra, a többi élt feketére.

> **Definíció.** **Javító út** az az út, amely egy **fedetlen $A$-beli** csúcsból indul, felváltva „fölfelé” (nem párosításbeli, fekete élen $A$-ból $B$-be) és „lefelé” (párosításbeli, piros élen $B$-ből $A$-ba) halad, és egy **fedetlen $B$-beli** csúcsban ér véget. Ha nem követeljük meg, hogy a végpont fedetlen $B$-beli csúcs legyen, **javító út kezdeményről** (más néven **majdnem javító útról** vagy alternáló útról) beszélünk.

Ha találunk egy javító utat, akkor **javítunk**: az út mentén a fekete éleket pirosra, a piros éleket feketére színezzük. A javító út fekete élei eggyel többen vannak, mint a pirosak (fekete éllel kezdődik és végződik), így a piros élek száma eggyel nő. Az eredmény újra párosítás: az út belső csúcsai továbbra is pontosan egy piros élre illeszkednek, a két végpont pedig (amelyek eddig fedetlenek voltak) most egyre. A korábban fedett csúcsok fedettek maradnak, és a két végpont is fedetté vált.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  black/.style={draw=black, thin},
  red/.style={draw=red!75!black, line width=2.2pt}
]
  \begin{scope}
    \node[pt, label=below:{\footnotesize $u$}] (a0) at (0, 0) {};
    \node[pt] (b0) at (0.8, 1.5) {};
    \node[pt] (a1) at (1.6, 0) {};
    \node[pt] (b1) at (2.4, 1.5) {};
    \node[pt] (a2) at (3.2, 0) {};
    \node[pt, label=above:{\footnotesize $v$}] (b2) at (4.0, 1.5) {};
    \draw[black] (a0) -- (b0); \draw[red] (b0) -- (a1); \draw[black] (a1) -- (b1);
    \draw[red] (b1) -- (a2); \draw[black] (a2) -- (b2);
    \node at (2, -0.9) {\footnotesize javítás előtt: $2$ piros él};
  \end{scope}
  \draw[-{Stealth[scale=1.2]}, thick] (4.7, 0.75) -- (5.5, 0.75);
  \begin{scope}[xshift=6.2cm]
    \node[pt, label=below:{\footnotesize $u$}] (a0) at (0, 0) {};
    \node[pt] (b0) at (0.8, 1.5) {};
    \node[pt] (a1) at (1.6, 0) {};
    \node[pt] (b1) at (2.4, 1.5) {};
    \node[pt] (a2) at (3.2, 0) {};
    \node[pt, label=above:{\footnotesize $v$}] (b2) at (4.0, 1.5) {};
    \draw[red] (a0) -- (b0); \draw[black] (b0) -- (a1); \draw[red] (a1) -- (b1);
    \draw[black] (b1) -- (a2); \draw[red] (a2) -- (b2);
    \node at (2, -0.9) {\footnotesize javítás után: $3$ piros él};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

A 2. lépést addig ismételjük, amíg találunk javító utat. Mivel minden javítás eggyel növeli a párosítás méretét, az eljárás véget ér.

**Ellenőrzés (indirekt).** Tegyük fel, hogy már **nincs több javító út**, de van még egy **fedetlen** $u \in A$ csúcs. Legyen
$$T = \{\, b \in B : b\text{-be el lehet jutni } u\text{-ból javító út kezdeménnyel} \,\}.$$

**Állítás:** $T$ csúcsai mind **fedettek** (van párjuk $A$-ban). Ha volna köztük fedetlen, akkor az $u$-ból oda vezető javító út kezdemény javító út volna — de feltettük, hogy ilyen már nincs.

Legyen $T'$ a $T$-beli csúcsok párjainak halmaza. A párosítás bijekció $T$ és $T'$ között, így $|T'| = |T|$; továbbá $u \notin T'$, hiszen $u$ fedetlen. Nézzük az
$$X = T' \cup \{u\}$$
halmazt.

**Állítás:** $N(T' \cup \{u\}) = T$.

- *Az $u$ szomszédai $T$-ben vannak:* egy $u$-ból induló él maga is egy $1$ élű javító út kezdemény.
- *Egy $v' \in T'$ szomszédai $T$-ben vannak:* legyen $v \in T$ a $v'$ párja. Menjünk $u$-ból $v$-be javító út kezdeménnyel, onnan a piros élen le a $v'$ párjába, majd $v'$-ből egy újabb, fekete élen fel a $v'$ tetszőleges $w$ szomszédjába. Ez is javító út kezdemény (pontosabban: alternáló séta, amelyből alternáló út is kivágható), tehát $w \in T$. (Ha $w = v$, akkor $w \in T$ eleve.)
- *Megfordítva*, $T \subseteq N(X)$: egy $T$-beli csúcsba vezető javító út kezdemény utolsó éle $u$-ból vagy egy $T'$-beli csúcsból indul.

Ekkor viszont
$$|X| = |T'| + 1 = |T| + 1 > |T| = |N(X)|,$$
ami ellentmond a Hall-feltételnek. Tehát ha már nincs javító út, akkor minden $A$-beli csúcs fedett: az algoritmus $A$-t fedő párosítást talált. $\blacksquare$

A bizonyításból az is kiderül, hogy **egy párosítás pontosan akkor maximális, ha nincs hozzá javító út** — ez páros gráfokban a maximális párosítás keresésének alapja (magyar módszer, Kőnig Dénes és Egerváry Jenő nyomán). Sőt, ha már nincs javító út, ugyanez az ábra a következő szakaszban közvetlenül elvezet Kőnig $\nu = \tau$ tételének bizonyításához is.

### A Frobenius-tétel bizonyítása

**$\Rightarrow$.** Egy teljes párosítás bijekciót létesít $A$ és $B$ között, így $|A| = |B|$; és mivel $A$-t is fedi, a Hall-tétel szerint teljesül a Hall-feltétel.

**$\Leftarrow$.** A Hall-tétel szerint van $A$-t fedő párosítás. Ennek $|A|$ éle $|A| = |B|$ különböző $B$-beli csúcsot fed le, vagyis $B$ minden csúcsát: a párosítás teljes. $\blacksquare$

*Megjegyzés: párosítás és mátrixok.* Legyen $|A| = |B| = N$, $A = \{a_1, \dots, a_N\}$, $B = \{b_1, \dots, b_N\}$, és készítsük el az $N \times N$-es **párosítási mátrixot**:
$$m_{ij} = \begin{cases} 1, & \text{ha } (a_i, b_j) \in E(G), \\ 0, & \text{különben.} \end{cases}$$
Egy teljes párosítás minden sorból és minden oszlopból pontosan egy $1$-est választ ki: ez éppen egy **bástyaelhelyezés** — $N$ darab, egymást nem ütő bástya a sakktábla $1$-es mezőin. A determináns kifejtési tagjai $\pm m_{1\sigma(1)} m_{2\sigma(2)} \cdots m_{N\sigma(N)}$ alakúak (ahol $\sigma$ az $\{1, \dots, N\}$ egy permutációja), és egy ilyen tag pontosan akkor nem $0$, ha a $\sigma$ által kijelölt mezőkön mind $1$-es áll. Tehát:

> **Egy $N \times N$-es $0$–$1$ mátrixnak pontosan akkor van nem $0$ kifejtési tagja, ha a hozzá tartozó páros gráfban van teljes párosítás.**

::: kiegeszites
**Kiegészítés — determináns vagy permanens?** A nem nulla kifejtési tagok előjelesen összeadódva kiolthatják egymást: a csupa $1$-es $2 \times 2$-es mátrix determinánsa $0$, pedig a $K_{2,2}$-ben két teljes párosítás is van. Tehát $\det M \ne 0$-ból következik teljes párosítás létezése, de fordítva nem. Az előjelek nélküli összeg, a **permanens** $\operatorname{per} M = \sum_\sigma \prod_i m_{i\sigma(i)}$ viszont éppen a teljes párosítások **számát** adja meg. (Érdekesség: a determináns gyorsan, Gauss-eliminációval kiszámítható, a permanens kiszámítása viszont nehéz feladat.)
:::

### Általános gráfok teljes párosításai: a Tutte-tétel

Nem páros gráfokban az „$A$” és „$B$” oldal nem értelmes, mégis meg lehet fogalmazni egy hasonló szükséges és elégséges feltételt. Ha $X \subseteq V(G)$, jelölje
$$c_{\mathrm{ptl}}(X)$$
a $G - X$ gráf (az $X$ csúcsainak és a rájuk illeszkedő éleknek a törlésével kapott gráf) **páratlan csúcsszámú komponenseinek** a számát.

> **Tétel (Tutte-tétel).** A $G$ gráfban pontosan akkor van teljes párosítás, ha
> $$\forall X \subseteq V(G): \quad c_{\mathrm{ptl}}(X) \le |X|.$$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=black, inner sep=1.2pt},
  comp/.style={draw=black!60, rounded corners=6pt},
  medge/.style={draw=black, thick}
]
  \draw[comp, fill=black!6] (2.2, 3.0) ellipse (1.6 and 0.55);
  \node at (4.2, 3.0) {$X$};
  \foreach \i/\x in {1/1.2, 2/1.9, 3/2.6, 4/3.2} { \node[pt] (x\i) at (\x, 3.0) {}; }
  % páratlan komponensek
  \draw[comp] (0.0, 0.8) ellipse (0.45 and 0.75);
  \draw[comp] (1.3, 0.8) ellipse (0.45 and 0.75);
  \draw[comp] (2.6, 0.8) ellipse (0.45 and 0.75);
  \node[pt] (p1) at (0.0, 1.3) {}; \node[pt] at (-0.15, 0.7) {}; \node[pt] at (0.15, 0.3) {};
  \node[pt] (p2) at (1.3, 1.3) {};
  \node[pt] (p3) at (2.6, 1.3) {}; \node[pt] at (2.45, 0.7) {}; \node[pt] at (2.75, 0.7) {}; \node[pt] at (2.45, 0.25) {}; \node[pt] at (2.75, 0.25) {};
  \draw[medge] (p1) -- (x1); \draw[medge] (p2) -- (x2); \draw[medge] (p3) -- (x3);
  % páros komponensek
  \draw[comp, dashed] (4.2, 0.8) ellipse (0.45 and 0.75);
  \node[pt] at (4.05, 1.1) {}; \node[pt] at (4.35, 1.1) {}; \node[pt] at (4.05, 0.5) {}; \node[pt] at (4.35, 0.5) {};
  \node[align=left, anchor=west] at (5.0, 1.0) {\footnotesize páratlan csúcsszámú komponensek (folytonos)\\ \footnotesize páros csúcsszámú komponens (szaggatott)};
  \node at (2.4, -0.5) {\footnotesize Minden páratlan komponensből legalább egy párosításél vezet $X$-be.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

**$\Rightarrow$ (a feltétel szükséges).** Legyen $M$ egy teljes párosítás és $X \subseteq V(G)$. Egy teljes párosítás élei háromféle helyen futhatnak: **$X$-en belül**, **egy komponensen belül**, vagy **egy komponens és $X$ között** — két különböző komponens között nem, hiszen $G - X$ különböző komponensei között nincs él. Egy páratlan csúcsszámú komponens csúcsait nem lehet a komponensen belül mind párba állítani, így minden páratlan komponensből **legalább egy párosításél vezet $X$-be**. Ezek az élek csupa különböző $X$-beli csúcsba vezetnek (a párosítás élei diszjunktak), tehát $c_{\mathrm{ptl}}(X) \le |X|$. $\blacksquare$

**$\Leftarrow$.** Ezt az irányt az előadáson nem bizonyítottuk.

::: kiegeszites
**Kiegészítés — a Tutte-tétel elégségességi irányának bizonyítása** (Lovász László gondolatmenete). Mondjuk, hogy $G$ teljesíti a **(T) feltételt**, ha minden $X \subseteq V(G)$-re $c_{\mathrm{ptl}}(X) \le |X|$. Tegyük fel, hogy $G$ teljesíti (T)-t; megmutatjuk, hogy van teljes párosítása.

*Előkészítés.* $X = \emptyset$-ra (T) szerint $G$-nek nincs páratlan csúcsszámú komponense, így $n$ páros. Ha $G$-hez hozzáveszünk egy $e$ élt, (T) teljesül marad: minden $X$-re a $G + e - X$ komponensei a $G - X$ komponenseiből úgy keletkeznek, hogy legfeljebb kettő összeolvad, és két páratlan összeolvadásából páros, egy páratlan és egy páros összeolvadásából páratlan, két páros összeolvadásából páros komponens lesz; a páratlan komponensek száma tehát nem nő. Ha $G$-nek nincs teljes párosítása, adjunk hozzá éleket, ameddig csak lehet úgy, hogy továbbra se legyen teljes párosítás; mivel a $K_n$-nek ($n$ páros) van teljes párosítása, ez egy $G^*$ gráfnál megáll. $G^*$ teljesíti (T)-t, nincs teljes párosítása, de **bármely új él hozzávételével lesz**. Elég tehát megmutatni, hogy ilyen $G^*$ nem létezik; a továbbiakban $G$ helyett $G^*$-ot írunk $G$-nek.

Legyen $U$ azon csúcsok halmaza, amelyek **minden más csúccsal szomszédosak**.

*1. eset: $G - U$ minden komponense teljes gráf.* Ekkor teljes párosítást készítünk. A páros csúcsszámú komponensek csúcsait a komponensen belül párba állítjuk (teljes gráf). Minden páratlan komponensből egy csúcs kivételével ugyanígy járunk el, a kimaradó csúcsot pedig egy-egy **különböző** $U$-beli csúccsal párosítjuk — ez (T) szerint lehetséges ($c_{\mathrm{ptl}}(U) \le |U|$), hiszen $U$ csúcsai mindenkivel szomszédosak. Az $U$-ban megmaradó $|U| - c_{\mathrm{ptl}}(U)$ csúcs száma páros (mert $n$ páros, és $n \equiv |U| + c_{\mathrm{ptl}}(U) \pmod 2$), és $U$ teljes gráfot feszít, így ezek is párba állíthatók. Ez teljes párosítás — ellentmondás.

*2. eset: $G - U$ valamelyik komponense nem teljes gráf.* Egy összefüggő, nem teljes gráfban van két nem szomszédos csúcs, amelyek távolsága $2$; így vannak olyan $a, b, c \notin U$ csúcsok, hogy $ab, bc \in E(G)$, de $ac \notin E(G)$. Mivel $b \notin U$, van olyan $d$ csúcs, hogy $bd \notin E(G)$ ($d \ne a, c$, mert azok $b$ szomszédai). A $G^*$ maximalitása miatt $G + ac$-nek van egy $M_1$, $G + bd$-nek egy $M_2$ teljes párosítása. Nyilván $ac \in M_1$ és $bd \in M_2$ (különben $G$-nek volna teljes párosítása).

Legyen $P$ egy olyan, $G$-ben haladó, **leghosszabb** út, amely $d$-ből indul a $d$-re illeszkedő $M_1$-éllel, és amelynek élei felváltva $M_1$-, illetve $M_2$-beliek. (A $d$-n átmenő $M_1$-él nem $ac$, hiszen $d \ne a, c$, tehát $G$-beli.) Minden csúcsra pontosan egy $M_1$- és egy $M_2$-él illeszkedik, így $P$ csak úgy akadhat el, hogy a következő él $G$-n kívüli ($ac$ vagy $bd$), vagy visszavezet $P$ egy csúcsába — ez utóbbi csak $d$ lehet ($P$ belső csúcsainak mindkét éle már $P$-n van), és ekkor az él $d$ $M_2$-éle, $bd$. Tehát $P$ az $a$, a $c$ vagy a $b$ csúcsban végződik.

- *$P$ a $b$-ben végződik.* Ekkor $P$ utolsó éle $M_1$-beli ($b$ $M_2$-éle a $bd \notin E(G)$). A $C = P + bd$ kör élei felváltva $M_1$- és $M_2$-beliek. Legyen $M = (M_2 \setminus E(C)) \cup (M_1 \cap E(C))$: ez teljes párosítás, és $bd$-t nem tartalmazza (az $C$-n van, de $M_1$-ben nincs), $ac$-t sem ($P \subseteq G$). Tehát $M$ a $G$ teljes párosítása — ellentmondás.
- *$P$ az $a$-ban vagy a $c$-ben végződik*, mondjuk $c$-ben (a két eset szimmetrikus, hiszen $ab$ és $bc$ is él). Ekkor $P$ utolsó éle $M_2$-beli. A $b$ nincs rajta $P$-n: ha rajta volna, csak az $M_1$-élén érhettünk volna oda (az $M_2$-éle nem $G$-beli), és ott $P$-nek véget kellett volna érnie. Így $C = P + cb + bd$ kör, amelyen $M_2$-beli és nem $M_2$-beli élek váltakoznak (a $c$-be érkező $M_2$-élt a $cb$ él, azt a $bd \in M_2$, azt a $d$-ből induló $M_1$-él követi). Legyen $M = (M_2 \setminus E(C)) \cup (E(C) \setminus M_2)$: ez teljes párosítás, és minden éle $G$-beli ($bd \in M_2 \cap E(C)$ kikerült, $cb \in E(G)$). Ellentmondás.

Minden esetben ellentmondásra jutottunk, tehát (T) teljesülése esetén $G$-nek van teljes párosítása. $\blacksquare$
:::

### Reguláris páros gráfok

> **Tétel.** Minden $r$-reguláris ($r \ge 1$) páros gráfban van teljes párosítás.

(Emlékeztetőül: $r$-reguláris, ha minden csúcs foka $r$.)

*Bizonyítás.* Legyen a gráf $G(A, B)$. A Frobenius-tételt alkalmazzuk.

1. **$|A| = |B|$.** Hány éle van a gráfnak? Minden él pontosan egy $A$-beli és egy $B$-beli csúcsra illeszkedik. Az $A$ szemszögéből $|A| \cdot r$ él van, a $B$ szemszögéből $|B| \cdot r$, tehát $|A| \cdot r = |B| \cdot r$, és $r \ge 1$ miatt $|A| = |B|$.
2. **A Hall-feltétel.** Legyen $X \subseteq A$. Az $X$-ből induló élek száma $|X| \cdot r$, és ezek mind $N(X)$-be vezetnek. Az $N(X)$ csúcsaira összesen $|N(X)| \cdot r$ él illeszkedik, ezek között vannak az $X$ és $N(X)$ közötti élek is. Tehát
$$|X| \cdot r = (X \text{ és } N(X) \text{ közötti élek száma}) \le |N(X)| \cdot r,$$
azaz $|X| \le |N(X)|$. $\blacksquare$

(A bizonyítás többszörös élek esetén is működik.)

*Megjegyzés.* Kell, hogy $G$ páros gráf legyen: az ötszög ($C_5$) $2$-reguláris, de nincs benne teljes párosítás (páratlan sok csúcsa van).

**Mi köze ennek a gráfparaméterekhez?** A maximális párosítás élszáma $\nu(G)$, és teljes párosítás pontosan akkor van, ha $\nu(G) = \frac{n}{2}$. A tétel tehát azt mondja, hogy $r$-reguláris páros gráfra ($r \ge 1$) $\nu(G) = \frac{n}{2}$. Egy másik paraméterrel, az élkromatikus számmal is szoros a kapcsolat:

> **Tétel.** Minden $r$-reguláris páros gráfban $\chi_e = r$.

*Bizonyítás.* $\chi_e \ge \Delta = r$ mindig igaz (egy csúcs $r$ éle csupa különböző színt kap). A felső becsléshez élszínezést készítünk; ebben **minden színosztály egy párosítás**. Az előző tétel szerint létezik teljes párosítás: ennek éleit színezzük **pirossal**, és töröljük ki őket. Minden csúcsról pontosan egy él tűnt el, így egy $(r-1)$-reguláris páros gráf marad. Ha $r - 1 \ge 1$, ebben is van teljes párosítás: ennek éleit színezzük a **második** színnel, és így tovább. A harmadik, …, $r$-edik szín után minden él színt kap, és az azonos színű élek páronként diszjunktak. Tehát $\chi_e \le r$. $\blacksquare$

Ez Kőnig élszínezési tételének (36. szakasz: páros gráfra $\chi'(G) = \Delta(G)$) a reguláris speciális esete. Egy tetszőleges páros gráf egyébként kiegészíthető $\Delta$-reguláris páros (multi)gráffá, így a fenti bizonyításból a Kőnig-tétel is következik.
