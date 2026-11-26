## 40. Nem síkbarajzolható gráfok és a Kuratowski-tétel

Az előző szakaszban levezetett élszám-korlátok rendkívül erős eszközt adnak a kezünkbe: segítségükkel bebizonyíthatjuk bizonyos gráfokról, hogy **lehetetlen őket síkba rajzolni**!

### 1. Példa: az 5-csúcsú teljes gráf ($K_5$)

Tekintsük a $K_5$ teljes gráfot:

- csúcsok száma: $n = 5$,
- élek száma: $e = \binom{5}{2} = 10$.

Tegyük fel indirekt, hogy $K_5$ síkbarajzolható! Ekkor teljesülnie kellene az egyszerű síkgráfokra vonatkozó $e \le 3n - 6$ egyenlőtlenségnek:
$$10 \le 3 \cdot 5 - 6 = 15 - 6 = 9.$$
Ez azonban nyilvánvaló képtelenség: $10 \le 9$ nem igaz!
> **Állítás.** A $K_5$ teljes gráf **nem síkbarajzolható**.

### 2. Példa: a „három ház – három kút” gráf ($K_{3,3}$)

Egy klasszikus fejtörő így szól: három háznak és három kútnak szeretnénk gáz-, víz- és villanyvezetéket építeni úgy, hogy minden háztól mindhárom kúthoz fusson vezeték, de a vezetékek sehol se keresztezzék egymást. Lehetséges ez a síkban?
Ez a feladat a $K_{3,3}$ teljes páros gráf síkbarajzolhatóságát kérdezi:

- csúcsok száma: $n = 3 + 3 = 6$,
- élek száma: $e = 3 \times 3 = 9$.

Próbáljuk meg először az általános korlátot:
$$e \le 3n - 6 = 3 \cdot 6 - 6 = 12.$$
Itt $9 \le 12$ teljesül!
**Vigyázat:** attól még, hogy a $3n - 6 \ge e$ feltétel teljesül, a gráf **még nem feltétlenül síkbarajzolható**! (Ez a feltétel csak *szükséges*, de nem elégséges.)

Vegyük észre azonban, hogy $K_{3,3}$ **páros gráf**! A 35. szakasz szerint páros gráfban nincs páratlan kör, így nincs $3$ hosszú kör sem: minden köre legalább $4$ élből áll ($p = 4$).
Alkalmazzuk a páros síkgráfokra érvényes szigorúbb korlátot:
$$e \le 2n - 4.$$
Számoljunk:
$$9 \le 2 \cdot 6 - 4 = 12 - 4 = 8.$$
Ez ellentmondás, hiszen $9 \le 8$ hamis!
> **Állítás.** A $K_{3,3}$ gráf **nem síkbarajzolható** (a három ház – három kút feladat síkban nem oldható meg).

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  edge/.style={draw=black!70, thick}
]
  % K_5
  \begin{scope}[xshift=-4.6cm]
    \foreach \i in {1,...,5} {
      \node[v] (k\i) at ({90 + (\i-1)*72}:1.2) {};
    }
    \foreach \i in {1,...,4} {
      \pgfmathtruncatemacro{\nexti}{\i+1}
      \foreach \j in {\nexti,...,5} {
        \draw[edge] (k\i) -- (k\j);
      }
    }
    \node at (0, -2.05) {\footnotesize\begin{tabular}{c} \textbf{$K_5$} \\ $n=5, \, e=10$ \\ $10 \le 3(5)-6 = 9 \text{ (ellentmondás)}$ \end{tabular}};
  \end{scope}

  % K_{3,3}
  \begin{scope}[xshift=0cm]
    \node[v] (h1) at (-1.0, 1.0) {};
    \node[v] (h2) at (0, 1.0) {};
    \node[v] (h3) at (1.0, 1.0) {};
    \node[v] (w1) at (-1.0, -0.6) {};
    \node[v] (w2) at (0, -0.6) {};
    \node[v] (w3) at (1.0, -0.6) {};
    \foreach \i in {1,2,3} {
      \foreach \j in {1,2,3} {
        \draw[edge] (h\i) -- (w\j);
      }
    }
    \node[above=0.08cm of h2] {\footnotesize 3 ház};
    \node[below=0.08cm of w2] {\footnotesize 3 kút};
    \node at (0, -2.05) {\footnotesize\begin{tabular}{c} \textbf{$K_{3,3}$} \\ $n=6, \, e=9$ \\ $9 \le 2(6)-4 = 8 \text{ (ellentmondás)}$ \end{tabular}};
  \end{scope}

  % Subdivision
  \begin{scope}[xshift=4.6cm]
    \node[v, label=left:{$u$}] (s1) at (-1.2, 0.7) {};
    \node[v, label=right:{$v$}] (s2) at (1.2, 0.7) {};
    \draw[edge] (s1) -- (s2);
    \node[below=0.1cm of s1, xshift=1.2cm] {\footnotesize él: $uv$};

    \node at (0, -0.1) {$\Downarrow$ \footnotesize élfelosztás};

    \node[v, label=left:{$u$}] (t1) at (-1.2, -0.9) {};
    \node[circle, draw=black, fill=white, inner sep=1.8pt, label=above:{$w$}] (t2) at (0, -0.9) {};
    \node[v, label=right:{$v$}] (t3) at (1.2, -0.9) {};
    \draw[edge] (t1) -- (t2) -- (t3);
    \node at (0, -1.6) {\footnotesize soros bővítés ($u-w-v$)};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Soros bővítés és topológikus izomorfia

Mi történik, ha egy nem síkbarajzolható gráfban egy élt felosztunk egy új $2$-fokú csúcs beszúrásával?

> **Definíció (élfelosztás, soros bővítés).** Egy $G$ gráf egy $uv$ élének **felosztásán** (vagy soros bővítésén) azt értjük, hogy az $uv$ élt töröljük, bevezetünk egy új $w$ csúcsot, és behúzzuk az $uw$ és $wv$ éleket (azaz az élt egy $2$ hosszú úttal helyettesítjük).
> Két gráf **topologikusan izomorf** (vagy egymással homeomorf), ha mindkettő megkapható egyazon gráfból élek véges sokszori felosztásával.

Nyilvánvaló, hogy egy él megtörése (új $2$-fokú csúcsok elhelyezése az él mentén) nem változtat azon, hogy a gráf lerajzolható-e metszések nélkül: ha az eredeti gráf nem fért el a síkban, a felosztott változat sem fog!

### A Kuratowski-tétel

*„$K_5$ és $K_{3,3}$ a főbűnösök: ha egy gráf nem síkbarajzolható, miattuk van.”*
Kazimierz Kuratowski lengyel matematikus 1930-ban bebizonyította, hogy e két gráfon és felosztásaikon kívül nincs más akadálya a síkbarajzolhatóságnak:

> **Tétel (Kuratowski-tétel, 1930).** Egy tetszőleges $G$ gráf pontosan akkor síkbarajzolható, ha **nem tartalmaz olyan részgráfot**, amely $K_5$-tel vagy $K_{3,3}$-mal topologikusan izomorf (azaz nem tartalmaz felosztott $K_5$-öt vagy felosztott $K_{3,3}$-at).

A tétel két iránya közötti különbség alapvető:

- **$\implies$ (a könnyű irány):** Ha $G$ tartalmaz felosztott $K_5$-öt vagy $K_{3,3}$-at, akkor $G$ nem lehet síkbarajzolható. Ha ugyanis $G$ lerajzolható lenne metszések nélkül, akkor a részgráfja is síkban lenne, és a $2$-fokú osztópontokat „kiegyenesítve” $K_5$ vagy $K_{3,3}$ metszésmentes síkrajzát kapnánk, amiről már beláttuk, hogy lehetetlen!
- **$\impliedby$ (a nehéz irány):** Ha egy gráf nem síkbarajzolható, akkor **szükségképpen tartalmaz** egy felosztott $K_5$ vagy $K_{3,3}$ részgráfot. Ennek bizonyítása jóval mélyebb gráfelméleti és topológiai eszközöket igényel.

::: kiegeszites
**Kiegészítés — a Kuratowski-tétel nehéz irányának bizonyítása** (Thomassen gondolatmenete, Diestel tankönyvének felépítésében). A felosztott $K_5$-öt és $K_{3,3}$-at röviden **Kuratowski-részgráfnak** nevezzük. Azt kell belátnunk, hogy *ha $G$-ben nincs Kuratowski-részgráf, akkor $G$ síkbarajzolható*. Egy topológiai tényt bizonyítás nélkül használunk: *egy 2-szeresen összefüggő síkgráf minden tartományát egy kör határolja* (ez a Jordan-féle görbetétel következménye).

**Fogalmak.** Egy gráf **$k$-szorosan összefüggő**, ha legalább $k + 1$ csúcsa van, és bármely $k - 1$ csúcsát törölve összefüggő marad. A $H$ gráf a $G$ **minorja**, ha $G$-ben vannak olyan páronként diszjunkt, összefüggő részgráfot feszítő $V_h$ csúcshalmazok ($h \in V(H)$, ezek az **ágak**), hogy $H$ minden $hh'$ élére fut él $V_h$ és $V_{h'}$ között. (Szemléletesen: $H$ megkapható $G$-ből élek és csúcsok törlésével és élek összehúzásával.) A $G/xy$ jelöli azt a gráfot, amelyet az $xy$ él összehúzásával kapunk: $x$ és $y$ helyére egyetlen új csúcs kerül, amely $x$ és $y$ minden szomszédjával szomszédos (a többszörös éleket egyszeresnek vesszük).

**1. lemma.** *Ha $G$-nek minorja a $K_5$ vagy a $K_{3,3}$, akkor $G$-ben van Kuratowski-részgráf.*

*Bizonyítás.* Legyen $G_0 \subseteq G$ egy minimális részgráf, amelynek még minorja $K_5$ vagy $K_{3,3}$, a $V_h$ ágakkal. A minimalitás miatt minden $V_h$ egy $T_h$ fát feszít, az ágak között a minorhoz szükséges éleken kívül nincs él (mindegyikből pontosan egy), és $T_h$ minden levele ilyen „kifutó” él végpontja. Ha $H = K_{3,3}$, minden ágból $3$ él fut ki; a $T_h$ fában a három kifutási pontot összekötő utak egy közös pontban találkoznak (egy fában bármely három csúcsnak van „mediánja”), így $T_h$-ban van egy csúcs, amelyből három diszjunkt út vezet a kifutási pontokhoz. Ezeket a csúcsokat választva elágazási pontnak felosztott $K_{3,3}$-at kapunk. Ha $H = K_5$, minden ágból $4$ él fut ki. A négy kifutási pontot összekötő minimális $T_h$ fa vagy egy „csillag” (van egy csúcs, amelyből négy — esetleg $0$ hosszú — diszjunkt út vezet a kifutási pontokhoz), vagy két különböző csúcsa van ($G_0$-ban $3$ fokú elágazási pontok), $a$ és $b$, amelyek $T_h$-ban egy úttal kapcsolódnak úgy, hogy két kifutási pont az $a$-hoz, kettő a $b$-hez „tartozik” (ezekhez $T_h$-ban akár $0$ hosszú utakkal). Ha mind az öt ág csillag, a középpontjaik egy felosztott $K_5$ elágazási pontjai. Ha például $T_1$ nem csillag, és az $a$-hoz a $V_2$, $V_3$, a $b$-hez a $V_4$, $V_5$ felé kifutó él tartozik, akkor felosztott $K_{3,3}$-at kapunk az $\{a, V_4, V_5\}$ és $\{b, V_2, V_3\}$ osztályokkal: $a$–$b$ ($T_1$-ben), $a$–$V_2$, $a$–$V_3$, $b$–$V_4$, $b$–$V_5$ (a kifutó élek mentén) és $V_i$–$V_j$ ($i \in \{4, 5\}$, $j \in \{2, 3\}$, az ágak közti élek). Itt minden $V_j$ ágban a három felhasznált kifutási pont mediánja lesz az elágazási pont, mint előbb. $\blacksquare$

**2. lemma.** *Minden legalább $5$ csúcsú, 3-szorosan összefüggő $G$ gráfnak van olyan $xy$ éle, hogy $G/xy$ is 3-szorosan összefüggő.*

*Bizonyítás.* Tegyük fel, hogy nincs ilyen él. Ekkor minden $xy$ élre $G/xy$-ban van legfeljebb két csúcsból álló elvágó halmaz. Ez tartalmazza az összehúzással kapott csúcsot (különben $G$-ben is elvágó volna), így van olyan $z$ csúcs, hogy $\{x, y, z\}$ elvágja $G$-t. Válasszuk az $xy$ élt és a $z$ csúcsot úgy, hogy $G - \{x, y, z\}$ legkisebb komponense, $C$, a lehető legkisebb legyen. A 3-szoros összefüggőség miatt $x$, $y$, $z$ mindegyikének van szomszédja $G - \{x,y,z\}$ minden komponensében (különben két csúcs is elvágna). Legyen $v$ a $z$ egy szomszédja $C$-ben. A $zv$ élhez is van egy $w$, hogy $\{z, v, w\}$ elvágja $G$-t. Mivel $xy$ él, az $\{x, y\} \setminus \{w\}$ csúcsok $G - \{z,v,w\}$ ugyanazon komponensébe esnek; legyen $D$ egy másik komponens. $D$ nem tartalmazza sem $x$-et, sem $y$-t, sem $z$-t. A $v$-nek van szomszédja $D$-ben, és $v$ szomszédai $C \cup \{x, y, z\}$-ben vannak, így $D$ metszi $C$-t; mivel $D$ összefüggő és elkerüli $x$-et, $y$-t, $z$-t, ezért $D \subseteq C$, sőt $v \notin D$ miatt $D \subsetneq C$. Ez ellentmond $C$ minimalitásának. $\blacksquare$

**3. lemma.** *Minden 3-szorosan összefüggő gráf, amelynek sem a $K_5$, sem a $K_{3,3}$ nem minorja, síkbarajzolható.*

*Bizonyítás.* Indukció a csúcsszám szerint. A legkisebb ilyen gráf a $K_4$, amely síkbarajzolható. Legyen $|V(G)| \ge 5$, és a 2. lemma szerint $xy$ egy olyan él, hogy $G/xy$ 3-szorosan összefüggő. $G/xy$ minorjai $G$-nek is minorjai, így az indukciós feltevés szerint $G/xy$ síkbarajzolható; vegyünk egy síkrajzát, és legyen $v$ az összehúzással kapott csúcs. $G/xy - v$ 2-szeresen összefüggő, így a $v$-t tartalmazó tartományát egy $C$ kör határolja, és $v$ minden szomszédja $C$-n van. Legyenek $x_1, \dots, x_k$ az $x$-nek $C$-n fekvő szomszédai (az $y$-on kívüli szomszédai) körüljárási sorrendben, és $P_i$ a $C$ íve $x_i$-től $x_{i+1}$-ig (indexek modulo $k$).

- *Ha $y$ minden ($x$-től különböző) szomszédja ugyanazon a $P_i$ íven van* (a végpontokat is beleértve), akkor $G$ síkbarajzolható: $v$ helyére $x$-et rajzolva, az $x$–$x_j$ éleket megtartva, $y$-t az $xx_i$, $xx_{i+1}$ élek és a $P_i$ ív által határolt területre téve, $y$ összeköthető $x$-szel és a szomszédaival metszés nélkül.
- *Különben* két eset lehetséges. Ha $y$-nak van szomszédja egy $P_i$ ív belsejében és egy azon kívül, akkor ezek, valamint $x_i$ és $x_{i+1}$ váltakozva követik egymást a $C$ körön: $x', y', x'', y''$ (ahol $x', x''$ az $x$, $y', y''$ az $y$ szomszédai). Ha $y$ minden szomszédja $x$-szomszéd, akkor vagy legalább három közös szomszéd van, vagy két, a körön nem egymást követő $x_a$, $x_b$, és ekkor a két $C$-ív mindegyikén van további $x$-szomszéd — megint váltakozó négyest kapunk. Három közös szomszéd ($a, b, c$) esetén $x, y, a, b, c$ egy felosztott $K_5$ elágazási pontjai (az $a, b, c$ közti utak a $C$ ívei). Váltakozó $x', y', x'', y''$ esetén $\{x, y', y''\}$ és $\{y, x', x''\}$ egy felosztott $K_{3,3}$ két osztálya (az $y'$–$x'$, $x'$–$y''$, $y''$–$x''$, $x''$–$y'$ utak a $C$ négy íve). Mindkettő ellentmond a feltevésnek (az 1. lemma megfordítása: egy Kuratowski-részgráf minort is ad). $\blacksquare$

**4. lemma.** *Legyen $G$ olyan gráf, amelyben nincs Kuratowski-részgráf, de bármely új él behúzásával keletkezne („élmaximális”), és legalább $5$ csúcsa van. Ha $G$ nem 3-szorosan összefüggő, akkor van két olyan valódi feszített részgráfja, $G_1$ és $G_2$, hogy $G = G_1 \cup G_2$, $G_1 \cap G_2$ egyetlen él (két szomszédos csúcs), és $G_1$, $G_2$ is élmaximális Kuratowski-részgráf nélküli gráf.*

*Bizonyítás.* $G$ nem teljes (a $K_5$ maga Kuratowski-részgráf), így van egy legfeljebb $2$ elemű $S$ elvágó halmaza; válasszunk minimálisat, és legyen $G_1$, $G_2$ két olyan feszített részgráf, amelyek uniója $G$, közös részük $S$, és $S$ minden csúcsának van szomszédja $G_i - S$ minden komponensében (különben $S$ egy valódi része is elvágna). Egy új $e$ élt behúzva keletkezik egy $K$ Kuratowski-részgráf $G + e$-ben. A $K_5$ és a $K_{3,3}$ 3-szorosan összefüggő, ezért $K$ elágazási pontjait nem választhatja el $S$: mind ugyanabban a $G_i$-ben vannak, mondjuk $G_1$-ben. Így $K$ a $G_2 - S$ részt legfeljebb egyetlen, $S$ két csúcsa közötti útszakasszal érinti.

- Ha $S = \emptyset$, egy $G_1$ és $G_2$ közé húzott él egyetlen körnek sem lehetne része — ellentmondás.
- Ha $S = \{s\}$, kössük össze $s$ egy $G_1$-beli $v_1$ és egy $G_2$-beli $v_2$ szomszédját. A keletkező $K$ a $G_2$ oldalon csak az $s \dots v_2v_1$ szakaszt használhatja; ezt az $sv_1$ élre cserélve $G$-ben is Kuratowski-részgráfot kapnánk — ellentmondás.
- Tehát $S = \{x, y\}$. Ha $xy$ nem volna él, behúzva a keletkező $K$ Kuratowski-részgráf használja az $xy$ élt. Ekkor $K$ nem léphet be $G_2 - S$-be (különben az ottani $x$–$y$ útszakasz az $xy$ éllel együtt két felosztott élet adna az $x$ és $y$ csúcsok között, ami sem $K_5$-ben, sem $K_{3,3}$-ban nem lehetséges), tehát $K \subseteq G_1 + xy$. Így $K$-ban az $xy$ élt egy $G_2$-n átmenő $x$–$y$ útra cserélhetjük (ilyen van, mert $x$-nek és $y$-nak is van szomszédja $G_2 - S$ ugyanazon komponensében), és $G$-ben kapunk Kuratowski-részgráfot — ellentmondás. Tehát $xy \in E(G)$.

Végül ha $G_1$-be húzunk egy új $e$ élt, annak legalább az egyik végpontja $G_1 - S$-ben van (mert $xy$ már él). A $G + e$-ben keletkező $K$ Kuratowski-részgráf elágazási pontjai nem lehetnek $G_2$-ben (különben $K$ a $G_1$-en átmenő, $e$-t tartalmazó $x$–$y$ szakaszt az $xy$ élre cserélve már $G_2 \subseteq G$-ben is Kuratowski-részgráfot adna), tehát mind $G_1$-ben vannak. Így $K$-ban a $G_2$-n átmenő esetleges szakaszt az $xy$ élre cserélve Kuratowski-részgráfot kapunk $G_1 + e$-ben; tehát $G_1$ élmaximális, és ugyanígy $G_2$ is. $\blacksquare$

**A tétel bizonyítása.** Legyen $G$ Kuratowski-részgráf nélküli; húzzunk be új éleket, amíg ez lehetséges anélkül, hogy Kuratowski-részgráf keletkezne. Elég belátni, hogy a kapott élmaximális $G'$ síkbarajzolható; ezt a csúcsszám szerinti indukcióval tesszük. Ha $|V(G')| \le 4$, $G'$ a $K_4$ részgráfja, tehát síkbarajzolható. Ha $G'$ 3-szorosan összefüggő, az 1. lemma szerint nincs $K_5$ vagy $K_{3,3}$ minorja, így a 3. lemma szerint síkbarajzolható. Különben a 4. lemma szerint $G' = G_1 \cup G_2$, ahol $G_1 \cap G_2$ az $xy$ él, és $G_1$, $G_2$ kisebb élmaximális gráfok, tehát az indukciós feltevés szerint síkbarajzolhatók. Rajzoljuk le mindkettőt úgy, hogy az $xy$ él a külső tartomány határán legyen (ez mindig elérhető, lásd a 41. szakaszt), és illesszük a két rajzot össze az $xy$ él mentén: $G'$ síkrajzát kapjuk. $\blacksquare$
:::

::: kiegeszites
**Kiegészítés — Wagner tétele és a Négyszín-tétel.**
Klaus Wagner 1937-ben a Kuratowski-tétel egy rokon megfogalmazását adta: egy gráf pontosan akkor síkbarajzolható, ha nem tartalmaz $K_5$ vagy $K_{3,3}$ **minort** (ahol az élfelosztások helyett élek összehúzása is megengedett).
A síkgráfok elméletének leghíresebb eredménye a **Négyszín-tétel** (Appel és Haken, 1976): minden síkbarajzolható egyszerű gráf csúcsai kiszínezhetők legfeljebb $4$ színnel (azaz $\chi(G) \le 4$). Ezzel a tartományok színezésének kérdése is lezárul: a dualitás elve szerint (43. szakasz) egy síkrajz tartományainak jó színezése megfelel a duális síkgráf csúcsszínezésének, így bármely síkbeli térkép kiszínezhető legfeljebb $4$ színnel úgy, hogy a közös határvonallal rendelkező országok különböző színt kapjanak.
:::

---

## 41. Gráfok a gömbön és a tóruszon

Foglaljuk össze, amit a síkbarajzolható gráfokról eddig tudunk. Összefüggő síkgráfra $n - e + t = 2$ (Euler-formula); ebből egyszerű gráfra, $n \ge 3$ esetén $e \le 3n - 6$; végül a Kuratowski-tétel szerint egy gráf pontosan akkor **nem** síkbarajzolható, ha van benne $K_5$ vagy $K_{3,3}$, vagy ezek valamelyikének soros bővítése (felosztása).

**Mi a helyzet más felületekkel?** Ugyanúgy kérdezhetjük, hogy egy gráf lerajzolható-e metszés nélkül egy gömb vagy egy úszógumi (tórusz) felületére.

### A gömb

> **Tétel.** Egy $G$ gráf pontosan akkor síkbarajzolható, ha a gömbre is lerajzolható (metszés nélkül).

*Bizonyítás.* **$\Rightarrow$ („matrica”).** Egy síkrajz egy korlátos körlapon belül fekszik; ezt a körlapot — mint egy matricát — rásimíthatjuk a gömbre úgy, hogy a rajz semelyik két pontja ne kerüljön egymásra. (Pontosan: az alábbi sztereografikus vetítés megfordításával.)

**$\Leftarrow$ (sztereografikus vetítés).** Tegyük a gömböt a síkra úgy, hogy a **déli pólusában** ($D$) érintse a síkot, és legyen $\text{É}$ az **északi pólus**. A gömb minden $P \ne \text{É}$ pontjához rendeljük hozzá az $\text{É}P$ egyenes és a sík $P'$ metszéspontját.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.1,
  pt/.style={circle, draw=black, fill=black, inner sep=1.4pt}
]
  \draw[thick] (-3.2, 0) -- (3.2, 0) node[right] {\footnotesize sík};
  \draw[thick] (0, 1) circle (1);
  \draw[draw=black!50, dashed] (0, 2) -- (-1, 0);
  \draw[draw=black!50, dashed] (0, 2) -- (2, 0);
  \node[pt, label=above:{\small $\text{É}$}] at (0, 2) {};
  \node[pt, label=below:{\small $D$}] at (0, 0) {};
  \node[pt, label=left:{\small $P$}] at (-0.8, 0.4) {};
  \node[pt, label=below:{\small $P'$}] at (-1, 0) {};
  \node[pt, label=right:{\small $Q$}] at (1, 1) {};
  \node[pt, label=below:{\small $Q'$}] at (2, 0) {};
  \node[align=center] at (0, -1.0) {\footnotesize Sztereografikus vetítés: a gömb $P$ pontjának képe \\ \footnotesize az $\text{É}P$ egyenes és a sík metszéspontja.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

Ez a hozzárendelés **kölcsönösen egyértelmű** a gömbfelület $\text{É}$-tól különböző pontjai és a sík pontjai között: minden $P \ne \text{É}$ pontra az $\text{É}P$ egyenes nem párhuzamos a síkkal, tehát metszi, és megfordítva, minden $P'$ síkbeli pontra az $\text{É}P'$ egyenes $\text{É}$-n kívül pontosan egy pontban metszi a gömböt. A leképezés mindkét irányban folytonos, így folytonos görbéket folytonos görbékbe, egymást nem metsző görbéket egymást nem metsző görbékbe visz. Az $\text{É}$ pontnak nincs képe — a sík „végtelen távoli pontjának” felel meg: ha $P \to \text{É}$, akkor $P'$ a végtelenbe tart.

Ha tehát $G$ a gömbre van rajzolva, forgassuk el a gömböt úgy, hogy $\text{É}$ ne essen a rajzra (se csúcsra, se élre); ez lehetséges, mert a rajz nem fedi le a gömböt. A sztereografikus vetítés ekkor $G$ egy síkrajzát adja. $\blacksquare$

Közben a gömbre rajzolt gráfok és a síkba rajzolt gráfok tartományai is megfelelnek egymásnak, egyetlen különbséggel: **az $\text{É}$-t tartalmazó tartományból lesz a végtelen (külső) tartomány.** Ebből egy hasznos következmény adódik.

> **Következmény.** Egy síkgráf bármelyik tartománya „kifordítható” külső tartománnyá: van olyan síkrajz, amelyben éppen ez a tartomány a külső.

*Bizonyítás.* Vetítsük fel a síkrajzot a gömbre, forgassuk el a gömböt úgy, hogy $\text{É}$ a kiszemelt tartomány belsejébe kerüljön, majd vetítsük vissza a síkra. $\blacksquare$

Speciálisan bármelyik él (vagy csúcs) a külső tartomány határára vihető — ezt a Kuratowski-tétel bizonyításában használtuk.

### A tórusz

A tórusz (úszógumi) felületén több hely van: az élek a „fül” körül is megkerülhetik egymást.

> **Állítás.** A $K_5$ lerajzolható a tóruszra, sőt a $K_6$ is (és még a $K_7$ is).

A $K_5$-re ez könnyen látható: a $K_5$-ből egy élt elhagyva síkbarajzolható gráfot kapunk (próbáljuk ki!), ezt a tórusz egy darabjára rajzolva a hiányzó élt a „fül” körül vezethetjük át.

**Feladat.** Síkban és gömbön $n - e + t = 2$, ebből jött ki, hogy $e \le 3n - 6$. Mennyi lesz a tóruszon $n - e + t$, és mit kapunk ebből $e$-re? Ez a szám a **felületre jellemző**: nem függ attól, milyen gráfot rajzoltunk a felületre.

::: kiegeszites
**Kiegészítés — a feladat megoldása.** Képzeljük el a tóruszt egy négyzetként, amelynek szemközti oldalait (az irányítást megtartva) összeragasztottuk. Rajzoljuk fel a négyzet négy csúcsát (ez a ragasztás után egyetlen pont) és két oldalát (a ragasztás után két kör, egy „hosszanti” és egy „keresztirányú”): $n = 1$, $e = 2$, és a négyzet belseje az egyetlen tartomány, $t = 1$. Tehát
$$n - e + t = 1 - 2 + 1 = 0.$$
Általában is igaz, hogy minden olyan tóruszra rajzolt összefüggő gráfra, amelynek minden tartománya egy körlappal egyenértékű (nem „kerüli meg” a fület), $n - e + t = 0$, a többire pedig $n - e + t \ge 0$; ezt az Euler-formula bizonyításához hasonló invariáns-érveléssel lehet igazolni. A $g$ fülű („$g$ lyukú”) felületen a megfelelő szám $2 - 2g$ — ez a felület **Euler-karakterisztikája** (a gömbre $g = 0$, a tóruszra $g = 1$).

*Élszám-korlát.* Egyszerű gráf tóruszra rajzolt képében minden tartományt legalább $3$ él határol, így a 39. szakasz kettős leszámlálása szerint $3t \le 2e$. Az $n - e + t \ge 0$ egyenlőtlenségbe $t \le \frac{2e}{3}$-ot írva $n - e + \frac{2e}{3} \ge 0$, azaz
$$e \le 3n.$$
A $K_7$-nek $n = 7$ csúcsa és $e = 21 = 3 \cdot 7$ éle van: éppen a korlátot éri el (a tóruszra rajzolva $14$ háromszög tartománya van, $7 - 21 + 14 = 0$). A $K_8$-nak viszont $28 > 24$ éle van, tehát **a $K_8$ már nem rajzolható a tóruszra.** (A tóruszra rajzolt gráfok kromatikus száma legfeljebb $7$, és a $K_7$ mutatja, hogy ez éles — Heawood tétele.)
:::

## 42. Az Euler-féle poliédertétel és a szabályos testek

Euler eredetileg nem síkgráfokra, hanem **testekre** fogalmazta meg a formuláját.

> **Tétel (Euler-féle poliédertétel).** Ha egy konvex, síklapokkal határolt test (konvex poliéder) csúcsainak száma $c$, éleinek száma $\text{é}$, lapjainak száma $l$, akkor
> $$c - \text{é} + l = 2.$$

*Bizonyítás.* Válasszunk egy $O$ pontot a test belsejében, és tegyük a testet egy $O$ középpontú, őt tartalmazó gömbbe. Az $O$-ból kiinduló félegyenesekkel vetítsük ki a test felszínét a gömbre: mivel a test konvex, minden $O$-ból induló félegyenes pontosan egy pontban metszi a felszínét, így ez a vetítés kölcsönösen egyértelmű és folytonos. A test csúcsainak és éleinek képe egy **gömbre rajzolt gráf**, amelynek tartományai a lapok képei. A 41. szakasz szerint ezt (sztereografikus vetítéssel) levetíthetjük a síkra: egy összefüggő síkgráfot kapunk $n = c$ csúccsal, $e = \text{é}$ éllel és $t = l$ tartománnyal. Az Euler-formula szerint $c - \text{é} + l = 2$. $\blacksquare$

A tétel így is olvasható: *a $0$ dimenziós lapok (csúcsok), az $1$ dimenziós lapok (élek) és a $2$ dimenziós lapok száma váltakozó előjellel összeadva $2$.* Itt egy $k$ dimenziós **lap** a test határának egy olyan része, amely egy $k$ dimenziós síkban fekszik: a csúcs egyetlen pont, az él egy szakasz, a lap egy sokszög.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  edge/.style={draw=black!70, thick}
]
  \begin{scope}[xshift=-3cm]
    \node[v] (a) at (90:1.4) {};
    \node[v] (b) at (210:1.4) {};
    \node[v] (c) at (330:1.4) {};
    \node[v] (d) at (0, 0) {};
    \draw[edge] (a) -- (b) -- (c) -- (a);
    \draw[edge] (a) -- (d);
    \draw[edge] (b) -- (d);
    \draw[edge] (c) -- (d);
    \node at (0, -1.7) {\footnotesize tetraéder: $4 - 6 + 4 = 2$};
  \end{scope}
  \begin{scope}[xshift=3cm]
    \node[v] (p1) at (-1.2, -1.2) {};
    \node[v] (p2) at (1.2, -1.2) {};
    \node[v] (p3) at (1.2, 1.2) {};
    \node[v] (p4) at (-1.2, 1.2) {};
    \node[v] (q1) at (-0.5, -0.5) {};
    \node[v] (q2) at (0.5, -0.5) {};
    \node[v] (q3) at (0.5, 0.5) {};
    \node[v] (q4) at (-0.5, 0.5) {};
    \draw[edge] (p1) -- (p2) -- (p3) -- (p4) -- (p1);
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q1);
    \draw[edge] (p1) -- (q1);
    \draw[edge] (p2) -- (q2);
    \draw[edge] (p3) -- (q3);
    \draw[edge] (p4) -- (q4);
    \node at (0, -1.7) {\footnotesize kocka (hexaéder): $8 - 12 + 6 = 2$};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Hány szabályos test van?

> **Definíció.** Egy konvex poliéder **szabályos**, ha minden lapja ugyanolyan (egybevágó) szabályos $p$-szög, és minden csúcsában ugyanannyi, $q$ lap (és él) találkozik.

Itt $p \ge 3$ (egy sokszögnek legalább három oldala van) és $q \ge 3$ (egy test csúcsában legalább három lap találkozik).

> **Tétel.** Pontosan öt szabályos test van: a tetraéder, a kocka (hexaéder), az oktaéder, a dodekaéder és az ikozaéder.

*Bizonyítás.* Számoljuk meg kétféleképpen a (lap, él) illeszkedéseket: minden lapnak $p$ éle van, minden él két laphoz tartozik, így $pl = 2\text{é}$. Ugyanígy a (csúcs, él) illeszkedésekből $qc = 2\text{é}$. Ezeket az Euler-féle poliédertételbe helyettesítve:
$$\frac{2\text{é}}{q} - \text{é} + \frac{2\text{é}}{p} = 2 \quad\Longrightarrow\quad \frac{1}{p} + \frac{1}{q} = \frac{1}{2} + \frac{1}{\text{é}} > \frac{1}{2}.$$
Ha $p, q \ge 3$, és mindkettő legalább $4$ volna, akkor $\frac1p + \frac1q \le \frac12$ — tehát valamelyik $3$. Ha $p = 3$, akkor $\frac1q > \frac16$, így $q \in \{3, 4, 5\}$; ha $q = 3$, ugyanígy $p \in \{3, 4, 5\}$. Az öt lehetséges $(p, q)$ pár, és a belőlük számolt $\text{é} = \big(\frac1p + \frac1q - \frac12\big)^{-1}$, $c = \frac{2\text{é}}{q}$, $l = \frac{2\text{é}}{p}$ értékek:

| $(p, q)$ | test | $c$ | $\text{é}$ | $l$ |
|:-:|:--|:-:|:-:|:-:|
| $(3, 3)$ | tetraéder | 4 | 6 | 4 |
| $(4, 3)$ | kocka (hexaéder) | 8 | 12 | 6 |
| $(3, 4)$ | oktaéder | 6 | 12 | 8 |
| $(5, 3)$ | dodekaéder | 20 | 30 | 12 |
| $(3, 5)$ | ikozaéder | 12 | 30 | 20 |

Mind az öt test valóban létezik (megszerkeszthető). $\blacksquare$

Figyeljük meg a táblázat szimmetriáját: a $(p, q)$ és a $(q, p)$ pár szerepet cserél, a csúcsok és a lapok száma helyet cserél. A kocka és az oktaéder, illetve a dodekaéder és az ikozaéder egymás **duálisai**, a tetraéder önmaga duálisa — erről a 43. szakaszban a duális gráf kapcsán még lesz szó.

### Magasabb dimenzióban

Az Euler-féle poliédertétel $n$ dimenzióban is érvényes. Az $n$ dimenziós **poliédereket** (politópokat) véges sok, $(n-1)$ dimenziós „sík” (hipersík) által határolt féltér korlátos metszeteként definiálhatjuk; ezeknek $0, 1, \dots, n-1$ dimenziós lapjai vannak. Jelölje $f_k$ a $k$ dimenziós lapok számát.

**Példa: a kockák.** Egy $1$ dimenziós „kocka” egy szakasz. Ha egy egységnyi szakasz a rá merőleges irányban egy egységnyit mozdul, végigsöpör egy négyzetet; ha a négyzet a rá merőleges irányban mozdul el egy egységnyit, egy kockát söpör végig; a kocka egy negyedik, mindháromra merőleges irányban elmozdulva a $4$ dimenziós kockát (tesszeraktot) söpri végig. Egy söprésnél az $n$ dimenziós kocka minden $k$ dimenziós lapja kétszer jelenik meg (a kiinduló és a végső helyzetben), a $(k-1)$ dimenziós lapjai pedig egy-egy új $k$ dimenziós lapot söpörnek végig:
$$f_k(Q_{n+1}) = 2f_k(Q_n) + f_{k-1}(Q_n).$$
Így például a $3$ dimenziós kocka éleinek száma $2 \cdot 4 + 4 = 12$.

| | csúcs | él | lap | $3$D lap | váltakozó összeg |
|:-:|:-:|:-:|:-:|:-:|:-:|
| $1$D (szakasz) | 2 | | | | $2$ |
| $2$D (négyzet) | 4 | 4 | | | $4 - 4 = 0$ |
| $3$D (kocka) | 8 | 12 | 6 | | $8 - 12 + 6 = 2$ |
| $4$D (tesszerakt) | 16 | 32 | 24 | 8 | $16 - 32 + 24 - 8 = 0$ |

A váltakozó összeg tehát minden dimenzióra jellemző szám: páratlan dimenzióban $2$, páros dimenzióban $0$.

::: kiegeszites
**Kiegészítés — a kockák lapjai és az Euler–Poincaré-tétel.** Az $n$ dimenziós egységkocka $Q_n = [0, 1]^n$. Egy $k$ dimenziós lapját úgy kapjuk, hogy kiválasztjuk, melyik $k$ koordináta „mozoghat szabadon” ($\binom{n}{k}$ lehetőség), a többi $n - k$ koordinátát pedig rögzítjük $0$-ra vagy $1$-re ($2^{n-k}$ lehetőség):
$$f_k(Q_n) = \binom{n}{k}2^{n-k}.$$
(Ez kielégíti a söprési rekurziót a Pascal-szabály szerint.) A váltakozó összeg a binomiális tétellel:
$$\sum_{k=0}^{n-1}(-1)^k\binom{n}{k}2^{n-k} = \sum_{k=0}^{n}(-1)^k\binom{n}{k}2^{n-k} - (-1)^n = (2 - 1)^n - (-1)^n = 1 - (-1)^n.$$

Ugyanezt kapjuk az $n$ dimenziós **szimplexre** (szakasz, háromszög, tetraéder, …), amelynek $n + 1$ csúcsa van, és bármely $k + 1$ csúcsa egy $k$ dimenziós lapot feszít: $f_k = \binom{n+1}{k+1}$, és
$$\sum_{k=0}^{n-1}(-1)^k\binom{n+1}{k+1} = -\sum_{j=1}^{n}(-1)^{j}\binom{n+1}{j} = -\Big[(1 - 1)^{n+1} - 1 - (-1)^{n+1}\Big] = 1 - (-1)^n.$$

Ez nem véletlen: az **Euler–Poincaré-tétel** szerint *minden $n$ dimenziós konvex poliéderre*
$$f_0 - f_1 + f_2 - \dots + (-1)^{n-1}f_{n-1} = 1 - (-1)^n.$$
($n = 3$-ra ez az Euler-féle poliédertétel.) A tételt Schläfli mondta ki 1852-ben, a teljes bizonyítás Poincaré nevéhez fűződik; a bizonyítás az algebrai topológia eszközeit igényli, ezért itt nem tárgyaljuk.
:::
