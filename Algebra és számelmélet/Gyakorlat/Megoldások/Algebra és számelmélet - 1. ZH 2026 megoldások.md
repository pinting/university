# Algebra és számelmélet – 1. ZH – megoldások

## 1. feladat

a) Invertáljuk a következő mátrixot:
$$A = \begin{pmatrix} \frac{2}{3} & \frac{1}{3} & -\frac{1}{3} \\ \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} \\ -\frac{1}{3} & \frac{1}{3} & \frac{1}{6} \end{pmatrix}$$

b) Oldjuk meg az alábbi egyenletrendszert:
$$\begin{aligned}
x + y &= -3 \\
x + 2z &= 9 \\
2y + 2z &= 6
\end{aligned}$$

**Megoldás.**

**a) A mátrix inverze:**
$$A^{-1} = \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 2 \\ 0 & 2 & 2 \end{pmatrix}.$$

*Levezetés Gauss–Jordan-eliminációval ($[A \mid I] \to [I \mid A^{-1}]$):*
$$\left(\begin{array}{ccc|ccc}
\frac{2}{3} & \frac{1}{3} & -\frac{1}{3} & 1 & 0 & 0 \\
\frac{1}{3} & -\frac{1}{3} & \frac{1}{3} & 0 & 1 & 0 \\
-\frac{1}{3} & \frac{1}{3} & \frac{1}{6} & 0 & 0 & 1
\end{array}\right)$$

1. Adjuk hozzá a második sort az elsőhöz ($S_1 \leftarrow S_1 + S_2$), valamint a harmadikhoz ($S_3 \leftarrow S_3 + S_2$):
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} & 0 & 1 & 0 \\
   0 & 0 & \frac{1}{2} & 0 & 1 & 1
   \end{array}\right)$$
2. Az első sor segítségével kinullázzuk a második sor első elemét: $S_2 \leftarrow S_2 - \frac{1}{3}S_1$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & -\frac{1}{3} & \frac{1}{3} & -\frac{1}{3} & \frac{2}{3} & 0 \\
   0 & 0 & \frac{1}{2} & 0 & 1 & 1
   \end{array}\right)$$
3. Szorozzuk a harmadik sort 2-vel: $S_3 \leftarrow 2S_3$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & -\frac{1}{3} & \frac{1}{3} & -\frac{1}{3} & \frac{2}{3} & 0 \\
   0 & 0 & 1 & 0 & 2 & 2
   \end{array}\right)$$
4. Vonjuk ki a harmadik sor $\frac{1}{3}$-szorosát a második sorból: $S_2 \leftarrow S_2 - \frac{1}{3}S_3$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & -\frac{1}{3} & 0 & -\frac{1}{3} & 0 & -\frac{2}{3} \\
   0 & 0 & 1 & 0 & 2 & 2
   \end{array}\right)$$
5. Végül szorozzuk a második sort $(-3)$-mal: $S_2 \leftarrow -3S_2$:
   $$\left(\begin{array}{ccc|ccc}
   1 & 0 & 0 & 1 & 1 & 0 \\
   0 & 1 & 0 & 1 & 0 & 2 \\
   0 & 0 & 1 & 0 & 2 & 2
   \end{array}\right)$$

*Ellenőrzés szorzással:*
$$A \cdot A^{-1} = \begin{pmatrix} \frac{2}{3} & \frac{1}{3} & -\frac{1}{3} \\ \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} \\ -\frac{1}{3} & \frac{1}{3} & \frac{1}{6} \end{pmatrix} \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 2 \\ 0 & 2 & 2 \end{pmatrix} = \begin{pmatrix} \frac{2+1}{3} & \frac{2-2}{3} & \frac{2-2}{3} \\ \frac{1-1}{3} & \frac{1+0}{3} + \frac{2}{3} & \frac{-2+2}{3} \\ \frac{-1+1}{3} & \frac{-1}{3} + \frac{2}{6} & \frac{2}{3} + \frac{2}{6} \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}.$$

---

**b) Az egyenletrendszer megoldása:**
$$\mathbf{x = -1, \quad y = -2, \quad z = 5}.$$

*Levezetés:*
Írjuk fel az egyenletrendszert mátrixos alakban:
$$\begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 2 \\ 0 & 2 & 2 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} -3 \\ 9 \\ 6 \end{pmatrix}.$$
Vegyük észre, hogy az együtthatómátrix pontosan az előző részfeladatban meghatározott $A^{-1}$ mátrix!
Az egyenlet tehát $A^{-1}\mathbf{v} = \mathbf{b}$ alakú, ahol $\mathbf{v} = (x, y, z)^T$ és $\mathbf{b} = (-3, 9, 6)^T$.

Mivel $(A^{-1})^{-1} = A$, mindkét oldalt balról megszorozva $A$-val:
$$\mathbf{v} = A \mathbf{b} = \begin{pmatrix} \frac{2}{3} & \frac{1}{3} & -\frac{1}{3} \\ \frac{1}{3} & -\frac{1}{3} & \frac{1}{3} \\ -\frac{1}{3} & \frac{1}{3} & \frac{1}{6} \end{pmatrix} \begin{pmatrix} -3 \\ 9 \\ 6 \end{pmatrix}.$$
Kiszámítva a szorzatot:
$$\begin{aligned}
x &= \frac{2}{3}(-3) + \frac{1}{3}(9) - \frac{1}{3}(6) = -2 + 3 - 2 = -1, \\
y &= \frac{1}{3}(-3) - \frac{1}{3}(9) + \frac{1}{3}(6) = -1 - 3 + 2 = -2, \\
z &= -\frac{1}{3}(-3) + \frac{1}{3}(9) + \frac{1}{6}(6) = 1 + 3 + 1 = 5.
\end{aligned}$$

::: elmelet
**Elméleti háttér — mátrixinverz és lineáris egyenletrendszerek.** Egy négyzetes $M$ mátrix invertálható, ha $\det M \ne 0$. A Gauss–Jordan-elimináció lépései elemi mátrixokkal való szorzásoknak felelnek meg, így az egységmátrixra ugyanazon műveleteket végezve $M^{-1}$-et kapjuk. Ha az $M\mathbf{x} = \mathbf{b}$ rendszerben $M = A^{-1}$, akkor közvetlenül $\mathbf{x} = A\mathbf{b}$.
:::

## 2. feladat

Határozzuk meg a 95 és 26 legnagyobb közös osztóját és írjuk fel $95x + 26y$ alakban valamely $x, y$ egész számokra.

**Megoldás.**

**$\mathbf{\lnko(95, 26) = 1}$, és felírása: $\mathbf{1 = 95 \cdot (-3) + 26 \cdot 11}$ (azaz $x = -3, y = 11$).**

*1. Euklideszi algoritmus a legnagyobb közös osztó meghatározására:*
$$\begin{aligned}
95 &= 3 \cdot 26 + 17 \\
26 &= 1 \cdot 17 + 9 \\
17 &= 1 \cdot 9 + 8 \\
9 &= 1 \cdot 8 + 1 \\
8 &= 8 \cdot 1 + 0
\end{aligned}$$
Az utolsó nem nulla maradék $1$, tehát $\lnko(95, 26) = 1$ (a két szám relatív prím).

*2. Kiterjesztett euklideszi algoritmus (visszahelyettesítés):*
Kifejezzük a maradékokat:
$$\begin{aligned}
17 &= 95 - 3 \cdot 26 \\
9 &= 26 - 17 = 26 - (95 - 3 \cdot 26) = -95 + 4 \cdot 26 \\
8 &= 17 - 9 = (95 - 3 \cdot 26) - (-95 + 4 \cdot 26) = 2 \cdot 95 - 7 \cdot 26 \\
1 &= 9 - 8 = (-95 + 4 \cdot 26) - (2 \cdot 95 - 7 \cdot 26) = -3 \cdot 95 + 11 \cdot 26
\end{aligned}$$

Tehát $x = -3$ és $y = 11$.

*Ellenőrzés:*
$$95 \cdot (-3) + 26 \cdot 11 = -285 + 286 = 1.$$

::: elmelet
**Elméleti háttér — Bézout-lemma és a kiterjesztett euklideszi algoritmus.** Bármely $a, b \in \mathbb{Z}$ egészekre léteznek olyan $x, y \in \mathbb{Z}$ egész számok, amelyekre $ax + by = \lnko(a, b)$. Ezen $x, y$ együtthatók az euklideszi algoritmus osztási lépéseinek visszafelé történő helyettesítésével szisztematikusan megkaphatók.
:::

## 3. feladat

Adjuk meg az $f(x) = 4x^4 + 12x^3 + 17x^2 + 10x + 2$ polinom racionális, majd összes komplex gyökét. Írjuk fel gyöktényezős alakban.

**Megoldás.**

- **Racionális gyök:** $\mathbf{x = -\frac{1}{2}}$ (multiplicitása 2).
- **Összes komplex gyök:** $\mathbf{-\frac{1}{2}}$ (kétszeres), $\mathbf{-1 + i}$ (egyszeres), $\mathbf{-1 - i}$ (egyszeres).
- **Gyöktényezős alak:**
  $$f(x) = 4\left(x + \frac{1}{2}\right)^2 (x + 1 - i)(x + 1 + i) = (2x + 1)^2 (x + 1 - i)(x + 1 + i).$$

*Levezetés:*

1. **Racionális gyökteszt:**
   Ha $\frac{p}{q}$ redukált tört gyöke $f(x)$-nek, akkor $p \mid 2$ és $q \mid 4$:
   $$p \in \{\pm 1, \pm 2\}, \quad q \in \{1, 2, 4\}.$$
   Mivel $f(x)$ minden együtthatója szigorúan pozitív, pozitív gyök nem létezhet ($x \ge 0 \implies f(x) \ge 2 > 0$).
   A lehetséges racionális gyökök tehát:
   $$-1, \quad -2, \quad -\frac{1}{2}, \quad -\frac{1}{4}.$$

2. **Horner-elrendezés $x = -\frac{1}{2}$-re:**
   $$\begin{array}{c|ccccc}
   & 4 & 12 & 17 & 10 & 2 \\
   -\frac{1}{2} & 4 & 10 & 12 & 4 & 0
   \end{array}$$
   A maradék $0$, tehát $x = -\frac{1}{2}$ gyök, és a hányadospolinom:
   $$g(x) = 4x^3 + 10x^2 + 12x + 4.$$

3. **Újabb Horner-lépés $x = -\frac{1}{2}$-re a hányadosra:**
   $$\begin{array}{c|cccc}
   & 4 & 10 & 12 & 4 \\
   -\frac{1}{2} & 4 & 8 & 8 & 0
   \end{array}$$
   A maradék ismét $0$, így $x = -\frac{1}{2}$ legalább kétszeres gyök, és a maradék másodfokú polinom:
   $$h(x) = 4x^2 + 8x + 8 = 4(x^2 + 2x + 2).$$

4. **A másodfokú tényező gyökei:**
   $$x^2 + 2x + 2 = 0 \implies x_{3,4} = \frac{-2 \pm \sqrt{4 - 8}}{2} = \frac{-2 \pm 2i}{2} = -1 \pm i.$$
   Mivel $-1 \pm i \notin \mathbb{R}$, ezek egyszeres komplex gyökök, és $-\frac{1}{2}$ pontosan kétszeres gyök.

::: elmelet
**Elméleti háttér — racionális gyökteszt és gyöktényezős alak.** Egész együtthatós $a_n x^n + \dots + a_0$ polinom racionális $p/q$ gyökeire $p \mid a_0$ és $q \mid a_n$. A gyökök megtalálása után a Horner-elrendezéssel faktoriálunk. A polinom gyöktényezős alakja $a_n \prod (x - \alpha_i)^{m_i}$, ahol $\alpha_i$ a komplex gyökök és $m_i$ a multiplicitásaik.
:::

## 4. feladat

Igazoljuk, hogy minden $n \ge 2$ természetes számra
$$\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right) = \frac{n + 1}{2n}.$$

**Megoldás.**

**1. módszer: Teljes indukcióval $n$ szerint.**

- **Bázis ($n = 2$):**
  A bal oldal: $1 - \frac{1}{2^2} = 1 - \frac{1}{4} = \frac{3}{4}$.
  A jobb oldal: $\frac{2 + 1}{2 \cdot 2} = \frac{3}{4}$.
  Az egyenlőség teljesül.
- **Indukciós feltevés:** Tegyük fel, hogy valamely $n \ge 2$-re igaz az állítás:
  $$\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right) = \frac{n + 1}{2n}.$$
- **Indukciós lépés ($n + 1$-re):**
  Számítsuk ki a szorzatot $n + 1$-ig:
  $$\prod_{k=2}^{n+1} \left(1 - \frac{1}{k^2}\right) = \left[\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right)\right] \cdot \left(1 - \frac{1}{(n+1)^2}\right).$$
  Az indukciós feltevést behelyettesítve:
  $$= \frac{n+1}{2n} \cdot \frac{(n+1)^2 - 1}{(n+1)^2} = \frac{n+1}{2n} \cdot \frac{n^2 + 2n}{(n+1)^2} = \frac{n+1}{2n} \cdot \frac{n(n+2)}{(n+1)^2}.$$
  Egyszerűsítve $(n+1)$-gyel és $n$-nel:
  $$= \frac{n+2}{2(n+1)} = \frac{(n+1) + 1}{2(n+1)}.$$
  Ez éppen a bizonyítandó formula $n + 1$-re. Ezzel az indukció kész. $\blacksquare$

---

**2. módszer: Teleszkopikus szorzatként közvetlenül.**
Alakítsuk szorzattá a tényezőket a számlálóban:
$$1 - \frac{1}{k^2} = \frac{k^2 - 1}{k^2} = \frac{(k - 1)(k + 1)}{k \cdot k} = \frac{k - 1}{k} \cdot \frac{k + 1}{k}.$$
A teljes szorzat két szorzatra esik szét:
$$\prod_{k=2}^n \left(1 - \frac{1}{k^2}\right) = \left(\prod_{k=2}^n \frac{k-1}{k}\right) \cdot \left(\prod_{k=2}^n \frac{k+1}{k}\right).$$
- Az első szorzat: $\frac{1}{2} \cdot \frac{2}{3} \cdot \frac{3}{4} \cdots \frac{n-1}{n} = \frac{1}{n}$.
- A második szorzat: $\frac{3}{2} \cdot \frac{4}{3} \cdot \frac{5}{4} \cdots \frac{n+1}{n} = \frac{n+1}{2}$.
A kettő szorzata:
$$\frac{1}{n} \cdot \frac{n+1}{2} = \frac{n+1}{2n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — teleszkopikus szorzatok és teljes indukció.** Egy szorzat akkor teleszkopikus, ha a szomszédos tényezők kiejtik egymást. A másodfokú algebrai azonosság ($k^2 - 1 = (k-1)(k+1)$) lineáris faktorokra bontja a tagokat, melyek számlálói és nevezői átlósan egyszerűsíthetők, csak a szélső tagokat hagyva meg.
:::

## 5. feladat

a) Milyen maradékot ad $11^{20262026}$ 45-tel osztva?

b) Mi a megoldása a $12x \equiv 5 \pmod{17}$ kongruenciának?

**Megoldás.**

**a) A keresett osztási maradék: $\mathbf{31}$.**

Mivel $45 = 9 \cdot 5$, és $\lnko(11, 45) = 1$, alkalmazhatjuk az **Euler–Fermat-tételt**:
$$\varphi(45) = \varphi(9 \cdot 5) = \varphi(3^2) \cdot \varphi(5) = (9 - 3)(5 - 1) = 6 \cdot 4 = 24.$$
Az Euler–Fermat-tétel szerint:
$$11^{24} \equiv 1 \pmod{45}.$$
Vizsgáljuk a kitevőt modulo 24:
$$20262026 = 24 \cdot 844251 + 2 \implies 20262026 \equiv 2 \pmod{24}.$$
Ezért:
$$11^{20262026} \equiv 11^2 = 121 \pmod{45}.$$
Mivel $121 = 2 \cdot 45 + 31$:
$$121 \equiv 31 \pmod{45}.$$
A maradék tehát **31**.

---

**b) A kongruencia megoldása: $\mathbf{x \equiv 16 \equiv -1 \pmod{17}}$.**

*1. módszer (elemi kongruencia-átalakítás):*
Mivel $12 \equiv -5 \pmod{17}$:
$$12x \equiv 5 \pmod{17} \iff -5x \equiv 5 \pmod{17}.$$
Mivel $\lnko(-5, 17) = 1$, oszthatunk $(-5)$-tel:
$$x \equiv -1 \equiv 16 \pmod{17}.$$

*2. módszer (inverz keresése a kis Fermat-tétellel):*
Mivel 17 prím és $\lnko(12, 17) = 1$, a kis Fermat-tétel szerint $12^{16} \equiv 1 \pmod{17}$.
Így $12^{-1} \equiv 12^{15} \pmod{17}$, és a megoldás:
$$x \equiv 12^{15} \cdot 5 \pmod{17}.$$
Gyors hatványozással modulo 17 ($12 \equiv -5$):
$$\begin{aligned}
12^2 &= 144 \equiv 8 \pmod{17}, \\
12^4 &\equiv 8^2 = 64 \equiv 13 \pmod{17}, \\
12^8 &\equiv 13^2 = 169 \equiv 16 \equiv -1 \pmod{17}.
\end{aligned}$$
Ekkor:
$$12^{15} = 12^8 \cdot 12^4 \cdot 12^2 \cdot 12^1 \equiv (-1) \cdot 13 \cdot 8 \cdot 12 \equiv (-1) \cdot 13 \cdot 96 \equiv (-1) \cdot 13 \cdot 11 = -143 \equiv 10 \pmod{17}.$$
Tehát:
$$x \equiv 10 \cdot 5 = 50 \equiv 16 \equiv -1 \pmod{17}.$$

::: elmelet
**Elméleti háttér — Euler–Fermat-tétel és lineáris kongruenciák.** Ha $\lnko(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1 \pmod m$, így a kitevő modulo $\varphi(m)$ redukálható. Az $ax \equiv b \pmod m$ lineáris kongruencia pontosan akkor oldható meg, ha $d = \lnko(a, m) \mid b$; ekkor $d$ darab megoldás van modulo $m$. Ha $m$ prím és $p \nmid a$, a megoldás egyértelmű modulo $p$.
:::

## 6. feladat

Mik a $z = -50\sqrt{3} - 50i$ komplex szám ötödik gyökei? A gyököket trigonometrikus alakban adjuk meg és ábrázoljuk őket vázlatosan a komplex számsíkon.

**Megoldás.**

Írjuk fel $z$-t trigonometrikus alakban:
- Abszolút érték:
  $$r = |z| = \sqrt{(-50\sqrt{3})^2 + (-50)^2} = \sqrt{7500 + 2500} = \sqrt{10000} = 100.$$
- Főérték (szög):
  $$\cos \varphi = \frac{-50\sqrt{3}}{100} = -\frac{\sqrt{3}}{2}, \quad \sin \varphi = \frac{-50}{100} = -\frac{1}{2}.$$
  Mivel mind a valós, mind a képzetes rész negatív, $z$ a 3. síknegyedbe esik:
  $$\varphi = \pi + \frac{\pi}{6} = \frac{7\pi}{6} = 210^\circ.$$
Így $z = 100 \left(\cos \frac{7\pi}{6} + i \sin \frac{7\pi}{6}\right)$.

A komplex gyökvonás képlete szerint az ötödik gyökök ($k = 0, 1, 2, 3, 4$):
$$w_k = \sqrt[5]{100} \left(\cos \frac{\frac{7\pi}{6} + 2k\pi}{5} + i \sin \frac{\frac{7\pi}{6} + 2k\pi}{5}\right) = \sqrt[5]{100} \left(\cos \frac{7\pi + 12k\pi}{30} + i \sin \frac{7\pi + 12k\pi}{30}\right).$$

A gyökök kifejtve:
- $\mathbf{k = 0: \quad w_1 = \sqrt[5]{100} \left(\cos \frac{7\pi}{30} + i \sin \frac{7\pi}{30}\right)} = \sqrt[5]{100} (\cos 42^\circ + i \sin 42^\circ)$
- $\mathbf{k = 1: \quad w_2 = \sqrt[5]{100} \left(\cos \frac{19\pi}{30} + i \sin \frac{19\pi}{30}\right)} = \sqrt[5]{100} (\cos 114^\circ + i \sin 114^\circ)$
- $\mathbf{k = 2: \quad w_3 = \sqrt[5]{100} \left(\cos \frac{31\pi}{30} + i \sin \frac{31\pi}{30}\right)} = \sqrt[5]{100} (\cos 186^\circ + i \sin 186^\circ)$
- $\mathbf{k = 3: \quad w_4 = \sqrt[5]{100} \left(\cos \frac{43\pi}{30} + i \sin \frac{43\pi}{30}\right)} = \sqrt[5]{100} (\cos 258^\circ + i \sin 258^\circ)$
- $\mathbf{k = 4: \quad w_5 = \sqrt[5]{100} \left(\cos \frac{55\pi}{30} + i \sin \frac{55\pi}{30}\right)} = \sqrt[5]{100} \left(\cos \frac{11\pi}{6} + i \sin \frac{11\pi}{6}\right) = \sqrt[5]{100} (\cos 330^\circ + i \sin 330^\circ)$

**Geometriai ábrázolás a komplex számsíkon:**
A gyökök egy origó középpontú, $R = \sqrt[5]{100} \approx 2{,}512$ sugarú körön helyezkednek el, és egy **szabályos ötszög** csúcsait alkotják. A szomszédos gyökök szögtávolsága $\frac{2\pi}{5} = 72^\circ$. Az első gyök a pozitív valós tengelyhez képest $42^\circ$-os szögben áll az 1. síknegyedben.

::: elmelet
**Elméleti háttér — komplex gyökvonás geometriája.** Ha $z = r(\cos\varphi + i\sin\varphi)$, akkor $\sqrt[n]{z}$ értékei $\sqrt[n]{r}\left(\cos\frac{\varphi + 2k\pi}{n} + i\sin\frac{\varphi + 2k\pi}{n}\right)$ ($k = 0, \dots, n-1$). Geometriailag ezek egy $\sqrt[n]{r}$ sugarú körbe írt szabályos $n$-szög csúcsai, melyek $2\pi/n$ szöggel vannak elforgatva egymáshoz képest.
:::

## 7. feladat

Egy $A \in \mathbb{C}^{3 \times 3}$ mátrix transzponált konjugáltja $A^* = \overline{A^T}$, ahol a konjugálás mátrixelemenkénti konjugálást jelent. Igazoljuk, hogy tetszőleges $A, B \in \mathbb{C}^{3 \times 3}$ mátrixokra:

a) $(A + B)^* = A^* + B^*$,

b) tetszőleges $c \in \mathbb{C}$ komplex számra $(cA)^* = \overline{c}A^*$,

c) $(A^*)^* = A$,

d) $(AB)^* = B^* A^*$,

e) ha $A$ invertálható, akkor $A^*$ is invertálható és $(A^*)^{-1} = (A^{-1})^*$,

f) $\det(A^*) = \overline{\det(A)}$.

**Megoldás.**

Jelölje $A$ elemeit $a_{ij}$, $B$ elemeit $b_{ij}$. Ekkor a definíció szerint $(A^*)_{ij} = \overline{a_{ji}}$.

**a) $(A + B)^* = A^* + B^*$:**
Az $(i, j)$-edik elemre a transzponálás és a konjugálás linearitása miatt:
$$((A + B)^*)_{ij} = \overline{(A + B)^T_{ij}} = \overline{(A + B)_{ji}} = \overline{a_{ji} + b_{ji}} = \overline{a_{ji}} + \overline{b_{ji}} = (A^*)_{ij} + (B^*)_{ij}.$$
Mivel ez minden $(i, j)$ párra teljesül, $(A + B)^* = A^* + B^*$. $\blacksquare$

**b) $(cA)^* = \overline{c}A^*$:**
A definíció szerint:
$$((cA)^*)_{ij} = \overline{(cA)^T_{ij}} = \overline{(cA)_{ji}} = \overline{c \cdot a_{ji}} = \overline{c} \cdot \overline{a_{ji}} = \overline{c} \cdot (A^*)_{ij} = (\overline{c}A^*)_{ij}.$$
Tehát $(cA)^* = \overline{c}A^*$. $\blacksquare$

**c) $(A^*)^* = A$:**
A kettős transzponálás és kettős konjugálás tulajdonságaiból:
$$((A^*)^*)_{ij} = \overline{(A^*)_{ji}} = \overline{\overline{a_{ij}}} = a_{ij} = (A)_{ij}.$$
Tehát $(A^*)^* = A$. $\blacksquare$

**d) $(AB)^* = B^* A^*$:**
A mátrixszorzás definíciója szerint $(AB)_{ji} = \sum_{k=1}^3 a_{jk} b_{ki}$.
Ekkor az $(i, j)$-edik elem:
$$((AB)^*)_{ij} = \overline{(AB)^T_{ij}} = \overline{(AB)_{ji}} = \overline{\sum_{k=1}^3 a_{jk} b_{ki}} = \sum_{k=1}^3 \overline{a_{jk} b_{ki}} = \sum_{k=1}^3 \overline{b_{ki}} \cdot \overline{a_{jk}}.$$
Mivel $\overline{b_{ki}} = (B^*)_{ik}$ és $\overline{a_{jk}} = (A^*)_{kj}$:
$$((AB)^*)_{ij} = \sum_{k=1}^3 (B^*)_{ik} (A^*)_{kj} = (B^* A^*)_{ij}.$$
Ez minden koordinátára igaz, így $(AB)^* = B^* A^*$. $\blacksquare$

**e) Ha $A$ invertálható, akkor $A^*$ is invertálható és $(A^*)^{-1} = (A^{-1})^*$:**
Mivel $A$ invertálható, létezik $A^{-1}$, amelyre $A A^{-1} = A^{-1} A = I$, ahol $I$ a $3 \times 3$-as egységmátrix.
Alkalmazzuk mindkét egyenlőségre a d) pontban igazolt szorzási szabályt:
$$(A A^{-1})^* = (A^{-1})^* A^* \quad \text{és} \quad I^* = \overline{I^T} = \overline{I} = I.$$
Így:
$$(A^{-1})^* A^* = I.$$
Hasonlóan a másik sorrendre:
$$(A^{-1} A)^* = A^* (A^{-1})^* = I^* = I.$$
Mivel $(A^{-1})^*$ mindkét oldalról megszorozva $A^*$-ot az egységmátrixot adja, az invertálhatóság definíciója szerint $A^*$ invertálható, és inverze
$$(A^*)^{-1} = (A^{-1})^*. \quad \blacksquare$$

**f) $\det(A^*) = \overline{\det(A)}$:**
A transzponált mátrix determinánsa megegyezik az eredeti mátrix determinánsával: $\det(M^T) = \det(M)$.
Ezért:
$$\det(A^*) = \det(\overline{A^T}) = \det(\overline{A}^T) = \det(\overline{A}).$$
A determináns Leibniz-féle permutációs definíciója szerint:
$$\det(\overline{A}) = \sum_{\sigma \in S_3} \operatorname{sgn}(\sigma) \prod_{i=1}^3 \overline{a_{i,\sigma(i)}}.$$
Mivel az összeg és szorzat konjugáltja megegyezik a konjugáltak összegével és szorzatával, valamint $\operatorname{sgn}(\sigma) \in \{+1, -1\} \subset \mathbb{R}$:
$$\det(\overline{A}) = \overline{\sum_{\sigma \in S_3} \operatorname{sgn}(\sigma) \prod_{i=1}^3 a_{i,\sigma(i)}} = \overline{\det(A)}.$$
Tehát $\det(A^*) = \overline{\det(A)}$. $\blacksquare$

::: elmelet
**Elméleti háttér — adjungált (Hermite-féle transzponált) tulajdonságai.** A komplex vektorterekben a transzponálás természetes megfelelője a transzponált konjugált (más néven Hermite-féle adjungált, $A^* = A^H$). A művelet anti-lineáris és anti-multiplikatív ($(AB)^* = B^*A^*$), a determinánst pedig komplex konjugálja. Azok a mátrixok, amelyekre $A^* = A$, az önadjungált (vagy Hermite-féle) mátrixok, amelyek a valós szimmetrikus mátrixok komplex megfelelői.
:::
