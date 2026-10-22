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
**Elméleti háttér — periodikus függvények és a periódusok csoportja.**

*Definíció.* $p \ne 0$ az $f : \mathbb{R} \to \mathbb{R}$ függvény **periódusa**, ha $f(x + p) = f(x)$ minden $x$-re. A periódusok halmaza (a $0$-val kiegészítve) **additív részcsoport** $\mathbb R$-ben: ha $p$ és $r$ periódus, akkor $f(x + p + r) = f(x + p) = f(x)$ és $f(x) = f((x - p) + p) = f(x - p)$, így $p + r$ és $-p$ is periódus.

*A részcsoportok szerkezete.* $\mathbb{R}$ minden additív $G$ részcsoportja vagy **diszkrét** ($G = \{kp : k \in \mathbb{Z}\}$ valamely $p \ge 0$-ra), vagy **sűrű** $\mathbb{R}$-ben. Ha $G$-nek van legkisebb pozitív eleme $p$, akkor $G = p\mathbb{Z}$ (különben a maradékos osztás kisebb pozitív elemet adna); ha nincs, $G$ elemei tetszőlegesen kicsik, és többszöröseik sűrűn lefedik a számegyenest.

*Következmények.*

- Ha egy **folytonos** függvény periódusainak csoportja sűrű, a függvény konstans: $f(x) = f(0)$ minden periódusra, és a periódusok sűrűek, így a folytonosság miatt mindenütt. A Dirichlet-függvény a folytonosság nélküli ellenpélda.
- Két periódus, $p$ és $r$ esetén, ha $\frac pr$ irracionális, a $\{kp + lr\}$ csoport sűrű — folytonos függvénynél ez már konstanst ad. Ezért például $\sin x + \sin(\sqrt2 x)$ nem periodikus.
- Ha **minden irracionális** szám periódus, a generált csoport $\mathbb{R}$ (minden szám két irracionális összege), így bármely függvény konstans.

*A legkisebb periódus.* A „periódus” szónál gyakran a legkisebb pozitív periódusra gondolunk (például $\sin$-nél $2\pi$). Ez nem mindig létezik: a Dirichlet-függvény minden pozitív racionális szám szerint periodikus, legkisebb pozitív periódusa nincs; a konstans függvénynek minden szám periódusa.
:::

## 77. feladat

Létezik-e $f : \mathbb{R} \to \mathbb{R}$ függvény, melynek minden pontban szigorú lokális maximuma van?

**Megoldás.**

**Nem létezik.** Megmutatjuk, hogy bármely $f : \mathbb{R} \to \mathbb{R}$ szigorú lokális maximumhelyeinek halmaza megszámlálható; $\mathbb{R}$ viszont nem az.

Ha $x$ szigorú lokális maximumhely, akkor van olyan $(p_x, q_x)$ intervallum racionális végpontokkal, hogy $x \in (p_x, q_x)$, és minden $y \in (p_x, q_x)$, $y \neq x$ esetén $f(y) < f(x)$. Az $x \mapsto (p_x, q_x) \in \mathbb{Q}^2$ hozzárendelés injektív: ha $x \neq x'$-hez ugyanaz az intervallum tartozna, akkor mindkettő benne lenne, így $f(x') < f(x)$ és $f(x) < f(x')$ is teljesülne – ellentmondás. Mivel $\mathbb{Q}^2$ megszámlálható, a szigorú lokális maximumhelyek is legfeljebb megszámlálhatóan sokan vannak. $\blacksquare$

::: elmelet
**Elméleti háttér — lokális szélsőértékek és megszámlálhatósági érvek.**

*Definíciók.* $x_0$ **lokális maximumhely**, ha van $\delta > 0$, hogy $|x - x_0| < \delta$ esetén $f(x) \le f(x_0)$; **szigorú**, ha $0 < |x - x_0| < \delta$ esetén $f(x) < f(x_0)$. A szigorú lokális maximumhelyek „elkülönülnek” egymástól: két ilyen pont nem lehet egymás $\delta$-környezetében mindkettőnek a saját $\delta$-jával.

*A racionális környezetek trükkje.* Minden $x$ ponthoz és $\delta > 0$-hoz van racionális végpontú $(p, q)$ intervallum, hogy $x \in (p, q) \subseteq (x - \delta, x + \delta)$ ($\mathbb Q$ sűrűsége). A racionális végpontú intervallumokból megszámlálhatóan sok van ($\mathbb{Q}^2$). Ha a hozzárendelés injektív, a pontok halmaza megszámlálható.

*A tétel általánosan.* Bármely $f : \mathbb{R} \to \mathbb{R}$ függvény szigorú lokális szélsőértékhelyeinek halmaza megszámlálható. Ugyanígy megszámlálható:

- egy monoton függvény szakadási helyeinek halmaza (minden ugráshoz egy racionális szám a hézagból);
- egy tetszőleges függvény azon pontjainak halmaza, ahol a bal és jobb oldali határérték létezik, de különbözik;
- a síkban diszjunkt nyílt körlapok (vagy betűk, „nyolcasok”) bármely rendszere.

*Nem szigorú esetben más a helyzet.* A konstans függvénynek minden pont lokális maximumhelye (nem szigorú), és ilyenből kontinuum sok van. A Riemann-függvénynek (87. feladat) minden racionális pont szigorú lokális maximumhelye — ez megszámlálható sok, összhangban a tétellel —, az irracionálisak pedig nem szigorú lokális minimumhelyek.

*Kapcsolódás a differenciálszámításhoz.* Differenciálható függvény belső lokális szélsőértékhelyén $f'(x_0) = 0$ (Fermat-tétel). A feladat eredménye azt mutatja, hogy a „sok” szélsőértékhely mindig a nem szigorú fajtából kerül ki.
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
**Elméleti háttér — konvex függvények: definíció és jellemzések.**

*Definíció.* $f$ **konvex** az $I$ intervallumon, ha minden $x, y \in I$ és $\lambda \in [0, 1]$ esetén
$$f(\lambda x + (1 - \lambda)y) \le \lambda f(x) + (1 - \lambda)f(y),$$
azaz a grafikon minden húrja a grafikon felett (vagy rajta) halad. **Szigorúan konvex**, ha $x \ne y$ és $\lambda \in (0, 1)$ esetén szigorú egyenlőtlenség áll. **Konkáv**, ha $-f$ konvex.

*Jellemzés a különbségi hányadossal.* Legyen $m_a(x) = \frac{f(x) - f(a)}{x - a}$ (a $(a, f(a))$ és $(x, f(x))$ pontokon átmenő húr meredeksége). Ekkor
$$f \text{ konvex } I\text{-n} \iff \text{minden } a \in I\text{-re } m_a \text{ monoton nő } I \setminus \{a\}\text{-n}.$$
Ekvivalens alak a **három húr egyenlőtlensége**: $x < y < z$ esetén
$$\frac{f(y) - f(x)}{y - x} \le \frac{f(z) - f(x)}{z - x} \le \frac{f(z) - f(y)}{z - y}.$$
Ez a definícióból $y = \lambda x + (1 - \lambda)z$ helyettesítéssel és átrendezéssel adódik.

*Hatványfüggvények.* Az $x^k - a^k = (x - a)\sum_{j=0}^{k-1}x^ja^{k-1-j}$ azonosság a húr meredekségét polinommá teszi: $m_a(x) = x^{k-1} + x^{k-2}a + \dots + a^{k-1}$, amely $[0, \infty)$-en $x$-ben szigorúan nő. A negatív félegyenesen páratlan $k$-ra $x^k$ konkáv, páros $k$-ra konvex — ezért szerepel a feladatban a $[0, \infty)$.

*Differenciálható függvényekre* (későbbi eszköz): $f$ konvex $\iff$ $f'$ monoton nő $\iff$ (kétszer differenciálhatónál) $f'' \ge 0$. Például $(x^k)'' = k(k-1)x^{k-2} \ge 0$ ($x \ge 0$). A húros jellemzés előnye, hogy deriválás nélkül is működik.

*Fontos tulajdonságok.* Konvex függvény egy nyílt intervallumon folytonos, minden pontban vannak egyoldali deriváltjai, és lokális minimuma egyben globális minimum.
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
**Elméleti háttér — a Jensen-egyenlőtlenség és a konvex kombinációk.**

*Konvex kombináció.* Az $x_1, \dots, x_n$ pontok **konvex kombinációja** a $\sum p_ix_i$ pont, ahol $p_i \ge 0$, $\sum p_i = 1$. Egy intervallum (általában: egy konvex halmaz) zárt a konvex kombinációkra: a súlyozott átlag a legkisebb és a legnagyobb pont közé esik.

*A Jensen-egyenlőtlenség.* Ha $f$ konvex $I$-n, $x_i \in I$, $p_i > 0$, $\sum p_i = 1$, akkor
$$f\Big(\sum p_ix_i\Big) \le \sum p_if(x_i),$$
röviden: **$f$(átlag) $\le$ átlag($f$)**. Szigorúan konvex $f$ esetén egyenlőség pontosan akkor, ha minden $x_i$ egyenlő.

*Az indukció ötlete: „összevonás és újranormálás”.* Az első $n$ pontot egyetlen ponttá vonjuk össze, $y = \sum_{i \le n}\frac{p_i}{s}x_i$, súllyal $s$. Az $\frac{p_i}{s}$ súlyok összege $1$, tehát az indukciós feltevés alkalmazható rájuk, a kéttagú Jensen pedig $y$-ra és $x_{n+1}$-re. Az $y \in I$ ellenőrzése nem formalitás: ha $I$ nem volna intervallum, $f(y)$ értelmetlen lehetne.

*Alkalmazások.*

- $f(x) = x^2$: $\left(\frac{\sum a_i}{n}\right)^2 \le \frac{\sum a_i^2}{n}$ (számtani–négyzetes közép).
- $f(x) = -\ln x$ (konvex): $\ln\frac{\sum a_i}{n} \ge \frac{\sum\ln a_i}{n}$, azaz **számtani–mértani közép** egyenlőtlenség.
- $f(x) = \frac1x$ ($x > 0$): a számtani és harmonikus közép közötti egyenlőtlenség.
- Valószínűségszámításban: $f(\mathbb{E}X) \le \mathbb{E}f(X)$, ha $f$ konvex.

*Geometriai jelentés.* A $(x_i, f(x_i))$ pontok konvex burka a grafikon fölött helyezkedik el, és az $\left(\sum p_ix_i, \sum p_if(x_i)\right)$ súlypont ebben a burokban van — tehát a grafikon fölött.
:::

## 80. feladat

Bizonyítsuk be, hogy ha $a_1, \dots, a_n \ge 0$ és $k > 1$ egész, akkor
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt[k]{\frac{a_1^k + \dots + a_n^k}{n}}.$$

**Megoldás.**

A 78. feladat szerint $f(x) = x^k$ konvex $[0, \infty)$-ben. A Jensen-egyenlőtlenség a $p_i = \frac1n$ súlyokkal:
$$\left(\frac{a_1 + \dots + a_n}{n}\right)^k \le \frac{a_1^k + \dots + a_n^k}{n}.$$
Mindkét oldal nemnegatív, és a $t \mapsto \sqrt[k]{t}$ függvény monoton nő, így $k$-adik gyököt vonva kapjuk az állítást. $\blacksquare$ (Egyenlőség pontosan akkor, ha $a_1 = \dots = a_n$, a szigorú konvexitás miatt.)

::: elmelet
**Elméleti háttér — hatványközepek és a közepek hierarchiája.**

*Hatványközép.* Nemnegatív $a_1, \dots, a_n$ számok $r$-edik hatványközepe ($r \ne 0$)
$$M_r = \left(\frac{a_1^r + \dots + a_n^r}{n}\right)^{1/r},$$
és $M_0$ a mértani közép (ez a $r \to 0$ határérték). Nevezetes esetek: $M_{-1}$ harmonikus, $M_0$ mértani, $M_1$ számtani, $M_2$ négyzetes közép, $M_\infty = \max a_i$, $M_{-\infty} = \min a_i$.

*Hatványközép-egyenlőtlenség.* Ha $r < s$, akkor $M_r \le M_s$, egyenlőséggel pontosan akkor, ha minden $a_i$ egyenlő. A feladat az $r = 1$, $s = k$ eset; a bizonyítás a Jensen-egyenlőtlenség az $f(x) = x^k$ konvex függvénnyel, majd a monoton $k$-adik gyökvonás. Általánosan: $f(x) = x^{s/r}$ konvex, ha $s/r > 1$ ($r > 0$), és ezt az $a_i^r$ számokra alkalmazzuk.

*Miért kell nemnegatív?* Negatív számokra $x^k$ nem konvex (páratlan $k$-nál), és a $k$-adik gyök sem monoton/értelmezett úgy, ahogy kell. Például $a_1 = -1$, $a_2 = 1$, $k = 3$-ra a bal oldal $0$, a jobb oldal $\sqrt[3]{0} = 0$ — itt még egyenlő, de $a_1 = -2$, $a_2 = 1$: bal oldal $-\frac12$, jobb oldal $\sqrt[3]{-\frac72} \approx -1{,}52$ — az egyenlőtlenség megfordul.

*Alkalmazás: becslések.* $\sum_{i=1}^n a_i \le \sqrt{n\sum a_i^2}$ (a négyzetes közép becslése, a Cauchy–Schwarz-egyenlőtlenség speciális esete). Ilyen becslések adják például a sorok konvergenciakritériumaiban vagy a hibabecslésekben a „négyzetösszeg kontrollálja az összeget” elvet.

*Egyenlőség esete.* $x^k$ szigorúan konvex $[0, \infty)$-ben ($k \ge 2$), így a Jensen-egyenlőtlenségben egyenlőség csak akkor lehet, ha minden $a_i$ egyenlő. Ezt a szélsőérték-feladatoknál használjuk: a korlát akkor éles, ha minden változó egyenlő.
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
**Elméleti háttér — konvex, de nem szigorúan konvex: lineáris szakaszok.**

*A húr-tulajdonság erősítése.* Ha egy konvex $f$ grafikonja egy $c \in (a, b)$ belső pontban rajta van az $(a, f(a))$–$(b, f(b))$ húron, akkor az egész $[a, b]$ szakaszon rajta van. A bizonyítás lényege: ha valahol a húr alatt volna, egy kisebb húr ($x$-től $b$-ig) a $c$ pontot szigorúan a nagy húr alá szorítaná.

*Ekvivalens megfogalmazások.* Egy konvex $f$-re ekvivalens:

1. $f$ nem szigorúan konvex $I$-n;
2. van $I$-nek olyan nem degenerált részintervalluma, amelyen $f$ lineáris (affin: $f(x) = mx + c$);
3. (differenciálható $f$-re) $f'$ nem szigorúan monoton, vagyis valahol konstans;
4. (kétszer differenciálható $f$-re) $f''$ azonosan $0$ egy részintervallumon.

*Példák.* $|x|$ konvex, nem szigorúan: a $(-\infty, 0]$ és $[0, \infty)$ félegyeneseken lineáris. $\max\{x, x^2\}$ a $[0, 1]$-en lineáris, máshol szigorúan konvex. Az $x^4$ szigorúan konvex, pedig $f''(0) = 0$ — tehát a szigorú konvexitáshoz nem kell $f'' > 0$ mindenhol, elég, hogy $f''$ ne legyen azonosan nulla egyetlen intervallumon sem.

*Miért fontos?* Szélsőértékeknél: szigorúan konvex függvény minimumhelye (ha van) egyértelmű; nem szigorúan konvexnek a minimumhelyei egy intervallumot alkothatnak. A Jensen-egyenlőtlenségben az egyenlőség esete is a szigorúságon múlik: lineáris szakaszon a pontok különbözők lehetnek egyenlőség mellett.

*A bizonyítás technikája.* A konvexitás definícióját nem a „nagy” háromszögre, hanem egy ügyesen választott **kisebb** húrra alkalmaztuk, amelynek egyik végpontja a vizsgált $x$ pont. Ez a „lokalizálás” gyakori fogás konvexitási bizonyításokban.
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
**Elméleti háttér — konkáv függvények, gyökfüggvények.**

*Konkávitás.* $f$ konkáv, ha $-f$ konvex, azaz a húrok a grafikon **alatt** haladnak: $f(\lambda x + (1 - \lambda)y) \ge \lambda f(x) + (1 - \lambda)f(y)$. Jellemzés: $m_a(x)$ monoton **fogy** minden $a$-ra.

*Gyökfüggvények.* A $\sqrt[k]{x}$ az $x^k$ inverze a $[0, \infty)$-en. Általános tény: ha $g$ szigorúan növő és konvex, akkor $g^{-1}$ szigorúan növő és konkáv (a grafikon az $y = x$ egyenesre tükröződik, és a tükrözés a „felfelé domború” alakot „lefelé domborúvá” alakítja). A megoldás közvetlenül számol: a húr meredeksége
$$m_a(x) = \frac{\sqrt[k]{x} - \sqrt[k]{a}}{x - a} = \frac{1}{u^{k-1} + u^{k-2}v + \dots + v^{k-1}}, \qquad u = \sqrt[k]x,\ v = \sqrt[k]a,$$
ami pontosan az $x^k$ függvény $u$ és $v$ közti húrjának reciproka — ez az inverz függvény húrjának geometriai jelentése.

*Következmények.*

- **Jensen konkáv függvényre:** $\sqrt[k]{\text{átlag}} \ge \text{átlag}(\sqrt[k]{\cdot})$, például $\sqrt{\frac{a + b}{2}} \ge \frac{\sqrt a + \sqrt b}{2}$.
- **Szubadditivitás:** konkáv, $f(0) \ge 0$ függvény szubadditív a $[0, \infty)$-en: $f(a + b) \le f(a) + f(b)$. Így $\sqrt{a + b} \le \sqrt a + \sqrt b$.
- A $\ln x$ szigorúan konkáv; ebből jön a számtani–mértani egyenlőtlenség (a Jensen-egyenlőtlenség logaritmikus alakja).

*A végpont kérdése.* A $0$ pontban a $\sqrt x$ „függőleges érintővel” indul ($m_0(x) = \frac{1}{\sqrt x} \to \infty$), de a konkávitás a zárt $[0, \infty)$ intervallumon is érvényes — a húros jellemzés a végpontot is kezeli, ellentétben a második derivált feltétellel, amely a $0$-ban nem is értelmes.
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
**Elméleti háttér — a függvényhatárérték $\varepsilon$–$\delta$ definíciója és a $\delta$ megkeresése.**

*Definíció (Cauchy).* Legyen $a$ a $D(f)$ torlódási pontja. $\lim_{x \to a} f(x) = b$, ha
$$\forall \varepsilon > 0\ \exists \delta > 0\ \forall x \in D(f): \ 0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon.$$
A $0 < |x - a|$ feltétel miatt a függvény $a$-beli értéke (ha egyáltalán értelmezett) **nem számít** — ezért van határértéke például a d) rész függvényének az $x = 1$-ben, ahol nincs is értelmezve.

*Receptek $\delta$ kereséséhez.*

1. **Faktorizálás:** $|f(x) - b| = |x - a| \cdot |g(x)|$ alakra hozás (polinomoknál mindig lehetséges, mert $f(x) - f(a)$ osztható $x - a$-val).
2. **Lokalizálás:** előre kikötjük, hogy $|x - a| < r$ (például $r = 1$ vagy $r = \frac{|a|}{2}$), és ezen a környezeten felülről becsüljük $|g(x)|$-et egy $C$ konstanssal. Hányadosnál a **nevezőt alulról** kell becsülni, hogy ne kerülhessen közel $0$-hoz.
3. **Összerakás:** $\delta = \min\left\{r, \frac{\varepsilon}{C}\right\}$; a minimum garantálja, hogy mindkét feltétel teljesül.

*Gyakori hiba.* A $\delta$ nem függhet $x$-től — csak $\varepsilon$-tól (és $a$-tól). A „$\delta = \frac{\varepsilon}{3|x + 2|}$” típusú válasz hibás; ezért kell a lokalizálás.

*Egyszerűsítés határérték előtt.* A d) részben $\frac{x^2 - 1}{2x^2 - x - 1} = \frac{x + 1}{2x + 1}$ minden $x \ne 1$-re. A határérték csak a pont környezetétől függ, így egyszerűsíthetünk a $0$ közelében. (Az $x \to 1$ határérték is innen jönne: $\frac{2}{3}$, a „$\frac00$” alak ellenére.)

*Becslés korlátos tényezővel.* Az e)–f) részben a $\{1/x\}$ tényező korlátos ($[0, 1)$-ben), a másik tényező ($x$) $0$-hoz tart: „korlátos szor nullába tartó $\to 0$”. Ilyenkor $\delta = \varepsilon$ is megfelel.

*Kapcsolat a folytonossággal.* Ha $a \in D(f)$ és $\lim_{x\to a}f(x) = f(a)$, akkor $f$ **folytonos** $a$-ban. Az a)–c) részek függvényei folytonosak a vizsgált pontokban, így a határérték egyszerűen a behelyettesítési érték — a $\delta$ megkeresése a folytonosság bizonyítása.
:::

## 84. feladat

Mutassuk meg, hogy $\lim\limits_{x \to a} f(x) = b$ acsa, ha $\lim\limits_{x \to a-0} f(x) = \lim\limits_{x \to a+0} f(x) = b$.

**Megoldás.**

($\Rightarrow$) Ha minden $\varepsilon$-hoz van $\delta$, hogy $0 < |x - a| < \delta$ esetén $|f(x) - b| < \varepsilon$, akkor ez speciálisan $a < x < a + \delta$ és $a - \delta < x < a$ esetén is teljesül, tehát mindkét egyoldali határérték $b$.

($\Leftarrow$) Adott $\varepsilon$-hoz a bal oldali határérték ad $\delta_1$-et ($a - \delta_1 < x < a \Rightarrow |f(x) - b| < \varepsilon$), a jobb oldali $\delta_2$-t. $\delta = \min\{\delta_1, \delta_2\}$ esetén $0 < |x - a| < \delta$-ból $|f(x) - b| < \varepsilon$. $\blacksquare$

(Feltettük, hogy $a$ mindkét oldalról torlódási pontja $D(f)$-nek; ha csak az egyik oldalról, akkor a határérték az ottani egyoldali határértékkel egyezik meg.)

::: elmelet
**Elméleti háttér — egyoldali határértékek.**

*Definíció.* $\lim_{x \to a+0} f(x) = b$ (jobb oldali határérték), ha minden $\varepsilon > 0$-hoz van $\delta > 0$, hogy $a < x < a + \delta$, $x \in D(f)$ esetén $|f(x) - b| < \varepsilon$. A bal oldali ugyanígy, $a - \delta < x < a$-val. (Feltétel: $a$ a $D(f) \cap (a, \infty)$, illetve $D(f) \cap (-\infty, a)$ torlódási pontja.) Más jelölések: $f(a+0)$, $f(a^+)$, $\lim_{x \downarrow a}$.

*A tétel.* Ha $a$ mindkét oldalról torlódási pontja $D(f)$-nek, akkor $\lim_{x\to a}f(x) = b \iff f(a-0) = f(a+0) = b$. A bizonyítás kulcsa: a pontozott környezet a két félkörnyezet uniója, és két $\delta$ közül a kisebbik mindkét oldalon megfelel („$\min$-trükk”).

*Tipikus alkalmazás: határérték nemlétezésének kimutatása.* Ha a két egyoldali határérték létezik, de különbözik, a kétoldali nem létezik. Példák:

- $\operatorname{sgn} x$: $f(0-0) = -1$, $f(0+0) = 1$;
- $[x]$ egész helyeken: $[n - 0] = n - 1$, $[n + 0] = n$;
- $\frac{1}{x}$ a $0$-ban: $-\infty$, illetve $+\infty$ (tágabb értelemben).

*Szakadások osztályozása.* Ha $f$ nem folytonos $a$-ban, akkor: **megszüntethető** szakadás, ha $\lim_{x\to a} f(x)$ létezik (véges), de $\ne f(a)$ (vagy $f(a)$ nem értelmezett); **elsőfajú (ugrás)**, ha mindkét egyoldali határérték létezik és véges, de különböznek; **másodfajú**, ha valamelyik egyoldali határérték nem létezik vagy végtelen (például $\sin\frac1x$ vagy $\{\frac1x\}$ a $0$-ban). Monoton függvénynek csak ugrásai lehetnek.

*Egyoldali határérték monoton függvényre.* Ha $f$ monoton nő, a bal oldali határérték mindig létezik: $f(a - 0) = \sup_{x < a}f(x)$ — a szuprémum $\varepsilon$-os jellemzéséből. Ez a sorozatok monoton konvergencia-tételének függvényes megfelelője.
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
**Elméleti háttér — környezetek, torlódási pontok, izolált pontok.**

*Fogalmak.* $B(a, r) = (a - r, a + r)$ a nyílt környezet, $\dot B(a, r) = B(a, r) \setminus \{a\}$ a **pontozott** környezet. Az $a \in \mathbb{R}$ pont a $H$ halmaz

- **torlódási pontja**, ha minden pontozott környezete tartalmaz $H$-beli pontot — ekvivalensen: minden környezete **végtelen sok** $H$-beli pontot tartalmaz, illetve van $a$-hoz tartó, $H \setminus \{a\}$-beli sorozat;
- **izolált pontja**, ha $a \in H$, de nem torlódási pont (van olyan környezete, amelyben $H$-nak csak $a$ az eleme);
- **belső pontja**, ha van olyan környezete, amely teljesen $H$-ban van.

A torlódási pontok halmaza a $H'$ (**derivált halmaz**); $H \cup H'$ a $H$ **lezártja**. $H$ **zárt**, ha $H' \subseteq H$.

*A példák tanulságai.* $(-1, 1)$ torlódási pontjai a $[-1, 1]$ — a végpontok is, bár nem elemek. A pontozott $\dot B(0, 1)$-ből a $0$ kimarad, de torlódási pont marad: egyetlen pont elhagyása a torlódási pontokon nem változtat. $\mathbb{N}$ minden pontja izolált. $\{\frac1n\}$ minden eleme izolált, egyetlen torlódási pontja a $0$, amely nem eleme. $\mathbb{Q}$ torlódási pontjai: az egész $\mathbb R$.

*Bolzano–Weierstrass halmazokra.* Minden korlátos, végtelen valós halmaznak van torlódási pontja. (Válasszunk belőle különböző elemekből álló sorozatot; ennek van konvergens részsorozata, és határértéke torlódási pont.)

*Miért fontos a határértéknél?* A $\lim_{x \to a} f(x)$ csak akkor értelmes, ha $a$ a $D(f)$ torlódási pontja — különben a definíció feltétele üresen teljesülne, és **bármely** $b$ „határérték” volna. Izolált pontban ezért nem beszélünk határértékről (de folytonosságról igen: minden függvény folytonos az értelmezési tartománya izolált pontjaiban).
:::

## 86. feladat

Mutassuk meg, hogy ha $\lim\limits_{x \to a} f(x) = b < c = \lim\limits_{x \to a} g(x)$, akkor létezik az $a$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) < g(x)$.

**Megoldás.**

Legyen $\varepsilon = \frac{c - b}{2} > 0$. A határértékek definíciója szerint van $\delta_1$, hogy $0 < |x - a| < \delta_1$ esetén $f(x) < b + \varepsilon = \frac{b + c}{2}$, és van $\delta_2$, hogy $0 < |x - a| < \delta_2$ esetén $g(x) > c - \varepsilon = \frac{b + c}{2}$. Legyen $\delta = \min\{\delta_1, \delta_2\}$ és $\dot U = (a - \delta, a + \delta) \setminus \{a\}$. Ekkor minden $x \in \dot U$-ra
$$f(x) < \frac{b + c}{2} < g(x). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — határérték és egyenlőtlenségek.**

*Előjeltartás.* Ha $\lim_{x \to a} f(x) = b > 0$, akkor $a$-nak van pontozott környezete, amelyben $f(x) > 0$ (sőt $f(x) > \frac b2$). Ez a feladat $g \equiv 0$ speciális esete, és a legegyszerűbb „határérték $\Rightarrow$ lokális tulajdonság” állítás.

*A feladat állítása és megfordítása.* Ha $\lim f < \lim g$, akkor egy pontozott környezetben $f < g$. **Megfordítva** csak gyenge egyenlőtlenség igaz: ha egy pontozott környezetben $f(x) \le g(x)$ (sőt akár $f(x) < g(x)$), és mindkét határérték létezik, akkor $\lim f \le \lim g$. Szigorú egyenlőtlenség nem öröklődik: $f(x) = 0 < g(x) = x^2$ ($x \ne 0$), de mindkét határérték $0$-ban $0$.

*A bizonyítás mintája.* Két különböző határértéket diszjunkt környezetekkel választunk szét: $\varepsilon = \frac{c - b}{2}$, így a $b$ és $c$ körüli $\varepsilon$-környezetek éppen a $\frac{b + c}{2}$ pontban „érnek össze”. Mindkét függvényhez megkeressük a saját $\delta$-ját, és a kisebbiket vesszük. Ugyanez a minta bizonyítja a határérték egyértelműségét (indirekten: ha $b < c$ is határérték volna, ugyanaz a függvény egyszerre volna $\frac{b + c}{2}$ alatt és felett).

*Rendőrelv függvényekre.* Ha egy pontozott környezetben $f \le h \le g$, és $\lim f = \lim g = b$, akkor $\lim h = b$. A 83. e)–f) feladatban ez a $0 \le x\{1/x\} \le x$ ($x > 0$) becsléssel adódik.

*Sorozatos megfelelő.* Sorozatokra: ha $a_n \to a$, $b_n \to b$ és $a < b$, akkor egy indextől $a_n < b_n$. Az átviteli elv a függvényes és a sorozatos változatot összeköti.
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
**Elméleti háttér — a Riemann- és a Dirichlet-függvény.**

*Kulcslemma.* Bármely korlátos $[c, d]$ intervallumban csak **véges sok** olyan racionális szám van, amelynek (egyszerűsített) nevezője legfeljebb $N$: minden $q \le N$ nevezőhöz legfeljebb $q(d - c) + 1$ számláló tartozik.

*Határérték mindenütt $0$.* Adott $\varepsilon$-hoz csak a véges sok, $\frac1\varepsilon$-nál nem nagyobb nevezőjű tört „rossz”; $\delta$ legyen kisebb, mint ezeknek az $a$-tól vett (pozitív) távolsága. A $\delta$-környezetben (az $a$ kivételével) minden pontban $0 \le R(x) < \varepsilon$. Tehát $\lim_{x \to a}R(x) = 0$ **minden** $a$-ra.

*Folytonosság.* $R$ pontosan ott folytonos, ahol $R(a) = 0$, vagyis az **irracionális** pontokban; a racionális pontokban megszüntethető szakadása van (a határérték $0$, a függvényérték pozitív). Érdekes: ez a függvény Riemann-integrálható (integrálja $0$), pedig megszámlálhatóan sok szakadása van — a Lebesgue-kritérium szerint a szakadási pontok „nullmértékű” halmaza nem akadálya az integrálhatóságnak. (Fordított szerepű függvény — racionálisokban folytonos, irracionálisokban szakad — viszont nem létezik, a Baire-tétel miatt.)

*Dirichlet-függvény.* $D(x) = 1$, ha $x \in \mathbb{Q}$, és $0$ különben. Mivel a racionálisak és az irracionálisak is sűrűek, minden pont minden környezetében felveszi mindkét értéket, így **sehol nincs határértéke**, és sehol sem folytonos. A feladatban $\operatorname{sgn}^2(R(x)) = D(x)$: egy kompozíció, amely a „mindenütt határértéke van” $R$-ből a „sehol nincs határértéke” $D$-t csinálja. Ez mutatja, hogy a határérték és a kompozíció felcserélése nem automatikus: $\lim_{x\to 0} \operatorname{sgn}^2(R(x)) \ne \operatorname{sgn}^2(\lim_{x\to0} R(x)) = 0$, mert a $\operatorname{sgn}^2$ függvény a $0$-ban nem folytonos.

*Kompozíció határértéke.* Ha $\lim_{x\to a} g(x) = c$ és $\lim_{y \to c} f(y) = d$, akkor $\lim_{x\to a} f(g(x)) = d$ — **feltéve**, hogy $g(x) \ne c$ egy pontozott környezetben, vagy $f$ folytonos $c$-ben. Itt egyik sem teljesül ($R(x) = 0$ az irracionálisokban, és $\operatorname{sgn}^2$ nem folytonos $0$-ban), ezért nem alkalmazható.
:::

## Röpzhra

**Definíciók:** konvexitás, gyenge konvexitás.

**Tételek:** konvexitás karakterizálása $m_a(x)$-szel, Jensen-egyenlőtlenség (két változat), számtani és négyzetes közép közötti egyenlőtlenség.
