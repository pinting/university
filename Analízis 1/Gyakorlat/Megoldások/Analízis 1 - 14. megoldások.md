# Analízis 1 – 14. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Házi feladat (a 13. feladatlapról):** 132., 134., 135., 136., 138. **Gyakorlásként:** 141. a).

## 140. feladat

$f(x) = x(x + 1) \cdots (x + 100)$. $f'(0) = ?$

**Megoldás.**

Legyen $g(x) = (x + 1)(x + 2) \cdots (x + 100)$; ekkor $f(x) = x \cdot g(x)$ és $f(0) = 0$. A definíció szerint
$$f'(0) = \lim_{h \to 0} \frac{f(h) - f(0)}{h} = \lim_{h \to 0} \frac{h\, g(h)}{h} = \lim_{h \to 0} g(h) = g(0),$$
mert $g$ polinom, tehát folytonos. Így
$$f'(0) = g(0) = 1 \cdot 2 \cdots 100 = 100!.$$

(A szorzatszabállyal ugyanez: $f'(x) = g(x) + x\,g'(x)$, és $x = 0$-ban a második tag eltűnik.)

::: elmelet
**Elméleti háttér — sok tényezős szorzat deriváltja.** A szorzatszabály $n$ tényezőre (indukcióval):
$$(f_1 f_2 \cdots f_n)' = \sum_{i = 1}^{n} f_1 \cdots f_{i-1} f_i' f_{i+1} \cdots f_n.$$
Ha valamelyik tényező, itt $f_1(x) = x$, eltűnik a vizsgált pontban, akkor az összegben csak az a tag marad meg, amelyben éppen ezt a tényezőt deriváltuk — a többiben szerepel a $0$ értékű tényező. A feladatban ezért nem kell a $101$ tagú összeget kiírni. Hasonlóan $f'(-k) = (-1)^k k!\,(100 - k)!$ ($k = 0, \dots, 100$).
:::

## 141. feladat

Határozzuk meg a következő függvények deriváltjait:

a) $\dfrac{x^2 + 7x - 1}{7x^3 + 8}$; b) $x^7 \sqrt{x + 3\sqrt{x}}$; c) $(x^{10} + 6x + 1)^{2019}$.

**Megoldás.**

**a)** Értelmezve van, ha $7x^3 + 8 \ne 0$, azaz $x \ne -\sqrt[3]{8/7}$. A hányadosszabállyal
$$\left(\frac{x^2 + 7x - 1}{7x^3 + 8}\right)' = \frac{(2x + 7)(7x^3 + 8) - (x^2 + 7x - 1) \cdot 21x^2}{(7x^3 + 8)^2}.$$
A számlálóban $(2x + 7)(7x^3 + 8) = 14x^4 + 49x^3 + 16x + 56$ és $(x^2 + 7x - 1) \cdot 21x^2 = 21x^4 + 147x^3 - 21x^2$, így
$$\left(\frac{x^2 + 7x - 1}{7x^3 + 8}\right)' = \frac{-7x^4 - 98x^3 + 21x^2 + 16x + 56}{(7x^3 + 8)^2}.$$

**b)** Értelmezve van, ha $x \ge 0$; legyen $x > 0$. A szorzat- és a láncszabállyal, $(\sqrt{u})' = \frac{u'}{2\sqrt{u}}$ és $(3\sqrt x)' = \frac{3}{2\sqrt x}$ felhasználásával:
$$\left(x^7 \sqrt{x + 3\sqrt{x}}\right)' = 7x^6\sqrt{x + 3\sqrt{x}} + x^7 \cdot \frac{1 + \frac{3}{2\sqrt{x}}}{2\sqrt{x + 3\sqrt{x}}}.$$
Közös nevezőre hozva ($2\sqrt{x + 3\sqrt x}$-szel bővítve az első tagot):
$$= \frac{14x^6(x + 3\sqrt{x}) + x^7 + \frac32 x^{6}\sqrt{x}}{2\sqrt{x + 3\sqrt{x}}} = \frac{30x^7 + 87x^6\sqrt{x}}{4\sqrt{x + 3\sqrt{x}}}.$$
(Az $x = 0$ pontban $f$ csak jobbról értelmezett, és $\frac{f(h)}{h} = h^6\sqrt{h + 3\sqrt{h}} \to 0$, tehát $f'_+(0) = 0$.)

**c)** A láncszabállyal (külső függvény $u^{2019}$, belső $x^{10} + 6x + 1$):
$$\left((x^{10} + 6x + 1)^{2019}\right)' = 2019\,(x^{10} + 6x + 1)^{2018}\,(10x^9 + 6).$$

::: elmelet
**Elméleti háttér — az alapszabályok kombinálása.** Összetett kifejezés deriválásakor a „legkülső” művelettől haladunk befelé: hányados → hányadosszabály, szorzat → szorzatszabály, kompozíció → láncszabály, $(g(f(x)))' = g'(f(x))f'(x)$. A láncszabály leggyakoribb speciális esetei:
$$\left(u^n\right)' = n u^{n-1} u', \qquad \left(\sqrt{u}\right)' = \frac{u'}{2\sqrt u}, \qquad \left(\frac1u\right)' = -\frac{u'}{u^2}.$$
A derivált csak ott létezik, ahol a felhasznált szabályok feltételei teljesülnek (nevező $\ne 0$, gyök alatt $> 0$); ezeket érdemes az elején tisztázni.
:::

## 142. feladat

Tegyük fel, hogy $f(x)$ differenciálható $\mathbb{R}$-en és $y = f(x^2)$. $y' = ?$

**Megoldás.**

$y = f \circ g$, ahol $g(x) = x^2$ mindenütt differenciálható, $g'(x) = 2x$, és $f$ differenciálható a $g(x) = x^2$ pontban. A láncszabály szerint $y$ minden $x$-re differenciálható, és
$$y'(x) = f'(x^2) \cdot 2x = 2x\,f'(x^2).$$

(Vigyázat: $f'(x^2)$ az $f'$ derivált függvény értéke az $x^2$ helyen, nem $\big(f(x^2)\big)'$. Pl. $f = \sin$ esetén $(\sin x^2)' = 2x\cos x^2$.)

::: elmelet
**Elméleti háttér — láncszabály általános függvénnyel.** Ha $f$ differenciálható $g(a)$-ban és $g$ differenciálható $a$-ban, akkor $(f \circ g)'(a) = f'(g(a))g'(a)$. Az $f^*$-os bizonyítás miatt nem kell feltenni, hogy $g(x) \ne g(a)$ az $a$ közelében — itt pl. $a = 0$-ban $g(x) = x^2$ nem injektív, mégis $y'(0) = 0 \cdot f'(0) = 0$. Leibniz-jelöléssel, $u = x^2$: $\frac{dy}{dx} = \frac{dy}{du}\cdot\frac{du}{dx} = f'(u) \cdot 2x$.
:::

## 143*. feladat

Van-e olyan $f : \mathbb{R} \to \mathbb{R}$ függvény mely minden pontban differenciálható, de $f'$ nem korlátos $[0, 1]$-en?

**Megoldás.**

**Van.** Legyen
$$f(x) = \begin{cases} x^2 \sin\dfrac{1}{x^2} & \text{ha } x \ne 0, \\ 0 & \text{ha } x = 0. \end{cases}$$

**Differenciálhatóság $x \ne 0$-ban.** Itt $f$ differenciálható függvények szorzata és kompozíciója, és a szabályok szerint
$$f'(x) = 2x\sin\frac{1}{x^2} + x^2\cos\frac{1}{x^2}\cdot\left(-\frac{2}{x^3}\right) = 2x\sin\frac{1}{x^2} - \frac{2}{x}\cos\frac{1}{x^2}.$$

**Differenciálhatóság $0$-ban.** A definíció szerint
$$\left|\frac{f(h) - f(0)}{h}\right| = \left|h\sin\frac{1}{h^2}\right| \le |h| \to 0,$$
tehát $f'(0) = 0$. Így $f$ minden pontban differenciálható.

**$f'$ nem korlátos $[0, 1]$-en.** Legyen $x_k = \dfrac{1}{\sqrt{2k\pi}}$ ($k \in \mathbb{N}$); ekkor $x_k \in (0, 1)$, $\frac{1}{x_k^2} = 2k\pi$, $\sin(2k\pi) = 0$, $\cos(2k\pi) = 1$, így
$$f'(x_k) = 0 - \frac{2}{x_k} = -2\sqrt{2k\pi} \to -\infty \qquad (k \to \infty).$$
Tehát $f'$ alulról nem korlátos $[0, 1]$-en. $\blacksquare$

::: elmelet
**Elméleti háttér — a derivált nem feltétlenül „szép”.** Egy mindenütt differenciálható függvény deriváltja nem feltétlenül folytonos (pl. $x^2\sin\frac1x$ deriváltjának nincs határértéke a $0$-ban), sőt, mint itt, korlátos intervallumon sem feltétlenül korlátos. Az ötlet: az $x^2$ szorzó biztosítja a $0$-beli differenciálhatóságot ($|f(h)| \le h^2$), a $\sin\frac{1}{x^2}$ pedig olyan gyorsan oszcillál, hogy a deriváltban megjelenő $\frac{1}{x^3}$-ös tényező „legyőzi” az $x^2$-et. A $x^2 \sin\frac1x$ függvénynél a derivált még korlátos ($|f'(x)| \le 2|x| + 1$), ezért kell az erősebb oszcilláció. Ha viszont $f'$ korlátos egy intervallumon, akkor $f$ ott Lipschitz-folytonos (Lagrange-tétel).
:::

## 144. feladat

a) $\displaystyle\lim_{x \to 0} \frac{\sin 5x}{x} = ?$ b) $\displaystyle\lim_{x \to 0} \frac{1 - \cos x}{x^2} = ?$

**Megoldás.**

**a)** $x \ne 0$-ra
$$\frac{\sin 5x}{x} = 5 \cdot \frac{\sin 5x}{5x}.$$
Ha $x \to 0$, akkor $u = 5x \to 0$ és $u \ne 0$, tehát a $\lim_{u \to 0}\frac{\sin u}{u} = 1$ nevezetes határérték és az összetett függvény határértékére vonatkozó tétel szerint
$$\lim_{x \to 0} \frac{\sin 5x}{x} = 5 \cdot 1 = 5.$$
(Más szóval: ez a $\sin 5x$ deriváltja a $0$-ban, $5\cos 0 = 5$.)

**b)** Az $1 - \cos x = 2\sin^2\frac{x}{2}$ azonossággal
$$\frac{1 - \cos x}{x^2} = \frac{2\sin^2\frac x2}{x^2} = \frac12\left(\frac{\sin\frac x2}{\frac x2}\right)^2 \to \frac12 \cdot 1^2 = \frac12 \qquad (x \to 0).$$

(Másképp: $\frac{1 - \cos x}{x^2} = \frac{1 - \cos^2 x}{x^2(1 + \cos x)} = \left(\frac{\sin x}{x}\right)^2 \cdot \frac{1}{1 + \cos x} \to 1 \cdot \frac12$.)

::: elmelet
**Elméleti háttér — a $\frac{\sin x}{x}$ határérték alkalmazásai.** A $\lim_{x \to 0}\frac{\sin x}{x} = 1$ a trigonometrikus függvények deriválásának alapja (ez éppen $\sin'(0) = 1$). Belőle helyettesítéssel $\lim_{x \to 0}\frac{\sin ax}{x} = a$, $\lim_{x \to 0}\frac{\operatorname{tg} x}{x} = 1$, és a félszögképlettel $\lim_{x \to 0}\frac{1 - \cos x}{x^2} = \frac12$. Ez utóbbi azt mutatja, hogy $\cos x \approx 1 - \frac{x^2}{2}$ a $0$ közelében — ez a $\cos$ másodfokú Taylor-polinomja.
:::

## 145. feladat

A tanult differenciálási szabályokat felhasználva határozzuk meg a következő függvények deriváltjait:

a) $\sin(\sin(\sin x))$; b) $\sqrt{x + \sqrt{x + \sqrt{x}}}$; c) $\dfrac{\sin^2 x}{\sin x^2}$; d) $\arccos\left(\dfrac1x\right)$; e) $\operatorname{arctg} \dfrac{1 + x}{1 - x}$;

f) $\arcsin(\sin^2 x)$; g) $\log(\log x)$; h) $e^{x^2} \cdot \operatorname{ctg} x$; i) $\log\left(\operatorname{tg} \frac{x}{2}\right)$.

**Megoldás.**

**a)** Kétszeres láncszabály, minden $x \in \mathbb{R}$-re:
$$\big(\sin(\sin(\sin x))\big)' = \cos(\sin(\sin x)) \cdot \cos(\sin x) \cdot \cos x.$$

**b)** $x > 0$-ra (a $0$-ban a $\sqrt x$ nem differenciálható):
$$\left(\sqrt{x + \sqrt{x + \sqrt{x}}}\right)' = \frac{1}{2\sqrt{x + \sqrt{x + \sqrt{x}}}} \cdot \left(1 + \frac{1}{2\sqrt{x + \sqrt{x}}} \cdot \left(1 + \frac{1}{2\sqrt{x}}\right)\right).$$

**c)** Értelmezve van, ahol $\sin x^2 \ne 0$, azaz $x^2 \ne k\pi$ ($k = 0, 1, 2, \dots$). A hányados- és a láncszabállyal ($(\sin^2 x)' = 2\sin x\cos x$, $(\sin x^2)' = 2x\cos x^2$):
$$\left(\frac{\sin^2 x}{\sin x^2}\right)' = \frac{2\sin x\cos x \cdot \sin x^2 - \sin^2 x \cdot 2x\cos x^2}{\sin^2 x^2} = \frac{\sin 2x \cdot \sin x^2 - 2x\sin^2 x \cos x^2}{\sin^2 x^2}.$$

**d)** Értelmezve van, ha $\left|\frac1x\right| \le 1$, azaz $|x| \ge 1$; az $\arccos$ a $(-1, 1)$-en differenciálható, $(\arccos t)' = -\frac{1}{\sqrt{1 - t^2}}$, ezért $|x| > 1$-re
$$\left(\arccos\frac1x\right)' = -\frac{1}{\sqrt{1 - \frac{1}{x^2}}} \cdot \left(-\frac{1}{x^2}\right) = \frac{1}{x^2\sqrt{1 - \frac{1}{x^2}}} = \frac{1}{|x|\sqrt{x^2 - 1}}.$$
(Felhasználtuk, hogy $x^2\sqrt{1 - \frac{1}{x^2}} = x^2 \cdot \frac{\sqrt{x^2 - 1}}{|x|} = |x|\sqrt{x^2 - 1}$.)

**e)** $x \ne 1$-re. A belső függvény deriváltja
$$\left(\frac{1 + x}{1 - x}\right)' = \frac{(1 - x) + (1 + x)}{(1 - x)^2} = \frac{2}{(1 - x)^2},$$
és $(\operatorname{arctg} t)' = \frac{1}{1 + t^2}$, ahol
$$1 + \left(\frac{1 + x}{1 - x}\right)^2 = \frac{(1 - x)^2 + (1 + x)^2}{(1 - x)^2} = \frac{2(1 + x^2)}{(1 - x)^2}.$$
Így
$$\left(\operatorname{arctg}\frac{1 + x}{1 - x}\right)' = \frac{(1 - x)^2}{2(1 + x^2)} \cdot \frac{2}{(1 - x)^2} = \frac{1}{1 + x^2}.$$
(Ez nem véletlen: a tangens addíciós képlete szerint $\operatorname{arctg}\frac{1 + x}{1 - x} = \operatorname{arctg} x + \frac\pi4$, ha $x < 1$, és $\operatorname{arctg} x - \frac{3\pi}{4}$, ha $x > 1$.)

**f)** $\sin^2 x \in [0, 1]$, tehát mindenütt értelmezett; az $\arcsin$ a $(-1, 1)$-en differenciálható, így ahol $\sin^2 x \ne 1$, azaz $\cos x \ne 0$:
$$\big(\arcsin(\sin^2 x)\big)' = \frac{2\sin x\cos x}{\sqrt{1 - \sin^4 x}}.$$
Mivel $1 - \sin^4 x = (1 - \sin^2 x)(1 + \sin^2 x) = \cos^2 x\,(1 + \sin^2 x)$, ez egyszerűsíthető:
$$\big(\arcsin(\sin^2 x)\big)' = \frac{2\sin x\cos x}{|\cos x|\sqrt{1 + \sin^2 x}} = \operatorname{sgn}(\cos x)\,\frac{2\sin x}{\sqrt{1 + \sin^2 x}}.$$
(A $\cos x = 0$ pontokban a két oldali derivált $\pm\sqrt2$, tehát ott a függvény nem differenciálható.)

**g)** Értelmezve van, ha $\log x > 0$, azaz $x > 1$; ott
$$\big(\log(\log x)\big)' = \frac{1}{\log x} \cdot \frac1x = \frac{1}{x\log x}.$$

**h)** $x \ne k\pi$-re, a szorzatszabállyal, $(e^{x^2})' = 2xe^{x^2}$ és $(\operatorname{ctg} x)' = -\frac{1}{\sin^2 x}$ alapján:
$$\left(e^{x^2}\operatorname{ctg} x\right)' = 2xe^{x^2}\operatorname{ctg} x - \frac{e^{x^2}}{\sin^2 x} = e^{x^2}\left(2x\operatorname{ctg} x - \frac{1}{\sin^2 x}\right).$$

**i)** Értelmezve van, ha $\operatorname{tg}\frac x2 > 0$, azaz $x \in (2k\pi, 2k\pi + \pi)$, $k \in \mathbb{Z}$. Ott
$$\left(\log\operatorname{tg}\frac x2\right)' = \frac{1}{\operatorname{tg}\frac x2} \cdot \frac{1}{\cos^2\frac x2} \cdot \frac12 = \frac{\cos\frac x2}{\sin\frac x2} \cdot \frac{1}{2\cos^2\frac x2} = \frac{1}{2\sin\frac x2\cos\frac x2} = \frac{1}{\sin x}.$$

::: elmelet
**Elméleti háttér — elemi függvények deriváltjai.** A szabályok mellett az alábbi táblázatra van szükség:
$$(\sin x)' = \cos x, \quad (\cos x)' = -\sin x, \quad (\operatorname{tg} x)' = \frac{1}{\cos^2 x}, \quad (\operatorname{ctg} x)' = -\frac{1}{\sin^2 x},$$
$$(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}, \quad (\arccos x)' = -\frac{1}{\sqrt{1 - x^2}}, \quad (\operatorname{arctg} x)' = \frac{1}{1 + x^2}, \quad (e^x)' = e^x, \quad (\log x)' = \frac1x.$$
Két gyakori csapda: (1) a $\sqrt{u^2} = |u|$, nem $u$ — emiatt jelenik meg d)-ben $|x|$ és f)-ben $|\cos x|$; (2) a derivált csak a belső függvény értékkészletének azon részén létezik, ahol a külső differenciálható — pl. $\arcsin$ a $\pm 1$-ben nem, ezért f)-ben a $\cos x = 0$ pontok kimaradnak. Az e) és i) példák azt is mutatják, hogy egy bonyolult képlet deriváltja meglepően egyszerű lehet.
:::

## 146. feladat

Mutassuk meg, hogy $(\operatorname{sh} x)' = \operatorname{ch} x$, $(\operatorname{ch} x)' = \operatorname{sh} x$, $(\operatorname{th} x)' = \dfrac{1}{\operatorname{ch}^2 x}$, $(\operatorname{cth} x)' = -\dfrac{1}{\operatorname{sh}^2 x}$. (Ezeket a formulákat meg kell jegyezni!)

**Megoldás.**

Felhasználjuk, hogy $(e^x)' = e^x$, és a láncszabály szerint $(e^{-x})' = e^{-x} \cdot (-1) = -e^{-x}$.

**$\operatorname{sh}$ és $\operatorname{ch}$.**
$$(\operatorname{sh} x)' = \left(\frac{e^x - e^{-x}}{2}\right)' = \frac{e^x + e^{-x}}{2} = \operatorname{ch} x, \qquad (\operatorname{ch} x)' = \left(\frac{e^x + e^{-x}}{2}\right)' = \frac{e^x - e^{-x}}{2} = \operatorname{sh} x.$$

**$\operatorname{th}$.** $\operatorname{th} x = \frac{\operatorname{sh} x}{\operatorname{ch} x}$, ahol $\operatorname{ch} x \ge 1 > 0$. A hányadosszabállyal és a $\operatorname{ch}^2 x - \operatorname{sh}^2 x = 1$ azonossággal:
$$(\operatorname{th} x)' = \frac{\operatorname{ch} x \cdot \operatorname{ch} x - \operatorname{sh} x \cdot \operatorname{sh} x}{\operatorname{ch}^2 x} = \frac{1}{\operatorname{ch}^2 x}, \qquad x \in \mathbb{R}.$$

**$\operatorname{cth}$.** $\operatorname{cth} x = \frac{\operatorname{ch} x}{\operatorname{sh} x}$, $x \ne 0$:
$$(\operatorname{cth} x)' = \frac{\operatorname{sh} x \cdot \operatorname{sh} x - \operatorname{ch} x \cdot \operatorname{ch} x}{\operatorname{sh}^2 x} = -\frac{1}{\operatorname{sh}^2 x}, \qquad x \ne 0. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — hiperbolikus és trigonometrikus függvények párhuzama.** A képletek a trigonometrikusak megfelelői, egyetlen előjelkülönbséggel: $(\cos x)' = -\sin x$, de $(\operatorname{ch} x)' = +\operatorname{sh} x$. Ez a $\cos^2 + \sin^2 = 1$ és a $\operatorname{ch}^2 - \operatorname{sh}^2 = 1$ azonosság előjelkülönbségével függ össze. Hasonlóan $(\operatorname{tg} x)' = \frac{1}{\cos^2 x} = 1 + \operatorname{tg}^2 x$, míg $(\operatorname{th} x)' = \frac{1}{\operatorname{ch}^2 x} = 1 - \operatorname{th}^2 x$. Mivel $\operatorname{ch} > 0$, a $\operatorname{th}$ szigorúan monoton nő, $\operatorname{sh} > 0$ a $(0, \infty)$-en, így $\operatorname{ch}$ ott szigorúan monoton nő — a deriváltakból a monotonitás is leolvasható.
:::

## 147. feladat

Az inverz függvény differenciálási szabálya segítségével mutassuk meg, hogy $(\operatorname{arsh} x)' = \dfrac{1}{\sqrt{x^2 + 1}}$, $(\operatorname{arch} x)' = \dfrac{1}{\sqrt{x^2 - 1}}$, $(\operatorname{arth} x)' = \dfrac{1}{1 - x^2}$. (Ezeket a formulákat meg kell jegyezni!)

**Megoldás.**

Az inverz függvény differenciálási szabálya: ha $f$ egy intervallumon szigorúan monoton és folytonos, $c$ belső pont, és $f'(c) \ne 0$, akkor $f^{-1}$ differenciálható a $d = f(c)$ pontban, és
$$(f^{-1})'(d) = \frac{1}{f'(f^{-1}(d))}.$$

**$\operatorname{arsh}$.** Az $\operatorname{sh} : \mathbb{R} \to \mathbb{R}$ szigorúan monoton növő, folytonos bijekció, $\operatorname{sh}' = \operatorname{ch} > 0$. Legyen $x \in \mathbb{R}$, $c = \operatorname{arsh} x$, azaz $\operatorname{sh} c = x$. Mivel $\operatorname{ch} c > 0$ és $\operatorname{ch}^2 c = 1 + \operatorname{sh}^2 c$:
$$(\operatorname{arsh} x)' = \frac{1}{\operatorname{ch} c} = \frac{1}{\sqrt{1 + \operatorname{sh}^2 c}} = \frac{1}{\sqrt{1 + x^2}}.$$

**$\operatorname{arch}$.** Az $\operatorname{arch}$ a $\operatorname{ch}|_{[0, \infty)}$ inverze, $[1, \infty) \to [0, \infty)$. Legyen $x > 1$ és $c = \operatorname{arch} x > 0$, azaz $\operatorname{ch} c = x$. Ekkor $\operatorname{ch}'(c) = \operatorname{sh} c > 0$, és $\operatorname{sh} c = \sqrt{\operatorname{ch}^2 c - 1}$ (pozitív gyök, mert $c > 0$):
$$(\operatorname{arch} x)' = \frac{1}{\operatorname{sh} c} = \frac{1}{\sqrt{\operatorname{ch}^2 c - 1}} = \frac{1}{\sqrt{x^2 - 1}}, \qquad x > 1.$$
(Az $x = 1$ pontban $c = 0$, $\operatorname{sh} 0 = 0$, a szabály nem alkalmazható; ott a grafikon érintője függőleges, $\operatorname{arch}$ jobbról sem differenciálható.)

**$\operatorname{arth}$.** A $\operatorname{th} : \mathbb{R} \to (-1, 1)$ szigorúan monoton növő, folytonos bijekció, $\operatorname{th}' = \frac{1}{\operatorname{ch}^2} > 0$. Legyen $x \in (-1, 1)$, $c = \operatorname{arth} x$, azaz $\operatorname{th} c = x$. A $\operatorname{ch}^2 - \operatorname{sh}^2 = 1$ azonosságot $\operatorname{ch}^2$-tel osztva $1 - \operatorname{th}^2 c = \frac{1}{\operatorname{ch}^2 c}$, tehát
$$(\operatorname{arth} x)' = \frac{1}{\frac{1}{\operatorname{ch}^2 c}} = \operatorname{ch}^2 c = \frac{1}{1 - \operatorname{th}^2 c} = \frac{1}{1 - x^2}, \qquad |x| < 1. \qquad \blacksquare$$

(Ellenőrzés a zárt alakkal: $\operatorname{arsh} x = \log\left(x + \sqrt{x^2 + 1}\right)$ deriváltja $\frac{1 + \frac{x}{\sqrt{x^2 + 1}}}{x + \sqrt{x^2 + 1}} = \frac{1}{\sqrt{x^2 + 1}}$.)

::: elmelet
**Elméleti háttér — az inverz függvény deriváltja.** A szabály lényege: ha $y = f(x)$, akkor $\frac{dx}{dy} = \frac{1}{dy/dx}$, és a végeredményt $y$-nal kell kifejezni. Ehhez mindig egy azonosság kell, amely $f'$-t $f$-fel fejezi ki: $\operatorname{ch} = \sqrt{1 + \operatorname{sh}^2}$, $\operatorname{sh} = \sqrt{\operatorname{ch}^2 - 1}$ (ha $\ge 0$), $\frac{1}{\operatorname{ch}^2} = 1 - \operatorname{th}^2$ — pontosan úgy, ahogy az $\arcsin$-nál a $\cos = \sqrt{1 - \sin^2}$-t használtuk. A gyökvonásnál az előjelet a leszűkítés értelmezési tartománya dönti el. Ahol $f'(c) = 0$, ott az inverz nem differenciálható (függőleges érintő).
:::

## 148. feladat

Mutassuk meg a differenciálási szabályokat használva, hogy $\left(x^{\frac{p}{q}}\right)' = \frac{p}{q} x^{\frac{p}{q} - 1}$.

**Megoldás.**

Legyen $p \in \mathbb{Z}$, $q \in \mathbb{N}$ és $x > 0$.

**1. lépés: egész kitevő.** $p \in \mathbb{N}$-re $(t^p)' = pt^{p-1}$ (137. feladat); $p = 0$-ra $(1)' = 0$; $p = -m$, $m \in \mathbb{N}$ esetén a reciprokszabállyal, $t \ne 0$-ra
$$(t^{-m})' = \left(\frac{1}{t^m}\right)' = -\frac{mt^{m-1}}{t^{2m}} = -mt^{-m-1}.$$
Tehát $(t^p)' = pt^{p-1}$ minden $p \in \mathbb{Z}$-re ($t > 0$).

**2. lépés: $x^{1/q}$.** A $\varphi(x) = x^{1/q} = \sqrt[q]{x}$ a $g(t) = t^q$ függvény $(0, \infty)$-re vett leszűkítésének inverze; $g$ ott szigorúan monoton növő, folytonos, és $g'(t) = qt^{q-1} > 0$. Az inverz függvény differenciálási szabálya szerint, $t = x^{1/q}$-val:
$$\left(x^{1/q}\right)' = \frac{1}{g'(t)} = \frac{1}{q\,t^{q-1}} = \frac{1}{q\,x^{\frac{q-1}{q}}} = \frac1q x^{\frac1q - 1}.$$

**3. lépés: láncszabály.** $x^{p/q} = \left(x^{1/q}\right)^p$, tehát a láncszabállyal (külső függvény $t^p$, belső $x^{1/q}$):
$$\left(x^{p/q}\right)' = p\left(x^{1/q}\right)^{p-1} \cdot \frac1q x^{\frac1q - 1} = \frac pq x^{\frac{p-1}{q} + \frac1q - 1} = \frac pq x^{\frac pq - 1}. \qquad \blacksquare$$

(Páratlan $q$ esetén $x^{p/q}$ negatív $x$-re is értelmezhető, és a képlet ott is érvényes.)

::: elmelet
**Elméleti háttér — a hatványfüggvény deriváltja lépésenként.** A $(x^\alpha)' = \alpha x^{\alpha - 1}$ képletet fokozatosan bővítjük: természetes kitevőre a definícióból vagy indukcióval, egész kitevőre a reciprokszabállyal, $\frac1q$ kitevőre az inverz függvény szabályával, racionálisra a láncszabállyal. Tetszőleges valós $\alpha$-ra a $x^\alpha = e^{\alpha\log x}$ átírás és a láncszabály adja: $(x^\alpha)' = e^{\alpha\log x} \cdot \frac\alpha x = \alpha x^{\alpha - 1}$. Mindegyik lépés egy-egy tanult differenciálási szabály alkalmazása.
:::

## 149. feladat

$\lim_{n \to \infty} n\left(\sqrt[n]{2} - 1\right) = ?$

**Megoldás.**

Legyen $f(x) = 2^x$ és $h_n = \frac1n \to 0$. Ekkor
$$n\left(\sqrt[n]{2} - 1\right) = \frac{2^{1/n} - 2^0}{\frac1n} = \frac{f(0 + h_n) - f(0)}{h_n}.$$
Mivel $f$ differenciálható, $(2^x)' = 2^x\log 2$, az átviteli elv szerint
$$\lim_{n \to \infty} n\left(\sqrt[n]{2} - 1\right) = f'(0) = 2^0\log 2 = \log 2 \approx 0{,}693.$$

(Deriválás nélkül: $u_n = \sqrt[n]{2} - 1 \to 0$, $u_n > 0$, és $\frac1n = \log_2(1 + u_n)$, így $n u_n = \frac{u_n}{\log_2(1 + u_n)} = \frac{\log 2 \cdot u_n}{\log(1 + u_n)} \to \log 2$, a 129. feladat szerint.)

::: elmelet
**Elméleti háttér — az exponenciális függvény deriváltja.** Az $a^x$ az $\log_a x$ inverze, ezért az inverz függvény szabályával $(a^x)' = \frac{1}{(\log_a)'(a^x)} = a^x\log a$. A $0$-beli deriváltja $\lim_{h \to 0}\frac{a^h - 1}{h} = \log a$: ez a nevezetes határérték, amelynek sorozatos változata a feladat. Hasonló típusú határértékek: $n\left(\sqrt[n]{a} - 1\right) \to \log a$, $n\log\left(1 + \frac1n\right) \to 1$, $n\left(e^{1/n} - 1\right) \to 1$.
:::

## 150. feladat

a) $\Big(\log\left(x^2 + \sin(5x + 3)\right)\Big)' = ?$, b) $\Big(\operatorname{ctg}\left(\operatorname{arsh}(x^2) + \arcsin(5^x)\right)\Big)' = ?$

**Megoldás.**

**a)** Ahol $x^2 + \sin(5x + 3) > 0$, a láncszabállyal ($(\log u)' = \frac{u'}{u}$, $(\sin(5x + 3))' = 5\cos(5x + 3)$):
$$\Big(\log\left(x^2 + \sin(5x + 3)\right)\Big)' = \frac{2x + 5\cos(5x + 3)}{x^2 + \sin(5x + 3)}.$$

**b)** Legyen $u(x) = \operatorname{arsh}(x^2) + \arcsin(5^x)$. Ez akkor értelmezett, ha $5^x \le 1$, azaz $x \le 0$, és $\arcsin$ miatt $x < 0$-ra differenciálható ($5^x < 1$). A láncszabállyal
$$u'(x) = \frac{2x}{\sqrt{x^4 + 1}} + \frac{5^x\log 5}{\sqrt{1 - 5^{2x}}},$$
és $(\operatorname{ctg} u)' = -\frac{u'}{\sin^2 u}$, tehát ahol még $\sin u(x) \ne 0$ is teljesül:
$$\Big(\operatorname{ctg}\left(\operatorname{arsh}(x^2) + \arcsin(5^x)\right)\Big)' = -\frac{1}{\sin^2\left(\operatorname{arsh}(x^2) + \arcsin(5^x)\right)}\left(\frac{2x}{\sqrt{x^4 + 1}} + \frac{5^x\log 5}{\sqrt{1 - 5^{2x}}}\right).$$

::: elmelet
**Elméleti háttér — többszörös láncszabály.** Sokszorosan összetett függvénynél a láncszabályt kívülről befelé, „hagymahéjanként” alkalmazzuk: $\big(f(g(h(x)))\big)' = f'(g(h(x))) \cdot g'(h(x)) \cdot h'(x)$. A szükséges alapderiváltak: $(\operatorname{ctg} u)' = -\frac{1}{\sin^2 u}$, $(\operatorname{arsh} u)' = \frac{1}{\sqrt{u^2 + 1}}$, $(\arcsin u)' = \frac{1}{\sqrt{1 - u^2}}$, $(a^x)' = a^x\log a$, $(\log u)' = \frac1u$. Az értelmezési tartományt is a belső függvényektől kifelé haladva határozzuk meg.
:::

## 151. feladat

Az $f(x) = x^3 + px + q$ függvény a $p$ és $q$ paraméterek milyen értékei esetén érinti az $x$-tengelyt?

**Megoldás.**

Az $f$ grafikonja az $x_0$ pontban pontosan akkor érinti az $x$-tengelyt, ha a pontbeli érintő az $y = 0$ egyenes, azaz
$$f(x_0) = 0 \qquad \text{és} \qquad f'(x_0) = 0.$$
(Az érintő $y = f'(x_0)(x - x_0) + f(x_0)$, ez pontosan akkor azonosan $0$, ha mindkét együttható $0$.)

**Szükségesség.** $f'(x) = 3x^2 + p$, így $f'(x_0) = 0 \iff x_0^2 = -\frac p3$; ehhez $p \le 0$ kell. Ezt felhasználva
$$f(x_0) = x_0(x_0^2 + p) + q = x_0 \cdot \frac{2p}{3} + q = 0 \quad \Longrightarrow \quad q = -\frac{2p}{3}x_0.$$
Négyzetre emelve és $x_0^2 = -\frac p3$-at behelyettesítve:
$$q^2 = \frac{4p^2}{9} \cdot \left(-\frac p3\right) = -\frac{4p^3}{27}, \qquad \text{azaz} \qquad 4p^3 + 27q^2 = 0.$$

**Elégségesség.** Tegyük fel, hogy $4p^3 + 27q^2 = 0$. Ekkor $p \le 0$.

- Ha $p = 0$, akkor $q = 0$, $f(x) = x^3$, és $x_0 = 0$-ban $f(0) = f'(0) = 0$.
- Ha $p < 0$, legyen $x_0 = -\frac{3q}{2p}$. Ekkor
$$x_0^2 = \frac{9q^2}{4p^2} = \frac{9}{4p^2} \cdot \left(-\frac{4p^3}{27}\right) = -\frac p3,$$
tehát $f'(x_0) = 3x_0^2 + p = 0$, és $f(x_0) = x_0 \cdot \frac{2p}{3} + q = -\frac{3q}{2p} \cdot \frac{2p}{3} + q = 0$.

**Válasz:** $f$ pontosan akkor érinti az $x$-tengelyt, ha
$$4p^3 + 27q^2 = 0,$$
és az érintési pont $x_0 = -\frac{3q}{2p}$ (ha $p \ne 0$), illetve $x_0 = 0$ (ha $p = q = 0$).

(Pl. $p = -3$, $q = 2$: $f(x) = x^3 - 3x + 2 = (x - 1)^2(x + 2)$, az érintési pont $x_0 = 1$.)

::: elmelet
**Elméleti háttér — többszörös gyök és a diszkrimináns.** Az $x$-tengely pontosan akkor érinti a $p$ polinom grafikonját $x_0$-ban, ha $p(x_0) = p'(x_0) = 0$, azaz $x_0$ legalább kétszeres gyöke $p$-nek: $p(x) = (x - x_0)^2 r(x)$ (ekkor $p'(x) = (x - x_0)\big(2r(x) + (x - x_0)r'(x)\big)$ is eltűnik $x_0$-ban). A $\Delta = -(4p^3 + 27q^2)$ kifejezés a „hiányos” $x^3 + px + q$ köbös polinom **diszkriminánsa**: $\Delta > 0$ esetén három különböző valós gyök van, $\Delta < 0$ esetén egy valós és két komplex, $\Delta = 0$ esetén többszörös gyök. Ez a másodfokú $b^2 - 4ac$ megfelelője (vö. a 131. feladattal).
:::

## Röpzhra

**Tételek:** Inverz függvény differenciálási szabálya, $\lim_{x \to 0} \frac{\sin x}{x} = ?$, trigonometrikus függvények differenciálási szabályai.

### Definíciók és tételek kidolgozása

#### Tételek

- **Inverz függvény differenciálási szabálya:** Legyen $f$ szigorúan monoton és folytonos az $[a, b]$ intervallumon, $c \in (a, b)$, és létezzen $f'(c) \ne 0$. Ekkor $\varphi = f^{-1}$ differenciálható a $d = f(c)$ pontban, és
  $$\varphi'(d) = \frac{1}{f'(c)} = \frac{1}{f'(\varphi(d))}.$$
  *Bizonyítás.* $\varphi$ folytonos (szigorúan monoton, folytonos függvény inverze), így $v \to d$ esetén $\varphi(v) \to c$, és a szigorú monotonitás miatt $v \ne d \Rightarrow \varphi(v) \ne c$. Az $u = \varphi(v)$ helyettesítéssel, az összetett függvény határértékére vonatkozó tétel szerint
  $$\lim_{v \to d}\frac{\varphi(v) - \varphi(d)}{v - d} = \lim_{v \to d}\frac{\varphi(v) - c}{f(\varphi(v)) - f(c)} = \lim_{u \to c}\frac{1}{\frac{f(u) - f(c)}{u - c}} = \frac{1}{f'(c)}.$$
- **$\displaystyle\lim_{x \to 0}\frac{\sin x}{x} = 1$.**
  *Bizonyítás.* $0 < x < \frac\pi2$-re a geometriai egyenlőtlenség $\sin x < x < \operatorname{tg} x$. Ezt $\sin x > 0$-val osztva $1 < \frac{x}{\sin x} < \frac{1}{\cos x}$, reciprokot véve
  $$\cos x < \frac{\sin x}{x} < 1.$$
  Mivel $\cos$ folytonos és $\cos 0 = 1$, a rendőrelv szerint $\lim_{x \to 0+0}\frac{\sin x}{x} = 1$. A $\frac{\sin x}{x}$ páros függvény, így a bal oldali határérték is $1$.
  Következmény: $\lim_{x \to 0}\frac{\cos x - 1}{x} = \lim_{x \to 0}\left(-\sin\frac x2\right) \cdot \frac{\sin\frac x2}{\frac x2} = 0$.
- **Trigonometrikus függvények differenciálási szabályai:**
  $$(\sin x)' = \cos x, \qquad (\cos x)' = -\sin x \qquad (x \in \mathbb{R}),$$
  $$(\operatorname{tg} x)' = \frac{1}{\cos^2 x} \quad \left(x \ne \frac\pi2 + k\pi\right), \qquad (\operatorname{ctg} x)' = -\frac{1}{\sin^2 x} \quad (x \ne k\pi),$$
  $$(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}, \qquad (\arccos x)' = -\frac{1}{\sqrt{1 - x^2}} \qquad (|x| < 1),$$
  $$(\operatorname{arctg} x)' = \frac{1}{1 + x^2}, \qquad (\operatorname{arcctg} x)' = -\frac{1}{1 + x^2} \qquad (x \in \mathbb{R}).$$
  *Bizonyítás vázlata.*

  - $\sin$: az addíciós képlettel $\frac{\sin(x + h) - \sin x}{h} = \cos x\frac{\sin h}{h} + \sin x\frac{\cos h - 1}{h} \to \cos x \cdot 1 + \sin x \cdot 0$.
  - $\cos$: $\cos x = \sin\left(\frac\pi2 - x\right)$, láncszabállyal $(\cos x)' = -\cos\left(\frac\pi2 - x\right) = -\sin x$.
  - $\operatorname{tg}$, $\operatorname{ctg}$: hányadosszabállyal, $(\operatorname{tg} x)' = \frac{\cos x\cos x - \sin x(-\sin x)}{\cos^2 x} = \frac{1}{\cos^2 x}$, hasonlóan $\operatorname{ctg}$.
  - $\arcsin$: az inverz függvény szabályával, $c = \arcsin x \in \left(-\frac\pi2, \frac\pi2\right)$, $\cos c > 0$: $(\arcsin x)' = \frac{1}{\cos c} = \frac{1}{\sqrt{1 - \sin^2 c}} = \frac{1}{\sqrt{1 - x^2}}$; $\arccos x = \frac\pi2 - \arcsin x$.
  - $\operatorname{arctg}$: $(\operatorname{arctg} x)' = \cos^2 c = \frac{1}{1 + \operatorname{tg}^2 c} = \frac{1}{1 + x^2}$, ahol $c = \operatorname{arctg} x$; $\operatorname{arcctg} x = \frac\pi2 - \operatorname{arctg} x$.
