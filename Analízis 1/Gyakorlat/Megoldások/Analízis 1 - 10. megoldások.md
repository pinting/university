# Analízis 1 – 10. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 99. feladat

Bizonyítsuk be, hogy ha $f$ folytonos egy pontban, akkor $|f|$ is folytonos ugyanitt. Fordítva, $|f|$ folytonosságából következik-e $f$ folytonossága?

**Megoldás.**

**$f$ folytonos $\Rightarrow$ $|f|$ folytonos.** A fordított háromszög-egyenlőtlenség szerint
$$\big||f(x)| - |f(a)|\big| \le |f(x) - f(a)|.$$
Ha $\varepsilon > 0$-hoz $\delta$ olyan, hogy $|x - a| < \delta$, $x \in D(f)$ esetén $|f(x) - f(a)| < \varepsilon$, akkor ugyanez a $\delta$ jó $|f|$-re is. $\blacksquare$

**A megfordítás nem igaz.** Legyen
$$f(x) = \begin{cases} 1 & \text{ha } x \ge 0, \\ -1 & \text{ha } x < 0. \end{cases}$$
Ekkor $|f| \equiv 1$ mindenhol folytonos, de $f$ a $0$-ban nem folytonos ($f(-\frac1n) = -1 \not\to 1 = f(0)$). (Sőt, $f(x) = 1$, ha $x \in \mathbb{Q}$, és $-1$ különben: ez sehol sem folytonos, $|f|$ pedig konstans.)

(Egy esetben mégis igaz a megfordítás: ha $f(a) = 0$. Ekkor $|f(x) - f(a)| = \big||f(x)| - |f(a)|\big|$, így $|f|$ folytonossága $a$-ban éppen $f$ folytonossága.)

::: elmelet
**Elméleti háttér — folytonosság és Lipschitz-becslés.** Ha $|h(u) - h(v)| \le |u - v|$ (mint az abszolútérték-függvénynél), akkor $h \circ f$ folytonos minden olyan pontban, ahol $f$ az: ugyanaz a $\delta$ megfelel. Általában is: folytonos függvények kompozíciója folytonos. Visszafelé viszont információ vész el: $|f|$ nem „látja” az előjelet, így az előjelváltásból adódó ugrást sem.
:::

## 100. feladat

Bizonyítsuk be, hogy ha $f$ és $g$ folytonosak az $a$ pontban, akkor $\max(f, g)$ és $\min(f, g)$ is azok.

**Megoldás.**

Minden $u, v \in \mathbb{R}$-re
$$\max(u, v) = \frac{u + v + |u - v|}{2}, \qquad \min(u, v) = \frac{u + v - |u - v|}{2}$$
(ha $u \ge v$, a számláló $2u$, illetve $2v$; ha $u < v$, fordítva). Így
$$\max(f, g) = \frac{f + g + |f - g|}{2}, \qquad \min(f, g) = \frac{f + g - |f - g|}{2}.$$
$f - g$ folytonos $a$-ban, a 99. feladat szerint $|f - g|$ is, és folytonos függvények összege, különbsége, konstansszorosa folytonos. $\blacksquare$

::: elmelet
**Elméleti háttér — algebrai „trükk” és műveletek.** A $\max$ és $\min$ kifejezhető összeadással és abszolútértékkel, ezért folytonosságuk visszavezethető az alapműveletekre és $|\cdot|$ folytonosságára. Ugyanez a képlet szerepel a pozitív és negatív részben: $f^+ = \max(f, 0) = \frac{f + |f|}{2}$, $f^- = \max(-f, 0) = \frac{|f| - f}{2}$.
:::

## 101. feladat

Bizonyítsuk be, hogy ha $f, g \in C[0, 1]$ és $\forall x \in \mathbb{Q} \cap [0, 1]$-re $f(x) = g(x)$, akkor $\forall x \in [0, 1]$-re $f(x) = g(x)$.

**Megoldás.**

Legyen $x \in [0, 1]$ tetszőleges. A racionális számok sűrűk, ezért van olyan $r_n \in \mathbb{Q} \cap [0, 1]$ sorozat, amelyre $r_n \to x$. (Pl. $r_n = [nx]/n$: $0 \le r_n \le x$ és $x - \frac1n < r_n \le x$.) $f$ és $g$ folytonos $x$-ben, így az átviteli elv szerint
$$f(x) = \lim_{n \to \infty} f(r_n) = \lim_{n \to \infty} g(r_n) = g(x),$$
mert $f(r_n) = g(r_n)$ minden $n$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — átviteli elv folytonosságra.** $f$ pontosan akkor folytonos $a$-ban, ha minden $x_n \to a$, $x_n \in D(f)$ sorozatra $f(x_n) \to f(a)$. Ebből: **folytonos függvényt egy sűrű halmazon felvett értékei egyértelműen meghatározzák**. Ekvivalensen: $h = f - g$ folytonos, és ha egy sűrű halmazon $0$, akkor mindenhol $0$.
:::

## 102. feladat

Tegyük fel, hogy $f$ monoton növő $[a, b]$-ben és minden $f(a)$ és $f(b)$ közötti értéket felvesz. Mutassuk meg, hogy $f \in C[a, b]$.

**Megoldás.**

**Jobbról folytonosság $c \in [a, b)$-ben.** Legyen $\varepsilon > 0$.

- Ha $f(c) = f(b)$, akkor a monotonitás miatt $f$ konstans $[c, b]$-n, így $c$-ben jobbról folytonos.
- Ha $f(c) < f(b)$, legyen $y = \min\{f(c) + \frac\varepsilon2,\ f(b)\}$. Ekkor $f(a) \le f(c) < y \le f(b)$, tehát a feltétel szerint van olyan $\xi \in [a, b]$, amelyre $f(\xi) = y$. Mivel $f(\xi) > f(c)$ és $f$ monoton nő, $\xi > c$. Legyen $\delta = \xi - c > 0$. Ha $c \le x < c + \delta$, akkor
$$f(c) \le f(x) \le f(\xi) = y < f(c) + \varepsilon.$$
  Tehát $|f(x) - f(c)| < \varepsilon$.

**Balról folytonosság $c \in (a, b]$-ben** ugyanígy, $y = \max\{f(c) - \frac\varepsilon2,\ f(a)\}$ választással: ha $f(c) = f(a)$, akkor $f$ konstans $[a, c]$-n; különben $f(a) \le y < f(c)$, a felvevő hely $\xi < c$, és $\xi < x \le c$ esetén $f(c) - \varepsilon < y = f(\xi) \le f(x) \le f(c)$.

Mindkét oldalról folytonos minden belső pontban, a végpontokban a megfelelő oldalról, tehát $f \in C[a, b]$. $\blacksquare$

(Szemléletesen: monoton függvénynek csak **ugrásos** szakadása lehet, és egy ugrás kihagy egy egész értékintervallumot. Ezt zárja ki a feltétel.)

::: elmelet
**Elméleti háttér — monoton függvények szakadásai.** Monoton függvénynek minden pontban léteznek a féloldali határértékei: növő $f$-re $f(c - 0) = \sup_{x < c} f(x) \le f(c) \le \inf_{x > c} f(x) = f(c + 0)$. Szakadás csak úgy lehet, hogy ezek közül valamelyik egyenlőtlenség szigorú (ugrás), és akkor a $(f(c), f(c + 0))$ vagy $(f(c - 0), f(c))$ intervallum értékeit $f$ nem veszi fel. Ezért **monoton függvényre** a Darboux-tulajdonság (közbülsőérték-tulajdonság) már **ekvivalens** a folytonossággal (vö. 98. feladat).
:::

## 103. feladat

Van-e olyan $(5, +\infty)$-en folytonos függvény, melyre $\lim\limits_{x \to 5+0} f(x) = +\infty$, de $f$ az 5 egyetlen pontozott jobboldali környezetében sem monoton.

**Megoldás.**

**Van.** Legyen
$$f(x) = \frac{1}{x - 5}\left(2 + \sin\frac{1}{x - 5}\right), \qquad x > 5.$$

- *Folytonos* $(5, \infty)$-en, mert folytonos függvények szorzata és kompozíciója.
- *$+\infty$-hez tart:* $2 + \sin(\dots) \ge 1$, ezért $f(x) \ge \frac{1}{x - 5} \to +\infty$, ha $x \to 5 + 0$.
- *Nem monoton* egyetlen $(5, 5 + \delta)$ környezetben sem. Legyen $t = \frac{1}{x - 5}$, ekkor $f = t(2 + \sin t)$, és $x \mapsto t$ szigorúan fogyó bijekció $(5, 5 + \delta) \to (\frac1\delta, \infty)$. Legyen $t_n = \frac\pi2 + 2n\pi$ és $s_n = \frac{3\pi}2 + 2n\pi$. Ekkor
$$t_n(2 + \sin t_n) = 3t_n = \tfrac{3\pi}2 + 6n\pi, \qquad s_n(2 + \sin s_n) = s_n = \tfrac{3\pi}2 + 2n\pi.$$
  $n \ge 1$-re $t_n < s_n < t_{n+1}$, és a hozzájuk tartozó függvényértékek: nagy, kicsi, nagy ($\tfrac{3\pi}2 + 6n\pi > \tfrac{3\pi}2 + 2n\pi < \tfrac{3\pi}2 + 6(n+1)\pi$). Adott $\delta$-hoz $n$-et elég nagynak választva $t_n > \frac1\delta$, így a megfelelő három $x$ pont $(5, 5 + \delta)$-ban van. Ott $f$ értékei fel-le-fel váltakoznak, tehát $f$ nem monoton.

::: elmelet
**Elméleti háttér — határérték és monotonitás.** $\lim_{x\to 5+0} f(x) = +\infty$ csak annyit mond, hogy $f$ „végül” minden korlátnál nagyobb, a növekedés módjáról semmit. Egy $\to \infty$ tartó alsó becslés ($\frac1{x - 5}$) mellé egy egyre gyorsabban oszcilláló tényezőt ($2 + \sin\frac1{x-5} \in [1, 3]$) szorozva a határérték megmarad, a monotonitás minden környezetben elromlik. A nem monotonitáshoz elég három pont $x_1 < x_2 < x_3$ „fel-le” vagy „le-fel” értékmintával.
:::

## 104. feladat

a) Legyen $f$ konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = \infty$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

b\*) Legyen $f$ szigorúan konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = \infty$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

c) Legyen $f$ konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = 0$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

**Megoldás.**

**a) Igen.** $f(x) = -x$ lineáris, tehát konvex (a konvexitási egyenlőtlenség egyenlőséggel teljesül), és $\lim_{-\infty} f = +\infty$, $\lim_{+\infty} f = -\infty$.

**b) Igen.** Legyen $f(x) = \sqrt{x^2 + 1} - 2x$.

- *Határértékek:* $x < 0$-ra $f(x) \ge -2x \to +\infty$ ($x \to -\infty$). $x \ge 0$-ra $\sqrt{x^2 + 1} \le x + 1$ (négyzetre emelve $x^2 + 1 \le x^2 + 2x + 1$), így $f(x) \le 1 - x \to -\infty$ ($x \to +\infty$).
- *Szigorú konvexitás:* a $-2x$ lineáris tag nem változtat rajta, elég $h(x) = \sqrt{x^2 + 1}$-re belátni. Legyen $x \ne y$, $\lambda \in (0, 1)$, $\mu = 1 - \lambda$. Mindkét oldal pozitív, ezért elég a négyzeteket összehasonlítani. Az $1 = (\lambda + \mu)^2$ felírással
$$h(\lambda x + \mu y)^2 = \lambda^2 x^2 + \mu^2 y^2 + 2\lambda\mu xy + \lambda^2 + \mu^2 + 2\lambda\mu,$$
$$\big(\lambda h(x) + \mu h(y)\big)^2 = \lambda^2(x^2 + 1) + \mu^2(y^2 + 1) + 2\lambda\mu\sqrt{(x^2 + 1)(y^2 + 1)}.$$
  A különbség $2\lambda\mu\big[\sqrt{(x^2 + 1)(y^2 + 1)} - (xy + 1)\big]$. Mivel $(x^2 + 1)(y^2 + 1) - (xy + 1)^2 = (x - y)^2 > 0$, a gyök nagyobb $|xy + 1| \ge xy + 1$-nél, tehát a különbség pozitív: $h(\lambda x + \mu y) < \lambda h(x) + \mu h(y)$.

(Ha az exponenciális függvény már ismert: $f(x) = e^{-x} - x$ is jó.)

**c) Nem.** Megmutatjuk, hogy ekkor $f$ monoton növő és $f \ge 0$.

Konvex függvényre $z < x < y$ esetén a húrok meredeksége nő:
$$\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(x)}{y - x}.$$
Tegyük fel, hogy valamely $x < y$-ra $f(x) > f(y)$, azaz $m = \frac{f(x) - f(y)}{y - x} > 0$. Ekkor minden $z < x$-re $\frac{f(x) - f(z)}{x - z} \le -m$, vagyis
$$f(z) \ge f(x) + m(x - z) \xrightarrow{z \to -\infty} +\infty,$$
ellentmondásban $\lim_{-\infty} f = 0$-val. Tehát $f$ monoton növő. Ekkor $z < x$-re $f(z) \le f(x)$, és $z \to -\infty$-nel $0 \le f(x)$. Így $f \ge 0$, és $\lim_{+\infty} f = -\infty$ lehetetlen. (Sőt, $\lim_{+\infty} f$ létezik, és $[0, \infty]$-beli.)

::: elmelet
**Elméleti háttér — konvex függvények meredeksége.** $f$ konvex, ha $f(\lambda x + (1 - \lambda)y) \le \lambda f(x) + (1 - \lambda) f(y)$; ezzel ekvivalens a **három húr lemma**: $z < x < y$ esetén a $[z, x]$, $[z, y]$, $[x, y]$ húrok meredeksége ebben a sorrendben nő. Következmény: ha valahol negatív meredekségű húr van, akkor attól balra a függvény legalább lineárisan nő $+\infty$ felé. Lineáris függvény konvex, de nem szigorúan; szigorú konvexitás és lineáris tag összege szigorúan konvex.
:::

## 105. feladat

Mutassuk meg, hogy az $x^7 - 3x^2 + 5 = 0$ egyenletnek van valós gyöke.

**Megoldás.**

$p(x) = x^7 - 3x^2 + 5$ polinom, tehát mindenhol folytonos.
$$p(-1) = -1 - 3 + 5 = 1 > 0, \qquad p(-2) = -128 - 12 + 5 = -135 < 0.$$
A Bolzano-tétel szerint van $c \in (-2, -1)$, amelyre $p(c) = 0$. $\blacksquare$

(Általában: minden páratlan fokszámú valós polinomnak van valós gyöke, mert $\pm\infty$-ben ellentétes előjelű végtelenhez tart.)

::: elmelet
**Elméleti háttér — Bolzano-tétel.** Ha $f \in C[a, b]$ és $f(a) \cdot f(b) < 0$, akkor van $c \in (a, b)$, amelyre $f(c) = 0$. Gyök létezésének igazolásához elég két ellentétes előjelű helyettesítési értéket találni; a gyök helyét is ezek közé lokalizálja (intervallumfelezéssel tetszőleges pontosságig).
:::

## 106. feladat

Tegyük föl, hogy $f \in C[a, b]$ és $x_1, \dots, x_n \in [a, b]$. Mutassuk meg, hogy $\exists\, c \in [a, b]$, hogy $f(c) = \dfrac{f(x_1) + \dots + f(x_n)}{n}$.

**Megoldás.**

Legyen $A = \frac{f(x_1) + \dots + f(x_n)}{n}$, és válasszunk indexeket úgy, hogy $f(x_i) = \min_k f(x_k)$ és $f(x_j) = \max_k f(x_k)$. A számtani közép a legkisebb és a legnagyobb érték között van:
$$f(x_i) \le A \le f(x_j).$$
Ha $x_i = x_j$, akkor minden érték egyenlő, és $c = x_i$ jó. Különben $f$ folytonos az $x_i$ és $x_j$ által határolt zárt intervallumon, amely része $[a, b]$-nek. A Bolzano-tétel (közbülsőérték-tétel) szerint ott felveszi az $f(x_i)$ és $f(x_j)$ közötti $A$ értéket. $\blacksquare$

::: elmelet
**Elméleti háttér — közbülsőérték-tétel.** Ha $f \in C[\alpha, \beta]$, akkor $f$ minden $f(\alpha)$ és $f(\beta)$ közötti értéket felvesz (a Bolzano-tétel alkalmazva $f - y$-ra). Ha egy szám két függvényérték közé esik — mint itt a számtani közép a minimum és a maximum közé —, akkor a két hely között fel is vétetik.
:::

## 107. feladat

Tegyük fel, hogy $f, g \in C[0, 1]$ és $(f(0) - g(0))(f(1) - g(1)) < 0$. Mutassuk meg, hogy az $f(x) = g(x)$ egyenletnek van megoldása a $(0, 1)$-ben.

**Megoldás.**

$h = f - g \in C[0, 1]$, és a feltétel szerint $h(0) \cdot h(1) < 0$. A Bolzano-tétel szerint van $c \in (0, 1)$, amelyre $h(c) = 0$, azaz $f(c) = g(c)$. ($c$ nem végpont, mert $h(0) \ne 0$ és $h(1) \ne 0$.) $\blacksquare$

::: elmelet
**Elméleti háttér — egyenletek visszavezetése gyökkeresésre.** Az $f(x) = g(x)$ egyenlet megoldásai a $h = f - g$ zérushelyei; folytonos függvények különbsége folytonos, így a Bolzano-tétel alkalmazható. A szorzat negatív volta pontosan azt jelenti, hogy $h$ a két végpontban ellentétes előjelű.
:::

## 108. feladat

a) T.f.h. $f \in C[a, b]$. Mutassuk meg, hogy ha $f$ minden $R(f)$-beli értéket pontosan egyszer vesz fel, akkor szigorúan monoton.

b) Létezik-e $f \in C[a, b]$, mely minden $R(f)$-beli értéket pontosan kétszer vesz fel?

c) T.f.h. $f \in C[a, b]$. Mutassuk meg, hogy ha $f$ minden $R(f)$-beli értéket legfeljebb kétszer vesz fel, akkor három szigorúan monoton darabból áll.

**Megoldás.**

**a)** A feltétel szerint $f$ injektív.

*Lemma: ha $x < y < z$, akkor $f(y)$ szigorúan $f(x)$ és $f(z)$ között van.* A három érték injektivitás miatt különböző. Tegyük fel, hogy $f(y) > \max\{f(x), f(z)\}$, és legyen $\max\{f(x), f(z)\} < v < f(y)$. A Bolzano-tétel szerint $v$-t $f$ felveszi $(x, y)$-ban és $(y, z)$-ben is, ez két különböző hely – ellentmondás. Ugyanígy $f(y) < \min\{f(x), f(z)\}$ sem lehet.

Legyen most (pl.) $f(a) < f(b)$; a másik eset $-f$-re visszavezethető. Belátjuk, hogy $x < y$ esetén $f(x) < f(y)$.

- A lemma szerint minden $a < x < b$-re $f(a) < f(x) < f(b)$. Így ha $x = a$ vagy $y = b$, kész vagyunk.
- Ha $a < x < y$: a lemma az $(a, x, y)$ hármasra azt adja, hogy $f(x)$ szigorúan $f(a)$ és $f(y)$ között van. Mivel $f(a) < f(x)$, csak $f(x) < f(y)$ lehet. $\blacksquare$

**b) Nem létezik.** Tegyük fel, hogy $f$ ilyen. $f$ nem konstans (különben minden értéket végtelen sokszor venne fel), így a Weierstrass-tétel szerinti $m = \min f$ és $M = \max f$ különbözők. Mindkettőt pontosan két helyen veszi fel, ez négy különböző pont, közülük legfeljebb kettő végpont. Van tehát olyan szélsőértékhely, amely $(a, b)$-be esik. Feltehetjük, hogy ez maximumhely (különben $-f$-et nézzük), legyen ez $\xi$, a másik maximumhely $\eta$. Feltehetjük azt is, hogy $\eta > \xi$ (különben az $x \mapsto a + b - x$ tükrözést alkalmazzuk).

Mivel $M$-et csak $\xi$-ben és $\eta$-ban veszi fel, $f(a) < M$ ($a < \xi$), és a $w = \frac{\xi + \eta}2$ pontban is $f(w) < M$. Legyen
$$\max\{f(a), f(w)\} < y < M.$$
A Bolzano-tétel szerint $f$ felveszi $y$-t az $(a, \xi)$, a $(\xi, w)$ és a $(w, \eta)$ intervallumban is, ez három különböző hely – ellentmondás. $\blacksquare$

**c)** Belátjuk: vannak $a \le c_1 \le c_2 \le b$ pontok, hogy $f$ szigorúan monoton az $[a, c_1]$, $[c_1, c_2]$, $[c_2, b]$ intervallumokon (azaz legfeljebb három szigorúan monoton darabból áll).

*0. lépés.* $f$ semmilyen (nem elfajuló) részintervallumon sem konstans, különben ott egy értéket végtelen sokszor venne fel.

*1. lépés (öt pont).* Nincsenek olyan $x_1 < x_2 < x_3 < x_4 < x_5$ pontok, amelyekre $y_i = f(x_i)$ jelöléssel
$$y_1 < y_2 > y_3 < y_4 > y_5$$
(és $-f$-re alkalmazva: a fordított, $y_1 > y_2 < y_3 > y_4 < y_5$ minta sem lehetséges).

- Ha $y_1 < y_4$: legyen $\max\{y_1, y_3\} < v < \min\{y_2, y_4\}$. Ezt $f$ felveszi $(x_1, x_2)$-ben, $(x_2, x_3)$-ban és $(x_3, x_4)$-ben – háromszor.
- Ha $y_5 < y_2$: legyen $\max\{y_3, y_5\} < v < \min\{y_2, y_4\}$. Ezt felveszi $(x_2, x_3)$-ban, $(x_3, x_4)$-ben és $(x_4, x_5)$-ben – háromszor.
- Ha egyik sem: $y_2 \le y_5 < y_4 \le y_1 < y_2$, ellentmondás.

*2. lépés (legfeljebb két belső szélsőértékhely).* Legyen $T$ a $(a, b)$-beli lokális szélsőértékhelyek halmaza. Ha $t \in T$, akkor $f(t)$-t legfeljebb még egy helyen veszi fel, így $t$ egy kis pontozott környezetében $f(x) \ne f(t)$: a lokális szélsőérték **szigorú**. Tegyük fel, hogy $t_1 < t_2 < t_3 \in T$. Válasszunk $u_i < t_i < v_i$ pontokat olyan közel, hogy $v_1 < u_2$, $v_2 < u_3$, és $f(u_i), f(v_i) < f(t_i)$, ha $t_i$ maximumhely, illetve $>$, ha minimumhely. A
$$u_1 < t_1 < v_1 < u_2 < t_2 < v_2 < u_3 < t_3 < v_3$$
pontsorozatban a szomszédos értékek közötti „lépések” előjele minden $t_i$-nél szigorúan vált. (Ha két szomszédos érték egyenlő, pl. $f(v_1) = f(u_2)$, hagyjuk el $u_2$-t: a $v_1 \to t_2$ lépés előjele ugyanaz, mint az $u_2 \to t_2$ lépésé.) Legalább három előjelváltás van, tehát legalább négy azonos előjelű „szakasz”. Ezek végpontjait véve öt pontot kapunk szigorúan váltakozó értékekkel – ez az 1. lépés szerint lehetetlen. Tehát $|T| \le 2$.

*3. lépés.* Legyenek $c_1 \le c_2$ a $T$ elemei (ha kevesebb van, a hiányzókat $b$-nek vesszük). Legyen $[\alpha, \beta]$ az $[a, c_1]$, $[c_1, c_2]$, $[c_2, b]$ intervallumok egyike; ennek belsejében nincs $T$-beli pont. $f$ injektív $[\alpha, \beta]$-n: ha $\alpha \le x < z \le \beta$ és $f(x) = f(z)$ volna, akkor $f$ nem konstans $[x, z]$-n (0. lépés), így a Weierstrass-tétel szerint felvett maximuma vagy minimuma eltér $f(x)$-től. Ezt egy $s \in (x, z)$ belső pontban veszi fel, ami lokális szélsőértékhely, tehát $s \in T \cap (\alpha, \beta)$ – ellentmondás. Az a) rész szerint $f$ szigorúan monoton $[\alpha, \beta]$-n. $\blacksquare$

(Három darab tényleg kellhet: a $(0, 2)$, $(1, 3)$, $(2, 0)$, $(3, 1)$ pontokat összekötő töröttvonal minden értéket legfeljebb kétszer vesz fel, és fel–le–fel halad.)

::: elmelet
**Elméleti háttér — injektív folytonos függvények.** A Bolzano-tétel legfontosabb következménye: **intervallumon folytonos és injektív függvény szigorúan monoton**. A bizonyítás kulcsa, hogy egy belső „csúcs” (érték, amely mindkét szomszédjánál nagyobb) alatti értékeket a függvény a csúcs **mindkét oldalán** felveszi. Ugyanez az érvelés számolja meg az ismétlődéseket b)-ben és c)-ben: minden belső szélsőértékhely környékén a közeli értékek kétszer vétetnek fel, és több „hullám” egymásra rakódva már háromszoros felvételt kényszerít ki. A Weierstrass-tétel ($f \in C[a, b]$ felveszi a minimumát és maximumát) adja a szélsőértékhelyek létezését.
:::

## 109. feladat

Egy kukac alszik a $[0, 1]$ intervallumban. Először egyenletesen elnyúlik a 0 és 1 között (egyik vége a 0-ban a másik vége az 1-ben). Majd felébred és fészkelődni kezd. A fészkelődés után is a $[0, 1]$-ben marad és nem szakad el. Mutassuk meg, hogy van olyan pontja, amelyik ugyanoda került a fészkelődés után, ahol eredetileg volt.

**Megoldás.**

*Modell.* A kukac eredetileg $x$-ben levő pontja a fészkelődés után az $f(x)$ helyre kerül. Mivel a kukac a $[0, 1]$-ben marad, $f : [0, 1] \to [0, 1]$; mivel nem szakad el, $f$ folytonos. Olyan $c$ pontot keresünk, amelyre $f(c) = c$ (**fixpont**).

Legyen $g(x) = f(x) - x$, ez folytonos $[0, 1]$-en, és
$$g(0) = f(0) \ge 0, \qquad g(1) = f(1) - 1 \le 0.$$
Ha $g(0) = 0$ vagy $g(1) = 0$, akkor $c = 0$, illetve $c = 1$ jó. Különben $g(0) > 0 > g(1)$, és a Bolzano-tétel szerint van $c \in (0, 1)$, amelyre $g(c) = 0$, azaz $f(c) = c$. $\blacksquare$

::: elmelet
**Elméleti háttér — Brouwer-féle fixponttétel egy dimenzióban.** Minden folytonos $f : [0, 1] \to [0, 1]$ függvénynek van fixpontja: a $g(x) = f(x) - x$ segédfüggvény a végpontokban $\ge 0$, illetve $\le 0$, így a Bolzano-tétel szerint van zérushelye. Geometriailag: a $[0, 1]^2$ négyzetben haladó folytonos grafikon, amely a bal oldalról a jobb oldalra jut, metszi az $y = x$ átlót.
:::

## 110. feladat

Egy függvény Darboux tulajdonságú az $I \subset \mathbb{R}$ intervallumban, ha $\forall a, b \in I$, $a < b$-re teljesül, hogy minden olyan $y$-hoz, ami $f(a)$ és $f(b)$ közé esik található $c \in (a, b)$, hogy $f(c) = y$.

a) Mutassuk meg, hogy a folytonos függvények rendelkeznek a Darboux tulajdonsággal.

b) Adjunk példát olyan függvényre, ami rendelkezik a Darboux tulajdonsággal $I = \mathbb{R}$-en, de nem folytonos.

c\*) Adjunk példát olyan függvényre, ami rendelkezik a Darboux tulajdonsággal $I = \mathbb{R}$-en, de egyetlen pontban sem folytonos.

**Megoldás.**

**a)** Legyen $f$ folytonos $I$-n, $a < b \in I$, és $y$ szigorúan $f(a)$ és $f(b)$ között. $f \in C[a, b]$, és $h = f - y$ a két végpontban ellentétes előjelű. A Bolzano-tétel szerint van $c \in (a, b)$, amelyre $h(c) = 0$, azaz $f(c) = y$. $\blacksquare$

**b)** Legyen
$$f(x) = \begin{cases} \sin\dfrac1x & \text{ha } x \ne 0, \\ 0 & \text{ha } x = 0. \end{cases}$$

- *Nem folytonos a $0$-ban:* $x_n = \frac{1}{\pi/2 + 2n\pi} \to 0$, de $f(x_n) = 1 \not\to 0 = f(0)$.
- *Darboux-tulajdonságú.* Először: minden $\varepsilon > 0$-ra $f$ a $(0, \varepsilon)$ intervallumon felvesz minden $[-1, 1]$-beli értéket. Ha $y = \sin\theta$, $\theta \in [-\frac\pi2, \frac\pi2]$, akkor $x = \frac{1}{\theta + 2n\pi} \in (0, \varepsilon)$ elég nagy $n$-re, és $f(x) = y$. $f$ páratlan, ezért ugyanez igaz $(-\varepsilon, 0)$-ra is.

  Legyen $a < b$ és $y$ szigorúan $f(a)$ és $f(b)$ között; ekkor $y \in (-1, 1)$.
  - Ha $0 \notin [a, b]$, akkor $f$ folytonos $[a, b]$-n, és alkalmazható az a) rész.
  - Ha $0 \in [a, b]$, akkor $(a, b)$ tartalmaz egy $(0, \varepsilon)$ vagy $(-\varepsilon, 0)$ intervallumot (ha $a < 0$, akkor az utóbbit, ha $a = 0$, az előbbit), és ott $f$ minden $[-1, 1]$-beli értéket felvesz, így $y$-t is.

**c\*)** Minden $x \in \mathbb{R}$-re írjuk fel a törtrészét kettes számrendszerben: $\{x\} = 0{,}d_1 d_2 d_3 \dots_{(2)}$, ahol $d_k \in \{0, 1\}$, és nem csupa 1-es a jegyek vége (így a felírás egyértelmű). Legyen
$$f(x) = \limsup_{n \to \infty} \frac{d_1 + d_2 + \dots + d_n}{n} \in [0, 1],$$
az első $n$ jegy átlagának limesz szuperiorja.

*Kulcsállítás: $f$ minden nyílt intervallumon minden $[0, 1]$-beli értéket felvesz.* Legyen $(a, b)$ tetszőleges és $y \in [0, 1]$.

1. Van olyan $p \in \mathbb{Z}$, $m \in \mathbb{N}$, hogy $J = [\frac{p}{2^m}, \frac{p + 1}{2^m}) \subset (a, b)$ (elég $\frac1{2^m} < \frac{b - a}2$). A $J$-beli számok törtrészének első $m$ kettedes jegye rögzített. Az $(m + 1)$-edik jegytől kezdve viszont bármilyen (nem csupa 1-esre végződő) $0$–$1$ sorozat előfordul: $x = \frac{p}{2^m} + \frac{t}{2^m}$, $t \in [0, 1)$ esetén ezek a jegyek éppen $t$ jegyei.
2. Válasszunk egy $(e_k)$ $0$–$1$ sorozatot, amelynek átlagai $y$-hoz tartanak, és nem végződik csupa 1-esre. $y < 1$-re pl. $e_k = [ky] - [(k - 1)y]$: ekkor $e_1 + \dots + e_n = [ny]$, és $\frac{[ny]}{n} \to y$. (Csupa 1-esre végződés esetén valamely $n_0$-tól $[ny] = n - \text{konst}$ volna, ami $y < 1$-re lehetetlen.) $y = 1$-re legyen $e_k = 0$, ha $k$ kettő-hatvány, különben $1$.
3. Az 1. pont szerinti $x \in J$, amelynek jegyei az $(m + 1)$-edik helytől $e_1, e_2, \dots$, kielégíti:
$$\frac{d_1 + \dots + d_{m+n}}{m + n} = \frac{(d_1 + \dots + d_m) + (e_1 + \dots + e_n)}{m + n} \to y,$$
   mert az első zárójel korlátos ($\le m$). Tehát $f(x) = y$.

*Következmények.*

- **Darboux-tulajdonságú:** $R(f) \subseteq [0, 1]$, így ha $y$ az $f(a)$ és $f(b)$ között van, akkor $y \in [0, 1]$, és a kulcsállítás szerint $(a, b)$-ben felvétetik.
- **Sehol sem folytonos:** bármely $x_0$ bármely környezetében $f$ felveszi a $0$-t és az $1$-et is, így van olyan $x$, amelyre $|f(x) - f(x_0)| \ge \frac12$. $\varepsilon = \frac12$-hez tehát nincs jó $\delta$.

(Ismert másik példa a **Conway-féle 13-as számrendszerbeli függvény**, amely ugyanígy minden intervallumon minden valós értéket felvesz. Kiválasztási axiómával is készíthető ilyen függvény: az $x + \mathbb{Q}$ mellékosztályok mind sűrűk, és kontinuum sokan vannak, így egy $\varphi : \mathbb{R}/\mathbb{Q} \to \mathbb{R}$ bijekcióval $f(x) = \varphi(x + \mathbb{Q})$ minden intervallumon minden értéket felvesz.)

::: elmelet
**Elméleti háttér — Darboux-tulajdonság és folytonosság.** A Bolzano-tétel szerint minden folytonos függvény Darboux-tulajdonságú, de **visszafelé nem**: a Darboux-tulajdonság nem zárja ki az oszcilláló ($\sin\frac1x$-típusú) szakadásokat, sőt, olyan függvény is van, amely minden intervallumon minden értéket felvesz, és így sehol sem folytonos. **Monoton** függvényekre viszont a kettő ekvivalens (102. feladat), mert monoton függvénynek csak ugrásos szakadása lehet, az pedig sérti a Darboux-tulajdonságot. (Később: deriváltfüggvények mindig Darboux-tulajdonságúak — Darboux tétele —, de nem feltétlenül folytonosak.)
:::

## Röpzhra

**Definíciók:** folytonosság, féloldali folytonosság, $f \in C[a, b]$.

**Tételek:** határérték és alapműveletek, határérték és kompozíció, egyenlőtlenségek és határérték (két tétel), átviteli elv folytonos függvényekre.
