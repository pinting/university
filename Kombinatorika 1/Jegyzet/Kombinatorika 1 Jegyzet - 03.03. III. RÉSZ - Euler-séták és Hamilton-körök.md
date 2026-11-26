## 30. Euler-séták és Euler-körséták

A gráfelmélet születését egy **Leonhard Euler** által 1736-ban megoldott feladathoz kötik, a **königsbergi hidak problémájához**. Königsberg városát a Pregel folyó négy részre (két partra és két szigetre) osztotta, és a részeket hét híd kötötte össze. A kérdés: be lehet-e járni a várost úgy, hogy **minden hídon pontosan egyszer** menjünk át?

Modellezzük gráffal: a csúcsok a négy városrész, az élek a hidak. (Ez a gráf nem egyszerű: két városrészt több híd is összeköthet, tehát **többszörös éleket** is megengedünk.) A nagyobbik szigetnek $5$ hídja van, a másik három városrésznek $3$-$3$: a gráf fokszámai $5, 3, 3, 3$.

> **Definíció.** Legyen $G$ egy gráf.
>
> - **Euler-séta:** olyan séta $G$-ben, amely minden élen **pontosan egyszer** megy át.
> - **Euler-körséta:** olyan Euler-séta, amely **visszaér a kiindulópontjához** (zárt).

Mivel az Euler-séta egyetlen élen sem megy át kétszer, a 19. szakasz szóhasználatával egy **vonal** (az Euler-körséta pedig zárt vonal, *körvonal*), amely ráadásul az összes élt tartalmazza. Szemléletesen: az Euler-séta a gráf lerajzolása **a ceruza felemelése nélkül**, úgy, hogy egyetlen vonalat sem húzunk be kétszer.

Néhány példa:

| gráf | fokszámok | Euler-séta | Euler-körséta |
|:--|:--|:-:|:-:|
| königsbergi hidak | $5, 3, 3, 3$ | nincs | nincs |
| négyzet a két átlójával | $3, 3, 3, 3$ | nincs | nincs |
| ház (négyzet, rajta háromszög alakú tető) | $2, 2, 3, 3, 2$ | van | nincs |
| ház a négyzet két átlójával | $3, 3, 4, 4, 2$ | van | nincs |
| kör | $2, 2, \dots, 2$ | van | van |

> **Tétel (Euler).**
>
> - $G$-ben pontosan akkor van **Euler-körséta**, ha $G$ összefüggő, és **minden csúcs foka páros**.
> - $G$-ben pontosan akkor van **Euler-séta**, ha $G$ összefüggő, és a páratlan fokú csúcsok száma $0$ vagy $2$.

A königsbergi gráfban mind a négy csúcs foka páratlan, tehát a hidakat nem lehet a kívánt módon bejárni.

*Bizonyítás (Euler-körséta).* **$\Rightarrow$:** Az Euler-körséta minden élt bejár, így bármely két csúcs között halad séta: $G$ összefüggő. Valahányszor a körséta áthalad egy csúcson, egy élen **be**megy, egy másikon **ki**jön, és a kiindulópontban is párba állítható az első és az utolsó él. A körséta minden élt pontosan egyszer használ, így minden csúcs fokszáma páros.

**$\Leftarrow$:** Tegyük fel, hogy $G$ összefüggő, és minden fok páros. Előbb egy megfigyelés:

*Ha egy $u$ csúcsból elindulunk, és vonalat építünk (minden lépésben egy még be nem járt élen haladunk tovább), akkor csak a kiindulópontban akadhatunk el.* Ha ugyanis egy $w \ne u$ csúcsba érkezünk, akkor $w$-ben eddig eggyel több élt használtunk el befelé, mint kifelé — páratlan sokat —, és mivel $w$ foka páros, marad még be nem járt éle, amelyen továbbmehetünk. Mivel az élek száma véges, egyszer elakadunk, és ez csak $u$-ban történhet: a vonal zárt, körvonal.

Most nézzük a $G$ **leghosszabb körvonalát**, és tegyük fel indirekten, hogy van olyan éle $G$-nek, amelyet nem járt be. Mivel $G$ összefüggő, van olyan be nem járt él is, amelynek az egyik végpontja, $u$, a körvonalon fekszik. A körvonal minden csúcsnál **páros sok** élt használ, így a be nem járt élek gráfjában is minden fok páros. Induljunk el $u$-ból a be nem járt éleken: a megfigyelés szerint ez a vonal is csak $u$-ban akadhat el, tehát körvonal. Ezt az új körvonalat az $u$ csúcsnál „befűzhetjük” a régibe: a régi körvonalon haladva, amikor $u$-ba érünk, előbb bejárjuk az újat, majd a régin folytatjuk. Így a leghosszabbnál hosszabb körvonalat kaptunk — ellentmondás. Tehát a leghosszabb körvonal minden élt bejár: Euler-körséta. $\blacksquare$

::: kiegeszites
**Kiegészítés — az Euler-sétára vonatkozó rész bizonyítása.**

**$\Rightarrow$:** Az összefüggőség ugyanúgy következik, mint előbb. Ha az Euler-séta zárt, minden fok páros ($0$ páratlan fokú csúcs). Ha nyitott, az $x$ kezdőpontból az $y \ne x$ végpontba vezet, akkor a belső áthaladásokat ugyanúgy párba állíthatjuk, és csak $x$-nél marad egy párosítatlan (az első) és $y$-nál egy párosítatlan (az utolsó) él: pontosan $x$ és $y$ foka páratlan.

**$\Leftarrow$:** Ha nincs páratlan fokú csúcs, az előző rész szerint van Euler-körséta, és ez Euler-séta is. Ha pontosan kettő van, $x$ és $y$, vegyünk hozzá $G$-hez egy új $xy$ élt (ez lehet többszörös él). Az új gráf összefüggő, és minden foka páros, tehát van benne Euler-körséta. Ezt úgy indíthatjuk, hogy az utolsó éle az új $xy$ él legyen; ezt elhagyva $G$ egy $x$-ből $y$-ba vezető Euler-sétáját kapjuk.

*Megjegyzés az izolált csúcsokról.* Szigorúan véve az „összefüggő” feltételt úgy kell érteni, hogy **az élek** egy komponensben vannak: egy izolált csúcs (amelynek foka $0$, páros) nem akadályozza az Euler-körséta létezését, hiszen nincs bejárandó éle. Az izolált csúcsokat tehát a tétel alkalmazása előtt hagyjuk el.
:::

## 31. Hamilton-utak és Hamilton-körök

Az Euler-sétánál minden **élt** pontosan egyszer kellett bejárni. Mi a helyzet, ha minden **csúcsot** szeretnénk pontosan egyszer meglátogatni?

> **Definíció.** Legyen $G$ egy $n$ csúcsú gráf.
>
> - **Hamilton-út:** olyan út $G$-ben, amely a gráf **minden csúcsát** tartalmazza. Ez egy $n - 1$ hosszú út.
> - **Hamilton-kör:** olyan kör $G$-ben, amely a gráf minden csúcsát tartalmazza. Ez egy $n$ hosszú kör.

A 23. szakasz nyelvén: a Hamilton-út egy olyan **feszítő részgráf, amely út** (feszítő út), a Hamilton-kör pedig egy **feszítő kör**. Míg feszítőfája minden összefüggő gráfnak van, feszítő útja csak a Hamilton-utat tartalmazó gráfoknak.

> **Kérdés.** Van-e $G$-ben Hamilton-kör (Hamilton-út)?

Az Euler-séta kérdésére a fokszámok paritása egyszerű és teljes választ adott. A Hamilton-kör kérdése ezzel szemben **NP-teljes probléma**: nem ismerünk rá hatékony algoritmust, és ilyen nem is várható. Ezért be kell érnünk **szükséges** és **elégséges** feltételekkel: olyanokkal, amelyek ha nem teljesülnek, biztosan nincs Hamilton-kör, illetve olyanokkal, amelyek ha teljesülnek, biztosan van.

### Szükséges feltételek

> **Tétel.**
>
> - Ha $G$-ben van **Hamilton-kör**, akkor minden $k \ge 1$-re bármely $k$ csúcsot törölve a gráf **legfeljebb $k$** komponensre esik szét.
> - Ha $G$-ben van **Hamilton-út**, akkor minden $k \ge 1$-re bármely $k$ csúcsot törölve a gráf **legfeljebb $k + 1$** komponensre esik szét.

*Bizonyítás.* Rajzoljuk le a Hamilton-kört: ez a gráf összes csúcsa és néhány éle; a többi él csak „ráadás”.

Gondoljunk a Hamilton-körre úgy, mint egy **nyakláncra**: ha $k$ szemet kiszedünk belőle, legfeljebb $k$ darabra esik. A darabok mindegyike egy-egy út, amely a megmaradt gráfban egyetlen komponensbe tartozik, és a darabok együtt az összes megmaradt csúcsot lefedik. A gráf további élei a darabokat legfeljebb összekapcsolhatják, szétszedni nem tudják, tehát a komponensek száma legfeljebb $k$.

A Hamilton-út egy (nem zárt) **lánc**: ha $k$ szemet kiszedünk belőle, legfeljebb $k + 1$ részre esik. A többi ugyanígy megy. $\blacksquare$

::: kiegeszites
**Kiegészítés — két példa.**

*A feltétel kizárhat Hamilton-kört.* Vegyünk két háromszöget, amelyeknek egy közös csúcsuk van (ez a „pillangó”, $5$ csúcs). A közös csúcsot törölve ($k = 1$) a gráf $2$ komponensre esik, tehát nincs Hamilton-köre. Hamilton-útja viszont van (az egyik háromszög két csúcsán át a közös csúcsba, onnan a másik háromszög két csúcsán át), összhangban azzal, hogy egy csúcs törlésével legfeljebb $1 + 1 = 2$ komponens keletkezik.

*A feltétel nem elégséges.* Ismert, hogy a **Petersen-gráf** ($10$ csúcsú, $3$-reguláris gráf: egy ötszög, egy ötágú csillag, és a megfelelő csúcsaik összekötve) teljesíti a fenti szükséges feltételt, Hamilton-köre mégsincs. A szükséges feltétel teljesülése tehát még nem garantálja a Hamilton-kört.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!75, thick}
]
  \foreach \k/\ang/\oang/\iang in {1/90/90/10, 2/18/18/100, 3/-54/-54/22, 4/-126/-126/153, 5/162/162/80} {
    \node[pt, label={[label distance=1pt]\oang:{\footnotesize $o_{\k}$}}] (o\k) at (\ang:1.75) {};
    \node[pt, label={[label distance=0pt]\iang:{\scriptsize $i_{\k}$}}] (i\k) at (\ang:0.85) {};
  }
  \draw[edge] (o1) -- (o2) -- (o3) -- (o4) -- (o5) -- (o1);
  \draw[edge] (i1) -- (i3) -- (i5) -- (i2) -- (i4) -- (i1);
  \foreach \k in {1,...,5} {
    \draw[edge] (o\k) -- (i\k);
  }
  \node at (0, -2.25) {\footnotesize A Petersen-gráf ($10$ csúcs, $15$ él): nincs benne Hamilton-kör.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

*Miért nincs a Petersen-gráfban Hamilton-kör?* Legyenek a külső ötszög csúcsai $o_1, \dots, o_5$ (körbe), a belső csillag csúcsai $i_1, \dots, i_5$ (az $i_k$ az $i_{k+2}$-vel és az $i_{k-2}$-vel szomszédos, indexek modulo $5$), és a „küllők” az $o_ki_k$ élek. Tegyük fel, hogy $H$ egy Hamilton-kör. $H$ minden csúcsnál $2$ élt használ a $3$-ból. Egy kör páros sokszor lép át a külső és a belső csúcsok között, és legalább kétszer, így $H$ vagy $2$, vagy $4$ küllőt tartalmaz.

- *$2$ küllő.* A külső ötszögön a két küllős csúcs $1$-$1$, a többi három $2$-$2$ ötszögélt használ $H$-ból, összesen $\frac{2 + 6}{2} = 4$ élt: $H$ külső része egy $5$ csúcsú út, amelynek két végpontja a két küllős csúcs, és ezek az ötszögön **szomszédosak** (a kimaradó él köti össze őket): $o_a, o_{a+1}$. Ugyanígy a belső részen a két küllős csúcs, $i_a$ és $i_{a+1}$ a csillagban szomszédos volna — de $i_a$ szomszédai $i_{a \pm 2}$. Ellentmondás.
- *$4$ küllő.* Legyen $o_1i_1$ a kimaradó küllő (a szimmetria miatt feltehető). A külső részen $o_1$ két, a többi egy-egy ötszögélt használ: $\frac{2 + 4}{2} = 3$ él, köztük $o_5o_1$ és $o_1o_2$; a két kimaradó él nem szomszédos és nem illeszkedik $o_1$-re, tehát $o_2o_3$ és $o_4o_5$, így a harmadik használt él $o_3o_4$. Ugyanígy a belső részen ($i_1$ szomszédai $i_3$ és $i_4$) $H$ az $i_1i_3$, $i_1i_4$ és $i_2i_5$ éleket használja. Ekkor azonban $o_1, o_2, i_2, i_5, o_5, o_1$ egy $5$ hosszú kör $H$-ban — egy Hamilton-kör nem tartalmazhat rövidebb kört. Ellentmondás. $\blacksquare$
:::

## 32. Elégséges feltétel: a Dirac- és az Ore-tétel

Az elégséges feltételek azt mondják ki, hogy ha egy gráfnak „elég sok” éle van, akkor van Hamilton-köre.

> **Tétel (Dirac-tétel).** Legyen $G$ egy $n \ge 3$ csúcsú egyszerű gráf. Ha minden csúcs foka legalább $\frac{n}{2}$, akkor $G$-ben van Hamilton-kör.

(Az $n \ge 3$ feltétel azért kell, mert egyszerű gráfban a kör hossza legalább $3$: a $2$ csúcsú, egyetlen élből álló gráfban minden fok $1 = \frac{2}{2}$, Hamilton-kör mégsincs.)

*Bizonyítás.* A bizonyítás három lépésből áll. Indirekt tegyük fel, hogy minden fok legalább $\frac{n}{2}$, de **nincs** Hamilton-kör.

**1. lépés: telítés.** Húzzunk be $G$-be további éleket egyenként, amíg csak lehet úgy, hogy még mindig ne legyen Hamilton-kör. A fokszámok közben csak nőnek, így továbbra is mindegyik legalább $\frac{n}{2}$. A teljes gráfban ($n \ge 3$ esetén) van Hamilton-kör, ezért a folyamat előbb megáll. Olyan gráfot kapunk — nevezzük továbbra is $G$-nek —, amelyben

> minden fok legalább $\frac{n}{2}$, nincs Hamilton-kör, de **bármelyik** hiányzó élt behúzva már lenne.

Legyen $x$ és $y$ két nem szomszédos csúcs. Ha az $xy$ élt behúznánk, keletkezne egy Hamilton-kör, és ez szükségképpen használja az $xy$ élt (különben már $G$-ben is meglett volna). Ezt az élt elhagyva $G$-ben egy **Hamilton-utat** kapunk $x$-ből $y$-ba:
$$x = u_1,\ u_2,\ \dots,\ u_n = y.$$

**2. lépés: nincsenek „keresztélek”.** *Állítás:* ha $u_{i+1}$ szomszédja $x$-nek, akkor az előtte álló $u_i$ csúcs **nem** szomszédja $y$-nak.

Ha ugyanis $x u_{i+1}$ és $u_i y$ is él volna, akkor
$$x = u_1,\ u_2,\ \dots,\ u_i,\ y = u_n,\ u_{n-1},\ \dots,\ u_{i+1},\ x$$
Hamilton-kör volna $G$-ben: az úton elmegyünk $u_i$-ig, átugrunk $y$-ba, az úton visszafelé haladunk $u_{i+1}$-ig, és onnan visszaugrunk $x$-be. Ez ellentmondás.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.7pt},
  path/.style={draw=black, very thick},
  skip/.style={draw=black!35, dashed, thick},
  cross/.style={draw=black, very thick, -{Stealth[scale=0.9]}}
]
  \node[pt, label=below:{\footnotesize $x=u_1$}] (u1) at (-3.2, 0) {};
  \node[pt, label=above:{\footnotesize $u_2$}] (u2) at (-2.0, 0) {};
  \node[pt, label=below:{\footnotesize $u_i$}] (ui) at (-0.6, 0) {};
  \node[pt, label=below:{\footnotesize $u_{i+1}$}] (uip) at (0.6, 0) {};
  \node[pt, label=above:{\footnotesize $u_{n-1}$}] (unm) at (2.0, 0) {};
  \node[pt, label=below:{\footnotesize $u_n=y$}] (un) at (3.2, 0) {};

  \draw[path, ->, >=Stealth] (u1) -- (u2);
  \draw[path, dotted] (u2) -- (ui);
  \draw[skip] (ui) -- (uip);
  \draw[path, dotted] (uip) -- (unm);
  \draw[path, <-, >=Stealth] (unm) -- (un);

  \draw[cross] (ui) to[out=-55, in=-125, looseness=1.05] (un);
  \draw[cross] (uip) to[out=125, in=55, looseness=1.05] (u1);

  \node[align=center] at (0, -1.9) {\footnotesize Ha $xu_{i+1}$ és $u_iy$ is él, a szaggatott $u_iu_{i+1}$ él helyett \\ \footnotesize a két keresztéllel $n$ hosszú kört (Hamilton-kört) kapunk.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

**3. lépés: hányan lehetnek $y$ szomszédai?** Az $x$ csúcsnak $\deg(x)$ szomszédja van, mind az $u_2, \dots, u_n$ csúcsok között. Mindegyik szomszéd előtt áll az úton egy csúcs; ezek $\deg(x)$ darab különböző csúcsot adnak az $u_1, \dots, u_{n-1}$ közül, és a 2. lépés szerint egyikük sem szomszédja $y$-nak. Az $y$ szomszédai az $u_1, \dots, u_{n-1}$ csúcsok közül kerülnek ki ($y$ nem szomszédja önmagának), ezért
$$\deg(y) \le (n - 1) - \deg(x), \quad \text{azaz} \quad n - 1 \ge \deg(x) + \deg(y) \ge \frac{n}{2} + \frac{n}{2} = n.$$
Az $n - 1 \ge n$ egyenlőtlenség ellentmondás. $\blacksquare$

**Megjegyzés.** A bizonyításban a fokszámfeltételt csak egyetlen helyen, a 3. lépés végén használtuk, és ott is csak az **összekötetlen** $x$, $y$ csúcsok fokszámösszegére: elég lett volna, hogy $\deg(x) + \deg(y) \ge n$. Valójában tehát egy erősebb tételt bizonyítottunk:

> **Tétel (Ore-tétel).** Legyen $G$ egy $n \ge 3$ csúcsú egyszerű gráf. Ha $G$ bármely két **összekötetlen** $x$, $y$ csúcsára igaz, hogy
> $$\deg(x) + \deg(y) \ge n,$$
> akkor $G$-ben van Hamilton-kör.

A Dirac-tétel ennek speciális esete: ha minden fok legalább $\frac{n}{2}$, akkor bármely két csúcs fokszámösszege legalább $n$.

::: kiegeszites
**Kiegészítés — miért működik a bizonyítás az Ore-feltétellel is?** Egyetlen pontot kell ellenőrizni: hogy az 1. lépésben a telítés megőrzi a feltételt. Ha két csúcs a telített gráfban nincs összekötve, akkor az eredetiben sem volt, így az eredeti gráfban $\deg(x) + \deg(y) \ge n$; a telítés közben a fokszámok csak nőttek, tehát a telített gráfban is $\deg(x) + \deg(y) \ge n$. A 2. és 3. lépés változtatás nélkül érvényes, és a 3. lépés végén az $n - 1 \ge \deg(x) + \deg(y) \ge n$ ellentmondásra jutunk.

*A Dirac-tétel korlátja éles.* Az $\frac{n}{2}$ nem cserélhető kisebbre: ha $n = 2m + 1$ páratlan, vegyünk két $(m+1)$ csúcsú teljes gráfot, amelyeknek egy közös csúcsuk van. Minden fok legalább $m = \frac{n-1}{2}$, de a közös csúcsot törölve a gráf $2$ komponensre esik, így a 31. szakasz szükséges feltétele szerint nincs Hamilton-köre.
:::
