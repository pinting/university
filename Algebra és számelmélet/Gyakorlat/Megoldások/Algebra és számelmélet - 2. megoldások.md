# Algebra és számelmélet – 2. feladatsor – megoldások

## 1. feladat

Mutassuk meg, hogy $1^2 + 2^2 + \dots + n^2 = \dfrac{n(n+1)(2n+1)}{6}$.

**Megoldás.**

Teljes indukció. $n = 1$: $1 = \frac{1 \cdot 2 \cdot 3}{6}$. Ha $n$-re igaz, akkor
$$\frac{n(n+1)(2n+1)}{6} + (n+1)^2 = \frac{(n+1)\big(n(2n+1) + 6(n+1)\big)}{6} = \frac{(n+1)(2n^2 + 7n + 6)}{6} = \frac{(n+1)(n+2)(2n+3)}{6},$$
ami éppen az állítás $n + 1$-re. $\blacksquare$

## 2. feladat

Bizonyítsuk be, hogy $1^3 + 2^3 + \dots + n^3 = (1 + 2 + \dots + n)^2$.

**Megoldás.**

Tudjuk, hogy $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, tehát azt kell igazolni, hogy $1^3 + \dots + n^3 = \frac{n^2(n+1)^2}{4}$. Indukció: $n = 1$-re $1 = 1$. Ha $n$-re igaz, akkor
$$\frac{n^2(n+1)^2}{4} + (n+1)^3 = \frac{(n+1)^2(n^2 + 4n + 4)}{4} = \frac{(n+1)^2(n+2)^2}{4}. \qquad \blacksquare$$

## 3. feladat

Igazoljuk, hogy minden $n \in \mathbb{N}^+$ esetén $27 \mid 10^n + 18n - 1$.

**Megoldás.**

Legyen $a_n = 10^n + 18n - 1$. Indukció: $a_1 = 27$. A lépéshez:
$$a_{n+1} - 10a_n = 10^{n+1} + 18n + 17 - 10^{n+1} - 180n + 10 = 27 - 162n = 27(1 - 6n),$$
tehát $a_{n+1} = 10a_n + 27(1 - 6n)$, és ha $27 \mid a_n$, akkor $27 \mid a_{n+1}$. $\blacksquare$

*Másik bizonyítás:* $10^n - 1 = 9R_n$, ahol $R_n = 11\dots1$ ($n$ darab egyes). A jegyösszeg miatt $R_n \equiv n \pmod 3$, így $10^n - 1 + 18n = 9(R_n + 2n)$, és $R_n + 2n \equiv 3n \equiv 0 \pmod 3$.

## 4. feladat

Igazoljuk, hogy minden pozitív egész $n$ esetén $2^n \mid (n+1)(n+2) \cdots (2n)$.

**Megoldás.**

$(n+1)(n+2)\cdots(2n) = \dfrac{(2n)!}{n!}$. A $(2n)!$ szorzatot páros és páratlan tényezőkre bontva:
$$(2n)! = (2 \cdot 4 \cdots 2n)\cdot(1 \cdot 3 \cdots (2n-1)) = 2^n\,n! \cdot (1 \cdot 3 \cdots (2n-1)).$$
Így $(n+1)(n+2)\cdots(2n) = 2^n \cdot 1 \cdot 3 \cdots (2n - 1)$, ami osztható $2^n$-nel (sőt a $2$ kitevője pontosan $n$). $\blacksquare$

## 5. feladat

Legyenek $a$ és $b$ tetszőleges, egymástól különböző egész számok. Bizonyítsuk be, hogy minden $n \ge 1$ egész számra $a - b \mid a^n - b^n$.

**Megoldás.**

Az azonosság
$$a^n - b^n = (a - b)(a^{n-1} + a^{n-2}b + \dots + ab^{n-2} + b^{n-1})$$
(a jobb oldalt kibontva teleszkopikusan kiesnek a tagok) szerint $a^n - b^n$ az $a - b$ egész számszorosa. (Indukcióval is: $a^{n+1} - b^{n+1} = a(a^n - b^n) + b^n(a - b)$.) $\blacksquare$

## 6. feladat

Ha $2^n - 1$ prímszám, akkor $n$ prímszám.

**Megoldás.**

Ha $n = 1$, akkor $2^1 - 1 = 1$ nem prím. Ha $n$ összetett, $n = rs$, $1 < r, s < n$, akkor az előző feladat szerint
$$2^{rs} - 1 = (2^r)^s - 1^s = (2^r - 1)\left(2^{r(s-1)} + \dots + 2^r + 1\right),$$
és $1 < 2^r - 1 < 2^n - 1$, tehát $2^n - 1$ összetett. Így ha $2^n - 1$ prím, akkor $n$ prím. $\blacksquare$ (A megfordítás nem igaz: $2^{11} - 1 = 2047 = 23 \cdot 89$. A $2^p - 1$ alakú prímek a Mersenne-prímek.)

## 7. feladat

Ha $2^n + 1$ prímszám, akkor $n$ kettőhatvány.

**Megoldás.**

Tegyük fel, hogy $n$-nek van $m > 1$ páratlan osztója: $n = mk$. Páratlan $m$-re $x^m + y^m = (x + y)(x^{m-1} - x^{m-2}y + \dots + y^{m-1})$, így
$$2^n + 1 = (2^k)^m + 1^m$$
osztható $2^k + 1$-gyel, és $1 < 2^k + 1 < 2^n + 1$. Tehát $2^n + 1$ összetett. Ha tehát $2^n + 1$ prím, akkor $n$-nek nincs $1$-nél nagyobb páratlan osztója, azaz $n$ kettőhatvány. $\blacksquare$ (A $2^{2^k} + 1$ alakú prímek a Fermat-prímek.)

## 8. feladat

Legyenek $f, g, h \in \mathbb{R}[x]$ tetszőleges valós együtthatós polinomok. Bizonyítsuk az oszthatóság azonosságait:

(1) Minden $f$-re $f \mid f$ (*reflexivitás*).

(2) Ha $f \mid g$ és $g \mid h$, akkor $f \mid h$ (*tranzitivitás*).

(3) Ha $f \mid g$ és $f \mid h$, akkor $f \mid g + h$.

(4) Ha $f \mid g$, akkor $f \mid kg$, sőt $kf \mid kg$ minden $k$ valós polinomra. Megfordítva, ha $k \neq 0$ (azaz $k$ nem a nullpolinom), akkor $kf \mid kg$-ből $f \mid g$ következik.

**Megoldás.**

Definíció: $f \mid g$, ha van $h \in \mathbb{R}[x]$, hogy $g = fh$.

(1) $f = f \cdot 1$.

(2) $g = fu$, $h = gv$ $\Rightarrow$ $h = f(uv)$.

(3) $g = fu$, $h = fv$ $\Rightarrow$ $g + h = f(u + v)$.

(4) $g = fu$ $\Rightarrow$ $kg = f(ku)$ és $kg = (kf)u$. Megfordítva, ha $kg = (kf)u$, akkor $k(g - fu) = 0$. Mivel $\mathbb{R}[x]$ nullosztómentes (két nem nulla polinom szorzatának foka a fokszámok összege, így nem nulla), és $k \neq 0$, ezért $g - fu = 0$, azaz $f \mid g$. $\blacksquare$

## 9. feladat

Igazoljuk, hogy végtelen sok $4k - 1$, illetve $6k - 1$ alakú prímszám van.

**Megoldás.**

**$4k - 1$ alakú prímek.** Tegyük fel, hogy csak véges sok van: $p_1, \dots, p_r$. Legyen $N = 4p_1 \cdots p_r - 1$. $N$ páratlan és $N \equiv 3 \pmod 4$. $N$ prímtényezői páratlanok, tehát $1$ vagy $3$ maradékúak mod 4. Ha mind $\equiv 1$ volna, a szorzatuk is $\equiv 1$ lenne; tehát van $q \mid N$ prím, $q \equiv 3 \pmod 4$. Ez nem lehet egyik $p_i$ sem, mert $p_i \mid N$ esetén $p_i \mid 4p_1\cdots p_r - N = 1$ volna. Ellentmondás.

**$6k - 1$ alakú prímek.** Ugyanígy $N = 6p_1 \cdots p_r - 1 \equiv 5 \pmod 6$. $N$ relatív prím $6$-hoz, így minden prímtényezője $\equiv \pm 1 \pmod 6$; ha mind $\equiv 1$ volna, $N \equiv 1$ lenne. Tehát van $q \equiv -1 \pmod 6$ prímtényező, és ez az előzőhöz hasonlóan nem lehet egyik $p_i$ sem. $\blacksquare$

## 10. feladat

Határozzuk meg az $x$ és $y$ számjegyeket úgy, hogy teljesüljön az alábbi oszthatóság (adjuk meg az összes lehetséges megoldást):

(1) $72 \mid \overline{4x57y}$

(2) $45 \mid \overline{51x2y}$

(3) $99 \mid \overline{8x34y2}$.

**Megoldás.**

**(1)** $72 = 8 \cdot 9$, $(8, 9) = 1$. A 8-cal való oszthatóság az utolsó három jegytől függ: $570 + y \equiv 2 + y \pmod 8$, tehát $y = 6$. A 9-cel való oszthatóság: $4 + x + 5 + 7 + 6 = 22 + x$ osztható 9-cel, tehát $x = 5$. **Egyetlen megoldás: $45576 = 72 \cdot 633$.**

**(2)** $45 = 5 \cdot 9$. Az 5-tel való oszthatóság miatt $y \in \{0, 5\}$. A jegyösszeg $8 + x + y$.

- $y = 0$: $8 + x \equiv 0 \pmod 9 \Rightarrow x = 1$: $51120$.
- $y = 5$: $13 + x \equiv 0 \pmod 9 \Rightarrow x = 5$: $51525$.

**Megoldások: $51120$ és $51525$.**

**(3)** $99 = 9 \cdot 11$. 9-cel: $8 + x + 3 + 4 + y + 2 = 17 + x + y$ osztható 9-cel, tehát $x + y \in \{1, 10\}$. 11-gyel (váltakozó jegyösszeg jobbról): $2 - y + 4 - 3 + x - 8 = x - y - 5$ osztható 11-gyel, tehát $x - y \in \{5, -6\}$. Mivel $x + y$ és $x - y$ azonos paritású, csak az $(x + y, x - y) = (1, 5)$ és $(10, -6)$ párok jöhetnek szóba; az elsőből $y = -2$ adódna, ami nem számjegy, a másodikból $x = 2$, $y = 8$. **Egyetlen megoldás: $823482 = 99 \cdot 8318$.**

## 11. feladat

Egy hatjegyű szám alakja $\overline{abcabc}$ (ahol $a \neq 0$). Mutassuk meg, hogy ez a szám mindig osztható 7-tel, 11-gyel és 13-mal is, függetlenül a számjegyek konkrét értékétől.

**Megoldás.**

$$\overline{abcabc} = 1000 \cdot \overline{abc} + \overline{abc} = 1001 \cdot \overline{abc} = 7 \cdot 11 \cdot 13 \cdot \overline{abc},$$
tehát a szám osztható 7-tel, 11-gyel és 13-mal. $\blacksquare$

## 12. feladat

Egy sokszög átlóinak száma prímszám. Hány oldalú a sokszög?

**Megoldás.**

Egy $n$-szög átlóinak száma $\frac{n(n-3)}{2}$ ($n \ge 4$-re pozitív). Legyen ez a $p$ prím: $n(n-3) = 2p$.

- Ha $n$ páros: $\frac n2 \cdot (n - 3) = p$, így vagy $\frac n2 = 1$ ($n = 2$, nem sokszög), vagy $n - 3 = 1$, azaz $n = 4$: $2$ átló, prím. ✓
- Ha $n$ páratlan: $n \cdot \frac{n-3}{2} = p$, így $\frac{n-3}{2} = 1$, azaz $n = 5$: $5$ átló, prím. ✓ (Az $n = 1$ eset értelmetlen.)

**A sokszög négyszög vagy ötszög.**

## 13. feladat

Határozzuk meg azokat a pozitív egész $n$ számokat, amelyekre az $n^4 + n^2 + 1$ kifejezés prímszám.

**Megoldás.**

$$n^4 + n^2 + 1 = (n^2 + 1)^2 - n^2 = (n^2 - n + 1)(n^2 + n + 1).$$
Mindkét tényező pozitív, és $n^2 - n + 1 < n^2 + n + 1$. Prím csak akkor lehet, ha $n^2 - n + 1 = 1$, azaz $n = 1$ (pozitív $n$-re). Ekkor az érték $3$, prím. **Egyetlen megoldás: $n = 1$.**

## 14. feladat

Melyek azok a $p$ prímszámok, amelyek felírhatók $p = n^3 - 1$ alakban, ahol $n$ egy természetes szám?

**Megoldás.**

$n^3 - 1 = (n - 1)(n^2 + n + 1)$. $n \ge 2$-re $n^2 + n + 1 \ge 7 > 1$, így prím csak $n - 1 = 1$, azaz $n = 2$ esetén lehet: $p = 7$. ($n = 0, 1$ nem ad prímet.) **Egyetlen ilyen prím: $p = 7$.**

## 15. feladat

Adjuk meg az összes olyan $n$ természetes számot, amelyre az $n^2 + 5n + 13$ kifejezés egy egész szám négyzete.

**Megoldás.**

Legyen $E = n^2 + 5n + 13$, $n \ge 0$. Ekkor
$$E - (n+2)^2 = n + 9 > 0, \qquad (n+3)^2 - E = n - 4, \qquad (n+4)^2 - E = 3n + 3 > 0.$$

- Ha $n > 4$: $(n+2)^2 < E < (n+3)^2$, két szomszédos négyzetszám közé esik, nem négyzetszám.
- Ha $n < 4$: $(n+3)^2 < E < (n+4)^2$, szintén nem négyzetszám.
- Ha $n = 4$: $E = 49 = 7^2$. ✓

**Egyetlen megoldás: $n = 4$.**

## 16. feladat

Bizonyítsuk be, hogy $30 \mid n^5 - n$ minden $n$ egész számra.

**Megoldás.**

$n^5 - n = n(n^4 - 1) = (n - 1)n(n + 1)(n^2 + 1)$.

- **2-vel osztható:** $n(n-1)$ két szomszédos egész szorzata.
- **3-mal osztható:** $(n-1)n(n+1)$ három szomszédos egész szorzata.
- **5-tel osztható:** ha $n \equiv 0, \pm1 \pmod 5$, akkor $n$, $n - 1$ vagy $n + 1$ osztható 5-tel; ha $n \equiv \pm 2$, akkor $n^2 + 1 \equiv 5 \equiv 0$. (Vagy a kis Fermat-tétel: $n^5 \equiv n \pmod 5$.)

Mivel $2, 3, 5$ páronként relatív prímek, $30 \mid n^5 - n$. $\blacksquare$

## 17. feladat

Igazoljuk, hogy ha $17 \mid 2a + 3b$, akkor $17 \mid 9a + 5b$ is teljesül.

**Megoldás.**

$$9a + 5b = 13(2a + 3b) - 17(a + 2b).$$
(Ellenőrzés: $26a - 17a = 9a$, $39b - 34b = 5b$.) Ha $17 \mid 2a + 3b$, akkor a jobb oldal mindkét tagja osztható 17-tel, tehát $17 \mid 9a + 5b$. $\blacksquare$ (A $13$ szorzót úgy kapjuk, hogy $13 \cdot 2 \equiv 9$ és $13 \cdot 3 \equiv 5 \pmod{17}$.)

## 18. feladat

Bizonyítsuk be, hogy ha $37 \mid \overline{abc}$, akkor $37 \mid \overline{bca}$.

**Megoldás.**

$\overline{abc} = 100a + 10b + c$ és $\overline{bca} = 100b + 10c + a$. Ekkor
$$10 \cdot \overline{abc} = 1000a + 100b + 10c = 999a + \overline{bca}.$$
Mivel $999 = 27 \cdot 37$, ezért $\overline{bca} = 10 \cdot \overline{abc} - 999a$ osztható 37-tel, ha $\overline{abc}$ az. $\blacksquare$

## 19. feladat

Mely $p$ pozitív egész számokra lehet $p$, $p + 2$ és $p + 4$ egyszerre prím?

**Megoldás.**

A $p$, $p + 2$, $p + 4$ számok mod 3 maradékai $p$, $p + 2$, $p + 1$ – ezek az összes maradékot kiadják, így pontosan egyikük osztható 3-mal. Hogy mindhárom prím legyen, az az egyik csak a $3$ lehet: $p = 3$ (ekkor $3, 5, 7$ – mind prím), $p + 2 = 3$ esetén $p = 1$ nem prím, $p + 4 = 3$ lehetetlen. **Egyetlen megoldás: $p = 3$.**

## 20. feladat

Halhatatlan kapitánynak három halhatatlan unokája van, akiknek az életkora három különböző prímszám, és ezek négyzetösszege is prímszám. Hány éves a kapitány legkisebb unokája?

**Megoldás.**

Legyenek a korok $p < q < r$ különböző prímek, és $p^2 + q^2 + r^2$ prím.

- **Egyik sem 2:** ha valamelyik 2 lenne, a másik kettő páratlan, és $4 + \text{páratlan} + \text{páratlan}$ páros és $2$-nél nagyobb – nem prím.
- **Valamelyik 3:** ha egyik sem osztható 3-mal, akkor mindhárom négyzet $\equiv 1 \pmod 3$, így az összeg osztható 3-mal és nagyobb 3-nál – nem prím.

Tehát mindhárom páratlan, és az egyik a $3$, ami a legkisebb páratlan prím. **A legkisebb unoka 3 éves.** (Ilyen hármas létezik: $3^2 + 5^2 + 7^2 = 83$ prím.)

## 21. feladat

Oldjuk meg a prímszámok körében a $p^2 - 6q^2 = 1$ egyenletet.

**Megoldás.**

$p^2 = 6q^2 + 1$ páratlan, tehát $p$ páratlan, és $(p - 1)(p + 1) = 6q^2$. $p - 1$ és $p + 1$ szomszédos páros számok, így egyikük 4-gyel is osztható, szorzatuk osztható 8-cal. Tehát $8 \mid 6q^2$, azaz $4 \mid 3q^2$, így $2 \mid q$, és $q = 2$. Ekkor $p^2 = 25$, $p = 5$. **Egyetlen megoldás: $p = 5$, $q = 2$.**

## 22. feladat

Adjunk meg végtelen sok olyan $n$-et, amelyre $17 \mid 3^n + 5^n$.

**Megoldás.**

Számoljunk mod 17. $3^4 = 81 \equiv 13$ és $5^4 = 625 \equiv 13 \pmod{17}$. Így $n = 4k + 2$ esetén
$$3^{4k+2} + 5^{4k+2} \equiv 13^k \cdot 9 + 13^k \cdot 25 = 13^k \cdot 34 \equiv 0 \pmod{17}.$$
**Minden $n = 4k + 2$ ($k \ge 0$) megfelel**, pl. $n = 2$: $9 + 25 = 34 = 2 \cdot 17$. (Más $n$ nem jó: $5 \cdot 3^{-1} \equiv 13 \equiv -4$, és $(-4)^n \equiv -1 \pmod{17}$ pontosan akkor, ha $n \equiv 2 \pmod 4$.)
