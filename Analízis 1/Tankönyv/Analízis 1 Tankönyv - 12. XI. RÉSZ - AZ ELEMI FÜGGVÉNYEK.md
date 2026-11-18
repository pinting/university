# XI. RÉSZ: AZ ELEMI FÜGGVÉNYEK

A középiskolából ismert függvények — szögfüggvények, hatványok, exponenciális és logaritmusfüggvények — eddig is fel-felbukkantak a példákban, de precíz definíciójuk még hiányzik. Mit jelent például $2^{\sqrt{2}}$? Az $2^3 = 2 \cdot 2 \cdot 2$, és $2^{1/2} = \sqrt{2}$ értelmes, de egy irracionális kitevőt nem lehet „ennyiszer összeszorozni”. Ebben a részben ezeket a függvényeket sorra felépítjük, és az eddigi eszközeinkkel (teljességi axióma, folytonosság, inverz függvény tétele) igazoljuk alapvető tulajdonságaikat.

## 58. Trigonometrikus függvények

A szögfüggvények precíz definíciójához a körív hosszát kellene definiálni, ehhez pedig integrálszámítás kell (a következő félév anyaga). Most a körív hosszát **szemléletből elfogadjuk**, és erre építjük a definíciót. (A trigonometrikus függvények egy teljesen precíz, geometriától független felépítése hatványsorokkal lehetséges; a 85. szakaszban látni fogjuk ezeket a sorokat.)

**Radián.** A szögeket ívmértékben (radiánban) mérjük: egy szög mértéke az egységsugarú körből kimetszett ív hossza. A teljes kör kerülete $2\pi$, így $360° = 2\pi$, $180° = \pi$, $90° = \frac{\pi}{2}$. Az analízisben **mindig radiánban** számolunk; meglátjuk (70. szakasz), hogy a $\sin' = \cos$ szabály csak így igaz.

> **Definíció.** Legyen $x \in [0, 2\pi)$. Mérjünk fel az egységkörre egy $x$ hosszúságú ívet az $(1, 0)$ pontból kiindulva, pozitív irányban (az óramutató járásával ellentétesen). Az ív $P$ végpontjának első koordinátája $\cos x$, második koordinátája $\sin x$.
>
> Tetszőleges $x \in \mathbb{R}$-re, ha $2k\pi \le x < 2(k + 1)\pi$ valamely $k \in \mathbb{Z}$-re, legyen
> $$\sin x = \sin(x - 2k\pi), \qquad \cos x = \cos(x - 2k\pi).$$

A második rész azt fejezi ki, hogy ha az íven „többször körbe megyünk”, ugyanoda érkezünk; negatív $x$ esetén pedig az óramutató járásával megegyező irányban haladunk.

**Alapvető tulajdonságok.** A definícióból közvetlenül:

- **Periodicitás:** $\sin(x + 2\pi) = \sin x$, $\cos(x + 2\pi) = \cos x$.
- **Korlátosság:** $-1 \le \sin x \le 1$, $-1 \le \cos x \le 1$.
- **Nevezetes értékek:** $\cos 0 = 1$, $\sin 0 = 0$; $\cos\frac{\pi}{2} = 0$, $\sin\frac{\pi}{2} = 1$; $\cos\pi = -1$, $\sin\pi = 0$. Általában $\cos(k\pi) = (-1)^k$, $\sin(k\pi) = 0$ ($k \in \mathbb{Z}$). Továbbá (szabályos háromszögekből és négyzetből) $\sin\frac{\pi}{6} = \frac{1}{2}$, $\sin\frac{\pi}{4} = \frac{\sqrt{2}}{2}$, $\sin\frac{\pi}{3} = \frac{\sqrt{3}}{2}$.
- **Monotonitás:** a $\cos$ szigorúan monoton csökkenő a $[0, \pi]$-n (ahogy $P$ a felső félkörön balra halad, első koordinátája csökken), és szigorúan monoton növekedő a $[\pi, 2\pi]$-n.

> **Tétel („Pitagorasz-tétel” a körön).** Minden $x$-re
> $$\sin^2 x + \cos^2 x = 1.$$

Ez közvetlenül abból következik, hogy a $P = (\cos x, \sin x)$ pont az egységkörön van, azaz origótól mért távolsága $1$.

**Paritás és tükrözések.** A $-x$ ívhez tartozó pont a $P$ tükörképe az $x$ tengelyre, ezért
$$\cos(-x) = \cos x \quad (\text{páros}), \qquad \sin(-x) = -\sin x \quad (\text{páratlan}).$$
A $\frac{\pi}{2} - x$ ívhez tartozó pont a $P$ tükörképe az $y = x$ egyenesre (amely felcseréli a koordinátákat), ezért
$$\cos\!\left(\frac{\pi}{2} - x\right) = \sin x, \qquad \sin\!\left(\frac{\pi}{2} - x\right) = \cos x.$$
Ebből adódik, hogy a $\sin$ grafikonja a $\cos$ grafikonjának $\frac{\pi}{2}$-vel jobbra tolt képe, és így a $\sin$ szigorúan monoton növekedő a $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-n, csökkenő a $\left[\frac{\pi}{2}, \frac{3\pi}{2}\right]$-n.

### Az addíciós képletek

> **Tétel (addíciós képletek).** Minden $x, y \in \mathbb{R}$-re
> $$\cos(x - y) = \cos x\cos y + \sin x\sin y, \qquad \cos(x + y) = \cos x\cos y - \sin x\sin y,$$
> $$\sin(x + y) = \sin x\cos y + \cos x\sin y, \qquad \sin(x - y) = \sin x\cos y - \cos x\sin y.$$

*Bizonyítás.* Legyen $P = (\cos x, \sin x)$ és $Q = (\cos y, \sin y)$; ezek az egységkörön vannak, és a köztük lévő ív hossza $x - y$ (a szögek különbsége). Ha a kört elforgatjuk úgy, hogy $Q$ az $(1, 0)$ pontba kerüljön, akkor $P$ a $(\cos(x - y), \sin(x - y))$ pontba kerül. A forgatás a távolságokat megtartja, ezért
$$|PQ|^2 = (\cos x - \cos y)^2 + (\sin x - \sin y)^2 = (\cos(x - y) - 1)^2 + \sin^2(x - y).$$
Bontsuk ki mindkét oldalt, és használjuk a $\sin^2 + \cos^2 = 1$ azonosságot:
$$2 - 2(\cos x\cos y + \sin x\sin y) = 2 - 2\cos(x - y).$$
Ebből az első képlet adódik. A második az elsőből $y$ helyett $-y$-t írva (a paritást felhasználva). A $\sin$ képletei a $\sin t = \cos\left(\frac{\pi}{2} - t\right)$ azonosságból: $\sin(x + y) = \cos\left(\left(\frac{\pi}{2} - x\right) - y\right) = \cos\left(\frac{\pi}{2} - x\right)\cos y + \sin\left(\frac{\pi}{2} - x\right)\sin y = \sin x \cos y + \cos x\sin y$. $\blacksquare$

**Következmények.** $y = x$-et írva a **kétszeres szögek** képletei:
$$\sin 2x = 2\sin x\cos x, \qquad \cos 2x = \cos^2 x - \sin^2 x = 2\cos^2 x - 1 = 1 - 2\sin^2 x.$$
Ezekből a **linearizáló** (félszög-) képletek:
$$\cos^2 x = \frac{1 + \cos 2x}{2}, \qquad \sin^2 x = \frac{1 - \cos 2x}{2}.$$
Végül a **különbség szorzattá alakítása**, amelyre a folytonosság és a derivált kiszámításánál lesz szükség:
$$(\otimes) \qquad \sin x - \sin y = 2\sin\frac{x - y}{2}\cos\frac{x + y}{2}.$$
*Bizonyítás:* legyen $u = \frac{x + y}{2}$ és $v = \frac{x - y}{2}$, így $x = u + v$, $y = u - v$. Az addíciós képletekkel
$$\sin(u + v) - \sin(u - v) = (\sin u\cos v + \cos u\sin v) - (\sin u\cos v - \cos u\sin v) = 2\cos u\sin v. \qquad \blacksquare$$

### A szinusz becslése és a folytonosság

> **Tétel.** **a)** Ha $x > 0$, akkor $\sin x < x$. **b)** Ha $x \neq 0$, akkor $|\sin x| < |x|$.

*Bizonyítás.* **a)** Ha $x \ge \frac{\pi}{2}$, az állítás triviális, hiszen $\sin x \le 1 < \frac{\pi}{2} \le x$. Legyen $0 < x < \frac{\pi}{2}$. Tekintsük az egységkörön az $(1, 0)$ ponttól $x$ és $-x$ ív-távolságra lévő $P$ és $P'$ pontokat. A $PP'$ húr hossza $2\sin x$ (a $P$ és $P'$ egymás tükörképei az $x$ tengelyre, második koordinátájuk $\pm\sin x$), a köztük lévő ív hossza $2x$. Mivel **két pont között a legrövidebb út az egyenes szakasz** (és ez a tulajdonság beépül az ívhossz definíciójába), $2\sin x < 2x$.

**b)** Ha $x > 0$, akkor $0 < \sin x < x$ ($x < \pi$-re), illetve $|\sin x| \le 1 < x$ ($x \ge \pi$-re). Ha $x < 0$, a páratlanság szerint $|\sin x| = |\sin(-x)| < |-x| = |x|$. $\blacksquare$

> **Tétel (Lipschitz-tulajdonság).** Minden $x, y \in \mathbb{R}$-re
> $$|\sin x - \sin y| \le |x - y|, \qquad |\cos x - \cos y| \le |x - y|.$$

*Bizonyítás.* A $(\otimes)$ képlet és az előző tétel szerint
$$|\sin x - \sin y| = 2\left|\sin\frac{x - y}{2}\right|\cdot\left|\cos\frac{x + y}{2}\right| \le 2\cdot\frac{|x - y|}{2}\cdot 1 = |x - y|.$$
A koszinuszra a $\cos x = \sin\left(\frac{\pi}{2} - x\right)$ azonosság szerint
$$|\cos x - \cos y| = \left|\sin\left(\tfrac{\pi}{2} - x\right) - \sin\left(\tfrac{\pi}{2} - y\right)\right| \le |y - x|. \qquad \blacksquare$$

> **Következmény.** A $\sin$ és a $\cos$ folytonos $\mathbb{R}$-en. Sőt, adott $\varepsilon > 0$-hoz a $\delta = \varepsilon$ választás **minden** pontban megfelelő.

(Az utóbbi tulajdonságot **egyenletes folytonosságnak** nevezzük: a $\delta$ nem függ a vizsgált ponttól. Ennek jelentősége a következő félévben, az integrálszámításban mutatkozik meg.)

> **Definíció.** $\displaystyle \operatorname{tg} x = \tan x = \frac{\sin x}{\cos x}$, $\displaystyle \operatorname{ctg} x = \cot x = \frac{\cos x}{\sin x}$.

A $\tan$ értelmezési tartománya $\mathbb{R} \setminus \left\{\frac{\pi}{2} + k\pi : k \in \mathbb{Z}\right\}$ (a $\cos$ zérushelyein kívül), a $\cot$-é $\mathbb{R}\setminus\{k\pi : k \in \mathbb{Z}\}$. Mindkettő $\pi$ szerint periodikus (hiszen $\sin(x + \pi) = -\sin x$ és $\cos(x + \pi) = -\cos x$), páratlan, és a hányadosszabály szerint folytonos az értelmezési tartománya minden pontjában. A $\tan$ a $\left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$-n szigorúan monoton növekedő (a számláló nő, a pozitív nevező a $[0, \frac{\pi}{2})$-n csökken; a negatív oldalra a páratlanság viszi át), és a végpontokban $\pm\infty$-hez tart.

## 59. Az arkusz (ciklometrikus) függvények

A $\sin x = \frac{1}{2}$ egyenletnek végtelen sok megoldása van: $\frac{\pi}{6}$, $\frac{5\pi}{6}$, $\frac{\pi}{6} + 2\pi, \dots$ A periodikus függvények tehát **nem injektívek**, így nem invertálhatók. Ha azonban alkalmas intervallumra szorítjuk őket, ahol szigorúan monotonok, akkor az 55. szakasz tétele szerint folytonos, szigorúan monoton inverzük van. A szokásos választás:

- $\sin|_{[-\pi/2,\ \pi/2]}$: szigorúan monoton növekedő, értékkészlete $[-1, 1]$;
- $\cos|_{[0,\ \pi]}$: szigorúan monoton csökkenő, értékkészlete $[-1, 1]$;
- $\tan|_{(-\pi/2,\ \pi/2)}$: szigorúan monoton növekedő, értékkészlete $\mathbb{R}$;
- $\cot|_{(0,\ \pi)}$: szigorúan monoton csökkenő, értékkészlete $\mathbb{R}$.

> **Definíció (arkuszfüggvények).** Az előbbi megszorítások inverzei:
> $$\arcsin : [-1, 1] \to \left[-\frac{\pi}{2}, \frac{\pi}{2}\right], \qquad \arccos : [-1, 1] \to [0, \pi],$$
> $$\operatorname{arctg} = \arctan : \mathbb{R} \to \left(-\frac{\pi}{2}, \frac{\pi}{2}\right), \qquad \operatorname{arcctg} = \operatorname{arccot} : \mathbb{R} \to (0, \pi).$$

Szavakban: $\arcsin y$ az a $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-beli szög (ív), amelynek szinusza $y$. Az elnevezés a latin *arcus* (ív) szóból ered. Az 55. szakasz szerint mind a négy függvény folytonos és szigorúan monoton.

**Példák.** $\arcsin\frac{1}{2} = \frac{\pi}{6}$, $\arcsin(-1) = -\frac{\pi}{2}$, $\arccos\frac{1}{2} = \frac{\pi}{3}$, $\arccos(-1) = \pi$, $\arctan 1 = \frac{\pi}{4}$, $\lim_{x \to +\infty}\arctan x = \frac{\pi}{2}$.

**Vigyázat:** $\sin(\arcsin y) = y$ minden $y \in [-1, 1]$-re, de $\arcsin(\sin x) = x$ **csak** $x \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-re igaz. Például $\arcsin(\sin\pi) = \arcsin 0 = 0 \neq \pi$.

**Összefüggések.**
$$\arccos x = \frac{\pi}{2} - \arcsin x \qquad (x \in [-1, 1]).$$
*Bizonyítás:* legyen $t = \frac{\pi}{2} - \arcsin x$. Mivel $\arcsin x \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$, ezért $t \in [0, \pi]$; és $\cos t = \sin(\arcsin x) = x$. Az $\arccos x$ az egyetlen $[0, \pi]$-beli szám, amelynek koszinusza $x$, tehát $t = \arccos x$. $\blacksquare$ Hasonlóan $\operatorname{arccot} x = \frac{\pi}{2} - \arctan x$.

**Hasznos azonosság:** $\cos(\arcsin x) = \sqrt{1 - x^2}$. Valóban, ha $t = \arcsin x$, akkor $\cos^2 t = 1 - \sin^2 t = 1 - x^2$, és $t \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$ miatt $\cos t \ge 0$, tehát a pozitív gyököt kell venni. Ezt az azonosságot a 70. szakaszban, az $\arcsin$ deriválásánál használjuk.

## 60. Hatványozás

A hatványozást lépésről lépésre terjesztjük ki: a természetes kitevőkről az egészekre, majd a racionálisakra, végül a valósakra. Minden lépést ugyanaz a cél vezérel: **a hatványozás azonosságai maradjanak érvényben.**

**Természetes kitevő.** $a^n = \underbrace{a \cdot a \cdots a}_{n}$. Ha $0 < a < b$, akkor minden $n$-re $a^n < b^n$ (indukcióval: $a^n = a\cdot a^{n-1} < a\cdot b^{n-1} < b\cdot b^{n-1}$). A pozitív számok $k$-adik gyökének létezését és egyértelműségét az 54. szakaszban láttuk be.

**A hatványazonosságok.** Ha $a, b > 0$ és $x, y \in \mathbb{N}$, akkor (indukcióval)
$$\text{I.}\ \ (ab)^x = a^x b^x, \qquad \text{II.}\ \ a^{x + y} = a^x a^y, \qquad \text{III.}\ \ (a^x)^y = a^{xy}.$$

**1. lépés: egész kitevő.** Ha a II. azonosság érvényben marad, akkor $a^{x + 0} = a^x\cdot a^0$, amiből $a^0 = 1$; és $a^{x + (-x)} = a^0 = 1$, amiből $a^{-x} = \frac{1}{a^x}$. Ezért **definiáljuk** (ha $a \neq 0$):
$$a^0 = 1, \qquad a^{-n} = \frac{1}{a^n}.$$
Az azonosságok egész kitevőkre is érvényesek (esetszétválasztással ellenőrizhető). A $0$ alapra: $0^n = 0$ ($n \in \mathbb{N}$), megállapodás szerint $0^0 = 1$, negatív kitevőre nem értelmezzük.

**2. lépés: racionális kitevő.** Ha a III. azonosság érvényben marad, akkor $\left(a^{p/q}\right)^q = a^p$, tehát $a^{p/q}$-nak az $a^p$ szám $q$-adik gyökének kell lennie. Legyen $a > 0$, $p \in \mathbb{Z}$, $q \in \mathbb{N}$:
$$a^{p/q} = \sqrt[q]{a^p}.$$
(A pozitív gyököt választjuk. A negatív alapot innentől kizárjuk, mert például $(-8)^{1/3} = -2$, de $(-8)^{2/6} = \sqrt[6]{64} = 2$ — a definíció függne a tört alakjától.)

> **Tétel (a definíció jó).** Ha $a > 0$ és $\frac{n}{m} = \frac{p}{q}$ ($m, q \in \mathbb{N}$), akkor $\sqrt[m]{a^n} = \sqrt[q]{a^p}$.

*Bizonyítás.* Emeljük mindkét számot az $mq$-adik hatványra (egész kitevős azonosságokkal):
$$\left(\sqrt[m]{a^n}\right)^{mq} = (a^n)^q = a^{nq}, \qquad \left(\sqrt[q]{a^p}\right)^{mq} = (a^p)^m = a^{pm}.$$
Mivel $nq = pm$, a két hatvány egyenlő. A pozitív számok körében az $mq$-adik hatványra emelés injektív, tehát maguk a számok is egyenlők. $\blacksquare$

> **Tétel.** A hatványazonosságok (I.–III.) érvényesek, ha $a, b > 0$ és $x, y \in \mathbb{Q}$.

*Bizonyítás (a II. azonosság).* Legyen $x = \frac{p}{q}$, $y = \frac{r}{s}$. Emeljük mindkét oldalt a $qs$-edik hatványra:
$$\left(a^{\frac{p}{q} + \frac{r}{s}}\right)^{qs} = \left(a^{\frac{ps + rq}{qs}}\right)^{qs} = a^{ps + rq}, \qquad \left(a^{p/q}a^{r/s}\right)^{qs} = \left(a^{p/q}\right)^{qs}\left(a^{r/s}\right)^{qs} = a^{ps}a^{rq} = a^{ps + rq}.$$
A két pozitív szám $qs$-edik hatványa egyenlő, tehát maguk is egyenlők. A többi azonosság ugyanígy. $\blacksquare$

> **Tétel (monotonitás racionális kitevőre).** Ha $a > 0$ és $r \in \mathbb{Q}$, akkor $a^r > 0$. Ha $r_1 < r_2$ racionálisak, akkor
> $$a > 1 \implies a^{r_1} < a^{r_2}, \qquad 0 < a < 1 \implies a^{r_1} > a^{r_2}.$$

*Bizonyítás.* A pozitivitás a definícióból látszik. Legyen $a > 1$. Először: ha $r = \frac{p}{q} > 0$, akkor $a^r > 1$. Valóban, $a^p > 1$, és ha $\sqrt[q]{a^p} \le 1$ volna, akkor $q$-adik hatványra emelve $a^p \le 1$ adódna. Ebből
$$a^{r_2} = a^{r_1}\cdot a^{r_2 - r_1} > a^{r_1},$$
hiszen $a^{r_2 - r_1} > 1$. A $0 < a < 1$ eset az $\frac{1}{a} > 1$ alapra visszavezethető. $\blacksquare$

**3. lépés: valós kitevő.** Mennyi legyen $2^{\sqrt{2}}$? A monotonitás alapján a racionális közelítésekből:
$$2^{1} < 2^{1{,}4} < 2^{1{,}41} < 2^{1{,}414} < \dots < 2^{\sqrt{2}}\ (?) < \dots < 2^{1{,}415} < 2^{1{,}42} < 2^{1{,}5}.$$
A $2^{\sqrt{2}}$ értékét tehát „alulról” és „felülről” is közelíthetjük racionális kitevős hatványokkal. A teljességi axióma ezt a közelítést precízzé teszi.

> **Definíció.** Ha $a > 1$ és $x \in \mathbb{R}$, akkor
> $$a^x = \sup\underbrace{\{a^r : r \in \mathbb{Q},\ r < x\}}_{A_x} = \inf\underbrace{\{a^s : s \in \mathbb{Q},\ s > x\}}_{B_x}.$$
> Ha $0 < a < 1$, akkor $a^x = \left(\frac{1}{a}\right)^{-x}$; és $1^x = 1$.

A definícióhoz két dolgot kell igazolni: hogy a szuprémum és az infimum létezik, és hogy **egyenlők** (különben a definíció nem volna egyértelmű). Racionális $x$-re pedig azt is, hogy az új definíció egybeesik a régivel.

> **Tétel.** Ha $a > 1$ és $x \in \mathbb{R}$, akkor $\sup A_x = \inf B_x$. Ha $x$ racionális, ez a közös érték a korábban definiált $a^x$.

*Bizonyítás.* Az $A_x$ és $B_x$ halmazok nem üresek (az arkhimédészi tulajdonság szerint van $x$-nél kisebb és nagyobb racionális szám). Ha $r < x < s$ racionálisak, akkor a monotonitás szerint $a^r < a^s$: minden $A_x$-beli elem kisebb minden $B_x$-belinél. Ezért $B_x$ bármely eleme felső korlátja $A_x$-nek, így $\sup A_x$ létezik és $\sup A_x \le a^s$ minden $s > x$ racionálisra; tehát $\sup A_x$ alsó korlátja $B_x$-nek, és így
$$\sup A_x \le \inf B_x.$$
Az egyenlőséghez rögzítsünk egy $s_0 > x$ racionális számot. Legyen $n \in \mathbb{N}$, és válasszunk (a racionális számok sűrűsége szerint) olyan $r < x < s < s_0$ racionális számokat, amelyekre $s - r < \frac{1}{n}$. Ekkor
$$0 \le \inf B_x - \sup A_x \le a^s - a^r = a^r\left(a^{s - r} - 1\right) \le a^{s_0}\left(a^{1/n} - 1\right).$$
Itt felhasználtuk, hogy $a^r < a^{s_0}$ és $a^{s - r} < a^{1/n}$. A 24. szakasz szerint $a^{1/n} = \sqrt[n]{a} \to 1$, tehát a jobb oldal $0$-hoz tart. Mivel a bal oldali nemnegatív szám minden $n$-re legfeljebb ekkora, egyenlő $0$-val.

Ha $x$ racionális, akkor a régi $a^x$ a monotonitás miatt $A_x$ minden eleménél nagyobb és $B_x$ minden eleménél kisebb, tehát $\sup A_x \le a^x \le \inf B_x$, és a kettő egyenlősége miatt mindhárom egyenlő. $\blacksquare$

> **Tétel.** Minden $a > 0$ és $x \in \mathbb{R}$ esetén $a^x > 0$. Ha $x_1 < x_2$, akkor
> $$a > 1 \implies a^{x_1} < a^{x_2}, \qquad 0 < a < 1 \implies a^{x_1} > a^{x_2}.$$

*Bizonyítás ($a > 1$).* Egy $r < x$ racionális számra $a^x \ge a^r > 0$. Ha $x_1 < x_2$, válasszunk racionális számokat úgy, hogy $x_1 < r_1 < r_2 < x_2$. Ekkor
$$a^{x_1} \le a^{r_1} < a^{r_2} \le a^{x_2},$$
ahol az első egyenlőtlenség az infimumos, az utolsó a szuprémumos definícióból, a középső a racionális kitevős monotonitásból adódik. $\blacksquare$

## 61. Az exponenciális és a hatványfüggvény

> **Tétel (folytonosság).** Ha $a > 0$ és $x_n \to x$, akkor $a^{x_n} \to a^x$. Következésképpen az $x \mapsto a^x$ függvény folytonos $\mathbb{R}$-en.

*Bizonyítás ($a > 1$; a $0 < a < 1$ eset az $\frac{1}{a}$ alapra visszavezethető, $a = 1$ triviális).* Legyen $\varepsilon > 0$. A szuprémum és az infimum $\varepsilon$-os jellemzése szerint vannak olyan $r < x < s$ racionális számok, amelyekre
$$a^x - \varepsilon < a^r \qquad \text{és} \qquad a^s < a^x + \varepsilon.$$
Mivel $x_n \to x$ és $r < x < s$, egy $n_0$-tól kezdve $x_n \in (r, s)$. A szigorú monotonitás miatt ekkor
$$a^x - \varepsilon < a^r < a^{x_n} < a^s < a^x + \varepsilon,$$
azaz $|a^{x_n} - a^x| < \varepsilon$. Az átviteli elv szerint a függvény folytonos. $\blacksquare$

**Alternatív definíció.** Az $a^x$-et úgy is definiálhattuk volna, hogy veszünk egy $x_n \to x$ racionális sorozatot, és $a^x := \lim a^{x_n}$. Ehhez azonban meg kellett volna mutatni, hogy a határérték létezik, **és** hogy nem függ az $(x_n)$ sorozat választásától. A szuprémumos definíció ezt a kettős kötelezettséget kerüli el; utólag pedig a folytonossági tétel azt is megmutatja, hogy a két definíció egybeesik.

> **Tétel.** A hatványazonosságok érvényesek, ha $a, b > 0$ és $x, y \in \mathbb{R}$:
> $$(ab)^x = a^x b^x, \qquad a^{x + y} = a^x a^y, \qquad (a^x)^y = a^{xy}.$$

*Bizonyítás.* Legyenek $r_n \to x$ és $s_n \to y$ racionális sorozatok. A folytonosság és a racionális eset szerint
$$(ab)^x = \lim (ab)^{r_n} = \lim a^{r_n}b^{r_n} = a^x b^x, \qquad a^{x + y} = \lim a^{r_n + s_n} = \lim a^{r_n}a^{s_n} = a^x a^y.$$
A harmadik azonosságnál két lépésben haladunk. Először racionális $y = \frac{p}{q}$-ra: a második azonosságot ismételten alkalmazva $(a^x)^p = a^{xp}$, és ennek $q$-adik gyöke $(a^x)^{p/q} = a^{xp/q}$ (mert $\left(a^{xp/q}\right)^q = a^{xp}$). Tetszőleges valós $y$-ra, $s_n \to y$ racionális sorozattal, a $b = a^x$ alapú és az $a$ alapú exponenciális függvény folytonossága szerint
$$(a^x)^y = \lim (a^x)^{s_n} = \lim a^{xs_n} = a^{xy}. \qquad \blacksquare$$

> **Definíció.** Legyen $a > 0$ rögzített. Az $x \mapsto a^x$ ($x \in \mathbb{R}$) függvény az **$a$ alapú exponenciális függvény** (jelölése $\exp_a$ is). Ha viszont $b \in \mathbb{R}$ rögzített, akkor az $x \mapsto x^b$ ($x > 0$) függvény a **$b$ kitevőjű hatványfüggvény**.

A kettő megkülönböztetése lényeges: az elsőben a **kitevő** a változó, a másodikban az **alap**. A deriválási szabályaik is egészen mások lesznek: $(2^x)' = 2^x\ln 2$, míg $(x^2)' = 2x$.

> **Tétel (az exponenciális függvény tulajdonságai).**
>
> - Ha $a > 1$: $a^x > 0$, a függvény szigorúan monoton növekedő és folytonos, és
> $$\lim_{x \to +\infty} a^x = +\infty, \qquad \lim_{x \to -\infty} a^x = 0.$$
>
> - Ha $0 < a < 1$: $a^x > 0$, szigorúan monoton csökkenő és folytonos, és $\lim_{x \to +\infty} a^x = 0$, $\lim_{x \to -\infty} a^x = +\infty$.
>
> Mindkét esetben az értékkészlet $(0, +\infty)$.

*Bizonyítás ($a > 1$).* A pozitivitást, a monotonitást és a folytonosságot már beláttuk. A 22. szakasz szerint $a^n \to +\infty$. Adott $K$-hoz van olyan $N$, hogy $a^N > K$, és a monotonitás miatt minden $x > N$-re $a^x > a^N > K$; tehát $\lim_{x \to +\infty} a^x = +\infty$. Ha $x \to -\infty$, akkor $a^x = \frac{1}{a^{-x}}$, ahol $a^{-x} \to +\infty$, tehát $a^x \to 0$. Az értékkészlet az 54. szakasz szerint intervallum, amely tetszőlegesen nagy és tetszőlegesen kicsi pozitív számokat tartalmaz, de csak pozitívakat; tehát $(0, +\infty)$. $\blacksquare$

> **Tétel (a hatványfüggvény tulajdonságai).** A $(0, +\infty)$-en:
>
> - ha $b > 0$: $x^b$ szigorúan monoton növekedő és folytonos, $\lim_{x \to 0+0} x^b = 0$, $\lim_{x \to +\infty} x^b = +\infty$;
> - ha $b < 0$: $x^b$ szigorúan monoton csökkenő és folytonos, $\lim_{x \to 0+0} x^b = +\infty$, $\lim_{x \to +\infty} x^b = 0$.

*Bizonyítás ($b > 0$).* Ha $t > 1$, akkor $t^b > t^0 = 1$ (az exponenciális függvény monotonitása). Így $0 < x < y$ esetén
$$y^b = \left(\frac{y}{x}\cdot x\right)^b = \left(\frac{y}{x}\right)^b x^b > x^b.$$
A határértékek: $x > K^{1/b}$ esetén $x^b > K$; $0 < x < \varepsilon^{1/b}$ esetén $x^b < \varepsilon$. A folytonosság: legyen $x_0 > 0$ és $0 < \varepsilon < x_0^b$, továbbá
$$A = (x_0^b - \varepsilon)^{1/b}, \qquad B = (x_0^b + \varepsilon)^{1/b};$$
a monotonitás miatt $A < x_0 < B$. Ha $A < x < B$, akkor $x_0^b - \varepsilon = A^b < x^b < B^b = x_0^b + \varepsilon$. Tehát $\delta = \min\{x_0 - A, B - x_0\}$ jó. $\blacksquare$

(Később, a 72. szakaszban, a hatványfüggvény folytonossága egyszerűbben is adódik az $x^b = e^{b\ln x}$ alakból.)

## 62. A logaritmusfüggvények

Legyen $a > 0$, $a \neq 1$. Az $a^x$ függvény szigorúan monoton és folytonos $\mathbb{R}$-en, értékkészlete $(0, +\infty)$. Az 55. szakasz tétele szerint tehát van folytonos és szigorúan monoton inverze.

> **Definíció.** Az $x \mapsto a^x$ függvény inverze az **$a$ alapú logaritmus**, jelölése $\log_a$. Azaz
> $$(*) \qquad \log_a x = y \iff a^y = x \qquad (x > 0,\ y \in \mathbb{R}).$$

Szavakban: $\log_a x$ az a kitevő, amelyre $a$-t emelve $x$-et kapunk. Például $\log_2 8 = 3$, $\log_{10} 0{,}01 = -2$, $\log_a 1 = 0$, $\log_a a = 1$. Az inverz definíciója szerint
$$a^{\log_a x} = x \quad (x > 0), \qquad \log_a(a^y) = y \quad (y \in \mathbb{R}).$$

**Tulajdonságok.**

1. $D(\log_a) = (0, +\infty)$, $R(\log_a) = \mathbb{R}$.
2. $\log_a$ folytonos a $(0, +\infty)$-en (55. szakasz).
3. Ha $a > 1$, akkor $\log_a$ szigorúan monoton növekedő; ha $0 < a < 1$, akkor szigorúan monoton csökkenő.
4. Ha $a > 1$, akkor
$$\lim_{x \to +\infty}\log_a x = +\infty, \qquad \lim_{x \to 0+0}\log_a x = -\infty;$$
ha $0 < a < 1$, a két határérték felcserélődik.

*Bizonyítás (4., $a > 1$).* Adott $K$-hoz, ha $x > a^K$, akkor a monotonitás miatt $\log_a x > \log_a(a^K) = K$. Hasonlóan, ha $0 < x < a^K$, akkor $\log_a x < K$. $\blacksquare$

**5. A logaritmus azonosságai.** Ha $a > 0$, $a \neq 1$ és $x, y > 0$, $t \in \mathbb{R}$, akkor
$$\log_a(xy) = \log_a x + \log_a y, \qquad \log_a\frac{x}{y} = \log_a x - \log_a y, \qquad \log_a(x^t) = t\log_a x.$$

*Bizonyítás.* Minden azonosságot a hatványazonosságokra és $(*)$-ra vezetünk vissza. Az elsőre:
$$a^{\log_a x + \log_a y} = a^{\log_a x}\cdot a^{\log_a y} = xy = a^{\log_a(xy)}.$$
Mivel az $a^t$ függvény injektív, a kitevők egyenlők. A harmadikra:
$$a^{\log_a(x^t)} = x^t = \left(a^{\log_a x}\right)^t = a^{t\log_a x},$$
és ismét az injektivitás. A második az első két azonosságból ($\frac{x}{y} = x\cdot y^{-1}$). $\blacksquare$

A logaritmus tehát a **szorzást összeadássá**, a hatványozást szorzássá alakítja. Ez volt a logaritmus feltalálásának (John Napier, 1614) gyakorlati oka: a logarléc és a logaritmustáblák a XX. század második feléig a mérnöki számolás alapeszközei voltak.

> **Tétel (áttérés más alapra).** Ha $a, b > 0$, $a, b \neq 1$, akkor minden $x > 0$-ra
> $$\log_a x = \frac{\log_b x}{\log_b a}.$$

*Bizonyítás.* Legyen $y = \log_a x$, azaz $a^y = x$. Mindkét oldal $b$ alapú logaritmusát véve, a harmadik azonossággal: $y\log_b a = \log_b x$. $\blacksquare$

Minden logaritmus tehát egyetlen „alaplogaritmus” konstansszorosa; a következő szakaszban látjuk, melyik a legtermészetesebb alap.

## 63. Az e szám és a természetes logaritmus

A 17. szakaszban beláttuk, hogy az
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekedő, a
$$d_n = \left(1 + \frac{1}{n}\right)^{n+1}$$
sorozat szigorúan monoton csökkenő, és $e_n < d_n$. A 21. szakasz szerint mindkettő konvergens. Most megmutatjuk, hogy ugyanahhoz a számhoz tartanak — és ezzel a két sorozat egymásba skatulyázott intervallumokat ad ($[e_n, d_n]$), amelyek egyetlen közös pontja az $e$.

> **Állítás.** Minden $n, m \in \mathbb{N}$-re $e_n < d_m$.

*Bizonyítás.* Ha $n = m$, akkor $d_n = e_n\left(1 + \frac{1}{n}\right) > e_n$. Ha $m < n$, akkor $e_n < d_n < d_m$ (a $d$ csökkenése miatt). Ha $m > n$, akkor $e_n < e_m < d_m$ (az $e$ növekedése miatt). $\blacksquare$

> **Tétel.** $\displaystyle \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^{n+1}$.

*Bizonyítás.* Legyen $e = \lim e_n$ és $f = \lim d_n$. Rögzített $m$ mellett minden $n$-re $e_n < d_m$, tehát határátmenettel $e \le d_m$; majd $m \to \infty$-nel $e \le f$. A másik irányhoz:
$$0 \le f - e \le d_n - e_n = \left(1 + \frac{1}{n}\right)^n\cdot\frac{1}{n} = \frac{e_n}{n} < \frac{4}{n},$$
mert $e_n < d_1 = 4$. Ez minden $n$-re igaz, tehát $f - e = 0$. $\blacksquare$

(A 25. szakasz szorzatszabályával rövidebben is: $d_n = e_n\cdot\left(1 + \frac{1}{n}\right) \to e \cdot 1$.)

> **Definíció.**
> $$e = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n = 2{,}718281828459\dots$$

A becslés: $e_n < e < d_n$ minden $n$-re. Például $n = 1000$-re $2{,}7169 < e < 2{,}7196$. Ez a közelítés lassú; a 85. szakaszban egy sokkal gyorsabbat ismerünk meg, az $e = \sum_{n=0}^\infty \frac{1}{n!}$ sort.

> **Definíció.** Az $e$ alapú logaritmust **természetes logaritmusnak** nevezzük, jelölése $\ln x$ (a *logarithmus naturalis* rövidítése; egyes szerzőknél egyszerűen $\log x$).

Az áttérési képlet szerint $\log_a x = \frac{\ln x}{\ln a}$, és $a^x = e^{x\ln a}$ (hiszen $a = e^{\ln a}$). Az, hogy miért éppen az $e$ a „természetes” alap, a 72. szakaszban derül ki: az $e^x$ az egyetlen exponenciális függvény, amely **megegyezik a saját deriváltjával**, és a $\ln x$ deriváltja a lehető legegyszerűbb, $\frac{1}{x}$.

## 64. Hiperbolikus függvények

Az exponenciális függvényből néhány olyan függvényt építhetünk, amely meglepő módon a szögfüggvényekhez hasonlóan viselkedik.

> **Definíció.**
> $$\operatorname{sh} x = \frac{e^x - e^{-x}}{2} \quad (\text{szinusz hiperbolikusz}), \qquad \operatorname{ch} x = \frac{e^x + e^{-x}}{2} \quad (\text{koszinusz hiperbolikusz}).$$
> (Más jelöléssel $\sinh x$ és $\cosh x$.)

**Alaptulajdonságok.**

- Mindkettő folytonos $\mathbb{R}$-en (folytonos függvények összege és különbsége).
- Az $\operatorname{sh}$ páratlan, a $\operatorname{ch}$ páros: $\operatorname{sh}(-x) = \frac{e^{-x} - e^x}{2} = -\operatorname{sh} x$, és hasonlóan $\operatorname{ch}(-x) = \operatorname{ch} x$. Valójában ez a felbontás éppen az $e^x$ páros és páratlan részre bontása (VIII. rész, 1. feladat): $e^x = \operatorname{ch} x + \operatorname{sh} x$.
- $\operatorname{sh}$ szigorúan monoton növekedő, hiszen $e^x$ szigorúan nő és $e^{-x}$ szigorúan csökken, így a különbségük szigorúan nő.
- $\operatorname{sh} 0 = 0$, $\operatorname{ch} 0 = 1$, és
$$\lim_{x \to +\infty}\operatorname{sh} x = +\infty, \qquad \lim_{x \to -\infty}\operatorname{sh} x = -\infty, \qquad \lim_{x \to \pm\infty}\operatorname{ch} x = +\infty.$$

> **Tétel (hiperbolikus alapazonosság).** $\operatorname{ch}^2 x - \operatorname{sh}^2 x = 1$.

*Bizonyítás.*
$$\left(\frac{e^x + e^{-x}}{2}\right)^2 - \left(\frac{e^x - e^{-x}}{2}\right)^2 = \frac{(e^{2x} + 2 + e^{-2x}) - (e^{2x} - 2 + e^{-2x})}{4} = \frac{4}{4} = 1. \qquad \blacksquare$$

**Az elnevezés magyarázata.** Az azonosság szerint minden $t$-re az $(\operatorname{ch} t, \operatorname{sh} t)$ pont az
$$x^2 - y^2 = 1$$
egyenletű **hiperbolán** van — pontosan úgy, ahogy a $(\cos t, \sin t)$ pont az $x^2 + y^2 = 1$ egyenletű **körön**. (Sőt, a $t$ paraméter mindkét esetben egy terület kétszerese: a kör, illetve a hiperbola egy szektoráé.) A komplex függvénytanban a párhuzam még szorosabb: $\cos x = \frac{e^{ix} + e^{-ix}}{2}$ és $\sin x = \frac{e^{ix} - e^{-ix}}{2i}$.

**A láncgörbe.** A két végén felfüggesztett, saját súlya alatt belógó lánc vagy kötél alakja egy $y = c\operatorname{ch}\frac{x}{c}$ görbe (láncgörbe). Galilei még parabolának gondolta; a helyes választ Leibniz, Huygens és Johann Bernoulli adta meg 1691-ben.

**Következmények.** $\operatorname{ch} x \ge 1$ minden $x$-re (hiszen $\operatorname{ch}^2 x = 1 + \operatorname{sh}^2 x \ge 1$ és $\operatorname{ch} x > 0$), és
$$\operatorname{ch} x = \sqrt{1 + \operatorname{sh}^2 x}.$$
Ebből adódik, hogy $\operatorname{ch}$ szigorúan monoton növekedő a $[0, +\infty)$-en (ott $\operatorname{sh} x \ge 0$ szigorúan nő, így $\operatorname{sh}^2 x$ is), és szigorúan monoton csökkenő a $(-\infty, 0]$-n.

> **Tétel (addíciós képletek).**
> $$\operatorname{sh}(x \pm y) = \operatorname{sh} x\operatorname{ch} y \pm \operatorname{ch} x\operatorname{sh} y, \qquad \operatorname{ch}(x \pm y) = \operatorname{ch} x\operatorname{ch} y \pm \operatorname{sh} x\operatorname{sh} y.$$

*Bizonyítás (az első, $+$ előjellel).* A jobb oldalt kibontva:
$$\frac{(e^x - e^{-x})(e^y + e^{-y}) + (e^x + e^{-x})(e^y - e^{-y})}{4} = \frac{2e^{x + y} - 2e^{-x - y}}{4} = \operatorname{sh}(x + y),$$
hiszen a vegyes tagok ($e^{x - y}$ és $e^{-x + y}$) kiesnek. A többi ugyanígy. $\blacksquare$

Figyeljük meg az előjelet a $\operatorname{ch}$ képletében: a trigonometrikus $\cos(x + y) = \cos x\cos y - \sin x\sin y$ képlettel szemben itt **nincs** előjelváltás. Következmény: $\operatorname{sh} 2x = 2\operatorname{sh} x\operatorname{ch} x$ és $\operatorname{ch} 2x = \operatorname{ch}^2 x + \operatorname{sh}^2 x$.

> **Definíció.**
> $$\operatorname{th} x = \frac{\operatorname{sh} x}{\operatorname{ch} x} = \frac{e^x - e^{-x}}{e^x + e^{-x}}, \qquad \operatorname{cth} x = \frac{\operatorname{ch} x}{\operatorname{sh} x} \quad (x \neq 0).$$

A $\operatorname{th}$ értelmezett $\mathbb{R}$-en (a nevező mindig pozitív), páratlan, szigorúan monoton növekedő (ez az $\operatorname{th} x = 1 - \frac{2}{e^{2x} + 1}$ alakból látszik), és
$$\lim_{x \to +\infty}\operatorname{th} x = 1, \qquad \lim_{x \to -\infty}\operatorname{th} x = -1,$$
tehát értékkészlete a $(-1, 1)$ intervallum. A $\operatorname{cth}$-ra $\lim_{x \to \pm\infty}\operatorname{cth} x = \pm 1$ és $\lim_{x \to 0\pm 0}\operatorname{cth} x = \pm\infty$.

## 65. Az area függvények

A hiperbolikus függvények inverzeit **area** függvényeknek nevezzük (a latin *area*, terület szóból, utalva a hiperbolaszektor területére). A trigonometrikus esettel szemben itt az inverzek **zárt alakban**, logaritmussal felírhatók.

> **Definíció (area szinusz hiperbolikusz).** Az $\operatorname{sh} : \mathbb{R} \to \mathbb{R}$ függvény szigorúan monoton növekedő, folytonos, és értékkészlete $\mathbb{R}$ (a határértékei $\pm\infty$, és az 54. szakasz szerint az értékkészlet intervallum). Inverze, az $\operatorname{arsh} : \mathbb{R} \to \mathbb{R}$ függvény, folytonos és szigorúan monoton növekedő, és
> $$\operatorname{arsh} x = \ln\left(x + \sqrt{x^2 + 1}\right).$$

*Bizonyítás (a képlet).* Oldjuk meg az $y = \operatorname{sh} x$ egyenletet $x$-re. Az $u = e^x > 0$ jelöléssel
$$y = \frac{u - u^{-1}}{2} \implies u^2 - 2yu - 1 = 0 \implies u = y \pm \sqrt{y^2 + 1}.$$
Mivel $\sqrt{y^2 + 1} > |y|$, a „$-$” előjelű gyök negatív volna, tehát $u = y + \sqrt{y^2 + 1}$, és $x = \ln u = \ln\left(y + \sqrt{y^2 + 1}\right)$. $\blacksquare$

> **Definíció (area koszinusz hiperbolikusz).** A $\operatorname{ch}$ a $[0, +\infty)$-en szigorúan monoton növekedő, értékkészlete $[1, +\infty)$. A $\operatorname{ch}|_{[0, +\infty)}$ megszorítás inverze az $\operatorname{arch} : [1, +\infty) \to [0, +\infty)$ függvény, és
> $$\operatorname{arch} x = \ln\left(x + \sqrt{x^2 - 1}\right).$$

(A bizonyítás ugyanígy: $u^2 - 2yu + 1 = 0$, $u = y \pm \sqrt{y^2 - 1}$; a $[0, +\infty)$-re szorítkozás miatt $x \ge 0$, azaz $u \ge 1$, és ez a „$+$” előjelű gyököt jelenti, hiszen a két gyök szorzata $1$.)

> **Definíció (area tangens hiperbolikusz).** A $\operatorname{th}$ inverze az $\operatorname{arth} : (-1, 1) \to \mathbb{R}$ folytonos, szigorúan monoton növekedő bijekció, és
> $$\operatorname{arth} x = \frac{1}{2}\ln\frac{1 + x}{1 - x}.$$

*Bizonyítás.* Legyen $y = \operatorname{th} x = \frac{e^x - e^{-x}}{e^x + e^{-x}}$, ahol $|y| < 1$. A nevezővel felszorozva:
$$e^x - e^{-x} = y(e^x + e^{-x}) \implies (1 - y)e^x = (1 + y)e^{-x}.$$
Szorozzunk $e^x$-szel: $(1 - y)e^{2x} = 1 + y$, tehát
$$e^{2x} = \frac{1 + y}{1 - y} \implies x = \frac{1}{2}\ln\frac{1 + y}{1 - y}. \qquad \blacksquare$$

Hasonlóan értelmezhető az $\operatorname{arcth}$, a $\operatorname{cth}$ inverze: $\operatorname{arcth} x = \frac{1}{2}\ln\frac{x + 1}{x - 1}$ ($|x| > 1$).

---

## A XI. rész összefoglalása

- A $\sin$ és $\cos$ az egységkörön definiált, $2\pi$ szerint periodikus függvények; $\sin^2 + \cos^2 = 1$, érvényesek az addíciós képletek, és $|\sin x| \le |x|$. A $|\sin x - \sin y| \le |x - y|$ becslésből a folytonosság adódik.
- Az arkuszfüggvények a szögfüggvények alkalmas (monoton) megszorításainak inverzei.
- A hatványozást lépésenként terjesztjük ki: egész, racionális, majd valós kitevőre (szuprémummal), úgy, hogy az azonosságok megmaradjanak. Az $a^x$ folytonos, szigorúan monoton ($a \neq 1$), értékkészlete $(0, +\infty)$.
- A logaritmus az exponenciális függvény inverze; a szorzást összeadássá alakítja. Áttérési képlet: $\log_a x = \frac{\ln x}{\ln a}$.
- $e = \lim\left(1 + \frac{1}{n}\right)^n = \lim\left(1 + \frac{1}{n}\right)^{n+1}$; $\ln = \log_e$.
- $\operatorname{sh}$, $\operatorname{ch}$: $\operatorname{ch}^2 - \operatorname{sh}^2 = 1$ (hiperbola); az inverzeik (area függvények) logaritmussal kifejezhetők.

## Feladatok a XI. részhez

1. Számítsuk ki: a) $\arcsin\left(-\tfrac{\sqrt{3}}{2}\right)$; b) $\arccos\left(-\tfrac{\sqrt{2}}{2}\right)$; c) $\arctan(-1)$; d) $\arcsin\left(\sin\tfrac{3\pi}{4}\right)$.
2. Bizonyítsuk be, hogy $\sin(\arccos x) = \sqrt{1 - x^2}$ és $\cos(\arctan x) = \frac{1}{\sqrt{1 + x^2}}$.
3. Számítsuk ki: a) $8^{2/3}$; b) $\log_2 \frac{1}{32}$; c) $\log_9 27$; d) $e^{3\ln 2}$.
4. Oldjuk meg: a) $2^x = 5$; b) $\log_3(x + 1) + \log_3(x - 1) = 1$; c) $\operatorname{sh} x = \frac{3}{4}$.
5. Bizonyítsuk be, hogy $\operatorname{ch} 2x = \operatorname{ch}^2 x + \operatorname{sh}^2 x = 2\operatorname{ch}^2 x - 1$.
6. Bizonyítsuk be, hogy $\cos x - \cos y = -2\sin\frac{x + y}{2}\sin\frac{x - y}{2}$.
7. Bizonyítsuk be, hogy ha $a > 1$, akkor $\lim_{x \to 0} a^x = 1$, a definícióból kiindulva (az $a^{1/n} \to 1$ határérték és a monotonitás felhasználásával).

### Megoldási útmutatók

1. a) $-\frac{\pi}{3}$. b) $\frac{3\pi}{4}$. c) $-\frac{\pi}{4}$. d) $\sin\frac{3\pi}{4} = \frac{\sqrt{2}}{2}$, tehát az eredmény $\frac{\pi}{4}$ (nem $\frac{3\pi}{4}$!).
2. Ha $t = \arccos x \in [0, \pi]$, akkor $\sin t \ge 0$ és $\sin^2 t = 1 - x^2$. Ha $t = \arctan x \in \left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$, akkor $\cos t > 0$, és $\frac{1}{\cos^2 t} = 1 + \tan^2 t = 1 + x^2$.
3. a) $4$. b) $-5$. c) $\frac{3}{2}$ (mert $9^{3/2} = 27$). d) $8$.
4. a) $x = \log_2 5 = \frac{\ln 5}{\ln 2} \approx 2{,}32$. b) $x > 1$ és $(x + 1)(x - 1) = 3$, tehát $x = 2$. c) $x = \operatorname{arsh}\frac{3}{4} = \ln\left(\frac{3}{4} + \frac{5}{4}\right) = \ln 2$.
5. Az addíciós képletből $y = x$-szel, majd a $\operatorname{sh}^2 x = \operatorname{ch}^2 x - 1$ azonossággal.
6. Az $u = \frac{x+y}{2}$, $v = \frac{x - y}{2}$ jelöléssel $\cos(u + v) - \cos(u - v) = -2\sin u\sin v$.
7. Adott $\varepsilon$-hoz van $n$, hogy $a^{1/n} < 1 + \varepsilon$, és ekkor $a^{-1/n} = \frac{1}{a^{1/n}} > \frac{1}{1 + \varepsilon} > 1 - \varepsilon$. A monotonitás miatt $|x| < \frac{1}{n}$ esetén $1 - \varepsilon < a^{-1/n} < a^x < a^{1/n} < 1 + \varepsilon$.

---
