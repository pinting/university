# Algebra és számelmélet – 1. ZH (2023) – megoldások

### Bsc algebra és számelmélet normál gyakorlat · Első zárthelyi (2023. október 20.)

## 1. feladat

a) Adjuk meg a $19x + 35y = 149$ egyenlet összes megoldását, majd azokat, ahol $x$ és $y$ is pozitív egész.

b) Számítsuk ki $16^{123456789123}$ osztási maradékát 36-tal osztva.

**Megoldás.**

**a) Az összes egész megoldás:**
$$\mathbf{x = 6 + 35u, \quad y = 1 - 19u \quad (u \in \mathbb{Z})}.$$
**Az egyetlen pozitív egész megoldás:**
$$\mathbf{x = 6, \quad y = 1}.$$

*Levezetés:*
1. Keressük a $19x + 35y = 1$ egyenlet megoldását a kiterjesztett euklideszi algoritmussal:
   $$\begin{aligned}
   35 &= 1 \cdot 19 + 16 \\
   19 &= 1 \cdot 16 + 3 \\
   16 &= 5 \cdot 3 + 1
   \end{aligned}$$
   Visszafelé kifejezve:
   $$1 = 16 - 5 \cdot 3 = 16 - 5(19 - 16) = 6 \cdot 16 - 5 \cdot 19 = 6(35 - 19) - 5 \cdot 19 = 6 \cdot 35 - 11 \cdot 19.$$
   Tehát $19 \cdot (-11) + 35 \cdot 6 = 1$.
2. Partikuláris megoldás keresése modulo 35 kongruenciával:
   $$19x \equiv 149 \equiv 9 \pmod{35}.$$
   Mivel $19 \cdot (-11) \equiv 1 \pmod{35}$:
   $$x \equiv 9 \cdot (-11) = -99 \equiv -99 + 3 \cdot 35 = -99 + 105 = 6 \pmod{35}.$$
   Ha $x = 6$, akkor:
   $$19 \cdot 6 + 35y = 149 \implies 114 + 35y = 149 \implies 35y = 35 \implies y = 1.$$
   Egy partikuláris megoldás tehát $x_0 = 6, y_0 = 1$.
3. Az általános megoldás:
   Mivel $\lnko(19, 35) = 1$:
   $$x = 6 + 35u, \quad y = 1 - 19u \quad (u \in \mathbb{Z}).$$
4. Pozitív egész megoldások ($x > 0, y > 0$):
   $$\begin{aligned}
   x > 0 &\iff 6 + 35u \ge 1 \iff 35u \ge -5 \iff u \ge 0, \\
   y > 0 &\iff 1 - 19u \ge 1 \iff 19u \le 0 \iff u \le 0.
   \end{aligned}$$
   Az egyetlen lehetséges egész paraméter $u = 0$, amely az $x = 6, y = 1$ megoldást adja.

---

**b) A keresett osztási maradék: $\mathbf{28}$.**

Mivel $36 = 4 \cdot 9$ és $\lnko(4, 9) = 1$, a kínai maradéktétel szerint elegendő a maradékot modulo 4 és modulo 9 meghatározni.

1. **Modulo 4:**
   Mivel $16 = 4 \cdot 4 \equiv 0 \pmod 4$, tetszőleges $N \ge 1$ pozitív egészre:
   $$16^N \equiv 0 \pmod 4.$$
2. **Modulo 9:**
   Mivel $\lnko(16, 9) = 1$, alkalmazható az Euler–Fermat-tétel. $\varphi(9) = 9(1 - 1/3) = 6$, így:
   $$16^6 \equiv 1 \pmod 9.$$
   Vizsgáljuk a kitevőt, $N = 123456789123$-at modulo 6:
   - A szám páratlan (az utolsó jegye 3), így $N \equiv 1, 3 \text{ vagy } 5 \pmod 6$.
   - A számjegyeinek összege:
     $$1+2+3+4+5+6+7+8+9+1+2+3 = 45 + 6 = 51.$$
     Mivel $3 \mid 51$, a szám osztható 3-mal: $3 \mid N$.
   - Egy szám pontosan akkor osztható 3-mal és páratlan, ha modulo 6 kongruens 3-mal:
     $$N \equiv 3 \pmod 6.$$
   Ezért:
   $$16^N \equiv 16^3 \equiv (-2)^3 = -8 \equiv 1 \pmod 9.$$
3. **Összevetés (kínai maradéktétel):**
   Olyan $X \in \{0, 1, \dots, 35\}$ maradékot keresünk, amelyre:
   $$\begin{cases} X \equiv 0 \pmod 4 \\ X \equiv 1 \pmod 9 \end{cases}$$
   A modulo 9-ben 1 maradékot adó számok $0$ és $35$ között: $1, 10, 19, 28$.
   Ezek közül néggyel csak a **28** osztható ($28 = 4 \cdot 7$).
   Tehát $16^{123456789123} \equiv 28 \pmod{36}$.

::: elmelet
**Elméleti háttér — lineáris diofantikus egyenletek és kínai maradéktétel.** Az $ax + by = c$ egyenlet pontosan akkor oldható meg egészben, ha $d = \lnko(a, b) \mid c$. Ekkor az általános megoldás $x = x_0 + \frac{b}{d}u$, $y = y_0 - \frac{a}{d}u$. Összetett modulus ($m = m_1 m_2$, relatív prím tényezőkkel) szerinti hatványozásnál a maradékot külön-külön kiszámítjuk a prímhatvány-tényezőkre (Euler–Fermat-tétellel), majd a kínai maradéktétellel egyesítjük.
:::

## 2. feladat

a) Számítsuk ki (trigonometrikus alakban) és ábrázoljuk a $-32$ komplex szám összes ötödik gyökét.

b) Ábrázoljuk azoknak a $z$ komplex számoknak a halmazát a síkon, melyekre $|z + 1| \le |\overline{z} - 1 - i|$.

**Megoldás.**

**a) A $-32$ ötödik gyökei:**
A $-32$ trigonometrikus alakja:
$$-32 = 32(\cos 180^\circ + i \sin 180^\circ) = 2^5(\cos \pi + i \sin \pi).$$
Az ötödik gyökök ($k = 0, 1, 2, 3, 4$):
$$w_k = 2\left(\cos \frac{180^\circ + 360^\circ k}{5} + i \sin \frac{180^\circ + 360^\circ k}{5}\right).$$
- $\mathbf{k = 0: \quad w_0 = 2(\cos 36^\circ + i \sin 36^\circ)}$
- $\mathbf{k = 1: \quad w_1 = 2(\cos 108^\circ + i \sin 108^\circ)}$
- $\mathbf{k = 2: \quad w_2 = 2(\cos 180^\circ + i \sin 180^\circ) = -2}$
- $\mathbf{k = 3: \quad w_3 = 2(\cos 252^\circ + i \sin 252^\circ)}$
- $\mathbf{k = 4: \quad w_4 = 2(\cos 324^\circ + i \sin 324^\circ)}$

*Ábrázolás:* Origó középpontú, 2 sugarú körbe írt szabályos ötszög csúcsai, melynek egyik csúcsa a valós tengelyen a $-2$ pontban található.

---

**b) A ponthalmaz meghatározása és ábrázolása:**

**1. módszer (algebrai koordinátákkal):**
Legyen $z = x + iy$ ($x, y \in \mathbb{R}$). Ekkor:
- $|z + 1| = |(x + 1) + iy| \implies |z + 1|^2 = (x + 1)^2 + y^2$.
- $\overline{z} - 1 - i = (x - iy) - 1 - i = (x - 1) - i(y + 1) \implies |\overline{z} - 1 - i|^2 = (x - 1)^2 + (y + 1)^2$.

Az egyenlőtlenséget négyzetre emelve:
$$(x + 1)^2 + y^2 \le (x - 1)^2 + (y + 1)^2$$
$$x^2 + 2x + 1 + y^2 \le x^2 - 2x + 1 + y^2 + 2y + 1$$
$$2x \le -2x + 2y + 1 \implies 2y \ge 4x - 1 \implies \mathbf{y \ge 2x - \frac{1}{2}}.$$

**2. módszer (geometriai értelmezés):**
Használjuk fel, hogy tetszőleges $w$ komplex számra $|\overline{w}| = |w|$:
$$|\overline{z} - 1 - i| = |\overline{z - (1 - i)}| = |z - (1 - i)|.$$
Az egyenlőtlenség tehát:
$$|z - (-1)| \le |z - (1 - i)|.$$
Ez a sík azon pontjainak halmaza, amelyek közelebb vannak (vagy egyenlő távolságra) a $u_1 = -1$ ponthoz, mint a $u_2 = 1 - i$ ponthoz.
A határoló vonal a $-1$ és $1 - i$ pontokat összekötő szakasz **felezőmerőlegese**:
- Felezőpont: $\frac{-1 + (1 - i)}{2} = -\frac{1}{2}i$, azaz $\left(0, -\frac{1}{2}\right)$.
- Irányvektor a két pont között: $(1 - i) - (-1) = 2 - i$, iránya $(2, -1)$, így a felezőmerőleges normálvektora $(2, -1)$.
- A határoló egyenes egyenlete: $2x - y = 2(0) - \left(-\frac{1}{2}\right) = \frac{1}{2} \implies y = 2x - \frac{1}{2}$.

*Ábrázolás:* Az $\mathbf{y = 2x - \frac{1}{2}}$ **egyenes és az általa határolt zárt felső félsík** (beleértve magát a határvonalat is).

::: elmelet
**Elméleti háttér — komplex egyenlőtlenségek geometriája.** A $|z - a| \le |z - b|$ egyenlőtlenség geometriailag az $a$ és $b$ pontok Voronoj-celláját (felezőmerőleges által határolt félsíkot) írja le. A $|\overline{w}| = |w|$ azonosság révén a konjugáltat tartalmazó kifejezések gyakran visszavezethetők standard ponttávolságokra.
:::

## 3. feladat

a) Ha $a$ és $b$ relatív prímek, akkor mik $7a + 5b$ és $5a + 3b$ legnagyobb közös osztójának lehetséges (pozitív) értékei? Mindegyikhez adjunk is meg egy-egy konkrét $a$ és $b$ egész számot, ami megvalósítja.

b) Mely $n \ge 0$ egészekre lesz $(n^7 - n + 5)^6 + 6$ prímszám?

**Megoldás.**

**a) A lehetséges értékek: $\mathbf{1, \ 2, \ 4}$.**

*Indoklás:*
Legyen $d = \lnko(7a + 5b, \ 5a + 3b)$. Ekkor $d$ osztója a kifejezések bármely egész együtthatós lineáris kombinációjának:
$$\begin{aligned}
d &\mid 5(7a + 5b) - 7(5a + 3b) = (35a + 25b) - (35a + 21b) = 4b, \\
d &\mid 3(7a + 5b) - 5(5a + 3b) = (21a + 15b) - (25a + 15b) = -4a \implies d \mid 4a.
\end{aligned}$$
Mivel $d \mid 4a$ és $d \mid 4b$, így $d$ osztója a legnagyobb közös osztójuknak is:
$$d \mid \lnko(4a, 4b) = 4 \lnko(a, b) = 4 \cdot 1 = 4.$$
Mivel $d$ pozitív egész és $d \mid 4$, a lehetséges értékek a 4 pozitív osztói: **1, 2 és 4**.

*Megvalósítás konkrét relatív prím $a, b$ párokkal:*
- **$d = 1$:** Legyen $a = 1, b = 2$ ($\lnko(1, 2) = 1$).
  $$7(1) + 5(2) = 17, \quad 5(1) + 3(2) = 11 \implies \lnko(17, 11) = 1.$$
- **$d = 2$:** Legyen $a = 1, b = 3$ ($\lnko(1, 3) = 1$).
  $$7(1) + 5(3) = 22, \quad 5(1) + 3(3) = 14 \implies \lnko(22, 14) = 2.$$
- **$d = 4$:** Legyen $a = 1, b = 1$ ($\lnko(1, 1) = 1$).
  $$7(1) + 5(1) = 12, \quad 5(1) + 3(1) = 8 \implies \lnko(12, 8) = 4.$$

---

**b) Egyetlen $n \ge 0$ egészre sem lesz prímszám (nincs ilyen $n$).**

*Indoklás:*
Vizsgáljuk a kifejezést modulo 7:
1. Mivel 7 prím, a kis Fermat-tétel szerint minden $n \in \mathbb{Z}$-re $n^7 \equiv n \pmod 7$.
   Ezért a belső alap:
   $$n^7 - n + 5 \equiv n - n + 5 = 5 \pmod 7.$$
2. Mivel $\lnko(5, 7) = 1$, a kis Fermat-tétel szerint $5^{7-1} = 5^6 \equiv 1 \pmod 7$.
   Így:
   $$(n^7 - n + 5)^6 + 6 \equiv 5^6 + 6 \equiv 1 + 6 = 7 \equiv 0 \pmod 7.$$
   Tehát a kifejezés **minden $n \ge 0$ egészre osztható 7-tel**.

3. Vizsgáljuk a kifejezés nagyságát:
   Minden $n \ge 0$ egészre $n^7 - n = n(n^6 - 1) \ge 0$ (hiszen $n = 0$-ra és $n = 1$-re $0$, $n \ge 2$-re pedig szigorúan pozitív).
   Így az alap legalább 5:
   $$n^7 - n + 5 \ge 5.$$
   Ezért:
   $$(n^7 - n + 5)^6 + 6 \ge 5^6 + 6 = 15\,625 + 6 = 15\,631 > 7.$$

Mivel a kifejezés értéke minden $n \ge 0$-ra 7-nél szigorúan nagyobb és osztható 7-tel, **összetett szám**, így soha nem lehet prím.

::: elmelet
**Elméleti háttér — kis Fermat-tétel és determináns-módszer lnko-ra.** Két kifejezés, $A = c_1 a + d_1 b$ és $B = c_2 a + d_2 b$ közös osztója osztja a mátrix determinánsát: $\det \begin{pmatrix} 7 & 5 \\ 5 & 3 \end{pmatrix} = 21 - 25 = -4$, így $d \mid 4 \lnko(a, b)$. A prímteszteknél az $n^p - n \equiv 0 \pmod p$ azonosság azonnal mutatja, hogy a polinom értékének maradéka független $n$-től.
:::

## 4. feladat

Adjuk meg Gauss-eliminációval az
$$\begin{pmatrix} 2 & 1 \\ 2 & 1 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 1 & 2 \end{pmatrix}$$
lineáris egyenletrendszer általános megoldását. Jelezzük is, melyek a szabad változók.

**Megoldás.**

**A szabad változók: $u$ és $v$ (tetszőleges valós számok).**
**A kötött változók kifejezése:**
$$\mathbf{x = \frac{v}{2}, \quad y = u + \frac{v}{2}}.$$
*(Általános megoldás: $\begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} v/2 & u + v/2 \\ u & v \end{pmatrix}$, ahol $u, v \in \mathbb{R}$.)*

*Levezetés:*
Végezzük el a mátrixszorzásokat mindkét oldalon:
- Bal oldal:
  $$\begin{pmatrix} 2 & 1 \\ 2 & 1 \end{pmatrix} \begin{pmatrix} x & y \\ u & v \end{pmatrix} = \begin{pmatrix} 2x + u & 2y + v \\ 2x + u & 2y + v \end{pmatrix}.$$
- Jobb oldal:
  $$\begin{pmatrix} x & y \\ u & v \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 1 & 2 \end{pmatrix} = \begin{pmatrix} x + y & 2x + 2y \\ u + v & 2u + 2v \end{pmatrix}.$$

Egyenlővé téve a megfelelő pozíciókat:
$$\begin{aligned}
(1, 1): \quad 2x + u &= x + y \implies x - y + u = 0 \\
(1, 2): \quad 2y + v &= 2x + 2y \implies -2x + v = 0 \\
(2, 1): \quad 2x + u &= u + v \implies 2x - v = 0 \\
(2, 2): \quad 2y + v &= 2u + 2v \implies 2y - 2u - v = 0
\end{aligned}$$

Írjuk fel a kibővített mátrixot az $(x, y, u, v)$ változósorrendben:
$$\left(\begin{array}{cccc|c}
1 & -1 & 1 & 0 & 0 \\
-2 & 0 & 0 & 1 & 0 \\
2 & 0 & 0 & -1 & 0 \\
0 & 2 & -2 & -1 & 0
\end{array}\right)$$

Gauss-elimináció lépései:
1. $S_3 \leftarrow S_3 + S_2$: a 3. sor csupa 0 lesz: $(0, 0, 0, 0 \mid 0)$, majd cseréljük fel a 3. és a 4. sort ($S_3 \leftrightarrow S_4$), hogy a zérussor alulra kerüljön.
2. $S_2 \leftarrow S_2 + 2S_1$:
   $$\left(\begin{array}{cccc|c}
   1 & -1 & 1 & 0 & 0 \\
   0 & -2 & 2 & 1 & 0 \\
   0 & 2 & -2 & -1 & 0 \\
   0 & 0 & 0 & 0 & 0
   \end{array}\right)$$
3. $S_3 \leftarrow S_3 + S_2$:
   $$\left(\begin{array}{cccc|c}
   1 & -1 & 1 & 0 & 0 \\
   0 & -2 & 2 & 1 & 0 \\
   0 & 0 & 0 & 0 & 0 \\
   0 & 0 & 0 & 0 & 0
   \end{array}\right)$$

A lépcsős alakból leolvasható:
- A rang 2, így a 4 változóból $4 - 2 = 2$ darab **szabad változó** van: válasszuk az **$u$ és $v$** változókat szabad paraméternek.
- A második egyenletből:
  $$-2y + 2u + v = 0 \implies 2y = 2u + v \implies y = u + \frac{v}{2}.$$
- Az első egyenletből:
  $$x = y - u = \left(u + \frac{v}{2}\right) - u = \frac{v}{2}.$$

::: elmelet
**Elméleti háttér — homogén lineáris egyenletrendszer megoldásaltere.** Homogén rendszernél az oszlopok száma $n$, a rang $r$. A szabad változók száma $n - r$, a megoldások alteret alkotnak $\mathbb{R}^n$-ben, melynek dimenziója $n - r = 4 - 2 = 2$.
:::

## 5. feladat

Határozzuk meg $9x^4 + 15x^3 + 16x^2 + 7x + 1$ racionális, majd az összes komplex gyökeit is, és ezek multiplicitását.

**Megoldás.**

- **Racionális gyök:** $\mathbf{x = -\frac{1}{3}}$ (multiplicitása 2).
- **Összes komplex gyök:**
  - $\mathbf{x_1 = x_2 = -\frac{1}{3}}$ (kétszeres valós/racionális gyök),
  - $\mathbf{x_3 = -\frac{1}{2} + i\frac{\sqrt{3}}{2}}$ (egyszeres komplex gyök),
  - $\mathbf{x_4 = -\frac{1}{2} - i\frac{\sqrt{3}}{2}}$ (egyszeres komplex gyök).

*Levezetés:*
Jelölje a polinomot $P(x) = 9x^4 + 15x^3 + 16x^2 + 7x + 1$.

1. **Racionális gyökteszt:**
   Ha $\frac{p}{q}$ redukált tört gyöke $P(x)$-nek, akkor $p \mid 1 \implies p \in \{\pm 1\}$ és $q \mid 9 \implies q \in \{1, 3, 9\}$.
   Mivel $P(x)$ minden együtthatója pozitív, pozitív gyök nem lehet. A lehetséges racionális gyökök:
   $$-1, \quad -\frac{1}{3}, \quad -\frac{1}{9}.$$

2. **Horner-elrendezés $x = -\frac{1}{3}$-ra:**
   $$\begin{array}{c|ccccc}
   & 9 & 15 & 16 & 7 & 1 \\
   -\frac{1}{3} & 9 & 12 & 12 & 3 & 0
   \end{array}$$
   A maradék $0$, tehát $x = -\frac{1}{3}$ gyök, és a hányadospolinom:
   $$Q(x) = 9x^3 + 12x^2 + 12x + 3 = 3(3x^3 + 4x^2 + 4x + 1).$$

3. **Újabb Horner-lépés a $3x^3 + 4x^2 + 4x + 1$ polinomra $-\frac{1}{3}$-mal:**
   $$\begin{array}{c|cccc}
   & 3 & 4 & 4 & 1 \\
   -\frac{1}{3} & 3 & 3 & 3 & 0
   \end{array}$$
   A maradék ismét $0$, tehát $-\frac{1}{3}$ legalább kétszeres gyök, és a kapott hányados:
   $$3x^2 + 3x + 3 = 3(x^2 + x + 1).$$

4. **A másodfokú tényező gyökei:**
   $$x^2 + x + 1 = 0 \implies x_{3,4} = \frac{-1 \pm \sqrt{1 - 4}}{2} = -\frac{1}{2} \pm i\frac{\sqrt{3}}{2}.$$
   Mivel $-\frac{1}{3}$ nem gyöke $x^2 + x + 1$-nek ($(-1/3)^2 + (-1/3) + 1 = 7/9 \ne 0$), a $-\frac{1}{3}$ multiplicitása pontosan 2.
   A másik két gyök nem valós, egymás konjugáltjai, és mindkettő multiplicitása 1 (harmadik primitív egységgyökök).

A polinom gyöktényezős felbontása:
$$P(x) = (3x + 1)^2 (x^2 + x + 1) = 9\left(x + \frac{1}{3}\right)^2 \left(x + \frac{1}{2} - i\frac{\sqrt{3}}{2}\right)\left(x + \frac{1}{2} + i\frac{\sqrt{3}}{2}\right).$$

::: elmelet
**Elméleti háttér — racionális gyökteszt és körosztási polinomok.** A racionális gyökök leválasztása után megmaradó $x^2 + x + 1$ polinom a harmadik körosztási polinom ($\Phi_3(x)$), melynek gyökei a primitív 3. egységgyökök: $\varepsilon = \cos\frac{2\pi}{3} + i\sin\frac{2\pi}{3} = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$ és $\overline{\varepsilon}$.
:::

## 6. feladat

Oldjuk meg az $x^2 + 5xy + 6y^2 = 3$ diofantikus egyenletet.

**Megoldás.**

**A megoldások: $\mathbf{(x, y) \in \{(3, -2), \ (-3, 2), \ (7, -2), \ (-7, 2)\}}$.**

*Levezetés:*
Bontsuk szorzattá a bal oldali másodfokú homogén kifejezést:
$$x^2 + 5xy + 6y^2 = (x + 2y)(x + 3y).$$
Az egyenlet tehát:
$$(x + 2y)(x + 3y) = 3.$$
Mivel $x, y \in \mathbb{Z}$, a tényezők ($x + 2y$ és $x + 3y$) szintén egész számok.
A 3 prím, így egész osztói a $\{1, -1, 3, -3\}$ számok. Négy eset lehetséges:

1. **Eset 1:** $\begin{cases} x + 2y = 1 \\ x + 3y = 3 \end{cases}$
   A második egyenletből kivonva az elsőt: $y = 3 - 1 = 2$.
   Ekkor $x = 1 - 2y = 1 - 4 = -3$.
   Megoldás: **$(-3, 2)$**.
   *Ellenőrzés:* $(-3)^2 + 5(-3)(2) + 6(2)^2 = 9 - 30 + 24 = 3$.

2. **Eset 2:** $\begin{cases} x + 2y = 3 \\ x + 3y = 1 \end{cases}$
   Kivonva a két egyenletet: $y = 1 - 3 = -2$.
   Ekkor $x = 3 - 2(-2) = 7$.
   Megoldás: **$(7, -2)$**.
   *Ellenőrzés:* $7^2 + 5(7)(-2) + 6(-2)^2 = 49 - 70 + 24 = 3$.

3. **Eset 3:** $\begin{cases} x + 2y = -1 \\ x + 3y = -3 \end{cases}$
   Kivonva: $y = -3 - (-1) = -2$.
   Ekkor $x = -1 - 2(-2) = 3$.
   Megoldás: **$(3, -2)$**.
   *Ellenőrzés:* $3^2 + 5(3)(-2) + 6(-2)^2 = 9 - 30 + 24 = 3$.

4. **Eset 4:** $\begin{cases} x + 2y = -3 \\ x + 3y = -1 \end{cases}$
   Kivonva: $y = -1 - (-3) = 2$.
   Ekkor $x = -3 - 2(2) = -7$.
   Megoldás: **$(-7, 2)$**.
   *Ellenőrzés:* $(-7)^2 + 5(-7)(2) + 6(2)^2 = 49 - 70 + 24 = 3$.

::: elmelet
**Elméleti háttér — szorzattá alakításos diofantikus egyenletek.** Ha egy kétváltozós diofantikus egyenlet bal oldala lineáris tényezők szorzatára bontható ($F(x, y) = L_1(x, y)L_2(x, y) = c$), akkor a jobb oldal egész osztóinak véges sok felbontására vizsgálva az egyenlet véges sok $2 \times 2$-es lineáris egyenletrendszerre esik szét, melyek mindegyike közvetlenül megoldható.
:::
