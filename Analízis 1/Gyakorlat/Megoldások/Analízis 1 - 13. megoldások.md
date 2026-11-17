# Analízis 1 – 13. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Házi feladat (a 12. feladatlapról):** 122. a), 123., 125., 126.

## 127. feladat

a) $\displaystyle\lim_{x \to 1} \frac{x^{2026} - 1}{x - 1} = ?$; b) $\displaystyle\lim_{h \to 0} \frac{\frac{1}{2 + h} - \frac12}{h} = ?$ Milyen differenciálhányadosokat számoltunk ki e határértékekkel?

**Megoldás.**

a) Az $y^n - 1 = (y - 1)(y^{n-1} + \dots + y + 1)$ szorzattá alakítással, $x \ne 1$-re
$$\frac{x^{2026} - 1}{x - 1} = x^{2025} + x^{2024} + \dots + x + 1.$$
Ez polinom, tehát folytonos; a $2026$ darab tag mindegyike $1$-hez tart, így
$$\lim_{x \to 1} \frac{x^{2026} - 1}{x - 1} = 2026.$$
Ez az $f(x) = x^{2026}$ függvény differenciahányadosa az $1$ pontban ($f(1) = 1$), tehát a határérték **$f'(1) = 2026 \cdot 1^{2025} = 2026$**.

b) Közös nevezőre hozva, $h \ne 0$, $h \ne -2$ esetén
$$\frac{\frac{1}{2 + h} - \frac12}{h} = \frac{2 - (2 + h)}{2(2 + h)h} = \frac{-h}{2(2 + h)h} = -\frac{1}{2(2 + h)} \to -\frac14 \qquad (h \to 0).$$
Ez a $g(x) = \frac1x$ függvény differenciahányadosa a $2$ pontban, tehát a határérték **$g'(2) = -\frac{1}{2^2} = -\frac14$**.

::: elmelet
**Elméleti háttér — határérték mint derivált.** A definíció szerint
$$f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a} = \lim_{h \to 0} \frac{f(a + h) - f(a)}{h}.$$
Ha egy határérték ilyen alakú, felismerhetjük benne egy ismert függvény deriváltját, és fordítva: a derivált kiszámítása mindig egy „$\frac00$” típusú határérték kiszámítása. Az a) részben a szorzattá alakítás pontosan az előadáson látott $(x^n)' = nx^{n-1}$ bizonyítása, a b) részben pedig az $\left(\frac1x\right)' = -\frac{1}{x^2}$ egy konkrét pontban.
:::

## 128. feladat

Legyen $f(x) = x^2$, ha $x \le 1$ és $f(x) = ax + b$ ha $x > 1$. Milyen $a$ és $b$ esetén lesz $f$ mindenütt differenciálható?

**Megoldás.**

Az $x < 1$ pontokban $f$ egy környezetben megegyezik $x^2$-tel, az $x > 1$ pontokban $ax + b$-vel, tehát ott differenciálható ($f'(x) = 2x$, illetve $a$). Csak az $x = 1$ pont kérdéses; itt $f(1) = 1$.

**Szükséges feltétel: folytonosság.** A differenciálható függvény folytonos, tehát
$$\lim_{x \to 1+0} f(x) = a + b = f(1) = 1.$$

**A féloldali deriváltak.** Balról ($h < 0$):
$$\frac{f(1 + h) - f(1)}{h} = \frac{(1 + h)^2 - 1}{h} = 2 + h \to 2, \qquad f'_-(1) = 2.$$
Jobbról ($h > 0$), az $a + b = 1$ feltétel mellett:
$$\frac{f(1 + h) - f(1)}{h} = \frac{a(1 + h) + b - 1}{h} = \frac{(a + b - 1) + ah}{h} = a, \qquad f'_+(1) = a.$$
(Ha $a + b \ne 1$, akkor ez a hányados $\pm\infty$-be tart, $f$ jobbról nem is differenciálható.)

$f$ pontosan akkor differenciálható $1$-ben, ha $f'_-(1) = f'_+(1)$, azaz $a = 2$, és ekkor $b = 1 - a = -1$.

**Válasz:** $a = 2$, $b = -1$; ekkor $f'(1) = 2$, és a jobb oldali ág az $x^2$ grafikonjának $(1, 1)$-beli érintője: $y = 2x - 1$.

::: elmelet
**Elméleti háttér — függvények „összeragasztása”.** Egy szakaszonként megadott függvény a csatlakozási pontban pontosan akkor differenciálható, ha (1) folytonos ott, és (2) a két féloldali derivált létezik és egyenlő:
$$\exists f'(a) \iff \exists f'_+(a) \ \wedge\ \exists f'_-(a) \ \wedge\ f'_+(a) = f'_-(a).$$
Az (1) feltétel nem hagyható el: ha $a + b \ne 1$, a jobb oldali ág deriváltja ugyan $a$, de a jobb oldali differenciahányados az ugrás miatt végtelenbe tart. Geometriailag: a sima csatlakozáshoz a lineáris ágnak a parabola érintőjének kell lennie.
:::

## 129. feladat

$\displaystyle\lim_{h \to 0+0} \frac{\log(1 + h)}{h} = ?$

**Megoldás.**

(Itt $\log$ a természetes alapú logaritmus.) A logaritmus azonosságával
$$\frac{\log(1 + h)}{h} = \frac1h \log(1 + h) = \log\left((1 + h)^{1/h}\right).$$
Az előadáson láttuk, hogy $\lim_{h \to 0+0}(1 + h)^{1/h} = e$ (az $x = \frac1h \to +\infty$ helyettesítéssel ez a $\lim_{x \to +\infty}\left(1 + \frac1x\right)^x = e$ határérték). Mivel $\log$ folytonos az $e$ pontban, az összetett függvény határértékére vonatkozó tétel szerint
$$\lim_{h \to 0+0} \frac{\log(1 + h)}{h} = \log e = 1.$$

Ez a $\log$ függvény jobb oldali deriváltja az $1$ pontban: $\log'_+(1) = 1$ (sőt, a $h \to 0-0$ eset ugyanígy megy, így $\log'(1) = 1$).

::: elmelet
**Elméleti háttér — az $e$ szám és a logaritmus deriváltja.** Az $e = \lim_{n \to \infty}\left(1 + \frac1n\right)^n$ definícióból az átviteli elv és a rendőrelv segítségével $\lim_{x \to \pm\infty}\left(1 + \frac1x\right)^x = e$, és így $\lim_{t \to 0}(1 + t)^{1/t} = e$. Ebből tetszőleges $a$ alapra $\log_a'(1) = \log_a e$, és a $\frac{\log_a y - \log_a x}{y - x} = \frac1x \cdot \frac{\log_a(y/x)}{y/x - 1}$ átalakítással $(\log_a x)' = \frac{\log_a e}{x}$. Az $e$ alap azért „természetes”, mert ekkor $\log_e e = 1$, és $(\log x)' = \frac1x$.
:::

## 130. feladat

A derivált definícióját használva határozzuk meg $f(x) = \sqrt{x}$ deriváltját. Írjuk fel az $f$ függvény grafikonja $(4, 2)$-ponton áthaladó érintőjének egyenletét!

**Megoldás.**

Legyen $x > 0$. A számlálót gyöktelenítve, $h \ne 0$, $x + h > 0$ esetén
$$\frac{\sqrt{x + h} - \sqrt{x}}{h} = \frac{(\sqrt{x + h} - \sqrt{x})(\sqrt{x + h} + \sqrt{x})}{h(\sqrt{x + h} + \sqrt{x})} = \frac{1}{\sqrt{x + h} + \sqrt{x}}.$$
A $\sqrt{\phantom{x}}$ folytonossága miatt ez $h \to 0$ esetén $\frac{1}{2\sqrt{x}}$-hez tart, tehát
$$f'(x) = \frac{1}{2\sqrt{x}}, \qquad x > 0.$$
(Az $x = 0$ pontban $f$ csak jobbról értelmezett, és $\frac{\sqrt{h}}{h} = \frac{1}{\sqrt{h}} \to +\infty$, tehát ott jobbról sem differenciálható: a grafikon érintője függőleges.)

**Az érintő.** $f(4) = 2$, tehát a $(4, 2)$ pont a grafikonon van, és $f'(4) = \frac{1}{2 \cdot 2} = \frac14$. Az érintő egyenlete
$$y = f'(4)(x - 4) + f(4) = \frac14(x - 4) + 2, \qquad \text{azaz} \qquad y = \frac{x}{4} + 1.$$

::: elmelet
**Elméleti háttér — gyöktelenítés és érintő.** Gyökös kifejezések differenciahányadosánál a „$\frac00$” alakot az $(A - B)(A + B) = A^2 - B^2$ azonossággal szüntetjük meg: a $\sqrt{x + h} - \sqrt{x}$ különbségből így $h$ lesz, ami egyszerűsíthető. Az $f$ grafikonjának $(a, f(a))$-beli érintője az $y = f'(a)(x - a) + f(a)$ egyenes: az egyetlen olyan egyenes a ponton át, amelyre $f(x) - \big(f'(a)(x - a) + f(a)\big) = o(x - a)$. Ugyanezt a deriváltat az inverz függvény szabálya is adja ($\sqrt{x}$ az $x^2|_{[0, \infty)}$ inverze): $\frac{1}{2\sqrt{x}}$.
:::

## 131. feladat

Bizonyítsuk be, hogy az $x^2$ függvény akkor és csak akkor érinti az $y = mx + b$ egyenest, ha pontosan egy közös pontjuk van.

**Megoldás.**

Legyen $f(x) = x^2$. Az $f'(a) = 2a$ miatt a grafikon $(a, a^2)$-beli érintője
$$y = 2a(x - a) + a^2 = 2ax - a^2.$$
Tehát az $y = mx + b$ egyenes pontosan akkor érinti a grafikont (valamely pontjában), ha van olyan $a$, hogy $m = 2a$ és $b = -a^2$, azaz
$$b = -\frac{m^2}{4} \iff m^2 + 4b = 0.$$

**A közös pontok.** Az $(x, y)$ pont mindkettőn rajta van, ha $y = x^2 = mx + b$, azaz
$$x^2 - mx - b = 0.$$
Ennek a másodfokú egyenletnek a diszkriminánsa $D = m^2 + 4b$. Pontosan egy valós gyöke (és így pontosan egy közös pont) akkor van, ha $D = 0$ — ugyanaz a feltétel, mint fent. Ekkor a gyök $x = \frac{m}{2} = a$, vagyis a közös pont éppen az érintési pont. $\blacksquare$

(Az állítás csak a nem függőleges, $y = mx + b$ alakú egyenesekre igaz: az $x = c$ függőleges egyenesnek is pontosan egy közös pontja van a parabolával, de nem érintő.)

::: elmelet
**Elméleti háttér — érintés és kétszeres gyök.** Egy $p$ polinom grafikonját az $y = \ell(x)$ egyenes pontosan akkor érinti az $a$ pontban, ha $p(a) = \ell(a)$ és $p'(a) = \ell'(a)$, azaz ha $a$ a $p - \ell$ polinomnak **legalább kétszeres gyöke**: $p(x) - \ell(x) = (x - a)^2 q(x)$. Másodfokú $p$ esetén $p - \ell$ is másodfokú, és kétszeres gyöke pontosan akkor van, ha a diszkrimináns $0$ — ekkor ez az egyetlen gyöke. Magasabb fokú polinomokra a „pontosan egy közös pont” már nem jellemzi az érintést: pl. $x^3$-at az $y = 0$ egyenes érinti, de az $y = x$ egyenes nem, pedig mindkettőnek véges sok közös pontja van; a 151. feladat ezt a köbös esetet vizsgálja.
:::

## 132. feladat

A derivált definícióját használva adjuk meg $f(a) = \dfrac{1}{a^2 + 4a}$ deriváltját!

**Megoldás.**

$f$ értelmezve van, ha $a^2 + 4a = a(a + 4) \ne 0$, azaz $a \ne 0$, $a \ne -4$. Legyen $a$ ilyen, és $h$ olyan kicsi, hogy $a + h \ne 0, -4$ is teljesüljön. Jelölje $g(t) = t^2 + 4t$. Ekkor
$$g(a + h) - g(a) = (a + h)^2 + 4(a + h) - a^2 - 4a = 2ah + h^2 + 4h = h(2a + 4 + h),$$
így
$$\frac{f(a + h) - f(a)}{h} = \frac{1}{h}\left(\frac{1}{g(a + h)} - \frac{1}{g(a)}\right) = \frac{g(a) - g(a + h)}{h\, g(a + h)\, g(a)} = -\frac{2a + 4 + h}{g(a + h)\, g(a)}.$$
Mivel $g$ polinom, folytonos, tehát $g(a + h) \to g(a) \ne 0$, ha $h \to 0$. Így
$$f'(a) = -\frac{2a + 4}{(a^2 + 4a)^2}, \qquad a \ne 0, -4.$$

(Ellenőrzés a hányadosszabállyal: $\left(\frac1g\right)' = -\frac{g'}{g^2}$, és $g'(a) = 2a + 4$.)

::: elmelet
**Elméleti háttér — reciprok deriváltja a definícióból.** A $\frac1g$ differenciahányadosa közös nevezőre hozva
$$\frac{\frac{1}{g(a + h)} - \frac{1}{g(a)}}{h} = -\frac{1}{g(a + h)g(a)} \cdot \frac{g(a + h) - g(a)}{h},$$
ami a $g$ folytonossága és differenciálhatósága miatt $-\frac{g'(a)}{g(a)^2}$-hez tart — ez a reciprokszabály bizonyítása. A konkrét feladatban a $g(a + h) - g(a)$ különbségből $h$ kiemelhető, és ezzel a „$\frac00$” alak megszűnik.
:::

## 133. feladat

Hol differenciálható, mi a derivált?

a) $f(x) = \begin{cases} 2^{-n} & \text{ha } x = \frac1n, \\ 0 & \text{ha } x \ne \frac1n, \end{cases}$ $n \in \mathbb{N}$;

b) $f(x) = \dfrac{1}{n!}$ ha $\frac{1}{2^{n+1}} \le x < \frac{1}{2^n}$, $f(x) = 0$ egyébként.

**Megoldás.**

(Itt $\mathbb{N} = \{1, 2, 3, \dots\}$.)

**a)** Legyen $H = \left\{\frac1n : n \in \mathbb{N}\right\}$; $f$ a $H$-n kívül $0$, a $\frac1n$ pontban $2^{-n}$.

- **$x_0 \notin H \cup \{0\}$.** A $H$ halmaznak egyetlen torlódási pontja a $0$, ezért $x_0$-nak van $H$-tól diszjunkt környezete. Ott $f \equiv 0$, tehát $f$ differenciálható $x_0$-ban, és **$f'(x_0) = 0$**.
- **$x_0 = \frac1n \in H$.** Mivel $\frac1n$ egy környezetében (önmagát kivéve) nincs más $H$-beli pont, $\lim_{x \to 1/n} f(x) = 0 \ne 2^{-n} = f\left(\frac1n\right)$. Tehát $f$ nem folytonos, így **nem is differenciálható** $\frac1n$-ben.
- **$x_0 = 0$.** $f(0) = 0$, és a differenciahányados
$$\frac{f(h) - f(0)}{h} = \frac{f(h)}{h} = \begin{cases} n \cdot 2^{-n} & \text{ha } h = \frac1n, \\ 0 & \text{egyébként.} \end{cases}$$
Legyen $\varepsilon > 0$. Mivel $\frac{n}{2^n} \to 0$, van $N$, hogy $\frac{n}{2^n} < \varepsilon$, ha $n \ge N$. Ha $0 < |h| < \frac1N$, akkor vagy $h \notin H$ és a hányados $0$, vagy $h = \frac1n$ valamely $n > N$-re, és a hányados $\frac{n}{2^n} < \varepsilon$. Tehát $\lim_{h \to 0} \frac{f(h)}{h} = 0$, **$f'(0) = 0$**.

**Válasz:** $f$ pontosan az $\mathbb{R} \setminus \left\{\frac1n : n \in \mathbb{N}\right\}$ halmazon differenciálható, és ott $f' \equiv 0$.

**b)** Az $\left[\frac{1}{2^{n+1}}, \frac{1}{2^n}\right)$ ($n \in \mathbb{N}$) intervallumok diszjunktak, uniójuk $\left(0, \frac12\right)$; $f$ ezeken lépcsős, a $(-\infty, 0]$ és a $\left[\frac12, \infty\right)$ halmazon $0$.

- **$x_0 \ne 0$ és $x_0 \ne \frac{1}{2^n}$ ($n \in \mathbb{N}$).** Ekkor $x_0$ egy intervallum belsejében vagy a $(-\infty, 0)$, $\left(\frac12, \infty\right)$ valamelyikében van, így egy környezetében $f$ konstans: **$f'(x_0) = 0$**.
- **$x_0 = \frac12$.** Balról $f \equiv \frac{1}{1!} = 1$, jobbról és a pontban $f = 0$: ugrás, $f$ nem folytonos, **nem differenciálható**.
- **$x_0 = \frac{1}{2^n}$, $n \ge 2$.** Balról ($\left[\frac{1}{2^{n+1}}, \frac{1}{2^n}\right)$-en) $f = \frac{1}{n!}$, jobbról és a pontban ($\left[\frac{1}{2^n}, \frac{1}{2^{n-1}}\right)$-en) $f = \frac{1}{(n-1)!}$. Ezek különbözők, $f$ nem folytonos, **nem differenciálható**.
- **$x_0 = 0$.** $f(0) = 0$. Ha $h < 0$, akkor $\frac{f(h)}{h} = 0$. Ha $0 < h < \frac12$, akkor van egyetlen $n$, hogy $\frac{1}{2^{n+1}} \le h < \frac{1}{2^n}$, és
$$0 < \frac{f(h)}{h} = \frac{1}{n!\, h} \le \frac{2^{n+1}}{n!}.$$
Ha $h \to 0+0$, akkor $n \to \infty$, és $\frac{2^{n+1}}{n!} \to 0$ (a faktoriális gyorsabban nő bármely exponenciálisnál). A rendőrelv szerint $f'_+(0) = 0 = f'_-(0)$, tehát **$f'(0) = 0$**.

**Válasz:** $f$ pontosan az $\mathbb{R} \setminus \left\{\frac{1}{2^n} : n \in \mathbb{N}\right\}$ halmazon differenciálható, és ott $f' \equiv 0$.

(Ha $\mathbb{N}$ a $0$-t is tartalmazza, akkor b)-ben $f = \frac{1}{0!} = 1$ az $\left[\frac12, 1\right)$-en is, és az $x_0 = 1$ pont is szakadási hely lesz; a $0$-beli derivált így is $0$.)

::: elmelet
**Elméleti háttér — differenciálhatóság egy torlódási pontban.** A differenciálhatóság lokális tulajdonság: ahol a függvény egy környezetben konstans, ott a derivált $0$; ahol nem folytonos, ott nem differenciálható. Az érdekes pont a $0$, ahol a szakadási helyek torlódnak. Itt az $\frac{f(h)}{h}$ hányadost kell becsülni: $f(h)$-nak gyorsabban kell $0$-hoz tartania, mint $h$-nak. Az a) részben ezt az $n \ll 2^n$, a b) részben a $2^n \ll n!$ nagyságrendi viszony biztosítja. Ha pl. a) helyett $f\left(\frac1n\right) = \frac1n$ lenne, a $0$-beli differenciahányados a $\frac1n$ pontokon $1$, máshol $0$ volna, tehát nem lenne határértéke.
:::

## 134. feladat

Hol differenciálható a $\left(\{x\} - \frac12\right)^2$ függvény?

**Megoldás.**

Legyen $g(x) = \left(\{x\} - \frac12\right)^2$; ez $1$ szerint periodikus. Legyen $k \in \mathbb{Z}$.

**A $(k, k + 1)$ intervallum belsejében** $\{x\} = x - k$, így $g(x) = \left(x - k - \frac12\right)^2$ polinom, differenciálható, és
$$g'(x) = 2\left(x - k - \frac12\right) = 2\{x\} - 1.$$

**Az $x = k$ egész pontban.** $g(k) = \left(0 - \frac12\right)^2 = \frac14$.

- A $[k, k + 1)$-en $g(x) = \left(x - k - \frac12\right)^2$, tehát a jobb oldali derivált ennek a polinomnak a $k$-beli deriváltja:
$$g'_+(k) = 2\left(k - k - \tfrac12\right) = -1.$$
- A $(k - 1, k)$-n $g(x) = \left(x - k + \frac12\right)^2$, és ez a polinom $x = k$-ban is $\frac14 = g(k)$-t ad, tehát $(k - 1, k]$-n $g$ megegyezik vele. Így
$$g'_-(k) = 2\left(k - k + \tfrac12\right) = 1.$$

A két féloldali derivált különböző, tehát $g$ **nem differenciálható az egész pontokban** (pedig ott folytonos: mindkét oldali határérték $\frac14$).

**Válasz:** $g$ pontosan az $\mathbb{R} \setminus \mathbb{Z}$ halmazon differenciálható, és ott $g'(x) = 2\{x\} - 1$.

::: elmelet
**Elméleti háttér — szakaszonként sima függvények.** A $\{x\}$ függvény egész pontokban ugrik ($1$-ről $0$-ra), de az $\left(\{x\} - \frac12\right)^2$ kompozícióban az ugrás eltűnik, mert $\left(1 - \frac12\right)^2 = \left(0 - \frac12\right)^2$: a függvény folytonos, „fűrészfog-parabolák” sorozata. A töréspontokban a féloldali deriváltakat a két szomszédos polinom-ág deriváltja adja (ha az ág a pontban is egyezik a függvénnyel). Folytonos, de nem differenciálható pontok tipikusan így, „sarokként” keletkeznek, mint $|x|$-nél a $0$-ban.
:::

## 135. feladat

Van-e olyan pont, ahol a Riemann függvény differenciálható?

**Megoldás.**

A Riemann-függvény
$$R(x) = \begin{cases} \frac1q & \text{ha } x = \frac{p}{q},\ p \in \mathbb{Z},\ q \in \mathbb{N},\ (p, q) = 1, \\ 0 & \text{ha } x \notin \mathbb{Q}. \end{cases}$$
A 87. és a 94. feladatban láttuk, hogy minden pontban $\lim_{x \to a} R(x) = 0$, ezért $R$ a racionális pontokban nem folytonos (ott $R(a) > 0$), így ott **nem is differenciálható**.

**Irracionális pont.** Legyen $a \notin \mathbb{Q}$, ekkor $R(a) = 0$. Ha a $h \to 0$ határátmenetet olyan $h$-kra nézzük, amelyekre $a + h$ irracionális, a differenciahányados $0$; tehát ha $R'(a)$ létezne, csak $0$ lehetne. Megmutatjuk, hogy a racionális pontok felé a hányados nem korlátos.

*Dirichlet-féle közelítés.* Legyen $N \in \mathbb{N}$. A $\{0 \cdot a\}, \{1 \cdot a\}, \dots, \{N \cdot a\}$ számok $N + 1$ darab $[0, 1)$-beli szám; a $\left[\frac{j}{N}, \frac{j + 1}{N}\right)$ ($j = 0, \dots, N - 1$) $N$ darab intervallum közül valamelyikbe kettő esik (skatulyaelv), mondjuk $\{k_1 a\}$ és $\{k_2 a\}$, $k_1 > k_2$. Ekkor $q_0 = k_1 - k_2 \in \{1, \dots, N\}$ és alkalmas $p_0 \in \mathbb{Z}$-re
$$|q_0 a - p_0| < \frac1N \le \frac{1}{q_0}, \qquad \text{azaz} \qquad \left|a - \frac{p_0}{q_0}\right| < \frac{1}{q_0 N} \le \frac{1}{q_0^2}.$$
Írjuk a $\frac{p_0}{q_0}$ törtet tovább nem egyszerűsíthető $\frac{p}{q}$ alakba; ekkor $q \le q_0$, így
$$\left|a - \frac{p}{q}\right| < \frac{1}{q_0^2} \le \frac{1}{q^2}, \qquad \text{és} \qquad \left|a - \frac pq\right| < \frac1N.$$

Mivel $a$ irracionális, minden ilyen tört $a$-tól pozitív távolságra van, de a távolság $< \frac1N$, ezért $N \to \infty$ mellett **végtelen sok különböző** $\frac{p}{q}$ törtet kapunk. Rögzített nevezőjű törtek közül csak véges sok van $a$ egy korlátos környezetében, tehát a kapott törtek $q$ nevezői nem korlátosak. Ezekre a $h = \frac pq - a \ne 0$ értékekre
$$\left|\frac{R(a + h) - R(a)}{h}\right| = \frac{\frac1q}{\left|\frac pq - a\right|} > \frac{1/q}{1/q^2} = q.$$
Van tehát $h_k \to 0$ sorozat, amelyre a differenciahányados abszolút értéke $\to \infty$; így a határérték nem lehet $0$ (és nem is véges). $R$ **az irracionális pontokban sem differenciálható**.

**Válasz:** nincs ilyen pont; a Riemann-függvény sehol sem differenciálható.

::: elmelet
**Elméleti háttér — folytonos, de nem differenciálható pontok.** A Riemann-függvény pontosan az irracionális pontokban folytonos — ott a $0$-hoz közeli értékeit a nagy nevezőjű racionálisok adják. A differenciálhatósághoz azonban az kellene, hogy $R(x)$ **gyorsabban** tűnjön el, mint $|x - a|$. A Dirichlet-tétel szerint minden irracionális $a$-hoz végtelen sok $\frac pq$ van, amelyre $\left|a - \frac pq\right| < \frac{1}{q^2}$; ezekben $R = \frac1q$, ami a távolságnál nagyságrendekkel nagyobb. (A $0$ pontban ugyanez a jelenség a 95. feladatban: ott $\frac{R(x)}{x}$ határértéke sem létezik. Ha a Riemann-függvény helyett $\frac{1}{q^3}$-t vennénk a racionális pontokban, a differenciálhatóság már $a$ diofantikus approximációs tulajdonságaitól függene.)
:::

## 136. feladat

Milyen szögben metszi az $y = x^2$ függvény grafikonja az $y = 2x$ egyenest? (Azaz mekkora a közös pontokban az érintő és az egyenes szöge?)

**Megoldás.**

**A közös pontok.** $x^2 = 2x \iff x(x - 2) = 0$, tehát a közös pontok $(0, 0)$ és $(2, 4)$.

**Az érintők meredeksége.** $(x^2)' = 2x$, tehát az érintő meredeksége a $(0, 0)$ pontban $m_1 = 0$, a $(2, 4)$ pontban $m_2 = 4$. Az egyenes meredeksége $m = 2$.

**A szög.** Az $m$ és $m'$ meredekségű egyenesek irányszöge $\operatorname{arctg} m$ és $\operatorname{arctg} m'$; a hajlásszögük $\varphi \in \left[0, \frac\pi2\right]$, amelyre a tangens addíciós képlete szerint
$$\operatorname{tg} \varphi = \left|\frac{m - m'}{1 + mm'}\right| \qquad (mm' \ne -1).$$

- A $(0, 0)$ pontban: $\operatorname{tg} \varphi_1 = \left|\frac{2 - 0}{1 + 0}\right| = 2$, tehát $\varphi_1 = \operatorname{arctg} 2 \approx 63{,}43^\circ$. (Itt az érintő vízszintes, így a szög egyszerűen az egyenes irányszöge.)
- A $(2, 4)$ pontban: $\operatorname{tg} \varphi_2 = \left|\frac{4 - 2}{1 + 4 \cdot 2}\right| = \frac29$, tehát $\varphi_2 = \operatorname{arctg} \frac29 \approx 12{,}53^\circ$. (Ez $\operatorname{arctg} 4 - \operatorname{arctg} 2$.)

::: elmelet
**Elméleti háttér — görbék szöge.** Két görbe metszéspontbeli szöge a pontbeli érintőik szöge. Az $y = mx + b$ egyenes irányszöge $\alpha = \operatorname{arctg} m \in \left(-\frac\pi2, \frac\pi2\right)$, két egyenes szöge $|\alpha - \alpha'|$ (illetve $\pi$-ből ennek kiegészítője, ha az nagyobb $\frac\pi2$-nél). A tangens addíciós képlete adja:
$$\operatorname{tg}(\alpha - \alpha') = \frac{\operatorname{tg} \alpha - \operatorname{tg} \alpha'}{1 + \operatorname{tg} \alpha \operatorname{tg} \alpha'} = \frac{m - m'}{1 + mm'}.$$
Ha $mm' = -1$, a két egyenes merőleges. Mivel egy függvény grafikonjának érintőjét a derivált adja, a feladat a deriválás egyik legegyszerűbb geometriai alkalmazása.
:::

## 137. feladat

Mutassuk meg, hogy $x' = 1$ és $(x^n)' = nx^{n-1}$ ha $n \in \mathbb{N}$.

(Két bizonyítás is adható. Indukcióval és közvetlenül a definícióból is bizonyíthatunk. Ez utóbbi volt előadáson, így adjunk indukciós bizonyítást.)

**Megoldás.**

**$x' = 1$.** A definíció szerint, minden $x \in \mathbb{R}$-re
$$\lim_{h \to 0} \frac{(x + h) - x}{h} = \lim_{h \to 0} \frac{h}{h} = 1.$$

**$(x^n)' = nx^{n-1}$, indukcióval.**

- $n = 1$: $(x^1)' = 1 = 1 \cdot x^0$, az előző rész szerint.
- Tegyük fel, hogy valamely $n \in \mathbb{N}$-re $(x^n)' = nx^{n-1}$ minden $x$-re. Mivel $x^{n+1} = x \cdot x^n$, és mindkét tényező differenciálható, a **szorzatszabály** szerint
$$(x^{n+1})' = (x)' \cdot x^n + x \cdot (x^n)' = 1 \cdot x^n + x \cdot nx^{n-1} = (n + 1)x^n.$$

Tehát az állítás minden $n \in \mathbb{N}$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — a szorzatszabály.** Ha $f$ és $g$ differenciálható $a$-ban, akkor
$$\frac{f(x)g(x) - f(a)g(a)}{x - a} = g(x)\frac{f(x) - f(a)}{x - a} + f(a)\frac{g(x) - g(a)}{x - a} \to g(a)f'(a) + f(a)g'(a),$$
ahol kihasználtuk, hogy $g$ differenciálható, tehát folytonos $a$-ban. Az előadáson látott közvetlen bizonyítás az $y^n - x^n = (y - x)(y^{n-1} + y^{n-2}x + \dots + x^{n-1})$ szorzattá alakítást használja. Az indukciós bizonyítás előnye, hogy negatív kitevőre is könnyen kiterjeszthető: $(x^{-n})' = \left(\frac{1}{x^n}\right)' = -\frac{nx^{n-1}}{x^{2n}} = -nx^{-n-1}$.
:::

## 138. feladat

$\displaystyle\lim_{n \to \infty} n\left(\left(5 + \frac1n\right)^{101} - 5^{101}\right) = ?$

**Megoldás.**

Legyen $f(x) = x^{101}$ és $h_n = \frac1n$. Ekkor
$$n\left(\left(5 + \frac1n\right)^{101} - 5^{101}\right) = \frac{f(5 + h_n) - f(5)}{h_n}.$$
Mivel $f$ differenciálható $5$-ben, a differenciahányados határértéke $f'(5)$; az átviteli elv szerint ez minden $h_n \to 0$, $h_n \ne 0$ sorozatra igaz. Így
$$\lim_{n \to \infty} n\left(\left(5 + \frac1n\right)^{101} - 5^{101}\right) = f'(5) = 101 \cdot 5^{100}.$$

(Közvetlenül a binomiális tétellel: $\left(5 + \frac1n\right)^{101} - 5^{101} = \binom{101}{1}5^{100}\frac1n + \sum_{k = 2}^{101}\binom{101}{k}5^{101 - k}\frac{1}{n^k}$, és $n$-nel szorozva az első tag $101 \cdot 5^{100}$, a többi $\to 0$.)

::: elmelet
**Elméleti háttér — sorozathatárérték deriválttal.** Az átviteli elv (Heine-féle definíció) szerint $\lim_{h \to 0} \frac{f(a + h) - f(a)}{h} = f'(a)$ pontosan akkor, ha minden $h_n \to 0$, $h_n \ne 0$ sorozatra $\frac{f(a + h_n) - f(a)}{h_n} \to f'(a)$. Ezért az $n\big(f(a + \frac1n) - f(a)\big)$ alakú sorozatok határértéke $f'(a)$, ha $f$ differenciálható $a$-ban. Ugyanez a módszer adja a 149. feladatot is.
:::

## 139. feladat

Legyen $f(x) = x^2\left\{\frac1x\right\}$, ha $x \ne 0$ és $f(0) = 0$. Hol differenciálható $f$?

**Megoldás.**

**A $0$ pontban.** Mivel $0 \le \left\{\frac1h\right\} < 1$,
$$\left|\frac{f(h) - f(0)}{h}\right| = |h|\left\{\frac1h\right\} \le |h| \to 0,$$
tehát **$f'(0) = 0$**.

**Az $x_0 = \frac1k$ pontokban ($k \in \mathbb{Z} \setminus \{0\}$).** Itt $\frac{1}{x_0} = k$ egész, $f(x_0) = 0$. Ha $x \to x_0$ úgy, hogy $\frac1x$ alulról tart $k$-hoz (ez $k > 0$ esetén $x \to x_0 + 0$, $k < 0$ esetén $x \to x_0 - 0$), akkor $\left\{\frac1x\right\} = \frac1x - (k - 1) \to 1$, tehát $f(x) \to x_0^2 = \frac{1}{k^2} \ne 0 = f(x_0)$. Így $f$ nem folytonos, **nem differenciálható** $\frac1k$-ban.

**A többi pontban** ($x_0 \ne 0$, $\frac{1}{x_0} \notin \mathbb{Z}$). Az $\frac1x$ folytonos $x_0$-ban, és $\frac{1}{x_0}$ két szomszédos egész, $m = \left[\frac{1}{x_0}\right]$ és $m + 1$ között szigorúan van. Ezért $x_0$ egy környezetében $\left[\frac1x\right] = m$, azaz $\left\{\frac1x\right\} = \frac1x - m$, és
$$f(x) = x^2\left(\frac1x - m\right) = x - mx^2.$$
Ez polinom, tehát $f$ differenciálható $x_0$-ban, és
$$f'(x_0) = 1 - 2mx_0 = 1 - 2x_0\left[\frac{1}{x_0}\right].$$

**Válasz:** $f$ pontosan az $\mathbb{R} \setminus \left\{\frac1k : k \in \mathbb{Z} \setminus \{0\}\right\}$ halmazon differenciálható; $f'(0) = 0$, és a többi ilyen pontban $f'(x) = 1 - 2x\left[\frac1x\right]$.

::: elmelet
**Elméleti háttér — „$x^2 \cdot$ korlátos” a $0$-ban.** Ha $g$ korlátos a $0$ egy környezetében, akkor $f(x) = x^2 g(x)$, $f(0) = 0$ differenciálható $0$-ban és $f'(0) = 0$, hiszen $\left|\frac{f(h)}{h}\right| = |h||g(h)| \to 0$ — akármilyen „csúnya” is $g$. (Ugyanígy $x \cdot$ korlátos a $0$-ban folytonos, de nem feltétlenül differenciálható.) A $0$-tól távol a differenciálhatóság lokális kérdés: ahol $\left[\frac1x\right]$ lokálisan konstans, ott $f$ egy polinommal egyezik; ahol ugrik, ott $f$ is szakad. A 94. c) feladatban ugyanezt a gondolatmenetet használtuk az $x^2\left[\frac1x\right]$ folytonosságának vizsgálatára.
:::

## Röpzhra

**Definíciók:** $\log_a x$, az $e$ definíciója, $f'(a)$, $f'_+(a)$, érintő.

**Tételek:** $\log_a x$ tulajdonságai, a logaritmus azonosságai, differenciálási szabályok, $f^*(x)$-es ekvivalencia a differenciálhatósággal, Láncszabály.

### Definíciók és tételek kidolgozása

#### Definíciók

- **$\log_a x$:** Legyen $a > 0$, $a \ne 1$. Az $x \mapsto a^x$ függvény szigorúan monoton, folytonos, és $R(a^x) = (0, \infty)$, tehát van inverze. Ezt az inverzet **$a$ alapú logaritmusnak** nevezzük:
  $$\log_a x = y \iff a^y = x \qquad (x > 0,\ y \in \mathbb{R}).$$
- **Az $e$ szám:** Az $e_n = \left(1 + \frac1n\right)^n$ sorozat szigorúan monoton nő, az $f_n = \left(1 + \frac1n\right)^{n+1}$ szigorúan monoton fogy, $e_n < f_m$ minden $n, m$-re, és $f_n - e_n \to 0$. Így közös határértékük van:
  $$e \overset{\text{def}}{=} \lim_{n \to \infty}\left(1 + \frac1n\right)^n = \lim_{n \to \infty}\left(1 + \frac1n\right)^{n+1} = 2{,}71828\dots$$
  A $\log_e x$ jelölése $\ln x$ vagy $\log x$ (természetes alapú logaritmus).
- **$f'(a)$:** Az $f$ **differenciálható** az $a$ pontban, ha $f$ értelmezett $a$ egy környezetében, és a
  $$f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a} = \lim_{h \to 0} \frac{f(a + h) - f(a)}{h}$$
  határérték létezik és véges. Az $f'(a)$ szám az $f$ **deriváltja** (differenciálhányadosa) $a$-ban.
- **$f'_+(a)$:** Az $f$ **jobbról differenciálható** $a$-ban, ha értelmezett $a$ egy jobb oldali környezetében ($[a, a + \delta)$), és az
  $$f'_+(a) = \lim_{x \to a + 0} \frac{f(x) - f(a)}{x - a}$$
  határérték létezik és véges. Hasonlóan $f'_-(a)$. $\exists f'(a) \iff \exists f'_+(a),\ \exists f'_-(a)$ és $f'_+(a) = f'_-(a)$.
- **Érintő:** Ha $f$ differenciálható $a$-ban, akkor az
  $$y = f'(a)(x - a) + f(a)$$
  egyenest az $f$ grafikonjának $(a, f(a))$ pontbeli **érintőjének** nevezzük.

#### Tételek

- **$\log_a x$ tulajdonságai** ($a > 0$, $a \ne 1$):
  1. $D(\log_a) = (0, \infty)$, $R(\log_a) = \mathbb{R}$;
  2. $\log_a$ folytonos $(0, \infty)$-en (folytonos, szigorúan monoton függvény inverze);
  3. $a > 1$ esetén szigorúan monoton nő, $0 < a < 1$ esetén szigorúan monoton fogy;
  4. $a > 1$ esetén $\lim_{x \to +\infty}\log_a x = +\infty$, $\lim_{x \to 0+0}\log_a x = -\infty$; $0 < a < 1$ esetén fordítva.
- **A logaritmus azonosságai** ($x, y > 0$, $b \in \mathbb{R}$, $a, c > 0$, $a, c \ne 1$):
  $$\log_a(xy) = \log_a x + \log_a y, \qquad \log_a \frac xy = \log_a x - \log_a y, \qquad \log_a x^b = b\log_a x, \qquad \log_a x = \frac{\log_c x}{\log_c a}.$$
  *(Bizonyítás: mindkét oldalt $a$ kitevőjébe írjuk, a hatványozás azonosságait használjuk, majd $a^t$ injektivitását; pl. $a^{\log_a(x^b)} = x^b = \left(a^{\log_a x}\right)^b = a^{b\log_a x}$.)*
- **Differenciálási szabályok:** Ha $f$ és $g$ differenciálható $a$-ban, $c \in \mathbb{R}$, akkor
  $$(cf)'(a) = cf'(a), \qquad (f \pm g)'(a) = f'(a) \pm g'(a), \qquad (fg)'(a) = f'(a)g(a) + f(a)g'(a),$$
  és ha $g(a) \ne 0$, akkor
  $$\left(\frac1g\right)'(a) = -\frac{g'(a)}{g^2(a)}, \qquad \left(\frac fg\right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{g^2(a)}.$$
  *(A szorzatszabály bizonyítása: $f(x)g(x) - f(a)g(a) = \big(f(x) - f(a)\big)g(x) + f(a)\big(g(x) - g(a)\big)$, osztunk $(x - a)$-val, és $g(x) \to g(a)$ a folytonosság miatt.)*
- **$f^*$-os ekvivalencia:** $f$ pontosan akkor differenciálható $a$-ban, ha létezik olyan, az $a$-ban folytonos $f^*$ függvény, amelyre
  $$f(x) - f(a) = f^*(x)(x - a) \qquad \forall x \in D(f);$$
  ekkor $f'(a) = f^*(a)$.
  *(Bizonyítás: $\Rightarrow$: $f^*(x) = \frac{f(x) - f(a)}{x - a}$, ha $x \ne a$, és $f^*(a) = f'(a)$; ez a derivált definíciója szerint folytonos $a$-ban. $\Leftarrow$: $x \ne a$-ra $\frac{f(x) - f(a)}{x - a} = f^*(x) \to f^*(a)$.)*
- **Láncszabály:** Ha $f$ differenciálható $a$-ban, $g$ pedig $f(a)$-ban, akkor $g \circ f$ differenciálható $a$-ban, és
  $$(g \circ f)'(a) = g'(f(a)) \cdot f'(a).$$
  *(Bizonyítás: $g(f(x)) - g(f(a)) = g^*(f(x))\big(f(x) - f(a)\big) = g^*(f(x)) f^*(x)(x - a)$, és $h^* = (g^* \circ f) \cdot f^*$ folytonos $a$-ban, mert $f$ folytonos $a$-ban, $g^*$ folytonos $f(a)$-ban, $f^*$ folytonos $a$-ban. Így $(g \circ f)'(a) = h^*(a) = g'(f(a))f'(a)$. Az $f^*$-os alak azért kell, mert $\frac{g(f(x)) - g(f(a))}{f(x) - f(a)}$-val nem bővíthetünk, ha $f(x) = f(a)$ lehet.)*
