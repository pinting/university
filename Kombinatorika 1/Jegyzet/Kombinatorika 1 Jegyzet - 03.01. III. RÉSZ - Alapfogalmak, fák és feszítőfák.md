# III. RÉSZ: GRÁFELMÉLET

A gráfelmélet a XX. században fejlődött igazán önálló tudományterületté, és mára a matematika egyik legtöbbet alkalmazott ága: hálózatok, útvonaltervezés, ütemezés, kémiai molekulák szerkezete — mind gráfokkal modellezhető. Ebben a részben az alapfogalmaktól a fák elméletén és a fokszámsorozatok vizsgálatán át az Euler-séták és a Hamilton-körök kérdésén keresztül a gráfszínezésekig (csúcs- és élszínezés, Vizing-tétel) és a síkbarajzolható gráfok elméletéig (Euler-formula, Kuratowski-tétel, gömb és tórusz, szabályos testek, duális gráf, öt- és hatszín-tétel) jutunk el, majd a független és lefogó csúcs- és élhalmazok (Gallai-tételek) után a párosítások elméletével (Hall-, Frobenius-, Tutte-, Kőnig-tétel, deficites Hall-tétel, stabil párosítások) zárunk.

## 17. Gráfok, egyszerű gráfok, izomorfia

Egy gráf pontokból és az őket összekötő vonalakból áll. Rajzoljunk le néhányat:

1. egy háromszög és egy hozzá csatlakozó négyszög;
2. néhány, egymással nem összekötött darab, köztük magányos pontok;
3. olyan rajz, amelyen egy vonal ugyanabba a pontba tér vissza, és két pontot több vonal is összeköt;
4. egy négyzet a két átlójával;
5. egy háromszög, a belsejében egy ponttal, amely mindhárom csúcshoz hozzá van kötve.

A 4. és az 5. rajz első ránézésre különbözik, valójában azonban **ugyanazt** a szerkezetet ábrázolja: négy pontot, amelyek közül bármelyik kettő össze van kötve. A gráf tehát nem maga a rajz — a rajz csak egy szemléltetése.

> **Definíció (gráf).** Egy $G = (V, E)$ **gráf** két részből áll: a **csúcsok** (vertices) $V = V(G)$ halmazából és az **élek** (edges) $E = E(G)$ halmazából. Minden élhez hozzá van rendelve két (nem feltétlenül különböző) csúcs, az él **végpontjai**; az $e$ él végpontjai $u$ és $v$ esetén $e = (u, v)$ vagy $e = uv$ jelöléssel élünk.

A csúcsokat általában $v_1, v_2, \dots, v_n$, az éleket $e_1, e_2, \dots, e_m$ jelöli. Ebben a könyvben minden gráf **véges**.

> **Definíció.**
>
> - Egy élt **hurokélnek** nevezünk, ha a két végpontja azonos.
> - Két vagy több élt **többszörös** (párhuzamos) élnek nevezünk, ha ugyanaz a két végpontjuk.
> - Egy gráf **egyszerű**, ha nincs benne sem hurokél, sem többszörös él.

**Az előadás fókuszában az egyszerű gráfok állnak.** A továbbiakban „gráf” alatt egyszerű gráfot értünk, ha mást nem mondunk. (Hurokéleket és többszörös éleket a 27. szakaszban, a fokszámsorozatoknál engedünk meg újra.) Egy egyszerű gráfban egy élt egyértelműen meghatároz a két végpontja, így az éleket a csúcsok kételemű részhalmazainak tekinthetjük. Ebből az is következik, hogy egy $n$ csúcsú egyszerű gráfnak
$$0 \le |E(G)| \le \binom{n}{2}$$
éle lehet; a felső korlátot a **teljes gráf** éri el, amelyben bármely két csúcs össze van kötve. Ez sok: egy $1000$ csúcsú egyszerű gráfnak akár $499\,500$ éle is lehet.

### Izomorfia

> **Definíció (izomorfia).** A $G$ és $H$ egyszerű gráfok **izomorfak**, ha van olyan $f\colon V(G) \to V(H)$ bijekció, amely **éltartó**: bármely $u, v \in V(G)$ esetén
> $$uv \in E(G) \iff f(u)f(v) \in E(H).$$

A szó görög eredetű: *izo* = ugyanaz, *morf* = alak. Az izomorfia a gráfelméletben azt a szerepet tölti be, amit a geometriában az egybevágóság: két egybevágó háromszöget „ugyanolyannak” tekintünk, akárhol is helyezkednek el a síkon, és ugyanígy két izomorf gráfot is, akárhogyan rajzoltuk le őket. A fenti 4. és 5. rajz izomorf gráfokat ábrázol.

*Példa.* Legyen $V = \{a, b, c, d, e\}$, és az élek $ab$, $bc$, $cd$, $de$, $bd$. Lerajzolhatjuk egy ötszög-szerű alakzatként, de úgy is, hogy a csúcsokat egy egyenesre tesszük $a, b, c, d, e$ sorrendben, a szomszédosakat összekötjük, és a $b$-t a $d$-vel egy ívvel. A két rajz ugyanazt a gráfot ábrázolja.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!75, thick}
]
  \begin{scope}[xshift=-2.8cm]
    \node[pt, label=below left:{\footnotesize $a$}] (a1) at (-1.1, -0.5) {};
    \node[pt, label=above left:{\footnotesize $b$}] (b1) at (-0.6, 0.3) {};
    \node[pt, label=above:{\footnotesize $c$}] (c1) at (0.0, 1.0) {};
    \node[pt, label=above right:{\footnotesize $d$}] (d1) at (0.6, 0.3) {};
    \node[pt, label=below right:{\footnotesize $e$}] (e1) at (1.1, -0.5) {};
    \draw[edge] (a1) -- (b1) -- (c1) -- (d1) -- (e1);
    \draw[edge] (b1) -- (d1);
  \end{scope}

  \node at (-0.4, 0.25) {$\cong$};

  \begin{scope}[xshift=2.2cm]
    \node[pt, label=below:{\footnotesize $a$}] (a2) at (-1.6, 0) {};
    \node[pt, label=below:{\footnotesize $b$}] (b2) at (-0.8, 0) {};
    \node[pt, label=below:{\footnotesize $c$}] (c2) at (0.0, 0) {};
    \node[pt, label=below:{\footnotesize $d$}] (d2) at (0.8, 0) {};
    \node[pt, label=below:{\footnotesize $e$}] (e2) at (1.6, 0) {};
    \draw[edge] (a2) -- (b2) -- (c2) -- (d2) -- (e2);
    \draw[edge] (b2) to[out=55, in=125] (d2);
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 18. Fokszám és a kézfogási lemma

> **Definíció (fokszám).** Egy $v$ csúcs **fokszáma**, $d(v)$ vagy $\deg(v)$, a $v$-re illeszkedő élek száma (hurokél esetén a hurokél kettővel számít).

A gráf csúcsainak legnagyobb fokszámát **maximális fokszámnak**, $\Delta(G)$-nek, a legkisebbet **minimális fokszámnak**, $\delta(G)$-nek nevezzük. Ha minden csúcs foka ugyanannyi, mondjuk $r$, akkor a gráf **$r$-reguláris** ($\delta = \Delta = r$).

> **Tétel (kézfogási lemma).** Minden $G$ gráfban
> $$\sum_{v \in V(G)} \deg(v) = 2\,|E(G)|.$$

*Bizonyítás.* A bal oldali összegben minden élt **pontosan kétszer** számoltunk: egyszer az egyik, egyszer a másik végpontjánál (a hurokélt kétszer ugyanannál a végpontnál). $\blacksquare$

A név onnan ered, hogy ha egy társaságban mindenki megszámolja, hány emberrel fogott kezet, akkor ezeknek a számoknak az összege a kézfogások számának kétszerese.

::: kiegeszites
**Kiegészítés — Következmény.** *Minden gráfban a páratlan fokszámú csúcsok száma páros.*

*Bizonyítás.* A kézfogási lemma szerint a fokszámok összege páros. Ha a páros fokszámúakat elhagyjuk az összegből, az összeg paritása nem változik, tehát a páratlan fokszámok összege is páros. Páratlan sok páratlan szám összege viszont páratlan volna. $\blacksquare$
:::

## 19. Séták, vonalak, utak, körök

Gráfban az élek mentén mozoghatunk. A mozgásnak több változata van aszerint, hogy megengedjük-e az ismétlődést.

> **Definíció (séta).** A $G$ gráfban egy **$k$ hosszú séta** (élsorozat) egy
> $$u_0,\ e_1,\ u_1,\ e_2,\ u_2,\ \dots,\ e_k,\ u_k$$
> sorozat, ahol $u_i \in V(G)$, $e_j \in E(G)$, és $e_j = (u_{j-1}, u_j)$ minden $j$-re. A séta **zárt**, ha a vége ugyanaz, mint az eleje: $u_0 = u_k$.

A sétában bármi ismétlődhet: csúcsok is, élek is. Ezen szigoríthatunk.

> **Definíció.**
>
> - Ha egy sétában minden él különböző (a csúcsok azonban ismétlődhetnek), **vonalnak** nevezzük. A vonal lehet nyitott vagy zárt.
> - Ha egy sétában minden csúcs különböző, **útnak** nevezzük. Ekkor az élek is automatikusan különbözők.
> - Ha egy zárt vonalban (minden éle különböző) a csúcsok — eltekintve az $u_0 = u_k$ egyezéstől — mind különbözők, és $k \ge 1$, **körnek** nevezzük. A kör tehát egy „zárt út”.

Egyszerű gráfban a kör hossza legalább $3$. (Általános gráfban egy hurokél $1$ hosszú, két párhuzamos él $2$ hosszú kört alkot.)

::: kiegeszites
**Kiegészítés — Lemma (sétából út).** *Ha a $G$ gráfban vezet séta az $u$ csúcsból a $v$ csúcsba, akkor vezet út is.*

*Bizonyítás.* Tekintsük a $u$-ból $v$-be vezető séták közül a **legrövidebbet**: $u = u_0, e_1, u_1, \dots, e_k, u_k = v$. Ha volna benne ismétlődő csúcs, $u_i = u_j$ valamilyen $i < j$-re, akkor az $u_i$ és $u_j$ közötti szakaszt kihagyva ($u_0, \dots, u_i = u_j, e_{j+1}, \dots, u_k$) rövidebb sétát kapnánk $u$-ból $v$-be — ellentmondás. Tehát a legrövidebb séta út. $\blacksquare$

Emiatt az alábbiakban a „van séta $u$ és $v$ között” és a „van út $u$ és $v$ között” kijelentések felcserélhetők.
:::

## 20. Összefüggőség és komponensek

> **Definíció (összefüggő gráf).** A $G$ gráf **összefüggő**, ha bármelyik csúcsából bármelyik csúcsába el lehet jutni, vagyis bármely két csúcsa között vezet út (ekvivalensen: séta).

Ha egy gráf nem összefüggő, akkor természetes módon „darabokra” esik. Ezeket a darabokat két, egymással egyenértékű módon is megfoghatjuk.

> **Definíció (komponens).** A $G$ gráf egy **összefüggő komponense** (röviden komponense) $G$-nek egy olyan összefüggő részgráfja, amelyhez bármely további csúcsot hozzávéve már nem kapnánk összefüggő részgráfot. A komponensek tehát $G$ „maximális összefüggő darabjai”.

(A részgráf fogalmát a 23. szakaszban pontosítjuk; itt elég annyi, hogy a komponens egy csúcshalmaz, az összes köztük futó éllel együtt.)

A komponensek egy **relációval** is leírhatók. Ha $u, v \in V(G)$, akkor írjuk, hogy $u \sim v$ ($u$ relációban áll $v$-vel), ha van köztük séta.

> **Állítás.** A $\sim$ reláció **ekvivalenciareláció** $V(G)$-n.

*Bizonyítás.*

- **Reflexív:** $v \sim v$ minden $v$-re, hiszen a $0$ hosszú $v$ séta $v$-ből $v$-be vezet.
- **Szimmetrikus:** ha $u \sim v$, akkor $v \sim u$, mert egy $u$-ból $v$-be vezető sétát visszafelé bejárva $v$-ből $u$-ba vezető sétát kapunk.
- **Tranzitív:** ha $u \sim v$ és $v \sim w$, akkor $u \sim w$: az $u$-ból $v$-be és a $v$-ből $w$-be vezető sétát egymás után fűzve $u$-ból $w$-be vezető sétát kapunk. $\blacksquare$

(A tranzitivitás bizonyításában látszik, miért kényelmesebb itt sétákkal dolgozni, mint utakkal: két út egymás után fűzve nem feltétlenül út, de két séta egymás után fűzve mindig séta.)

Egy ekvivalenciareláció az alaphalmazt **ekvivalenciaosztályokra** bontja. A $\sim$ reláció osztályai éppen a $G$ összefüggő komponensei.

::: kiegeszites
**Kiegészítés — miért éppen a komponensek az osztályok?** Legyen $K$ egy ekvivalenciaosztály, és tekintsük a $K$-beli csúcsokat a köztük futó összes éllel.

*$K$ összefüggő.* Ha $u, v \in K$, akkor van köztük $G$-ben séta. Ennek a sétának minden csúcsa $u$-val relációban áll (a séta kezdőszelete odavezet), tehát $K$-ban van; így a séta minden éle is $K$-beli csúcsokat köt össze. A séta tehát a $K$ által meghatározott részgráfban halad.

*$K$ maximális.* Ha egy $w \notin K$ csúcsot hozzávennénk, és az így kapott részgráf összefüggő volna, akkor $w$ és egy $K$-beli csúcs között séta vezetne, vagyis $w$ is $K$-ban volna. Ellentmondás.

Megfordítva, egy összefüggő részgráf csúcsai mind relációban állnak egymással, tehát egyetlen osztályba esnek, és a maximalitás miatt az egész osztályt kitöltik. $\blacksquare$
:::

## 21. Fák és levelek

> **Definíció (fa).** **Fának** nevezzük az összefüggő, körmentes gráfokat.

A fák a „legtakarékosabb” összefüggő gráfok: épp elég élük van ahhoz, hogy összefüggők legyenek. Nézzük meg a kis csúcsszámú fákat (izomorfia erejéig)!

| $n$ | az $n$ csúcsú fák | darab |
|:-:|:--|:-:|
| 1 | egyetlen pont | 1 |
| 2 | egyetlen él | 1 |
| 3 | $3$ csúcsú út | 1 |
| 4 | $4$ csúcsú út; „csillag” (egy csúcs, hozzá $3$ levél) | 2 |
| 5 | $5$ csúcsú út; „villa” (egy $3$ fokú csúcs két levéllel és egy $2$ hosszú ággal); csillag (egy csúcs $4$ levéllel) | 3 |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.85,
  pt/.style={circle, draw=black, fill=black, inner sep=1.4pt},
  edge/.style={draw=black!75, thick}
]
  % n = 4 (2 trees)
  \begin{scope}[xshift=-1.9cm, yshift=0.95cm]
    \node[pt] (p1) at (-0.9, 0) {};
    \node[pt] (p2) at (-0.3, 0) {};
    \node[pt] (p3) at (0.3, 0) {};
    \node[pt] (p4) at (0.9, 0) {};
    \draw[edge] (p1) -- (p2) -- (p3) -- (p4);
    \node at (0, -0.55) {\scriptsize $n = 4$: út};
  \end{scope}

  \begin{scope}[xshift=1.9cm, yshift=0.95cm]
    \node[pt] (c) at (0, 0.1) {};
    \node[pt] (l1) at (90:0.65) {};
    \node[pt] (l2) at (210:0.65) {};
    \node[pt] (l3) at (330:0.65) {};
    \draw[edge] (c) -- (l1) (c) -- (l2) (c) -- (l3);
    \node at (0, -0.65) {\scriptsize $n = 4$: csillag};
  \end{scope}

  % n = 5 (3 trees)
  \begin{scope}[xshift=-3.6cm, yshift=-1.1cm]
    \node[pt] (q1) at (-1.2, 0) {};
    \node[pt] (q2) at (-0.6, 0) {};
    \node[pt] (q3) at (0.0, 0) {};
    \node[pt] (q4) at (0.6, 0) {};
    \node[pt] (q5) at (1.2, 0) {};
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q5);
    \node at (0, -0.65) {\scriptsize $n = 5$: út};
  \end{scope}

  \begin{scope}[xshift=0cm, yshift=-1.1cm]
    \node[pt] (f1) at (-0.9, 0.45) {};
    \node[pt] (f2) at (-0.9, -0.45) {};
    \node[pt] (f3) at (-0.25, 0) {};
    \node[pt] (f4) at (0.45, 0) {};
    \node[pt] (f5) at (1.15, 0) {};
    \draw[edge] (f1) -- (f3) (f2) -- (f3) -- (f4) -- (f5);
    \node at (0.1, -0.8) {\scriptsize $n = 5$: „villa”};
  \end{scope}

  \begin{scope}[xshift=3.4cm, yshift=-1.1cm]
    \node[pt] (s) at (0, 0) {};
    \node[pt] (s1) at (45:0.65) {};
    \node[pt] (s2) at (135:0.65) {};
    \node[pt] (s3) at (225:0.65) {};
    \node[pt] (s4) at (315:0.65) {};
    \draw[edge] (s) -- (s1) (s) -- (s2) (s) -- (s3) (s) -- (s4);
    \node at (0, -0.85) {\scriptsize $n = 5$: csillag};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

> **Definíció (levél).** Egy fa **levele** egy $1$ fokú csúcsa.

> **Állítás.** Minden legalább $2$ csúcsú fának van levele.

*Első bizonyítás (sétálással).* Induljunk el egy tetszőleges csúcsból, és sétáljunk a fában úgy, hogy soha nem fordulunk vissza azon az élen, amelyen érkeztünk. Mivel a fa körmentes, egy csúcsba sem érhetünk vissza (különben kört járnánk be), és mivel a fa véges, valahol el kell akadnunk. Ott, ahol elakadtunk, a csúcsnak az érkezési élen kívül nincs más éle: ez $1$ fokú csúcs.

*Második bizonyítás (leghosszabb út).* Tekintsük a fa egyik leghosszabb útját, $u_0, u_1, \dots, u_k$; mivel a fa összefüggő és legalább $2$ csúcsú, van éle, így $k \ge 1$. Állítjuk, hogy $u_0$ levél. Ha $u_0$-nak $u_1$-en kívül volna egy $w$ szomszédja, akkor két eset lehetséges. Ha $w$ nincs az úton, akkor a $w, u_0, u_1, \dots, u_k$ út hosszabb volna — ellentmondás. Ha $w = u_i$ valamilyen $i \ge 2$-re, akkor az $u_0, u_1, \dots, u_i, u_0$ kör volna — ellentmondás a körmentességgel. $\blacksquare$

A második bizonyítás többet is ad: a leghosszabb út **mindkét** végpontja levél, és ezek különbözők ($k \ge 1$). Ugyanezt az első bizonyításból is kiolvashatjuk: ha az első elakadási pontból újra elindulunk, egy másik helyen kell újra elakadnunk.

> **Állítás.** Minden legalább $2$ csúcsú fának van legalább $2$ levele.

## 22. A fák élszáma

> **Kérdés.** Hány éle van egy $n$ csúcsú fának?

A táblázatból sejthető a válasz: az $n$ csúcsú fák mindegyikének $n - 1$ éle van.

> **Tétel.** Minden $n$ csúcsú fának pontosan $n - 1$ éle van.

*Bizonyítás (teljes indukció $n$ szerint).* $n = 1$-re a fának $0$ éle van. Tegyük fel, hogy az állítás igaz az $n$ csúcsú fákra, és legyen $T$ egy $n + 1$ csúcsú fa. Az előző szakasz szerint $T$-nek van levele; **tépjük le** egy levelét, vagyis töröljük a levelet és a hozzá tartozó egyetlen élt. A kapott $T'$ gráf $n$ csúcsú, és fa:

- körmentes, mert $T$ részgráfja, és $T$-ben nincs kör;
- összefüggő, mert bármely két $T'$-beli csúcs között $T$-ben vezető út nem haladhat át a letépett levélen (egy út belső csúcsának legalább $2$ foka van az úton), tehát az út $T'$-ben is megvan.

Az indukciós feltevés szerint $T'$-nek $n - 1$ éle van, így az eredeti $T$-nek $n$. $\blacksquare$

A tétel szerint egy $1000$ csúcsú fának $999$ éle van — szemben egy $1000$ csúcsú egyszerű gráffal, amelynek akár félmillió éle is lehet.

## 23. Részgráfok és feszítőfák

> **Definíció (részgráf).** A $G$ gráf **részgráfja** az a gráf, amelyet $G$-ből néhány csúcs és néhány él törlésével kapunk. (Egy csúcs törlésekor a rá illeszkedő éleket is törölni kell. Semmit sem törölni is szabad, tehát $G$ önmagának is részgráfja.)

Két fontos speciális eset van:

- Ha **csak csúcsokat** törlünk (és velük együtt a belőlük kiinduló éleket), **feszített részgráfot** kapunk: a megmaradt csúcsok között az összes eredeti él megmarad.
- Ha **csak éleket** törlünk, **feszítő részgráfot** kapunk: minden csúcs megmarad.

> **Definíció (feszítőfa).** A $G$ gráf **feszítőfája** egy olyan feszítő részgráfja, amely fa.

Egy feszítőfa tehát $G$ összes csúcsát összeköti, a lehető legkevesebb éllel. Nyilván csak összefüggő gráfnak lehet feszítőfája. Megfordítva:

> **Tétel.** Minden összefüggő gráfnak van feszítőfája.

A bizonyításhoz egy egyszerű megfigyelésre van szükség.

> **Állítás.** Ha $G$ összefüggő gráf, és $G$ egy tetszőleges körének tetszőleges élét töröljük, akkor a kapott gráf is összefüggő.

*Bizonyítás.* Legyen a törölt él $e = xy$, amely a $C$ kör része. Bármely két csúcs között $G$-ben vezetett séta. Ha ez a séta nem használta az $e$ élt, akkor a törlés után is megvan. Ha használta, akkor az $e$ él helyett kerülhetünk a kör másik ívén: a $C$ körön az $x$-ből $y$-ba az $e$ él nélkül is el lehet jutni. Így bármely két csúcs között a törlés után is vezet séta. $\blacksquare$

*A tétel bizonyítása (algoritmus).* Legyen $G$ összefüggő. Ismételjük a következő lépést:

1. **Van kör?** Ha nincs, a gráf összefüggő és körmentes — vagyis fa —, és **kész** vagyunk.
2. Ha van, egy tetszőleges kör tetszőleges élét töröljük. Az állítás szerint a gráf összefüggő marad. Térjünk vissza az 1. lépéshez.

Mivel minden lépésben egy élt törlünk, és véges sok él van, az eljárás véget ér. A végén kapott gráf összefüggő, körmentes, és $G$ minden csúcsát tartalmazza (csak éleket töröltünk) — tehát $G$ egy feszítőfája. $\blacksquare$

## 24. A fák ekvivalens jellemzései

A fát úgy definiáltuk, mint összefüggő, körmentes gráfot. Sok más, ezzel egyenértékű definíció is adható; ezek a fák alaptulajdonságai.

> **Tétel (a fák jellemzése).** Egy $n$ csúcsú $G$ (egyszerű) gráfra a következő állítások ekvivalensek:
>
> 1. $G$ fa (összefüggő és körmentes);
> 2. $G$ **minimális összefüggő**: összefüggő, de bármely élét törölve már nem az;
> 3. $G$ **maximális körmentes**: körmentes, de bármely új élt hozzávéve (két nem szomszédos csúcsát összekötve) kör keletkezik;
> 4. $G$ összefüggő, és $n - 1$ éle van;
> 5. $G$ körmentes, és $n - 1$ éle van;
> 6. $G$ bármely két csúcsa között **pontosan egy** út vezet.

**Hány bizonyítás kell?** Hat állítás ekvivalenciájához elvben minden rendezett párra egy-egy implikáció kellene, ez $6 \cdot 5 = 30$ bizonyítás. Ennyi azonban fölösleges: ha az implikációkat egy olyan irányított gráf éleinek tekintjük, amelyben bármely állításból bármelyikbe el lehet jutni, az elég. Egy **csillag** (az 1. állításból mindegyikbe és mindegyikből az 1.-be) $10$, egy **kör** ($1 \Rightarrow 2 \Rightarrow \dots \Rightarrow 6 \Rightarrow 1$) mindössze $6$ bizonyítást igényel.

Az előadáson néhány példát néztünk meg; a többi házi feladat volt.

- **$1 \Rightarrow 4$ és $1 \Rightarrow 5$:** ez a 22. szakasz tétele (egy fának $n - 1$ éle van).
- **$1 \Rightarrow 2$:** legyen $G$ fa, és töröljük egy $e = uv$ élét. Tegyük fel *indirekten*, hogy a gráf összefüggő maradt. Akkor vezetne egy út $u$ és $v$ között $e$ nélkül, és ez az út az $e$ éllel együtt az eredeti gráfban kört alkotna — ellentmondás. Tehát $G - e$ nem összefüggő.

::: kiegeszites
**Kiegészítés — a tétel teljes bizonyítása.** A „csillag” stratégiát követjük: az előadáson látott $1 \Rightarrow 2$, $1 \Rightarrow 4$, $1 \Rightarrow 5$ mellé bebizonyítjuk az $1 \Rightarrow 3$, $1 \Rightarrow 6$ implikációt és a $2, 3, 4, 5, 6 \Rightarrow 1$ megfordításokat.

**Segédállítás.** *Ha egy gráfban két csúcs között két különböző út vezet, akkor a gráfban van kör.*

*Bizonyítás.* Legyen $P = (u = p_0, p_1, \dots, p_k = v)$ és $Q = (u = q_0, q_1, \dots, q_l = v)$ két különböző út. Egyik sem lehet a másik valódi kezdőszelete, mert akkor a hosszabbik út kétszer haladna át $v$-n. Van tehát olyan legkisebb $i$ index, amelyre $p_i = q_i$, de $p_{i+1} \ne q_{i+1}$ (tehát $p_0 = q_0, \dots, p_i = q_i$). Legyen $j > i$ a legkisebb olyan index, amelyre $p_j$ rajta van $Q$-nak a $q_i$ utáni részén — ilyen van, mert $p_k = v = q_l$ —, mondjuk $p_j = q_m$, $m > i$. Ekkor
$$p_i,\ p_{i+1},\ \dots,\ p_j = q_m,\ q_{m-1},\ \dots,\ q_{i+1},\ q_i = p_i$$
kör: a $p_{i+1}, \dots, p_{j-1}$ csúcsok $j$ minimalitása miatt nincsenek rajta $Q$-nak a $q_i$ utáni részén (a $q_i = p_i$ csúccsal pedig azért nem eshetnek egybe, mert $P$ csúcsai különbözők), tehát a kör összes csúcsa — a kezdő- és végpont egyezésétől eltekintve — különböző. A hossza $(j - i) + (m - i) \ge 3$, mert $j - i = m - i = 1$ esetén $p_{i+1} = q_{i+1}$ volna. $\blacksquare$

**$1 \Rightarrow 3$.** Legyen $G$ fa, és $u, v$ két nem szomszédos csúcsa. Mivel $G$ összefüggő, van köztük út; ehhez az új $uv$ élt hozzávéve kör keletkezik.

**$3 \Rightarrow 1$.** Legyen $G$ maximális körmentes; azt kell belátni, hogy összefüggő. Ha nem volna, legyen $u$ és $v$ két különböző komponensbeli csúcs; ezek nem szomszédosak. A feltétel szerint az $uv$ él hozzávételével kör keletkezik, és ennek a körnek tartalmaznia kell az $uv$ élt (hiszen $G$ körmentes). A kör többi része viszont egy $u$ és $v$ közötti út $G$-ben — ellentmondás azzal, hogy különböző komponensben vannak.

**$2 \Rightarrow 1$.** Legyen $G$ minimális összefüggő; azt kell belátni, hogy körmentes. Ha volna benne kör, annak bármely élét törölve a gráf a 23. szakasz állítása szerint összefüggő maradna — ellentmondás a minimalitással.

**$1 \Rightarrow 6$.** Ha $G$ fa, bármely két csúcsa között van út (összefüggő), és a segédállítás szerint nem lehet két különböző (körmentes).

**$6 \Rightarrow 1$.** Ha bármely két csúcs között van út, $G$ összefüggő. Ha volna benne egy $v_0, v_1, \dots, v_k = v_0$ kör, akkor a $v_0$ és $v_1$ csúcs között két különböző út vezetne: a $v_0v_1$ él és a kör többi része ($v_0, v_{k-1}, \dots, v_1$). Tehát $G$ körmentes.

**$4 \Rightarrow 1$.** Legyen $G$ összefüggő és $n - 1$ élű. A 23. szakasz tétele szerint van feszítőfája, $T$; ennek is $n$ csúcsa van, tehát a 22. szakasz szerint $n - 1$ éle. Mivel $T$ éle $G$-nek is éle, és mindkettőnek $n - 1$ éle van, $T = G$, tehát $G$ fa.

**$5 \Rightarrow 1$.** Legyen $G$ körmentes és $n - 1$ élű; azt kell belátni, hogy összefüggő. Legyenek a komponensei $K_1, \dots, K_c$, rendre $n_1, \dots, n_c$ csúccsal. Minden komponens összefüggő és körmentes, tehát fa, így $K_i$-nek $n_i - 1$ éle van. Összesen
$$|E(G)| = \sum_{i=1}^{c}(n_i - 1) = n - c.$$
Mivel $|E(G)| = n - 1$, ebből $c = 1$, vagyis $G$ összefüggő. $\blacksquare$
:::

Az utolsó bizonyítás egy önmagában is fontos képletet adott. A körmentes gráfokat **erdőnek** nevezzük (komponenseik fák).

> **Következmény.** Egy $n$ csúcsú, $c$ komponensű erdőnek pontosan $n - c$ éle van; így egy $n$ csúcsú körmentes gráfnak **legfeljebb $n - 1$** éle van. Egy $n$ csúcsú összefüggő gráfnak pedig **legalább $n - 1$** éle van, mert tartalmaz egy $n - 1$ élű feszítőfát.
