# Analízis 1 – 12. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 118. feladat

Legyen $f \in C(\mathbb{R})$ periodikus. Mutassuk meg, hogy $f$ korlátos.

**Megoldás.**

Legyen $p > 0$ egy periódusa: $f(x + p) = f(x)$ minden $x$-re, így indukcióval $f(x + kp) = f(x)$ minden $k \in \mathbb{Z}$-re. A $[0, p]$ korlátos, zárt intervallumon $f$ folytonos, ezért a **Weierstrass-tétel** szerint korlátos: van $M$, hogy $|f(t)| \le M$, ha $t \in [0, p]$.

Legyen $x \in \mathbb{R}$ tetszőleges, és $k = \left[\frac xp\right]$. Ekkor $k \le \frac xp < k + 1$, azaz $t = x - kp \in [0, p)$, és
$$|f(x)| = |f(t + kp)| = |f(t)| \le M.$$
Tehát $f$ korlátos $\mathbb{R}$-en. $\blacksquare$

(Sőt, $f$ fel is veszi a legnagyobb és a legkisebb értékét: a $[0, p]$-n felvett maximum és minimum az egész $\mathbb{R}$-en is az.)

::: elmelet
**Elméleti háttér — periodikus függvények és a Weierstrass-tétel.** Egy $p$ szerint periodikus függvény minden értékét felveszi már egy $p$ hosszú intervallumon, így értékkészlete megegyezik a $[0, p]$-re vett leszűkítés értékkészletével: $R(f) = f([0, p])$. Ha $f$ folytonos, ez a Weierstrass-tétel szerint korlátos és zárt (sőt, a Bolzano-tétel szerint intervallum). Folytonosság nélkül az állítás hamis: a $\operatorname{tg}$ $\pi$ szerint periodikus, de nem korlátos — igaz, nincs is értelmezve az egész $\mathbb{R}$-en; az $f(x) = \frac{1}{\{x\}}$ ($\{x\} \ne 0$), $f(n) = 0$ pedig $\mathbb{R}$-en értelmezett, $1$ szerint periodikus, nem korlátos.
:::

## 119. feladat

A $\sin$ és $\cos$ addíciós képleteiből vezessük le, hogy $\operatorname{tg}(x + y) = \dfrac{\operatorname{tg} x + \operatorname{tg} y}{1 - \operatorname{tg} x \cdot \operatorname{tg} y}$.

**Megoldás.**

Tegyük fel, hogy $\operatorname{tg} x$, $\operatorname{tg} y$ és $\operatorname{tg}(x + y)$ értelmezett, azaz $\cos x \ne 0$, $\cos y \ne 0$ és $\cos(x + y) \ne 0$. Az addíciós képletek szerint
$$\operatorname{tg}(x + y) = \frac{\sin(x + y)}{\cos(x + y)} = \frac{\sin x \cos y + \cos x \sin y}{\cos x \cos y - \sin x \sin y}.$$
Osszuk el a számlálót és a nevezőt is $\cos x \cos y \ne 0$-val:
$$\operatorname{tg}(x + y) = \frac{\dfrac{\sin x}{\cos x} + \dfrac{\sin y}{\cos y}}{1 - \dfrac{\sin x}{\cos x} \cdot \dfrac{\sin y}{\cos y}} = \frac{\operatorname{tg} x + \operatorname{tg} y}{1 - \operatorname{tg} x \operatorname{tg} y}.$$
(A nevező nem $0$: $1 - \operatorname{tg} x \operatorname{tg} y = \frac{\cos(x + y)}{\cos x \cos y} \ne 0$.) $\blacksquare$

::: elmelet
**Elméleti háttér — addíciós képletek és értelmezési tartomány.** Az alapképletek:
$$\sin(x \pm y) = \sin x \cos y \pm \cos x \sin y, \qquad \cos(x \pm y) = \cos x \cos y \mp \sin x \sin y.$$
Ezekből hányadosképzéssel és „$\cos x \cos y$-nal való egyszerűsítéssel” kapjuk a tangens addíciós képletét; ugyanígy $\operatorname{tg}(x - y) = \frac{\operatorname{tg} x - \operatorname{tg} y}{1 + \operatorname{tg} x \operatorname{tg} y}$, és $y = x$-re $\operatorname{tg} 2x = \frac{2\operatorname{tg} x}{1 - \operatorname{tg}^2 x}$. Fontos a feltételek nyomon követése: a képlet csak ott érvényes, ahol mindhárom tangens értelmezett. Ha pl. $\operatorname{tg} x \operatorname{tg} y = 1$, akkor $\cos(x + y) = 0$, és a bal oldal sem létezik.
:::

## 120. feladat

Ábrázoljuk a $\sin(\arcsin x)$ és az $\arcsin(\sin x)$ függvényeket!

**Megoldás.**

**$\sin(\arcsin x)$.** Az $\arcsin : [-1, 1] \to [-\frac\pi2, \frac\pi2]$ a $\sin$ függvény $[-\frac\pi2, \frac\pi2]$-re vett leszűkítésének inverze. Ezért $\sin(\arcsin x) = x$ minden $x \in [-1, 1]$-re, és máshol nincs értelmezve. **A grafikon az $y = x$ egyenes $[-1, 1]$ feletti szakasza.**

**$\arcsin(\sin x)$.** Értelmezve van minden $x \in \mathbb{R}$-re (mert $\sin x \in [-1, 1]$), értékei $[-\frac\pi2, \frac\pi2]$-ben vannak, $2\pi$ szerint periodikus és páratlan.

- Ha $x \in [-\frac\pi2, \frac\pi2]$, akkor $\arcsin(\sin x) = x$ (az inverz definíciója).
- Ha $x \in [\frac\pi2, \frac{3\pi}2]$, akkor $\pi - x \in [-\frac\pi2, \frac\pi2]$ és $\sin(\pi - x) = \sin x$, így $\arcsin(\sin x) = \pi - x$.

Általában: ha $x \in \left[k\pi - \frac\pi2,\ k\pi + \frac\pi2\right]$ ($k \in \mathbb{Z}$), akkor $\arcsin(\sin x) = (-1)^k (x - k\pi)$, hiszen $\sin x = (-1)^k \sin(x - k\pi)$ és $x - k\pi \in [-\frac\pi2, \frac\pi2]$. **A grafikon egy „háromszöghullám”**: $\pm 1$ meredekségű szakaszokból áll, csúcsai a $\left(\frac\pi2 + 2k\pi, \frac\pi2\right)$ és a $\left(-\frac\pi2 + 2k\pi, -\frac\pi2\right)$ pontok.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.62,
  axis/.style={draw=black!60, -{Stealth[scale=0.8]}},
  graph/.style={draw=black, very thick}
]
  \begin{scope}
    \draw[axis] (-2.2, 0) -- (2.4, 0) node[right] {\footnotesize $x$};
    \draw[axis] (0, -2.2) -- (0, 2.4) node[above] {\footnotesize $y$};
    \draw[graph] (-1.5, -1.5) -- (1.5, 1.5);
    \fill (-1.5, -1.5) circle (2pt); \fill (1.5, 1.5) circle (2pt);
    \draw (1.5, 0.08) -- (1.5, -0.08) node[below] {\scriptsize $1$};
    \draw (-1.5, 0.08) -- (-1.5, -0.08) node[below] {\scriptsize $-1$};
    \draw (0.08, 1.5) -- (-0.08, 1.5) node[left] {\scriptsize $1$};
    \node at (0, -2.9) {\footnotesize $y = \sin(\arcsin x)$, $x \in [-1, 1]$};
  \end{scope}
  \begin{scope}[xshift=12cm]
    \draw[axis] (-8.2, 0) -- (8.6, 0) node[right] {\footnotesize $x$};
    \draw[axis] (0, -2.2) -- (0, 2.4) node[above] {\footnotesize $y$};
    \draw[graph] (-7.854, -1.5708) -- (-4.712, 1.5708) -- (-1.5708, -1.5708) -- (1.5708, 1.5708) -- (4.712, -1.5708) -- (7.854, 1.5708);
    \draw[draw=black!30, dashed] (-8, 1.5708) -- (8, 1.5708);
    \draw[draw=black!30, dashed] (-8, -1.5708) -- (8, -1.5708);
    \node[left] at (-8, 1.5708) {\scriptsize $\frac\pi2$};
    \node[left] at (-8, -1.5708) {\scriptsize $-\frac\pi2$};
    \foreach \x/\l in {1.5708/{\frac\pi2}, 3.1416/{\pi}, 4.712/{\frac{3\pi}2}, -3.1416/{-\pi}} {
      \draw (\x, 0.08) -- (\x, -0.08) node[below] {\scriptsize $\l$};
    }
    \node at (0, -2.9) {\footnotesize $y = \arcsin(\sin x)$};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — inverz függvény és leszűkítés.** Ha $g$ a $\sin$ $[-\frac\pi2, \frac\pi2]$-re vett leszűkítése, akkor $\arcsin = g^{-1}$, és

- $g(g^{-1}(y)) = y$ minden $y \in D(g^{-1}) = [-1, 1]$-re: ezért $\sin(\arcsin x) = x$, de **csak** $[-1, 1]$-en;
- $g^{-1}(g(x)) = x$ csak $x \in D(g) = [-\frac\pi2, \frac\pi2]$-re igaz. A teljes $\sin$-nal $\arcsin(\sin x)$ a $[-\frac\pi2, \frac\pi2]$-ből vett egyetlen olyan $t$-t adja, amelyre $\sin t = \sin x$ — ezt a $\sin$ szimmetriáival ($\sin(\pi - x) = \sin x$, $2\pi$-periodicitás) kell megtalálni.

Ugyanígy $\cos(\arccos x) = x$ ($x \in [-1, 1]$), $\arccos(\cos x) = |x|$ a $[-\pi, \pi]$-n, $2\pi$-periodikusan kiterjesztve; $\operatorname{tg}(\operatorname{arctg} x) = x$ minden valós $x$-re, és $\operatorname{arctg}(\operatorname{tg} x) = x - k\pi$, ha $x \in (k\pi - \frac\pi2, k\pi + \frac\pi2)$.
:::

## 121. feladat

Bizonyítsuk be, hogy az $x \cdot \sin x = 100$ egyenletnek végtelen sok gyöke van.

**Megoldás.**

Legyen $g(x) = x \sin x - 100$; ez folytonos $\mathbb{R}$-en. Minden $k \in \mathbb{N}$-re legyen
$$a_k = 2k\pi, \qquad b_k = 2k\pi + \frac\pi2.$$
Ekkor $g(a_k) = 2k\pi \cdot 0 - 100 = -100 < 0$, és $g(b_k) = b_k \cdot 1 - 100 = 2k\pi + \frac\pi2 - 100 > 0$, ha $k \ge 16$ (ekkor $2k\pi \ge 32\pi > 100$). A **Bolzano-tétel** szerint minden $k \ge 16$-ra van $x_k \in (a_k, b_k)$, amelyre $g(x_k) = 0$. Az $(a_k, b_k)$ intervallumok páronként diszjunktak, így az $x_k$ gyökök mind különbözők: **végtelen sok gyök van**. $\blacksquare$

(Ugyanígy minden $(2k\pi + \frac\pi2, (2k + 1)\pi)$ intervallumban is van gyök, és a páratlanság miatt negatív gyökök is vannak: $x \sin x$ páros függvény.)

::: elmelet
**Elméleti háttér — gyökök létezése a Bolzano-tétellel.** Ha $g \in C[a, b]$ és $g(a) < 0 < g(b)$ (vagy fordítva), akkor van $c \in (a, b)$, hogy $g(c) = 0$. Végtelen sok gyökhöz végtelen sok **diszjunkt** intervallum kell, amelyek végpontjaiban $g$ előjelet vált. Oszcilláló függvényeknél a természetes választás a nevezetes pontok ($\sin x = 0$, illetve $\pm 1$): itt $x \sin x$ értéke $0$, illetve $\pm x$, és ez utóbbi abszolút értéke $\to \infty$, tehát előbb-utóbb minden korlátot (itt $100$-at) átlép.
:::

## 122. feladat

Bizonyítsuk be, hogy

a) $\arcsin x = \arccos \sqrt{1 - x^2}$, $x \in [0, 1]$,

b) $\operatorname{arctg} x = \arcsin \dfrac{x}{\sqrt{1 + x^2}}$, $x \in \mathbb{R}$.

**Megoldás.**

A módszer: a bal oldal értéke egy $\alpha$ szög; kiszámoljuk, hogy a jobb oldali függvény „belseje” $\alpha$-nak melyik szögfüggvénye, és ellenőrizzük, hogy $\alpha$ a jobb oldali arkusz függvény értékkészletében van.

a) Legyen $x \in [0, 1]$ és $\alpha = \arcsin x$. Ekkor $\sin \alpha = x \ge 0$ és $\alpha \in [-\frac\pi2, \frac\pi2]$, így $\alpha \in [0, \frac\pi2]$. Itt $\cos \alpha \ge 0$, tehát
$$\cos \alpha = \sqrt{1 - \sin^2 \alpha} = \sqrt{1 - x^2}.$$
Mivel $\alpha \in [0, \frac\pi2] \subseteq [0, \pi]$, és $\arccos$ a $\cos$ $[0, \pi]$-re vett leszűkítésének inverze, $\arccos \sqrt{1 - x^2} = \arccos(\cos \alpha) = \alpha = \arcsin x$. $\blacksquare$

(A feltétel lényeges: $x \in [-1, 0)$-ra a bal oldal negatív, a jobb oldal nemnegatív, ott $\arcsin x = -\arccos\sqrt{1 - x^2}$.)

b) Legyen $x \in \mathbb{R}$ és $\alpha = \operatorname{arctg} x \in (-\frac\pi2, \frac\pi2)$. Ekkor $\operatorname{tg} \alpha = x$ és $\cos \alpha > 0$. Az $1 + \operatorname{tg}^2 \alpha = \frac{\sin^2\alpha + \cos^2\alpha}{\cos^2 \alpha} = \frac{1}{\cos^2 \alpha}$ azonosságból
$$\cos \alpha = \frac{1}{\sqrt{1 + x^2}}, \qquad \sin \alpha = \operatorname{tg} \alpha \cdot \cos \alpha = \frac{x}{\sqrt{1 + x^2}}.$$
Mivel $\alpha \in (-\frac\pi2, \frac\pi2) \subseteq [-\frac\pi2, \frac\pi2]$, $\arcsin \frac{x}{\sqrt{1 + x^2}} = \arcsin(\sin \alpha) = \alpha = \operatorname{arctg} x$. $\blacksquare$

::: elmelet
**Elméleti háttér — az arkusz függvények értékkészlete.** $\arcsin : [-1, 1] \to [-\frac\pi2, \frac\pi2]$, $\arccos : [-1, 1] \to [0, \pi]$, $\operatorname{arctg} : \mathbb{R} \to (-\frac\pi2, \frac\pi2)$. Egy $\operatorname{arc} h(y) = \alpha$ egyenlőség igazolásához két dolog kell: (1) $h(\alpha) = y$, és (2) $\alpha$ a megfelelő értékkészletben van. A $\sqrt{1 - \sin^2}$ típusú átírásoknál az előjel a szög helyétől függ ($\cos \alpha \ge 0 \iff \alpha \in [-\frac\pi2, \frac\pi2]$ a $[-\pi, \pi]$-n belül) — ezért kellett a)-ban az $x \ge 0$ feltétel. Hasonló azonosságok: $\arcsin x + \arccos x = \frac\pi2$, $\operatorname{arctg} x + \operatorname{arctg}\frac1x = \frac\pi2$ ($x > 0$).
:::

## 123. feladat

Bizonyítsuk be, hogy $\log_a(x/y) = (\log_a x) - \log_a y$.

**Megoldás.**

Legyen $a > 0$, $a \ne 1$ és $x, y > 0$. A $\log_a$ az $a^t$ ($t \in \mathbb{R}$) függvény inverze: $\log_a z$ az az egyetlen $t$, amelyre $a^t = z$. Legyen $u = \log_a x$ és $v = \log_a y$, azaz $a^u = x$, $a^v = y$. A hatványozás azonossága ($a^{s + t} = a^s a^t$) szerint $a^{u - v} \cdot a^v = a^u$, így
$$a^{u - v} = \frac{a^u}{a^v} = \frac{x}{y}.$$
Mivel $a^t$ szigorúan monoton, tehát injektív, ebből $\log_a \frac xy = u - v = \log_a x - \log_a y$. $\blacksquare$

::: elmelet
**Elméleti háttér — a logaritmus azonosságai a hatványozáséiból.** A $t \mapsto a^t$ ($a > 0$, $a \ne 1$) szigorúan monoton, folytonos bijekció $\mathbb{R}$ és $(0, \infty)$ között; inverze a $\log_a$. A hatványozás azonosságai ($a^{s + t} = a^s a^t$, $a^{-t} = \frac{1}{a^t}$, $(a^s)^t = a^{st}$) az inverzen keresztül a logaritmus azonosságaivá alakulnak: $\log_a(xy) = \log_a x + \log_a y$, $\log_a \frac xy = \log_a x - \log_a y$, $\log_a x^b = b \log_a x$, és $\log_a x = \frac{\log x}{\log a}$. A módszer mindig ugyanaz: mindkét oldalt $a$ kitevőjébe írjuk, és az injektivitást használjuk.
:::

## 124*. feladat

Bizonyítsuk be, hogy ha $n$ pozitív egész, akkor $\cos nx$ felírható mint $\cos x$ $n$-edfokú polinomja, azaz létezik egy $T_n$ $n$-edfokú polinom úgy, hogy $\cos nx = T_n(\cos x)$ minden $x$-re.

**Megoldás.**

**Egy rekurzió.** Az addíciós képletek szerint
$$\cos((n + 1)x) = \cos nx \cos x - \sin nx \sin x, \qquad \cos((n - 1)x) = \cos nx \cos x + \sin nx \sin x.$$
Összeadva:
$$\cos((n + 1)x) = 2\cos x \cos nx - \cos((n - 1)x).$$

**A polinomok.** Legyen $T_0(t) = 1$, $T_1(t) = t$, és $n \ge 1$-re
$$T_{n+1}(t) = 2t\,T_n(t) - T_{n-1}(t).$$
Teljes indukcióval megmutatjuk, hogy minden $n \ge 0$-ra $\cos nx = T_n(\cos x)$, és $n \ge 1$-re $T_n$ $n$-edfokú, $2^{n-1}$ főegyütthatóval.

- $n = 0, 1$: $\cos 0 = 1 = T_0(\cos x)$, $\cos x = T_1(\cos x)$; $T_1$ elsőfokú, főegyütthatója $1 = 2^0$.
- Ha az állítás $n - 1$-re és $n$-re igaz ($n \ge 1$), akkor a rekurzió szerint
$$\cos((n + 1)x) = 2\cos x\, T_n(\cos x) - T_{n-1}(\cos x) = T_{n+1}(\cos x).$$
A $2t\,T_n(t)$ polinom $(n + 1)$-edfokú, főegyütthatója $2 \cdot 2^{n-1} = 2^n$, a $T_{n-1}$ foka legfeljebb $n - 1$, így nem befolyásolja a főtagot: $T_{n+1}$ $(n + 1)$-edfokú, főegyütthatója $2^n$. $\blacksquare$

Az első néhány polinom:
$$T_2(t) = 2t^2 - 1, \quad T_3(t) = 4t^3 - 3t, \quad T_4(t) = 8t^4 - 8t^2 + 1,$$
vagyis pl. $\cos 2x = 2\cos^2 x - 1$, $\cos 3x = 4\cos^3 x - 3\cos x$.

::: elmelet
**Elméleti háttér — a Csebisev-polinomok.** A $T_n$ polinomok a **Csebisev-polinomok**. A $\cos((n+1)x) + \cos((n-1)x) = 2\cos x \cos nx$ azonosság (szorzattá alakítás) egy másodrendű lineáris rekurziót ad, amely a polinomok fokát egyesével növeli. Tulajdonságaik: $|T_n(t)| \le 1$ a $[-1, 1]$-en, ott $n + 1$ helyen veszik fel a $\pm 1$ értéket; $T_n$ paritása $n$ paritásával egyezik. A $\sin nx$ hasonlóan nem polinomja $\sin x$-nek, de $\frac{\sin((n+1)x)}{\sin x}$ már polinomja $\cos x$-nek (másodfajú Csebisev-polinomok). Komplex számokkal: $\cos nx = \operatorname{Re}(\cos x + i\sin x)^n$, és a binomiális tétel után $\sin^2 x = 1 - \cos^2 x$ helyettesítéssel közvetlenül is adódik $T_n$.
:::

## 125. feladat

Vezessük le az $\operatorname{sh}(x \pm y) = \operatorname{sh} x \operatorname{ch} y \pm \operatorname{ch} x \operatorname{sh} y$ és az $\operatorname{ch}(x \pm y) = \operatorname{ch} x \operatorname{ch} y \pm \operatorname{sh} x \operatorname{sh} y$ addíciós képleteket.

**Megoldás.**

Definíció szerint $\operatorname{sh} x = \frac{e^x - e^{-x}}{2}$, $\operatorname{ch} x = \frac{e^x + e^{-x}}{2}$. Számoljuk ki a jobb oldalakat (a $+$ előjellel):
$$\operatorname{sh} x \operatorname{ch} y + \operatorname{ch} x \operatorname{sh} y = \frac{(e^x - e^{-x})(e^y + e^{-y}) + (e^x + e^{-x})(e^y - e^{-y})}{4}.$$
A számlálóban:
$$\left(e^{x+y} + e^{x-y} - e^{-x+y} - e^{-x-y}\right) + \left(e^{x+y} - e^{x-y} + e^{-x+y} - e^{-x-y}\right) = 2e^{x+y} - 2e^{-(x+y)},$$
tehát az összeg $\frac{e^{x+y} - e^{-(x+y)}}{2} = \operatorname{sh}(x + y)$. Hasonlóan
$$\operatorname{ch} x \operatorname{ch} y + \operatorname{sh} x \operatorname{sh} y = \frac{(e^x + e^{-x})(e^y + e^{-y}) + (e^x - e^{-x})(e^y - e^{-y})}{4},$$
a számláló
$$\left(e^{x+y} + e^{x-y} + e^{-x+y} + e^{-x-y}\right) + \left(e^{x+y} - e^{x-y} - e^{-x+y} + e^{-x-y}\right) = 2e^{x+y} + 2e^{-(x+y)},$$
tehát az összeg $\operatorname{ch}(x + y)$.

**A $-$ előjelű képletek** $y$ helyére $-y$-t írva adódnak, mert $\operatorname{sh}$ páratlan ($\operatorname{sh}(-y) = -\operatorname{sh} y$) és $\operatorname{ch}$ páros ($\operatorname{ch}(-y) = \operatorname{ch} y$):
$$\operatorname{sh}(x - y) = \operatorname{sh} x \operatorname{ch} y - \operatorname{ch} x \operatorname{sh} y, \qquad \operatorname{ch}(x - y) = \operatorname{ch} x \operatorname{ch} y - \operatorname{sh} x \operatorname{sh} y. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — hiperbolikus függvények.** $\operatorname{sh}$ és $\operatorname{ch}$ az $e^x$ páratlan, illetve páros része: $e^x = \operatorname{ch} x + \operatorname{sh} x$, $e^{-x} = \operatorname{ch} x - \operatorname{sh} x$; szorozva: $\operatorname{ch}^2 x - \operatorname{sh}^2 x = 1$ (ezért „hiperbolikus”: a $(\operatorname{ch} t, \operatorname{sh} t)$ pont az $x^2 - y^2 = 1$ hiperbolán fut). Az addíciós képletek egy rövidebb levezetése: $e^{x+y} = e^x e^y = (\operatorname{ch} x + \operatorname{sh} x)(\operatorname{ch} y + \operatorname{sh} y)$, és a páros, illetve páratlan részeket szétválasztva (az $x, y \to -x, -y$ cserére nézve) kapjuk $\operatorname{ch}(x + y)$-t és $\operatorname{sh}(x + y)$-t. A képletek a trigonometrikusak megfelelői, a $\operatorname{ch}$-nál előjelváltással ($\cos(x + y) = \cos x \cos y - \sin x \sin y$).
:::

## 126. feladat

Mutassuk meg, hogy $\operatorname{arsh}(x) = \log\left(x + \sqrt{x^2 + 1}\right)$ és $\operatorname{arch} x = \log\left(x + \sqrt{x^2 - 1}\right)$.

**Megoldás.**

(Itt $\log$ a természetes alapú logaritmus.)

**$\operatorname{arsh}$.** Az $\operatorname{sh} : \mathbb{R} \to \mathbb{R}$ szigorúan monoton nő ($e^x$ nő, $e^{-x}$ fogy) és folytonos, $\lim_{\pm\infty} \operatorname{sh} = \pm\infty$, tehát bijekció; inverze az $\operatorname{arsh}$. Legyen $y \in \mathbb{R}$; keressük azt az $x$-et, amelyre $\operatorname{sh} x = y$:
$$\frac{e^x - e^{-x}}{2} = y \iff e^{2x} - 2y\,e^x - 1 = 0.$$
Az $u = e^x > 0$ helyettesítéssel $u^2 - 2yu - 1 = 0$, ennek gyökei $u = y \pm \sqrt{y^2 + 1}$. A két gyök szorzata $-1$, tehát pontosan egy pozitív van: $u = y + \sqrt{y^2 + 1}$ (ez pozitív, mert $\sqrt{y^2 + 1} > |y|$). Így $x = \log\left(y + \sqrt{y^2 + 1}\right)$, azaz
$$\operatorname{arsh} y = \log\left(y + \sqrt{y^2 + 1}\right), \qquad y \in \mathbb{R}.$$

**$\operatorname{arch}$.** A $\operatorname{ch}$ nem injektív (páros), ezért a $[0, \infty)$-re vett leszűkítését invertáljuk: ott szigorúan monoton nő, folytonos, $\operatorname{ch} 0 = 1$, $\lim_{\infty} \operatorname{ch} = \infty$, tehát $[0, \infty) \to [1, \infty)$ bijekció; inverze $\operatorname{arch} : [1, \infty) \to [0, \infty)$. Legyen $y \ge 1$; keressük azt az $x \ge 0$-t, amelyre $\operatorname{ch} x = y$:
$$e^{2x} - 2y\,e^x + 1 = 0 \iff u^2 - 2yu + 1 = 0, \quad u = e^x.$$
A gyökök $u = y \pm \sqrt{y^2 - 1}$; mindkettő pozitív, szorzatuk $1$. Mivel $x \ge 0 \iff u = e^x \ge 1$, a nagyobbik gyök kell: $u = y + \sqrt{y^2 - 1} \ge 1$ (a kisebbik ennek reciproka, $\le 1$). Tehát
$$\operatorname{arch} y = \log\left(y + \sqrt{y^2 - 1}\right), \qquad y \ge 1. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — inverz függvény képlete egyenletmegoldással.** Ha $f$ egy intervallumon szigorúan monoton és folytonos, akkor inverze is az (az inverz függvény folytonosságáról szóló tétel), és képletét az $f(x) = y$ egyenlet $x$-re való megoldása adja. Exponenciális kifejezéseknél az $u = e^x$ helyettesítés másodfokú egyenletre vezet; a két gyök közül a feltételeknek ($u > 0$, illetve a leszűkítés miatt $u \ge 1$) megfelelőt kell kiválasztani. A Viète-formulák (gyökök szorzata) gyorsan megmutatják, melyik a jó gyök. Hasonlóan: $\operatorname{arth} x = \frac12 \log\frac{1 + x}{1 - x}$ ($|x| < 1$).
:::
