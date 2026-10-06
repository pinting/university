# Algebra és számelmélet – 6. feladatsor – megoldások

## 1. feladat

Igazoljuk a kongruencia alábbi elemi tulajdonságait:

(1) $a \equiv b \pmod m$, akkor $b \equiv a \pmod m$

(2) $a \equiv b \pmod m$ és $b \equiv c \pmod m$, akkor $a \equiv c \pmod m$

(3) $a \equiv a' \pmod m$ és $b \equiv b' \pmod m$, akkor $a + a' \equiv b + b' \pmod m$, $ab \equiv a'b' \pmod m$

(4) $x, y \in \mathbb{Z}$, $a \equiv a' \pmod m$ és $b \equiv b' \pmod m$, akkor $xa + yb \equiv xa' + yb' \pmod m$.

**Megoldás.**

Definíció szerint $a \equiv b \pmod m \iff m \mid a - b$.

(1) Ha $m \mid a - b$, akkor $m \mid -(a - b) = b - a$, azaz $b \equiv a$.

(2) Ha $m \mid a - b$ és $m \mid b - c$, akkor $m \mid (a - b) + (b - c) = a - c$, azaz $a \equiv c$.

(3) A lapon szereplő $a + a' \equiv b + b'$ elírás; a helyes állítás $a + b \equiv a' + b'$. (Az elírt alak nem igaz: $a = a' = 0$, $b = b' = 1$, $m = 3$ esetén $0 \not\equiv 2$.)

- Összeg: $(a + b) - (a' + b') = (a - a') + (b - b')$, és mindkét tag osztható $m$-mel.
- Szorzat: $ab - a'b' = a(b - b') + b'(a - a')$, és mindkét tag osztható $m$-mel.

(4) $(xa + yb) - (xa' + yb') = x(a - a') + y(b - b')$ osztható $m$-mel. $\blacksquare$

::: elmelet
**Elméleti háttér — a kongruencia ekvivalenciareláció és kompatibilis a műveletekkel.** $a \equiv b \pmod m \iff m \mid a - b$. Reflexív, szimmetrikus, tranzitív, és **összeadással, szorzással felcserélhető** — ezért a maradékosztályokkal számolhatunk ($\mathbb Z_m$ gyűrű). A bizonyítások mind arra épülnek, hogy $m$ többszöröseinek összege és egész számszorosa is $m$ többszöröse; a szorzatnál a „hozzáadunk és elveszünk” fogás: $ab - a'b' = a(b - b') + b'(a - a')$.
:::

## 2. feladat

Adjunk meg egy-egy teljes maradékrendszert mod 7, amely (1) csupa páratlan számból, (2) csupa negatív számból áll, illetve (3) csupa prímszámból áll.

**Megoldás.**

Teljes maradékrendszer mod 7: 7 szám, amelyek páronként különböző maradékot adnak (minden maradék $0, \dots, 6$ pontosan egyszer).

1. **Csupa páratlan:** $1, 3, 5, 7, 9, 11, 13$; maradékaik $1, 3, 5, 0, 2, 4, 6$.
2. **Csupa negatív:** $-1, -2, -3, -4, -5, -6, -7$; maradékaik $6, 5, 4, 3, 2, 1, 0$.
3. **Csupa prím:** $7, 29, 2, 3, 11, 5, 13$; maradékaik rendre $0, 1, 2, 3, 4, 5, 6$.

::: elmelet
**Elméleti háttér — teljes maradékrendszer.** $m$ darab egész, amelyek páronként inkongruensek modulo $m$ (így minden maradékosztályból pontosan egyet tartalmaznak). Bármely osztályból tetszőleges reprezentáns választható; a feladat a reprezentánsok ügyes megválasztása (páratlan: $+7$ eltolással, negatív: $-7$-tel, prím: **Dirichlet-tétel** szerint minden $(a, 7) = 1$ osztályban van prím, a $0$ osztályban a $7$).
:::

## 3. feladat

Redukált maradékrendszert alkot-e a $\{7, 19, 31, 43, 55, 67, 79, 91\}$ halmaz mod 30?

**Megoldás.**

**Nem.** A redukált maradékrendszer elemei relatív prímek a modulushoz. A $\varphi(30) = 8$ elemszám stimmel, de $55 = 5 \cdot 11$ és $(55, 30) = 5 \neq 1$.

(Ráadásul a maradékok sem különbözőek: mod 30 a halmaz $7, 19, 1, 13, 25, 7, 19, 1$, hiszen az elemek $12$-esével nőnek.)

::: elmelet
**Elméleti háttér — redukált maradékrendszer.** $\varphi(m)$ darab, $m$-hez relatív prím, páronként inkongruens egész. Két feltétel: (1) minden elem relatív prím $m$-hez, (2) nincs két kongruens elem. Egyetlen sérülő feltétel elég a cáfolathoz. (Ha egy számtani sorozat különbsége nem relatív prím a modulushoz, a maradékok ismétlődnek.)
:::

## 4. feladat

Határozzuk meg a $7^{2026}$ szám utolsó két számjegyét.

**Megoldás.**

Az utolsó két számjegy a mod 100 maradék. $7^2 = 49$ és $7^4 = 2401 \equiv 1 \pmod{100}$. Mivel $2026 = 4 \cdot 506 + 2$:
$$7^{2026} = (7^4)^{506} \cdot 7^2 \equiv 1 \cdot 49 \pmod{100}.$$
**Az utolsó két számjegy: 49.**

::: elmelet
**Elméleti háttér — utolsó két jegy és a rend.** Az utolsó két jegy a $100$-as maradék. Ha egy kis kitevőre $a^k \equiv 1 \pmod{100}$ (itt $k = 4$, a $7$ **rendje**), akkor a kitevőt elég $k$-val osztva venni. Általános korlát: az Euler–Fermat-tétel szerint $k \mid \varphi(100) = 40$.
:::

## 5. feladat (házi feladat)

Igazoljuk, hogy ha $m$ prím, akkor a kongruenciákból négyzetgyököt vonhatunk: ha $a^2 \equiv b^2 \pmod m$, akkor $a \equiv b$ vagy $a \equiv -b \pmod m$. Igaz-e ez minden összetett $m$ modulusra?

**Megoldás.**

**$m$ prím.** $a^2 \equiv b^2 \pmod m \iff m \mid a^2 - b^2 = (a - b)(a + b)$. Prím szorzatot csak úgy oszthat, ha valamelyik tényezőt osztja. Tehát $m \mid a - b$ vagy $m \mid a + b$, azaz $a \equiv b$ vagy $a \equiv -b$. $\blacksquare$

**Összetett modulusra nem igaz minden esetben.** Ellenpéldák:

- $m = 4$: $0^2 \equiv 2^2 \pmod 4$, de $0 \not\equiv \pm 2 \pmod 4$.
- $m = 15$: $1^2 \equiv 4^2 = 16 \pmod{15}$, de $1 \not\equiv \pm 4 \pmod{15}$.

Van viszont olyan összetett modulus, amelyre igaz, például $m = 6$. Pontosan a $m = 2p$ ($p$ páratlan prím) alakú összetett számok ilyenek:

- Ha $p^2 \mid m$ valamely $p$ prímre, akkor $a = 0$, $b = m/p$ ellenpélda: $m \mid b^2$, de $b \not\equiv 0$.
- Egyébként $m$ négyzetmentes. Ha két különböző páratlan prímosztója van, $p$ és $q$, akkor $(m/q, q) = 1$. A kínai maradéktétel szerint van olyan $b$, hogy $b \equiv 1 \pmod{m/q}$ és $b \equiv -1 \pmod q$. Ekkor $b^2 \equiv 1 \pmod m$, de $b \not\equiv 1$ (mod $q$ nem) és $b \not\equiv -1$ (mod $p$ nem). Tehát $a = 1$ és ez a $b$ ellenpélda.
- $m = 2p$-re: mod 2 mindig $b \equiv -b$, mod $p$ pedig $a \equiv \pm b$. Ezért $a \equiv \pm b \pmod{2p}$.

::: elmelet
**Elméleti háttér — prímmodulus: $\mathbb Z_p$ test.** Prím $p$ esetén $p \mid xy \Rightarrow p \mid x$ vagy $p \mid y$ (Euklideszi lemma), ezért $\mathbb Z_p$ nullosztómentes (test). $a^2 - b^2 = (a - b)(a + b)$, így négyzetgyökvonás „$\pm$ erejéig” egyértelmű. Összetett modulusnál nullosztók vannak, és a **kínai maradéktétel** lehetővé teszi, hogy a prímtényezőkre külön-külön különböző előjelet válasszunk — ezért ott több négyzetgyök is lehet.
:::

## 6. feladat

Számítsuk ki az alábbi hatványok maradékait a megadott modulusokra nézve: $12^{1003} \pmod{17}$ és $5^{123} \pmod{18}$.

**Megoldás.**

**$12^{1003} \bmod 17$:** a kis Fermat-tétel szerint $12^{16} \equiv 1 \pmod{17}$, és $1003 = 16 \cdot 62 + 11$, így $12^{1003} \equiv 12^{11}$. Mivel $12 \equiv -5$:
$$(-5)^2 = 25 \equiv 8,\quad (-5)^4 \equiv 64 \equiv -4,\quad (-5)^8 \equiv 16 \equiv -1 \pmod{17},$$
$$12^{11} \equiv (-5)^8 \cdot (-5)^2 \cdot (-5) \equiv (-1) \cdot 8 \cdot (-5) = 40 \equiv 6 \pmod{17}.$$
**A maradék 6.**

**$5^{123} \bmod 18$:** $(5, 18) = 1$ és $\varphi(18) = 6$, így az Euler–Fermat-tétel szerint $5^6 \equiv 1$. Mivel $123 = 6 \cdot 20 + 3$:
$$5^{123} \equiv 5^3 = 125 = 6 \cdot 18 + 17 \equiv 17 \pmod{18}.$$
**A maradék 17.**

::: elmelet
**Elméleti háttér — kis Fermat- és Euler–Fermat-tétel.** Ha $(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1 \pmod m$ (prím $m = p$-re $a^{p-1} \equiv 1$). Így a kitevő $\varphi(m)$ szerint redukálható: $a^n \equiv a^{n \bmod \varphi(m)}$. A maradék hatványt ismételt négyzetre emeléssel (és negatív reprezentánsok használatával) számoljuk.
:::

## 7. feladat

Bizonyítsuk be, hogy az $n^7 - n$ kifejezés minden $n$ egész szám esetén osztható 42-vel.

**Megoldás.**

$42 = 2 \cdot 3 \cdot 7$, páronként relatív prím tényezőkkel. Elég tehát mindhárommal való oszthatóságot igazolni.

- **7:** a kis Fermat-tétel szerint $n^7 \equiv n \pmod 7$.
- **2 és 3:** $n^7 - n = n(n^6 - 1) = n(n^3 - 1)(n^3 + 1) = (n - 1)n(n + 1)(n^2 + n + 1)(n^2 - n + 1)$. Ebben szerepel három szomszédos egész, $(n - 1)n(n + 1)$ szorzata, ami osztható 2-vel és 3-mal.

Tehát $42 \mid n^7 - n$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszthatóság prímtényezőnként.** $42 = 2 \cdot 3 \cdot 7$ páronként relatív prím tényezőkkel; mindegyikkel külön elég. A kis Fermat-tétel $n^p \equiv n \pmod p$ alakja **minden** egészre igaz (a $p \mid n$ esetben is). Kisebb prímekre szorzattá bontással szomszédos számok szorzatát keressük.
:::

## 8. feladat

Legyen $m$ páros, és $a_1, a_2, \dots, a_m$ illetve $b_1, b_2, \dots, b_m$ egy-egy teljes maradékrendszer mod $m$. Igazoljuk, hogy $a_1 + b_1, a_2 + b_2, \dots, a_m + b_m$ nem teljes maradékrendszer mod $m$.

**Megoldás.**

Mindkét rendszer elemei a $0, 1, \dots, m - 1$ maradékokat adják valamilyen sorrendben. Ezért
$$\sum_{i=1}^m a_i \equiv \sum_{i=1}^m b_i \equiv 0 + 1 + \dots + (m - 1) = \frac{m(m - 1)}{2} \pmod m.$$
Páros $m$-re $\frac{m(m-1)}{2} = \frac m2 (m - 1) = \frac m2 \cdot m - \frac m2 \equiv -\frac m2 \equiv \frac m2 \pmod m$.

Ha $a_i + b_i$ teljes maradékrendszer volna, az összegük $\equiv \frac m2 \pmod m$ lenne. Valójában
$$\sum (a_i + b_i) = \sum a_i + \sum b_i \equiv \frac m2 + \frac m2 = m \equiv 0 \pmod m,$$
és $\frac m2 \not\equiv 0 \pmod m$. Ellentmondás. $\blacksquare$

::: elmelet
**Elméleti háttér — invariáns: a maradékrendszer összege.** Egy teljes maradékrendszer elemeinek összege mindig $0 + 1 + \dots + (m-1) = \frac{m(m-1)}{2}$ modulo $m$, függetlenül a reprezentánsoktól. Páros $m$-re ez $\frac m2 \not\equiv 0$, páratlanra $\equiv 0$. Ha egy feltételezett rendszer összege más maradékot ad, nem lehet teljes maradékrendszer — invariáns-érvelés.
:::

## 9. feladat

Legyen $p$ egy $4k + 3$ alakú prímszám. Igazoljuk, hogy az $x^2 \equiv -1 \pmod p$ kongruenciának nincs megoldása az egész számok körében. (*Segítség.* Kis Fermat-tétel)

**Megoldás.**

Tegyük fel, hogy $x^2 \equiv -1 \pmod p$. Ekkor $p \nmid x$ (különben $0 \equiv -1$ lenne). A kis Fermat-tétel szerint $x^{p - 1} \equiv 1$. Másrészt $p - 1 = 4k + 2$, így
$$x^{p-1} = (x^2)^{2k + 1} \equiv (-1)^{2k + 1} = -1 \pmod p.$$
Tehát $1 \equiv -1 \pmod p$, azaz $p \mid 2$. Ez ellentmondás, mert $p \ge 3$. $\blacksquare$

::: elmelet
**Elméleti háttér — kis Fermat-tétel és rend.** Ha $x^2 \equiv -1 \pmod p$, akkor $x^4 \equiv 1$, tehát $x$ rendje $4$, és a rend osztja $p - 1$-et (kis Fermat). $p = 4k + 3$-ra $4 \nmid p - 1$, ellentmondás. A bizonyítás ugyanezt mondja ki közvetlenül: $x^{p-1} = (x^2)^{(p-1)/2} \equiv (-1)^{\text{páratlan}}$. (Ez a **kvadratikus maradékok** elméletének első lépése: $-1$ pontosan akkor négyzet mod $p$, ha $p \equiv 1 \pmod 4$.)
:::

## 10. feladat

Oldjuk meg az alábbi kongruenciákat: $5x \equiv 8 \pmod{23}$, $17^{41}x \equiv 3 \pmod{100}$, $15x \equiv 7 \pmod{55}$.

**Megoldás.**

**$5x \equiv 8 \pmod{23}$:** $(5, 23) = 1$, és $5 \cdot 14 = 70 = 3 \cdot 23 + 1$, tehát $5^{-1} \equiv 14$. Így $x \equiv 8 \cdot 14 = 112 \equiv 20 \pmod{23}$. **$x \equiv 20 \pmod{23}$.** (Ellenőrzés: $5 \cdot 20 = 100 = 4 \cdot 23 + 8$.)

**$17^{41}x \equiv 3 \pmod{100}$:** $(17, 100) = 1$ és $\varphi(100) = 40$, így $17^{41} \equiv 17$. Az egyenlet $17x \equiv 3 \pmod{100}$. Mivel $17 \cdot 53 = 901 \equiv 1$, kapjuk: $x \equiv 3 \cdot 53 = 159 \equiv 59$. **$x \equiv 59 \pmod{100}$.** (Ellenőrzés: $17 \cdot 59 = 1003$.)

**$15x \equiv 7 \pmod{55}$:** $(15, 55) = 5$, és $5 \nmid 7$. **Nincs megoldás.** ($15x - 55y$ mindig osztható 5-tel.)

::: elmelet
**Elméleti háttér — lineáris kongruencia.** $ax \equiv b \pmod m$ pontosan akkor oldható meg, ha $d = (a, m) \mid b$, és ekkor $d$ megoldás van modulo $m$ (egy modulo $\frac md$). Ha $(a, m) = 1$, egyetlen megoldás van: $x \equiv a^{-1}b$, ahol az inverz a kibővített euklideszi algoritmusból (vagy próbálgatással) jön. Hatványos együtthatót előbb Euler–Fermattal redukálunk.
:::

## 11. feladat

Egy egyetemi rendezvényre 300 forintos és 500 forintos szendvicseket rendeltek, összesen pontosan 7300 forint értékben. Hány darabot vehettek az egyes szendvicsekből, ha mindkét fajtából rendeltek legalább egyet?

**Megoldás.**

Legyen $x$ a 300 Ft-os, $y$ az 500 Ft-os szendvicsek száma, $x, y \ge 1$:
$$300x + 500y = 7300 \iff 3x + 5y = 73.$$
Mod 3: $5y \equiv 2y \equiv 73 \equiv 1$, így $y \equiv 2 \pmod 3$, azaz $y = 2, 5, 8, 11, 14, \dots$; $x = \frac{73 - 5y}{3}$ pozitív kell legyen, tehát $y \le 14$.

| $y$ (500 Ft) | 2 | 5 | 8 | 11 | 14 |
|---|---|---|---|---|---|
| $x$ (300 Ft) | 21 | 16 | 11 | 6 | 1 |

**Öt lehetőség van:** $(x, y) = (21, 2), (16, 5), (11, 8), (6, 11), (1, 14)$.

::: elmelet
**Elméleti háttér — lineáris diofantoszi egyenlet pozitív megoldásai.** $ax + by = c$ megoldásai — ha $(a, b) \mid c$ — egy partikuláris megoldásból és a homogén egyenlet megoldásaiból állnak: $x = x_0 + \frac{b}{d}t$, $y = y_0 - \frac adt$. Modulo $a$ (vagy $b$) vett kongruencia gyorsan adja az egyik változó lehetséges maradékát, a pozitivitási feltételek pedig véges sok $t$-re szűkítenek.
:::

## 12. feladat

Oldjuk meg az egész számok halmazán a következő lineáris diofantoszi egyenleteket:

(1) $14x + 35y = 91$

(2) $15x + 21y = 38$.

**Megoldás.**

(1) $(14, 35) = 7 \mid 91$, így van megoldás. 7-tel osztva $2x + 5y = 13$. Egy partikuláris megoldás $x_0 = 4$, $y_0 = 1$. A homogén egyenlet $2x + 5y = 0$ megoldásai $(5t, -2t)$. Tehát
$$x = 4 + 5t, \quad y = 1 - 2t \qquad (t \in \mathbb{Z}).$$

(2) $(15, 21) = 3$, de $3 \nmid 38$. **Nincs egész megoldás.**

::: elmelet
**Elméleti háttér — megoldhatóság és általános megoldás.** $ax + by = c$ pontosan akkor oldható meg egészekben, ha $(a, b) \mid c$ (a bal oldal mindig osztható $(a, b)$-vel; a Bézout-azonosság pedig mutat megoldást). $d$-vel osztva relatív prím együtthatókat kapunk, és az általános megoldás $x = x_0 + \frac bd t$, $y = y_0 - \frac ad t$, $t \in \mathbb Z$.
:::

## 13. feladat

Igazoljuk, hogy ha $N$ nem $m$-edik hatvány, akkor $\sqrt[m]{N}$ irracionális.

**Megoldás.**

Legyen $N$ pozitív egész, $m \ge 2$, és tegyük fel, hogy $\sqrt[m]{N} = \frac pq$, ahol $p, q$ pozitív egészek és $(p, q) = 1$. Ekkor
$$N q^m = p^m.$$
Ha $q > 1$, legyen $r$ a $q$ egy prímosztója. Ekkor $r \mid p^m$, így (prím lévén) $r \mid p$, ami ellentmond $(p, q) = 1$-nek. Tehát $q = 1$ és $N = p^m$, azaz $N$ $m$-edik hatvány. Ez ellentmond a feltevésnek. $\blacksquare$

(Másképp: a számelmélet alaptétele szerint $p^m$ kanonikus alakjában minden kitevő osztható $m$-mel, és $q^m$-ben is. Így $N = p^m/q^m$-ben is, tehát $N$ $m$-edik hatvány.)

::: elmelet
**Elméleti háttér — irracionalitás prímtényezőkkel.** Ha $\sqrt[m]N = \frac pq$ egyszerűsített tört, akkor $Nq^m = p^m$; a nevező bármely prímosztója az **Euklideszi lemma** szerint $p$-t is osztaná, ellentmondva az egyszerűsítettségnek. Így $q = 1$, és $N$ teljes $m$-edik hatvány. Ez a $\sqrt2 \notin \mathbb Q$ bizonyítás általánosítása.
:::

## 14. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben az egyik szám 15.

**Megoldás.**

A primitív pitagoraszi számhármasok alakja
$$a = u^2 - v^2, \quad b = 2uv, \quad c = u^2 + v^2,$$
ahol $u > v > 0$, $(u, v) = 1$, és $u, v$ különböző paritású. 15 páratlan, így nem lehet $b$.

- **$c = 15$:** $u^2 + v^2 = 15$ nem lehetséges, mert $15 \equiv 3 \pmod 4$ nem áll elő két négyzetszám összegeként.
- **$a = 15$:** $(u - v)(u + v) = 15$, ahol $u - v < u + v$:
  - $u - v = 1$, $u + v = 15$: $u = 8$, $v = 7$, a hármas $(15, 112, 113)$;
  - $u - v = 3$, $u + v = 5$: $u = 4$, $v = 1$, a hármas $(15, 8, 17)$.

  Mindkét esetben $(u, v) = 1$ és $u, v$ különböző paritású, tehát a hármasok primitívek.

**A megoldások: $(8, 15, 17)$ és $(15, 112, 113)$.** (A $(9, 12, 15)$, $(15, 20, 25)$, $(15, 36, 39)$ hármasok nem primitívek.)

::: elmelet
**Elméleti háttér — pitagoraszi számhármasok paraméterezése.** A primitív megoldások pontosan $(u^2 - v^2, 2uv, u^2 + v^2)$, ahol $u > v > 0$, $(u, v) = 1$, $u \not\equiv v \pmod 2$. Adott elem esetén eldöntjük, melyik szerepet töltheti be (páratlan elem nem lehet $2uv$; az átfogó $u^2 + v^2$ nem lehet $\equiv 3 \pmod 4$), majd a megfelelő egyenletet szorzattá bontjuk ($u^2 - v^2 = (u - v)(u + v)$).
:::
