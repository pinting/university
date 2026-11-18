# Analízis 1 – 16. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Házi feladat (a 15. feladatlapról):** 155.

## 162. feladat

Bizonyítsuk be, hogy

a) $\forall x \ge 0$-re $x - \dfrac{x^2}{2} \le \log(1 + x) \le x - \dfrac{x^2}{2} + \dfrac{x^3}{3}$;

b) $\forall x \ge 0$-re $x - \dfrac{x^3}{3!} \le \sin x \le x - \dfrac{x^3}{3!} + \dfrac{x^5}{5!}$.

**Megoldás.**

**a)** Ha $x = 0$, akkor $0 - 0 \le \log 1 \le 0 - 0 + 0$, vagyis $0 \le 0 \le 0$, ami egyenlőséggel teljesül. Tegyük fel, hogy $x > 0$.

- **A bal oldali egyenlőtlenség:** Legyen $f_1(x) = \log(1 + x) - \left(x - \dfrac{x^2}{2}\right)$.
  Ekkor $f_1(0) = 0$, és a derivált:
  $$f_1'(x) = \frac{1}{1 + x} - (1 - x) = \frac{1 - (1 - x^2)}{1 + x} = \frac{x^2}{1 + x}.$$
  Mivel $x > 0$, $x^2 > 0$ és $1 + x > 0$, így $f_1'(x) > 0$. A monotonitási tétel szerint $f_1$ szigorúan monoton növekvő a $[0, \infty)$ intervallumon. Mivel $f_1(0) = 0$, minden $x > 0$-ra $f_1(x) > 0$, azaz
  $$x - \frac{x^2}{2} \le \log(1 + x).$$

- **A jobb oldali egyenlőtlenség:** Legyen $f_2(x) = x - \dfrac{x^2}{2} + \dfrac{x^3}{3} - \log(1 + x)$.
  Ekkor $f_2(0) = 0$, és a derivált:
  $$f_2'(x) = 1 - x + x^2 - \frac{1}{1 + x} = \frac{(1 - x + x^2)(1 + x) - 1}{1 + x} = \frac{(1 + x^3) - 1}{1 + x} = \frac{x^3}{1 + x}.$$
  Mivel $x > 0$, $f_2'(x) > 0$, tehát $f_2$ szigorúan monoton nő $[0, \infty)$-en. Mivel $f_2(0) = 0$, minden $x > 0$-ra $f_2(x) > 0$, azaz
  $$\log(1 + x) \le x - \frac{x^2}{2} + \frac{x^3}{3}.$$

**b)** Ha $x = 0$, az egyenlőség $0 \le 0 \le 0$ triviálisan teljesül. Tegyük fel, hogy $x > 0$.
Ismert, hogy $x \ge 0$-ra $\sin x \le x$, azaz a $h_0(x) = x - \sin x$ függvényre $h_0(x) \ge 0$.

- **A bal oldali egyenlőtlenség:** Legyen $g_1(x) = \sin x - \left(x - \dfrac{x^3}{6}\right)$.
  Ekkor $g_1(0) = 0$. Számítsuk ki az egymást követő deriváltakat:
  $$g_1'(x) = \cos x - 1 + \frac{x^2}{2}, \qquad g_1'(0) = 0;$$
  $$g_1''(x) = -\sin x + x = x - \sin x = h_0(x) \ge 0 \qquad \forall x \ge 0.$$
  Mivel $g_1''(x) \ge 0$, a $g_1'$ függvény monoton növekvő a $[0, \infty)$ intervallumon. Mivel $g_1'(0) = 0$, ebből következik, hogy $g_1'(x) \ge 0$ minden $x \ge 0$-ra.
  Mivel $g_1'(x) \ge 0$, maga a $g_1$ függvény is monoton növekvő a $[0, \infty)$ intervallumon. Mivel $g_1(0) = 0$, minden $x \ge 0$-ra $g_1(x) \ge 0$, azaz
  $$x - \frac{x^3}{3!} \le \sin x.$$

- **A jobb oldali egyenlőtlenség:** Legyen $g_2(x) = x - \dfrac{x^3}{6} + \dfrac{x^5}{120} - \sin x$.
  Ekkor $g_2(0) = 0$. Deriváljunk kétszer:
  $$g_2'(x) = 1 - \frac{x^2}{2} + \frac{x^4}{24} - \cos x, \qquad g_2'(0) = 0;$$
  $$g_2''(x) = -x + \frac{x^3}{6} + \sin x = \sin x - \left(x - \frac{x^3}{6}\right) = g_1(x).$$
  Az előző pontban éppen azt láttuk be, hogy $g_1(x) \ge 0$ minden $x \ge 0$-ra!
  Tehát $g_2''(x) \ge 0$ minden $x \ge 0$-ra.
  Mivel $g_2''(x) \ge 0$ és $g_2'(0) = 0$, következik, hogy $g_2'(x) \ge 0$ minden $x \ge 0$-ra.
  Mivel $g_2'(x) \ge 0$ és $g_2(0) = 0$, következik, hogy $g_2(x) \ge 0$ minden $x \ge 0$-ra, vagyis
  $$\sin x \le x - \frac{x^3}{3!} + \frac{x^5}{5!}.$$

::: elmelet
**Elméleti háttér — Taylor-polinomok és a váltakozó előjelű sorok.**
A kapott becslések a $\log(1 + x)$ és $\sin x$ függvények $0$ körüli Taylor-polinomjai:
$$\log(1 + x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \dots, \qquad \sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots$$
A Leibniz-típusú váltakozó előjelű sorok részletösszegei alulról és felülről közrefogják a függvényértéket. A Lagrange-féle hibataggal: $f(x) = T_n(x) + \frac{f^{(n+1)}(\xi)}{(n+1)!} x^{n+1}$. A deriváltak előjele közvetlenül adja a becsléseket.
:::

## 163. feladat

Tegyük föl, hogy $f$ differenciálható $\mathbb{R}$-en és $f' = f$. Mutassuk meg, hogy $\exists\, c \in \mathbb{R}$, hogy $f(x) = c e^x$.

**Megoldás.**

Tekintsük a $g(x) = f(x) e^{-x} = \dfrac{f(x)}{e^x}$ segédfüggvényt.
Mivel $f$ differenciálható $\mathbb{R}$-en, és $e^{-x}$ is differenciálható, a szorzatszabály és a láncszabály szerint $g$ is differenciálható $\mathbb{R}$-en.

Számítsuk ki $g'(x)$-et:
$$g'(x) = f'(x) e^{-x} + f(x) (-e^{-x}) = \big(f'(x) - f(x)\big) e^{-x}.$$
A feladat feltétele szerint minden $x \in \mathbb{R}$-re $f'(x) = f(x)$, azaz $f'(x) - f(x) = 0$. Ezt behelyettesítve:
$$g'(x) = 0 \cdot e^{-x} = 0 \qquad \forall x \in \mathbb{R}.$$

A Lagrange-féle középértéktétel közvetlen következménye szerint ha egy összefüggő intervallumon (itt a teljes $\mathbb{R}$-en) értelmezett differenciálható függvény deriváltja mindenütt nulla, akkor a függvény **konstans**.
Valóban: tetszőleges $x \in \mathbb{R}$-re a $[0, x]$ (vagy $[x, 0]$) intervallumon létezik $\xi$, hogy $g(x) - g(0) = g'(\xi)x = 0$, tehát
$$g(x) = g(0) \qquad \forall x \in \mathbb{R}.$$
Legyen $c = g(0) = f(0) e^0 = f(0) \in \mathbb{R}$. Ekkor
$$\frac{f(x)}{e^x} = c \quad \Longleftrightarrow \quad f(x) = c e^x.$$

::: elmelet
**Elméleti háttér — közönséges differenciálegyenletek és az exponenciális függvény.**
Az $y' = y$ a legegyszerűbb elsőrendű homogén lineáris differenciálegyenlet. A feladat rávilágít az exponenciális függvény alapvető karakterizációjára: az egyetlen olyan függvények, amelyek deriváltja megegyezik önmagukkal, a $c e^x$ alakú függvények. Az integráló tényezővel való szorzás ($e^{-x}$) a differenciálegyenletek megoldásának standard módszere.
:::

## 164. feladat

Határozzuk meg egy henger alakú $4\text{ dl}$ térfogatú konzervdoboz optimális méreteit, ha szeretnénk a felhasznált fém mennyiségét (a henger felszínét) minimalizálni.

**Megoldás.**

Jelölje a henger alapkörének sugarát $r > 0$, testmagasságát $m > 0$.
A konzervdoboz térfogata:
$$V = 4\text{ dl} = 0{,}4\text{ dm}^3 = 400\text{ cm}^3.$$
A henger térfogatképlete: $V = \pi r^2 m$, amiből a magasság kifejezhető a sugárral:
$$m = \frac{V}{\pi r^2}.$$

A felhasznált fém mennyisége a zárt henger teljes felszíne (két alapkör és a palást):
$$A(r) = 2 \cdot \pi r^2 + 2\pi r m = 2\pi r^2 + 2\pi r \frac{V}{\pi r^2} = 2\pi r^2 + \frac{2V}{r} \qquad (r > 0).$$

Keressük az $A(r)$ függvény minimumát az $(0, \infty)$ nyílt félegyenesen.
Számítsuk ki a deriváltat:
$$A'(r) = 4\pi r - \frac{2V}{r^2} = \frac{4\pi r^3 - 2V}{r^2}.$$
A stacionárius pontban $A'(r) = 0$:
$$4\pi r^3 - 2V = 0 \quad \Longleftrightarrow \quad 2\pi r^3 = V \quad \Longleftrightarrow \quad r_0 = \sqrt[3]{\frac{V}{2\pi}}.$$

Számítsuk ki a második deriváltat:
$$A''(r) = 4\pi + \frac{4V}{r^3}.$$
Mivel $r > 0$ és $V > 0$, $A''(r) > 0$ minden $r > 0$-ra, tehát $A(r)$ szigorúan konvex a teljes $(0, \infty)$ tartományon. Ezért $r_0$ az egyetlen, globális minimumhely.

Vizsgáljuk meg az optimális méretek arányát:
$$m = \frac{V}{\pi r_0^2} = \frac{2\pi r_0^3}{\pi r_0^2} = 2r_0.$$
Vagyis az optimális doboz magassága pontosan megegyezik az átmérőjével: **$m = 2r$** (tengelymetszete négyzet).

**Numerikus értékek:**
$V = 400\text{ cm}^3$ esetén:
$$r = \sqrt[3]{\frac{400}{2\pi}} = \sqrt[3]{\frac{200}{\pi}} \approx \sqrt[3]{63{,}662} \approx 3{,}993\text{ cm} \approx 4{,}0\text{ cm}.$$
$$m = 2r \approx 7{,}986\text{ cm} \approx 8{,}0\text{ cm}.$$
*(Deciméterben: $r \approx 0{,}40\text{ dm}$, $m \approx 0{,}80\text{ dm}$.)*

A minimális felhasznált lemezfelület:
$$A_{\min} = 2\pi r^2 + 4\pi r^2 = 6\pi r^2 = 6\pi \left(\frac{200}{\pi}\right)^{2/3} \approx 300{,}5\text{ cm}^2 \approx 3{,}0\text{ dm}^2.$$

::: elmelet
**Elméleti háttér — a számtani–mértani egyenlőtlenség alkalmazása.**
A feladat deriválás nélkül is megoldható a számtani–mértani egyenlőtlenséggel:
$$A(r) = 2\pi r^2 + \frac{V}{r} + \frac{V}{r} \ge 3 \sqrt[3]{2\pi r^2 \cdot \frac{V}{r} \cdot \frac{V}{r}} = 3 \sqrt[3]{2\pi V^2}.$$
Egyenlőség pontosan akkor áll fenn, ha a három tag egyenlő: $2\pi r^2 = \frac{V}{r} \iff 2\pi r^3 = V \iff m = 2r$.
:::

## 165. feladat

Egy $6{,}5\text{ m}$ magas létrát a falnak támasztottunk. Ha a létra alját $0{,}25\,\dfrac{\text{m}}{\text{s}}$ sebességgel húzzuk el a faltól milyen gyorsan fog a létra teteje süllyedni akkor, amikor az alja $2{,}5\text{ m}$-nyire van a faltól?

**Megoldás.**

Jelölje $t$ az időt, $x(t)$ a létra alsó végének távolságát a függőleges faltól, $y(t)$ pedig a létra felső végének magasságát a vízszintes talajtól.
A létra hossza $L = 6{,}5\text{ m}$. A Pitagorasz-tétel szerint minden pillanatban fennáll:
$$x(t)^2 + y(t)^2 = L^2 = (6{,}5)^2 = 42{,}25.$$

A vizsgált időpillanatban $x = 2{,}5\text{ m}$. Számítsuk ki a létra tetejének $y$ magasságát:
$$y = \sqrt{L^2 - x^2} = \sqrt{(6{,}5)^2 - (2{,}5)^2} = \sqrt{(6{,}5 - 2{,}5)(6{,}5 + 2{,}5)} = \sqrt{4 \cdot 9} = \sqrt{36} = 6\text{ m}.$$
*(Ez az $5 - 12 - 13$ nevezetes derékszögű háromszög $0{,}5$-szöröse: $2{,}5; 6; 6{,}5$.)*

Deriváljuk a geometriai kényszerfeltételt $t$ szerint (láncszabály):
$$\frac{d}{dt}\big(x(t)^2 + y(t)^2\big) = \frac{d}{dt}(L^2) \quad \Longrightarrow \quad 2x(t) x'(t) + 2y(t) y'(t) = 0.$$
Ebből kifejezve $y'(t)$-t:
$$y'(t) = -\frac{x(t)}{y(t)} x'(t).$$

A megadott adatok: $x = 2{,}5\text{ m}$, $y = 6\text{ m}$, és az alsó vég sebessége $x'(t) = 0{,}25\,\dfrac{\text{m}}{\text{s}} = \dfrac14\,\dfrac{\text{m}}{\text{s}}$.
Behelyettesítve:
$$y'(t) = -\frac{2{,}5}{6} \cdot 0{,}25 = -\frac{5/2}{6} \cdot \frac14 = -\frac{5}{12} \cdot \frac14 = -\frac{5}{48}\,\frac{\text{m}}{\text{s}} \approx -0{,}1042\,\frac{\text{m}}{\text{s}}.$$

A negatív előjel azt jelzi, hogy az $y$ magasság csökken (a létra süllyed).

**Válasz:** A létra teteje $\dfrac{5}{48}\,\dfrac{\text{m}}{\text{s}} \approx 0{,}104\,\dfrac{\text{m}}{\text{s}} \approx 10{,}4\,\dfrac{\text{cm}}{\text{s}}$ sebességgel süllyed.

::: elmelet
**Elméleti háttér — csatolt sebességek (related rates).**
Amikor két vagy több egymással összefüggő mennyiség az idő függvényében változik, az őket összekötő geometriai egyenlet implicit deriválásával kapcsolatot kapunk a változási sebességeik (idő szerinti deriváltjaik) között. Figyeljük meg, hogy amint $x \to L$ (a létra vízszintesbe ér, $y \to 0$), a süllyedési sebesség $|y'| \to \infty$ végtelenhez tartana — a valóságban a létra elválik a faltól.
:::

## 166. feladat

Tegyük fel, hogy $f$ folytonos és szigorúan konvex $[a, b]$-n. Hol veszi fel $[a, b]$-n a maximumát?

**Megoldás.**

Legyen $x \in (a, b)$ tetszőleges belső pont. Az $x$ pont egyértelműen felírható az $a$ és $b$ végpontok szigorú konvex kombinációjaként:
$$x = (1 - \lambda)a + \lambda b, \qquad \text{ahol } \lambda = \frac{x - a}{b - a} \in (0, 1).$$
Mivel $f$ szigorúan konvex az $[a, b]$ intervallumon, a konvexitás definíciója szerint minden $\lambda \in (0, 1)$-re:
$$f(x) < (1 - \lambda)f(a) + \lambda f(b).$$
Mivel két valós szám súlyozott számtani közepe nem haladhatja meg a két szám maximumát:
$$(1 - \lambda)f(a) + \lambda f(b) \le \max\big(f(a), f(b)\big).$$
Ezért minden belső $x \in (a, b)$ pontra:
$$f(x) < \max\big(f(a), f(b)\big).$$

Mivel $f$ folytonos a korlátos és zárt $[a, b]$ intervallumon, a Weierstrass-tétel szerint létezik legalább egy olyan $x_{\max} \in [a, b]$ pont, amelyben $f$ felveszi a maximumát.
Mivel a fenti egyenlőtlenség szerint egyetlen belső $x \in (a, b)$ pontban sem érheti el az érték a $\max\big(f(a), f(b)\big)$ értéket, **a maximumot $f$ nem veheti fel semelyik belső pontban**.

Következésképpen $f$ a maximumát kizárólag az intervallum **határpontjaiban (végpontjaiban)** veheti fel:
- Ha $f(a) > f(b)$, akkor a maximumot egyértelműen az $x = a$ végpontban veszi fel;
- Ha $f(b) > f(a)$, akkor a maximumot egyértelműen az $x = b$ végpontban veszi fel;
- Ha $f(a) = f(b)$, akkor a maximumot mindkét végpontban ($x = a$ és $x = b$) felveszi.

**Válasz:** $f$ a maximumát az intervallum végpontjában (végpontjaiban) veszi fel, és a maximum értéke $\max\big(f(a), f(b)\big)$.

::: elmelet
**Elméleti háttér — a maximum-elv konvex függvényekre.**
Konvex függvényekre igaz a maximum-elv: kompakt konvex halmazon értelmezett konvex függvény maximumát mindig a halmaz határán (szélső pontjaiban) veszi fel. Ezzel szemben a lokális minimumok mindig belső pontok (ha léteznek), és konvex függvényre minden lokális minimum automatikusan globális minimum is.
:::

## 167. feladat

Legyen $f(x) = |x|^3$, $f^{(2)}(x) = ?$; $f^{(3)}(x) = ?$

**Megoldás.**

Írjuk fel az $f(x) = |x|^3$ függvényt esetszétválasztással:
$$f(x) = \begin{cases} x^3 & \text{ha } x \ge 0, \\ -x^3 & \text{ha } x < 0. \end{cases}$$

**1. Első derivált:**
- Ha $x > 0$: $f'(x) = (x^3)' = 3x^2$.
- Ha $x < 0$: $f'(x) = (-x^3)' = -3x^2$.
- Az $x = 0$ pontban a definíció szerint:
  $$f'(0) = \lim_{h \to 0} \frac{|h|^3 - 0}{h} = \lim_{h \to 0} |h| \cdot \frac{|h|^2}{h} = \lim_{h \to 0} h|h| = 0.$$
Tehát $f'(x) = 3x|x| = \begin{cases} 3x^2 & \text{ha } x \ge 0, \\ -3x^2 & \text{ha } x < 0. \end{cases}$

**2. Második derivált ($f^{(2)}(x)$):**
- Ha $x > 0$: $f''(x) = (3x^2)' = 6x$.
- Ha $x < 0$: $f''(x) = (-3x^2)' = -6x$.
- Az $x = 0$ pontban vizsgáljuk a differenciahányados határértékét:
  $$\lim_{h \to 0+0} \frac{f'(h) - f'(0)}{h} = \lim_{h \to 0+0} \frac{3h^2}{h} = \lim_{h \to 0+0} 3h = 0,$$
  $$\lim_{h \to 0-0} \frac{f'(h) - f'(0)}{h} = \lim_{h \to 0-0} \frac{-3h^2}{h} = \lim_{h \to 0-0} (-3h) = 0.$$
  A két féloldali határérték megegyezik, így $f''(0) = 0$.
Tehát a második derivált minden $x \in \mathbb{R}$-re létezik:
$$f^{(2)}(x) = 6|x| = \begin{cases} 6x & \text{ha } x \ge 0, \\ -6x & \text{ha } x < 0. \end{cases}$$

**3. Harmadik derivált ($f^{(3)}(x)$):**
- Ha $x > 0$: $f'''(x) = (6x)' = 6$.
- Ha $x < 0$: $f'''(x) = (-6x)' = -6$.
- Az $x = 0$ pontban vizsgáljuk a differenciahányadost:
  $$\lim_{h \to 0+0} \frac{f''(h) - f''(0)}{h} = \lim_{h \to 0+0} \frac{6h - 0}{h} = 6,$$
  $$\lim_{h \to 0-0} \frac{f''(h) - f''(0)}{h} = \lim_{h \to 0-0} \frac{-6h - 0}{h} = -6.$$
  Mivel a jobb és bal oldali határérték különbözik ($6 \ne -6$), a harmadik derivált az $x = 0$ pontban **nem létezik**.

**Válasz:**
$$f^{(2)}(x) = 6|x| \qquad (x \in \mathbb{R}),$$
$$f^{(3)}(x) = 6 \operatorname{sgn}(x) = \begin{cases} 6 & \text{ha } x > 0, \\ -6 & \text{ha } x < 0, \end{cases} \qquad D(f^{(3)}) = \mathbb{R} \setminus \{0\}.$$

::: elmelet
**Elméleti háttér — a differenciálhatósági rend.**
Az $f(x) = |x|^k$ függvény ($k \in \mathbb{N}^+$) az origóban pontosan $(k - 1)$-szer differenciálható folytonosan. Jelen esetben $k = 3$, így $f \in C^2(\mathbb{R})$, de $f \notin C^3(\mathbb{R})$.
:::

## 168. feladat

Vizsgáljuk meg konvexitás szempontjából a $\operatorname{tg} x$ függvényt.

**Megoldás.**

A tangensfüggvény értelmezési tartománya:
$$D(f) = \mathbb{R} \setminus \left\{\frac\pi2 + k\pi : k \in \mathbb{Z}\right\}.$$
Mivel $\operatorname{tg}(x + \pi) = \operatorname{tg} x$, a függvény $\pi$-periodikus, ezért elegendő a konvexitást a fundamentális $I_0 = \left(-\frac\pi2, \frac\pi2\right)$ intervallumon vizsgálni.

Számítsuk ki a deriváltakat:
$$f'(x) = \frac{1}{\cos^2 x},$$
$$f''(x) = \left((\cos x)^{-2}\right)' = -2(\cos x)^{-3}(-\sin x) = \frac{2\sin x}{\cos^3 x}.$$

Mivel az $I_0 = \left(-\frac\pi2, \frac\pi2\right)$ intervallumon $\cos x > 0$, a nevező $\cos^3 x > 0$ mindenütt szigorúan pozitív. Ezért $f''(x)$ előjele megegyezik $\sin x$ előjelével:

1. **A $\left(-\frac\pi2, 0\right)$ intervallumon:** $\sin x < 0$, így $f''(x) < 0$.
   Ezért a $\operatorname{tg} x$ függvény **szigorúan konkáv** a $\left(-\frac\pi2, 0\right]$ intervallumon.
2. **Az $x = 0$ pontban:** $f''(0) = 0$, és a második derivált előjelet vált (negatívból pozitívba megy át).
   Ezért $x = 0$ **inflexiós hely** (inflexiós pont: $(0, 0)$).
3. **A $\left(0, \frac\pi2\right)$ intervallumon:** $\sin x > 0$, így $f''(x) > 0$.
   Ezért a $\operatorname{tg} x$ függvény **szigorúan konvex** a $\left[0, \frac\pi2\right)$ intervallumon.

**Összefoglalás a teljes értelmezési tartományon:**
Minden $k \in \mathbb{Z}$-re a $\left(-\frac\pi2 + k\pi, \frac\pi2 + k\pi\right)$ periódusintervallumon:
- **szigorúan konkáv** a $\left(-\frac\pi2 + k\pi,\, k\pi\right]$ intervallumon;
- **szigorúan konvex** a $\left[k\pi,\, \frac\pi2 + k\pi\right)$ intervallumon;
- **inflexiós pontjai:** $x_k = k\pi$ ($k \in \mathbb{Z}$).

::: elmelet
**Elméleti háttér — konvexitási intervallumok és inflexió.**
A konvexitás mindig összefüggő intervallumon értelmezett fogalom. A tangensfüggvény nem konvex a teljes értelmezési tartományán, mert az nem összefüggő. Az inflexiós pontban az érintő átmetszi a görbét: az origóban húzott érintő az $y = x$ egyenes, amely $x < 0$-ra a görbe felett, $x > 0$-ra a görbe alatt halad.
:::

## 169. feladat

Határozzuk meg az alábbi függvények abszolút szélsőértékeit a megadott intervallumokon:

a) $x + e^{-x}$, $[-2, 2]$; b) $x - \operatorname{arctg} x$, $[-1, 1]$; c) $x \cdot \log x$, $(0, \infty)$.

**Megoldás.**

**a) $f(x) = x + e^{-x}$ a $[-2, 2]$ intervallumon.**

A függvény folytonos és differenciálható a kompakt $[-2, 2]$ intervallumon, így a Weierstrass-tétel szerint létezik abszolút minimuma és maximuma. Ezek vagy a stacionárius pontokban ($f'(x) = 0$), vagy az intervallum végpontjaiban lehetnek.

Derivált:
$$f'(x) = 1 - e^{-x}.$$
A stacionárius pont:
$$1 - e^{-x} = 0 \quad \Longleftrightarrow \quad e^{-x} = 1 \quad \Longleftrightarrow \quad x = 0 \in [-2, 2].$$
Mivel $f''(x) = e^{-x} > 0$, $x = 0$ szigorú lokális minimumhely.

Számítsuk ki a függvényértékeket a lehetséges helyeken:
- Belső pontban: $f(0) = 0 + e^0 = 1$;
- Bal végpontban: $f(-2) = -2 + e^2 \approx -2 + 7{,}3891 = 5{,}3891$;
- Jobb végpontban: $f(2) = 2 + e^{-2} \approx 2 + 0{,}1353 = 2{,}1353$.

Összehasonlítás: $1 < 2 + e^{-2} < e^2 - 2$ (mivel $e^2 - e^{-2} \approx 7{,}25 > 4$).
- **Abszolút minimum:** értéke $1$, felvételi helye $x = 0$.
- **Abszolút maximum:** értéke $e^2 - 2$, felvételi helye $x = -2$.

---

**b) $f(x) = x - \operatorname{arctg} x$ a $[-1, 1]$ intervallumon.**

A függvény folytonos és differenciálható $[-1, 1]$-en.
Derivált:
$$f'(x) = 1 - \frac{1}{1 + x^2} = \frac{x^2}{1 + x^2}.$$
Mivel $x^2 \ge 0$ és $1 + x^2 > 0$:
$$f'(x) \ge 0 \qquad \forall x \in [-1, 1],$$
és $f'(x) = 0$ kizárólag az $x = 0$ pontban teljesül.
Mivel a derivált csak egyetlen pontban tűnik el, és mindenütt máshol szigorúan pozitív, $f$ **szigorúan monoton növekvő** a teljes $[-1, 1]$ intervallumon.

Ennélfogva az abszolút szélsőértékek a végpontokban vétetnek fel:
- **Abszolút minimum** a bal végpontban:
  $$f(-1) = -1 - \operatorname{arctg}(-1) = -1 - \left(-\frac\pi4\right) = \frac\pi4 - 1 \approx -0{,}2146.$$
- **Abszolút maximum** a jobb végpontban:
  $$f(1) = 1 - \operatorname{arctg}(1) = 1 - \frac\pi4 \approx 0{,}2146.$$
*(Az $x = 0$ stacionárius pontban $f(0) = 0$, de mivel $f'$ nem vált előjelet, ez inflexiós pont, nem szélsőértékhely.)*

---

**c) $f(x) = x \log x$ a $(0, \infty)$ intervallumon.**

A függvény differenciálható a nyílt $(0, \infty)$ intervallumon.
Derivált:
$$f'(x) = 1 \cdot \log x + x \cdot \frac1x = \log x + 1.$$
Stacionárius pont:
$$\log x + 1 = 0 \quad \Longleftrightarrow \quad \log x = -1 \quad \Longleftrightarrow \quad x_0 = \frac1e.$$
Második derivált:
$$f''(x) = \frac1x > 0 \qquad \forall x \in (0, \infty).$$
Mivel $f''(x) > 0$ a teljes értelmezési tartományon, $f$ szigorúan konvex $(0, \infty)$-en, így $x_0 = \frac1e$ az egyetlen, **globális abszolút minimumhely**.

A minimális érték:
$$f\left(\frac1e\right) = \frac1e \log\left(\frac1e\right) = -\frac1e \approx -0{,}3679.$$

Vizsgáljuk a határértékeket a tartomány szélein:
- $\lim_{x \to \infty} x \log x = +\infty$, tehát a függvény felülről nem korlátos, **abszolút maximuma nem létezik**.
- $\lim_{x \to 0+0} x \log x = 0$ (a L'Hospital-szabállyal: $\lim_{x \to 0} \frac{\log x}{1/x} = \lim_{x \to 0} \frac{1/x}{-1/x^2} = 0$), és $0 > -\frac1e$.

**Összegzés:**
- **Abszolút minimum:** $-\dfrac1e$, felvételi helye $x = \dfrac1e$.
- **Abszolút maximum:** nincs.

::: elmelet
**Elméleti háttér — szélsőérték zárt vs. nyílt intervallumon.**
Kompakt (korlátos és zárt) intervallumon a Weierstrass-tétel garantálja az abszolút szélsőértékek létezését; a jelöltek a belső stacionárius pontok és a végpontok. Nyílt intervallumon a határértékek vizsgálata dönti el, hogy létezik-e globális szélsőérték.
:::

## 170. feladat

Határozzuk meg az $y = x^2/8$ parabolán a $(0, 6)$ ponthoz legközelebbi ponto(ka)t.

**Megoldás.**

A parabola tetszőleges pontja $P\left(x, \frac{x^2}{8}\right)$.
A $Q(0, 6)$ ponttól mért távolság négyzete:
$$D(x) = (x - 0)^2 + \left(\frac{x^2}{8} - 6\right)^2 = x^2 + \frac{x^4}{64} - \frac{12x^2}{8} + 36 = \frac{x^4}{64} - \frac{x^2}{2} + 36.$$
Mivel a négyzetgyökfüggvény szigorúan monoton növekvő a $[0, \infty)$-en, a távolság pontosan ott minimális, ahol a távolságnégyzet $D(x)$ minimális.

Vezessük be az $u = x^2 \ge 0$ új változót. Ekkor a távolságnégyzet:
$$g(u) = \frac{u^2}{64} - \frac{u}{2} + 36 \qquad (u \ge 0).$$
Ez egy felfelé nyíló másodfokú polinom! Deriváltja:
$$g'(u) = \frac{2u}{64} - \frac12 = \frac{u}{32} - \frac12.$$
A stacionárius pont:
$$\frac{u}{32} - \frac12 = 0 \quad \Longleftrightarrow \quad u = 16.$$
Mivel $u = 16 > 0$ a megengedett tartományba esik, és $g''(u) = \frac{1}{32} > 0$, itt valóban globális minimum van.

Visszahelyettesítve $x$-re:
$$x^2 = 16 \quad \Longleftrightarrow \quad x = \pm 4.$$
A megfelelő $y$-koordináták:
$$y = \frac{(\pm 4)^2}{8} = \frac{16}{8} = 2.$$

A keresett legközelebbi pontok a **$(-4, 2)$** és a **$(4, 2)$**.

A minimális távolság értéke:
$$d_{\min} = \sqrt{(\pm 4 - 0)^2 + (2 - 6)^2} = \sqrt{16 + 16} = \sqrt{32} = 4\sqrt{2} \approx 5{,}657.$$

*(Megjegyzés: a parabola tengelypontja $P_0(0, 0)$, ennek távolsága $6$, ami szigorúan nagyobb, mint $4\sqrt{2} \approx 5{,}657$.)*

::: elmelet
**Elméleti háttér — távolságminimum és normális egyenes.**
A differenciálgeometria alaptétele szerint a sík egy külső pontjából a sima görbéhez húzott legrövidebb szakasz egyenese merőleges a görbe érintőjére az érintési pontban (a szakasz a görbe normálisa).
Ellenőrzés: az $y = x^2/8$ érintőjének meredeksége $x = 4$-ben $y' = 4/4 = 1$. A normális meredeksége $-1$. A $(4, 2)$ és $(0, 6)$ pontokat összekötő egyenes meredeksége $\frac{6 - 2}{0 - 4} = \frac{4}{-4} = -1$, ami pontosan a normális meredeksége!
:::

## 171. feladat

Egy $3 - 4 - 5$ oldalhosszúságú derékszögű háromszögbe írunk téglalapokat, úgy hogy egyik oldaluk a háromszög $5$ egység hosszúságú átfogóján van. Határozzuk meg ezen téglalapok közül a maximális területűt.

**Megoldás.**

Legyen a derékszögű háromszög befogóinak hossza $a = 3$ és $b = 4$, átfogója $c = 5$.
A háromszög területe a befogókból:
$$T_\Delta = \frac{a \cdot b}{2} = \frac{3 \cdot 4}{2} = 6.$$
Jelölje $m_c$ az átfogóhoz tartozó magasságot. Mivel $T_\Delta = \frac{c \cdot m_c}{2}$:
$$\frac{5 \cdot m_c}{2} = 6 \quad \Longrightarrow \quad m_c = \frac{12}{5} = 2{,}4.$$

A beírt téglalap átfogón fekvő oldalának hossza legyen $x$, a rá merőleges oldalának hossza pedig $y$ ($0 \le y \le m_c$).
A téglalap felső oldala párhuzamos az átfogóval, és a befogókat metszve egy olyan kis derékszögű háromszöget vág le a derékszögű csúcsnál, amely hasonló az eredeti háromszöghöz.
Ennek a levágott kis háromszögnek az átfogója $x$, az átfogóhoz tartozó magassága pedig $m_c - y$.
A hasonlóság arányából:
$$\frac{x}{c} = \frac{m_c - y}{m_c} \quad \Longrightarrow \quad x = c\left(1 - \frac{y}{m_c}\right) = 5\left(1 - \frac{5}{12}y\right).$$

A téglalap területe $y$ függvényében:
$$T(y) = x \cdot y = c y \left(1 - \frac{y}{m_c}\right) = 5y\left(1 - \frac{5}{12}y\right) = 5y - \frac{25}{12}y^2 \qquad \left(0 \le y \le \frac{12}{5}\right).$$

Ez egy lefelé nyíló másodfokú parabola $y$-ban, amelynek zérushelyei $y = 0$ és $y = m_c = \frac{12}{5}$.
A parabola szimmetriája miatt a csúcspontja (maximumhelye) a két zérushely számtani közepe:
$$y_0 = \frac{m_c}{2} = \frac{12/5}{2} = \frac{6}{5} = 1{,}2.$$
A téglalap átfogón fekvő oldalának hossza ekkor:
$$x_0 = c\left(1 - \frac{m_c/2}{m_c}\right) = \frac{c}{2} = \frac{5}{2} = 2{,}5.$$

A maximális terület:
$$T_{\max} = x_0 \cdot y_0 = \frac{5}{2} \cdot \frac{6}{5} = 3.$$

Figyeljük meg, hogy
$$T_{\max} = \frac{c}{2} \cdot \frac{m_c}{2} = \frac{c \cdot m_c}{4} = \frac{T_\Delta}{2} = 3.$$

**Válasz:** A maximális területű téglalap területe **$3$** területegység. Oldalai az átfogón fekvő $2{,}5$ és az arra merőleges $1{,}2$.

::: elmelet
**Elméleti háttér — háromszögbe írt maximális téglalap általános tétele.**
Tetszőleges háromszögbe írt, adott oldalon fekvő téglalapok közül a maximális területű területe mindig pontosan fele a háromszög területének ($T_{\max} = \frac12 T_\Delta$), az oldalfelező párhuzamos által meghatározott méretekkel ($x = c/2, y = m_c/2$).
:::

## 172. feladat

Milyen hosszú létrát vihetünk be egy toronyba a $h$ magasságú ajtón, ha az ajtóval szemközti fal az ajtótól $d$ távolságra van?

**Megoldás.**

Vegyük fel a helyzet keresztmetszetét egy függőleges síkban (a lap bal alsó ábrájának megfelelően).
A torony bejárata egy $h$ magasságú nyílás. A külső talaj vízszintes. Az ajtóval szemben $d$ távolságra egy függőleges fal áll.
A létrát ferdén döntve próbáljuk bevinni. Jelölje $\theta$ a létra dőlésszögét a vízszinteshez ($0 < \theta < \frac\pi2$).
Ahhoz, hogy a létrát be lehessen vinni, a létra nem akadhat el: minden megvalósuló szögben át kell férnie.

A geometriailag legszűkebb helyzetben a létra egyenese áthalad az ajtó felső sarkán, alsó vége a külső talajon van, felső vége pedig a szemközti falon támaszkodik.
Határozzuk meg ezen egyenesszakasz $L(\theta)$ hosszát:
- A külső talajtól az ajtó felső széléig tartó szakasz hossza egy $h$ magasságú derékszögű háromszög átfogója:
  $$L_1(\theta) = \frac{h}{\sin \theta}.$$
- Az ajtó felső szélétől a szemközti falig tartó szakasz hossza egy $d$ vízszintes távolságú derékszögű háromszög átfogója:
  $$L_2(\theta) = \frac{d}{\cos \theta}.$$

Így a $\theta$ szögben még átférő szakasz hossza:
$$L(\theta) = L_1(\theta) + L_2(\theta) = \frac{h}{\sin \theta} + \frac{d}{\cos \theta} \qquad \left(0 < \theta < \frac\pi2\right).$$

A toronyba bevihető **leghosszabb létra** hossza megegyezik ezen szakaszok **minimumával**:
$$L_{\max} = \min_{\theta \in (0, \pi/2)} L(\theta),$$
hiszen a létra a legkedvezőtlenebb helyzetben (a szűk keresztmetszetnél) sem akadhat el.

**A minimumhely megkeresése:**
Deriváljuk $L(\theta)$-t $\theta$ szerint:
$$L'(\theta) = -\frac{h \cos \theta}{\sin^2 \theta} + \frac{d \sin \theta}{\cos^2 \theta} = \frac{d \sin^3 \theta - h \cos^3 \theta}{\sin^2 \theta \cos^2 \theta}.$$
A stacionárius pontban $L'(\theta) = 0$:
$$d \sin^3 \theta - h \cos^3 \theta = 0 \quad \Longleftrightarrow \quad \operatorname{tg}^3 \theta = \frac{h}{d} \quad \Longleftrightarrow \quad \operatorname{tg} \theta = \left(\frac{h}{d}\right)^{1/3}.$$

Ebből a szögfüggvények értékei a $\sin \theta = \frac{\operatorname{tg} \theta}{\sqrt{1 + \operatorname{tg}^2 \theta}}$ és $\cos \theta = \frac{1}{\sqrt{1 + \operatorname{tg}^2 \theta}}$ összefüggésekkel:
$$\sin \theta = \frac{h^{1/3}}{\sqrt{h^{2/3} + d^{2/3}}}, \qquad \cos \theta = \frac{d^{1/3}}{\sqrt{h^{2/3} + d^{2/3}}}.$$

Mivel $\lim_{\theta \to 0+0} L(\theta) = +\infty$ és $\lim_{\theta \to \frac\pi2-0} L(\theta) = +\infty$, a folytonos $L(\theta)$ függvénynek ebben az egyetlen stacionárius pontban globális minimuma van.

Számítsuk ki a minimális hosszt:
$$L_{\min} = \frac{h}{\sin \theta} + \frac{d}{\cos \theta} = \frac{h}{\frac{h^{1/3}}{\sqrt{h^{2/3} + d^{2/3}}}} + \frac{d}{\frac{d^{1/3}}{\sqrt{h^{2/3} + d^{2/3}}}}$$
$$= h^{2/3} \sqrt{h^{2/3} + d^{2/3}} + d^{2/3} \sqrt{h^{2/3} + d^{2/3}} = \big(h^{2/3} + d^{2/3}\big) \sqrt{h^{2/3} + d^{2/3}} = \big(h^{2/3} + d^{2/3}\big)^{3/2}.$$

**Válasz:** A toronyba bevihető leghosszabb létra hossza:
$$\left(h^{2/3} + d^{2/3}\right)^{3/2} = \left(\sqrt[3]{h^2} + \sqrt[3]{d^2}\right)^{3/2}.$$

::: elmelet
**Elméleti háttér — a derékszögű folyosó-probléma és az asztroid.**
Ugyanez a matematikai probléma merül fel, amikor egy derékszögű folyosókanyarban viszünk át egy gerendát vagy csövet (ahol a két folyosó szélessége $h$ és $d$). A létra által súrolt burkológörbe (envelope) az $x^{2/3} + y^{2/3} = L^{2/3}$ egyenletű **asztroid** (hipociklois).
:::

## Röpzhra

**Definíciók:** $f''$, $f^{(k)}$, inflexiós hely.

**Tételek:** Elégs. felt. szig. lok. min./max-ra $f''$ segítségével; $(f + g)^{(n)}$, $(f \cdot g)^{(n)}$; konvexitás és $f'$, konvexitás és $f''$, Hölder egyenlőtlenség, konvexitás és érintők.

### Definíciók és tételek kidolgozása

#### Definíciók

- **Második derivált ($f''$):** Ha az $f'$ deriváltfüggvény differenciálható az $a \in D(f')$ pontban, akkor $(f')'(a)$-t az $f$ függvény $a$-beli **második deriváltjának** nevezzük; jelölése $f''(a)$ vagy $f^{(2)}(a)$.
- **$k$-adik derivált ($f^{(k)}$):** Teljes indukcióval: $f^{(0)} \stackrel{\text{def}}{=} f$. Ha $f^{(k-1)}$ differenciálható $a$-ban, akkor $(f^{(k-1)})'(a)$-t az $f$ függvény $a$-beli **$k$-adik deriváltjának** nevezzük, jele $f^{(k)}(a)$.
- **Inflexiós hely:** Az $a$ pont az $f$ függvény **inflexiós helye**, ha $f$-nek létezik (véges vagy végtelen) deriváltja $a$-ban, és létezik olyan $\delta > 0$, hogy $f$ konvex az $(a - \delta, a]$ intervallumon és konkáv az $[a, a + \delta)$ intervallumon, vagy fordítva (azaz a görbület jellege megváltozik az $a$ pontban).

#### Tételek

- **Elégséges feltétel szigorú lokális min./max-ra $f''$ segítségével:**
  Tegyük fel, hogy $f$ differenciálható az $a$ egy környezetében, létezik $f''(a)$, és $f'(a) = 0$.
  1. Ha $f''(a) > 0$, akkor $a$ szigorú lokális minimumhely.
  2. Ha $f''(a) < 0$, akkor $a$ szigorú lokális maximumhely.
  *Bizonyítás (az 1. állításra).* Mivel $f''(a) = (f')'(a) > 0$, az $f'$ függvény szigorúan lokálisan nő az $a$ pontban. Mivel $f'(a) = 0$, létezik $\delta > 0$, hogy:
  $$x \in (a - \delta, a) \implies f'(x) < f'(a) = 0,$$
  $$x \in (a, a + \delta) \implies f'(x) > f'(a) = 0.$$
  A monotonitási tétel szerint $f$ szigorúan monoton csökken az $(a - \delta, a]$ intervallumon, és szigorúan monoton nő az $[a, a + \delta)$ intervallumon. Ezért minden $x \in \dot{B}(a, \delta)$-ra $f(x) > f(a)$, vagyis $a$ szigorú lokális minimumhely.
- **$(f + g)^{(n)}$ és $(f \cdot g)^{(n)}$ (Leibniz-szabály):**
  Ha $f$ és $g$ $n$-szer differenciálható $a$-ban:
  1. $(f + g)^{(n)}(a) = f^{(n)}(a) + g^{(n)}(a)$.
  2. **Leibniz-szabály:** $(f \cdot g)^{(n)}(a) = \sum_{k=0}^n \binom{n}{k} f^{(k)}(a) g^{(n-k)}(a)$.
  *Bizonyítás (a Leibniz-szabályra, teljes indukcióval).* $n = 1$-re a szorzatszabály: $(fg)' = f'g + fg'$. Tegyük fel, hogy $n$-re igaz. Ekkor:
  $$(fg)^{(n+1)} = \left(\sum_{k=0}^n \binom{n}{k} f^{(k)} g^{(n-k)}\right)' = \sum_{k=0}^n \binom{n}{k} \left(f^{(k+1)} g^{(n-k)} + f^{(k)} g^{(n-k+1)}\right).$$
  Az azonos $f^{(j)} g^{(n+1-j)}$ tagok együtthatója $\binom{n}{j-1} + \binom{n}{j} = \binom{n+1}{j}$ (Pascal-azonosság), így adódik a formula $(n + 1)$-re.
- **Konvexitás és $f'$:**
  Tegyük fel, hogy $f$ differenciálható az $I$ intervallumon.
  $f$ konvex $I$-n $\iff f'$ monoton növekvő $I$-n.
  $f$ szigorúan konvex $I$-n $\iff f'$ szigorúan monoton növekvő $I$-n.
  *Bizonyítás.*
  $(\Rightarrow)$ Ha $f$ konvex, tetszőleges $a < b$ esetén a húrmeredekségek monotonitásából $f'(a) \le \frac{f(b) - f(a)}{b - a} \le f'(b)$, így $f'(a) \le f'(b)$.
  $(\Leftarrow)$ Ha $f'$ monoton nő, és $a < x < b$, akkor a Lagrange-tétel szerint $\frac{f(x) - f(a)}{x - a} = f'(u) \le f'(v) = \frac{f(b) - f(x)}{b - x}$ ($u \in (a, x), v \in (x, b)$), amiből átrendezéssel $f(x) \le f(a) + \frac{f(b) - f(a)}{b - a}(x - a)$, ami a konvexitás.
- **Konvexitás és $f''$:**
  Tegyük fel, hogy $f$ kétszer differenciálható az $I$ intervallumon.
  $f$ konvex $I$-n $\iff f''(x) \ge 0$ minden $x \in I$-re.
  Ha $f''(x) > 0$ minden $x \in I$-re, akkor $f$ szigorúan konvex $I$-n.
  *Bizonyítás.* Az előző tétel és a derivált előjele és monotonitása közötti kapcsolat ($f'$ monoton nő $\iff (f')' = f'' \ge 0$) közvetlen szorzata.
- **Hölder-egyenlőtlenség:**
  Ha $p, q > 1$, $\frac{1}{p} + \frac{1}{q} = 1$, és $a_k, b_k \ge 0$ ($k = 1, \dots, n$), akkor
  $$\sum_{k=1}^n a_k b_k \le \left(\sum_{k=1}^n a_k^p\right)^{1/p} \left(\sum_{k=1}^n b_k^q\right)^{1/q}.$$
  *Bizonyítás.* Az $\ln$ függvény szigorúan konkáv, így a Young-egyenlőtlenség érvényes: $ab \le \frac{a^p}{p} + \frac{b^q}{q}$.
  Legyen $A = \left(\sum a_k^p\right)^{1/p}$ és $B = \left(\sum b_k^q\right)^{1/q}$ (ha $A = 0$ vagy $B = 0$, az egyenlőtlenség triviális $0 \le 0$).
  Alkalmazzuk a Young-egyenlőtlenséget az $\frac{a_k}{A}$ és $\frac{b_k}{B}$ számokra:
  $$\frac{a_k b_k}{AB} \le \frac{1}{p} \frac{a_k^p}{A^p} + \frac{1}{q} \frac{b_k^q}{B^q}.$$
  Összegezve $k = 1$-től $n$-ig:
  $$\frac{\sum a_k b_k}{AB} \le \frac{1}{p} \frac{\sum a_k^p}{A^p} + \frac{1}{q} \frac{\sum b_k^q}{B^q} = \frac{1}{p} \cdot 1 + \frac{1}{q} \cdot 1 = \frac{1}{p} + \frac{1}{q} = 1.$$
  Mindkét oldalt megszorozva $AB$-vel, megkapjuk a tételt.
- **Konvexitás és érintők:**
  Ha $f$ differenciálható az $I$ intervallumon, akkor $f$ akkor és csak akkor konvex $I$-n, ha minden érintője a grafikon alatt halad:
  $$f(x) \ge f(a) + f'(a)(x - a) \qquad \forall a, x \in I.$$
  *Bizonyítás.* A konvexitás miatt $a < x$-re $\frac{f(x) - f(a)}{x - a} \ge f'(a)$, megszorozva a pozitív $(x - a)$-val kapjuk az egyenlőtlenséget. Ha $x < a$, akkor $\frac{f(a) - f(x)}{a - x} \le f'(a)$, megszorozva $(a - x)$-szel: $f(a) - f(x) \le f'(a)(a - x) \iff f(x) \ge f(a) + f'(a)(x - a)$.
  Megfordítva, ha az egyenlőtlenség teljesül, akkor $a < b$-re $f'(a) \le \frac{f(b) - f(a)}{b - a} \le f'(b)$, így $f'$ monoton nő, tehát $f$ konvex.
