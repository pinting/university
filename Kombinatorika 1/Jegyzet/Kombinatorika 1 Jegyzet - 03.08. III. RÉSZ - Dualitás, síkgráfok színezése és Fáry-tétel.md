## 43. Tartományok színezése és a duális gráf

Most visszatérünk a 36. szakasz végén elhalasztott kérdéshez. Egy síkba rajzolt gráf a síkot tartományokra bontja — gondoljunk egy térképre, ahol a tartományok az országok. Szeretnénk az országokat úgy kiszínezni, hogy a szomszédos országok különböző színűek legyenek.

> **A tartományszínezés feltétele.** A **közös élben** szomszédos tartományok színe különböző.

Csak a közös *élben* való szomszédosság számít: ha két tartománynak csak egy közös *csúcsa* van, kaphatják ugyanazt a színt. Ha ezt is megtiltanánk, egy csúcs körül összefutó $k$ tartománynak (mint egy $k$ szeletre vágott torta szeleteinek) páronként különböző színt kellene kapnia, és így tetszőlegesen sok szín kellhetne.

(Feltesszük, hogy a gráfban nincs **híd**, vagyis olyan él, amelynek mindkét oldalán ugyanaz a tartomány fekszik — egy ilyen tartomány önmagával volna „szomszédos”, és semmilyen színezés nem volna jó.)

> **Tétel (Négyszín-tétel, Appel és Haken, 1976).** Minden síkba rajzolt (hídmentes) gráf tartományai kiszínezhetők legfeljebb $4$ színnel.

A tétel bizonyításának alapgondolata: megmutatták, hogy minden síkgráf visszavezethető véges sok (az eredeti bizonyításban közel kétezer, ma ismert változatában $633$) „elkerülhetetlen konfiguráció” valamelyikére, és ezek mindegyikét **számítógéppel** ellenőrizték. Ez volt az első jelentős matematikai tétel, amelynek bizonyítása számítógépes ellenőrzést igényelt; emberi erővel végigkövethető bizonyítása ma sem ismert. A kérdést Francis Guthrie vetette fel 1852-ben; Alfred Kempe 1879-es „bizonyításáról” Percy Heawood 1890-ben kimutatta, hogy hibás — de Kempe ötletéből Heawood bebizonyította a gyengébb **ötszín-tételt**: $5$ szín mindig elég. A még gyengébb, $6$ színre vonatkozó állítás könnyű. Mindkettőt bebizonyítjuk a 44. szakaszban.

### A duális gráf

A tartományok színezését a csúcsszínezésre vezetjük vissza.

> **Definíció (duális gráf).** Legyen $G$ egy síkba rajzolt gráf. A **duális gráfját**, $G^*$-ot így készítjük el:
>
> - $G$ minden tartományába egy-egy pontot teszünk: ezek $G^*$ **csúcsai**;
> - $G$ minden $e$ élén keresztül behúzunk egy $e^*$ élt, amely az $e$ két oldalán levő tartományok pontjait köti össze, $e$-t pontosan egyszer metszi, $G$ többi élét pedig nem metszi.
>
> Tehát $G$ csúcsai $\leftrightarrow$ $G^*$ tartományai, $G$ élei $\leftrightarrow$ $G^*$ élei, $G$ tartományai $\leftrightarrow$ $G^*$ csúcsai.

Két tartomány között **annyi** élt húzunk, ahány közös élük van (minden közös élen keresztül egyet), így $G^*$-ban többszörös élek is lehetnek; egy hídon keresztül húzott él hurokél. Az élek behúzhatók úgy, hogy ne messék egymást, ezért **$G^*$ is síkbarajzolható** — sőt a konstrukció rögtön egy síkrajzát adja.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.0,
  v/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  dv/.style={circle, draw=black, fill=white, thick, inner sep=1.8pt},
  edge/.style={draw=black, thick},
  dual/.style={draw=black!55, thick, dashed}
]
  \node[v] (A) at (-1.5, 0) {};
  \node[v] (B) at (1.5, 0) {};
  \node[v] (C) at (0, 2.2) {};
  \draw[edge] (A) -- (B) -- (C) -- (A);
  \node[dv, label=above:{\footnotesize belső}] (I) at (0, 0.75) {};
  \node[dv, label=below:{\footnotesize külső}] (O) at (0, -1.3) {};
  \draw[dual] (I) -- (O);
  \draw[dual] (I) .. controls (-1.6, 1.6) and (-2.9, 0.2) .. (O);
  \draw[dual] (I) .. controls (1.6, 1.6) and (2.9, 0.2) .. (O);
  \node[align=center] at (0, -2.3) {\footnotesize Egy háromszög ($n = 3$, $e = 3$, $t = 2$) duálisa: \\ \footnotesize $2$ csúcs és $3$ párhuzamos él.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

Összefüggő $G$ esetén a duális paraméterei $n^* = t$ és $e^* = e$, az Euler-formula szerint pedig $t^* = 2 - n^* + e^* = 2 - t + e = n$: a duálisnak éppen annyi tartománya van, ahány csúcsa $G$-nek. A szabályos testek élgráfjainál: a kocka duálisa az oktaéder (a kocka $6$ lapja az oktaéder $6$ csúcsa), a dodekaéderé az ikozaéder, a tetraéderé önmaga.

**A kapcsolat a színezéssel.** Két tartomány pontosan akkor szomszédos egy közös élben, ha a nekik megfelelő duális csúcsok össze vannak kötve. Tehát:

> **$G$ tartományainak jó színezése $\iff$ $G^*$ csúcsainak jó színezése.**

A tartományok kiszínezéséhez szükséges színek minimális száma tehát $\chi(G^*)$, és $G^*$ maga is síkbarajzolható gráf. **A tartományszínezés helyett tehát síkbarajzolható gráfok kromatikus számát kell meghatároznunk.** (Megfordítva, minden összefüggő síkgráf egy alkalmas síkgráf duálisa — lásd a 45. szakaszt —, így a négyszín-tétel ekvivalens azzal, hogy *minden síkbarajzolható gráf csúcsai kiszínezhetők $4$ színnel*. A többszörös élek a csúcsszínezésen nem változtatnak, hurokél pedig hídmentes $G$ esetén nincs.)

## 44. Az öt- és a hatszíntétel, a Fáry-tétel

Emlékeztető: $G$ síkbarajzolható gráf tartományainak színezése a $G^*$ duális gráf csúcsszínezésével egyenértékű, és $G^*$ is síkgráf. A kérdés tehát: **ha $G$ síkbarajzolható, mekkora lehet $\chi(G)$?**
$$G \text{ síkbarajzolható} \implies \chi(G) \le 4 \quad (\text{Négyszín-tétel}), \qquad \text{illetve} \qquad \chi(G) \le 5, \quad \chi(G) \le 6.$$
A négy szín nem csökkenthető: a $K_4$ síkbarajzolható, és $\chi(K_4) = 4$. A bizonyításokban azt használjuk ki, hogy **egy síkbarajzolható gráfnak kevés éle van** (legfeljebb $3n - 6$), **csúcsa viszont tetszőlegesen sok lehet**.

A színezésnél a többszörös élek és a hurokélek nem számítanak (a hurokél színezhetetlenné tenné a gráfot, a párhuzamos élek pedig ugyanazt a feltételt ismétlik), ezért elég **egyszerű** síkbarajzolható gráfokat vizsgálni.

> **Segédtétel.** Minden egyszerű síkbarajzolható gráfnak van legfeljebb $5$ fokú csúcsa.

*Bizonyítás* (lásd a 39. szakaszt is). Indirekt, tegyük fel, hogy minden fok legalább $6$. Ekkor $2e = \sum_{v \in V(G)}\deg(v) \ge 6n$, tehát $e \ge 3n$. Ha $n \ge 3$, ez ellentmond az $e \le 3n - 6$ korlátnak; ha $n \le 2$, minden fok legfeljebb $1$. $\blacksquare$

> **Tétel (hatszín-tétel).** Minden egyszerű síkbarajzolható gráf csúcsai kiszínezhetők $6$ színnel.

*Bizonyítás.* Teljes indukció a csúcsok $n$ száma szerint („$6$ színű ceruzát veszünk”). $n \le 6$-ra nyilvánvaló. Legyen $G$ egy $n$ csúcsú egyszerű síkbarajzolható gráf. A segédtétel szerint van egy $v$ csúcsa, amelyre $\deg(v) \le 5$. **Vágjuk le** $v$-t (töröljük az éleivel együtt). A maradék $n - 1$ csúcsú gráf is egyszerű és síkbarajzolható, így az indukciós feltevés szerint $6$ színnel színezhető. A levágott $v$ még nincs kiszínezve; legfeljebb $5$ szomszédja van, ezek legfeljebb $5$ színt foglalnak, tehát jut neki szín: a hatodik. $\blacksquare$

> **Tétel (ötszín-tétel, Heawood, 1890).** Minden egyszerű síkbarajzolható gráf csúcsai kiszínezhetők $5$ színnel.

*Bizonyítás.* Ugyanúgy indulunk: teljes indukció $n$ szerint, $n \le 5$-re nyilvánvaló. Legyen $v$ egy legfeljebb $5$ fokú csúcs. Ha $\deg(v) \le 4$, a hatszín-tétel bizonyítása szó szerint működik: $v$-t levágva a maradék $5$ színnel színezhető, és $v$ legfeljebb $4$ szomszédja mellett jut neki az ötödik szín.

A baj akkor van, ha $\deg(v) = 5$: ekkor a szomszédai, $u_1, \dots, u_5$ elvben mind az $5$ színt elhasználhatják. Ha $u_1, \dots, u_5$ páronként össze volnának kötve, egy $K_5$ volna a gráfban — ez **lehetetlen**, mert a $K_5$ nem síkbarajzolható, egy síkbarajzolható gráf részgráfja pedig maga is síkbarajzolható. **Van tehát kettő, $x = u_i$ és $y = u_j$, amelyek között nincs él.**

Ebből az $(x, y, v)$ hármasból **élösszehúzással** egy „szupercsúcsot” készítünk: az $xv$ és az $yv$ élt összehúzzuk, vagyis $x$-et és $y$-t „becsúsztatjuk” $v$-be. A három csúcs helyére egyetlen $s$ csúcs kerül, amely $x$, $y$ és $v$ minden (rajtuk kívüli) szomszédjával szomszédos; a keletkező többszörös éleket egyszeresnek vesszük. (Hurokél nem keletkezik, mert $x$ és $y$ nem szomszédosak.) Az összehúzás a síkrajzon az élek mentén is elvégezhető, így a kapott $G'$ gráf **egyszerű, síkbarajzolható**, és $n - 2$ csúcsa van. Az indukciós feltevés szerint $G'$ kiszínezhető $5$ színnel.

Majd **visszacsináljuk a csúcs-összevonást**: $G$ minden $x$-től, $y$-tól és $v$-től különböző csúcsa megtartja a $G'$-beli színét, $x$ és $y$ pedig megkapja az $s$ színét. Ez jó (részleges) színezés:

- a többi csúcs közti élek $G'$-ben is megvannak;
- $x$ bármely $v$-től különböző szomszédja $G'$-ben $s$-nek is szomszédja volt, tehát más színű, mint $s$, vagyis mint $x$ — és ugyanígy $y$-ra;
- $x$ és $y$ azonos színű, de **nincsenek összekötve**.

Kivéve az $xv$ és az $yv$ élt: $v$-t még nem színeztük ki. De $v$ öt szomszédja között $x$ és $y$ azonos színű, így a szomszédai legfeljebb $4$ színt használnak — **jut neki az ötödik színből!** $\blacksquare$

::: kiegeszites
**Kiegészítés — miért nem működik ugyanez négy színnel?** Négy színnel a gond már egy $4$ fokú csúcsnál jelentkezik (a szomszédai mind a négy színt elhasználhatják), és két nem szomszédos szomszéd sem mindig létezik (a $K_4$-ben például nincs). Kempe 1879-ben az ún. **Kempe-láncokkal** próbálkozott: ha $v$ szomszédai között az $a$ és $c$ színű $u_1$ és $u_3$ nem köthető össze csupa $a$ és $c$ színű csúcson át vezető úttal, akkor az $u_1$-et tartalmazó $\{a, c\}$-színű komponensben a két színt felcserélve $u_1$ is $c$ színű lesz, és $v$-nek felszabadul az $a$; ha pedig összeköthetők, a síkbarajzolhatóság miatt ez a lánc „elzárja” $u_2$-t $u_4$-től a $\{b, d\}$ színekben, és ott lehet cserélni. Ez $4$ fokú csúcsra működik, $5$ fokúra azonban két cserét kellene egyszerre végrehajtani, és ezek elronthatják egymást — ezt a hibát vette észre Heawood. Az ötszín-tételt Heawood éppen Kempe-láncokkal bizonyította; a fenti, élösszehúzásos bizonyítás ennek egy egyszerűbb változata.
:::

### A Fáry-tétel

Az eddigi rajzainkon az élek gyakran görbék voltak. Kiderül, hogy erre egyszerű gráfoknál nincs szükség.

> **Tétel (Fáry István, 1948).** Minden egyszerű síkbarajzolható gráf lerajzolható úgy is, hogy az élei (egyenes) szakaszok legyenek.

Az előadáson a tételt nem bizonyítottuk. Példa: minden szabályos test élgráfja ilyen — a kocka élgráfja például egy négyzetbe rajzolt kisebb négyzet, a csúcsaik összekötve (lásd a 42. szakasz ábráját), a tetraéderé egy háromszög a középpontjával. Ugyanez a gráf görbe élekkel is lerajzolható volna; a tétel szerint azonban mindig van „szép”, egyenes vonalú rajz.

::: kiegeszites
**Kiegészítés — a Fáry-tétel bizonyítása.** Elég **maximális síkgráfokra** (triangulációkra) bizonyítani, hiszen minden egyszerű síkgráf élek hozzávételével trianguláció részgráfjává tehető, és a kész egyenes vonalú rajzból a hozzávett éleket egyszerűen kitöröljük. Egy legalább $3$ csúcsú trianguláció síkrajzában minden tartomány — a külső is — háromszög. Azt bizonyítjuk teljes indukcióval: *egy trianguláció síkrajza egyenes vonalú rajzzá alakítható úgy, hogy a külső háromszög tetszőleges előre megadott háromszög legyen.*

$n = 3$-ra a gráf egy háromszög, kész. Legyen $n \ge 4$, és legyenek $a, b, c$ a külső háromszög csúcsai. A fokszámösszeg $2e = 6n - 12$; mivel $n \ge 4$-re minden fok legalább $3$, az $a, b, c$ fokszámainak összege legalább $9$, így ha minden más csúcs foka legalább $6$ volna, a fokszámösszeg legalább $6(n - 3) + 9 = 6n - 9$ lenne — ellentmondás. Van tehát egy $a, b, c$-től különböző, $d \le 5$ fokú $v$ csúcs. Egy belső csúcs szomszédai egy $w_1, \dots, w_d$ kört alkotnak ($v$ körül a tartományok háromszögek).

Töröljük $v$-t: egy $d$-szög alakú tartomány keletkezik. Bontsuk fel ezt $d - 3$ átlóval háromszögekre úgy, hogy ne keletkezzen többszörös él: $d = 3$-ra nem kell semmi; $d = 4$-re a két átló közül legfeljebb az egyik lehet már él (ha $w_1w_3$ és $w_2w_4$ is él volna a tartományon kívül, ezek metszenék egymást), a másikat húzzuk be; $d = 5$-re válasszunk egy $w_i$ csúcsot, amely a vele nem szomszédos két $w_j$-vel sincs összekötve, és húzzuk be belőle a két átlót. Ilyen $w_i$ van: a már meglevő $w_jw_l$ „átló-élek” a tartományon kívül futnak, ezért nem metszhetik egymást; egy ötszögnek legfeljebb két egymást nem metsző átlója van, és két ilyen átlónak közös végpontja van, így ezek együtt legfeljebb három $w_j$-t érintenek. Az így kapott $n - 1$ csúcsú trianguláció külső háromszöge ugyanaz, így az indukciós feltevés szerint egyenes vonalúan lerajzolható a megadott külső háromszöggel. Az új átlókat törölve a $w_1, \dots, w_d$ csúcsok egy legfeljebb ötszöget határolnak. Ismert (és elemi geometriai esetszétválasztással igazolható), hogy minden legfeljebb ötszögnek — akár konkáv is — van olyan belső pontja, ahonnan az összes csúcsa „látszik”, vagyis a sokszög belsejében haladó szakasszal köthető össze vele; hatszögekre ez már nem igaz, ezért kellett egy legfeljebb $5$ fokú csúcs. Ide helyezve $v$-t, és összekötve $w_1, \dots, w_d$-vel, a trianguláció egyenes vonalú rajzát kapjuk. $\blacksquare$
:::

## 45. A dualitás további kérdései

**Duális gráfok a természetben.** Síkbeli elektromos áramkörökben (ellenállásokkal, tekercsekkel, kondenzátorokkal) a duális hálózatban a **soros** kapcsolásokból **párhuzamosak** lesznek és fordítva: két tartomány között két párhuzamos él a duálisban két egymás utáni (soros) élnek felel meg. A villamosmérnököknél jól ismert **csillag–delta átalakítás** is lényegében a duális gráf gondolata: egy $3$ fokú csúcs körül álló „csillag” ($K_{1,3}$) duálisa egy háromszög („delta”).

*Gondolkodjunk el rajta:* a matematika számtalan területén szerepel az, hogy **duális** — a lineáris algebrában a duális tér, a projektív geometriában a pontok és egyenesek szerepcseréje, az optimalizálásban a duális lineáris program. A közös bennük, hogy egy struktúrához egy „tükörképet” rendelünk, amelyben a szerepek felcserélődnek, és kétszer tükrözve visszakapjuk az eredetit.

**Igaz-e, hogy $(G^*)^* = G$?** Tipikusan igaz, de lehetnek trükkök.

::: kiegeszites
**Kiegészítés — mikor igaz, hogy $(G^*)^* = G$?** Ha $G$ összefüggő síkgráf, akkor igen. A $G^*$ minden tartományában pontosan egy $G$-csúcs van: a $G$ egy $u$ csúcsa körül a $G$-élek $e_1, \dots, e_d$ körüljárási sorrendben követik egymást, a nekik megfelelő $e_1^*, \dots, e_d^*$ duális élek pedig egy zárt vonalat alkotnak $u$ körül, amely egy $G^*$-tartományt határol, és ebben $u$ az egyetlen $G$-csúcs. Mivel a 43. szakasz szerint $G^*$-nak éppen $n$ tartománya van, ez kölcsönösen egyértelmű megfeleltetés $G$ csúcsai és $G^*$ tartományai között. Ha tehát $(G^*)^*$ csúcsait éppen $G$ csúcsaiba tesszük, akkor az $e^*$ élen átmenő $(e^*)^*$ él az $e^*$ két oldalán levő $G^*$-tartomány $G$-csúcsait, vagyis $e$ két végpontját köti össze: visszakaptuk $G$-t (egy síkrajzát).

Ha $G$ **nem összefüggő**, a dolog elromlik: $G^*$ mindig összefüggő (bármely két tartomány között átmehetünk a közöttük levő éleken át), így $(G^*)^*$ is az, tehát nem lehet egyenlő $G$-vel. Például két diszjunkt háromszög duálisa egy $3$ csúcsú gráf (a két háromszög belseje és a közös külső tartomány), amelynek duálisa összefüggő.
:::

**Igaz-e, hogy ha $G$ és $H$ izomorf gráfok, akkor $G^*$ és $H^*$ is izomorf?** **Nem!** A duális nem csak a gráftól, hanem a **síkrajztól** is függ: ugyanannak a gráfnak lehetnek lényegesen különböző síkrajzai.

*Ellenpélda.* Legyen $G$ egy $v$ csúcsban összeragasztott két háromszög és egy négyszög (három kör, egyetlen közös csúccsal).

- Ha a három kört egymás mellé rajzoljuk, a tartományok: a két háromszög belseje ($3$-$3$ él), a négyszög belseje ($4$ él) és a külső tartomány, amelyet mind a $10$ él határol.
- Ha az egyik háromszöget a négyszög belsejébe rajzoljuk, a tartományok: két háromszög belseje ($3$-$3$), a négyszög belsejének a háromszögön kívüli része ($4 + 3 = 7$ él) és a külső tartomány ($4 + 3 = 7$ él).

A duális csúcsainak fokszáma a tartományok határoló éleinek száma, így az első duális fokszámai $3, 3, 4, 10$, a másodiké $3, 3, 7, 7$: a két duális nem izomorf, pedig mindkettő ugyanannak a gráfnak a duálisa. (Whitney tétele szerint a 3-szorosan összefüggő síkgráfoknak a gömbön lényegében egyetlen rajzuk van, így ezek duálisa egyértelmű — a fenti $G$-nek viszont elvágó csúcsa van.)

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.88,
  v/.style={circle, draw=black, fill=black, inner sep=1.4pt},
  dv/.style={circle, draw=black, fill=white, thick, inner sep=1.7pt},
  edge/.style={draw=black, thick},
  dual/.style={draw=black!60, thick, dashed},
  flab/.style={font=\scriptsize}
]
  % Balra: egymás melletti rajz (3, 3, 4, 10)
  \begin{scope}[xshift=-3.6cm]
    \node[v, label=below:{\scriptsize $v$}] (v1) at (0, 0) {};
    \coordinate (a1) at (-1.35, -0.35); \coordinate (b1) at (-0.65, -1.25);
    \coordinate (c1) at (-0.55, 1.3);   \coordinate (d1) at (0.55, 1.3);
    \coordinate (e1) at (0.75, -1.05);  \coordinate (f1) at (1.85, -0.15); \coordinate (g1) at (0.95, 0.85);
    \draw[edge] (v1) -- (a1) -- (b1) -- (v1);
    \draw[edge] (v1) -- (c1) -- (d1) -- (v1);
    \draw[edge] (v1) -- (e1) -- (f1) -- (g1) -- (v1);
    \foreach \p in {a1,b1,c1,d1,e1,f1,g1} { \node[v] at (\p) {}; }
    \node[flab] at (-0.75, -0.58) {$3$};
    \node[flab] at (0.0, 0.85) {$3$};
    \node[flab] at (0.92, -0.05) {$4$};
    \node[flab] at (1.55, -1.15) {külső: $10$};

    % Dualis alatta
    \begin{scope}[yshift=-2.85cm]
      \node[dv, label=below:{\scriptsize $10$}] (O1) at (0.1, -0.45) {};
      \node[dv, label=above:{\scriptsize $3$}] (D1a) at (-1.35, 0.55) {};
      \node[dv, label=above:{\scriptsize $3$}] (D1b) at (0.1, 0.75) {};
      \node[dv, label=above:{\scriptsize $4$}] (D1c) at (1.55, 0.55) {};
      \draw[dual] (O1) to[bend left=18] (D1a);
      \draw[dual] (O1) -- (D1a);
      \draw[dual] (O1) to[bend right=18] (D1a);
      \draw[dual] (O1) to[bend left=18] (D1b);
      \draw[dual] (O1) -- (D1b);
      \draw[dual] (O1) to[bend right=18] (D1b);
      \draw[dual] (O1) to[bend left=22] (D1c);
      \draw[dual] (O1) to[bend left=8] (D1c);
      \draw[dual] (O1) to[bend right=8] (D1c);
      \draw[dual] (O1) to[bend right=22] (D1c);
      \node at (0.1, -1.2) {\footnotesize $G_1^*$: fokok $3, 3, 4, 10$};
    \end{scope}
  \end{scope}

  % Jobbra: háromszög a négyszög belsejében (3, 3, 7, 7)
  \begin{scope}[xshift=3.2cm]
    \node[v, label=above:{\scriptsize $v$}] (v2) at (0, 0) {};
    \coordinate (a2) at (-1.35, 0.55); \coordinate (b2) at (-1.35, -0.55);
    \coordinate (e2) at (1.2, -1.25);  \coordinate (f2) at (2.6, 0.0); \coordinate (g2) at (1.2, 1.25);
    \coordinate (c2) at (1.05, 0.42);  \coordinate (d2) at (1.05, -0.42);
    \draw[edge] (v2) -- (a2) -- (b2) -- (v2);
    \draw[edge] (v2) -- (e2) -- (f2) -- (g2) -- (v2);
    \draw[edge] (v2) -- (c2) -- (d2) -- (v2);
    \foreach \p in {a2,b2,e2,f2,g2,c2,d2} { \node[v] at (\p) {}; }
    \node[flab] at (-0.92, 0.0) {$3$};
    \node[flab] at (0.70, 0.0) {$3$};
    \node[flab] at (1.85, 0.0) {$7$};
    \node[flab] at (-0.1, -1.15) {külső: $7$};

    % Dualis alatta
    \begin{scope}[yshift=-2.85cm, xshift=0.5cm]
      \node[dv, label={[label distance=5pt]below:{\scriptsize $3$}}] (D2a) at (-1.65, 0.1) {};
      \node[dv, label={[label distance=5pt]below:{\scriptsize $7$}}] (O2)  at (-0.55, 0.1) {};
      \node[dv, label={[label distance=5pt]below:{\scriptsize $7$}}] (D2c) at (0.55, 0.1) {};
      \node[dv, label={[label distance=5pt]below:{\scriptsize $3$}}] (D2b) at (1.65, 0.1) {};
      \draw[dual] (D2a) to[bend left=24] (O2);
      \draw[dual] (D2a) -- (O2);
      \draw[dual] (D2a) to[bend right=24] (O2);
      \draw[dual] (O2) to[bend left=28] (D2c);
      \draw[dual] (O2) to[bend left=10] (D2c);
      \draw[dual] (O2) to[bend right=10] (D2c);
      \draw[dual] (O2) to[bend right=28] (D2c);
      \draw[dual] (D2c) to[bend left=24] (D2b);
      \draw[dual] (D2c) -- (D2b);
      \draw[dual] (D2c) to[bend right=24] (D2b);
      \node at (0.0, -1.2) {\footnotesize $G_2^*$: fokok $3, 3, 7, 7$};
    \end{scope}
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}
