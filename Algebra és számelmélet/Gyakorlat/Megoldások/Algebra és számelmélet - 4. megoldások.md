# Algebra és számelmélet – 4. feladatsor – megoldások

## 1. feladat

Milyen maradékot adhat egy négyzetszám 3-mal, 4-gyel, 5-tel, 8-cal, illetve 9-cel osztva?

**Megoldás.**

Elég az összes maradékosztály egy-egy reprezentánsát négyzetre emelni:

| modulus | $0^2, 1^2, 2^2, \dots$ maradékai | lehetséges maradékok |
|:---:|:---|:---:|
| 3 | $0, 1, 1$ | $0, 1$ |
| 4 | $0, 1, 0, 1$ | $0, 1$ |
| 5 | $0, 1, 4, 4, 1$ | $0, 1, 4$ |
| 8 | $0, 1, 4, 1, 0, 1, 4, 1$ | $0, 1, 4$ |
| 9 | $0, 1, 4, 0, 7, 7, 0, 4, 1$ | $0, 1, 4, 7$ |

## 2. feladat

Határozzuk meg a $3^{2026}$ utolsó számjegyét.

**Megoldás.**

$3$ hatványainak utolsó jegye 4-es periódussal ismétlődik: $3, 9, 7, 1, 3, \dots$ (mert $3^4 = 81 \equiv 1 \pmod{10}$). Mivel $2026 = 4 \cdot 506 + 2$, $3^{2026} \equiv 3^2 = 9 \pmod{10}$. **Az utolsó jegy 9.**

## 3. feladat

Milyen számjegyre végződik a $4^{100} + 5^{100}$ összeg?

**Megoldás.**

$4^{100} = 16^{50}$, és $6$-ra végződő szám minden hatványa $6$-ra végződik. $5^{100}$ $5$-re végződik. $6 + 5 = 11$, így **az összeg 1-re végződik.**

## 4. feladat

Lehet-e $1! + 2! + 3! + \dots + 2026!$ egy egész szám négyzete?

**Megoldás.**

**Nem.** $1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33$, és $k \ge 5$-re $k!$ osztható 10-zel. Így az összeg $3$-ra végződik. Négyzetszám viszont csak $0, 1, 4, 5, 6, 9$-re végződhet (az $0^2, \dots, 9^2$ utolsó jegyei). (Ugyanez mod 5: az összeg $\equiv 3$, a négyzetek $\equiv 0, 1, 4$.)

## 5. feladat

Igazoljuk, hogy három egymást követő egész szám négyzetösszege 3-mal osztva mindig 2-t ad maradékul.

**Megoldás.**

$$(n - 1)^2 + n^2 + (n + 1)^2 = 3n^2 + 2 \equiv 2 \pmod 3. \qquad \blacksquare$$

## 6. feladat

Számítsuk ki az euklideszi algoritmus segítségével a $(420, 154)$ értéket, majd fejezzük ki az eredményt a két szám egész együtthatós lineáris kombinációjaként.

**Megoldás.**

Euklideszi algoritmus:
$$420 = 2 \cdot 154 + 112, \quad 154 = 1 \cdot 112 + 42, \quad 112 = 2 \cdot 42 + 28, \quad 42 = 1 \cdot 28 + 14, \quad 28 = 2 \cdot 14.$$
Tehát **$(420, 154) = 14$**. Visszafelé helyettesítve:
$$14 = 42 - 28 = 42 - (112 - 2 \cdot 42) = 3 \cdot 42 - 112 = 3(154 - 112) - 112 = 3 \cdot 154 - 4 \cdot 112,$$
$$14 = 3 \cdot 154 - 4(420 - 2 \cdot 154) = 11 \cdot 154 - 4 \cdot 420.$$
(Ellenőrzés: $1694 - 1680 = 14$.)

## 7. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén $(2n + 1, 9n + 4) = 1$.

**Megoldás.**

$$2(9n + 4) - 9(2n + 1) = -1,$$
így bármely közös osztó osztja $1$-et: $(2n + 1, 9n + 4) = 1$. $\blacksquare$

## 8. feladat

Határozzuk meg a $(3n + 5, 2n + 3)$ és a $(n^2 + n, 2n + 1)$ értékét, ha $n$ tetszőleges pozitív egész szám.

**Megoldás.**

- $3(2n + 3) - 2(3n + 5) = -1$, tehát **$(3n + 5, 2n + 3) = 1$**.
- $(n, 2n + 1) = (n, 1) = 1$ és $(n + 1, 2n + 1) = (n + 1, 2n + 1 - 2(n+1)) = (n + 1, -1) = 1$. Mivel $2n + 1$ relatív prím $n$-hez és $n + 1$-hez is, a szorzatukhoz is: **$(n^2 + n, 2n + 1) = 1$**.

## 9. feladat

Határozzuk meg a $p(x) = x^4 - 2x^3 + 2x - 1$ és a $q(x) = x^3 - x^2 - x + 1$ polinomok kitüntetett közös osztóját az $\mathbb{R}[x]$ polinomgyűrűben.

**Megoldás.**

Szorzattá alakítva:
$$q(x) = x^2(x - 1) - (x - 1) = (x - 1)(x^2 - 1) = (x - 1)^2(x + 1),$$
$$p(x) = (x^2 - 1)(x^2 - 2x + 1) = (x - 1)^3(x + 1).$$
(Ellenőrzés: $(x^2 - 1)(x^2 - 2x + 1) = x^4 - 2x^3 + 2x - 1$.) A kitüntetett (normált) legnagyobb közös osztó
$$(p, q) = (x - 1)^2(x + 1) = x^3 - x^2 - x + 1 = q(x).$$
Az euklideszi algoritmus egy lépésben ugyanezt adja: $p(x) = (x - 1)\,q(x) + 0$.

## 10. feladat

Tegyük fel, hogy az $a$ és $b$ egész számok relatív prímek, azaz $(a, b) = 1$. Határozzuk meg az $(a + b, a - b)$ legnagyobb közös osztó lehetséges értékeit.

**Megoldás.**

Legyen $d = (a + b, a - b)$. Ekkor $d \mid (a + b) + (a - b) = 2a$ és $d \mid (a + b) - (a - b) = 2b$, így $d \mid (2a, 2b) = 2(a, b) = 2$. Tehát **$d \in \{1, 2\}$**, és mindkettő előfordul: $a = 2, b = 1$: $(3, 1) = 1$; $a = 3, b = 1$: $(4, 2) = 2$. ($d = 2$ pontosan akkor, ha $a$ és $b$ mindkettő páratlan.)

## 11. feladat

Keressük meg az összes olyan $x, y$ természetes számokból álló párt, amelyekre a legkisebb közös többszörös és a legnagyobb közös osztó értéke: $[x, y] = 168$ és $(x, y) = 14$.

**Megoldás.**

Legyen $x = 14a$, $y = 14b$, ahol $(a, b) = 1$. Ekkor $[x, y] = 14ab = 168$, azaz $ab = 12$. A relatív prím felbontások: $1 \cdot 12$, $3 \cdot 4$ (a $2 \cdot 6$ nem jó). **A megoldások:**
$$(x, y) \in \{(14, 168),\ (168, 14),\ (42, 56),\ (56, 42)\}.$$

## 12. feladat

Mely pozitív egész $n$ számok esetén teljesül, hogy $n + 3 \mid n^2 + 7$?

**Megoldás.**

$n^2 + 7 = (n + 3)(n - 3) + 16$, tehát $n + 3 \mid n^2 + 7 \iff n + 3 \mid 16$. Mivel $n + 3 \ge 4$: $n + 3 \in \{4, 8, 16\}$, azaz **$n \in \{1, 5, 13\}$**. (Ellenőrzés: $4 \mid 8$, $8 \mid 32$, $16 \mid 176$.)

## 13. feladat

Melyik igaz az alábbi állítások közül:

(1) Ha $d \mid 7x + 2y$ és $d \mid 3x + y$, akkor $d \mid x$ és $d \mid y$.

(2) Ha $d \mid 4x + 3y$ és $d \mid 2x + y$, akkor $d \mid x$ és $d \mid y$.

**Megoldás.**

**(1) Igaz.** $x$ és $y$ kifejezhető a két számból egész együtthatókkal:
$$x = (7x + 2y) - 2(3x + y), \qquad y = 7(3x + y) - 3(7x + 2y).$$
(Az együttható-mátrix determinánsa $7 - 6 = 1$.)

**(2) Hamis.** Itt a determináns $4 \cdot 1 - 3 \cdot 2 = -2$, és valóban: $d = 2$, $x = 1$, $y = 0$ esetén $4x + 3y = 4$ és $2x + y = 2$ osztható 2-vel, de $x = 1$ nem.

## 14. feladat

Legyen $F_n$ az $n$-edik Fibonacci-szám ($F_1 = 1$, $F_2 = 1$, $F_{n+1} = F_n + F_{n-1}$). Igazoljuk, hogy tetszőleges $n \ge 1$ egész számra $(F_n, F_{n+1}) = 1$.

**Megoldás.**

Az euklideszi lépés $(a, b) = (a, b - a)$ szerint
$$(F_n, F_{n+1}) = (F_n, F_{n+1} - F_n) = (F_n, F_{n-1}) = (F_{n-1}, F_n) = \dots = (F_1, F_2) = (1, 1) = 1.$$
(Formálisan: indukció $n$ szerint.) $\blacksquare$

## 15. feladat

Bizonyítsuk be, hogy ha $p \ge 5$ prímszám, akkor a $p^2 - 1$ kifejezés osztható 24-gyel.

**Megoldás.**

$p^2 - 1 = (p - 1)(p + 1)$.

- $p$ páratlan, így $p - 1$ és $p + 1$ két szomszédos páros szám, egyikük 4-gyel is osztható: $8 \mid p^2 - 1$.
- $3 \nmid p$, így $p - 1, p, p + 1$ közül (három szomszédos szám) $p - 1$ vagy $p + 1$ osztható 3-mal: $3 \mid p^2 - 1$.

Mivel $(8, 3) = 1$, $24 \mid p^2 - 1$. $\blacksquare$

## 16. feladat

Igazoljuk, hogy egy pozitív egész szám pozitív osztóinak száma pontosan akkor páratlan, ha a szám egy egész szám négyzete.

**Megoldás.**

Párosítsuk az $n$ szám $d$ osztóját az $\frac nd$ osztóval. Ez a párosítás involúció; egy osztó akkor és csak akkor van párban önmagával, ha $d = \frac nd$, azaz $d^2 = n$. A többi osztó kételemű párokba rendeződik. Tehát az osztók száma pontosan akkor páratlan, ha van $d$, amelyre $d^2 = n$, vagyis ha $n$ négyzetszám. $\blacksquare$

(Képlettel: $n = \prod p_i^{\alpha_i}$ esetén az osztók száma $\prod(\alpha_i + 1)$, ami pontosan akkor páratlan, ha minden $\alpha_i$ páros.)

## 17. feladat

Igazoljuk a Legendre-formulát, vagyis hogy a $p$ prímszám kitevője az $n!$ prímtényezős felbontásában
$$v_p(n!) = \sum_{k=1}^{\infty} \left\lfloor \frac{n}{p^k} \right\rfloor.$$
Ezt felhasználva lássuk be a $v_p(n!) < \frac{n}{p-1}$ egyenlőtlenséget.

**Megoldás.**

**Legendre-formula.** $v_p(n!) = \sum_{m=1}^{n} v_p(m)$, és $v_p(m)$ azon $k \ge 1$ kitevők száma, amelyekre $p^k \mid m$. Kettős leszámlálással (az $(m, k)$ párokat $k$ szerint csoportosítva):
$$v_p(n!) = \sum_{m=1}^{n}\#\{k \ge 1 : p^k \mid m\} = \sum_{k \ge 1}\#\{m \le n : p^k \mid m\} = \sum_{k=1}^{\infty}\left\lfloor \frac{n}{p^k}\right\rfloor,$$
hiszen $1$ és $n$ között $\lfloor n/p^k \rfloor$ darab $p^k$-val osztható szám van. Az összeg valójában véges: $p^k > n$-re a tagok nullák.

**Becslés.** $\lfloor x \rfloor \le x$ miatt, és mert csak véges sok nem nulla tag van, míg a végtelen mértani sor minden tagja pozitív:
$$v_p(n!) = \sum_{k=1}^{K}\left\lfloor \frac{n}{p^k}\right\rfloor \le \sum_{k=1}^{K}\frac{n}{p^k} < \sum_{k=1}^{\infty}\frac{n}{p^k} = \frac{n/p}{1 - 1/p} = \frac{n}{p - 1}. \qquad \blacksquare$$

## 18. feladat

Lássuk be, hogy minden $x \ge 1$ valós számra fennáll a
$$\sum_{n \le x} \frac{1}{n} < \prod_{p \le x} \left(1 - \frac{1}{p}\right)^{-1}$$
egyenlőtlenség, ahol a szorzat az $x$-nél nem nagyobb prímszámokon fut végig.

**Megoldás.**

Minden $p$ prímre a mértani sor összegképlete szerint
$$\left(1 - \frac1p\right)^{-1} = \sum_{k=0}^{\infty}\frac{1}{p^k}.$$
A $p \le x$ prímekre (véges sok) ezeket a nemnegatív tagú, konvergens sorokat összeszorozva, majd tagonként kifejtve:
$$\prod_{p \le x}\left(1 - \frac1p\right)^{-1} = \sum_{k_1, \dots, k_r \ge 0}\frac{1}{p_1^{k_1}\cdots p_r^{k_r}} = \sum_{n \in S_x}\frac1n,$$
ahol $p_1, \dots, p_r$ az $x$-nél nem nagyobb prímek, és $S_x$ azon pozitív egészek halmaza, amelyeknek minden prímtényezője $\le x$. Itt a számelmélet alaptétele miatt minden $n \in S_x$ pontosan egyszer szerepel.

Minden $n \le x$ prímtényezői $\le x$, így $\{1, \dots, \lfloor x \rfloor\} \subseteq S_x$, és
$$\sum_{n \le x}\frac1n \le \sum_{n \in S_x}\frac1n = \prod_{p \le x}\left(1 - \frac1p\right)^{-1}.$$
Ha $x \ge 2$, az egyenlőtlenség **szigorú**, mert pl. $2^k \in S_x$ minden $k$-ra, és $2^k > x$ is előfordul. $\blacksquare$

*Megjegyzés:* $1 \le x < 2$ esetén nincs $x$-nél nem nagyobb prím, a szorzat üres ($= 1$), és a bal oldal is $1$ – itt egyenlőség áll, tehát a szigorú egyenlőtlenség $x \ge 2$-re igaz. *Következmény:* mivel a harmonikus sor divergens, $\prod_p (1 - 1/p)^{-1} = \infty$, amiből $\sum_p \frac1p = \infty$ is adódik.
