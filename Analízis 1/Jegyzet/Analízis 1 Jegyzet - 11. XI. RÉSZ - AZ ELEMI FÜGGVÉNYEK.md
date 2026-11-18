# XI. RÉSZ: AZ ELEMI FÜGGVÉNYEK

## 58. Trigonometrikus függvények

A körív hosszúságának pontos definíciója nem egyszerű (ehhez integrálszámításra volna szükség); most szemléletből fogadjuk el, és ezen az alapon definiáljuk a szögfüggvényeket.

**Definíció.** Tetszőleges $x \in [0, 2\pi)$ esetén mérjünk fel az egységkörre (a $K$ körre) egy $x$ hosszúságú körívet, pozitív (az óramutató járásával ellentétes) irányban, a $(1,0)$ pontból indulva. Az így kapott $P$ pont első koordinátáját $\cos x$-szel, a második koordinátáját $\sin x$-szel jelöljük.

Ha $x \in \mathbb{R}$ tetszőleges, és $2k\pi \le x < 2(k+1)\pi$ valamely $k \in \mathbb{Z}$-re (azaz $k = \left[\frac{x}{2\pi}\right]$), akkor
$$\sin x = \sin(x - 2k\pi), \qquad \cos x = \cos(x - 2k\pi).$$

**Alapvető tulajdonságok.**
$$\cos(k\pi) = (-1)^k, \qquad \sin(k\pi) = 0 \qquad (k \in \mathbb{Z}),$$
$$\cos(x + 2\pi) = \cos x, \qquad \sin(x+2\pi) = \sin x \qquad (2\pi \text{ szerinti periodicitás}),$$
$$-1 \le \sin x \le 1, \qquad -1 \le \cos x \le 1.$$
A $\cos$ monoton csökkenő a $[0,\pi] + 2k\pi$ intervallumokon, és monoton növekedő a $[-\pi, 0] + 2k\pi$ intervallumokon.

**A „Piti tétel" (Pitagorasz-tétel a körön).**
$$\sin^2 x + \cos^2 x = 1.$$
Ez közvetlenül abból következik, hogy $P$ az egységkörön van.

**Paritás és tükrözési azonosságok.**
$$\cos(-x) = \cos x \quad (\text{páros}), \qquad \sin(-x) = -\sin x \quad (\text{páratlan}),$$
$$\cos\!\left(\frac{\pi}{2} - x\right) = \sin x, \qquad \sin\!\left(\frac{\pi}{2} - x\right) = \cos x.$$
Az utóbbi két azonosság a $Q$ és $Q'$ tükörképpontok geometriai összehasonlításából adódik; ezekből következnek a $\sin$ monotonitási intervallumai is.

**Addíciós képletek.**
$$\sin(x \pm y) = \sin x \cos y \pm \cos x \sin y \implies \sin 2x = 2 \sin x \cos x,$$
$$\cos(x \pm y) = \cos x \cos y \mp \sin x \sin y \implies \cos 2x = \cos^2 x - \sin^2 x = 2\cos^2 x - 1.$$
Az utóbbiból a linearizáló képletek:
$$\cos^2 x = \frac{1 + \cos 2x}{2}, \qquad \sin^2 x = \frac{1 - \cos 2x}{2}.$$

A továbbiakban egyetlen további képletre lesz szükségünk, a különbség szorzattá alakítására:
$$(\otimes) \qquad \sin x - \sin y = 2 \sin\frac{x-y}{2} \cos\frac{x+y}{2}.$$

**Tétel.** a) Ha $x > 0$, akkor $\sin x < x$. b) Ha $x \neq 0$, akkor $|\sin x| < |x|$.

*Bizonyítás.* a) Ha $x \ge \frac{\pi}{2}$, akkor az állítás triviális, hiszen $x \ge \frac{\pi}{2} > 1 \ge \sin x$. Ha $0 < x < \frac{\pi}{2}$, akkor geometriai megfontolással: a $P$ ponthoz tartozó húr hossza kisebb, mint a megfelelő ív hossza, hiszen **két pont között a legrövidebb út az egyenes** (ez az ívhossz definíciójában rejlik). Formálisan
$$2\sin x < |Q - P| + |Q' - P| \le 2x.$$

b) Az a) pontból, a páratlanságot felhasználva: $|\sin(-x)| = |\sin x| < |-x| = |x|$. $\blacksquare$

**Tétel (Lipschitz-tulajdonság).** Minden $x, y \in \mathbb{R}$-re
$$\text{i)}\quad |\sin x - \sin y| \le |x - y|, \qquad \text{ii)}\quad |\cos x - \cos y| \le |x-y|.$$

*Bizonyítás.* i) A $(\otimes)$ képlet és az előző tétel szerint
$$|\sin x - \sin y| = 2\left|\sin\frac{x-y}{2}\right| \cdot \left|\cos\frac{x+y}{2}\right| \le 2 \cdot \left|\frac{x-y}{2}\right| \cdot 1 = |x-y|.$$
ii) Következik i)-ből és a $\cos x = \sin\!\left(\frac{\pi}{2} - x\right)$ azonosságból. $\blacksquare$

**Következmény.** $\sin, \cos \in C(\mathbb{R})$; sőt adott $\varepsilon > 0$-hoz a $\delta_\varepsilon = \varepsilon$ választás megfelelő (**egyenletesen** folytonosak).

**Definíció.** $\displaystyle \tan x = \frac{\sin x}{\cos x}$ és $\displaystyle \cot x = \frac{\cos x}{\sin x}$ (magyar jelöléssel $\operatorname{tg}$ és $\operatorname{ctg}$).

**Tétel.** A $\tan$ folytonos az $\mathbb{R} \setminus \left\{\frac{\pi}{2} + k\pi : k \in \mathbb{Z}\right\}$ halmazon, a $\cot$ pedig az $\mathbb{R}\setminus\{k\pi : k \in \mathbb{Z}\}$ halmazon (a hányadosfüggvény folytonossága miatt, a nevező zérushelyeit kizárva).

## 59. Az arkusz (ciklometrikus) függvények

A $\sin$, $\cos$, $\tan$, $\cot$ periodikusak, tehát **nem invertálhatók**. Ha azonban alkalmas intervallumra szorítjuk őket, ahol szigorúan monotonok, akkor az 55. szakasz tétele szerint folytonos, szigorúan monoton inverzük van:

- $\sin x|_{[-\pi/2,\ \pi/2]}$ és $\tan x|_{(-\pi/2,\ \pi/2)}$ szigorúan monoton **növekedő**;
- $\cos x|_{[0,\pi]}$ és $\cot x|_{(0,\pi)}$ szigorúan monoton **csökkenő**.

**Definíció (arkuszfüggvények).**
$$\arcsin : [-1,1] \to \left[-\frac{\pi}{2}, \frac{\pi}{2}\right], \qquad \arccos : [-1,1] \to [0,\pi],$$
$$\arctan : \mathbb{R} \to \left(-\frac{\pi}{2}, \frac{\pi}{2}\right), \qquad \operatorname{arccot} : \mathbb{R} \to (0,\pi).$$

**Összefüggések.**
$$\arccos x = \frac{\pi}{2} - \arcsin x,$$
hiszen $\cos\!\left(\frac{\pi}{2} - \arcsin x\right) = \sin(\arcsin x) = x$, és a jobb oldal a $[0,\pi]$ intervallumba esik. Hasonlóan
$$\operatorname{arccot} x = \frac{\pi}{2} - \arctan x.$$

## 60. Hatványozás

**Jelölés.** $\underbrace{a \cdots a}_{n\text{-szer}} = a^n$.

**Állítás.** Ha $0 < a < b$, akkor minden $n \in \mathbb{N}$-re $a^n < b^n$.

*Bizonyítás (teljes indukcióval).* $n = 1$-re igaz. Ha $0 < a^{n-1} < b^{n-1}$, akkor
$$a \cdot a^{n-1} < a \cdot b^{n-1} < b \cdot b^{n-1}. \qquad \blacksquare$$

Korábban (a Bolzano–Darboux-tételből) beláttuk, hogy minden $a > 0$-hoz és $k \in \mathbb{N}$-hez létezik $b \in \mathbb{R}$ úgy, hogy $b^k = a$. A fenti szigorú monotonitás miatt ez a $b = \sqrt[k]{a}$ **egyértelmű**.

**A hatványazonosságok.** Ha $a, b > 0$ és $x, y \in \mathbb{N} \cup \{0\}$, akkor (középiskolából ismerten, illetve indukcióval)
$$\text{I.}\ (ab)^x = a^x b^x, \qquad \text{II.}\ a^{x+y} = a^x a^y, \qquad \text{III.}\ (a^x)^y = a^{xy}.$$

**Cél: kiterjeszteni $a^x$-et minden valós $x$-re, úgy, hogy ezek az azonosságok megmaradjanak.** Ez a kiterjesztési gondolat vezérli a következő három lépést.

**1. lépés: egész kitevő.** Ha $a \neq 0$, akkor II. megkövetelné, hogy
$$a^{x+0} = a^x \cdot a^0 = a^x \implies a^0 \stackrel{\text{def}}{=} 1,$$
$$a^{x + (-x)} = a^0 = 1 \implies a^{-x} \stackrel{\text{def}}{=} \frac{1}{a^x}.$$
Ezzel $a^x$ értelmezhető minden $x \in \mathbb{Z}$-re. (A $0$ alapra: $0^x = 0$, ha $x \in \mathbb{N}$; megállapodás szerint $0^0 = 1$; a többi hatvány nincs definiálva.)

**2. lépés: racionális kitevő.** Legyen $a > 0$, $p, q \in \mathbb{Z}$, $q > 0$. Definíció:
$$a^{p/q} \stackrel{\text{def}}{=} \sqrt[q]{a^p}, \qquad \text{amiből} \qquad \left(a^{p/q}\right)^q = a^p.$$
(Ha $q$ páros, akkor $-\sqrt[q]{a^p}$ is megoldása volna a $t^q = a^p$ egyenletnek, de megállapodás szerint mindig a **pozitív** értéket vesszük. Ha $q$ páratlan, akkor $\sqrt[q]{a^p}$ negatív $a$-ra is értelmezhető; a továbbiakban azonban végig feltesszük, hogy $a > 0$.)

**Tétel (a definíció jó, azaz független a tört alakjától).** Ha $a > 0$, $n, m, p, q \in \mathbb{Z}$, $m, q > 0$ és $\frac{n}{m} = \frac{p}{q}$, akkor $a^{n/m} = a^{p/q}$.

*Bizonyítás.* Emeljük mindkét oldalt az $mq$-adik hatványra:
$$\left(\sqrt[m]{a^n}\right)^{mq} = (a^n)^q = a^{nq}, \qquad \left(\sqrt[q]{a^p}\right)^{mq} = (a^p)^m = a^{pm}.$$
Mivel $\frac{n}{m} = \frac{p}{q}$, azaz $qn = pm$, a két hatvány egyenlő. Mindkét szám pozitív, és a pozitív számok körében az $mq$-adik hatványra emelés injektív (szigorúan monoton), tehát maguk a számok is egyenlők. $\blacksquare$

**Tétel.** A hatványazonosságok (I., II., III.) érvényben maradnak, ha $a, b > 0$ és $x, y \in \mathbb{Q}$.

*Bizonyítás (a II. azonosság).* Emeljük mindkét oldalt a $qs$-edik hatványra:
$$\left(a^{\frac{p}{q} + \frac{r}{s}}\right)^{qs} = \left(a^{\frac{ps + rq}{qs}}\right)^{qs} = a^{ps + rq},$$
$$\left(a^{p/q} \cdot a^{r/s}\right)^{qs} = \left(a^{p/q}\right)^{qs} \cdot \left(a^{r/s}\right)^{qs} = a^{ps} \cdot a^{rq} = a^{ps + rq},$$
ahol az utolsó lépésben az **egész kitevős** esetet használtuk. A két oldal $qs$-edik hatványa tehát megegyezik, és mindkettő pozitív. $\blacksquare$

**Tétel (pozitivitás és monotonitás racionális kitevőre).** Ha $a > 0$ és $r \in \mathbb{Q}$, akkor $a^r > 0$. Továbbá ha $r_1, r_2 \in \mathbb{Q}$ és $r_1 < r_2$, akkor
$$a > 1 \implies a^{r_1} < a^{r_2}, \qquad 0 < a < 1 \implies a^{r_1} > a^{r_2}.$$

*Bizonyítás.* A pozitivitás: $a > 0 \implies a^p > 0 \implies \sqrt[q]{a^p} > 0$.

A monotonitás ($a > 1$ eset): ha $p, q \in \mathbb{N}$, akkor $a^p > 1$, és ebből $\sqrt[q]{a^p} > 1$ — mert ha nem így volna, azaz $\sqrt[q]{a^p} \le 1$ volna, akkor $q$-adik hatványra emelve $a^p \le 1$ adódna. Tehát $a^r > 1$ minden pozitív racionális $r$-re. Innen
$$a^{r_2} = a^{r_1} \cdot a^{r_2 - r_1} > a^{r_1},$$
hiszen $a^{r_2 - r_1} > 1$. A $0 < a < 1$ eset $\frac{1}{a} > 1$-re visszavezethető. $\blacksquare$

**3. lépés: valós kitevő.** Mennyi legyen $a^{\sqrt{2}}$? A monotonitás alapján, ha $a > 1$:
$$a^{1{,}4} < a^{1{,}41} < a^{1{,}414} < \dots < a^{\sqrt{2}} < \dots < a^{1{,}5} < a^2.$$
Az $a^{\sqrt{2}}$ értéket tehát „alulról" és „felülről" is közelíthetjük racionális kitevőkkel — és pontosan ez lesz a definíció.

**Definíció.** Ha $a > 1$ és $x \in \mathbb{R}$, akkor
$$a^x \stackrel{\text{def}}{=} \sup \underbrace{\{a^r : r \in \mathbb{Q},\ r < x\}}_{A} \overset{(*)}{=} \inf \underbrace{\{a^s : s \in \mathbb{Q},\ s > x\}}_{B}.$$
Ha $0 < a < 1$, akkor $a^x = \inf A \overset{(**)}{=} \sup B$.

A $(*)$ és $(**)$ egyenlőségek (vagyis az, hogy az alulról és felülről vett közelítés ugyanoda vezet) nem triviálisak, bizonyításuk a tankönyvben található.

**Tétel.** Minden $a > 0$ és $x \in \mathbb{R}$ esetén $a^x > 0$. Ha $x_1 < x_2$, akkor
$$a > 1 \implies a^{x_1} < a^{x_2}, \qquad 0 < a < 1 \implies a^{x_1} > a^{x_2}.$$

*Bizonyítás ($a > 1$).* Válasszunk $r \in \mathbb{Q}$, $r < x$ számot; ekkor a definíció szerint $a^x \ge a^r > 0$. A monotonitáshoz: ha $x_1 < x_2$, válasszunk $r_1, r_2 \in \mathbb{Q}$ számokat úgy, hogy
$$x_1 < r_1 < r_2 < x_2$$
(ez a racionális számok sűrűsége miatt lehetséges). Ekkor
$$a^{x_1} \le a^{r_1} < a^{r_2} \le a^{x_2},$$
ahol a két szélső egyenlőtlenség a definícióból (infimum, illetve szuprémum), a középső pedig a racionális kitevős monotonitási tételből adódik. $\blacksquare$

## 61. Az exponenciális és a hatványfüggvény

**Tétel (folytonosság).** Tegyük fel, hogy $a > 0$ és $x_n \to x$. Ekkor $a^{x_n} \to a^x$.

**Következmény.** $a^x \in C(\mathbb{R})$.

*Bizonyítás ($a > 1$; a $0 < a < 1$ eset hasonló, $a = 1$ triviális).* Tudjuk, hogy
$$a^x = \sup\{a^r : r \in \mathbb{Q},\ r < x\} = \inf\{a^s : s \in \mathbb{Q},\ x < s\}.$$
Legyen $\varepsilon > 0$. A szuprémum és infimum tulajdonsága szerint léteznek $r < x < s$ racionális számok úgy, hogy
$$a^x - \varepsilon < a^r \le a^x \le a^s < a^x + \varepsilon.$$
Mivel $x_n \to x$, létezik olyan $n_0$, hogy minden $n \ge n_0$-ra $x_n \in (r, s)$. Az $a^x$ szigorú monotonitása miatt ekkor
$$a^x - \varepsilon < a^r < a^{x_n} < a^s < a^x + \varepsilon,$$
azaz $|a^{x_n} - a^x| < \varepsilon$. $\blacksquare$

**Megjegyzés (alternatív definíció).** Az $a^x$-et definiálhattuk volna úgy is, hogy veszünk egy $x_n \in \mathbb{Q}$, $x_n \to x$ sorozatot, és $a^x \stackrel{\text{def}}{=} \lim_{n\to\infty} a^{x_n}$. Ehhez azonban meg kellene mutatni, hogy a határérték létezik, **és** hogy nem függ az $(x_n)$ sorozat választásától. A szuprémumos definíció ezt a kettős kötelezettséget kerüli el.

**Tétel.** A hatványazonosságok érvényesek, ha $a, b > 0$ és $x, y \in \mathbb{R}$.

*Bizonyítás.* A racionális kitevős esetet már tudjuk. Válasszunk $r_n, s_n \in \mathbb{Q}$ sorozatokat úgy, hogy $r_n \to x$ és $s_n \to y$. Ekkor a folytonossági tétel és a racionális eset szerint
$$(ab)^x = \lim_{n\to\infty} (ab)^{r_n} = \lim_{n\to\infty} a^{r_n} b^{r_n} = a^x b^x,$$
és $r_n + s_n \to x + y$ miatt
$$a^{x+y} = \lim_{n\to\infty} a^{r_n + s_n} = \lim_{n\to\infty} a^{r_n} a^{s_n} = a^x a^y.$$
A III. azonosság hasonlóan, némi óvatossággal. $\blacksquare$

**Definíció.** Legyen $a > 0$ rögzített. Az
$$x \mapsto a^x \qquad (x \in \mathbb{R})$$
függvényt **$a$ alapú exponenciális függvénynek** nevezzük (jelölése $\exp_a(x)$ is). Ha viszont $b \in \mathbb{R}$ rögzített, akkor az
$$x \mapsto x^b \qquad (x > 0)$$
függvény a **$b$ kitevőjű hatványfüggvény**.

A kettő megkülönböztetése lényeges: az elsőben a **kitevő** a változó, a másodikban az **alap**.

**Tétel (az exponenciális függvény tulajdonságai).**

- Ha $a > 1$: minden $x$-re $a^x > 0$, a függvény szigorúan monoton növekedő és folytonos, továbbá
 $$(*) \qquad \lim_{x\to+\infty} a^x = +\infty, \qquad \lim_{x\to-\infty} a^x = 0.$$
- Ha $0 < a < 1$: minden $x$-re $a^x > 0$, a függvény szigorúan monoton csökkenő és folytonos, továbbá
 $$(**) \qquad \lim_{x\to+\infty} a^x = 0, \qquad \lim_{x\to-\infty} a^x = +\infty.$$

*Bizonyítás ($a > 1$).* A pozitivitást, a szigorú monotonitást és a folytonosságot már beláttuk. A határértékhez írjuk $a = 1 + b$ alakban ($b > 0$), és alkalmazzuk a Bernoulli-egyenlőtlenséget:
$$a^n = (1+b)^n \ge 1 + nb \to +\infty,$$
tehát $a^n \to +\infty$, ha $n \to +\infty$ egész értékeken. Innen $a^{-n} = \frac{1}{a^n} \to 0$. A monotonitás miatt ez tetszőleges valós $x$-re is átvihető: minden $K$-hoz létezik $N_K$ úgy, hogy ha $[x] \ge N_K$, akkor
$$a^x \ge a^{[x]} > K,$$
tehát $a^x \to +\infty$, ha $x \to +\infty$. Végül ha $x \to -\infty$, akkor $-x \to +\infty$, tehát $a^{-x} \to +\infty$, azaz $a^x = \frac{1}{a^{-x}} \to 0$. $\blacksquare$

**Tétel (a hatványfüggvény tulajdonságai).**

- **i)** Ha $b > 0$: $x^b > 0$, szigorúan monoton növekedő és folytonos $(0,+\infty)$-en, továbbá
 $$\lim_{x\to 0+0} x^b = 0, \qquad \lim_{x\to+\infty} x^b = +\infty.$$
- **ii)** Ha $b < 0$: $x^b > 0$, szigorúan monoton csökkenő és folytonos $(0,+\infty)$-en, továbbá
 $$\lim_{x\to 0+0} x^b = +\infty, \qquad \lim_{x\to+\infty} x^b = 0.$$

*Bizonyítás (a $b > 0$ eset).* Ha $t \ge 1$, akkor $t^b \ge t^0 = 1$. Ezért $0 < x < y$ esetén
$$y^b = \left(\frac{y}{x} \cdot x\right)^b = \left(\frac{y}{x}\right)^b x^b > 1 \cdot x^b = x^b,$$
tehát $x^b$ szigorúan monoton növekedő. A határértékek: minden $K > 0$-ra $x^b > K$, ha $x > K^{1/b}$, tehát $\lim_{x\to+\infty} x^b = +\infty$; és minden $\varepsilon > 0$-ra $x^b < \varepsilon$, ha $0 < x < \varepsilon^{1/b}$, tehát $\lim_{x\to 0+0} x^b = 0$.

A folytonossághoz legyen $x_0 > 0$ és $0 < \varepsilon < x_0^b$. Legyen
$$A \stackrel{\text{def}}{=} (x_0^b - \varepsilon)^{1/b}, \qquad B \stackrel{\text{def}}{=} (x_0^b + \varepsilon)^{1/b};$$
a monotonitás miatt $A < x_0 < B$. Ha $A < x < B$, akkor ismét a monotonitás szerint
$$x_0^b - \varepsilon = A^b < x^b < B^b = x_0^b + \varepsilon,$$
ami éppen a folytonosság. $\blacksquare$

## 62. A logaritmusfüggvények

Legyen $a > 0$, $a \neq 1$. Az $a^x$ függvény szigorúan monoton és folytonos $\mathbb{R}$-en, értékkészlete pedig $R(a^x) = (0,+\infty)$. Az 55. szakasz tétele szerint tehát létezik folytonos és szigorúan monoton inverze.

**Definíció.** Az $x \mapsto a^x$ függvény inverzét **$a$ alapú logaritmusnak** nevezzük; jelölése $\log_a x$. Azaz
$$(*) \qquad \log_a x = y \iff a^y = x \iff \exp_a y = x.$$

**Tulajdonságok.**

1. $D(\log_a x) = (0,+\infty)$ és $R(\log_a x) = \mathbb{R}$.
2. $\log_a x \in C(0,+\infty)$.
3. Ha $a > 1$, akkor $\log_a x$ szigorúan monoton növekedő; ha $0 < a < 1$, akkor szigorúan monoton csökkenő.
4. Ha $a > 1$, akkor
 $$\lim_{x\to+\infty} \log_a x = +\infty, \qquad \lim_{x\to 0+0} \log_a x = -\infty;$$
 ha $0 < a < 1$, akkor a két határérték felcserélődik.

*Bizonyítás (a 4. pont, $a > 1$).* Ha $x > a^K$, akkor $(*)$ és a monotonitás szerint $\log_a x > K$, tehát $\lim_{x\to+\infty} \log_a x = +\infty$. Hasonlóan, ha $0 < x < a^K$, akkor $\log_a x < K$, tehát $\lim_{x\to 0+0}\log_a x = -\infty$. $\blacksquare$

**5. A logaritmus azonosságai.** Ha $a > 0$, $a \neq 1$, és $x, y > 0$, akkor
$$\log_a(xy) = \log_a x + \log_a y, \qquad \log_a\!\left(\frac{x}{y}\right) = \log_a x - \log_a y,$$
$$\log_a \sqrt[y]{x} = \frac{1}{y}\log_a x, \qquad \log_a\!\left(\frac{1}{x}\right) = -\log_a x,$$
$$(\otimes) \qquad \log_a(x^y) = y \log_a x.$$

*Bizonyítás (a $(\otimes)$ azonosság).* Minden azonosságot a hatványazonosságokra és $(*)$-ra kell visszavezetni:
$$a^{\log_a(x^y)} \overset{(*)}{=} x^y \overset{(*)}{=} \left(a^{\log_a x}\right)^y \overset{\text{III.}}{=} a^{y\log_a x}.$$
Mivel az $a^t$ függvény injektív (szigorúan monoton), a kitevőknek meg kell egyezniük:
$$\log_a(x^y) = y\log_a x. \qquad \blacksquare$$

## 63. Az e szám és a természetes logaritmus

A 17. szakaszban láttuk, hogy az
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekedő, és hogy az
$$f_m = \left(1 + \frac{1}{m}\right)^{m+1}$$
sorozat szigorúan monoton csökkenő. Most bebizonyítjuk, hogy ugyanahhoz a számhoz tartanak.

**Állítás.** Minden $n, m \in \mathbb{N}$ esetén
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{m}\right)^{m+1}.$$

*Bizonyítás.* Ha $n = m$, akkor nyilvánvaló, hiszen a jobb oldal egy $(1 + \frac{1}{n}) > 1$ tényezővel nagyobb. Az általános eset ebből a tranzitivitással és a két sorozat monotonitásával adódik: ha $m < n$, akkor
$$e_n < e_{n} \cdot \left(1 + \tfrac{1}{n}\right) = f_n \le f_m,$$
és hasonlóan a másik irányban. $\blacksquare$

**Következmény.** Minden $m$-re $f_m$ felső korlátja az $(e_n)$ sorozatnak. Mivel $(e_n)$ monoton növekedő és felülről korlátos, **konvergens**; hasonlóan $(f_m)$ monoton csökkenő és alulról korlátos, tehát szintén konvergens. Legyen
$$e_n \to e, \qquad f_m \to f.$$

**Állítás.** $e = f$.

*Bizonyítás.* Minden $m$ és $n$ esetén $f_m \ge e_n$; rögzített $m$ mellett $n \to +\infty$ határátmenettel $f_m \ge e$, majd $m \to +\infty$-nel $f \ge e$. (Mellesleg $f_1 = \left(1 + \frac{1}{1}\right)^2 = 4 \ge e$, tehát $e \le 4$.)

A másik irányhoz becsüljük a különbséget:
$$f - e \le f_n - e_n = \left(1 + \frac{1}{n}\right)^{n+1} - \left(1 + \frac{1}{n}\right)^n = \left(1 + \frac{1}{n}\right)^n \cdot \left(\left(1 + \frac{1}{n}\right) - 1\right) = \left(1 + \frac{1}{n}\right)^n \cdot \frac{1}{n} \le \frac{4}{n}.$$
Ez minden $n \in \mathbb{N}$-re igaz, és a jobb oldal $0$-hoz tart, tehát $f - e \le 0$. A kettőből $f = e$. $\blacksquare$

**Definíció.**
$$e \stackrel{\text{def}}{=} \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^{n+1} = 2{,}7182818\dots$$

**Definíció.** A $\log_e x$ függvényt **természetes alapú logaritmusnak** nevezzük; jelölése $\ln x$ (vagy egyszerűen $\log x$).

## 64. Hiperbolikus függvények

**Definíció.**
$$(*) \qquad \operatorname{sh} x = \frac{e^x - e^{-x}}{2} \quad (\textit{szinusz hiperbolikusz}), \qquad \operatorname{ch} x = \frac{e^x + e^{-x}}{2} \quad (\textit{koszinusz hiperbolikusz}).$$

**Alaptulajdonságok.** Mindkettő folytonos (folytonos függvények összege, illetve különbsége). Az $\operatorname{sh}$ páratlan, a $\operatorname{ch}$ páros. Mivel $e^x$ szigorúan monoton növekedő és $e^{-x}$ szigorúan monoton csökkenő, a különbségük — azaz $2\operatorname{sh} x$ — szigorúan monoton növekedő. Továbbá
$$\lim_{x\to+\infty} \operatorname{sh} x = +\infty, \qquad \lim_{x\to-\infty} \operatorname{sh} x = -\infty, \qquad \lim_{x\to\pm\infty} \operatorname{ch} x = +\infty, \qquad \operatorname{ch}(0) = 1.$$

**A hiperbolikus alapazonosság.**
$$\operatorname{ch}^2 x - \operatorname{sh}^2 x = 1.$$
*Bizonyítás.* Egyszerű behelyettesítés:
$$\left(\frac{e^x + e^{-x}}{2}\right)^2 - \left(\frac{e^x - e^{-x}}{2}\right)^2 = \frac{(e^{2x} + 2 + e^{-2x}) - (e^{2x} - 2 + e^{-2x})}{4} = \frac{4}{4} = 1. \qquad \blacksquare$$

**Az elnevezés magyarázata.** Az azonosság szerint minden $t \in \mathbb{R}$-re az $(\operatorname{ch} t, \operatorname{sh} t)$ pont az
$$x^2 - y^2 = 1, \qquad \text{azaz} \qquad (x-y)(x+y) = 1$$
egyenletű **hiperbolán** van — pontosan úgy, ahogy a $(\cos t, \sin t)$ pont az $x^2 + y^2 = 1$ egyenletű **körön**. Innen az elnevezés. (Komplex függvénytanban a párhuzam még szorosabbá válik: $\cos x = \frac{e^{ix} + e^{-ix}}{2}$ és $\sin x = \frac{e^{ix} - e^{-ix}}{2i}$.)

**Következmények.** $\operatorname{ch} x \ge 1 > 0$, és mivel $\operatorname{ch} x > 0$, a gyökvonásnál nincs előjel-kétértelműség:
$$\operatorname{ch} x = \sqrt{1 + \operatorname{sh}^2 x}.$$
Ebből adódik, hogy $\operatorname{ch} x$ szigorúan monoton növekedő $[0,+\infty)$-en, és szigorúan monoton csökkenő $(-\infty, 0]$-n.

**Addíciós képletek.**
$$\operatorname{sh}(x \pm y) = \operatorname{sh} x \operatorname{ch} y \pm \operatorname{ch} x \operatorname{sh} y, \qquad \operatorname{ch}(x\pm y) = \operatorname{ch} x \operatorname{ch} y \pm \operatorname{sh} x \operatorname{sh} y.$$
(Bizonyításuk a $(*)$ definíció és az $e^{x+y} = e^x e^y$ azonosság közvetlen alkalmazása. Figyeljük meg az előjelet a $\operatorname{ch}$ képletben: itt **nincs** előjelváltás, szemben a trigonometrikus esettel.) Következmény: $\operatorname{sh} 2x = 2\operatorname{sh} x \operatorname{ch} x$.

**Definíció.**
$$\operatorname{th} x = \frac{\operatorname{sh} x}{\operatorname{ch} x} = \frac{e^x - e^{-x}}{e^x + e^{-x}}, \qquad \operatorname{cth} x = \frac{\operatorname{ch} x}{\operatorname{sh} x} = \frac{1}{\operatorname{th} x}.$$
Határértékeik:
$$\lim_{x\to-\infty}\operatorname{th} x = -1, \quad \lim_{x\to+\infty}\operatorname{th} x = 1, \quad \lim_{x\to\pm\infty}\operatorname{cth} x = \pm 1, \quad \lim_{x\to 0\pm 0}\operatorname{cth} x = \pm\infty.$$

## 65. Az area függvények

**Definíció (area szinusz hiperbolikusz).** Az $\operatorname{sh} : \mathbb{R} \to \mathbb{R}$ bijekció (szigorúan monoton növekedő, folytonos, értékkészlete $\mathbb{R}$), tehát van inverze; ezt **area szinusz hiperbolikusznak** nevezzük, jelölése $\operatorname{arsh} x$. Szigorúan monoton növekedő és folytonos, és zárt alakban is felírható:
$$\operatorname{arsh} x = \ln\!\left(x + \sqrt{x^2+1}\right).$$

**Definíció (area koszinusz hiperbolikusz).** A $\operatorname{ch} x$ szigorúan monoton növekedő $[0,+\infty)$-en, és $R(\operatorname{ch} x) = [1,+\infty)$. A $\operatorname{ch} x|_{[0,+\infty)}$ megszorítás inverzét **area koszinusz hiperbolikusznak** nevezzük:
$$\operatorname{arch} x = \ln\!\left(x + \sqrt{x^2 - 1}\right).$$

**Definíció (area tangens hiperbolikusz).** A $\operatorname{th} x$ inverze az $\operatorname{arth} : (-1,1) \to \mathbb{R}$ folytonos bijekció, és
$$\operatorname{arth} x = \frac{1}{2}\ln\!\left(\frac{1+x}{1-x}\right).$$

*Bizonyítás (az $\operatorname{arth}$ képlete).* Legyen
$$y = \operatorname{th} x = \frac{e^x - e^{-x}}{e^x + e^{-x}}.$$
Szorozzunk fel a nevezővel:
$$e^x - e^{-x} = y(e^x + e^{-x}) \implies (1-y)e^x = (y+1)e^{-x}.$$
Szorozzunk $e^x$-szel:
$$(1-y)(e^x)^2 = y+1 \implies e^x = \sqrt{\frac{1+y}{1-y}}$$
(a pozitív gyököt véve, hiszen $e^x > 0$). Logaritmust véve
$$x = \ln\sqrt{\frac{1+y}{1-y}} = \frac{1}{2}\ln\!\left(\frac{1+y}{1-y}\right). \qquad \blacksquare$$

Hasonlóan értelmezhető az $\operatorname{arcth} x$, a $\operatorname{cth} x$ inverze.

---
