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

## 15. feladat

Keressük meg az összes olyan derékszögű háromszöget, amelynek oldalhosszai egész számok, és a területének mérőszáma pontosan megegyezik a kerületének mérőszámával.

**Megoldás.**

Legyenek a derékszögű háromszög befogói $a$ és $b$, átfogója $c$ ($a, b, c \in \mathbb{Z}^+$, feltehető, hogy $a \le b$). A feltétel szerint
$$\frac{ab}{2} = a + b + c \iff ab - 2(a + b) = 2c.$$
Négyzetre emelve mindkét oldalt, és kihasználva a Pitagorasz-tételt ($c^2 = a^2 + b^2$):
$$(ab - 2(a + b))^2 = 4c^2 = 4(a^2 + b^2).$$
Kifejtve a bal oldalt:
$$a^2 b^2 - 4ab(a + b) + 4(a^2 + 2ab + b^2) = 4a^2 + 8ab + 4b^2.$$
Mindkét oldalból kivonva $4a^2 + 8ab + 4b^2$-et:
$$a^2 b^2 - 4ab(a + b) + 8ab = 0.$$
Mivel $a, b > 0$, így $ab \neq 0$, oszthatunk $ab$-vel:
$$ab - 4(a + b) + 8 = 0 \iff ab - 4a - 4b + 8 = 0.$$
Ezt szorzattá alakítva:
$$(a - 4)(b - 4) = 8.$$
Mivel $a \le b$ pozitív egészek, és $a - 4 \le b - 4$, a 8 lehetséges pozitív szorzatfelbontásai:
1. $a - 4 = 1$ és $b - 4 = 8 \implies a = 5$, $b = 12$. Ekkor $c = \sqrt{5^2 + 12^2} = 13$.
   - Kerület: $K = 5 + 12 + 13 = 30$.
   - Terület: $T = \frac{5 \cdot 12}{2} = 30$.
2. $a - 4 = 2$ és $b - 4 = 4 \implies a = 6$, $b = 8$. Ekkor $c = \sqrt{6^2 + 8^2} = 10$.
   - Kerület: $K = 6 + 8 + 10 = 24$.
   - Terület: $T = \frac{6 \cdot 8}{2} = 24$.

Negatív osztópárok nem adnak megoldást, mert $a, b \ge 1$ miatt $a - 4 \ge -3$, így $a - 4$ nem lehet $-4$ vagy $-8$.

(Megjegyzés: Geometriai úton is célhoz érünk: a beírt kör sugara $r = \frac{T}{s} = \frac{2T}{K} = 2$. Derékszögű háromszögben $r = \frac{a+b-c}{2} = 2$, amiből $c = a + b - 4$. Ezt az $a^2 + b^2 = c^2$ egyenletbe helyettesítve szintén az $(a - 4)(b - 4) = 8$ egyenlet adódik.)

**A megoldások: az $(5, 12, 13)$ és a $(6, 8, 10)$ oldalú háromszögek.**

::: elmelet
**Elméleti háttér — egész oldalú háromszögek és diofantoszi egyenletek.** A geometriai feltételek ($T = K$ és $a^2 + b^2 = c^2$) diofantoszi egyenletre vezetnek. Az $ab - 4a - 4b + 8 = 0$ alakú bilineáris egyenletek standard megoldása a szorzattá alakítás: $(a - u)(b - v) = uv - C$, amellyel a probléma véges sok osztópár vizsgálatára redukálódik. Geometriai szempontból a feltétel rögzíti a beírt kör sugarát ($r = T/s = 2$).
:::

## 16. feladat

Igazoljuk, hogy a Nagy Fermat-tétel bizonyításához elegendő belátni, hogy az $x^n + y^n = z^n$ egyenletnek nincs pozitív egész megoldása $n = 4$, valamint $n = p$ esetekben.

**Megoldás.**

A Nagy Fermat-tétel állítása szerint az $x^n + y^n = z^n$ egyenletnek semmilyen $n \ge 3$ egész kitevőre nincsenek $x, y, z \in \mathbb{Z}^+$ megoldásai. (A feladatban $p$ tetszőleges páratlan prímet jelöl, hiszen $p = 2$ esetén végtelen sok pozitív egész megoldás létezik, a pitagoraszi számhármasok.)

Tegyük fel, hogy az állítást már igazoltuk az $n = 4$ esetre, valamint minden $n = p$ páratlan prímre. Legyen $n \ge 3$ egy tetszőleges egész szám. Két eset lehetséges:

1. **$n$-nek van páratlan prímosztója:** Jelölje ezt $p$. Ekkor $n = p \cdot k$ valamely $k \ge 1$ egészre. Ha létezne olyan $(x, y, z)$ pozitív egész számhármas, amelyre $x^n + y^n = z^n$, akkor a hatványozás azonosságai szerint:
$$(x^k)^p + (y^k)^p = (z^k)^p.$$
Legyen $X = x^k$, $Y = y^k$, $Z = z^k$. Mivel $x, y, z \ge 1$ és $k \ge 1$, az $X, Y, Z$ számok szintén pozitív egészek, és kielégítik az $X^p + Y^p = Z^p$ egyenletet. Ez azonban ellentmond annak a feltevésnek, hogy páratlan $p$ prím esetén az egyenletnek nincs pozitív egész megoldása.

2. **$n$-nek nincs páratlan prímosztója:** Mivel $n > 1$, ezért $n$ egyetlen lehetséges prímosztója a 2, vagyis $n = 2^m$ alakú 2-hatvány. Mivel $n \ge 3$, ezért $m \ge 2$, amiből következik, hogy $4 \mid n$. Így $n = 4 \cdot k$ valamely $k \ge 1$ egészre. Ekkor:
$$(x^k)^4 + (y^k)^4 = (z^k)^4,$$
így $X = x^k, Y = y^k, Z = z^k \in \mathbb{Z}^+$ megoldása lenne az $X^4 + Y^4 = Z^4$ egyenletnek. Ez ellentmond annak a feltevésnek, hogy $n = 4$-re sincs pozitív egész megoldás.

Mivel minden $n \ge 3$ egész szám vagy osztható legalább egy páratlan prímmel, vagy osztható 4-gyel, ezért bármely $n \ge 3$ kitevőjű megoldás maga után vonna egy megoldást valamely páratlan prímre vagy 4-re is. Így valóban elegendő ezeket az eseteket igazolni. $\blacksquare$

::: elmelet
**Elméleti háttér — a Nagy Fermat-tétel redukciója.** Ha az $x^n + y^n = z^n$ egyenletnek van megoldása, akkor minden olyan $d$ kitevőre is van, amely osztja $n$-et, hiszen $(x^{n/d})^d + (y^{n/d})^d = (z^{n/d})^d$. Emiatt a megoldhatatlanság az osztókról öröklődik a többszörösökre: elegendő a minimális kitevőkre bizonyítani. Mivel minden $n \ge 3$ szám osztható vagy egy páratlan prímmel, vagy $4$-gyel, a feladat a páratlan prímekre és a 4-re redukálódik.
:::

## 17. feladat

Oldjuk meg a következő szimultán kongruenciarendszert a kínai maradéktétel segítségével:
$$\begin{aligned}
x &\equiv 1 \pmod 4 \\
x &\equiv 2 \pmod 5 \\
x &\equiv 3 \pmod 7
\end{aligned}$$

**Megoldás.**

A modulusok $m_1 = 4$, $m_2 = 5$, $m_3 = 7$ páronként relatív prímek: $(4, 5) = (4, 7) = (5, 7) = 1$. A kínai maradéktétel szerint létezik megoldás, és az egyértelmű modulo $M = 4 \cdot 5 \cdot 7 = 140$.

Alkalmazzuk a kínai maradéktétel standard konstrukcióját:
- $M_1 = \frac{M}{m_1} = \frac{140}{4} = 35$,
- $M_2 = \frac{M}{m_2} = \frac{140}{5} = 28$,
- $M_3 = \frac{M}{m_3} = \frac{140}{7} = 20$.

Meghatározzuk az $M_i y_i \equiv 1 \pmod{m_i}$ inverzeket:
1. $35 y_1 \equiv 1 \pmod 4 \iff 3 y_1 \equiv 1 \pmod 4 \iff -y_1 \equiv 1 \implies y_1 \equiv 3 \pmod 4$.
2. $28 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 1 \pmod 5 \iff 3 y_2 \equiv 6 \implies y_2 \equiv 2 \pmod 5$.
3. $20 y_3 \equiv 1 \pmod 7 \iff 6 y_3 \equiv 1 \pmod 7 \iff -y_3 \equiv 1 \implies y_3 \equiv 6 \pmod 7$.

A megoldás:
$$x_0 = c_1 M_1 y_1 + c_2 M_2 y_2 + c_3 M_3 y_3,$$
ahol $c_1 = 1$, $c_2 = 2$, $c_3 = 3$.
Behelyettesítve az értékeket:
$$x_0 = 1 \cdot 35 \cdot 3 + 2 \cdot 28 \cdot 2 + 3 \cdot 20 \cdot 6 = 105 + 112 + 360 = 577.$$
Modulo 140 redukálva ($577 = 4 \cdot 140 + 17$):
$$x_0 \equiv 17 \pmod{140}.$$

(Ellenőrzés: $17 = 4 \cdot 4 + 1 \equiv 1 \pmod 4$, $17 = 3 \cdot 5 + 2 \equiv 2 \pmod 5$, $17 = 2 \cdot 7 + 3 \equiv 3 \pmod 7$.)

**A megoldás: $x \equiv 17 \pmod{140}$.**

::: elmelet
**Elméleti háttér — kínai maradéktétel.** Ha az $m_1, \dots, m_k$ modulusok páronként relatív prímek, akkor az $x \equiv c_i \pmod{m_i}$ rendszer megoldható, és a megoldás modulo $M = \prod m_i$ egyértelmű. Az $M_i = M/m_i$ számokhoz megkeressük az $M_i y_i \equiv 1 \pmod{m_i}$ inverzeket. Ekkor az $e_i = M_i y_i$ számokra $e_i \equiv 1 \pmod{m_i}$ és $e_i \equiv 0 \pmod{m_j}$ ($j \neq i$), vagyis $x = \sum c_i e_i$ kielégíti a rendszert.
:::

## 18. feladat

Keresd meg azt a legkisebb pozitív egész számot, amely 3-mal osztva 2-t, 5-tel osztva 3-at, 7-tel osztva pedig 2-t ad maradékul.

**Megoldás.**

A feltételek kongruenciákkal felírva:
$$\begin{aligned}
x &\equiv 2 \pmod 3 \\
x &\equiv 3 \pmod 5 \\
x &\equiv 2 \pmod 7
\end{aligned}$$
A modulusok prímek (így páronként relatív prímek), a szorzatuk $M = 3 \cdot 5 \cdot 7 = 105$.

Mivel az első és a harmadik kongruenciában a maradék megegyezik ($x \equiv 2 \pmod 3$ és $x \equiv 2 \pmod 7$), és $(3, 7) = 1$, ez egyenértékű azzal, hogy
$$x \equiv 2 \pmod{21}.$$
Ezért $x = 21k + 2$ valamely $k \in \mathbb{Z}$ egészre. Behelyettesítve a második kongruenciába:
$$21k + 2 \equiv 3 \pmod 5 \iff 1k + 2 \equiv 3 \pmod 5 \iff k \equiv 1 \pmod 5.$$
Így $k = 5t + 1$ ($t \in \mathbb{Z}$), amiből
$$x = 21(5t + 1) + 2 = 105t + 23 \implies x \equiv 23 \pmod{105}.$$

(A standard formulával: $M_1 = 35 \implies y_1 \equiv 2$, $M_2 = 21 \implies y_2 \equiv 1$, $M_3 = 15 \implies y_3 \equiv 1$. Ekkor $x = 2 \cdot 35 \cdot 2 + 3 \cdot 21 \cdot 1 + 2 \cdot 15 \cdot 1 = 140 + 63 + 30 = 233 \equiv 23 \pmod{105}$.)

A legkisebb pozitív egész megoldást a $t = 0$ adja: $x = 23$.

(Ellenőrzés: $23 = 7 \cdot 3 + 2$, $23 = 4 \cdot 5 + 3$, $23 = 3 \cdot 7 + 2$.)

**A legkisebb pozitív egész szám: 23.**

::: elmelet
**Elméleti háttér — szimultán kongruenciák egyszerűsítése.** Ha egy rendszerben két kongruenciának azonos a maradéka ($x \equiv c \pmod{m_1}$ és $x \equiv c \pmod{m_2}$), akkor azok összevonhatók egyetlen $x \equiv c \pmod{[m_1, m_2]}$ kongruenciává. A kapott $x \equiv x_0 \pmod M$ megoldáshalmaz legkisebb pozitív eleme a $0 < x \le M$ feltételnek eleget tevő reprezentáns.
:::

## 19. feladat

Egy kalózhajón a legénység aranypénzeket zsákmányolt. Ha 11 egyenlő részre osztják a kincset, akkor 6 érme marad ki. Ha 13 egyenlő részre osztják, akkor 4 érme marad, ha pedig 17-re, akkor 12. Legalább hány aranypénzt zsákmányoltak?

**Megoldás.**

Jelölje $N$ az aranypénzek számát ($N \in \mathbb{Z}^+$). A szöveg alapján az alábbi szimultán kongruenciarendszert kapjuk:
$$\begin{aligned}
N &\equiv 6 \pmod{11} \\
N &\equiv 4 \pmod{13} \\
N &\equiv 12 \pmod{17}
\end{aligned}$$
A modulusok prímszámok, így páronként relatív prímek. A közös modulus:
$$M = 11 \cdot 13 \cdot 17 = 143 \cdot 17 = 2431.$$

Kiszámítjuk az $M_i = \frac{M}{m_i}$ értékeket és azok inverzeit modulo $m_i$:
1. $M_1 = 13 \cdot 17 = 221$. Mivel $221 = 20 \cdot 11 + 1 \equiv 1 \pmod{11}$, ezért:
   $$1 \cdot y_1 \equiv 1 \pmod{11} \implies y_1 \equiv 1 \pmod{11}.$$
2. $M_2 = 11 \cdot 17 = 187$. Mivel $187 = 14 \cdot 13 + 5 \equiv 5 \pmod{13}$, ezért:
   $$5 y_2 \equiv 1 \pmod{13} \iff 5 y_2 \equiv 40 \pmod{13} \implies y_2 \equiv 8 \pmod{13}.$$
3. $M_3 = 11 \cdot 13 = 143$. Mivel $143 = 8 \cdot 17 + 7 \equiv 7 \pmod{17}$, ezért:
   $$7 y_3 \equiv 1 \pmod{17} \iff 7 y_3 \equiv 35 \pmod{17} \implies y_3 \equiv 5 \pmod{17}.$$

A partikuláris megoldás:
$$N_0 = c_1 M_1 y_1 + c_2 M_2 y_2 + c_3 M_3 y_3 = 6 \cdot 221 \cdot 1 + 4 \cdot 187 \cdot 8 + 12 \cdot 143 \cdot 5.$$
A szorzatok értékei:
$$6 \cdot 221 = 1326,$$
$$4 \cdot 187 \cdot 8 = 4 \cdot 1496 = 5984,$$
$$12 \cdot 143 \cdot 5 = 60 \cdot 143 = 8580.$$
Összegük:
$$N_0 = 1326 + 5984 + 8580 = 15890.$$
Modulo 2431 redukálva ($15890 = 6 \cdot 2431 + 1304$):
$$N \equiv 1304 \pmod{2431}.$$

(Ellenőrzés: $1304 = 118 \cdot 11 + 6$, $1304 = 100 \cdot 13 + 4$, $1304 = 76 \cdot 17 + 12$.)

Mivel pozitív darabszámot keresünk, a legkisebb lehetséges érték az $1304$.

**Legalább 1304 aranypénzt zsákmányoltak.**

::: elmelet
**Elméleti háttér — szöveges feladatok modellezése kongruenciákkal.** Az osztási maradékokra vonatkozó feltételek szimultán kongruenciarendszerként formalizálhatók. Páronként relatív prím modulusok esetén a kínai maradéktétel garantálja az egyértelmű megoldhatóságot modulo $M = \prod m_i$. A valós problémákban a minimális pozitív megoldás a kongruenciaosztály legkisebb pozitív eleme.
:::

## 20. feladat

Oldjuk meg az $x^3 + x + 57 \equiv 0 \pmod{27}$ kongruenciát.

**Megoldás.**

A modulus $27 = 3^3$ prímhatvány. A magasabb fokú prímhatvány modulusú kongruenciákat lépésről lépésre, a prím hatványai szerint felemelve (Hensel-felemeléssel) oldjuk meg. Legyen $f(x) = x^3 + x + 57$.

**1. lépés: Megoldás modulo 3.**
Mivel $57 = 3 \cdot 19 \equiv 0 \pmod 3$, a kongruencia modulo 3:
$$x^3 + x \equiv 0 \pmod 3.$$
A kis Fermat-tétel szerint minden egészre $x^3 \equiv x \pmod 3$, így
$$x^3 + x \equiv x + x = 2x \equiv -x \equiv 0 \pmod 3 \implies x \equiv 0 \pmod 3.$$
(A maradékokat behelyettesítve is látható: $f(0) \equiv 0$, $f(1) \equiv 2$, $f(2) \equiv 1 \pmod 3$, tehát $x \equiv 0 \pmod 3$ az egyetlen megoldás.)

**2. lépés: Felemelés modulo $3^2 = 9$-re.**
Az $x \equiv 0 \pmod 3$ feltétel miatt a megoldást $x = 3t$ alakban keressük ($t \in \{0, 1, 2\}$). Helyettesítsük be az $f(x)$ polinomba modulo 9:
$$f(3t) = (3t)^3 + 3t + 57 = 27t^3 + 3t + 57.$$
Mivel $27t^3 \equiv 0 \pmod 9$ és $57 = 6 \cdot 9 + 3 \equiv 3 \pmod 9$:
$$f(3t) \equiv 3t + 3 \equiv 0 \pmod 9 \iff 3t \equiv -3 \equiv 6 \pmod 9.$$
3-mal osztva a kongruenciát és a modulust is:
$$t \equiv 2 \pmod 3.$$
Tehát modulo 9 egyetlen megoldás van: $x = 3 \cdot 2 = 6$, azaz
$$x \equiv 6 \pmod 9.$$
(Ellenőrzés: $f(6) = 6^3 + 6 + 57 = 216 + 6 + 57 = 279 = 31 \cdot 9 \equiv 0 \pmod 9$.)

**3. lépés: Felemelés modulo $3^3 = 27$-re.**
Az $x \equiv 6 \pmod 9$ miatt a megoldás $x = 6 + 9u$ alakba írható ($u \in \{0, 1, 2\}$).
Kifejtve $f(6 + 9u)$-t modulo 27:
$$(6 + 9u)^3 = 6^3 + 3 \cdot 6^2 \cdot (9u) + 3 \cdot 6 \cdot (9u)^2 + (9u)^3.$$
Mivel $3 \cdot 36 \cdot 9u = 27 \cdot 36 u \equiv 0 \pmod{27}$ és a további tagok a $9^2 = 81$ többszörösei, ezért
$$(6 + 9u)^3 \equiv 6^3 = 216 \equiv 0 \pmod{27} \quad (\text{mivel } 216 = 8 \cdot 27).$$
Így:
$$f(6 + 9u) \equiv 6^3 + (6 + 9u) + 57 \equiv 0 + 9u + 63 \pmod{27}.$$
Mivel $63 = 2 \cdot 27 + 9 \equiv 9 \pmod{27}$:
$$9u + 9 \equiv 0 \pmod{27} \iff 9u \equiv -9 \equiv 18 \pmod{27}.$$
9-cel osztva az egyenletet és a modulust is:
$$u \equiv 2 \pmod 3.$$
Így modulo 27 a megoldás:
$$x = 6 + 9 \cdot 2 = 24 \pmod{27}.$$

(Ellenőrzés: $24 \equiv -3 \pmod{27}$. Kiszámítva: $f(-3) = (-3)^3 + (-3) + 57 = -27 - 3 + 57 = 27 \equiv 0 \pmod{27}$.)

**A megoldás: $x \equiv 24 \pmod{27}$.**

::: elmelet
**Elméleti háttér — kongruenciák megoldása prímhatvány modulusra és a Hensel-lemma.** Egy $f(x) \equiv 0 \pmod{p^k}$ kongruenciát lépésről lépésre oldunk meg: először modulo $p$, majd a kapott gyököket feloldjuk modulo $p^2, p^3, \dots$ hatványokra. Ha $x_0$ megoldás mod $p^j$, akkor a követező lépésben $x = x_0 + t p^j$ alakban keresünk megoldást modulo $p^{j+1}$. A Taylor-fejtés szerint $f(x_0 + t p^j) \equiv f(x_0) + t p^j f'(x_0) \pmod{p^{j+1}}$. Ha $f'(x_0) \not\equiv 0 \pmod p$, a megoldás minden lépésben egyértelműen emelhető fel (Hensel-lemma). Jelen esetben $f'(x) = 3x^2 + 1$, így $f'(0) = 1 \not\equiv 0 \pmod 3$, ami biztosította az egyértelmű felemelést.
:::

