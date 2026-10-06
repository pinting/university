# Algebra és számelmélet – 5. feladatsor – megoldások

## 1. feladat

Bizonyítsuk be, hogy a komplex számok szorzása asszociatív és disztributív, vagyis $\forall x, y, z \in \mathbb{C}$-re $(xy)z = x(yz)$, $x(y + z) = xy + xz$, $(x + y)z = xz + yz$.

**Megoldás.**

Legyen $x = a + bi$, $y = c + di$, $z = e + fi$; a szorzás definíciója $(a + bi)(c + di) = (ac - bd) + (ad + bc)i$.

**Asszociativitás.** $xy = (ac - bd) + (ad + bc)i$, így
$$(xy)z = (ace - bde - adf - bcf) + (acf - bdf + ade + bce)i.$$
$yz = (ce - df) + (cf + de)i$, így
$$x(yz) = (ace - adf - bcf - bde) + (acf + ade + bce - bdf)i.$$
A két eredmény tagról tagra megegyezik.

**Disztributivitás.**
$$x(y + z) = \big(a(c + e) - b(d + f)\big) + \big(a(d + f) + b(c + e)\big)i = \big[(ac - bd) + (ad + bc)i\big] + \big[(ae - bf) + (af + be)i\big] = xy + xz.$$
A szorzás kommutatív (a képlet szimmetrikus $x$-ben és $y$-ban), így $(x + y)z = z(x + y) = zx + zy = xz + yz$. $\blacksquare$

::: elmelet
**Elméleti háttér — $\mathbb C$ mint test.** A komplex számok rendezett valós számpárok, $(a, b) \leftrightarrow a + bi$, a szorzás definíciója $(a + bi)(c + di) = (ac - bd) + (ad + bc)i$. A testaxiómák (asszociativitás, disztributivitás stb.) a valós számok megfelelő tulajdonságaiból **komponensenkénti számolással** adódnak. Ugyanezt adja, ha $\mathbb C$-t az $\mathbb R[x]/(x^2 + 1)$ faktorgyűrűként fogjuk fel.
:::

## 2. feladat

Végezzük el az alábbi műveleteket: $(2 - 3i)(1 + 4i)$, $-2/i$, $(2 + 5i)/(1 - 2i)$, $|\overline{(3 - 2i)}/(3 - 2i)|$, $|(5 - 2026i)^{50}/(5 + 2026i)^{50}|$, $(1 - i)^2$, $(1 - i)^{1024}$, $(1 - i\sqrt{3})^3$.

**Megoldás.**

- $(2 - 3i)(1 + 4i) = 2 + 8i - 3i - 12i^2 = 14 + 5i$.
- $-\dfrac2i = -2 \cdot \dfrac{-i}{1} = 2i$ (mert $\frac1i = -i$).
- $\dfrac{2 + 5i}{1 - 2i} = \dfrac{(2 + 5i)(1 + 2i)}{(1 - 2i)(1 + 2i)} = \dfrac{2 + 4i + 5i - 10}{5} = \dfrac{-8 + 9i}{5}$.
- $\left|\dfrac{\overline{3 - 2i}}{3 - 2i}\right| = \dfrac{|3 + 2i|}{|3 - 2i|} = \dfrac{\sqrt{13}}{\sqrt{13}} = 1$.
- $\left|\dfrac{(5 - 2026i)^{50}}{(5 + 2026i)^{50}}\right| = \left(\dfrac{|5 - 2026i|}{|5 + 2026i|}\right)^{50} = 1$ (konjugáltak abszolút értéke egyenlő).
- $(1 - i)^2 = 1 - 2i + i^2 = -2i$.
- $(1 - i)^{1024} = \left((1 - i)^2\right)^{512} = (-2i)^{512} = 2^{512}\,i^{512} = 2^{512}$, mert $4 \mid 512$.
- $(1 - i\sqrt3)^3 = 1 - 3i\sqrt3 + 3(i\sqrt3)^2 - (i\sqrt3)^3 = 1 - 3\sqrt3\,i - 9 + 3\sqrt3\,i = -8$. (Trigonometrikusan: $1 - i\sqrt3 = 2(\cos(-60^\circ) + i\sin(-60^\circ))$, köbe $8(\cos(-180^\circ) + i\sin(-180^\circ)) = -8$.)

::: elmelet
**Elméleti háttér — számolás algebrai és trigonometrikus alakban.** Osztásnál **a nevező konjugáltjával bővítünk**: $\frac{w}{z} = \frac{w\overline z}{|z|^2}$, mert $z\overline z = |z|^2$ valós. Az abszolút érték **multiplikatív** ($|zw| = |z||w|$, $|z^n| = |z|^n$), és $|\overline z| = |z|$. Hatványozásnál trigonometrikus alakban (Moivre) vagy kis hatványok kiszámolásával ($(1 - i)^2 = -2i$, $i^4 = 1$) haladunk.
:::

## 3. feladat

Igazoljuk, hogy $z \in \mathbb{C}$ abszolút értéke akkor és csak akkor 1, ha reciproka megegyezik a konjugáltjával.

**Megoldás.**

$z \neq 0$ esetén
$$\frac1z = \overline z \iff z\overline z = 1 \iff |z|^2 = 1 \iff |z| = 1. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — $z\overline z = |z|^2$.** A konjugált és az abszolút érték kapcsolata: $z\overline z = a^2 + b^2 = |z|^2$. Ebből $z \ne 0$ esetén $\frac1z = \frac{\overline z}{|z|^2}$, így a reciprok és a konjugált pontosan az egységkörön egyezik meg. (Az egységkör pontjai a szorzásra csoportot alkotnak.)
:::

## 4. feladat

Határozzuk meg a következő összeg algebrai alakját: $i^{123} + i^{124} + i^{125} + i^{126}$.

**Megoldás.**

$i^{123} = i^{120} \cdot i^3 = -i$, $i^{124} = 1$, $i^{125} = i$, $i^{126} = -1$. Az összeg $-i + 1 + i - 1 = \mathbf{0}$. (Vagy: $i^{123}(1 + i + i^2 + i^3) = i^{123} \cdot 0$.)

::: elmelet
**Elméleti háttér — $i$ hatványai.** $i^4 = 1$, ezért $i^n$ csak $n \bmod 4$-től függ: $1, i, -1, -i$. Négy egymást követő hatvány összege $i^m(1 + i + i^2 + i^3) = 0$ (az egységgyökök összege nulla, ld. 20. feladat).
:::

## 5. feladat

Oldjuk meg a komplex számok halmazán az alábbi egyenletet: $3z + 2\overline{z} = 10 - 4i$.

**Megoldás.**

Legyen $z = a + bi$. Ekkor $3z + 2\overline z = 3a + 3bi + 2a - 2bi = 5a + bi = 10 - 4i$, így $a = 2$, $b = -4$. **$z = 2 - 4i$.**

::: elmelet
**Elméleti háttér — egyenlet valós és képzetes részre bontva.** Egy komplex egyenlet két valós egyenletet jelent: $u = v \iff \operatorname{Re} u = \operatorname{Re} v$ és $\operatorname{Im} u = \operatorname{Im} v$. Ha az egyenletben $\overline z$ is szerepel, az nem „komplex-lineáris”, ezért $z = a + bi$ helyettesítéssel érdemes valós rendszerre bontani.
:::

## 6. feladat

Oldjuk meg $\mathbb{C}$-ben: $x = (4 - 3i)\overline{x}$; $x = 2i\operatorname{Im}(x)$; $\operatorname{Im}(x) = x - \overline{x}$.

**Megoldás.**

- $x = (4 - 3i)\overline x$: abszolút értéket véve $|x| = |4 - 3i|\,|\overline x| = 5|x|$, így $|x| = 0$. **Csak $x = 0$.**
- $x = 2i\operatorname{Im}(x)$: $x = a + bi$ esetén $a + bi = 2bi$, így $a = 0$ és $b = 2b$, azaz $b = 0$. **Csak $x = 0$.**
- $\operatorname{Im}(x) = x - \overline x$: $x - \overline x = 2bi$, így $b = 2bi$, azaz $b(1 - 2i) = 0$, tehát $b = 0$. **A megoldások a valós számok: $x \in \mathbb{R}$.**

::: elmelet
**Elméleti háttér — abszolút érték és felbontás.** Ha $z = cw$ alakú egyenletben a két oldal abszolút értékét vesszük, $|z| = |c|\,|w|$; ha $|c| \ne 1$ és $|z| = |w|$, csak a $0$ lehet megoldás. Egyébként az algebrai alakra bontás ($x = a + bi$, $\overline x = a - bi$, $x - \overline x = 2bi$) valós egyenletrendszert ad.
:::

## 7. feladat

Tegyük föl, hogy $(x + iy)^k = 12 - 5i$ (itt $x, y \in \mathbb{R}$). Mennyi lesz ekkor $(x^2 + y^2)^k$?

**Megoldás.**

Az abszolút érték multiplikatív:
$$(x^2 + y^2)^k = |x + iy|^{2k} = \left|(x + iy)^k\right|^2 = |12 - 5i|^2 = 144 + 25 = \mathbf{169}.$$

::: elmelet
**Elméleti háttér — az abszolút érték multiplikativitása.** $|z^k| = |z|^k$ és $|x + iy|^2 = x^2 + y^2$. Így egy hatvány abszolút értéke meghatározza az alap abszolút értékét, anélkül hogy a hatványgyököt ki kellene számolni.
:::

## 8. feladat

Oldjuk meg a következő egyenletrendszert a komplex számok halmazán, ahol $z$ és $w$ is komplex számok:
$$\begin{aligned} (1 + i)z - w &= -1 + 5i \\ 2z + (1 - i)w &= 6 + 2i \end{aligned}$$

**Megoldás.**

Az első egyenletből $w = (1 + i)z + 1 - 5i$. Ezt a másodikba helyettesítve, $(1 - i)(1 + i) = 2$ és $(1 - i)(1 - 5i) = -4 - 6i$ felhasználásával:
$$2z + 2z - 4 - 6i = 6 + 2i \iff 4z = 10 + 8i \iff z = \frac52 + 2i.$$
Ebből $w = (1 + i)\left(\frac52 + 2i\right) + 1 - 5i = \left(\frac12 + \frac92 i\right) + 1 - 5i = \frac32 - \frac12 i$.

**Megoldás: $z = \frac52 + 2i$, $w = \frac32 - \frac12 i$.** (Ellenőrzés: $(1 + i)z - w = -1 + 5i$, $2z + (1 - i)w = (5 + 4i) + (1 - 2i) = 6 + 2i$.)

::: elmelet
**Elméleti háttér — lineáris egyenletrendszer $\mathbb C$ felett.** A Gauss-elimináció (és a behelyettesítéses módszer) bármely test felett ugyanúgy működik, így $\mathbb C$ felett is; csak a számolás komplex számokkal történik. Hasznos: $(1 - i)(1 + i) = 2$ (konjugált párok szorzata valós).
:::

## 9. feladat

Mutassuk meg, hogy ha az $m$ és $n$ egész számok előállnak két négyzetszám összegeként, akkor $mn$ is előáll így.

**Megoldás.**

Ha $m = a^2 + b^2 = |a + bi|^2$ és $n = c^2 + d^2 = |c + di|^2$, akkor az abszolút érték multiplikativitása miatt
$$mn = |(a + bi)(c + di)|^2 = |(ac - bd) + (ad + bc)i|^2 = (ac - bd)^2 + (ad + bc)^2,$$
ami két egész szám négyzetének összege. $\blacksquare$

::: elmelet
**Elméleti háttér — Brahmagupta–Fibonacci-azonosság.** A $|zw|^2 = |z|^2|w|^2$ multiplikativitás egész komponensű komplex számokra (Gauss-egészekre) azt mondja, hogy két négyzetösszeg szorzata is négyzetösszeg: $(a^2 + b^2)(c^2 + d^2) = (ac - bd)^2 + (ad + bc)^2$. A komplex számok itt egy egész számelméleti azonosság „gépezetét” adják.
:::

## 10. feladat

Oldjuk meg az alábbi egyenleteket: $x^2 + 9 = 0$, $x^2 = -8$, $x^2 - 4x + 13 = 0$, $x^2 - 4ix - 5 = 0$. Írjuk is föl a megfelelő polinomokat gyöktényezős alakban $\mathbb{C}$ fölött.

**Megoldás.**

- $x^2 + 9 = 0$: $x = \pm 3i$; $\;x^2 + 9 = (x - 3i)(x + 3i)$.
- $x^2 = -8$: $x = \pm 2\sqrt2\,i$; $\;x^2 + 8 = (x - 2\sqrt2\,i)(x + 2\sqrt2\,i)$.
- $x^2 - 4x + 13 = 0$: $D = 16 - 52 = -36$, $x = \frac{4 \pm 6i}{2} = 2 \pm 3i$; $\;x^2 - 4x + 13 = (x - 2 - 3i)(x - 2 + 3i)$.
- $x^2 - 4ix - 5 = 0$: $D = (4i)^2 + 20 = 4$, $x = \frac{4i \pm 2}{2} = \pm 1 + 2i$; $\;x^2 - 4ix - 5 = (x - 1 - 2i)(x + 1 - 2i)$.

::: elmelet
**Elméleti háttér — másodfokú egyenlet $\mathbb C$-ben.** $ax^2 + bx + c = 0$ megoldása $x = \frac{-b \pm \sqrt D}{2a}$, ahol $\sqrt D$ a $D$ bármelyik komplex négyzetgyöke (a $\pm$ a másikat is lefedi). $\mathbb C$ felett minden polinom gyöktényezőkre bomlik (az algebra alaptétele): $ax^2 + bx + c = a(x - x_1)(x - x_2)$.
:::

## 11. feladat

Határozzuk meg azokat a $c + di$ számokat, melyek négyzete $5 + 12i$. Oldjuk meg az $x^2 + (2i - 3)x + (5 - i) = 0$ egyenletet.

**Megoldás.**

$(c + di)^2 = (c^2 - d^2) + 2cd\,i = 5 + 12i$, továbbá az abszolút értékekből $c^2 + d^2 = |5 + 12i| = 13$. Így $c^2 = 9$, $d^2 = 4$, és $cd = 6 > 0$: **$c + di = \pm(3 + 2i)$.**

Az $x^2 + (2i - 3)x + (5 - i) = 0$ egyenlet diszkriminánsa
$$D = (2i - 3)^2 - 4(5 - i) = (5 - 12i) - 20 + 4i = -15 - 8i.$$
Ennek négyzetgyöke (ugyanígy: $c^2 - d^2 = -15$, $c^2 + d^2 = 17$, $cd = -4$): $\pm(1 - 4i)$. Így
$$x = \frac{3 - 2i \pm (1 - 4i)}{2}, \qquad x_1 = 2 - 3i, \quad x_2 = 1 + i.$$
(Ellenőrzés Viète-tel: $x_1 + x_2 = 3 - 2i$, $x_1x_2 = 2 + 2i - 3i + 3 = 5 - i$.)

::: elmelet
**Elméleti háttér — komplex négyzetgyök algebrai alakban.** $(c + di)^2 = A + Bi$ esetén $c^2 - d^2 = A$, $2cd = B$, és az abszolút értékből $c^2 + d^2 = |A + Bi|$. A három egyenletből $c^2$ és $d^2$ kijön, az előjeleket a $2cd = B$ feltétel köti össze. Komplex együtthatós másodfokú egyenletnél a diszkrimináns négyzetgyökét így számoljuk, és a megoldóképlet változatlanul érvényes. Ellenőrzés: Viète-formulák.
:::

## 12. feladat

Hozzuk trigonometrikus alakra a következő komplex számokat: $\sqrt{3} + i$, $-2 + 2i$, $-1 - \sqrt{3}i$, $-5i$, $-1 + i$, $\sqrt{3} - 3i$, $-\sin(20^\circ) + i\cos(20^\circ)$, $-\cos\beta + i\sin\beta$, $1 + \cos\alpha + i\sin\alpha$ és $\dfrac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta}$.

**Megoldás.**

$z = r(\cos\varphi + i\sin\varphi)$ alakban (szögek fokban):

- $\sqrt3 + i = 2(\cos 30^\circ + i\sin 30^\circ)$.
- $-2 + 2i = 2\sqrt2(\cos 135^\circ + i\sin 135^\circ)$.
- $-1 - \sqrt3\,i = 2(\cos 240^\circ + i\sin 240^\circ)$.
- $-5i = 5(\cos 270^\circ + i\sin 270^\circ)$.
- $-1 + i = \sqrt2(\cos 135^\circ + i\sin 135^\circ)$.
- $\sqrt3 - 3i = 2\sqrt3(\cos 300^\circ + i\sin 300^\circ)$ (mert $r = \sqrt{12}$, $\cos\varphi = \frac12$, $\sin\varphi = -\frac{\sqrt3}{2}$).
- $-\sin 20^\circ + i\cos 20^\circ = \cos 110^\circ + i\sin 110^\circ$.
- $-\cos\beta + i\sin\beta = \cos(180^\circ - \beta) + i\sin(180^\circ - \beta)$.
- $1 + \cos\alpha + i\sin\alpha$:
$$1 + \cos\alpha + i\sin\alpha = 2\cos^2\frac\alpha2 + 2i\sin\frac\alpha2\cos\frac\alpha2 = 2\cos\frac\alpha2\left(\cos\frac\alpha2 + i\sin\frac\alpha2\right).$$
  Ez trigonometrikus alak, ha $\cos\frac\alpha2 > 0$; ha $\cos\frac\alpha2 < 0$, akkor
$$-2\cos\frac\alpha2\left(\cos\left(\frac\alpha2 + 180^\circ\right) + i\sin\left(\frac\alpha2 + 180^\circ\right)\right);$$
  ha $\cos\frac\alpha2 = 0$, a szám $0$.
- $\dfrac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta}$:
$$\frac{1 - i\operatorname{tg}\beta}{1 + i\operatorname{tg}\beta} = \frac{\cos\beta - i\sin\beta}{\cos\beta + i\sin\beta} = \cos(-2\beta) + i\sin(-2\beta)$$
  ($\cos\beta \neq 0$; a számlálót és a nevezőt $\cos\beta$-val bővítettük, majd a szögek kivonódnak).

::: elmelet
**Elméleti háttér — trigonometrikus alak.** $z = r(\cos\varphi + i\sin\varphi)$, ahol $r = |z| \ge 0$, $\varphi$ az argumentum ($2\pi$ többszöröséig egyértelmű). Fontos, hogy $r$ **nemnegatív** legyen: ha egy átalakításból negatív szorzó jön ki, $\varphi$-t $180^\circ$-kal eltoljuk. Trigonometrikus azonosságokkal (pótszög, félszögképletek: $1 + \cos\alpha = 2\cos^2\frac\alpha2$) sok kifejezés közvetlenül ilyen alakra hozható.
:::

## 13. feladat

Legyen $u = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$ és $v = 3\left(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)$. Számítsuk ki az $u \cdot v$ és az $\frac{u}{v}$ kifejezések értékét! A végeredményt trigonometrikus alakban adjuk meg.

**Megoldás.**

Trigonometrikus alakban szorzáskor az abszolút értékek szorzódnak, a szögek összeadódnak:
$$u \cdot v = 6\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right), \qquad \frac uv = \frac23\left(\cos\left(-\frac{\pi}{12}\right) + i\sin\left(-\frac{\pi}{12}\right)\right) = \frac23\left(\cos\frac{23\pi}{12} + i\sin\frac{23\pi}{12}\right).$$

::: elmelet
**Elméleti háttér — szorzás és osztás trigonometrikus alakban.** $r_1(\cos\varphi_1 + i\sin\varphi_1)\cdot r_2(\cos\varphi_2 + i\sin\varphi_2) = r_1r_2(\cos(\varphi_1 + \varphi_2) + i\sin(\varphi_1 + \varphi_2))$ — az abszolút értékek szorzódnak, a szögek összeadódnak (az addíciós tételek miatt); osztásnál osztódnak, illetve kivonódnak. Geometriailag: a szorzás **forgatva nyújtás**.
:::

## 14. feladat

Mennyi $-\cos(50^\circ) - i\sin(50^\circ)$ szöge? Ha $z$ szöge $75^\circ$, akkor mennyi $2026/\overline{z}^4$ szöge? Ha $w$ abszolút értéke 1, szöge pedig $45^\circ$, akkor mennyi $w^3/\overline{w}$?

**Megoldás.**

- $-\cos 50^\circ - i\sin 50^\circ = \cos 230^\circ + i\sin 230^\circ$, **a szöge $230^\circ$.**
- $\arg z = 75^\circ$ esetén $\arg\overline z = -75^\circ$, $\arg\overline z^4 = -300^\circ \equiv 60^\circ$, és mivel $2026$ pozitív valós, $\arg\dfrac{2026}{\overline z^4} = -60^\circ \equiv$ **$300^\circ$**.
- $|w| = 1$ esetén $\overline w = \frac1w$, így $\dfrac{w^3}{\overline w} = w^4 = \cos 180^\circ + i\sin 180^\circ = \mathbf{-1}$.

::: elmelet
**Elméleti háttér — argumentum számolási szabályai.** $\arg(zw) = \arg z + \arg w$, $\arg(1/z) = -\arg z$, $\arg\overline z = -\arg z$, $\arg(z^n) = n\arg z$ (mind $360^\circ$ többszöröséig). Pozitív valós szám argumentuma $0$. Egységnyi abszolút értékű számra $\overline w = w^{-1}$.
:::

## 15. feladat

Mondjuk ki, és bizonyítsuk be a Moivre-formulát természetes kitevőkre. A formula, valamint a binomiális tétel felhasználásával fejezzük ki a $\cos(3x)$ és a $\sin(3x)$ függvényeket kizárólag $\cos x$ és $\sin x$ hatványainak segítségével.

**Megoldás.**

**Moivre-formula:** $n \in \mathbb{N}$-re
$$(\cos x + i\sin x)^n = \cos(nx) + i\sin(nx).$$
*Bizonyítás* indukcióval: $n = 0, 1$ triviális. A lépés az addíciós tételekkel:
$$(\cos nx + i\sin nx)(\cos x + i\sin x) = (\cos nx\cos x - \sin nx\sin x) + i(\sin nx\cos x + \cos nx\sin x) = \cos(n+1)x + i\sin(n+1)x.$$
(Általában $z = r(\cos\varphi + i\sin\varphi)$ esetén $z^n = r^n(\cos n\varphi + i\sin n\varphi)$.)

**Alkalmazás:** $c = \cos x$, $s = \sin x$ jelöléssel a binomiális tétel szerint
$$\cos 3x + i\sin 3x = (c + is)^3 = c^3 + 3c^2(is) + 3c(is)^2 + (is)^3 = (c^3 - 3cs^2) + i(3c^2s - s^3).$$
A valós és képzetes részeket összevetve:
$$\cos 3x = \cos^3 x - 3\cos x\sin^2 x = 4\cos^3x - 3\cos x,$$
$$\sin 3x = 3\cos^2 x\sin x - \sin^3 x = 3\sin x - 4\sin^3 x.$$

::: elmelet
**Elméleti háttér — Moivre-formula és többszörös szögek.** $(\cos x + i\sin x)^n = \cos nx + i\sin nx$, indukcióval az addíciós tételekből. A bal oldalt a **binomiális tétellel** kifejtve, és a valós/képzetes részeket összevetve $\cos nx$ és $\sin nx$ $\cos x$ és $\sin x$ polinomjaként adódik (Csebisev-polinomok); $\sin^2 + \cos^2 = 1$-gyel egyetlen függvényre is átírható.
:::

## 16. feladat

Mennyi az értéke a $(\sin(\pi/12) + i\cos(\pi/12))^{12}$ és a $(1 + \cos(\pi/5) + i\sin(\pi/5))^5$ kifejezéseknek?

**Megoldás.**

**Első:** $\sin\frac{\pi}{12} + i\cos\frac{\pi}{12} = \cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}$ (pótszögek). A Moivre-formulával
$$\left(\cos\frac{5\pi}{12} + i\sin\frac{5\pi}{12}\right)^{12} = \cos 5\pi + i\sin 5\pi = \mathbf{-1}.$$

**Második:** a 12. feladat szerint $1 + \cos\frac\pi5 + i\sin\frac\pi5 = 2\cos\frac{\pi}{10}\left(\cos\frac{\pi}{10} + i\sin\frac{\pi}{10}\right)$, így
$$\left(1 + \cos\frac\pi5 + i\sin\frac\pi5\right)^5 = 32\cos^5\frac{\pi}{10}\left(\cos\frac\pi2 + i\sin\frac\pi2\right) = 32\cos^5\frac{\pi}{10}\cdot i.$$
Mivel $\cos^2\frac{\pi}{10} = \frac{1 + \cos(\pi/5)}{2} = \frac{5 + \sqrt5}{8}$, az érték
$$32\left(\frac{5 + \sqrt5}{8}\right)^2\sqrt{\frac{5 + \sqrt5}{8}}\; i = (15 + 5\sqrt5)\sqrt{\frac{5 + \sqrt5}{8}}\; i \approx 24{,}90\, i.$$

::: elmelet
**Elméleti háttér — hatványozás trigonometrikus alakra hozással.** Először trigonometrikus alakra hozzuk az alapot (pótszögekkel, illetve $1 + \cos\alpha + i\sin\alpha = 2\cos\frac\alpha2(\cos\frac\alpha2 + i\sin\frac\alpha2)$), aztán Moivre-formula: $z^n = r^n(\cos n\varphi + i\sin n\varphi)$. A pontos érték a félszögképletből ($\cos^2\frac\alpha2 = \frac{1 + \cos\alpha}{2}$) adódik.
:::

## 17. feladat

A Moivre-képlet felhasználásával számítsuk ki az $(1 - i)^{12}$ kifejezés értékét! A számolást trigonometrikus alakban végezzük el, de a végeredményt algebrai alakban adjuk meg.

**Megoldás.**

$1 - i = \sqrt2\left(\cos\left(-\frac\pi4\right) + i\sin\left(-\frac\pi4\right)\right)$, így
$$(1 - i)^{12} = (\sqrt2)^{12}\left(\cos(-3\pi) + i\sin(-3\pi)\right) = 64 \cdot (-1) = \mathbf{-64}.$$

::: elmelet
**Elméleti háttér — Moivre-formula egész kitevőre.** $z = r(\cos\varphi + i\sin\varphi) \Rightarrow z^n = r^n(\cos n\varphi + i\sin n\varphi)$. Nagy kitevőnél a szög $n\varphi$-t $2\pi$ többszöröseivel csökkentjük, és a végén visszaírjuk algebrai alakra.
:::

## 18. feladat

Oldjuk meg az $x^4 = 5$ és az $x^3 = -27$ egyenleteket a komplex számok között. Adjuk meg az $x^6 = -1 + i\sqrt{3}$ és az $x^n = i$ egyenletek összes megoldását is.

**Megoldás.**

$z = r(\cos\varphi + i\sin\varphi)$ $n$-edik gyökei:
$$\sqrt[n]{r}\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right), \qquad k = 0, 1, \dots, n - 1.$$

- $x^4 = 5$: $x \in \{\sqrt[4]5,\ \sqrt[4]5\,i,\ -\sqrt[4]5,\ -\sqrt[4]5\,i\}$.
- $x^3 = -27 = 27(\cos 180^\circ + i\sin 180^\circ)$:
$$x = 3\left(\cos(60^\circ + k \cdot 120^\circ) + i\sin(60^\circ + k\cdot 120^\circ)\right),$$
  azaz
$$x \in \left\{\frac32 + \frac{3\sqrt3}{2}i,\ -3,\ \frac32 - \frac{3\sqrt3}{2}i\right\}.$$
- $x^6 = -1 + i\sqrt3 = 2(\cos 120^\circ + i\sin 120^\circ)$:
$$x = \sqrt[6]2\left(\cos(20^\circ + k \cdot 60^\circ) + i\sin(20^\circ + k\cdot 60^\circ)\right), \qquad k = 0, \dots, 5;$$
  a szögek $20^\circ, 80^\circ, 140^\circ, 200^\circ, 260^\circ, 320^\circ$.
- $x^n = i = \cos\frac\pi2 + i\sin\frac\pi2$:
$$x_k = \cos\frac{(4k + 1)\pi}{2n} + i\sin\frac{(4k + 1)\pi}{2n}, \qquad k = 0, 1, \dots, n - 1$$
  (a szög $\frac{\pi/2 + 2k\pi}{n}$).

::: elmelet
**Elméleti háttér — $n$-edik gyökvonás $\mathbb C$-ben.** Egy nem nulla komplex számnak pontosan $n$ darab $n$-edik gyöke van: $\sqrt[n]r\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right)$, $k = 0, \dots, n-1$. Ezek egy origó középpontú szabályos $n$-szög csúcsai. A $2k\pi$ tag azért kell, mert a szög csak $2\pi$ többszöröséig meghatározott, és $n$-nel osztva ezek különböző szögeket adnak.
:::

## 19. feladat

Határozzuk meg a $z = -8 + 8\sqrt{3}i$ komplex szám összes harmadik gyökét! A gyököket trigonometrikus alakban adjuk meg.

**Megoldás.**

$|z| = \sqrt{64 + 192} = 16$, $\cos\varphi = -\frac12$, $\sin\varphi = \frac{\sqrt3}{2}$, így $\varphi = 120^\circ$: $z = 16(\cos 120^\circ + i\sin 120^\circ)$. A harmadik gyökök ($\sqrt[3]{16} = 2\sqrt[3]2$):
$$w_k = 2\sqrt[3]2\left(\cos(40^\circ + k \cdot 120^\circ) + i\sin(40^\circ + k\cdot 120^\circ)\right), \quad k = 0, 1, 2,$$
azaz a szögek $40^\circ$, $160^\circ$, $280^\circ$.

::: elmelet
**Elméleti háttér — gyökök trigonometrikus alakban.** Előbb trigonometrikus alakra hozzuk a számot ($r = |z|$, $\varphi$ a $\cos\varphi = \frac ar$, $\sin\varphi = \frac br$ egyenletekből — mindkettőt figyelembe véve, hogy a helyes síknegyedet kapjuk), majd a gyökvonás képletét alkalmazzuk: az abszolút érték valós $n$-edik gyöke, a szögek $\frac{\varphi + 2k\pi}{n}$.
:::

## 20. feladat

Legyen $k$ egy pozitív egész szám, és $\varepsilon = \cos(\frac{2\pi i}{k}) + \sin(\frac{2\pi i}{k})$. Mutassuk meg, hogy egy tetszőleges $n$ egész szám esetén az $S = \sum_{j=0}^{k-1} \varepsilon^{jn}$ összeg értéke $k$, ha $k \mid n$, és $0$, ha $k \nmid n$.

**Megoldás.**

(A lapon szereplő képletben elírás van; a szándékolt definíció $\varepsilon = \cos\frac{2\pi}{k} + i\sin\frac{2\pi}{k}$, a primitív $k$-adik egységgyök.)

A Moivre-formula szerint $\varepsilon^n = \cos\frac{2\pi n}{k} + i\sin\frac{2\pi n}{k}$, és $\varepsilon^n = 1 \iff k \mid n$.

- Ha $k \mid n$: minden tag $\varepsilon^{jn} = (\varepsilon^n)^j = 1$, így $S = k$.
- Ha $k \nmid n$: $q = \varepsilon^n \neq 1$, de $q^k = (\varepsilon^k)^n = 1$. A mértani összeg képlete szerint
$$S = \sum_{j=0}^{k-1} q^j = \frac{q^k - 1}{q - 1} = 0. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — egységgyökök összege.** $\varepsilon = \cos\frac{2\pi}{k} + i\sin\frac{2\pi}{k}$ **primitív** $k$-adik egységgyök: $\varepsilon^n = 1 \iff k \mid n$. Az $S$ összeg egy mértani sor $q = \varepsilon^n$ hányadossal; ha $q \ne 1$, akkor $q^k = 1$ miatt a $\frac{q^k - 1}{q - 1}$ képlet $0$-t ad. Ez a **diszkrét Fourier-transzformáció** és a „gyökszűrő” technika alapja (pl. minden $k$-adik binomiális együttható összegének kiszámítása).
:::

## 21. feladat

A komplex számok trigonometrikus alakja és a binomiális tétel felhasználásával hozzuk zárt alakra (vagyis szumma nélküli kifejezésre) az alábbi két összeget:
$$S_n = \sum_{k=0}^{n} \binom{n}{k} \cos(kx), \quad \text{illetve} \quad T_n = \sum_{k=0}^{n} \binom{n}{k} \sin(kx).$$

**Megoldás.**

Legyen $w = \cos x + i\sin x$. A Moivre-formula szerint $w^k = \cos kx + i\sin kx$, így a binomiális tétellel
$$S_n + iT_n = \sum_{k=0}^n\binom nk w^k = (1 + w)^n.$$
Mivel $1 + w = 1 + \cos x + i\sin x = 2\cos\frac x2\left(\cos\frac x2 + i\sin\frac x2\right)$ (ld. 12. feladat), ezért
$$(1 + w)^n = 2^n\cos^n\frac x2\left(\cos\frac{nx}{2} + i\sin\frac{nx}{2}\right).$$
($S_n$ és $T_n$ valós, így a valós és képzetes részek összevetésével:)
$$S_n = 2^n\cos^n\frac x2\,\cos\frac{nx}{2}, \qquad T_n = 2^n\cos^n\frac x2\,\sin\frac{nx}{2}.$$
(Ez az azonosság minden $x$-re érvényes, $\cos\frac x2$ előjelétől függetlenül.)

::: elmelet
**Elméleti háttér — valós trigonometrikus összegek komplex úton.** Egy $\sum c_k\cos kx$ összeget egy komplex összeg valós részeként írunk fel ($\cos kx = \operatorname{Re} e^{ikx}$, Moivre szerint $w^k$), a komplex összeget zárt alakra hozzuk (itt binomiális tétellel $(1 + w)^n$), majd visszatérünk a valós és képzetes részekre. A $\sin$-os összeg ugyanannak a komplex kifejezésnek a képzetes része — egy számolás mindkettőt megadja.
:::

## 22. feladat

Rajzoljuk le a komplex síkon a következő halmazokat: $\{z : \operatorname{Im}(z - 2 + i) \ge 1\}$, $\{z : \operatorname{Re}(z - 2i) \le \operatorname{Im}(z + 1)\}$, $\{z : |z + 2 - 3i| < 2\}$, $\{z : |z - 1 - i| = |z + 3 + i|\}$, $\{z : z - \overline{z} = 4i\}$, $\{z : z\overline{z} - 2\operatorname{Re}(z) = 0\}$, $\{z : 1/z = 2\overline{z}\}$, $\{z \in \mathbb{C} : \operatorname{Im}((z - i)/(z + i)) = 0\}$.

**Megoldás.**

Legyen $z = x + yi$.

1. $\operatorname{Im}(z - 2 + i) = y + 1 \ge 1 \iff y \ge 0$: **a zárt felső félsík.**
2. $\operatorname{Re}(z - 2i) = x$, $\operatorname{Im}(z + 1) = y$: $x \le y$, **az $y = x$ egyenes és a felette lévő zárt félsík.**
3. $|z - (-2 + 3i)| < 2$: **nyílt körlap**, középpont $-2 + 3i$, sugár $2$.
4. $|z - (1 + i)| = |z - (-3 - i)|$: az $1 + i$ és $-3 - i$ pontokat összekötő szakasz **felezőmerőlegese**. Négyzetre emelve: $(x - 1)^2 + (y - 1)^2 = (x + 3)^2 + (y + 1)^2 \iff y = -2x - 2$.
5. $z - \overline z = 2yi = 4i \iff y = 2$: **vízszintes egyenes.**
6. $z\overline z - 2\operatorname{Re} z = x^2 + y^2 - 2x = 0 \iff (x - 1)^2 + y^2 = 1$: **kör**, középpont $1$, sugár $1$.
7. $\frac1z = 2\overline z \iff 2z\overline z = 1 \iff |z| = \frac{1}{\sqrt2}$ ($z \neq 0$): **origó középpontú, $\frac{1}{\sqrt2}$ sugarú kör.**
8. $z \neq -i$ esetén
$$\frac{z - i}{z + i} = \frac{(z - i)(\overline z - i)}{|z + i|^2} = \frac{x^2 + y^2 - 1 - 2xi}{|z + i|^2},$$
ennek képzetes része pontosan akkor $0$, ha $x = 0$: **a képzetes tengely, a $-i$ pont kivételével.**

::: elmelet
**Elméleti háttér — komplex síkbeli halmazok.** $|z - a|$ a $z$ és $a$ pontok **távolsága**; így $|z - a| < r$ nyílt körlap, $|z - a| = |z - b|$ felezőmerőleges. $\operatorname{Re}$, $\operatorname{Im}$ feltételek egyenesek, félsíkok. Bonyolultabb feltételeknél $z = x + yi$ helyettesítéssel valós egyenletet (egyenlőtlenséget) kapunk, amit a koordinátageometriából ismerünk fel (kör, egyenes). A hányados képzetes részéhez a nevező konjugáltjával bővítünk.
:::

## 23. feladat

A sík mely geometriai transzformációinak felelnek meg a komplex számok halmazának alábbi leképezései: $z \mapsto -2z + 1 - i$, $z \mapsto (1 - i\sqrt{3})z$, $z \mapsto 1/\overline{z}$.

**Megoldás.**

- $z \mapsto -2z + 1 - i$: középpontos hasonlóság $-2$ aránnyal (azaz $180^\circ$-os forgatás és kétszeres nagyítás), majd eltolás az $(1, -1)$ vektorral. Fixpontja $z = -2z + 1 - i$, azaz $z_0 = \frac{1 - i}{3}$; a leképezés tehát **$z_0$ középpontú, $-2$ arányú középpontos hasonlóság**: $z - z_0 \mapsto -2(z - z_0)$.
- $z \mapsto (1 - i\sqrt3)z$: mivel $1 - i\sqrt3 = 2(\cos(-60^\circ) + i\sin(-60^\circ))$, ez **origó körüli $-60^\circ$-os (óramutató járásával egyező) forgatás és kétszeres nagyítás** (forgatva nyújtás).
- $z \mapsto \frac{1}{\overline z} = \frac{z}{|z|^2}$ ($z \neq 0$): a kép ugyanazon az origóból induló félegyenesen van, $\frac{1}{|z|}$ távolságra: **inverzió az egységkörre.**

::: elmelet
**Elméleti háttér — komplex leképezések geometriai jelentése.** $z \mapsto az + b$ ($a \ne 0$) **hasonlósági transzformáció**: $|a|$ arányú nyújtás, $\arg a$ szögű forgatás és eltolás; ha $a \ne 1$, van fixpontja, és körülötte forgatva nyújtás. $z \mapsto \overline z$ tükrözés a valós tengelyre. $z \mapsto \frac{1}{\overline z} = \frac{z}{|z|^2}$ az egységkörre vonatkozó **inverzió**: a pontot a saját félegyenesén $\frac{1}{|z|}$ távolságra viszi.
:::

## 24. feladat

Igazoljuk, hogy egy paralelogramma oldalai hosszának négyzetösszege ugyanaz, mint az átlói hosszának négyzetösszege, és fogalmazzuk meg a megfelelő komplex azonosságot.

**Megoldás.**

Legyen a paralelogramma négy csúcsa $0$, $u$, $v$, $u + v$ (komplex számok). Az oldalak hossza $|u|$ és $|v|$ (mindkettő kétszer), az átlóké $|u + v|$ és $|u - v|$. A megfelelő komplex azonosság:
$$|u + v|^2 + |u - v|^2 = 2|u|^2 + 2|v|^2.$$
*Bizonyítás:* $|w|^2 = w\overline w$ felhasználásával
$$|u \pm v|^2 = (u \pm v)(\overline u \pm \overline v) = |u|^2 + |v|^2 \pm (u\overline v + \overline u v),$$
és a két egyenlőséget összeadva a vegyes tagok kiesnek. $\blacksquare$

::: elmelet
**Elméleti háttér — $|w|^2 = w\overline w$ és a paralelogramma-szabály.** A hossznégyzetek $w\overline w$ alakban algebrai kifejezésekként kezelhetők: $|u \pm v|^2 = |u|^2 + |v|^2 \pm 2\operatorname{Re}(u\overline v)$, és összeadva a vegyes tag kiesik. A komplex számok vektorként kezelik a sík pontjait, így geometriai tételek algebrai azonosságokká válnak.
:::
