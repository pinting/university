# Analízis 1 – 9. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 88. feladat

Definiáljuk $\lim\limits_{x \to a-0} f(x) = -\infty$-t, $\lim\limits_{x \to -\infty} f(x) = b$-t és $\lim\limits_{x \to -\infty} f(x) = +\infty$-t.

**Megoldás.**

**$\lim_{x \to a-0} f(x) = -\infty$:** $a$ bal oldali torlódási pontja $D(f)$-nek (azaz minden $\delta > 0$-ra $(a - \delta, a) \cap D(f) \neq \emptyset$), és
$$\forall P \in \mathbb{R}\ \exists \delta > 0\ \forall x \in D(f),\ a - \delta < x < a:\ f(x) < P.$$

**$\lim_{x \to -\infty} f(x) = b$** ($b \in \mathbb{R}$): $D(f)$ alulról nem korlátos, és
$$\forall \varepsilon > 0\ \exists K \in \mathbb{R}\ \forall x \in D(f),\ x < K:\ |f(x) - b| < \varepsilon.$$

**$\lim_{x \to -\infty} f(x) = +\infty$:** $D(f)$ alulról nem korlátos, és
$$\forall P \in \mathbb{R}\ \exists K \in \mathbb{R}\ \forall x \in D(f),\ x < K:\ f(x) > P.$$

(Környezetekkel egységesen: $\lim_{x \to \alpha} f(x) = \beta$, ha $\beta$ minden $V$ környezetéhez van $\alpha$-nak olyan $\dot U$ pontozott környezete, hogy $f(\dot U \cap D(f)) \subseteq V$; itt $-\infty$ környezetei a $(-\infty, K)$ félegyenesek, a bal oldali határértéknél pedig $\dot U$ helyett $(a - \delta, a)$ áll.)

::: elmelet
**Elméleti háttér — az egységes környezetes definíció.** Minden határérték-fogalom ugyanarra a sémára épül: $\lim_{x\to\alpha} f(x) = \beta$, ha $\beta$ **minden** $V$ környezetéhez van $\alpha$-nak olyan $\dot U$ pontozott környezete, hogy $f(\dot U \cap D(f)) \subseteq V$. Csak a környezetek alakja változik: véges pontnál $(a - \delta, a + \delta)$ (egyoldalinál a fele), $+\infty$-nél $(K, \infty)$, $-\infty$-nél $(-\infty, K)$. Feltétel, hogy $\alpha$ a $D(f)$ torlódási pontja legyen (különben a definíció üresen teljesülne).
:::

## 89. feladat

Mondjuk ki $\lim\limits_{x \to a} f(x) = +\infty$ tagadását!

**Megoldás.**

Az állítás (ha $a$ torlódási pontja $D(f)$-nek):
$$\forall P \in \mathbb{R}\ \exists \delta > 0\ \forall x \in D(f),\ 0 < |x - a| < \delta:\ f(x) > P.$$
Tagadása:
$$\exists P \in \mathbb{R}\ \forall \delta > 0\ \exists x \in D(f),\ 0 < |x - a| < \delta:\ f(x) \le P.$$
Szavakban: van olyan $P$ korlát, hogy $a$ bármely pontozott környezetében van olyan $x \in D(f)$, ahol $f(x) \le P$. (Átviteli elvvel: van olyan $x_n \in D(f) \setminus \{a\}$, $x_n \to a$ sorozat, amelyre $f(x_n) \not\to +\infty$; sőt, olyan is, amelyre $f(x_n) \le P$ minden $n$-re.)

::: elmelet
**Elméleti háttér — tagadás és átviteli elv.** A tagadás a kvantorok cseréjével készül. Az **átviteli elv** szerint $\lim_{x\to a} f(x) = \beta$ pontosan akkor, ha minden $x_n \to a$, $x_n \in D(f) \setminus \{a\}$ sorozatra $f(x_n) \to \beta$; így a tagadás egyetlen „rossz” sorozattal is igazolható. A tagadásban a $\forall \delta\ \exists x$ rész sorozatot ad: $\delta = \frac1n$-hez választott $x_n$-ek.
:::

## 90. feladat

Adjuk meg a következő határértékeket:

a) $\lim\limits_{x \to 0} \dfrac{(1 + x)^5 - (1 + 5x)}{x^2 + x^5}$, b) $\lim\limits_{x \to \infty} \dfrac{x^7 + 6x^8 + 7}{x^{10} + 8}$, c) $\lim\limits_{x \to \infty} \dfrac{x}{\sqrt{1 + x^2}}$.

**Megoldás.**

a) A binomiális tétel szerint $(1 + x)^5 - (1 + 5x) = 10x^2 + 10x^3 + 5x^4 + x^5$, a nevező $x^2(1 + x^3)$. $x^2$-tel egyszerűsítve ($x \neq 0$):
$$\frac{10 + 10x + 5x^2 + x^3}{1 + x^3} \xrightarrow{x \to 0} \mathbf{10}.$$

b) A számláló foka 8, a nevezőé 10. $x^{10}$-nel osztva:
$$\frac{x^{-3} + 6x^{-2} + 7x^{-10}}{1 + 8x^{-10}} \xrightarrow{x \to \infty} \frac{0}{1} = \mathbf{0}.$$

c) $x > 0$-ra $\sqrt{1 + x^2} = x\sqrt{1/x^2 + 1}$, így
$$\frac{x}{\sqrt{1 + x^2}} = \frac{1}{\sqrt{1/x^2 + 1}} \xrightarrow{x \to \infty} \mathbf{1}.$$

::: elmelet
**Elméleti háttér — racionális függvények határértéke.** $x \to 0$ esetén a „$\frac00$” alakot **egyszerűsítéssel** oldjuk fel: a számlálót kifejtjük (binomiális tétel), és kiemeljük a legkisebb kitevőjű $x$-hatványt. $x \to \infty$ esetén **a nevező legmagasabb fokú tagjával** osztunk: a fokszámok összevetése dönt (számláló foka kisebb: $0$; egyenlő: főegyütthatók hányadosa; nagyobb: $\pm\infty$). Gyökös kifejezésnél az $x > 0$ feltétel mellett $\sqrt{x^2} = x$.
:::

## 91. feladat

Bizonyítsuk be, hogy ha egy korlátos $H$ halmaznak csak egyetlen torlódási pontja van, akkor $H$ megszámlálható, és van olyan $(x_n)$ sorozatba rendezése, amelyre a $\lim\limits_{n \to \infty} x_n$ határérték létezik és egyenlő $H$ torlódási pontjával.

**Megoldás.**

Legyen $h$ a $H$ egyetlen torlódási pontja, és $n \in \mathbb{N}$-re
$$A_n = H \setminus (h - \tfrac1n, h + \tfrac1n).$$

**$A_n$ véges.** $A_n$ korlátos. Ha végtelen volna, a Bolzano–Weierstrass-tétel szerint volna egy $c$ torlódási pontja. Ez $H$-nak is torlódási pontja, tehát $c = h$. Másrészt $A_n$ a zárt $\mathbb{R} \setminus (h - \frac1n, h + \frac1n)$ halmazban van, így a torlódási pontjai is ott vannak, és $h$ nincs ott. Ellentmondás.

**$H$ megszámlálható.** $H \setminus \{h\} = \bigcup_{n=1}^\infty A_n$ megszámlálható sok véges halmaz uniója, tehát megszámlálható. $H$ végtelen, mert van torlódási pontja. Így $H$ megszámlálhatóan végtelen.

**A sorozatba rendezés.** Ha $h \in H$, az első elem legyen $x_1 = h$. Utána soroljuk fel $A_1$ elemeit, majd $A_2 \setminus A_1$, $A_3 \setminus A_2$, … elemeit. Ezek véges halmazok, és egyesítésük $H \setminus \{h\}$. Így $H$ minden eleme pontosan egyszer kerül sorra: ez egy $n \mapsto x_n$ bijekció $\mathbb{N}$ és $H$ között.

**$x_n \to h$.** Adott $\varepsilon > 0$-hoz legyen $N > \frac1\varepsilon$. A $h$-tól legalább $\varepsilon$ távolságra levő elemek mind $A_N$-ben vannak, és $A_N$ véges. Ezek a sorozatban véges sok indexen fordulnak elő. Van tehát olyan $n_0$, hogy $n > n_0$ esetén $|x_n - h| < \varepsilon$. $\blacksquare$

::: elmelet
**Elméleti háttér — Bolzano–Weierstrass és a „gyűrűs” felbontás.** Korlátos végtelen halmaznak van torlódási pontja (Bolzano–Weierstrass). Ezért ha a torlódási pont egy környezetén **kívül** végtelen sok pont volna, ott lenne egy másik torlódási pont. Így a torlódási ponttól egyre kisebb távolságokon kívül eső pontok mindig véges halmazt alkotnak; ezeket „rétegenként” sorolva megszámlálható felsorolást kapunk, amely a torlódási ponthoz tart.
:::

## 92. feladat

Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ periodikus és $\lim\limits_{x \to \infty} f(x) = 0$, akkor $f$ azonosan $0$.

**Megoldás.**

Legyen $p > 0$ egy periódus (ha $p$ periódus, $-p$ is az). Rögzített $x \in \mathbb{R}$-re tekintsük az $x_n = x + np$ sorozatot. Erre $x_n \to \infty$, így az átviteli elv szerint $f(x_n) \to 0$. Másrészt $f(x_n) = f(x)$ minden $n$-re, tehát a sorozat konstans, és $f(x) = \lim f(x_n) = 0$. Mivel $x$ tetszőleges volt, $f \equiv 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — átviteli elv végtelenben.** $\lim_{x \to \infty} f(x) = b$ esetén minden $x_n \to \infty$ sorozatra $f(x_n) \to b$. Periodikus függvénynél a periódussal léptetett $x + np$ sorozaton $f$ konstans; egy konstans sorozat határértéke maga a konstans, így az értéknek egyenlőnek kell lennie $b = 0$-val. Egy jól választott sorozat sokszor az egész függvényt „letapogatja”.
:::

## 93. feladat

$$\lim_{x \to 1} \frac{\sqrt[359]{x} - 1}{\sqrt[5]{x} - 1} = ?$$

**Megoldás.**

Helyettesítsünk $t = \sqrt[1795]{x}$-et ($1795 = 5 \cdot 359$; elég $x > 0$-t nézni). Ekkor $\sqrt[359]{x} = t^5$ és $\sqrt[5]{x} = t^{359}$. A $x \mapsto t$ leképezés folytonos és injektív, $x \to 1$, $x \neq 1$ esetén $t \to 1$, $t \neq 1$. Így
$$\frac{t^5 - 1}{t^{359} - 1} = \frac{1 + t + t^2 + t^3 + t^4}{1 + t + \dots + t^{358}} \xrightarrow{t \to 1} \frac{5}{359}.$$
**A határérték $\dfrac{5}{359}$.**

::: elmelet
**Elméleti háttér — helyettesítés határértékben.** Ha $t = \varphi(x)$ folytonos és injektív, és $x \to a$ esetén $t \to b$ úgy, hogy $t \ne b$, akkor $\lim_{x\to a} g(\varphi(x)) = \lim_{t \to b} g(t)$ (összetett függvény határértéke). A közös gyökkitevő ($\operatorname{lkkt}$) választásával a gyökök egész hatványokká válnak, és a $\frac{t^m - 1}{t^k - 1}$ tört a $t^n - 1 = (t - 1)(1 + t + \dots + t^{n-1})$ azonossággal egyszerűsíthető.
:::

## 94. feladat

Hol folytonosak? a) $R(x)$, a Riemann fv. (ld. 87-es feladat),

b) $f(x) = \begin{cases} 3x + 7 & \text{ha } x \in \mathbb{Q} \\ 4x & \text{ha } x \notin \mathbb{Q}, \end{cases}$ c) $g(x) = \begin{cases} x^2[1/x] & \text{ha } x \neq 0 \\ 0 & \text{ha } x = 0. \end{cases}$

**Megoldás.**

a) A 87. feladat szerint $\lim_{x \to a} R(x) = 0$ minden $a \in \mathbb{R}$-re. $R$ tehát pontosan ott folytonos, ahol $R(a) = 0$. **$R$ az irracionális pontokban folytonos, a racionálisokban nem.**

b) **$f$ csak az $a = 7$ pontban folytonos.**

- Ha $a \neq 7$, akkor $3a + 7 \neq 4a$. Legyen $r_n \to a$ racionális és $s_n \to a$ irracionális sorozat. Ekkor $f(r_n) = 3r_n + 7 \to 3a + 7$ és $f(s_n) = 4s_n \to 4a$. A két határérték különbözik, így $\lim_{x \to a} f(x)$ nem létezik (átviteli elv).
- $a = 7$-re $f(7) = 28$, és bármely $x$-re
$$|f(x) - 28| \le \max\{|3x + 7 - 28|,\ |4x - 28|\} = \max\{3|x - 7|,\ 4|x - 7|\} = 4|x - 7|.$$
  Így $\delta_\varepsilon = \varepsilon/4$ megfelel.

c) **$g$ folytonos $\mathbb{R} \setminus \{1/k : k \in \mathbb{Z} \setminus \{0\}\}$-n, a $0$-ban is. Az $x = 1/k$ pontokban nem folytonos.**

- **A $0$-ban:** $\frac1x - 1 < [1/x] \le \frac1x$. Ezt $x^2 > 0$-val szorozva $x - x^2 < g(x) \le x$, így $|g(x)| \le |x| + x^2 \to 0 = g(0)$. Tehát $g$ folytonos a $0$-ban.
- **Ha $x_0 \neq 0$ és $1/x_0 \notin \mathbb{Z}$:** $1/x$ folytonos $x_0$-ban, és $1/x_0$ két egész szám közé esik. Így $x_0$ egy környezetében $[1/x]$ konstans, mondjuk $c$, és ott $g(x) = cx^2$ folytonos.
- **Ha $x_0 = 1/k$, $k \in \mathbb{Z} \setminus \{0\}$:** ha $x$ úgy tart $x_0$-hoz, hogy $1/x$ fölülről tart $k$-hoz, akkor $[1/x] = k$ és $g(x) \to k \cdot \frac{1}{k^2} = \frac1k$. Ha alulról, akkor $[1/x] = k - 1$ és $g(x) \to \frac{k - 1}{k^2}$. A két egyoldali határérték különbözik, így $g$ nem folytonos $x_0$-ban. (Ugyanez $k < 0$-ra is így megy.)

::: elmelet
**Elméleti háttér — folytonosság és határérték.** $f$ folytonos $a$-ban $\iff$ $\lim_{x\to a} f(x) = f(a)$ (izolált pontban mindig folytonos). Sehol sem azonos képlettel megadott függvényeknél ($\mathbb Q$ / irracionális) a racionális és az irracionális sorozatok mentén vett határértékeket hasonlítjuk össze (**átviteli elv**): csak ott lehet folytonos, ahol a két képlet értéke egyezik. Egészrészes függvénynél a szakadások ott vannak, ahol a belső kifejezés egész értéket vesz fel; máshol a $[\cdot]$ lokálisan konstans.
:::

## 95. feladat

Bizonyítsuk be, hogy ha $R(x)$ a Riemann függvény, akkor a $\lim\limits_{x \to 0} \dfrac{R(x)}{x}$ határérték nem létezik.

**Megoldás.**

Átviteli elvvel. Az $x_n = \frac1n \to 0$ sorozatra $R(x_n) = \frac1n$, így $\frac{R(x_n)}{x_n} = 1 \to 1$. Az $y_n = \frac{\sqrt2}{n} \to 0$ irracionális sorozatra $R(y_n) = 0$, így $\frac{R(y_n)}{y_n} = 0 \to 0$. Két $0$-hoz tartó (a $0$-t nem felvevő) sorozat mentén különböző a határérték, ezért $\lim_{x \to 0} \frac{R(x)}{x}$ nem létezik. $\blacksquare$

(Sőt, $x_n = \frac{1}{n}$ helyett $x_n = -\frac1n$-nel $-1$-et kapunk, tehát egyoldali határértékek sincsenek.)

::: elmelet
**Elméleti háttér — nemlétezés átviteli elvvel.** A határérték nem létezik, ha van két, a pont felé tartó (a pontot fel nem vevő) sorozat, amely mentén a függvényértékek különböző határértékhez tartanak. Racionális és irracionális sorozatok szembeállítása a Riemann- és Dirichlet-típusú függvényeknél a természetes választás.
:::

## 96. feladat

A folytonosság definíciója alapján adjunk meg $\varepsilon > 0$-hoz alkalmas $\delta_\varepsilon$-t

a) $\dfrac{x + 1}{x - 1}$, $a = 2$; b) $\dfrac{1}{\sqrt{x} + 1}$, $a = 1$.

**Megoldás.**

a) $f(2) = 3$, és
$$\left|\frac{x + 1}{x - 1} - 3\right| = \frac{|x + 1 - 3x + 3|}{|x - 1|} = \frac{2|x - 2|}{|x - 1|}.$$
Ha $|x - 2| < \frac12$, akkor $|x - 1| > \frac12$, így a kifejezés $< 4|x - 2|$. **$\delta_\varepsilon = \min\{\frac12, \frac\varepsilon4\}$.**

b) $f(1) = \frac12$, és $x \ge 0$-ra
$$\left|\frac{1}{\sqrt x + 1} - \frac12\right| = \frac{|1 - \sqrt x|}{2(\sqrt x + 1)} = \frac{|1 - x|}{2(\sqrt x + 1)^2} \le \frac{|x - 1|}{2}.$$
**$\delta_\varepsilon = 2\varepsilon$** (minden $x \in D(f) = [0, \infty)$, $|x - 1| < 2\varepsilon$ esetén $|f(x) - \frac12| < \varepsilon$).

::: elmelet
**Elméleti háttér — folytonosság $\varepsilon$–$\delta$-val.** $f$ folytonos $a$-ban, ha $\forall \varepsilon\ \exists \delta: |x - a| < \delta \Rightarrow |f(x) - f(a)| < \varepsilon$. Technikája ugyanaz, mint a határértéknél: $|f(x) - f(a)| \le C\,|x - a|$ alakú becslést keresünk $a$ egy rögzített környezetében (a nevezőt alulról korlátozva), és $\delta = \min\{\text{rögzített sugár}, \varepsilon/C\}$.
:::

## 97. feladat

a) Tegyük föl, hogy $f$ folytonos és $g$ nem folytonos $a$-ban. Mi mondható $f + g$-ről és $f \cdot g$-ről?

b) Tegyük föl, hogy $f$ és $g$ közül egyik sem folytonos $a$-ban. Mi mondható $f + g$-ről és $f \cdot g$-ről?

c) Tegyük föl, hogy $f + g$ és $f - g$ folytonos $a$-ban. Mit állíthatunk $f$ és $g$ folytonosságáról?

**Megoldás.**

a) **$f + g$ biztosan nem folytonos $a$-ban.** Ha az volna, akkor $g = (f + g) - f$ folytonos függvények különbségeként folytonos lenne.

**$f \cdot g$:** ha $f(a) \neq 0$, akkor biztosan nem folytonos. Ekkor $f \neq 0$ az $a$ egy környezetében, és ott $g = \frac{fg}{f}$ folytonos lenne. Ha $f(a) = 0$, lehet folytonos is, és nem folytonos is:

- $f(x) = x$, $g = \operatorname{sgn}$, $a = 0$: $fg = |x|$ folytonos;
- $f(x) = x$, $g(x) = \frac1x$ ($x \neq 0$), $g(0) = 0$: $fg = 1$, ha $x \neq 0$, és $0$ a $0$-ban – nem folytonos.

b) **Semmi biztosat nem mondhatunk.**

- $f = D$ (Dirichlet-függvény), $g = 1 - D$: mindkettő sehol sem folytonos, de $f + g \equiv 1$ és $f \cdot g \equiv 0$ folytonos.
- $f = g = \operatorname{sgn}$, $a = 0$: $f + g = 2\operatorname{sgn}$ és $f \cdot g = \operatorname{sgn}^2$ sem folytonos a $0$-ban ($\operatorname{sgn}^2(0) = 0$, máshol $1$).

c) **Mindkettő folytonos $a$-ban**, hiszen
$$f = \frac{(f + g) + (f - g)}{2}, \qquad g = \frac{(f + g) - (f - g)}{2}$$
folytonos függvények lineáris kombinációi.

::: elmelet
**Elméleti háttér — folytonosság és műveletek.** Folytonos függvények összege, különbsége, szorzata, hányadosa (ahol a nevező nem $0$) folytonos. Ebből **indirekt** következtetések adódnak: ha $f$ folytonos és $f + g$ is az, akkor $g = (f + g) - f$ is. Szorzatnál a $0$ érték „elnyelheti” a szakadást, ezért ott csak $f(a) \ne 0$ esetén következtethetünk (a nem nulla folytonos függvény a pont környezetében nem nulla). Nem folytonos függvények összege lehet folytonos, mert a szakadások kiolthatják egymást.
:::

## 98. feladat

Bizonyítsuk be, hogy ha $f : [a, b] \to \mathbb{R}$ szigorúan monoton növekvő függvény, akkor $R(f) = [f(a), f(b)]$ és $f^{-1}$ létezik és szigorúan monoton növekedő $R(f) = D(f^{-1})$-en.

**Megoldás.**

**$f^{-1}$ létezik.** Ha $x_1 \neq x_2$, mondjuk $x_1 < x_2$, akkor $f(x_1) < f(x_2)$. Tehát $f$ injektív, és $f^{-1} : R(f) \to [a, b]$ létezik.

**$f^{-1}$ szigorúan monoton nő.** Legyen $y_1 < y_2$, $y_i \in R(f)$, $y_i = f(x_i)$. Ha $x_1 \ge x_2$ volna, akkor a monotonitás miatt $y_1 = f(x_1) \ge f(x_2) = y_2$ – ellentmondás. Tehát $f^{-1}(y_1) = x_1 < x_2 = f^{-1}(y_2)$.

**$R(f) \subseteq [f(a), f(b)]$**, mert $a \le x \le b$-ből $f(a) \le f(x) \le f(b)$.

**Az egyenlőséghez kell a folytonosság.** Pusztán szigorú monotonitásból nem következik. Ellenpélda: $[0, 1]$-en $f(x) = x$ ($x < 1$), $f(1) = 2$. Ez szigorúan nő, de $R(f) = [0, 1) \cup \{2\} \neq [0, 2]$.

Ha $f$ **folytonos** is (feltehetően ez a feladat szándéka), akkor a Bolzano-tétel (közbülsőérték-tétel) szerint $f$ minden $f(a)$ és $f(b)$ közötti értéket felvesz, tehát $R(f) = [f(a), f(b)]$. $\blacksquare$

(Megfordítva is igaz: ha egy monoton $f$ értékkészlete intervallum, akkor $f$ folytonos. Egy szakadási helyen a monotonitás miatt ugrás van, és az ugrás kihagy egy értékintervallumot.)

::: elmelet
**Elméleti háttér — szigorúan monoton függvény inverze és a Bolzano-tétel.** Szigorú monotonitás $\Rightarrow$ injektivitás $\Rightarrow$ létezik inverz, és az inverz ugyanolyan irányban szigorúan monoton. Az értékkészlet teljes intervallum voltához viszont a **folytonosság** kell: a **Bolzano-tétel (közbülsőérték-tétel)** szerint folytonos függvény $[a, b]$-n minden $f(a)$ és $f(b)$ közötti értéket felvesz. Monoton függvénynél ez meg is fordítható: ha az értékkészlet intervallum, nincs ugrás, tehát a függvény folytonos.
:::

## Röpzhra

**Definíciók:** $\dot{B}(a, \varepsilon)$, függvények határértéke, $\lim_{a+0} f(x) = a$, $\lim_{x \to a} f(x) = +\infty$, $\lim_{x \to +\infty} f(x) = b$, $\lim_{x \to \alpha} f(x) = \beta$, torlódási pont, $\lim_{x \to \alpha,\, x \in A} f(x) = \beta$.

**Tételek:** átviteli elv függvényhatárértékre.

*(Ábra a lap alján: három függvénygrafikon, amelyek a $0$ körül egyre sűrűbben oszcillálnak – $|\sin(1/x)|$ vagy $\sin^2(1/x)$, $\sin(1/x)$ és $x\sin(1/x)$ jellegű görbék.)*
