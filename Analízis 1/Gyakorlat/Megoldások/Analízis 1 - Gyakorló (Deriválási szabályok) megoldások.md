# Analízis 1 – Gyakorló feladatsor: Deriválási szabályok – megoldások

### I. Mat. BSc Analízis 1 · Gyakorló feladatsor megoldásai

*(A feladatsor jelöléseit követve $\log$ a természetes alapú logaritmust, míg $\tan, \arctan, \operatorname{arccot}$ a $\operatorname{tg}, \operatorname{arctg}, \operatorname{arcctg}$ függvényeket jelöli.)*

---

## 1. feladat

$$f(x) = (3x^4 - 5x^2 + 7)e^{2x}$$

**Megoldás.**

Alkalmazzuk az $(u \cdot v)' = u'v + uv'$ szorzatszabályt, ahol $u(x) = 3x^4 - 5x^2 + 7$ és $v(x) = e^{2x}$. A $v(x)$ deriválásához a láncszabályt használjuk: $(e^{2x})' = e^{2x} \cdot (2x)' = 2e^{2x}$.

$$\begin{aligned}
f'(x) &= (3x^4 - 5x^2 + 7)' \cdot e^{2x} + (3x^4 - 5x^2 + 7) \cdot (e^{2x})' \\
&= (12x^3 - 10x)e^{2x} + (3x^4 - 5x^2 + 7) \cdot 2e^{2x} \\
&= e^{2x}\big(12x^3 - 10x + 6x^4 - 10x^2 + 14\big) \\
&= \mathbf{e^{2x}(6x^4 + 12x^3 - 10x^2 - 10x + 14)}.
\end{aligned}$$

*(Értelmezési tartomány: $D_f = D_{f'} = \mathbb{R}$.)*

::: elmelet
**Elméleti háttér — szorzatszabály és exponenciális láncszabály.** Ha $f$ és $g$ differenciálható, $(fg)' = f'g + fg'$, továbbá $(e^{g(x)})' = e^{g(x)} \cdot g'(x)$. Exponenciális és polinomiális tényező szorzatakor az $e^{ax}$ tényező mindig kiemelhető, így egy azonos fokszámú polinom és $e^{ax}$ szorzatát kapjuk.
:::

---

## 2. feladat

$$f(x) = \frac{\log(x^2 + 1)}{x^3 - 2x}$$

**Megoldás.**

Az értelmezési tartományon $x^2 + 1 > 0$ mindig teljesül, csak a nevező zérushelyeit kell kizárni: $x(x^2 - 2) \neq 0 \implies D_f = \mathbb{R} \setminus \{-\sqrt{2}, 0, \sqrt{2}\}$.

Alkalmazzuk a $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$ hányadosszabályt. A számláló deriválásakor láncszabályt használunk: $[\log(x^2 + 1)]' = \frac{1}{x^2 + 1} \cdot (x^2 + 1)' = \frac{2x}{x^2 + 1}$.

$$f'(x) = \frac{\frac{2x}{x^2 + 1} \cdot (x^3 - 2x) - \log(x^2 + 1) \cdot (3x^2 - 2)}{(x^3 - 2x)^2}.$$

Bővítsük a számlálót és a nevezőt $(x^2 + 1)$-gyel az emeletes tört megszüntetéséhez:

$$f'(x) = \frac{2x(x^3 - 2x) - (x^2 + 1)(3x^2 - 2)\log(x^2 + 1)}{(x^2 + 1)(x^3 - 2x)^2} = \mathbf{\frac{2x^2(x^2 - 2) - (x^2 + 1)(3x^2 - 2)\log(x^2 + 1)}{(x^2 + 1)(x^3 - 2x)^2}}.$$

::: elmelet
**Elméleti háttér — hányadosszabály és emeletes törtek.** A $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$ szabály alkalmazása után, ha $u'$ vagy $v'$ maga is tört, érdemes a teljes tört számlálóját és nevezőjét a belső nevezővel szorozni (itt $x^2 + 1$-gyel) az áttekinthető algebrai alakért.
:::

---

## 3. feladat

$$f(x) = \sin^3(4x^2 - 1)$$

**Megoldás.**

Kívülről befelé haladva három függvény van egymásba ágyazva: a külső a köbre emelés ($u^3$), a középső a szinusz ($\sin v$), a belső pedig a polinom ($4x^2 - 1$).

$$\begin{aligned}
f'(x) &= 3\sin^2(4x^2 - 1) \cdot \big[\sin(4x^2 - 1)\big]' \\
&= 3\sin^2(4x^2 - 1) \cdot \cos(4x^2 - 1) \cdot (4x^2 - 1)' \\
&= 3\sin^2(4x^2 - 1) \cdot \cos(4x^2 - 1) \cdot 8x \\
&= \mathbf{24x\sin^2(4x^2 - 1)\cos(4x^2 - 1)}.
\end{aligned}$$

*($D_f = D_{f'} = \mathbb{R}$.)*

::: elmelet
**Elméleti háttér — többszörös láncszabály.** Az $(h \circ g \circ k)'(x) = h'(g(k(x))) \cdot g'(k(x)) \cdot k'(x)$ szabály „hagymahéj-szerűen” bontja le a kompozíciót kívülről befelé: minden lépésben csak a legkülső függvényt deriváljuk, változatlanul hagyva annak belső argumentumát, majd szorzunk a belső függvény deriváltjával.
:::

---

## 4. feladat

$$f(x) = \sqrt{x^2 + \cos(3x)}$$

**Megoldás.**

Az értelmezési tartomány $D_f = \{x \in \mathbb{R} : x^2 + \cos(3x) \ge 0\}$ (valójában minden $x \in \mathbb{R}$ esetén teljesül, kivéve esetleg ahol $x^2 < -\cos(3x)$; a gyök belsejének zérushelyeinél azonban az $f'$ nem véges, tehát $D_{f'} = \{x \in \mathbb{R} : x^2 + \cos(3x) > 0\}$ — valójában például $x=0$-ban $\cos 0 = 1$, ha $|x| \ge 1$ akkor $x^2 \ge 1 \ge -\cos(3x)$, és $|x| < 1$ esetén $x^2 \ge 0$, miközben $3x \in (-3, 3)$, ellenőrizhető, hogy $x^2 + \cos(3x)$ lokális minimumai is pozitívak maradnak-e: $\approx \pm 0{,}87$-nél $(0{,}87)^2 \approx 0{,}76 > 0$, $\cos(2{,}6) \approx -0{,}86$, így vannak rövid intervallumok ahol $x^2 + \cos(3x) < 0$, vagyis $x^2 + \cos(3x) > 0$ a differenciálhatósági tartomány).

A külső függvény a négyzetgyök, amelynek deriváltja $(\sqrt{u})' = \frac{1}{2\sqrt{u}}$ ($u > 0$). A belső kifejezés deriválásánál a $\cos(3x)$ tagra ismét láncszabályt alkalmazunk:

$$\begin{aligned}
f'(x) &= \frac{1}{2\sqrt{x^2 + \cos(3x)}} \cdot \big(x^2 + \cos(3x)\big)' \\
&= \frac{1}{2\sqrt{x^2 + \cos(3x)}} \cdot \big(2x - \sin(3x) \cdot 3\big) \\
&= \mathbf{\frac{2x - 3\sin(3x)}{2\sqrt{x^2 + \cos(3x)}}}.
\end{aligned}$$

::: elmelet
**Elméleti háttér — négyzetgyökfüggvény differenciálhatósága.** Mivel $(\sqrt{u})' = \frac{1}{2\sqrt{u}}$, az összetett $\sqrt{u(x)}$ függvény ott biztosan differenciálható (feltéve, hogy $u$ differenciálható), ahol $u(x) > 0$. Az $u(x) = 0$ pontokban a függőleges érintő miatt általában véges derivált nem létezik (hacsak $u$ ott nem magasabb rendben tűnik el).
:::

---

## 5. feladat

$$f(x) = \frac{e^{\tan x}}{1 + \sin^2 x}$$

**Megoldás.**

Értelmezési tartomány: $D_f = \mathbb{R} \setminus \left\{\frac{\pi}{2} + k\pi : k \in \mathbb{Z}\right\}$ (mert $1 + \sin^2 x \ge 1 > 0$).

A számláló deriváltja: $(e^{\tan x})' = e^{\tan x} \cdot (\tan x)' = e^{\tan x} \cdot \frac{1}{\cos^2 x}$.

A nevező deriváltja: $(1 + \sin^2 x)' = 0 + 2\sin x \cdot (\sin x)' = 2\sin x \cos x$.

Hányadosszabállyal:

$$f'(x) = \frac{e^{\tan x} \cdot \frac{1}{\cos^2 x}(1 + \sin^2 x) - e^{\tan x}(2\sin x \cos x)}{(1 + \sin^2 x)^2}.$$

Emeljük ki az $e^{\tan x}$ tényezőt, és hozzuk közös nevezőre a számlálót:

$$f'(x) = \mathbf{\frac{e^{\tan x}\big(1 + \sin^2 x - 2\sin x \cos^3 x\big)}{\cos^2 x (1 + \sin^2 x)^2}}.$$

::: elmelet
**Elméleti háttér — trigonometrikus deriváltak.** A $(\tan x)' = \frac{1}{\cos^2 x}$ összefüggés a $\frac{\sin x}{\cos x}$ hányados deriválásából következik a Pitagorasz-azonossággal ($\cos^2 x + \sin^2 x = 1$). Számlálóban megjelenő $\cos^{-2} x$ tényezőt az emeletes tört elkerüléséhez a főnevezőbe célszerű lehozni.
:::

---

## 6. feladat

$$f(x) = \log\left(\frac{1 - \cos x}{1 + \cos x}\right)$$

**Megoldás.**

Az argumentum pozitív és a nevező nem nulla pontosan akkor, ha $\cos x \neq \pm 1$, azaz $D_f = \mathbb{R} \setminus \{k\pi : k \in \mathbb{Z}\}$.

A hányadosszabály elkerülése érdekében bontsuk szét a logaritmust a $\log\frac{A}{B} = \log A - \log B$ azonossággal ($1 - \cos x > 0$ és $1 + \cos x > 0$ a tartományon):

$$f(x) = \log(1 - \cos x) - \log(1 + \cos x).$$

Most deriváljuk tagonként a láncszabály segítségével:

$$f'(x) = \frac{(1 - \cos x)'}{1 - \cos x} - \frac{(1 + \cos x)'}{1 + \cos x} = \frac{\sin x}{1 - \cos x} - \frac{-\sin x}{1 + \cos x} = \frac{\sin x}{1 - \cos x} + \frac{\sin x}{1 + \cos x}.$$

Hozzuk közös nevezőre a két törtet:

$$f'(x) = \frac{\sin x(1 + \cos x) + \sin x(1 - \cos x)}{(1 - \cos x)(1 + \cos x)} = \frac{2\sin x}{1 - \cos^2 x} = \frac{2\sin x}{\sin^2 x} = \mathbf{\frac{2}{\sin x}}.$$

*(Ellenőrzésképpen: $\frac{1 - \cos x}{1 + \cos x} = \tan^2\frac{x}{2}$, így $f(x) = 2\log\left|\tan\frac{x}{2}\right|$, aminek deriváltja $2 \cdot \frac{1/(2\cos^2(x/2))}{\tan(x/2)} = \frac{1}{\sin(x/2)\cos(x/2)} = \frac{2}{\sin x}$.)*

::: elmelet
**Elméleti háttér — algebrai/logaritmikus egyszerűsítés deriválás előtt.** Összetett logaritmusos szorzatok, hányadosok és hatványok deriválása előtt a $\log(AB) = \log A + \log B$, $\log(A/B) = \log A - \log B$ és $\log(A^p) = p\log A$ azonosságokkal drámaian egyszerűsíthetjük a számolást. Ügyelni kell azonban rá, hogy az átírt tagok egyenként is csak az adott értelmezési tartomány pozitív tartományain legyenek értelmezve.
:::

---

## 7. feladat

$$f(x) = x^2\arcsin(2x) + \frac{1}{2}\sqrt{1 - 4x^2}$$

**Megoldás.**

Értelmezési tartomány: $-1 \le 2x \le 1 \iff x \in \left[-\frac{1}{2}, \frac{1}{2}\right]$. Differenciálhatóság a nyílt $\left(-\frac{1}{2}, \frac{1}{2}\right)$ intervallumon áll fenn.

Emlékeztető: $(\arcsin u)' = \frac{u'}{\sqrt{1 - u^2}}$ ($|u| < 1$). Az első tagra szorzatszabályt és láncszabályt, a második tagra láncszabályt alkalmazunk:

$$\begin{aligned}
f'(x) &= (x^2)'\arcsin(2x) + x^2\big[\arcsin(2x)\big]' + \frac{1}{2}\left(\sqrt{1 - 4x^2}\right)' \\
&= 2x\arcsin(2x) + x^2 \cdot \frac{2}{\sqrt{1 - (2x)^2}} + \frac{1}{2} \cdot \frac{-8x}{2\sqrt{1 - 4x^2}} \\
&= 2x\arcsin(2x) + \frac{2x^2}{\sqrt{1 - 4x^2}} - \frac{2x}{\sqrt{1 - 4x^2}} \\
&= \mathbf{2x\arcsin(2x) + \frac{2x^2 - 2x}{\sqrt{1 - 4x^2}}}.
\end{aligned}$$

::: elmelet
**Elméleti háttér — inverz trigonometrikus függvények deriváltja.** Az inverz függvény deriválási tételéből adódik, hogy $\arcsin x$ az $(-1, 1)$ nyílt intervallumon differenciálható, és $(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}$ (a végpontokban $\pm 1$-nél a derivált $+\infty$, mert ott $\sin'(\pm\pi/2) = \cos(\pm\pi/2) = 0$).
:::

---

## 8. feladat

$$f(x) = \arctan\left(\frac{e^x - e^{-x}}{2}\right)$$

**Megoldás.**

Emlékeztető: $(\arctan u)' = \frac{u'}{1 + u^2}$, minden $x \in \mathbb{R}$-re értelmezett és differenciálható.

A belső függvény ($\operatorname{sh} x = \frac{e^x - e^{-x}}{2}$) deriváltja:

$$\left(\frac{e^x - e^{-x}}{2}\right)' = \frac{e^x - (-e^{-x})}{2} = \frac{e^x + e^{-x}}{2} = \operatorname{ch} x.$$

Láncszabállyal:

$$\begin{aligned}
f'(x) &= \frac{1}{1 + \left(\frac{e^x - e^{-x}}{2}\right)^2} \cdot \frac{e^x + e^{-x}}{2} \\
&= \frac{1}{1 + \frac{e^{2x} - 2 + e^{-2x}}{4}} \cdot \frac{e^x + e^{-x}}{2} \\
&= \frac{4}{4 + e^{2x} - 2 + e^{-2x}} \cdot \frac{e^x + e^{-x}}{2}.
\end{aligned}$$

Vegyük észre, hogy a nevezőben $e^{2x} + 2 + e^{-2x} = (e^x + e^{-x})^2$ teljes négyzet áll (vagy hiperbolikus függvényekkel: $1 + \operatorname{sh}^2 x = \operatorname{ch}^2 x$):

$$f'(x) = \frac{2(e^x + e^{-x})}{(e^x + e^{-x})^2} = \mathbf{\frac{2}{e^x + e^{-x}}} = \frac{1}{\operatorname{ch} x}.$$

::: elmelet
**Elméleti háttér — hiperbolikus és inverz tangens kapcsolat (Gudermann-függvény).** Az $f(x) = \arctan(\operatorname{sh} x)$ függvényt a matematikában Gudermann-függvénynek nevezik; az $1 + \operatorname{sh}^2 x = \operatorname{ch}^2 x$ hiperbolikus alapazonosság miatt deriváltja gyökök és törtek nélkül $\frac{1}{\operatorname{ch} x}$-re egyszerűsödik.
:::

---

## 9. feladat

$$f(x) = \log_3\left(\sqrt{\frac{x - 1}{x + 1}}\right)$$

**Megoldás.**

Az értelmezési tartomány: $\frac{x - 1}{x + 1} > 0 \iff x \in (-\infty, -1) \cup (1, +\infty)$.

Alakítsuk át a függvényt természetes alapú logaritmusra ($\log_a b = \frac{\log b}{\log a}$), majd használjuk a hatványazonosságot:

$$f(x) = \frac{1}{\log 3} \log\left(\left(\frac{x - 1}{x + 1}\right)^{1/2}\right) = \frac{1}{2\log 3} \log\left(\frac{x - 1}{x + 1}\right).$$

- Ha $x > 1$, mind $x - 1 > 0$, mind $x + 1 > 0$, így $f(x) = \frac{1}{2\log 3}(\log(x - 1) - \log(x + 1))$.
- Ha $x < -1$, akkor $\frac{x - 1}{x + 1} = \frac{1 - x}{-x - 1}$, ahol $1 - x > 0$ és $-x - 1 > 0$, így $f(x) = \frac{1}{2\log 3}(\log(1 - x) - \log(-x - 1))$.

Mindkét ágon ugyanaz a derivált adódik:

$$f'(x) = \frac{1}{2\log 3}\left(\frac{1}{x - 1} - \frac{1}{x + 1}\right) = \frac{1}{2\log 3} \cdot \frac{(x + 1) - (x - 1)}{(x - 1)(x + 1)} = \frac{1}{2\log 3} \cdot \frac{2}{x^2 - 1} = \mathbf{\frac{1}{(x^2 - 1)\log 3}}.$$

::: elmelet
**Elméleti háttér — általános alapú logaritmus és előjeles intervallumok.** Tetszőleges $a > 0, a \neq 1$ alap esetén $(\log_a x)' = \frac{1}{x \log a}$. Negatív tényezők hányadosánál a $\log\frac{u}{v} = \log u - \log v$ szétbontás közvetlenül csak $u, v > 0$-ra érvényes, de az abszolút értékes $\log|u| - \log|v|$ (mert $(\log|u|)' = u'/u$) mindkét tartományon változatlanul megadja a deriváltat.
:::

---

## 10. feladat

$$f(x) = e^{-x^2}\cos(5x) + \frac{x}{\log x}$$

**Megoldás.**

Értelmezési tartomány: $x > 0$ és $\log x \neq 0 \iff x \in (0, 1) \cup (1, +\infty)$.

Az első tagra ($e^{-x^2}\cos(5x)$) szorzatszabályt, a második tagra ($\frac{x}{\log x}$) hányadosszabályt alkalmazunk:

$$\begin{aligned}
f'(x) &= \big(e^{-x^2}\big)'\cos(5x) + e^{-x^2}\big(\cos(5x)\big)' + \frac{(x)'\log x - x(\log x)'}{\log^2 x} \\
&= -2x e^{-x^2}\cos(5x) + e^{-x^2}\big(-5\sin(5x)\big) + \frac{1 \cdot \log x - x \cdot \frac{1}{x}}{\log^2 x} \\
&= \mathbf{-e^{-x^2}\big(2x\cos(5x) + 5\sin(5x)\big) + \frac{\log x - 1}{\log^2 x}}.
\end{aligned}$$

::: elmelet
**Elméleti háttér — linearitás és elemi szabályok kombinálása.** Összeg deriváltja a deriváltak összege; a feladat különálló tagjait függetlenül, a saját típusuknak megfelelő szabállyal (szorzatszabály + láncszabály, illetve hányadosszabály) deriváljuk.
:::

---

## 11. feladat

$$f(x) = \arccos\left(\frac{1 - x^2}{1 + x^2}\right) \qquad (x > 0)$$

**Megoldás.**

Emlékeztető: $(\arccos u)' = -\frac{u'}{\sqrt{1 - u^2}}$ ($|u| < 1$). Mivel $x > 0$, $\left|\frac{1 - x^2}{1 + x^2}\right| < 1$ mindenütt fennáll.

Számítsuk ki külön a belső tört deriváltját:

$$\left(\frac{1 - x^2}{1 + x^2}\right)' = \frac{-2x(1 + x^2) - (1 - x^2)2x}{(1 + x^2)^2} = \frac{-2x - 2x^3 - 2x + 2x^3}{(1 + x^2)^2} = \frac{-4x}{(1 + x^2)^2}.$$

Helyettesítsük ezt be a láncszabályba, és egyszerűsítsük a gyök alatti kifejezést:

$$\begin{aligned}
f'(x) &= -\frac{1}{\sqrt{1 - \left(\frac{1 - x^2}{1 + x^2}\right)^2}} \cdot \frac{-4x}{(1 + x^2)^2} \\
&= \frac{1}{\sqrt{\frac{(1 + x^2)^2 - (1 - x^2)^2}{(1 + x^2)^2}}} \cdot \frac{4x}{(1 + x^2)^2} \\
&= \frac{1 + x^2}{\sqrt{(1 + 2x^2 + x^4) - (1 - 2x^2 + x^4)}} \cdot \frac{4x}{(1 + x^2)^2} \\
&= \frac{4x}{\sqrt{4x^2}\,(1 + x^2)} = \frac{4x}{2|x|(1 + x^2)}.
\end{aligned}$$

Mivel a feladat feltétele szerint $x > 0$, ezért $|x| = x$, így egyszerűsíthetünk $2x$-szel:

$$f'(x) = \mathbf{\frac{2}{1 + x^2}}.$$

*(Megjegyzés: ha $x = \tan\theta$ ahol $\theta = \arctan x \in (0, \pi/2)$, akkor $\frac{1 - \tan^2\theta}{1 + \tan^2\theta} = \cos(2\theta)$, és mivel $2\theta \in (0, \pi)$, $f(x) = \arccos(\cos(2\theta)) = 2\theta = 2\arctan x$! Innen is azonnal adódik $f'(x) = \frac{2}{1 + x^2}$; ugyanakkor $x < 0$-ra $f(x) = -2\arctan x$ és $f'(x) = -\frac{2}{1 + x^2}$ lenne, ez magyarázza az $|x|$ szerepét.)*

::: elmelet
**Elméleti háttér — a $\sqrt{x^2} = |x|$ azonosság szerepe.** Gyökös kifejezések egyszerűsítésekor $\sqrt{x^2}$ nem $x$-szel, hanem $|x|$-szel egyenlő. Ez pontosan azt tükrözi, hogy az itt szereplő $\arccos\frac{1 - x^2}{1 + x^2}$ függvény páros, így $x = 0$-ban megtörik (töréspontja van), és csak $x > 0$-n, illetve $x < 0$-n külön-külön differenciálható ellentétes előjellel.
:::

---

## 12. feladat

$$f(x) = (\sin x)^{\cos x} \qquad (x \in (0, \pi))$$

**Megoldás.**

Mivel az alap és a kitevő is változó, alkalmazzunk logaritmikus deriválást. Az adott $x \in (0, \pi)$ intervallumon $\sin x > 0$, tehát $y = f(x) > 0$. Vegyük mindkét oldal természetes alapú logaritmusát:

$$\log y = \log\big((\sin x)^{\cos x}\big) = \cos x \cdot \log(\sin x).$$

Deriváljuk mindkét oldalt $x$ szerint (a bal oldalon láncszabállyal, a jobb oldalon szorzatszabállyal):

$$\frac{y'}{y} = (\cos x)'\log(\sin x) + \cos x\big[\log(\sin x)\big]' \implies \frac{y'}{y} = -\sin x\log(\sin x) + \cos x \cdot \frac{\cos x}{\sin x}.$$

Szorozzuk meg mindkét oldalt $y = (\sin x)^{\cos x}$-szel:

$$f'(x) = \mathbf{(\sin x)^{\cos x}\left(\frac{\cos^2 x}{\sin x} - \sin x\log(\sin x)\right)}.$$

::: elmelet
**Elméleti háttér — logaritmikus deriválás ($u(x)^{v(x)}$ alakú függvények).** Ha mind az alap ($u > 0$), mind a kitevő ($v$) függ $x$-től, nem alkalmazhatjuk önmagában sem a hatványfüggvény-, sem az exponenciális szabályt. Az $u(x)^{v(x)} = e^{v(x)\log u(x)}$ átírás (vagy ekvivalensen a $\log y = v \log u$ differenciálása: $\frac{y'}{y} = v'\log u + v\frac{u'}{u}$) mindkét hozzájárulást automatikusan tartalmazza.
:::

---

## 13. feladat

$$f(x) = \log\left(x + \sqrt{x^2 + a^2}\right) \qquad (a \in \mathbb{R} \setminus \{0\})$$

**Megoldás.**

Mivel $a \neq 0$, minden $x \in \mathbb{R}$-re $\sqrt{x^2 + a^2} > \sqrt{x^2} = |x| \ge -x$, tehát $x + \sqrt{x^2 + a^2} > 0$, így $D_f = D_{f'} = \mathbb{R}$.

Alkalmazzuk a láncszabályt a külső $\log$ függvényre, majd deriváljuk a zárójelben lévő összeget:

$$f'(x) = \frac{1}{x + \sqrt{x^2 + a^2}} \cdot \left(x + \sqrt{x^2 + a^2}\right)' = \frac{1}{x + \sqrt{x^2 + a^2}} \cdot \left(1 + \frac{2x}{2\sqrt{x^2 + a^2}}\right).$$

Egyszerűsítsünk $2$-vel, és hozzuk közös nevezőre a zárójeles kifejezést:

$$f'(x) = \frac{1}{x + \sqrt{x^2 + a^2}} \cdot \frac{\sqrt{x^2 + a^2} + x}{\sqrt{x^2 + a^2}}.$$

Az $\left(x + \sqrt{x^2 + a^2}\right)$ tényezővel való egyszerűsítés után kapjuk:

$$f'(x) = \mathbf{\frac{1}{\sqrt{x^2 + a^2}}}.$$

*(Megjegyzés: $a = 1$ esetén $f(x) = \log(x + \sqrt{x^2 + 1}) = \operatorname{arsh} x$, az inverz hiperbolikus szinusz, amelynek ismert deriváltja pontosan $\frac{1}{\sqrt{x^2 + 1}}$.)*

::: elmelet
**Elméleti háttér — az $\operatorname{arsh}$ függvény logaritmikus alakja.** Az $\operatorname{arsh}\frac{x}{|a|} = \log\frac{x + \sqrt{x^2 + a^2}}{|a|}$ összefüggés csak egy $\log|a|$ additív konstansban különbözik a fenti függvénytől, ezért a derivált látványosan leegyszerűsödik egy racionális-gyökös primitív függvény deriváltjára.
:::

---

## 14. feladat

$$f(x) = \frac{\arcsin(\log x)}{\sqrt{x}}$$

**Megoldás.**

Értelmezési tartomány: $x > 0$ és $-1 \le \log x \le 1$, vagyis $x \in \left[\frac{1}{e}, e\right]$. A nyílt $\left(\frac{1}{e}, e\right)$ intervallumon differenciálható (a végpontokban az $\arcsin$ függőleges érintője miatt nem).

A számláló deriválásához láncszabályt alkalmazunk: $[\arcsin(\log x)]' = \frac{1}{\sqrt{1 - (\log x)^2}} \cdot \frac{1}{x}$. Hányadosszabállyal:

$$f'(x) = \frac{\frac{1}{x\sqrt{1 - \log^2 x}} \cdot \sqrt{x} - \arcsin(\log x) \cdot \frac{1}{2\sqrt{x}}}{(\sqrt{x})^2}.$$

Bővítsük a tört számlálóját és nevezőjét $2x\sqrt{x}$-szel, hogy eltüntessük a belső törteket:

$$f'(x) = \frac{2x - \arcsin(\log x) \cdot x\sqrt{1 - \log^2 x}}{2x^2\sqrt{x}\sqrt{1 - \log^2 x}} = \mathbf{\frac{2 - \arcsin(\log x)\sqrt{1 - \log^2 x}}{2x\sqrt{x}\sqrt{1 - \log^2 x}}}.$$

::: elmelet
**Elméleti háttér — kompozíció és hányados együtt.** Hányadosszabály során külön figyeljünk az értelmezési és a differenciálhatósági tartomány szétválasztására: az $\arcsin u$ és a $\sqrt{v}$ a határpontokon ($u = \pm 1$, $v = 0$) még definiált és folytonos lehet, de ott már nem végesen differenciálható.
:::

---

## 15. feladat

$$f(x) = \operatorname{arccot}\left(\sqrt{\frac{1 - \cos x}{1 + \cos x}}\right) \qquad (x \in (0, \pi))$$

**Megoldás.**

Használjuk a félszögek tangensére vonatkozó $\tan^2\frac{x}{2} = \frac{1 - \cos x}{1 + \cos x}$ azonosságot! Mivel $x \in (0, \pi)$, így $\frac{x}{2} \in \left(0, \frac{\pi}{2}\right)$, ahol a tangens pozitív, ezért a négyzetgyök és a négyzet kiejti egymást:

$$\sqrt{\frac{1 - \cos x}{1 + \cos x}} = \sqrt{\tan^2\left(\frac{x}{2}\right)} = \tan\left(\frac{x}{2}\right).$$

Továbbá $\tan \alpha = \cot\left(\frac{\pi}{2} - \alpha\right)$, és mivel $\frac{\pi}{2} - \frac{x}{2} \in \left(0, \frac{\pi}{2}\right) \subset (0, \pi)$, az adott intervallumon az $\operatorname{arccot}$ és a $\cot$ egymás inverzei:

$$f(x) = \operatorname{arccot}\left(\tan\frac{x}{2}\right) = \operatorname{arccot}\left(\cot\left(\frac{\pi}{2} - \frac{x}{2}\right)\right) = \frac{\pi}{2} - \frac{x}{2}.$$

Ennek a lineáris függvénynek a deriváltja azonnal adódik:

$$f'(x) = \mathbf{-\frac{1}{2}}.$$

::: elmelet
**Elméleti háttér — inverz trigonometrikus szögátírások.** Ha az $\operatorname{arccot}(\dots)$ vagy $\arcsin(\dots)$ argumentuma egy közismert félszög-azonossággal egyetlen trigonometrikus függvénnyé alakítható, mindig ellenőrizzük az argumentum szögtartományát (főérték-tartományt)! Itt $\frac{\pi - x}{2} \in (0, \pi/2)$ beleesik az $\operatorname{arccot}$ $(0, \pi)$ értékkészletébe, így $\operatorname{arccot}(\cot t) = t$ pontosan fennáll.
:::

---

## 16. feladat

$$f(x) = x^{\log x} \qquad (x > 0)$$

**Megoldás.**

Az $a^b = e^{b\log a}$ azonosság alapján írjuk át a függvényt $e$ alapú hatvánnyá ($x > 0$ esetén):

$$f(x) = x^{\log x} = e^{\log x \cdot \log x} = e^{(\log x)^2}.$$

Most alkalmazzuk a láncszabályt kívülről befelé ($e^u$, majd $v^2$, végül $\log x$):

$$f'(x) = e^{(\log x)^2} \cdot \big[(\log x)^2\big]' = e^{(\log x)^2} \cdot 2\log x \cdot \frac{1}{x} = x^{\log x} \cdot \frac{2\log x}{x} = \mathbf{2\log x \cdot x^{\log x - 1}}.$$

::: elmelet
**Elméleti háttér — az $a^b = e^{b\log a}$ átírás.** Mind az explicit logaritmikus deriválás ($y'/y$), mind az $e^{v(x)\log u(x)}$ exponenciális átírás ugyanarra az eredményre vezet: az exponenciális átírásnál már csak egy sima $e^w$ külső függvényt és egy szorzatot kell differenciálni.
:::

---

## 17. feladat

$$f(x) = \frac{2^{\sin x} \cdot \cos(2x)}{\tan x}$$

**Megoldás.**

Értelmezési tartomány: $\tan x$ értelmezett és nem nulla, azaz $x \in \mathbb{R} \setminus \left\{\frac{k\pi}{2} : k \in \mathbb{Z}\right\}$.

Először deriváljuk a számlálót szorzatszabállyal, felhasználva a $(2^u)' = 2^u \log 2 \cdot u'$ képletet:

$$\big(2^{\sin x} \cdot \cos(2x)\big)' = 2^{\sin x}\log 2 \cdot \cos x \cdot \cos(2x) + 2^{\sin x} \cdot \big(-2\sin(2x)\big).$$

Most alkalmazzuk a hányadosszabályt az egész törtre:

$$f'(x) = \frac{2^{\sin x}\big(\log 2 \cos x \cos(2x) - 2\sin(2x)\big)\tan x - 2^{\sin x}\cos(2x)\cdot \frac{1}{\cos^2 x}}{\tan^2 x}.$$

Írjuk be a $\tan x = \frac{\sin x}{\cos x}$ és $\tan^2 x = \frac{\sin^2 x}{\cos^2 x}$ összefüggést, majd bővítsünk $\cos^2 x$-szel (a két tag megfelelő egyszerűsítésével):

$$f'(x) = \frac{2^{\sin x}\big[\sin x \cos x\big(\log 2 \cos x \cos(2x) - 2\sin(2x)\big) - \cos(2x)\big]}{\sin^2 x}.$$

*(Ellenőrzésképpen $x = \frac{\pi}{4}$-nél $\cos(2\cdot\frac{\pi}{4}) = 0$, $u(\frac{\pi}{4}) = 0$, $\tan(\frac{\pi}{4}) = 1$, ezért $f'(\frac{\pi}{4}) = u'(\frac{\pi}{4}) = -2 \cdot 2^{1/\sqrt{2}}$; a kapott képlet $\frac{2^{1/\sqrt{2}}[\frac{1}{2}(-2) - 0]}{1/2} = -2 \cdot 2^{1/\sqrt{2}}$-t ad.)*

::: elmelet
**Elméleti háttér — tetszőleges alapú exponenciális és emeletes törtek kezelése.** Tetszőleges $a > 0$ alap esetén $(a^u)' = a^u \log a \cdot u'$. Hányadosszabály után a $\tan x = \frac{\sin x}{\cos x}$ és $(\tan x)' = \frac{1}{\cos^2 x}$ együttes átírásánál gondosan figyeljünk a $\cos^2 x$-szel való bővítésre, hogy mind a főnevezőből, mind a számláló összes tagjából pontosan a megfelelő $\cos x$-hatvány maradjon meg.
:::

---

## 18. feladat

$$f(x) = \log(\log(\tan x)) \qquad \left(x \in \left(\frac{\pi}{4}, \frac{\pi}{2}\right)\right)$$

**Megoldás.**

Az adott $\left(\frac{\pi}{4}, \frac{\pi}{2}\right)$ intervallumon $\tan x > 1$, így $\log(\tan x) > 0$, a függvény végig jól értelmezett.

Háromszoros láncszabállyal, kívülről befelé haladva:

$$\begin{aligned}
f'(x) &= \frac{1}{\log(\tan x)} \cdot \big[\log(\tan x)\big]' \\
&= \frac{1}{\log(\tan x)} \cdot \frac{1}{\tan x} \cdot (\tan x)' \\
&= \frac{1}{\log(\tan x)} \cdot \frac{\cos x}{\sin x} \cdot \frac{1}{\cos^2 x} \\
&= \frac{1}{\sin x \cos x \log(\tan x)} = \mathbf{\frac{2}{\sin(2x)\log(\tan x)}}.
\end{aligned}$$

::: elmelet
**Elméleti háttér — szimmetrikus két- és háromszintű logaritmusok.** A $(\log g(x))' = \frac{g'(x)}{g(x)}$ formula (a $g$ *logaritmikus deriváltja*) többszörös egymásba ágyazásnál egyszerű szorzatot ad. A $\sin x \cos x = \frac{1}{2}\sin(2x)$ kétszeresszög-képlettel az eredmény gyakran tovább tömöríthető.
:::

---

## 19. feladat

Legyen $y = g(x) = x^5 + 2x^3 + x - 4$. Határozza meg a $g^{-1}$ inverz függvény deriváltját az $y_0 = 0$ pontban, azaz számítsa ki a $(g^{-1})'(0)$ értéket!

**Megoldás.**

Az inverz függvény deriválási tétele szerint:
$$(g^{-1})'(y_0) = \frac{1}{g'(x_0)},$$
ahol $x_0$ az az egyetlen érték, amelyre $g(x_0) = y_0$ (és $g'(x_0) \neq 0$).

**1. lépés ($x_0$ meghatározása):** Oldjuk meg a $g(x_0) = 0$ egyenletet:
$$x_0^5 + 2x_0^3 + x_0 - 4 = 0.$$
Egész gyökök próbálgatásával látható, hogy $x_0 = 1$ megoldás, hiszen $1^5 + 2(1)^3 + 1 - 4 = 0$.

**2. lépés (invertálhatóság és $g'(x)$):**
$$g'(x) = 5x^4 + 6x^2 + 1.$$
Mivel $5x^4 \ge 0$ és $6x^2 \ge 0$, ezért $g'(x) \ge 1 > 0$ minden $x \in \mathbb{R}$-re. A $g$ függvény szigorúan monoton növekvő $\mathbb{R}$-en, tehát invertálható, és az $x_0 = 1$ megoldás egyértelmű.

**3. lépés ($(g^{-1})'(0)$ kiszámítása):**
$$g'(1) = 5(1)^4 + 6(1)^2 + 1 = 12 \implies (g^{-1})'(0) = \mathbf{\frac{1}{12}}.$$

::: elmelet
**Elméleti háttér — az inverz függvény deriváltja.** Ha $f$ folytonos és szigorúan monoton egy intervallumon, $f'(x_0) \neq 0$, és $y_0 = f(x_0)$, akkor az $f^{-1}$ inverz függvény differenciálható $y_0$-ban, és $(f^{-1})'(y_0) = \frac{1}{f'(x_0)}$. Geometriai oka, hogy $f^{-1}$ grafikonja az $f$ grafikonjának az $y = x$ egyenesre vett tükörképe, így az érintők meredeksége reciprokos kapcsolatban áll.
:::

---

## 20. feladat

Legyen $y = h(x) = e^{2x} + 3x + \sin x$. Határozza meg a $h^{-1}$ inverz függvény deriváltját az $y_0 = 1$ pontban, azaz számítsa ki a $(h^{-1})'(1)$ értéket!

**Megoldás.**

**1. lépés ($x_0$ meghatározása):** Keressük azt az $x_0$ értéket, amelyre $h(x_0) = 1$:
$$e^{2x_0} + 3x_0 + \sin x_0 = 1.$$
Próbálgatással látható, hogy $x_0 = 0$ megoldás, mert $e^0 + 3(0) + \sin 0 = 1 + 0 + 0 = 1$.

**2. lépés (invertálhatóság és $h'(x)$):**
$$h'(x) = 2e^{2x} + 3 + \cos x.$$
Mivel $2e^{2x} > 0$ és $\cos x \ge -1$, ezért $h'(x) > 0 + 3 - 1 = 2 > 0$ minden $x \in \mathbb{R}$ esetén. A $h$ függvény szigorúan monoton növekvő $\mathbb{R}$-en, így invertálható, és az $x_0 = 0$ megoldás egyértelmű.

**3. lépés ($(h^{-1})'(1)$ kiszámítása):**
$$h'(0) = 2e^0 + 3 + \cos 0 = 2(1) + 3 + 1 = 6 \implies (h^{-1})'(1) = \mathbf{\frac{1}{6}}.$$

::: elmelet
**Elméleti háttér — injektivitás ellenőrzése deriválttal.** Transzcendens egyenleteknél (mint itt $e^{2x} + 3x + \sin x = 1$) nem tudjuk algebrai úton kizárni más megoldások létezését; éppen a $h'(x) > 0$ egyenlőtlenség igazolja, hogy a függvény szigorúan nő, így a talált $x_0$ gyök szükségképpen az egyetlen.
:::
