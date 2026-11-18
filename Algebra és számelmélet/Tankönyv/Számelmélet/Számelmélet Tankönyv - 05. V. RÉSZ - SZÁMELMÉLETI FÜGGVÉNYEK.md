# V. RÉSZ: SZÁMELMÉLETI FÜGGVÉNYEK

Az ötödik rész olyan függvényekkel foglalkozik, amelyek minden pozitív egészhez egy számot rendelnek: hány osztója van, mennyi az osztóinak összege, hány prímtényezője van, hány nála kisebb, hozzá relatív prím szám van. Kiderül, hogy ezek többsége **multiplikatív**, és ezért elég a prímhatványokon ismerni őket. Ebből adódik az Euler-féle $\varphi$ függvény képletének (6.10. Tétel) bizonyítása, és ezzel oldjuk meg a tökéletes számok több mint kétezer éves kérdésének páros felét is.

## 17. Számelméleti függvények

Számelméleti függvényekkel már sokszor találkoztunk, csak nem neveztük őket így.

> **17.1. Definíció.** Az $f(n)$ függvényt **számelméleti függvénynek** nevezzük, ha értelmezési tartománya a pozitív egészek halmaza. Értékkészlete lehet valós vagy komplex.

Számelméleti függvény például bármely polinomfüggvény, a logaritmusfüggvény (a pozitív egészekre megszorítva), vagy a már definiált Euler-féle $\varphi$ függvény. Néhány speciális típust sokkal gyakrabban használunk, mint a többit:

> **17.2. Definíció.** Az $f(n)$ számelméleti függvényt **multiplikatívnak** nevezzük, ha
> $$f(ab) = f(a) f(b)$$
> minden $(a, b) = 1$ számpárra. Ha az összefüggés tetszőleges $a, b$ pozitív egészekre érvényes, akkor $f$ **teljesen multiplikatív**.
>
> **17.3. Definíció.** Az $f(n)$ számelméleti függvényt **additívnak** nevezzük, ha
> $$f(ab) = f(a) + f(b)$$
> minden $(a, b) = 1$ számpárra. Ha az összefüggés tetszőleges $a, b$ pozitív egészekre érvényes, akkor $f$ **teljesen additív**.

Például a $\varphi$ függvény multiplikatív (ezt hamarosan bebizonyítjuk), de nem teljesen multiplikatív: $\varphi(4) = 2 \ne 1 = \varphi(2)\varphi(2)$. A $\log n$ függvény teljesen additív, az $f(n) = n^k$ teljesen multiplikatív.

> **17.4. Tétel.** Ha $f$ nem azonosan nulla multiplikatív függvény, akkor $f(1) = 1$.

*Bizonyítás.* Minden $a$-ra $(a, 1) = 1$, így $f(a) = f(1 \cdot a) = f(1) f(a)$. Mivel $f \not\equiv 0$, van olyan $a$, amelyre $f(a) \ne 0$; ezzel osztva $f(1) = 1$. $\blacksquare$

> **17.5. Tétel.** Ha $g$ additív függvény, akkor $g(1) = 0$.

*Bizonyítás.* $g(a) = g(1 \cdot a) = g(1) + g(a)$, és mindkét oldalból $g(a)$-t kivonva $g(1) = 0$. $\blacksquare$

A multiplikatív és additív függvényeket a prímhatvány helyeken felvett értékeik meghatározzák:

> **17.6. Tétel.** Ha $n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_r^{\alpha_r}$ (kanonikus alak), $f$ multiplikatív és $g$ additív, akkor
> $$f(n) = f(p_1^{\alpha_1}) f(p_2^{\alpha_2}) \cdots f(p_r^{\alpha_r}), \qquad g(n) = g(p_1^{\alpha_1}) + g(p_2^{\alpha_2}) + \dots + g(p_r^{\alpha_r}).$$
>
> **17.7. Tétel.** Ha $s$ teljesen multiplikatív és $t$ teljesen additív, akkor
> $$s(n) = s(p_1)^{\alpha_1} \cdots s(p_r)^{\alpha_r}, \qquad t(n) = \alpha_1 t(p_1) + \dots + \alpha_r t(p_r).$$
> Ezeket tehát elég a prímeken ismerni.

*Bizonyítás.* Mindkettő a SzAT és a definíciók közvetlen következménye: a különböző prímek hatványai páronként relatív prímek, így a multiplikativitást (additivitást) ismételten alkalmazhatjuk; teljes multiplikativitás esetén pedig $s(p^\alpha) = s(p \cdots p) = s(p)^\alpha$. $\blacksquare$

> **17.8. Tétel.** Két multiplikatív függvény szorzata és hányadosa (ha értelmezve van) is multiplikatív.
>
> **17.9. Tétel.** Két additív függvény összege és különbsége is additív.

::: kiegeszites
**Kiegészítés: a 17.8. és 17.9. Tétel bizonyítása (HF).** Ha $f, h$ multiplikatív és $(a, b) = 1$, akkor
$$(fh)(ab) = f(ab)h(ab) = f(a)f(b)h(a)h(b) = (fh)(a) \cdot (fh)(b),$$
és ugyanígy, ha $h$ sehol sem nulla, $\frac{f}{h}(ab) = \frac{f(a)f(b)}{h(a)h(b)} = \frac{f}{h}(a)\frac{f}{h}(b)$. Additív $g, k$ esetén $(g \pm k)(ab) = g(a) + g(b) \pm (k(a) + k(b)) = (g \pm k)(a) + (g \pm k)(b)$. $\blacksquare$
:::

### 17.1. Nevezetes függvények

A legelterjedtebb nevezetes számelméleti függvények:
$$d(n), \quad \sigma(n), \quad \mu(n), \quad \omega(n), \quad \Omega(n), \quad \varphi(n).$$

> **17.10. Definíció.** $d(n)$ az $n$ pozitív osztóinak száma.
>
> **17.11. Definíció.** $\sigma(n)$ az $n$ pozitív osztóinak összege.
>
> **17.12. Definíció (Möbius-függvény).** Legyen $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$ a kanonikus alak. Ekkor
> $$\mu(n) = \begin{cases} 1, & \text{ha } n = 1, \\ (-1)^r, & \text{ha } \alpha_1 = \alpha_2 = \dots = \alpha_r = 1, \\ 0, & \text{ha van olyan } p \text{ prím, hogy } p^2 \mid n. \end{cases}$$

Egy szám **négyzetmentes**, ha nincs $1$-nél nagyobb négyzetszám osztója (azaz nincs olyan $p$ prím, hogy $p^2 \mid n$). A Möbius-függvény tehát a nem négyzetmentes számokon $0$, a négyzetmentes számokon pedig $\pm 1$ aszerint, hogy páros vagy páratlan sok prímtényezőjük van. Példák: $\mu(10) = \mu(2 \cdot 5) = (-1)^2 = 1$, $\mu(20) = 0$ (mert $4 \mid 20$), $\mu(30) = (-1)^3 = -1$.

> **17.13. Definíció.** $\omega(n)$ az $n$ különböző prímosztóinak száma, $\Omega(n)$ pedig a prímosztók száma multiplicitással számolva. Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor
> $$\omega(n) = r, \qquad \Omega(n) = \alpha_1 + \alpha_2 + \dots + \alpha_r.$$
>
> **17.14. Definíció (Euler-féle $\varphi$ függvény).** $\varphi(n)$ az $1, 2, \dots, n$ számok közül az $n$-hez relatív prímek száma.

Az első néhány érték:

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $d(n)$ | $1$ | $2$ | $2$ | $3$ | $2$ | $4$ | $2$ | $4$ | $3$ | $4$ | $2$ | $6$ |
| $\sigma(n)$ | $1$ | $3$ | $4$ | $7$ | $6$ | $12$ | $8$ | $15$ | $13$ | $18$ | $12$ | $28$ |
| $\mu(n)$ | $1$ | $-1$ | $-1$ | $0$ | $-1$ | $1$ | $-1$ | $0$ | $0$ | $1$ | $-1$ | $0$ |
| $\omega(n)$ | $0$ | $1$ | $1$ | $1$ | $1$ | $2$ | $1$ | $1$ | $1$ | $2$ | $1$ | $2$ |
| $\Omega(n)$ | $0$ | $1$ | $1$ | $2$ | $1$ | $2$ | $1$ | $3$ | $2$ | $2$ | $1$ | $3$ |
| $\varphi(n)$ | $1$ | $1$ | $2$ | $2$ | $4$ | $2$ | $6$ | $4$ | $6$ | $4$ | $10$ | $4$ |

Érdemes a táblázatban ellenőrizni a multiplikativitást: például $d(12) = d(4)d(3) = 3 \cdot 2 = 6$, $\sigma(12) = \sigma(4)\sigma(3) = 7 \cdot 4 = 28$, de $d(12) \ne d(2)d(6) = 2 \cdot 4 = 8$ — a $2$ és a $6$ nem relatív prímek.

> **17.15. Tétel.** A $d(n)$, $\sigma(n)$, $\mu(n)$ és $\varphi(n)$ függvények multiplikatívak.

A $d$ és $\sigma$ multiplikativitásának bizonyításához a következő lemmát használjuk.

> **17.16. Lemma.** Legyen $(a, b) = 1$. Ekkor $ab$ minden $c$ pozitív osztója egyértelműen előáll
> $$c = a'b', \qquad a' \mid a, \ b' \mid b$$
> alakban.

*Bizonyítás.* Legyen $a = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$ és $b = q_1^{\beta_1} \cdots q_s^{\beta_s}$. Mivel $(a, b) = 1$, a $p_i$ és $q_j$ prímek mind különbözők, így $ab$ kanonikus alakja $p_1^{\alpha_1} \cdots p_r^{\alpha_r} q_1^{\beta_1} \cdots q_s^{\beta_s}$. Ha $c \mid ab$, akkor a SzAT szerint
$$c = p_1^{\alpha_1'} \cdots p_r^{\alpha_r'} \, q_1^{\beta_1'} \cdots q_s^{\beta_s'}, \qquad 0 \le \alpha_i' \le \alpha_i, \quad 0 \le \beta_j' \le \beta_j.$$
Így az $a' = p_1^{\alpha_1'} \cdots p_r^{\alpha_r'}$ és $b' = q_1^{\beta_1'} \cdots q_s^{\beta_s'}$ választás megfelelő, és egyértelmű is, hiszen $a'$ csak a $p_i$-ket, $b'$ csak a $q_j$-ket tartalmazhatja, és a kitevőket $c$ meghatározza. $\blacksquare$

*A 17.15. Tétel bizonyítása $d$-re és $\sigma$-ra.* Legyen $(a, b) = 1$, $a$ osztói $a_1, \dots, a_k$ (tehát $d(a) = k$), $b$ osztói $b_1, \dots, b_\ell$ ($d(b) = \ell$). A lemma szerint $ab$ osztói pontosan az
$$a_1 b_1, \dots, a_1 b_\ell, \quad a_2 b_1, \dots, a_2 b_\ell, \quad \dots, \quad a_k b_1, \dots, a_k b_\ell \qquad (17.4)$$
számok, és ezek mind különbözők (a felírás egyértelműsége miatt). Ezért
$$d(ab) = k\ell = d(a) d(b),$$
és az osztók összege
$$\sigma(ab) = \sum_{i=1}^{k}\sum_{j=1}^{\ell} a_i b_j = \left(\sum_{i=1}^k a_i\right)\left(\sum_{j=1}^\ell b_j\right) = \sigma(a)\sigma(b). \ \blacksquare$$

*A $\mu$ multiplikativitása.* Legyen $(a, b) = 1$. Ha $a = 1$ vagy $b = 1$, az állítás $\mu(1) = 1$ miatt nyilvánvaló. Ha $a$ nem négyzetmentes (van $p^2 \mid a$), akkor $p^2 \mid ab$ is, így $\mu(ab) = 0 = \mu(a)\mu(b)$; ugyanígy, ha $b$ nem négyzetmentes. Végül ha mindkettő négyzetmentes, $a = p_1 \cdots p_r$ és $b = q_1 \cdots q_s$ (különböző prímek), akkor $ab = p_1 \cdots p_r q_1 \cdots q_s$ is négyzetmentes, és
$$\mu(ab) = (-1)^{r+s} = (-1)^r(-1)^s = \mu(a)\mu(b). \ \blacksquare$$

*A $\varphi$ multiplikativitása.* Legyen $(a, b) = 1$. $\varphi(ab)$ az $ab$-nél nem nagyobb pozitív egészek között az $ab$-hez relatív prímek száma. Mivel $(a, b) = 1$, egy szám pontosan akkor relatív prím $ab$-hez, ha $a$-hoz is és $b$-hez is relatív prím (egy közös prímosztó $ab$-vel osztaná $a$-t vagy $b$-t, és viszont). Rendezzük az $1, 2, \dots, ab$ számokat egy $b$ sorból és $a$ oszlopból álló táblázatba:
$$\begin{matrix} 1 & 2 & \cdots & a \\ a + 1 & a + 2 & \cdots & 2a \\ \vdots & & & \vdots \\ (b-1)a + 1 & (b-1)a + 2 & \cdots & ba \end{matrix}$$
Az $r$-edik oszlopban az $r, a + r, 2a + r, \dots, (b - 1)a + r$ számok állnak; ezek mind kongruensek $r$-rel modulo $a$, tehát vagy mind relatív prímek $a$-hoz, vagy egyik sem. Az $a$-hoz relatív prím oszlopok száma tehát $\varphi(a)$.

Egy ilyen oszlop elemei a $0, 1, \dots, b - 1$ teljes maradékrendszerből (modulo $b$) úgy keletkeznek, hogy az elemeit a $b$-hez relatív prím $a$-val szorozzuk, és hozzáadjuk $r$-t. A 6.5. Tétel szerint így újra teljes maradékrendszert kapunk modulo $b$. Egy teljes maradékrendszerben pontosan $\varphi(b)$ elem relatív prím $b$-hez. Tehát mind a $\varphi(a)$ „jó” oszlopban pontosan $\varphi(b)$ olyan szám van, amely $b$-hez is relatív prím, így összesen
$$\varphi(ab) = \varphi(a)\varphi(b). \ \blacksquare$$

**Példa a táblázatra.** $a = 3$, $b = 4$: az $1, \dots, 12$ számok három oszlopba rendezve: $(1, 4, 7, 10)$, $(2, 5, 8, 11)$, $(3, 6, 9, 12)$. A $3$-hoz relatív prím oszlopok az első kettő; ezekben a $4$-hez relatív prímek: $1, 7$ és $5, 11$. Összesen $4 = \varphi(3)\varphi(4) = 2 \cdot 2$ szám, és valóban $\varphi(12) = 4$.

**Additív függvények.**

> **17.17. Tétel.** Az $\Omega(n)$ függvény teljesen additív, az $\omega(n)$ függvény additív (de nem teljesen additív).

::: kiegeszites
**Kiegészítés: a 17.17. Tétel bizonyítása (HF).** Ha $a = \prod p^{\alpha_p}$ és $b = \prod p^{\beta_p}$ (minden prímre, véges sok nem nulla kitevővel), akkor $ab = \prod p^{\alpha_p + \beta_p}$, így $\Omega(ab) = \sum(\alpha_p + \beta_p) = \Omega(a) + \Omega(b)$ — tetszőleges $a, b$-re. Ha $(a, b) = 1$, akkor $a$ és $b$ prímosztói különbözők, és $ab$ különböző prímosztói ezek uniója, így $\omega(ab) = \omega(a) + \omega(b)$. Teljesen additív azonban nem: $\omega(4) = 1 \ne 2 = \omega(2) + \omega(2)$. $\blacksquare$
:::

### Explicit képletek

A multiplikativitás miatt elég a prímhatványokon kiszámolni a függvényeket.

> **17.18. Tétel (a 6.10. Tétel).** Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor
> $$\varphi(n) = n\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_r}\right) = n\prod_{p \mid n}\left(1 - \frac{1}{p}\right),$$
> és $\varphi(1) = 1$.

*Bizonyítás.* A multiplikativitás miatt $\varphi(n) = \varphi(p_1^{\alpha_1}) \cdots \varphi(p_r^{\alpha_r})$. Egy $p^k$ prímhatványra ($k \ge 1$) az $1 \le x \le p^k$ számok közül azok nem relatív prímek $p^k$-hoz, amelyek oszthatók $p$-vel; ezek a $p, 2p, \dots, p^{k-1} \cdot p$ számok, $p^{k-1}$ darab. Így
$$\varphi(p^k) = p^k - p^{k-1} = p^k\left(1 - \frac{1}{p}\right).$$
Ezeket összeszorozva
$$\varphi(n) = p_1^{\alpha_1}\left(1 - \frac{1}{p_1}\right) \cdots p_r^{\alpha_r}\left(1 - \frac{1}{p_r}\right) = n\left(1 - \frac{1}{p_1}\right)\cdots\left(1 - \frac{1}{p_r}\right). \ \blacksquare$$

> **17.19. Tétel.** Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor $d(n) = (\alpha_1 + 1)(\alpha_2 + 1)\cdots(\alpha_r + 1)$, és $d(1) = 1$.

*Bizonyítás.* A multiplikativitás miatt elég $d(p^k)$-t meghatározni: $p^k$ osztói $1, p, p^2, \dots, p^k$, tehát $d(p^k) = k + 1$. $\blacksquare$

> **17.20. Tétel.** Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor
> $$\sigma(n) = \frac{p_1^{\alpha_1 + 1} - 1}{p_1 - 1} \cdot \frac{p_2^{\alpha_2 + 1} - 1}{p_2 - 1} \cdots \frac{p_r^{\alpha_r + 1} - 1}{p_r - 1},$$
> és $\sigma(1) = 1$.

*Bizonyítás.* Elég $\sigma(p^k)$-t meghatározni, ami a mértani sor összegképlete szerint
$$\sigma(p^k) = 1 + p + p^2 + \dots + p^k = \frac{p^{k+1} - 1}{p - 1}. \ \blacksquare$$

**Kidolgozott példa.** Adjuk meg $d(2000)$, $\sigma(2000)$, $\mu(2000)$, $\omega(2000)$, $\Omega(2000)$ és $\varphi(2000)$ értékét! A kanonikus alak: $2000 = 2^4 \cdot 5^3$. Tehát
$$d(2000) = (4 + 1)(3 + 1) = 20, \qquad \sigma(2000) = \frac{2^5 - 1}{2 - 1} \cdot \frac{5^4 - 1}{5 - 1} = 31 \cdot 156 = 4836,$$
$$\mu(2000) = 0, \qquad \omega(2000) = 2, \qquad \Omega(2000) = 4 + 3 = 7, \qquad \varphi(2000) = 2000 \cdot \frac{1}{2} \cdot \frac{4}{5} = 800.$$

### 17.2. Multiplikatív függvény összegzési függvénye is multiplikatív

> **17.21. Tétel.** Ha $f(n)$ multiplikatív, akkor a
> $$g(n) = \sum_{d \mid n} f(d)$$
> összegzési függvény is multiplikatív. (Az összegzés $n$ összes pozitív osztójára történik.)

*Bizonyítás.* Legyen $(n_1, n_2) = 1$. A 17.16. Lemma szerint $n_1 n_2$ minden $c$ osztója pontosan egyféleképpen írható $c = d_1 d_2$ alakban, ahol $d_1 \mid n_1$ és $d_2 \mid n_2$. Ezért
$$g(n_1 n_2) = \sum_{c \mid n_1 n_2} f(c) = \sum_{d_1 \mid n_1}\sum_{d_2 \mid n_2} f(d_1 d_2).$$
Mivel $d_1 \mid n_1$, $d_2 \mid n_2$ és $(n_1, n_2) = 1$, ezért $(d_1, d_2) = 1$, így $f(d_1 d_2) = f(d_1) f(d_2)$, és
$$g(n_1 n_2) = \sum_{d_1 \mid n_1}\sum_{d_2 \mid n_2} f(d_1)f(d_2) = \left(\sum_{d_1 \mid n_1} f(d_1)\right)\left(\sum_{d_2 \mid n_2} f(d_2)\right) = g(n_1)g(n_2). \ \blacksquare$$

(Megjegyezzük, hogy a $d$ és $\sigma$ multiplikativitása is következik ebből a tételből: $d(n) = \sum_{d \mid n} 1$ és $\sigma(n) = \sum_{d \mid n} d$, és az $f(n) = 1$, illetve $f(n) = n$ függvények multiplikatívak.)

A következő tétel fontos és hasznos példa arra, hogyan határozható meg egy összegzési függvény explicit képlettel. Később, a 20.4. Tétel bizonyításában is használjuk.

> **17.22. Tétel.** Minden $n$ pozitív egészre
> $$\sum_{d \mid n} \varphi(d) = n.$$

**Példa.** $n = 12$: az osztók $1, 2, 3, 4, 6, 12$, és $\varphi(1) + \varphi(2) + \varphi(3) + \varphi(4) + \varphi(6) + \varphi(12) = 1 + 1 + 2 + 2 + 2 + 4 = 12$.

*Bizonyítás.* A $\varphi$ multiplikatív, így a 17.21. Tétel szerint a $g(n) = \sum_{d \mid n}\varphi(d)$ függvény is az. Ha tehát $n = p_1^{\alpha_1}\cdots p_r^{\alpha_r}$, akkor
$$g(n) = g(p_1^{\alpha_1}) \cdots g(p_r^{\alpha_r}). \qquad (17.11)$$
Egy prímhatványra:
$$g(p^\alpha) = \varphi(1) + \varphi(p) + \varphi(p^2) + \dots + \varphi(p^\alpha) = 1 + (p - 1) + (p^2 - p) + \dots + (p^\alpha - p^{\alpha-1}) = p^\alpha,$$
mert az összeg „teleszkópos”. Ezt (17.11)-be írva $g(n) = p_1^{\alpha_1} \cdots p_r^{\alpha_r} = n$. $\blacksquare$

::: kiegeszites
**Kiegészítés: egy leszámlálásos bizonyítás.** Tekintsük az
$$\frac{1}{n}, \frac{2}{n}, \dots, \frac{n}{n}$$
törteket, és hozzuk mindegyiket legegyszerűbb alakra. Mindegyik $\frac{a}{d}$ alakú lesz, ahol $d \mid n$, $1 \le a \le d$ és $(a, d) = 1$; és megfordítva, minden ilyen $\frac{a}{d}$ tört pontosan egyszer fordul elő (mint $\frac{a \cdot n/d}{n}$). Egy rögzített $d \mid n$ nevezőhöz pontosan $\varphi(d)$ ilyen számláló tartozik. Az $n$ darab törtet a nevezőjük szerint csoportosítva: $n = \sum_{d \mid n}\varphi(d)$. (Például $n = 6$-ra: $\frac{1}{6}, \frac{1}{3}, \frac{1}{2}, \frac{2}{3}, \frac{5}{6}, \frac{1}{1}$ — a nevezők $6, 3, 2, 3, 6, 1$, és $\varphi(6) + \varphi(3) + \varphi(2) + \varphi(1) = 2 + 2 + 1 + 1 = 6$.) $\blacksquare$
:::

### A Möbius-féle megfordítási formula

Fontos ismerni a **Möbius-féle megfordítási formulát** is: ha ismerjük egy függvény összegzési függvényét, abból visszakaphatjuk magát a függvényt.

> **17.23. Tétel (Möbius-féle megfordítás).** Legyen $f(n)$ számelméleti függvény, és
> $$g(n) = \sum_{d \mid n} f(d).$$
> Ekkor $g$-ből $f$ a következő képlettel határozható meg:
> $$f(n) = \sum_{d \mid n} \mu(d)\, g\!\left(\frac{n}{d}\right).$$

*Bizonyítás.* Először kiszámoljuk a $\mu$ összegzési függvényét. A $\mu$ multiplikatív, így a 17.21. Tétel szerint $\delta(n) = \sum_{d \mid n}\mu(d)$ is az. Prímhatványra ($\alpha \ge 1$):
$$\delta(p^\alpha) = \mu(1) + \mu(p) + \mu(p^2) + \dots + \mu(p^\alpha) = 1 - 1 + 0 + \dots + 0 = 0.$$
Tehát
$$\sum_{d \mid n}\mu(d) = \delta(n) = \begin{cases} 1, & \text{ha } n = 1, \\ 0, & \text{ha } n > 1. \end{cases}$$
Ezt felhasználva:
$$\sum_{d \mid n}\mu(d)\, g\!\left(\frac{n}{d}\right) = \sum_{d \mid n}\mu(d)\sum_{d' \mid \frac{n}{d}} f(d') = \sum_{d' \mid n} f(d') \sum_{d \mid \frac{n}{d'}} \mu(d) = \sum_{d' \mid n} f(d')\,\delta\!\left(\frac{n}{d'}\right) = f(n).$$
A második lépésben az összegzés sorrendjét cseréltük fel: mindkét kettős összeg pontosan azokon a $(d, d')$ párokon fut végig, amelyekre $dd' \mid n$. Az utolsó lépésben csak a $d' = n$ tag marad meg. $\blacksquare$

**Példa.** A 17.22. Tétel szerint a $\varphi$ összegzési függvénye $g(n) = n$. A megfordítási formula szerint tehát
$$\varphi(n) = \sum_{d \mid n}\mu(d)\frac{n}{d}.$$
Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor csak a négyzetmentes $d$-k (a $p_i$-k különböző részszorzatai) adnak nem nulla tagot, és
$$\varphi(n) = n\left(1 - \sum_i \frac{1}{p_i} + \sum_{i < j}\frac{1}{p_i p_j} - \dots\right) = n\prod_{i=1}^r\left(1 - \frac{1}{p_i}\right)$$
— ez a 17.18. Tétel egy újabb bizonyítása (lényegében a logikai szita formulája).

## 18. Tökéletes számok

A tökéletes számok definíciója már Eukleidész *Elemek* című művében (IX. könyv) felbukkan; az *Elemek* első angol nyelvű kiadását Sir Henry Billingsley készítette 1570-ben.

> **18.1. Definíció.** Az $n$ pozitív egész **tökéletes szám**, ha pozitív osztóinak összege a szám kétszerese:
> $$\sigma(n) = 2n.$$

Ez ugyanaz, mint hogy a szám *önmagánál kisebb* osztóinak összege éppen önmaga. Tökéletes szám például a $6, 28, 496, 8128$. Az első kettőre ellenőrizzük:
$$2 \cdot 6 = 1 + 2 + 3 + 6, \qquad 2 \cdot 28 = 1 + 2 + 4 + 7 + 14 + 28.$$
A sor folytatható: az első 48 (páros) tökéletes szám éppen a $2^{p-1}(2^p - 1)$ alakú számok azokra a $p$ prímekre, amelyekre $2^p - 1$ Mersenne-prím, nevezetesen
$$p = 2, 3, 5, 7, 13, 17, 19, 31, 61, 89, 107, 127, 521, 607, 1279, 2203, 2281, 3217, 4253, 4423, 9689, 9941, 11213, 19937,$$
$$21701, 23209, 44497, 86243, 110503, 132049, 216091, 756839, 859433, 1257787, 1398269, 2976221, 3021377,$$
$$6972593, 13466917, 20996011, 24036583, 25964951, 30402457, 32582657, 37156667, 42643801, 43112609, 57885161.$$
(Ez az OEIS-ben az A000043 sorozat. Azóta négy további Mersenne-prímet találtak; a legutóbbi a 2. fejezetben említett $2^{136\,279\,841} - 1$.)

A következőt már Eukleidész is tudta:

> **18.2. Tétel (Eukleidész).** Ha $2^p - 1$ Mersenne-prím, akkor $2^{p-1}(2^p - 1)$ tökéletes szám.

*Bizonyítás.* Legyen $q = 2^p - 1$ (prím) és $m = 2^{p-1} q$; ez a kanonikus alak. A $\sigma$ explicit képlete szerint
$$\sigma(m) = \frac{2^p - 1}{2 - 1} \cdot \frac{q^2 - 1}{q - 1} = (2^p - 1)(q + 1) = (2^p - 1) \cdot 2^p = 2 \cdot 2^{p-1}(2^p - 1) = 2m. \ \blacksquare$$

Ennél azonban több is mondható. Ibn al-Hajszam azt sejtette, hogy *minden* páros tökéletes szám ilyen alakú. Ezt Euler bizonyította be a XVIII. században (a bizonyítás csak halála után, 1849-ben jelent meg):

> **18.3. Tétel (Euler).** Minden páros tökéletes szám $2^{p-1}(2^p - 1)$ alakú, ahol $2^p - 1$ Mersenne-prím.

(Emlékeztetünk: ha $2^p - 1$ prím, akkor a 2.21. Feladat szerint $p$ is szükségképpen prím.)

*Bizonyítás.* Legyen $m$ páros tökéletes szám, és írjuk $m = 2^\alpha \cdot b$ alakba, ahol $b$ páratlan és $\alpha \ge 1$. Mivel $\sigma$ multiplikatív és $(2^\alpha, b) = 1$:
$$\sigma(m) = \sigma(2^\alpha)\sigma(b) = (2^{\alpha+1} - 1)\sigma(b).$$
Másrészt $m$ tökéletes, így $\sigma(m) = 2m = 2^{\alpha+1} b$. Tehát
$$2^{\alpha+1} b = (2^{\alpha+1} - 1)\sigma(b), \qquad \frac{b}{\sigma(b)} = \frac{2^{\alpha+1} - 1}{2^{\alpha+1}}.$$
A jobb oldali tört nem egyszerűsíthető (a számláló páratlan, a nevező kettőhatvány), ezért
$$b = (2^{\alpha+1} - 1)c, \qquad \sigma(b) = 2^{\alpha+1} c$$
alkalmas $c$ pozitív egésszel. Ha $c > 1$ volna, akkor $b$-nek az $1$, a $c$ és a $b$ három különböző osztója volna ($c < b$, mert $2^{\alpha+1} - 1 \ge 3$), így
$$\sigma(b) \ge 1 + c + b = 1 + c + (2^{\alpha+1} - 1)c = 2^{\alpha+1}c + 1 > \sigma(b),$$
ellentmondás. Tehát $c = 1$, azaz $b = 2^{\alpha+1} - 1$ és $\sigma(b) = 2^{\alpha+1} = b + 1$. Egy $b > 1$ számra $\sigma(b) = b + 1$ pontosan akkor teljesül, ha $b$-nek csak az $1$ és önmaga osztója, vagyis ha **$b$ prím**. Így $2^{\alpha+1} - 1$ Mersenne-prím, $\alpha + 1$ prím (2.21. Feladat), és $p = \alpha + 1$ jelöléssel
$$m = 2^\alpha b = 2^{p-1}(2^p - 1). \ \blacksquare$$

A páros tökéletes számok tehát pontosan megfelelnek a Mersenne-prímeknek. A páratlanokról szinte semmit sem tudunk: máig egyetlen páratlan tökéletes számot sem találtak (számítógépes vizsgálatok szerint ha létezik, nagyobb $10^{1500}$-nál), ezért úgy gondoljuk, hogy a következő sejtés igaz:

> **18.4. Sejtés.** Nem létezik páratlan tökéletes szám.

### Barátságos számok

A tökéletes számokhoz kapcsolódó fogalom a barátságos számpár.

> **18.5. Definíció.** Az $a \ne b$ pozitív egészek **barátságos számpárt** alkotnak, ha az egyik szám önmagánál kisebb osztóinak összege éppen a másik, és viszont:
> $$\sigma(a) - a = b, \qquad \sigma(b) - b = a.$$

(Ezzel ekvivalens: $\sigma(a) = \sigma(b) = a + b$.) Például a $220$ és a $284$ barátságos számok: a $220$ valódi osztói $1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110$, ezek összege $284$; a $284$ valódi osztói $1, 2, 4, 71, 142$, ezek összege $220$. Az első tíz barátságos számpár (a kisebbik tag szerint rendezve):
$$(220, 284), \ (1184, 1210), \ (2620, 2924), \ (5020, 5564), \ (6232, 6368),$$
$$(10744, 10856), \ (12285, 14595), \ (17296, 18416), \ (63020, 76084), \ (66928, 66992).$$
(Ez az OEIS A259180 sorozata.)

Szábit ibn Kurra (meghalt 901-ben) a IX. században megadta barátságos számpárok egy paraméteres alakját. Ezzel persze nem sorolta fel az összes barátságos számpárt (az $(1184, 1210)$ például nem ilyen alakú), de azt könnyű belátni, hogy az ilyen alakú számok valóban barátságosak.

> **18.6. Tétel (Szábit ibn Kurra).** Legyen $n \ge 2$ egész, és
> $$x = 3 \cdot 2^n - 1, \qquad y = 3 \cdot 2^{n-1} - 1, \qquad z = 9 \cdot 2^{2n-1} - 1.$$
> Ha $x$, $y$ és $z$ prímek, akkor az
> $$a = 2^n \cdot x \cdot y \qquad \text{és} \qquad b = 2^n \cdot z$$
> számok barátságos számpárt alkotnak.

A bizonyítást a jegyzet az olvasóra bízza.

::: kiegeszites
**Kiegészítés: a 18.6. Tétel bizonyítása.** $x$, $y$, $z$ páratlan prímek, és $x \ne y$, így $a = 2^n x y$ és $b = 2^n z$ kanonikus alakok. A $\sigma$ multiplikativitása szerint
$$\sigma(a) = (2^{n+1} - 1)(x + 1)(y + 1) = (2^{n+1} - 1) \cdot 3 \cdot 2^n \cdot 3 \cdot 2^{n-1} = 9 \cdot 2^{2n-1}(2^{n+1} - 1),$$
$$\sigma(b) = (2^{n+1} - 1)(z + 1) = 9 \cdot 2^{2n-1}(2^{n+1} - 1).$$
Tehát $\sigma(a) = \sigma(b)$. Már csak azt kell belátni, hogy ez $a + b$:
$$a + b = 2^n(xy + z) = 2^n\big((3 \cdot 2^n - 1)(3 \cdot 2^{n-1} - 1) + 9 \cdot 2^{2n-1} - 1\big) = 2^n\big(9 \cdot 2^{2n} - 9 \cdot 2^{n-1}\big) = 9 \cdot 2^{2n-1}(2^{n+1} - 1).$$
(A belső zárójelben $9 \cdot 2^{2n-1} - 3 \cdot 2^n - 3 \cdot 2^{n-1} + 1 + 9 \cdot 2^{2n-1} - 1 = 9 \cdot 2^{2n} - 9 \cdot 2^{n-1}$.) $\blacksquare$

$n = 2$-re $x = 11$, $y = 5$, $z = 71$ prímek, és $a = 4 \cdot 55 = 220$, $b = 4 \cdot 71 = 284$. $n = 4$-re ($x = 47$, $y = 23$, $z = 1151$) a $(17296, 18416)$ párt kapjuk (ezt Fermat találta meg 1636-ban), $n = 7$-re ($x = 383$, $y = 191$, $z = 73727$) pedig a $(9363584, 9437056)$ párt (Descartes, 1638). Más $n \le 7$ esetén a három szám valamelyike összetett.
:::

Érdemes még megemlíteni a **hiányos** és a **bővelkedő** számok fogalmát:

> **18.7. Definíció.** Az $n$ pozitív egész **hiányos**, ha $\sigma(n) < 2n$, és **bővelkedő**, ha $\sigma(n) > 2n$.

Például a prímek és a prímhatványok mind hiányosak ($\sigma(p^k) = \frac{p^{k+1} - 1}{p - 1} < 2p^k$), a $12$ bővelkedő ($\sigma(12) = 28 > 24$). A legkisebb páratlan bővelkedő szám a $945$ ($\sigma(945) = 1920 > 1890$). A hiányos és bővelkedő számoknak sok érdekes tulajdonsága van, de ezek vizsgálata túlmegy könyvünk keretein.

## Az V. rész összefoglalása

- **Multiplikatív** függvény: $f(ab) = f(a)f(b)$, ha $(a, b) = 1$; ekkor $f(1) = 1$, és $f$-et a prímhatványokon felvett értékei meghatározzák. **Additív:** $g(ab) = g(a) + g(b)$, ha $(a, b) = 1$.
- **Nevezetes függvények** ($n = \prod p_i^{\alpha_i}$): $d(n) = \prod(\alpha_i + 1)$; $\sigma(n) = \prod \frac{p_i^{\alpha_i + 1} - 1}{p_i - 1}$; $\varphi(n) = n\prod(1 - \frac{1}{p_i})$; $\mu(n) = (-1)^r$ négyzetmentes $n$-re, különben $0$; $\omega(n) = r$; $\Omega(n) = \sum \alpha_i$. Az első négy multiplikatív, $\omega$ additív, $\Omega$ teljesen additív.
- **Összegzési függvény:** ha $f$ multiplikatív, akkor $\sum_{d \mid n} f(d)$ is az. Speciálisan $\sum_{d \mid n}\varphi(d) = n$ és $\sum_{d \mid n}\mu(d) = [n = 1]$.
- **Möbius-féle megfordítás:** $g(n) = \sum_{d \mid n} f(d) \iff f(n) = \sum_{d \mid n}\mu(d)\,g(n/d)$.
- **Tökéletes számok:** $\sigma(n) = 2n$. Eukleidész–Euler: a páros tökéletes számok pontosan a $2^{p-1}(2^p - 1)$ számok, ahol $2^p - 1$ Mersenne-prím. Páratlan tökéletes szám nem ismert. **Barátságos számpár:** $\sigma(a) = \sigma(b) = a + b$; Szábit ibn Kurra képlete.

## Feladatok az V. részhez

1. Számítsuk ki: $d(360)$, $\sigma(360)$, $\varphi(360)$, $\mu(360)$, $\omega(360)$, $\Omega(360)$.
2. Bizonyítsuk be, hogy $d(n)$ pontosan akkor páratlan, ha $n$ négyzetszám.
3. Melyik a legkisebb pozitív egész, amelynek pontosan $9$ pozitív osztója van?
4. Határozzuk meg az összes olyan $n$-et, amelyre $\varphi(n) = 12$.
5. Bizonyítsuk be, hogy a $\varphi(n) = 14$ egyenletnek nincs megoldása.
6. Bizonyítsuk be, hogy $\sigma(n)$ pontosan akkor páratlan, ha $n$ négyzetszám vagy egy négyzetszám kétszerese.
7. Bizonyítsuk be, hogy $\sum_{d \mid n}\frac{\mu(d)}{d} = \frac{\varphi(n)}{n}$.
8. Bizonyítsuk be, hogy minden páros tökéletes szám háromszögszám, azaz $\frac{k(k+1)}{2}$ alakú.

### Megoldási útmutatók

1. $360 = 2^3 \cdot 3^2 \cdot 5$: $d = 4 \cdot 3 \cdot 2 = 24$; $\sigma = 15 \cdot 13 \cdot 6 = 1170$; $\varphi = 360 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} = 96$; $\mu = 0$; $\omega = 3$; $\Omega = 6$.
2. $d(n) = \prod(\alpha_i + 1)$ pontosan akkor páratlan, ha minden $\alpha_i$ páros. (Szemléletesen: az osztók $d \leftrightarrow n/d$ párokba állíthatók, és csak $d = \sqrt{n}$ esetén esik egybe a pár két tagja.)
3. $d(n) = 9 = 9$ vagy $3 \cdot 3$, így $n = p^8$ vagy $n = p^2 q^2$. A legkisebb: $2^2 \cdot 3^2 = 36$ (a $2^8 = 256$ nagyobb).
4. Ha $p^\alpha \| n$, akkor $p^{\alpha - 1}(p - 1) \mid 12$, ezért $p - 1 \mid 12$, azaz $p \in \{2, 3, 5, 7, 13\}$, és a kitevők is erősen korlátozottak. Az esetek végignézésével: $n \in \{13, 21, 26, 28, 36, 42\}$.
5. Ha $p \mid n$ páratlan prím, akkor $p - 1 \mid 14$, tehát $p - 1 \in \{2, 14\}$, $p \in \{3\}$ (a $15$ nem prím). Ha $3 \mid n$, akkor $\varphi(n)$ tényezői között $\varphi(3^\alpha) = 2 \cdot 3^{\alpha-1}$ szerepel; mivel $9 \nmid 14$ és $3 \nmid 14$, $\alpha = 1$, és $n = 3 \cdot 2^k$ vagy $2^k$, amelyekre $\varphi(n)$ kettőhatvány — nem $14$.
6. $\sigma(2^k) = 2^{k+1} - 1$ mindig páratlan. Páratlan $p$-re $\sigma(p^k) = 1 + p + \dots + p^k$ pontosan akkor páratlan, ha a $k + 1$ páratlan tag száma páratlan, azaz $k$ páros. Tehát $\sigma(n)$ pontosan akkor páratlan, ha minden páratlan prím kitevője páros: $n = 2^k m^2$, ami $k$ paritásától függően négyzetszám vagy négyzetszám kétszerese.
7. A Möbius-megfordítás példájában láttuk, hogy $\varphi(n) = \sum_{d \mid n}\mu(d)\frac{n}{d}$; osszunk $n$-nel.
8. $2^{p-1}(2^p - 1) = \frac{(2^p - 1) \cdot 2^p}{2}$, tehát $k = 2^p - 1$-gyel háromszögszám.

---
