# IX. RÉSZ: FÜGGVÉNYEK HATÁRÉRTÉKE

A sorozatoknál azt vizsgáltuk, mi történik, ha az index „a végtelenbe tart”. Függvényeknél a kérdés általánosabb: mi történik a függvényértékekkel, ha a változó **egy adott ponthoz közeledik**? Ez az a kérdés, amely az 1. szakaszban a pillanatnyi sebesség problémájánál felmerült: hogyan viselkedik az átlagsebesség, ha az időintervallum hossza nullához tart — anélkül, hogy a nullát valaha is behelyettesítenénk?

A függvény határértékének definíciója a sorozatéhoz hasonló, de egy döntő ponton más: a „küszöbindex” szerepét egy „sugár” veszi át, amely megmondja, milyen közel kell lennie a változónak a vizsgált ponthoz. Ez az **$\varepsilon$–$\delta$ definíció**, Cauchy és Weierstrass öröksége.

## 45. Motiváció és a pontozott környezet

**1. példa: a pillanatnyi sebesség.** Legyen $s(t) = t^2$ az út–idő függvény, és kérdezzük a $t_0$ időpontbeli pillanatnyi sebességet. Az átlagsebesség a $[t_0, t]$ (vagy $[t, t_0]$) intervallumon
$$f(t) = \frac{s(t) - s(t_0)}{t - t_0} = \frac{t^2 - t_0^2}{t - t_0}, \qquad t \neq t_0.$$
Ez a függvény a $t_0$ pontban **nincs értelmezve** (a nevező nulla volna). Minden más pontban viszont
$$f(t) = \frac{(t - t_0)(t + t_0)}{t - t_0} = t + t_0,$$
tehát ha $t$ közel van $t_0$-hoz, akkor $f(t)$ közel van $2t_0$-hoz. A pillanatnyi sebesség $2t_0$ — ezt szeretnénk precízen kimondani, anélkül hogy $f(t_0)$-ra hivatkoznánk, hiszen az nem létezik.

**2. példa: egy „rossz” függvényérték.** Legyen $f(x) = (\operatorname{sgn} x)^2$, azaz $f(0) = 0$ és $f(x) = 1$, ha $x \neq 0$. A $0$ közelében (de nem a $0$-ban) minden érték $1$. Azt szeretnénk mondani, hogy „$f$ a $0$-ban $1$-hez tart”, noha a $0$-ban felvett értéke $0$. A határérték tehát nem azonos a függvényértékkel.

**3. példa: nincs határérték.** Legyen $f(x) = \{x\}$ (törtrész). A $0$-hoz balról közeledve (azaz negatív $x$-ekkel, mint $-0{,}1$, $-0{,}01$, $-0{,}001$) az értékek $0{,}9$, $0{,}99$, $0{,}999$, tehát $1$-hez közelednek; jobbról közeledve ($0{,}1$, $0{,}01, \dots$) az értékek $0$-hoz közelednek. Nincs olyan szám, amelyhez „minden irányból” közelednének.

A három példa tanulsága: **a határérték azt írja le, hogyan viselkedik a függvény a pont közelében, függetlenül attól, hogy mi történik magában a pontban** — sőt akkor is, ha ott nincs is értelmezve. Ezért a definícióban a pontot ki kell hagyni a környezetből.

> **Definíció (pontozott környezet).** Az $a \in \mathbb{R}$ pont **pontozott (lyukas) $\delta$ sugarú környezete**
> $$\dot{B}(a, \delta) = B(a, \delta) \setminus \{a\} = (a - \delta, a) \cup (a, a + \delta).$$

Az $x \in \dot{B}(a, \delta)$ feltétel egyenlőtlenséggel: $0 < |x - a| < \delta$. A „$0 <$” rész fejezi ki, hogy $x \neq a$.

## 46. A határérték definíciója

> **Definíció.** Az $f$ függvénynek az $a \in \mathbb{R}$ helyen vett **határértéke** a $b \in \mathbb{R}$ szám, ha
>
> - **(I)** van olyan $\delta_0 > 0$, hogy $\dot{B}(a, \delta_0) \subset D(f)$, és
> - **(II)** minden $\varepsilon > 0$-hoz van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$ esetén
> $$|f(x) - b| < \varepsilon.$$
>
> Jelölése: $\displaystyle \lim_{x \to a} f(x) = b$, vagy $f(x) \to b$, ha $x \to a$.

Kvantorokkal a (II) feltétel:
$$\forall \varepsilon > 0\ \ \exists \delta > 0\ \ \forall x : \ 0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon.$$

**A feltételek szerepe.**

- Az **(I)** feltétel azt biztosítja, hogy a kérdés egyáltalán értelmes: a függvénynek értelmezve kell lennie az $a$ körül (legalábbis egy pontozott környezetben). Az $a$-ban magában nem kell értelmezve lennie.
- A **(II)** a lényeg: akármilyen kicsi $\varepsilon$ tűrést írnak elő a függvényértékekre, meg tudjuk mondani, mennyire kell $x$-nek $a$-hoz közel lennie ($\delta$), hogy a tűrés teljesüljön.

**Összevetés a sorozatokkal.** A sorozatoknál a „késői” indexeket az $n \ge n_0$ feltétel írta le, itt az „$a$-hoz közeli” helyeket a $0 < |x - a| < \delta$ feltétel. A játék ugyanaz: a kételkedő megad egy $\varepsilon$-t, a bizonyító válaszol egy $\delta$-val. A $\delta$ függhet $\varepsilon$-tól (néha $\delta_\varepsilon$-t írunk), és **nem egyértelmű**: ha egy $\delta$ jó, akkor minden nála kisebb pozitív szám is jó.

**Szemléletes jelentés.** Rajzoljunk a $b$ magasságban egy vízszintes sávot $b - \varepsilon$ és $b + \varepsilon$ között. A definíció azt mondja: bármilyen keskeny is ez a sáv, tudunk az $a$ körül olyan keskeny függőleges sávot ($a - \delta$ és $a + \delta$ között) kijelölni, hogy a grafikon ezen belül — magát az $x = a$ függőleges egyenest leszámítva — teljes egészében a vízszintes sávban fut.

### Kidolgozott példák

**1. példa: $\lim_{x \to 5} x = 5$.** Itt $|f(x) - 5| = |x - 5|$, tehát adott $\varepsilon$-hoz $\delta = \varepsilon$ jó: ha $0 < |x - 5| < \varepsilon$, akkor $|f(x) - 5| < \varepsilon$. Ugyanígy $\lim_{x \to a} x = a$ minden $a$-ra, és $\lim_{x\to a} c = c$ az állandó függvényre (itt bármely $\delta$ jó).

**2. példa: $\lim_{x \to 1} \frac{x^2 - 1}{x - 1} = 2$.** A függvény az $1$-ben nincs értelmezve, de minden más pontban $\frac{x^2 - 1}{x - 1} = x + 1$. Ezért ha $x \neq 1$, akkor $|f(x) - 2| = |x + 1 - 2| = |x - 1|$, és $\delta = \varepsilon$ jó. Ez a példa mutatja, miért kell a pontozott környezet: a határérték kiszámításához éppen azt használtuk ki, hogy $x \neq 1$, és így egyszerűsíthettünk $x - 1$-gyel.

**3. példa: $\lim_{x \to 2} x^3 = 8$.** Itt már becslés kell. Szorzattá alakítva
$$|x^3 - 8| = |x - 2|\cdot|x^2 + 2x + 4|.$$
Az első tényező kicsi, ha $x$ közel van $2$-höz; a második tényezőt **korlátoznunk** kell. Szűkítsük le a vizsgálatot a $|x - 2| < 1$ esetre: ekkor $1 < x < 3$, tehát $x^2 < 9$ és $2x < 6$, így
$$|x^2 + 2x + 4| < 9 + 6 + 4 = 19.$$
Ezért $|x - 2| < 1$ esetén $|x^3 - 8| < 19|x - 2|$. Ezt akkor tudjuk $\varepsilon$ alá szorítani, ha $|x - 2| < \frac{\varepsilon}{19}$. Legyen tehát
$$\delta = \min\left\{1,\ \frac{\varepsilon}{19}\right\}.$$
Ha $0 < |x - 2| < \delta$, akkor egyrészt $|x - 2| < 1$, így érvényes a becslés, másrészt $|x - 2| < \frac{\varepsilon}{19}$, így
$$|x^3 - 8| < 19 \cdot \frac{\varepsilon}{19} = \varepsilon. \qquad \blacksquare$$

**A minimum-trükk** tipikus: a $\delta$ egyik komponense ($1$) a becslés érvényességét biztosítja, a másik ($\frac{\varepsilon}{19}$) a kívánt pontosságot. Később a műveleti szabályok (51. szakasz) és a folytonosság (53. szakasz) segítségével az ilyen határértékeket sokkal gyorsabban kiszámoljuk majd; de érdemes legalább egyszer a definícióból is végigcsinálni.

**4. példa: $\lim_{x \to 4} \sqrt{x} = 2$.** A „gyöktelenítés” fogásával:
$$|\sqrt{x} - 2| = \frac{|(\sqrt{x} - 2)(\sqrt{x} + 2)|}{\sqrt{x} + 2} = \frac{|x - 4|}{\sqrt{x} + 2} \le \frac{|x - 4|}{2}.$$
Tehát $\delta = \min\{4, 2\varepsilon\}$ jó (a $4$ azért kell, hogy $x \ge 0$ legyen, és a gyök értelmes).

**5. példa: $\lim_{x \to 0}\operatorname{sgn}(x)$ nem létezik.** Tegyük fel, hogy a határérték $b$. Az $\varepsilon = 1$-hez van olyan $\delta$, hogy $0 < |x| < \delta$ esetén $|\operatorname{sgn}(x) - b| < 1$. Az $x = \frac{\delta}{2}$ helyen ebből $|1 - b| < 1$, az $x = -\frac{\delta}{2}$ helyen $|-1 - b| < 1$ adódik. A háromszög-egyenlőtlenség szerint ekkor $2 = |1 - (-1)| \le |1 - b| + |b - (-1)| < 2$, ellentmondás.

**További példák (ellenőrizzük!):**
$$\lim_{x \to 0}(\operatorname{sgn} x)^2 = 1, \qquad \lim_{x \to 0}\{x\} \text{ nem létezik}, \qquad \lim_{x \to 1/2}\{x\} = \frac{1}{2}.$$

## 47. Féloldali határértékek és az egységes séma

A $\operatorname{sgn}$ függvény a $0$-ban jobbról az $1$-hez, balról a $-1$-hez „tart”. Az ilyen viselkedés leírására szolgálnak a féloldali határértékek: ezekben a pontnak csak az egyik oldalát vizsgáljuk.

> **Definíció (jobb oldali határérték).** Az $f$ függvénynek az $a$ helyen vett **jobb oldali határértéke** a $b \in \mathbb{R}$ szám, ha
>
> - **(I)** van olyan $\delta_0 > 0$, hogy $(a, a + \delta_0) \subset D(f)$, és
> - **(II)** minden $\varepsilon > 0$-hoz van olyan $\delta > 0$, hogy minden $x \in (a, a + \delta)$ esetén $|f(x) - b| < \varepsilon$.
>
> Jelölése: $\displaystyle \lim_{x \to a+0} f(x) = b$, $\displaystyle\lim_{x\to a+} f(x) = b$, vagy röviden $f(a + 0) = b$.
>
> A **bal oldali határértéket**, $\lim_{x \to a-0} f(x) = f(a - 0)$-t, ugyanígy definiáljuk az $(a - \delta, a)$ intervallumokkal.

**Példák.** $\lim_{x \to 0+0}\operatorname{sgn}(x) = 1$, $\lim_{x \to 0-0}\operatorname{sgn}(x) = -1$. A törtrész-függvényre: $\{0 + 0\} = 0$, $\{0 - 0\} = 1$. Az egészrész-függvényre minden $k \in \mathbb{Z}$-ben $[k - 0] = k - 1$ és $[k + 0] = k$.

> **Tétel.** $\displaystyle \lim_{x \to a} f(x) = b \iff \lim_{x \to a-0} f(x) = \lim_{x \to a+0} f(x) = b$.

*Bizonyítás.* ($\Rightarrow$) Ha a kétoldali határérték $b$, akkor az ahhoz tartozó $\delta$ a féloldali definíciókban is jó, hiszen $(a, a + \delta)$ és $(a - \delta, a)$ is része $\dot{B}(a, \delta)$-nak.

($\Leftarrow$) Adott $\varepsilon$-hoz a jobb oldali határérték egy $\delta_1$-et, a bal oldali egy $\delta_2$-t ad. Legyen $\delta = \min\{\delta_1, \delta_2\}$. Ha $x \in \dot{B}(a, \delta)$, akkor vagy $x \in (a, a + \delta_1)$, vagy $x \in (a - \delta_2, a)$, és mindkét esetben $|f(x) - b| < \varepsilon$. $\blacksquare$

A tétel gyakorlati jelentősége: a határérték nemlétezésének egyik legegyszerűbb bizonyítása, ha megmutatjuk, hogy a két féloldali határérték különbözik (vagy valamelyik nem létezik). Így $\lim_{x \to 0}\operatorname{sgn}(x)$ és $\lim_{x \to 0}\{x\}$ nemlétezése azonnal adódik.

### Az egységes definíciós séma

Eddig három határérték-típust láttunk ($x \to a$, $x \to a + 0$, $x \to a - 0$), és hamarosan továbbiak jönnek ($x \to \pm\infty$, illetve végtelen határértékek). Ahelyett, hogy mindegyiket külön definiálnánk, foglaljuk őket egyetlen sablonba a **környezetek** nyelvén. Vezessük be a következő jelöléseket:
$$\dot{B}(a + 0, \delta) = (a, a + \delta), \qquad \dot{B}(a - 0, \delta) = (a - \delta, a).$$

> **Definíció (egységes séma).** Legyen $\alpha$ a következők valamelyike: $a - 0$, $a$, $a + 0$ (később: $\pm\infty$ is), és legyen $\beta \in \mathbb{R}$ (később: $\pm\infty$ is). Azt mondjuk, hogy $\lim_{x \to \alpha} f(x) = \beta$, ha
>
> - **(I)** $f$ értelmezve van az $\alpha$ egy $\dot{U}_0$ pontozott környezetében, és
> - **(II)** a $\beta$ bármely $V$ környezetéhez van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) \in V$.

**Példa a séma kibontására.** A $\lim_{x \to a-0} f(x) = b$ esetben: $\dot{U}_0 = (a - \delta_0, a)$, $V = B(b, \varepsilon)$, $\dot{U} = (a - \delta, a)$, és a séma pontosan a bal oldali határérték definícióját adja.

## 48. Végtelen határértékek és határérték a végtelenben

A séma ereje abban áll, hogy a $\pm\infty$ esetekre is kiterjeszthető — pusztán a megfelelő „környezetek” megadásával. A 22. szakaszban már bevezettük:
$$B(+\infty, K) = (K, +\infty), \qquad B(-\infty, K) = (-\infty, K).$$
Megállapodás szerint $\dot{B}(\pm\infty, K) = B(\pm\infty, K)$ — a végtelenben nincs mit „kipontozni”, hiszen $\pm\infty$ nem eleme a környezetnek.

### Végtelen határérték

Tekintsük az $f(x) = \frac{1}{x^2}$ függvényt a $0$ körül. Ha $x$ közel van $0$-hoz, akkor $f(x)$ nagyon nagy: $f(0{,}1) = 100$, $f(0{,}01) = 10\,000$. Azt mondjuk, hogy $f$ a $0$-ban $+\infty$-hez tart. A sémában $\alpha = 0$, $\beta = +\infty$, $V = (K, +\infty)$, és kibontva:

> **Definíció.** $\displaystyle \lim_{x \to a} f(x) = +\infty$, ha (I) $f$ értelmezve van $a$ egy pontozott környezetében, és (II) minden $K \in \mathbb{R}$-hez van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$-ra $f(x) > K$.

**Példa.** $\lim_{x \to 0}\frac{1}{x^2} = +\infty$. Adott $K > 0$-hoz legyen $\delta = \frac{1}{\sqrt{K}}$. Ha $0 < |x| < \delta$, akkor $x^2 < \frac{1}{K}$, tehát $\frac{1}{x^2} > K$.

**Példa.** Az $\frac{1}{x}$ függvénynek a $0$-ban nincs (kétoldali) határértéke, de a féloldaliak léteznek:
$$\lim_{x \to 0+0}\frac{1}{x} = +\infty, \qquad \lim_{x \to 0-0}\frac{1}{x} = -\infty.$$

### Határérték a végtelenben

Az $\frac{1}{x}$ függvény értékei egyre közelebb kerülnek a $0$-hoz, ha $x$ minden határon túl nő. Itt a változó tart a végtelenbe: $\alpha = +\infty$.

> **Definíció.** $\displaystyle \lim_{x \to +\infty} f(x) = b$, ha (I) van olyan $K_0$, hogy $(K_0, +\infty) \subset D(f)$, és (II) minden $\varepsilon > 0$-hoz van olyan $K$, hogy minden $x > K$-ra $|f(x) - b| < \varepsilon$.

Ez nagyon hasonlít a sorozatok határértékére — a különbség csak annyi, hogy $x$ nemcsak egész értékeken fut. (Valóban: ha $\lim_{x \to +\infty} f(x) = b$, akkor az $a_n = f(n)$ sorozat is $b$-hez tart; a megfordítás nem igaz, gondoljunk a $\{x\}$ függvényre, amelyre $f(n) = 0$ minden $n$-re, de $\lim_{x \to +\infty}\{x\}$ nem létezik.)

**Példa.** $\lim_{x \to +\infty}\frac{2x + 1}{x + 3} = 2$. Valóban, $x > 0$ esetén
$$\left|\frac{2x + 1}{x + 3} - 2\right| = \frac{5}{x + 3} < \frac{5}{x},$$
ami kisebb $\varepsilon$-nál, ha $x > \frac{5}{\varepsilon}$. Tehát $K = \frac{5}{\varepsilon}$ jó.

### Tizenöt típus, egy definíció

Összesen tehát **15 féle** határérték definiálható:

- $\alpha$ lehet: $-\infty$, $a - 0$, $a$, $a + 0$, $+\infty$ (öt lehetőség);
- $\beta$ lehet: $-\infty$, $b$, $+\infty$ (három lehetőség).

A tanulság: nem tizenöt különböző definíciót kell megtanulni, hanem **egyet**, a környezetek nyelvén. Bármelyik esetre a definíciót úgy kapjuk, hogy a sémába beírjuk a megfelelő környezeteket:

| | környezet |
|---|---|
| $a$ (pontozott) | $\dot{B}(a, \delta) = (a - \delta, a) \cup (a, a + \delta)$ |
| $a + 0$ | $(a, a + \delta)$ |
| $a - 0$ | $(a - \delta, a)$ |
| $+\infty$ | $(K, +\infty)$ |
| $-\infty$ | $(-\infty, K)$ |
| $b$ (értékoldalon) | $B(b, \varepsilon) = (b - \varepsilon, b + \varepsilon)$ |

**Példa.** $\lim_{x \to -\infty} f(x) = +\infty$ kibontva: minden $K$-hoz van olyan $L$, hogy minden $x < L$-re $f(x) > K$. (Például $f(x) = x^2$.)

## 49. Torlódási pont és leszűkített határérték

Néha egy függvény határértékét csak egy részhalmazon szeretnénk vizsgálni. A féloldali határérték is ilyen: az $a + 0$-beli határérték az $a$-tól jobbra eső pontokra szorítkozik. A következő definíció ezt általánosítja.

> **Definíció (torlódási pont).** Az $\alpha \in \overline{\mathbb{R}}$ az $A \subset \mathbb{R}$ halmaz **torlódási pontja**, ha az $\alpha$ minden környezetében az $A$-nak végtelen sok pontja van.

**Példák.** A $(0, 1)$ intervallum torlódási pontjai a $[0, 1]$ pontjai. Az $\left\{\frac{1}{n} : n \in \mathbb{N}\right\}$ halmaznak egyetlen torlódási pontja van, a $0$ (amely nem is eleme a halmaznak). Az $\mathbb{N}$ egyetlen torlódási pontja $+\infty$. A $\mathbb{Q}$ torlódási pontjai: minden valós szám és $\pm\infty$. Véges halmaznak nincs torlódási pontja.

> **Definíció (leszűkített határérték).** Legyen $\alpha \in \overline{\mathbb{R}}$ az $A$ halmaz torlódási pontja, és $A \subset D(f)$. Az $f$ függvény határértéke **az $A$-ra szorítkozva** $\gamma \in \overline{\mathbb{R}}$, ha a $\gamma$ minden $V$ környezetéhez van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U} \cap A$-ra $f(x) \in V$. Jelölése:
> $$\lim_{\substack{x \to \alpha \\ x \in A}} f(x) = \gamma.$$

A torlódási pont feltétele biztosítja, hogy $\dot{U} \cap A$ sosem üres, tehát a definíció nem válik üressé.

**Megjegyzés.** A féloldali határérték ennek speciális esete: $\lim_{x \to a + 0} f(x) = \lim_{x \to a,\ x \in (a, a + \delta_0)} f(x)$.

**Példa (a Dirichlet-függvény).** Minden $c \in \mathbb{R}$-re
$$\lim_{\substack{x \to c \\ x \in \mathbb{Q}}} D(x) = 1, \qquad \lim_{\substack{x \to c \\ x \in \mathbb{R}\setminus\mathbb{Q}}} D(x) = 0,$$
hiszen a racionális pontokon a függvény állandóan $1$, az irracionálisakon állandóan $0$ (és $c$ mindkét halmaznak torlódási pontja, a 9. szakasz sűrűségi tétele szerint). Mindkét leszűkített határérték létezik, de különbözők — ezért (lásd az alábbi megjegyzést) a nem leszűkített határérték egyetlen pontban sem létezik.

Általánosan: **ha a határérték létezik, akkor bármely olyan halmazra szorítkozva is létezik és ugyanannyi, amelynek $\alpha$ torlódási pontja.** (A definícióban szereplő $\dot{U}$ az $A$-ra szorítkozva is megfelel.) Ezért két különböző leszűkített határérték a határérték nemlétezését bizonyítja.

## 50. Az átviteli elv

Most egy olyan tételt bizonyítunk, amely összeköti a függvények és a sorozatok határértékét. Ennek köszönhetően **minden sorozatokra bizonyított tétel „átvihető” a függvényekre**: a rendőrelv, a műveleti szabályok, a rendezés öröklődése — mind.

**Motiváló példák.**

- $\lim_{x \to 2} x^2 = 4$; és valóban, ha $a_n = 2 + \frac{1}{n}$, akkor $a_n^2 = 4 + \frac{4}{n} + \frac{1}{n^2} \to 4$.
- De vigyázat: egyetlen sorozat nem elég. Az $u_n = \frac{1}{n} \to 0$ sorozatra $\{u_n\} = \frac{1}{n} \to 0$, a $v_n = -\frac{1}{n} \to 0$ sorozatra viszont $\{v_n\} = 1 - \frac{1}{n} \to 1$, és $\lim_{x \to 0}\{x\}$ nem létezik.
- Hasonlóan, $D\!\left(\frac{1}{n}\right) = 1 \to 1$ (hiszen $\frac{1}{n}$ racionális), de $D\!\left(\frac{\sqrt{2}}{n}\right) = 0 \to 0$, és $\lim_{x \to 0} D(x)$ nem létezik.

A tanulság: a helyes állításban **minden** olyan sorozatot figyelembe kell venni, amely a ponthoz tart.

> **Tétel (átviteli elv, Heine-féle jellemzés).** Tegyük fel, hogy $f$ értelmezve van az $\alpha$ egy $\dot{U}$ pontozott környezetében. Ekkor
> $$\lim_{x \to \alpha} f(x) = \gamma \iff \text{minden olyan } (a_n) \text{ sorozatra, amelyre } a_n \in \dot{U} \text{ és } a_n \to \alpha, \text{ teljesül, hogy } f(a_n) \to \gamma.$$

Itt $\alpha$ és $\gamma$ a bővített számegyenes bármely elemei lehetnek (a 15 típus bármelyike). Fontos, hogy az $a_n$ sorozat tagjai a **pontozott** környezetben vannak, vagyis $a_n \neq \alpha$.

*Bizonyítás (az $\alpha = a \in \mathbb{R}$, $\gamma = b \in \mathbb{R}$ esetben; a többi eset ugyanígy megy, a megfelelő környezetekkel).*

**($\Rightarrow$)** Tegyük fel, hogy $\lim_{x \to a} f(x) = b$, és legyen $a_n \to a$, $a_n \in \dot{U}$ (tehát $a_n \neq a$). Legyen $\varepsilon > 0$. A határérték definíciója szerint van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$-ra $|f(x) - b| < \varepsilon$. Mivel $a_n \to a$, van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \delta$; és mivel $a_n \neq a$, ez azt jelenti, hogy $a_n \in \dot{B}(a, \delta)$. Ekkor $|f(a_n) - b| < \varepsilon$. Tehát $f(a_n) \to b$.

**($\Leftarrow$)** Ezt **kontrapozícióval** bizonyítjuk (D. szakasz): megmutatjuk, hogy ha $f(x) \not\to b$, akkor van olyan $a_n \to a$, $a_n \in \dot{U}$ sorozat, amelyre $f(a_n) \not\to b$.

A határérték definíciójának tagadása (B. szakasz):
$$\exists \varepsilon > 0\ \ \forall \delta > 0\ \ \exists x \in \dot{B}(a, \delta) : |f(x) - b| \ge \varepsilon.$$
Alkalmazzuk ezt a $\delta = \frac{1}{n}$ értékekre ($n = 1, 2, \dots$; elég nagy $n$-re $\dot{B}\left(a, \frac{1}{n}\right) \subset \dot{U}$): minden $n$-hez van olyan $a_n$, amelyre
$$0 < |a_n - a| < \frac{1}{n} \qquad \text{és} \qquad |f(a_n) - b| \ge \varepsilon.$$
Az így kapott sorozatra $a_n \to a$ (a rendőrelv szerint), $a_n \neq a$, és $a_n \in \dot{U}$ (elég nagy $n$-re) — de $f(a_n) \not\to b$, hiszen minden tag legalább $\varepsilon$ távolságra van $b$-től. $\blacksquare$

**Fő alkalmazás: a határérték nemlétezésének bizonyítása.** Elég **két** olyan, $\alpha$-hoz tartó sorozatot találni, amelyekre a képsorozatok különböző határértékhez tartanak (vagy egy olyat, amelyre a képsorozat divergens).

**Kidolgozott példa: $\lim_{x \to 0}\left\{\frac{1}{x}\right\}$ nem létezik.** Legyen $a_n = \frac{1}{n}$ és $b_n = \frac{1}{n + \frac{1}{2}}$. Mindkét sorozat $0$-hoz tart, és nem veszi fel a $0$-t. Ugyanakkor
$$\left\{\frac{1}{a_n}\right\} = \{n\} = 0 \to 0, \qquad \left\{\frac{1}{b_n}\right\} = \left\{n + \frac{1}{2}\right\} = \frac{1}{2} \to \frac{1}{2}.$$
A két képsorozat határértéke különbözik, tehát a függvényhatárérték nem létezik.

## 51. Határérték és műveletek; kompozíció

Az átviteli elv segítségével a sorozatokra vonatkozó műveleti szabályok (25. szakasz) azonnal átvihetők a függvényekre.

> **Tétel (határérték és műveletek).** Ha $\lim_{x \to \alpha} f(x) = b$ és $\lim_{x \to \alpha} g(x) = c$ ($b, c \in \mathbb{R}$), akkor
>
> 1. $\displaystyle \lim_{x \to \alpha}\big(f(x) + g(x)\big) = b + c$;
> 2. $\displaystyle \lim_{x \to \alpha} f(x)g(x) = bc$;
> 3. ha $c \neq 0$, akkor $\displaystyle \lim_{x \to \alpha}\frac{f(x)}{g(x)} = \frac{b}{c}$.

*Bizonyítás.* Mindhárom pontban ugyanaz a minta. Nézzük például a 2. pontot. Legyen $a_n \to \alpha$ tetszőleges sorozat a közös pontozott környezetből. Az átviteli elv ($\Rightarrow$ irány) szerint $f(a_n) \to b$ és $g(a_n) \to c$. A sorozatokra vonatkozó szorzattétel szerint $f(a_n)g(a_n) \to bc$. Mivel ez minden ilyen sorozatra igaz, az átviteli elv ($\Leftarrow$ irány) szerint $\lim_{x \to \alpha} f(x)g(x) = bc$.

A 3. pontban még azt is meg kell jegyezni, hogy $c \neq 0$ miatt $g(x) \neq 0$ az $\alpha$ egy pontozott környezetében (ezt az előjeltartás biztosítja, lásd az 53. szakaszt), így a hányados ott értelmes. $\blacksquare$

Ez a bizonyítási minta — **sorozatra visszavezetni, ott alkalmazni a kész tételt, majd visszatérni** — végig ismétlődik. Ugyanígy kapjuk meg a végtelen határértékekre vonatkozó szabályokat (26. szakasz táblázatai), és a következőt:

> **Tétel (rendőrelv függvényekre).** Ha az $\alpha$ egy pontozott környezetében $f(x) \le g(x) \le h(x)$, és $\lim_{x \to \alpha} f(x) = \lim_{x \to \alpha} h(x) = b$, akkor $\lim_{x \to \alpha} g(x) = b$.

### Kidolgozott példák

**1. Polinomok és racionális törtfüggvények.** Az $\lim_{x \to a} x = a$ és $\lim_{x \to a} c = c$ határértékekből a műveleti szabályokkal minden $p$ polinomra $\lim_{x \to a} p(x) = p(a)$, és minden $R = \frac{p}{q}$ racionális törtfüggvényre, ha $q(a) \neq 0$, $\lim_{x \to a} R(x) = R(a)$. Például
$$\lim_{x \to 2}\frac{x^2 + 1}{x - 3} = \frac{5}{-1} = -5.$$

**2. „Lyukas” racionális törtfüggvények.** Ha a nevező az $a$-ban nulla, először egyszerűsíteni kell:
$$\lim_{x \to 3}\frac{x^2 - 9}{x^2 - 5x + 6} = \lim_{x \to 3}\frac{(x - 3)(x + 3)}{(x - 3)(x - 2)} = \lim_{x \to 3}\frac{x + 3}{x - 2} = 6.$$

**3. Határérték a végtelenben.** Ugyanúgy, mint a sorozatoknál, osztunk a legmagasabb hatvánnyal:
$$\lim_{x \to +\infty}\frac{3x^2 - x}{x^2 + 1} = \lim_{x \to +\infty}\frac{3 - \frac{1}{x}}{1 + \frac{1}{x^2}} = 3.$$

**4. Rendőrelv.** $\lim_{x \to 0} x\,D(x) = 0$, hiszen $0 \le |x\,D(x)| \le |x|$, és $|x| \to 0$. Meglepő: a Dirichlet-függvénynek sehol sincs határértéke, de az $x$-szel szorozva a $0$-ban már van.

### Az összetett függvény határértéke

A gyakorlatban gyakran helyettesítéssel számolunk határértéket: például $\lim_{x \to 0}(1 + x^2)^3$-nál a $t = 1 + x^2$ helyettesítéssel, $t \to 1$, a $t^3 \to 1$ határértékre jutunk. Ennek jogosságát a következő tétel adja meg.

> **Tétel (az összetett függvény határértéke).** Tegyük fel, hogy
>
> - $\lim_{x \to \alpha} g(x) = \gamma$ ($\gamma \in \overline{\mathbb{R}}$),
> - az $\alpha$ egy pontozott környezetében $g(x) \neq \gamma$, és
> - $\lim_{t \to \gamma} f(t) = \beta$.
>
> Ekkor $\displaystyle \lim_{x \to \alpha} f(g(x)) = \beta$.

*Bizonyítás.* Legyen $a_n \to \alpha$ tetszőleges sorozat a pontozott környezetből. Legyen $t_n = g(a_n)$. Az átviteli elv szerint $t_n \to \gamma$, és a második feltétel szerint $t_n \neq \gamma$. Mivel $\lim_{t \to \gamma} f(t) = \beta$, az átviteli elv (most $f$-re alkalmazva) szerint $f(t_n) \to \beta$, azaz $f(g(a_n)) \to \beta$. Mivel ez minden ilyen $(a_n)$ sorozatra igaz, az átviteli elv szerint $\lim_{x \to \alpha} f(g(x)) = \beta$. $\blacksquare$

**Miért kell a $g(x) \neq \gamma$ feltétel?** Mert az $f$ határértéke a $\gamma$-ban nem függ $f(\gamma)$-tól, a kompozíció viszont felveheti ezt az értéket. Ellenpélda: legyen $g(x) = 0$ (állandó) és $f(t) = (\operatorname{sgn} t)^2$. Ekkor $\lim_{x \to 0} g(x) = 0$ és $\lim_{t \to 0} f(t) = 1$, de $f(g(x)) = f(0) = 0$ minden $x$-re, tehát $\lim_{x \to 0} f(g(x)) = 0 \neq 1$. (Az 53. szakaszban látni fogjuk, hogy ha $f$ **folytonos** a $\gamma$-ban, akkor a feltétel elhagyható.)

**Szimbolikus szabályok.** A szokásos rövidítések — $\infty + \infty = \infty$, $\infty \cdot a = \infty$ ($a > 0$), $\frac{1}{\infty} = 0$ és társaik — ezekre a tételekre utalnak, de nem helyettesítik őket. A kritikus esetekben ($\infty - \infty$, $0 \cdot \infty$, $\frac{0}{0}$, $\frac{\infty}{\infty}$, lásd a 26. szakasz táblázatait) nincs ilyen szabály; ezekben a függvényt át kell alakítani, vagy — a XIII. részben — a L'Hospital-szabályt kell alkalmazni.

---

## A IX. rész összefoglalása

- $\lim_{x \to a} f(x) = b$: minden $\varepsilon > 0$-hoz van $\delta > 0$, hogy $0 < |x - a| < \delta$ esetén $|f(x) - b| < \varepsilon$. A határérték független a függvény $a$-beli értékétől.
- A kétoldali határérték pontosan akkor létezik, ha a két féloldali létezik és egyenlő.
- Az egységes séma (környezetekkel) mind a 15 határérték-típust lefedi.
- Leszűkített határérték: csak egy halmaz pontjain vizsgáljuk a függvényt. Két különböző leszűkített határérték a határérték nemlétezését jelenti.
- Átviteli elv: $\lim_{x \to \alpha} f(x) = \gamma$ pontosan akkor, ha minden $a_n \to \alpha$ ($a_n \neq \alpha$) sorozatra $f(a_n) \to \gamma$. Ezzel a sorozatokra bizonyított tételek (műveletek, rendőrelv) átvihetők, és nemlétezés is bizonyítható.
- Összetett függvény határértéke: helyettesítés, a $g(x) \neq \gamma$ feltétellel.

## Feladatok a IX. részhez

1. Az $\varepsilon$–$\delta$ definíció alapján bizonyítsuk be: a) $\lim_{x \to 3}(2x + 1) = 7$; b) $\lim_{x \to 1} x^2 = 1$; c) $\lim_{x \to 0+0}\sqrt{x} = 0$.
2. Számítsuk ki: a) $\lim_{x \to 2}\frac{x^2 - 4}{x - 2}$; b) $\lim_{x \to 0}\frac{\sqrt{1 + x} - 1}{x}$; c) $\lim_{x \to +\infty}\frac{3x^2 - x}{x^2 + 1}$; d) $\lim_{x \to +\infty}\left(\sqrt{x^2 + x} - x\right)$; e) $\lim_{x \to 1}\frac{x^3 - 1}{x - 1}$.
3. Határozzuk meg az egészrész-függvény féloldali határértékeit a $k \in \mathbb{Z}$ pontokban, és mutassuk meg, hogy $\lim_{x \to 1/2}[x] = 0$.
4. Az átviteli elv segítségével mutassuk meg, hogy a Dirichlet-függvénynek egyetlen pontban sincs határértéke.
5. Bizonyítsuk be, hogy $\lim_{x \to 0} x\left[\frac{1}{x}\right] = 1$.
6. Számítsuk ki a $\lim_{x \to 0+0}\frac{1}{x}$, $\lim_{x \to 0-0}\frac{1}{x^3}$ és $\lim_{x \to 3+0}\frac{x}{x - 3}$ határértékeket.

### Megoldási útmutatók

1. a) $|2x + 1 - 7| = 2|x - 3|$, $\delta = \frac{\varepsilon}{2}$. b) $|x^2 - 1| = |x - 1||x + 1| < 3|x - 1|$, ha $|x - 1| < 1$; $\delta = \min\{1, \frac{\varepsilon}{3}\}$. c) $0 < x < \varepsilon^2$ esetén $\sqrt{x} < \varepsilon$; $\delta = \varepsilon^2$.
2. a) $4$. b) $\frac{\sqrt{1 + x} - 1}{x} = \frac{1}{\sqrt{1 + x} + 1} \to \frac{1}{2}$ (a gyökfüggvény $1$-beli határértéke a 4. példához hasonlóan adódik). c) $3$. d) $\frac{x}{\sqrt{x^2 + x} + x} = \frac{1}{\sqrt{1 + 1/x} + 1} \to \frac{1}{2}$. e) $x^2 + x + 1 \to 3$.
3. $[k - 0] = k - 1$, $[k + 0] = k$. A $\frac{1}{2}$ körül, $\delta = \frac{1}{2}$-del, a függvény állandóan $0$.
4. Ha $c \in \mathbb{R}$, legyen $r_n$ racionális, $s_n$ irracionális, mindkettő $c$-hez tart, és egyik sem egyenlő $c$-vel (a 9. szakasz sűrűségi tétele szerint ilyenek vannak, például $r_n \in \left(c, c + \frac{1}{n}\right)$). Ekkor $D(r_n) = 1$, $D(s_n) = 0$.
5. $x > 0$ esetén $\frac{1}{x} - 1 < \left[\frac{1}{x}\right] \le \frac{1}{x}$, így $1 - x < x\left[\frac{1}{x}\right] \le 1$. $x < 0$ esetén az $x$-szel való szorzás megfordítja az egyenlőtlenségeket: $1 \le x\left[\frac{1}{x}\right] < 1 - x$. A rendőrelv szerint mindkét oldalról $1$ a határérték.
6. $+\infty$; $-\infty$; $+\infty$ (a számláló $3$-hoz, a nevező pozitív értékeken $0$-hoz tart).

---
