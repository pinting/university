# Algebra és számelmélet – 11. feladatsor – megoldások

Alapfogalmak és tételek a feladatsorhoz:
- **Számelméleti függvény:** olyan $f \colon \mathbb{N}^+ \to \mathbb{C}$ leképezés, amely a pozitív egész számokhoz rendel komplex számokat.
- **Multiplikatív függvény:** olyan számelméleti függvény, amelyre $f(1) = 1$, és tetszőleges relatív prím $a, b \in \mathbb{N}^+$ számokra ($ (a, b) = 1$):
  $$f(ab) = f(a)f(b).$$
  Ha a feltétel tetszőleges (nem feltétlenül relatív prím) $a, b$-re is fennáll, a függvény **teljesen multiplikatív**.
- **Additív függvény:** olyan számelméleti függvény, amelyre $f(ab) = f(a) + f(b)$ minden $(a, b) = 1$ esetén. (Ekkor szükségszerűen $f(1) = 0$). Ha minden $a, b$-re teljesül, a függvény **teljesen additív**.
- **Dirichlet-konvolúció:** két számelméleti függvény $f * g$ konvolúciója:
  $$(f * g)(n) = \sum_{d \mid n} f(d) g\left(\frac{n}{d}\right) = \sum_{ab = n} f(a)g(b).$$
  A Dirichlet-konvolúció kommutatív, asszociatív, egységeleme az $\varepsilon(n) = \lfloor 1/n \rfloor$ függvény.
- **Nevezetes számelméleti függvények:**
  - $\varepsilon(n) = \begin{cases} 1, & \text{ha } n = 1 \\ 0, & \text{ha } n > 1 \end{cases}$ (Dirichlet-egységelem),
  - $\mathbf{1}(n) = 1$ minden $n$-re,
  - $I(n) = n$ minden $n$-re (identitás),
  - $d(n) = \sum_{d \mid n} 1 = (\mathbf{1} * \mathbf{1})(n)$ (osztók száma),
  - $\sigma(n) = \sum_{d \mid n} d = (I * \mathbf{1})(n)$ (osztók összege),
  - $\varphi(n)$ az Euler-féle totiens függvény ($\varphi * \mathbf{1} = I$),
  - $\mu(n)$ a Möbius-függvény ($\mu * \mathbf{1} = \varepsilon$).
- **Möbius-féle megfordítási formula:**
  $$g(n) = \sum_{d \mid n} f(d) \iff f(n) = \sum_{d \mid n} \mu(d) g\left(\frac{n}{d}\right), \quad \text{azaz } g = f * \mathbf{1} \iff f = g * \mu.$$

---

## 1. feladat

Két multiplikatív függvény szorzata, illetve hányadosa multiplikatív.

**Megoldás.**

Legyen $f$ és $g$ két multiplikatív számelméleti függvény. Ekkor definíció szerint $f(1) = 1$ és $g(1) = 1$, továbbá bármely relatív prím $a, b \in \mathbb{N}^+$ esetén ($ (a, b) = 1$):
$$f(ab) = f(a)f(b) \quad \text{és} \quad g(ab) = g(a)g(b).$$

**1. Szorzatfüggvény:**
Legyen $h(n) = f(n) \cdot g(n)$ a pontonkénti szorzat.
- $h(1) = f(1)g(1) = 1 \cdot 1 = 1$.
- Tetszőleges $(a, b) = 1$ esetén:
  $$h(ab) = f(ab)g(ab) = (f(a)f(b))(g(a)g(b)) = (f(a)g(a))(f(b)g(b)) = h(a)h(b).$$
Tehát a szorzatfüggvény multiplikatív.

**2. Hányadosfüggvény:**
Tegyük fel, hogy $g(n) \ne 0$ minden $n \in \mathbb{N}^+$ esetén, és legyen $q(n) = \frac{f(n)}{g(n)}$.
- $q(1) = \frac{f(1)}{g(1)} = \frac{1}{1} = 1$.
- Tetszőleges $(a, b) = 1$ esetén:
  $$q(ab) = \frac{f(ab)}{g(ab)} = \frac{f(a)f(b)}{g(a)g(b)} = \frac{f(a)}{g(a)} \cdot \frac{f(b)}{g(b)} = q(a)q(b).$$
Tehát a hányadosfüggvény is multiplikatív. $\blacksquare$

---

## 2. feladat

Két additív függvény összege, illetve különbsége additív.

**Megoldás.**

Legyen $f$ és $g$ két additív számelméleti függvény. Ekkor tetszőleges relatív prím $a, b \in \mathbb{N}^+$ esetén:
$$f(ab) = f(a) + f(b) \quad \text{és} \quad g(ab) = g(a) + g(b).$$

**1. Összegfüggvény:**
Legyen $s(n) = f(n) + g(n)$. Ha $(a, b) = 1$:
$$s(ab) = f(ab) + g(ab) = (f(a) + f(b)) + (g(a) + g(b)) = (f(a) + g(a)) + (f(b) + g(b)) = s(a) + s(b).$$
Tehát az összegfüggvény additív.

**2. Különbségfüggvény:**
Legyen $d(n) = f(n) - g(n)$. Ha $(a, b) = 1$:
$$d(ab) = f(ab) - g(ab) = (f(a) + f(b)) - (g(a) + g(b)) = (f(a) - g(a)) + (f(b) - g(b)) = d(a) + d(b).$$
Tehát a különbségfüggvény is additív. $\blacksquare$

---

## 3. feladat

Legyen $f$ számelméleti függvény, $f(n) > 0$ minden $n$ természetes számra. Igazoljuk, hogy ha $f$ multiplikatív, akkor $\log f$ additív.

**Megoldás.**

Mivel $f(n) > 0$ minden $n$-re, a $\log f(n)$ kifejezés értelmezett.
Legyen $h(n) = \log(f(n))$.
Tetszőleges $(a, b) = 1$ relatív prím pár esetén, mivel $f$ multiplikatív, fennáll:
$$f(ab) = f(a)f(b).$$
Mindkét oldal logaritmusát véve, és felhasználva a logaritmus azonosságát pozitív számok szorzatára ($\log(xy) = \log x + \log y$):
$$h(ab) = \log(f(ab)) = \log(f(a)f(b)) = \log(f(a)) + \log(f(b)) = h(a) + h(b).$$
Ez pontosan az additivitás definíciója, így a $\log f$ függvény valóban additív. $\blacksquare$

---

## 4. feladat

Az alábbi $f \colon \mathbb{N} \to \mathbb{R}$ függvények közül melyek multiplikatívak, melyek additívak?
$$f(n) = n^3, \qquad f(n) = 2^{\omega(n)}, \qquad f(n) = n + 2.$$
($\omega(n)$ az $n$ különböző prímosztóinak számát jelöli)

**Megoldás.**

**1. $f(n) = n^3$:**
- **Multiplikativitás:** $f(1) = 1^3 = 1$. Tetszőleges $a, b \in \mathbb{N}^+$ esetén:
  $$f(ab) = (ab)^3 = a^3 b^3 = f(a)f(b).$$
  Tehát $f$ **multiplikatív** (sőt teljesen multiplikatív).
- **Additivitás:** Egy additív függvényre $f(1) = 0$ kellene legyen, de itt $f(1) = 1 \ne 0$. Konkrét ellenpélda: $(2, 3) = 1$, $f(6) = 216$, míg $f(2) + f(3) = 8 + 27 = 35 \ne 216$. Tehát **nem additív**.

**2. $f(n) = 2^{\omega(n)}$:**
- $\omega(n)$ az $n$ különböző prímosztóinak száma ($\omega(1) = 0$).
  Ha $(a, b) = 1$, akkor $a$-nak és $b$-nek nincsenek közös prímosztói, így $ab$ különböző prímosztóinak halmaza az $a$ és $b$ prímosztóhalmazainak diszjunkt uniója. Ezért:
  $$\omega(ab) = \omega(a) + \omega(b),$$
  vagyis az $\omega$ függvény additív.
- Ekkor:
  $$f(1) = 2^{\omega(1)} = 2^0 = 1.$$
  Továbbá tetszőleges $(a, b) = 1$ esetén:
  $$f(ab) = 2^{\omega(ab)} = 2^{\omega(a) + \omega(b)} = 2^{\omega(a)} \cdot 2^{\omega(b)} = f(a)f(b).$$
  Tehát az $f(n) = 2^{\omega(n)}$ függvény **multiplikatív**.
- **Additivitás:** $f(1) = 1 \ne 0$, így **nem additív**. (Pl. $f(6) = 2^2 = 4$, míg $f(2) + f(3) = 2^1 + 2^1 = 4$, de $f(1 \cdot 2) = 2 \ne 1 + 2 = 3$).

**3. $f(n) = n + 2$:**
- **Multiplikativitás:** $f(1) = 1 + 2 = 3 \ne 1$. Mivel egy multiplikatív függvény értéke az 1 helyen szükségképpen 1, ez a függvény **nem multiplikatív**. (Pl. $f(2 \cdot 3) = f(6) = 8$, míg $f(2)f(3) = 4 \cdot 5 = 20 \ne 8$).
- **Additivitás:** $f(1) = 3 \ne 0$, így **nem additív**. (Pl. $f(6) = 8$, míg $f(2) + f(3) = 4 + 5 = 9 \ne 8$).

---

## 5. feladat

A von Mangoldt-féle $\Lambda$ függvény definíciója a következő:
$$\Lambda(n) = \begin{cases} \log p, & \text{ha } n = p^\alpha, \text{ ahol } p \text{ prím és } \alpha \ge 1, \\ 0, & \text{különben.} \end{cases}$$
Igazoljuk, hogy $\Lambda$ nem additív.

**Megoldás.**

Elég egy ellenpéldát mutatni az additivitás definíciójára ($f(ab) = f(a) + f(b)$ minden $(a, b) = 1$-re):
- Vegyük az $a = 2$ és $b = 3$ relatív prím számokat: $(2, 3) = 1$.
- Mivel 2 és 3 prímek:
  $$\Lambda(2) = \log 2, \qquad \Lambda(3) = \log 3.$$
- A szorzatuk $ab = 6$. Mivel 6-nak két különböző prímosztója van ($2$ és $3$), a 6 nem prímhatvány!
- A definíció szerint ezért:
  $$\Lambda(6) = 0.$$
- Azonban:
  $$\Lambda(2) + \Lambda(3) = \log 2 + \log 3 = \log 6 \ne 0 = \Lambda(6).$$

Tehát a $\Lambda$ függvény **nem additív** (és nem is multiplikatív, hiszen $\Lambda(1) = 0 \ne 1$).

::: elmelet
**Megjegyzés — a von Mangoldt-függvény valódi szerepe.** A $\Lambda$ függvény alapvető tulajdonsága nem az additivitás, hanem az, hogy összegzési függvénye a logaritmus (6. feladat (2) része):
$$\sum_{d \mid n} \Lambda(d) = \log n, \qquad \text{azaz} \qquad \Lambda * \mathbf{1} = \log.$$
A $\log n$ függvény viszont már **teljesen additív**. A Möbius-féle megfordítással ebből $\Lambda = \mu * \log$, azaz $\Lambda(n) = -\sum_{d \mid n} \mu(d) \log d$.
:::

---

## 6. feladat

Bizonyítsuk, hogy

(1) $\sum_{d \mid n} \mu(d) = \lfloor 1/n \rfloor$,

(2) (házi feladat) $\sum_{d \mid n} \Lambda(d) = \log n$.

**Megoldás.**

**(1)** Azt kell igazolnunk, hogy $(\mu * \mathbf{1})(n) = \lfloor 1/n \rfloor = \varepsilon(n)$, vagyis az összeg értéke 1, ha $n = 1$, és 0, ha $n > 1$.
- Ha $n = 1$: az egyetlen pozitív osztó a $d = 1$, így $\mu(1) = 1 = \lfloor 1/1 \rfloor$.
- Ha $n > 1$: írjuk fel $n$ kanonikus prímfelbontását:
  $$n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k} \qquad (k \ge 1, \alpha_i \ge 1).$$
  A Möbius-függvény definíciója szerint $\mu(d) = 0$, ha $d$ nem négyzetmentes. Ezért az összegben csak a négyzetmentes osztók adnak nem nulla értéket: ezek olyan számok, amelyek a $p_1, \dots, p_k$ prímek közül választott különböző prímek szorzatai.
  Egy pontosan $j$ darab különböző prímet tartalmazó $d$ osztóra $\mu(d) = (-1)^j$.
  Ilyen $j$ tényezős osztót $\binom{k}{j}$-féleképpen választhatunk ki a $k$ prím közül ($0 \le j \le k$).
  Ezért:
  $$\sum_{d \mid n} \mu(d) = \sum_{j=0}^{k} \binom{k}{j} (-1)^j = (1 - 1)^k = 0^k = 0 = \lfloor 1/n \rfloor.$$
Ezzel az (1) állítást beláttuk. $\blacksquare$

**(2) (házi feladat)**
Legyen $n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k}$ az $n > 1$ pozitív egész kanonikus prímfelbontása.
A $\Lambda(d)$ függvény definíciója szerint $\Lambda(d) \ne 0$ pontosan akkor teljesül, ha $d$ prímhatvány, azaz $d = p_i^j$ valamely $1 \le i \le k$ és $1 \le j \le \alpha_i$ esetén. Ekkor $\Lambda(p_i^j) = \log p_i$. Minden más osztóra $\Lambda(d) = 0$.
Ezért az összeg:
$$\sum_{d \mid n} \Lambda(d) = \sum_{i=1}^{k} \sum_{j=1}^{\alpha_i} \Lambda(p_i^j) = \sum_{i=1}^{k} \sum_{j=1}^{\alpha_i} \log p_i = \sum_{i=1}^{k} \alpha_i \log p_i.$$
A logaritmus azonosságai alapján:
$$\sum_{i=1}^{k} \alpha_i \log p_i = \sum_{i=1}^{k} \log(p_i^{\alpha_i}) = \log\left(\prod_{i=1}^{k} p_i^{\alpha_i}\right) = \log n.$$
Ha $n = 1$: az egyetlen osztó az 1, $\Lambda(1) = 0 = \log 1$, ami szintén helyes.
Tehát minden $n \ge 1$ esetén $\sum_{d \mid n} \Lambda(d) = \log n$. $\blacksquare$

---

## 7. feladat

Melyek azok a pozitív egész számok, amelyeknek pontosan 3 pozitív osztójuk van?

**Megoldás.**

Legyen $n \in \mathbb{N}^+$ kanonikus prímfelbontása $n = p_1^{\alpha_1} p_2^{\alpha_2} \dots p_k^{\alpha_k}$.
Az osztók számának jól ismert képlete:
$$d(n) = (\alpha_1 + 1)(\alpha_2 + 1)\dots(\alpha_k + 1).$$
A feladat feltétele szerint $d(n) = 3$.
Mivel 3 prímszám, 1-nél nagyobb egészek szorzataként csak egytényezős szorzatként állhat elő:
$$3 = \alpha_1 + 1 \implies \alpha_1 = 2, \quad k = 1.$$
Tehát az $n$ számnak egyetlen prímosztója van, és annak kitevője 2, vagyis:
$$n = p^2, \quad \text{ahol } p \text{ prímszám}.$$
A keresett számok pontosan a **prímszámok négyzetei** (például $4, 9, 25, 49, 121, \dots$).
Ezek pozitív osztói mindig: $\{1, p, p^2\}$, ami valóban pontosan 3 darab osztó.

---

## 8. feladat

Jelölje $d(n)$ az $n$ pozitív egész szám osztóinak számát. Lássuk be, hogy minden $n \ge 1$ esetén fennáll a $d(n) \le 2\sqrt{n}$ egyenlőtlenség.

**Megoldás.**

Az $n$ pozitív osztói párokba állíthatók: ha $d \mid n$, akkor a $d' = \frac{n}{d}$ szám szintén osztója $n$-nek, és $d \cdot d' = n$.
Minden $\{d, n/d\}$ osztópárban a két tényező közül a kisebbik szükségképpen legfeljebb $\sqrt{n}$:
$$d \le \frac{n}{d} \iff d^2 \le n \iff d \le \sqrt{n}.$$
Tehát minden osztópárnak van legalább egy olyan eleme, amely az $[1, \sqrt{n}]$ intervallumba esik.
Az $[1, \sqrt{n}]$ intervallumba eső egész számok száma legfeljebb $\lfloor\sqrt{n}\rfloor \le \sqrt{n}$.
Minden egyes $d \le \sqrt{n}$ osztóhoz legfeljebb egy darab $n/d \ge \sqrt{n}$ osztó tartozhat.
Így az összes osztó száma:
$$d(n) \le 2 \cdot (\text{a } \le \sqrt{n} \text{ osztók száma}) \le 2\sqrt{n}.$$
*(Megjegyzés: Ha $n$ négyzetszám, a $d = \sqrt{n}$ osztó önmagával képez párt, így ott $d(n) \le 2\lfloor\sqrt{n}\rfloor - 1 < 2\sqrt{n}$).*
Tehát minden $n \ge 1$ esetén érvényes a $d(n) \le 2\sqrt{n}$ egyenlőtlenség. $\blacksquare$

---

## 9. feladat

Igazoljuk, hogy $\prod_{t \mid n} t = n^{d(n)/2}$.

**Megoldás.**

Jelölje $P = \prod_{t \mid n} t$ az $n$ pozitív osztóinak szorzatát.
Mivel a $t \mapsto \frac{n}{t}$ leképezés az $n$ pozitív osztói halmazának önmagára vett bijekciója (az osztók halmaza megegyezik a komplementer osztók halmazával), a szorzatot felírhatjuk így is:
$$P = \prod_{t \mid n} \frac{n}{t}.$$
Szorozzuk össze a két azonos értékű kifejezést:
$$P^2 = \left(\prod_{t \mid n} t\right) \left(\prod_{t \mid n} \frac{n}{t}\right) = \prod_{t \mid n} \left(t \cdot \frac{n}{t}\right) = \prod_{t \mid n} n.$$
Mivel a szorzatban a tényezők száma pontosan az osztók száma, azaz $d(n)$, ezért:
$$P^2 = n^{d(n)}.$$
Mivel $P > 0$, mindkét oldalból négyzetgyököt vonva:
$$P = \prod_{t \mid n} t = n^{d(n)/2}.$$ $\blacksquare$

---

## 10. feladat

Oldjuk meg a $\sigma(x) = x + 7$ egyenletet a pozitív egész számok halmazán.

**Megoldás.**

A $\sigma(x)$ függvény az $x$ összes pozitív osztójának összege.
Mivel minden $x > 1$ számra az 1 és az $x$ két különböző pozitív osztó, a valódi osztók összege:
$$\sigma(x) - x = \sum_{\substack{d \mid x \\ d < x}} d.$$
Az egyenlet szerint $\sigma(x) - x = 7$, tehát az $x$-nél szigorúan kisebb pozitív osztók összege pontosan 7:
$$\sum_{\substack{d \mid x \\ d < x}} d = 7.$$

- $x = 1$ nem megoldás, mert $\sigma(1) = 1 \ne 8$.
- Ha $x$ prím, akkor egyetlen valódi osztója az 1, az összeg $1 \ne 7$.
- Ha $x$ összetett, legyen $p$ a legkisebb prímosztója, és $d_1 = \frac{x}{p}$ a legnagyobb valódi osztója ($1 < d_1 < x$). Az 1 és a $d_1$ is szerepel az összegben, így $1 + d_1 \le 7$, azaz $d_1 \le 6$. Mivel $p$ a legkisebb prímosztó, $p \le d_1$ legkisebb prímosztója. A lehetséges esetek:

| $d_1$ | $x = p \cdot d_1$ | valódi osztók | összegük |
|:---:|:---:|:---:|:---:|
| $2$ | $4$ | $1, 2$ | $3$ |
| $3$ | $6, 9$ | $1, 2, 3$; $1, 3$ | $6$; $4$ |
| $4$ | $8$ | $1, 2, 4$ | $\mathbf{7}$ |
| $5$ | $10, 15, 25$ | $1, 2, 5$; $1, 3, 5$; $1, 5$ | $8$; $9$; $6$ |
| $6$ | $12$ | $1, 2, 3, 4, 6$ | $16$ |

Egyedül $x = 8$ felel meg: $\sigma(8) = 1 + 2 + 4 + 8 = 15 = 8 + 7$.

Ezért az egyenlet egyetlen megoldása a pozitív egészek körében:
$$\mathbf{x = 8}.$$

---

## 11. feladat

Keressük meg az összes olyan pozitív egész $x$ számot, amelyre $\varphi(x) = x - 1$ teljesül.

**Megoldás.**

A $\varphi(x)$ Euler-féle függvény az $\{1, 2, \dots, x\}$ halmaz azon elemeinek a száma, amelyek relatív prímek $x$-hez.
- Az $x$ szám önmagával sosem relatív prím, ha $x > 1$, hiszen $\operatorname{lnko}(x, x) = x > 1$.
- Ezért az $\{1, 2, \dots, x\}$ számok közül legfeljebb az első $x - 1$ darab szám lehet relatív prím $x$-hez, azaz minden $x > 1$-re:
  $$\varphi(x) \le x - 1.$$
- Az egyenlőség, $\varphi(x) = x - 1$ pontosan akkor áll fenn, ha az összes $1, 2, \dots, x - 1$ szám relatív prím $x$-hez.
- Ez azt jelenti, hogy $x$-nek nincs 1-nél nagyobb és $x$-nél kisebb közös osztója egyetlen kisebb számmal sem, vagyis $x$-nek nincs valódi osztója: **$x$ prímszám**.
- Ha $x$ összetett szám lenne, akkor létezne olyan $1 < d < x$ valódi osztója, amelyre $\operatorname{lnko}(d, x) = d > 1$, így $d$ nem lenne relatív prím $x$-hez, ami miatt $\varphi(x) \le x - 2$ lenne.
- Ha $x = 1$, akkor $\varphi(1) = 1 \ne 1 - 1 = 0$.

Tehát az egyenlet megoldása az összes **prímszám**:
$$\mathbf{x = p}, \quad \text{ahol } p \text{ prím}.$$

---

## 12. feladat

Keressük meg azt a pozitív egész $n$ számot, amelyre teljesül, hogy az osztóinak száma $d(n) = 6$, az osztóinak összege pedig $\sigma(n) = 28$.

**Megoldás.**

Írjuk fel $n$ prímfelbontását. A $d(n) = 6$ egyenlőség a lehetséges kitevőkre két esetet enged meg ($6 = 6$ vagy $6 = 3 \times 2$):

**1. eset:** $n = p^5$ egyetlen prím hatványa.
Ekkor:
$$\sigma(n) = 1 + p + p^2 + p^3 + p^4 + p^5.$$
- Ha $p = 2$: $\sigma(2^5) = 1 + 2 + 4 + 8 + 16 + 32 = 63 > 28$.
- Ha $p \ge 3$, akkor $\sigma(n)$ még nagyobb.
Ebben az esetben tehát nincs megoldás.

**2. eset:** $n = p^2 q$, ahol $p$ és $q$ különböző prímszámok.
Mivel a $\sigma$ függvény multiplikatív:
$$\sigma(n) = \sigma(p^2) \sigma(q) = (1 + p + p^2)(1 + q) = 28.$$
Mivel $p$ prím, $p \ge 2$, így:
$$1 + p + p^2 \ge 1 + 2 + 4 = 7.$$
Továbbá $1 + p + p^2$ osztója kell legyen a 28-nak. A 28 azon pozitív osztói, amelyek $\ge 7$: a $7, 14, 28$.
- Ha $1 + p + p^2 = 7$:
  $$p(p + 1) = 6 \implies p = 2.$$
  Ekkor $1 + q = \frac{28}{7} = 4 \implies q = 3$.
  Mivel $p = 2$ és $q = 3$ különböző prímek, ez valóban megoldást ad:
  $$n = 2^2 \cdot 3 = 12.$$
- Ha $1 + p + p^2 = 14$: $p(p+1) = 13$, nincs egész megoldása.
- Ha $1 + p + p^2 = 28$: $p(p+1) = 27$, nincs egész megoldása.

Ellenőrizzük az $n = 12$-t:
- Osztói: $1, 2, 3, 4, 6, 12$.
- $d(12) = 6$.
- $\sigma(12) = 1 + 2 + 3 + 4 + 6 + 12 = 28$.

Tehát a keresett szám:
$$\mathbf{n = 12}.$$

---

## 13. feladat

Legyenek $f, g$ számelméleti függvények. Az $(f * g)(n) = \sum_{d \mid n} f(d)g(n/d)$ képlettel megadott számelméleti függvény az $f$ és $g$ Dirichlet-konvolúciója. Igazoljuk a következőket:

(1) $f * g = g * f$,

(2) $(f * g) * h = f * (g * h)$,

(3) Ha $f$ és $g$ multiplikatívak, akkor $f * g$ multiplikatív,

ahol $f, g, h$ tetszőleges számelméleti függvények.

**Megoldás.**

**(1) Kommutativitás:**
$$(f * g)(n) = \sum_{d \mid n} f(d) g\left(\frac{n}{d}\right).$$
Vezessünk be új összegzési változót: legyen $k = \frac{n}{d}$.
Amikor $d$ végigfut $n$ pozitív osztóin, $k$ szintén pontosan egyszer fut végig $n$ pozitív osztóin, és ekkor $d = \frac{n}{k}$. Ezért:
$$(f * g)(n) = \sum_{k \mid n} f\left(\frac{n}{k}\right) g(k) = \sum_{k \mid n} g(k) f\left(\frac{n}{k}\right) = (g * f)(n).$$
Szimmetrikus írásmódban: mindkét oldal $\sum_{ab = n} f(a)g(b)$, ami triviálisan szimmetrikus $f$ és $g$-ben.

**(2) Asszociativitás:**
Írjuk fel a konvolúciót az $n$ szám szorzattá bontásai segítségével:
$$((f * g) * h)(n) = \sum_{d \mid n} (f * g)(d) h\left(\frac{n}{d}\right) = \sum_{d \mid n} \left(\sum_{ab = d} f(a)g(b)\right) h\left(\frac{n}{d}\right).$$
Mivel $ab = d$ és $dc = n$ (ahol $c = n/d$), ez a kettős összeg pontosan az összes olyan $(a, b, c)$ pozitív egész hármasra vett összegnek felel meg, amelyre $abc = n$:
$$((f * g) * h)(n) = \sum_{abc = n} f(a)g(b)h(c).$$
Hasonlóan:
$$(f * (g * h))(n) = \sum_{a \mid n} f(a) (g * h)\left(\frac{n}{a}\right) = \sum_{a \mid n} f(a) \left(\sum_{bc = n/a} g(b)h(c)\right) = \sum_{abc = n} f(a)g(b)h(c).$$
Mivel mindkét kifejezés a $\sum_{abc = n} f(a)g(b)h(c)$ összeggel egyenlő, a konvolúció asszociatív.

**(3) Multiplikativitás megőrzése:**
Tegyük fel, hogy $f$ és $g$ multiplikatívak.
Ekkor $(f * g)(1) = f(1)g(1) = 1 \cdot 1 = 1$.
Legyenek $a, b \in \mathbb{N}^+$ relatív prímek: $(a, b) = 1$.
$$(f * g)(ab) = \sum_{d \mid ab} f(d) g\left(\frac{ab}{d}\right).$$
Mivel $(a, b) = 1$, az $ab$ bármely $d$ osztója egyértelműen felírható $d = d_1 d_2$ alakban, ahol $d_1 \mid a$ és $d_2 \mid b$.
Továbbá $(d_1, d_2) = 1$, valamint az $\frac{a}{d_1}$ és $\frac{b}{d_2}$ számok is relatív prímek: $\left(\frac{a}{d_1}, \frac{b}{d_2}\right) = 1$.
Az $f$ és $g$ multiplikativitása miatt:
$$f(d) = f(d_1 d_2) = f(d_1)f(d_2), \qquad g\left(\frac{ab}{d}\right) = g\left(\frac{a}{d_1} \cdot \frac{b}{d_2}\right) = g\left(\frac{a}{d_1}\right) g\left(\frac{b}{d_2}\right).$$
Ezért az összeg szétbontható két független összeg szorzatára:
$$(f * g)(ab) = \sum_{d_1 \mid a} \sum_{d_2 \mid b} f(d_1) f(d_2) g\left(\frac{a}{d_1}\right) g\left(\frac{b}{d_2}\right)$$
$$= \left(\sum_{d_1 \mid a} f(d_1) g\left(\frac{a}{d_1}\right)\right) \left(\sum_{d_2 \mid b} f(d_2) g\left(\frac{b}{d_2}\right)\right) = (f * g)(a) \cdot (f * g)(b).$$
Tehát $f * g$ valóban multiplikatív. $\blacksquare$

---

## 14. feladat

Írjuk fel a Möbius-féle megfordítási formulát a Dirichlet-konvolúció segítségével.

**Megoldás.**

A klasszikus Möbius-féle megfordítási formula így szól:
$$g(n) = \sum_{d \mid n} f(d) \iff f(n) = \sum_{d \mid n} \mu(d) g\left(\frac{n}{d}\right).$$
Vegyük észre, hogy:
- A bal oldali feltétel az $f$ és a konstans $\mathbf{1}$ függvény ($\mathbf{1}(n) = 1$) Dirichlet-konvolúciója:
  $$g = f * \mathbf{1}.$$
- A 6. feladat (1) része szerint a $\mu$ és $\mathbf{1}$ függvények egymás Dirichlet-inverzei:
  $$\mu * \mathbf{1} = \varepsilon.$$
- Ha a $g = f * \mathbf{1}$ egyenlőség mindkét oldalát konvolváljuk a $\mu$ függvénnyel, az asszociativitást felhasználva:
  $$g * \mu = (f * \mathbf{1}) * \mu = f * (\mathbf{1} * \mu) = f * \varepsilon = f.$$

A Möbius-féle megfordítási formula alakja tehát a Dirichlet-konvolúció segítségével:
$$\mathbf{g = f * 1 \iff f = g * \mu}.$$

---

## 15. feladat

Igazoljuk, hogy tetszőleges $n$ pozitív egész számra $\varphi(n) = n \sum_{d \mid n} \frac{\mu(d)}{d}$ teljesül.

**Megoldás.**

Ismert tétel (Gauss tétele), hogy egy pozitív egész szám osztóinak $\varphi$-értékeit összegezve magát a számot kapjuk:
$$\sum_{d \mid n} \varphi(d) = n.$$
A Dirichlet-konvolúció nyelvén ez azt jelenti, hogy:
$$\varphi * \mathbf{1} = I,$$
ahol $I(n) = n$ az identitásfüggvény, és $\mathbf{1}(n) = 1$.
Alkalmazzuk a 14. feladatban megfogalmazott Möbius-inverziót:
$$\varphi = I * \mu.$$
A konvolúció definíciója szerint kifejtve:
$$\varphi(n) = \sum_{d \mid n} \mu(d) I\left(\frac{n}{d}\right) = \sum_{d \mid n} \mu(d) \frac{n}{d} = n \sum_{d \mid n} \frac{\mu(d)}{d}.$$
Ezzel az állítást igazoltuk. $\blacksquare$

---

## 16. feladat

Bizonyítsuk az alábbi összefüggést:
$$\sum_{t \mid n} \mu(t) d\left(\frac{n}{t}\right) = 1.$$

**Megoldás.**

A bal oldali összeg pontosan a $\mu$ és a $d$ (osztószám) függvények Dirichlet-konvolúciója az $n$ helyen:
$$\sum_{t \mid n} \mu(t) d\left(\frac{n}{t}\right) = (\mu * d)(n).$$
Tudjuk, hogy az osztószám-függvény felírható $d = \mathbf{1} * \mathbf{1}$ alakban, hiszen $d(n) = \sum_{t \mid n} 1$.
Használjuk fel a konvolúció asszociativitását és a $\mu * \mathbf{1} = \varepsilon$ azonosságot:
$$\mu * d = \mu * (\mathbf{1} * \mathbf{1}) = (\mu * \mathbf{1}) * \mathbf{1} = \varepsilon * \mathbf{1} = \mathbf{1}.$$
Mivel a konvolúció eredménye a konstans $\mathbf{1}$ függvény, bármely $n \ge 1$ esetén:
$$(\mu * d)(n) = \mathbf{1}(n) = 1.$$
Tehát az összeg értéke minden $n$-re valóban 1. $\blacksquare$

---

## 17. feladat

Bizonyítsuk be, hogy ha $n$ egy tökéletes szám, akkor az osztóinak reciprokösszege pontosan 2, azaz $\sum_{d \mid n} \frac{1}{d} = 2$.

**Megoldás.**

Egy $n$ pozitív egész számot **tökéletes számnak** nevezünk, ha az $n$-nél kisebb pozitív osztóinak összege megegyezik $n$-nel.
Ez ekvivalens azzal, hogy az $n$ összes pozitív osztójának összege $2n$:
$$\sigma(n) = \sum_{d \mid n} d = 2n.$$

Írjuk fel az osztók reciprokösszegét:
$$\sum_{d \mid n} \frac{1}{d}.$$
Alkalmazzuk a $d \mapsto \frac{n}{d}$ helyettesítést (amint $d$ végigfut az osztókon, $n/d$ ugyanazokat az osztókat futja be fordított sorrendben):
$$\sum_{d \mid n} \frac{1}{d} = \sum_{d \mid n} \frac{1}{n/d} = \sum_{d \mid n} \frac{d}{n} = \frac{1}{n} \sum_{d \mid n} d = \frac{\sigma(n)}{n}.$$
Mivel $n$ tökéletes szám, $\sigma(n) = 2n$, így:
$$\sum_{d \mid n} \frac{1}{d} = \frac{2n}{n} = 2.$$
Ezzel az állítást igazoltuk. $\blacksquare$

---

## 18. feladat

Mutassuk meg, hogy egyetlen $p$ prímszám, illetve $p^k$ prímhatvány sem lehet tökéletes szám ($k \ge 1$).

**Megoldás.**

Legyen $n = p^k$, ahol $p$ prímszám és $k \ge 1$.
A $p^k$ osztói az $1, p, p^2, \dots, p^k$ számok. Ezek összege a mértani sorozat összegképlete alapján:
$$\sigma(p^k) = 1 + p + p^2 + \dots + p^k = \frac{p^{k+1} - 1}{p - 1}.$$
Ahhoz, hogy $p^k$ tökéletes szám legyen, a definíció szerint $\sigma(p^k) = 2p^k$ kellene teljesüljön:
$$\frac{p^{k+1} - 1}{p - 1} = 2p^k.$$
Szorozzuk be mindkét oldalt a $(p - 1) > 0$ kifejezéssel:
$$p^{k+1} - 1 = 2p^k(p - 1) = 2p^{k+1} - 2p^k.$$
Rendezzük az egyenletet:
$$2p^k - 1 = p^{k+1}.$$
Mindkét oldalból vonjunk ki $p^{k+1}$-et, és adjunk hozzá 1-et:
$$2p^k - p^{k+1} = 1 \iff p^k(2 - p) = 1.$$
Mivel $p$ prímszám, $p \ge 2$:
- Ha $p = 2$: $2^k(2 - 2) = 2^k \cdot 0 = 0 \ne 1$.
- Ha $p \ge 3$: ekkor $2 - p \le -1$, így a bal oldal negatív ($p^k(2 - p) \le -3^k < 0$), miközben a jobb oldal pozitív (1), ami szintén lehetetlen.

Mivel semmilyen $p$ prímre és $k \ge 1$ egészre nem teljesülhet az egyenlőség, egyetlen $p$ prím és egyetlen $p^k$ prímhatvány sem lehet tökéletes szám. $\blacksquare$

---

## 19. feladat

Számítsuk ki a következő összeget:
$$\sum_{d \mid n} \mu(d)\sigma\left(\frac{n}{d}\right).$$

**Megoldás.**

A megadott összeg a $\mu$ és $\sigma$ számelméleti függvények Dirichlet-konvolúciója:
$$\sum_{d \mid n} \mu(d) \sigma\left(\frac{n}{d}\right) = (\mu * \sigma)(n).$$
Tudjuk, hogy az osztóösszeg-függvény előáll Dirichlet-konvolúcióként: $\sigma = I * \mathbf{1}$, ahol $I(n) = n$ és $\mathbf{1}(n) = 1$.
Behelyettesítve és kihasználva a konvolúció kommutativitását és asszociativitását:
$$\mu * \sigma = \mu * (I * \mathbf{1}) = (\mu * \mathbf{1}) * I.$$
Mivel $\mu * \mathbf{1} = \varepsilon$ (a konvolúció egységeleme), és $\varepsilon * I = I$:
$$\mu * \sigma = \varepsilon * I = I.$$
Ezért tetszőleges $n \ge 1$ esetén:
$$\sum_{d \mid n} \mu(d) \sigma\left(\frac{n}{d}\right) = I(n) = \mathbf{n}.$$

---

## 20. feladat

Legyen az $f(x)$ függvény értelmezve minden $x \in [0, 1]$ racionális számra, és definiáljuk a következőket:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) \quad \text{és} \quad F_1(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n f\left(\frac{k}{n}\right).$$

(1) Mutassuk meg, hogy $F_1 = \mu * F$.

(2) Bizonyítsuk be, hogy
$$\mu(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n \left(\cos \frac{2\pi k}{n} + i \sin \frac{2\pi k}{n}\right).$$

**Megoldás.**

**(1)** Tekintsük az $F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right)$ összeg tagjait.
Bármely $1 \le k \le n$ egészre legyen $d = \operatorname{lnko}(k, n)$. Ekkor $d \mid n$.
Egyszerűsítsük a $\frac{k}{n}$ törtet $d$-vel:
$$k = d \cdot j, \quad n = d \cdot m \implies \frac{k}{n} = \frac{j}{m}, \quad \text{ahol } m = \frac{n}{d}, \ 1 \le j \le m, \text{ és } (j, m) = 1.$$
Csoportosítsuk az összeg tagjait a $d = \operatorname{lnko}(k, n)$ osztó szerint:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) = \sum_{d \mid n} \sum_{\substack{j=1 \\ (j, n/d) = 1}}^{n/d} f\left(\frac{j}{n/d}\right).$$
A belső összeg a definíció szerint pontosan $F_1\left(\frac{n}{d}\right)$:
$$F(n) = \sum_{d \mid n} F_1\left(\frac{n}{d}\right) = (F_1 * \mathbf{1})(n).$$
Mivel $F = F_1 * \mathbf{1}$, alkalmazzuk a Möbius-féle megfordítási formulát (14. feladat):
$$F_1 = F * \mu = \mu * F.$$
Ezzel az (1) állítást beláttuk. $\blacksquare$

**(2)** Alkalmazzuk az (1) rész eredményét az
$$f(x) = e^{2\pi i x} = \cos(2\pi x) + i \sin(2\pi x)$$
függvényre!
Ekkor $F(n)$ az összes $n$-edik egységgyök összege:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) = \sum_{k=1}^n e^{2\pi i k / n}.$$
- Ha $n = 1$: $F(1) = e^{2\pi i} = 1$.
- Ha $n > 1$: az $n$-edik egységgyökök összege 0, hiszen $\omega = e^{2\pi i / n} \ne 1$ mellett
  $$\sum_{k=1}^n \omega^k = \omega \cdot \frac{\omega^n - 1}{\omega - 1} = \omega \cdot \frac{1 - 1}{\omega - 1} = 0.$$
Tehát:
$$F(n) = \begin{cases} 1, & \text{ha } n = 1, \\ 0, & \text{ha } n > 1, \end{cases} \quad \text{azaz } F = \varepsilon \text{ (a Dirichlet-egységelem)}.$$
Az (1) pont szerint $F_1 = \mu * F$. Mivel $F = \varepsilon$:
$$F_1 = \mu * \varepsilon = \mu.$$
Kifejtve $F_1(n)$-et a definíciója szerint:
$$\mu(n) = F_1(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n f\left(\frac{k}{n}\right) = \sum_{\substack{k=1 \\ (k, n)=1}}^n \left(\cos \frac{2\pi k}{n} + i \sin \frac{2\pi k}{n}\right).$$
Ez pontosan a bizonyítandó állítás (a primitív $n$-edik egységgyökök összege $\mu(n)$). $\blacksquare$

---

## 21. feladat

Legyen $F, G \colon (0, \infty) \to \mathbb{R}$, és legyen $\alpha$ egy teljesen multiplikatív függvény. Mutassuk meg, hogy
$$G(x) = \sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right) \quad \text{minden } x \in (0, \infty) \text{ esetén}$$
akkor és csak akkor teljesül, ha
$$F(x) = \sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right) \quad \text{minden } x \in (0, \infty) \text{ esetén}.$$

**Megoldás.**

Ez a tétel a Möbius-féle megfordítási formula általánosítása tetszőleges valós változójú függvényekre és teljesen multiplikatív súlyozásra.

**$\implies$ irány:**
Tegyük fel, hogy $G(x) = \sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right)$ minden $x > 0$-ra.
Helyettesítsük be $G\left(\frac{x}{n}\right)$ kifejezését a második összegbe:
$$\sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right) = \sum_{n \le x} \mu(n)\alpha(n) \left(\sum_{m \le x/n} \alpha(m) F\left(\frac{x/n}{m}\right)\right).$$
Mivel $\alpha$ teljesen multiplikatív, $\alpha(n)\alpha(m) = \alpha(nm)$ minden $n, m \ge 1$-re.
A kettős összegben a szummázási tartomány: $n \ge 1, m \ge 1$ és $nm \le x$.
Vezessük be a $k = nm$ új összegzési változót: ekkor $1 \le k \le x$, és $k$ rögzítése mellett $n$ a $k$ pozitív osztóin fut végig ($n \mid k$), míg $m = k/n$.
Így az összeg átírható:
$$= \sum_{k \le x} \sum_{n \mid k} \mu(n)\alpha(k) F\left(\frac{x}{k}\right) = \sum_{k \le x} \alpha(k) F\left(\frac{x}{k}\right) \left(\sum_{n \mid k} \mu(n)\right).$$
A 6. feladat (1) része alapján:
$$\sum_{n \mid k} \mu(n) = \lfloor 1/k \rfloor = \begin{cases} 1, & \text{ha } k = 1, \\ 0, & \text{ha } k > 1. \end{cases}$$
Ezért a $k > 1$ tagok mind nullává válnak, és kizárólag a $k = 1$ tag marad meg:
$$= \alpha(1) F\left(\frac{x}{1}\right) \cdot 1 = 1 \cdot F(x) = F(x).$$
(Felhasználtuk, hogy teljesen multiplikatív függvényre $\alpha(1) = 1$). Ezzel az $\implies$ irányt igazoltuk.

**$\impliedby$ irány:**
Tegyük fel, hogy $F(x) = \sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right)$.
Helyettesítsük be $F\left(\frac{x}{n}\right)$ képletét az első összegbe:
$$\sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right) = \sum_{n \le x} \alpha(n) \left(\sum_{m \le x/n} \mu(m)\alpha(m) G\left(\frac{x/n}{m}\right)\right).$$
Ismét használva, hogy $\alpha(n)\alpha(m) = \alpha(nm)$ és bevezetve a $k = nm \le x$ változót:
$$= \sum_{k \le x} \alpha(k) G\left(\frac{x}{k}\right) \left(\sum_{m \mid k} \mu(m)\right).$$
Mivel $\sum_{m \mid k} \mu(m) = 1$, ha $k = 1$, és 0 egyébként, csak a $k = 1$ tag marad:
$$= \alpha(1) G(x) \cdot 1 = G(x).$$
Ezzel az ekvivalenciát teljes egészében bebizonyítottuk. $\blacksquare$
