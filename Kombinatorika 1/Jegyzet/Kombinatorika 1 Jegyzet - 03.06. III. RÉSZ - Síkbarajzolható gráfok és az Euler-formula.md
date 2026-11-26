## 37. Síkbarajzolható gráfok és tartományaik

A gyakorlatban — például nyomtatott áramköri lapok (PCB) tervezésénél vagy integrált áramkörök huzalozásánál — alapvető követelmény, hogy a vezetőpályák ne keresztezzék egymást a hordozó felületén, mert az rövidzárlatot okozna. Hasonló kérdés merül fel metróhálózatok, vasúti sínek vagy síkbeli térképek ábrázolásakor.

Mikor rajzolható le egy gráf a síkba úgy, hogy az élei ne keresztezzék egymást?

> **Definíció (síkbarajzolható gráf, síkgráf).**
> - Egy $G = (V, E)$ gráf **síkbarajzolható** (vagy planáris), ha lerajzolható a síkba úgy, hogy:
>   1. a csúcsai a sík diszjunkt pontjainak felelnek meg;
>   2. az élei a megfelelő csúcspárokat összekötő folytonos, önmagukat nem metsző síkgörbék (**Jordan-ívek**);
>   3. két különböző él nem metszi egymást, és egyetlen közös pontjuk legfeljebb a közös végpontjuk lehet.
> - Egy ilyen konkrét síkbeli lerajzolást a gráf **síkba ágyazásának** vagy **síkgráfnak** nevezünk.

*A különbség:* a síkbarajzolhatóság a gráf elvont tulajdonsága (lerajzolható-e), míg a síkgráf maga a síkba már lerajzolt alakzat.

### Példa: a $K_4$ síkbarajzolható!

Tekintsük a $4$ csúcsú teljes gráfot, a $K_4$-et.
Ha egy négyzet négy sarkaként rajzoljuk le és behúzzuk az oldalait meg a két átlóját, akkor a két átló a négyzet közepén metszi egymást. Ez a rajz nem síkbeli.
Azonban ez nem a gráf hibája, hanem a lerajzolásé! $K_4$ ugyanis **síkbarajzolható**:

- Az egyik átlót megrajzolhatjuk úgy, hogy a négyzetet kívülről megkerülje;
- vagy lerajzolhatunk egy háromszöget, és a negyedik csúcsot a háromszög belsejébe helyezve összeköthetjük a három sarokcsúccsal.
Mindkét esetben metszésmentes síkrajzot kapunk.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  edge/.style={draw=black!70, thick}
]
  % Crossing K_4
  \begin{scope}[xshift=-5.0cm]
    \node[v] (a1) at (-0.8, 0.8) {};
    \node[v] (a2) at (0.8, 0.8) {};
    \node[v] (a3) at (0.8, -0.8) {};
    \node[v] (a4) at (-0.8, -0.8) {};
    \draw[edge] (a1) -- (a2) -- (a3) -- (a4) -- (a1);
    \draw[edge] (a1) -- (a3);
    \draw[edge] (a2) -- (a4);
    \node at (0, -1.85) {\footnotesize Rossz rajz (metszés)};
  \end{scope}

  % Curved K_4
  \begin{scope}[xshift=-1.5cm]
    \node[v] (b1) at (-0.8, 0.8) {};
    \node[v] (b2) at (0.8, 0.8) {};
    \node[v] (b3) at (0.8, -0.8) {};
    \node[v] (b4) at (-0.8, -0.8) {};
    \draw[edge] (b1) -- (b2) -- (b3) -- (b4) -- (b1);
    \draw[edge] (b2) -- (b4);
    \draw[edge] (b1) .. controls (-2.3, -1.3) and (-0.8, -2.0) .. (b3);
    \node at (0, -1.85) {\footnotesize Jó síkrajz (ív)};
  \end{scope}

  % Triangle with center
  \begin{scope}[xshift=2.2cm]
    \node[v] (c1) at (90:1.1) {};
    \node[v] (c2) at (210:1.1) {};
    \node[v] (c3) at (330:1.1) {};
    \node[v] (c4) at (0, 0) {};
    \draw[edge] (c1) -- (c2) -- (c3) -- (c1);
    \draw[edge] (c1) -- (c4);
    \draw[edge] (c2) -- (c4);
    \draw[edge] (c3) -- (c4);
    \node at (0, -1.85) {\footnotesize Jó síkrajz (belső csúcs)};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Tartományok (lapok)

Amikor egy gráfot lerajzolunk a síkba metszések nélkül, a gráf élei feldarabolják a síkot.

> **Definíció (tartományok).** Amikor egy gráfot lerajzolunk a síkba, az a síkot geometriailag összefüggő nyílt részekre, úgynevezett **tartományokra** (vagy lapokra, angolul *faces*) bontja. A tartományok számát $t$-vel (vagy $f$-fel) jelöljük.

Fontos szem előtt tartani:

- A tartományok közül $t - 1$ darab **korlátos** (belső tartomány).
- Pontosan $1$ darab tartomány **nem korlátos** (ez a gráfot körülvevő, a végtelenbe nyúló **külső tartomány**).
A külső tartomány ugyanolyan teljes jogú tartománya a síkrajznak, mint a belsők!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  edge/.style={draw=black!70, thick},
  face/.style={circle, draw=black!60, fill=black!5, inner sep=1.5pt, font=\small}
]
  \node[v] (p1) at (-3.0, 0) {};
  \node[v] (p2) at (-0.5, 1.4) {};
  \node[v] (p3) at (-1.2, -0.2) {};
  \node[v] (p4) at (0.4, 0.6) {};
  \node[v] (p5) at (1.2, -1.0) {};
  \node[v] (p6) at (1.8, 0) {};

  \draw[edge] (p1) to[out=50, in=180] (p2);
  \draw[edge] (p2) to[out=0, in=90] (p6);
  \draw[edge] (p6) to[out=270, in=0] (p5);
  \draw[edge] (p5) to[out=190, in=280] (p1);

  \draw[edge] (p3) -- (p2);
  \draw[edge] (p3) to[out=320, in=120] (p5);
  \draw[edge] (p4) -- (p5);
  \draw[edge] (p4) -- (p6);

  \node[face] at (-1.5, 0.6) {$1$};
  \node[face] at (0.2, -0.3) {$2$};
  \node[face] at (1.15, -0.15) {$3$};
  \node[face] at (-2.6, -1.2) {$4$};

  \node[right=0.8cm of p6] {\begin{tabular}{l}
    \textbf{4 tartományra bontja:} \\
    $1, 2, 3$: belső tartományok \\
    $4$: külső (végtelen) tartomány
  \end{tabular}};
\end{tikzpicture}
\end{adjustbox}
\end{center}

---

## 38. Az Euler-formula síkgráfokra

Ha adott egy összefüggő síkbarajzolt gráf, amelynek $n$ csúcsa, $e$ éle és $t$ tartománya van, mi az összefüggés e három mennyiség között?
Leonhard Euler 1752-ben fedezte fel ezt a csodálatos kapcsolatot a konvex poliéderek csúcsaira, éleire és lapjaira, amely síkgráfokra a következőképpen szól:

> **Tétel (Euler-formula összefüggő síkgráfokra).** Minden összefüggő síkbarajzolt gráfra:
> $$n - e + t = 2.$$

Ez az érték nem függ a gráf formájától, méretétől vagy a rajzolás módjától: **konstans a síkon**, a sík topológiai jellegzetessége (Euler-karakterisztikája).

### A tétel bizonyítása (invariáns módszer)

A bizonyítás az előadáson bemutatott gyönyörű invariáns gondolatot követi: egymás után elhagyjuk a körök éleit, amíg egy fához nem jutunk.

Tekintsük a gráfban az $I = n - e + t$ mennyiséget.
Feltehetjük a kérdést: **van-e köre a gráfnak?**

**1. Eset: a gráfnak van köre.**
Válasszunk ki egy tetszőleges kört, és azon egy tetszőleges $e_0$ élt.
Mivel $e_0$ egy körön fekszik, a kör belsejét és külsejét választja el egymástól, tehát két különböző tartomány közös határán helyezkedik el.
Töröljük ki az $e_0$ élt a síkrajzból!
Mi történik a paraméterekkel?

- A csúcsok száma nem változik: $n' = n$.
- Az élek száma $1$-gyel csökken: $e' = e - 1$.
- Az $e_0$ által elválasztott két tartomány egyetlen közös tartománnyá olvad össze, így a tartományok száma is $1$-gyel csökken: $t' = t - 1$.
- Mivel $e_0$ egy kör éle volt, elhagyása után a végpontjai között a kör maradék ívén továbbra is vezet út, így a gráf **összefüggő marad**!

Nézzük meg, hogyan változott az $n - e + t$ mennyiség:
$$n' - e' + t' = n - (e - 1) + (t - 1) = n - e + 1 + t - 1 = n - e + t.$$
Az $n - e + t$ értéke tehát **egyáltalán nem változott: invariáns maradt**!

**2. Lépés: ismétlés.**
Ismételjük ezt az élbontó lépést mindaddig, amíg a gráfban található kör. Mivel minden lépésben csökken az élek száma, az eljárás véges sok lépésben véget ér.

**3. Befejezés: fához jutottunk.**
Amikor már nincs több kör a gráfban, a megmaradt gráf:

- összefüggő (mert minden lépés megőrizte az összefüggőséget),
- körmentes (mert addig töröltünk, amíg volt kör).
Ez a 21. szakasz definíciója szerint egy **fa** (az eredeti gráf egy feszítőfája)!

Egy $n$ csúcsú fa paramétereit jól ismerjük:

- éleinek száma: $e_{\text{fa}} = n - 1$,
- mivel nincsenek körei, a síkot nem vágja belső részekre, így egyetlen tartománya van: a külső tartomány, azaz $t_{\text{fa}} = 1$.

Számoljuk ki az invariáns értékét a fára:
$$n - e_{\text{fa}} + t_{\text{fa}} = n - (n - 1) + 1 = n - n + 1 + 1 = 2.$$
Mivel minden korábbi lépésben az $n - e + t$ érték változatlan maradt, az eredeti gráfra is pontosan $n - e + t = 2$ kellett hogy teljesüljön! $\blacksquare$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  tree/.style={draw=black, very thick},
  del/.style={draw=black!40, dashed, thick}
]
  \node[v] (a) at (-2.0, 0.8) {};
  \node[v] (b) at (-0.8, 1.6) {};
  \node[v] (c) at (0.8, 1.0) {};
  \node[v] (d) at (1.5, 0) {};
  \node[v] (e) at (0.4, -0.8) {};
  \node[v] (f) at (-1.0, -0.8) {};
  \node[v] (g) at (-1.8, -1.4) {};
  \node[v] (h) at (-0.8, -1.5) {};
  \node[v] (mid) at (-0.9, 0.0) {};

  % Spanning tree edges (solid)
  \draw[tree] (a) -- (b);
  \draw[tree] (a) -- (mid);
  \draw[tree] (mid) -- (f);
  \draw[tree] (f) -- (g);
  \draw[tree] (f) -- (h);
  \draw[tree] (mid) -- (e);
  \draw[tree] (e) -- (d);
  \draw[tree] (d) -- (c);

  % Deleted cycle edges (dashed with strikeout)
  \draw[del] (b) -- node[sloped]{\footnotesize $|/|$} (c);
  \draw[del] (a) -- node[sloped]{\footnotesize $|/|$} (f);
  \draw[del] (g) -- node[sloped]{\footnotesize $|/|$} (h);
  \draw[del] (mid) -- node[sloped]{\footnotesize $|/|$} (d);

  \node[right=0.5cm of d] {\begin{tabular}{l}
    \textbf{Invariáns:} $n - e + t$ állandó \\
    Él törlése körből: \\
    $e \to e - 1, \; t \to t - 1$ \\
    Feszítőfánál: \\
    $n - (n-1) + 1 = 2$
  \end{tabular}};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: kiegeszites
**Kiegészítés — a bizonyítás két topológiai lépése.** A fenti bizonyítás két helyen használja a síkgörbék egy szemléletesen nyilvánvaló, de mélyen fekvő tulajdonságát, a **Jordan-féle görbetételt**: *a sík minden zárt, önmagát nem metsző görbéje a síkot pontosan két tartományra, egy korlátos belsőre és egy nem korlátos külsőre bontja, és maga a görbe mindkettőnek a határa.*

- *Körél törlése két tartományt egyesít.* A $C$ kör egy Jordan-görbe; az $e_0$ él egyik oldalán a $C$ belsejébe, másik oldalán a külsejébe eső tartomány fekszik, így ezek különbözők. Az $e_0$ törlésével a két tartomány az él mentén egybenyílik, a többi tartomány nem változik.
- *Egy fának egyetlen tartománya van.* Egy fa síkrajzának komplementere összefüggő: egy fa egyetlen levelét (és élét) a rajzból kivéve a tartományok száma nem változik (az él két oldala ugyanabba a tartományba esik, mert az él nem része körnek, így a levél körül „megkerülhető”), és ezt ismételve egyetlen pontig jutunk, amelynek a komplementere nyilván összefüggő.

A Jordan-tétel bizonyítása (különösen tetszőleges folytonos görbékre) a topológia tárgykörébe tartozik; töröttvonalakból álló görbékre elemi úton is bizonyítható. A gráfelméletben feltehetjük, hogy az élek töröttvonalak: minden síkbarajzolt gráf rajza „kiegyenesíthető” töröttvonalasra a topológia megváltoztatása nélkül (sőt a Fáry-tétel szerint egyenes szakaszokra is, lásd a 44. szakaszt).
:::

### Mi van, ha a gráf nem összefüggő?

Mi történik az Euler-formulával, ha a gráf több összefüggőségi komponensből áll?

> **Tétel (Euler-formula általános síkgráfokra).** Ha a $G$ síkgráf $c$ darab összefüggőségi komponensből áll, akkor:
> $$n - e + t = c + 1.$$

**Bizonyítás.**
Jelölje az egyes komponensek csúcsainak, éleinek és tartományainak számát $n_i, e_i, t_i$ ($i = 1, 2, \dots, c$).
Minden komponens önmagában összefüggő síkgráf, így rájuk külön-külön érvényes az Euler-formula:
$$n_i - e_i + t_i = 2 \qquad (i = 1, 2, \dots, c).$$
A teljes gráf csúcsszáma és élszáma egyszerűen a komponensek összege: $n = \sum n_i$ és $e = \sum e_i$.
A tartományoknál azonban figyelembe kell venni: mindegyik komponens belső tartományai függetlenek egymástól ($t_i - 1$ darab belső tartomány komponensenként), de a **külső tartomány közös** az összes komponens számára!
A teljes síkrajz tartományainak száma tehát:
$$t = 1 + \sum_{i=1}^c (t_i - 1) = \sum_{i=1}^c t_i - c + 1.$$
Ebből $\sum t_i = t + c - 1$.
Összegezve az egyes komponensek Euler-formuláit:
$$\sum_{i=1}^c (n_i - e_i + t_i) = n - e + (t + c - 1) = 2c.$$
Átrendezve:
$$n - e + t = 2c - c + 1 = c + 1. \quad \blacksquare$$

Például $c = 2$ komponens esetén:
$$n - e + t = 2 + 1 = 3.$$

::: kiegeszites
**Kiegészítés — egy másik bizonyítás.** A fenti érvelés a „belső tartományok függetlenek” lépésnél kissé elnagyolt: egy komponens akár egy másik komponens valamelyik belső tartományába is rajzolható. Ezt a nehézséget így kerülhetjük meg. Ha $c \ge 2$, akkor van olyan tartomány, amelynek határán két különböző komponens is fekszik (kössük össze a $K_1$ komponens egy pontját egy másik komponens egy pontjával egy egyenes szakasszal; legyen $a$ a szakasz utolsó $K_1$-beli pontja, és $b$ az $a$ utáni első pont, amely a rajzhoz tartozik — ez már egy másik komponensé; az $a$ és $b$ közötti nyílt szakasz nem metszi a rajzot, így egyetlen tartományban halad, amelynek határán $a$ és $b$ is rajta van). Ha $a$ vagy $b$ nem csúcs, hanem egy él belső pontja, a tartományon belül az érintett él mentén elhaladva eljutunk a komponens egy-egy csúcsához; így ebben a tartományban egy új éllel összeköthetjük a két komponenst. Az új él egy tartományon belül halad, két különböző komponenst köt össze, tehát nem zár be kört, és nem vágja ketté a tartományt: $t$ nem változik, $e$ eggyel nő, $c$ eggyel csökken. $c - 1$ ilyen lépés után összefüggő síkgráfot kapunk, amelyre $n - (e + c - 1) + t = 2$, vagyis $n - e + t = c + 1$. $\blacksquare$
:::

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!70, thick}
]
  % Component 1
  \begin{scope}[xshift=-2.4cm]
    \draw[rounded corners=10pt, fill=black!4, draw=black!25] (-1.6, -1.6) rectangle (1.6, 1.6);
    \node[v] (p1) at (-0.8, 0) {};
    \node[v] (p2) at (-0.3, 0.9) {};
    \node[v] (p3) at (0.8, 0.4) {};
    \node[v] (p4) at (0.2, -0.8) {};
    \node[v] (p5) at (-0.7, -1.1) {};
    \draw[edge] (p1) -- (p2) -- (p3) -- (p4) -- (p1);
    \draw[edge] (p2) -- (p4);
    \draw[edge] (p1) -- (p5);
    \node at (0, -1.9) {\footnotesize $1$. komponens ($n_1, e_1, t_1$)};
  \end{scope}

  % Component 2
  \begin{scope}[xshift=2.4cm]
    \draw[rounded corners=10pt, fill=black!4, draw=black!25] (-1.4, -1.6) rectangle (1.4, 1.6);
    \node[v] (q1) at (-0.6, 0.6) {};
    \node[v] (q2) at (0.6, 0.4) {};
    \node[v] (q3) at (0.2, -0.7) {};
    \node[v] (q4) at (-0.6, -0.5) {};
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q1);
    \draw[edge] (q1) -- (q3);
    \node at (0, -1.9) {\footnotesize $2$. komponens ($n_2, e_2, t_2$)};
  \end{scope}

  \node[align=center] at (0, -2.75) {\footnotesize \textbf{Közös külső tartomány:} $t = t_1 + t_2 - 1 \implies n - e + t = c + 1 = 3$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

---

## 39. Élszám-korlátok síkbarajzolható gráfokban

Hány éle lehet legfeljebb egy síkbarajzolható gráfnak?

Egy tetszőleges $n$ csúcsú egyszerű gráfban akár $\binom{n}{2} \approx \frac{n^2}{2}$ él is lehet. Például $n = 1000$ csúcs esetén ez majdnem **félmillió él**!
Vajon egy síkbarajzolható gráfban is lehet ennyi él?
A válasz meglepő: **nem!** Síkbarajzolható gráfban csak nagyon kevés él lehet: $n = 1000$-re legfeljebb körülbelül **3000 él** fér el a síkban metszések nélkül!

*(Fontos megjegyzés: mindvégig egyszerű gráfokról beszélünk. Hurokélekből vagy többszörös élekből tetszőlegesen sokat be lehetne rajzolni a síkba, de ezeket az egyszerű gráf definíciója tiltja.)*

### A kettős leszámlálás és az élek-tartományok kapcsolata

Ha egy síkgráf le van rajzolva a síkba, számoljuk meg az illeszkedő **$(e, T)$ él-tartomány párok** számát (ahol az $e$ él a $T$ tartomány határán fut).

1. **A tartományok felől számolva:**
   Minden $T$ tartomány határát egy zárt vonal (séta) alkotja. Mivel nincsenek hurokélek és kétszögek (többszörös élek), egy kört tartalmazó gráfban minden tartományt **legalább 3 él** határol.
   Így az illeszkedő párok száma:
   $$\text{párok száma} = \sum_{T} \text{határoló élek száma} \ge 3t.$$
   *(Ha a gráf nem tartalmaz kört, azaz erdő vagy $e < 3$, a tétel állítása az alábbiak szerint közvetlenül is adódik.)*

2. **Az élek felől számolva:**
   Minden él mentén **legfeljebb 2 tartomány** fekszik: az él jobb és bal oldalán lévő tartomány (ha az él egy híd, akkor mindkét oldalról ugyanaz a tartomány határolja, vagyis az adott tartományban $2$-szer számolódik).
   Így az illeszkedő párok száma:
   $$\text{párok száma} \le 2e.$$

A két becslést összevetve kapjuk az alapvető egyenlőtlenséget:
$$3t \le 2e \iff t \le \frac{2}{3}e.$$

### A síkgráfok maximális élszáma

> **Tétel (élszám-korlát egyszerű síkgráfokra).** Minden $n \ge 3$ csúcsú egyszerű síkbarajzolható gráfra:
> $$e \le 3n - 6.$$

**Bizonyítás.**
Elég a tételt összefüggő gráfokra bizonyítani (ha nem összefüggő, új élek behúzásával összefüggővé tehető anélkül, hogy a síkbarajzolhatóság sérülne, és az élszám csak nő).

Ha a gráf körmentes (tehát fa), akkor $e = n - 1$. Ekkor $n \ge 3$ esetén az $e = n - 1 \le 3n - 6$ egyenlőtlenség triviálisan teljesül (hiszen $2n \ge 5$). Hasonlóképpen, ha $e < 3$, $n \ge 3$ mellett $e < 3 \le 3n - 6$ azonnal igaz.

Feltehetjük tehát, hogy a gráf tartalmaz kört (így $e \ge 3$ és legalább két tartománya van).
Az összefüggő síkgráfokra érvényes Euler-formulából fejezzük ki a tartományok számát:
$$n - e + t = 2 \implies t = 2 - n + e.$$
Helyettesítsük ezt be a most igazolt $3t \le 2e$ egyenlőtlenségbe:
$$3(2 - n + e) \le 2e.$$
Bontsuk fel a zárójelet és rendezzük az egyenlőtlenséget:
$$6 - 3n + 3e \le 2e \iff 3e - 2e \le 3n - 6 \iff e \le 3n - 6. \quad \blacksquare$$

> **Következmény (triangulációk).** Egy $n \ge 3$ csúcsú egyszerű síkgráfban pontosan akkor áll fenn az $e = 3n - 6$ egyenlőség, ha a gráf minden tartománya háromszög ($3t = 2e$). Az ilyen gráfokat **maximális síkgráfoknak** vagy **triangulációknak** nevezzük.

> **Következmény (kis fokú csúcs létezése).** Minden egyszerű síkbarajzolható gráfban létezik olyan csúcs, amelynek foka legfeljebb $5$:
> $$\delta(G) \le 5.$$
> **Bizonyítás.** A kézfogási lemma szerint a fokszámok összege $2e$. Felhasználva az élszám-korlátot:
> $$\sum_{v \in V} \deg(v) = 2e \le 2(3n - 6) = 6n - 12 < 6n.$$
> Ha minden csúcs foka legalább $6$ lenne, akkor a fokszámösszeg legalább $6n$ lenne, ami ellentmond a fenti szigorú egyenlőtlenségnek! Legalább egy csúcsnak tehát legfeljebb $5$ fokúnak kell lennie. $\blacksquare$

### Általánosítás: adott bőségű (körhosszúságú) síkgráfok

Mi történik, ha a gráfban nincsenek háromszögek, vagy általában nincsenek rövid körök?

Tegyük fel, hogy a síkgráf tartalmaz kört, és legrövidebb körének hossza — a gráf **bősége** (girth) — legalább $p$ ($p \ge 3$). (Ha a gráf nem összefüggő, a komponensek között új élek behúzásával összefüggővé tehető úgy, hogy új kör ne keletkezzen, az élszám pedig csak nő.)
Ekkor a kapott összefüggő síkgráfban semelyik tartomány határa sem lehet rövidebb $p$-nél, így minden tartományt legalább $p$ él határol:
$$p \cdot t \le 2e.$$
Fejezzük ki ismét $t$-t az Euler-formulából ($t = 2 - n + e$):
$$p(2 - n + e) \le 2e \iff 2p - pn + pe \le 2e.$$
Rendezzük az $e$-s tagokat az egyik oldalra:
$$(p - 2)e \le p(n - 2) \iff e \le \frac{p}{p - 2}(n - 2).$$

*(Megjegyzés: ha a gráf körmentes, azaz erdő, akkor $e \le n - 1$, ami $p \ge 5$ és kis $n$ esetén — például $n = 3$, $e = 2$-re — meghaladhatja a $\frac{p}{p-2}(n-2)$ értéket; a fenti korlát tehát a kör létezését feltételezi.)*

### Speciális eset: háromszögmentes és páros síkgráfok ($p = 4$)

Ha egy $n \ge 3$ csúcsú síkgráf **háromszögmentes**, vagy **páros** (ahol a 35. szakasz szerint minden kör páros, így a legrövidebb kör hossza legalább $4$), és tartalmaz kört, akkor a fenti képletbe $p = 4$-et helyettesíthetünk:
$$e \le \frac{4}{4 - 2}(n - 2) = 2(n - 2) = 2n - 4.$$
Ha pedig a gráf körmentes (erdő), akkor $n \ge 3$ mellett az $e \le n - 1 \le 2n - 4$ egyenlőtlenség eleve teljesül.

> **Tétel (páros és háromszögmentes síkgráfok élszáma).** Minden $n \ge 3$ csúcsú egyszerű háromszögmentes (speciálisan minden páros) síkbarajzolható gráfra:
> $$e \le 2n - 4.$$

---
