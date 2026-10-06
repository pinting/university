# Algebra és számelmélet – 3. feladatsor – megoldások

## 1. feladat

Számítsuk ki a következő összegeket és szorzatokat:

$\displaystyle\sum_{i=3}^{10} (-1)^i$, $\displaystyle\sum_{i=0}^{n} (-1)^i$, $\displaystyle\sum_{j=1}^{5} 2j+1$, $\displaystyle\sum_{j=1}^{n} 2j+1$, $\displaystyle\sum_{\substack{1 < p \le 7 \\ p \text{ prím}}} p^2$, $\displaystyle\sum_{2 < j < k < 6} jk$, $\displaystyle\sum_{i=1}^{n} i$,

$\displaystyle\prod_{i=1}^{n} 2^i$, $\displaystyle\sum_{i=1}^{93}\sum_{j=1}^{21} ij - \sum_{j=1}^{21}\sum_{i=1}^{93} ij$, $\displaystyle\sum_{j=0}^{n} q^j$, $\displaystyle\prod_{j=0}^{n} q^{r^j}$, $\displaystyle(a-b)\sum_{i=0}^{n-1} a^i b^{n-i-1}$,

$\displaystyle\sum_{i=0}^{252} \binom{252}{i}$, $\displaystyle\sum_{i=0}^{87} 2^i \binom{87}{i}$, $\displaystyle\sum_{i=0}^{471} (-1)^i \binom{471}{i}$, $\displaystyle\sum_{i=0}^{100} \binom{100}{2i}$, $\displaystyle\left(\sum_{i=1}^{n} a_i\right) \cdot \left(\sum_{j=1}^{k} b_j\right)$.

**Megoldás.**

A $\sum 2j + 1$ alakokat $\sum (2j + 1)$-ként értelmezzük.

- $\sum_{i=3}^{10} (-1)^i = -1 + 1 - 1 + 1 - 1 + 1 - 1 + 1 = 0$ (8 tag, páronként kiesnek).
- $\sum_{i=0}^{n} (-1)^i = \frac{1 + (-1)^n}{2}$, azaz $1$, ha $n$ páros, és $0$, ha $n$ páratlan.
- $\sum_{j=1}^{5} (2j + 1) = 3 + 5 + 7 + 9 + 11 = 35$.
- $\sum_{j=1}^{n} (2j + 1) = 2 \cdot \frac{n(n+1)}{2} + n = n^2 + 2n$.
- $\sum_{1 < p \le 7,\ p \text{ prím}} p^2 = 2^2 + 3^2 + 5^2 + 7^2 = 87$.
- $\sum_{2 < j < k < 6} jk$: a $j < k$ párok a $\{3, 4, 5\}$ halmazból: $3 \cdot 4 + 3 \cdot 5 + 4 \cdot 5 = 47$.
- $\sum_{i=1}^{n} i = \frac{n(n+1)}{2}$.
- $\prod_{i=1}^{n} 2^i = 2^{1 + 2 + \dots + n} = 2^{n(n+1)/2}$.
- $\sum_{i=1}^{93}\sum_{j=1}^{21} ij - \sum_{j=1}^{21}\sum_{i=1}^{93} ij = 0$, mert véges összegben az összegzés sorrendje felcserélhető.
- $\sum_{j=0}^{n} q^j = \frac{q^{n+1} - 1}{q - 1}$, ha $q \neq 1$, és $n + 1$, ha $q = 1$.
- $\prod_{j=0}^{n} q^{r^j} = q^{\sum_{j=0}^n r^j} = q^{\frac{r^{n+1} - 1}{r - 1}}$, ha $r \neq 1$, és $q^{n+1}$, ha $r = 1$.
- $(a - b)\sum_{i=0}^{n-1} a^i b^{n-i-1} = a^n - b^n$ (kibontva a tagok teleszkopikusan kiesnek).
- $\sum_{i=0}^{252} \binom{252}{i} = (1 + 1)^{252} = 2^{252}$ (binomiális tétel).
- $\sum_{i=0}^{87} 2^i\binom{87}{i} = (1 + 2)^{87} = 3^{87}$.
- $\sum_{i=0}^{471} (-1)^i\binom{471}{i} = (1 - 1)^{471} = 0$.
- $\sum_{i=0}^{100} \binom{100}{2i} = 2^{99}$: ($i > 50$-re a tagok nullák) a páros indexű binomiális együtthatók összege, és $(1+1)^{100} + (1-1)^{100} = 2\sum_{k \text{ páros}}\binom{100}{k}$, tehát az összeg $\frac{2^{100}}{2} = 2^{99}$.
- $\left(\sum_{i=1}^{n} a_i\right)\left(\sum_{j=1}^{k} b_j\right) = \sum_{i=1}^{n}\sum_{j=1}^{k} a_i b_j$ (disztributivitás).

## 2. feladat

Alakítsuk szorzattá az $a^3 + b^3$ kifejezést. Általánosan, mi lesz $a^n + b^n$ szorzat alakja, ha $n$ páratlan?

**Megoldás.**

$$a^3 + b^3 = (a + b)(a^2 - ab + b^2).$$
Páratlan $n$-re $a^n + b^n = a^n - (-b)^n$, így az $x^n - y^n = (x - y)\sum_{i=0}^{n-1}x^{n-1-i}y^i$ azonosságot $x = a$, $y = -b$-re alkalmazva
$$a^n + b^n = (a + b)\left(a^{n-1} - a^{n-2}b + a^{n-3}b^2 - \dots - ab^{n-2} + b^{n-1}\right).$$

## 3. feladat

Gyöktelenítsük az alábbi törtek nevezőjét:
$$\frac{\sqrt{5} - \sqrt{2}}{\sqrt{5} + \sqrt{2}}, \quad \frac{2}{\sqrt[3]{3} + 1}, \quad \frac{4}{\sqrt[3]{9} - \sqrt[3]{3} + 1}, \quad \frac{3}{\sqrt[3]{25} + \sqrt[3]{10} + \sqrt[3]{4}}, \quad \frac{1}{\sqrt{2} + \sqrt{3} + \sqrt{5}}.$$

**Megoldás.**

- $\dfrac{\sqrt5 - \sqrt2}{\sqrt5 + \sqrt2} = \dfrac{(\sqrt5 - \sqrt2)^2}{5 - 2} = \dfrac{7 - 2\sqrt{10}}{3}$.
- $\dfrac{2}{\sqrt[3]{3} + 1}$: az $a^3 + 1 = (a + 1)(a^2 - a + 1)$ azonossággal ($a = \sqrt[3]{3}$):
$$\frac{2(\sqrt[3]{9} - \sqrt[3]{3} + 1)}{3 + 1} = \frac{\sqrt[3]{9} - \sqrt[3]{3} + 1}{2}.$$
- $\dfrac{4}{\sqrt[3]{9} - \sqrt[3]{3} + 1}$: ugyanazzal az azonossággal:
$$\frac{4(\sqrt[3]{3} + 1)}{3 + 1} = \sqrt[3]{3} + 1.$$
- $\dfrac{3}{\sqrt[3]{25} + \sqrt[3]{10} + \sqrt[3]{4}}$: $a = \sqrt[3]{5}$, $b = \sqrt[3]{2}$ esetén a nevező $a^2 + ab + b^2$, és $(a - b)(a^2 + ab + b^2) = a^3 - b^3 = 3$. Így a tört értéke $\sqrt[3]{5} - \sqrt[3]{2}$.
- $\dfrac{1}{\sqrt2 + \sqrt3 + \sqrt5}$: bővítsünk $(\sqrt2 + \sqrt3 - \sqrt5)$-tel: a nevező $(\sqrt2 + \sqrt3)^2 - 5 = 2\sqrt6$. Majd $\sqrt6$-tal bővítve:
$$\frac{\sqrt2 + \sqrt3 - \sqrt5}{2\sqrt6} = \frac{(\sqrt2 + \sqrt3 - \sqrt5)\sqrt6}{12} = \frac{2\sqrt3 + 3\sqrt2 - \sqrt{30}}{12}.$$

## 4. feladat

Oldjuk meg az $x^3 + 3x^2 + 3x + 1 = 0$, $x^3 - 3x^2 + 3x - 1 = 0$, $x^3 + 3x^2 + 3x + 2 = 0$ egyenleteket.

**Megoldás.**

- $x^3 + 3x^2 + 3x + 1 = (x + 1)^3 = 0$: $x = -1$ (háromszoros gyök).
- $x^3 - 3x^2 + 3x - 1 = (x - 1)^3 = 0$: $x = 1$ (háromszoros gyök).
- $x^3 + 3x^2 + 3x + 2 = (x + 1)^3 + 1 = 0$, azaz $(x + 1)^3 = -1$. A valós megoldás $x + 1 = -1$, $x = -2$. Szorzattá alakítva $(x + 2)(x^2 + x + 1) = 0$, és $x^2 + x + 1$-nek nincs valós gyöke (diszkrimináns $-3$); a komplex gyökök $x = \frac{-1 \pm i\sqrt3}{2}$.

## 5. feladat

Alakítsuk szorzattá az $x^2 - 7x + 10$ kifejezést. Adjuk meg az $u + v = 7$, $uv = 10$, majd az $u + v = 6$, $uv = 9$ egyenletrendszer **összes** valós megoldását.

**Megoldás.**

$x^2 - 7x + 10 = (x - 2)(x - 5)$.

A Viète-formulák szerint $u + v = s$, $uv = p$ pontosan akkor, ha $u$ és $v$ a $t^2 - st + p = 0$ egyenlet gyökei.

- $u + v = 7$, $uv = 10$: $t^2 - 7t + 10 = (t - 2)(t - 5)$, így **$(u, v) = (2, 5)$ vagy $(5, 2)$**.
- $u + v = 6$, $uv = 9$: $t^2 - 6t + 9 = (t - 3)^2$, így **egyetlen megoldás: $u = v = 3$**.

## 6. feladat

Végezzük el az alábbi műveleteket a polinomok körében, és állapítsuk meg az eredmény fokát: $(2x^4 - x^2 + 5) - (2x^4 + 3x^3 - x)$, $(x^3 - 2x + 1)(2x^2 + x)$.

**Megoldás.**

- $(2x^4 - x^2 + 5) - (2x^4 + 3x^3 - x) = -3x^3 - x^2 + x + 5$, **foka 3** (a negyedfokú tagok kiestek).
- $(x^3 - 2x + 1)(2x^2 + x) = 2x^5 + x^4 - 4x^3 - 2x^2 + 2x^2 + x = 2x^5 + x^4 - 4x^3 + x$, **foka 5** $= 3 + 2$.

## 7. feladat

Mi lesz a 15-ödfokú tag együtthatója az $(x^8 - 3x^5 + 2)(x^{10} + 2x^7 - x^2 + 5)$ polinomban?

**Megoldás.**

Az $x^{15}$ tag azokból a szorzatokból jön, ahol a kitevők összege 15: $x^8 \cdot 2x^7$ (együttható $2$) és $(-3x^5) \cdot x^{10}$ (együttható $-3$). **Az együttható $2 - 3 = -1$.**

## 8. feladat

Egy nyolcadfokú és egy $m$-edfokú polinom összege harmadfokú. Mik $m$ lehetséges értékei?

**Megoldás.**

Ha $m \neq 8$, akkor az összeg foka $\max\{8, m\} \ge 8$ volna. Tehát **$m = 8$**, és a két polinom főegyütthatója egymás ellentettje (sőt az $x^8, \dots, x^4$ együtthatók is kiejtik egymást).

## 9. feladat

Két polinom szorzata tizedfokú, az összegük pedig negyedfokú. Mennyi lehet a két polinom fokszáma?

**Megoldás.**

Legyenek a fokszámok $a$ és $b$; ekkor $a + b = 10$ (a szorzat foka a fokok összege). Ha $a \neq b$, akkor az összeg foka $\max\{a, b\}$, ami $a + b = 10$ miatt legalább $6$ – nem lehet $4$. Tehát $a = b = 5$, és az összegben a főtagok kiejtik egymást. **Mindkét polinom ötödfokú.** Példa: $f = x^5 + x^4$, $g = -x^5$: $fg = -x^{10} - x^9$, $f + g = x^4$.

## 10. feladat

Emeljük ki az $x - 2$ gyöktényezőt az $x^3 - 4x^2 + x + 6$ polinomból, majd határozzuk meg az összes gyökét.

**Megoldás.**

Horner-elrendezés a $2$ helyen:

|   | $1$ | $-4$ | $1$ | $6$ |
|:---:|:---:|:---:|:---:|:---:|
| $2$ | $1$ | $-2$ | $-3$ | $0$ |

Tehát $x^3 - 4x^2 + x + 6 = (x - 2)(x^2 - 2x - 3) = (x - 2)(x - 3)(x + 1)$. **A gyökök: $2$, $3$, $-1$.**

## 11. feladat

A Horner-elrendezés segítségével döntsük el, hogy az $f(x) = x^6 - 3x^5 + 2x^3 - x + 5$ polinomnak gyöke-e a 2 szám, és írjuk is fel $f(x)$-et $(x - 2)g(x) + f(2)$ alakban.

**Megoldás.**

Az együtthatók (a hiányzó tagok $0$-val): $1, -3, 0, 2, 0, -1, 5$.

|   | $1$ | $-3$ | $0$ | $2$ | $0$ | $-1$ | $5$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $2$ | $1$ | $-1$ | $-2$ | $-2$ | $-4$ | $-9$ | $-13$ |

$f(2) = -13 \neq 0$, tehát **a 2 nem gyök**, és
$$f(x) = (x - 2)(x^5 - x^4 - 2x^3 - 2x^2 - 4x - 9) - 13.$$
(Ellenőrzés: $f(2) = 64 - 96 + 16 - 2 + 5 = -13$.)

## 12. feladat

Hányszoros gyöke az $x^4 + 2x^3 + 2x^2 + 2x + 1$ polinomnak a $-1$? (Iterált Horner.)

**Megoldás.**

Iterált Horner a $-1$ helyen:

|   | $1$ | $2$ | $2$ | $2$ | $1$ |
|:---:|:---:|:---:|:---:|:---:|:---:|
| $-1$ | $1$ | $1$ | $1$ | $1$ | $\mathbf{0}$ |
| $-1$ | $1$ | $0$ | $1$ | $\mathbf{0}$ | |
| $-1$ | $1$ | $-1$ | $\mathbf{2}$ | | |

Az első két maradék $0$, a harmadik $2 \neq 0$, így **a $-1$ kétszeres gyök**: $x^4 + 2x^3 + 2x^2 + 2x + 1 = (x + 1)^2(x^2 + 1)$.

## 13. feladat

Iterált Hornerrel írjuk fel az $f(x) = 3x^5 - 2x^4 + 4x^3 - 5x^2 + x - 4$ polinomot $(x - 2)$ polinomjaként, azaz keressük meg azt a $g(x)$ polinomot, melyre $f(x) = g(x - 2)$.

**Megoldás.**

Iterált Horner a $2$ helyen; az egymás utáni maradékok adják $g$ együtthatóit (az $(x - 2)^0, (x - 2)^1, \dots$ tagokét):

|   | $3$ | $-2$ | $4$ | $-5$ | $1$ | $-4$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $2$ | $3$ | $4$ | $12$ | $19$ | $39$ | $\mathbf{74}$ |
| $2$ | $3$ | $10$ | $32$ | $83$ | $\mathbf{205}$ | |
| $2$ | $3$ | $16$ | $64$ | $\mathbf{211}$ | | |
| $2$ | $3$ | $22$ | $\mathbf{108}$ | | | |
| $2$ | $3$ | $\mathbf{28}$ | | | | |
| $2$ | $\mathbf{3}$ | | | | | |

$$\begin{aligned} f(x) &= 3(x-2)^5 + 28(x-2)^4 + 108(x-2)^3 \\ &\quad + 211(x-2)^2 + 205(x-2) + 74, \end{aligned}$$
azaz $g(y) = 3y^5 + 28y^4 + 108y^3 + 211y^2 + 205y + 74$. (Ellenőrzés: $g(1) = 629 = f(3)$, és $g(0) = 74 = f(2)$.)

## 14. feladat

Az $n$-edfokú $f(x)$ polinomba behelyettesítjük a $b$ számot. Hány szorzásra van szükség $f(b)$ kiszámításához, ha egyáltalán nem trükközünk; ha a $b$ hatványait előre kiszámoljuk; ha a Horner-elrendezést használjuk?

**Megoldás.**

Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$.

- **Trükközés nélkül:** az $a_kb^k$ tag $k$ szorzás ($k - 1$ a hatványhoz, $1$ az együtthatóval), összesen $1 + 2 + \dots + n = \frac{n(n+1)}{2}$ szorzás.
- **A hatványokat előre kiszámolva:** $b^2, \dots, b^n$ összesen $n - 1$ szorzás ($b^{k} = b^{k-1} \cdot b$), majd az $n$ együtthatóval való szorzás: összesen $2n - 1$.
- **Horner-elrendezéssel:** $f(b) = (\dots((a_nb + a_{n-1})b + a_{n-2})b + \dots)b + a_0$, összesen **$n$ szorzás** (és $n$ összeadás).

## 15. feladat

Bizonyítsuk be, hogy nem létezik olyan egész együtthatós $v(x)$ polinom, amelyre igaz, hogy $v(7) = 11$ és $v(11) = 13$.

**Megoldás.**

Egész együtthatós $v$-re és egész $a, b$-re $a - b \mid v(a) - v(b)$, mert $v(a) - v(b) = \sum_k c_k(a^k - b^k)$, és $a - b \mid a^k - b^k$. Itt $11 - 7 = 4$ kellene, hogy osztója legyen $v(11) - v(7) = 13 - 11 = 2$-nek – ez hamis. Tehát nincs ilyen polinom. $\blacksquare$

## 16. feladat

Bizonyítsuk be, hogy egyetlen nem konstans, egész együtthatós $v(x)$ polinom sem adhat minden $x$ egész számra prímszám értéket.

**Megoldás.**

Tegyük fel, hogy $v$ nem konstans, egész együtthatós, és minden egész helyen prímet vesz fel. Legyen $a$ egész és $p = v(a)$ (prím). Minden $k$ egészre $(a + kp) - a = kp \mid v(a + kp) - v(a)$, így $p \mid v(a + kp)$. Mivel $v(a + kp)$ prím és osztható $p$-vel, $v(a + kp) = p$ (illetve negatív prímeket is megengedve $\pm p$). Tehát $v - p$ (vagy $v + p$) végtelen sok helyen nulla, így azonosan nulla, azaz $v$ konstans – ellentmondás. $\blacksquare$

## 17. feladat

(Schur tétele polinomokra) Bizonyítsuk be, hogy ha $v(x)$ egy egész együtthatós, nem konstans polinom, akkor a $v(1), v(2), v(3), \dots$ helyettesítési értékeknek összesen végtelen sok különböző prímosztója van.

**Megoldás.**

Legyen $v(x) = c_dx^d + \dots + c_1x + c_0$, $d \ge 1$.

**1. eset: $c_0 \neq 0$.** Tegyük fel, hogy csak véges sok prím, $p_1, \dots, p_k$ osztja valamelyik $v(n)$-t ($n \ge 1$), és legyen $P = p_1 \cdots p_k$. Pozitív egész $t$-re
$$v(|c_0|Pt) = c_0 + \sum_{j \ge 1} c_j(|c_0|Pt)^j = c_0\left(1 + Pt\,w(t)\right)$$
valamely $w \in \mathbb{Z}[t]$-vel, mert minden $j \ge 1$-re a tag osztható $c_0Pt$-vel. Mivel $v$ nem konstans, $|v(x)| \to \infty$, így elég nagy $t$-re $|1 + Pt\,w(t)| > 1$, tehát van $q$ prímosztója. De $1 + Pt\,w(t) \equiv 1 \pmod{p_i}$ minden $i$-re, így $q$ egyik $p_i$-vel sem egyenlő, mégis osztja $v(|c_0|Pt)$-t – ellentmondás.

**2. eset: $c_0 = 0$.** Írjuk $v(x) = x^mu(x)$ alakba, $u(0) \neq 0$. Ha $u$ konstans, akkor $v(p) = u \cdot p^m$ minden $p$ prímre osztható $p$-vel – végtelen sok prímosztó. Ha $u$ nem konstans, akkor az 1. eset szerint az $u(n)$ értékeknek végtelen sok prímosztója van, és ezek $v(n)$-t is osztják. $\blacksquare$

## 18. feladat

Ha a 2 (pontosan) háromszoros gyöke $f$-nek és négyszeres gyöke $g$-nek, akkor hányszoros gyöke $f + g$-nek, illetve $f + g + fg$-nek?

**Megoldás.**

Írjuk $f = (x - 2)^3 f_1$, $g = (x - 2)^4 g_1$, ahol $f_1(2) \ne 0$ és $g_1(2) \ne 0$. Ekkor
$$f + g = (x - 2)^3\big(f_1 + (x - 2)g_1\big),$$
és a zárójel értéke a $2$ helyen $f_1(2) \neq 0$: **$f + g$-nek a 2 pontosan háromszoros gyöke.** Hasonlóan
$$f + g + fg = (x - 2)^3\big(f_1 + (x - 2)g_1 + (x - 2)^4f_1g_1\big),$$
a zárójel értéke a $2$-ben ismét $f_1(2) \neq 0$: **$f + g + fg$-nek is pontosan háromszoros gyöke.**

## 19. feladat

Igazoljuk, hogy az $x^2 + bx + c$-nek pontosan akkor van kétszeres gyöke, ha $b^2 = 4c$.

**Megoldás.**

Teljes négyzetté alakítva
$$x^2 + bx + c = \left(x + \frac b2\right)^2 - \frac{b^2 - 4c}{4}.$$
Ha $b^2 = 4c$, akkor $x^2 + bx + c = \left(x + \frac b2\right)^2$, tehát $-\frac b2$ kétszeres gyök. Megfordítva, ha $r$ kétszeres gyök, akkor (a polinom normált és másodfokú) $x^2 + bx + c = (x - r)^2 = x^2 - 2rx + r^2$, így $b = -2r$, $c = r^2$, és $b^2 = 4r^2 = 4c$. $\blacksquare$

## 20. feladat

(A racionális gyökteszt) Bizonyítsuk be, hogy ha a $\frac{p}{q}$ (ahol $p$ és $q$ relatív prím egész számok) racionális szám gyöke az $f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$ egész együtthatós polinomnak, akkor $p \mid a_0$ és $q \mid a_n$.

**Megoldás.**

$f\left(\frac pq\right) = 0$-t $q^n$-nel szorozva:
$$a_np^n + a_{n-1}p^{n-1}q + \dots + a_1pq^{n-1} + a_0q^n = 0.$$
Az $a_0q^n$ kivételével minden tag osztható $p$-vel, így $p \mid a_0q^n$. Mivel $(p, q) = 1$, $(p, q^n) = 1$, tehát $p \mid a_0$. Ugyanígy az $a_np^n$ kivételével minden tag osztható $q$-val, így $q \mid a_np^n$, és $(q, p^n) = 1$ miatt $q \mid a_n$. $\blacksquare$

## 21. feladat

A racionális gyökteszt segítségével soroljuk fel a lehetséges racionális gyököket, majd határozzuk meg az $f(x) = 2x^3 - 3x^2 - 11x + 6$ polinom összes racionális gyökét.

**Megoldás.**

$a_0 = 6$, $a_3 = 2$; a lehetséges racionális gyökök $\frac pq$, ahol $p \mid 6$ és $q \mid 2$ ($q > 0$):
$$\pm1,\ \pm2,\ \pm3,\ \pm6,\ \pm\frac12,\ \pm\frac32.$$
Próbálgatással $f(3) = 54 - 27 - 33 + 6 = 0$. Horner:

|   | $2$ | $-3$ | $-11$ | $6$ |
|:---:|:---:|:---:|:---:|:---:|
| $3$ | $2$ | $3$ | $-2$ | $0$ |

$f(x) = (x - 3)(2x^2 + 3x - 2) = (x - 3)(2x - 1)(x + 2)$. **A racionális gyökök: $3$, $\frac12$, $-2$** (és ez az összes gyök).
