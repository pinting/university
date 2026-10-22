# Algebra és számelmélet – 1. ZH (2026) – megoldások

### Bsc algebra és számelmélet normál gyakorlat · Első zárthelyi (2026. október 21.)

## 1. feladat

a) Adjuk meg a $15x + 21y = 360$ diofantikus egyenlet általános megoldását, valamint az összes olyan megoldását, ahol $x$ és $y$ is pozitív egész.

b) Számítsuk ki $78^{123456783}$ utolsó két számjegyét a tízes számrendszerben.

**Megoldás.**

**a) Az összes egész megoldás:**
$$\mathbf{x = 3 + 7t, \quad y = 15 - 5t \quad (t \in \mathbb{Z})}$$
*(vagy ekvivalensen például $x = 10 + 7k, y = 10 - 5k$, $k \in \mathbb{Z}$).*

**Az összes pozitív egész megoldás:**
$$\mathbf{(x, y) \in \{(3, 15), (10, 10), (17, 5)\}}.$$

*Levezetés:*
1. **Egyszerűsítés:** A bal oldali együtthatók legnagyobb közös osztója $\lnko(15, 21) = 3$. Mivel $3 \mid 360$, az egyenlet mindkét oldala osztható 3-mal:
   $$5x + 7y = 120.$$
   Mivel $\lnko(5, 7) = 1$, az egyenlet megoldható az egész számok körében.
2. **Partikuláris megoldás keresése:**
   Tekintsük az egyenletet modulo 7:
   $$5x \equiv 120 \equiv 1 \pmod 7.$$
   Mivel $3 \cdot 5 = 15 \equiv 1 \pmod 7$, szorozzuk be a kongruencia mindkét oldalát 3-mal:
   $$x \equiv 3 \pmod 7.$$
   Választhatjuk az $x_0 = 3$ értéket partikuláris megoldásnak. Ekkor:
   $$5 \cdot 3 + 7y = 120 \implies 15 + 7y = 120 \implies 7y = 105 \implies y_0 = 15.$$
   *(Közvetlenül is észrevehető az $x_0 = 10, y_0 = 10$ partikuláris megoldás, hiszen $5 \cdot 10 + 7 \cdot 10 = 120$.)*
3. **Általános megoldás:**
   Mivel $\lnko(5, 7) = 1$, a diofantikus egyenlet általános megoldása:
   $$x = 3 + 7t, \quad y = 15 - 5t \quad (t \in \mathbb{Z}).$$
4. **Pozitív egész megoldások ($x > 0, y > 0$):**
   $$\begin{aligned}
   x > 0 &\iff 3 + 7t \ge 1 \iff 7t \ge -2 \iff t \ge 0, \\
   y > 0 &\iff 15 - 5t \ge 1 \iff 5t \le 14 \iff t \le 2.
   \end{aligned}$$
   Az egész $t$ paraméter lehetséges értékei tehát $t \in \{0, 1, 2\}$.
   - $t = 0 \implies x = 3, \quad y = 15$;
   - $t = 1 \implies x = 10, \quad y = 10$;
   - $t = 2 \implies x = 17, \quad y = 5$.

---

**b) Az utolsó két számjegy: $\mathbf{52}$.**

*Levezetés:*
Egy szám utolsó két számjegye a tízes számrendszerben a $100$-zal való osztási maradékával egyezik meg. Mivel $100 = 4 \cdot 25$ és $\lnko(4, 25) = 1$, a kínai maradéktételt használjuk: meghatározzuk a hatvány maradékát modulo 4 és modulo 25.

1. **Modulo 4:**
   $$78 \equiv 2 \equiv -2 \pmod 4.$$
   Mivel a kitevő $N = 123456783 \ge 2$, ezért:
   $$78^N = 78^2 \cdot 78^{N-2} \equiv 2^2 \cdot 78^{N-2} = 4 \cdot 78^{N-2} \equiv 0 \pmod 4.$$
2. **Modulo 25:**
   $$78 \equiv 3 \pmod{25}.$$
   Mivel $\lnko(3, 25) = 1$, alkalmazható az Euler–Fermat-tétel. Az Euler-féle $\varphi$-függvény értéke:
   $$\varphi(25) = 25 \left(1 - \frac{1}{5}\right) = 20,$$
   így $3^{20} \equiv 1 \pmod{25}$.
   A kitevőt modulo 20 vizsgálva:
   $$123456783 = 123456780 + 3 \equiv 3 \pmod{20}.$$
   Ennek megfelelően:
   $$78^{123456783} \equiv 3^{123456783} \equiv 3^3 = 27 \equiv 2 \pmod{25}.$$
3. **Egyesítés a kínai maradéktétellel:**
   Olyan $X \in \{0, 1, \dots, 99\}$ számot keresünk, amelyre:
   $$\begin{cases} X \equiv 0 \pmod 4 \\ X \equiv 2 \pmod{25} \end{cases}$$
   A modulo 25-ben 2 maradékot adó nemnegatív, 100 alatti számok:
   $$2, \quad 27, \quad 52, \quad 77.$$
   Ezek közül megvizsgálva a modulo 4 maradékokat:
   - $2 \equiv 2 \pmod 4 \ne 0$,
   - $27 \equiv 3 \pmod 4 \ne 0$,
   - $52 = 4 \cdot 13 \equiv 0 \pmod 4$,
   - $77 \equiv 1 \pmod 4 \ne 0$.
   Egyedül az $X = 52$ teljesíti mindkét feltételt.
   Tehát $78^{123456783} \equiv 52 \pmod{100}$, így az utolsó két számjegy **52**.

::: elmelet
**Elméleti háttér — lineáris diofantikus egyenletek és utolsó számjegyek.**
- Az $ax + by = c$ kétismeretlenes lineáris diofantikus egyenlet pontosan akkor oldható meg egész számokban, ha $d = \lnko(a, b) \mid c$. Ha $x_0, y_0$ egy partikuláris megoldás, akkor a teljes megoldáshalmaz $x = x_0 + \frac{b}{d}t$, $y = y_0 - \frac{a}{d}t$ ($t \in \mathbb{Z}$).
- Egy szám tízes számrendszerbeli utolsó két számjegye a modulo 100 maradéka. Ha a modulus összetett ($100 = 4 \cdot 25$), a maradékot prímhatvány-tényezőnként érdemes számolni (Euler–Fermat-tétellel: $a^{\varphi(m)} \equiv 1 \pmod m$, ha $\lnko(a, m) = 1$), majd a kínai maradéktétellel egyesíteni.
:::

## 2. feladat

a) Számítsuk ki és ábrázoljuk $\sqrt{3} - \sqrt{3}i$ három köbgyökét.

b) Ábrázoljuk azoknak a $z$ komplex számoknak a halmazát a síkon, melyekre $|4\overline{z} - 4 + i| = \operatorname{Im}(4z + i)$.

**Megoldás.**

**a) A három köbgyök trigonometrikus alakja:**
$$z_0 = \sqrt[6]{6} \left(\cos 105^\circ + i \sin 105^\circ\right) = \sqrt[6]{6} \left(\cos \frac{7\pi}{12} + i \sin \frac{7\pi}{12}\right),$$
$$z_1 = \sqrt[6]{6} \left(\cos 225^\circ + i \sin 225^\circ\right) = \sqrt[6]{6} \left(\cos \frac{5\pi}{4} + i \sin \frac{5\pi}{4}\right),$$
$$z_2 = \sqrt[6]{6} \left(\cos 345^\circ + i \sin 345^\circ\right) = \sqrt[6]{6} \left(\cos \frac{23\pi}{12} + i \sin \frac{23\pi}{12}\right).$$

*(Algebrai alakban például $z_1 = -\sqrt[6]{6}\frac{\sqrt{2}}{2}(1 + i) = -\frac{\sqrt[3]{6}}{2}(1 + i)$, míg $z_0, z_2 = \sqrt[6]{6}\left(\frac{\pm(\sqrt{2}-\sqrt{6})}{4} + i\frac{\sqrt{6}+\sqrt{2}}{4}\right)$.)*

*Levezetés:*
1. Írjuk fel a $w = \sqrt{3} - \sqrt{3}i$ komplex számot trigonometrikus alakban:
   - Abszolút érték:
     $$|w| = \sqrt{(\sqrt{3})^2 + (-\sqrt{3})^2} = \sqrt{3 + 3} = \sqrt{6}.$$
   - Irányszög: Mivel $\operatorname{Re}(w) = \sqrt{3} > 0$ és $\operatorname{Im}(w) = -\sqrt{3} < 0$, a szám a IV. síknegyedben helyezkedik el.
     $$\tan \varphi = \frac{-\sqrt{3}}{\sqrt{3}} = -1 \implies \varphi = -\frac{\pi}{4} = \frac{7\pi}{4} = 315^\circ.$$
   Tehát:
   $$w = \sqrt{6}\left(\cos 315^\circ + i \sin 315^\circ\right) = \sqrt{6}\left(\cos \frac{7\pi}{4} + i \sin \frac{7\pi}{4}\right).$$
2. A komplex köbgyökvonás képlete:
   $$z_k = \sqrt[3]{\sqrt{6}} \left(\cos \frac{315^\circ + 360^\circ k}{3} + i \sin \frac{315^\circ + 360^\circ k}{3}\right), \quad k \in \{0, 1, 2\}.$$
   A gyökök abszolút értéke:
   $$R = \sqrt[3]{\sqrt{6}} = (6^{1/2})^{1/3} = 6^{1/6} = \sqrt[6]{6} \approx 1{,}348.$$
   Az irányszögek:
   - $k = 0$: $\theta_0 = \frac{315^\circ}{3} = 105^\circ = \frac{7\pi}{12}$,
   - $k = 1$: $\theta_1 = 105^\circ + 120^\circ = 225^\circ = \frac{5\pi}{4}$,
   - $k = 2$: $\theta_2 = 225^\circ + 120^\circ = 345^\circ = \frac{23\pi}{12}$ *(vagy $-15^\circ$)*.

*Ábrázolás a komplex síkon:*
A három köbgyök az origó középpontú, $R = \sqrt[6]{6} \approx 1{,}348$ sugarú körre esik, és egy olyan origó középpontú szabályos háromszög csúcsait alkotják, melynek csúcsai a $105^\circ$ (II. síknegyed), $225^\circ$ (III. síknegyed, a harmadik síknegyed szögfelezőjén), valamint $345^\circ$ (IV. síknegyed) polárszögeknél találhatók.

---

**b) A ponthalmaz:**
$$\mathbf{y = (x - 1)^2}$$
**egy felfelé nyíló parabola a komplex síkon, melynek tengelypontja (csúcsa) az $(1, 0)$, azaz az $1 + 0i$ valós pont, szimmetriatengelye az $x = 1$ függőleges egyenes, fókusza az $F\left(1, \frac{1}{4}\right) = 1 + \frac{1}{4}i$, vezéregyenese pedig a $d: y = -\frac{1}{4}$ egyenes.**

*Levezetés (algebrai koordinátákkal):*
Legyen $z = x + iy$, ahol $x, y \in \mathbb{R}$. Ekkor $\overline{z} = x - iy$.
1. A bal oldal kifejtése:
   $$4\overline{z} - 4 + i = 4(x - iy) - 4 + i = (4x - 4) + i(1 - 4y).$$
   Ennek abszolút értéke:
   $$|4\overline{z} - 4 + i| = \sqrt{(4x - 4)^2 + (1 - 4y)^2} = \sqrt{16(x - 1)^2 + (1 - 4y)^2}.$$
2. A jobb oldal kifejtése:
   $$4z + i = 4(x + iy) + i = 4x + i(4y + 1) \implies \operatorname{Im}(4z + i) = 4y + 1.$$
3. Egyenlet és ekvivalens átalakítások:
   $$\sqrt{16(x - 1)^2 + (1 - 4y)^2} = 4y + 1.$$
   Mivel a bal oldal abszolút érték, értéke nemnegatív, ezért a megoldáshoz szükséges feltétel:
   $$4y + 1 \ge 0 \iff y \ge -\frac{1}{4}.$$
   E feltétel mellett mindkét oldalt négyzetre emelhetjük:
   $$16(x - 1)^2 + (1 - 4y)^2 = (4y + 1)^2.$$
   Kifejtve a négyzeteket:
   $$(1 - 4y)^2 = 1 - 8y + 16y^2, \qquad (4y + 1)^2 = 1 + 8y + 16y^2.$$
   Behelyettesítve:
   $$16(x - 1)^2 + 1 - 8y + 16y^2 = 1 + 8y + 16y^2.$$
   Mindkét oldalból kivonva az $1 + 16y^2$-et:
   $$16(x - 1)^2 - 8y = 8y \implies 16(x - 1)^2 = 16y \implies y = (x - 1)^2.$$
4. A feltétel ellenőrzése:
   Mivel minden valós $x$-re $(x - 1)^2 \ge 0 > -\frac{1}{4}$, a feltétel automatikusan teljesül minden valós $x$-re.
   A keresett ponthalmaz tehát a teljes $y = (x - 1)^2$ parabola.

*Geometriai meggondolás (fókusz-vezéregyenes értelmezés):*
Osszuk el az eredeti egyenlet mindkét oldalát 4-gyel, és használjuk fel, hogy $|\overline{w}| = |w|$:
$$\left|\overline{z - \left(1 + \frac{i}{4}\right)}\right| = \left|z - \left(1 + \frac{i}{4}\right)\right| = y + \frac{1}{4} = y - \left(-\frac{1}{4}\right).$$
A bal oldal a $z$ pont távolsága a sík $F\left(1, \frac{1}{4}\right)$ rögzített pontjától, a jobb oldal pedig (ha $y \ge -\frac{1}{4}$) a $z$ pont távolsága a $d: y = -\frac{1}{4}$ vízszintes vezéregyenestől. Azon pontok mértani helye, amelyek egy ponttól és egy egyenestől egyenlő távolságra vannak, a definíció szerint parabola.

::: elmelet
**Elméleti háttér — komplex gyökvonás és másodrendű görbék.**
- A $w = r(\cos \varphi + i \sin \varphi)$ szám $n$-edik gyökei egy origó középpontú, $\sqrt[n]{r}$ sugarú körbe írt szabályos $n$-szög csúcsait alkotják a síkon.
- A komplex síkon távolságokat abszolút értékkel fejezünk ki: $|z - z_0|$ a $z$ és $z_0$ távolsága. Ha egy pont távolsága egy fókuszponttól megegyezik egy egyenestől mért távolságával, a mértani hely parabola.
:::

## 3. feladat

a) Mik $m^2 + m + 4$ és $m^2 + 2$ legnagyobb közös osztójának lehetséges (pozitív) értékei? Mindegyikhez adjunk is meg egy-egy konkrét $m$ egész számot, ami megvalósítja.

b) Mely $n \ge 0$ egészekre lesz $n^3 - 8$ pozitív vagy negatív prímszám?

**Megoldás.**

**a) A legnagyobb közös osztó lehetséges értékei:**
$$\mathbf{d \in \{1, 2, 3, 6\}}.$$

**Megvalósító konkrét $m$ egész számok:**
- $\mathbf{d = 1}$-re például $\mathbf{m = 3}$: ekkor $3^2 + 3 + 4 = 16$ és $3^2 + 2 = 11$, $\lnko(16, 11) = 1$.
- $\mathbf{d = 2}$-re például $\mathbf{m = 0}$: ekkor $0^2 + 0 + 4 = 4$ és $0^2 + 2 = 2$, $\lnko(4, 2) = 2$.
- $\mathbf{d = 3}$-re például $\mathbf{m = 1}$: ekkor $1^2 + 1 + 4 = 6$ és $1^2 + 2 = 3$, $\lnko(6, 3) = 3$.
- $\mathbf{d = 6}$-ra például $\mathbf{m = 4}$: ekkor $4^2 + 4 + 4 = 24$ és $4^2 + 2 = 18$, $\lnko(24, 18) = 6$.

*Levezetés:*
1. Legyen $d = \lnko(m^2 + m + 4, m^2 + 2)$.
   Mivel $d$ mindkét kifejezést osztja, osztja azok különbségét is:
   $$d \mid (m^2 + m + 4) - (m^2 + 2) = m + 2.$$
2. Mivel $d \mid (m + 2)$, ezért $d$ osztja az $(m + 2)$ bármely egész együtthatós többszörösét is. Vonjuk ki az $(m - 2)(m + 2) = m^2 - 4$ szorzatot az $m^2 + 2$ kifejezésből:
   $$d \mid (m^2 + 2) - (m - 2)(m + 2) = m^2 + 2 - (m^2 - 4) = 6.$$
   *(Kongruenciával fogalmazva: $d \mid (m + 2) \implies m \equiv -2 \pmod d$, így $m^2 + 2 \equiv (-2)^2 + 2 = 6 \equiv 0 \pmod d$, azaz $d \mid 6$.)*
3. Mivel a legnagyobb közös osztó definíció szerint pozitív egész és $d \mid 6$, $d$ lehetséges értékei kizárólag a 6 pozitív osztói lehetnek:
   $$d \in \{1, 2, 3, 6\}.$$
4. A fenti példák mutatják, hogy mind a 4 lehetséges érték valóban realizálható egész $m$ értékekkel.

---

**b) A keresett nemnegatív egészek:**
$$\mathbf{n = 1 \quad \text{és} \quad n = 3}.$$
*(Az $n = 1$ esetben $n^3 - 8 = -7$, ami negatív prím; az $n = 3$ esetben $n^3 - 8 = 19$, ami pozitív prím.)*

*Levezetés:*
1. Bontsuk szorzattá a kifejezést a köbök különbségének azonosságával ($a^3 - b^3 = (a - b)(a^2 + ab + b^2)$):
   $$n^3 - 8 = n^3 - 2^3 = (n - 2)(n^2 + 2n + 4).$$
2. Az egész számok gyűrűjében egy szám akkor (pozitív vagy negatív) prímszám (azaz felbonthatatlan elem), ha pontosan négy osztója van: $\pm 1$ és $\pm p$ (ahol $|p| > 1$).
   Ha két egész szám szorzata prím, akkor az egyik tényezőnek feltétlenül $\pm 1$-nek kell lennie.
3. Vizsgáljuk a második tényezőt tetszőleges $n \ge 0$ egész esetén:
   $$n^2 + 2n + 4 = (n + 1)^2 + 3.$$
   Mivel $n \ge 0$, ezért $n + 1 \ge 1 \implies (n + 1)^2 \ge 1$, amiből:
   $$n^2 + 2n + 4 \ge 1 + 3 = 4.$$
   A második tényező tehát minden $n \ge 0$-ra legalább 4, így soha nem lehet sem $1$, sem $-1$.
4. A szorzat tehát kizárólag akkor lehet prím, ha az első tényező értéke $\pm 1$:
   - **1. eset: $n - 2 = 1 \implies n = 3$.**
     Ekkor $n^3 - 8 = 3^3 - 8 = 27 - 8 = 19$.
     Mivel a 19 pozitív prímszám, az $n = 3$ megoldás.
   - **2. eset: $n - 2 = -1 \implies n = 1$.**
     Ekkor $n^3 - 8 = 1^3 - 8 = 1 - 8 = -7$.
     Mivel $|-7| = 7$ prím, a $-7$ negatív prímszám, így az $n = 1$ is megoldás.
5. Egyéb $n \ge 0$ egészek vizsgálata:
   - $n = 0$: $n^3 - 8 = -8 = (-2) \cdot 4$, összetett szám (nem prím).
   - $n = 2$: $n^3 - 8 = 0$, nem prím.
   - $n \ge 4$: ekkor $n - 2 \ge 2$ és $n^2 + 2n + 4 \ge 28$, azaz két 1-nél szigorúan nagyobb egész szorzata, így összetett szám.
   Tehát csak az $n = 1$ és $n = 3$ felel meg a feltételeknek.

::: elmelet
**Elméleti háttér — euklideszi algoritmus polinomokra és felbonthatatlanság.**
- Polinomok egész helyettesítési értékeinek legnagyobb közös osztójánál az euklideszi lépésekkel a fokszám redukálható: $\lnko(A, B) = \lnko(B, A - qB)$. Ha eljutunk egy konstans $C$ egészhez, a lehetséges $\lnko$-k a $C$ osztói.
- Az egész számok gyűrűjében a felbonthatatlan (irreducibilis) és a prím elemek fogalma egybeesik. Ha egy egész szorzat prím, az egyik szorzótényező egység ($\pm 1$) kell legyen.
:::

## 4. feladat

Adjuk meg Gauss-eliminációval az
$$\begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix}$$
lineáris egyenletrendszer általános megoldását.

**Megoldás.**

**Az egyenletrendszer általános megoldása:**
$$\mathbf{\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} t - s & s \\ 0 & t \end{pmatrix} \quad (s, t \in \mathbb{R})}$$
*(vagy az $r = t - s \in \mathbb{R}$ paraméterezéssel:*
$$\mathbf{\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} r & s \\ 0 & r + s \end{pmatrix} \quad (r, s \in \mathbb{R})}).$$

*Levezetés Gauss-eliminációval:*
1. Végezzük el a mátrixszorzásokat mindkét oldalon:
   - Bal oldal:
     $$\begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} 2x + u & 2y + v \\ 3u & 3v \end{pmatrix}.$$
   - Jobb oldal:
     $$\begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 0 & 3 \end{pmatrix} = \begin{pmatrix} 2x & x + 3y \\ 2u & u + 3v \end{pmatrix}.$$
2. A két mátrix egyenlőségéből pozíciónként felírjuk az egyenleteket:
   $$\begin{aligned}
   (1, 1): \quad 2x + u &= 2x \implies u = 0 \\
   (1, 2): \quad 2y + v &= x + 3y \implies -x - y + v = 0 \\
   (2, 1): \quad 3u &= 2u \implies u = 0 \\
   (2, 2): \quad 3v &= u + 3v \implies u = 0
   \end{aligned}$$
3. Írjuk fel a homogén lineáris egyenletrendszer kibővített mátrixát az $(x, y, u, v)$ oszloprendben:
   $$\left(\begin{array}{cccc|c}
   0 & 0 & 1 & 0 & 0 \\
   -1 & -1 & 0 & 1 & 0 \\
   0 & 0 & 1 & 0 & 0 \\
   0 & 0 & -1 & 0 & 0
   \end{array}\right)$$
4. Gauss-elimináció lépései:
   - Cseréljük meg az 1. és 2. sort ($S_1 \leftrightarrow S_2$), majd szorozzuk meg az új 1. sort $(-1)$-gyel ($S_1 \leftarrow -S_1$):
     $$\left(\begin{array}{cccc|c}
     1 & 1 & 0 & -1 & 0 \\
     0 & 0 & 1 & 0 & 0 \\
     0 & 0 & 1 & 0 & 0 \\
     0 & 0 & -1 & 0 & 0
     \end{array}\right)$$
   - Vonjuk ki a 2. sort a 3. sorból ($S_3 \leftarrow S_3 - S_2$), és adjuk hozzá a 4. sorhoz ($S_4 \leftarrow S_4 + S_2$):
     $$\left(\begin{array}{cccc|c}
     1 & 1 & 0 & -1 & 0 \\
     0 & 0 & 1 & 0 & 0 \\
     0 & 0 & 0 & 0 & 0 \\
     0 & 0 & 0 & 0 & 0
     \end{array}\right)$$
5. **A lépcsős alak elemzése:**
   - A vezéregyesek az 1. és a 3. oszlopban állnak, így a **kötött változók**: $x$ és $u$.
   - A 2. és a 4. oszlop nem tartalmaz vezérelemet, így a **szabad változók**: $y$ és $v$.
6. A megoldás kifejezése:
   - A 2. sor szerint:
     $$u = 0.$$
   - Az 1. sor szerint:
     $$x + y - v = 0 \implies x = v - y.$$
   Legyen a két szabad paraméter $y = s \in \mathbb{R}$ és $v = t \in \mathbb{R}$. Ekkor:
   $$x = t - s, \quad y = s, \quad u = 0, \quad v = t.$$
   Mátrix alakban felírva:
   $$\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} t - s & s \\ 0 & t \end{pmatrix} = t \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} + s \begin{pmatrix} -1 & 1 \\ 0 & 0 \end{pmatrix} \quad (s, t \in \mathbb{R}).$$

::: elmelet
**Elméleti háttér — mátrixok kommutátora és Gauss-elimináció.**
- Azon mátrixok halmaza, amelyek kommutálnak egy rögzített $A$ mátrixszal ($AX = XA$), alteret alkotnak $\mathbb{R}^{n \times n}$-ben (az $A$ kommutánsa).
- A Gauss-elimináció során az elemi sorműveletekkel (sorcsere, számmal szorzás, sor hozzáadása másikhoz) lépcsős alakra hozzuk a kibővített mátrixot. A vezérelemek oszlopaihoz tartoznak a kötött változók, a többihez a szabad változók.
:::

## 5. feladat

Határozzuk meg $4x^4 + 12x^3 + 17x^2 + 10x + 2$ racionális, majd az összes komplex gyökeit is, és ezek multiplicitását.

**Megoldás.**

**Racionális gyökök:**
$$\mathbf{x_1 = -\frac{1}{2} \quad \text{(multiplicitása 2)}}.$$

**Összes komplex gyök és multiplicitásuk:**
$$\mathbf{x_1 = -\frac{1}{2} \quad \text{(multiplicitása 2)}},$$
$$\mathbf{x_2 = -1 + i \quad \text{(multiplicitása 1)}},$$
$$\mathbf{x_3 = -1 - i \quad \text{(multiplicitása 1)}}.$$

**Gyöktényezős felbontás:**
$$4x^4 + 12x^3 + 17x^2 + 10x + 2 = 4\left(x + \frac{1}{2}\right)^2 (x + 1 - i)(x + 1 + i) = (2x + 1)^2 (x^2 + 2x + 2).$$

*Levezetés:*
1. **Racionális gyökteszt:**
   Legyen $f(x) = 4x^4 + 12x^3 + 17x^2 + 10x + 2$.
   Ha $\frac{p}{q}$ egy egyszerűsített alakú racionális gyök ($\lnko(p, q) = 1$):
   - $p \mid a_0 = 2 \implies p \in \{\pm 1, \pm 2\}$,
   - $q \mid a_4 = 4 \implies q \in \{1, 2, 4\}$.
   A lehetséges racionális gyökök jelöltjei:
   $$\pm 1, \quad \pm 2, \quad \pm \frac{1}{2}, \quad \pm \frac{1}{4}.$$
   Mivel $f(x)$ minden együtthatója szigorúan pozitív ($4, 12, 17, 10, 2 > 0$), ha $x \ge 0$, akkor $f(x) \ge 2 > 0$. Így $f(x)$-nek nem létezhet nemnegatív valós gyöke, elegendő csak a negatív számokat ellenőrizni:
   $$-1, \quad -2, \quad -\frac{1}{2}, \quad -\frac{1}{4}.$$
2. **Gyökkeresés és Horner-elrendezés:**
   - $x = -1$: $f(-1) = 4(-1)^4 + 12(-1)^3 + 17(-1)^2 + 10(-1) + 2 = 4 - 12 + 17 - 10 + 2 = 1 \ne 0$.
   - $x = -2$: $f(-2) = 4(16) + 12(-8) + 17(4) + 10(-2) + 2 = 64 - 96 + 68 - 20 + 2 = 18 \ne 0$.
   - $x = -\frac{1}{2}$:
     Készítsük el a Horner-táblázatot az $f(x)$ együtthatóira a $-\frac{1}{2}$ helyen:
     $$\begin{array}{c|ccccc}
     & 4 & 12 & 17 & 10 & 2 \\
     -\frac{1}{2} & 4 & 10 & 12 & 4 & \mathbf{0}
     \end{array}$$
     A maradék 0, tehát $x = -\frac{1}{2}$ valóban gyök!
     A kapott hányadospolinom:
     $$g(x) = 4x^3 + 10x^2 + 12x + 4 = 2(2x^3 + 5x^2 + 6x + 2).$$
3. **Multiplicitás vizsgálata:**
   Nézzük meg, hogy $x = -\frac{1}{2}$ többszörös gyök-e. Alkalmazzuk újra a Horner-elrendezést a $2x^3 + 5x^2 + 6x + 2$ polinomra a $-\frac{1}{2}$ helyen:
   $$\begin{array}{c|cccc}
   & 2 & 5 & 6 & 2 \\
   -\frac{1}{2} & 2 & 4 & 4 & \mathbf{0}
   \end{array}$$
   A maradék ismét 0, így $x = -\frac{1}{2}$ legalább kétszeres gyök!
   A megmaradt másodfokú hányadospolinom:
   $$2x^2 + 4x + 4 = 2(x^2 + 2x + 2).$$
   Helyettesítsük be $x = -\frac{1}{2}$-et a megmaradt $x^2 + 2x + 2$ kifejezésbe:
   $$\left(-\frac{1}{2}\right)^2 + 2\left(-\frac{1}{2}\right) + 2 = \frac{1}{4} - 1 + 2 = \frac{5}{4} \ne 0.$$
   Tehát $x = -\frac{1}{2}$ **pontosan 2 multiplicitású** racionális gyök.
4. **A további komplex gyökök meghatározása:**
   A hiányzó két gyök a megmaradt $x^2 + 2x + 2 = 0$ másodfokú egyenletből adódik:
   $$(x + 1)^2 + 1 = 0 \iff (x + 1)^2 = -1 \iff x + 1 = \pm i \iff x = -1 \pm i.$$
   Mivel ezek a számok nem valósak és különböznek egymástól (valamint a $-\frac{1}{2}$-től is), mindkettő multiplicitása 1.

::: elmelet
**Elméleti háttér — polinomok gyökei és multiplicitása.**
- *Racionális gyökteszt:* egész együtthatós $a_n x^n + \dots + a_0$ polinom tetszőleges $\frac{p}{q}$ racionális gyökére $p \mid a_0$ és $q \mid a_n$.
- *Horner-elrendezés:* gyors algoritmus a behelyettesítési érték kiszámítására és az $(x - c)$ gyöktényezővel való maradékos osztásra.
- *Multiplicitás:* a $c$ gyök multiplicitása $k$, ha $(x - c)^k \mid f(x)$, de $(x - c)^{k+1} \nmid f(x)$.
- Valós együtthatós polinom nemvalós komplex gyökei mindig konjugált párokban lépnek fel azonos multiplicitással.
:::

## 6. feladat

Adjuk meg az $x^2 - y^2 = 32$ diofantikus egyenlet összes pozitív egész megoldását.

**Megoldás.**

**Az összes pozitív egész megoldáspár:**
$$\mathbf{(x, y) \in \{(6, 2), (9, 7)\}}.$$

*Levezetés:*
1. **Szorzattá alakítás:**
   Alkalmazzuk a négyzetek különbségének azonosságát a bal oldalon:
   $$(x - y)(x + y) = 32.$$
2. **A szorzótényezők tulajdonságai:**
   Vezessük be az $u = x - y$ és $v = x + y$ jelöléseket.
   Mivel a feladat feltétele szerint $x, y \in \mathbb{Z}^+$ (azaz $x \ge 1, y \ge 1$ egész számok):
   - $v = x + y \ge 1 + 1 = 2 > 0$, így $v$ pozitív egész.
   - Mivel $u \cdot v = 32 > 0$ és $v > 0$, ebből következik, hogy $u = x - y > 0$ is szigorúan pozitív egész.
   - Mivel $y > 0$, ezért $x - y < x + y$, vagyis $u < v$.
   - **Paritásvizsgálat:**
     $$v - u = (x + y) - (x - y) = 2y.$$
     Mivel $2y$ páros egész szám, $u$ és $v$ különbsége páros, ami azt jelenti, hogy $u$ és $v$ **azonos paritásúak** (vagy mindkettő páros, vagy mindkettő páratlan).
     Mivel szorzatuk $u \cdot v = 32 = 2^5$ páros szám, nem lehet mindkettő páratlan, így $u$-nak és $v$-nek **mindkettőnek párosnak kell lennie**.
3. **Lehetséges osztópárok vizsgálata:**
   A 32 pozitív osztói: $1, 2, 4, 8, 16, 32$.
   A lehetséges $(u, v)$ párok, amelyekre $u < v$, $u \cdot v = 32$, és mindkét tag páros:
   - **1. eset: $u = 2, v = 16$.**
     $$\begin{cases} x - y = 2 \\ x + y = 16 \end{cases}$$
     A két egyenletet összeadva: $2x = 18 \implies x = 9$.
     Kivonva a másodikat az elsőből: $2y = 14 \implies y = 7$.
     Mindkettő pozitív egész.
     *Ellenőrzés:* $9^2 - 7^2 = 81 - 49 = 32$. Helyes!
   - **2. eset: $u = 4, v = 8$.**
     $$\begin{cases} x - y = 4 \\ x + y = 8 \end{cases}$$
     A két egyenletet összeadva: $2x = 12 \implies x = 6$.
     Kivonva: $2y = 4 \implies y = 2$.
     Mindkettő pozitív egész.
     *Ellenőrzés:* $6^2 - 2^2 = 36 - 4 = 32$. Helyes!
4. **Teljesség:**
   Mivel $u < v$ és $u \cdot v = 32$, szükségképpen $u < \sqrt{32} \approx 5{,}65$. Az $5{,}65$-nél kisebb páros pozitív egészek kizárólag a 2 és a 4, így más eset nem létezik.
   *(Az egyetlen további pozitív osztópár az $u = 1, v = 32$ volna, de itt $u$ páratlan és $v$ páros, a paritásuk különbözik, ami $2x = 33 \implies x = \frac{33}{2} \notin \mathbb{Z}$ nem egész megoldásra vezetne.)*
   Az egyenletnek tehát pontosan két pozitív egész megoldáspárja van: $(6, 2)$ és $(9, 7)$.

::: elmelet
**Elméleti háttér — szorzattá alakítható diofantikus egyenletek.**
- Az $x^2 - y^2 = c$ típusú egyenletek az $(x - y)(x + y) = c$ faktorizációval a $c$ egész szám osztópárjainak felbontására vezethetők vissza.
- A paritáskulcs: $x + y$ és $x - y$ paritása mindig megegyezik, mert összegük és különbségük ($2x$, illetve $2y$) páros. Emiatt $c \equiv 2 \pmod 4$ esetén az egyenletnek egyáltalán nincs egész megoldása, páros $c$ esetén pedig mindkét tényezőnek párosnak kell lennie.
:::
