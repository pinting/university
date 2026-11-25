# Analízis 1 – 17. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 173. feladat

Határozzuk meg az összes olyan függvényt, amelyre $f^{(6)}(x) = 0$ teljesül $\forall x \in \mathbb{R}$-re.

**Megoldás.**

Alkalmazzuk hatszor egymás után azt a tételt (a Lagrange-féle középértéktétel következményét), amely szerint ha egy $g$ függvény deriváltja egy intervallumon azonosan $0$, akkor $g$ konstans azon az intervallumon (itt $I = \mathbb{R}$):

- $f^{(6)}(x) = 0 \implies f^{(5)}(x) = c_5$ (konstans).
- $(f^{(4)}(x) - c_5 x)' = f^{(5)}(x) - c_5 = 0 \implies f^{(4)}(x) = c_5 x + c_4$.
- $(f'''(x) - \frac{c_5}{2}x^2 - c_4 x)' = 0 \implies f'''(x) = \frac{c_5}{2}x^2 + c_4 x + c_3$.
- Folytatva ugyanezt az integrálási láncot $f''$-re, $f'$-re és végül $f$-re: minden előző lépés egyetlen primitív polinomja adódik hozzá egy tetszőleges új konstanssal, így
  $$f(x) = a_5 x^5 + a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0 \qquad (a_0, a_1, \dots, a_5 \in \mathbb{R}),$$
  vagyis $f$ legfeljebb $5$-ödfokú valós polinom.

Megfordítva, bármely legfeljebb $5$-ödfokú polinom $6$-odik deriváltja nyilván azonosan $0$ $\mathbb{R}$-en.

**Válasz:** Az összes legfeljebb $5$-ödfokú valós együtthatós polinom: $\displaystyle f(x) = \sum_{k=0}^{5} a_k x^k$ ($a_k \in \mathbb{R}$).

::: elmelet
**Elméleti háttér — azonosan eltűnő $n$-edik derivált.** Egy $I$ intervallumon pontosan az legfeljebb $(n - 1)$-edfokú polinomokra teljesül, hogy $f^{(n)} \equiv 0$. A bizonyítás kulcsa a Lagrange-tételből nyert konstanssági kritérium ($g' \equiv 0$ intervallumon $\implies g$ konstans) indukciós alkalmazása.
:::

---

## 174. feladat

$$\left(\frac{1}{x^2 - 1}\right)^{(20)} = \ ?$$

**Megoldás.**

Értelmezési tartomány: $x \in \mathbb{R} \setminus \{-1, 1\}$. Bontsuk a racionális törtfüggvényt parciális törtekre:

$$\frac{1}{x^2 - 1} = \frac{1}{(x - 1)(x + 1)} = \frac{1}{2}\left(\frac{1}{x - 1} - \frac{1}{x + 1}\right) = \frac{1}{2}\Big((x - 1)^{-1} - (x + 1)^{-1}\Big).$$

Teljes indukcióval könnyen igazolható, hogy tetszőleges $c \in \mathbb{R}$ és $n \in \mathbb{N}$ esetén ($x \neq c$):
$$\frac{d^n}{dx^n}\big((x - c)^{-1}\big) = (-1)^n \cdot n! \cdot (x - c)^{-(n+1)}.$$
*(Valóban, $n=0$-ra $(x-c)^{-1}$; az $n$-ről $(n+1)$-re való áttéréskor a szorzó $(-n-1)$ adja a $(-1)$ előjelet és a $(n+1)!$ faktoriálist.)*

A deriválás linearitása miatt $n = 20$-ra ($ (-1)^{20} = 1$):

$$\left(\frac{1}{x^2 - 1}\right)^{(20)} = \frac{1}{2}\cdot 20!\left(\frac{1}{(x - 1)^{21}} - \frac{1}{(x + 1)^{21}}\right) = \mathbf{\frac{20!}{2} \cdot \frac{(x + 1)^{21} - (x - 1)^{21}}{(x^2 - 1)^{21}}}.$$

::: elmelet
**Elméleti háttér — parciális törtek és magasabb rendű deriváltak.** Racionális függvény $n$-edik deriváltját nem hányadosszabállyal számoljuk ki $n$-szer (az exponenciálisan szétágazna), hanem parciális törtekre bontás után minden $\frac{1}{(x - c)^k}$ alakú alaptagot az ismert hatványszabállyal külön-külön deriválunk.
:::

---

## 175. feladat

$$(\sin 5x \cos 2x)^{(4)} = \ ?$$

**Megoldás.**

Alkalmazzuk először a szorzat-összeg trigonometrikus azonosságot ($\sin\alpha\cos\beta = \frac{1}{2}[\sin(\alpha+\beta) + \sin(\alpha-\beta)]$):

$$\sin 5x \cos 2x = \frac{1}{2}\big(\sin 7x + \sin 3x\big).$$

Tudjuk, hogy $\sin(kx)$ egymást követő deriváltjai $4$-es periódussal ismétlődnek:
- $(\sin(kx))' = k\cos(kx)$,
- $(\sin(kx))'' = -k^2\sin(kx)$,
- $(\sin(kx))''' = -k^3\cos(kx)$,
- $(\sin(kx))^{(4)} = k^4\sin(kx)$.

A deriválás linearitásával:

$$(\sin 5x \cos 2x)^{(4)} = \frac{1}{2}\big(7^4 \sin 7x + 3^4 \sin 3x\big) = \mathbf{\frac{2401}{2}\sin 7x + \frac{81}{2}\sin 3x}.$$

::: elmelet
**Elméleti háttér — trigonometrikus szorzatok $n$-edik deriváltja.** Bár a Leibniz-szabály is használható volna, a trigonometrikus azonosságokkal történő összegalakba írás sokkal egyszerűbb, mert a $\sin(kx)$ függvények $4$-szeri deriválásra csupán $k^4$-nel szorzódva visszatérnek önmagukba: $(\sin(kx))^{(n)} = k^n \sin\left(kx + \frac{n\pi}{2}\right)$.
:::

---

## 176. feladat

Adjuk meg a $g(x) = x \cdot e^{-x}$ függvény $n$-edik deriváltját, $g^{(n)}(x)$-et.

**Megoldás.**

Használjuk a Leibniz-szabályt ($n \ge 1$, de az eredmény $n = 0$-ra is érvényes) az $u(x) = x$ és $v(x) = e^{-x}$ tényezőkre:
$$g^{(n)}(x) = \sum_{k=0}^{n} \binom{n}{k} u^{(k)}(x) \, v^{(n-k)}(x).$$

Mivel $u^{(0)}(x) = x$, $u^{(1)}(x) = 1$, és minden $k \ge 2$ esetén $u^{(k)}(x) = 0$, az összegben csupán az első két tag marad meg ($k = 0$ és $k = 1$). Továbbá $v^{(m)}(x) = (-1)^m e^{-x}$, ezért:

$$\begin{aligned}
g^{(n)}(x) &= \binom{n}{0} \cdot x \cdot (-1)^n e^{-x} + \binom{n}{1} \cdot 1 \cdot (-1)^{n-1} e^{-x} \\
&= (-1)^n x e^{-x} - n(-1)^n e^{-x} \\
&= \mathbf{(-1)^n (x - n) e^{-x}} \qquad (n \in \mathbb{N}).
\end{aligned}$$

*(Ellenőrzés: $n = 0 \implies x e^{-x}$; $n = 1 \implies -(x-1)e^{-x} = (1-x)e^{-x}$; $n = 2 \implies (x-2)e^{-x}$.)*

::: elmelet
**Elméleti háttér — csonkolt Leibniz-formula.** Ha egy $p(x) \cdot v(x)$ szorzatban $p$ alacsony fokú polinom (itt elsőfokú), a Leibniz-formula $\sum_{k=0}^n \binom{n}{k} p^{(k)} v^{(n-k)}$ mindössze $\deg p + 1$ tagra zsugorodik, függetlenül attól, mekkora $n$.
:::

---

## 177. feladat

Vizsgáljuk meg konvexitás szempontjából az $f(x) = x^4 + x^3 - 18x^2 + 24x - 12$ és a $g(x) = 2 - |x^5 - 1|$ függvényeket.

**Megoldás.**

### 1. $f(x) = x^4 + x^3 - 18x^2 + 24x - 12$

A függvény kétszer (sőt akárhányszor) differenciálható $\mathbb{R}$-en:
$$f'(x) = 4x^3 + 3x^2 - 36x + 24,$$
$$f''(x) = 12x^2 + 6x - 36 = 6(2x^2 + x - 6) = 6(2x - 3)(x + 2).$$

Az $f''$ zérushelyei: $x_1 = -2$ és $x_2 = \frac{3}{2}$. A másodfokú kifejezés főegyütthatója pozitív, ezért:
- $x \in (-\infty, -2)$ esetén $f''(x) > 0$,
- $x \in \left(-2, \frac{3}{2}\right)$ esetén $f''(x) < 0$,
- $x \in \left(\frac{3}{2}, +\infty\right)$ esetén $f''(x) > 0$.

Mivel $f$ folytonos $\mathbb{R}$-en:
- **$f$ szigorúan konvex** a $(-\infty, -2]$ és a $\left[\frac{3}{2}, +\infty\right)$ intervallumokon.
- **$f$ szigorúan konkáv** a $\left[-2, \frac{3}{2}\right]$ intervallumon.
- **Inflexiós pontok:** $x_1 = -2$ (ahol $f(-2) = 16 - 8 - 72 - 48 - 12 = -124$) és $x_2 = \frac{3}{2}$ (ahol $f\left(\frac{3}{2}\right) = \frac{81}{16} + \frac{27}{8} - \frac{81}{2} + 36 - 12 = -\frac{129}{16}$).

---

### 2. $g(x) = 2 - |x^5 - 1|$

Vizsgáljuk az abszolút érték előjelváltását ($x^5 - 1 = 0 \iff x = 1$):
$$g(x) = \begin{cases} x^5 + 1, & \text{ha } x \le 1, \\ 3 - x^5, & \text{ha } x \ge 1. \end{cases}$$

A két nyílt intervallumon külön-külön kétszer differenciálható:
- Ha $x < 1$: $g'(x) = 5x^4$, $g''(x) = 20x^3$.
  - $x \in (-\infty, 0)$ esetén $g''(x) < 0$,
  - $x \in (0, 1)$ esetén $g''(x) > 0$.
- Ha $x > 1$: $g'(x) = -5x^4$, $g''(x) = -20x^3 < 0$.

Így a konvexitási intervallumok:
- **$g$ szigorúan konkáv** a $(-\infty, 0]$ és a $[1, +\infty)$ intervallumokon.
- **$g$ szigorúan konvex** a $[0, 1]$ intervallumon.

Vizsgáljuk a határpontokat:
- **$x = 0$:** itt $g'(0) = 0$ létezik, és a függvény görbülete a $0$-ban konkávból konvexbe vált át ($g''$ előjelet vált), tehát **$(0, 1)$ inflexiós pont**.
- **$x = 1$:** bár itt is görbületváltás látható ($[0, 1]$-en konvex, $[1, +\infty)$-en konkáv), a bal és jobb oldali derivált eltér:
  $$g'_-(1) = \lim_{x \to 1^-} 5x^4 = 5 \neq -5 = \lim_{x \to 1^+} (-5x^4) = g'_+(1).$$
  Mivel $x = 1$-ben **nem létezik** $g'(1)$ (éles töréspont, lokális maximumhely), a definíció szerint $x = 1$ **nem inflexiós pont**. (És sem $1$-et tartalmazó nyílt intervallumon nem konvex/konkáv, hiszen például $g(1) = 2 > \frac{g(0{,}5) + g(1{,}5)}{2}$, miközben a meredekségek is csökkennek $5$-ről $-5$-re, viszont $0$ és $1$ között már konvex.)

::: elmelet
**Elméleti háttér — inflexiós pont feltétele és töréspontok.** Az előadáson tanult definíció szerint az $a$ pont akkor *inflexiós hely*, ha $f$-nek létezik (véges vagy végtelen) deriváltja $a$-ban, és az $a$ két oldalán a konvexitás és konkávitás felváltja egymást. Töréspontban ($f'_-(a) \neq f'_+(a)$) még akkor sincs inflexiós pont, ha a két oldalon különböző a görbület előjele!
:::

---

## 178*. feladat

Legyen $f$ differenciálható $a$ egy pontozott környezetében és legyen $\displaystyle\lim_{x \to a} \frac{f(x) - f(a)}{x - a} = \infty$. Következik-e ebből, hogy $\displaystyle\lim_{x \to a} f'(x) = \infty$?

**Megoldás.**

**Nem következik!** (Bár az $f$-nek létezik végtelen deriváltja az $a$ pontban, $f'$ a pont környezetében akár erősen oszcillálhat is.)

Adjunk ellenpéldát $a = 0$ esetén! Legyen:
$$f(x) = \begin{cases} \sqrt[3]{x} + x^2 \sin\left(\dfrac{1}{x^2}\right), & \text{ha } x \neq 0, \\ 0, & \text{ha } x = 0. \end{cases}$$

Ellenőrizzük a feltételeket és az állítást:
1. **Differenciálhatóság $\mathbb{R} \setminus \{0\}$-ban:** Mind a $\sqrt[3]{x} = x^{1/3}$ ($x \neq 0$-ra), mind az $x^2 \sin(1/x^2)$ függvény differenciálható a $0$ egy pontozott környezetében (sőt minden $x \neq 0$-ra):
   $$f'(x) = \frac{1}{3}x^{-2/3} + 2x\sin\left(\frac{1}{x^2}\right) - \frac{2}{x}\cos\left(\frac{1}{x^2}\right) \qquad (x \neq 0).$$
2. **A különbségi hányados határértéke $x \to 0$-ban:**
   $$\frac{f(x) - f(0)}{x - 0} = \frac{x^{1/3}}{x} + x\sin\left(\frac{1}{x^2}\right) = x^{-2/3} + x\sin\left(\frac{1}{x^2}\right) \longrightarrow +\infty \quad (x \to 0),$$
   hiszen $x^{-2/3} = \frac{1}{\sqrt[3]{x^2}} \to +\infty$, míg $\left|x\sin\left(\frac{1}{x^2}\right)\right| \le |x| \to 0$. Tehát a feltétel teljesül ($\infty$, pontosabban $+\infty$ értelemben).
3. **Az $f'(x)$ határértékének nemlétezése:** Válasszuk a $0$-hoz tartó pozitív sorozatokat:
   - Ha $x_k = \frac{1}{\sqrt{2k\pi}} \to 0^+$ ($k \ge 1$), akkor $\cos(1/x_k^2) = 1$, $\sin(1/x_k^2) = 0$, ezért
     $$f'(x_k) = \frac{1}{3}(2k\pi)^{1/3} - 2\sqrt{2k\pi} \longrightarrow -\infty \qquad (k \to \infty).$$
   - Ha $y_k = \frac{1}{\sqrt{(2k+1)\pi}} \to 0^+$ ($k \ge 1$), akkor $\cos(1/y_k^2) = -1$, $\sin(1/y_k^2) = 0$, ezért
     $$f'(y_k) = \frac{1}{3}\big((2k+1)\pi\big)^{1/3} + 2\sqrt{(2k+1)\pi} \longrightarrow +\infty \qquad (k \to \infty).$$
   Ráadásul mivel $f'$ folytonos az $(y_k, x_k)$ intervallumon és a végpontokban ellentétes előjelű nagy $k$-ra, a Bolzano-tétel szerint létezik $z_k \in (y_k, x_k)$ ($z_k \to 0$) is, amelyre $f'(z_k) = 0$!

Következésképpen $\displaystyle\lim_{x \to 0} f'(x)$ **nem létezik** (sem véges, sem $+\infty$, sem $\infty$ határérték nem áll fenn).

::: elmelet
**Elméleti háttér — $f'(a)$ és $\lim_{x \to a} f'(x)$ kapcsolata.** A különbségi hányados határértéke ($+\infty$) az $x^{1/3}$ főtag miatt jön létre, miközben a kicsi amplitúdójú, de gyorsan oszcilláló $x^2 \sin(1/x^2)$ tag deriváltja ($-\frac{2}{x}\cos(1/x^2)$) $1/x$ rendben felülírja az $x^{-2/3}$-ot. (Ez rokon azzal az ismert ténnyel, hogy egy mindenütt differenciálható függvény deriváltja sem feltétlenül folytonos, pl. $x^2 \sin(1/x^2)$ a $0$-ban.) Ha viszont $\lim_{x\to a} f'(x) = \infty$ *létezik*, akkor a L'Hospital-szabály / Lagrange-tétel miatt a különbségi hányados is $\infty$-hez tart — fordítva tehát nem igaz!
:::

---

## 179. feladat

Bizonyítsuk be, hogy $e^x + e^{-x} \ge 2 + x^2$ ha $x \in \mathbb{R}$.

**Megoldás.**

**1. megoldás (Taylor-sorfejtéssel):**

Mind $e^x$, mind $e^{-x}$ minden valós $x$-re előáll a Maclaurin-sorának összegeként:
$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots,$$
$$e^{-x} = \sum_{n=0}^{\infty} (-1)^n \frac{x^n}{n!} = 1 - x + \frac{x^2}{2!} - \frac{x^3}{3!} + \frac{x^4}{4!} - \dots$$
A két konvergens sort tagonként összeadva a páratlan hatványok kiesnek, a páros hatványok megduplázódnak:
$$e^x + e^{-x} = 2\sum_{k=0}^{\infty} \frac{x^{2k}}{(2k)!} = 2\left(1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \frac{x^6}{6!} + \dots\right) = 2 + x^2 + 2\sum_{k=2}^{\infty} \frac{x^{2k}}{(2k)!}.$$
Mivel minden $k \ge 2$-re $\frac{x^{2k}}{(2k)!} \ge 0$, ezért $e^x + e^{-x} \ge 2 + x^2$ minden $x \in \mathbb{R}$-re. $\blacksquare$

**2. megoldás (monotonitással és második deriválttal):**

Legyen $h(x) = e^x + e^{-x} - 2 - x^2$ ($x \in \mathbb{R}$). Mivel $h(-x) = h(x)$, a függvény páros, így elég az egyenlőtlenséget $x \ge 0$-ra igazolni. Számoljuk ki a deriváltakat:
- $h(0) = 1 + 1 - 2 - 0 = 0$,
- $h'(x) = e^x - e^{-x} - 2x$, innen $h'(0) = 0$,
- $h''(x) = e^x + e^{-x} - 2 = \left(e^{x/2} - e^{-x/2}\right)^2 \ge 0$ minden $x \in \mathbb{R}$-re.

Így $h'$ monoton növekvő $[0, +\infty)$-en, tehát $x \ge 0$-ra $h'(x) \ge h'(0) = 0$. Emiatt $h$ is monoton növekvő $[0, +\infty)$-en, következésképpen $h(x) \ge h(0) = 0$ minden $x \ge 0$-ra (és paritásnál fogva minden $x \in \mathbb{R}$-re). $\blacksquare$

::: elmelet
**Elméleti háttér — $\operatorname{ch} x \ge 1 + \frac{x^2}{2}$.** Az egyenlőtlenség $2$-vel való osztása után pontosan a $\operatorname{ch} x = \frac{e^x + e^{-x}}{2} \ge 1 + \frac{x^2}{2}$ alsó becslést adja a koszinusz hiperbolikuszra. Mind a Taylor-sor pozitív páros tagjai, mind a kétszeres integrálás (deriváltakkal való monotonitási lánc) az egyenlőtlenségek bizonyításának két alapvető eszköze.
:::

---

## 180. feladat

Vázoljuk az $f$ függvény grafikonját az $x = -1$ pont környezetében, ha tudjuk, hogy $f(-1) = 2$, $f'(-1) = -1$, $f''(-1) = 0$, $f'''(x) > 0$, $x \in \mathbb{R}$.

**Megoldás.**

Elemezzük a megadott feltételek geometriai tartalmát:
1. **Pont és érintő:** $f(-1) = 2$ miatt a görbe áthalad a $(-1; 2)$ ponton. Az $f'(-1) = -1$ érték azt jelenti, hogy a $(-1; 2)$ pontban húzott érintő meredeksége $-1$, egyenlete:
   $$y = f(-1) + f'(-1)(x + 1) = 2 - (x + 1) = 1 - x.$$
   Mivel $f'(-1) = -1 < 0$ és $f'$ folytonos, $x = -1$ egy megfelelően kis környezetében $f'(x) < 0$, tehát az **$f$ szigorúan csökken** $-1$ közelében.
2. **Görbület ($f''$ előjele és inflexiós pont):** Tudjuk, hogy $f'''(x) = (f'')'(x) > 0$ minden $x \in \mathbb{R}$-re, ezért $f''$ szigorúan monoton növekvő $\mathbb{R}$-en. Mivel $f''(-1) = 0$:
   - Ha $x < -1$, akkor $f''(x) < f''(-1) = 0$, vagyis $f$ **szigorúan konkáv** a $(-\infty, -1]$ intervallumon (a grafikon az érintő **alatt** halad).
   - Ha $x > -1$, akkor $f''(x) > f''(-1) = 0$, vagyis $f$ **szigorúan konvex** a $[-1, +\infty)$ intervallumon (a grafikon az érintő **fölött** halad).

Tehát az $x = -1$ helyen az $f$-nek **inflexiós pontja** van: a grafikon $x = -1$-nél $-1$ meredekséggel keresztezi az érintőjét, balról nézve konkáv módon alulról közelít az érintőhöz, majd jobbra átlép fölé és konvexté válik. *(Megjegyzés: $f'(-1) = -1$ egyúttal $f'$ globális minimuma is, így távolabb $-1$-től $f'$ akár pozitívvá is válhat.)*

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.05,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-3, -0.5) grid (1.5, 4.5);
  \draw[axis] (-3.1, 0) -- (1.7, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -0.6) -- (0, 4.7) node[above] {\footnotesize $y$};
  \foreach \x in {-3, -2, -1, 1} {
    \draw (\x, 0.07) -- (\x, -0.07) node[below] {\scriptsize $\x$};
  }
  \foreach \y in {1, 2, 3, 4} {
    \draw (0.07, \y) -- (-0.07, \y) node[left] {\scriptsize $\y$};
  }
  % Erinto y = 1 - x
  \draw[dashed, black!70, thick] (-2.6, 3.6) -- (1.1, -0.1) node[right] {\scriptsize érintő: $y = 1 - x$};
  % Mintagorbe: f(x) = 2 - (x+1) + 0.45*(x+1)^3
  \draw[draw=blue!80!black, very thick, domain=-2.45:0.45, samples=80]
    plot (\x, {2 - (\x + 1) + 0.45*(\x + 1)*(\x + 1)*(\x + 1)});
  \draw[dotted, black!50] (-1, 0) -- (-1, 2) -- (0, 2);
  \fill[green!55!black] (-1.07, 1.93) rectangle (-0.93, 2.07);
  \node[above right] at (-1, 2.05) {\scriptsize Infl. $(-1; 2)$};
  \node[above] at (-2.1, 1.55) {\scriptsize konkáv ($f'' < 0$)};
  \node[right] at (-0.1, 1.65) {\scriptsize konvex ($f'' > 0$)};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — az érintő és az inflexió lokális képe.** Az $f(x) = T_1(x) + \frac{f''(-1)}{2}(x+1)^2 + \frac{f'''(c)}{6}(x+1)^3$ Taylor-formulából itt a másodfokú tag kiesik ($f''(-1) = 0$), így $f(x) - T_1(x) = \frac{f'''(c)}{6}(x+1)^3$: ennek előjele megegyezik $(x+1)$ előjelével ($f''' > 0$ miatt), tehát a görbe valóban alulról fölfelé metszi át az érintőjét.
:::

---

## 181. feladat

Tegyük fel, hogy $\varphi$ és $\psi$ differenciálható pozitív értékű függvények. Legyen $f(x) = \sqrt[\varphi(x)]{\psi(x)}$. Határozzuk meg $f'(x)$-et.

**Megoldás.**

Mivel $\varphi(x) > 0$ és $\psi(x) > 0$, a gyökös kifejezés a pozitív valós hatványozás definíciója szerint átírható:
$$f(x) = \psi(x)^{\frac{1}{\varphi(x)}} = e^{\frac{\log \psi(x)}{\varphi(x)}} > 0.$$

Deriváljuk $f$-et az exponenciális láncszabály és a hányadosszabály alkalmazásával (vagy ekvivalensen vegyük $\log f(x) = \frac{\log\psi(x)}{\varphi(x)}$ deriváltját):

$$\begin{aligned}
f'(x) &= e^{\frac{\log \psi(x)}{\varphi(x)}} \cdot \left(\frac{\log \psi(x)}{\varphi(x)}\right)' \\
&= \sqrt[\varphi(x)]{\psi(x)} \cdot \frac{\big(\log \psi(x)\big)' \varphi(x) - \log \psi(x) \cdot \varphi'(x)}{\varphi(x)^2} \\
&= \mathbf{\sqrt[\varphi(x)]{\psi(x)} \cdot \frac{\dfrac{\psi'(x)}{\psi(x)}\varphi(x) - \varphi'(x)\log \psi(x)}{\varphi(x)^2}} \\
&= \mathbf{\sqrt[\varphi(x)]{\psi(x)} \cdot \frac{\psi'(x)\varphi(x) - \varphi'(x)\psi(x)\log \psi(x)}{\varphi(x)^2 \psi(x)}}.
\end{aligned}$$

::: elmelet
**Elméleti háttér — változó gyökkitevős függvény.** Az $\sqrt[u(x)]{v(x)} = v(x)^{1/u(x)}$ pontosan az $a(x)^{b(x)}$ típus egy speciális esete $b(x) = 1/\varphi(x)$ választással. A pozitív értékűség garantálja, hogy $\log \psi(x)$ definiált és $\varphi(x) \neq 0$ a nevezőben.
:::

---

## 182. feladat

Melyik az egységgömbbe írható maximális térfogatú egyenes körkúp?

**Megoldás.**

*(Vö. a Szélsőérték-számítási gyakorló feladatsor 4. feladatával $R = 1$ speciális esetben.)*

Legyen az $R = 1$ sugarú gömbbe írt egyenes körkúp magassága $m$, az alapkör sugara pedig $r$. Nyilván $m \in (0, 2)$. A gömb középpontja, az alapkör középpontja és az alapkör egy határpontja derékszögű háromszöget alkot $1$ átfogóval és $r, |m - 1|$ befogókkal:
$$r^2 + (m - 1)^2 = 1^2 \implies r^2 = 1 - (m^2 - 2m + 1) = 2m - m^2.$$

A kúp térfogata $m$ függvényében:
$$V(m) = \frac{1}{3} r^2 \pi m = \frac{\pi}{3}(2m - m^2)m = \frac{\pi}{3}(2m^2 - m^3) \qquad \big(m \in (0, 2)\big).$$

Deriváljunk $m$ szerint:
$$V'(m) = \frac{\pi}{3}(4m - 3m^2) = \frac{\pi}{3}m(4 - 3m).$$
A $(0, 2)$ nyílt intervallumon az egyetlen zérushely:
$$m = \frac{4}{3}.$$
Mivel $V'(m) > 0$ ha $m \in \left(0, \frac{4}{3}\right)$, és $V'(m) < 0$ ha $m \in \left(\frac{4}{3}, 2\right)$ (továbbá $V''(4/3) = \frac{\pi}{3}(4 - 8) = -\frac{4\pi}{3} < 0$), itt globális maximum van.

Az alapkör sugara és a maximális térfogat:
$$r = \sqrt{2 \cdot \frac{4}{3} - \left(\frac{4}{3}\right)^2} = \sqrt{\frac{24 - 16}{9}} = \frac{2\sqrt{2}}{3}, \qquad V_{\max} = \frac{\pi}{3}\cdot\frac{8}{9}\cdot\frac{4}{3} = \frac{32\pi}{81}.$$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.5,
  pt/.style={circle, draw=black, fill=black, inner sep=1.2pt}
]
  \draw[thick] (0,0) circle (1);
  \coordinate (O) at (0,0);
  \coordinate (T) at (0,1);
  \coordinate (C) at (0,-0.3333);
  \coordinate (A) at (-0.9428,-0.3333);
  \coordinate (B) at (0.9428,-0.3333);
  \fill[black!7] (T) -- (A) -- (B) -- cycle;
  \draw[very thick] (T) -- (A) -- (B) -- cycle;
  \draw[dashed] (T) -- (C);
  \draw[dashed] (O) -- node[above right=-1pt] {\scriptsize $1$} (B);
  \draw (0.12, -0.3333) -- (0.12, -0.2133) -- (0, -0.2133);
  \node[pt, label=left:{\scriptsize $O$}] at (O) {};
  \node[pt] at (C) {};
  \node[left] at (-0.02, -0.18) {\scriptsize $m-1$};
  \node[below] at (0.47, -0.35) {\scriptsize $r$};
  \node[right] at (1.05, 0) {\scriptsize gömb ($R=1$)};
\end{tikzpicture}
\end{adjustbox}
\end{center}

**Válasz:** Az a körkúp adja a maximális térfogatot, amelynek **magassága $m = \frac{4}{3}$** és **alapsugara $r = \frac{2\sqrt{2}}{3}$** (maximális térfogata $V_{\max} = \frac{32\pi}{81}$, ami az egységgömb $\frac{4\pi}{3}$ térfogatának $\frac{8}{27}$-ed része).

::: elmelet
**Elméleti háttér — az $\frac{8}{27}$-es térfogatarány.** Bármely $R$ sugarú gömbbe írt maximális térfogatú körkúp magassága a gömb átmérőjének kétharmada ($m = \frac{4}{3}R = \frac{2}{3} \cdot 2R$), térfogata pedig mindig a gömb térfogatának $\frac{8}{27}$-szerese (kb. $29{,}63\%$).
:::

---

## 183. feladat

Bizonyítandó, hogy ha $f'(x) = x^2$, $\forall x \in \mathbb{R}$-re, akkor van olyan konstans, hogy $f(x) = \frac{x^3}{3} + c$.

**Megoldás.**

Tekintsük a
$$g(x) = f(x) - \frac{x^3}{3} \qquad (x \in \mathbb{R})$$
segédfüggvényt. Mivel mind $f$, mind $\frac{x^3}{3}$ differenciálható $\mathbb{R}$-en, $g$ is differenciálható $\mathbb{R}$-en, és
$$g'(x) = f'(x) - \left(\frac{x^3}{3}\right)' = x^2 - x^2 = 0 \qquad \forall x \in \mathbb{R}.$$

Legyen $c = g(0) = f(0)$, és válasszunk egy tetszőleges $x \in \mathbb{R} \setminus \{0\}$ pontot. A Lagrange-féle középértéktétel szerint a $0$ és $x$ közötti nyílt intervallumban létezik olyan $\xi$, amelyre
$$\frac{g(x) - g(0)}{x - 0} = g'(\xi) = 0 \implies g(x) = g(0) = c.$$
Ez $x = 0$-ra is triviálisan teljesül, tehát minden $x \in \mathbb{R}$-re $f(x) - \frac{x^3}{3} = c$, vagyis
$$f(x) = \frac{x^3}{3} + c. \ \blacksquare$$

::: elmelet
**Elméleti háttér — primitív függvények egyértelműsége additív konstans erejéig.** Ez az állítás az integrálszámítás alaptételének egyik legfontosabb előkészítése: ha két függvénynek ugyanaz a deriváltja egy intervallumon, akkor különbségük deriváltja nulla, így a Lagrange-középértéktétel miatt a két függvény csak egy konstansban térhet el egymástól. (Figyelem: nem összefüggő értelmezési tartományon — például $\mathbb{R} \setminus \{0\}$-on — a konstans szakaszonként különböző is lehet!)
:::

---

## 184. feladat

Bizonyítsuk be, hogy ha $p$ egy $n$-edfokú polinom, akkor az $e^x - p(x)$ függvénynek legfeljebb $n + 1$ valós gyöke van.

**Megoldás.**

Legyen $g(x) = e^x - p(x)$ ($x \in \mathbb{R}$). Mivel $p$ egy $n$-edfokú polinom, $(n + 1)$-edik deriváltja azonosan $0$, így:
$$g^{(n+1)}(x) = \left(e^x\right)^{(n+1)} - p^{(n+1)}(x) = e^x - 0 = e^x > 0 \qquad \forall x \in \mathbb{R}.$$

Tegyük fel indirekt, hogy $g$-nek van legalább $n + 2$ különböző valós gyöke: $x_1 < x_2 < \dots < x_{n+2}$. Mivel $g$ akárhányszor differenciálható $\mathbb{R}$-en:
- A Rolle-tétel szerint a $g$-nek bármely két szomszédos gyöke között van $g'$-nek gyöke, tehát $g'$-nek legalább $n + 1$ különböző valós gyöke van.
- Újra alkalmazva a Rolle-tételt $g'$-re, $g''$-nek legalább $n$ gyöke van.
- Így folytatva $(n + 1)$-szer egymás után, a $g^{(n+1)}$ függvénynek legalább $(n + 2) - (n + 1) = 1$ valós gyöke kell legyen: létezik $\xi \in \mathbb{R}$, amelyre $g^{(n+1)}(\xi) = 0$.

Azonban $g^{(n+1)}(\xi) = e^\xi > 0$, ami ellentmondás! Tehát az $e^x - p(x)$ függvénynek legfeljebb $n + 1$ valós gyöke lehet. $\blacksquare$

::: elmelet
**Elméleti háttér — a Rolle-tétel iterálása.** Általánosan igaz, hogy ha egy $k$-szor differenciálható $g$ függvény $k$-adik deriváltja sehol sem tűnik el egy intervallumon, akkor $g$-nek legfeljebb $k$ valós gyöke lehet azon az intervallumon (egyszerű következmény a Rolle-tétel $k$-szori alkalmazásával, pontosan így bizonyítjuk azt is, hogy egy $n$-edfokú nemnulla polinomnak legfeljebb $n$ valós gyöke van).
:::

---

## 185. feladat

Mutassuk meg, hogy $a, b, c > 0$ esetén $a + b + c \le \sqrt[3]{9}\sqrt[3]{a^3 + b^3 + c^3}$.

**Megoldás.**

**1. megoldás (Jensen-egyenlőtlenséggel):**

Tekintsük az $f(x) = x^3$ függvényt a $(0, +\infty)$ intervallumon. Mivel $f''(x) = 6x > 0$ minden $x > 0$-ra, az $f$ függvény szigorúan konvex $(0, +\infty)$-en. Alkalmazzuk a Jensen-egyenlőtlenséget egyenlő súlyokkal ($\lambda_1 = \lambda_2 = \lambda_3 = \frac{1}{3}$):
$$f\left(\frac{a + b + c}{3}\right) \le \frac{f(a) + f(b) + f(c)}{3},$$
vagyis
$$\left(\frac{a + b + c}{3}\right)^3 \le \frac{a^3 + b^3 + c^3}{3} \iff \frac{(a + b + c)^3}{27} \le \frac{a^3 + b^3 + c^3}{3}.$$
Mindkét oldalt $27$-tel megszorozva:
$$(a + b + c)^3 \le 9\big(a^3 + b^3 + c^3\big).$$
Mivel az $y \mapsto \sqrt[3]{y}$ függvény szigorúan monoton növekvő, köbgyököt vonhatunk:
$$a + b + c \le \sqrt[3]{9}\sqrt[3]{a^3 + b^3 + c^3}. \ \blacksquare$$

*(Egyenlőség pontosan akkor áll fenn, ha $a = b = c$.)*

**2. megoldás (Hölder-egyenlőtlenséggel):**

Alkalmazzuk a Hölder-egyenlőtlenséget $p = 3$, $q = \frac{3}{2}$ ($\frac{1}{3} + \frac{2}{3} = 1$) kitevőkkel az $(a, b, c)$ és az $(1, 1, 1)$ számhármasra:
$$a \cdot 1 + b \cdot 1 + c \cdot 1 \le \big(a^3 + b^3 + c^3\big)^{1/3}\big(1^{3/2} + 1^{3/2} + 1^{3/2}\big)^{2/3} = 3^{2/3}\sqrt[3]{a^3 + b^3 + c^3} = \sqrt[3]{9}\sqrt[3]{a^3 + b^3 + c^3}. \ \blacksquare$$

::: elmelet
**Elméleti háttér — hatványközepek közötti egyenlőtlenség ($M_1 \le M_3$).** A bizonyított egyenlőtlenség $3$-mal elosztva pontosan a számtani és a köbös közép közötti $\frac{a + b + c}{3} \le \sqrt[3]{\frac{a^3 + b^3 + c^3}{3}}$ egyenlőtlenség. Általában minden $n$ pozitív számra és $p > 1$-re a konvex $x^p$ függvényre alkalmazott Jensen-egyenlőtlenség (vagy Hölder) adja a $\frac{1}{n}\sum x_i \le \left(\frac{1}{n}\sum x_i^p\right)^{1/p}$ becslést.
:::

---

## 186*. feladat

Legyenek $a_k, b_k, c_k \ge 0$ ($k = 1, \dots, n$) valós számok. Mutassuk meg, hogy
$$\sum_{k=1}^{n} a_k b_k c_k \le \left(\sum_{k=1}^{n} a_k^2\right)^{1/2} \left(\sum_{k=1}^{n} b_k^3\right)^{1/3} \left(\sum_{k=1}^{n} c_k^6\right)^{1/6}.$$

**Megoldás.**

**1. megoldás (háromtényezős Young-egyenlőtlenséggel — közvetlenül az előadás bizonyítása nyomán):**

Ha bármelyik jobb oldali tényező nulla, akkor az összes megfelelő $a_k$, $b_k$ vagy $c_k$ szám nulla, így mindkét oldal $0$, az egyenlőtlenség teljesül. Tegyük fel tehát, hogy
$$A = \left(\sum_{k=1}^{n} a_k^2\right)^{1/2} > 0, \qquad B = \left(\sum_{k=1}^{n} b_k^3\right)^{1/3} > 0, \qquad C = \left(\sum_{k=1}^{n} c_k^6\right)^{1/6} > 0.$$

Igazoljuk előbb, hogy minden $u, v, w \ge 0$ számra (mivel $\frac{1}{2} + \frac{1}{3} + \frac{1}{6} = 1$):
$$uvw \le \frac{u^2}{2} + \frac{v^3}{3} + \frac{w^6}{6}.$$
Ha $u, v, w$ bármelyike $0$, ez triviális; ha $u, v, w > 0$, a $\log$ függvény konkávitása miatt a Jensen-egyenlőtlenséggel:
$$\log(uvw) = \frac{1}{2}\log(u^2) + \frac{1}{3}\log(v^3) + \frac{1}{6}\log(w^6) \le \log\left(\frac{u^2}{2} + \frac{v^3}{3} + \frac{w^6}{6}\right),$$
és az exponenciális függvény szigorú monotonitásából adódik a háromtényezős Young-egyenlőtlenség.

Helyettesítsük be ide az $u_k = \frac{a_k}{A}$, $v_k = \frac{b_k}{B}$, $w_k = \frac{c_k}{C}$ számokat, és összegezzük $k = 1$-től $n$-ig:
$$\frac{1}{ABC}\sum_{k=1}^{n} a_k b_k c_k \le \frac{1}{2A^2}\sum_{k=1}^{n} a_k^2 + \frac{1}{3B^3}\sum_{k=1}^{n} b_k^3 + \frac{1}{6C^6}\sum_{k=1}^{n} c_k^6 = \frac{1}{2}\cdot 1 + \frac{1}{3}\cdot 1 + \frac{1}{6}\cdot 1 = 1.$$
Mindkét oldalt $ABC$-vel megszorozva kapjuk a kívánt egyenlőtlenséget. $\blacksquare$

**2. megoldás (a kéttagú Hölder-egyenlőtlenség kétszeri alkalmazásával):**

Először alkalmazzuk a Cauchy–Bunyakovszkij–Schwarz-egyenlőtlenséget ($p = 2, q = 2$) az $a_k$ és $(b_k c_k)$ sorozatokra:
$$\sum_{k=1}^{n} a_k(b_k c_k) \le \left(\sum_{k=1}^{n} a_k^2\right)^{1/2} \left(\sum_{k=1}^{n} b_k^2 c_k^2\right)^{1/2}.$$
Ezután alkalmazzuk a Hölder-egyenlőtlenséget a $p' = \frac{3}{2}$, $q' = 3$ ($\frac{2}{3} + \frac{1}{3} = 1$) kitevőkkel a $b_k^2$ és $c_k^2$ sorozatokra:
$$\sum_{k=1}^{n} b_k^2 c_k^2 \le \left(\sum_{k=1}^{n} (b_k^2)^{3/2}\right)^{2/3} \left(\sum_{k=1}^{n} (c_k^2)^3\right)^{1/3} = \left(\sum_{k=1}^{n} b_k^3\right)^{2/3} \left(\sum_{k=1}^{n} c_k^6\right)^{1/3}.$$
Ennek négyzetgyökét véve és visszaírva az első becslésbe:
$$\sum_{k=1}^{n} a_k b_k c_k \le \left(\sum_{k=1}^{n} a_k^2\right)^{1/2} \left(\sum_{k=1}^{n} b_k^3\right)^{1/3} \left(\sum_{k=1}^{n} c_k^6\right)^{1/6}. \ \blacksquare$$

::: elmelet
**Elméleti háttér — általánosított Hölder-egyenlőtlenség.** Ha $p_1, \dots, p_m > 1$ és $\frac{1}{p_1} + \dots + \frac{1}{p_m} = 1$, akkor tetszőleges nemnegatív sorozatokra $\sum_k \prod_{j=1}^m x_{j,k} \le \prod_{j=1}^m \left(\sum_k x_{j,k}^{p_j}\right)^{1/p_j}$. A normálási trükk és a logaritmus konkávitása bármennyi tényezőre változatlanul működik!
:::

---

## Röpzhra

**Definíciók:** aszimptoták, differenciál, Taylor polinomok.

**Tételek:** L'Hospital szabály, Taylor-formula, lemma bizonyos Taylor sorfejtés konvergenciájáról, $e^x$, $\sin x$, $\cos x$ sorfejtései.

### Definíciók és tételek kidolgozása

#### Definíciók

- **Aszimptoták:**
  - *Ferde (speciálisan vízszintes) aszimptota:* Ha $\displaystyle\lim_{x \to +\infty}\big(f(x) - (ax + b)\big) = 0$ (ahol $a, b \in \mathbb{R}$), akkor az $y = ax + b$ egyenest az $f$ függvény **$+\infty$-beli aszimptotájának** nevezzük. (Hasonlóan a $-\infty$-ben; $a = 0$ esetén vízszintes aszimptota.)
  - *Függőleges aszimptota:* Az $x = c$ egyenes az $f$ **függőleges aszimptotája**, ha $\displaystyle\lim_{x \to c^-} |f(x)| = \infty$ vagy $\displaystyle\lim_{x \to c^+} |f(x)| = \infty$.
- **Differenciál:** Ha $f$ differenciálható az $a$ helyen, akkor az
  $$df(h) = f'(a) \cdot h \qquad (h \in \mathbb{R})$$
  lineáris függvényt az $f$ függvény $a$ pontbeli **differenciáljának** nevezzük. Ez a függvény megváltozásának lineáris főrésze ($f(a + h) - f(a) \approx f'(a)h$).
- **Taylor-polinomok:** Ha $f$ $n$-szer differenciálható az $a$ pontban, akkor az
  $$T_n(x) = f(a) + \frac{f'(a)}{1!}(x - a) + \frac{f''(a)}{2!}(x - a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x - a)^n = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x - a)^k$$
  polinomot az $f$ függvény $a$ körüli **$n$-edik Taylor-polinomjának** nevezzük. (Ez az egyetlen legfeljebb $n$-edfokú polinom, amelynek $a$-ban a $0, 1, \dots, n$-edik deriváltjai megegyeznek $f$ megfelelő deriváltjaival, illetve amelyre $\lim_{x\to a} \frac{f(x) - p(x)}{(x - a)^n} = 0$.)

#### Tételek

- **L'Hospital-szabály:**
  Legyen $f$ és $g$ differenciálható az $a$ egy $\dot{U}(a)$ pontozott környezetében, ahol $g \neq 0$ és $g' \neq 0$, továbbá teljesüljön az alábbiak közül valamelyik:
  1. $\displaystyle\lim_{x\to a} f(x) = \lim_{x\to a} g(x) = 0$ (a $\frac{0}{0}$ eset), vagy
  2. $\displaystyle\lim_{x\to a} |g(x)| = \infty$ (a $\frac{\ast}{\infty}$ eset).
  Ekkor, ha $\displaystyle\lim_{x\to a}\frac{f'(x)}{g'(x)} = A$, akkor $\displaystyle\lim_{x\to a}\frac{f(x)}{g(x)} = A$. (Érvényes mind a $15$ határérték-típusra: $a \in \{-\infty, c-0, c, c+0, +\infty\}$, $A \in \{-\infty, b \in \mathbb{R}, +\infty\}$.)
  *Bizonyítás (az $a+0$, $A = b \in \mathbb{R}$, $\frac{0}{0}$ esetre).* Legyen $\varepsilon > 0$. Létezik $\delta > 0$ úgy, hogy minden $t \in (a, a+\delta)$-ra $\left|\frac{f'(t)}{g'(t)} - b\right| < \frac{\varepsilon}{2}$. Legyen $a < y < x < a + \delta$. A Cauchy-féle középértéktétel szerint van $c \in (y, x)$, hogy
  $$\frac{f(x) - f(y)}{g(x) - g(y)} = \frac{f'(c)}{g'(c)} \in \left(b - \frac{\varepsilon}{2},\ b + \frac{\varepsilon}{2}\right).$$
  Rögzített $x$ mellett tartsunk $y \to a + 0$-hoz: mivel $f(y) \to 0$ és $g(y) \to 0$, a bal oldal $\frac{f(x)}{g(x)}$-hez tart, így $\frac{f(x)}{g(x)} \in \left[b - \frac{\varepsilon}{2}, b + \frac{\varepsilon}{2}\right]$ minden $x \in (a, a + \delta)$-ra, azaz $\frac{f(x)}{g(x)} \to b$. $\blacksquare$

- **Taylor-formula:**
  Tegyük fel, hogy $f$ $(n+1)$-szer differenciálható az $[a, x]$ (vagy $(x, a]$) intervallumon. Ekkor létezik $c$ az $a$ és $x$ közötti nyílt intervallumban úgy, hogy
  $$f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x - a)^k + \frac{f^{(n+1)}(c)}{(n+1)!}(x - a)^{n+1} \qquad (\text{Lagrange-féle maradéktag}),$$
  továbbá létezik $d$ ugyanezen nyílt intervallumban úgy, hogy
  $$f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x - a)^k + \frac{f^{(n+1)}(d)}{n!}(x - d)^n (x - a) \qquad (\text{Cauchy-féle maradéktag}).$$
  *Bizonyítás (a Lagrange-féle maradéktagra, $a < x$ esetén).* Rögzített $x$ mellett tekintsük a $t \in [a, x]$ változójú
  $$R(t) = \sum_{k=0}^{n} \frac{f^{(k)}(t)}{k!}(x - t)^k - f(x)$$
  függvényt. Ekkor $R(x) = 0$ és $R(a) = T_n(x) - f(x)$. Deriválva $t$ szerint minden közbülső tag teleszkopikusan kiesik:
  $$R'(t) = \frac{f^{(n+1)}(t)}{n!}(x - t)^n.$$
  Legyen $h(t) = (x - t)^{n+1}$, ekkor $h(x) = 0$ és $h'(t) = -(n+1)(x - t)^n$. A Cauchy-középértéktételt $R$-re és $h$-ra alkalmazva $[a, x]$-en létezik $c \in (a, x)$ úgy, hogy
  $$\frac{R(x) - R(a)}{h(x) - h(a)} = \frac{R'(c)}{h'(c)} \implies \frac{R(a)}{(x - a)^{n+1}} = -\frac{f^{(n+1)}(c)}{(n+1)!} \implies f(x) - T_n(x) = \frac{f^{(n+1)}(c)}{(n+1)!}(x - a)^{n+1}. \ \blacksquare$$

- **Lemma bizonyos Taylor-sorfejtés konvergenciájáról:**
  Legyen $a, x \in \mathbb{R}$, $I$ az $a$ és $x$ közötti zárt intervallum. Ha $f$ az $I$ minden pontjában akárhányszor differenciálható, és létezik $M \ge 0$, amelyre $|f^{(n)}(y)| \le M$ minden $y \in I$ és $n \in \mathbb{N}$ esetén, akkor
  $$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x - a)^n.$$
  *Bizonyítás.* A Taylor-formula szerint $|f(x) - T_n(x)| = \left|\frac{f^{(n+1)}(c_n)}{(n+1)!}(x - a)^{n+1}\right| \le M \frac{|x - a|^{n+1}}{(n+1)!}$. Mivel minden rögzített $k \in \mathbb{R}$-re $\lim_{n\to\infty} \frac{k^n}{n!} = 0$ (hiszen elég nagy $n$-re $n! > n^{n/2}$, így $\left|\frac{k^n}{n!}\right| < \left(\frac{|k|}{\sqrt{n}}\right)^n \to 0$), a maradéktag $0$-hoz tart, tehát $T_n(x) \to f(x)$. $\blacksquare$

- **Az $e^x$, $\sin x$ és $\cos x$ sorfejtései:**
  - *$e^x$:* Az $[0, x]$ (ill. $[x, 0]$) intervallumon $\left|(e^t)^{(n)}\right| = e^t \le \max(1, e^x) = M$, és $a = 0$-ban minden derivált $1$. A fenti lemma szerint minden $x \in \mathbb{R}$-re:
    $$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$$
  - *$\sin x$ és $\cos x$:* Mivel valamennyi magasabb rendű deriváltjuk $\pm \sin t$ vagy $\pm \cos t$, ezért $|(\sin t)^{(n)}| \le 1$ és $|(\cos t)^{(n)}| \le 1$ minden $t \in \mathbb{R}$-re ($M = 1$). Az $a = 0$-beli deriváltértékeket ($\sin 0 = 0, \cos 0 = 1$) behelyettesítve minden $x \in \mathbb{R}$-re:
    $$\sin x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \dots,$$
    $$\cos x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \dots$$
