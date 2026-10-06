# Analízis 1 – 8. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 76. feladat

Van-e olyan nem konstans függvény, ami minden racionális szám szerint periodikus? Hát minden irracionális szám szerint?

**Megoldás.**

**Racionális periódusok: van.** A Dirichlet-függvény
$$D(x) = \begin{cases} 1, & x \in \mathbb{Q}, \\ 0, & x \notin \mathbb{Q} \end{cases}$$
nem konstans, és minden $q \in \mathbb{Q}$ periódusa: $x + q \in \mathbb{Q} \iff x \in \mathbb{Q}$, így $D(x + q) = D(x)$.

**Minden irracionális szám szerint periodikus: csak a konstans függvény.** Legyen $x, y \in \mathbb{R}$ tetszőleges, $d = y - x$. Ha $d$ irracionális, akkor $f(y) = f(x + d) = f(x)$. Ha $d$ racionális, írjuk $d = \sqrt2 + (d - \sqrt2)$ alakba, ahol mindkét tag irracionális; így $f(y) = f(x + \sqrt2 + (d - \sqrt2)) = f(x + \sqrt2) = f(x)$. (Negatív periódus $p$ esetén $f(x + p) = f(x)$ abból következik, hogy $-p$ periódus, és $f(x) = f((x + p) + (-p))$.) Tehát $f$ konstans.

::: elmelet
**Elméleti háttér — periódusok csoportja.** Egy függvény periódusainak halmaza zárt az összeadásra és az ellentettképzésre (ha $p, r$ periódusok, akkor $p + r$ és $-p$ is). Ha tehát minden irracionális szám periódus, akkor az irracionálisak által generált halmaz is az: minden valós szám előáll két irracionális összegeként, így minden szám periódus, és a függvény konstans. A racionális számok viszont csak egy valódi részcsoportot generálnak ($\mathbb Q$), ezért ott van nem konstans példa (Dirichlet-függvény).
:::

## 77. feladat

Létezik-e $f : \mathbb{R} \to \mathbb{R}$ függvény, melynek minden pontban szigorú lokális maximuma van?

**Megoldás.**

**Nem létezik.** Megmutatjuk, hogy bármely $f : \mathbb{R} \to \mathbb{R}$ szigorú lokális maximumhelyeinek halmaza megszámlálható; $\mathbb{R}$ viszont nem az.

Ha $x$ szigorú lokális maximumhely, akkor van olyan $(p_x, q_x)$ intervallum racionális végpontokkal, hogy $x \in (p_x, q_x)$, és minden $y \in (p_x, q_x)$, $y \neq x$ esetén $f(y) < f(x)$. Az $x \mapsto (p_x, q_x) \in \mathbb{Q}^2$ hozzárendelés injektív: ha $x \neq x'$-hez ugyanaz az intervallum tartozna, akkor mindkettő benne lenne, így $f(x') < f(x)$ és $f(x) < f(x')$ is teljesülne – ellentmondás. Mivel $\mathbb{Q}^2$ megszámlálható, a szigorú lokális maximumhelyek is legfeljebb megszámlálhatóan sokan vannak. $\blacksquare$

::: elmelet
**Elméleti háttér — megszámlálhatósági érv racionális környezetekkel.** Minden pont környezetei közül választhatunk racionális végpontú intervallumot, és ilyen intervallumból csak **megszámlálhatóan** sok van ($\mathbb Q^2$). Ha a tulajdonság (szigorú lokális maximum) miatt két különböző ponthoz nem tartozhat ugyanaz az intervallum, akkor a pontok halmaza injektíven képződik $\mathbb Q^2$-be, így megszámlálható. Mivel $\mathbb R$ nem megszámlálható, nem lehet minden pont ilyen.
:::

## 78. feladat

Bizonyítsuk be, hogy $x^k$ szigorúan konvex $[0, \infty)$-ben, minden $k > 1$ egész számra.

**Megoldás.**

Használjuk a konvexitás jellemzését a különbségi hányados függvénnyel: $f$ akkor és csak akkor szigorúan konvex az $I$ intervallumon, ha minden $a \in I$-re az
$$m_a(x) = \frac{f(x) - f(a)}{x - a} \qquad (x \in I,\ x \neq a)$$
függvény szigorúan monoton nő.

$f(x) = x^k$ esetén ($k \ge 2$ egész) az $x^k - a^k = (x - a)(x^{k-1} + x^{k-2}a + \dots + a^{k-1})$ azonosság szerint
$$m_a(x) = \sum_{j=0}^{k-1} x^j a^{k-1-j}.$$
Ha $a \ge 0$, ez $x$-nek nemnegatív együtthatós polinomja, amelyben az $x^{k-1}$ tag együtthatója $1$; $[0, \infty)$-en minden tag monoton nő, az $x^{k-1}$ tag pedig ($k - 1 \ge 1$ miatt) szigorúan. Tehát $m_a$ szigorúan monoton nő $[0, \infty) \setminus \{a\}$-n, és így $x^k$ szigorúan konvex $[0, \infty)$-ben. $\blacksquare$

::: elmelet
**Elméleti háttér — konvexitás és a különbségi hányados.** $f$ pontosan akkor (szigorúan) konvex $I$-n, ha minden $a \in I$-re a húrok meredeksége, $m_a(x) = \frac{f(x) - f(a)}{x - a}$, (szigorúan) monoton nő. Szemléletesen: konvex függvény grafikonján a húrok egyre meredekebbek. Polinomoknál az $x^k - a^k = (x - a)\sum_j x^ja^{k-1-j}$ azonosság a meredekséget explicit polinommá alakítja, aminek a monotonitása közvetlenül látszik.
:::

## 79. feladat

Az előadáson bizonyítással szerepelt a Jensen-egyenlőtlenség két tagra. A több tagra vonatkozó változatot csak kimondtuk:

*$f$ acsa konvex $I$-n, ha $\forall x_1, \dots, x_n \in I$ és $\forall p_1, \dots, p_n > 0$, $p_1 + \dots + p_n = 1$ esetén*
$$f(p_1 x_1 + \dots + p_n x_n) \le p_1 f(x_1) + \dots + p_n f(x_n).$$
Bizonyítsuk be!

**Megoldás.**

Az az irány, hogy a több tagú egyenlőtlenségből következik a konvexitás, triviális: $n = 2$-re éppen a definíciót kapjuk. A másik irányt $n$ szerinti indukcióval bizonyítjuk; $n = 1$ triviális, $n = 2$ a definíció.

*Indukciós lépés* $n \to n + 1$: legyenek $p_1, \dots, p_{n+1} > 0$, összegük $1$, és $s = p_1 + \dots + p_n = 1 - p_{n+1} \in (0, 1)$. Legyen
$$y = \frac{p_1 x_1 + \dots + p_n x_n}{s}.$$
Ez az $x_1, \dots, x_n$ pontok súlyozott átlaga ($\frac{p_i}{s} > 0$, összegük 1), így $\min x_i \le y \le \max x_i$, tehát $y \in I$. Ekkor $p_1 x_1 + \dots + p_{n+1}x_{n+1} = s\,y + p_{n+1}x_{n+1}$, és a két tagú Jensen-egyenlőtlenség, majd az indukciós feltevés (a $\frac{p_i}{s}$ súlyokkal) szerint
$$f\Big(\sum_{i=1}^{n+1} p_i x_i\Big) \le s\,f(y) + p_{n+1}f(x_{n+1}) \le s\sum_{i=1}^{n}\frac{p_i}{s}f(x_i) + p_{n+1}f(x_{n+1}) = \sum_{i=1}^{n+1}p_i f(x_i). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — Jensen-egyenlőtlenség indukcióval.** A több tagú Jensen-egyenlőtlenséget úgy vezetjük vissza a két tagúra, hogy az első $n$ pont súlyozott átlagát egyetlen pontnak tekintjük (súlya $s = p_1 + \dots + p_n$), és a súlyokat **újranormáljuk** ($\frac{p_i}{s}$, összegük $1$). Fontos lépés: a súlyozott átlag a pontok között van, tehát az intervallumban marad (az intervallum konvex halmaz).
:::

## 80. feladat

Bizonyítsuk be, hogy ha $a_1, \dots, a_n \ge 0$ és $k > 1$ egész, akkor
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt[k]{\frac{a_1^k + \dots + a_n^k}{n}}.$$

**Megoldás.**

A 78. feladat szerint $f(x) = x^k$ konvex $[0, \infty)$-ben. A Jensen-egyenlőtlenség a $p_i = \frac1n$ súlyokkal:
$$\left(\frac{a_1 + \dots + a_n}{n}\right)^k \le \frac{a_1^k + \dots + a_n^k}{n}.$$
Mindkét oldal nemnegatív, és a $t \mapsto \sqrt[k]{t}$ függvény monoton nő, így $k$-adik gyököt vonva kapjuk az állítást. $\blacksquare$ (Egyenlőség pontosan akkor, ha $a_1 = \dots = a_n$, a szigorú konvexitás miatt.)

::: elmelet
**Elméleti háttér — közepek a Jensen-egyenlőtlenségből.** Konvex $f$-re $f(\text{átlag}) \le \text{átlag}(f)$. Az $f(x) = x^k$ választással a számtani és a $k$-adik hatványközép közötti egyenlőtlenséget kapjuk (a négyzetes közép a $k = 2$ eset). A monoton $\sqrt[k]{\cdot}$ függvény alkalmazása megtartja az egyenlőtlenséget. Szigorú konvexitásnál egyenlőség csak egyenlő számokra áll.
:::

## 81. feladat

Bizonyítsuk be, hogy ha $f$ konvex, de nem szigorúan konvex az $I$ intervallumban, akkor $I$-nek van olyan részintervalluma, amelyben $f$ lineáris.

**Megoldás.**

Mivel $f$ nem szigorúan konvex, vannak $a < b$ pontok $I$-ben és $\lambda \in (0, 1)$, hogy $c = \lambda a + (1 - \lambda)b$ esetén
$$f(c) = \lambda f(a) + (1 - \lambda) f(b)$$
(a konvexitás miatt itt $\le$ áll, és nem szigorú). Legyen $L$ az $(a, f(a))$ és $(b, f(b))$ pontokon átmenő egyenes (lineáris függvény). A konvexitás miatt $f \le L$ az $[a, b]$ intervallumon, és $f(c) = L(c)$.

**Állítás:** $f = L$ az egész $[a, b]$-n. Tegyük fel, hogy valamely $x \in (a, c)$-re $f(x) < L(x)$. Ekkor $c$ az $x$ és $b$ között van: $c = \mu x + (1 - \mu) b$ valamely $\mu \in (0, 1)$-re, és
$$f(c) \le \mu f(x) + (1 - \mu) f(b) < \mu L(x) + (1 - \mu) L(b) = L(c),$$
hiszen $L$ lineáris. Ez ellentmond $f(c) = L(c)$-nek. Ugyanígy $x \in (c, b)$-re (ekkor $c$ az $a$ és $x$ között van). Tehát $f$ lineáris az $[a, b]$ részintervallumon. $\blacksquare$

::: elmelet
**Elméleti háttér — konvex függvény és húrjai.** Konvex függvény grafikonja a húrjai alatt (vagy rajtuk) halad. Ha egy belső pontban a grafikon **rajta van** a húron, akkor a teljes intervallumon rajta kell lennie: különben egy rövidebb húr (amely egy alacsonyabb ponthoz megy) a középső pontot a húr alá kényszerítené. A konvexitás definícióját tehát kis, ügyesen választott háromszögekre alkalmazzuk.
:::

## 82. feladat

Bizonyítsuk be, hogy

a) $\sqrt{x}$ szigorúan konkáv $[0, \infty)$-ben;

b) $\sqrt[k]{x}$ szigorúan konkáv $[0, \infty)$-ben minden $k > 1$ egészre.

**Megoldás.**

Szigorú konkávitás $\iff$ minden $a$-ra az $m_a(x) = \frac{f(x) - f(a)}{x - a}$ különbségi hányados szigorúan monoton **fogy**.

a) $f(x) = \sqrt x$: $m_a(x) = \dfrac{\sqrt x - \sqrt a}{x - a} = \dfrac{1}{\sqrt x + \sqrt a}$ ($x \ne a$, $x, a \ge 0$). A nevező $x$-ben szigorúan nő, tehát $m_a$ szigorúan fogy: $\sqrt x$ szigorúan konkáv $[0, \infty)$-ben.

b) $f(x) = \sqrt[k]{x}$: legyen $u = \sqrt[k]{x}$, $v = \sqrt[k]{a}$; ekkor $x - a = u^k - v^k$, és
$$m_a(x) = \frac{u - v}{u^k - v^k} = \frac{1}{u^{k-1} + u^{k-2}v + \dots + v^{k-1}}.$$
A nevező pozitív (nem lehet $u = v = 0$, mert $x \ne a$), és $u$-ban – így $x$-ben – szigorúan nő, tehát $m_a$ szigorúan fogy: $\sqrt[k]{x}$ szigorúan konkáv. $\blacksquare$

::: elmelet
**Elméleti háttér — konkávitás a különbségi hányadossal.** $f$ (szigorúan) konkáv $\iff$ $-f$ (szigorúan) konvex $\iff$ minden $a$-ra $m_a$ (szigorúan) fogy. Gyökfüggvényeknél a meredekség gyöktelenítéssel (illetve az $u^k - v^k$ szorzattá bontással) $\frac{1}{\text{növő pozitív kifejezés}}$ alakra hozható, ami szigorúan fogy.
:::

## 83. feladat

Adott $\varepsilon > 0$-hoz alkalmas $\delta_\varepsilon$-t keresve határozzuk meg a következő határértékeket:

a) $\lim\limits_{x \to 2} 3x^2 + 6$, b) $\lim\limits_{x \to 1/2} \dfrac{1}{x}$, c) $\lim\limits_{x \to 2} \sqrt{x}$,

d) $\lim\limits_{x \to 0} \dfrac{x^2 - 1}{2x^2 - x - 1}$, e) $\lim\limits_{x \to 0} x\left\{\dfrac{1}{x}\right\}$, f) $\lim\limits_{x \to 0} x\left[\dfrac{1}{x}\right]$.

**Megoldás.**

a) $\lim_{x\to2} (3x^2 + 6) = 18$. $|3x^2 + 6 - 18| = 3|x - 2|\,|x + 2|$. Ha $|x - 2| < 1$, akkor $|x + 2| < 5$, így a kifejezés $< 15|x - 2|$. **$\delta_\varepsilon = \min\{1, \varepsilon/15\}$.**

b) $\lim_{x\to1/2} \frac1x = 2$. $\left|\frac1x - 2\right| = \frac{2|x - \frac12|}{|x|}$. Ha $|x - \frac12| < \frac14$, akkor $x > \frac14$, így a kifejezés $< 8|x - \frac12|$. **$\delta_\varepsilon = \min\{\frac14, \frac\varepsilon8\}$.**

c) $\lim_{x\to2} \sqrt x = \sqrt2$. $|\sqrt x - \sqrt2| = \frac{|x - 2|}{\sqrt x + \sqrt2} \le \frac{|x-2|}{\sqrt2}$. **$\delta_\varepsilon = \min\{2, \sqrt2\,\varepsilon\}$** (a $\delta \le 2$ az értelmezési tartomány miatt).

d) $2x^2 - x - 1 = (2x + 1)(x - 1)$ és $x^2 - 1 = (x - 1)(x + 1)$, így $x \ne 1$-re a függvény $\frac{x + 1}{2x + 1}$, és a határérték $\frac{0+1}{0+1} = 1$. $\left|\frac{x+1}{2x+1} - 1\right| = \frac{|x|}{|2x + 1|}$. Ha $|x| < \frac14$, akkor $|2x + 1| > \frac12$, így a kifejezés $< 2|x|$. **$\delta_\varepsilon = \min\{\frac14, \frac\varepsilon2\}$**, a határérték $1$.

e) $0 \le \{1/x\} < 1$ miatt $|x\{1/x\} - 0| \le |x|$. **A határérték $0$, $\delta_\varepsilon = \varepsilon$.**

f) $x[1/x] = x\left(\frac1x - \{1/x\}\right) = 1 - x\{1/x\}$, így $|x[1/x] - 1| \le |x|$. **A határérték $1$, $\delta_\varepsilon = \varepsilon$.**

::: elmelet
**Elméleti háttér — függvényhatárérték $\varepsilon$–$\delta$ definícióval.** $\lim_{x \to a} f(x) = b$, ha $\forall \varepsilon > 0\ \exists \delta > 0: 0 < |x - a| < \delta,\ x \in D(f) \Rightarrow |f(x) - b| < \varepsilon$. A szokásos technika: $|f(x) - b|$-ből kiemeljük az $|x - a|$ tényezőt, a maradékot $a$ egy rögzített környezetében (pl. $|x - a| < 1$) **korlátozzuk**, és $\delta = \min\{\text{a rögzített sugár}, \varepsilon/\text{korlát}\}$. Hányadosnál a nevezőt kell alulról becsülni, hogy ne lehessen közel $0$-hoz.
:::

## 84. feladat

Mutassuk meg, hogy $\lim\limits_{x \to a} f(x) = b$ acsa, ha $\lim\limits_{x \to a-0} f(x) = \lim\limits_{x \to a+0} f(x) = b$.

**Megoldás.**

($\Rightarrow$) Ha minden $\varepsilon$-hoz van $\delta$, hogy $0 < |x - a| < \delta$ esetén $|f(x) - b| < \varepsilon$, akkor ez speciálisan $a < x < a + \delta$ és $a - \delta < x < a$ esetén is teljesül, tehát mindkét egyoldali határérték $b$.

($\Leftarrow$) Adott $\varepsilon$-hoz a bal oldali határérték ad $\delta_1$-et ($a - \delta_1 < x < a \Rightarrow |f(x) - b| < \varepsilon$), a jobb oldali $\delta_2$-t. $\delta = \min\{\delta_1, \delta_2\}$ esetén $0 < |x - a| < \delta$-ból $|f(x) - b| < \varepsilon$. $\blacksquare$

(Feltettük, hogy $a$ mindkét oldalról torlódási pontja $D(f)$-nek; ha csak az egyik oldalról, akkor a határérték az ottani egyoldali határértékkel egyezik meg.)

::: elmelet
**Elméleti háttér — egyoldali határértékek.** A kétoldali határérték pontosan akkor létezik, ha mindkét egyoldali létezik és egyenlő. A bizonyítás a definíciók összevetése: a pontozott környezet a bal és a jobb félkörnyezet uniója, és két $\delta$ közül a **kisebbik** mindkét oldalon jó. (A $\min$-trükk az „és” kapcsolat szokásos kezelése a definíciókban.)
:::

## 85. feladat

Adjuk meg a $B(0, 1)$, $\dot{B}(0, 1)$, $\mathbb{N}$, $\mathbb{Q}$ és az $\{1/n : n \in \mathbb{N}\}$ halmazok torlódási pontjait!

**Megoldás.**

$a$ torlódási pontja $H$-nak, ha minden pontozott környezete tartalmaz $H$-beli pontot.

- $B(0, 1) = (-1, 1)$: torlódási pontjai $[-1, 1]$.
- $\dot B(0, 1) = (-1, 0) \cup (0, 1)$: torlódási pontjai szintén $[-1, 1]$ (a $0$ is, bár nem eleme).
- $\mathbb{N}$: nincs (valós) torlódási pontja – bármely $x$-nek van olyan pontozott környezete, amely nem tartalmaz természetes számot. (A bővített számegyenesen $+\infty$ torlódási pont.)
- $\mathbb{Q}$: minden valós szám torlódási pont ($\mathbb{Q}$ sűrű), azaz a halmaz $\mathbb{R}$.
- $\{\frac1n : n \in \mathbb{N}\}$: egyetlen torlódási pont a $0$ (bármely más pontnak van olyan környezete, amelyben legfeljebb egy eleme van a halmaznak).

::: elmelet
**Elméleti háttér — torlódási pont.** $a$ torlódási pontja $H$-nak, ha minden pontozott környezete tartalmaz $H$-beli pontot (ekvivalensen: van $H$-beli, $a$-tól különböző pontokból álló, $a$-hoz tartó sorozat). Nem kell $H$-beli elemnek lennie, és $H$ elemei közül sem mindegyik torlódási pont (izolált pontok). A sűrű halmazok ($\mathbb Q$) torlódási pontjai az egész $\mathbb R$.
:::

## 86. feladat

Mutassuk meg, hogy ha $\lim\limits_{x \to a} f(x) = b < c = \lim\limits_{x \to a} g(x)$, akkor létezik az $a$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) < g(x)$.

**Megoldás.**

Legyen $\varepsilon = \frac{c - b}{2} > 0$. A határértékek definíciója szerint van $\delta_1$, hogy $0 < |x - a| < \delta_1$ esetén $f(x) < b + \varepsilon = \frac{b + c}{2}$, és van $\delta_2$, hogy $0 < |x - a| < \delta_2$ esetén $g(x) > c - \varepsilon = \frac{b + c}{2}$. Legyen $\delta = \min\{\delta_1, \delta_2\}$ és $\dot U = (a - \delta, a + \delta) \setminus \{a\}$. Ekkor minden $x \in \dot U$-ra
$$f(x) < \frac{b + c}{2} < g(x). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — határérték és egyenlőtlenség.** Ha két függvény határértéke különbözik, akkor a pont egy pontozott környezetében a függvények „elválnak”: $\varepsilon = \frac{c - b}{2}$ választással a két határérték köré rajzolt környezetek diszjunktak, és mindkét függvény a saját környezetében marad. Ez a **határérték-egyenlőtlenség (előjeltartás)** elve, ami sorozatokra is ugyanígy igaz.
:::

## 87. feladat

Legyen $R(x)$ a Riemann-függvény, azaz $R(0) = 1$, $R(p/q) = 1/q$, ha $x = p/q$, $(p, q) = 1$, $q > 0$, végül $R(x) = 0$, ha $x \notin \mathbb{Q}$. Periodikus-e $R$? Hol vannak a globális és lokális maximum- és minimumhelyei? $\lim\limits_{x \to 0} R(x) = ?$, $\lim\limits_{x \to \sqrt{2}} R(x) = ?$ és $\lim\limits_{x \to 0} \operatorname{sgn}^2(R(x)) = ?$

**Megoldás.**

**Periodicitás:** $R$ periodikus, periódusa $1$. Ha $x \notin \mathbb{Q}$, akkor $x + 1 \notin \mathbb{Q}$. Ha $x = \frac pq$ egyszerűsíthetetlen, akkor $x + 1 = \frac{p + q}{q}$, és $(p + q, q) = (p, q) = 1$, tehát a nevező ugyanaz; és $R(0) = R(1) = 1$ (a $0 = \frac01$ konvencióval összhangban). A legkisebb pozitív periódus $1$: nem egész racionális $r = \frac ab$ ($b > 1$) esetén $R(0 + r) = \frac1b \ne 1 = R(0)$, irracionális $r$-re $R(r) = 0 \ne R(0)$.

**Globális szélsőértékek:** maximum értéke $1$, az egész számokban ($q = 1$); minimum értéke $0$, minden irracionális pontban.

**Lokális szélsőértékek:**

- Minden racionális $\frac pq$ **szigorú lokális maximumhely**: egy korlátos intervallumban csak véges sok legfeljebb $q$ nevezőjű tört van, így $\frac pq$-nak van olyan pontozott környezete, amelyben minden pontban $R < \frac1q$.
- Minden irracionális pont **lokális (nem szigorú) minimumhely**, hiszen ott $R = 0$ a globális minimum.
- Irracionális pont nem lokális maximumhely (közelében vannak pozitív értékek), racionális pont nem lokális minimumhely (közelében vannak irracionálisok, ahol $R = 0$).

**Határértékek:** minden $a \in \mathbb{R}$-re $\lim_{x \to a} R(x) = 0$. Adott $\varepsilon > 0$-hoz az $(a - 1, a + 1)$ intervallumban csak véges sok olyan tört van, amelynek nevezője $\le 1/\varepsilon$; legyen $\delta$ kisebb, mint ezek $a$-tól vett (nem nulla) távolsága. Ekkor $0 < |x - a| < \delta$ esetén $0 \le R(x) < \varepsilon$. Tehát
$$\lim_{x \to 0} R(x) = 0, \qquad \lim_{x \to \sqrt2} R(x) = 0.$$

$\operatorname{sgn}^2(R(x)) = 1$, ha $x \in \mathbb{Q}$, és $0$, ha $x \notin \mathbb{Q}$ – ez a Dirichlet-függvény. **$\lim_{x \to 0} \operatorname{sgn}^2(R(x))$ nem létezik**, mert $0$ minden pontozott környezetében felveszi a $0$ és az $1$ értéket is.

::: elmelet
**Elméleti háttér — a Riemann-függvény.** A kulcs-megfigyelés: egy korlátos intervallumban **csak véges sok** legfeljebb $N$ nevezőjű racionális szám van. Ezért minden pont egy elég kicsi pontozott környezetében $R$ értéke tetszőlegesen kicsi, azaz $\lim_{x\to a} R(x) = 0$ mindenhol — és $R$ pontosan az irracionális pontokban folytonos. A Dirichlet-függvénynek viszont sehol nincs határértéke, mert minden környezetben felveszi a $0$-t és az $1$-et is (a racionálisak és irracionálisak is sűrűek).
:::

## Röpzhra

**Definíciók:** konvexitás, gyenge konvexitás.

**Tételek:** konvexitás karakterizálása $m_a(x)$-szel, Jensen-egyenlőtlenség (két változat), számtani és négyzetes közép közötti egyenlőtlenség.
