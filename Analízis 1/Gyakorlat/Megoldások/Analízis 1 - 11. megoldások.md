# Analízis 1 – 11. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 111. feladat

Határozzuk meg a következő függvények szakadási pontjait. Milyen típusú a szakadás?

a) $f(x) = \dfrac{x^3 - 1}{x - 1}$, b) $g(x) = \dfrac{x^2 - 1}{|x - 1|}$, c) $h_1(x) = x\left[\dfrac{1}{x}\right]$, d) $h_2(x) = x^2\left[\dfrac{1}{x}\right]$.

**Megoldás.**

Emlékeztető: ha $f$ értelmezve van $a$ egy pontozott környezetében, és $a$-ban nem folytonos (vagy ott nincs is értelmezve), akkor $a$ **szakadási hely**. Típusai: **megszüntethető** (létezik véges $\lim_{x \to a} f(x)$), **ugrás** (a két véges féloldali határérték különbözik) — ezek az **elsőfajúak** —, minden más **másodfajú**.

a) $D(f) = \mathbb{R} \setminus \{1\}$, és itt $f(x) = \frac{(x - 1)(x^2 + x + 1)}{x - 1} = x^2 + x + 1$, ami polinom, tehát folytonos. Egyetlen szakadási hely az $x = 1$, ahol
$$\lim_{x \to 1} f(x) = \lim_{x \to 1} (x^2 + x + 1) = 3.$$
**Megszüntethető szakadás** ($f(1) := 3$ választással folytonos függvényt kapunk).

b) $D(g) = \mathbb{R} \setminus \{1\}$, és
$$g(x) = \frac{(x - 1)(x + 1)}{|x - 1|} = (x + 1)\operatorname{sgn}(x - 1) = \begin{cases} x + 1, & x > 1, \\ -(x + 1), & x < 1. \end{cases}$$
$x \ne 1$-ben $g$ folytonos. Az $1$-ben $g(1 + 0) = 2$, $g(1 - 0) = -2$: két különböző véges féloldali határérték, **ugrás** (elsőfajú szakadás).

c) $D(h_1) = \mathbb{R} \setminus \{0\}$. Az $\left[\frac1x\right]$ csak ott változik, ahol $\frac1x$ egész, azaz az $x = \frac1k$ ($k \in \mathbb{Z} \setminus \{0\}$) pontokban; két ilyen szomszédos pont között $\left[\frac1x\right]$ állandó, így $h_1$ ott $x$ konstansszorosa, folytonos.

- *$x = \frac1k$, $k \ge 1$.* Ha $\frac{1}{k+1} < x \le \frac1k$, akkor $k \le \frac1x < k + 1$, így $h_1(x) = kx$; ha $\frac1k < x < \frac{1}{k-1}$ (illetve $k = 1$-re $x > 1$), akkor $h_1(x) = (k - 1)x$. Tehát
$$h_1\!\left(\tfrac1k\right) = 1 = h_1\!\left(\tfrac1k - 0\right), \qquad h_1\!\left(\tfrac1k + 0\right) = \frac{k - 1}{k}.$$
- *$x = -\frac1m$, $m \ge 1$.* Ha $-\frac{1}{m-1} < x \le -\frac1m$ (illetve $m = 1$-re $x \le -1$), akkor $-m \le \frac1x < -m + 1$, így $h_1(x) = -mx$; ha $-\frac1m < x < -\frac{1}{m+1}$, akkor $h_1(x) = -(m + 1)x$. Tehát
$$h_1\!\left(-\tfrac1m\right) = 1 = h_1\!\left(-\tfrac1m - 0\right), \qquad h_1\!\left(-\tfrac1m + 0\right) = \frac{m + 1}{m}.$$
- *$x = 0$.* Az $\frac1x - 1 < \left[\frac1x\right] \le \frac1x$ egyenlőtlenséget $x$-szel szorozva: $x > 0$-ra $1 - x < h_1(x) \le 1$, $x < 0$-ra $1 \le h_1(x) < 1 - x$. A rendőrelv szerint $\lim_{x \to 0} h_1(x) = 1$.

**Tehát $h_1$-nek minden $x = \frac1k$ ($k \in \mathbb{Z} \setminus \{0\}$) pontban ugrása van** (az ugrás nagysága $\frac1{|k|}$; balról folytonos), **a $0$-ban pedig megszüntethető szakadása** ($h_1(0) := 1$).

d) $h_2(x) = x \cdot h_1(x)$, és $x$ folytonos, sehol sem $0$ az $\frac1k$ pontokban, így a szakadási helyek ugyanazok, mint c)-ben:

- $x = \frac1k$ ($k \ge 1$): $h_2\left(\frac1k\right) = h_2\left(\frac1k - 0\right) = \frac1k$, $h_2\left(\frac1k + 0\right) = \frac{k - 1}{k^2}$ — **ugrás** ($\frac{1}{k^2}$ nagyságú).
- $x = -\frac1m$ ($m \ge 1$): $h_2\left(-\frac1m\right) = h_2\left(-\frac1m - 0\right) = -\frac1m$, $h_2\left(-\frac1m + 0\right) = -\frac{m + 1}{m^2}$ — **ugrás**.
- $x = 0$: $\lim_{x \to 0} h_2(x) = \lim_{x \to 0} x \cdot h_1(x) = 0 \cdot 1 = 0$ — **megszüntethető** ($h_2(0) := 0$; ezt a kiterjesztést a 9. feladatlapon már láttuk folytonosnak).

::: elmelet
**Elméleti háttér — a szakadások osztályozása.**

*Hol kell keresni?* Elemi függvények (polinomok, racionális törtfüggvények, $|\cdot|$, $\operatorname{sgn}$ a $0$-n kívül) összetételei az értelmezési tartományuk belsejében folytonosak; szakadás csak ott lehet, ahol egy „nem folytonos alkotórész” (egészrész, előjel) ugrik, vagy ahol a képlet nincs értelmezve (nevező $0$).

*Típus meghatározása.* Ki kell számolni a két féloldali határértéket. Ha mindkettő véges és egyenlő: **megszüntethető** szakadás (a pontbeli érték hiányzik vagy „rossz”). Ha mindkettő véges, de különbözik: **ugrás**. Ha valamelyik végtelen vagy nem létezik: **másodfajú** szakadás (pl. $\frac1x$ vagy $\sin\frac1x$ a $0$-ban).

*Egészrész-trükk.* Az $[u] \le u < [u] + 1$ (ekvivalensen $u - 1 < [u] \le u$) becslés a rendőrelvvel együtt adja a $0$-beli határértéket. Az $x\left[\frac1x\right]$ ugrásai $\frac1{|k|}$ nagyságúak és a $0$ felé torlódnak, mégis a $0$-ban létezik a határérték — a szakadási helyek halmazának torlódási pontjában a függvény lehet „szép”.
:::

## 112. feladat

Következik-e abból, hogy $\forall n \in \mathbb{N}$-re $f_n \in C(\mathbb{R})$, hogy $f(x) \overset{\text{def}}{=} \inf_{n \in \mathbb{N}} f_n(x)$ is folytonos $\mathbb{R}$-en.

**Megoldás.**

**Nem.** Legyen
$$f_n(x) = \max(0,\ 1 - n|x|)$$
(egy $0$ középpontú, $1$ magas, $\frac2n$ alapú „sátor”). Ez folytonos (folytonos függvények összetétele és maximuma). Ha $x \ne 0$, akkor $n \ge \frac1{|x|}$ esetén $f_n(x) = 0$, és minden $f_n \ge 0$, így $\inf_n f_n(x) = 0$. A $0$-ban $f_n(0) = 1$ minden $n$-re, így $\inf_n f_n(0) = 1$. Tehát
$$f(x) = \begin{cases} 1, & x = 0, \\ 0, & x \ne 0, \end{cases}$$
ami a $0$-ban nem folytonos (megszüntethető szakadás).

(Az infimum még csak valós értékű sem feltétlenül: $f_n(x) = -n$-re $\inf_n f_n(x) = -\infty$.)

::: elmelet
**Elméleti háttér — véges és végtelen sok függvény infimuma.** Két (véges sok) folytonos függvény minimuma folytonos, mert $\min(f, g) = \frac{f + g - |f - g|}{2}$ (100. feladat). Végtelen sok függvénynél ez elromlik: a pontonkénti infimum nem „érzi” a függvények közötti egyenletes kapcsolatot. Ami megmarad: folytonos függvények infimuma mindig **felülről félig folytonos** ($\limsup_{x \to a} f(x) \le f(a)$) — a példában a $0$-beli érték „felfelé” ugrik ki. Folytonosságot pl. **egyenletes konvergencia** biztosít: ha $f_n$ monoton fogyó és egyenletesen tart $f$-hez, akkor $f = \inf_n f_n$ folytonos (a Dini-tétel szerint kompakt halmazon a monoton pontonkénti konvergenciából folytonos határfüggvény esetén ez automatikus).
:::

## 113*. feladat

Hány folytonos $\mathbb{R} \to \mathbb{R}$ függvény van? (Megszámlálható? Kontinuum sok? Még több?)

**Megoldás.**

**Pontosan kontinuum sok** — vagyis ugyanannyi, mint valós szám, és (Cantor tétele szerint) kevesebb, mint az összes $\mathbb{R} \to \mathbb{R}$ függvény ($2^{\mathfrak c}$).

*Legalább kontinuum.* A konstans függvények ($c \in \mathbb{R}$) mind folytonosak és különbözők: $c \mapsto (x \mapsto c)$ injekció $\mathbb{R}$-ből $C(\mathbb{R})$-be.

*Legfeljebb kontinuum.* A 101. feladat (illetve az ott használt gondolat) szerint két folytonos függvény, amely a racionális számokon megegyezik, mindenhol megegyezik. Tehát az $f \mapsto f|_{\mathbb{Q}}$ leképezés injektív $C(\mathbb{R})$-ből az $\mathbb{R}^{\mathbb{Q}}$ halmazba (a $\mathbb{Q} \to \mathbb{R}$ függvények halmaza). Mivel $\mathbb{Q}$ megszámlálható, $\mathbb{R}^{\mathbb{Q}}$ ugyanakkora, mint $\mathbb{R}^{\mathbb{N}}$, a valós számsorozatok halmaza, és
$$|\mathbb{R}^{\mathbb{N}}| = \left(2^{\aleph_0}\right)^{\aleph_0} = 2^{\aleph_0 \cdot \aleph_0} = 2^{\aleph_0} = \mathfrak c.$$
(Szemléletesen: a valós számok $0$–$1$ sorozatokkal kódolhatók, egy számsorozat tehát egy „$0$–$1$ sorozatokból álló sorozat”, azaz egy $\mathbb{N} \times \mathbb{N} \to \{0, 1\}$ függvény; mivel $\mathbb{N} \times \mathbb{N}$ megszámlálható, ez egyetlen $0$–$1$ sorozattal is kódolható.)

A Cantor–Bernstein-tétel szerint $|C(\mathbb{R})| = \mathfrak c$. $\blacksquare$

::: elmelet
**Elméleti háttér — számosságok és a folytonosság „merevsége”.** Megszámlálható halmaz: $|\mathbb{N}|$-nyi ($\aleph_0$); kontinuum: $|\mathbb{R}| = 2^{\aleph_0} = \mathfrak c$. A Cantor-tétel szerint minden halmaz hatványhalmaza szigorúan nagyobb, így az összes $\mathbb{R} \to \mathbb{R}$ függvény halmaza, $|\mathbb{R}^{\mathbb{R}}| = \mathfrak c^{\mathfrak c} = 2^{\mathfrak c}$, szigorúan több a kontinuumnál. A folytonos függvényeket egy **megszámlálható** sűrű halmazon felvett értékeik meghatározzák — ezért csak $\mathfrak c^{\aleph_0} = \mathfrak c$ van belőlük. Ugyanez az érvelés mutatja, hogy a monoton függvények is kontinuum sokan vannak (ezeket a racionális pontokbeli értékek és a megszámlálható sok szakadási hely értékei határozzák meg).
:::

## 114. feladat

Legyen $f \in C[0, 1]$, $f(0) = f(1) = 0$.

a) Mutassuk meg, hogy $f$-nek van $1/2$ hosszúságú vízszintes húrja, azaz $\exists x \in [0, 1/2]$, hogy $f(x + \frac12) = f(x)$.

b\*) Mutassuk meg, hogy $\forall n \in \mathbb{N}$-re $f$-nek van $1/n$ hosszúságú vízszintes húrja, azaz $\exists x \in [0, 1 - \frac1n]$, hogy $f(x + \frac1n) = f(x)$.

**Megoldás.**

a) Legyen $g(x) = f(x + \frac12) - f(x)$, $x \in [0, \frac12]$. Ez folytonos (folytonos függvények különbsége és kompozíciója), és
$$g(0) = f\!\left(\tfrac12\right) - f(0) = f\!\left(\tfrac12\right), \qquad g\!\left(\tfrac12\right) = f(1) - f\!\left(\tfrac12\right) = -f\!\left(\tfrac12\right).$$
Így $g(0) \cdot g(\frac12) = -f(\frac12)^2 \le 0$. Ha a szorzat $0$, akkor $g(0) = 0$ (és $x = 0$ jó); különben $g$ a két végpontban ellentétes előjelű, és a Bolzano-tétel szerint van $x \in (0, \frac12)$, amelyre $g(x) = 0$, azaz $f(x + \frac12) = f(x)$. $\blacksquare$

b) Legyen $g(x) = f(x + \frac1n) - f(x)$, $x \in [0, 1 - \frac1n]$; ez folytonos. A $\frac kn$ ($k = 0, 1, \dots, n - 1$) pontokban vett értékek összege **teleszkopikus**:
$$\sum_{k=0}^{n-1} g\!\left(\tfrac kn\right) = \sum_{k=0}^{n-1} \left( f\!\left(\tfrac{k+1}{n}\right) - f\!\left(\tfrac kn\right) \right) = f(1) - f(0) = 0.$$
Ezért a $g(\frac kn)$ számok nem lehetnek mind pozitívak, és nem lehetnek mind negatívak. Ha valamelyik $0$, kész. Különben van $i, j$, hogy $g(\frac in) > 0 > g(\frac jn)$, és a Bolzano-tétel szerint $g$-nek van gyöke a $\frac in$ és $\frac jn$ közötti zárt intervallumban, amely része $[0, 1 - \frac1n]$-nek. $\blacksquare$

::: elmelet
**Elméleti háttér — a vízszintes húrok tétele (Lévy).** A „vízszintes húr” egy $x$ és $x + h$ pont, ahol a függvény ugyanazt az értéket veszi fel. A bizonyítás mintája: a keresett egyenletet átrendezzük egy $g = 0$ alakú egyenletté, és a **Bolzano-tételt** alkalmazzuk; ehhez kell egy pozitív és egy nem pozitív érték. A b) részben a **teleszkopikus összeg** garantálja, hogy $g$ nem lehet állandó előjelű az $\frac kn$ pontokban.

*Csak $\frac1n$ alakú hosszakra igaz!* Paul Lévy tétele szerint ha $h \in (0, 1)$ nem $\frac1n$ alakú, akkor van olyan $f \in C[0, 1]$, $f(0) = f(1) = 0$, amelynek nincs $h$ hosszú vízszintes húrja; például
$$f(x) = \sin^2\!\frac{\pi x}{h} - x \sin^2\!\frac{\pi}{h}.$$
Ekkor $f(x + h) - f(x) = -h\sin^2\frac{\pi}{h} \ne 0$ (mert $\frac1h \notin \mathbb{Z}$), tehát sehol sincs $h$ hosszú vízszintes húr.
:::

## 115. feladat

a) Adjunk meg olyan $f : [0, 1] \to [0, 1]$ függvényt, amely monoton és végtelen sok szakadási helye van.

b\*) Adjunk meg olyan $f : [0, 1] \to [0, 1]$ függvényt, amely monoton és a szakadási helyei sűrű halmazt alkotnak $[0, 1]$-ben.

**Megoldás.**

a) Egy „lépcsőfüggvény” egyre sűrűsödő lépcsőkkel:
$$f(x) = \begin{cases} 0, & x = 0, \\ \frac1n, & \frac{1}{n+1} < x \le \frac1n \quad (n = 1, 2, \dots). \end{cases}$$
Minden $x \in (0, 1]$ pontosan egy $\left(\frac{1}{n+1}, \frac1n\right]$ intervallumba esik, tehát $f$ jól definiált, értékei $[0, 1]$-ben vannak, és monoton nő (a nagyobb $x$-hez kisebb vagy ugyanakkora $n$, azaz nagyobb vagy ugyanakkora $\frac1n$ tartozik). Minden $n \ge 2$-re az $\frac1n$ pontban
$$f\!\left(\tfrac1n\right) = \frac1n, \qquad f\!\left(\tfrac1n + 0\right) = \frac{1}{n-1},$$
tehát ugrás van: **végtelen sok szakadási hely** ($\frac12, \frac13, \frac14, \dots$).

b) Soroljuk fel a $(0, 1)$-beli racionális számokat: $q_1, q_2, q_3, \dots$ (ez megszámlálható halmaz). Legyen
$$f(x) = \sum_{n :\ q_n < x} \frac{1}{2^n}, \qquad x \in [0, 1].$$
Ez a $\sum \frac1{2^n}$ konvergens, nemnegatív tagú sor egy részsorának összege, tehát jól definiált, és $0 \le f(x) \le \sum_{n=1}^\infty \frac1{2^n} = 1$.

- *Monoton:* ha $x < y$, akkor $\{n : q_n < x\} \subseteq \{n : q_n < y\}$, és a tagok nemnegatívak, így $f(x) \le f(y)$.
- *Minden $q_k$-ban szakad:* ha $x > q_k$, akkor az összegben szerepel az $\frac1{2^k}$ tag és minden olyan tag, amely $f(q_k)$-ban szerepel, így $f(x) \ge f(q_k) + \frac1{2^k}$. Tehát $f(q_k + 0) \ge f(q_k) + \frac{1}{2^k} > f(q_k)$: **ugrás**.

A szakadási helyek tehát tartalmazzák a $\mathbb{Q} \cap (0, 1)$ halmazt, amely **sűrű** $[0, 1]$-ben.

(Kiegészítésként: $f$ minden irracionális pontban folytonos. Ha $x \notin \mathbb{Q}$ és $\varepsilon > 0$, válasszunk $N$-et úgy, hogy $\sum_{n > N} 2^{-n} < \varepsilon$, és legyen $\delta$ az $x$ távolsága a $q_1, \dots, q_N$ pontoktól. Ha $|y - x| < \delta$, akkor $x$ és $y$ között egyik $q_1, \dots, q_N$ sincs, így $|f(y) - f(x)| \le \sum_{n > N} 2^{-n} < \varepsilon$.)

::: elmelet
**Elméleti háttér — monoton függvények szakadásai.** Monoton függvénynek minden pontban léteznek a véges féloldali határértékei, így csak **ugrásai** lehetnek, és ezekből legfeljebb **megszámlálhatóan sok** van (minden ugrás-intervallumba más racionális szám jut). A b) rész azt mutatja, hogy ennél többet nem lehet mondani: a szakadási helyek bármely megszámlálható halmazt kitölthetnek, akár sűrűt is. A konstrukció általános: ha $\{a_n\}$ tetszőleges megszámlálható halmaz és $\sum c_n$ pozitív tagú konvergens sor, akkor $f(x) = \sum_{a_n < x} c_n$ monoton nő, pontosan az $a_n$ pontokban szakad, és ott az ugrás nagysága éppen $c_n$.
:::

## 116*. feladat

Bizonyítsuk be, hogy bármely $f : \mathbb{R} \to \mathbb{R}$ függvény elsőfajú szakadási helyeinek halmaza megszámlálható.

**Megoldás.**

Egy elsőfajú szakadási helyen mindkét féloldali határérték, $f(a - 0)$ és $f(a + 0)$ létezik és véges, és $f$ nem folytonos $a$-ban. Négy (nem feltétlenül diszjunkt) részhalmazra bontjuk ezeket, és mindegyikről megmutatjuk, hogy injektíven leképezhető a megszámlálható $\mathbb{Q}^3$ halmazba.

**1. $f(a - 0) < f(a + 0)$.** Válasszunk egy $r \in \mathbb{Q}$ számot, hogy $f(a - 0) < r < f(a + 0)$. A féloldali határértékek definíciója szerint vannak $p, q \in \mathbb{Q}$, $p < a < q$, hogy
$$f(x) < r, \text{ ha } p < x < a, \qquad f(x) > r, \text{ ha } a < x < q.$$
Legyen $\Phi(a) = (p, q, r)$. **$\Phi$ injektív:** ha $a < b$ és $\Phi(a) = \Phi(b) = (p, q, r)$, akkor legyen $x \in (a, b)$ tetszőleges. Mivel $a < x < b < q$, az $a$-ra vonatkozó feltétel szerint $f(x) > r$; mivel $p < a < x < b$, a $b$-re vonatkozó feltétel szerint $f(x) < r$. Ellentmondás.

**2. $f(a - 0) > f(a + 0)$.** Ugyanígy (vagy az 1. esetet $-f$-re alkalmazva).

**3. $f(a - 0) = f(a + 0) = L < f(a)$** (megszüntethető szakadás, a függvényérték „fölül” van). Válasszunk $r \in \mathbb{Q}$-t, $L < r < f(a)$, és $p, q \in \mathbb{Q}$-t, $p < a < q$, hogy $f(x) < r$, ha $x \in (p, q) \setminus \{a\}$. Legyen $\Psi(a) = (p, q, r)$. **Injektív:** ha $a \ne b$ és $\Psi(a) = \Psi(b)$, akkor $b \in (p, q) \setminus \{a\}$, így az $a$-ra vonatkozó feltétel szerint $f(b) < r$; de $b$ választása szerint $f(b) > r$. Ellentmondás.

**4. $f(a - 0) = f(a + 0) = L > f(a)$.** Ugyanígy.

Ha a két féloldali határérték egyenlő és $f(a)$-val is egyenlő, akkor $f$ folytonos $a$-ban; tehát a négy eset lefedi az összes elsőfajú szakadási helyet. Mindegyik halmaz injektíven képezhető a megszámlálható $\mathbb{Q}^3$-ba, így megszámlálható, és megszámlálható sok megszámlálható halmaz uniója megszámlálható. $\blacksquare$

::: elmelet
**Elméleti háttér — racionális „tanúk” és megszámlálhatóság.** A módszer: minden „rossz” ponthoz hozzárendelünk véges sok racionális számot (tanút), és megmutatjuk, hogy a tanúk egyértelműen meghatározzák a pontot. Ehhez a racionális számok **sűrűsége** kell (bármely két valós szám között van racionális). Ugyanez a gondolat volt a monoton függvények szakadásainak megszámlálhatóságánál (ott egyetlen racionális szám is elég volt, mert a monotonitás miatt az ugrás-intervallumok diszjunktak). A tétel általánosítása: tetszőleges függvénynek legfeljebb megszámlálhatóan sok olyan pontja van, ahol a féloldali határértékek léteznek, de különböznek. A **másodfajú** szakadásokra nincs ilyen korlát: a Dirichlet-függvény minden pontban (másodfajú módon) szakad.
:::

## 117. feladat

Mutassuk meg, hogy ha $f \in C(\mathbb{R})$ és $\lim\limits_{x \to \infty} f(x) = \lim\limits_{x \to -\infty} f(x)$, akkor $f$-nek vagy van legnagyobb, vagy van legkisebb értéke. (Mindkettő nem feltétlenül.)

**Megoldás.**

Legyen $L$ a közös határérték ($L \in \mathbb{R}$ vagy $L = \pm\infty$).

**$L \in \mathbb{R}$.** Ha $f \equiv L$, akkor $f$-nek van legnagyobb és legkisebb értéke is. Különben van $x_0$, hogy $f(x_0) \ne L$; legyen mondjuk $f(x_0) > L$ (a másik eset $-f$-re alkalmazva ugyanez). Legyen $\varepsilon = f(x_0) - L > 0$. A határértékek miatt van $K > 0$, hogy $|x| > K$ esetén $f(x) < L + \varepsilon = f(x_0)$. Növelve $K$-t feltehetjük, hogy $|x_0| \le K$. A $[-K, K]$ korlátos, zárt intervallumon $f$ folytonos, így a **Weierstrass-tétel** szerint van $c \in [-K, K]$, ahol $f$ felveszi a maximumát ezen az intervallumon: $f(c) \ge f(x)$ minden $x \in [-K, K]$-ra, speciálisan $f(c) \ge f(x_0)$. Ha $|x| > K$, akkor $f(x) < f(x_0) \le f(c)$. Tehát **$f(c)$ az $f$ legnagyobb értéke** $\mathbb{R}$-en. (Ha $f(x_0) < L$, ugyanígy legkisebb értéket kapunk.)

**$L = +\infty$.** Legyen $x_0$ tetszőleges; van $K \ge |x_0|$, hogy $|x| > K$ esetén $f(x) > f(x_0)$. A $[-K, K]$-n vett minimum ($f(c) \le f(x_0)$) a Weierstrass-tétel szerint létezik, és ez **az $f$ legkisebb értéke**. $L = -\infty$ esetén ugyanígy legnagyobb érték van.

**Mindkettő nem feltétlenül.** Az $f(x) = \frac{1}{1 + x^2}$ függvényre mindkét határérték $0$; legnagyobb értéke $f(0) = 1$, de legkisebb értéke nincs ($f > 0$, és $\inf f = 0$). Az $f(x) = x^2$ esetén mindkét határérték $+\infty$, legkisebb érték van ($0$), legnagyobb nincs. $\blacksquare$

::: elmelet
**Elméleti háttér — Weierstrass-tétel nem korlátos intervallumon.** A Weierstrass-tétel ($f \in C[a, b] \Rightarrow$ $f$ felveszi a maximumát és minimumát) kompakt, azaz korlátos és zárt intervallumra szól; $\mathbb{R}$-en általában hamis ($\operatorname{arctg}$, $x$). A tipikus kiterjesztés: ha a végtelenben a függvény „lejjebb van”, mint valamely belső értéke, akkor a maximumot elég egy elég nagy $[-K, K]$-n keresni, és ott a Weierstrass-tétel működik. A határérték definíciója adja a $K$-t, a Weierstrass-tétel a szélsőértéket. Ugyanígy látható be pl., hogy $\lim_{\pm\infty} f = +\infty$ esetén egy folytonos függvénynek van minimuma (pl. polinomok páros fokszámmal és pozitív főegyütthatóval).
:::

## Röpzhra

**Definíciók:** szakadási helyek.

**Tételek:** folytonosság/határérték és kompozíció, folytonosság és korlátosság, Weierstrass és Bolzano–Darboux tétel, folytonos függvények értékkészlete, inverz függvény folytonossága, monoton függvények féloldali határértékei és szakadási helyei, konvexitás és folytonosság ($h_{a,b}$-s lemma is).

### Definíciók és tételek kidolgozása

#### Definíciók

- **Szakadási helyek osztályozása:** Legyen $f$ értelmezve az $x_0$ egy pontozott környezetében. Ha $f$ nem folytonos $x_0$-ban, akkor $x_0$ **szakadási hely**.
  - **Megszüntethető szakadás:** létezik a véges $\lim_{x \to x_0} f(x) = L$ határérték, de vagy $x_0 \notin D(f)$, vagy $f(x_0) \ne L$.
  - **Elsőfajú szakadás (ugrás):** léteznek a véges egyoldali határértékek: $f(x_0 - 0) = \lim_{x \to x_0 - 0} f(x) \in \mathbb{R}$ és $f(x_0 + 0) = \lim_{x \to x_0 + 0} f(x) \in \mathbb{R}$, de $f(x_0 - 0) \ne f(x_0 + 0)$. Az ugrás nagysága: $|f(x_0 + 0) - f(x_0 - 0)|$.
  - **Másodfajú szakadás (lényeges szakadás):** a két egyoldali határérték közül legalább az egyik nem létezik vagy nem véges ($\pm\infty$).

#### Tételek

- **Folytonosság / határérték és kompozíció:** Ha $g$ folytonos az $u_0 = f(x_0)$ pontban, és $f$ folytonos az $x_0$ pontban, akkor $g \circ f$ is folytonos az $x_0$ pontban. Határértékre: ha $\lim_{x \to x_0} f(x) = u_0$ és $g$ folytonos $u_0$-ban, akkor $\lim_{x \to x_0} g(f(x)) = g(u_0)$.
- **Folytonosság és korlátosság (lokális és globális):**
  - *Lokális:* Ha $f$ folytonos az $x_0$ pontban, akkor $x_0$-nak létezik olyan környezete, amelyben $f$ korlátos.
  - *Globális (Weierstrass I.):* Korlátos és zárt $[a, b]$ intervallumon folytonos függvény korlátos: $\exists K > 0: \forall x \in [a, b]: |f(x)| \le K$.
- **Weierstrass-tétel (szélsőértéktétel):** Ha $f \in C[a, b]$, akkor $f$ felveszi a maximumát és minimumát $[a, b]$-n, azaz léteznek $\xi_{\min}, \xi_{\max} \in [a, b]$ pontok, hogy minden $x \in [a, b]$-re $f(\xi_{\min}) \le f(x) \le f(\xi_{\max})$.
- **Bolzano–Darboux-tétel (közbülsőérték-tétel):** Ha $f \in C[a, b]$ és $f(a) < c < f(b)$ (vagy fordítva), akkor létezik olyan $\xi \in (a, b)$, amelyre $f(\xi) = c$.
- **Folytonos függvények értékkészlete:** Ha $I \subseteq \mathbb{R}$ tetszőleges intervallum és $f \in C(I)$, akkor az értékkészlet $f(I)$ is intervallum. Speciálisan ha $I = [a, b]$ korlátos és zárt, akkor $f([a, b]) = [\min f, \max f]$ is korlátos és zárt intervallum.
- **Inverz függvény folytonossága:** Ha $f$ egy $I$ intervallumon értelmezett szigorúan monoton és folytonos függvény, akkor $J = f(I)$ is intervallum, és az $f^{-1} : J \to I$ inverz függvény létezik, szigorúan monoton (ugyanolyan irányban), és folytonos $J$-n.
- **Monoton függvények féloldali határértékei és szakadási helyei:** Ha $f$ monoton egy $(a, b)$ intervallumon, akkor minden $x_0 \in (a, b)$ pontban léteznek a véges egyoldali határértékek: monoton növő $f$-re $f(x_0 - 0) = \sup_{x < x_0} f(x) \le f(x_0) \le \inf_{x > x_0} f(x) = f(x_0 + 0)$. Következésképpen monoton függvénynek csak elsőfajú szakadási helyei lehetnek, és a szakadási helyek halmaza legfeljebb megszámlálható.
- **Konvexitás és folytonosság ($h_{a,b}$-s lemma):** Legyen $h_{a,b}(x) = f(a) + \frac{f(b) - f(a)}{b - a}(x - a)$ az $(a, f(a))$ és $(b, f(b))$ pontokon átmenő húr egyenese.
  - *Lemma:* Ha $f$ konvex az $I$ intervallumon, $a, b \in I$, $a < b$ és $x \in I \setminus [a, b]$, akkor $f(x) \ge h_{a,b}(x)$ (a húr $[a, b]$-n a függvény fölött, azon kívül alatta van).
  - *Tétel:* Ha $f$ konvex az $I$ **nyílt** intervallumon, akkor $f \in C(I)$. *(Bizonyítás: $c \in I$-hez válasszunk $a < c < b$ pontokat $I$-ből; $x \in (c, b)$ esetén a lemma és a konvexitás szerint $h_{a,c}(x) \le f(x) \le h_{c,b}(x)$, és $x \to c + 0$ esetén mindkét lineáris szélső tag $f(c)$-hez tart, így a rendőrelv szerint $f$ jobbról folytonos $c$-ben; balról hasonlóan.)* Zárt intervallum végpontjában a konvex függvény nem feltétlenül folytonos.
