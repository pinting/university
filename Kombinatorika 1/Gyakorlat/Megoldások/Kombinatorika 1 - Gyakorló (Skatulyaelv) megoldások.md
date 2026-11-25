# Kombinatorika 1 – Gyakorló feladatsor: Skatulyaelv – megoldások

### Kombinatorika 1 normál · Gyakorló feladatsor megoldásai

## 1. feladat

Egy bűvész cilinderében $3$ nyúl és $5$ galamb van. Eddig kihúzott $5$ állatot ($A$: két nyúl, $B$: két galamb, $C$: két egyforma fajta, $D$: van galamb).

**Megoldás.**

Mivel legfeljebb $3$ nyúl van összesen, $5$ kihúzott állat között legalább $5 - 3 = 2$ galamb biztosan található (ezért **$B$, $C$ és $D$ biztosan igaz**; $A$ viszont hamis lehet, hiszen kihúzhatta mind az $5$ galambot).

- **a)** A cilinderben $8 - 5 = 3$ állat maradt. Mivel $2$ fajta állat létezik, a skatulyaelv szerint e $3$ állat között **biztosan van legalább kettő azonos fajtából** (vagyis vagy legalább $2$ nyúl, vagy legalább $2$ galamb maradt bent; konkrétan lehetséges $3$ nyúl, $2$ nyúl $+$ $1$ galamb, $1$ nyúl $+$ $2$ galamb és $3$ galamb is).
- **b)** Az $A$ állításhoz (legalább $2$ nyúl): legrosszabb esetben először kihúzza mind az $5$ galambot, ezután kell még $2$ nyúl: $5 + 2 = \mathbf{7}$ állat.
- **c)** A $B$ állításhoz (legalább $2$ galamb): legrosszabb esetben először mind a $3$ nyulat húzza ki, majd $2$ galambot: $3 + 2 = \mathbf{5}$ állat.
- **d)** A $C$ állításhoz (két egyforma fajta): $2$ fajta van, ezért skatulyaelvvel $\mathbf{3}$ állat elég (és $2$ kevés az $1$ nyúl $+$ $1$ galamb miatt).
- **e)** A $D$ állításhoz (legalább $1$ galamb): legrosszabb esetben mind a $3$ nyulat húzza ki először, utána $1$ galambot: $3 + 1 = \mathbf{4}$ állat.
- **f)** Az $A$ **és** $B$ együttes teljesüléséhez mindkét alsó határt el kell érni: $\max(7, 5) = \mathbf{7}$ állat ($6$ állatnál lehet $5$ galamb $+$ $1$ nyúl, ami megsérti $A$-t; $7$ állatnál legfeljebb $1$ állat marad bent, így biztosan van legalább $2$ nyúl és legalább $4$ galamb is).
- **g)** Az $A$ **vagy** $D$ teljesüléséhez: mikor *nem* igaz egyik sem? Ha legfeljebb $1$ nyulat húztunk ki ÉS $0$ galambot (vagyis összesen legfeljebb $1$ állatot: $1$ nyulat). Már **$2$** kihúzott állatnál vagy van köztük galamb ($D$ igaz), vagy nincs ($2$ nyúl van, tehát $A$ igaz). A válasz: **$\mathbf{2}$ állat**.

::: elmelet
**Elméleti háttér — logikai „és” / „vagy” feltételek legrosszabb esete.** A „legkevesebb hány húzás biztosítja az állítást?” típusú kérdések mindig az állítás *negációját* kielégítő legnagyobb halmaz méretét $+1$-gyel keresik. Figyeljük meg a **g)** részt: $(A \lor D)$ tagadása $\neg A \land \neg D$, vagyis egyszerre legfeljebb $1$ nyúl és $0$ galamb — ami csak $1$ húzásig lehetséges!
:::

---

## 2. feladat

$33$ tanuló közül $15$ angolt, $13$ németet és $5$ franciát tanul. Melyik csoportban van biztosan két azonos hónapban született tanuló?

**Megoldás.**

Az évben $12$ hónap ($12$ skatulya) van. Ahhoz, hogy biztosan legyen két azonos hónapban született tanuló, a csoport létszámának nagyobbnak kell lennie $12$-nél ($> 12$).
- Angol csoport: $15 > 12 \implies$ **biztosan van**.
- Német csoport: $13 > 12 \implies$ **biztosan van**.
- Francia csoport: $5 \le 12 \implies$ **nem biztos** (születhettek mind különböző hónapokban).

**Válasz:** Az **angol** és a **német** nyelvi csoportról mondhatjuk el biztosan.

---

## 3. feladat

$33$ tanuló magyardolgozatát $1$–$5$ jegyekkel értékelték. Mutassuk meg, hogy van köztük $7$ tanuló ugyanolyan jeggyel!

**Megoldás.**

Az $5$ lehetséges érdemjegy ($1, 2, 3, 4, 5$) alkotja az $5$ skatulyát, a $33$ dolgozat pedig a golyókat.
Ha mindegyik érdemjegyből legfeljebb $6$ darab volna, akkor összesen legfeljebb $5 \cdot 6 = 30$ dolgozat született volna. Mivel $33 > 30$ (vagyis $\lceil 33/5 \rceil = 7$), a skatulyaelv általános alakja szerint van olyan érdemjegy, amelyet legalább $7$ tanuló kapott meg. $\blacksquare$

---

## 4. feladat

Egy iskolában $52$ tanár és $745$ diák ($20$ osztály) van. Melyik állítás igaz?

**Megoldás.**

- **$A$: Igaz!** Egy évben legfeljebb $366$ nap (szökőnappal együtt) van; mivel $745 > 366$, a skatulyaelv szerint biztosan van két azonos napon született diák.
- **$B$: Igaz!** Ha mind a $20$ osztályba legfeljebb $37$ tanuló járna, legfeljebb $20 \cdot 37 = 740$ diák lenne az iskolában; mivel $745 > 740$, legalább egy osztályban van legalább $38$ tanuló.
- **$C$: Nem biztos!** Például születhetett minden tanár január $1$-jén, míg minden diák január $2$-án (szökőnappal sem kényszeríthető egybeesés, amíg nem minden nap foglalt tanárokkal vagy diákokkal).
- **$D$: Nem biztos!** Mind a $745$ diák születhetett ugyanazon a napon (vagy az év első három napján).
- **$E$: Igaz!** $12$ hónap van, és $52 > 12 \cdot 4 = 48$, így a skatulyaelv alapján legalább egy hónapban van legalább $5$ tanárnak születésnapja.

**Válasz:** Az **$A$, $B$ és $E$** állítások igazak biztosan.

---

## 5. feladat

Dobozban $14$ piros, $17$ kék és $21$ zöld golyó van. Legkevesebb hány húzással garantálható:

**Megoldás.**

- **a) Legalább kettő azonos színű:** $3$ szín (skatulya) van, így $3 + 1 = \mathbf{4}$ golyó.
- **b) Mindhárom színből legalább egy:** A legrosszabb eset az, ha előbb kihúzzuk a két legnagyobb létszámú színt (összesen $17$ kéket és $21$ zöldet), majd a következő már biztosan piros lesz: $17 + 21 + 1 = \mathbf{39}$ golyó.
- **c) Legalább két zöld:** Legrosszabb esetben kihúzzuk az összes nem-zöld golyót ($14$ piros $+$ $17$ kék), majd még $2$ zöldet: $14 + 17 + 2 = \mathbf{33}$ golyó.
- **d) Legalább két piros:** Legrosszabb esetben kihúzzuk az összes nem-piros golyót ($17$ kék $+$ $21$ zöld), majd még $2$ pirosat: $17 + 21 + 2 = \mathbf{40}$ golyó.

---

## 6. feladat

$4$ piros, $7$ kék és $11$ zöld golyóból kivettünk $5$-öt. Melyek igazak biztosan a *maradt* golyókra?

**Megoldás.**

Összesen $4 + 7 + 11 = 22$ golyó volt, így $5$ kivétele után $17$ golyó maradt a dobozban.
- **$A$: Nem biztos!** Ha például $5$ zöldet vettünk ki, maradt $4$ piros is.
- **$B$: Nem biztos!** Ha például kihúztuk mind a $4$ pirosat és $1$ kéket, akkor piros már nem maradt.
- **$C$: Igaz!** Eredetileg $7$ kék golyó volt; mivel csak $5$-öt vettünk ki, legalább $7 - 5 = 2 \ge 1$ kék golyó biztosan maradt.
- **$D$: Igaz!** Ugyanazért: mind kék ($7 > 5$), mind zöld ($11 > 5$) biztosan maradt a dobozban (ráadásul a legtöbb azonos színű golyó is csak $11$, míg bent $17$ golyó maradt).

**Válasz:** A **$C$ és $D$** állítások igazak biztosan.

---

## 7. feladat

a) $5$ pár különböző kesztyű; b) $5$ pár egyforma kesztyű (bal és jobb különböző).

**Megoldás.**

- **a)** Mivel az $5$ pár kesztyű *különböző* (pl. $5$ eltérő színű/mintájú pár), egy összeillő párhoz ugyanazon pár bal és jobb kesztyűjét kell kivennünk. Az $5$ pár jelenti az $5$ skatulyát: legfeljebb $5$ kesztyűt vehetünk ki úgy, hogy minden párból legfeljebb $1$ kerüljön a kezünkbe (például az $5$ balkezest). A **$6.$** kesztyű már biztosan kiegészít egy párt $\implies \mathbf{6}$ kesztyű.
- **b)** Mivel mind az $5$ pár *egyforma*, bármely balkezes kesztyű párba áll bármely jobbkezessel! Itt a skatulya a kéz (bal és jobb, mindegyikből $5$ darab van). Legrosszabb esetben kihúzzuk mind az $5$ egyforma oldali (pl. balkezes) kesztyűt; a következő már szükségképpen a másik oldali $\implies$ itt is $5 + 1 = \mathbf{6}$ kesztyű.

::: elmelet
**Elméleti háttér — azonos végeredmény két különböző skatulyaelvből.** Érdemes megfigyelni, hogy bár mindkét részfeladat eredménye $6$, a mechanizmus más: az **a)**-ban $5$ skatulyából (*párokból*) húzunk egyet-egyet, míg a **b)**-ben csak $2$ skatulyából (*bal/jobb*), és az $5$-ös határt a készlet mérete adja ($10$ párnál például a válaszaik $11$ és $11$ maradnának, míg páratlan számú bal/jobb esetén elválnának!).
:::

---

## 8. feladat

$4$ fajta almából egyenlő mennyiségű, összesen $100$ darab ($25$-$25$-$25$-$25$).

**Megoldás.**

- **Valamelyik fajtából legalább $10$:** Ha mindegyikből legfeljebb $9$-et húznánk, az legfeljebb $4 \cdot 9 = 36$ alma volna. Tehát $36 + 1 = \mathbf{37}$ almát kell kivenni.
- **Mindegyik fajtából legalább $1$:** Legrosszabb esetben $3$ fajta összes almáját kihúzzuk ($3 \cdot 25 = 75$ db), mielőtt a $4.$ fajtához nyúlnánk: $75 + 1 = \mathbf{76}$ almát kell kivenni.

---

## 9. feladat

$12$ piros és $12$ kék zokni.

**Megoldás.**

- **a) Két azonos színű:** $2$ szín (skatulya) van, így $2 + 1 = \mathbf{3}$ zokni.
- **b) Két piros:** Legrosszabb esetben kihúzzuk mind a $12$ kék zoknit, majd $2$ pirosat: $12 + 2 = \mathbf{14}$ zokni.

---

## 10. feladat

Valahány kék ($k$) és piros ($p$) zokni van a fiókban ($k, p \ge 1$, hogy kihúzható legyen két különböző színű is, és legalább az egyik $\ge 2$, hogy kihúzható legyen két egyforma színű is).

**Megoldás.**

- Két **egyforma** színű zokni biztos kivételéhez ($k, p \ge 1$ és $\max(k, p) \ge 2$ esetén) pontosan **$3$** zoknit kell kivenni (két zokni lehet $1$ kék $+$ $1$ piros, háromnál a skatulyaelv garantálja az egyezést).
- Két **különböző** színű zokni biztos kivételéhez legrosszabb esetben kihúzzuk a gyakoribb szín összes darabját, tehát **$\max(k, p) + 1$** zoknit kell minimálisan kivenni.

A feltétel szerint:
$$3 \ge \max(k, p) + 1 \implies \max(k, p) \le 2.$$
Mivel egy egyforma színű pár létezéséhez $\max(k, p) \ge 2$ szükséges, ezért szükségképpen **$\max(k, p) = 2$** (és mindkét esetben pontosan $3 = 3$ teljesül). A másik szín darabszáma ($\min(k, p) \ge 1$) tehát $1$ vagy $2$ lehet:
- **$2$ az egyik, $1$ a másik színből:** összesen **$3$ zokni**;
- **$2$ kék és $2$ piros:** összesen **$4$ zokni**.

**Válasz:** A fiókban **$3$ vagy $4$ zokni** van (vagy $2+1$, vagy $2+2$ eloszlásban).

---

## 11. feladat

$1$ db „$1$”, $2$ db „$2$”, $\dots$, $30$ db „$30$” lemez. Legkevesebb hány húzás biztosít legalább $10$ egyforma lemezt?

**Megoldás.**

Keressük meg, legfeljebb hány lemezt tudunk úgy kihúzni, hogy egyik számból se legyen $10$ darab:
- Az $1, 2, \dots, 9$ számokból *mindegyikből kevesebb mint $10$* van összesen, ezért ezeket maradéktalanul kihúzhatjuk: $1 + 2 + \dots + 9 = \frac{9 \cdot 10}{2} = 45$ lemez.
- A $10, 11, \dots, 30$ számok ($21$ féle szám) mindegyikéből legfeljebb $9$-$9$ darabot húzhatunk ki: $21 \cdot 9 = 189$ lemez.

Így legfeljebb $45 + 189 = 234$ lemez húzható ki a feltétel sérülése nélkül, tehát a válasz:
$$234 + 1 = \mathbf{235} \text{ lemez}.$$

---

## 12. feladat

$100$ ember (szőke vagy barna) $4$ teremben. Melyik a legnagyobb $n$, amelyre biztosan van $n$ egyszínű hajú egy teremben?

**Megoldás.**

A lehetséges (terem, hajszín) párok száma $4 \cdot 2 = 8$ (ez a $8$ skatulya). Mivel
$$100 = 8 \cdot 12 + 4 > 8 \cdot 12,$$
a skatulyaelv szerint mindig van legalább egy teremben olyan hajszín, amelyhez tartozóknak száma legalább $\lceil 100/8 \rceil = \mathbf{13}$.
Másrészt $n = 14$ már nem garantálható: minden terembe betehetünk $13$ szőkét és $12$ barnát ($4 \cdot 25 = 100$ ember), ekkor egyik teremben sincs $14$ azonos hajszínű ember.

**Válasz:** **$n = 13$**.

---

## 13. feladat

$6\text{ dm}$ oldalú négyzetben $10$ lövés $\implies$ két lövés távolsága $\le 3\text{ dm}$.

**Megoldás.**

Osszuk fel a $6\text{ dm} \times 6\text{ dm}$-es négyzetet $3 \times 3 = 9$ darab egybevágó, $2\text{ dm} \times 2\text{ dm}$-es kis négyzetre (a közös határokon lévő pontokat tetszőlegesen rendeljük az egyik érintett kis négyzethez).

Mivel $10$ lövés érkezik a $9$ kis négyzetbe, a skatulyaelv szerint legalább egy $2\text{ dm} \times 2\text{ dm}$-es kis négyzetbe (határával együtt) legalább $2$ lövés esik. Egy $2\text{ dm}$ oldalú négyzet bármely két pontjának távolsága legfeljebb az átlója hossza:
$$\sqrt{2^2 + 2^2} = \sqrt{8} = 2\sqrt{2}\text{ dm} \approx 2{,}83\text{ dm} < 3\text{ dm},$$
tehát e két lövés távolsága biztosan legfeljebb $3\text{ dm}$! $\blacksquare$

---

## 14. feladat

$40\text{ cm}$ oldalú szabályos hatszögben $7$ lövés $\implies$ kettő távolsága $\le 40\text{ cm}$.

**Megoldás.**

Osszuk fel a szabályos hatszöget a három főátlójával $6$ darab, egyenként $40\text{ cm}$ oldalhosszúságú szabályos háromszögre! (A közös éleken és középponton fekvő lövéseket valamelyik érintett háromszöghöz soroljuk.)

Mivel $7 > 6$ lövésünk van, a skatulyaelv alapján legalább két lövés ugyanabba a kis szabályos háromszögbe (vagy annak határára) esik. Egy $40\text{ cm}$ oldalú szabályos háromszög két pontjának távolsága legfeljebb az oldala hossza, vagyis $40\text{ cm}$. $\blacksquare$

---

## 15. feladat

Egységnégyzetben $30$ pont $\implies$ található $4$, amely $0{,}25$ sugarú körlappal lefedhető.

**Megoldás.**

**Igaz!** Osszuk fel az $1 \times 1$-es négyzetet $3 \times 3 = \mathbf{9}$ darab egybevágó, $\frac{1}{3} \times \frac{1}{3}$ oldalú kis négyzetre!

Mivel $30 > 9 \cdot 3 = 27$, a skatulyaelv általános alakja szerint legalább egy $\frac{1}{3} \times \frac{1}{3}$-as kis négyzet (határával együtt) tartalmaz legalább $\lceil 30/9 \rceil = \mathbf{4}$ pontot.

Ennek a kis négyzetnek a köré írható kör sugara (a félátló):
$$r = \frac{1}{2}\sqrt{\left(\frac{1}{3}\right)^2 + \left(\frac{1}{3}\right)^2} = \frac{\sqrt{2}}{6} = \sqrt{\frac{2}{36}} = \sqrt{\frac{1}{18}} < \sqrt{\frac{1}{16}} = \frac{1}{4} = 0{,}25.$$
Ezért a kis négyzet középpontja köré írt $0{,}25$ sugarú körlap az egész kis négyzetet — benne a $4$ pontot is — teljes egészében lefedi! $\blacksquare$

---

## 16. feladat

Síkon $18$ egyenes, nincs párhuzamos pár $\implies$ kettő szöge $\le 10^\circ$.

**Megoldás.**

**Igaz!** Toljuk el mind a $18$ egyenest önmagával párhuzamosan úgy, hogy mindannyian átmenjenek egy közös $O$ ponton (a párhuzamos eltolás megtartja az egyenesek bezárt szögét).

A $18$ egyenes az $O$ körüli félsíkot ($180^\circ$-ot) $18$ szomszédos szögtartományra osztja (vagy a teljes $360^\circ$-os szöget $36$ körcikkre, amelyek csúcsszögpárokba állva $18$ párt adnak, mindegyik párban azonos szög van). E $18$ szomszédos szög összege $180^\circ$. Ha mindegyik szög szigorúan nagyobb volna $10^\circ$-nál, összegük $> 18 \cdot 10^\circ = 180^\circ$ volna — ellentmondás. Így van két (szomszédos irányú) egyenes, amelyek szöge legfeljebb $\frac{180^\circ}{18} = 10^\circ$. $\blacksquare$

---

## 17*. feladat

Egy téglalapot $13$ egyenes metsz úgy, hogy mindegyik $1 : 5$ arányú két négyszögre bontja. Van $4$ egy pontban metsző egyenes.

**Megoldás.**

Helyezzük el a téglalapot a koordináta-rendszerbe a $[0, a] \times [0, b]$ tartományra ($a, b > 0$). Ahhoz, hogy egy egyenes a téglalapot **két négyszögre** vágja szét, szükségképpen a téglalap két szemközti oldalát kell metszenie (ha két szomszédos oldalt metszene, az egyik rész háromszög, a másik ötszög volna).

- **1. eset (a vízszintes $y = 0$ és $y = b$ oldalakat metszi):**
  Legyenek a metszéspontok $x$-koordinátái $x_1$ és $x_2$; ekkor a két trapéz területe $b \cdot \frac{x_1 + x_2}{2}$ és $b \cdot \frac{(a - x_1) + (a - x_2)}{2} = b \cdot \left(a - \frac{x_1 + x_2}{2}\right)$. A középvonal felezőpontjának $x$-koordinátája $x_m = \frac{x_1 + x_2}{2}$, $y$-koordinátája $\frac{b}{2}$. A területarány pontosan akkor $1 : 5$ (valamelyik irányban), ha
  $$x_m = \frac{1}{6}a \quad \text{vagy} \quad x_m = \frac{5}{6}a.$$
- **2. eset (a függőleges $x = 0$ és $x = a$ oldalakat metszi):**
  Teljes szimmetria miatt a szakasz felezőpontja $(a/2, y_m)$, ahol a területarány pontosan akkor $1 : 5$, ha
  $$y_m = \frac{1}{6}b \quad \text{vagy} \quad y_m = \frac{5}{6}b.$$

Következésképpen minden ilyen egyenes szükségképpen áthalad az alábbi **4 rögzített pont** valamelyikén:
$$P_1 = \left(\frac{a}{6}, \frac{b}{2}\right), \quad P_2 = \left(\frac{5a}{6}, \frac{b}{2}\right), \quad P_3 = \left(\frac{a}{2}, \frac{b}{6}\right), \quad P_4 = \left(\frac{a}{2}, \frac{5b}{6}\right).$$
Ez a $4$ pont alkotja a skatulyákat; mivel $13 > 4 \cdot 3 = 12$, a skatulyaelv alapján legalább $\lceil 13/4 \rceil = \mathbf{4}$ egyenes áthalad ugyanazon a $P_i$ ponton, vagyis $4$ egyenes egy pontban metszi egymást! $\blacksquare$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.85,
  pt/.style={circle, draw=black, fill=black, inner sep=1.7pt}
]
  \draw[very thick] (0,0) rectangle (6,3.6);
  \draw[dotted, black!55] (0, 1.8) -- (6, 1.8);
  \draw[dotted, black!55] (3, 0) -- (3, 3.6);
  \node[pt, label=above left:{\scriptsize $P_1$}] (P1) at (1, 1.8) {};
  \node[pt, label=above right:{\scriptsize $P_2$}] (P2) at (5, 1.8) {};
  \node[pt, label=below right:{\scriptsize $P_3$}] (P3) at (3, 0.6) {};
  \node[pt, label=above right:{\scriptsize $P_4$}] (P4) at (3, 3.0) {};
  \draw[thick, red!75!black] (0.3, 0) -- (1.7, 3.6);
  \draw[thick, blue!75!black] (0, 0.25) -- (6, 0.95);
  \node[below] at (0.3, 0) {\tiny $\frac{1}{6} T$};
  \node[below] at (4.5, 0) {\tiny $\frac{5}{6} T$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

---

## 18. feladat

$5\text{ m} \times 6\text{ m} \times 3\text{ m}$-es teremben $100$ légy $\implies$ kettő távolsága $< 2\text{ m}$.

**Megoldás.**

**Igaz!** Osszuk fel az $5 \times 6 \times 3$ méteres téglatestet $1\text{ m} \times 1\text{ m} \times 1\text{ m}$ élű egységkockákra: számuk $5 \cdot 6 \cdot 3 = \mathbf{90}$ (skatulya).

Mivel $100 > 90$ légy van, a skatulyaelv szerint legalább két légy ugyanabba az $1\text{ m}$-es kockába (határával együtt) kerül. Ebben a kockában bármely két pont távolsága legfeljebb a testátló:
$$\sqrt{1^2 + 1^2 + 1^2} = \sqrt{3}\text{ m} \approx 1{,}732\text{ m} < 2\text{ m}.$$
Tehát biztosan van két légy $2\text{ m}$-nél közelebb egymáshoz! $\blacksquare$

---

## 19. feladat

$4$ egység élű kockában $2001$ pont $\implies$ van $32$ pont, melyek bármely zárt törött vonala $\le 32\sqrt{3}$.

**Megoldás.**

Osszuk fel a $4 \times 4 \times 4$-es kockát $4 \cdot 4 \cdot 4 = \mathbf{64}$ darab $1 \times 1 \times 1$-es egységkockára.
Mivel $2001 > 64 \cdot 31 = 1984$, a skatulyaelv általános alakja szerint legalább egy egységkockába (határával együtt) esik legalább $\lceil 2001/64 \rceil = \mathbf{32}$ pont!

Válasszunk ki ebbe az egy egységkockába eső pontok közül $32$-t. Az egységkocka bármely két pontjának távolsága legfeljebb az egységkocka testátlója, azaz $\sqrt{1^2 + 1^2 + 1^2} = \sqrt{3}$. Ha a $32$ pontot akármilyen sorrendben összekötjük egy zárt törött vonallá, az pontosan $32$ szakaszból áll, és mindegyik szakasz hossza legfeljebb $\sqrt{3}$, ezért az összhossza legfeljebb $32\sqrt{3}$! $\blacksquare$

---

## 20. feladat

$10$-tagú társaságban van-e mindig két azonos kézfogásszámú ember?

**Megoldás.**

**Igen!** Egy kézfogásszám lehetséges értékei $0, 1, \dots, 9$ ($10$ érték). Azonban a **$0$ és a $9$ nem szerepelhet egyszerre**: ha van olyan ember, aki mind a $9$ másikkal kezet fogott, akkor mindenki fogott vele kezet, vagyis senkinek sem lehet $0$ kézfogása. Tehát legfeljebb $9$ különböző kézfogásszám (skatulya) fordulhat elő a $10$ ember számára $\implies$ a skatulyaelv szerint legalább két ember ugyanannyiszor fogott kezet. $\blacksquare$

---

## 21. feladat

$8$ csapatos körmérkőzéses bajnokság közben mindegyik csapat különböző számú meccset játszott. Helyes-e?

**Megoldás.**

**Nem helyes (lehetetlen)!** Mivel minden pár legfeljebb egyszer játszik egymással, egy csapat addig lejátszott meccseinek száma $\{0, 1, 2, 3, 4, 5, 6, 7\}$ közül kerülhet ki ($8$ érték). Pontosan mint a 20. feladatban: a $0$ és a $7$ nem fordulhat elő egyidejűleg (ha az egyik csapat mind a $7$ másikkal játszott már, akkor mind a $7$ másik játszott már legalább $1$ meccset). Így legfeljebb $7$ különböző meccsszám lehetséges $8$ csapatra $\implies$ biztosan van két azonos számú meccset játszott csapat. $\blacksquare$

---

## 22. feladat

Legkevesebb hány egész számot kell felírni, hogy kettő különbsége osztható legyen $8$-cal?

**Megoldás.**

Két egész szám különbsége pontosan akkor osztható $8$-cal, ha ugyanaz a $8$-as maradékuk. A lehetséges $8$-as maradékok $\{0, 1, \dots, 7\}$ ($8$ skatulya). $8$ számmal elkerülhető az egyezés (pl. $0, 1, \dots, 7$), míg $8 + 1 = \mathbf{9}$ számmal már biztosan azonos maradékú két szám kerül felírásra. A válasz: **$\mathbf{9}$ szám**.

---

## 23. feladat

a) $15$ egymás utáni egész $\implies$ van kettő, összege osztható $15$-tel?
b) $15$ pozitív egész $\implies$ van kettő, összege osztható $15$-tel?
c) Max hány egész szám írható fel, hogy semelyik kettő összege és különbsége se osztható $15$-tel?

**Megoldás.**

- **a) Igaz!** $15$ egymás utáni egész szám között pontosan egyszer szerepel mind a $15$ különböző maradék modulo $15$. Speciálisan található $1 \pmod{15}$ és $14 \pmod{15}$ maradékú szám is; e kettő összege $1 + 14 = 15 \equiv 0 \pmod{15}$. $\blacksquare$
- **b) Hamis!** Ha például felírjuk a tizenöt darab $1$-est (vagy egymástól különbözőként $1, 16, 31, \dots, 211$ számokat, amelyek mind $\equiv 1 \pmod{15}$), bármely két szám összege $\equiv 2 \pmod{15}$, sosem osztható $15$-tel.
- **c)** Egy osztályból (azonos $15$-ös maradékból) legfeljebb $1$ számot választhatunk (különben a különbségük osztható $15$-tel). Továbbá az egymást $15$-re kiegészítő maradékpárokból — $\{1, 14\}, \{2, 13\}, \{3, 12\}, \{4, 11\}, \{5, 10\}, \{6, 9\}, \{7, 8\}$ ($7$ pár) — páronként legfeljebb $1$ számot választhatunk (különben az összegük osztható $15$-tel), a $\{0\}$ osztályból pedig szintén legfeljebb $1$-et.
  Így legfeljebb $1 + 7 = \mathbf{8}$ szám írható fel. Ez el is érhető: például $\{0, 1, 2, 3, 4, 5, 6, 7\}$ esetén semelyik kettő különbsége ($1..7$) és összege ($1..13$) sem osztható $15$-tel!

---

## 24. feladat

Az $1 - 2 - 3 - \dots - 2001$ kifejezésnek vannak azonos eredményű zárójelezései.

**Megoldás.**

- **Lehetséges eredmények száma:** Bármely zárójelezés kiértékelése egy egész szám, amelynek abszolút értéke nem lehet nagyobb az összes szám összegénél:
  $$M = 1 + 2 + \dots + 2001 = \frac{2001 \cdot 2002}{2} = 2\,003\,001.$$
  Tehát a lehetséges eredmények száma (a $[-M, M]$ intervallum egészei, ez a skatulyák száma) legfeljebb $2M + 1 = 4\,006\,003$ (egészen pontosan még kevesebb, hiszen minden összeg azonos paritású és az $1$-es pozitív, a $2$-es negatív előjellel szerepel).
- **Zárójelezések száma:** Nézzük például a páratlan–páros számpárokat $(3, 4), (5, 6), \dots, (1999, 2000)$ — ez $999$ diszjunkt pár! Minden ilyen $(2k+1, 2k+2)$ párnál kétféleképpen járhatunk el egymástól függetlenül: vagy zárójelbe tesszük a párt mint $-\big((2k+1) - (2k+2)\big)$, vagy nem teszünk rá belső zárójelet mint $-(2k+1) - (2k+2)$. Ez egymástól különböző **$2^{999}$** szintaktikai zárójelezést ad! *(A teljes bináris zárójelezések összes száma pedig $C_{2000}$.)*

Mivel $2^{999} > 2^{22} = 4\,194\,304 > 4\,006\,003$, a skatulyaelv szerint biztosan létezik legalább két különböző zárójelezés, amely pontosan ugyanazt a végeredményt adja! $\blacksquare$

---

## 25. feladat

Öt pozitív egészből mindig kiválasztható néhány, amelyek összege osztható $5$-tel? Milyen szám írható az $5$ helyett?

**Megoldás.**

**Igaz — és az $5$ helyére bármely $n \ge 1$ pozitív egész szám írható!**
Bizonyítsuk általánosan $n$-re ($a_1, a_2, \dots, a_n \in \mathbb{Z}^+$): tekintsük a $n$ darab kezdő összeget (részletösszeget):
$$S_1 = a_1, \quad S_2 = a_1 + a_2, \quad \dots, \quad S_n = a_1 + a_2 + \dots + a_n.$$
- Ha valamelyik $S_k$ osztható $n$-nel, akkor máris találtunk jó részhalmazt ($\{a_1, \dots, a_k\}$).
- Ha egyik sem osztható $n$-nel, akkor mind a $n$ összeg $n$-es maradéka az $\{1, 2, \dots, n - 1\}$ halmazba ($n - 1$ skatulyába) esik. A skatulyaelv szerint van $1 \le i < j \le n$, hogy $S_i \equiv S_j \pmod{n}$. Ekkor a különbségük,
  $$S_j - S_i = a_{i+1} + a_{i+2} + \dots + a_j$$
  (legalább egy tagból álló összeg!) osztható $n$-nel! $\blacksquare$

---

## 26. feladat

Két játékos felváltva ír pozitív egész számokat egy papírra. Az nyer, aki az ellenfél száma után talál néhány leírt számot, melyek összege osztható $5$-tel. Kinek van nyerő stratégiája, és legfeljebb hány lépésben ér véget a játék?

**Megoldás.**

**Az ELSŐ játékosnak (kezdőnek) van nyerő stratégiája, és a játék legfeljebb $4$ lépésben véget ér!**

*(Figyelem: az „ellenfél száma után” nyerési feltétel azt jelenti, hogy az veszít, aki a lépésével olyan halmazt hoz létre, amelyben van $5$-tel osztható összegű nemüres részhalmaz — az ellenfél ezt észreveszi és nyer! A 25. feladat szerint $5$ szám már biztosan tartalmaz ilyet, de megnézzük, hogy már korábban kényszeríthető-e a vesztes lépés.)*

Számoljunk minden leírt számmal modulo $5$:
1. **1. lépés (Kezdő):** Ír egy $5$-tel nem osztható számot, pl. $1$-et ($a_1 \equiv 1 \pmod 5$; minden más nemnulla $a_1$ eset ugyanilyen egy szorzással $\bmod 5$). Eddigi részhalmaz-összegek $\bmod 5$: $\{1\}$.
2. **2. lépés (Második):** Nem írhat $0$-t (veszítene) és nem írhat $4$-et sem ($1 + 4 \equiv 0$, veszítene). Tehát $a_2 \in \{1, 2, 3\} \pmod 5$ közül választhat:
   - Ha $a_2 \equiv 1$: részösszegek $\{1, 2\}$;
   - Ha $a_2 \equiv 2$: részösszegek $\{1, 2, 3\}$;
   - Ha $a_2 \equiv 3$: részösszegek $\{1, 3, 4\}$.
3. **3. lépés (Kezdő):** Minden esetre tud válaszolni úgy, hogy *ne* legyen $0 \pmod 5$, ugyanakkor **mind a négy nemnulla maradék $\{1, 2, 3, 4\}$ előálljon részhalmaz-összegként**!
   - Ha $a_2 \equiv 1$: írjon $a_3 \equiv 2$-t $\implies (1, 1, 2)$ részösszegei: $\{1, 2, 3, 4\}$.
   - Ha $a_2 \equiv 2$: írjon $a_3 \equiv 1$-et $\implies (1, 2, 1)$ részösszegei: $\{1, 2, 3, 4\}$.
   - Ha $a_2 \equiv 3$: írjon $a_3 \equiv 3$-at $\implies (1, 3, 3)$ részösszegei: $1, 3, 4, 3+3 \equiv 1, 1+3+3 \equiv 2$, azaz $\{1, 2, 3, 4\}$.
4. **4. lépés (Második):** Bármilyen $a_4$ számot ír a második játékos:
   - Ha $a_4 \equiv 0 \pmod 5$, önmaga adja az $5$-tel osztható összeget;
   - Ha $a_4 \equiv r \in \{1, 2, 3, 4\} \pmod 5$, akkor mivel $5 - r \in \{1, 2, 3, 4\}$ már szerepel az első $3$ szám valamely részösszegeként, azzal együtt $a_4$ összege $5 \equiv 0 \pmod 5$ lesz!

Így a 4. lépés után az **első játékos** biztosan talál $5$-tel osztható összeget és **nyer**! (Ha a második játékos hibázik, akár már a 2. lépésben véget érhet.) $\blacksquare$

::: elmelet
**Elméleti háttér — miért nem 5, hanem 4 lépés?** Bár a **25. feladat** $5$ számot garantál tetszőleges választásoknál, itt a *kezdő játékos szándékosan tudja lefedni* mind a $4$ nemnulla maradékosztályt mindössze $3$ szám részösszegeivel (a $(1, 1, 2)$ vagy $(1, 3, 3)$ „teljes nemnulla” hármasokkal), így a $4.$ szám már elkerülhetetlenül bezárja a $0 \pmod 5$ kört!
:::

---

## 27. feladat

Van-e olyan $2001$-gyel kezdődő természetes szám, amely osztható $17$-tel?

**Megoldás.**

**Igen!** Tekintsük például a $200100, 200101, \dots, 200116$ egymást követő $17$ természetes számot (vagy $200100, 200101, \dots, 200199$-et, $100 > 17$ számot). Mivel $17$ egymást követő egész szám minden $17$-es maradékot felvesz (skatulyaelv: ha két szám maradéka nem egyezik a $17$-ből, mind a $17$ maradék előfordul, köztük a $0$ is), van köztük $17$-tel osztható.
Konkrétan: $200100 = 17 \cdot 11770 + 10$, tehát **$200107 = 17 \cdot 11771$** osztható $17$-tel és $2001$-gyel kezdődik. $\blacksquare$

---

## 28. feladat

Van-e olyan csupa $1$ és $0$ számjegyekből álló természetes szám, amely osztható $17$-tel?

**Megoldás.**

**Igen!** Tekintsük az első $18$ darab csupa $1$-esből álló számot:
$$R_1 = 1, \quad R_2 = 11, \quad R_3 = 111, \quad \dots, \quad R_{18} = \underbrace{11\dots 1}_{18\text{ db}}.$$
A $17$-tel való osztási maradékok száma $17$ ($0, 1, \dots, 16$), és itt $18$ számunk van, ezért a skatulyaelv alapján létezik $1 \le i < j \le 18$, hogy $R_i$ és $R_j$ ugyanazt a maradékot adja $17$-tel osztva. Ekkor különbségük:
$$R_j - R_i = \underbrace{11\dots 1}_{j - i\text{ db}}\underbrace{00\dots 0}_{i\text{ db}}$$
csupa $1$-esből és $0$-ból álló pozitív egész szám, és osztható $17$-tel! $\blacksquare$ *(Sőt, mivel $\lnko(10, 17) = 1$, a végéről elhagyva a $i$ db $0$-t, még csupa $1$-esből álló is található: pl. $R_{16}$ osztható $17$-tel.)*

---

## 29. feladat

*(Az [1. ZH (2023), 4. feladat]-ban megoldott $d = 10$-es probléma folytatása:)* Az $\{1, 2, \dots, 100\}$ számokból kihúzunk $55$-öt. Vizsgáljuk meg a két szám közötti különbséget $11$-re és $12$-re is!

**Megoldás.**

*(Emlékeztető: $d = 10$ esetén a válasz **igen** volt, mert a $10$ db $10$-es lánc egyenként legfeljebb $5$, összesen $50 < 55$ számot engedett meg — lásd ZH 1 (2023), 4. feladat.)*

- **$d = 11$ esetén: NEM igaz (elkerülhető)!**
  Osszuk az $\{1, 2, \dots, 100\}$ halmazt a modulo $11$ maradékosztályok szerinti $11$ számtani sorozatra ($100 = 9 \cdot 11 + 1$):
  - Az $r = 1$ lánc ($1, 12, 23, \dots, 100$) $10$ elemű: ebből legfeljebb $5$ szám választható úgy, hogy ne legyen köztük szomszédos (pl. $\{1, 23, 45, 67, 89\}$).
  - A többi $10$ lánc ($r = 2, 3, \dots, 11$) mind $9$ elemű ($r, r+11, \dots, r+88$): egy $9$ elemű láncból az $1., 3., 5., 7., 9.$ elem kiválasztásával osztályonként legfeljebb **$\lceil 9/2 \rceil = 5$** szám választható $11$-es különbség nélkül!
  Összesen tehát $1 \cdot 5 + 10 \cdot 5 = \mathbf{55}$ szám választható ki $11$-es különbség nélkül! Például az
  $$\{1, \dots, 11\} \cup \{23, \dots, 33\} \cup \{45, \dots, 55\} \cup \{67, \dots, 77\} \cup \{89, \dots, 99\}$$
  halmaz pontosan $5 \cdot 11 = 55$ elemű, és semelyik két elemének különbsége nem $11$ (a közeli blokkok között mindig marad egy $11$-es sáv)!

- **$d = 12$ esetén: IGEN, igaz (biztosan van két szám $12$ különbséggel)!**
  Osszuk az $\{1, 2, \dots, 100\}$ halmazt a modulo $12$ maradékosztályok szerinti $12$ láncra ($100 = 8 \cdot 12 + 4$):
  - Az első $4$ lánc ($r = 1, 2, 3, 4$) $9$ elemű: mindegyik felosztható $4$ diszjunkt, $12$ különbségű számpárra $+$ $1$ magányos elemre (így láncanként legfeljebb $5$ szám választható ütközés nélkül).
  - A többi $8$ lánc ($r = 5, 6, \dots, 12$) mind $8$ elemű: mindegyik pontosan $4$ diszjunkt, $12$ különbségű párra osztható (így láncanként legfeljebb $4$ szám választható).
  Az egész $\{1, \dots, 100\}$ halmazból így összesen legfeljebb
  $$4 \cdot 5 + 8 \cdot 4 = 20 + 32 = 52$$
  szám választható ki $12$ különbségű pár nélkül (más szóval: a $4 \cdot 4 + 8 \cdot 4 = 48$ párt és a $4$ magányos számot tekintve $52$ skatulyánkból $55$ kihúzott szám esetén legalább egy pár mindkét tagját kihúztuk!). Mivel $55 > 52$, **biztosan van köztük két olyan szám, amelyek különbsége $12$**. $\blacksquare$

::: elmelet
**Elméleti háttér — maradékosztály-láncok és a $d$-paritás csapdája.** Intuitíve azt várnánk, hogy nagyobb $d$ esetén könnyebb elkerülni a $d$ különbséget — ám mivel $100$-ból álló láncok hossza $9$ vagy $10$, és $\lceil 9/2 \rceil = \lceil 10/2 \rceil = 5$ (páratlan hosszú láncokból is $5$-öt lehet kivenni, pontosan ugyanannyit, mint $10$-ből!), a $d = 11$ speciális eset megugorja a határt $50$-ről $55$-re, míg $d = 12$-nél a $8$ elemű láncok már csak $4$-et engednek meg ($52$)!
:::
