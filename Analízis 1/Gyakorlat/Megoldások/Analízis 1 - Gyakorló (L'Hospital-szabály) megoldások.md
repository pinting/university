# Analízis 1 – Gyakorló feladatsor: Határérték-számítási feladatok L'Hospital-szabállyal – megoldások

### I. Mat. BSc Analízis 1 · Gyakorló feladatsor megoldásai

*(A feladatsor jelöléseit követve $\log$ a természetes alapú logaritmust, míg $\operatorname{tg}$ és $\operatorname{ctg}$ a tangens és kotangens függvényeket jelöli.)*

---

## 1. feladat

$$\lim_{x \to 2} \frac{x^3 - 8}{x^2 - 4}$$

**Megoldás.**

Behelyettesítéssel ellenőrizzük a határérték típusát:
$$\lim_{x \to 2} (x^3 - 8) = 2^3 - 8 = 0, \qquad \lim_{x \to 2} (x^2 - 4) = 2^2 - 4 = 0.$$

Ez egy $\left[\frac{0}{0}\right]$ típusú határozatlan alak. Az $x = 2$ pont egy pontozott környezetében (például a $\dot{B}(2, 1)$ halmazon) a számláló és a nevező is differenciálható, a nevező $x^2 - 4 \neq 0$, és a nevező deriváltja, $2x$, sem nulla. Alkalmazhatjuk tehát a L'Hospital-szabályt:
$$\lim_{x \to 2} \frac{x^3 - 8}{x^2 - 4} \overset{\text{L'H}}{=} \lim_{x \to 2} \frac{(x^3 - 8)'}{(x^2 - 4)'} = \lim_{x \to 2} \frac{3x^2}{2x} = \lim_{x \to 2} \frac{3x}{2} = \frac{3 \cdot 2}{2} = 3.$$

**Válasz:** $3$.

::: elmelet
**Elméleti háttér — a L'Hospital-szabály feltételei és az algebrai egyszerűsítés.** A L'Hospital-szabály csak $\frac{0}{0}$ vagy $\frac{\ast}{\infty}$ típusú kritikus alakoknál alkalmazható, amikor $f$ és $g$ differenciálható a határpont egy pontozott környezetében, ott $g \neq 0$ és $g' \neq 0$, valamint létezik a $\lim \frac{f'}{g'}$ határérték. Racionális törteknél érdemes észrevenni, hogy L'Hospital nélkül is gyorsan célhoz érünk az $(x - 2)$ gyöktényező kiemelésével: $\frac{x^3 - 8}{x^2 - 4} = \frac{(x - 2)(x^2 + 2x + 4)}{(x - 2)(x + 2)} = \frac{x^2 + 2x + 4}{x + 2} \to \frac{12}{4} = 3$.
:::

---

## 2. feladat

$$\lim_{x \to 0} \frac{e^x - e^{-x} - 2x}{x - \sin x}$$

**Megoldás.**

Az $x = 0$ behelyettesítésével a számláló $e^0 - e^0 - 0 = 0$, a nevező $0 - \sin 0 = 0$, tehát $\left[\frac{0}{0}\right]$ típusú a határérték.

Az $x = 0$ egy pontozott környezetében, például az $\left(-\frac{\pi}{2}, \frac{\pi}{2}\right) \setminus \{0\}$ halmazon $x - \sin x \neq 0$, $1 - \cos x > 0$, $\sin x \neq 0$ és $\cos x > 0$, ezért minden lépésben teljesülnek a L'Hospital-szabály feltételei, és az újabb deriválás előtt mindig $\left[\frac{0}{0}\right]$ alakot kapunk:

$$\begin{aligned}
\lim_{x \to 0} \frac{e^x - e^{-x} - 2x}{x - \sin x} &\overset{\text{L'H}}{=} \lim_{x \to 0} \frac{e^x + e^{-x} - 2}{1 - \cos x} \\
&\overset{\text{L'H}}{=} \lim_{x \to 0} \frac{e^x - e^{-x}}{\sin x} \\
&\overset{\text{L'H}}{=} \lim_{x \to 0} \frac{e^x + e^{-x}}{\cos x} = \frac{e^0 + e^0}{\cos 0} = \frac{1 + 1}{1} = 2.
\end{aligned}$$

**Válasz:** $2$.

::: elmelet
**Elméleti háttér — többszöri L'Hospital-alkalmazás és Taylor-közelítés.** Egymás utáni L'Hospital-lépéseknél minden újabb deriválás előtt kötelező ellenőrizni, hogy a keletkező hányados továbbra is $\frac{0}{0}$ (vagy $\frac{\ast}{\infty}$) típusú-e! Itt az első és a második lépés után is $0/0$ adódik, majd a harmadik után már $\frac{2}{1}$ folytonos behelyettesítéssel számolható. A Maclaurin-sorokból közvetlenül is látszik az eredmény: $e^x - e^{-x} - 2x = 2\operatorname{sh} x - 2x = \frac{x^3}{3} + \dots$, míg $x - \sin x = \frac{x^3}{6} + \dots$, így a hányadosuk $\frac{1/3}{1/6} = 2$-hez tart.
:::

---

## 3. feladat

$$\lim_{x \to 0^+} x^2 \log x$$

**Megoldás.**

Ha $x \to 0^+$, akkor $x^2 \to 0$ és $\log x \to -\infty$, tehát $[0 \cdot (-\infty)]$ típusú határozatlan alakot kapunk. Írjuk át a szorzatot hányadossá ($x > 0$ esetén) úgy, hogy a $\log x$ maradjon a számlálóban, az $x^2$ pedig $x^{-2}$-ként a nevezőbe kerüljön:
$$\lim_{x \to 0^+} x^2 \log x = \lim_{x \to 0^+} \frac{\log x}{x^{-2}}.$$

Így már $\left[\frac{-\infty}{+\infty}\right]$ típusú törtet kaptunk (ez a $\frac{\ast}{\infty}$ eset). A $(0, 1)$ intervallumon $x^{-2} > 0$ és $(x^{-2})' = -2x^{-3} \neq 0$, ezért alkalmazható a L'Hospital-szabály:
$$\lim_{x \to 0^+} \frac{\log x}{x^{-2}} \overset{\text{L'H}}{=} \lim_{x \to 0^+} \frac{\frac{1}{x}}{-2x^{-3}} = \lim_{x \to 0^+} \left(-\frac{x^3}{2x}\right) = \lim_{x \to 0^+} \left(-\frac{x^2}{2}\right) = 0.$$

**Válasz:** $0$.

::: elmelet
**Elméleti háttér — a $0 \cdot \infty$ alak átírása.** Egy $f \cdot g$ típusú határozatlanság mindig átírható $\frac{f}{1/g}$ vagy $\frac{g}{1/f}$ hányadossá; az a jó választás, amelyik deriváláskor egyszerűsödik. Ha $x^2 \log x$-et $\frac{x^2}{1/\log x}$-nek írnánk, deriválás után $\frac{2x}{-1/(x\log^2 x)} = -2x^2\log^2 x$-et kapnánk, ami bonyolultabb az eredetinél! A $\log x$ számlálóban tartásával viszont a derivált racionális függvényre redukálódik. (A $t = 1/x \to +\infty$ helyettesítéssel ez éppen a növekedési sorrend ismert $\lim_{t \to +\infty}\frac{-\log t}{t^2} = 0$ esete.)
:::

---

## 4. feladat

$$\lim_{x \to \frac{\pi}{2}} \left(x - \frac{\pi}{2}\right) \operatorname{tg} x$$

**Megoldás.**

Ha $x \to \frac{\pi}{2}$, az első tényező $0$-hoz tart, a $\operatorname{tg} x$ pedig balról $+\infty$-hez, jobbról $-\infty$-hez tart, így $[0 \cdot \infty]$ típusú határozatlansággal állunk szemben.

A $\frac{\pi}{2}$ egy pontozott környezetében, például a $(0, \pi) \setminus \left\{\frac{\pi}{2}\right\}$ halmazon $\sin x \neq 0$ és $\cos x \neq 0$, így teljesül a $\operatorname{tg} x = \frac{1}{\operatorname{ctg} x}$ azonosság, továbbá $\operatorname{ctg} x \neq 0$ és $(\operatorname{ctg} x)' = -\frac{1}{\sin^2 x} \neq 0$:
$$\lim_{x \to \frac{\pi}{2}} \left(x - \frac{\pi}{2}\right) \operatorname{tg} x = \lim_{x \to \frac{\pi}{2}} \frac{x - \frac{\pi}{2}}{\operatorname{ctg} x}.$$

Mivel $\operatorname{ctg}\left(\frac{\pi}{2}\right) = 0$, ez már $\left[\frac{0}{0}\right]$ típusú tört mindkét oldalról. Alkalmazzuk a L'Hospital-szabályt:
$$\lim_{x \to \frac{\pi}{2}} \frac{x - \frac{\pi}{2}}{\operatorname{ctg} x} \overset{\text{L'H}}{=} \lim_{x \to \frac{\pi}{2}} \frac{1}{-\frac{1}{\sin^2 x}} = \lim_{x \to \frac{\pi}{2}} \left(-\sin^2 x\right) = -\sin^2\left(\frac{\pi}{2}\right) = -1.$$

**Válasz:** $-1$.

::: elmelet
**Elméleti háttér — kétoldali $0 \cdot \infty$ határérték és helyettesítéses ellenőrzés.** Bár $\operatorname{tg} x$ a $\frac{\pi}{2}$ két oldalán ellentétes előjelű végtelenhez tart ($\lim_{x \to \frac{\pi}{2}^-} \operatorname{tg} x = +\infty$, $\lim_{x \to \frac{\pi}{2}^+} \operatorname{tg} x = -\infty$), a $\frac{1}{\operatorname{ctg} x}$ átírással mindkét oldalról egységesen $\frac{0}{0}$ alakot kapunk, így a kétoldali határérték egyszerre számítható. Helyettesítéssel is könnyen ellenőrizhető ($t = x - \frac{\pi}{2} \to 0$): mivel $\operatorname{tg}\left(\frac{\pi}{2} + t\right) = -\frac{\cos t}{\sin t}$, ezért $t \cdot \operatorname{tg}\left(\frac{\pi}{2} + t\right) = -\frac{t}{\sin t}\cos t \to -1 \cdot 1 = -1$.
:::

---

## 5. feladat

$$\lim_{x \to 0^+} \left(\frac{1}{x} - \frac{1}{\sin x}\right)$$

**Megoldás.**

Ha $x \to 0^+$, mindkét tört $+\infty$-hez tart, tehát $[\infty - \infty]$ típusú határozatlan alakkal van dolgunk. A $(0, \pi)$ intervallumon $x\sin x > 0$; hozzuk közös nevezőre a két törtet:
$$\lim_{x \to 0^+} \left(\frac{1}{x} - \frac{1}{\sin x}\right) = \lim_{x \to 0^+} \frac{\sin x - x}{x\sin x}.$$

Így $\left[\frac{0}{0}\right]$ típusú törtet kaptunk. A $\left(0, \frac{\pi}{2}\right)$ intervallumon a nevező deriváltja $\sin x + x\cos x > 0$, így alkalmazhatjuk a L'Hospital-szabályt (a nevezőben szorzatderiválást használva):
$$\lim_{x \to 0^+} \frac{\sin x - x}{x\sin x} \overset{\text{L'H}}{=} \lim_{x \to 0^+} \frac{\cos x - 1}{\sin x + x\cos x}.$$

Behelyettesítve $x = 0$-t, továbbra is $\left[\frac{0}{0}\right]$ alakot kapunk, és a nevező deriváltja $2\cos x - x\sin x \to 2 \neq 0$ ($x \to 0^+$), ezért egy megfelelő $(0, \delta)$ intervallumon az is nem nulla. Deriváljunk még egyszer:
$$\lim_{x \to 0^+} \frac{\cos x - 1}{\sin x + x\cos x} \overset{\text{L'H}}{=} \lim_{x \to 0^+} \frac{-\sin x}{\cos x + \cos x - x\sin x} = \frac{-\sin 0}{2\cos 0 - 0} = \frac{0}{2} = 0.$$

**Válasz:** $0$.

::: elmelet
**Elméleti háttér — az $\infty - \infty$ típusú határozatlanság.** Különbségre nem létezik közvetlen L'Hospital-szabály: az $[\infty - \infty]$ alakot előbb algebrai átalakítással (itt közös nevezőre hozással, más esetekben gyöktelenítéssel vagy kiemeléssel) egyetlen hányadossá kell összevonni. A Taylor-polinomokkal való ellenőrzés azonnal megerősíti a $0$ határértéket: $\frac{\sin x - x}{x\sin x} \sim \frac{-x^3/6}{x^2} = -\frac{x}{6} \to 0$ (sőt innen látható, hogy a kétoldali $x \to 0$ határérték is $0$).
:::

---

## 6. feladat

$$\lim_{x \to 1} \left(\frac{1}{\log x} - \frac{1}{x - 1}\right)$$

**Megoldás.**

Ha $x \to 1^+$, mindkét tag $+\infty$-hez tart ($[(+\infty) - (+\infty)]$), ha pedig $x \to 1^-$, mindkettő $-\infty$-hez ($[(-\infty) - (-\infty)]$), így mindkét oldalon $[\infty - \infty]$ típusú határozatlanság lép fel. A $(0, +\infty) \setminus \{1\}$ halmazon hozzuk a kifejezést közös nevezőre:
$$\lim_{x \to 1} \left(\frac{1}{\log x} - \frac{1}{x - 1}\right) = \lim_{x \to 1} \frac{x - 1 - \log x}{(x - 1)\log x}.$$

Ez $\left[\frac{0}{0}\right]$ típusú tört. A $(0, +\infty) \setminus \{1\}$ halmazon $(x - 1)\log x > 0$, és deriváltja $\log x + 1 - \frac{1}{x}$ szigorúan negatív $(0, 1)$-en, illetve szigorúan pozitív $(1, +\infty)$-en (tehát nem nulla). Alkalmazzuk a L'Hospital-szabályt, majd bővítsük a számlálót és a nevezőt $x$-szel ($x \to 1 \neq 0$) az emeletes törtek eltüntetése érdekében:
$$\begin{aligned}
\lim_{x \to 1} \frac{x - 1 - \log x}{(x - 1)\log x} &\overset{\text{L'H}}{=} \lim_{x \to 1} \frac{1 - \frac{1}{x}}{1 \cdot \log x + (x - 1) \cdot \frac{1}{x}} \\
&= \lim_{x \to 1} \frac{x - 1}{x\log x + x - 1}.
\end{aligned}$$

Ez még mindig $\left[\frac{0}{0}\right]$ típusú. Az $x = 1$ egy pontozott környezetében a nevező deriváltja $\log x + 2 > 0$ (így maga a nevező is csak $x = 1$-ben nulla ott), ezért újra alkalmazhatjuk a L'Hospital-szabályt:
$$\lim_{x \to 1} \frac{x - 1}{x\log x + x - 1} \overset{\text{L'H}}{=} \lim_{x \to 1} \frac{1}{1 \cdot \log x + x \cdot \frac{1}{x} + 1} = \lim_{x \to 1} \frac{1}{\log x + 2} = \frac{1}{0 + 2} = \frac{1}{2}.$$

**Válasz:** $\dfrac{1}{2}$.

::: elmelet
**Elméleti háttér — köztes algebrai egyszerűsítés és Taylor-ellenőrzés.** Ha az első L'Hospital-lépés után emeletes tört keletkezik, érdemes azt még a második deriválás *előtt* kitisztítani (itt a nemnulla $x$-szel való bővítés teljesen megszüntette az $1/x$ tagokat), különben a következő hányadosderiválások feleslegesen bonyolódnának. Az $x = 1 + t$ ($t \to 0$) helyettesítéssel és a $\log(1 + t) = t - \frac{t^2}{2} + \dots$ sorral a hányados $\frac{t - (t - t^2/2 + \dots)}{t(t - t^2/2 + \dots)} \to \frac{1}{2}$-hez tart.
:::

---

## 7. feladat

$$\lim_{x \to 0^+} (1 + \sin(2x))^{\operatorname{ctg} x}$$

**Megoldás.**

Ha $x \to 0^+$, az alap $1 + \sin(2x) \to 1 + 0 = 1$, a kitevő $\operatorname{ctg} x \to +\infty$, tehát $[1^\infty]$ típusú hatványhatározatlansággal állunk szemben.

A $\left(0, \frac{\pi}{4}\right)$ intervallumon $1 + \sin(2x) > 1 > 0$, így a hatványt az $a^b = e^{b\log a}$ azonossággal átírhatjuk:
$$(1 + \sin(2x))^{\operatorname{ctg} x} = \exp\Big(\operatorname{ctg} x \cdot \log\big(1 + \sin(2x)\big)\Big).$$

Számítsuk ki először a kitevő határértékét (a $\operatorname{ctg} x = \frac{1}{\operatorname{tg} x}$ átírással):
$$\lim_{x \to 0^+} \operatorname{ctg} x \cdot \log\big(1 + \sin(2x)\big) = \lim_{x \to 0^+} \frac{\log\big(1 + \sin(2x)\big)}{\operatorname{tg} x}.$$

Így $\left[\frac{0}{0}\right]$ típusú törtet kaptunk; továbbá a $\left(0, \frac{\pi}{4}\right)$ intervallumon $\operatorname{tg} x > 0$ és $(\operatorname{tg} x)' = \frac{1}{\cos^2 x} \neq 0$. Alkalmazzuk a L'Hospital-szabályt:
$$\lim_{x \to 0^+} \frac{\log\big(1 + \sin(2x)\big)}{\operatorname{tg} x} \overset{\text{L'H}}{=} \lim_{x \to 0^+} \frac{\frac{2\cos(2x)}{1 + \sin(2x)}}{\frac{1}{\cos^2 x}} = \lim_{x \to 0^+} \frac{2\cos(2x)\cos^2 x}{1 + \sin(2x)} = \frac{2 \cdot 1 \cdot 1^2}{1 + 0} = 2.$$

Mivel az exponenciális függvény ($t \mapsto e^t$) mindenütt folytonos, a kitevő határértékéből adódik az eredeti határérték:
$$\lim_{x \to 0^+} (1 + \sin(2x))^{\operatorname{ctg} x} = e^2.$$

**Válasz:** $e^2$.

::: elmelet
**Elméleti háttér — az $1^\infty$ típus és az exponenciális átírás.** A $[1^\infty]$, $[0^0]$ és $[\infty^0]$ alakú hatványoknál azért célszerű előbb az $f(x)^{g(x)} = e^{g(x)\log f(x)}$ alakot venni és a kitevő határértékét meghatározni, mert így *nem* kell előre feltenni, hogy az eredeti $L$ határérték létezik (míg a szokásos „$\log L = \lim \dots$” írásmód hallgatólagosan feltételezi $L > 0$ létezését, és a $\log$ folytonosságát használja). A feladat a nevezetes $\lim_{u \to 0}(1 + u)^{1/u} = e$ határértékkel is azonnal kijön:
$$(1 + \sin(2x))^{\operatorname{ctg} x} = \Big((1 + \sin(2x))^{\frac{1}{\sin(2x)}}\Big)^{\sin(2x)\operatorname{ctg} x} \longrightarrow e^2,$$
mivel $\sin(2x)\operatorname{ctg} x = 2\sin x\cos x \cdot \frac{\cos x}{\sin x} = 2\cos^2 x \to 2$.
:::

---

## 8. feladat

$$\lim_{x \to 0^+} x^{\sin x}$$

**Megoldás.**

Ha $x \to 0^+$, az alap és a kitevő is $0$-hoz tart, tehát $[0^0]$ típusú határozatlanságot kaptunk. A $\left(0, \frac{\pi}{2}\right)$ intervallumon $x > 0$ és $\sin x > 0$, így írjuk a kifejezést exponenciális alakra:
$$x^{\sin x} = \exp(\sin x \cdot \log x).$$

Határozzuk meg a kitevő határértékét a $\sin x = \frac{1}{1/\sin x}$ átírással:
$$\lim_{x \to 0^+} (\sin x \cdot \log x) = \lim_{x \to 0^+} \frac{\log x}{\frac{1}{\sin x}}.$$

Mivel $x \to 0^+$ mellett $\log x \to -\infty$ és $\frac{1}{\sin x} \to +\infty$, ez $\left[\frac{-\infty}{+\infty}\right]$ típusú tört, és a $\left(0, \frac{\pi}{2}\right)$ intervallumon $\left(\frac{1}{\sin x}\right)' = -\frac{\cos x}{\sin^2 x} \neq 0$. Alkalmazzuk a L'Hospital-szabályt:
$$\lim_{x \to 0^+} \frac{\log x}{\frac{1}{\sin x}} \overset{\text{L'H}}{=} \lim_{x \to 0^+} \frac{\frac{1}{x}}{-\frac{\cos x}{\sin^2 x}} = \lim_{x \to 0^+} \left(-\frac{\sin^2 x}{x\cos x}\right) = -\lim_{x \to 0^+} \left(\frac{\sin x}{x} \cdot \operatorname{tg} x\right).$$

Mivel a nevezetes határérték alapján $\lim_{x \to 0^+} \frac{\sin x}{x} = 1$ és $\lim_{x \to 0^+} \operatorname{tg} x = 0$, a kitevő határértéke:
$$\lim_{x \to 0^+} (\sin x \cdot \log x) = -(1 \cdot 0) = 0.$$

Az $e^t$ függvény folytonossága miatt ebből adódik az eredeti határérték:
$$\lim_{x \to 0^+} x^{\sin x} = e^0 = 1.$$

**Válasz:** $1$.

::: elmelet
**Elméleti háttér — a $0^0$ határozatlanság és nevezetes határértékek kombinálása.** A L'Hospital-lépés után kapott $-\frac{\sin^2 x}{x\cos x}$ kifejezést nem szabad újra vakon deriválni: a $-\frac{\sin x}{x} \cdot \operatorname{tg} x$ szétbontás az ismert $\frac{\sin x}{x} \to 1$ nevezetes határértékkel egyetlen sorban megadja a $0$-t. Hasonlóan az ismert $\lim_{x \to 0^+} x^x = 1$ eredményre is visszavezethetjük: $x^{\sin x} = (x^x)^{\frac{\sin x}{x}} \to 1^1 = 1$.
:::

---

## 9. feladat

$$\lim_{x \to +\infty} \left(x^2 + e^x\right)^{\frac{1}{x}}$$

**Megoldás.**

Ha $x \to +\infty$, az alap $+\infty$-hez, a kitevő $0$-hoz tart, tehát $[\infty^0]$ típusú határozatlansággal van dolgunk. Minden $x > 0$-ra $x^2 + e^x > 0$, így:
$$\left(x^2 + e^x\right)^{\frac{1}{x}} = \exp\!\left(\frac{\log(x^2 + e^x)}{x}\right).$$

Számítsuk ki a kitevő határértékét:
$$\lim_{x \to +\infty} \frac{\log(x^2 + e^x)}{x}.$$

Ez $\left[\frac{+\infty}{+\infty}\right]$ típusú tört. Mivel $x > 0$ esetén minden köztes nevező pozitív és a deriváltja is szigorúan pozitív ($1$, $2x + e^x$, $2 + e^x$, illetve $e^x$), a L'Hospital-szabály egymás után négyszer alkalmazható (minden egyes deriválás előtt továbbra is $\left[\frac{+\infty}{+\infty}\right]$ alak áll fenn):
$$\begin{aligned}
\lim_{x \to +\infty} \frac{\log(x^2 + e^x)}{x} &\overset{\text{L'H}}{=} \lim_{x \to +\infty} \frac{\frac{2x + e^x}{x^2 + e^x}}{1} = \lim_{x \to +\infty} \frac{2x + e^x}{x^2 + e^x} \\
&\overset{\text{L'H}}{=} \lim_{x \to +\infty} \frac{2 + e^x}{2x + e^x} \\
&\overset{\text{L'H}}{=} \lim_{x \to +\infty} \frac{e^x}{2 + e^x} \\
&\overset{\text{L'H}}{=} \lim_{x \to +\infty} \frac{e^x}{e^x} = 1.
\end{aligned}$$

Az $e^t$ függvény folytonossága miatt az eredeti határérték:
$$\lim_{x \to +\infty} \left(x^2 + e^x\right)^{\frac{1}{x}} = e^1 = e.$$

**Válasz:** $e$.

::: elmelet
**Elméleti háttér — az $\infty^0$ típus és a domináns tag kiemelése.** A négy L'Hospital-lépés helyett már az első lépés után kapott $\frac{2x + e^x}{x^2 + e^x}$ törtben $e^x$-szel osztva ($x^n e^{-x} \to 0$) azonnal adódik a $\frac{2xe^{-x} + 1}{x^2e^{-x} + 1} \to 1$ határérték. Sőt az eredeti kifejezésből a domináns $e^x$ tényezőt kiemelve L'Hospital-szabály nélkül is rögtön látható az eredmény:
$$\left(x^2 + e^x\right)^{\frac{1}{x}} = e \cdot \left(1 + x^2 e^{-x}\right)^{\frac{1}{x}} \longrightarrow e \cdot 1^0 = e.$$
:::
