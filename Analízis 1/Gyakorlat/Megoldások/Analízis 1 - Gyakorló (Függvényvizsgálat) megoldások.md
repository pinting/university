# Analízis 1 – Gyakorló feladatsor: Teljes függvényvizsgálat – megoldások

### I. Mat. BSc Analízis 1 · Gyakorló feladatsor megoldásai

## 1. feladat

$$f(x) = x^3 - 3x^2 + 4$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R}$.
- **Paritás, periodicitás:** Nem páros, nem páratlan, nem periodikus.
- **Tengelymetszetek:**
  - $y$-tengely ($x = 0$): $f(0) = 4 \implies (0; 4)$.
  - $x$-tengely ($f(x) = 0$): $x^3 - 3x^2 + 4 = (x + 1)(x - 2)^2 = 0 \implies x_1 = -1$, $x_2 = 2$. Pontok: $(-1; 0)$ és $(2; 0)$.
- **Határértékek:** $\displaystyle\lim_{x \to -\infty} f(x) = -\infty$, $\displaystyle\lim_{x \to +\infty} f(x) = +\infty$. Mivel $\frac{f(x)}{x} = x^2 - 3x + \frac{4}{x} \to +\infty$, nincs aszimptota.
- **Első derivált:** $f'(x) = 3x^2 - 6x = 3x(x - 2)$. Zérushelyek: $x_1 = 0$, $x_2 = 2$.
- **Második derivált:** $f''(x) = 6x - 6 = 6(x - 1)$. Zérushely: $x = 1$.

| $x$ | $(-\infty; 0)$ | $0$ | $(0; 1)$ | $1$ | $(1; 2)$ | $2$ | $(2; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f''(x)$ | $-$ | $-$ | $-$ | $0$ | $+$ | $+$ | $+$ |
| $f(x)$ | $\nearrow$, $\frown$ | lok. max. $(4)$ | $\searrow$, $\frown$ | infl. $(2)$ | $\searrow$, $\smile$ | lok. min. $(0)$ | $\nearrow$, $\smile$ |

- **Összefoglalás:** szigorúan nő $(-\infty, 0]$-n és $[2, +\infty)$-en, szigorúan csökken $[0, 2]$-n; szigorúan konkáv $(-\infty, 1]$-en, szigorúan konvex $[1, +\infty)$-en. Lokális maximum: $(0; 4)$, lokális minimum: $(2; 0)$, inflexiós pont: $(1; 2)$. (Abszolút szélsőértéke nincs.)

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=1.0, yscale=0.52,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-2, -2) grid (3.4, 6);
  \draw[axis] (-2.2, 0) -- (3.6, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -2.2) -- (0, 6.4) node[above] {\footnotesize $y$};
  \foreach \x in {-2, -1, 1, 2, 3} {
    \draw (\x, 0.1) -- (\x, -0.1) node[below] {\scriptsize $\x$};
  }
  \foreach \y in {-2, 2, 4, 6} {
    \draw (0.06, \y) -- (-0.06, \y) node[left] {\scriptsize $\y$};
  }
  \begin{scope}
    \clip (-2.1, -2.1) rectangle (3.4, 6.1);
    \draw[draw=blue!80!black, very thick, domain=-1.3:3.25, samples=80]
      plot (\x, {\x*\x*\x - 3*\x*\x + 4});
  \end{scope}
  \fill[red!85!black] (0, 4) circle (3pt) node[above right] {\scriptsize Max $(0; 4)$};
  \fill[red!85!black] (2, 0) circle (3pt) node[above right] {\scriptsize Min $(2; 0)$};
  \fill[green!55!black] (0.94, 1.9) rectangle (1.06, 2.1);
  \node[right] at (1.08, 2.0) {\scriptsize Infl. $(1; 2)$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — harmadfokú polinomok szimmetriája.** Minden $ax^3 + bx^2 + cx + d$ harmadfokú polinom grafikonja középpontosan szimmetrikus az egyetlen inflexiós pontjára ($f''(x_0) = 0$). Itt az $(1; 2)$ inflexiós pont éppen felezi a $(0; 4)$ lokális maximum és a $(2; 0)$ lokális minimum közötti szakaszt!
:::

---

## 2. feladat

$$f(x) = x^4 - 2x^2 + 1$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R}$.
- **Paritás:** $f(-x) = (-x)^4 - 2(-x)^2 + 1 = f(x)$, tehát **páros** függvény (tengelyesen szimmetrikus az $y$-tengelyre).
- **Tengelymetszetek:**
  - $y$-tengely: $f(0) = 1 \implies (0; 1)$.
  - $x$-tengely: $x^4 - 2x^2 + 1 = (x^2 - 1)^2 = 0 \implies x_{1,2} = \pm 1$. Pontok: $(-1; 0)$ és $(1; 0)$.
- **Határértékek:** $\displaystyle\lim_{x \to \pm\infty} f(x) = +\infty$. Nincs aszimptota.
- **Első derivált:** $f'(x) = 4x^3 - 4x = 4x(x^2 - 1)$. Zérushelyek: $x_1 = -1$, $x_2 = 0$, $x_3 = 1$. Mivel $f(x) = (x^2 - 1)^2 \ge 0$, a $0$ **abszolút minimum** ($\text{értékkészlet: } [0, +\infty)$).
- **Második derivált:** $f''(x) = 12x^2 - 4 = 4(3x^2 - 1)$. Zérushelyek: $x_{1,2} = \pm\frac{1}{\sqrt{3}} \approx \pm 0{,}58$, ahol $f\left(\pm\frac{1}{\sqrt{3}}\right) = \frac{1}{9} - \frac{2}{3} + 1 = \frac{4}{9}$.

| $x$ | $(-\infty; -1)$ | $-1$ | $(-1; -\frac{1}{\sqrt{3}})$ | $-\frac{1}{\sqrt{3}}$ | $(-\frac{1}{\sqrt{3}}; 0)$ | $0$ | $(0; \frac{1}{\sqrt{3}})$ | $\frac{1}{\sqrt{3}}$ | $(\frac{1}{\sqrt{3}}; 1)$ | $1$ | $(1; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $-$ | $0$ | $+$ | $+$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f''(x)$ | $+$ | $+$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ | $+$ | $+$ |
| $f(x)$ | $\searrow$, $\smile$ | min $(0)$ | $\nearrow$, $\smile$ | infl. $\left(\frac{4}{9}\right)$ | $\nearrow$, $\frown$ | max $(1)$ | $\searrow$, $\frown$ | infl. $\left(\frac{4}{9}\right)$ | $\searrow$, $\smile$ | min $(0)$ | $\nearrow$, $\smile$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=1.8, yscale=1.1,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-2, 0) grid (2, 3);
  \draw[axis] (-2.2, 0) -- (2.25, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -0.25) -- (0, 3.2) node[above] {\footnotesize $y$};
  \foreach \x in {-2, -1, 1, 2} {
    \draw (\x, 0.06) -- (\x, -0.06) node[below] {\scriptsize $\x$};
  }
  \foreach \y in {1, 2, 3} {
    \draw (0.04, \y) -- (-0.04, \y) node[left] {\scriptsize $\y$};
  }
  \begin{scope}
    \clip (-2.05, -0.15) rectangle (2.05, 3.05);
    \draw[draw=blue!80!black, very thick, domain=-1.7:1.7, samples=90]
      plot (\x, {(\x*\x - 1)*(\x*\x - 1)});
  \end{scope}
  \fill[red!85!black] (0, 1) circle (2.2pt) node[above right] {\scriptsize Max $(0; 1)$};
  \fill[red!85!black] (-1, 0) circle (2.2pt) node[below=3pt] {\scriptsize Min $(-1; 0)$};
  \fill[red!85!black] (1, 0) circle (2.2pt) node[below=3pt] {\scriptsize Min $(1; 0)$};
  \fill[green!55!black] (-0.61, 0.40) rectangle (-0.54, 0.49);
  \fill[green!55!black] (0.54, 0.40) rectangle (0.61, 0.49);
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — páros függvény vizsgálata.** Ha $f(-x) = f(x)$, elég a függvényt $[0, +\infty)$-en vizsgálni, majd az $y$-tengelyre tükrözni: a deriváltaknál $f'(-x) = -f'(x)$ (páratlan), $f''(-x) = f''(x)$ (páros), így az inflexiós pontok és szélsőértékek is szimmetrikusan jelennek meg.
:::

---

## 3. feladat

$$f(x) = \frac{x^2 - 1}{x^2 + 1}$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R}$ (mivel $x^2 + 1 \ge 1 > 0$).
- **Paritás:** $f(-x) = f(x)$, tehát **páros** függvény.
- **Tengelymetszetek:** $y$-tengely: $(0; -1)$; $x$-tengely: $(-1; 0)$ és $(1; 0)$.
- **Határértékek, aszimptota:**
  $$\lim_{x \to \pm\infty} \frac{x^2 - 1}{x^2 + 1} = \lim_{x \to \pm\infty} \left(1 - \frac{2}{x^2 + 1}\right) = 1 \implies y = 1 \text{ vízszintes aszimptota } (\text{mindkét irányban}).$$
- **Első derivált:**
  $$f'(x) = \frac{2x(x^2 + 1) - (x^2 - 1)2x}{(x^2 + 1)^2} = \frac{4x}{(x^2 + 1)^2}.$$
  Zérushely: $x = 0$; itt abszolút minimum van: $f(0) = -1$. Abszolút maximum nincs ($f(x) < 1$, $\sup f = 1$).
- **Második derivált:**
  $$f''(x) = \frac{4(x^2 + 1)^2 - 4x \cdot 2(x^2 + 1) \cdot 2x}{(x^2 + 1)^4} = \frac{4(1 - 3x^2)}{(x^2 + 1)^3}.$$
  Zérushelyek: $x_{1,2} = \pm\frac{1}{\sqrt{3}}$, ahol $f\left(\pm\frac{1}{\sqrt{3}}\right) = \frac{1/3 - 1}{1/3 + 1} = -\frac{1}{2}$.

| $x$ | $(-\infty; -\frac{1}{\sqrt{3}})$ | $-\frac{1}{\sqrt{3}}$ | $(-\frac{1}{\sqrt{3}}; 0)$ | $0$ | $(0; \frac{1}{\sqrt{3}})$ | $\frac{1}{\sqrt{3}}$ | $(\frac{1}{\sqrt{3}}; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $-$ | $-$ | $-$ | $0$ | $+$ | $+$ | $+$ |
| $f''(x)$ | $-$ | $0$ | $+$ | $+$ | $+$ | $0$ | $-$ |
| $f(x)$ | $\searrow$, $\frown$ | infl. $\left(-\frac{1}{2}\right)$ | $\searrow$, $\smile$ | lok. min. $(-1)$ | $\nearrow$, $\smile$ | infl. $\left(-\frac{1}{2}\right)$ | $\nearrow$, $\frown$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=0.95, yscale=1.3,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-4, -1.2) grid (4, 1.3);
  \draw[axis] (-4.2, 0) -- (4.3, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -1.3) -- (0, 1.4) node[above] {\footnotesize $y$};
  \foreach \x in {-4, -3, -2, -1, 1, 2, 3, 4} {
    \draw (\x, 0.05) -- (\x, -0.05) node[below] {\scriptsize $\x$};
  }
  \draw (0.06, 1) -- (-0.06, 1) node[above left] {\scriptsize $1$};
  \draw (0.06, -1) -- (-0.06, -1) node[left] {\scriptsize $-1$};
  \draw[dashed, black!70, thick] (-4.1, 1) -- (4.1, 1) node[above left] {\scriptsize $y = 1$};
  \draw[draw=blue!80!black, very thick, domain=-4:4, samples=100]
    plot (\x, {(\x*\x - 1)/(\x*\x + 1)});
  \fill[red!85!black] (0, -1) circle (2.2pt) node[below right] {\scriptsize Min $(0; -1)$};
  \fill[green!55!black] (-0.62, -0.54) rectangle (-0.53, -0.46);
  \fill[green!55!black] (0.53, -0.54) rectangle (0.62, -0.46);
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — az Agnesi-görbe rokona.** Mivel $\frac{x^2 - 1}{x^2 + 1} = 1 - \frac{2}{x^2 + 1}$, ez a görbe az előadáson tárgyalt $y = \frac{1}{1 + x^2}$ (Agnesi-görbe) függőleges nyújtásából, tükrözéséből és $+1$-es eltolásából adódik, ezért pontosan ugyanott ($\pm \frac{1}{\sqrt{3}}$-ban) vannak az inflexiós pontjai!
:::

---

## 4. feladat

$$f(x) = \frac{x^2}{x - 1}$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R} \setminus \{1\}$.
- **Tengelymetszetek:** Csak az origó: $(0; 0)$.
- **Határértékek, aszimptoták:**
  - Pólus $x = 1$-ben: $\displaystyle\lim_{x \to 1^-} f(x) = -\infty$, $\displaystyle\lim_{x \to 1^+} f(x) = +\infty \implies x = 1$ függőleges aszimptota.
  - Ferde aszimptota: polinomosztással
    $$\frac{x^2}{x - 1} = x + 1 + \frac{1}{x - 1},$$
    így $\displaystyle\lim_{x \to \pm\infty}\big(f(x) - (x + 1)\big) = 0 \implies y = x + 1$ ferde aszimptota mindkét irányban ($x \to \pm\infty$).
- **Első derivált:**
  $$f'(x) = \frac{2x(x - 1) - x^2}{(x - 1)^2} = \frac{x(x - 2)}{(x - 1)^2}.$$
  Zérushelyek: $x_1 = 0$, $x_2 = 2$.
- **Második derivált:**
  $$f''(x) = \frac{(2x - 2)(x - 1)^2 - (x^2 - 2x) \cdot 2(x - 1)}{(x - 1)^4} = \frac{2}{(x - 1)^3}.$$
  Nincs zérushelye (nincs inflexiós pont).

| $x$ | $(-\infty; 0)$ | $0$ | $(0; 1)$ | $1$ | $(1; 2)$ | $2$ | $(2; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $+$ | $0$ | $-$ | $\nexists$ | $-$ | $0$ | $+$ |
| $f''(x)$ | $-$ | $-$ | $-$ | $\nexists$ | $+$ | $+$ | $+$ |
| $f(x)$ | $\nearrow$, $\frown$ | lok. max. $(0)$ | $\searrow$, $\frown$ | pólus $(\mp\infty)$ | $\searrow$, $\smile$ | lok. min. $(4)$ | $\nearrow$, $\smile$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=0.85, yscale=0.45,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-3, -4) grid (5, 8);
  \draw[axis] (-3.2, 0) -- (5.3, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -4.2) -- (0, 8.4) node[above] {\footnotesize $y$};
  \foreach \x in {-3, -2, -1, 1, 2, 3, 4, 5} {
    \draw (\x, 0.12) -- (\x, -0.12) node[below] {\scriptsize $\x$};
  }
  \foreach \y in {-4, -2, 2, 4, 6, 8} {
    \draw (0.08, \y) -- (-0.08, \y) node[left] {\scriptsize $\y$};
  }
  \begin{scope}
    \clip (-3.1, -4.1) rectangle (5.1, 8.1);
    \draw[dashed, black!70, thick] (1, -4.1) -- (1, 8.1);
    \draw[dashed, black!70, thick] (-3.1, -2.1) -- (5.1, 6.1);
    \draw[draw=blue!80!black, very thick, domain=-3.1:0.86, samples=70]
      plot (\x, {(\x*\x)/(\x - 1)});
    \draw[draw=blue!80!black, very thick, domain=1.14:5.1, samples=70]
      plot (\x, {(\x*\x)/(\x - 1)});
  \end{scope}
  \fill[red!85!black] (0, 0) circle (3pt) node[above left] {\scriptsize Max $(0; 0)$};
  \fill[red!85!black] (2, 4) circle (3pt) node[below right] {\scriptsize Min $(2; 4)$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — miért nagyobb a lokális minimum, mint a lokális maximum?** Nem folytonos (szakadással vagy pólussal kettéválasztott) függvényeknél előfordulhat, hogy a lokális minimum értéke ($4$) nagyobb a lokális maximum értékénél ($0$), hiszen a két tulajdonság csak az adott pontok egy kis környezetére vonatkozik. Polinomosztással ($\frac{x^2}{x-1} = x + 1 + \frac{1}{x-1}$) egyszerre kapjuk meg a ferde aszimptotát és a könnyebb deriválást is!
:::

---

## 5. feladat

$$f(x) = x e^{-x}$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R}$.
- **Tengelymetszetek:** Csak az origó: $(0; 0)$.
- **Határértékek, aszimptota:**
  - $\displaystyle\lim_{x \to -\infty} x e^{-x} = -\infty$ (hiszen $x \to -\infty$ és $e^{-x} \to +\infty$).
  - L'Hospital-szabállyal $\displaystyle\lim_{x \to +\infty} \frac{x}{e^x} = \lim_{x \to +\infty} \frac{1}{e^x} = 0 \implies y = 0$ vízszintes aszimptota ($x \to +\infty$).
- **Első derivált:** $f'(x) = 1 \cdot e^{-x} + x(-e^{-x}) = (1 - x)e^{-x}$. Zérushely: $x = 1$, itt abszolút maximuma van ($f(1) = e^{-1} \approx 0{,}37$).
- **Második derivált:** $f''(x) = -e^{-x} + (1 - x)(-e^{-x}) = (x - 2)e^{-x}$. Zérushely: $x = 2$, ahol $f(2) = \frac{2}{e^2} \approx 0{,}27$.

| $x$ | $(-\infty; 1)$ | $1$ | $(1; 2)$ | $2$ | $(2; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $+$ | $0$ | $-$ | $-$ | $-$ |
| $f''(x)$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f(x)$ | $\nearrow$, $\frown$ | lok. max. $(e^{-1})$ | $\searrow$, $\frown$ | infl. $(2e^{-2})$ | $\searrow$, $\smile$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=1.1, yscale=2.8,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline, ystep=0.5] (-1.2, -1) grid (5.2, 0.55);
  \draw[axis] (-1.3, 0) -- (5.4, 0) node[above] {\footnotesize $x$};
  \draw[axis] (0, -1.05) -- (0, 0.62) node[right] {\footnotesize $y$};
  \foreach \x in {-1, 1, 2, 3, 4, 5} {
    \draw (\x, 0.02) -- (\x, -0.02) node[below] {\scriptsize $\x$};
  }
  \draw (0.06, 0.5) -- (-0.06, 0.5) node[left] {\scriptsize $0{,}5$};
  \draw (0.06, -0.5) -- (-0.06, -0.5) node[left] {\scriptsize $-0{,}5$};
  \draw (0.06, -1) -- (-0.06, -1) node[left] {\scriptsize $-1$};
  \begin{scope}
    \clip (-1.2, -1.05) rectangle (5.2, 0.58);
    \draw[draw=blue!80!black, very thick, domain=-0.6:5.2, samples=90]
      plot (\x, {\x * exp(-\x)});
  \end{scope}
  \fill[red!85!black] (1, 0.3679) circle (1.6pt) node[above] {\scriptsize Max $(1; e^{-1})$};
  \fill[green!55!black] (1.94, 0.255) rectangle (2.06, 0.286);
  \node[above right] at (2.02, 0.27) {\scriptsize Infl. $(2; 2e^{-2})$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — az exponenciális függvény növekedési fölénye.** A $x \to +\infty$ határértéknél az $e^x$ gyorsabban nő a hatványfüggvényeknél ($\frac{x}{e^x} \to 0$), míg $x \to -\infty$-nél mind $x$, mind $e^{-x}$ abszolút értéke végtelenbe tart, így csak a pozitív végtelenben van aszimptota.
:::

---

## 6. feladat

$$f(x) = \frac{\ln x}{x}$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = (0; +\infty)$.
- **Tengelymetszetek:** $y$-tengely nincs ($0 \notin D_f$); $x$-tengely: $\ln x = 0 \implies x = 1 \implies (1; 0)$.
- **Határértékek, aszimptoták:**
  - $\displaystyle\lim_{x \to 0^+} \frac{\ln x}{x} = -\infty \implies x = 0$ függőleges aszimptota (jobbról).
  - L'Hospital-szabállyal $\displaystyle\lim_{x \to +\infty} \frac{\ln x}{x} = \lim_{x \to +\infty} \frac{1/x}{1} = 0 \implies y = 0$ vízszintes aszimptota ($x \to +\infty$).
- **Első derivált:** $f'(x) = \frac{\frac{1}{x} \cdot x - \ln x \cdot 1}{x^2} = \frac{1 - \ln x}{x^2}$. Zérushely: $x = e$, ahol $f(e) = \frac{1}{e} \approx 0{,}37$, abszolút maximum.
- **Második derivált:** $f''(x) = \frac{-\frac{1}{x} \cdot x^2 - (1 - \ln x)2x}{x^4} = \frac{2\ln x - 3}{x^3}$. Zérushely: $x = e^{3/2} \approx 4{,}48$, ahol $f(e^{3/2}) = \frac{3}{2e^{3/2}} \approx 0{,}33$.

| $x$ | $(0; e)$ | $e$ | $(e; e^{3/2})$ | $e^{3/2}$ | $(e^{3/2}; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $+$ | $0$ | $-$ | $-$ | $-$ |
| $f''(x)$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f(x)$ | $\nearrow$, $\frown$ | lok. max. $(e^{-1})$ | $\searrow$, $\frown$ | infl. $\left(\frac{3}{2}e^{-3/2}\right)$ | $\searrow$, $\smile$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=0.72, yscale=2.8,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline, ystep=0.5] (-0.5, -1) grid (8, 0.55);
  \draw[axis] (-0.6, 0) -- (8.3, 0) node[above] {\footnotesize $x$};
  \draw[axis] (0, -1.05) -- (0, 0.62) node[right] {\footnotesize $y$};
  \foreach \x in {1, 2, 3, 4, 5, 6, 7, 8} {
    \draw (\x, 0.02) -- (\x, -0.02) node[below] {\scriptsize $\x$};
  }
  \draw (0.08, 0.5) -- (-0.08, 0.5) node[left] {\scriptsize $0{,}5$};
  \draw (0.08, -0.5) -- (-0.08, -0.5) node[left] {\scriptsize $-0{,}5$};
  \draw (0.08, -1) -- (-0.08, -1) node[left] {\scriptsize $-1$};
  \begin{scope}
    \clip (-0.4, -1.05) rectangle (8.1, 0.58);
    \draw[draw=blue!80!black, very thick, domain=0.5:8.1, samples=100]
      plot (\x, {ln(\x)/\x});
  \end{scope}
  \fill[red!85!black] (2.7183, 0.3679) circle (2pt) node[above] {\scriptsize Max $(e; e^{-1})$};
  \fill[green!55!black] (4.4, 0.318) rectangle (4.56, 0.35);
  \node[above right] at (4.5, 0.335) {\scriptsize Infl. $(e^{3/2}; \frac{3}{2}e^{-3/2})$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — az $a^b$ és $b^a$ összehasonlításának klasszikus eszköze.** Mivel $\frac{\ln x}{x}$ szigorúan növekedő $(0, e]$-n és szigorúan csökkenő $[e, +\infty)$-en, az $a^b > b^a \iff \frac{\ln a}{a} > \frac{\ln b}{b}$ egyenlőtlenségből azonnal adódik például, hogy $e^\pi > \pi^e$!
:::

---

## 7. feladat

$$f(x) = x - \ln(x^2 + 1)$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R}$ (mivel $x^2 + 1 \ge 1 > 0$).
- **Tengelymetszetek:** $x = 0 \implies f(0) = 0 \implies (0; 0)$. Mivel $f'(x) \ge 0$ mindenütt és csak egyetlen pontban nulla, $f$ szigorúan monoton nő, így nincs más zérushelye.
- **Határértékek, aszimptota:** $\displaystyle\lim_{x \to -\infty} f(x) = -\infty$, $\displaystyle\lim_{x \to +\infty} f(x) = +\infty$. Bár $\displaystyle\lim_{x \to \pm\infty} \frac{f(x)}{x} = 1$, $\displaystyle\lim_{x \to \pm\infty}\big(f(x) - x\big) = \lim_{x \to \pm\infty} \big(-\ln(x^2 + 1)\big) = -\infty$, ezért **nincs aszimptota**.
- **Első derivált:**
  $$f'(x) = 1 - \frac{2x}{x^2 + 1} = \frac{x^2 - 2x + 1}{x^2 + 1} = \frac{(x - 1)^2}{x^2 + 1} \ge 0.$$
  Zérushely: $x = 1$ (páros multiplicitású, így nincs előjelváltás: $(1; 1 - \ln 2)$ teraszpont, és $f$ végig szigorúan monoton nő $\mathbb{R}$-en!).
- **Második derivált:**
  $$f''(x) = -\frac{2(x^2 + 1) - 2x(2x)}{(x^2 + 1)^2} = \frac{2(x^2 - 1)}{(x^2 + 1)^2}.$$
  Zérushelyek: $x_1 = -1$ ($f(-1) = -1 - \ln 2 \approx -1{,}69$) és $x_2 = 1$ ($f(1) = 1 - \ln 2 \approx 0{,}31$).

| $x$ | $(-\infty; -1)$ | $-1$ | $(-1; 1)$ | $1$ | $(1; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $+$ | $+$ | $+$ | $0$ | $+$ |
| $f''(x)$ | $+$ | $0$ | $-$ | $0$ | $+$ |
| $f(x)$ | $\nearrow$, $\smile$ | infl. $(-1 - \ln 2)$ | $\nearrow$, $\frown$ | infl. $(1 - \ln 2)$ | $\nearrow$, $\smile$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=0.85, yscale=0.65,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-3.5, -4) grid (4.5, 2.5);
  \draw[axis] (-3.7, 0) -- (4.7, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -4.2) -- (0, 2.7) node[above] {\footnotesize $y$};
  \foreach \x in {-3, -2, -1, 1, 2, 3, 4} {
    \draw (\x, 0.1) -- (\x, -0.1) node[below] {\scriptsize $\x$};
  }
  \foreach \y in {-4, -2, 2} {
    \draw (0.08, \y) -- (-0.08, \y) node[left] {\scriptsize $\y$};
  }
  \begin{scope}
    \clip (-3.5, -4.1) rectangle (4.5, 2.5);
    \draw[draw=blue!80!black, very thick, domain=-2.5:4.5, samples=100]
      plot (\x, {\x - ln(\x*\x + 1)});
  \end{scope}
  \fill[green!55!black] (-1.08, -1.79) rectangle (-0.92, -1.59);
  \node[left] at (-1.08, -1.55) {\scriptsize Infl. $(-1; -1 - \ln 2)$};
  \fill[green!55!black] (0.92, 0.21) rectangle (1.08, 0.41);
  \node[above right] at (1.02, 0.35) {\scriptsize Infl. $(1; 1 - \ln 2)$};
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — miért nem elég $\lim \frac{f(x)}{x} = a$ az aszimptotához?** A ferde aszimptota meglétéhez az $m = \lim_{x\to\pm\infty} \frac{f(x)}{x}$ véges meredekségen felül az is szükséges, hogy a $b = \lim_{x\to\pm\infty}(f(x) - mx)$ határérték is végesen létezzen. Itt a $-\ln(x^2 + 1)$ tag ugyan lassabban tart végtelenbe az $x$-nél, de nem korlátos, ezért a függvény egyre távolabb sodródik bármely $y = x + b$ egyenestől.
:::

---

## 8. feladat

$$f(x) = \frac{x^3}{x^2 - 1}$$

**Megoldás.**

- **Értelmezési tartomány:** $D_f = \mathbb{R} \setminus \{-1; 1\}$.
- **Paritás:** $f(-x) = -f(x)$, tehát **páratlan** függvény (középpontosan szimmetrikus az origóra).
- **Tengelymetszetek:** Csak az origó: $(0; 0)$.
- **Határértékek, aszimptoták:**
  - Függőleges: $x = -1$ és $x = 1$ ($\lim_{x\to -1^-} f = -\infty$, $\lim_{x\to -1^+} f = +\infty$; $\lim_{x\to 1^-} f = -\infty$, $\lim_{x\to 1^+} f = +\infty$).
  - Ferde: $\frac{x^3}{x^2 - 1} = x + \frac{x}{x^2 - 1}$, ahonnan $\lim_{x\to\pm\infty}(f(x) - x) = 0 \implies y = x$ ferde aszimptota ($x \to \pm\infty$).
- **Első derivált:**
  $$f'(x) = \frac{3x^2(x^2 - 1) - x^3(2x)}{(x^2 - 1)^2} = \frac{x^2(x^2 - 3)}{(x^2 - 1)^2}.$$
  Zérushelyek: $x_1 = -\sqrt{3}$ ($f(-\sqrt{3}) = -\frac{3\sqrt{3}}{2}$), $x_2 = 0$ (teraszpont), $x_3 = \sqrt{3}$ ($f(\sqrt{3}) = \frac{3\sqrt{3}}{2}$).
- **Második derivált:**
  $$f''(x) = \frac{(4x^3 - 6x)(x^2 - 1)^2 - (x^4 - 3x^2) \cdot 2(x^2 - 1) \cdot 2x}{(x^2 - 1)^4} = \frac{2x(x^2 + 3)}{(x^2 - 1)^3}.$$
  Zérushely: $x = 0$ (inflexiós pont).

| $x$ | $(-\infty; -\sqrt{3})$ | $-\sqrt{3}$ | $(-\sqrt{3}; -1)$ | $-1$ | $(-1; 0)$ | $0$ | $(0; 1)$ | $1$ | $(1; \sqrt{3})$ | $\sqrt{3}$ | $(\sqrt{3}; +\infty)$ |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $f'(x)$ | $+$ | $0$ | $-$ | $\nexists$ | $-$ | $0$ | $-$ | $\nexists$ | $-$ | $0$ | $+$ |
| $f''(x)$ | $-$ | $-$ | $-$ | $\nexists$ | $+$ | $0$ | $-$ | $\nexists$ | $+$ | $+$ | $+$ |
| $f(x)$ | $\nearrow$, $\frown$ | max $\left(-\frac{3\sqrt{3}}{2}\right)$ | $\searrow$, $\frown$ | pólus | $\searrow$, $\smile$ | infl. $(0)$ | $\searrow$, $\frown$ | pólus | $\searrow$, $\smile$ | min $\left(\frac{3\sqrt{3}}{2}\right)$ | $\nearrow$, $\smile$ |

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[xscale=0.85, yscale=0.58,
  axis/.style={draw=black!70, -{Stealth[scale=0.8]}, thick},
  gridline/.style={draw=black!15, thin}
]
  \draw[gridline] (-4, -4.5) grid (4, 4.5);
  \draw[axis] (-4.2, 0) -- (4.3, 0) node[right] {\footnotesize $x$};
  \draw[axis] (0, -4.7) -- (0, 4.8) node[above] {\footnotesize $y$};
  \foreach \x in {-4, -3, -2, -1, 1, 2, 3, 4} {
    \draw (\x, 0.1) -- (\x, -0.1) node[below] {\scriptsize $\x$};
  }
  \foreach \y in {-4, -2, 2, 4} {
    \draw (0.08, \y) -- (-0.08, \y) node[left] {\scriptsize $\y$};
  }
  \begin{scope}
    \clip (-4.1, -4.55) rectangle (4.1, 4.55);
    \draw[dashed, black!70, thick] (-1, -4.55) -- (-1, 4.55);
    \draw[dashed, black!70, thick] (1, -4.55) -- (1, 4.55);
    \draw[dashed, black!70, thick] (-4.1, -4.1) -- (4.1, 4.1);
    \draw[draw=blue!80!black, very thick, domain=-4.1:-1.16, samples=70]
      plot (\x, {(\x*\x*\x)/(\x*\x - 1)});
    \draw[draw=blue!80!black, very thick, domain=-0.94:0.94, samples=70]
      plot (\x, {(\x*\x*\x)/(\x*\x - 1)});
    \draw[draw=blue!80!black, very thick, domain=1.16:4.1, samples=70]
      plot (\x, {(\x*\x*\x)/(\x*\x - 1)});
  \end{scope}
  \fill[red!85!black] (-1.732, -2.598) circle (2.5pt);
  \fill[red!85!black] (1.732, 2.598) circle (2.5pt);
  \fill[green!55!black] (-0.08, -0.12) rectangle (0.08, 0.12);
\end{tikzpicture}
\end{adjustbox}
\end{center}

::: elmelet
**Elméleti háttér — az $x = 0$ egyidejű terasz- és inflexiós pontja.** A $f'(x)$ számlálójában az $x^2$ páros hatvány miatt $f'$ nem vált előjelet $0$-ban (így $(0; 0)$ nem szélsőértékhely, hanem teraszpont), míg az $f''(x)$-ben az $x$ első hatványa miatt $f''$ előjelet vált $0$-ban — ezért a $(0; 0)$ egyúttal vízszintes érintőjű inflexiós pont.
:::
