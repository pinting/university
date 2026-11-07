# Analízis 1 – 1. ZH (2026) – megoldások

### B. Sc. I. Mat. Analízis 1 · Első ZH (2026/27-I. félév)

## 1. feladat

a) $\lim_{n \to \infty} \left(n - \sqrt{n^2 + 1}\right) \sqrt[3]{n} = ?$

b) $\lim_{n \to \infty} \sqrt[n^2]{3n^n + 2026^n - 1} = ?$

c) $\limsup_{n \to \infty} \left\{ \frac{2n^2}{7} \right\} = ?$

Ebben és az 5-ös feladatban szokás szerint $\{x\}$ az $x$ törtrészét, illetve $[x]$ az $x$ egészrészét jelöli.

**Megoldás.**

**a) $\mathbf{0}$.**

*Levezetés:*
A zárójeles tényező $\infty - \infty$ alakú, ezért gyöktelenítünk (bővítünk az $n + \sqrt{n^2 + 1}$ konjugálttal):
$$n - \sqrt{n^2 + 1} = \frac{\left(n - \sqrt{n^2 + 1}\right)\left(n + \sqrt{n^2 + 1}\right)}{n + \sqrt{n^2 + 1}} = \frac{n^2 - (n^2 + 1)}{n + \sqrt{n^2 + 1}} = \frac{-1}{n + \sqrt{n^2 + 1}}.$$
Így
$$\left(n - \sqrt{n^2 + 1}\right) \sqrt[3]{n} = -\frac{n^{1/3}}{n + \sqrt{n^2 + 1}}.$$
Mivel $\sqrt{n^2 + 1} > n$, a nevező nagyobb $2n$-nél, ezért
$$0 < \frac{n^{1/3}}{n + \sqrt{n^2 + 1}} < \frac{n^{1/3}}{2n} = \frac{1}{2n^{2/3}} \to 0.$$
A rendőrelv szerint
$$\lim_{n \to \infty} \left(n - \sqrt{n^2 + 1}\right) \sqrt[3]{n} = 0.$$

---

**b) $\mathbf{1}$.**

*Levezetés:*
Rendőrelvvel dolgozunk. Jelölje $x_n = 3n^n + 2026^n - 1$.

*Alsó becslés:* $2026^n - 1 \ge 0$, ezért $x_n \ge 3n^n \ge 1$, és így $\sqrt[n^2]{x_n} \ge 1$.

*Felső becslés:* $n \ge 2026$ esetén $2026^n \le n^n$, tehát
$$x_n \le 3n^n + n^n = 4n^n.$$
Gyököt vonva:
$$\sqrt[n^2]{x_n} \le \sqrt[n^2]{4} \cdot \sqrt[n^2]{n^n} = 4^{1/n^2} \cdot n^{n/n^2} = 4^{1/n^2} \cdot \sqrt[n]{n}.$$
Itt $1 \le 4^{1/n^2} \le 4^{1/n} = \sqrt[n]{4} \to 1$, így $4^{1/n^2} \to 1$; továbbá a nevezetes határérték szerint $\sqrt[n]{n} \to 1$. A felső becslés tehát $1 \cdot 1 = 1$-hez tart.

Mindkét becslés $1$-hez tart, így a rendőrelv szerint
$$\lim_{n \to \infty} \sqrt[n^2]{3n^n + 2026^n - 1} = 1.$$

*(Megjegyzés: itt a domináns tag $n \ge 2026$-tól kezdve $n^n$, nem $2026^n$ — de a gyökkitevő $n^2$, ami még az $n^n$-t is „legyőzi”.)*

---

**c) $\mathbf{\dfrac{4}{7}}$.**

*Levezetés:*
$\left\{ \frac{2n^2}{7} \right\} = \frac{r_n}{7}$, ahol $r_n \in \{0, 1, \dots, 6\}$ a $2n^2$ hetes maradéka. A maradék csak $n$ hetes maradékától függ, hiszen
$$2(n + 7)^2 = 2n^2 + 7 \cdot (4n + 14) \equiv 2n^2 \pmod 7.$$
Tehát a sorozat $7$ szerint periodikus. Egy perióduson:

| $n \bmod 7$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $n^2 \bmod 7$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |
| $2n^2 \bmod 7$ | $0$ | $2$ | $1$ | $4$ | $4$ | $1$ | $2$ |

A sorozat tehát csak a $0, \frac{1}{7}, \frac{2}{7}, \frac{4}{7}$ értékeket veszi fel, mindegyiket végtelen sokszor (periodicitás). Egy véges értékkészletű sorozat torlódási pontjai pontosan a végtelen sokszor felvett értékek, így a torlódási pontok halmaza $\left\{0, \frac{1}{7}, \frac{2}{7}, \frac{4}{7}\right\}$. A limesz szuperior a legnagyobb torlódási pont:
$$\limsup_{n \to \infty} \left\{ \frac{2n^2}{7} \right\} = \frac{4}{7}$$
(ezt az értéket pontosan az $n \equiv 3, 4 \pmod 7$ indexeken veszi fel, pl. $n = 3$: $\frac{18}{7} = 2 + \frac{4}{7}$).

::: elmelet
**Elméleti háttér — határértékszámítás alapmódszerei:**
- *Gyöktelenítés:* $\infty - \infty$ alakú $\sqrt{\,\cdot\,}$-os különbségeknél a konjugálttal bővítünk: $a - b = \frac{a^2 - b^2}{a + b}$.
- *$n$-edik gyökös rendőrelv:* Ha $1 \le x_n \le c \cdot y_n$, akkor a gyökvonás monotonitása miatt a gyököket külön becsülhetjük; a nevezetes határértékek: $\sqrt[n]{c} \to 1$ ($c > 0$), $\sqrt[n]{n} \to 1$.
- *Limesz szuperior:* a sorozat torlódási pontjai (konvergens részsorozatainak határértékei) közül a legnagyobb. Periodikus sorozatnál ez egyszerűen a perióduson felvett legnagyobb érték.
:::

## 2. feladat

a) Igazoljuk, hogy ha az $(a_n)$ sorozatra $a_n \to A$, ahol $|A| < 1$, akkor $(a_n)^n \to 0$.

b) Igaz-e, hogy ha a sorozat tagjai nem negatívak és $a_n \to 0$, akkor $\sqrt[n]{a_n} \to 0$?

c) Adjunk példát olyan $a_n \to \infty$ sorozatra, amire $\sqrt[n]{a_n}$ korlátos, de nem konvergens.

**Megoldás.**

**a) Bizonyítás.**

Válasszunk egy $q$ számot $|A|$ és $1$ közé, pl. $q = \frac{1 + |A|}{2}$, így $|A| < q < 1$.
Legyen $\varepsilon = q - |A| > 0$. A konvergencia definíciója szerint létezik $N$, hogy minden $n \ge N$ esetén $|a_n - A| < \varepsilon$, és ekkor a háromszög-egyenlőtlenség szerint
$$|a_n| \le |a_n - A| + |A| < (q - |A|) + |A| = q.$$
Ezért $n \ge N$ esetén
$$0 \le |(a_n)^n| = |a_n|^n \le q^n.$$
Mivel $0 < q < 1$, a mértani sorozat $q^n \to 0$, így a rendőrelv szerint $|(a_n)^n| \to 0$, ami ekvivalens azzal, hogy $(a_n)^n \to 0$.

*(Megjegyzés: a feltétel $|A| < 1$ nem hagyható el: pl. $a_n = 1 + \frac{1}{n} \to 1$, de $(a_n)^n \to e \ne 0$.)*

---

**b) Nem igaz.**

*Ellenpélda:* $a_n = \frac{1}{2^n}$. Ekkor $a_n \ge 0$ és $a_n \to 0$, de
$$\sqrt[n]{a_n} = \sqrt[n]{\frac{1}{2^n}} = \frac{1}{2} \not\to 0.$$
Egy másik ellenpélda: $a_n = \frac{1}{n}$, amelyre $\sqrt[n]{a_n} = \frac{1}{\sqrt[n]{n}} \to 1$.

---

**c) Példa:** $a_n = \left(3 + (-1)^n\right)^n$, azaz
$$a_n = \begin{cases} 4^n, & n \text{ páros}, \\ 2^n, & n \text{ páratlan}. \end{cases}$$

*Ellenőrzés:*
- $a_n \ge 2^n \ge n$ minden $n$-re, tehát $a_n \to \infty$.
- $\sqrt[n]{a_n} = 3 + (-1)^n$, ami felváltva $2$ és $4$: korlátos ($2 \le \sqrt[n]{a_n} \le 4$), de nem konvergens, mert két különböző torlódási pontja van ($2$ és $4$).

::: elmelet
**Elméleti háttér — hatványok és gyökök határértéke:**
- *Mértani sorozat:* $|q| < 1 \implies q^n \to 0$. Ha egy sorozat tagjai abszolút értékben egy indextől kezdve egy $1$-nél kisebb $q$ alatt maradnak, akkor $n$-edik hatványaik is $0$-hoz tartanak.
- *Konvergens sorozat „elválasztása”:* Ha $a_n \to A$ és $|A| < q$, akkor egy indextől kezdve $|a_n| < q$ (az $\varepsilon = q - |A|$ választással).
- Az $\sqrt[n]{a_n}$ viselkedése az $a_n$ „exponenciális növekedési rátáját” méri: $a_n \approx c^n$ esetén $\sqrt[n]{a_n} \approx c$, ezért $a_n \to 0$ vagy $a_n \to \infty$ önmagában semmit nem mond $\sqrt[n]{a_n}$ határértékéről.
:::

## 3. feladat

Legyen $a_1 = 0$, $a_{n+1} = \frac{1}{8} + a_n^2$, továbbá $b_1 = 0$, $b_{n+1} = \frac{9}{10} + b_n^2$. Léteznek-e az $(a_n)$ és a $(b_n)$ sorozatok határértékei? Ha igen, akkor adjuk meg a pontos értéküket is!

**Megoldás.**

**$(a_n)$ konvergens, $\mathbf{\lim a_n = \dfrac{2 - \sqrt{2}}{4}}$; $(b_n)$ határértéke $\mathbf{+\infty}$ (tehát $(b_n)$ divergens, véges határértéke nincs).**

*Az $(a_n)$ sorozat:*

1. **Fixpontok.** Ha $a_n \to L$, akkor a rekurzióban határértéket véve ($a_{n+1} \to L$, $a_n^2 \to L^2$):
   $$L = \frac{1}{8} + L^2 \iff L^2 - L + \frac{1}{8} = 0 \iff L = \frac{1 \pm \sqrt{1 - \frac{1}{2}}}{2} = \frac{2 \pm \sqrt{2}}{4}.$$
   Jelölje $\alpha = \frac{2 - \sqrt{2}}{4} \approx 0{,}146$ és $\beta = \frac{2 + \sqrt{2}}{4} \approx 0{,}854$ a két fixpontot.

2. **Monotonitás és korlátosság indukcióval.** Állítás: minden $n \ge 1$-re
   $$0 \le a_n < a_{n+1} < \alpha.$$
   - *$n = 1$:* $a_1 = 0$, $a_2 = \frac{1}{8}$, és $\frac{1}{8} < \alpha \iff \frac{1}{2} < 2 - \sqrt{2} \iff \sqrt{2} < \frac{3}{2} \iff 2 < \frac{9}{4}$, ami igaz.
   - *Indukciós lépés:* Az $f(x) = \frac{1}{8} + x^2$ függvény szigorúan monoton nő a $[0, +\infty)$ intervallumon. Ha $0 \le a_k < a_{k+1} < \alpha$, akkor $f$-et alkalmazva
     $$\tfrac{1}{8} \le f(a_k) < f(a_{k+1}) < f(\alpha), \quad\text{azaz}\quad 0 \le a_{k+1} < a_{k+2} < \alpha,$$
     hiszen $f(\alpha) = \alpha$ (fixpont).

3. **Konvergencia.** A sorozat szigorúan monoton nő és felülről korlátos ($\alpha$-val), tehát a monoton sorozatok tétele szerint konvergens; legyen $L = \lim a_n$. Ekkor $0 \le L \le \alpha$, és az 1. pont szerint $L \in \{\alpha, \beta\}$. Mivel $\beta > \alpha$, csak $L = \alpha$ lehetséges:
   $$\lim_{n \to \infty} a_n = \frac{2 - \sqrt{2}}{4}.$$

*A $(b_n)$ sorozat:*

Ha $(b_n)$ konvergálna egy $L$ valós számhoz, akkor $L = \frac{9}{10} + L^2$, azaz $L^2 - L + \frac{9}{10} = 0$ teljesülne. Ennek diszkriminánsa $1 - \frac{36}{10} < 0$, tehát nincs valós megoldás — $(b_n)$ nem konvergens.

Pontosabban: teljes négyzetté alakítva
$$b_{n+1} - b_n = b_n^2 - b_n + \frac{9}{10} = \left(b_n - \frac{1}{2}\right)^2 + \frac{9}{10} - \frac{1}{4} \ge \frac{13}{20}.$$
Így a sorozat szigorúan monoton nő, és összegezve
$$b_n \ge b_1 + (n - 1) \cdot \frac{13}{20} = \frac{13(n - 1)}{20} \to +\infty.$$
Tehát $\lim_{n \to \infty} b_n = +\infty$ (tágabb értelemben létező határérték), de $(b_n)$ divergens.

::: elmelet
**Elméleti háttér — rekurzív sorozatok $a_{n+1} = f(a_n)$:**
- *Fixpont-feltétel:* Ha $f$ folytonos és $a_n \to L$, akkor $L = f(L)$. Ez csak **szükséges** feltétel: megadja a lehetséges határértékeket, de a konvergenciát külön kell igazolni.
- *Monoton növő $f$ esetén* a sorozat monoton (az $a_1 < a_2$ vagy $a_1 > a_2$ reláció öröklődik indukcióval), és ha két szomszédos fixpont közé zárható, akkor a monoton sorozatok tétele szerint konvergens.
- *Nincs fixpont:* ha $f(x) - x \ge c > 0$ minden szóba jövő $x$-re, akkor $a_{n+1} - a_n \ge c$, így $a_n \to +\infty$.
:::

## 4. feladat

A határérték formális $\varepsilon$-$\delta$ definíciója segítségével igazoljuk, hogy:
$$\lim_{x \to 0} \frac{x^3 - 1}{x^2 + 1} = -1.$$

**Megoldás.**

Azt kell megmutatni, hogy minden $\varepsilon > 0$-hoz létezik $\delta > 0$, hogy ha $0 < |x| < \delta$, akkor
$$\left| \frac{x^3 - 1}{x^2 + 1} - (-1) \right| < \varepsilon.$$

*A kifejezés átalakítása:*
$$\frac{x^3 - 1}{x^2 + 1} + 1 = \frac{x^3 - 1 + x^2 + 1}{x^2 + 1} = \frac{x^3 + x^2}{x^2 + 1} = \frac{x^2 (x + 1)}{x^2 + 1}.$$

*Becslés:* Ha $|x| < 1$, akkor
- $|x + 1| \le |x| + 1 < 2$,
- $x^2 + 1 \ge 1$,
- $x^2 = |x| \cdot |x| \le |x|$.

Ezért $|x| < 1$ esetén
$$\left| \frac{x^2 (x + 1)}{x^2 + 1} \right| \le \frac{x^2 \cdot 2}{1} \le 2|x|.$$

*A $\delta$ megválasztása:* Legyen $\varepsilon > 0$ tetszőleges, és $\delta = \min\left(1, \frac{\varepsilon}{2}\right)$. Ha $0 < |x| < \delta$, akkor $|x| < 1$ miatt érvényes a fenti becslés, és $|x| < \frac{\varepsilon}{2}$ miatt
$$\left| \frac{x^3 - 1}{x^2 + 1} + 1 \right| \le 2|x| < 2 \cdot \frac{\varepsilon}{2} = \varepsilon.$$
Ezzel a határértéket a definíció alapján igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — $\varepsilon$-$\delta$ bizonyítások menete:**
- $\lim_{x \to a} f(x) = L \iff \forall \varepsilon > 0\ \exists \delta > 0\ \forall x \in D_f:\ 0 < |x - a| < \delta \implies |f(x) - L| < \varepsilon$.
- *Recept:* (1) hozzuk $|f(x) - L|$-et közös nevezőre, és emeljük ki belőle az $|x - a|$ tényezőt; (2) egy előzetes $\delta \le 1$ korlátozással a maradék tényezőt egy konstanssal ($K$) becsüljük; (3) $\delta = \min\left(1, \frac{\varepsilon}{K}\right)$.
:::

## 5. feladat

a) $\lim_{x \to 2-0} \frac{(x - 2)[x]}{\{x\} \cdot (x^2 - 4)} = ?$

b) $\lim_{x \to 0} \sqrt[7]{\frac{8}{x^2} - \frac{3}{x^4}} = ?$

**Megoldás.**

**a) $\mathbf{\dfrac{1}{4}}$.**

*Levezetés:*
Bal oldali határértéket keresünk a $2$-ben, ezért elég az $x \in (1, 2)$ értékeket vizsgálni. Itt
$$[x] = 1, \qquad \{x\} = x - [x] = x - 1 \ne 0.$$
Továbbá $x^2 - 4 = (x - 2)(x + 2)$, és $x \ne 2$ miatt $(x - 2)$-vel egyszerűsíthetünk:
$$\frac{(x - 2)[x]}{\{x\}(x^2 - 4)} = \frac{(x - 2) \cdot 1}{(x - 1)(x - 2)(x + 2)} = \frac{1}{(x - 1)(x + 2)}.$$
Az $x \mapsto \frac{1}{(x - 1)(x + 2)}$ függvény folytonos a $2$-ben (a nevező $1 \cdot 4 = 4 \ne 0$), így
$$\lim_{x \to 2-0} \frac{(x - 2)[x]}{\{x\}(x^2 - 4)} = \frac{1}{(2 - 1)(2 + 2)} = \frac{1}{4}.$$

*(Megjegyzés: jobbról a határérték más lenne: $x \in (2, 3)$-ra $[x] = 2$, $\{x\} = x - 2$, így a kifejezés $\frac{2}{(x - 2)(x + 2)} \to +\infty$. A kétoldali határérték tehát nem létezik, ezért fontos a $2 - 0$.)*

---

**b) $\mathbf{-\infty}$.**

*Levezetés:*
Hozzuk közös nevezőre a gyökjel alatti kifejezést ($x \ne 0$):
$$\frac{8}{x^2} - \frac{3}{x^4} = \frac{8x^2 - 3}{x^4}.$$
A páratlan kitevőjű gyök minden valós számra értelmezett, így a függvény az egész $\mathbb{R} \setminus \{0\}$ halmazon értelmezett.

Ha $0 < |x| < \frac{1}{2}$, akkor $8x^2 < 2$, tehát $8x^2 - 3 < -1$, és így
$$\frac{8x^2 - 3}{x^4} < -\frac{1}{x^4}.$$
A $\sqrt[7]{\,\cdot\,}$ függvény szigorúan monoton nő $\mathbb{R}$-en, ezért
$$\sqrt[7]{\frac{8}{x^2} - \frac{3}{x^4}} < \sqrt[7]{-\frac{1}{x^4}} = -\frac{1}{|x|^{4/7}}.$$
Mivel $x \to 0$ esetén $|x|^{4/7} \to 0+$, a jobb oldal $-\infty$-be tart, így (a rendőrelv végtelen határértékre vonatkozó változata, a „minoráns/majoráns kritérium” szerint)
$$\lim_{x \to 0} \sqrt[7]{\frac{8}{x^2} - \frac{3}{x^4}} = -\infty.$$

*(Megjegyzés: a gyök alatti kifejezés $\sim -\frac{3}{x^4}$, így a függvény $x \to 0$ közelében $\approx -\sqrt[7]{3} \cdot |x|^{-4/7}$ módon viselkedik.)*

::: elmelet
**Elméleti háttér — egészrész, törtrész és egyoldali határértékek:**
- $[x]$ az $x$-nél nem nagyobb legnagyobb egész, $\{x\} = x - [x] \in [0, 1)$. Egy $k$ egész szám **bal** oldali környezetében $[x] = k - 1$ és $\{x\} = x - k + 1$, **jobb** oldali környezetében $[x] = k$ és $\{x\} = x - k$.
- *Végtelen határérték összehasonlítással:* ha $f(x) \le g(x)$ az $a$ egy pontozott környezetében és $\lim_{x \to a} g(x) = -\infty$, akkor $\lim_{x \to a} f(x) = -\infty$.
- Páratlan kitevőjű gyök: $\sqrt[2k+1]{\,\cdot\,}$ $\mathbb{R}$-en értelmezett, folytonos, szigorúan monoton nő, és $-\infty$-ben $-\infty$-hez tart.
:::

## 6. feladat

Legyen $f : [a, b] \to \mathbb{R}$ egy olyan folytonos függvény, hogy minden $x \in [a, b]$ esetén létezik olyan $y \in [a, b]$, amelyre $|f(y)| \le \frac{1}{2}|f(x)|$. Bizonyítsuk be, hogy létezik olyan $c \in [a, b]$ pont, ahol $f(c) = 0$.

**Megoldás.**

*1. bizonyítás (sorozattal és Bolzano–Weierstrass-tétellel):*

Legyen $x_1 \in [a, b]$ tetszőleges, és ha $x_n$ már adott, legyen $x_{n+1}$ egy olyan $[a, b]$-beli pont, amelyre $|f(x_{n+1})| \le \frac{1}{2}|f(x_n)|$ (a feltétel szerint ilyen létezik). Indukcióval
$$0 \le |f(x_n)| \le \frac{1}{2^{n-1}} |f(x_1)| \to 0,$$
tehát a rendőrelv szerint $f(x_n) \to 0$.

Az $(x_n)$ sorozat korlátos (minden tagja $[a, b]$-ben van), így a Bolzano–Weierstrass-tétel szerint van egy konvergens $(x_{n_k})$ részsorozata; legyen $c = \lim_{k \to \infty} x_{n_k}$. Mivel $a \le x_{n_k} \le b$, a határértékre is $a \le c \le b$, azaz $c \in [a, b]$.

Az $f$ folytonos a $c$ pontban, így a folytonosság átviteli elve szerint $f(x_{n_k}) \to f(c)$. Másrészt $(f(x_{n_k}))$ az $f(x_n) \to 0$ sorozat részsorozata, tehát szintén $0$-hoz tart. A határérték egyértelműsége miatt
$$f(c) = 0. \qquad \blacksquare$$

*2. bizonyítás (Weierstrass-tétellel):*

Az $|f|$ függvény folytonos a korlátos, zárt $[a, b]$ intervallumon, így Weierstrass tétele szerint felveszi a minimumát: van $c \in [a, b]$, hogy $|f(c)| = m = \min_{[a,b]} |f|$. A feltétel szerint létezik $y \in [a, b]$, amelyre $|f(y)| \le \frac{1}{2}|f(c)| = \frac{m}{2}$. Mivel $m$ a minimum, $m \le |f(y)| \le \frac{m}{2}$, ahonnan $m \le 0$, tehát $m = 0$, azaz $f(c) = 0$. $\blacksquare$

*(Megjegyzés: a zártság lényeges. Pl. $f(x) = x$ a $(0, 1]$ intervallumon teljesíti a feltételt $y = \frac{x}{2}$-vel, de nincs gyöke.)*

::: elmelet
**Elméleti háttér — folytonos függvények korlátos zárt intervallumon:**
- *Bolzano–Weierstrass-tétel:* minden korlátos sorozatnak van konvergens részsorozata; ha a sorozat $[a, b]$-ben van, a határérték is $[a, b]$-ben van.
- *Átviteli elv:* $f$ pontosan akkor folytonos $c$-ben, ha minden $x_n \to c$, $x_n \in D_f$ sorozatra $f(x_n) \to f(c)$.
- *Weierstrass-tétel:* korlátos zárt intervallumon folytonos függvény korlátos, és felveszi a minimumát és maximumát.
:::

## 7. feladat

Tegyük fel, hogy $f$ folytonos és szigorúan konvex $(-\infty, 0]$-n és $[0, +\infty)$-en, továbbá a következő véges határértékek léteznek: $A = \lim_{x \to 0-0} \frac{f(x)}{x}$ és $B = \lim_{x \to 0+0} \frac{f(x)}{x}$. Mutassuk meg, hogy $f$ akkor és csak akkor szigorúan konvex $(-\infty, +\infty)$-en, ha $A \le B$. (A feladat megoldása során csak ebben a félévben tanult anyagot szabad használni, pl. differenciálszámítást nem lehet.)

**Megoldás.**

Jelölje $m(u, v) = \frac{f(v) - f(u)}{v - u}$ ($u \ne v$) az $(u, f(u))$ és $(v, f(v))$ pontokat összekötő húr meredekségét.

**0. lépés: $f(0) = 0$, és $\frac{f(x)}{x}$ a $0$-ból induló húr meredeksége.**
$x > 0$-ra $f(x) = x \cdot \frac{f(x)}{x}$, és $x \to 0+0$ esetén $x \to 0$, $\frac{f(x)}{x} \to B$ (véges), így $f(x) \to 0 \cdot B = 0$. Az $f$ folytonos a $0$-ban, ezért $f(0) = \lim_{x \to 0+0} f(x) = 0$.
Ennek következtében $x \ne 0$-ra
$$s(x) := \frac{f(x)}{x} = \frac{f(x) - f(0)}{x - 0} = m(0, x).$$

**1. lépés: a húrmeredekségek és a szigorú konvexitás (három húr lemma).**
Legyen $I$ intervallum és $u < v < w$ az $I$ pontjai, $v = \lambda u + (1 - \lambda) w$, ahol $\lambda = \frac{w - v}{w - u} \in (0, 1)$. A szigorú konvexitás $f(v) < \lambda f(u) + (1 - \lambda) f(w)$ egyenlőtlensége $(w - u)$-val szorozva:
$$(w - u) f(v) < (w - v) f(u) + (v - u) f(w).$$
A bal oldalon $(w - u) = (w - v) + (v - u)$-t írva és átrendezve:
$$(w - v)\big(f(v) - f(u)\big) < (v - u)\big(f(w) - f(v)\big) \iff m(u, v) < m(v, w).$$
Tehát **$f$ pontosan akkor szigorúan konvex $I$-n, ha minden $u < v < w$, $u, v, w \in I$ esetén $m(u, v) < m(v, w)$** (a lépések megfordíthatók).

Mivel $m(u, w)$ az $m(u, v)$ és $m(v, w)$ pozitív súlyokkal vett súlyozott közepe:
$$m(u, w) = \frac{v - u}{w - u} \, m(u, v) + \frac{w - v}{w - u} \, m(v, w),$$
szigorúan konvex $f$ esetén $m(u, v) < m(u, w) < m(v, w)$ is teljesül. Ebből a $p = 0$ pontra (az $u, v, w$ szerepét a $0$ helyzete szerint kiosztva) adódik: **ha $f$ szigorúan konvex egy $0$-t tartalmazó intervallumon, akkor ott $s(x) = m(0, x)$ szigorúan monoton nő** ($x \ne 0$). Konkrétan:
- $0 < x < y$: $m(0, x) < m(0, y)$ (az $u = 0, v = x, w = y$ hármasra $m(u,v) < m(u,w)$);
- $x < y < 0$: $m(x, 0) < m(y, 0)$ (az $u = x, v = y, w = 0$ hármasra $m(u,w) < m(v,w)$);
- $x < 0 < y$: $m(x, 0) < m(0, y)$ (az $u = x, v = 0, w = y$ hármasra $m(u,v) < m(v,w)$).

A feltétel szerint $f$ szigorúan konvex $(-\infty, 0]$-n és $[0, +\infty)$-en, így **$s$ szigorúan nő a $(-\infty, 0)$ és a $(0, +\infty)$ intervallumon is.** Ebből:
- $x < 0$ esetén $s(x) < s\!\left(\frac{x}{2}\right) < s(t)$ minden $t \in \left(\frac{x}{2}, 0\right)$-ra, és $t \to 0-0$ határátmenettel $s(x) < s\!\left(\frac{x}{2}\right) \le A$. Tehát **$s(x) < A$ minden $x < 0$-ra.**
- Ugyanígy $x > 0$ esetén $s(x) > s\!\left(\frac{x}{2}\right) \ge B$, tehát **$s(x) > B$ minden $x > 0$-ra.**

**2. lépés ($\Rightarrow$): ha $f$ szigorúan konvex $\mathbb{R}$-en, akkor $A \le B$.**
Az 1. lépés szerint ekkor $s$ szigorúan nő az egész $\mathbb{R} \setminus \{0\}$-n, így minden $x < 0 < y$ esetén $s(x) < s(y)$. Rögzített $y > 0$ mellett $x \to 0-0$ határátmenettel $A \le s(y)$; majd $y \to 0+0$ határátmenettel $A \le B$. (A határátmenet a szigorú egyenlőtlenséget gyengévé teheti, ezért kapunk csak $\le$-t.)

**3. lépés ($\Leftarrow$): ha $A \le B$, akkor $f$ szigorúan konvex $\mathbb{R}$-en.**
Az 1. lépés kritériuma szerint elég belátni, hogy minden $u < v < w$ esetén $m(u, v) < m(v, w)$. Ha $u, v, w$ mind $(-\infty, 0]$-ban vagy mind $[0, +\infty)$-ben vannak, ez a feltevésből következik. Marad az $u < 0 < w$ eset.

Először: $x < 0 < y$ esetén az 1. lépés végén kapott becslések és $A \le B$ szerint
$$s(x) < A \le B < s(y). \qquad (*)$$
Továbbá $f(0) = 0$ miatt $x < 0 < y$-ra
$$m(x, y) = \frac{f(y) - f(x)}{y - x} = \frac{y \, s(y) + (-x)\, s(x)}{y - x} = \frac{-x}{y - x}\, s(x) + \frac{y}{y - x}\, s(y),$$
ami $s(x)$ és $s(y)$ pozitív súlyú súlyozott közepe, így $(*)$ miatt
$$s(x) < m(x, y) < s(y). \qquad (**)$$

- **$v = 0$:** $m(u, 0) = s(u) < s(w) = m(0, w)$ a $(*)$ szerint. ✓
- **$v < 0$** (azaz $u < v < 0 < w$): a $(-\infty, 0]$-on érvényes szigorú konvexitás miatt (az $u < v < 0$ hármasra) $m(u, v) < m(v, 0) = s(v)$, a $(**)$ szerint pedig $s(v) < m(v, w)$. Tehát $m(u, v) < m(v, w)$. ✓
- **$v > 0$** (azaz $u < 0 < v < w$): a $(**)$ szerint $m(u, v) < s(v) = m(0, v)$, a $[0, +\infty)$-en érvényes szigorú konvexitás miatt (a $0 < v < w$ hármasra) pedig $m(0, v) < m(v, w)$. Tehát $m(u, v) < m(v, w)$. ✓

Így minden $u < v < w$ valós számhármasra $m(u, v) < m(v, w)$, vagyis $f$ szigorúan konvex $(-\infty, +\infty)$-en. $\blacksquare$

*(Megjegyzések: (1) $A$ és $B$ valójában $f$ bal- és jobb oldali deriváltja a $0$-ban, de a bizonyításhoz ezt nem kell tudni — csak húrmeredekségekkel dolgoztunk. (2) Az $A < B$ szigorú egyenlőtlenség nem szükséges: pl. $f(x) = x^2$ szigorúan konvex $\mathbb{R}$-en, és $A = B = 0$. (3) Az $A > B$ esetre példa $f(x) = x^2 - |x|$: itt $A = 1 > B = -1$, és $f$ valóban nem konvex, hiszen $f(0) = 0 > -\frac{1}{4} = \frac{f(-\frac{1}{2}) + f(\frac{1}{2})}{2}$.)*

::: elmelet
**Elméleti háttér — konvexitás és húrmeredekségek:**
- $f$ szigorúan konvex $I$-n, ha $\forall u \ne w \in I$, $\lambda \in (0, 1)$: $f(\lambda u + (1 - \lambda) w) < \lambda f(u) + (1 - \lambda) f(w)$.
- *Három húr lemma:* $f$ pontosan akkor (szigorúan) konvex $I$-n, ha $u < v < w$ esetén $m(u, v) \le m(u, w) \le m(v, w)$ (szigorú egyenlőtlenségekkel). Ekvivalensen: bármely rögzített $p \in I$ pontra az $x \mapsto \frac{f(x) - f(p)}{x - p}$ függvény (szigorúan) monoton nő $I \setminus \{p\}$-n.
- *Monoton függvény egyoldali határértéke:* monoton növő függvény bal oldali határértéke egy pontban a bal oldali értékek szuprémuma, jobb oldali határértéke a jobb oldali értékek infimuma.
:::
